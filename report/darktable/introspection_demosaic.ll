Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a
  %i.inc = extractelement <8 x i8> %i.imx, i64 4
  store i8 %i.inc, ptr %i.ily, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.ind = extractelement <8 x i8> %i.imx, i64 5
  store i8 %i.ind, ptr %i.ima, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.ine = extractelement <8 x i8> %i.imx, i64 6
  store i8 %i.ine, ptr %i.imc, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.inf = extractelement <8 x i8> %i.imx, i64 7
  store i8 %i.inf, ptr %i.ime, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %wide.gep2698 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2695, i64 %indvars.iv1464.i
  %wide.masked.gather2699 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2698, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !491
  %i.ing = fcmp reassoc nsz arcp contract afn ole <8 x float> %wide.masked.gather2699, %broadcast.splat2689
  %i.inh = zext <8 x i1> %i.ing to <8 x i8>
  %i.ini = add <8 x i8> %i.imx, %i.inh            ; 9 uses
  %i.inj = extractelement <8 x i8> %i.ini, i64 0
  store i8 %i.inj, ptr %i.ilq, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.ink = extractelement <8 x i8> %i.ini, i64 1
  store i8 %i.ink, ptr %i.ils, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.inl = extractelement <8 x i8> %i.ini, i64 2
  store i8 %i.inl, ptr %i.ilu, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.inm = extractelement <8 x i8> %i.ini, i64 3
  store i8 %i.inm, ptr %i.ilw, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.inn = extractelement <8 x i8> %i.ini, i64 4
  store i8 %i.inn, ptr %i.ily, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.ino = extractelement <8 x i8> %i.ini, i64 5
  store i8 %i.ino, ptr %i.ima, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.inp = extractelement <8 x i8> %i.ini, i64 6
  store i8 %i.inp, ptr %i.imc, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.inq = extractelement <8 x i8> %i.ini, i64 7
  store i8 %i.inq, ptr %i.ime, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %wide.gep2700 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2695, i64 %i.ilp
  %wide.masked.gather2701 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2700, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !492
  %i.inr = fcmp reassoc nsz arcp contract afn ole <8 x float> %wide.masked.gather2701, %broadcast.splat2689
  %i.ins = zext <8 x i1> %i.inr to <8 x i8>
  %i.int = add <8 x i8> %i.ini, %i.ins            ; 9 uses
  %i.inu = extractelement <8 x i8> %i.int, i64 0
  store i8 %i.inu, ptr %i.ilq, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.inv = extractelement <8 x i8> %i.int, i64 1
  store i8 %i.inv, ptr %i.ils, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.inw = extractelement <8 x i8> %i.int, i64 2
  store i8 %i.inw, ptr %i.ilu, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.inx = extractelement <8 x i8> %i.int, i64 3
  store i8 %i.inx, ptr %i.ilw, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.iny = extractelement <8 x i8> %i.int, i64 4
  store i8 %i.iny, ptr %i.ily, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.inz = extractelement <8 x i8> %i.int, i64 5
  store i8 %i.inz, ptr %i.ima, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.ioa = extractelement <8 x i8> %i.int, i64 6
  store i8 %i.ioa, ptr %i.imc, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.iob = extractelement <8 x i8> %i.int, i64 7
  store i8 %i.iob, ptr %i.ime, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %wide.gep2702 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep2694, i64 %i.ilo
  %wide.masked.gather2703 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2702, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !493
  %i.ioc = fcmp reassoc nsz arcp contract afn ole <8 x float> %wide.masked.gather2703, %broadcast.splat2689
  %i.iod = zext <8 x i1> %i.ioc to <8 x i8>
  %i.ioe = add <8 x i8> %i.int, %i.iod
  %wide.gep2704 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2694, i64 %indvars.iv1464.i
  %wide.masked.gather2705 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2704, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !494
  %i.iof = fcmp reassoc nsz arcp contract afn ole <8 x float> %wide.masked.gather2705, %broadcast.splat2689
  %i.iog = zext <8 x i1> %i.iof to <8 x i8>
  %i.ioh = add <8 x i8> %i.ioe, %i.iog
  %wide.gep2706 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2694, i64 %i.ilp
  %wide.masked.gather2707 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2706, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !495
  %i.ioi = fcmp reassoc nsz arcp contract afn ole <8 x float> %wide.masked.gather2707, %broadcast.splat2689
  %i.ioj = zext <8 x i1> %i.ioi to <8 x i8>
  %i.iok = add <8 x i8> %i.ioh, %i.ioj            ; 9 uses
  %i.iol = extractelement <8 x i8> %i.iok, i64 0
  store i8 %i.iol, ptr %i.ilq, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.iom = extractelement <8 x i8> %i.iok, i64 1
  store i8 %i.iom, ptr %i.ils, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.ion = extractelement <8 x i8> %i.iok, i64 2
  store i8 %i.ion, ptr %i.ilu, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.ioo = extractelement <8 x i8> %i.iok, i64 3
  store i8 %i.ioo, ptr %i.ilw, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.iop = extractelement <8 x i8> %i.iok, i64 4
  store i8 %i.iop, ptr %i.ily, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.ioq = extractelement <8 x i8> %i.iok, i64 5
  store i8 %i.ioq, ptr %i.ima, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.ior = extractelement <8 x i8> %i.iok, i64 6
  store i8 %i.ior, ptr %i.imc, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.ios = extractelement <8 x i8> %i.iok, i64 7
  store i8 %i.ios, ptr %i.ime, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %wide.gep2708 = getelementptr inbounds nuw [488 x i8], <8 x ptr> %wide.gep2693, i64 %i.ikn ; 3 uses
  %wide.gep2709 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep2708, i64 %i.ilo
  %wide.masked.gather2710 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2709, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !496
  %i.iot = fcmp reassoc nsz arcp contract afn ole <8 x float> %wide.masked.gather2710, %broadcast.splat2689
  %i.iou = zext <8 x i1> %i.iot to <8 x i8>
  %i.iov = add <8 x i8> %i.iok, %i.iou
  %wide.gep2711 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2708, i64 %indvars.iv1464.i
  %wide.masked.gather2712 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2711, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !497
  %i.iow = fcmp reassoc nsz arcp contract afn ole <8 x float> %wide.masked.gather2712, %broadcast.splat2689
  %i.iox = zext <8 x i1> %i.iow to <8 x i8>
  %i.ioy = add <8 x i8> %i.iov, %i.iox
  %wide.gep2713 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2708, i64 %i.ilp
  %wide.masked.gather2714 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2713, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !498
  %i.ioz = fcmp reassoc nsz arcp contract afn ole <8 x float> %wide.masked.gather2714, %broadcast.splat2689
  %i.ipa = zext <8 x i1> %i.ioz to <8 x i8>
  %i.ipb = add <8 x i8> %i.ioy, %i.ipa            ; 8 uses
  %i.ipc = extractelement <8 x i8> %i.ipb, i64 0
  store i8 %i.ipc, ptr %i.ilq, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.ipd = extractelement <8 x i8> %i.ipb, i64 1
  store i8 %i.ipd, ptr %i.ils, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.ipe = extractelement <8 x i8> %i.ipb, i64 2
  store i8 %i.ipe, ptr %i.ilu, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.ipf = extractelement <8 x i8> %i.ipb, i64 3
  store i8 %i.ipf, ptr %i.ilw, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.ipg = extractelement <8 x i8> %i.ipb, i64 4
  store i8 %i.ipg, ptr %i.ily, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.iph = extractelement <8 x i8> %i.ipb, i64 5
  store i8 %i.iph, ptr %i.ima, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.ipi = extractelement <8 x i8> %i.ipb, i64 6
  store i8 %i.ipi, ptr %i.imc, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.ipj = extractelement <8 x i8> %i.ipb, i64 7
  store i8 %i.ipj, ptr %i.ime, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %index.next2715 = add nuw i64 %index2691, 8     ; 2 uses
  %vec.ind.next2716 = add nuw nsw <8 x i64> %vec.ind2692, splat (i64 8)
  %i.ipk = icmp eq i64 %index.next2715, %n.vec2687
  br i1 %i.ipk, label %middle.block2717, label %vector.body2690, !llvm.loop !249

.preheader1038.us.i:                              ; preds = %.epilog-lcssa, %.preheader1038.us.i
  %indvars.iv1459.i = phi i64 [ %indvars.iv.next1460.i, %.preheader1038.us.i ], [ 0, %.epilog-lcssa ] ; 3 uses
  %i.ipl = getelementptr inbounds nuw [59536 x i8], ptr %i.fyf, i64 %indvars.iv1459.i ; 2 uses
  %gep1203.us.i = getelementptr inbounds nuw [14884 x i8], ptr %invariant.gep1202.us.i, i64 %indvars.iv1459.i ; 6 uses
  %.promoted1195.us.i = load i8, ptr %gep1203.us.i, align 1, !tbaa !133
  %i.ipm = getelementptr [488 x i8], ptr %i.ipl, i64 %indvars.iv1467.i ; 4 uses
  %i.ipn = getelementptr i8, ptr %i.ipm, i64 -488 ; 3 uses
  %i.ipo = getelementptr inbounds [4 x i8], ptr %i.ipn, i64 %i.ilo
  %i.ipp = load float, ptr %i.ipo, align 4, !tbaa !12
  %i.ipq = fcmp reassoc nsz arcp contract afn ole float %i.ipp, %i.iln
  %i.ipr = zext i1 %i.ipq to i8
  %i.ips = add i8 %.promoted1195.us.i, %i.ipr     ; 2 uses
  store i8 %i.ips, ptr %gep1203.us.i, align 1, !tbaa !133
  %i.ipt = getelementptr inbounds nuw [4 x i8], ptr %i.ipn, i64 %indvars.iv1464.i
  %i.ipu = load float, ptr %i.ipt, align 4, !tbaa !12
  %i.ipv = fcmp reassoc nsz arcp contract afn ole float %i.ipu, %i.iln
  %i.ipw = zext i1 %i.ipv to i8
  %i.ipx = add i8 %i.ips, %i.ipw                  ; 2 uses
  store i8 %i.ipx, ptr %gep1203.us.i, align 1, !tbaa !133
  %i.ipy = getelementptr inbounds nuw [4 x i8], ptr %i.ipn, i64 %i.ilp
  %i.ipz = load float, ptr %i.ipy, align 4, !tbaa !12
  %i.iqa = fcmp reassoc nsz arcp contract afn ole float %i.ipz, %i.iln
  %i.iqb = zext i1 %i.iqa to i8
  %i.iqc = add i8 %i.ipx, %i.iqb                  ; 2 uses
  store i8 %i.iqc, ptr %gep1203.us.i, align 1, !tbaa !133
  %i.iqd = getelementptr inbounds [4 x i8], ptr %i.ipm, i64 %i.ilo
  %i.iqe = load float, ptr %i.iqd, align 4, !tbaa !12
  %i.iqf = fcmp reassoc nsz arcp contract afn ole float %i.iqe, %i.iln
  %i.iqg = zext i1 %i.iqf to i8
  %i.iqh = add i8 %i.iqc, %i.iqg
  %i.iqi = getelementptr inbounds nuw [4 x i8], ptr %i.ipm, i64 %indvars.iv1464.i
  %i.iqj = load float, ptr %i.iqi, align 4, !tbaa !12
  %i.iqk = fcmp reassoc nsz arcp contract afn ole float %i.iqj, %i.iln
  %i.iql = zext i1 %i.iqk to i8
  %i.iqm = add i8 %i.iqh, %i.iql
  %i.iqn = getelementptr inbounds nuw [4 x i8], ptr %i.ipm, i64 %i.ilp
  %i.iqo = load float, ptr %i.iqn, align 4, !tbaa !12
  %i.iqp = fcmp reassoc nsz arcp contract afn ole float %i.iqo, %i.iln
  %i.iqq = zext i1 %i.iqp to i8
  %i.iqr = add i8 %i.iqm, %i.iqq                  ; 2 uses
  store i8 %i.iqr, ptr %gep1203.us.i, align 1, !tbaa !133
  %i.iqs = getelementptr inbounds nuw [488 x i8], ptr %i.ipl, i64 %i.ikn ; 3 uses
  %i.iqt = getelementptr inbounds [4 x i8], ptr %i.iqs, i64 %i.ilo
  %i.iqu = load float, ptr %i.iqt, align 4, !tbaa !12
  %i.iqv = fcmp reassoc nsz arcp contract afn ole float %i.iqu, %i.iln
  %i.iqw = zext i1 %i.iqv to i8
  %i.iqx = add i8 %i.iqr, %i.iqw
  %i.iqy = getelementptr inbounds nuw [4 x i8], ptr %i.iqs, i64 %indvars.iv1464.i
  %i.iqz = load float, ptr %i.iqy, align 4, !tbaa !12
  %i.ira = fcmp reassoc nsz arcp contract afn ole float %i.iqz, %i.iln
  %i.irb = zext i1 %i.ira to i8
  %i.irc = add i8 %i.iqx, %i.irb
  %i.ird = getelementptr inbounds nuw [4 x i8], ptr %i.iqs, i64 %i.ilp
  %i.ire = load float, ptr %i.ird, align 4, !tbaa !12
  %i.irf = fcmp reassoc nsz arcp contract afn ole float %i.ire, %i.iln
  %i.irg = zext i1 %i.irf to i8
  %i.irh = add i8 %i.irc, %i.irg
  store i8 %i.irh, ptr %gep1203.us.i, align 1, !tbaa !133
  %indvars.iv.next1460.i = add nuw nsw i64 %indvars.iv1459.i, 1 ; 2 uses
  %exitcond1463.not.i = icmp eq i64 %indvars.iv.next1460.i, %i.apz
  br i1 %exitcond1463.not.i, label %middle.block2717, label %.preheader1038.us.i, !llvm.loop !250

middle.block2717:                                 ; preds = %vector.body2690, %.preheader1038.us.i
  %i.iri = icmp samesign ult i64 %i.ilp, %i.ika
  br i1 %i.iri, label %.preheader1043.us.i, label %._crit_edge1206.us.i

._crit_edge1206.us.i:                             ; preds = %middle.block2717
  %i.irj = icmp slt i64 %i.ikn, %i.gcq
  %indvar.next2624 = add i64 %indvar2623, 1
  br i1 %i.irj, label %.preheader1054.us.i, label %.preheader1058.us.i

.preheader1058.us.i:                              ; preds = %._crit_edge1206.us.i, %.preheader1054.lr.ph.us.i, %bb.nk
  %i.irk = sub nsw i32 %i.ifa, %i.aph             ; 4 uses
  br i1 %i.gch, label %.preheader1053.us.preheader.i, label %._crit_edge1241.split.us.i

.preheader1053.us.preheader.i:                    ; preds = %.preheader1058.us.i
  %i.irl = icmp slt i32 %i.apu, %i.irk
  %i.irm = sext i32 %i.irk to i64
  br i1 %i.irl, label %.preheader1053.us.i.us, label %.preheader1053.us.i

.preheader1053.us.i.us:                           ; preds = %.preheader1053.us.preheader.i, %._crit_edge1216.us.i.loopexit.us
  %indvars.iv1482.i.us = phi i64 [ %indvars.iv.next1483.i.us, %._crit_edge1216.us.i.loopexit.us ], [ 0, %.preheader1053.us.preheader.i ] ; 4 uses
  %i.irn = mul nuw nsw i64 %indvars.iv1482.i.us, 14884
  %i.iro = getelementptr inbounds nuw [14884 x i8], ptr %i.fyh, i64 %indvars.iv1482.i.us
  %i.irp = getelementptr inbounds nuw [14884 x i8], ptr %i.fye, i64 %indvars.iv1482.i.us
  %i.irq = getelementptr i8, ptr %i.gay, i64 %i.irn
  br label %.preheader1037.lr.ph.us.us.i.us

.preheader1037.lr.ph.us.us.i.us:                  ; preds = %.preheader1053.us.i.us, %._crit_edge1213.us.us.i.us
  %indvar4534 = phi i64 [ 0, %.preheader1053.us.i.us ], [ %indvar.next4535, %._crit_edge1213.us.us.i.us ] ; 2 uses
  %indvars.iv1479.i.us = phi i64 [ %i.apt, %.preheader1053.us.i.us ], [ %i.irv, %._crit_edge1213.us.us.i.us ] ; 3 uses
  %i.irr = mul nuw nsw i64 %indvar4534, 122
  %scevgep4536 = getelementptr i8, ptr %i.irq, i64 %i.irr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.f, i8 0, i64 5, i1 false)
  %i.irs = getelementptr inbounds nuw [122 x i8], ptr %i.iro, i64 %indvars.iv1479.i.us ; 2 uses
  %i.irt = getelementptr i8, ptr %i.irs, i64 %i.apt
  %i.iru = getelementptr i8, ptr %i.irt, i64 -5
  store i8 0, ptr %i.iru, align 1, !tbaa !133
  %i.irv = add nuw nsw i64 %indvars.iv1479.i.us, 1 ; 3 uses
  %load_initial = load i8, ptr %scevgep4536, align 1
  br label %.preheader1037.us.us.i.us

.preheader1037.us.us.i.us:                        ; preds = %.preheader1037.us.us.i.us, %.preheader1037.lr.ph.us.us.i.us
  %store_forwarded = phi i8 [ %load_initial, %.preheader1037.lr.ph.us.us.i.us ], [ %i.ist, %.preheader1037.us.us.i.us ]
  %indvars.iv1476.i.us = phi i64 [ %i.aqe, %.preheader1037.lr.ph.us.us.i.us ], [ %indvars.iv.next1477.i.us, %.preheader1037.us.us.i.us ] ; 4 uses
  %invariant.gep1208.us.us.i.us = getelementptr i8, ptr %i.irp, i64 %indvars.iv1476.i.us ; 2 uses
  %i.irw = getelementptr [122 x i8], ptr %invariant.gep1208.us.us.i.us, i64 %indvars.iv1479.i.us ; 4 uses
  %i.irx = getelementptr i8, ptr %i.irw, i64 -242
  %i.iry = load i8, ptr %i.irx, align 1, !tbaa !133
  %i.irz = getelementptr i8, ptr %i.irw, i64 -120
  %i.isa = load i8, ptr %i.irz, align 1, !tbaa !133
  %i.isb = getelementptr i8, ptr %i.irw, i64 2
  %i.isc = load i8, ptr %i.isb, align 1, !tbaa !133
  %gep1209.us.us.3.i.us = getelementptr [122 x i8], ptr %invariant.gep1208.us.us.i.us, i64 %i.irv
  %i.isd = getelementptr i8, ptr %gep1209.us.us.3.i.us, i64 2
  %i.ise = load i8, ptr %i.isd, align 1, !tbaa !133
  %i.isf = getelementptr i8, ptr %i.irw, i64 246
  %i.isg = load i8, ptr %i.isf, align 1, !tbaa !133
  %i.ish = insertelement <4 x i8> poison, i8 %i.isa, i64 0
  %i.isi = insertelement <4 x i8> %i.ish, i8 %i.iry, i64 1
  %i.isj = insertelement <4 x i8> %i.isi, i8 %i.isc, i64 2
  %i.isk = insertelement <4 x i8> %i.isj, i8 %i.ise, i64 3
  %i.isl = call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %i.isk)
  %op.rdx4592 = add i8 %i.isl, %i.isg             ; 2 uses
  %i.ism = getelementptr i8, ptr %i.irs, i64 %indvars.iv1476.i.us
  %i.isn = trunc nsw i64 %indvars.iv1476.i.us to i32
  %i.iso = srem i32 %i.isn, 5
  %i.isp = sext i32 %i.iso to i64
  %i.isq = getelementptr inbounds i8, ptr %i.f, i64 %i.isp ; 2 uses
  %i.isr = load i8, ptr %i.isq, align 1, !tbaa !133
  %i.iss = add i8 %store_forwarded, %op.rdx4592
  %i.ist = sub i8 %i.iss, %i.isr                  ; 2 uses
  store i8 %i.ist, ptr %i.ism, align 1, !tbaa !133
  store i8 %op.rdx4592, ptr %i.isq, align 1, !tbaa !133
  %indvars.iv.next1477.i.us = add nsw i64 %indvars.iv1476.i.us, 1 ; 2 uses
  %i.isu = icmp slt i64 %indvars.iv.next1477.i.us, %i.irm
  br i1 %i.isu, label %.preheader1037.us.us.i.us, label %._crit_edge1213.us.us.i.us

._crit_edge1213.us.us.i.us:                       ; preds = %.preheader1037.us.us.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  %i.isv = icmp slt i64 %i.irv, %i.gcr
  %indvar.next4535 = add i64 %indvar4534, 1
  br i1 %i.isv, label %.preheader1037.lr.ph.us.us.i.us, label %._crit_edge1216.us.i.loopexit.us

._crit_edge1216.us.i.loopexit.us:                 ; preds = %._crit_edge1213.us.us.i.us
  %indvars.iv.next1483.i.us = add nuw nsw i64 %indvars.iv1482.i.us, 1 ; 2 uses
  %exitcond1486.not.i.us = icmp eq i64 %indvars.iv.next1483.i.us, %i.apz
  br i1 %exitcond1486.not.i.us, label %.preheader1057.split.us.i, label %.preheader1053.us.i.us

.preheader1053.us.i:                              ; preds = %.preheader1053.us.preheader.i, %._crit_edge1216.us.i.loopexit1008.3
  %indvars.iv1482.i = phi i64 [ %indvars.iv.next1483.i.3, %._crit_edge1216.us.i.loopexit1008.3 ], [ 0, %.preheader1053.us.preheader.i ] ; 5 uses
  %gep = getelementptr [14884 x i8], ptr %invariant.gep, i64 %indvars.iv1482.i
  br label %bb.nm

bb.nm:                                            ; preds = %bb.nm, %.preheader1053.us.i
  %indvars.iv1470.i = phi i64 [ %indvars.iv.next1471.i, %bb.nm ], [ %i.apt, %.preheader1053.us.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  %gep1218.us.i = getelementptr [122 x i8], ptr %gep, i64 %indvars.iv1470.i
  %i.isw = getelementptr i8, ptr %gep1218.us.i, i64 -5
  store i8 0, ptr %i.isw, align 1, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  %indvars.iv.next1471.i = add nuw nsw i64 %indvars.iv1470.i, 1 ; 2 uses
  %i.isx = icmp slt i64 %indvars.iv.next1471.i, %i.gcr
  br i1 %i.isx, label %bb.nm, label %._crit_edge1216.us.i.loopexit1008

._crit_edge1216.us.i.loopexit1008:                ; preds = %bb.nm
  %i.isy = getelementptr [14884 x i8], ptr %invariant.gep, i64 %indvars.iv1482.i
  br label %bb.nn

bb.nn:                                            ; preds = %bb.nn, %._crit_edge1216.us.i.loopexit1008
  %indvars.iv1470.i.1 = phi i64 [ %indvars.iv.next1471.i.1, %bb.nn ], [ %i.apt, %._crit_edge1216.us.i.loopexit1008 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  %gep1218.us.i.1 = getelementptr [122 x i8], ptr %i.isy, i64 %indvars.iv1470.i.1
  %i.isz = getelementptr i8, ptr %gep1218.us.i.1, i64 14879
  store i8 0, ptr %i.isz, align 1, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  %indvars.iv.next1471.i.1 = add nuw nsw i64 %indvars.iv1470.i.1, 1 ; 2 uses
  %i.ita = icmp slt i64 %indvars.iv.next1471.i.1, %i.gcr
  br i1 %i.ita, label %bb.nn, label %._crit_edge1216.us.i.loopexit1008.1

._crit_edge1216.us.i.loopexit1008.1:              ; preds = %bb.nn
  %i.itb = getelementptr [14884 x i8], ptr %invariant.gep, i64 %indvars.iv1482.i
  br label %bb.no

bb.no:                                            ; preds = %bb.no, %._crit_edge1216.us.i.loopexit1008.1
  %indvars.iv1470.i.2 = phi i64 [ %indvars.iv.next1471.i.2, %bb.no ], [ %i.apt, %._crit_edge1216.us.i.loopexit1008.1 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  %gep1218.us.i.2 = getelementptr [122 x i8], ptr %i.itb, i64 %indvars.iv1470.i.2
  %i.itc = getelementptr i8, ptr %gep1218.us.i.2, i64 29763
  store i8 0, ptr %i.itc, align 1, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  %indvars.iv.next1471.i.2 = add nuw nsw i64 %indvars.iv1470.i.2, 1 ; 2 uses
  %i.itd = icmp slt i64 %indvars.iv.next1471.i.2, %i.gcr
  br i1 %i.itd, label %bb.no, label %._crit_edge1216.us.i.loopexit1008.2

._crit_edge1216.us.i.loopexit1008.2:              ; preds = %bb.no
  %i.ite = getelementptr [14884 x i8], ptr %invariant.gep, i64 %indvars.iv1482.i
  br label %bb.np

bb.np:                                            ; preds = %bb.np, %._crit_edge1216.us.i.loopexit1008.2
  %indvars.iv1470.i.3 = phi i64 [ %indvars.iv.next1471.i.3, %bb.np ], [ %i.apt, %._crit_edge1216.us.i.loopexit1008.2 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  %gep1218.us.i.3 = getelementptr [122 x i8], ptr %i.ite, i64 %indvars.iv1470.i.3
  %i.itf = getelementptr i8, ptr %gep1218.us.i.3, i64 44647
  store i8 0, ptr %i.itf, align 1, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  %indvars.iv.next1471.i.3 = add nuw nsw i64 %indvars.iv1470.i.3, 1 ; 2 uses
  %i.itg = icmp slt i64 %indvars.iv.next1471.i.3, %i.gcr
  br i1 %i.itg, label %bb.np, label %._crit_edge1216.us.i.loopexit1008.3

._crit_edge1216.us.i.loopexit1008.3:              ; preds = %bb.np
  %indvars.iv.next1483.i.3 = add nuw nsw i64 %indvars.iv1482.i, 4 ; 2 uses
  %exitcond1486.not.i.3 = icmp eq i64 %indvars.iv.next1483.i.3, %i.apz
  br i1 %exitcond1486.not.i.3, label %.preheader1057.split.us.i, label %.preheader1053.us.i

.preheader1052.us.i:                              ; preds = %.preheader1052.us.preheader.i, %._crit_edge1239.us.i
  %indvars.iv1513.i = phi i64 [ %i.apt, %.preheader1052.us.preheader.i ], [ %indvars.iv.next1514.i, %._crit_edge1239.us.i ] ; 4 uses
  %invariant.gep1220.us.i = getelementptr inbounds nuw [122 x i8], ptr %i.fyh, i64 %indvars.iv1513.i
  %invariant.gep1232.us.i = getelementptr inbounds nuw [1464 x i8], ptr %i.fxe, i64 %indvars.iv1513.i
  %i.ith = trunc i64 %indvars.iv1513.i to i32
  %i.iti = add i32 %indvars.iv1341.i, %i.ith
  %i.itj = mul i32 %i.iti, %i.bo
  %i.itk = add i32 %i.itj, %indvars.iv1336.i
  br label %bb.nq

bb.nq:                                            ; preds = %.preheader1042.us.i, %.preheader1052.us.i
  %indvars.iv1510.i = phi i64 [ %indvars.iv.next1511.i, %.preheader1042.us.i ], [ %i.apt, %.preheader1052.us.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  store i64 0, ptr %i.g, align 8
  %invariant.gep1222.us.i = getelementptr inbounds nuw i8, ptr %invariant.gep1220.us.i, i64 %indvars.iv1510.i ; 9 uses
  br i1 %i.apa, label %vector.body2614, label %scalar.ph2610

vector.body2614:                                  ; preds = %bb.nq, %vector.body2614
  %index2615 = phi i64 [ %index.next2617, %vector.body2614 ], [ 0, %bb.nq ] ; 10 uses
  %vec.phi2616 = phi <8 x i32> [ %i.ius, %vector.body2614 ], [ zeroinitializer, %bb.nq ]
  %i.itl = getelementptr inbounds nuw [14884 x i8], ptr %invariant.gep1222.us.i, i64 %index2615
  %i.itm = getelementptr inbounds nuw [14884 x i8], ptr %invariant.gep1222.us.i, i64 %index2615
  %i.itn = getelementptr inbounds nuw i8, ptr %i.itm, i64 14884
  %i.ito = getelementptr inbounds nuw [14884 x i8], ptr %invariant.gep1222.us.i, i64 %index2615
  %i.itp = getelementptr inbounds nuw i8, ptr %i.ito, i64 29768
  %i.itq = getelementptr inbounds nuw [14884 x i8], ptr %invariant.gep1222.us.i, i64 %index2615
  %i.itr = getelementptr inbounds nuw i8, ptr %i.itq, i64 44652
  %i.its = getelementptr inbounds nuw [14884 x i8], ptr %invariant.gep1222.us.i, i64 %index2615
  %i.itt = getelementptr inbounds nuw i8, ptr %i.its, i64 59536
  %i.itu = getelementptr inbounds nuw [14884 x i8], ptr %invariant.gep1222.us.i, i64 %index2615
  %i.itv = getelementptr inbounds nuw i8, ptr %i.itu, i64 74420
  %i.itw = getelementptr inbounds nuw [14884 x i8], ptr %invariant.gep1222.us.i, i64 %index2615
  %i.itx = getelementptr inbounds nuw i8, ptr %i.itw, i64 89304
  %i.ity = getelementptr inbounds nuw [14884 x i8], ptr %invariant.gep1222.us.i, i64 %index2615
  %i.itz = getelementptr inbounds nuw i8, ptr %i.ity, i64 104188
  %i.iua = load i8, ptr %i.itl, align 1, !tbaa !133
  %i.iub = load i8, ptr %i.itn, align 1, !tbaa !133
  %i.iuc = load i8, ptr %i.itp, align 1, !tbaa !133
  %i.iud = load i8, ptr %i.itr, align 1, !tbaa !133
  %i.iue = load i8, ptr %i.itt, align 1, !tbaa !133
  %i.iuf = load i8, ptr %i.itv, align 1, !tbaa !133
  %i.iug = load i8, ptr %i.itx, align 1, !tbaa !133
  %i.iuh = load i8, ptr %i.itz, align 1, !tbaa !133
  %i.iui = insertelement <8 x i8> poison, i8 %i.iua, i64 0
  %i.iuj = insertelement <8 x i8> %i.iui, i8 %i.iub, i64 1
  %i.iuk = insertelement <8 x i8> %i.iuj, i8 %i.iuc, i64 2
  %i.iul = insertelement <8 x i8> %i.iuk, i8 %i.iud, i64 3
  %i.ium = insertelement <8 x i8> %i.iul, i8 %i.iue, i64 4
  %i.iun = insertelement <8 x i8> %i.ium, i8 %i.iuf, i64 5
  %i.iuo = insertelement <8 x i8> %i.iun, i8 %i.iug, i64 6
  %i.iup = insertelement <8 x i8> %i.iuo, i8 %i.iuh, i64 7 ; 2 uses
  %i.iuq = getelementptr inbounds nuw i8, ptr %i.g, i64 %index2615
  store <8 x i8> %i.iup, ptr %i.iuq, align 8, !tbaa !133
  %i.iur = zext <8 x i8> %i.iup to <8 x i32>
  %i.ius = call <8 x i32> @llvm.umax.v8i32(<8 x i32> %vec.phi2616, <8 x i32> %i.iur) ; 2 uses
  %index.next2617 = add nuw i64 %index2615, 8     ; 2 uses
  %i.iut = icmp eq i64 %index.next2617, %n.vec2613
  br i1 %i.iut, label %middle.block2618, label %vector.body2614, !llvm.loop !251

middle.block2618:                                 ; preds = %vector.body2614
  %i.iuu = call i32 @llvm.vector.reduce.umax.v8i32(<8 x i32> %i.ius)
  br label %.loopexit

scalar.ph2610:                                    ; preds = %bb.nq, %scalar.ph2610
  %indvars.iv1487.i = phi i64 [ %indvars.iv.next1488.i, %scalar.ph2610 ], [ 0, %bb.nq ] ; 3 uses
  %.08291224.us.i = phi i32 [ %..0829.us.i, %scalar.ph2610 ], [ 0, %bb.nq ]
  %gep1223.us.i = getelementptr inbounds nuw [14884 x i8], ptr %invariant.gep1222.us.i, i64 %indvars.iv1487.i
end_hunk_0
begin_hunk_1_@process:bb.a
  br label %scalar.ph3339

vector.scevcheck3295:                             ; preds = %.lr.ph894.i
  %i.kmj = zext i32 %indvars.iv1009.i to i64      ; 2 uses
  %i.kmk = shl nuw nsw i64 %i.kmj, 2              ; 7 uses
  %scevgep3315 = getelementptr i8, ptr %scevgep3314, i64 %i.kmk ; 2 uses
  %scevgep3313 = getelementptr i8, ptr %scevgep3312, i64 %i.kmk ; 2 uses
  %scevgep3311 = getelementptr i8, ptr %scevgep3310.a, i64 %i.kmk ; 2 uses
  %scevgep3309 = getelementptr i8, ptr %scevgep3308.a, i64 %i.kmk ; 2 uses
  %scevgep3307 = getelementptr i8, ptr %scevgep3306.a, i64 %i.kmk ; 2 uses
  %scevgep3305 = getelementptr i8, ptr %scevgep3304.a, i64 %i.kmk ; 2 uses
  %scevgep3300 = getelementptr i8, ptr %scevgep3299, i64 %i.kmk ; 2 uses
  %i.kml = lshr exact i64 %i.kmj, 1               ; 2 uses
  %i.kmm = trunc nuw nsw i64 %i.kml to i32
  %i.kmn = or disjoint i32 %i.kmm, 1
  %i.kmo = add i32 %i.kac, %i.kmn
  %i.kmp = zext i32 %i.kmo to i64
  %i.kmq = xor i64 %i.kml, -2
  %i.kmr = add nsw i64 %i.kmq, %i.kmp             ; 2 uses
  %mul.result3302 = shl nsw i64 %i.kmr, 3         ; 7 uses
  %mul.overflow3303 = icmp ugt i64 %i.kmr, 2305843009213693951
  %i.kms = getelementptr i8, ptr %scevgep3300, i64 %mul.result3302
  %i.kmt = icmp ult ptr %i.kms, %scevgep3300
  %i.kmu = getelementptr i8, ptr %scevgep3305, i64 %mul.result3302
  %i.kmv = icmp ult ptr %i.kmu, %scevgep3305
  %i.kmw = getelementptr i8, ptr %scevgep3307, i64 %mul.result3302
  %i.kmx = icmp ult ptr %i.kmw, %scevgep3307
  %i.kmy = or i1 %i.kmx, %mul.overflow3303
  %i.kmz = getelementptr i8, ptr %scevgep3309, i64 %mul.result3302
  %i.kna = icmp ult ptr %i.kmz, %scevgep3309
  %i.knb = getelementptr i8, ptr %scevgep3311, i64 %mul.result3302
  %i.knc = icmp ult ptr %i.knb, %scevgep3311
  %i.knd = getelementptr i8, ptr %scevgep3313, i64 %mul.result3302
  %i.kne = icmp ult ptr %i.knd, %scevgep3313
  %i.knf = getelementptr i8, ptr %scevgep3315, i64 %mul.result3302
  %i.kng = icmp ult ptr %i.knf, %scevgep3315
  %i.knh = or i1 %i.kmv, %i.kmt
  %i.kni = or i1 %i.knh, %i.kmy
  %i.knj = or i1 %i.kna, %i.kni
  %i.knk = or i1 %i.knc, %i.knj
  %i.knl = or i1 %i.kne, %i.knk
  %i.knm = or i1 %i.kng, %i.knl
  br i1 %i.knm, label %scalar.ph3339.preheader, label %vector.memcheck3316

vector.memcheck3316:                              ; preds = %vector.scevcheck3295
  %bound03328 = icmp ult ptr %scevgep3317.a, %scevgep3323.a
  %bound13329 = icmp ult ptr %scevgep3322, %scevgep3321.a
  %found.conflict3330 = and i1 %bound03328, %bound13329
  %bound03331.a = icmp ult ptr %scevgep3317.a, %scevgep3327
  %bound13332.a = icmp ult ptr %scevgep3325, %scevgep3321.a
  %found.conflict3333.a = and i1 %bound03331.a, %bound13332.a
  %conflict.rdx3334.a = or i1 %found.conflict3330, %found.conflict3333.a
  %bound03335 = icmp ult ptr %scevgep3322, %scevgep3327
  %bound13336 = icmp ult ptr %scevgep3325, %scevgep3323.a
  %found.conflict3337 = and i1 %bound03335, %bound13336
  %conflict.rdx3338 = or i1 %conflict.rdx3334.a, %found.conflict3337
  br i1 %conflict.rdx3338, label %scalar.ph3339.preheader, label %vector.ph3341

vector.ph3341:                                    ; preds = %vector.memcheck3316
  %i.knn = and i64 %i.kmi, 7                      ; 2 uses
  %i.kno = icmp eq i64 %i.knn, 0
  %i.knp = select i1 %i.kno, i64 8, i64 %i.knn
  %n.vec3342 = sub nsw i64 %i.kmi, %i.knp         ; 3 uses
  %i.knq = shl nsw i64 %n.vec3342, 1
  %i.knr = add nsw i64 %i.knq, %i.kma
  %i.kns = add nsw i64 %i.kmb, %n.vec3342
  %broadcast.splatinsert3343 = insertelement <8 x i64> poison, i64 %i.kma, i64 0
  %broadcast.splat3344 = shufflevector <8 x i64> %broadcast.splatinsert3343, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction3345 = add nuw nsw <8 x i64> %broadcast.splat3344, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  br label %vector.body3346

vector.body3346:                                  ; preds = %vector.body3346, %vector.ph3341
  %index3347 = phi i64 [ 0, %vector.ph3341 ], [ %index.next3376, %vector.body3346 ] ; 2 uses
  %vec.ind3348 = phi <8 x i64> [ %induction3345, %vector.ph3341 ], [ %vec.ind.next3377, %vector.body3346 ] ; 2 uses
  %i.knt = add nuw i64 %i.kmb, %index3347         ; 2 uses
  %wide.gep3349 = getelementptr [4 x i8], ptr %i.jet, <8 x i64> %vec.ind3348 ; 9 uses
  %i.knu = extractelement <8 x ptr> %wide.gep3349, i64 0 ; 6 uses
  %wide.gep3350 = getelementptr i8, <8 x ptr> %wide.gep3349, i64 -1356
  %wide.masked.gather3351 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3350, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !519, !noalias !499
  %wide.gep3352 = getelementptr i8, <8 x ptr> %wide.gep3349, i64 -452
  %wide.masked.gather3353 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3352, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !519, !noalias !499
  %i.knv = getelementptr inbounds nuw i8, ptr %i.knu, i64 452
  %wide.vec3354 = load <16 x float>, ptr %i.knv, align 4, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3355 = shufflevector <16 x float> %wide.vec3354, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.knw = getelementptr inbounds nuw i8, ptr %i.knu, i64 1356
  %wide.vec3356.a = load <16 x float>, ptr %i.knw, align 4, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3357.a = shufflevector <16 x float> %wide.vec3356.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.gep3358 = getelementptr i8, <8 x ptr> %wide.gep3349, i64 -904
  %wide.masked.gather3359 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3358, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !519, !noalias !499
  %i.knx = getelementptr inbounds nuw i8, ptr %i.knu, i64 904
  %wide.vec3360 = load <16 x float>, ptr %i.knx, align 4, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3361 = shufflevector <16 x float> %wide.vec3360, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kny = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3361, %wide.masked.gather3359
  %i.knz = fmul reassoc nsz arcp contract afn <8 x float> %i.kny, splat (float -3.000000e+00)
  %wide.masked.gather3362.a = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3349, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !519, !noalias !499
  %i.koa = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3362.a, splat (float 6.000000e+00)
  %i.kob = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3353, %strided.vec3355
  %i.koc = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3351, %i.kob
  %i.kod = fadd reassoc nsz arcp contract afn <8 x float> %i.koc, %strided.vec3357.a
  %i.koe = fadd reassoc nsz arcp contract afn <8 x float> %i.kod, %i.knz
  %i.kof = fadd reassoc nsz arcp contract afn <8 x float> %i.koe, %i.koa ; 2 uses
  %i.kog = fmul reassoc nsz arcp contract afn <8 x float> %i.kof, %i.kof
  %i.koh = getelementptr inbounds nuw [4 x i8], ptr %i.jev, i64 %i.knt
  store <8 x float> %i.kog, ptr %i.koh, align 4, !tbaa !12, !alias.scope !520, !noalias !521
  %wide.gep3363 = getelementptr i8, <8 x ptr> %wide.gep3349, i64 -1332
  %wide.masked.gather3364 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3363, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !519, !noalias !499
  %wide.gep3365 = getelementptr i8, <8 x ptr> %wide.gep3349, i64 -444
  %wide.masked.gather3366 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3365, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !519, !noalias !499
  %i.koi = getelementptr inbounds nuw i8, ptr %i.knu, i64 444
  %wide.vec3367 = load <16 x float>, ptr %i.koi, align 4, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3368 = shufflevector <16 x float> %wide.vec3367, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.koj = getelementptr inbounds nuw i8, ptr %i.knu, i64 1332
  %wide.vec3369.a = load <16 x float>, ptr %i.koj, align 4, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3370.a = shufflevector <16 x float> %wide.vec3369.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.gep3371 = getelementptr i8, <8 x ptr> %wide.gep3349, i64 -888
  %wide.masked.gather3372 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3371, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !519, !noalias !499
  %i.kok = getelementptr inbounds nuw i8, ptr %i.knu, i64 888
  %wide.vec3373 = load <16 x float>, ptr %i.kok, align 4, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3374 = shufflevector <16 x float> %wide.vec3373, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kol = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3374, %wide.masked.gather3372
  %i.kom = fmul reassoc nsz arcp contract afn <8 x float> %i.kol, splat (float -3.000000e+00)
  %wide.masked.gather3375 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3349, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !519, !noalias !499
  %i.kon = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3375, splat (float 6.000000e+00)
  %i.koo = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3366, %strided.vec3368
  %i.kop = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3364, %i.koo
  %i.koq = fadd reassoc nsz arcp contract afn <8 x float> %i.kop, %strided.vec3370.a
  %i.kor = fadd reassoc nsz arcp contract afn <8 x float> %i.koq, %i.kom
  %i.kos = fadd reassoc nsz arcp contract afn <8 x float> %i.kor, %i.kon ; 2 uses
  %i.kot = fmul reassoc nsz arcp contract afn <8 x float> %i.kos, %i.kos
  %i.kou = getelementptr inbounds nuw [4 x i8], ptr %i.jew, i64 %i.knt
  store <8 x float> %i.kot, ptr %i.kou, align 4, !tbaa !12, !alias.scope !522, !noalias !523
  %index.next3376 = add nuw i64 %index3347, 8     ; 2 uses
  %vec.ind.next3377 = add nuw nsw <8 x i64> %vec.ind3348, splat (i64 16)
  %i.kov = icmp eq i64 %index.next3376, %n.vec3342
  br i1 %i.kov, label %scalar.ph3339.preheader, label %vector.body3346, !llvm.loop !295

._crit_edge895.i:                                 ; preds = %scalar.ph3339
  %i.kow = add nuw nsw i32 %.0767896.i, 1         ; 2 uses
  %i.kox = icmp slt i32 %i.kow, %i.jfo
  %indvars.iv.next1010.i = add i32 %indvars.iv1009.i, 112
  br i1 %i.kox, label %.lr.ph894.i, label %.preheader829.i

scalar.ph3339:                                    ; preds = %scalar.ph3339.preheader, %scalar.ph3339
  %indvars.iv1013.i = phi i64 [ %indvars.iv.next1014.i, %scalar.ph3339 ], [ %indvars.iv1013.i.ph, %scalar.ph3339.preheader ] ; 2 uses
  %indvars.iv1011.i = phi i64 [ %indvars.iv.next1012.i, %scalar.ph3339 ], [ %indvars.iv1011.i.ph, %scalar.ph3339.preheader ] ; 3 uses
  %i.koy = getelementptr [4 x i8], ptr %i.jet, i64 %indvars.iv1013.i ; 14 uses
  %i.koz = getelementptr i8, ptr %i.koy, i64 -1356
  %i.kpa = load float, ptr %i.koz, align 4, !tbaa !12, !noalias !499
  %i.kpb = getelementptr i8, ptr %i.koy, i64 -452
  %i.kpc = load float, ptr %i.kpb, align 4, !tbaa !12, !noalias !499
  %i.kpd = getelementptr inbounds nuw i8, ptr %i.koy, i64 452
  %i.kpe = load float, ptr %i.kpd, align 4, !tbaa !12, !noalias !499
  %i.kpf = getelementptr inbounds nuw i8, ptr %i.koy, i64 1356
  %i.kpg = load float, ptr %i.kpf, align 4, !tbaa !12, !noalias !499
  %i.kph = getelementptr i8, ptr %i.koy, i64 -904
  %i.kpi = load float, ptr %i.kph, align 4, !tbaa !12, !noalias !499
  %i.kpj = getelementptr inbounds nuw i8, ptr %i.koy, i64 904
  %i.kpk = load float, ptr %i.kpj, align 4, !tbaa !12, !noalias !499
  %i.kpl = fadd reassoc nsz arcp contract afn float %i.kpk, %i.kpi
  %.neg806.i = fmul reassoc nsz arcp contract afn float %i.kpl, -3.000000e+00
  %i.kpm = load float, ptr %i.koy, align 4, !tbaa !12, !noalias !499
  %i.kpn = fmul reassoc nsz arcp contract afn float %i.kpm, 6.000000e+00
  %i.kpo = fadd reassoc nsz arcp contract afn float %i.kpc, %i.kpe
  %.neg807.i = fsub reassoc nsz arcp contract afn float %i.kpa, %i.kpo
  %i.kpp = fadd reassoc nsz arcp contract afn float %.neg807.i, %i.kpg
  %i.kpq = fadd reassoc nsz arcp contract afn float %i.kpp, %.neg806.i
  %i.kpr = fadd reassoc nsz arcp contract afn float %i.kpq, %i.kpn ; 2 uses
  %i.kps = fmul reassoc nsz arcp contract afn float %i.kpr, %i.kpr
  %i.kpt = getelementptr inbounds nuw [4 x i8], ptr %i.jev, i64 %indvars.iv1011.i
  store float %i.kps, ptr %i.kpt, align 4, !tbaa !12, !noalias !499
  %i.kpu = getelementptr i8, ptr %i.koy, i64 -1332
  %i.kpv = load float, ptr %i.kpu, align 4, !tbaa !12, !noalias !499
  %i.kpw = getelementptr i8, ptr %i.koy, i64 -444
  %i.kpx = load float, ptr %i.kpw, align 4, !tbaa !12, !noalias !499
  %i.kpy = getelementptr inbounds nuw i8, ptr %i.koy, i64 444
  %i.kpz = load float, ptr %i.kpy, align 4, !tbaa !12, !noalias !499
  %i.kqa = getelementptr inbounds nuw i8, ptr %i.koy, i64 1332
  %i.kqb = load float, ptr %i.kqa, align 4, !tbaa !12, !noalias !499
  %i.kqc = getelementptr i8, ptr %i.koy, i64 -888
  %i.kqd = load float, ptr %i.kqc, align 4, !tbaa !12, !noalias !499
  %i.kqe = getelementptr inbounds nuw i8, ptr %i.koy, i64 888
  %i.kqf = load float, ptr %i.kqe, align 4, !tbaa !12, !noalias !499
  %i.kqg = fadd reassoc nsz arcp contract afn float %i.kqf, %i.kqd
  %.neg811.i = fmul reassoc nsz arcp contract afn float %i.kqg, -3.000000e+00
  %i.kqh = load float, ptr %i.koy, align 4, !tbaa !12, !noalias !499
  %i.kqi = fmul reassoc nsz arcp contract afn float %i.kqh, 6.000000e+00
  %i.kqj = fadd reassoc nsz arcp contract afn float %i.kpx, %i.kpz
  %.neg812.i = fsub reassoc nsz arcp contract afn float %i.kpv, %i.kqj
  %i.kqk = fadd reassoc nsz arcp contract afn float %.neg812.i, %i.kqb
  %i.kql = fadd reassoc nsz arcp contract afn float %i.kqk, %.neg811.i
  %i.kqm = fadd reassoc nsz arcp contract afn float %i.kql, %i.kqi ; 2 uses
  %i.kqn = fmul reassoc nsz arcp contract afn float %i.kqm, %i.kqm
  %i.kqo = getelementptr inbounds nuw [4 x i8], ptr %i.jew, i64 %indvars.iv1011.i
  store float %i.kqn, ptr %i.kqo, align 4, !tbaa !12, !noalias !499
  %indvars.iv.next1014.i = add nuw nsw i64 %indvars.iv1013.i, 2
  %indvars.iv.next1012.i = add nuw nsw i64 %indvars.iv1011.i, 1 ; 2 uses
  %exitcond.not.i542 = icmp eq i64 %indvars.iv.next1012.i, %wide.trip.count.i
  br i1 %exitcond.not.i542, label %._crit_edge895.i, label %scalar.ph3339, !llvm.loop !296

bb.og:                                            ; preds = %._crit_edge904.i, %.lr.ph906.i
  %indvars.iv1027.i = phi i32 [ 452, %.lr.ph906.i ], [ %indvars.iv.next1028.i, %._crit_edge904.i ] ; 2 uses
  %indvars.iv1021.i = phi i32 [ 563, %.lr.ph906.i ], [ %indvars.iv.next1022.i, %._crit_edge904.i ] ; 2 uses
  %.0763905.i = phi i32 [ 4, %.lr.ph906.i ], [ %i.ksx, %._crit_edge904.i ] ; 4 uses
  %i.kqp = mul i32 %.0763905.i, 112
  %i.kqq = zext i32 %i.kqp to i64
  %i.kqr = shl nuw nsw i64 %i.kqq, 1
  %i.kqs = shl i32 %.0763905.i, 2
  %i.kqt = and i32 %i.kqs, 28
  %i.kqu = lshr i32 %.fr1063, %i.kqt
  %i.kqv = and i32 %i.kqu, 1                      ; 3 uses
  %i.kqw = or disjoint i32 %i.kqv, 4              ; 5 uses
  %i.kqx = icmp slt i32 %i.kqw, %i.klk
  br i1 %i.kqx, label %.lr.ph903.preheader.i, label %._crit_edge904.i

.lr.ph903.preheader.i:                            ; preds = %bb.og
  %i.kqy = mul nuw nsw i32 %.0763905.i, 112
  %i.kqz = add nsw i32 %i.kqy, -113
  %i.kra = add nsw i32 %i.kqz, %i.kqw
  %i.krb = sdiv i32 %i.kra, 2
  %i.krc = add i32 %i.kqv, %indvars.iv1021.i
  %i.krd = lshr i32 %i.krc, 1
  %i.kre = zext nneg i32 %i.krd to i64            ; 5 uses
  %i.krf = sext i32 %i.krb to i64                 ; 5 uses
  %i.krg = lshr exact i32 %indvars.iv1027.i, 1
  %i.krh = zext nneg i32 %i.krg to i64            ; 4 uses
  %i.kri = sub i32 %i.kll, %i.kqv                 ; 2 uses
  %i.krj = lshr i32 %i.kri, 1
  %narrow4566 = add nuw i32 %i.krj, 1
  %i.krk = zext i32 %narrow4566 to i64            ; 2 uses
  %min.iters.check3277 = icmp ult i32 %i.kri, 14
  br i1 %min.iters.check3277, label %.lr.ph903.i.preheader, label %vector.memcheck3262

vector.memcheck3262:                              ; preds = %.lr.ph903.preheader.i
  %i.krl = insertelement <2 x i64> poison, i64 %i.kre, i64 0
  %i.krm = insertelement <2 x i64> %i.krl, i64 %i.krf, i64 1
  %i.krn = shl nsw <2 x i64> %i.krm, splat (i64 2)
  %i.kro = shufflevector <2 x i64> %i.krn, <2 x i64> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.krp = insertelement <4 x i64> poison, i64 %i.kqr, i64 0
  %i.krq = shufflevector <4 x i64> %i.krp, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.krr = add <4 x i64> %i.jff, %i.krq
  %i.krs = add <4 x i64> %i.kro, %i.jfh
  %i.krt = sub <4 x i64> %i.krs, %i.krr
  %i.kru = icmp ugt <4 x i64> %i.krt, splat (i64 -32)
  %i.krv = bitcast <4 x i1> %i.kru to i4
  %.not = icmp eq i4 %i.krv, 0
  br i1 %.not, label %vector.ph3278, label %.lr.ph903.i.preheader

vector.ph3278:                                    ; preds = %vector.memcheck3262
  %n.vec3279 = and i64 %i.krk, 4294967288         ; 6 uses
  %i.krw = add nuw nsw i64 %n.vec3279, %i.krh
  %i.krx = add nsw i64 %n.vec3279, %i.krf
  %i.kry = add nuw nsw i64 %n.vec3279, %i.kre
  %i.krz = trunc nuw i64 %n.vec3279 to i32
  %i.ksa = shl i32 %i.krz, 1
  %i.ksb = or disjoint i32 %i.kqw, %i.ksa
  br label %vector.body3280

vector.body3280:                                  ; preds = %vector.body3280, %vector.ph3278
  %index3281 = phi i64 [ 0, %vector.ph3278 ], [ %index.next3288, %vector.body3280 ] ; 4 uses
  %i.ksc = add nuw i64 %index3281, %i.krh         ; 3 uses
  %i.ksd = add i64 %index3281, %i.krf             ; 2 uses
  %i.kse = add nuw i64 %index3281, %i.kre         ; 2 uses
  %i.ksf = getelementptr inbounds [4 x i8], ptr %i.jev, i64 %i.ksd
  %wide.load3282.a = load <8 x float>, ptr %i.ksf, align 4, !tbaa !12, !noalias !499
  %i.ksg = getelementptr inbounds nuw [4 x i8], ptr %i.jev, i64 %i.ksc
  %wide.load3283.a = load <8 x float>, ptr %i.ksg, align 8, !tbaa !12, !noalias !499
  %i.ksh = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3283.a, %wide.load3282.a
  %i.ksi = getelementptr inbounds nuw [4 x i8], ptr %i.jev, i64 %i.kse
  %i.ksj = getelementptr inbounds nuw i8, ptr %i.ksi, i64 4
  %wide.load3284 = load <8 x float>, ptr %i.ksj, align 4, !tbaa !12, !noalias !499
  %i.ksk = fadd reassoc nsz arcp contract afn <8 x float> %i.ksh, %wide.load3284
  %i.ksl = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ksk, <8 x float> splat (float 1.000000e-10)) ; 2 uses
  %i.ksm = getelementptr [4 x i8], ptr %i.jew, i64 %i.ksd
  %i.ksn = getelementptr i8, ptr %i.ksm, i64 4
  %wide.load3285 = load <8 x float>, ptr %i.ksn, align 4, !tbaa !12, !noalias !499
  %i.kso = getelementptr inbounds nuw [4 x i8], ptr %i.jew, i64 %i.ksc
  %wide.load3286 = load <8 x float>, ptr %i.kso, align 8, !tbaa !12, !noalias !499
  %i.ksp = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3286, %wide.load3285
  %i.ksq = getelementptr inbounds nuw [4 x i8], ptr %i.jew, i64 %i.kse
  %wide.load3287 = load <8 x float>, ptr %i.ksq, align 4, !tbaa !12, !noalias !499
  %i.ksr = fadd reassoc nsz arcp contract afn <8 x float> %i.ksp, %wide.load3287
  %i.kss = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ksr, <8 x float> splat (float 1.000000e-10))
  %i.kst = fadd reassoc nsz arcp contract afn <8 x float> %i.kss, %i.ksl
  %i.ksu = fdiv reassoc nsz arcp contract afn <8 x float> %i.ksl, %i.kst
  %i.ksv = getelementptr inbounds nuw [4 x i8], ptr %i.jer, i64 %i.ksc
  store <8 x float> %i.ksu, ptr %i.ksv, align 8, !tbaa !12, !noalias !499
  %index.next3288 = add nuw i64 %index3281, 8     ; 2 uses
  %i.ksw = icmp eq i64 %index.next3288, %n.vec3279
  br i1 %i.ksw, label %middle.block3289, label %vector.body3280, !llvm.loop !297

middle.block3289:                                 ; preds = %vector.body3280
  %cmp.n3290 = icmp eq i64 %n.vec3279, %i.krk
  br i1 %cmp.n3290, label %._crit_edge904.i, label %.lr.ph903.i.preheader

.lr.ph903.i.preheader:                            ; preds = %vector.memcheck3262, %.lr.ph903.preheader.i, %middle.block3289
  %indvars.iv1029.i.ph = phi i64 [ %i.krh, %vector.memcheck3262 ], [ %i.krh, %.lr.ph903.preheader.i ], [ %i.krw, %middle.block3289 ]
  %indvars.iv1025.i.ph = phi i64 [ %i.krf, %vector.memcheck3262 ], [ %i.krf, %.lr.ph903.preheader.i ], [ %i.krx, %middle.block3289 ]
  %indvars.iv1023.i.ph = phi i64 [ %i.kre, %vector.memcheck3262 ], [ %i.kre, %.lr.ph903.preheader.i ], [ %i.kry, %middle.block3289 ]
  %.0762898.i.ph = phi i32 [ %i.kqw, %vector.memcheck3262 ], [ %i.kqw, %.lr.ph903.preheader.i ], [ %i.ksb, %middle.block3289 ]
  br label %.lr.ph903.i

._crit_edge904.i:                                 ; preds = %.lr.ph903.i, %middle.block3289, %bb.og
  %i.ksx = add nuw nsw i32 %.0763905.i, 1         ; 2 uses
  %i.ksy = icmp slt i32 %i.ksx, %i.jfr
  %indvars.iv.next1022.i = add i32 %indvars.iv1021.i, 112
  %indvars.iv.next1028.i = add i32 %indvars.iv1027.i, 112
  br i1 %i.ksy, label %bb.og, label %.preheader828.i.preheader

.preheader828.i.preheader:                        ; preds = %._crit_edge904.i
  %i.ksz = add i32 %i.jhh, -9
  %i.kta = add i32 %i.jhh, -9
  br label %.preheader828.i

.lr.ph903.i:                                      ; preds = %.lr.ph903.i.preheader, %.lr.ph903.i
  %indvars.iv1029.i = phi i64 [ %indvars.iv.next1030.i, %.lr.ph903.i ], [ %indvars.iv1029.i.ph, %.lr.ph903.i.preheader ] ; 4 uses
  %indvars.iv1025.i = phi i64 [ %indvars.iv.next1026.i, %.lr.ph903.i ], [ %indvars.iv1025.i.ph, %.lr.ph903.i.preheader ] ; 2 uses
  %indvars.iv1023.i = phi i64 [ %indvars.iv.next1024.i, %.lr.ph903.i ], [ %indvars.iv1023.i.ph, %.lr.ph903.i.preheader ] ; 2 uses
  %.0762898.i = phi i32 [ %i.ktw, %.lr.ph903.i ], [ %.0762898.i.ph, %.lr.ph903.i.preheader ]
  %i.ktb = getelementptr inbounds [4 x i8], ptr %i.jev, i64 %indvars.iv1025.i
  %i.ktc = load float, ptr %i.ktb, align 4, !tbaa !12, !noalias !499
  %i.ktd = getelementptr inbounds nuw [4 x i8], ptr %i.jev, i64 %indvars.iv1029.i
  %i.kte = load float, ptr %i.ktd, align 4, !tbaa !12, !noalias !499
  %i.ktf = fadd reassoc nsz arcp contract afn float %i.kte, %i.ktc
  %indvars.iv.next1024.i = add nuw nsw i64 %indvars.iv1023.i, 1 ; 2 uses
  %i.ktg = getelementptr inbounds nuw [4 x i8], ptr %i.jev, i64 %indvars.iv.next1024.i
  %i.kth = load float, ptr %i.ktg, align 4, !tbaa !12, !noalias !499
  %i.kti = fadd reassoc nsz arcp contract afn float %i.ktf, %i.kth
  %i.ktj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.kti, float 1.000000e-10) ; 2 uses
  %indvars.iv.next1026.i = add nsw i64 %indvars.iv1025.i, 1 ; 2 uses
  %i.ktk = getelementptr inbounds [4 x i8], ptr %i.jew, i64 %indvars.iv.next1026.i
  %i.ktl = load float, ptr %i.ktk, align 4, !tbaa !12, !noalias !499
  %i.ktm = getelementptr inbounds nuw [4 x i8], ptr %i.jew, i64 %indvars.iv1029.i
  %i.ktn = load float, ptr %i.ktm, align 4, !tbaa !12, !noalias !499
  %i.kto = fadd reassoc nsz arcp contract afn float %i.ktn, %i.ktl
  %i.ktp = getelementptr inbounds nuw [4 x i8], ptr %i.jew, i64 %indvars.iv1023.i
  %i.ktq = load float, ptr %i.ktp, align 4, !tbaa !12, !noalias !499
  %i.ktr = fadd reassoc nsz arcp contract afn float %i.kto, %i.ktq
  %i.kts = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ktr, float 1.000000e-10)
  %i.ktt = fadd reassoc nsz arcp contract afn float %i.kts, %i.ktj
  %i.ktu = fdiv reassoc nsz arcp contract afn float %i.ktj, %i.ktt
  %i.ktv = getelementptr inbounds nuw [4 x i8], ptr %i.jer, i64 %indvars.iv1029.i
  store float %i.ktu, ptr %i.ktv, align 4, !tbaa !12, !noalias !499
  %i.ktw = add nuw nsw i32 %.0762898.i, 2         ; 2 uses
  %indvars.iv.next1030.i = add nuw nsw i64 %indvars.iv1029.i, 1
  %i.ktx = icmp slt i32 %i.ktw, %i.klk
  br i1 %i.ktx, label %.lr.ph903.i, label %._crit_edge904.i, !llvm.loop !298

.preheader828.i:                                  ; preds = %.preheader828.i.preheader, %._crit_edge914.i
  %indvars.iv1038.i = phi i32 [ %indvars.iv.next1039.i, %._crit_edge914.i ], [ 452, %.preheader828.i.preheader ] ; 4 uses
  %indvars.iv1032.i = phi i32 [ %indvars.iv.next1033.i, %._crit_edge914.i ], [ 563, %.preheader828.i.preheader ] ; 2 uses
  %.0755915.i = phi i32 [ %i.kzz, %._crit_edge914.i ], [ 4, %.preheader828.i.preheader ] ; 4 uses
  %i.kty = mul i32 %.0755915.i, 112
  %i.ktz = zext i32 %i.kty to i64
  %i.kua = shl nuw nsw i64 %i.ktz, 1              ; 2 uses
  %scevgep3054.a = getelementptr i8, ptr %scevgep3051, i64 %i.kua
  %i.kub = shl nuw i32 %.0755915.i, 1
  %i.kuc = and i32 %i.kub, 14                     ; 2 uses
  %i.kud = shl nuw nsw i32 %i.kuc, 1
  %i.kue = lshr i32 %.fr1063, %i.kud
  %i.kuf = and i32 %i.kue, 1                      ; 7 uses
  %i.kug = or disjoint i32 %i.kuf, 4              ; 5 uses
  %i.kuh = icmp slt i32 %i.kug, %i.klk
  br i1 %i.kuh, label %.lr.ph913.i, label %._crit_edge914.i

.lr.ph913.i:                                      ; preds = %.preheader828.i
  %i.kui = mul nuw nsw i32 %.0755915.i, 112
  %i.kuj = add nsw i32 %i.kui, -113
  %i.kuk = add nsw i32 %i.kuj, %i.kug
  %i.kul = sdiv i32 %i.kuk, 2
  %i.kum = or disjoint i32 %i.kuf, %i.kuc
  %i.kun = shl nuw nsw i32 %i.kum, 1
  %i.kuo = lshr i32 %.fr1063, %i.kun              ; 2 uses
  %i.kup = and i32 %i.kuo, 3
  %i.kuq = sub nsw i32 2, %i.kup
  %i.kur = sext i32 %i.kuq to i64
  %i.kus = getelementptr inbounds [50176 x i8], ptr %i.jez, i64 %i.kur ; 10 uses
  %i.kut = add i32 %i.kuf, %indvars.iv1032.i
  %i.kuu = lshr i32 %i.kut, 1
  %i.kuv = zext nneg i32 %i.kuu to i64            ; 5 uses
  %i.kuw = sext i32 %i.kul to i64                 ; 5 uses
  %i.kux = or disjoint i32 %i.kuf, %indvars.iv1038.i
  %i.kuy = lshr exact i32 %indvars.iv1038.i, 1
  %i.kuz = zext nneg i32 %i.kuy to i64            ; 4 uses
  %i.kva = sext i32 %i.kux to i64                 ; 5 uses
  %i.kvb = sub i32 %i.kta, %i.kuf                 ; 2 uses
  %i.kvc = lshr i32 %i.kvb, 1
  %narrow4567 = add nuw i32 %i.kvc, 1
  %i.kvd = zext i32 %narrow4567 to i64            ; 2 uses
  %min.iters.check3205 = icmp ult i32 %i.kvb, 16
  br i1 %min.iters.check3205, label %scalar.ph3204.preheader, label %vector.memcheck3040

scalar.ph3204.preheader:                          ; preds = %vector.body3211, %vector.memcheck3040, %.lr.ph913.i
  %indvars.iv1042.i.ph = phi i64 [ %i.kva, %vector.memcheck3040 ], [ %i.kva, %.lr.ph913.i ], [ %i.kwb, %vector.body3211 ]
  %indvars.iv1040.i.ph = phi i64 [ %i.kuz, %vector.memcheck3040 ], [ %i.kuz, %.lr.ph913.i ], [ %i.kwc, %vector.body3211 ]
  %indvars.iv1036.i.ph = phi i64 [ %i.kuw, %vector.memcheck3040 ], [ %i.kuw, %.lr.ph913.i ], [ %i.kwd, %vector.body3211 ]
  %indvars.iv1034.i.ph = phi i64 [ %i.kuv, %vector.memcheck3040 ], [ %i.kuv, %.lr.ph913.i ], [ %i.kwe, %vector.body3211 ]
  %.0754907.i.ph = phi i32 [ %i.kug, %vector.memcheck3040 ], [ %i.kug, %.lr.ph913.i ], [ %i.kwh, %vector.body3211 ]
  br label %scalar.ph3204

vector.memcheck3040:                              ; preds = %.lr.ph913.i
  %i.kve = or disjoint i32 %indvars.iv1038.i, %i.kuf
  %i.kvf = sext i32 %i.kve to i64
  %i.kvg = shl nsw i64 %i.kvf, 2                  ; 12 uses
  %i.kvh = and i32 %i.kuo, 3
  %narrow4568 = mul nuw nsw i32 %i.kvh, 50176
  %i.kvi = zext nneg i32 %narrow4568 to i64       ; 2 uses
  %i.kvj = sub nsw i64 %i.kvg, %i.kvi             ; 9 uses
  %scevgep3042 = getelementptr i8, ptr %scevgep3041, i64 %i.kvj ; 20 uses
  %i.kvk = sub i32 %i.ksz, %i.kuf
  %i.kvl = lshr i32 %i.kvk, 1
  %i.kvm = zext nneg i32 %i.kvl to i64            ; 2 uses
  %i.kvn = shl nuw nsw i64 %i.kvm, 3              ; 2 uses
  %i.kvo = add nsw i64 %i.kvn, %i.kvg
  %i.kvp = sub nsw i64 %i.kvo, %i.kvi             ; 9 uses
  %scevgep3044 = getelementptr i8, ptr %scevgep3043, i64 %i.kvp ; 20 uses
  %i.kvq = shl nuw nsw i64 %i.kuv, 2              ; 2 uses
  %scevgep3045 = getelementptr i8, ptr %i.jer, i64 %i.kvq
  %i.kvr = shl nuw nsw i64 %i.kvm, 2              ; 3 uses
  %i.kvs = getelementptr i8, ptr %scevgep3046, i64 %i.kvr
  %scevgep3047 = getelementptr i8, ptr %i.kvs, i64 %i.kvq
  %i.kvt = shl nsw i64 %i.kuw, 2                  ; 2 uses
  %scevgep3048 = getelementptr i8, ptr %i.jer, i64 %i.kvt
  %i.kvu = getelementptr i8, ptr %scevgep3049, i64 %i.kvr
  %scevgep3050 = getelementptr i8, ptr %i.kvu, i64 %i.kvt
  %i.kvv = getelementptr i8, ptr %scevgep3055.a, i64 %i.kvr
  %scevgep3056.a = getelementptr i8, ptr %i.kvv, i64 %i.kua
  %scevgep3058.a = getelementptr i8, ptr %scevgep3057.a, i64 %i.kvj
  %scevgep3060.a = getelementptr i8, ptr %scevgep3059.a, i64 %i.kvp
  %scevgep3062.a = getelementptr i8, ptr %scevgep3061.a, i64 %i.kvj
  %scevgep3064.a = getelementptr i8, ptr %scevgep3063.a, i64 %i.kvp
  %scevgep3066.a = getelementptr i8, ptr %scevgep3065.a, i64 %i.kvj
  %scevgep3068.a = getelementptr i8, ptr %scevgep3067.a, i64 %i.kvp
  %scevgep3070.a = getelementptr i8, ptr %scevgep3069.a, i64 %i.kvg
  %i.kvw = add nsw i64 %i.kvn, %i.kvg             ; 9 uses
  %scevgep3072.a = getelementptr i8, ptr %scevgep3071.a, i64 %i.kvw
  %scevgep3074.a = getelementptr i8, ptr %scevgep3073.a, i64 %i.kvg
  %scevgep3076.a = getelementptr i8, ptr %scevgep3075.a, i64 %i.kvw
  %scevgep3078.a = getelementptr i8, ptr %scevgep3077.a, i64 %i.kvj
  %scevgep3080.a = getelementptr i8, ptr %scevgep3079.a, i64 %i.kvp
  %scevgep3082.a = getelementptr i8, ptr %scevgep3081.a, i64 %i.kvj
  %scevgep3084.a = getelementptr i8, ptr %scevgep3083.a, i64 %i.kvp
  %scevgep3086.a = getelementptr i8, ptr %scevgep3085.a, i64 %i.kvj
  %scevgep3088.a = getelementptr i8, ptr %scevgep3087.a, i64 %i.kvp
  %scevgep3090.a = getelementptr i8, ptr %scevgep3089.a, i64 %i.kvg
  %scevgep3092.a = getelementptr i8, ptr %scevgep3091.a, i64 %i.kvw
  %scevgep3094.a = getelementptr i8, ptr %scevgep3093.a, i64 %i.kvj
  %scevgep3096.a = getelementptr i8, ptr %scevgep3095.a, i64 %i.kvp
  %scevgep3098.a = getelementptr i8, ptr %scevgep3097.a, i64 %i.kvg
  %scevgep3100.a = getelementptr i8, ptr %scevgep3099.a, i64 %i.kvw
  %scevgep3102.a = getelementptr i8, ptr %scevgep3101.a, i64 %i.kvj
  %scevgep3104.a = getelementptr i8, ptr %scevgep3103.a, i64 %i.kvp
  %scevgep3106.a = getelementptr i8, ptr %scevgep3105.a, i64 %i.kvg
  %scevgep3108.a = getelementptr i8, ptr %scevgep3107.a, i64 %i.kvw
  %scevgep3110.a = getelementptr i8, ptr %scevgep3109.a, i64 %i.kvg
  %scevgep3112.a = getelementptr i8, ptr %scevgep3111.a, i64 %i.kvw
  %scevgep3114.a = getelementptr i8, ptr %scevgep3113.a, i64 %i.kvg
  %scevgep3116.a = getelementptr i8, ptr %scevgep3115.a, i64 %i.kvw
  %scevgep3118.a = getelementptr i8, ptr %scevgep3117.a, i64 %i.kvg
  %scevgep3120.a = getelementptr i8, ptr %scevgep3119.a, i64 %i.kvw
  %scevgep3122.a = getelementptr i8, ptr %scevgep3121.a, i64 %i.kvg
  %scevgep3124 = getelementptr i8, ptr %scevgep3123, i64 %i.kvw
  %bound03125 = icmp ult ptr %scevgep3042, %scevgep3047
  %bound13126 = icmp ult ptr %scevgep3045, %scevgep3044
  %found.conflict3127 = and i1 %bound03125, %bound13126
  %bound03128 = icmp ult ptr %scevgep3042, %scevgep3050
  %bound13129 = icmp ult ptr %scevgep3048, %scevgep3044
  %found.conflict3130 = and i1 %bound03128, %bound13129
  %conflict.rdx3131 = or i1 %found.conflict3127, %found.conflict3130
  %bound03132 = icmp ult ptr %scevgep3042, %scevgep3056.a
  %bound13133 = icmp ult ptr %scevgep3054.a, %scevgep3044
  %found.conflict3134 = and i1 %bound03132, %bound13133
  %conflict.rdx3135 = or i1 %conflict.rdx3131, %found.conflict3134
  %bound03136 = icmp ult ptr %scevgep3042, %scevgep3060.a
  %bound13137 = icmp ult ptr %scevgep3058.a, %scevgep3044
  %found.conflict3138 = and i1 %bound03136, %bound13137
  %conflict.rdx3139 = or i1 %conflict.rdx3135, %found.conflict3138
  %bound03140 = icmp ult ptr %scevgep3042, %scevgep3064.a
  %bound13141 = icmp ult ptr %scevgep3062.a, %scevgep3044
  %found.conflict3142 = and i1 %bound03140, %bound13141
  %conflict.rdx3143 = or i1 %conflict.rdx3139, %found.conflict3142
  %bound03144 = icmp ult ptr %scevgep3042, %scevgep3068.a
  %bound13145 = icmp ult ptr %scevgep3066.a, %scevgep3044
  %found.conflict3146 = and i1 %bound03144, %bound13145
  %conflict.rdx3147 = or i1 %conflict.rdx3143, %found.conflict3146
  %bound03148 = icmp ult ptr %scevgep3042, %scevgep3072.a
  %bound13149 = icmp ult ptr %scevgep3070.a, %scevgep3044
  %found.conflict3150 = and i1 %bound03148, %bound13149
  %conflict.rdx3151 = or i1 %conflict.rdx3147, %found.conflict3150
  %bound03152 = icmp ult ptr %scevgep3042, %scevgep3076.a
  %bound13153 = icmp ult ptr %scevgep3074.a, %scevgep3044
  %found.conflict3154 = and i1 %bound03152, %bound13153
  %conflict.rdx3155 = or i1 %conflict.rdx3151, %found.conflict3154
  %bound03156 = icmp ult ptr %scevgep3042, %scevgep3080.a
  %bound13157 = icmp ult ptr %scevgep3078.a, %scevgep3044
  %found.conflict3158 = and i1 %bound03156, %bound13157
  %conflict.rdx3159 = or i1 %conflict.rdx3155, %found.conflict3158
  %bound03160 = icmp ult ptr %scevgep3042, %scevgep3084.a
  %bound13161 = icmp ult ptr %scevgep3082.a, %scevgep3044
  %found.conflict3162 = and i1 %bound03160, %bound13161
  %conflict.rdx3163 = or i1 %conflict.rdx3159, %found.conflict3162
  %bound03164 = icmp ult ptr %scevgep3042, %scevgep3088.a
  %bound13165 = icmp ult ptr %scevgep3086.a, %scevgep3044
  %found.conflict3166 = and i1 %bound03164, %bound13165
  %conflict.rdx3167 = or i1 %conflict.rdx3163, %found.conflict3166
  %bound03168 = icmp ult ptr %scevgep3042, %scevgep3092.a
  %bound13169 = icmp ult ptr %scevgep3090.a, %scevgep3044
  %found.conflict3170 = and i1 %bound03168, %bound13169
  %conflict.rdx3171 = or i1 %conflict.rdx3167, %found.conflict3170
  %bound03172 = icmp ult ptr %scevgep3042, %scevgep3096.a
  %bound13173 = icmp ult ptr %scevgep3094.a, %scevgep3044
  %found.conflict3174 = and i1 %bound03172, %bound13173
  %conflict.rdx3175 = or i1 %conflict.rdx3171, %found.conflict3174
  %bound03176 = icmp ult ptr %scevgep3042, %scevgep3100.a
  %bound13177 = icmp ult ptr %scevgep3098.a, %scevgep3044
  %found.conflict3178 = and i1 %bound03176, %bound13177
  %conflict.rdx3179 = or i1 %conflict.rdx3175, %found.conflict3178
  %bound03180 = icmp ult ptr %scevgep3042, %scevgep3104.a
  %bound13181 = icmp ult ptr %scevgep3102.a, %scevgep3044
  %found.conflict3182 = and i1 %bound03180, %bound13181
  %conflict.rdx3183 = or i1 %conflict.rdx3179, %found.conflict3182
  %bound03184 = icmp ult ptr %scevgep3042, %scevgep3108.a
  %bound13185 = icmp ult ptr %scevgep3106.a, %scevgep3044
  %found.conflict3186 = and i1 %bound03184, %bound13185
  %conflict.rdx3187 = or i1 %conflict.rdx3183, %found.conflict3186
  %bound03188 = icmp ult ptr %scevgep3042, %scevgep3112.a
  %bound13189 = icmp ult ptr %scevgep3110.a, %scevgep3044
  %found.conflict3190 = and i1 %bound03188, %bound13189
  %conflict.rdx3191 = or i1 %conflict.rdx3187, %found.conflict3190
  %bound03192 = icmp ult ptr %scevgep3042, %scevgep3116.a
  %bound13193 = icmp ult ptr %scevgep3114.a, %scevgep3044
  %found.conflict3194 = and i1 %bound03192, %bound13193
  %conflict.rdx3195 = or i1 %conflict.rdx3191, %found.conflict3194
  %bound03196 = icmp ult ptr %scevgep3042, %scevgep3120.a
  %bound13197 = icmp ult ptr %scevgep3118.a, %scevgep3044
  %found.conflict3198 = and i1 %bound03196, %bound13197
  %conflict.rdx3199 = or i1 %conflict.rdx3195, %found.conflict3198
  %bound03200 = icmp ult ptr %scevgep3042, %scevgep3124
  %bound13201 = icmp ult ptr %scevgep3122.a, %scevgep3044
  %found.conflict3202 = and i1 %bound03200, %bound13201
  %conflict.rdx3203 = or i1 %conflict.rdx3199, %found.conflict3202
  br i1 %conflict.rdx3203, label %scalar.ph3204.preheader, label %vector.ph3206

vector.ph3206:                                    ; preds = %vector.memcheck3040
  %i.kvx = and i64 %i.kvd, 7                      ; 2 uses
  %i.kvy = icmp eq i64 %i.kvx, 0
  %i.kvz = select i1 %i.kvy, i64 8, i64 %i.kvx
  %n.vec3207 = sub nsw i64 %i.kvd, %i.kvz         ; 6 uses
  %i.kwa = shl nsw i64 %n.vec3207, 1
  %i.kwb = add nsw i64 %i.kwa, %i.kva
  %i.kwc = add nsw i64 %n.vec3207, %i.kuz
  %i.kwd = add nsw i64 %n.vec3207, %i.kuw
  %i.kwe = add nsw i64 %n.vec3207, %i.kuv
  %i.kwf = trunc i64 %n.vec3207 to i32
  %i.kwg = shl i32 %i.kwf, 1
  %i.kwh = add i32 %i.kug, %i.kwg
  %broadcast.splatinsert3208 = insertelement <8 x i64> poison, i64 %i.kva, i64 0
  %broadcast.splat3209 = shufflevector <8 x i64> %broadcast.splatinsert3208, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction3210 = add nuw nsw <8 x i64> %broadcast.splat3209, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep4881 = getelementptr [4 x i8], ptr %i.jer, i64 %i.kuz
  br label %vector.body3211

vector.body3211:                                  ; preds = %vector.body3211, %vector.ph3206
  %index3212 = phi i64 [ 0, %vector.ph3206 ], [ %index.next3254, %vector.body3211 ] ; 5 uses
  %vec.ind3213 = phi <8 x i64> [ %induction3210, %vector.ph3206 ], [ %vec.ind.next3255, %vector.body3211 ] ; 2 uses
  %i.kwi = shl nuw i64 %index3212, 1
  %i.kwj = add nuw i64 %i.kwi, %i.kva             ; 5 uses
  %i.kwk = add i64 %index3212, %i.kuw             ; 2 uses
  %i.kwl = add nuw i64 %index3212, %i.kuv         ; 2 uses
  %gep4882 = getelementptr [4 x i8], ptr %invariant.gep4881, i64 %index3212
  %wide.load3214.a = load <8 x float>, ptr %gep4882, align 8, !tbaa !12, !alias.scope !524, !noalias !499 ; 2 uses
  %i.kwm = getelementptr inbounds [4 x i8], ptr %i.jer, i64 %i.kwk
  %wide.load3215.a = load <8 x float>, ptr %i.kwm, align 4, !tbaa !12, !alias.scope !525, !noalias !499
  %i.kwn = getelementptr [4 x i8], ptr %i.jer, i64 %i.kwk
  %i.kwo = getelementptr i8, ptr %i.kwn, i64 4
  %wide.load3216.a = load <8 x float>, ptr %i.kwo, align 4, !tbaa !12, !alias.scope !525, !noalias !499
  %i.kwp = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3216.a, %wide.load3215.a
  %i.kwq = getelementptr inbounds nuw [4 x i8], ptr %i.jer, i64 %i.kwl
  %wide.load3217 = load <8 x float>, ptr %i.kwq, align 4, !tbaa !12, !alias.scope !526, !noalias !499
  %i.kwr = fadd reassoc nsz arcp contract afn <8 x float> %i.kwp, %wide.load3217
  %i.kws = getelementptr inbounds nuw [4 x i8], ptr %i.jer, i64 %i.kwl
  %i.kwt = getelementptr inbounds nuw i8, ptr %i.kws, i64 4
  %wide.load3218 = load <8 x float>, ptr %i.kwt, align 4, !tbaa !12, !alias.scope !526, !noalias !499
  %i.kwu = fadd reassoc nsz arcp contract afn <8 x float> %i.kwr, %wide.load3218
  %i.kwv = fmul reassoc nsz arcp contract afn <8 x float> %i.kwu, splat (float 2.500000e-01) ; 2 uses
  %i.kww = fsub reassoc nsz arcp contract afn <8 x float> splat (float 5.000000e-01), %wide.load3214.a
  %i.kwx = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kww)
  %i.kwy = fsub reassoc nsz arcp contract afn <8 x float> splat (float 5.000000e-01), %i.kwv
  %i.kwz = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kwy)
  %i.kxa = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.kwx, %i.kwz
  %i.kxb = select reassoc nsz arcp contract afn <8 x i1> %i.kxa, <8 x float> %i.kwv, <8 x float> %wide.load3214.a ; 3 uses
  %i.kxc = add nsw i64 %i.kwj, -113               ; 2 uses
  %i.kxd = getelementptr inbounds [4 x i8], ptr %i.kus, i64 %i.kxc
  %wide.vec3219.a = load <16 x float>, ptr %i.kxd, align 4, !tbaa !12, !alias.scope !527, !noalias !499
  %strided.vec3220.a = shufflevector <16 x float> %wide.vec3219.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.kxe = add nuw nsw i64 %i.kwj, 113            ; 2 uses
  %i.kxf = getelementptr inbounds nuw [4 x i8], ptr %i.kus, i64 %i.kxe
  %wide.vec3221 = load <16 x float>, ptr %i.kxf, align 4, !tbaa !12, !alias.scope !528, !noalias !499
  %strided.vec3222 = shufflevector <16 x float> %wide.vec3221, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.kxg = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3220.a, %strided.vec3222
  %i.kxh = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kxg)
  %i.kxi = fadd reassoc nsz arcp contract afn <8 x float> %i.kxh, splat (float f0x3727C5AC) ; 2 uses
  %wide.gep3223 = getelementptr [4 x i8], ptr %i.kus, <8 x i64> %vec.ind3213 ; 2 uses
  %i.kxj = extractelement <8 x ptr> %wide.gep3223, i64 0 ; 4 uses
  %i.kxk = getelementptr i8, ptr %i.kxj, i64 -1356
  %wide.vec3224.a = load <16 x float>, ptr %i.kxk, align 4, !tbaa !12, !alias.scope !529, !noalias !499
  %strided.vec3225.a = shufflevector <16 x float> %wide.vec3224.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kxl = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3220.a, %strided.vec3225.a
  %i.kxm = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kxl)
  %i.kxn = fadd reassoc nsz arcp contract afn <8 x float> %i.kxi, %i.kxm
  %i.kxo = getelementptr inbounds nuw [4 x i8], ptr %i.jfb, i64 %i.kwj ; 5 uses
  %wide.vec3226.a = load <16 x float>, ptr %i.kxo, align 4, !tbaa !12, !alias.scope !530, !noalias !499
  %strided.vec3227.a = shufflevector <16 x float> %wide.vec3226.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 5 uses
  %i.kxp = getelementptr i8, ptr %i.kxo, i64 -904
  %wide.vec3228.a = load <16 x float>, ptr %i.kxp, align 4, !tbaa !12, !alias.scope !531, !noalias !499
  %strided.vec3229.a = shufflevector <16 x float> %wide.vec3228.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kxq = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3227.a, %strided.vec3229.a
  %i.kxr = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kxq)
  %i.kxs = fadd reassoc nsz arcp contract afn <8 x float> %i.kxn, %i.kxr ; 2 uses
  %i.kxt = add nsw i64 %i.kwj, -111               ; 2 uses
  %i.kxu = getelementptr inbounds [4 x i8], ptr %i.kus, i64 %i.kxt
  %wide.vec3230.a = load <16 x float>, ptr %i.kxu, align 4, !tbaa !12, !alias.scope !532, !noalias !499
  %strided.vec3231.a = shufflevector <16 x float> %wide.vec3230.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.kxv = add nuw nsw i64 %i.kwj, 111            ; 2 uses
  %i.kxw = getelementptr inbounds nuw [4 x i8], ptr %i.kus, i64 %i.kxv
  %wide.vec3232.a = load <16 x float>, ptr %i.kxw, align 4, !tbaa !12, !alias.scope !533, !noalias !499
  %strided.vec3233.a = shufflevector <16 x float> %wide.vec3232.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.kxx = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3231.a, %strided.vec3233.a
  %i.kxy = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kxx)
  %i.kxz = fadd reassoc nsz arcp contract afn <8 x float> %i.kxy, splat (float f0x3727C5AC) ; 2 uses
  %i.kya = getelementptr i8, ptr %i.kxj, i64 -1332
  %wide.vec3234.a = load <16 x float>, ptr %i.kya, align 4, !tbaa !12, !alias.scope !534, !noalias !499
  %strided.vec3235.a = shufflevector <16 x float> %wide.vec3234.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kyb = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3231.a, %strided.vec3235.a
  %i.kyc = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kyb)
  %i.kyd = fadd reassoc nsz arcp contract afn <8 x float> %i.kxz, %i.kyc
  %i.kye = getelementptr i8, ptr %i.kxo, i64 -888
  %wide.vec3236.a = load <16 x float>, ptr %i.kye, align 4, !tbaa !12, !alias.scope !535, !noalias !499
  %strided.vec3237.a = shufflevector <16 x float> %wide.vec3236.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kyf = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3227.a, %strided.vec3237.a
  %i.kyg = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kyf)
  %i.kyh = fadd reassoc nsz arcp contract afn <8 x float> %i.kyd, %i.kyg ; 2 uses
  %i.kyi = getelementptr inbounds nuw i8, ptr %i.kxj, i64 1332
  %wide.vec3238.a = load <16 x float>, ptr %i.kyi, align 4, !tbaa !12, !alias.scope !536, !noalias !499
  %strided.vec3239.a = shufflevector <16 x float> %wide.vec3238.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kyj = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3233.a, %strided.vec3239.a
  %i.kyk = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kyj)
  %i.kyl = fadd reassoc nsz arcp contract afn <8 x float> %i.kyk, %i.kxz
  %i.kym = getelementptr inbounds nuw i8, ptr %i.kxo, i64 888
  %wide.vec3240.a = load <16 x float>, ptr %i.kym, align 4, !tbaa !12, !alias.scope !537, !noalias !499
  %strided.vec3241.a = shufflevector <16 x float> %wide.vec3240.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kyn = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3227.a, %strided.vec3241.a
  %i.kyo = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kyn)
  %i.kyp = fadd reassoc nsz arcp contract afn <8 x float> %i.kyl, %i.kyo ; 2 uses
  %i.kyq = getelementptr inbounds nuw i8, ptr %i.kxj, i64 1356
  %wide.vec3242.a = load <16 x float>, ptr %i.kyq, align 4, !tbaa !12, !alias.scope !538, !noalias !499
  %strided.vec3243.a = shufflevector <16 x float> %wide.vec3242.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kyr = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3222, %strided.vec3243.a
  %i.kys = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kyr)
  %i.kyt = fadd reassoc nsz arcp contract afn <8 x float> %i.kys, %i.kxi
  %i.kyu = getelementptr inbounds nuw i8, ptr %i.kxo, i64 904
  %wide.vec3244.a = load <16 x float>, ptr %i.kyu, align 4, !tbaa !12, !alias.scope !539, !noalias !499
  %strided.vec3245.a = shufflevector <16 x float> %wide.vec3244.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kyv = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3227.a, %strided.vec3245.a
  %i.kyw = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kyv)
  %i.kyx = fadd reassoc nsz arcp contract afn <8 x float> %i.kyt, %i.kyw ; 2 uses
  %i.kyy = getelementptr inbounds [4 x i8], ptr %i.jfb, i64 %i.kxc
  %wide.vec3246.a = load <16 x float>, ptr %i.kyy, align 4, !tbaa !12, !alias.scope !540, !noalias !499
  %strided.vec3247.a = shufflevector <16 x float> %wide.vec3246.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kyz = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3220.a, %strided.vec3247.a
  %i.kza = getelementptr inbounds [4 x i8], ptr %i.jfb, i64 %i.kxt
  %wide.vec3248.a = load <16 x float>, ptr %i.kza, align 4, !tbaa !12, !alias.scope !541, !noalias !499
  %strided.vec3249.a = shufflevector <16 x float> %wide.vec3248.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kzb = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3231.a, %strided.vec3249.a
  %i.kzc = getelementptr inbounds nuw [4 x i8], ptr %i.jfb, i64 %i.kxv
  %wide.vec3250.a = load <16 x float>, ptr %i.kzc, align 4, !tbaa !12, !alias.scope !542, !noalias !499
  %strided.vec3251.a = shufflevector <16 x float> %wide.vec3250.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kzd = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3233.a, %strided.vec3251.a
  %i.kze = getelementptr inbounds nuw [4 x i8], ptr %i.jfb, i64 %i.kxe
  %wide.vec3252 = load <16 x float>, ptr %i.kze, align 4, !tbaa !12, !alias.scope !543, !noalias !499
  %strided.vec3253 = shufflevector <16 x float> %wide.vec3252, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kzf = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3222, %strided.vec3253
  %i.kzg = fmul reassoc nsz arcp contract afn <8 x float> %i.kzf, %i.kxs
  %i.kzh = fmul reassoc nsz arcp contract afn <8 x float> %i.kyx, %i.kyz
  %i.kzi = fadd reassoc nsz arcp contract afn <8 x float> %i.kzg, %i.kzh
  %i.kzj = fadd reassoc nsz arcp contract afn <8 x float> %i.kyx, %i.kxs
  %i.kzk = fdiv reassoc nsz arcp contract afn <8 x float> %i.kzi, %i.kzj ; 2 uses
  %i.kzl = fmul reassoc nsz arcp contract afn <8 x float> %i.kzd, %i.kyh
  %i.kzm = fmul reassoc nsz arcp contract afn <8 x float> %i.kzb, %i.kyp
  %i.kzn = fadd reassoc nsz arcp contract afn <8 x float> %i.kzl, %i.kzm
  %i.kzo = fadd reassoc nsz arcp contract afn <8 x float> %i.kyp, %i.kyh
  %i.kzp = fdiv reassoc nsz arcp contract afn <8 x float> %i.kzn, %i.kzo
  %i.kzq = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.kxb, zeroinitializer
  %i.kzr = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.kxb, splat (float 1.000000e+00)
  %i.kzs = select reassoc nsz arcp contract afn <8 x i1> %i.kzr, <8 x float> %i.kxb, <8 x float> splat (float 1.000000e+00)
  %i.kzt = select reassoc nsz arcp contract afn <8 x i1> %i.kzq, <8 x float> %i.kzs, <8 x float> zeroinitializer
  %i.kzu = fsub reassoc nsz arcp contract afn <8 x float> %i.kzp, %i.kzk
  %i.kzv = fmul reassoc nsz arcp contract afn <8 x float> %i.kzu, %i.kzt
  %i.kzw = fadd reassoc nsz arcp contract afn <8 x float> %i.kzk, %i.kzv
  %i.kzx = fadd reassoc nsz arcp contract afn <8 x float> %i.kzw, %strided.vec3227.a
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.kzx, <8 x ptr> align 4 %wide.gep3223, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !544, !noalias !545
  %index.next3254 = add nuw i64 %index3212, 8     ; 2 uses
  %vec.ind.next3255 = add nuw nsw <8 x i64> %vec.ind3213, splat (i64 16)
  %i.kzy = icmp eq i64 %index.next3254, %n.vec3207
  br i1 %i.kzy, label %scalar.ph3204.preheader, label %vector.body3211, !llvm.loop !321

._crit_edge914.i:                                 ; preds = %scalar.ph3204, %.preheader828.i
  %i.kzz = add nuw nsw i32 %.0755915.i, 1         ; 2 uses
  %i.laa = icmp slt i32 %i.kzz, %i.jfr
  %indvars.iv.next1033.i = add i32 %indvars.iv1032.i, 112
  %indvars.iv.next1039.i = add i32 %indvars.iv1038.i, 112
  br i1 %i.laa, label %.preheader828.i, label %.preheader.i541.preheader

.preheader.i541.preheader:                        ; preds = %._crit_edge914.i
  %i.lab = add i32 %i.jhh, -9
  %i.lac = add i32 %i.jhh, -9
  br label %.preheader.i541

scalar.ph3204:                                    ; preds = %scalar.ph3204.preheader, %scalar.ph3204
  %indvars.iv1042.i = phi i64 [ %indvars.iv.next1043.i, %scalar.ph3204 ], [ %indvars.iv1042.i.ph, %scalar.ph3204.preheader ] ; 7 uses
  %indvars.iv1040.i = phi i64 [ %indvars.iv.next1041.i, %scalar.ph3204 ], [ %indvars.iv1040.i.ph, %scalar.ph3204.preheader ] ; 2 uses
  %indvars.iv1036.i = phi i64 [ %indvars.iv.next1037.i, %scalar.ph3204 ], [ %indvars.iv1036.i.ph, %scalar.ph3204.preheader ] ; 2 uses
  %indvars.iv1034.i = phi i64 [ %indvars.iv.next1035.i, %scalar.ph3204 ], [ %indvars.iv1034.i.ph, %scalar.ph3204.preheader ] ; 2 uses
  %.0754907.i = phi i32 [ %i.lef, %scalar.ph3204 ], [ %.0754907.i.ph, %scalar.ph3204.preheader ]
  %i.lad = getelementptr inbounds nuw [4 x i8], ptr %i.jer, i64 %indvars.iv1040.i
  %i.lae = load float, ptr %i.lad, align 4, !tbaa !12, !noalias !499 ; 2 uses
  %i.laf = getelementptr inbounds [4 x i8], ptr %i.jer, i64 %indvars.iv1036.i
  %indvars.iv.next1037.i = add nsw i64 %indvars.iv1036.i, 1
  %i.lag = getelementptr inbounds nuw [4 x i8], ptr %i.jer, i64 %indvars.iv1034.i
  %indvars.iv.next1035.i = add nuw nsw i64 %indvars.iv1034.i, 1
  %i.lah = load <2 x float>, ptr %i.laf, align 4, !tbaa !12, !noalias !499
  %i.lai = load <2 x float>, ptr %i.lag, align 4, !tbaa !12, !noalias !499
  %i.laj = shufflevector <2 x float> %i.lai, <2 x float> %i.lah, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.lak = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.laj)
  %i.lal = fmul reassoc nsz arcp contract afn float %i.lak, 2.500000e-01 ; 2 uses
  %i.lam = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.lae
  %i.lan = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lam)
  %i.lao = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.lal
  %i.lap = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lao)
  %i.laq = fcmp reassoc nsz arcp contract afn olt float %i.lan, %i.lap
  %i.lar = select reassoc nsz arcp contract afn i1 %i.laq, float %i.lal, float %i.lae ; 3 uses
  %i.las = add nsw i64 %indvars.iv1042.i, -113    ; 2 uses
  %i.lat = getelementptr inbounds [4 x i8], ptr %i.kus, i64 %i.las
  %i.lau = load float, ptr %i.lat, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.lav = add nuw nsw i64 %indvars.iv1042.i, 113 ; 2 uses
  %i.law = getelementptr inbounds nuw [4 x i8], ptr %i.kus, i64 %i.lav
  %i.lax = load float, ptr %i.law, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.lay = fsub reassoc nsz arcp contract afn float %i.lau, %i.lax
  %i.laz = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lay)
  %i.lba = fadd reassoc nsz arcp contract afn float %i.laz, f0x3727C5AC ; 2 uses
  %i.lbb = getelementptr [4 x i8], ptr %i.kus, i64 %indvars.iv1042.i ; 5 uses
  %i.lbc = getelementptr i8, ptr %i.lbb, i64 -1356
  %i.lbd = load float, ptr %i.lbc, align 4, !tbaa !12, !noalias !499
  %i.lbe = fsub reassoc nsz arcp contract afn float %i.lau, %i.lbd
  %i.lbf = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lbe)
  %i.lbg = fadd reassoc nsz arcp contract afn float %i.lba, %i.lbf
  %i.lbh = getelementptr inbounds nuw [4 x i8], ptr %i.jfb, i64 %indvars.iv1042.i ; 5 uses
  %i.lbi = load float, ptr %i.lbh, align 4, !tbaa !12, !noalias !499 ; 5 uses
  %i.lbj = getelementptr i8, ptr %i.lbh, i64 -904
  %i.lbk = load float, ptr %i.lbj, align 4, !tbaa !12, !noalias !499
  %i.lbl = fsub reassoc nsz arcp contract afn float %i.lbi, %i.lbk
  %i.lbm = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lbl)
  %i.lbn = fadd reassoc nsz arcp contract afn float %i.lbg, %i.lbm ; 2 uses
  %i.lbo = add nsw i64 %indvars.iv1042.i, -111    ; 2 uses
  %i.lbp = getelementptr inbounds [4 x i8], ptr %i.kus, i64 %i.lbo
  %i.lbq = load float, ptr %i.lbp, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.lbr = add nuw nsw i64 %indvars.iv1042.i, 111 ; 2 uses
  %i.lbs = getelementptr inbounds nuw [4 x i8], ptr %i.kus, i64 %i.lbr
  %i.lbt = load float, ptr %i.lbs, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.lbu = fsub reassoc nsz arcp contract afn float %i.lbq, %i.lbt
  %i.lbv = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lbu)
  %i.lbw = fadd reassoc nsz arcp contract afn float %i.lbv, f0x3727C5AC ; 2 uses
  %i.lbx = getelementptr i8, ptr %i.lbb, i64 -1332
  %i.lby = load float, ptr %i.lbx, align 4, !tbaa !12, !noalias !499
  %i.lbz = fsub reassoc nsz arcp contract afn float %i.lbq, %i.lby
  %i.lca = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lbz)
  %i.lcb = fadd reassoc nsz arcp contract afn float %i.lbw, %i.lca
  %i.lcc = getelementptr i8, ptr %i.lbh, i64 -888
  %i.lcd = load float, ptr %i.lcc, align 4, !tbaa !12, !noalias !499
  %i.lce = fsub reassoc nsz arcp contract afn float %i.lbi, %i.lcd
  %i.lcf = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lce)
  %i.lcg = fadd reassoc nsz arcp contract afn float %i.lcb, %i.lcf ; 2 uses
  %i.lch = getelementptr inbounds nuw i8, ptr %i.lbb, i64 1332
  %i.lci = load float, ptr %i.lch, align 4, !tbaa !12, !noalias !499
  %i.lcj = fsub reassoc nsz arcp contract afn float %i.lbt, %i.lci
  %i.lck = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lcj)
  %i.lcl = fadd reassoc nsz arcp contract afn float %i.lck, %i.lbw
  %i.lcm = getelementptr inbounds nuw i8, ptr %i.lbh, i64 888
  %i.lcn = load float, ptr %i.lcm, align 4, !tbaa !12, !noalias !499
  %i.lco = fsub reassoc nsz arcp contract afn float %i.lbi, %i.lcn
  %i.lcp = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lco)
  %i.lcq = fadd reassoc nsz arcp contract afn float %i.lcl, %i.lcp ; 2 uses
  %i.lcr = getelementptr inbounds nuw i8, ptr %i.lbb, i64 1356
  %i.lcs = load float, ptr %i.lcr, align 4, !tbaa !12, !noalias !499
  %i.lct = fsub reassoc nsz arcp contract afn float %i.lax, %i.lcs
  %i.lcu = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lct)
  %i.lcv = fadd reassoc nsz arcp contract afn float %i.lcu, %i.lba
  %i.lcw = getelementptr inbounds nuw i8, ptr %i.lbh, i64 904
  %i.lcx = load float, ptr %i.lcw, align 4, !tbaa !12, !noalias !499
  %i.lcy = fsub reassoc nsz arcp contract afn float %i.lbi, %i.lcx
  %i.lcz = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lcy)
  %i.lda = fadd reassoc nsz arcp contract afn float %i.lcv, %i.lcz ; 2 uses
  %i.ldb = getelementptr inbounds [4 x i8], ptr %i.jfb, i64 %i.las
  %i.ldc = load float, ptr %i.ldb, align 4, !tbaa !12, !noalias !499
  %i.ldd = fsub reassoc nsz arcp contract afn float %i.lau, %i.ldc
  %i.lde = getelementptr inbounds [4 x i8], ptr %i.jfb, i64 %i.lbo
  %i.ldf = load float, ptr %i.lde, align 4, !tbaa !12, !noalias !499
  %i.ldg = fsub reassoc nsz arcp contract afn float %i.lbq, %i.ldf
  %i.ldh = getelementptr inbounds nuw [4 x i8], ptr %i.jfb, i64 %i.lbr
  %i.ldi = load float, ptr %i.ldh, align 4, !tbaa !12, !noalias !499
  %i.ldj = fsub reassoc nsz arcp contract afn float %i.lbt, %i.ldi
  %i.ldk = getelementptr inbounds nuw [4 x i8], ptr %i.jfb, i64 %i.lav
  %i.ldl = load float, ptr %i.ldk, align 4, !tbaa !12, !noalias !499
  %i.ldm = fsub reassoc nsz arcp contract afn float %i.lax, %i.ldl
  %i.ldn = fmul reassoc nsz arcp contract afn float %i.ldm, %i.lbn
  %i.ldo = fmul reassoc nsz arcp contract afn float %i.lda, %i.ldd
  %i.ldp = fadd reassoc nsz arcp contract afn float %i.ldn, %i.ldo
  %i.ldq = fadd reassoc nsz arcp contract afn float %i.lda, %i.lbn
  %i.ldr = fdiv reassoc nsz arcp contract afn float %i.ldp, %i.ldq ; 2 uses
  %i.lds = fmul reassoc nsz arcp contract afn float %i.ldj, %i.lcg
  %i.ldt = fmul reassoc nsz arcp contract afn float %i.ldg, %i.lcq
  %i.ldu = fadd reassoc nsz arcp contract afn float %i.lds, %i.ldt
  %i.ldv = fadd reassoc nsz arcp contract afn float %i.lcq, %i.lcg
  %i.ldw = fdiv reassoc nsz arcp contract afn float %i.ldu, %i.ldv
  %i.ldx = fcmp reassoc nsz arcp contract afn oge float %i.lar, 0.000000e+00
  %i.ldy = fcmp reassoc nsz arcp contract afn ole float %i.lar, 1.000000e+00
  %i.ldz = select reassoc nsz arcp contract afn i1 %i.ldy, float %i.lar, float 1.000000e+00
  %i.lea = select reassoc nsz arcp contract afn i1 %i.ldx, float %i.ldz, float 0.000000e+00
  %i.leb = fsub reassoc nsz arcp contract afn float %i.ldw, %i.ldr
  %i.lec = fmul reassoc nsz arcp contract afn float %i.leb, %i.lea
  %i.led = fadd reassoc nsz arcp contract afn float %i.ldr, %i.lec
  %i.lee = fadd reassoc nsz arcp contract afn float %i.led, %i.lbi
  store float %i.lee, ptr %i.lbb, align 4, !tbaa !12, !noalias !499
  %i.lef = add nuw nsw i32 %.0754907.i, 2         ; 2 uses
  %indvars.iv.next1043.i = add nuw nsw i64 %indvars.iv1042.i, 2
  %indvars.iv.next1041.i = add nuw nsw i64 %indvars.iv1040.i, 1
  %i.leg = icmp slt i32 %i.lef, %i.klk
  br i1 %i.leg, label %scalar.ph3204, label %._crit_edge914.i, !llvm.loop !322

._crit_edge925.i:                                 ; preds = %._crit_edge922.i, %.preheader829.i, %.preheader830.i, %.preheader832.i
  %i.leh = icmp eq i32 %.0745937.i, 0
  %i.lei = select i1 %i.leh, i32 9, i32 10        ; 4 uses
  %i.lej = add nuw nsw i32 %i.lei, %i.jhr         ; 3 uses
  %i.lek = icmp eq i32 %.0745937.i, %i.aos        ; 2 uses
  %.neg793.i = select i1 %i.lek, i32 -9, i32 -10  ; 2 uses
  %i.lel = add nsw i32 %i.jht, %.neg793.i         ; 2 uses
  %i.lem = icmp slt i32 %i.lej, %i.lel
  %or.cond944.i = select i1 %i.jga, i1 %i.lem, i1 false
  br i1 %or.cond944.i, label %.lr.ph930.preheader.i, label %._crit_edge935.split.i

.lr.ph930.preheader.i:                            ; preds = %._crit_edge925.i
  %i.len = add i32 %i.lei, %indvars.iv1057.i
  %i.leo = shl i32 %i.len, 2
  %i.lep = or disjoint i32 %i.lei, %i.jge
  %i.leq = add i32 %.neg793.i, %i.jht
  %i.ler = add i32 %i.leq, %i.jhd
  %i.les = sub i32 %i.ler, %i.lei                 ; 2 uses
  %i.let = zext i32 %i.les to i64
  %i.leu = add nuw nsw i64 %i.let, 1              ; 2 uses
  %min.iters.check2936 = icmp ult i32 %i.les, 7
  %n.vec2938 = and i64 %i.leu, 8589934584         ; 5 uses
  %i.lev = shl nuw nsw i64 %n.vec2938, 2
  %i.lew = trunc i64 %n.vec2938 to i32
  %i.lex = add i32 %i.lej, %i.lew
  %cmp.n2949 = icmp eq i64 %i.leu, %n.vec2938
  br label %.lr.ph930.i

.preheader.i541:                                  ; preds = %.preheader.i541.preheader, %._crit_edge922.i
  %indvars.iv1050.i = phi i32 [ %indvars.iv.next1051.i, %._crit_edge922.i ], [ 452, %.preheader.i541.preheader ] ; 3 uses
  %.0744923.i = phi i32 [ %i.llk, %._crit_edge922.i ], [ 4, %.preheader.i541.preheader ] ; 2 uses
  %i.ley = shl i32 %.0744923.i, 2
  %i.lez = and i32 %i.ley, 28
  %i.lfa = or disjoint i32 %i.lez, 2
  %i.lfb = lshr i32 %.fr1063, %i.lfa
  %i.lfc = and i32 %i.lfb, 1                      ; 5 uses
  %i.lfd = or disjoint i32 %i.lfc, 4              ; 4 uses
  %i.lfe = icmp slt i32 %i.lfd, %i.klk
  br i1 %i.lfe, label %.lr.ph921.preheader.i, label %._crit_edge922.i

.lr.ph921.preheader.i:                            ; preds = %.preheader.i541
  %i.lff = or disjoint i32 %i.lfc, %indvars.iv1050.i
  %i.lfg = sext i32 %i.lff to i64                 ; 5 uses
  %i.lfh = sub i32 %i.lac, %i.lfc                 ; 2 uses
  %i.lfi = lshr i32 %i.lfh, 1
  %narrow4569 = add nuw i32 %i.lfi, 1
  %i.lfj = zext i32 %narrow4569 to i64            ; 2 uses
  %min.iters.check2966 = icmp ult i32 %i.lfh, 16
  br i1 %min.iters.check2966, label %.lr.ph921.i.preheader, label %vector.memcheck2953

.lr.ph921.i.preheader:                            ; preds = %vector.body2972, %vector.memcheck2953, %.lr.ph921.preheader.i
  %indvars.iv1052.i.ph = phi i64 [ %i.lfg, %vector.memcheck2953 ], [ %i.lfg, %.lr.ph921.preheader.i ], [ %i.lfw, %vector.body2972 ]
  %.0743918.i.ph = phi i32 [ %i.lfd, %vector.memcheck2953 ], [ %i.lfd, %.lr.ph921.preheader.i ], [ %i.lfz, %vector.body2972 ]
  br label %.lr.ph921.i

vector.memcheck2953:                              ; preds = %.lr.ph921.preheader.i
  %i.lfk = or disjoint i32 %indvars.iv1050.i, %i.lfc
  %i.lfl = sext i32 %i.lfk to i64
  %i.lfm = shl nsw i64 %i.lfl, 2                  ; 3 uses
  %scevgep2955 = getelementptr i8, ptr %scevgep2954, i64 %i.lfm
  %i.lfn = sub i32 %i.lab, %i.lfc
  %i.lfo = lshr i32 %i.lfn, 1
  %i.lfp = zext nneg i32 %i.lfo to i64
  %i.lfq = shl nuw nsw i64 %i.lfp, 3
  %i.lfr = add nsw i64 %i.lfq, %i.lfm             ; 2 uses
  %scevgep2957 = getelementptr i8, ptr %scevgep2956, i64 %i.lfr
  %scevgep2959 = getelementptr i8, ptr %scevgep2958, i64 %i.lfm
  %scevgep2961 = getelementptr i8, ptr %scevgep2960, i64 %i.lfr
  %bound02962 = icmp ult ptr %scevgep2955, %scevgep2961
  %bound12963 = icmp ult ptr %scevgep2959, %scevgep2957
  %found.conflict2964 = and i1 %bound02962, %bound12963
  br i1 %found.conflict2964, label %.lr.ph921.i.preheader, label %vector.ph2967
end_hunk_1
begin_hunk_2_@process:bb.a
.lr.ph1066.split.us.i:                            ; preds = %.lr.ph1066.i
  %i.ngf = icmp slt i32 %.09261069.i, %i.axj
  br i1 %i.ngf, label %.lr.ph1066.split.us.split.preheader.i, label %.lr.ph1066.split.us.split.us.i.preheader

.lr.ph1066.split.us.split.us.i.preheader:         ; preds = %.lr.ph1066.split.us.i
  br i1 %i.mrr, label %.lr.ph1066.split.us.split.us.i.epil.preheader, label %.lr.ph1066.split.us.split.us.i.preheader.new

.lr.ph1066.split.us.split.us.i.preheader.new:     ; preds = %.lr.ph1066.split.us.split.us.i.preheader
  %i.ngg = shl nuw nsw i32 %i.nfm, 1
  %i.ngh = lshr i32 %.fr1063, %i.ngg
  %i.ngi = and i32 %i.ngh, 3                      ; 2 uses
  %i.ngj = zext nneg i32 %i.ngi to i64
  %i.ngk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ngj
  %i.ngl = load ptr, ptr %i.ngk, align 8, !tbaa !140, !noalias !551
  %i.ngm = getelementptr inbounds nuw [4 x i8], ptr %i.ngl, i64 %i.nfo
  %.not955.us.us.i = icmp eq i32 %i.ngi, 1
  %.tr.i962.us.us.i.1 = shl nuw nsw i32 %i.nfm, 1
  %i.ngn = or disjoint i32 %.tr.i962.us.us.i.1, 2
  %i.ngo = lshr i32 %.fr1063, %i.ngn
  %i.ngp = and i32 %i.ngo, 3                      ; 2 uses
  %i.ngq = zext nneg i32 %i.ngp to i64
  %i.ngr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ngq
  %i.ngs = load ptr, ptr %i.ngr, align 8, !tbaa !140, !noalias !551
  %i.ngt = getelementptr inbounds nuw [4 x i8], ptr %i.ngs, i64 %i.nfo
  %.not955.us.us.i.1 = icmp eq i32 %i.ngp, 1
  br label %.lr.ph1066.split.us.split.us.i

.lr.ph1066.split.us.split.preheader.i:            ; preds = %.lr.ph1066.split.us.i
  %invariant.gep1376.i = getelementptr inbounds nuw [4 x i8], ptr %i.luu, i64 %i.nfo
  br label %.lr.ph1066.split.us.split.i

.lr.ph1066.split.us.split.us.i:                   ; preds = %bb.pk, %.lr.ph1066.split.us.split.us.i.preheader.new
  %indvars.iv1251.i = phi i64 [ 0, %.lr.ph1066.split.us.split.us.i.preheader.new ], [ %indvars.iv.next1252.i.1, %bb.pk ] ; 4 uses
  %niter4733 = phi i64 [ 0, %.lr.ph1066.split.us.split.us.i.preheader.new ], [ %niter4733.next.1, %bb.pk ]
  %i.ngu = getelementptr inbounds nuw [4 x i8], ptr %i.ngm, i64 %indvars.iv1251.i
  store float 0.000000e+00, ptr %i.ngu, align 4, !tbaa !12, !noalias !549
  br i1 %.not955.us.us.i, label %.lr.ph1066.split.us.split.us.i.1, label %bb.pi

bb.pi:                                            ; preds = %.lr.ph1066.split.us.split.us.i
  %i.ngv = getelementptr inbounds nuw [4 x i8], ptr %i.nfp, i64 %indvars.iv1251.i
  store float 0.000000e+00, ptr %i.ngv, align 8, !tbaa !12, !noalias !549
  br label %.lr.ph1066.split.us.split.us.i.1

.lr.ph1066.split.us.split.us.i.1:                 ; preds = %bb.pi, %.lr.ph1066.split.us.split.us.i
  %indvars.iv.next1252.i = or disjoint i64 %indvars.iv1251.i, 1 ; 2 uses
  %i.ngw = getelementptr inbounds nuw [4 x i8], ptr %i.ngt, i64 %indvars.iv.next1252.i
  store float 0.000000e+00, ptr %i.ngw, align 4, !tbaa !12, !noalias !549
  br i1 %.not955.us.us.i.1, label %bb.pk, label %bb.pj

bb.pj:                                            ; preds = %.lr.ph1066.split.us.split.us.i.1
  %i.ngx = getelementptr inbounds nuw [4 x i8], ptr %i.nfp, i64 %indvars.iv.next1252.i
  store float 0.000000e+00, ptr %i.ngx, align 4, !tbaa !12, !noalias !549
  br label %bb.pk

bb.pk:                                            ; preds = %bb.pj, %.lr.ph1066.split.us.split.us.i.1
  %indvars.iv.next1252.i.1 = add nuw nsw i64 %indvars.iv1251.i, 2 ; 2 uses
  %niter4733.next.1 = add i64 %niter4733, 2       ; 2 uses
  %niter4733.ncmp.1.not = icmp eq i64 %niter4733.next.1, %unroll_iter4732
  br i1 %niter4733.ncmp.1.not, label %._crit_edge1067.i.loopexit4627.unr-lcssa, label %.lr.ph1066.split.us.split.us.i

.lr.ph1066.split.us.split.i:                      ; preds = %bb.pn, %.lr.ph1066.split.us.split.preheader.i
  %indvars.iv1254.i = phi i64 [ 0, %.lr.ph1066.split.us.split.preheader.i ], [ %indvars.iv.next1255.i, %bb.pn ] ; 6 uses
  %.09241064.us.i = phi i32 [ %i.mrm, %.lr.ph1066.split.us.split.preheader.i ], [ %i.nhp, %bb.pn ] ; 2 uses
  %i.ngy = trunc nuw nsw i64 %indvars.iv1254.i to i32
  %i.ngz = and i32 %i.ngy, 1
  %.tr.i962.us.i = or disjoint i32 %i.ngz, %i.nfm
  %i.nha = shl nuw nsw i32 %.tr.i962.us.i, 1
  %i.nhb = lshr i32 %.fr1063, %i.nha
  %i.nhc = and i32 %i.nhb, 3                      ; 3 uses
  %i.nhd = icmp ult i32 %.09241064.us.i, %i.bo
  %i.nhe = zext nneg i32 %i.nhc to i64
  %i.nhf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.nhe
  %i.nhg = load ptr, ptr %i.nhf, align 8, !tbaa !140, !noalias !551
  %i.nhh = getelementptr inbounds nuw [4 x i8], ptr %i.nhg, i64 %i.nfo
  %i.nhi = getelementptr inbounds nuw [4 x i8], ptr %i.nhh, i64 %indvars.iv1254.i ; 2 uses
  br i1 %i.nhd, label %bb.pl, label %.thread.i562

bb.pl:                                            ; preds = %.lr.ph1066.split.us.split.i
  %gep1377.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1376.i, i64 %indvars.iv1254.i
  %i.nhj = load float, ptr %gep1377.i, align 4, !tbaa !12, !noalias !549 ; 2 uses
  store float %i.nhj, ptr %i.nhi, align 4, !tbaa !12, !noalias !549
  %.not955.us.i = icmp eq i32 %i.nhc, 1
  br i1 %.not955.us.i, label %bb.pn, label %bb.pm

.thread.i562:                                     ; preds = %.lr.ph1066.split.us.split.i
  store float 0.000000e+00, ptr %i.nhi, align 4, !tbaa !12, !noalias !549
  %.not955.us1356.i = icmp eq i32 %i.nhc, 1
  br i1 %.not955.us1356.i, label %bb.pn, label %.thread1357.i

bb.pm:                                            ; preds = %bb.pl
  %i.nhk = getelementptr inbounds nuw [4 x i8], ptr %i.nfq, i64 %indvars.iv1254.i
  %i.nhl = load float, ptr %i.nhk, align 4, !tbaa !12, !noalias !549
  %i.nhm = fadd reassoc nsz arcp contract afn float %i.nhl, %i.nhj
  br label %.thread1357.i

.thread1357.i:                                    ; preds = %bb.pm, %.thread.i562
  %i.nhn = phi reassoc nsz arcp contract afn float [ %i.nhm, %bb.pm ], [ 0.000000e+00, %.thread.i562 ]
  %i.nho = getelementptr inbounds nuw [4 x i8], ptr %i.nfp, i64 %indvars.iv1254.i
  store float %i.nhn, ptr %i.nho, align 4, !tbaa !12, !noalias !549
  br label %bb.pn

bb.pn:                                            ; preds = %.thread1357.i, %.thread.i562, %bb.pl
  %indvars.iv.next1255.i = add nuw nsw i64 %indvars.iv1254.i, 1 ; 2 uses
  %i.nhp = add nsw i32 %.09241064.us.i, 1
  %i.nhq = icmp slt i64 %indvars.iv.next1255.i, %i.mro
  br i1 %i.nhq, label %.lr.ph1066.split.us.split.i, label %._crit_edge1067.i

._crit_edge1067.i.loopexit4627.unr-lcssa:         ; preds = %bb.pk
  br i1 %lcmp.mod4730.not, label %._crit_edge1067.i, label %.lr.ph1066.split.us.split.us.i.epil.preheader

.lr.ph1066.split.us.split.us.i.epil.preheader:    ; preds = %._crit_edge1067.i.loopexit4627.unr-lcssa, %.lr.ph1066.split.us.split.us.i.preheader
  %indvars.iv1251.i.epil.init = phi i64 [ 0, %.lr.ph1066.split.us.split.us.i.preheader ], [ %indvars.iv.next1252.i.1, %._crit_edge1067.i.loopexit4627.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod4731)
  %i.nhr = trunc nuw nsw i64 %indvars.iv1251.i.epil.init to i32
  %i.nhs = and i32 %i.nhr, 1
  %.tr.i962.us.us.i.epil = or disjoint i32 %i.nhs, %i.nfm
  %i.nht = shl nuw nsw i32 %.tr.i962.us.us.i.epil, 1
  %i.nhu = lshr i32 %.fr1063, %i.nht
  %i.nhv = and i32 %i.nhu, 3                      ; 2 uses
  %i.nhw = zext nneg i32 %i.nhv to i64
  %i.nhx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.nhw
  %i.nhy = load ptr, ptr %i.nhx, align 8, !tbaa !140, !noalias !551
  %i.nhz = getelementptr inbounds nuw [4 x i8], ptr %i.nhy, i64 %i.nfo
  %i.nia = getelementptr inbounds nuw [4 x i8], ptr %i.nhz, i64 %indvars.iv1251.i.epil.init
  store float 0.000000e+00, ptr %i.nia, align 4, !tbaa !12, !noalias !549
  %.not955.us.us.i.epil = icmp eq i32 %i.nhv, 1
  br i1 %.not955.us.us.i.epil, label %._crit_edge1067.i, label %bb.po

bb.po:                                            ; preds = %.lr.ph1066.split.us.split.us.i.epil.preheader
  %i.nib = getelementptr inbounds nuw [4 x i8], ptr %i.nfp, i64 %indvars.iv1251.i.epil.init
  store float 0.000000e+00, ptr %i.nib, align 4, !tbaa !12, !noalias !549
  br label %._crit_edge1067.i

._crit_edge1067.i.loopexit4628.unr-lcssa:         ; preds = %bb.pp
  br i1 %lcmp.mod4722.not, label %._crit_edge1067.i, label %.thread982.i.epil.preheader

.thread982.i.epil.preheader:                      ; preds = %._crit_edge1067.i.loopexit4628.unr-lcssa, %.thread982.i.preheader
  %indvars.iv1248.i.epil.init = phi i64 [ 0, %.thread982.i.preheader ], [ %indvars.iv.next1249.i.1, %._crit_edge1067.i.loopexit4628.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod4723)
  %i.nic = trunc nuw nsw i64 %indvars.iv1248.i.epil.init to i32
  %i.nid = and i32 %i.nic, 1
  %.tr.i962.i.epil = or disjoint i32 %i.nid, %i.nfm
  %i.nie = shl nuw nsw i32 %.tr.i962.i.epil, 1
  %i.nif = lshr i32 %.fr1063, %i.nie
  %i.nig = and i32 %i.nif, 3                      ; 2 uses
  %i.nih = zext nneg i32 %i.nig to i64
  %i.nii = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.nih
  %i.nij = load ptr, ptr %i.nii, align 8, !tbaa !140, !noalias !551
  %i.nik = getelementptr inbounds nuw [4 x i8], ptr %i.nij, i64 %i.nfo
  %i.nil = getelementptr inbounds nuw [4 x i8], ptr %i.nik, i64 %indvars.iv1248.i.epil.init
  store float 0.000000e+00, ptr %i.nil, align 4, !tbaa !12, !noalias !549
  %.not955983.i.epil = icmp eq i32 %i.nig, 1
  br i1 %.not955983.i.epil, label %._crit_edge1067.i, label %.thread984.i.epil

.thread984.i.epil:                                ; preds = %.thread982.i.epil.preheader
  %i.nim = getelementptr inbounds nuw [4 x i8], ptr %i.nfp, i64 %indvars.iv1248.i.epil.init
  store float 0.000000e+00, ptr %i.nim, align 4, !tbaa !12, !noalias !549
  br label %._crit_edge1067.i

._crit_edge1067.i:                                ; preds = %._crit_edge1067.i.loopexit4628.unr-lcssa, %.thread984.i.epil, %.thread982.i.epil.preheader, %._crit_edge1067.i.loopexit4627.unr-lcssa, %bb.po, %.lr.ph1066.split.us.split.us.i.epil.preheader, %bb.pn
  %indvars.iv.next1258.i = add nuw nsw i64 %indvars.iv1257.i, 1 ; 2 uses
  %i.nin = add i32 %.09261069.i, 1
  %exitcond1127.not = icmp eq i64 %indvars.iv.next1258.i, %smax1126
  br i1 %exitcond1127.not, label %.preheader1023.i, label %.lr.ph1066.i

.thread982.i:                                     ; preds = %bb.pp, %.thread982.i.preheader.new
  %indvars.iv1248.i = phi i64 [ 0, %.thread982.i.preheader.new ], [ %indvars.iv.next1249.i.1, %bb.pp ] ; 4 uses
  %niter4725 = phi i64 [ 0, %.thread982.i.preheader.new ], [ %niter4725.next.1, %bb.pp ]
  %i.nio = getelementptr inbounds nuw [4 x i8], ptr %i.nfx, i64 %indvars.iv1248.i
  store float 0.000000e+00, ptr %i.nio, align 4, !tbaa !12, !noalias !549
  br i1 %.not955983.i, label %.thread982.i.1, label %.thread984.i

.thread984.i:                                     ; preds = %.thread982.i
  %i.nip = getelementptr inbounds nuw [4 x i8], ptr %i.nfp, i64 %indvars.iv1248.i
  store float 0.000000e+00, ptr %i.nip, align 8, !tbaa !12, !noalias !549
  br label %.thread982.i.1

.thread982.i.1:                                   ; preds = %.thread984.i, %.thread982.i
  %indvars.iv.next1249.i = or disjoint i64 %indvars.iv1248.i, 1 ; 2 uses
  %i.niq = getelementptr inbounds nuw [4 x i8], ptr %i.nge, i64 %indvars.iv.next1249.i
  store float 0.000000e+00, ptr %i.niq, align 4, !tbaa !12, !noalias !549
  br i1 %.not955983.i.1, label %bb.pp, label %.thread984.i.1

.thread984.i.1:                                   ; preds = %.thread982.i.1
  %i.nir = getelementptr inbounds nuw [4 x i8], ptr %i.nfp, i64 %indvars.iv.next1249.i
  store float 0.000000e+00, ptr %i.nir, align 4, !tbaa !12, !noalias !549
  br label %bb.pp

bb.pp:                                            ; preds = %.thread984.i.1, %.thread982.i.1
  %indvars.iv.next1249.i.1 = add nuw nsw i64 %indvars.iv1248.i, 2 ; 2 uses
  %niter4725.next.1 = add i64 %niter4725, 2       ; 2 uses
  %niter4725.ncmp.1.not = icmp eq i64 %niter4725.next.1, %unroll_iter4724
  br i1 %niter4725.ncmp.1.not, label %._crit_edge1067.i.loopexit4628.unr-lcssa, label %.thread982.i

.preheader1022.i:                                 ; preds = %._crit_edge1075.i
  %i.nis = zext i32 %i.nfi to i64                 ; 3 uses
  br label %bb.pr

bb.pq:                                            ; preds = %._crit_edge1075.i, %.lr.ph1077.i
  %indvar4174 = phi i64 [ %indvar.next4175, %._crit_edge1075.i ], [ 0, %.lr.ph1077.i ] ; 2 uses
  %indvars.iv1263.i = phi i64 [ %indvars.iv.next1264.i, %._crit_edge1075.i ], [ 1, %.lr.ph1077.i ] ; 4 uses
  %6 = mul nuw nsw i64 %indvars.iv1263.i, 544     ; 2 uses
  %i.nit = mul nuw nsw i64 %indvar4174, 544       ; 4 uses
  %i.niu = getelementptr i8, ptr %i.luo, i64 %i.nit
  %scevgep4181 = getelementptr i8, ptr %i.niu, i64 73988
  %i.niv = getelementptr i8, ptr %i.luo, i64 %i.nit
  %scevgep4183 = getelementptr i8, ptr %i.niv, i64 75080
  %indvars.iv1263.tr.i = trunc nuw i64 %indvars.iv1263.i to i32
  %i.niw = shl nuw i32 %indvars.iv1263.tr.i, 1
  %i.nix = and i32 %i.niw, 14                     ; 2 uses
  %i.niy = shl nuw nsw i32 %i.nix, 1
  %i.niz = lshr i32 %.fr1063, %i.niy              ; 3 uses
  %i.nja = and i32 %i.niz, 1                      ; 3 uses
  %i.njb = icmp slt i32 %i.nja, %i.nfk
  br i1 %i.njb, label %.lr.ph1074.i, label %._crit_edge1075.i

.lr.ph1074.i:                                     ; preds = %bb.pq
  %i.njc = or disjoint i32 %i.nja, %i.nix
  %i.njd = shl nuw nsw i32 %i.njc, 1
  %i.nje = lshr i32 %.fr1063, %i.njd
  %i.njf = and i32 %i.nje, 3                      ; 2 uses
  %i.njg = zext nneg i32 %i.njf to i64
  %i.njh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.njg
  %i.nji = load ptr, ptr %i.njh, align 8, !tbaa !140, !noalias !551 ; 3 uses
  %i.njj = mul nuw nsw i64 %indvars.iv1263.i, 136 ; 3 uses
  %i.njk = getelementptr inbounds nuw [4 x i8], ptr %i.nji, i64 %i.njj ; 2 uses
  %i.njl = getelementptr inbounds nuw [4 x i8], ptr %i.luq, i64 %i.njj ; 2 uses
  %i.njm = sub nsw i32 2, %i.njf
  %i.njn = sext i32 %i.njm to i64
  %i.njo = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.njn
  %i.njp = load ptr, ptr %i.njo, align 8, !tbaa !140, !noalias !551 ; 3 uses
  %i.njq = getelementptr inbounds nuw [4 x i8], ptr %i.njp, i64 %i.njj ; 2 uses
  %narrow1352.i = add nuw nsw i32 %i.nja, 1
  %i.njr = zext nneg i32 %narrow1352.i to i64     ; 5 uses
  %i.njs = and i32 %i.niz, 1
  %i.njt = zext nneg i32 %i.njs to i64            ; 2 uses
  %i.nju = add nuw nsw i64 %i.njt, 3
  %i.njv = call i64 @llvm.smax.i64(i64 %i.nfj, i64 %i.nju)
  %i.njw = add nsw i64 %i.njv, -2
  %i.njx = sub i64 %i.njw, %i.njt                 ; 2 uses
  %i.njy = lshr i64 %i.njx, 1
  %i.njz = add nuw nsw i64 %i.njy, 1              ; 2 uses
  %min.iters.check4197 = icmp ult i64 %i.njx, 16
  br i1 %min.iters.check4197, label %scalar.ph4196.preheader, label %vector.memcheck4173

scalar.ph4196.preheader:                          ; preds = %vector.body4203, %vector.memcheck4173, %.lr.ph1074.i
  %indvars.iv1260.i.ph = phi i64 [ %i.njr, %vector.memcheck4173 ], [ %i.njr, %.lr.ph1074.i ], [ %i.nkw, %vector.body4203 ]
  br label %scalar.ph4196

vector.memcheck4173:                              ; preds = %.lr.ph1074.i
  %i.nka = and i32 %i.niz, 1
  %i.nkb = zext nneg i32 %i.nka to i64            ; 3 uses
  %i.nkc = shl nuw nsw i64 %i.nkb, 2              ; 6 uses
  %i.nkd = getelementptr i8, ptr %i.nji, i64 %6
  %scevgep4176.a = getelementptr i8, ptr %i.nkd, i64 %i.nkc ; 2 uses
  %i.nke = add nuw nsw i64 %i.nkb, 3
  %smax4177 = call i64 @llvm.smax.i64(i64 %i.nfj, i64 %i.nke)
  %i.nkf = add nsw i64 %smax4177, -2
  %i.nkg = sub i64 %i.nkf, %i.nkb
  %i.nkh = shl nuw nsw i64 %i.nkg, 2
  %i.nki = and i64 %i.nkh, 9223372036854775800    ; 3 uses
  %i.nkj = getelementptr i8, ptr %i.nji, i64 %6
  %i.nkk = getelementptr i8, ptr %i.nkj, i64 12
  %i.nkl = getelementptr i8, ptr %i.nkk, i64 %i.nki
  %scevgep4178.a = getelementptr i8, ptr %i.nkl, i64 %i.nkc ; 2 uses
  %i.nkm = getelementptr i8, ptr %i.njp, i64 %i.nit
  %i.nkn = getelementptr i8, ptr %i.nkm, i64 4
  %scevgep4179 = getelementptr i8, ptr %i.nkn, i64 %i.nkc ; 2 uses
  %i.nko = getelementptr i8, ptr %i.njp, i64 %i.nit
  %i.nkp = getelementptr i8, ptr %i.nko, i64 1096
  %i.nkq = getelementptr i8, ptr %i.nkp, i64 %i.nki
  %scevgep4180.a = getelementptr i8, ptr %i.nkq, i64 %i.nkc ; 2 uses
  %scevgep4182 = getelementptr i8, ptr %scevgep4181, i64 %i.nkc ; 2 uses
  %i.nkr = getelementptr i8, ptr %scevgep4183, i64 %i.nki
  %scevgep4184 = getelementptr i8, ptr %i.nkr, i64 %i.nkc ; 2 uses
  %bound04185 = icmp ult ptr %scevgep4176.a, %scevgep4180.a
  %bound14186 = icmp ult ptr %scevgep4179, %scevgep4178.a
  %found.conflict4187 = and i1 %bound04185, %bound14186
  %bound04188.a = icmp ult ptr %scevgep4176.a, %scevgep4184
  %bound14189.a = icmp ult ptr %scevgep4182, %scevgep4178.a
  %found.conflict4190.a = and i1 %bound04188.a, %bound14189.a
  %conflict.rdx4191.a = or i1 %found.conflict4187, %found.conflict4190.a
  %bound04192 = icmp ult ptr %scevgep4179, %scevgep4184
  %bound14193 = icmp ult ptr %scevgep4182, %scevgep4180.a
  %found.conflict4194 = and i1 %bound04192, %bound14193
  %conflict.rdx4195 = or i1 %conflict.rdx4191.a, %found.conflict4194
  br i1 %conflict.rdx4195, label %scalar.ph4196.preheader, label %vector.ph4198

vector.ph4198:                                    ; preds = %vector.memcheck4173
  %i.nks = and i64 %i.njz, 7                      ; 2 uses
  %i.nkt = icmp eq i64 %i.nks, 0
  %i.nku = select i1 %i.nkt, i64 8, i64 %i.nks
  %n.vec4199 = sub nsw i64 %i.njz, %i.nku         ; 2 uses
  %i.nkv = shl i64 %n.vec4199, 1
  %i.nkw = add i64 %i.nkv, %i.njr
  %broadcast.splatinsert4200 = insertelement <8 x i64> poison, i64 %i.njr, i64 0
  %broadcast.splat4201 = shufflevector <8 x i64> %broadcast.splatinsert4200, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction4202 = add nuw nsw <8 x i64> %broadcast.splat4201, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep4859.a = getelementptr [4 x i8], ptr %i.njl, i64 %i.njr
  br label %vector.body4203

vector.body4203:                                  ; preds = %vector.body4203, %vector.ph4198
  %index4204 = phi i64 [ 0, %vector.ph4198 ], [ %index.next4226, %vector.body4203 ] ; 2 uses
  %vec.ind4205 = phi <8 x i64> [ %induction4202, %vector.ph4198 ], [ %vec.ind.next4227, %vector.body4203 ] ; 3 uses
  %wide.gep4206 = getelementptr inbounds nuw [4 x i8], ptr %i.njk, <8 x i64> %vec.ind4205 ; 2 uses
  %i.nkx = extractelement <8 x ptr> %wide.gep4206, i64 0 ; 2 uses
  %.idx4558.a = shl nuw i64 %index4204, 3
  %gep4860.a = getelementptr i8, ptr %invariant.gep4859.a, i64 %.idx4558.a ; 4 uses
  %i.nky = getelementptr inbounds i8, ptr %gep4860.a, i64 -4
  %wide.vec4207 = load <16 x float>, ptr %i.nky, align 4, !tbaa !12, !alias.scope !553, !noalias !549 ; 2 uses
  %strided.vec4208 = shufflevector <16 x float> %wide.vec4207, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4209.a = shufflevector <16 x float> %wide.vec4207, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.nkz = getelementptr inbounds i8, ptr %i.nkx, i64 -4
  %wide.vec4210.a = load <16 x float>, ptr %i.nkz, align 4, !tbaa !12, !alias.scope !554, !noalias !549
  %strided.vec4211.a = shufflevector <16 x float> %wide.vec4210.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nla = getelementptr inbounds nuw i8, ptr %i.nkx, i64 4
  %wide.vec4212 = load <16 x float>, ptr %i.nla, align 4, !tbaa !12, !alias.scope !554, !noalias !549
  %strided.vec4213 = shufflevector <16 x float> %wide.vec4212, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec4214.a = load <16 x float>, ptr %gep4860.a, align 4, !tbaa !12, !alias.scope !553, !noalias !549 ; 2 uses
  %strided.vec4215.a = shufflevector <16 x float> %wide.vec4214.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4216 = shufflevector <16 x float> %wide.vec4214.a, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.nlb = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4211.a, %strided.vec4213
  %i.nlc = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4208, %strided.vec4216
  %i.nld = fsub reassoc nsz arcp contract afn <8 x float> %i.nlb, %i.nlc
  %i.nle = fmul reassoc nsz arcp contract afn <8 x float> %i.nld, splat (float 5.000000e-01)
  %i.nlf = fadd reassoc nsz arcp contract afn <8 x float> %i.nle, %strided.vec4209.a
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.nlf, <8 x ptr> align 4 %wide.gep4206, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !554, !noalias !555
  %wide.gep4217 = getelementptr inbounds nuw [4 x i8], ptr %i.njq, <8 x i64> %vec.ind4205 ; 2 uses
  %i.nlg = extractelement <8 x ptr> %wide.gep4217, i64 0 ; 2 uses
  %i.nlh = getelementptr inbounds i8, ptr %i.nlg, i64 -544
  %wide.vec4218.a = load <16 x float>, ptr %i.nlh, align 4, !tbaa !12, !alias.scope !556, !noalias !549
  %strided.vec4219.a = shufflevector <16 x float> %wide.vec4218.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nli = getelementptr inbounds i8, ptr %gep4860.a, i64 -544
  %wide.vec4220.a = load <16 x float>, ptr %i.nli, align 4, !tbaa !12, !alias.scope !553, !noalias !549
  %strided.vec4221.a = shufflevector <16 x float> %wide.vec4220.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nlj = getelementptr inbounds nuw i8, ptr %i.nlg, i64 544
  %wide.vec4222 = load <16 x float>, ptr %i.nlj, align 4, !tbaa !12, !alias.scope !556, !noalias !549
  %strided.vec4223 = shufflevector <16 x float> %wide.vec4222, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nlk = getelementptr inbounds nuw i8, ptr %gep4860.a, i64 544
  %wide.vec4224 = load <16 x float>, ptr %i.nlk, align 4, !tbaa !12, !alias.scope !553, !noalias !549
  %strided.vec4225 = shufflevector <16 x float> %wide.vec4224, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nll = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4219.a, %strided.vec4223
  %i.nlm = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4221.a, %strided.vec4225
  %i.nln = fsub reassoc nsz arcp contract afn <8 x float> %i.nll, %i.nlm
  %i.nlo = fmul reassoc nsz arcp contract afn <8 x float> %i.nln, splat (float 5.000000e-01)
  %i.nlp = fadd reassoc nsz arcp contract afn <8 x float> %i.nlo, %strided.vec4215.a
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.nlp, <8 x ptr> align 4 %wide.gep4217, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !556, !noalias !557
  %index.next4226 = add nuw i64 %index4204, 8     ; 2 uses
  %vec.ind.next4227 = add nuw nsw <8 x i64> %vec.ind4205, splat (i64 16)
  %i.nlq = icmp eq i64 %index.next4226, %n.vec4199
  br i1 %i.nlq, label %scalar.ph4196.preheader, label %vector.body4203, !llvm.loop !347

._crit_edge1075.i:                                ; preds = %scalar.ph4196, %bb.pq
  %indvars.iv.next1264.i = add nuw nsw i64 %indvars.iv1263.i, 1 ; 2 uses
  %exitcond1132.not = icmp eq i64 %indvars.iv.next1264.i, %smax1137
  %indvar.next4175 = add i64 %indvar4174, 1
  br i1 %exitcond1132.not, label %.preheader1022.i, label %bb.pq

scalar.ph4196:                                    ; preds = %scalar.ph4196.preheader, %scalar.ph4196
  %indvars.iv1260.i = phi i64 [ %indvars.iv.next1261.i, %scalar.ph4196 ], [ %indvars.iv1260.i.ph, %scalar.ph4196.preheader ] ; 4 uses
  %i.nlr = getelementptr inbounds nuw [4 x i8], ptr %i.njk, i64 %indvars.iv1260.i ; 3 uses
  %i.nls = getelementptr inbounds nuw [4 x i8], ptr %i.njl, i64 %indvars.iv1260.i ; 6 uses
  %i.nlt = load float, ptr %i.nls, align 4, !tbaa !12, !noalias !549
  %i.nlu = getelementptr inbounds i8, ptr %i.nlr, i64 -4
  %i.nlv = load float, ptr %i.nlu, align 4, !tbaa !12, !noalias !549
  %i.nlw = getelementptr inbounds i8, ptr %i.nls, i64 -4
  %i.nlx = load float, ptr %i.nlw, align 4, !tbaa !12, !noalias !549
  %i.nly = getelementptr inbounds nuw i8, ptr %i.nlr, i64 4
  %i.nlz = load float, ptr %i.nly, align 4, !tbaa !12, !noalias !549
  %i.nma = getelementptr inbounds nuw i8, ptr %i.nls, i64 4
  %i.nmb = load float, ptr %i.nma, align 4, !tbaa !12, !noalias !549
  %i.nmc = fadd reassoc nsz arcp contract afn float %i.nlv, %i.nlz
  %i.nmd = fadd reassoc nsz arcp contract afn float %i.nlx, %i.nmb
  %i.nme = fsub reassoc nsz arcp contract afn float %i.nmc, %i.nmd
  %i.nmf = fmul reassoc nsz arcp contract afn float %i.nme, 5.000000e-01
  %i.nmg = fadd reassoc nsz arcp contract afn float %i.nmf, %i.nlt
  store float %i.nmg, ptr %i.nlr, align 4, !tbaa !12, !noalias !549
  %i.nmh = getelementptr inbounds nuw [4 x i8], ptr %i.njq, i64 %indvars.iv1260.i ; 3 uses
  %i.nmi = load float, ptr %i.nls, align 4, !tbaa !12, !noalias !549
  %i.nmj = getelementptr inbounds i8, ptr %i.nmh, i64 -544
  %i.nmk = load float, ptr %i.nmj, align 4, !tbaa !12, !noalias !549
  %i.nml = getelementptr inbounds i8, ptr %i.nls, i64 -544
  %i.nmm = load float, ptr %i.nml, align 4, !tbaa !12, !noalias !549
  %i.nmn = getelementptr inbounds nuw i8, ptr %i.nmh, i64 544
  %i.nmo = load float, ptr %i.nmn, align 4, !tbaa !12, !noalias !549
  %i.nmp = getelementptr inbounds nuw i8, ptr %i.nls, i64 544
  %i.nmq = load float, ptr %i.nmp, align 4, !tbaa !12, !noalias !549
  %i.nmr = fadd reassoc nsz arcp contract afn float %i.nmk, %i.nmo
  %i.nms = fadd reassoc nsz arcp contract afn float %i.nmm, %i.nmq
  %i.nmt = fsub reassoc nsz arcp contract afn float %i.nmr, %i.nms
  %i.nmu = fmul reassoc nsz arcp contract afn float %i.nmt, 5.000000e-01
  %i.nmv = fadd reassoc nsz arcp contract afn float %i.nmu, %i.nmi
  store float %i.nmv, ptr %i.nmh, align 4, !tbaa !12, !noalias !549
  %indvars.iv.next1261.i = add nuw nsw i64 %indvars.iv1260.i, 2 ; 2 uses
  %i.nmw = icmp slt i64 %indvars.iv.next1261.i, %i.nfj
  br i1 %i.nmw, label %scalar.ph4196, label %._crit_edge1075.i, !llvm.loop !348

._crit_edge1085.i:                                ; preds = %._crit_edge1082.i, %.preheader1023.i, %._crit_edge1060.i
  %i.nmx = icmp eq i32 %.08871185.i, 0            ; 2 uses
  %i.nmy = select i1 %i.nmx, i32 6, i32 0         ; 21 uses
  %i.nmz = icmp eq i32 %.08871185.i, %i.aoo       ; 2 uses
  %.neg.i554 = select i1 %i.nmz, i32 -6, i32 0    ; 10 uses
  %i.nna = add nsw i32 %i.lyo, %.neg.i554         ; 4 uses
  br i1 %.not1193.i, label %.preheader1021.i, label %.preheader1018.lr.ph.i

.preheader1018.lr.ph.i:                           ; preds = %._crit_edge1085.i
  %i.nnb = icmp slt i32 %i.lym, -5
  %i.nnc = zext nneg i32 %i.nmy to i64            ; 11 uses
  %invariant.gep.i555 = getelementptr inbounds nuw [4 x i8], ptr %i.luo, i64 %i.nnc
  %invariant.gep1131.i = getelementptr inbounds nuw [4 x i8], ptr %i.luq, i64 %i.nnc
  %invariant.gep1133.i = getelementptr inbounds nuw [4 x i8], ptr %i.lur, i64 %i.nnc
  %invariant.gep1135.i = getelementptr inbounds nuw [4 x i8], ptr %i.lus, i64 %i.nnc
  %invariant.gep1137.i = getelementptr inbounds nuw [4 x i8], ptr %i.lut, i64 %i.nnc
  %i.nnd = add nsw i32 %i.nna, -1                 ; 3 uses
  %i.nne = icmp slt i32 %i.nmy, %i.nnd            ; 2 uses
  %brmerge.i556 = select i1 %i.lwc, i1 true, i1 %i.nnb
  %i.nnf = add nsw i32 %i.lyn, 6                  ; 3 uses
  %i.nng = sext i32 %i.nnf to i64                 ; 6 uses
  %i.nnh = shl nuw nsw i64 %i.nnc, 2              ; 4 uses
  %scevgep3938 = getelementptr i8, ptr %scevgep3937.a, i64 %i.nnh ; 2 uses
  %i.nni = add nsw i32 %.neg.i554, 6
  %i.nnj = add i32 %i.nni, %i.lyn
  %i.nnk = sub i32 %i.nnj, %i.nmy
  %i.nnl = lshr i32 %i.nnk, 1
  %i.nnm = zext nneg i32 %i.nnl to i64
  %i.nnn = shl nuw nsw i64 %i.nnm, 3              ; 2 uses
  %i.nno = getelementptr i8, ptr %scevgep3940.a, i64 %i.nnn
  %scevgep3941.a = getelementptr i8, ptr %i.nno, i64 %i.nnh ; 2 uses
  %.reass = or disjoint i64 %i.nnh, %invariant.op
  %i.nnp = add nuw nsw i64 %i.lxb, %i.nnn
  %i.nnq = add nuw nsw i64 %i.nnp, %i.nnh
  %i.nnr = add nsw i32 %.neg.i554, 6
  %i.nns = add i32 %i.nnr, %i.lyn
  %i.nnt = sub i32 %i.nns, %i.nmy
  %i.nnu = lshr i32 %i.nnt, 1
  %i.nnv = zext nneg i32 %i.nnu to i64
  %i.nnw = shl nuw nsw i64 %i.nnv, 3              ; 2 uses
  %i.nnx = add nuw nsw i64 %i.lxc, %i.nnw
  %i.nny = shl nuw nsw i64 %i.nnc, 2              ; 3 uses
  %i.nnz = add nuw nsw i64 %i.nnx, %i.nny
  %scevgep4007.a = getelementptr i8, ptr %scevgep4006.a, i64 %i.nny ; 2 uses
  %i.noa = getelementptr i8, ptr %scevgep4009, i64 %i.nnw
  %scevgep4010 = getelementptr i8, ptr %i.noa, i64 %i.nny ; 2 uses
  %min.iters.check4101 = icmp ult i32 %i.nnf, 8
  %n.vec4103 = and i64 %i.nng, -8                 ; 3 uses
  %i.nob = or disjoint i64 %n.vec4103, 1
  %cmp.n4126 = icmp eq i64 %n.vec4103, %i.nng
  %min.iters.check4073 = icmp ult i32 %i.nnf, 8
  %n.vec4075 = and i64 %i.nng, -8                 ; 3 uses
  %i.noc = or disjoint i64 %n.vec4075, 1
  %cmp.n4098 = icmp eq i64 %n.vec4075, %i.nng
  %i.nod = add i32 %.neg.i554, %i.lyn
  %i.noe = add i32 %i.nod, 6
  %i.nof = sub i32 %i.noe, %i.nmy                 ; 2 uses
  %i.nog = lshr i32 %i.nof, 1
  %narrow = add nuw i32 %i.nog, 1
  %i.noh = zext i32 %narrow to i64                ; 2 uses
  %min.iters.check4024 = icmp ult i32 %i.nof, 16
  %i.noi = and i64 %i.noh, 7                      ; 2 uses
  %i.noj = icmp eq i64 %i.noi, 0
  %i.nok = select i1 %i.noj, i64 8, i64 %i.noi
  %n.vec4026 = sub nsw i64 %i.noh, %i.nok         ; 3 uses
  %i.nol = trunc i64 %n.vec4026 to i32
end_hunk_2
