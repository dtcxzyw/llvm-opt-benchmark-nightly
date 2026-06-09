inline.NumInlined: 678
inline.NumDeleted: 90
begin_hunk_0_@mapping0_forward:bb.a
  %i.aap = load ptr, ptr %i.aao, align 8
  %.not.i420.not = icmp eq ptr %i.aap, null
  %i.aaq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.aas = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aat = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aau = getelementptr inbounds nuw i8, ptr %i.cl, i64 4 ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.aay = getelementptr inbounds nuw i8, ptr %i.cl, i64 1028
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.f, i64 5316 ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.f, i64 4944
  %i.abb = getelementptr inbounds nuw i8, ptr %i.cl, i64 1092
  %i.abc = getelementptr inbounds nuw i8, ptr %i.f, i64 2088
  %i.abd = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.abg = select i1 %.not.i420.not, i64 7, i64 0
  %i.abh = shl nsw i64 %.pre-phi547, 2            ; 2 uses
  %diff.check740 = icmp ult i64 %i.abh, 16
  %diff.check726 = icmp ult i64 %i.abh, 16
  br label %bb.az

bb.az:                                            ; preds = %.loopexit, %oggpack_writealign.exit
  %indvars.iv531 = phi i64 [ %i.abg, %.loopexit ], [ %indvars.iv.next532, %oggpack_writealign.exit ] ; 7 uses
  call void @oggpack_write(ptr noundef nonnull %i.aaq, i64 noundef 0, i32 noundef 1)
  %i.abi = load i32, ptr %i.aar, align 8
  call void @oggpack_write(ptr noundef nonnull %i.aaq, i64 noundef %i.cj, i32 noundef %i.abi)
  %i.abj = load i64, ptr %i.cf, align 8
  %.not363 = icmp eq i64 %i.abj, 0
  br i1 %.not363, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.abk = load i64, ptr %i.aas, align 8
  call void @oggpack_write(ptr noundef nonnull %i.aaq, i64 noundef %i.abk, i32 noundef 1)
  %i.abl = load i64, ptr %i.aat, align 8
  call void @oggpack_write(ptr noundef nonnull %i.aaq, i64 noundef %i.abl, i32 noundef 1)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.abm = load i32, ptr %i.m, align 4
  %i.abn = icmp sgt i32 %i.abm, 0
  br i1 %i.abn, label %.lr.ph477, label %._crit_edge478

.lr.ph477:                                        ; preds = %bb.bb
  %invariant.gep = getelementptr [4 x i8], ptr %i.aaz, i64 %indvars.iv531
  br label %bb.bc

bb.bc:                                            ; preds = %.lr.ph477, %_vp_noise_normalize.exit
  %indvars.iv522 = phi i64 [ 0, %.lr.ph477 ], [ %indvars.iv.next523, %_vp_noise_normalize.exit ] ; 8 uses
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %i.aau, i64 %indvars.iv522
  %i.abp = load i32, ptr %i.abo, align 4
  %i.abq = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv522
  %i.abr = load ptr, ptr %i.abq, align 8          ; 3 uses
  %i.abs = load ptr, ptr %0, align 8
  %i.abt = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %indvars.iv522
  %i.abu = load ptr, ptr %i.abt, align 8          ; 23 uses
  %i.abv = load i64, ptr %i.s, align 8            ; 3 uses
  %i.abw = add nsw i64 %i.abv, %.pre-phi553
  %i.abx = load i64, ptr %i.v, align 8
  %i.aby = icmp sgt i64 %i.abw, %i.abx
  %i.abz = load ptr, ptr %i.y, align 8            ; 3 uses
  br i1 %i.aby, label %bb.bd, label %_vorbis_block_alloc.exit426

bb.bd:                                            ; preds = %bb.bc
  %.not.i425 = icmp eq ptr %i.abz, null
  br i1 %.not.i425, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.aca = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #69 ; 3 uses
  %i.acb = load i64, ptr %i.aav, align 8
  %i.acc = add nsw i64 %i.acb, %i.abv
  store i64 %i.acc, ptr %i.aav, align 8
  %i.acd = load ptr, ptr %i.aaw, align 8
  %i.ace = getelementptr inbounds nuw i8, ptr %i.aca, i64 8
  store ptr %i.acd, ptr %i.ace, align 8
  store ptr %i.abz, ptr %i.aca, align 8
  store ptr %i.aca, ptr %i.aaw, align 8
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  store i64 %.pre-phi553, ptr %i.v, align 8
  %i.acf = call noalias ptr @malloc(i64 noundef %.pre-phi553) #69 ; 2 uses
  store ptr %i.acf, ptr %i.y, align 8
  br label %_vorbis_block_alloc.exit426

_vorbis_block_alloc.exit426:                      ; preds = %bb.bc, %bb.bf
  %i.acg = phi i64 [ 0, %bb.bf ], [ %i.abv, %bb.bc ] ; 2 uses
  %i.ach = phi ptr [ %i.acf, %bb.bf ], [ %i.abz, %bb.bc ]
  %i.aci = getelementptr inbounds i8, ptr %i.ach, i64 %i.acg ; 5 uses
  %i.acj = add nsw i64 %i.acg, %.pre-phi553
  store i64 %i.acj, ptr %i.s, align 8
  %i.ack = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv522
  store ptr %i.aci, ptr %i.ack, align 8
  %i.acl = load ptr, ptr %i.aax, align 8
  %i.acm = sext i32 %i.abp to i64
  %i.acn = getelementptr inbounds [4 x i8], ptr %i.aay, i64 %i.acm
  %i.aco = load i32, ptr %i.acn, align 4
  %i.acp = sext i32 %i.aco to i64
  %i.acq = getelementptr inbounds [8 x i8], ptr %i.acl, i64 %i.acp
  %i.acr = load ptr, ptr %i.acq, align 8
  %i.acs = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv522
  %i.act = load ptr, ptr %i.acs, align 8
  %i.acu = getelementptr inbounds nuw [8 x i8], ptr %i.act, i64 %indvars.iv531
  %i.acv = load ptr, ptr %i.acu, align 8
  %i.acw = call i32 @floor1_encode(ptr noundef nonnull %0, ptr noundef %i.acr, ptr noundef %i.acv, ptr noundef %i.aci)
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv522
  store i32 %i.acw, ptr %i.acx, align 4
  %i.acy = load i64, ptr %i.cf, align 8
  %gep = getelementptr [60 x i8], ptr %invariant.gep, i64 %i.acy
  %i.acz = load i32, ptr %gep, align 4
  %i.ada = load i32, ptr %i.cr, align 8           ; 3 uses
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.acz, i32 %i.ada) ; 6 uses
  %i.adb = icmp sgt i32 %spec.select.i, 0
  br i1 %i.adb, label %.lr.ph.preheader.i429, label %.preheader.i427

.lr.ph.preheader.i429:                            ; preds = %_vorbis_block_alloc.exit426
  %wide.trip.count.i430 = zext nneg i32 %spec.select.i to i64 ; 2 uses
  %xtraiter768 = and i64 %wide.trip.count.i430, 1
  %i.adc = icmp eq i32 %spec.select.i, 1
  br i1 %i.adc, label %.lr.ph.i431.epil.preheader, label %.lr.ph.preheader.i429.new

.lr.ph.preheader.i429.new:                        ; preds = %.lr.ph.preheader.i429
  %unroll_iter = and i64 %wide.trip.count.i430, 2147483646
  br label %.lr.ph.i431

.preheader.i427.loopexit.unr-lcssa:               ; preds = %.lr.ph.i431
  %lcmp.mod769.not = icmp eq i64 %xtraiter768, 0
  br i1 %lcmp.mod769.not, label %.preheader.i427, label %.lr.ph.i431.epil.preheader

.lr.ph.i431.epil.preheader:                       ; preds = %.preheader.i427.loopexit.unr-lcssa, %.lr.ph.preheader.i429
  %indvars.iv.i432.epil.init = phi i64 [ 0, %.lr.ph.preheader.i429 ], [ %indvars.iv.next.i433.1, %.preheader.i427.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod770 = trunc i32 %spec.select.i to i1
  call void @llvm.assume(i1 %lcmp.mod770)
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %i.abr, i64 %indvars.iv.i432.epil.init
  %i.ade = load float, ptr %i.add, align 4
  %i.adf = getelementptr inbounds nuw [4 x i8], ptr %i.aci, i64 %indvars.iv.i432.epil.init
  %i.adg = load i32, ptr %i.adf, align 4
  %i.adh = sext i32 %i.adg to i64
  %i.adi = getelementptr inbounds [4 x i8], ptr @FLOOR1_fromdB_INV_LOOKUP, i64 %i.adh
  %i.adj = load float, ptr %i.adi, align 4
  %i.adk = fmul float %i.ade, %i.adj
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %i.abu, i64 %indvars.iv.i432.epil.init
  store float %i.adk, ptr %i.adl, align 4
  br label %.preheader.i427

.preheader.i427:                                  ; preds = %.lr.ph.i431.epil.preheader, %.preheader.i427.loopexit.unr-lcssa, %_vorbis_block_alloc.exit426
  %.017.lcssa.i = phi i32 [ 0, %_vorbis_block_alloc.exit426 ], [ %spec.select.i, %.preheader.i427.loopexit.unr-lcssa ], [ %spec.select.i, %.lr.ph.i431.epil.preheader ] ; 3 uses
  %i.adm = icmp slt i32 %.017.lcssa.i, %i.ada
  br i1 %i.adm, label %.lr.ph22.preheader.i, label %_vp_remove_floor.exit

.lr.ph22.preheader.i:                             ; preds = %.preheader.i427
  %i.adn = zext nneg i32 %.017.lcssa.i to i64
  %i.ado = shl nuw nsw i64 %i.adn, 2
  %scevgep.i = getelementptr i8, ptr %i.abu, i64 %i.ado
  %i.adp = xor i32 %.017.lcssa.i, -1
  %i.adq = add nsw i32 %i.ada, %i.adp
  %i.adr = zext i32 %i.adq to i64
  %i.ads = shl nuw nsw i64 %i.adr, 2
  %i.adt = add nuw nsw i64 %i.ads, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.adt, i1 false)
  br label %_vp_remove_floor.exit

.lr.ph.i431:                                      ; preds = %.lr.ph.i431, %.lr.ph.preheader.i429.new
  %indvars.iv.i432 = phi i64 [ 0, %.lr.ph.preheader.i429.new ], [ %indvars.iv.next.i433.1, %.lr.ph.i431 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i429.new ], [ %niter.next.1, %.lr.ph.i431 ]
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %i.abr, i64 %indvars.iv.i432
  %i.adv = load float, ptr %i.adu, align 4
  %i.adw = getelementptr inbounds nuw [4 x i8], ptr %i.aci, i64 %indvars.iv.i432
  %i.adx = load i32, ptr %i.adw, align 4
  %i.ady = sext i32 %i.adx to i64
  %i.adz = getelementptr inbounds [4 x i8], ptr @FLOOR1_fromdB_INV_LOOKUP, i64 %i.ady
  %i.aea = load float, ptr %i.adz, align 4
  %i.aeb = fmul float %i.adv, %i.aea
  %i.aec = getelementptr inbounds nuw [4 x i8], ptr %i.abu, i64 %indvars.iv.i432
  store float %i.aeb, ptr %i.aec, align 4
  %indvars.iv.next.i433 = or disjoint i64 %indvars.iv.i432, 1 ; 3 uses
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %i.abr, i64 %indvars.iv.next.i433
  %i.aee = load float, ptr %i.aed, align 4
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %i.aci, i64 %indvars.iv.next.i433
  %i.aeg = load i32, ptr %i.aef, align 4
  %i.aeh = sext i32 %i.aeg to i64
  %i.aei = getelementptr inbounds [4 x i8], ptr @FLOOR1_fromdB_INV_LOOKUP, i64 %i.aeh
  %i.aej = load float, ptr %i.aei, align 4
  %i.aek = fmul float %i.aee, %i.aej
  %i.ael = getelementptr inbounds nuw [4 x i8], ptr %i.abu, i64 %indvars.iv.next.i433
  store float %i.aek, ptr %i.ael, align 4
  %indvars.iv.next.i433.1 = add nuw nsw i64 %indvars.iv.i432, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i427.loopexit.unr-lcssa, label %.lr.ph.i431, !llvm.loop !564

_vp_remove_floor.exit:                            ; preds = %.preheader.i427, %.lr.ph22.preheader.i
  %i.aem = getelementptr inbounds [4 x i8], ptr %i.abu, i64 %.pre-phi547 ; 19 uses
  %i.aen = getelementptr inbounds nuw [8 x i8], ptr %i.zp, i64 %indvars.iv522
  %i.aeo = load ptr, ptr %i.aen, align 8          ; 6 uses
  %i.aep = load i32, ptr %i.cr, align 8           ; 6 uses
  %i.aeq = load ptr, ptr %i.zw, align 8           ; 4 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 512
  %i.aes = load i32, ptr %i.aer, align 8          ; 5 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aeq, i64 508
  %i.aeu = load i32, ptr %i.aet, align 4
  %spec.select.i435 = call i32 @llvm.smin.i32(i32 %i.aeu, i32 %i.aep) ; 7 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeq, i64 500
  %i.aew = load i32, ptr %i.aev, align 4
  %.not.i436 = icmp eq i32 %i.aew, 0
  br i1 %.not.i436, label %.loopexit86.i, label %.preheader87.i

.preheader87.i:                                   ; preds = %_vp_remove_floor.exit
  %i.aex = icmp sgt i32 %spec.select.i435, 0
  br i1 %i.aex, label %.lr.ph.preheader.i439, label %.preheader85.i

.lr.ph.preheader.i439:                            ; preds = %.preheader87.i
  %wide.trip.count.i440 = zext nneg i32 %spec.select.i435 to i64 ; 5 uses
  %min.iters.check742 = icmp ult i32 %spec.select.i435, 4
  %or.cond755 = select i1 %min.iters.check742, i1 true, i1 %diff.check740
  br i1 %or.cond755, label %.lr.ph.i441.preheader, label %vector.ph743

vector.ph743:                                     ; preds = %.lr.ph.preheader.i439
  %n.vec745 = and i64 %wide.trip.count.i440, 2147483644 ; 3 uses
  br label %vector.body746

vector.body746:                                   ; preds = %vector.body746, %vector.ph743
  %index747 = phi i64 [ 0, %vector.ph743 ], [ %index.next749, %vector.body746 ] ; 3 uses
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %i.abu, i64 %index747
  %wide.load748 = load <4 x float>, ptr %i.aey, align 4
  %i.aez = call <4 x float> @llvm.rint.v4f32(<4 x float> %wide.load748)
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %i.aem, i64 %index747
  store <4 x float> %i.aez, ptr %i.afa, align 4
  %index.next749 = add nuw i64 %index747, 4       ; 2 uses
  %i.afb = icmp eq i64 %index.next749, %n.vec745
  br i1 %i.afb, label %middle.block750, label %vector.body746, !llvm.loop !894

middle.block750:                                  ; preds = %vector.body746
  %cmp.n751 = icmp eq i64 %n.vec745, %wide.trip.count.i440
  br i1 %cmp.n751, label %.preheader85.i, label %.lr.ph.i441.preheader

.lr.ph.i441.preheader:                            ; preds = %.lr.ph.preheader.i439, %middle.block750
  %indvars.iv.i442.ph = phi i64 [ 0, %.lr.ph.preheader.i439 ], [ %n.vec745, %middle.block750 ] ; 3 uses
  %xtraiter771 = and i64 %wide.trip.count.i440, 3 ; 2 uses
  %lcmp.mod772.not = icmp eq i64 %xtraiter771, 0
  br i1 %lcmp.mod772.not, label %.lr.ph.i441.prol.loopexit, label %.lr.ph.i441.prol

.lr.ph.i441.prol:                                 ; preds = %.lr.ph.i441.preheader, %.lr.ph.i441.prol
  %indvars.iv.i442.prol = phi i64 [ %indvars.iv.next.i443.prol, %.lr.ph.i441.prol ], [ %indvars.iv.i442.ph, %.lr.ph.i441.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i441.prol ], [ 0, %.lr.ph.i441.preheader ]
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %i.abu, i64 %indvars.iv.i442.prol
  %i.afd = load float, ptr %i.afc, align 4
  %i.afe = call float @llvm.rint.f32(float %i.afd)
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %i.aem, i64 %indvars.iv.i442.prol
  store float %i.afe, ptr %i.aff, align 4
  %indvars.iv.next.i443.prol = add nuw nsw i64 %indvars.iv.i442.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter771
  br i1 %prol.iter.cmp.not, label %.lr.ph.i441.prol.loopexit, label %.lr.ph.i441.prol, !llvm.loop !895

.lr.ph.i441.prol.loopexit:                        ; preds = %.lr.ph.i441.prol, %.lr.ph.i441.preheader
  %indvars.iv.i442.unr = phi i64 [ %indvars.iv.i442.ph, %.lr.ph.i441.preheader ], [ %indvars.iv.next.i443.prol, %.lr.ph.i441.prol ]
  %i.afg = sub nsw i64 %indvars.iv.i442.ph, %wide.trip.count.i440
  %i.afh = icmp ugt i64 %i.afg, -4
  br i1 %i.afh, label %.preheader85.i, label %.lr.ph.i441

.preheader85.i:                                   ; preds = %.lr.ph.i441.prol.loopexit, %.lr.ph.i441, %middle.block750, %.preheader87.i
  %.076.lcssa.i = phi i32 [ 0, %.preheader87.i ], [ %spec.select.i435, %middle.block750 ], [ %spec.select.i435, %.lr.ph.i441 ], [ %spec.select.i435, %.lr.ph.i441.prol.loopexit ] ; 3 uses
  %i.afi = add nsw i32 %.076.lcssa.i, %i.aes      ; 3 uses
  %.not83102.i = icmp sgt i32 %i.afi, %i.aep
  br i1 %.not83102.i, label %.loopexit86.i, label %.preheader84.lr.ph.i

.preheader84.lr.ph.i:                             ; preds = %.preheader85.i
  %i.afj = icmp sgt i32 %i.aes, 0
  %i.afk = getelementptr inbounds nuw i8, ptr %i.aeq, i64 520
  br i1 %i.afj, label %.preheader84.us.preheader.i, label %.preheader84.i

.preheader84.us.preheader.i:                      ; preds = %.preheader84.lr.ph.i
  %i.afl = zext nneg i32 %i.aes to i64            ; 6 uses
  %i.afm = zext nneg i32 %i.afi to i64            ; 2 uses
  %i.afn = sext i32 %i.aep to i64
  %i.afo = add nsw i64 %i.afm, -1
  br label %.preheader84.us.i

.preheader84.us.i:                                ; preds = %.loopexit.us.i, %.preheader84.us.preheader.i
  %indvar = phi i64 [ %indvar.next, %.loopexit.us.i ], [ 0, %.preheader84.us.preheader.i ] ; 2 uses
  %indvars.iv139.i = phi i64 [ %indvars.iv.next140.i, %.loopexit.us.i ], [ %i.afm, %.preheader84.us.preheader.i ] ; 5 uses
  %.177103.us.i = phi i32 [ %i.aio, %.loopexit.us.i ], [ %.076.lcssa.i, %.preheader84.us.preheader.i ] ; 2 uses
  %i.afp = sext i32 %.177103.us.i to i64          ; 5 uses
  %i.afq = icmp sgt i64 %indvars.iv139.i, %i.afp
  br i1 %i.afq, label %.lr.ph91.us.i.preheader, label %.preheader.us.i

.lr.ph91.us.i.preheader:                          ; preds = %.preheader84.us.i
  %i.afr = mul i64 %indvar, %i.afl
  %i.afs = add i64 %i.afo, %i.afr
  %i.aft = sub i64 %indvars.iv139.i, %i.afp
  %i.afu = sub i64 %i.afs, %i.afp
  %xtraiter773 = and i64 %i.aft, 3                ; 2 uses
  %lcmp.mod774.not = icmp eq i64 %xtraiter773, 0
  br i1 %lcmp.mod774.not, label %.lr.ph91.us.i.prol.loopexit, label %.lr.ph91.us.i.prol

.lr.ph91.us.i.prol:                               ; preds = %.lr.ph91.us.i.preheader, %.lr.ph91.us.i.prol
  %indvars.iv126.i.prol = phi i64 [ %indvars.iv.next127.i.prol, %.lr.ph91.us.i.prol ], [ %i.afp, %.lr.ph91.us.i.preheader ] ; 2 uses
  %.090.us.i.prol = phi float [ %i.afy, %.lr.ph91.us.i.prol ], [ 0.000000e+00, %.lr.ph91.us.i.preheader ]
  %prol.iter775 = phi i64 [ %prol.iter775.next, %.lr.ph91.us.i.prol ], [ 0, %.lr.ph91.us.i.preheader ]
  %i.afv = getelementptr inbounds [4 x i8], ptr %i.abu, i64 %indvars.iv126.i.prol
  %i.afw = load float, ptr %i.afv, align 4        ; 2 uses
  %i.afx = fmul float %i.afw, %i.afw
  %i.afy = fadd float %.090.us.i.prol, %i.afx     ; 3 uses
  %indvars.iv.next127.i.prol = add nsw i64 %indvars.iv126.i.prol, 1 ; 2 uses
  %prol.iter775.next = add i64 %prol.iter775, 1   ; 2 uses
  %prol.iter775.cmp.not = icmp eq i64 %prol.iter775.next, %xtraiter773
  br i1 %prol.iter775.cmp.not, label %.lr.ph91.us.i.prol.loopexit, label %.lr.ph91.us.i.prol, !llvm.loop !896

.lr.ph91.us.i.prol.loopexit:                      ; preds = %.lr.ph91.us.i.prol, %.lr.ph91.us.i.preheader
  %.lcssa.unr = phi float [ poison, %.lr.ph91.us.i.preheader ], [ %i.afy, %.lr.ph91.us.i.prol ]
  %indvars.iv126.i.unr = phi i64 [ %i.afp, %.lr.ph91.us.i.preheader ], [ %indvars.iv.next127.i.prol, %.lr.ph91.us.i.prol ]
  %.090.us.i.unr = phi float [ 0.000000e+00, %.lr.ph91.us.i.preheader ], [ %i.afy, %.lr.ph91.us.i.prol ]
  %i.afz = icmp ult i64 %i.afu, 3
  br i1 %i.afz, label %.preheader.us.i, label %.lr.ph91.us.i

bb.bg:                                            ; preds = %.preheader.us.i, %bb.bk
  %indvars.iv129.i = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next130.i, %bb.bk ] ; 5 uses
  %.194.us.i = phi float [ %.0.lcssa.us.i, %.preheader.us.i ], [ %.2.us.i, %bb.bk ] ; 3 uses
  %i.aga = trunc nuw nsw i64 %indvars.iv129.i to i32 ; 2 uses
  %i.agb = add i32 %i.aip, %i.aga
  %i.agc = sext i32 %i.agb to i64
  %i.agd = getelementptr inbounds [4 x i8], ptr %i.aeo, i64 %i.agc
  %i.age = load i32, ptr %i.agd, align 4
  %i.agf = sext i32 %i.age to i64                 ; 3 uses
  %i.agg = getelementptr inbounds [4 x i8], ptr %i.abu, i64 %i.agf ; 2 uses
  %i.agh = load float, ptr %i.agg, align 4        ; 4 uses
  %i.agi = fmul float %i.agh, %i.agh
  %i.agj = fcmp ult float %i.agi, 2.500000e-01
  br i1 %i.agj, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.agk = call float @llvm.rint.f32(float %i.agh)
  %i.agl = getelementptr inbounds [4 x i8], ptr %i.aem, i64 %i.agf
  store float %i.agk, ptr %i.agl, align 4
  %i.agm = load float, ptr %i.agg, align 4        ; 2 uses
  %i.agn = fmul float %i.agm, %i.agm
  %i.ago = fsub float %.194.us.i, %i.agn
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bg
  %i.agp = fpext float %.194.us.i to double
  %i.agq = load double, ptr %i.afk, align 8
  %i.agr = fcmp ogt double %i.agq, %i.agp
  br i1 %i.agr, label %._crit_edge.us.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ags = call noundef float @llvm.copysign.f32(float 1.000000e+00, float %i.agh)
  %i.agt = getelementptr inbounds [4 x i8], ptr %i.aem, i64 %i.agf
  store float %i.ags, ptr %i.agt, align 4
  %i.agu = fadd float %.194.us.i, -1.000000e+00
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bh
  %.2.us.i = phi float [ %i.ago, %bb.bh ], [ %i.agu, %bb.bj ]
  %indvars.iv.next130.i = add nuw nsw i64 %indvars.iv129.i, 1 ; 2 uses
  %exitcond133.not.i = icmp eq i64 %indvars.iv.next130.i, %i.afl
  br i1 %exitcond133.not.i, label %.loopexit.us.i, label %bb.bg, !llvm.loop !601

._crit_edge.us.i:                                 ; preds = %bb.bi
  %i.agv = icmp sgt i32 %i.aes, %i.aga
  br i1 %i.agv, label %.lr.ph101.us.i, label %.loopexit.us.i

bb.bl:                                            ; preds = %bb.bl, %.lr.ph101.us.i.new
  %indvars.iv134.i = phi i64 [ %indvars.iv134.i.unr, %.lr.ph101.us.i.new ], [ %indvars.iv.next135.i.3, %bb.bl ] ; 5 uses
  %i.agw = trunc nsw i64 %indvars.iv134.i to i32
  %i.agx = add i32 %i.aip, %i.agw
  %i.agy = sext i32 %i.agx to i64
  %i.agz = getelementptr inbounds [4 x i8], ptr %i.aeo, i64 %i.agy
  %i.aha = load i32, ptr %i.agz, align 4
  %i.ahb = sext i32 %i.aha to i64
  %i.ahc = getelementptr inbounds [4 x i8], ptr %i.aem, i64 %i.ahb
  store float 0.000000e+00, ptr %i.ahc, align 4
  %i.ahd = trunc i64 %indvars.iv134.i to i32
  %.reass = add i32 %i.ahd, %invariant.op
  %i.ahe = sext i32 %.reass to i64
  %i.ahf = getelementptr inbounds [4 x i8], ptr %i.aeo, i64 %i.ahe
  %i.ahg = load i32, ptr %i.ahf, align 4
  %i.ahh = sext i32 %i.ahg to i64
  %i.ahi = getelementptr inbounds [4 x i8], ptr %i.aem, i64 %i.ahh
  store float 0.000000e+00, ptr %i.ahi, align 4
  %i.ahj = trunc i64 %indvars.iv134.i to i32
  %.reass793 = add i32 %i.ahj, %invariant.op792
  %i.ahk = sext i32 %.reass793 to i64
  %i.ahl = getelementptr inbounds [4 x i8], ptr %i.aeo, i64 %i.ahk
  %i.ahm = load i32, ptr %i.ahl, align 4
  %i.ahn = sext i32 %i.ahm to i64
  %i.aho = getelementptr inbounds [4 x i8], ptr %i.aem, i64 %i.ahn
  store float 0.000000e+00, ptr %i.aho, align 4
  %i.ahp = trunc i64 %indvars.iv134.i to i32
  %.reass795 = add i32 %i.ahp, %invariant.op794
  %i.ahq = sext i32 %.reass795 to i64
  %i.ahr = getelementptr inbounds [4 x i8], ptr %i.aeo, i64 %i.ahq
  %i.ahs = load i32, ptr %i.ahr, align 4
  %i.aht = sext i32 %i.ahs to i64
  %i.ahu = getelementptr inbounds [4 x i8], ptr %i.aem, i64 %i.aht
  store float 0.000000e+00, ptr %i.ahu, align 4
  %indvars.iv.next135.i.3 = add nuw nsw i64 %indvars.iv134.i, 4 ; 2 uses
  %exitcond138.not.i.3 = icmp eq i64 %indvars.iv.next135.i.3, %i.afl
  br i1 %exitcond138.not.i.3, label %.loopexit.us.i, label %bb.bl, !llvm.loop !602

.lr.ph91.us.i:                                    ; preds = %.lr.ph91.us.i.prol.loopexit, %.lr.ph91.us.i
  %indvars.iv126.i = phi i64 [ %indvars.iv.next127.i.3, %.lr.ph91.us.i ], [ %indvars.iv126.i.unr, %.lr.ph91.us.i.prol.loopexit ] ; 5 uses
  %.090.us.i = phi float [ %i.ain, %.lr.ph91.us.i ], [ %.090.us.i.unr, %.lr.ph91.us.i.prol.loopexit ]
  %i.ahv = getelementptr inbounds [4 x i8], ptr %i.abu, i64 %indvars.iv126.i
  %i.ahw = load float, ptr %i.ahv, align 4        ; 2 uses
  %i.ahx = fmul float %i.ahw, %i.ahw
  %i.ahy = fadd float %.090.us.i, %i.ahx
  %i.ahz = getelementptr [4 x i8], ptr %i.abu, i64 %indvars.iv126.i
  %i.aia = getelementptr i8, ptr %i.ahz, i64 4
  %i.aib = load float, ptr %i.aia, align 4        ; 2 uses
  %i.aic = fmul float %i.aib, %i.aib
  %i.aid = fadd float %i.ahy, %i.aic
  %i.aie = getelementptr [4 x i8], ptr %i.abu, i64 %indvars.iv126.i
  %i.aif = getelementptr i8, ptr %i.aie, i64 8
  %i.aig = load float, ptr %i.aif, align 4        ; 2 uses
  %i.aih = fmul float %i.aig, %i.aig
  %i.aii = fadd float %i.aid, %i.aih
  %i.aij = getelementptr [4 x i8], ptr %i.abu, i64 %indvars.iv126.i
  %i.aik = getelementptr i8, ptr %i.aij, i64 12
  %i.ail = load float, ptr %i.aik, align 4        ; 2 uses
  %i.aim = fmul float %i.ail, %i.ail
  %i.ain = fadd float %i.aii, %i.aim              ; 2 uses
  %indvars.iv.next127.i.3 = add nsw i64 %indvars.iv126.i, 4 ; 2 uses
  %exitcond521.not.3 = icmp eq i64 %indvars.iv.next127.i.3, %indvars.iv139.i
  br i1 %exitcond521.not.3, label %.preheader.us.i, label %.lr.ph91.us.i, !llvm.loop !603

.loopexit.us.i:                                   ; preds = %bb.bk, %.prol.loopexit, %bb.bl, %._crit_edge.us.i
  %indvars.iv.next140.i = add nuw nsw i64 %indvars.iv139.i, %i.afl ; 2 uses
  %.not83.us.i = icmp sgt i64 %indvars.iv.next140.i, %i.afn
  %i.aio = trunc nuw nsw i64 %indvars.iv139.i to i32 ; 2 uses
  %indvar.next = add i64 %indvar, 1
  br i1 %.not83.us.i, label %.loopexit86.i, label %.preheader84.us.i, !llvm.loop !604

.preheader.us.i:                                  ; preds = %.lr.ph91.us.i.prol.loopexit, %.lr.ph91.us.i, %.preheader84.us.i
  %.0.lcssa.us.i = phi float [ 0.000000e+00, %.preheader84.us.i ], [ %.lcssa.unr, %.lr.ph91.us.i.prol.loopexit ], [ %i.ain, %.lr.ph91.us.i ]
  %i.aip = sub i32 %.177103.us.i, %spec.select.i435 ; 6 uses
  br label %bb.bg

.lr.ph101.us.i:                                   ; preds = %._crit_edge.us.i
  %sext.i438 = shl i64 %indvars.iv129.i, 32
  %i.aiq = ashr exact i64 %sext.i438, 32          ; 2 uses
  %i.air = sub nsw i64 %i.afl, %indvars.iv129.i
  %xtraiter778 = and i64 %i.air, 3                ; 2 uses
  %lcmp.mod779.not = icmp eq i64 %xtraiter778, 0
  br i1 %lcmp.mod779.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph101.us.i, %.prol.preheader
  %indvars.iv134.i.prol = phi i64 [ %indvars.iv.next135.i.prol, %.prol.preheader ], [ %i.aiq, %.lr.ph101.us.i ] ; 2 uses
  %prol.iter780 = phi i64 [ %prol.iter780.next, %.prol.preheader ], [ 0, %.lr.ph101.us.i ]
  %i.ais = trunc nsw i64 %indvars.iv134.i.prol to i32
  %i.ait = add i32 %i.aip, %i.ais
  %i.aiu = sext i32 %i.ait to i64
  %i.aiv = getelementptr inbounds [4 x i8], ptr %i.aeo, i64 %i.aiu
  %i.aiw = load i32, ptr %i.aiv, align 4
  %i.aix = sext i32 %i.aiw to i64
  %i.aiy = getelementptr inbounds [4 x i8], ptr %i.aem, i64 %i.aix
  store float 0.000000e+00, ptr %i.aiy, align 4
  %indvars.iv.next135.i.prol = add nuw nsw i64 %indvars.iv134.i.prol, 1 ; 2 uses
  %prol.iter780.next = add i64 %prol.iter780, 1   ; 2 uses
  %prol.iter780.cmp.not = icmp eq i64 %prol.iter780.next, %xtraiter778
  br i1 %prol.iter780.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !897

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph101.us.i
  %indvars.iv134.i.unr = phi i64 [ %i.aiq, %.lr.ph101.us.i ], [ %indvars.iv.next135.i.prol, %.prol.preheader ]
  %i.aiz = sub nsw i64 %indvars.iv129.i, %i.afl
  %i.aja = icmp ugt i64 %i.aiz, -4
  br i1 %i.aja, label %.loopexit.us.i, label %.lr.ph101.us.i.new

.lr.ph101.us.i.new:                               ; preds = %.prol.loopexit
  %invariant.op = add i32 1, %i.aip
  %invariant.op792 = add i32 2, %i.aip
  %invariant.op794 = add i32 3, %i.aip
  br label %bb.bl

.lr.ph.i441:                                      ; preds = %.lr.ph.i441.prol.loopexit, %.lr.ph.i441
  %indvars.iv.i442 = phi i64 [ %indvars.iv.next.i443.3, %.lr.ph.i441 ], [ %indvars.iv.i442.unr, %.lr.ph.i441.prol.loopexit ] ; 6 uses
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %i.abu, i64 %indvars.iv.i442
  %i.ajc = load float, ptr %i.ajb, align 4
  %i.ajd = call float @llvm.rint.f32(float %i.ajc)
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr %i.aem, i64 %indvars.iv.i442
  store float %i.ajd, ptr %i.aje, align 4
  %indvars.iv.next.i443 = add nuw nsw i64 %indvars.iv.i442, 1 ; 2 uses
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %i.abu, i64 %indvars.iv.next.i443
  %i.ajg = load float, ptr %i.ajf, align 4
  %i.ajh = call float @llvm.rint.f32(float %i.ajg)
  %i.aji = getelementptr inbounds nuw [4 x i8], ptr %i.aem, i64 %indvars.iv.next.i443
  store float %i.ajh, ptr %i.aji, align 4
  %indvars.iv.next.i443.1 = add nuw nsw i64 %indvars.iv.i442, 2 ; 2 uses
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %i.abu, i64 %indvars.iv.next.i443.1
  %i.ajk = load float, ptr %i.ajj, align 4
  %i.ajl = call float @llvm.rint.f32(float %i.ajk)
  %i.ajm = getelementptr inbounds nuw [4 x i8], ptr %i.aem, i64 %indvars.iv.next.i443.1
  store float %i.ajl, ptr %i.ajm, align 4
  %indvars.iv.next.i443.2 = add nuw nsw i64 %indvars.iv.i442, 3 ; 2 uses
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %i.abu, i64 %indvars.iv.next.i443.2
  %i.ajo = load float, ptr %i.ajn, align 4
  %i.ajp = call float @llvm.rint.f32(float %i.ajo)
  %i.ajq = getelementptr inbounds nuw [4 x i8], ptr %i.aem, i64 %indvars.iv.next.i443.2
  store float %i.ajp, ptr %i.ajq, align 4
  %indvars.iv.next.i443.3 = add nuw nsw i64 %indvars.iv.i442, 4 ; 2 uses
  %exitcond.not.i444.3 = icmp eq i64 %indvars.iv.next.i443.3, %wide.trip.count.i440
  br i1 %exitcond.not.i444.3, label %.preheader85.i, label %.lr.ph.i441, !llvm.loop !898

.preheader84.i:                                   ; preds = %.preheader84.lr.ph.i, %.preheader84.i
  %1 = phi i32 [ %2, %.preheader84.i ], [ %i.afi, %.preheader84.lr.ph.i ] ; 2 uses
  %2 = add nsw i32 %1, %i.aes                     ; 2 uses
  %.not83.i = icmp sgt i32 %2, %i.aep
  br i1 %.not83.i, label %.loopexit86.i, label %.preheader84.i, !llvm.loop !604

.loopexit86.i:                                    ; preds = %.preheader84.i, %.loopexit.us.i, %.preheader85.i, %_vp_remove_floor.exit
  %.278.i = phi i32 [ 0, %_vp_remove_floor.exit ], [ %.076.lcssa.i, %.preheader85.i ], [ %i.aio, %.loopexit.us.i ], [ %1, %.preheader84.i ] ; 2 uses
  %i.ajr = icmp slt i32 %.278.i, %i.aep
  br i1 %i.ajr, label %.lr.ph120.preheader.i, label %_vp_noise_normalize.exit

.lr.ph120.preheader.i:                            ; preds = %.loopexit86.i
  %i.ajs = sext i32 %.278.i to i64                ; 4 uses
  %wide.trip.count145.i = sext i32 %i.aep to i64  ; 4 uses
  %i.ajt = sub nsw i64 %wide.trip.count145.i, %i.ajs ; 3 uses
  %min.iters.check728 = icmp ult i64 %i.ajt, 4
  %or.cond756 = select i1 %min.iters.check728, i1 true, i1 %diff.check726
  br i1 %or.cond756, label %.lr.ph120.i.preheader, label %vector.ph729

vector.ph729:                                     ; preds = %.lr.ph120.preheader.i
  %n.vec731 = and i64 %i.ajt, -4                  ; 3 uses
  %i.aju = add nsw i64 %n.vec731, %i.ajs
  br label %vector.body732

vector.body732:                                   ; preds = %vector.body732, %vector.ph729
  %index733 = phi i64 [ 0, %vector.ph729 ], [ %index.next735, %vector.body732 ] ; 2 uses
  %i.ajv = add i64 %index733, %i.ajs              ; 2 uses
  %i.ajw = getelementptr inbounds [4 x i8], ptr %i.abu, i64 %i.ajv
  %wide.load734 = load <4 x float>, ptr %i.ajw, align 4
  %i.ajx = call <4 x float> @llvm.rint.v4f32(<4 x float> %wide.load734)
  %i.ajy = getelementptr inbounds [4 x i8], ptr %i.aem, i64 %i.ajv
  store <4 x float> %i.ajx, ptr %i.ajy, align 4
  %index.next735 = add nuw i64 %index733, 4       ; 2 uses
  %i.ajz = icmp eq i64 %index.next735, %n.vec731
  br i1 %i.ajz, label %middle.block736, label %vector.body732, !llvm.loop !899

middle.block736:                                  ; preds = %vector.body732
  %cmp.n737 = icmp eq i64 %i.ajt, %n.vec731
  br i1 %cmp.n737, label %_vp_noise_normalize.exit, label %.lr.ph120.i.preheader

.lr.ph120.i.preheader:                            ; preds = %.lr.ph120.preheader.i, %middle.block736
  %indvars.iv142.i.ph = phi i64 [ %i.ajs, %.lr.ph120.preheader.i ], [ %i.aju, %middle.block736 ] ; 4 uses
  %i.aka = sub nsw i64 %wide.trip.count145.i, %indvars.iv142.i.ph
  %xtraiter781 = and i64 %i.aka, 3                ; 2 uses
  %lcmp.mod782.not = icmp eq i64 %xtraiter781, 0
  br i1 %lcmp.mod782.not, label %.lr.ph120.i.prol.loopexit, label %.lr.ph120.i.prol

.lr.ph120.i.prol:                                 ; preds = %.lr.ph120.i.preheader, %.lr.ph120.i.prol
  %indvars.iv142.i.prol = phi i64 [ %indvars.iv.next143.i.prol, %.lr.ph120.i.prol ], [ %indvars.iv142.i.ph, %.lr.ph120.i.preheader ] ; 3 uses
  %prol.iter783 = phi i64 [ %prol.iter783.next, %.lr.ph120.i.prol ], [ 0, %.lr.ph120.i.preheader ]
  %i.akb = getelementptr inbounds [4 x i8], ptr %i.abu, i64 %indvars.iv142.i.prol
  %i.akc = load float, ptr %i.akb, align 4
  %i.akd = call float @llvm.rint.f32(float %i.akc)
  %i.ake = getelementptr inbounds [4 x i8], ptr %i.aem, i64 %indvars.iv142.i.prol
  store float %i.akd, ptr %i.ake, align 4
  %indvars.iv.next143.i.prol = add nsw i64 %indvars.iv142.i.prol, 1 ; 2 uses
  %prol.iter783.next = add i64 %prol.iter783, 1   ; 2 uses
  %prol.iter783.cmp.not = icmp eq i64 %prol.iter783.next, %xtraiter781
  br i1 %prol.iter783.cmp.not, label %.lr.ph120.i.prol.loopexit, label %.lr.ph120.i.prol, !llvm.loop !900

.lr.ph120.i.prol.loopexit:                        ; preds = %.lr.ph120.i.prol, %.lr.ph120.i.preheader
  %indvars.iv142.i.unr = phi i64 [ %indvars.iv142.i.ph, %.lr.ph120.i.preheader ], [ %indvars.iv.next143.i.prol, %.lr.ph120.i.prol ]
  %i.akf = sub nsw i64 %indvars.iv142.i.ph, %wide.trip.count145.i
  %i.akg = icmp ugt i64 %i.akf, -4
  br i1 %i.akg, label %_vp_noise_normalize.exit, label %.lr.ph120.i

.lr.ph120.i:                                      ; preds = %.lr.ph120.i.prol.loopexit, %.lr.ph120.i
  %indvars.iv142.i = phi i64 [ %indvars.iv.next143.i.3, %.lr.ph120.i ], [ %indvars.iv142.i.unr, %.lr.ph120.i.prol.loopexit ] ; 6 uses
  %i.akh = getelementptr inbounds [4 x i8], ptr %i.abu, i64 %indvars.iv142.i
  %i.aki = load float, ptr %i.akh, align 4
  %i.akj = call float @llvm.rint.f32(float %i.aki)
  %i.akk = getelementptr inbounds [4 x i8], ptr %i.aem, i64 %indvars.iv142.i
  store float %i.akj, ptr %i.akk, align 4
  %indvars.iv.next143.i = add nsw i64 %indvars.iv142.i, 1 ; 2 uses
  %i.akl = getelementptr inbounds [4 x i8], ptr %i.abu, i64 %indvars.iv.next143.i
  %i.akm = load float, ptr %i.akl, align 4
  %i.akn = call float @llvm.rint.f32(float %i.akm)
  %i.ako = getelementptr inbounds [4 x i8], ptr %i.aem, i64 %indvars.iv.next143.i
  store float %i.akn, ptr %i.ako, align 4
  %indvars.iv.next143.i.1 = add nsw i64 %indvars.iv142.i, 2 ; 2 uses
  %i.akp = getelementptr inbounds [4 x i8], ptr %i.abu, i64 %indvars.iv.next143.i.1
  %i.akq = load float, ptr %i.akp, align 4
  %i.akr = call float @llvm.rint.f32(float %i.akq)
  %i.aks = getelementptr inbounds [4 x i8], ptr %i.aem, i64 %indvars.iv.next143.i.1
  store float %i.akr, ptr %i.aks, align 4
  %indvars.iv.next143.i.2 = add nsw i64 %indvars.iv142.i, 3 ; 2 uses
  %i.akt = getelementptr inbounds [4 x i8], ptr %i.abu, i64 %indvars.iv.next143.i.2
  %i.aku = load float, ptr %i.akt, align 4
  %i.akv = call float @llvm.rint.f32(float %i.aku)
  %i.akw = getelementptr inbounds [4 x i8], ptr %i.aem, i64 %indvars.iv.next143.i.2
  store float %i.akv, ptr %i.akw, align 4
  %indvars.iv.next143.i.3 = add nsw i64 %indvars.iv142.i, 4 ; 2 uses
  %exitcond146.not.i.3 = icmp eq i64 %indvars.iv.next143.i.3, %wide.trip.count145.i
  br i1 %exitcond146.not.i.3, label %_vp_noise_normalize.exit, label %.lr.ph120.i, !llvm.loop !901

_vp_noise_normalize.exit:                         ; preds = %.lr.ph120.i.prol.loopexit, %.lr.ph120.i, %middle.block736, %.loopexit86.i
  %indvars.iv.next523 = add nuw nsw i64 %indvars.iv522, 1 ; 2 uses
  %i.akx = load i32, ptr %i.m, align 4
  %i.aky = sext i32 %i.akx to i64
  %i.akz = icmp slt i64 %indvars.iv.next523, %i.aky
  br i1 %i.akz, label %bb.bc, label %._crit_edge478, !llvm.loop !902

._crit_edge478:                                   ; preds = %_vp_noise_normalize.exit, %bb.bb
  %i.ala = load i32, ptr %i.zq, align 4
  %.not364 = icmp eq i32 %i.ala, 0
  br i1 %.not364, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %._crit_edge478
  %i.alb = load ptr, ptr %0, align 8
  %i.alc = load i64, ptr %i.cf, align 8
  %i.ald = getelementptr inbounds [60 x i8], ptr %i.aaz, i64 %i.alc
  %i.ale = getelementptr inbounds nuw [4 x i8], ptr %i.ald, i64 %indvars.iv531
  %i.alf = load i32, ptr %i.ale, align 4
  %i.alg = trunc nuw nsw i64 %indvars.iv531 to i32
  call void @_vp_couple(i32 noundef %i.alg, ptr noundef nonnull %i.aba, ptr noundef %i.cr, ptr noundef nonnull %i.cl, ptr noundef %i.alb, ptr noundef %.0350, ptr noundef %.0351, ptr noundef %i.bd, ptr noundef nonnull %i.q, i32 noundef %i.alf)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %._crit_edge478
  %i.alh = load i32, ptr %i.cl, align 4
  %i.ali = icmp sgt i32 %i.alh, 0
  br i1 %i.ali, label %.lr.ph487, label %._crit_edge488

.lr.ph487:                                        ; preds = %bb.bn, %._crit_edge483
  %indvars.iv528 = phi i64 [ %indvars.iv.next529, %._crit_edge483 ], [ 0, %bb.bn ] ; 3 uses
  %i.alj = getelementptr inbounds nuw [4 x i8], ptr %i.abb, i64 %indvars.iv528
  %i.alk = load i32, ptr %i.alj, align 4
  %i.all = load i32, ptr %i.m, align 4            ; 2 uses
  %i.alm = icmp sgt i32 %i.all, 0
  br i1 %i.alm, label %.lr.ph482.preheader, label %._crit_edge483

.lr.ph482.preheader:                              ; preds = %.lr.ph487
  %i.aln = zext nneg i32 %i.all to i64
  br label %.lr.ph482

.lr.ph482:                                        ; preds = %.lr.ph482.preheader, %bb.bp
  %indvars.iv525 = phi i64 [ 0, %.lr.ph482.preheader ], [ %indvars.iv.next526, %bb.bp ] ; 4 uses
  %.0338480 = phi i32 [ 0, %.lr.ph482.preheader ], [ %.1339, %bb.bp ] ; 3 uses
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr %i.aau, i64 %indvars.iv525
  %i.alp = load i32, ptr %i.alo, align 4
  %i.alq = zext i32 %i.alp to i64
  %i.alr = icmp eq i64 %indvars.iv528, %i.alq
  br i1 %i.alr, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.lr.ph482
  %i.als = sext i32 %.0338480 to i64              ; 2 uses
  %i.alt = getelementptr inbounds [4 x i8], ptr %i.zo, i64 %i.als
  %i.alu = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv525
  %i.alv = load i32, ptr %i.alu, align 4
  %.not365 = icmp ne i32 %i.alv, 0
  %spec.store.select = zext i1 %.not365 to i32
  store i32 %spec.store.select, ptr %i.alt, align 4
  %i.alw = load ptr, ptr %0, align 8
  %i.alx = getelementptr inbounds nuw [8 x i8], ptr %i.alw, i64 %indvars.iv525
  %i.aly = load ptr, ptr %i.alx, align 8
  %i.alz = getelementptr inbounds [4 x i8], ptr %i.aly, i64 %.pre-phi547
  %i.ama = add nsw i32 %.0338480, 1
  %i.amb = getelementptr inbounds [8 x i8], ptr %i.zm, i64 %i.als
  store ptr %i.alz, ptr %i.amb, align 8
  br label %bb.bp

bb.bp:                                            ; preds = %.lr.ph482, %bb.bo
  %.1339 = phi i32 [ %i.ama, %bb.bo ], [ %.0338480, %.lr.ph482 ] ; 2 uses
  %indvars.iv.next526 = add nuw nsw i64 %indvars.iv525, 1 ; 2 uses
  %i.amc = icmp samesign ult i64 %indvars.iv.next526, %i.aln
  br i1 %i.amc, label %.lr.ph482, label %._crit_edge483, !llvm.loop !903

._crit_edge483:                                   ; preds = %bb.bp, %.lr.ph487
  %.0338.lcssa = phi i32 [ 0, %.lr.ph487 ], [ %.1339, %bb.bp ] ; 2 uses
  %i.amd = sext i32 %i.alk to i64                 ; 3 uses
  %i.ame = getelementptr inbounds [4 x i8], ptr %i.abc, i64 %i.amd ; 2 uses
  %i.amf = load i32, ptr %i.ame, align 4
  %i.amg = sext i32 %i.amf to i64
  %i.amh = getelementptr inbounds [8 x i8], ptr @_residue_P, i64 %i.amg
  %i.ami = load ptr, ptr %i.amh, align 8
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ami, i64 40
  %i.amk = load ptr, ptr %i.amj, align 8
  %i.aml = load ptr, ptr %i.abd, align 8
  %i.amm = getelementptr inbounds [8 x i8], ptr %i.aml, i64 %i.amd
  %i.amn = load ptr, ptr %i.amm, align 8
  %i.amo = call ptr %i.amk(ptr noundef %0, ptr noundef %i.amn, ptr noundef nonnull %i.zm, ptr noundef nonnull %i.zo, i32 noundef %.0338.lcssa) #62
  %i.amp = load i32, ptr %i.ame, align 4
  %i.amq = sext i32 %i.amp to i64
  %i.amr = getelementptr inbounds [8 x i8], ptr @_residue_P, i64 %i.amq
  %i.ams = load ptr, ptr %i.amr, align 8
  %i.amt = getelementptr inbounds nuw i8, ptr %i.ams, i64 48
  %i.amu = load ptr, ptr %i.amt, align 8
  %i.amv = load ptr, ptr %i.abd, align 8
  %i.amw = getelementptr inbounds [8 x i8], ptr %i.amv, i64 %i.amd
  %i.amx = load ptr, ptr %i.amw, align 8
  %i.amy = call i32 %i.amu(ptr noundef %0, ptr noundef %i.amx, ptr noundef nonnull %i.zm, ptr noundef null, ptr noundef nonnull %i.zo, i32 noundef %.0338.lcssa, ptr noundef %i.amo) #62 ; 0 uses
  %indvars.iv.next529 = add nuw nsw i64 %indvars.iv528, 1 ; 2 uses
  %i.amz = load i32, ptr %i.cl, align 4
  %i.ana = sext i32 %i.amz to i64
  %i.anb = icmp slt i64 %indvars.iv.next529, %i.ana
  br i1 %i.anb, label %.lr.ph487, label %._crit_edge488, !llvm.loop !904

._crit_edge488:                                   ; preds = %._crit_edge483, %bb.bn
  %i.anc = load i32, ptr %i.abe, align 8          ; 3 uses
  %i.and = icmp sgt i32 %i.anc, 0
  br i1 %i.and, label %bb.bq, label %oggpack_writealign.exit

bb.bq:                                            ; preds = %._crit_edge488
  %i.ane = sub nsw i32 8, %i.anc
  call void @oggpack_write(ptr noundef nonnull %i.aaq, i64 noundef 0, i32 noundef %i.ane)
  %.pre537 = load i32, ptr %i.abe, align 8
  br label %oggpack_writealign.exit

oggpack_writealign.exit:                          ; preds = %._crit_edge488, %bb.bq
end_hunk_0
