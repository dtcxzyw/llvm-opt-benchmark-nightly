Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a
  %strided.vec3784 = shufflevector <8 x float> %wide.vec3783, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.plo = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3782, %strided.vec3784
  %i.plp = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.plo)
  %i.plq = fadd reassoc nsz arcp contract afn <4 x float> %i.plp, splat (float 1.000000e+00) ; 2 uses
  %i.plr = fadd reassoc nsz arcp contract afn <4 x float> %i.plq, %i.pll
  %i.pls = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.plr ; 2 uses
  %i.plt = getelementptr inbounds nuw i8, ptr %i.pkt, i64 1088
  %wide.vec3785 = load <8 x float>, ptr %i.plt, align 4, !tbaa !12, !alias.scope !579, !noalias !549
  %strided.vec3786 = shufflevector <8 x float> %wide.vec3785, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.plu = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3786, %strided.vec3771
  %i.plv = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.plu)
  %i.plw = fadd reassoc nsz arcp contract afn <4 x float> %i.plq, %i.plv
  %i.plx = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.plw ; 2 uses
  %i.ply = getelementptr inbounds i8, ptr %i.pks, i64 -4
  %wide.vec3787 = load <8 x float>, ptr %i.ply, align 4, !tbaa !12, !alias.scope !581, !noalias !549
  %strided.vec3788 = shufflevector <8 x float> %wide.vec3787, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.plz = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3775, %strided.vec3788
  %i.pma = fmul reassoc nsz arcp contract afn <4 x float> %i.plz, %i.pld
  %i.pmb = getelementptr inbounds nuw i8, ptr %i.pks, i64 4
  %wide.vec3789 = load <8 x float>, ptr %i.pmb, align 4, !tbaa !12, !alias.scope !581, !noalias !549
  %strided.vec3790 = shufflevector <8 x float> %wide.vec3789, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pmc = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3773, %strided.vec3790
  %i.pmd = fmul reassoc nsz arcp contract afn <4 x float> %i.pmc, %i.pli
  %i.pme = fadd reassoc nsz arcp contract afn <4 x float> %i.pmd, %i.pma
  %i.pmf = getelementptr inbounds i8, ptr %i.pks, i64 -544
  %wide.vec3791 = load <8 x float>, ptr %i.pmf, align 4, !tbaa !12, !alias.scope !581, !noalias !549
  %strided.vec3792 = shufflevector <8 x float> %wide.vec3791, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pmg = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3784, %strided.vec3792
  %i.pmh = fmul reassoc nsz arcp contract afn <4 x float> %i.pmg, %i.pls
  %i.pmi = fadd reassoc nsz arcp contract afn <4 x float> %i.pme, %i.pmh
  %i.pmj = getelementptr inbounds nuw i8, ptr %i.pks, i64 544
  %wide.vec3793 = load <8 x float>, ptr %i.pmj, align 4, !tbaa !12, !alias.scope !581, !noalias !549
  %strided.vec3794 = shufflevector <8 x float> %wide.vec3793, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pmk = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3782, %strided.vec3794
  %i.pml = fmul reassoc nsz arcp contract afn <4 x float> %i.pmk, %i.plx
  %i.pmm = fadd reassoc nsz arcp contract afn <4 x float> %i.pmi, %i.pml
  %i.pmn = fadd reassoc nsz arcp contract afn <4 x float> %i.pli, %i.pld
  %i.pmo = fadd reassoc nsz arcp contract afn <4 x float> %i.pmn, %i.pls
  %i.pmp = fadd reassoc nsz arcp contract afn <4 x float> %i.pmo, %i.plx
  %i.pmq = fdiv reassoc nsz arcp contract afn <4 x float> %i.pmm, %i.pmp
  %i.pmr = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3776, %i.pmq
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.pmr, <4 x ptr> align 4 %wide.gep3767, <4 x i1> splat (i1 true)), !tbaa !12, !alias.scope !581, !noalias !582
  %index.next3795 = add nuw i64 %index3765, 4     ; 2 uses
  %vec.ind.next3796 = add nuw nsw <4 x i64> %vec.ind3766, splat (i64 8)
  %i.pms = icmp eq i64 %index.next3795, %n.vec3760
  br i1 %i.pms, label %scalar.ph3757.preheader, label %vector.body3764, !llvm.loop !386

._crit_edge1162.i:                                ; preds = %scalar.ph3757, %.lr.ph1164.i
  %indvars.iv.next1307.i = add nuw nsw i64 %indvars.iv1306.i, 1 ; 2 uses
  %exitcond1154.not = icmp eq i64 %indvars.iv.next1307.i, %i.lww
  %indvar.next3741 = add i64 %indvar3740, 1
  br i1 %exitcond1154.not, label %._crit_edge1165.i.loopexit, label %.lr.ph1164.i

scalar.ph3757:                                    ; preds = %scalar.ph3757.preheader, %scalar.ph3757
  %indvars.iv1303.i = phi i64 [ %indvars.iv.next1304.i, %scalar.ph3757 ], [ %indvars.iv1303.i.ph, %scalar.ph3757.preheader ] ; 4 uses
  %i.pmt = getelementptr inbounds nuw [4 x i8], ptr %i.pix, i64 %indvars.iv1303.i ; 5 uses
  %i.pmu = getelementptr inbounds nuw [4 x i8], ptr %i.pjb, i64 %indvars.iv1303.i ; 5 uses
  %i.pmv = getelementptr inbounds nuw [4 x i8], ptr %i.pjf, i64 %indvars.iv1303.i ; 5 uses
  %i.pmw = load float, ptr %i.pmt, align 4, !tbaa !12, !noalias !549
  %i.pmx = getelementptr inbounds nuw i8, ptr %i.pmt, i64 544
  %i.pmy = getelementptr inbounds i8, ptr %i.pmt, i64 -544
  %i.pmz = getelementptr inbounds i8, ptr %i.pmt, i64 -4
  %i.pna = getelementptr inbounds nuw i8, ptr %i.pmt, i64 4
  %i.pnb = load float, ptr %i.pmx, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.pnc = load float, ptr %i.pmy, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.pnd = load float, ptr %i.pmz, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.pne = load float, ptr %i.pna, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.pnf = fsub reassoc nsz arcp contract afn float %i.pnb, %i.pnc
  %i.png = fsub reassoc nsz arcp contract afn float %i.pne, %i.pnd
  %i.pnh = insertelement <2 x float> poison, float %i.png, i64 0
  %i.pni = insertelement <2 x float> %i.pnh, float %i.pnf, i64 1
  %i.pnj = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.pni)
  %i.pnk = shufflevector <2 x float> %i.pnj, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.pnl = fadd reassoc nsz arcp contract afn <4 x float> %i.pnk, splat (float 1.000000e+00)
  %i.pnm = load float, ptr %i.pmv, align 4, !tbaa !12, !noalias !549
  %i.pnn = getelementptr inbounds nuw i8, ptr %i.pmv, i64 1088
  %i.pno = getelementptr inbounds i8, ptr %i.pmv, i64 -1088
  %i.pnp = getelementptr inbounds i8, ptr %i.pmv, i64 -8
  %i.pnq = getelementptr inbounds nuw i8, ptr %i.pmv, i64 8
  %i.pnr = load float, ptr %i.pnn, align 4, !tbaa !12, !noalias !549
  %i.pns = load float, ptr %i.pno, align 4, !tbaa !12, !noalias !549
  %i.pnt = load float, ptr %i.pnp, align 4, !tbaa !12, !noalias !549
  %i.pnu = load float, ptr %i.pnq, align 4, !tbaa !12, !noalias !549
  %i.pnv = insertelement <4 x float> poison, float %i.pnu, i64 0
  %i.pnw = insertelement <4 x float> %i.pnv, float %i.pnt, i64 1
  %i.pnx = insertelement <4 x float> %i.pnw, float %i.pns, i64 2
  %i.pny = insertelement <4 x float> %i.pnx, float %i.pnr, i64 3
  %i.pnz = insertelement <4 x float> poison, float %i.pnm, i64 0
  %i.poa = shufflevector <4 x float> %i.pnz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pob = fsub reassoc nsz arcp contract afn <4 x float> %i.pny, %i.poa
  %i.poc = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pob)
  %i.pod = fadd reassoc nsz arcp contract afn <4 x float> %i.pnl, %i.poc
  %i.poe = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pod ; 2 uses
  %i.pof = getelementptr inbounds nuw i8, ptr %i.pmu, i64 544
  %i.pog = getelementptr inbounds i8, ptr %i.pmu, i64 -544
  %i.poh = getelementptr inbounds i8, ptr %i.pmu, i64 -4
  %i.poi = getelementptr inbounds nuw i8, ptr %i.pmu, i64 4
  %i.poj = load float, ptr %i.pof, align 4, !tbaa !12, !noalias !549
  %i.pok = load float, ptr %i.pog, align 4, !tbaa !12, !noalias !549
  %i.pol = load float, ptr %i.poh, align 4, !tbaa !12, !noalias !549
  %i.pom = load float, ptr %i.poi, align 4, !tbaa !12, !noalias !549
  %i.pon = fsub reassoc nsz arcp contract afn float %i.pnb, %i.poj
  %i.poo = fsub reassoc nsz arcp contract afn float %i.pnc, %i.pok
  %i.pop = fsub reassoc nsz arcp contract afn float %i.pnd, %i.pol
  %i.poq = fsub reassoc nsz arcp contract afn float %i.pne, %i.pom
  %i.por = insertelement <4 x float> poison, float %i.poq, i64 0
  %i.pos = insertelement <4 x float> %i.por, float %i.pop, i64 1
  %i.pot = insertelement <4 x float> %i.pos, float %i.poo, i64 2
  %i.pou = insertelement <4 x float> %i.pot, float %i.pon, i64 3
  %i.pov = fmul reassoc nsz arcp contract afn <4 x float> %i.pou, %i.poe
  %i.pow = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pov)
  %i.pox = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.poe)
  %i.poy = fdiv reassoc nsz arcp contract afn float %i.pow, %i.pox
  %i.poz = fsub reassoc nsz arcp contract afn float %i.pmw, %i.poy
  store float %i.poz, ptr %i.pmu, align 4, !tbaa !12, !noalias !549
  %indvars.iv.next1304.i = add nuw nsw i64 %indvars.iv1303.i, 2 ; 2 uses
  %i.ppa = icmp slt i64 %indvars.iv.next1304.i, %i.oop
  br i1 %i.ppa, label %scalar.ph3757, label %._crit_edge1162.i, !llvm.loop !387

._crit_edge1183.split.i:                          ; preds = %._crit_edge1176.i, %.lr.ph1182.i, %._crit_edge1168.i
  %i.ppb = add nuw nsw i32 %.08871185.i, 1
  %indvars.iv.next1215.i = add i32 %indvars.iv1214.i, 112
  %exitcond1318.not.i = icmp eq i32 %.08871185.i, %smax.i552
  %indvars.iv.next1111 = add nuw i32 %indvars.iv1110, 112
  %indvars.iv.next1114 = add i32 %indvars.iv1113, -112
  br i1 %exitcond1318.not.i, label %._crit_edge1187.i, label %bb.or

.lr.ph1175.i:                                     ; preds = %.lr.ph1175.i.preheader, %._crit_edge1176.i
  %indvars.iv1313.i = phi i64 [ %indvars.iv.next1314.i, %._crit_edge1176.i ], [ %i.lwr, %.lr.ph1175.i.preheader ] ; 2 uses
  %indvars.iv1309.i = phi i32 [ %indvars.iv.next1310.i, %._crit_edge1176.i ], [ %narrow.i, %.lr.ph1175.i.preheader ] ; 2 uses
  %i.ppc = trunc i64 %indvars.iv1313.i to i32
  %i.ppd = mul i32 %i.bo, %i.ppc
  %i.ppe = add i32 %i.ppd, %i.orw
  %i.ppf = shl nsw i32 %i.ppe, 2
  %i.ppg = zext nneg i32 %i.ppf to i64
  %i.pph = getelementptr inbounds nuw [4 x i8], ptr %i.anw, i64 %i.ppg ; 6 uses
  %i.ppi = mul i32 %indvars.iv1309.i, 136
  %i.ppj = add i32 %.reass1178.i, %i.ppi
  %i.ppk = sext i32 %i.ppj to i64                 ; 3 uses
  %i.ppl = getelementptr inbounds [4 x i8], ptr %i.luq, i64 %i.ppk ; 6 uses
  %i.ppm = getelementptr inbounds [4 x i8], ptr %i.lus, i64 %i.ppk ; 6 uses
  %i.ppn = getelementptr inbounds [4 x i8], ptr %i.lut, i64 %i.ppk ; 6 uses
  br i1 %i.osa, label %_calc_gamma.exit979.us.i.preheader, label %.lr.ph1175.split.i.preheader

.lr.ph1175.split.i.preheader:                     ; preds = %.lr.ph1175.i
  br i1 %min.iters.check3698, label %.lr.ph1175.split.i.preheader4625, label %vector.ph3699

vector.ph3699:                                    ; preds = %.lr.ph1175.split.i.preheader
  %i.ppo = getelementptr i8, ptr %i.ppn, i64 %i.osi
  %i.ppp = getelementptr i8, ptr %i.ppm, i64 %i.osi
  %i.ppq = getelementptr i8, ptr %i.ppl, i64 %i.osi
  %i.ppr = getelementptr i8, ptr %i.pph, i64 %i.osj
  br label %vector.body3703

vector.body3703:                                  ; preds = %vector.body3703, %vector.ph3699
  %index3704 = phi i64 [ 0, %vector.ph3699 ], [ %index.next3731, %vector.body3703 ] ; 3 uses
  %i.pps = shl i64 %index3704, 2                  ; 3 uses
  %next.gep3705 = getelementptr i8, ptr %i.ppn, i64 %i.pps
  %next.gep3706 = getelementptr i8, ptr %i.ppm, i64 %i.pps
  %next.gep3707 = getelementptr i8, ptr %i.ppl, i64 %i.pps
  %i.ppt = shl i64 %index3704, 4
  %next.gep3708 = getelementptr i8, ptr %i.pph, i64 %i.ppt
  %wide.load3709 = load <8 x float>, ptr %next.gep3707, align 4, !tbaa !12, !noalias !549
  %i.ppu = fmul reassoc nsz arcp contract afn <8 x float> %wide.load3709, splat (float 6.553500e+04) ; 4 uses
  %i.ppv = fcmp reassoc nsz arcp contract afn uge <8 x float> %i.ppu, zeroinitializer ; 2 uses
  %i.ppw = fcmp reassoc nsz arcp contract afn ule <8 x float> %i.ppu, splat (float f0x477FFEFD)
  %i.ppx = and <8 x i1> %i.ppv, %i.ppw            ; 3 uses
  %i.ppy = fptosi <8 x float> %i.ppu to <8 x i32> ; 2 uses
  %i.ppz = sitofp reassoc nsz arcp contract afn <8 x i32> %i.ppy to <8 x float>
  %i.pqa = fsub reassoc nsz arcp contract afn <8 x float> %i.ppu, %i.ppz
  %i.pqb = sext <8 x i32> %i.ppy to <8 x i64>
  %wide.gep3710 = getelementptr inbounds [4 x i8], ptr %i.orz, <8 x i64> %i.pqb ; 2 uses
  %wide.masked.gather3711 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3710, <8 x i1> %i.ppx, <8 x float> poison), !tbaa !12, !noalias !549 ; 2 uses
  %wide.gep3712 = getelementptr i8, <8 x ptr> %wide.gep3710, i64 4
  %wide.masked.gather3713 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3712, <8 x i1> %i.ppx, <8 x float> poison), !tbaa !12, !noalias !549
  %i.pqc = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3713, %wide.masked.gather3711
  %i.pqd = fmul reassoc nsz arcp contract afn <8 x float> %i.pqc, %i.pqa
  %i.pqe = fadd reassoc nsz arcp contract afn <8 x float> %i.pqd, %wide.masked.gather3711
  %predphi3714 = select <8 x i1> %i.ppx, <8 x float> %i.pqe, <8 x float> splat (float 1.000000e+00)
  %predphi3715 = select <8 x i1> %i.ppv, <8 x float> %predphi3714, <8 x float> zeroinitializer
  %i.pqf = fmul reassoc nsz arcp contract afn <8 x float> %predphi3715, %broadcast.splat3702
  %wide.load3716 = load <8 x float>, ptr %next.gep3706, align 4, !tbaa !12, !noalias !549
  %i.pqg = fmul reassoc nsz arcp contract afn <8 x float> %wide.load3716, splat (float 6.553500e+04) ; 4 uses
  %i.pqh = fcmp reassoc nsz arcp contract afn uge <8 x float> %i.pqg, zeroinitializer ; 2 uses
  %i.pqi = fcmp reassoc nsz arcp contract afn ule <8 x float> %i.pqg, splat (float f0x477FFEFD)
  %i.pqj = and <8 x i1> %i.pqh, %i.pqi            ; 3 uses
  %i.pqk = fptosi <8 x float> %i.pqg to <8 x i32> ; 2 uses
  %i.pql = sitofp reassoc nsz arcp contract afn <8 x i32> %i.pqk to <8 x float>
  %i.pqm = fsub reassoc nsz arcp contract afn <8 x float> %i.pqg, %i.pql
  %i.pqn = sext <8 x i32> %i.pqk to <8 x i64>
  %wide.gep3717 = getelementptr inbounds [4 x i8], ptr %i.orz, <8 x i64> %i.pqn ; 2 uses
  %wide.masked.gather3718 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3717, <8 x i1> %i.pqj, <8 x float> poison), !tbaa !12, !noalias !549 ; 2 uses
  %wide.gep3719 = getelementptr i8, <8 x ptr> %wide.gep3717, i64 4
  %wide.masked.gather3720 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3719, <8 x i1> %i.pqj, <8 x float> poison), !tbaa !12, !noalias !549
  %i.pqo = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3720, %wide.masked.gather3718
  %i.pqp = fmul reassoc nsz arcp contract afn <8 x float> %i.pqo, %i.pqm
  %i.pqq = fadd reassoc nsz arcp contract afn <8 x float> %i.pqp, %wide.masked.gather3718
  %predphi3721 = select <8 x i1> %i.pqj, <8 x float> %i.pqq, <8 x float> splat (float 1.000000e+00)
  %predphi3722 = select <8 x i1> %i.pqh, <8 x float> %predphi3721, <8 x float> zeroinitializer
  %i.pqr = fmul reassoc nsz arcp contract afn <8 x float> %predphi3722, %broadcast.splat3702
  %wide.load3723 = load <8 x float>, ptr %next.gep3705, align 4, !tbaa !12, !noalias !549
  %i.pqs = fmul reassoc nsz arcp contract afn <8 x float> %wide.load3723, splat (float 6.553500e+04) ; 4 uses
  %i.pqt = fcmp reassoc nsz arcp contract afn uge <8 x float> %i.pqs, zeroinitializer ; 2 uses
  %i.pqu = fcmp reassoc nsz arcp contract afn ule <8 x float> %i.pqs, splat (float f0x477FFEFD)
  %i.pqv = and <8 x i1> %i.pqt, %i.pqu            ; 3 uses
  %i.pqw = fptosi <8 x float> %i.pqs to <8 x i32> ; 2 uses
  %i.pqx = sitofp reassoc nsz arcp contract afn <8 x i32> %i.pqw to <8 x float>
  %i.pqy = fsub reassoc nsz arcp contract afn <8 x float> %i.pqs, %i.pqx
  %i.pqz = sext <8 x i32> %i.pqw to <8 x i64>
  %wide.gep3724 = getelementptr inbounds [4 x i8], ptr %i.orz, <8 x i64> %i.pqz ; 2 uses
  %wide.masked.gather3725 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3724, <8 x i1> %i.pqv, <8 x float> poison), !tbaa !12, !noalias !549 ; 2 uses
  %wide.gep3726 = getelementptr i8, <8 x ptr> %wide.gep3724, i64 4
  %wide.masked.gather3727 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3726, <8 x i1> %i.pqv, <8 x float> poison), !tbaa !12, !noalias !549
  %i.pra = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3727, %wide.masked.gather3725
  %i.prb = fmul reassoc nsz arcp contract afn <8 x float> %i.pra, %i.pqy
  %i.prc = fadd reassoc nsz arcp contract afn <8 x float> %i.prb, %wide.masked.gather3725
  %predphi3728 = select nsz <8 x i1> %i.pqv, <8 x float> %i.prc, <8 x float> splat (float 1.000000e+00)
  %predphi3729 = select nsz <8 x i1> %i.pqt, <8 x float> %predphi3728, <8 x float> zeroinitializer
  %i.prd = fmul reassoc nsz arcp contract afn <8 x float> %predphi3729, %broadcast.splat3702
  %i.pre = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.prd, <8 x float> zeroinitializer)
  %6 = shufflevector <8 x float> %i.pqf, <8 x float> %i.pqr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.prf = call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %6, <16 x float> zeroinitializer)
  %i.prg = shufflevector <8 x float> %i.pre, <8 x float> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec3730 = shufflevector <16 x float> %i.prf, <16 x float> %i.prg, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec3730, ptr %next.gep3708, align 4, !tbaa !12, !alias.scope !549, !noalias !550
  %index.next3731 = add nuw i64 %index3704, 8     ; 2 uses
  %i.prh = icmp eq i64 %index.next3731, %n.vec3700
  br i1 %i.prh, label %middle.block3732, label %vector.body3703, !llvm.loop !388

middle.block3732:                                 ; preds = %vector.body3703
  br i1 %cmp.n3733, label %._crit_edge1176.i, label %.lr.ph1175.split.i.preheader4625

.lr.ph1175.split.i.preheader4625:                 ; preds = %.lr.ph1175.split.i.preheader, %middle.block3732
  %.01173.i.ph = phi i32 [ %i.orw, %.lr.ph1175.split.i.preheader ], [ %i.osh, %middle.block3732 ]
  %.08731172.i.ph = phi ptr [ %i.ppn, %.lr.ph1175.split.i.preheader ], [ %i.ppo, %middle.block3732 ]
  %.08741171.i.ph = phi ptr [ %i.ppm, %.lr.ph1175.split.i.preheader ], [ %i.ppp, %middle.block3732 ]
  %.08751170.i.ph = phi ptr [ %i.ppl, %.lr.ph1175.split.i.preheader ], [ %i.ppq, %middle.block3732 ]
  %.08761169.i.ph = phi ptr [ %i.pph, %.lr.ph1175.split.i.preheader ], [ %i.ppr, %middle.block3732 ]
  br label %.lr.ph1175.split.i

_calc_gamma.exit979.us.i.preheader:               ; preds = %.lr.ph1175.i
  br i1 %min.iters.check3675, label %_calc_gamma.exit979.us.i.preheader4624, label %vector.ph3676

vector.ph3676:                                    ; preds = %_calc_gamma.exit979.us.i.preheader
  %i.pri = getelementptr i8, ptr %i.ppn, i64 %i.osq
  %i.prj = getelementptr i8, ptr %i.ppm, i64 %i.osq
  %i.prk = getelementptr i8, ptr %i.ppl, i64 %i.osq
  %i.prl = getelementptr i8, ptr %i.pph, i64 %i.osr
  br label %vector.body3680

vector.body3680:                                  ; preds = %vector.body3680, %vector.ph3676
  %index3681 = phi i64 [ 0, %vector.ph3676 ], [ %index.next3689, %vector.body3680 ] ; 3 uses
  %i.prm = shl i64 %index3681, 2                  ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ppn, i64 %i.prm
  %next.gep3682 = getelementptr i8, ptr %i.ppm, i64 %i.prm
  %next.gep3683 = getelementptr i8, ptr %i.ppl, i64 %i.prm
  %i.prn = shl i64 %index3681, 4
  %next.gep3684 = getelementptr i8, ptr %i.pph, i64 %i.prn
  %wide.load3685 = load <8 x float>, ptr %next.gep3683, align 4, !tbaa !12, !noalias !549
  %wide.load3686 = load <8 x float>, ptr %next.gep3682, align 4, !tbaa !12, !noalias !549
  %wide.load3687 = load <8 x float>, ptr %next.gep, align 4, !tbaa !12, !noalias !549
  %7 = fmul reassoc nsz arcp contract afn <8 x float> %wide.load3687, %broadcast.splat3679
  %8 = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %7, <8 x float> zeroinitializer)
  %9 = shufflevector <8 x float> %wide.load3685, <8 x float> %wide.load3686, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %10 = fmul reassoc nsz arcp contract afn <16 x float> %9, %i.avy
  %i.pro = call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %10, <16 x float> zeroinitializer)
  %i.prp = shufflevector <8 x float> %8, <8 x float> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec3688 = shufflevector <16 x float> %i.pro, <16 x float> %i.prp, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec3688, ptr %next.gep3684, align 4, !tbaa !12, !alias.scope !549, !noalias !550
  %index.next3689 = add nuw i64 %index3681, 8     ; 2 uses
  %i.prq = icmp eq i64 %index.next3689, %n.vec3677
  br i1 %i.prq, label %middle.block3690, label %vector.body3680, !llvm.loop !389

middle.block3690:                                 ; preds = %vector.body3680
  br i1 %cmp.n3691, label %._crit_edge1176.i, label %_calc_gamma.exit979.us.i.preheader4624

_calc_gamma.exit979.us.i.preheader4624:           ; preds = %_calc_gamma.exit979.us.i.preheader, %middle.block3690
  %.01173.us.i.ph = phi i32 [ %i.orw, %_calc_gamma.exit979.us.i.preheader ], [ %i.osp, %middle.block3690 ]
  %.08731172.us.i.ph = phi ptr [ %i.ppn, %_calc_gamma.exit979.us.i.preheader ], [ %i.pri, %middle.block3690 ]
  %.08741171.us.i.ph = phi ptr [ %i.ppm, %_calc_gamma.exit979.us.i.preheader ], [ %i.prj, %middle.block3690 ]
  %.08751170.us.i.ph = phi ptr [ %i.ppl, %_calc_gamma.exit979.us.i.preheader ], [ %i.prk, %middle.block3690 ]
  %.08761169.us.i.ph = phi ptr [ %i.pph, %_calc_gamma.exit979.us.i.preheader ], [ %i.prl, %middle.block3690 ]
  br label %_calc_gamma.exit979.us.i

_calc_gamma.exit979.us.i:                         ; preds = %_calc_gamma.exit979.us.i.preheader4624, %_calc_gamma.exit979.us.i
  %.01173.us.i = phi i32 [ %i.psc, %_calc_gamma.exit979.us.i ], [ %.01173.us.i.ph, %_calc_gamma.exit979.us.i.preheader4624 ]
  %.08731172.us.i = phi ptr [ %i.psg, %_calc_gamma.exit979.us.i ], [ %.08731172.us.i.ph, %_calc_gamma.exit979.us.i.preheader4624 ] ; 2 uses
  %.08741171.us.i = phi ptr [ %i.psf, %_calc_gamma.exit979.us.i ], [ %.08741171.us.i.ph, %_calc_gamma.exit979.us.i.preheader4624 ] ; 2 uses
  %.08751170.us.i = phi ptr [ %i.pse, %_calc_gamma.exit979.us.i ], [ %.08751170.us.i.ph, %_calc_gamma.exit979.us.i.preheader4624 ] ; 2 uses
  %.08761169.us.i = phi ptr [ %i.psd, %_calc_gamma.exit979.us.i ], [ %.08761169.us.i.ph, %_calc_gamma.exit979.us.i.preheader4624 ] ; 4 uses
  %i.prr = load float, ptr %.08751170.us.i, align 4, !tbaa !12, !noalias !549
  %i.prs = load float, ptr %.08741171.us.i, align 4, !tbaa !12, !noalias !549
  %i.prt = insertelement <2 x float> poison, float %i.prr, i64 0
  %i.pru = insertelement <2 x float> %i.prt, float %i.prs, i64 1
  %i.prv = fmul reassoc nsz arcp contract afn <2 x float> %i.pru, %i.awa
  %i.prw = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.prv, <2 x float> zeroinitializer)
  store <2 x float> %i.prw, ptr %.08761169.us.i, align 4, !tbaa !12, !alias.scope !549, !noalias !550
  %i.prx = load float, ptr %.08731172.us.i, align 4, !tbaa !12, !noalias !549
  %i.pry = fmul reassoc nsz arcp contract afn float %i.prx, %i.eh
  %i.prz = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pry, float 0.000000e+00)
  %i.psa = getelementptr inbounds nuw i8, ptr %.08761169.us.i, i64 8
  store float %i.prz, ptr %i.psa, align 4, !tbaa !12, !alias.scope !549, !noalias !550
  %i.psb = getelementptr inbounds nuw i8, ptr %.08761169.us.i, i64 12
  store float 0.000000e+00, ptr %i.psb, align 4, !tbaa !12, !alias.scope !549, !noalias !550
  %i.psc = add nuw nsw i32 %.01173.us.i, 1        ; 2 uses
  %i.psd = getelementptr inbounds nuw i8, ptr %.08761169.us.i, i64 16
  %i.pse = getelementptr inbounds nuw i8, ptr %.08751170.us.i, i64 4
  %i.psf = getelementptr inbounds nuw i8, ptr %.08741171.us.i, i64 4
  %i.psg = getelementptr inbounds nuw i8, ptr %.08731172.us.i, i64 4
  %i.psh = icmp slt i32 %i.psc, %i.orx
  br i1 %i.psh, label %_calc_gamma.exit979.us.i, label %._crit_edge1176.i, !llvm.loop !390

._crit_edge1176.i:                                ; preds = %_calc_gamma.exit981.i, %_calc_gamma.exit979.us.i, %middle.block3732, %middle.block3690
  %indvars.iv.next1314.i = add nuw nsw i64 %indvars.iv1313.i, 1 ; 2 uses
  %indvars.iv.next1310.i = add i32 %indvars.iv1309.i, 1
  %i.psi = trunc nuw i64 %indvars.iv.next1314.i to i32
  %i.psj = icmp sgt i32 %i.lwm, %i.psi
  br i1 %i.psj, label %.lr.ph1175.i, label %._crit_edge1183.split.i

.lr.ph1175.split.i:                               ; preds = %.lr.ph1175.split.i.preheader4625, %_calc_gamma.exit981.i
  %.01173.i = phi i32 [ %i.pum, %_calc_gamma.exit981.i ], [ %.01173.i.ph, %.lr.ph1175.split.i.preheader4625 ]
  %.08731172.i = phi ptr [ %i.puq, %_calc_gamma.exit981.i ], [ %.08731172.i.ph, %.lr.ph1175.split.i.preheader4625 ] ; 2 uses
  %.08741171.i = phi ptr [ %i.pup, %_calc_gamma.exit981.i ], [ %.08741171.i.ph, %.lr.ph1175.split.i.preheader4625 ] ; 2 uses
  %.08751170.i = phi ptr [ %i.puo, %_calc_gamma.exit981.i ], [ %.08751170.i.ph, %.lr.ph1175.split.i.preheader4625 ] ; 2 uses
  %.08761169.i = phi ptr [ %i.pun, %_calc_gamma.exit981.i ], [ %.08761169.i.ph, %.lr.ph1175.split.i.preheader4625 ] ; 5 uses
  %i.psk = load float, ptr %.08751170.i, align 4, !tbaa !12, !noalias !549
  %i.psl = fmul reassoc nsz arcp contract afn float %i.psk, 6.553500e+04 ; 4 uses
  %i.psm = fcmp reassoc nsz arcp contract afn olt float %i.psl, 0.000000e+00
  br i1 %i.psm, label %bb.qb, label %bb.pz

bb.pz:                                            ; preds = %.lr.ph1175.split.i
  %i.psn = fcmp reassoc nsz arcp contract afn ogt float %i.psl, f0x477FFEFD
  br i1 %i.psn, label %bb.qb, label %bb.qa

bb.qa:                                            ; preds = %bb.pz
  %i.pso = fptosi float %i.psl to i32             ; 2 uses
  %i.psp = sitofp reassoc nsz arcp contract afn i32 %i.pso to float
  %i.psq = fsub reassoc nsz arcp contract afn float %i.psl, %i.psp
  %i.psr = sext i32 %i.pso to i64
  %i.pss = getelementptr inbounds [4 x i8], ptr %i.orz, i64 %i.psr ; 2 uses
  %i.pst = load float, ptr %i.pss, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.psu = getelementptr i8, ptr %i.pss, i64 4
  %i.psv = load float, ptr %i.psu, align 4, !tbaa !12, !noalias !549
  %i.psw = fsub reassoc nsz arcp contract afn float %i.psv, %i.pst
  %i.psx = fmul reassoc nsz arcp contract afn float %i.psw, %i.psq
  %i.psy = fadd reassoc nsz arcp contract afn float %i.psx, %i.pst
  br label %bb.qb

bb.qb:                                            ; preds = %bb.qa, %bb.pz, %.lr.ph1175.split.i
  %.1.i976.ph.i = phi float [ 1.000000e+00, %bb.pz ], [ 0.000000e+00, %.lr.ph1175.split.i ], [ %i.psy, %bb.qa ]
  %i.psz = fmul reassoc nsz arcp contract afn float %.1.i976.ph.i, %i.eh
  %i.pta = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.psz, float 0.000000e+00)
  store float %i.pta, ptr %.08761169.i, align 4, !tbaa !12, !alias.scope !549, !noalias !550
  %i.ptb = load float, ptr %.08741171.i, align 4, !tbaa !12, !noalias !549
  %i.ptc = fmul reassoc nsz arcp contract afn float %i.ptb, 6.553500e+04 ; 4 uses
  %i.ptd = fcmp reassoc nsz arcp contract afn olt float %i.ptc, 0.000000e+00
  br i1 %i.ptd, label %bb.qe, label %bb.qc

bb.qc:                                            ; preds = %bb.qb
  %i.pte = fcmp reassoc nsz arcp contract afn ogt float %i.ptc, f0x477FFEFD
  br i1 %i.pte, label %bb.qe, label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  %i.ptf = fptosi float %i.ptc to i32             ; 2 uses
  %i.ptg = sitofp reassoc nsz arcp contract afn i32 %i.ptf to float
  %i.pth = fsub reassoc nsz arcp contract afn float %i.ptc, %i.ptg
  %i.pti = sext i32 %i.ptf to i64
  %i.ptj = getelementptr inbounds [4 x i8], ptr %i.orz, i64 %i.pti ; 2 uses
  %i.ptk = load float, ptr %i.ptj, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.ptl = getelementptr i8, ptr %i.ptj, i64 4
  %i.ptm = load float, ptr %i.ptl, align 4, !tbaa !12, !noalias !549
  %i.ptn = fsub reassoc nsz arcp contract afn float %i.ptm, %i.ptk
  %i.pto = fmul reassoc nsz arcp contract afn float %i.ptn, %i.pth
  %i.ptp = fadd reassoc nsz arcp contract afn float %i.pto, %i.ptk
  br label %bb.qe

bb.qe:                                            ; preds = %bb.qd, %bb.qc, %bb.qb
  %.1.i978.ph.i = phi float [ 1.000000e+00, %bb.qc ], [ 0.000000e+00, %bb.qb ], [ %i.ptp, %bb.qd ]
  %i.ptq = fmul reassoc nsz arcp contract afn float %.1.i978.ph.i, %i.eh
  %i.ptr = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ptq, float 0.000000e+00)
  %i.pts = getelementptr inbounds nuw i8, ptr %.08761169.i, i64 4
  store float %i.ptr, ptr %i.pts, align 4, !tbaa !12, !alias.scope !549, !noalias !550
  %i.ptt = load float, ptr %.08731172.i, align 4, !tbaa !12, !noalias !549
  %i.ptu = fmul reassoc nsz arcp contract afn float %i.ptt, 6.553500e+04 ; 4 uses
  %i.ptv = fcmp reassoc nsz arcp contract afn olt float %i.ptu, 0.000000e+00
  br i1 %i.ptv, label %_calc_gamma.exit981.i, label %bb.qf

bb.qf:                                            ; preds = %bb.qe
  %i.ptw = fcmp reassoc nsz arcp contract afn ogt float %i.ptu, f0x477FFEFD
  br i1 %i.ptw, label %_calc_gamma.exit981.i, label %bb.qg

bb.qg:                                            ; preds = %bb.qf
  %i.ptx = fptosi float %i.ptu to i32             ; 2 uses
  %i.pty = sitofp reassoc nsz arcp contract afn i32 %i.ptx to float
  %i.ptz = fsub reassoc nsz arcp contract afn float %i.ptu, %i.pty
  %i.pua = sext i32 %i.ptx to i64
  %i.pub = getelementptr inbounds [4 x i8], ptr %i.orz, i64 %i.pua ; 2 uses
  %i.puc = load float, ptr %i.pub, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.pud = getelementptr i8, ptr %i.pub, i64 4
  %i.pue = load float, ptr %i.pud, align 4, !tbaa !12, !noalias !549
  %i.puf = fsub reassoc nsz arcp contract afn float %i.pue, %i.puc
  %i.pug = fmul reassoc nsz arcp contract afn float %i.puf, %i.ptz
  %i.puh = fadd reassoc nsz arcp contract afn float %i.pug, %i.puc
  br label %_calc_gamma.exit981.i

_calc_gamma.exit981.i:                            ; preds = %bb.qg, %bb.qf, %bb.qe
  %.1.i980.i = phi nsz float [ 1.000000e+00, %bb.qf ], [ %i.puh, %bb.qg ], [ 0.000000e+00, %bb.qe ]
  %i.pui = fmul reassoc nsz arcp contract afn float %.1.i980.i, %i.eh
  %i.puj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pui, float 0.000000e+00)
  %i.puk = getelementptr inbounds nuw i8, ptr %.08761169.i, i64 8
  store float %i.puj, ptr %i.puk, align 4, !tbaa !12, !alias.scope !549, !noalias !550
  %i.pul = getelementptr inbounds nuw i8, ptr %.08761169.i, i64 12
  store float 0.000000e+00, ptr %i.pul, align 4, !tbaa !12, !alias.scope !549, !noalias !550
  %i.pum = add nuw nsw i32 %.01173.i, 1           ; 2 uses
  %i.pun = getelementptr inbounds nuw i8, ptr %.08761169.i, i64 16
  %i.puo = getelementptr inbounds nuw i8, ptr %.08751170.i, i64 4
  %i.pup = getelementptr inbounds nuw i8, ptr %.08741171.i, i64 4
  %i.puq = getelementptr inbounds nuw i8, ptr %.08731172.i, i64 4
  %i.pur = icmp slt i32 %i.pum, %i.orx
  br i1 %i.pur, label %.lr.ph1175.split.i, label %._crit_edge1176.i, !llvm.loop !391

bb.qh:                                            ; preds = %bb.nx
  %i.pus = load float, ptr %i.aox, align 8, !tbaa !141
  tail call fastcc void @demosaic_ppg(ptr noundef %i.anw, ptr noundef %i.axt, i32 noundef %i.bo, i32 noundef %i.axj, i32 noundef %.fr1063, float noundef %i.pus, i32 noundef 100000)
  br label %demosaic_box3.exit

bb.qi:                                            ; preds = %bb.nx
  tail call void @amaze_demosaic(ptr noundef %i.axt, ptr noundef nonnull %i.anw, i32 noundef %i.bo, i32 noundef %i.axj, i32 noundef %.fr1063, float noundef %i.ek) #27
  br label %demosaic_box3.exit

demosaic_box3.exit:                               ; preds = %._crit_edge.split.i, %._crit_edge.split.us.us.i, %._crit_edge.i476, %._crit_edge.i, %bb.hy, %bb.hx, %bb.hh, %._crit_edge1190.split.i, %bb.oh, %._crit_edge942.split.i, %bb.ny, %xtrans_fdc_interpolate.exit, %bb.nt, %xtrans_markesteijn_interpolate.exit, %bb.hw, %bb.nw, %bb.nv, %bb.qi, %bb.qh
  br i1 %i.dv, label %bb.qj, label %_capture_sharpen.exit

bb.qj:                                            ; preds = %demosaic_box3.exit
  %i.put = load i32, ptr %4, align 4, !tbaa !36
  %i.puu = load i32, ptr %i.aqo, align 4, !tbaa !37
  %i.puv = add nsw i32 %i.puu, %i.axh
  %.val452 = load ptr, ptr %i.r, align 8, !tbaa !446 ; 7 uses
  %.val453 = load ptr, ptr %i.y, align 16, !tbaa !56 ; 6 uses
  %i.puw = sext i32 %i.axj to i64                 ; 11 uses
  %i.pux = mul nsw i64 %i.puw, %i.aoc             ; 17 uses
  %i.puy = load ptr, ptr %i.aqp, align 16, !tbaa !583
  %i.puz = getelementptr i8, ptr %.val452, i64 644
  %.val.i574 = load i32, ptr %i.puz, align 4, !tbaa !454
  %i.pva = and i32 %.val.i574, 8
  %.not.i575 = icmp eq i32 %i.pva, 0
  br i1 %.not.i575, label %bb.ql, label %bb.qk

bb.qk:                                            ; preds = %bb.qj
  %i.pvb = getelementptr inbounds nuw i8, ptr %.val452, i64 544
  %i.pvc = load i32, ptr %i.pvb, align 16, !tbaa !584
  %i.pvd = getelementptr inbounds nuw i8, ptr %.val452, i64 548
  %i.pve = load i32, ptr %i.pvd, align 4, !tbaa !585
  %i.pvf = tail call i32 @dt_mipmap_cache_get_matching_size(i32 noundef %i.pvc, i32 noundef %i.pve) #27
  %i.pvg = tail call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.187) #27
  %i.pvh = tail call i32 @dt_mipmap_cache_get_min_mip_from_pref(ptr noundef %i.pvg) #27
  %.not16.i = icmp ult i32 %i.pvf, %i.pvh
  br i1 %.not16.i, label %_capture_sharpen.exit, label %bb.ql

bb.ql:                                            ; preds = %bb.qk, %bb.qj
  %i.pvi = getelementptr inbounds nuw i8, ptr %.val453, i64 144
  %i.pvj = load i32, ptr %i.pvi, align 8, !tbaa !83
  %i.pvk = or i32 %.0389, %i.pvj
  %or.cond3.not.i = icmp eq i32 %i.pvk, 0
  br i1 %or.cond3.not.i, label %_capture_sharpen.exit, label %bb.qm

bb.qm:                                            ; preds = %bb.ql
end_hunk_0
