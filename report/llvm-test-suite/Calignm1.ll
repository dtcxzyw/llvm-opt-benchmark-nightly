Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Calignm1?download=true
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 19
begin_hunk_0_@Calignm1:bb.a
  %wide.trip.count580 = and i64 %i.za, 4294967295
  br label %.preheader374

.lr.ph434:                                        ; preds = %.lr.ph434.preheader, %._crit_edge435
  %indvars.iv558 = phi i64 [ 0, %.lr.ph434.preheader ], [ %indvars.iv.next559, %._crit_edge435 ] ; 3 uses
  %i.zb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv558
  %i.zc = load double, ptr %i.zb, align 8, !tbaa !17
  %i.zd = fptrunc double %i.zc to float           ; 2 uses
  %i.ze = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv558
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !10
  %i.zg = load i32, ptr @penalty, align 4
  %i.zh = sitofp i32 %i.zg to float               ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph434, %bb.n
  %indvars.iv553 = phi i64 [ 0, %.lr.ph434 ], [ %indvars.iv.next554, %bb.n ] ; 4 uses
  %.0303432 = phi i32 [ 0, %.lr.ph434 ], [ %.1304, %bb.n ]
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zf, i64 %indvars.iv553 ; 2 uses
  %i.zj = load i8, ptr %i.zi, align 1, !tbaa !11
  %i.zk = icmp eq i8 %i.zj, 45
  br i1 %i.zk, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.zl = add nsw i32 %.0303432, 1                ; 3 uses
  %i.zm = getelementptr inbounds nuw [8 x i8], ptr %.pre626.pre.pre670, i64 %indvars.iv553
  %i.zn = load ptr, ptr %i.zm, align 8, !tbaa !70
  %i.zo = sext i32 %i.zl to i64                   ; 2 uses
  %i.zp = getelementptr inbounds [4 x i8], ptr %i.zn, i64 %i.zo ; 2 uses
  %i.zq = load float, ptr %i.zp, align 4, !tbaa !74
  %i.zr = tail call float @llvm.fmuladd.f32(float %i.zd, float %i.zh, float %i.zq)
  store float %i.zr, ptr %i.zp, align 4, !tbaa !74
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zi, i64 1
  %i.zt = load i8, ptr %i.zs, align 1, !tbaa !11
  %.not361 = icmp eq i8 %i.zt, 45
  br i1 %.not361, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.zu = getelementptr inbounds nuw [8 x i8], ptr %i.yw, i64 %indvars.iv553
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !70
  %i.zw = getelementptr inbounds [4 x i8], ptr %i.zv, i64 %i.zo ; 2 uses
  %i.zx = load float, ptr %i.zw, align 4, !tbaa !74
  %i.zy = tail call float @llvm.fmuladd.f32(float %i.zd, float %i.zh, float %i.zx)
  store float %i.zy, ptr %i.zw, align 4, !tbaa !74
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m, %bb.l
  %.1304 = phi i32 [ %i.zl, %bb.m ], [ %i.zl, %bb.l ], [ 0, %bb.k ]
  %indvars.iv.next554 = add nuw nsw i64 %indvars.iv553, 1 ; 2 uses
  %exitcond557.not = icmp eq i64 %indvars.iv.next554, %wide.trip.count556
  br i1 %exitcond557.not, label %._crit_edge435, label %bb.k, !llvm.loop !45

._crit_edge435:                                   ; preds = %bb.n
  %indvars.iv.next559 = add nuw nsw i64 %indvars.iv558, 1 ; 2 uses
  %exitcond562.not = icmp eq i64 %indvars.iv.next559, %wide.trip.count561
  br i1 %exitcond562.not, label %.preheader375, label %.lr.ph434, !llvm.loop !46

.preheader374:                                    ; preds = %.preheader374.lr.ph, %._crit_edge444
  %indvars.iv570 = phi i64 [ 0, %.preheader374.lr.ph ], [ %indvars.iv.next571, %._crit_edge444 ] ; 9 uses
  %i.zz = shl i64 %indvars.iv570, 2
  %.not359439 = icmp eq i64 %indvars.iv570, 0
  br i1 %.not359439, label %._crit_edge444, label %.lr.ph441

.lr.ph441:                                        ; preds = %.preheader374
  %i.aaa = getelementptr inbounds nuw [8 x i8], ptr %.pre626.pre.pre670, i64 %indvars.iv570
  %i.aab = load ptr, ptr %i.aaa, align 8, !tbaa !70 ; 6 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aab, i64 4
  %.pre625 = load float, ptr %.phi.trans.insert, align 4, !tbaa !74 ; 2 uses
  %xtraiter820 = and i64 %indvars.iv570, 3        ; 3 uses
  %i.aac = icmp samesign ult i64 %indvars.iv570, 4
  br i1 %i.aac, label %.epil.preheader819, label %.lr.ph441.new

.lr.ph441.new:                                    ; preds = %.lr.ph441
  %unroll_iter824 = and i64 %indvars.iv570, 9223372036854775804
  br label %bb.p

.lr.ph443.unr-lcssa:                              ; preds = %bb.p
  %lcmp.mod822.not = icmp eq i64 %xtraiter820, 0
  br i1 %lcmp.mod822.not, label %.lr.ph443, label %.epil.preheader819

.epil.preheader819:                               ; preds = %.lr.ph443.unr-lcssa, %.lr.ph441
  %.epil.init = phi float [ %.pre625, %.lr.ph441 ], [ %i.aaz, %.lr.ph443.unr-lcssa ]
  %indvars.iv563.epil.init = phi i64 [ 1, %.lr.ph441 ], [ %indvars.iv.next564.3, %.lr.ph443.unr-lcssa ]
  %lcmp.mod823 = icmp ne i64 %xtraiter820, 0
  tail call void @llvm.assume(i1 %lcmp.mod823)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader819
  %i.aad = phi float [ %.epil.init, %.epil.preheader819 ], [ %i.aag, %bb.o ]
  %indvars.iv563.epil = phi i64 [ %indvars.iv563.epil.init, %.epil.preheader819 ], [ %indvars.iv.next564.epil, %bb.o ]
  %epil.iter821 = phi i64 [ 0, %.epil.preheader819 ], [ %epil.iter821.next, %bb.o ]
  %indvars.iv.next564.epil = add nuw nsw i64 %indvars.iv563.epil, 1 ; 2 uses
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %indvars.iv.next564.epil ; 2 uses
  %i.aaf = load float, ptr %i.aae, align 4, !tbaa !74
  %i.aag = fadd float %i.aad, %i.aaf              ; 2 uses
  store float %i.aag, ptr %i.aae, align 4, !tbaa !74
  %epil.iter821.next = add i64 %epil.iter821, 1   ; 2 uses
  %epil.iter821.cmp.not = icmp eq i64 %epil.iter821.next, %xtraiter820
  br i1 %epil.iter821.cmp.not, label %.lr.ph443, label %bb.o, !llvm.loop !47

.lr.ph443:                                        ; preds = %bb.o, %.lr.ph443.unr-lcssa
  %i.aah = getelementptr inbounds nuw [8 x i8], ptr %i.yz, i64 %indvars.iv570
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !70 ; 2 uses
  %i.aaj = getelementptr i8, ptr %i.aai, i64 %i.zz
  %scevgep = getelementptr i8, ptr %i.aaj, i64 4
  %load_initial = load float, ptr %scevgep, align 4
  br label %bb.q

bb.p:                                             ; preds = %bb.p, %.lr.ph441.new
  %i.aak = phi float [ %.pre625, %.lr.ph441.new ], [ %i.aaz, %bb.p ]
  %indvars.iv563 = phi i64 [ 1, %.lr.ph441.new ], [ %indvars.iv.next564.3, %bb.p ] ; 4 uses
  %niter825 = phi i64 [ 0, %.lr.ph441.new ], [ %niter825.next.3, %bb.p ]
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %indvars.iv563
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 4 ; 2 uses
  %i.aan = load float, ptr %i.aam, align 4, !tbaa !74
  %i.aao = fadd float %i.aak, %i.aan              ; 2 uses
  store float %i.aao, ptr %i.aam, align 4, !tbaa !74
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %indvars.iv563
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 8 ; 2 uses
  %i.aar = load float, ptr %i.aaq, align 4, !tbaa !74
  %i.aas = fadd float %i.aao, %i.aar              ; 2 uses
  store float %i.aas, ptr %i.aaq, align 4, !tbaa !74
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %indvars.iv563
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 12 ; 2 uses
  %i.aav = load float, ptr %i.aau, align 4, !tbaa !74
  %i.aaw = fadd float %i.aas, %i.aav              ; 2 uses
  store float %i.aaw, ptr %i.aau, align 4, !tbaa !74
  %indvars.iv.next564.3 = add nuw nsw i64 %indvars.iv563, 4 ; 3 uses
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %indvars.iv.next564.3 ; 2 uses
  %i.aay = load float, ptr %i.aax, align 4, !tbaa !74
  %i.aaz = fadd float %i.aaw, %i.aay              ; 3 uses
  store float %i.aaz, ptr %i.aax, align 4, !tbaa !74
  %niter825.next.3 = add nuw i64 %niter825, 4     ; 2 uses
  %niter825.ncmp.3 = icmp eq i64 %niter825.next.3, %unroll_iter824
  br i1 %niter825.ncmp.3, label %.lr.ph443.unr-lcssa, label %bb.p, !llvm.loop !48

bb.q:                                             ; preds = %.lr.ph443, %bb.q
  %store_forwarded = phi float [ %load_initial, %.lr.ph443 ], [ %i.abc, %bb.q ]
  %indvars.iv572 = phi i64 [ %indvars.iv570, %.lr.ph443 ], [ %indvars.iv.next573, %bb.q ] ; 3 uses
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %i.aai, i64 %indvars.iv572 ; 2 uses
  %i.abb = load float, ptr %i.aba, align 4, !tbaa !74
  %i.abc = fadd float %store_forwarded, %i.abb    ; 2 uses
  store float %i.abc, ptr %i.aba, align 4, !tbaa !74
  %indvars.iv.next573 = add nsw i64 %indvars.iv572, -1
  %i.abd = icmp sgt i64 %indvars.iv572, 1
  br i1 %i.abd, label %bb.q, label %._crit_edge444, !llvm.loop !49

._crit_edge444:                                   ; preds = %bb.q, %.preheader374
  %indvars.iv.next571 = add nuw nsw i64 %indvars.iv570, 1 ; 2 uses
  %exitcond581.not = icmp eq i64 %indvars.iv.next571, %wide.trip.count580
  br i1 %exitcond581.not, label %._crit_edge447, label %.preheader374, !llvm.loop !50

._crit_edge447:                                   ; preds = %._crit_edge444, %.lr.ph438, %.preheader375
  %i.abe = load ptr, ptr @Calignm1.v, align 8, !tbaa !65 ; 11 uses
  store ptr %i.abe, ptr @Calignm1.w, align 8, !tbaa !65
  %i.abf = load ptr, ptr @Calignm1.g, align 8, !tbaa !68 ; 6 uses
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !65
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !70 ; 2 uses
  %i.abi = load float, ptr %i.abh, align 4, !tbaa !74
  %i.abj = load ptr, ptr %i.abe, align 8, !tbaa !70 ; 8 uses
  %i.abk = load float, ptr %i.abj, align 4, !tbaa !74
  %i.abl = fadd float %i.abi, %i.abk
  store float %i.abl, ptr %i.abj, align 4, !tbaa !74
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abh, i64 4 ; 2 uses
  %i.abn = load float, ptr %i.abm, align 4, !tbaa !74
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abf, i64 8
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !65
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 8
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !70 ; 2 uses
  %i.abs = load float, ptr %i.abr, align 4, !tbaa !74
  %i.abt = fadd float %i.abn, %i.abs
  %i.abu = getelementptr inbounds nuw i8, ptr %.pre626.pre.pre670, i64 8
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !70
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 8
  %i.abx = load float, ptr %i.abw, align 4, !tbaa !74
  %i.aby = fadd float %i.abt, %i.abx
  %i.abz = load float, ptr %i.uw, align 4, !tbaa !74
  %i.aca = fadd float %i.aby, %i.abz
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abe, i64 8
  %i.acc = load ptr, ptr %i.acb, align 8, !tbaa !70 ; 2 uses
  %i.acd = load float, ptr %i.acc, align 4, !tbaa !74
  %i.ace = fadd float %i.aca, %i.acd
  store float %i.ace, ptr %i.acc, align 4, !tbaa !74
  br i1 %i.fd, label %.lr.ph451, label %._crit_edge452

.lr.ph451:                                        ; preds = %._crit_edge447
  %i.acf = load ptr, ptr @Calignm1.gl, align 8, !tbaa !65
  %smax585 = tail call i32 @llvm.smax.i32(i32 %i.yv, i32 3)
  %wide.trip.count586 = zext nneg i32 %smax585 to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph451, %bb.r
  %i.acg = phi ptr [ %i.abr, %.lr.ph451 ], [ %i.adb, %bb.r ]
  %indvars.iv582 = phi i64 [ 2, %.lr.ph451 ], [ %indvars.iv.next583, %bb.r ] ; 6 uses
  %.0305449 = phi float [ 0.000000e+00, %.lr.ph451 ], [ %i.act, %bb.r ]
  %i.ach = add nsw i64 %indvars.iv582, -1         ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %i.acg, i64 4
  %i.acj = load float, ptr %i.aci, align 4, !tbaa !74
  %i.ack = getelementptr [8 x i8], ptr %i.acf, i64 %indvars.iv582
  %i.acl = getelementptr i8, ptr %i.ack, i64 -16
  %i.acm = load ptr, ptr %i.acl, align 8, !tbaa !70
  %i.acn = getelementptr inbounds nuw [4 x i8], ptr %i.acm, i64 %i.ach
  %i.aco = load float, ptr %i.acn, align 4, !tbaa !74
  %i.acp = fadd float %i.acj, %i.aco
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %i.ach
  %i.acr = load float, ptr %i.acq, align 4, !tbaa !74
  %i.acs = fadd float %i.acp, %i.acr
  %i.act = fadd float %.0305449, %i.acs           ; 2 uses
  %i.acu = load float, ptr %i.abm, align 4, !tbaa !74
  %i.acv = load float, ptr %i.uw, align 4, !tbaa !74
  %i.acw = fadd float %i.acu, %i.acv
  %i.acx = fadd float %i.act, %i.acw
  %i.acy = getelementptr inbounds nuw [8 x i8], ptr %i.abf, i64 %indvars.iv582
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !65
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 8
  %i.adb = load ptr, ptr %i.ada, align 8, !tbaa !70 ; 2 uses
  %i.adc = load float, ptr %i.adb, align 4, !tbaa !74
  %i.add = fadd float %i.acx, %i.adc
  %i.ade = getelementptr inbounds nuw [8 x i8], ptr %.pre626.pre.pre670, i64 %indvars.iv582
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !70
  %indvars.iv.next583 = add nuw nsw i64 %indvars.iv582, 1 ; 3 uses
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %i.adf, i64 %indvars.iv.next583
  %i.adh = load float, ptr %i.adg, align 4, !tbaa !74
  %i.adi = fadd float %i.add, %i.adh
  %i.adj = getelementptr inbounds nuw [8 x i8], ptr %i.abe, i64 %indvars.iv582
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !70 ; 2 uses
  %i.adl = load float, ptr %i.adk, align 4, !tbaa !74
  %i.adm = fadd float %i.adi, %i.adl
  store float %i.adm, ptr %i.adk, align 4, !tbaa !74
  %exitcond587.not = icmp eq i64 %indvars.iv.next583, %wide.trip.count586
  br i1 %exitcond587.not, label %._crit_edge452, label %bb.r, !llvm.loop !51

._crit_edge452:                                   ; preds = %bb.r, %._crit_edge447
  %i.adn = load i32, ptr @penalty, align 4, !tbaa !7
  %i.ado = sitofp i32 %i.adn to float             ; 4 uses
  %i.adp = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 2496), align 16, !tbaa !7
  %i.adq = sitofp i32 %i.adp to float             ; 4 uses
  %i.adr = fmul float %.0.lcssa, %i.adq
  %i.ads = tail call float @llvm.fmuladd.f32(float %i.ado, float %.0.lcssa, float %i.adr)
  %i.adt = getelementptr i8, ptr %i.abj, i64 4    ; 2 uses
  %i.adu = load float, ptr %i.adt, align 4, !tbaa !74
  %i.adv = fadd float %i.adu, %i.ads
  store float %i.adv, ptr %i.adt, align 4, !tbaa !74
  %.not348453 = icmp slt i32 %i.aj, 2
  br i1 %.not348453, label %.preheader372, label %.lr.ph457.preheader

.lr.ph457.preheader:                              ; preds = %._crit_edge452
  %i.adw = add nuw nsw i64 %i.ai, 1               ; 3 uses
  %wide.trip.count591 = and i64 %i.adw, 4294967295 ; 2 uses
  %xtraiter826 = and i64 %i.adw, 1                ; 2 uses
  %i.adx = icmp eq i64 %wide.trip.count591, 3
  br i1 %i.adx, label %.lr.ph457.epil.preheader, label %.lr.ph457.preheader.new

.lr.ph457.preheader.new:                          ; preds = %.lr.ph457.preheader
  %i.ady = add nsw i64 %wide.trip.count591, -2
  %unroll_iter830 = sub nsw i64 %i.ady, %xtraiter826
  br label %.lr.ph457

.preheader372:                                    ; preds = %._crit_edge452
  br i1 %.not343410, label %.preheader371, label %.lr.ph460

.lr.ph460.loopexit.unr-lcssa:                     ; preds = %.lr.ph457
  %lcmp.mod828.not = icmp eq i64 %xtraiter826, 0
  br i1 %lcmp.mod828.not, label %.lr.ph460, label %.lr.ph457.epil.preheader

.lr.ph457.epil.preheader:                         ; preds = %.lr.ph460.loopexit.unr-lcssa, %.lr.ph457.preheader
  %indvars.iv588.epil.init = phi i64 [ 2, %.lr.ph457.preheader ], [ %indvars.iv.next589.1, %.lr.ph460.loopexit.unr-lcssa ]
  %.1306455.epil.init = phi float [ 0.000000e+00, %.lr.ph457.preheader ], [ %i.aeo, %.lr.ph460.loopexit.unr-lcssa ]
  %lcmp.mod829 = trunc i64 %i.adw to i1
  tail call void @llvm.assume(i1 %lcmp.mod829)
  %i.adz = tail call float @llvm.fmuladd.f32(float %i.adq, float %.0.lcssa, float %.1306455.epil.init)
  %i.aea = tail call float @llvm.fmuladd.f32(float %i.ado, float %.0.lcssa, float %i.adz)
  %i.aeb = getelementptr inbounds nuw [4 x i8], ptr %i.abj, i64 %indvars.iv588.epil.init ; 2 uses
  %i.aec = load float, ptr %i.aeb, align 4, !tbaa !74
  %i.aed = fadd float %i.aea, %i.aec
  store float %i.aed, ptr %i.aeb, align 4, !tbaa !74
  br label %.lr.ph460

.lr.ph460:                                        ; preds = %.lr.ph457.epil.preheader, %.lr.ph460.loopexit.unr-lcssa, %.preheader372
  %i.aee = load ptr, ptr @Calignm1.m, align 8, !tbaa !70
  %i.aef = load ptr, ptr @Calignm1.mp, align 8, !tbaa !15
  %i.aeg = shl i64 %i.ai, 2
  %i.aeh = add nuw nsw i64 %i.aeg, 4
  %i.aei = and i64 %i.aeh, 17179869180            ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aee, i8 0, i64 %i.aei, i1 false), !tbaa !74
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aef, i8 0, i64 %i.aei, i1 false), !tbaa !7
  br label %.preheader371

.lr.ph457:                                        ; preds = %.lr.ph457, %.lr.ph457.preheader.new
  %indvars.iv588 = phi i64 [ 2, %.lr.ph457.preheader.new ], [ %indvars.iv.next589.1, %.lr.ph457 ] ; 3 uses
  %.1306455 = phi float [ 0.000000e+00, %.lr.ph457.preheader.new ], [ %i.aeo, %.lr.ph457 ]
  %niter831 = phi i64 [ 0, %.lr.ph457.preheader.new ], [ %niter831.next.1, %.lr.ph457 ]
  %i.aej = tail call float @llvm.fmuladd.f32(float %i.adq, float %.0.lcssa, float %.1306455) ; 2 uses
  %i.aek = tail call float @llvm.fmuladd.f32(float %i.ado, float %.0.lcssa, float %i.aej)
  %i.ael = getelementptr inbounds nuw [4 x i8], ptr %i.abj, i64 %indvars.iv588 ; 2 uses
  %i.aem = load float, ptr %i.ael, align 4, !tbaa !74
  %i.aen = fadd float %i.aek, %i.aem
  store float %i.aen, ptr %i.ael, align 4, !tbaa !74
  %i.aeo = tail call float @llvm.fmuladd.f32(float %i.adq, float %.0.lcssa, float %i.aej) ; 3 uses
  %i.aep = tail call float @llvm.fmuladd.f32(float %i.ado, float %.0.lcssa, float %i.aeo)
  %i.aeq = getelementptr inbounds nuw [4 x i8], ptr %i.abj, i64 %indvars.iv588
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 4 ; 2 uses
  %i.aes = load float, ptr %i.aer, align 4, !tbaa !74
  %i.aet = fadd float %i.aep, %i.aes
  store float %i.aet, ptr %i.aer, align 4, !tbaa !74
  %indvars.iv.next589.1 = add nuw nsw i64 %indvars.iv588, 2 ; 2 uses
  %niter831.next.1 = add i64 %niter831, 2         ; 2 uses
  %niter831.ncmp.1 = icmp eq i64 %niter831.next.1, %unroll_iter830
  br i1 %niter831.ncmp.1, label %.lr.ph460.loopexit.unr-lcssa, label %.lr.ph457, !llvm.loop !52

.preheader371:                                    ; preds = %.lr.ph460, %.preheader372
  %.not350468 = icmp slt i32 %i.ah, 1
  br i1 %.not350468, label %._crit_edge471, label %.lr.ph470

.lr.ph470:                                        ; preds = %.preheader371
  %.not358461 = icmp slt i32 %i.aj, 1
  %i.aeu = load ptr, ptr @Calignm1.m, align 8     ; 4 uses
  %i.aev = load ptr, ptr @Calignm1.mp, align 8    ; 6 uses
  %i.aew = load ptr, ptr @Calignm1.gl, align 8
  %i.aex = load ptr, ptr @Calignm1.ijp, align 8
  br i1 %.not358461, label %._crit_edge471, label %.lr.ph464.preheader

.lr.ph464.preheader:                              ; preds = %.lr.ph470
  %i.aey = add nuw nsw i64 %i.ai, 1
  %i.aez = add nuw nsw i64 %i.ag, 1
  %wide.trip.count605 = and i64 %i.aez, 4294967295
  %wide.trip.count599 = and i64 %i.aey, 4294967295 ; 2 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aeu, i64 4
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aev, i64 4
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aev, i64 4 ; 2 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aeu, i64 4 ; 3 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %i.aev, i64 4
  %exitcond600.peel.not = icmp eq i64 %wide.trip.count599, 2
  %i.aff = insertelement <2 x float> poison, float %.0.lcssa, i64 0
  %i.afg = shufflevector <2 x float> %i.aff, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph464.preheader, %._crit_edge465
  %indvars.iv602 = phi i64 [ 1, %.lr.ph464.preheader ], [ %indvars.iv.next603, %._crit_edge465 ] ; 10 uses
  %i.afh = getelementptr [8 x i8], ptr %i.abe, i64 %indvars.iv602 ; 2 uses
  %i.afi = getelementptr i8, ptr %i.afh, i64 -8
  %i.afj = getelementptr inbounds nuw [8 x i8], ptr %i.abf, i64 %indvars.iv602 ; 2 uses
  %i.afk = add nsw i64 %indvars.iv602, -1         ; 3 uses
  %i.afl = getelementptr inbounds nuw [8 x i8], ptr %i.abe, i64 %i.afk
  %i.afm = getelementptr inbounds nuw [8 x i8], ptr %i.abf, i64 %i.afk ; 3 uses
  %i.afn = icmp samesign ugt i64 %indvars.iv602, 1 ; 2 uses
  %i.afo = add nsw i64 %indvars.iv602, -2         ; 4 uses
  %i.afp = getelementptr inbounds nuw [8 x i8], ptr %i.abe, i64 %i.afo ; 2 uses
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %i.afk ; 2 uses
  %i.afr = getelementptr inbounds nuw [8 x i8], ptr %i.aew, i64 %i.afo ; 2 uses
  %i.afs = load ptr, ptr %i.afi, align 8, !tbaa !70 ; 3 uses
  %i.aft = load ptr, ptr %i.afj, align 8, !tbaa !65 ; 3 uses
  %i.afu = load ptr, ptr %i.aft, align 8, !tbaa !70 ; 4 uses
  %i.afv = getelementptr inbounds nuw [8 x i8], ptr %i.aex, i64 %indvars.iv602
  %i.afw = load ptr, ptr %i.afv, align 8, !tbaa !15 ; 2 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %i.aft, i64 16
  %i.afy = load ptr, ptr %i.afx, align 8, !tbaa !70 ; 2 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %i.aft, i64 8
  %i.aga = load ptr, ptr %i.afz, align 8, !tbaa !70 ; 2 uses
  %i.agb = getelementptr inbounds nuw [8 x i8], ptr %.pre626.pre.pre670, i64 %indvars.iv602
  %i.agc = load ptr, ptr %i.agb, align 8, !tbaa !70 ; 2 uses
  %i.agd = load ptr, ptr %i.afh, align 8, !tbaa !70 ; 2 uses
  %i.age = load float, ptr %i.afs, align 4, !tbaa !74
  %i.agf = getelementptr inbounds nuw i8, ptr %i.afu, i64 8
  %i.agg = load float, ptr %i.agf, align 4, !tbaa !74
  %i.agh = fadd float %i.age, %i.agg              ; 2 uses
  br i1 %i.afn, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.agi = load float, ptr %i.abj, align 4, !tbaa !74
  %i.agj = getelementptr inbounds nuw i8, ptr %i.afu, i64 4
  %i.agk = load float, ptr %i.agj, align 4, !tbaa !74
  %i.agl = fadd float %i.agi, %i.agk              ; 2 uses
  store float %i.agl, ptr %i.afa, align 4, !tbaa !74
  store i32 0, ptr %i.afb, align 4, !tbaa !7
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.agm = load ptr, ptr %i.afp, align 8, !tbaa !70
  %i.agn = load float, ptr %i.agm, align 4, !tbaa !74
  %i.ago = load ptr, ptr %i.afm, align 8, !tbaa !65 ; 2 uses
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !70
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 4
  %i.agr = load float, ptr %i.agq, align 4, !tbaa !74
  %i.ags = fadd float %i.agn, %i.agr
  %i.agt = load float, ptr %i.afq, align 4, !tbaa !74 ; 2 uses
  %i.agu = fadd float %i.ags, %i.agt              ; 3 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %i.ago, i64 8
  %i.agw = load ptr, ptr %i.agv, align 8, !tbaa !70
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 4
  %i.agy = load float, ptr %i.agx, align 4, !tbaa !74
  %i.agz = load ptr, ptr %i.afr, align 8, !tbaa !70
  %i.aha = load i32, ptr %i.afc, align 4, !tbaa !7
  %6 = trunc nuw nsw i64 %indvars.iv602 to i32
  %7 = sub nsw i32 %6, %i.aha
  %8 = sext i32 %7 to i64
  %i.ahb = getelementptr [4 x i8], ptr %i.agz, i64 %8
  %i.ahc = getelementptr i8, ptr %i.ahb, i64 -8
  %i.ahd = load float, ptr %i.ahc, align 4, !tbaa !74
  %i.ahe = fadd float %i.agy, %i.ahd
  %i.ahf = fadd float %i.agt, %i.ahe
  %i.ahg = load float, ptr %i.afd, align 4, !tbaa !74
  %i.ahh = fadd float %i.ahg, %i.ahf              ; 3 uses
  store float %i.ahh, ptr %i.afd, align 4, !tbaa !74
  %i.ahi = fcmp olt float %i.ahh, %i.agu
  br i1 %i.ahi, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store float %i.agu, ptr %i.afd, align 4, !tbaa !74
  %i.ahj = trunc nsw i64 %i.afo to i32
  store i32 %i.ahj, ptr %i.afc, align 4, !tbaa !7
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.ahk = phi float [ %i.agu, %bb.v ], [ %i.ahh, %bb.u ], [ %i.agl, %bb.t ]
  %i.ahl = load float, ptr %i.afs, align 4, !tbaa !74
  %i.ahm = load float, ptr %i.afu, align 4, !tbaa !74
  %i.ahn = fadd float %i.ahl, %i.ahm              ; 2 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %i.afw, i64 4 ; 3 uses
  store i32 0, ptr %i.aho, align 4, !tbaa !7
  %i.ahp = load float, ptr %i.afy, align 4, !tbaa !74
  %i.ahq = fadd float %i.agh, %i.ahp              ; 2 uses
  %i.ahr = fcmp ogt float %i.ahq, %i.ahn
  br i1 %i.ahr, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 -1, ptr %i.aho, align 4, !tbaa !7
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.0301.peel = phi float [ %i.ahq, %bb.x ], [ %i.ahn, %bb.w ] ; 2 uses
  %i.ahs = load float, ptr %i.aga, align 4, !tbaa !74
  %i.aht = fadd float %i.ahk, %i.ahs
  %i.ahu = load i32, ptr %i.afe, align 4, !tbaa !7
  %i.ahv = trunc nuw nsw i64 %indvars.iv602 to i32 ; 3 uses
  %i.ahw = sub nsw i32 %i.ahv, %i.ahu             ; 2 uses
  %i.ahx = sext i32 %i.ahw to i64
  %i.ahy = getelementptr inbounds [4 x i8], ptr %i.agc, i64 %i.ahx
  %i.ahz = load float, ptr %i.ahy, align 4, !tbaa !74
  %i.aia = fadd float %i.aht, %i.ahz              ; 2 uses
  %i.aib = fcmp ogt float %i.aia, %.0301.peel
  br i1 %i.aib, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 %i.ahw, ptr %i.aho, align 4, !tbaa !7
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.1.peel = phi float [ %i.aia, %bb.z ], [ %.0301.peel, %bb.y ]
  %i.aic = getelementptr inbounds nuw i8, ptr %i.agd, i64 4 ; 2 uses
  %i.aid = load float, ptr %i.aic, align 4, !tbaa !74
  %i.aie = fadd float %.1.peel, %i.aid
  store float %i.aie, ptr %i.aic, align 4, !tbaa !74
  br i1 %exitcond600.peel.not, label %._crit_edge465, label %.peel.next

.peel.next:                                       ; preds = %bb.aa
  %i.aif = load ptr, ptr %i.afl, align 8, !tbaa !70
  %i.aig = load ptr, ptr %i.afj, align 8, !tbaa !65 ; 2 uses
  %i.aih = load ptr, ptr %i.aig, align 8, !tbaa !70
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 8
  %i.aij = load ptr, ptr %i.afm, align 8, !tbaa !65
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 16
  %i.ail = load ptr, ptr %i.aik, align 8, !tbaa !70
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 8
  %i.ain = trunc nsw i64 %i.afo to i32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aj, %.peel.next
  %indvars.iv596 = phi i64 [ 2, %.peel.next ], [ %indvars.iv.next597, %bb.aj ] ; 13 uses
  %i.aio = phi float [ %i.agh, %.peel.next ], [ %i.ajj, %bb.aj ]
  %i.aip = phi i32 [ 0, %.peel.next ], [ %i.aji, %bb.aj ]
  %i.aiq = add nsw i64 %indvars.iv596, -2         ; 2 uses
  %i.air = getelementptr inbounds nuw [4 x i8], ptr %i.aif, i64 %i.aiq
  %i.ais = load float, ptr %i.air, align 4, !tbaa !74
  %i.ait = load float, ptr %i.aii, align 4, !tbaa !74
  %i.aiu = fadd float %i.ais, %i.ait
  %i.aiv = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 2496), align 16, !tbaa !7
  %i.aiw = sitofp i32 %i.aiv to float
  %i.aix = load float, ptr %i.aim, align 4, !tbaa !74
  %i.aiy = insertelement <2 x float> poison, float %i.aiw, i64 0
  %i.aiz = shufflevector <2 x float> %i.aiy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aja = insertelement <2 x float> poison, float %i.aiu, i64 0
  %i.ajb = insertelement <2 x float> %i.aja, float %i.aix, i64 1
  %i.ajc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aiz, <2 x float> %i.afg, <2 x float> %i.ajb) ; 2 uses
  %i.ajd = extractelement <2 x float> %i.ajc, i64 1
  %i.aje = fadd float %i.aio, %i.ajd              ; 2 uses
  %i.ajf = extractelement <2 x float> %i.ajc, i64 0 ; 2 uses
  %i.ajg = fcmp olt float %i.aje, %i.ajf          ; 2 uses
  %i.ajh = trunc nsw i64 %i.aiq to i32
  %i.aji = select i1 %i.ajg, i32 %i.ajh, i32 %i.aip ; 2 uses
  %i.ajj = select i1 %i.ajg, float %i.ajf, float %i.aje ; 2 uses
  br i1 %i.afn, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.ajk = load ptr, ptr %i.afp, align 8, !tbaa !70
  %i.ajl = getelementptr [4 x i8], ptr %i.ajk, i64 %indvars.iv596
  %i.ajm = getelementptr i8, ptr %i.ajl, i64 -4
  %i.ajn = load float, ptr %i.ajm, align 4, !tbaa !74
  %i.ajo = load ptr, ptr %i.afm, align 8, !tbaa !65 ; 2 uses
  %i.ajp = load ptr, ptr %i.ajo, align 8, !tbaa !70
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 4
  %i.ajr = load float, ptr %i.ajq, align 4, !tbaa !74
  %i.ajs = fadd float %i.ajn, %i.ajr
  %i.ajt = load float, ptr %i.afq, align 4, !tbaa !74 ; 2 uses
  %i.aju = fadd float %i.ajs, %i.ajt              ; 3 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajo, i64 8
  %i.ajw = load ptr, ptr %i.ajv, align 8, !tbaa !70
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajw, i64 4
  %i.ajy = load float, ptr %i.ajx, align 4, !tbaa !74
  %i.ajz = load ptr, ptr %i.afr, align 8, !tbaa !70
  %i.aka = getelementptr inbounds nuw [4 x i8], ptr %i.aev, i64 %indvars.iv596 ; 2 uses
  %i.akb = load i32, ptr %i.aka, align 4, !tbaa !7
  %9 = sub nsw i32 %i.ahv, %i.akb
  %10 = sext i32 %9 to i64
  %i.akc = getelementptr [4 x i8], ptr %i.ajz, i64 %10
  %i.akd = getelementptr i8, ptr %i.akc, i64 -8
  %i.ake = load float, ptr %i.akd, align 4, !tbaa !74
  %i.akf = fadd float %i.ajy, %i.ake
  %i.akg = fadd float %i.ajt, %i.akf
  %i.akh = getelementptr inbounds nuw [4 x i8], ptr %i.aeu, i64 %indvars.iv596 ; 3 uses
  %i.aki = load float, ptr %i.akh, align 4, !tbaa !74
  %i.akj = fadd float %i.aki, %i.akg              ; 3 uses
  store float %i.akj, ptr %i.akh, align 4, !tbaa !74
  %i.akk = fcmp olt float %i.akj, %i.aju
  br i1 %i.akk, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  store float %i.aju, ptr %i.akh, align 4, !tbaa !74
  store i32 %i.ain, ptr %i.aka, align 4, !tbaa !7
  br label %bb.af

bb.ae:                                            ; preds = %bb.ab
  %i.akl = getelementptr [4 x i8], ptr %i.abj, i64 %indvars.iv596
  %i.akm = getelementptr i8, ptr %i.akl, i64 -4
  %i.akn = load float, ptr %i.akm, align 4, !tbaa !74
  %i.ako = load ptr, ptr %i.aig, align 8, !tbaa !70
  %i.akp = getelementptr inbounds nuw i8, ptr %i.ako, i64 4
  %i.akq = load float, ptr %i.akp, align 4, !tbaa !74
  %i.akr = fadd float %i.akn, %i.akq              ; 2 uses
  %i.aks = getelementptr inbounds nuw [4 x i8], ptr %i.aeu, i64 %indvars.iv596
  store float %i.akr, ptr %i.aks, align 4, !tbaa !74
  %i.akt = getelementptr inbounds nuw [4 x i8], ptr %i.aev, i64 %indvars.iv596
  store i32 0, ptr %i.akt, align 4, !tbaa !7
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.aku = phi float [ %i.akj, %bb.ac ], [ %i.aju, %bb.ad ], [ %i.akr, %bb.ae ]
  %i.akv = getelementptr [4 x i8], ptr %i.afs, i64 %indvars.iv596
  %i.akw = getelementptr i8, ptr %i.akv, i64 -4
  %i.akx = load float, ptr %i.akw, align 4, !tbaa !74
  %i.aky = load float, ptr %i.afu, align 4, !tbaa !74
  %i.akz = fadd float %i.akx, %i.aky              ; 2 uses
  %i.ala = getelementptr inbounds nuw [4 x i8], ptr %i.afw, i64 %indvars.iv596 ; 3 uses
  store i32 0, ptr %i.ala, align 4, !tbaa !7
  %i.alb = load float, ptr %i.afy, align 4, !tbaa !74
  %i.alc = fadd float %i.ajj, %i.alb              ; 2 uses
  %i.ald = fcmp ogt float %i.alc, %i.akz
  br i1 %i.ald, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ale = trunc nuw nsw i64 %indvars.iv596 to i32
  %.neg = sub nsw i32 %i.aji, %i.ale
  store i32 %.neg, ptr %i.ala, align 4, !tbaa !7
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.0301 = phi float [ %i.alc, %bb.ag ], [ %i.akz, %bb.af ] ; 2 uses
  %i.alf = load float, ptr %i.aga, align 4, !tbaa !74
  %i.alg = fadd float %i.aku, %i.alf
  %i.alh = getelementptr inbounds nuw [4 x i8], ptr %i.aev, i64 %indvars.iv596
  %i.ali = load i32, ptr %i.alh, align 4, !tbaa !7
  %i.alj = sub nsw i32 %i.ahv, %i.ali             ; 2 uses
  %i.alk = sext i32 %i.alj to i64
  %i.all = getelementptr inbounds [4 x i8], ptr %i.agc, i64 %i.alk
  %i.alm = load float, ptr %i.all, align 4, !tbaa !74
  %i.aln = fadd float %i.alg, %i.alm              ; 2 uses
  %i.alo = fcmp ogt float %i.aln, %.0301
  br i1 %i.alo, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 %i.alj, ptr %i.ala, align 4, !tbaa !7
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.1 = phi float [ %i.aln, %bb.ai ], [ %.0301, %bb.ah ]
  %i.alp = getelementptr inbounds nuw [4 x i8], ptr %i.agd, i64 %indvars.iv596 ; 2 uses
  %i.alq = load float, ptr %i.alp, align 4, !tbaa !74
  %i.alr = fadd float %.1, %i.alq
  store float %i.alr, ptr %i.alp, align 4, !tbaa !74
  %indvars.iv.next597 = add nuw nsw i64 %indvars.iv596, 1 ; 2 uses
  %exitcond600.not = icmp eq i64 %indvars.iv.next597, %wide.trip.count599
  br i1 %exitcond600.not, label %._crit_edge465, label %bb.ab, !llvm.loop !53

._crit_edge465:                                   ; preds = %bb.aj, %bb.aa
  %indvars.iv.next603 = add nuw nsw i64 %indvars.iv602, 1 ; 2 uses
  %exitcond606.not = icmp eq i64 %indvars.iv.next603, %wide.trip.count605
  br i1 %exitcond606.not, label %._crit_edge471, label %bb.s, !llvm.loop !54

._crit_edge471:                                   ; preds = %._crit_edge465, %.lr.ph470, %.preheader371
  %i.als = load i32, ptr @cnst, align 4, !tbaa !7
  %.not351 = icmp eq i32 %i.als, 0
  br i1 %.not351, label %._crit_edge632, label %bb.ak

._crit_edge632:                                   ; preds = %._crit_edge471
  %.phi.trans.insert633 = getelementptr inbounds [8 x i8], ptr %i.abe, i64 %i.ux
  %.pre634 = load ptr, ptr %.phi.trans.insert633, align 8, !tbaa !70
  %.pre635.pre.pre = load ptr, ptr @Calignm1.ijp, align 8, !tbaa !72
  %.pre637 = shl i64 %i.ai, 32
  %.pre638 = ashr exact i64 %.pre637, 32
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge471
  %sext352 = add i64 %sext.pre-phi, -4294967296
  %i.alt = ashr exact i64 %sext352, 29
  %i.alu = getelementptr inbounds i8, ptr %i.abe, i64 %i.alt
  %i.alv = load ptr, ptr %i.alu, align 8, !tbaa !70
  %i.alw = shl i64 %i.ai, 32                      ; 2 uses
  %sext353 = add i64 %i.alw, -4294967296
  %i.alx = ashr exact i64 %sext353, 30
  %i.aly = getelementptr inbounds i8, ptr %i.alv, i64 %i.alx
  %i.alz = load float, ptr %i.aly, align 4, !tbaa !74
  %i.ama = getelementptr inbounds [8 x i8], ptr %i.abf, i64 %i.ux
  %i.amb = load ptr, ptr %i.ama, align 8, !tbaa !65
  %i.amc = load ptr, ptr %i.amb, align 8, !tbaa !70
  %i.amd = load float, ptr %i.amc, align 4, !tbaa !74
  %i.ame = fadd float %i.alz, %i.amd
  %i.amf = getelementptr inbounds [8 x i8], ptr %i.abe, i64 %i.ux
  %i.amg = load ptr, ptr %i.amf, align 8, !tbaa !70 ; 2 uses
  %i.amh = ashr exact i64 %i.alw, 32              ; 3 uses
  %i.ami = getelementptr inbounds [4 x i8], ptr %i.amg, i64 %i.amh
  store float %i.ame, ptr %i.ami, align 4, !tbaa !74
  %i.amj = load ptr, ptr @Calignm1.ijp, align 8, !tbaa !72 ; 2 uses
  %i.amk = getelementptr inbounds [8 x i8], ptr %i.amj, i64 %i.ux
  %i.aml = load ptr, ptr %i.amk, align 8, !tbaa !15
  %i.amm = getelementptr inbounds [4 x i8], ptr %i.aml, i64 %i.amh
  store i32 0, ptr %i.amm, align 4, !tbaa !7
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge632, %bb.ak
  %.pre-phi = phi i64 [ %.pre638, %._crit_edge632 ], [ %i.amh, %bb.ak ] ; 2 uses
  %.pre635.pre = phi ptr [ %.pre635.pre.pre, %._crit_edge632 ], [ %i.amj, %bb.ak ] ; 11 uses
  %i.amn = phi ptr [ %.pre634, %._crit_edge632 ], [ %i.amg, %bb.ak ]
  %i.amo = getelementptr inbounds [4 x i8], ptr %i.amn, i64 %.pre-phi
  %i.amp = load float, ptr %i.amo, align 4, !tbaa !74
  store float %i.amp, ptr %0, align 4, !tbaa !74
  br i1 %.not342407, label %.preheader, label %.lr.ph479

.lr.ph479:                                        ; preds = %bb.al
  %i.amq = add nuw nsw i64 %i.ag, 1               ; 3 uses
  %wide.trip.count610 = and i64 %i.amq, 4294967295
  %i.amr = add nsw i64 %wide.trip.count610, -1
  %xtraiter833 = and i64 %i.amq, 7                ; 3 uses
  %i.ams = icmp ult i64 %i.amr, 7
  br i1 %i.ams, label %.epil.preheader832, label %.lr.ph479.new

.lr.ph479.new:                                    ; preds = %.lr.ph479
  %unroll_iter837 = and i64 %i.amq, 4294967288
  br label %bb.an

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.an
  %lcmp.mod835.not = icmp eq i64 %xtraiter833, 0
  br i1 %lcmp.mod835.not, label %.preheader, label %.epil.preheader832

.epil.preheader832:                               ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph479
  %indvars.iv607.epil.init = phi i64 [ 0, %.lr.ph479 ], [ %indvars.iv.next608.7, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod836 = icmp ne i64 %xtraiter833, 0
  tail call void @llvm.assume(i1 %lcmp.mod836)
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.epil.preheader832
  %indvars.iv607.epil = phi i64 [ %indvars.iv607.epil.init, %.epil.preheader832 ], [ %indvars.iv.next608.epil, %bb.am ] ; 2 uses
  %epil.iter834 = phi i64 [ 0, %.epil.preheader832 ], [ %epil.iter834.next, %bb.am ]
  %indvars.iv.next608.epil = add nuw nsw i64 %indvars.iv607.epil, 1 ; 2 uses
  %i.amt = getelementptr inbounds nuw [8 x i8], ptr %.pre635.pre, i64 %indvars.iv607.epil
  %i.amu = load ptr, ptr %i.amt, align 8, !tbaa !15
  %i.amv = trunc nuw i64 %indvars.iv.next608.epil to i32
  store i32 %i.amv, ptr %i.amu, align 4, !tbaa !7
  %epil.iter834.next = add i64 %epil.iter834, 1   ; 2 uses
  %epil.iter834.cmp.not = icmp eq i64 %epil.iter834.next, %xtraiter833
  br i1 %epil.iter834.cmp.not, label %.preheader, label %bb.am, !llvm.loop !55

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %bb.am, %bb.al
  br i1 %.not343410, label %._crit_edge483, label %.lr.ph482

.lr.ph482:                                        ; preds = %.preheader
  %i.amw = load ptr, ptr %.pre635.pre, align 8, !tbaa !15 ; 2 uses
  %i.amx = add nuw nsw i64 %i.ai, 1               ; 2 uses
  %wide.trip.count615 = and i64 %i.amx, 4294967295 ; 3 uses
  %min.iters.check773 = icmp samesign ult i64 %wide.trip.count615, 8
  br i1 %min.iters.check773, label %scalar.ph772.preheader, label %vector.ph774

vector.ph774:                                     ; preds = %.lr.ph482
  %n.vec775 = and i64 %i.amx, 4294967288          ; 3 uses
  br label %vector.body776

vector.body776:                                   ; preds = %vector.body776, %vector.ph774
  %index777 = phi i64 [ 0, %vector.ph774 ], [ %index.next778, %vector.body776 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph774 ], [ %vec.ind.next, %vector.body776 ] ; 3 uses
  %i.amy = xor <4 x i32> %vec.ind, splat (i32 -1)
  %i.amz = sub <4 x i32> splat (i32 -5), %vec.ind
  %i.ana = getelementptr inbounds nuw [4 x i8], ptr %i.amw, i64 %index777 ; 2 uses
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ana, i64 16
  store <4 x i32> %i.amy, ptr %i.ana, align 4, !tbaa !7
  store <4 x i32> %i.amz, ptr %i.anb, align 4, !tbaa !7
  %index.next778 = add nuw i64 %index777, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.anc = icmp eq i64 %index.next778, %n.vec775
  br i1 %i.anc, label %middle.block779, label %vector.body776, !llvm.loop !56

middle.block779:                                  ; preds = %vector.body776
  %cmp.n780 = icmp eq i64 %wide.trip.count615, %n.vec775
  br i1 %cmp.n780, label %._crit_edge483, label %scalar.ph772.preheader

scalar.ph772.preheader:                           ; preds = %.lr.ph482, %middle.block779
  %indvars.iv612.ph = phi i64 [ 0, %.lr.ph482 ], [ %n.vec775, %middle.block779 ]
end_hunk_0
