Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/Demosaic?download=true
inline.NumInlined: 6129
inline.NumDeleted: 2278
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 81
begin_hunk_0_@"_ZZN3tevL13amazeDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEdiiENK3$_0clEi":bb.a
  %i.dzc = icmp eq i32 %i.dzb, 0
  br i1 %i.dzc, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  br i1 %i.dyq, label %.lr.ph2746, label %.loopexit2566

.lr.ph2746:                                       ; preds = %bb.bv, %.lr.ph2746
  %indvars.iv2990 = phi i64 [ %indvars.iv.next2991, %.lr.ph2746 ], [ %i.dyw, %bb.bv ] ; 3 uses
  %.022482743 = phi i32 [ %i.eaq, %.lr.ph2746 ], [ 6, %bb.bv ]
  %i.dzd = getelementptr [4 x i8], ptr %i.z, i64 %indvars.iv2990 ; 9 uses
  %i.dze = getelementptr i8, ptr %i.dzd, i64 -636
  %i.dzf = load float, ptr %i.dze, align 4, !tbaa !109
  %i.dzg = getelementptr inbounds nuw i8, ptr %i.dzd, i64 636
  %i.dzh = load float, ptr %i.dzg, align 4, !tbaa !109
  %i.dzi = fsub float %i.dzf, %i.dzh
  %i.dzj = tail call float @llvm.fabs.f32(float %i.dzi)
  %i.dzk = lshr exact i64 %indvars.iv2990, 1      ; 4 uses
  %i.dzl = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.dzk
  store float %i.dzj, ptr %i.dzl, align 4, !tbaa !109
  %i.dzm = getelementptr inbounds nuw i8, ptr %i.dzd, i64 644
  %i.dzn = load float, ptr %i.dzm, align 4, !tbaa !109
  %i.dzo = getelementptr i8, ptr %i.dzd, i64 -644
  %i.dzp = load float, ptr %i.dzo, align 4, !tbaa !109
  %i.dzq = fsub float %i.dzn, %i.dzp
  %i.dzr = tail call float @llvm.fabs.f32(float %i.dzq)
  %i.dzs = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.dzk
  store float %i.dzr, ptr %i.dzs, align 4, !tbaa !109
  %i.dzt = getelementptr inbounds nuw i8, ptr %i.dzd, i64 4 ; 2 uses
  %i.dzu = load float, ptr %i.dzt, align 4, !tbaa !109 ; 2 uses
  %i.dzv = getelementptr inbounds nuw i8, ptr %i.dzd, i64 640
  %i.dzw = load float, ptr %i.dzv, align 8, !tbaa !109
  %i.dzx = fsub float %i.dzu, %i.dzw              ; 2 uses
  %i.dzy = fmul float %i.dzx, %i.dzx
  %i.dzz = getelementptr i8, ptr %i.dzd, i64 -632
  %i.eaa = load float, ptr %i.dzz, align 8, !tbaa !109
  %i.eab = fsub float %i.dzu, %i.eaa              ; 2 uses
  %i.eac = fmul float %i.eab, %i.eab
  %i.ead = fadd float %i.dzy, %i.eac
  %i.eae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.dzk
  store float %i.ead, ptr %i.eae, align 4, !tbaa !109
  %i.eaf = load float, ptr %i.dzt, align 4, !tbaa !109 ; 2 uses
  %i.eag = getelementptr i8, ptr %i.dzd, i64 -640
  %i.eah = load float, ptr %i.eag, align 8, !tbaa !109
  %i.eai = fsub float %i.eaf, %i.eah              ; 2 uses
  %i.eaj = fmul float %i.eai, %i.eai
  %i.eak = getelementptr inbounds nuw i8, ptr %i.dzd, i64 648
  %i.eal = load float, ptr %i.eak, align 8, !tbaa !109
  %i.eam = fsub float %i.eaf, %i.eal              ; 2 uses
  %i.ean = fmul float %i.eam, %i.eam
  %i.eao = fadd float %i.eaj, %i.ean
  %i.eap = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.dzk
  store float %i.eao, ptr %i.eap, align 4, !tbaa !109
  %i.eaq = add nuw nsw i32 %.022482743, 2         ; 2 uses
  %indvars.iv.next2991 = add nuw nsw i64 %indvars.iv2990, 2
  %i.ear = icmp slt i32 %i.eaq, %i.dyp
  br i1 %i.ear, label %.lr.ph2746, label %.loopexit2566, !llvm.loop !1571

bb.bw:                                            ; preds = %bb.bu
  br i1 %i.dyq, label %.lr.ph2742, label %.loopexit2566

.lr.ph2742:                                       ; preds = %bb.bw, %.lr.ph2742
  %indvars.iv2987 = phi i64 [ %indvars.iv.next2988, %.lr.ph2742 ], [ %i.dyw, %bb.bw ] ; 3 uses
  %.022462739 = phi i32 [ %i.ece, %.lr.ph2742 ], [ 6, %bb.bw ]
  %i.eas = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv2987 ; 10 uses
  %i.eat = load float, ptr %i.eas, align 8, !tbaa !109 ; 2 uses
  %i.eau = getelementptr inbounds nuw i8, ptr %i.eas, i64 636
  %i.eav = load float, ptr %i.eau, align 4, !tbaa !109
  %i.eaw = fsub float %i.eat, %i.eav              ; 2 uses
  %i.eax = fmul float %i.eaw, %i.eaw
  %i.eay = getelementptr i8, ptr %i.eas, i64 -636
  %i.eaz = load float, ptr %i.eay, align 4, !tbaa !109
  %i.eba = fsub float %i.eat, %i.eaz              ; 2 uses
  %i.ebb = fmul float %i.eba, %i.eba
  %i.ebc = fadd float %i.eax, %i.ebb
  %i.ebd = lshr exact i64 %indvars.iv2987, 1      ; 4 uses
  %i.ebe = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ebd
  store float %i.ebc, ptr %i.ebe, align 4, !tbaa !109
  %i.ebf = load float, ptr %i.eas, align 8, !tbaa !109 ; 2 uses
  %i.ebg = getelementptr i8, ptr %i.eas, i64 -644
  %i.ebh = load float, ptr %i.ebg, align 4, !tbaa !109
  %i.ebi = fsub float %i.ebf, %i.ebh              ; 2 uses
  %i.ebj = fmul float %i.ebi, %i.ebi
  %i.ebk = getelementptr inbounds nuw i8, ptr %i.eas, i64 644
  %i.ebl = load float, ptr %i.ebk, align 4, !tbaa !109
  %i.ebm = fsub float %i.ebf, %i.ebl              ; 2 uses
  %i.ebn = fmul float %i.ebm, %i.ebm
  %i.ebo = fadd float %i.ebj, %i.ebn
  %i.ebp = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ebd
  store float %i.ebo, ptr %i.ebp, align 4, !tbaa !109
  %i.ebq = getelementptr i8, ptr %i.eas, i64 -632
  %i.ebr = load float, ptr %i.ebq, align 8, !tbaa !109
  %i.ebs = getelementptr inbounds nuw i8, ptr %i.eas, i64 640
  %i.ebt = load float, ptr %i.ebs, align 8, !tbaa !109
  %i.ebu = fsub float %i.ebr, %i.ebt
  %i.ebv = tail call float @llvm.fabs.f32(float %i.ebu)
  %i.ebw = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ebd
  store float %i.ebv, ptr %i.ebw, align 4, !tbaa !109
  %i.ebx = getelementptr inbounds nuw i8, ptr %i.eas, i64 648
  %i.eby = load float, ptr %i.ebx, align 8, !tbaa !109
  %i.ebz = getelementptr i8, ptr %i.eas, i64 -640
  %i.eca = load float, ptr %i.ebz, align 8, !tbaa !109
  %i.ecb = fsub float %i.eby, %i.eca
  %i.ecc = tail call float @llvm.fabs.f32(float %i.ecb)
  %i.ecd = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ebd
  store float %i.ecc, ptr %i.ecd, align 4, !tbaa !109
  %i.ece = add nuw nsw i32 %.022462739, 2         ; 2 uses
  %indvars.iv.next2988 = add nuw nsw i64 %indvars.iv2987, 2
  %i.ecf = icmp slt i32 %i.ece, %i.dyp
  br i1 %i.ecf, label %.lr.ph2742, label %.loopexit2566, !llvm.loop !1572

.loopexit2566:                                    ; preds = %.lr.ph2742, %.lr.ph2746, %bb.bw, %bb.bv
  %i.ecg = add nuw nsw i32 %.022492747, 1         ; 2 uses
  %indvars.iv.next2986 = add i32 %indvars.iv2985, 160
  %exitcond2993.not = icmp eq i32 %i.ecg, %i.dou
  br i1 %exitcond2993.not, label %.preheader2565, label %bb.bu, !llvm.loop !1573

.preheader2564:                                   ; preds = %._crit_edge2755
  %i.ech = icmp sgt i32 %i.an, 20
  br i1 %i.ech, label %.lr.ph2765, label %.preheader2563.thread

.lr.ph2765:                                       ; preds = %.preheader2564
  %i.eci = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ecj = load ptr, ptr %i.eci, align 8, !tbaa !1633, !nonnull !204, !align !206
  %.val2422 = load ptr, ptr %i.ecj, align 8, !tbaa !403
  %i.eck = add nsw i32 %i.ao, -10                 ; 2 uses
  %i.ecl = add nsw i32 %i.an, -11
  br label %bb.cj

bb.bx:                                            ; preds = %.lr.ph2757, %._crit_edge2755
  %indvars.iv2994 = phi i32 [ 1288, %.lr.ph2757 ], [ %indvars.iv.next2995, %._crit_edge2755 ] ; 3 uses
  %.022442756 = phi i32 [ 8, %.lr.ph2757 ], [ %i.ecy, %._crit_edge2755 ] ; 2 uses
  %i.ecm = and i32 %.022442756, 1
  %i.ecn = zext nneg i32 %i.ecm to i64
  %i.eco = getelementptr inbounds nuw [8 x i8], ptr %.val2423, i64 %i.ecn
  %i.ecp = load i32, ptr %i.eco, align 4, !tbaa !76
  %i.ecq = and i32 %i.ecp, 1                      ; 2 uses
  %i.ecr = or disjoint i32 %i.ecq, 8              ; 2 uses
  %i.ecs = icmp slt i32 %i.ecr, %i.dyt
  br i1 %i.ecs, label %.lr.ph2754, label %._crit_edge2755

.lr.ph2754:                                       ; preds = %bb.bx
  %i.ect = load ptr, ptr %i.dyu, align 8, !tbaa !1635, !nonnull !204, !align !257 ; 2 uses
  %i.ecu = or disjoint i32 %indvars.iv2994, %i.ecq
  %i.ecv = lshr exact i32 %indvars.iv2994, 1
  %i.ecw = zext nneg i32 %i.ecv to i64
  %i.ecx = sext i32 %i.ecu to i64
  br label %bb.by

._crit_edge2755:                                  ; preds = %bb.ci, %bb.bx
  %i.ecy = add nuw nsw i32 %.022442756, 1         ; 2 uses
  %indvars.iv.next2995 = add i32 %indvars.iv2994, 160
  %exitcond3001.not = icmp eq i32 %i.ecy, %.pre-phi
  br i1 %exitcond3001.not, label %.preheader2564, label %bb.bx, !llvm.loop !1574

bb.by:                                            ; preds = %.lr.ph2754, %bb.ci
  %indvars.iv2998 = phi i64 [ %i.ecx, %.lr.ph2754 ], [ %indvars.iv.next2999, %bb.ci ] ; 22 uses
  %indvars.iv2996 = phi i64 [ %i.ecw, %.lr.ph2754 ], [ %indvars.iv.next2997, %bb.ci ] ; 6 uses
  %.022432750 = phi i32 [ %i.ecr, %.lr.ph2754 ], [ %i.enr, %bb.ci ]
  %i.ecz = add nuw nsw i64 %indvars.iv2998, 161   ; 2 uses
  %i.eda = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ecz ; 3 uses
  %i.edb = load float, ptr %i.eda, align 4, !tbaa !109
  %i.edc = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv2998 ; 3 uses
  %i.edd = load float, ptr %i.edc, align 4, !tbaa !109 ; 2 uses
  %i.ede = fadd float %i.edd, f0x3727C5AC
  %i.edf = add nuw nsw i64 %indvars.iv2998, 322   ; 2 uses
  %i.edg = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.edf
  %i.edh = load float, ptr %i.edg, align 4, !tbaa !109
  %i.edi = add nsw i64 %indvars.iv2998, -161      ; 2 uses
  %i.edj = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.edi ; 3 uses
  %i.edk = load float, ptr %i.edj, align 4, !tbaa !109
  %i.edl = add nsw i64 %indvars.iv2998, -322      ; 2 uses
  %i.edm = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.edl
  %i.edn = load float, ptr %i.edm, align 4, !tbaa !109
  %i.edo = add nsw i64 %indvars.iv2998, -159      ; 2 uses
  %i.edp = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.edo ; 3 uses
  %i.edq = load float, ptr %i.edp, align 4, !tbaa !109
  %i.edr = add nsw i64 %indvars.iv2998, -318      ; 2 uses
  %i.eds = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.edr
  %i.edt = load float, ptr %i.eds, align 4, !tbaa !109
  %i.edu = add nuw nsw i64 %indvars.iv2998, 159   ; 2 uses
  %i.edv = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.edu ; 3 uses
  %i.edw = load float, ptr %i.edv, align 4, !tbaa !109
  %i.edx = add nuw nsw i64 %indvars.iv2998, 318   ; 2 uses
  %i.edy = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.edx
  %i.edz = load float, ptr %i.edy, align 4, !tbaa !109
  %i.eea = insertelement <4 x float> poison, float %i.edb, i64 0
  %i.eeb = insertelement <4 x float> %i.eea, float %i.edk, i64 1
  %i.eec = insertelement <4 x float> %i.eeb, float %i.edq, i64 2
  %i.eed = insertelement <4 x float> %i.eec, float %i.edw, i64 3 ; 2 uses
  %i.eee = fmul <4 x float> %i.eed, splat (float 2.000000e+00)
  %i.eef = insertelement <4 x float> poison, float %i.ede, i64 0
  %i.eeg = shufflevector <4 x float> %i.eef, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eeh = insertelement <4 x float> poison, float %i.edh, i64 0
  %i.eei = insertelement <4 x float> %i.eeh, float %i.edn, i64 1
  %i.eej = insertelement <4 x float> %i.eei, float %i.edt, i64 2
  %i.eek = insertelement <4 x float> %i.eej, float %i.edz, i64 3 ; 2 uses
  %i.eel = fadd <4 x float> %i.eeg, %i.eek
  %i.eem = fdiv <4 x float> %i.eee, %i.eel        ; 2 uses
  %i.een = fsub <4 x float> splat (float 1.000000e+00), %i.eem
  %i.eeo = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.een)
  %i.eep = fcmp olt <4 x float> %i.eeo, splat (float 7.500000e-01) ; 2 uses
  %i.eeq = insertelement <4 x float> poison, float %i.edd, i64 0
  %i.eer = shufflevector <4 x float> %i.eeq, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ees = fmul <4 x float> %i.eer, %i.eem        ; 2 uses
  %i.eet = fsub <4 x float> %i.eer, %i.eek
  %i.eeu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eet, <4 x float> splat (float 5.000000e-01), <4 x float> %i.eed) ; 2 uses
  %2 = shufflevector <4 x i1> %i.eep, <4 x i1> poison, <2 x i32> <i32 1, i32 3>
  %3 = shufflevector <4 x float> %i.ees, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %4 = shufflevector <4 x float> %i.eeu, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %5 = select <2 x i1> %2, <2 x float> %3, <2 x float> %4 ; 2 uses
  %6 = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv2996
  %7 = load float, ptr %6, align 4, !tbaa !109
  %i.eev = lshr i64 %i.ecz, 1
  %i.eew = and i64 %i.eev, 2147483647
  %i.eex = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.eew
  %i.eey = load float, ptr %i.eex, align 4, !tbaa !109
  %i.eez = lshr i64 %i.edf, 1
  %i.efa = and i64 %i.eez, 2147483647
  %i.efb = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.efa
  %i.efc = load float, ptr %i.efb, align 4, !tbaa !109
  %i.efd = trunc nsw i64 %i.edi to i32
  %i.efe = ashr i32 %i.efd, 1
  %i.eff = sext i32 %i.efe to i64
  %i.efg = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.eff
  %i.efh = load float, ptr %i.efg, align 4, !tbaa !109
  %i.efi = trunc nsw i64 %i.edl to i32
  %i.efj = ashr i32 %i.efi, 1
  %i.efk = sext i32 %i.efj to i64
  %i.efl = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.efk
  %i.efm = load float, ptr %i.efl, align 4, !tbaa !109
  %i.efn = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv2996
  %i.efo = load float, ptr %i.efn, align 4, !tbaa !109
  %i.efp = trunc nsw i64 %i.edo to i32
  %i.efq = ashr i32 %i.efp, 1
  %i.efr = sext i32 %i.efq to i64
  %i.efs = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.efr
  %i.eft = load float, ptr %i.efs, align 4, !tbaa !109
  %i.efu = trunc nsw i64 %i.edr to i32
  %i.efv = ashr i32 %i.efu, 1
  %i.efw = sext i32 %i.efv to i64
  %i.efx = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.efw
  %i.efy = load float, ptr %i.efx, align 4, !tbaa !109
  %8 = lshr i64 %i.edu, 1
  %9 = and i64 %8, 2147483647
  %10 = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !109
  %i.efz = lshr i64 %i.edx, 1
  %i.ega = and i64 %i.efz, 2147483647
  %i.egb = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ega
  %i.egc = load float, ptr %i.egb, align 4, !tbaa !109
  %12 = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv2996 ; 4 uses
  %13 = shufflevector <4 x i1> %i.eep, <4 x i1> poison, <2 x i32> <i32 0, i32 2>
  %14 = shufflevector <4 x float> %i.ees, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %15 = shufflevector <4 x float> %i.eeu, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %16 = select <2 x i1> %13, <2 x float> %14, <2 x float> %15
  %17 = insertelement <2 x float> poison, float %7, i64 0
  %18 = insertelement <2 x float> %17, float %i.efo, i64 1
  %19 = fadd <2 x float> %18, splat (float f0x3727C5AC) ; 3 uses
  %20 = extractelement <2 x float> %19, i64 0
  %21 = fadd float %20, %i.eey
  %i.egd = fadd float %21, %i.efc                 ; 2 uses
  %i.ege = extractelement <2 x float> %19, i64 1
  %22 = fadd float %i.ege, %i.eft
  %23 = fadd float %22, %i.efy                    ; 2 uses
  %24 = insertelement <2 x float> poison, float %i.efh, i64 0
  %25 = insertelement <2 x float> %24, float %11, i64 1
  %26 = fadd <2 x float> %19, %25
  %27 = insertelement <2 x float> poison, float %i.efm, i64 0
  %28 = insertelement <2 x float> %27, float %i.egc, i64 1
  %29 = fadd <2 x float> %26, %28                 ; 3 uses
  %30 = fmul <2 x float> %16, %29                 ; 2 uses
  %31 = extractelement <2 x float> %30, i64 0
  %i.egf = extractelement <2 x float> %5, i64 0
  %i.egg = tail call float @llvm.fmuladd.f32(float %i.egd, float %i.egf, float %31)
  %32 = extractelement <2 x float> %29, i64 0
  %33 = fadd float %i.egd, %32
  %34 = fdiv float %i.egg, %33
  store float %34, ptr %12, align 4, !tbaa !109
  %i.egh = extractelement <2 x float> %30, i64 1
  %35 = extractelement <2 x float> %5, i64 1
  %36 = tail call float @llvm.fmuladd.f32(float %23, float %35, float %i.egh)
  %37 = extractelement <2 x float> %29, i64 1
  %i.egi = fadd float %23, %37
  %i.egj = fdiv float %36, %i.egi                 ; 10 uses
  %i.egk = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv2996 ; 4 uses
  store float %i.egj, ptr %i.egk, align 4, !tbaa !109
  %i.egl = trunc i64 %indvars.iv2998 to i32
  %i.egm = add i32 %i.egl, -160
  %i.egn = ashr i32 %i.egm, 1
  %i.ego = sext i32 %i.egn to i64                 ; 2 uses
  %i.egp = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.ego
  %i.egq = load float, ptr %i.egp, align 4, !tbaa !109
  %i.egr = trunc i64 %indvars.iv2998 to i32
  %i.egs = add i32 %i.egr, -1
  %i.egt = ashr i32 %i.egs, 1
  %i.egu = sext i32 %i.egt to i64                 ; 2 uses
  %i.egv = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.egu
  %i.egw = load float, ptr %i.egv, align 4, !tbaa !109
  %i.egx = fadd float %i.egq, %i.egw
  %i.egy = add i64 %indvars.iv2998, 1
  %i.egz = lshr i64 %i.egy, 1
  %i.eha = and i64 %i.egz, 2147483647             ; 2 uses
  %i.ehb = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.eha
  %i.ehc = load float, ptr %i.ehb, align 4, !tbaa !109
  %i.ehd = fadd float %i.egx, %i.ehc
  %i.ehe = add i64 %indvars.iv2998, 160
  %i.ehf = lshr i64 %i.ehe, 1
  %i.ehg = and i64 %i.ehf, 2147483647             ; 2 uses
  %i.ehh = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ehg
  %i.ehi = load float, ptr %i.ehh, align 4, !tbaa !109
  %i.ehj = fadd float %i.ehd, %i.ehi
  %i.ehk = tail call float @llvm.fmuladd.f32(float %i.ehj, float f0x3E0C7CD5, float 1.000000e-10)
  %i.ehl = trunc i64 %indvars.iv2998 to i32
  %i.ehm = add i32 %i.ehl, -321
  %i.ehn = ashr i32 %i.ehm, 1
  %i.eho = sext i32 %i.ehn to i64                 ; 2 uses
  %i.ehp = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.eho
  %i.ehq = load float, ptr %i.ehp, align 4, !tbaa !109
  %i.ehr = trunc i64 %indvars.iv2998 to i32
  %i.ehs = add i32 %i.ehr, -319
  %i.eht = ashr i32 %i.ehs, 1
  %i.ehu = sext i32 %i.eht to i64                 ; 2 uses
  %i.ehv = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.ehu
  %i.ehw = load float, ptr %i.ehv, align 4, !tbaa !109
  %i.ehx = fadd float %i.ehq, %i.ehw
  %i.ehy = trunc i64 %indvars.iv2998 to i32
  %i.ehz = add i32 %i.ehy, -162
  %i.eia = ashr i32 %i.ehz, 1
  %i.eib = sext i32 %i.eia to i64                 ; 2 uses
  %i.eic = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.eib
  %i.eid = load float, ptr %i.eic, align 4, !tbaa !109
  %i.eie = fadd float %i.ehx, %i.eid
  %indvars.iv.next2999 = add nuw nsw i64 %indvars.iv2998, 2
  %i.eif = trunc i64 %indvars.iv2998 to i32
  %i.eig = add i32 %i.eif, -158
  %i.eih = ashr i32 %i.eig, 1
  %i.eii = sext i32 %i.eih to i64                 ; 2 uses
  %i.eij = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.eii
  %i.eik = load float, ptr %i.eij, align 4, !tbaa !109
  %i.eil = fadd float %i.eie, %i.eik
  %i.eim = add i64 %indvars.iv2998, 158
  %i.ein = lshr i64 %i.eim, 1
  %i.eio = and i64 %i.ein, 2147483647             ; 2 uses
  %i.eip = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.eio
  %i.eiq = load float, ptr %i.eip, align 4, !tbaa !109
  %i.eir = fadd float %i.eil, %i.eiq
  %i.eis = add i64 %indvars.iv2998, 162
  %i.eit = lshr i64 %i.eis, 1
  %i.eiu = and i64 %i.eit, 2147483647             ; 2 uses
  %i.eiv = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.eiu
  %i.eiw = load float, ptr %i.eiv, align 4, !tbaa !109
  %i.eix = fadd float %i.eir, %i.eiw
  %i.eiy = add i64 %indvars.iv2998, 319
  %i.eiz = lshr i64 %i.eiy, 1
  %i.eja = and i64 %i.eiz, 2147483647             ; 2 uses
  %i.ejb = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.eja
  %i.ejc = load float, ptr %i.ejb, align 4, !tbaa !109
  %i.ejd = fadd float %i.eix, %i.ejc
  %i.eje = add i64 %indvars.iv2998, 321
  %i.ejf = lshr i64 %i.eje, 1
  %i.ejg = and i64 %i.ejf, 2147483647             ; 2 uses
  %i.ejh = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ejg
  %i.eji = load float, ptr %i.ejh, align 4, !tbaa !109
  %i.ejj = fadd float %i.ejd, %i.eji
  %i.ejk = tail call float @llvm.fmuladd.f32(float %i.ejj, float f0x3D670656, float %i.ehk) ; 2 uses
  %i.ejl = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ego
  %i.ejm = load float, ptr %i.ejl, align 4, !tbaa !109
  %i.ejn = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.egu
  %i.ejo = load float, ptr %i.ejn, align 4, !tbaa !109
  %i.ejp = fadd float %i.ejm, %i.ejo
  %i.ejq = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.eha
  %i.ejr = load float, ptr %i.ejq, align 4, !tbaa !109
  %i.ejs = fadd float %i.ejp, %i.ejr
  %i.ejt = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ehg
  %i.eju = load float, ptr %i.ejt, align 4, !tbaa !109
  %i.ejv = fadd float %i.ejs, %i.eju
  %i.ejw = tail call float @llvm.fmuladd.f32(float %i.ejv, float f0x3E0C7CD5, float 1.000000e-10)
  %i.ejx = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.eho
  %i.ejy = load float, ptr %i.ejx, align 4, !tbaa !109
  %i.ejz = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ehu
  %i.eka = load float, ptr %i.ejz, align 4, !tbaa !109
  %i.ekb = fadd float %i.ejy, %i.eka
  %i.ekc = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.eib
  %i.ekd = load float, ptr %i.ekc, align 4, !tbaa !109
  %i.eke = fadd float %i.ekb, %i.ekd
  %i.ekf = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.eii
  %i.ekg = load float, ptr %i.ekf, align 4, !tbaa !109
  %i.ekh = fadd float %i.eke, %i.ekg
  %i.eki = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.eio
  %i.ekj = load float, ptr %i.eki, align 4, !tbaa !109
  %i.ekk = fadd float %i.ekh, %i.ekj
  %i.ekl = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.eiu
  %i.ekm = load float, ptr %i.ekl, align 4, !tbaa !109
  %i.ekn = fadd float %i.ekk, %i.ekm
  %i.eko = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.eja
  %i.ekp = load float, ptr %i.eko, align 4, !tbaa !109
  %i.ekq = fadd float %i.ekn, %i.ekp
  %i.ekr = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ejg
  %i.eks = load float, ptr %i.ekr, align 4, !tbaa !109
  %i.ekt = fadd float %i.ekq, %i.eks
  %i.eku = tail call float @llvm.fmuladd.f32(float %i.ekt, float f0x3D670656, float %i.ejw)
  %i.ekv = fadd float %i.ejk, %i.eku
  %i.ekw = fdiv float %i.ejk, %i.ekv
  %i.ekx = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv2996
  store float %i.ekw, ptr %i.ekx, align 4, !tbaa !109
  %i.eky = load float, ptr %i.edc, align 4, !tbaa !109 ; 4 uses
  %i.ekz = fcmp olt float %i.egj, %i.eky
  br i1 %i.ekz, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.ela = fmul float %i.egj, 2.000000e+00
  %i.elb = fcmp olt float %i.ela, %i.eky
  %i.elc = load float, ptr %i.edv, align 4, !tbaa !109 ; 4 uses
  %i.eld = load float, ptr %i.edp, align 4, !tbaa !109 ; 2 uses
  %i.ele = fcmp olt float %i.elc, %i.egj
  %i.elf = fcmp olt float %i.egj, %i.elc
  %i.elg = select i1 %i.elf, float %i.elc, float %i.egj ; 2 uses
  %i.elh = fcmp olt float %i.eld, %i.elg
  %i.eli = select i1 %i.ele, float %i.elc, float %i.egj ; 2 uses
  %i.elj = select i1 %i.elh, float %i.eld, float %i.elg ; 2 uses
  %i.elk = fcmp olt float %i.eli, %i.elj
  %i.ell = select i1 %i.elk, float %i.elj, float %i.eli ; 2 uses
  br i1 %i.elb, label %.sink.split3227, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.elm = fsub float %i.eky, %i.egj
  %i.eln = fmul float %i.elm, 2.000000e+00
  %i.elo = fadd float %i.egj, f0x3727C5AC
  %i.elp = fadd float %i.elo, %i.eky
  %i.elq = fdiv float %i.eln, %i.elp              ; 2 uses
  %i.elr = fsub float 1.000000e+00, %i.elq
  %i.els = fmul float %i.elr, %i.ell
  %i.elt = tail call float @llvm.fmuladd.f32(float %i.elq, float %i.egj, float %i.els)
  br label %.sink.split3227

.sink.split3227:                                  ; preds = %bb.bz, %bb.ca
  %.sink3228 = phi float [ %i.elt, %bb.ca ], [ %i.ell, %bb.bz ]
  store float %.sink3228, ptr %i.egk, align 4, !tbaa !109
  br label %bb.cb

bb.cb:                                            ; preds = %.sink.split3227, %bb.by
  %i.elu = load float, ptr %12, align 4, !tbaa !109 ; 10 uses
  %i.elv = load float, ptr %i.edc, align 4, !tbaa !109 ; 4 uses
  %i.elw = fcmp olt float %i.elu, %i.elv
  br i1 %i.elw, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  %i.elx = fmul float %i.elu, 2.000000e+00
  %i.ely = fcmp olt float %i.elx, %i.elv
  %i.elz = load float, ptr %i.edj, align 4, !tbaa !109 ; 4 uses
  %i.ema = load float, ptr %i.eda, align 4, !tbaa !109 ; 2 uses
  %i.emb = fcmp olt float %i.elz, %i.elu
  %i.emc = fcmp olt float %i.elu, %i.elz
  %i.emd = select i1 %i.emc, float %i.elz, float %i.elu ; 2 uses
  %i.eme = fcmp olt float %i.ema, %i.emd
  %i.emf = select i1 %i.emb, float %i.elz, float %i.elu ; 2 uses
  %i.emg = select i1 %i.eme, float %i.ema, float %i.emd ; 2 uses
  %i.emh = fcmp olt float %i.emf, %i.emg
  %i.emi = select i1 %i.emh, float %i.emg, float %i.emf ; 2 uses
  br i1 %i.ely, label %.sink.split3229, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.emj = fsub float %i.elv, %i.elu
  %i.emk = fmul float %i.emj, 2.000000e+00
  %i.eml = fadd float %i.elu, f0x3727C5AC
  %i.emm = fadd float %i.eml, %i.elv
  %i.emn = fdiv float %i.emk, %i.emm              ; 2 uses
  %i.emo = fsub float 1.000000e+00, %i.emn
  %i.emp = fmul float %i.emo, %i.emi
  %i.emq = tail call float @llvm.fmuladd.f32(float %i.emn, float %i.elu, float %i.emp)
  br label %.sink.split3229

.sink.split3229:                                  ; preds = %bb.cc, %bb.cd
  %.sink3231 = phi float [ %i.emq, %bb.cd ], [ %i.emi, %bb.cc ] ; 2 uses
  store float %.sink3231, ptr %12, align 4, !tbaa !109
  br label %bb.ce

bb.ce:                                            ; preds = %.sink.split3229, %bb.cb
  %i.emr = phi float [ %i.elu, %bb.cb ], [ %.sink3231, %.sink.split3229 ] ; 5 uses
  %i.ems = load float, ptr %i.egk, align 4, !tbaa !109 ; 5 uses
  %i.emt = load float, ptr %i.ect, align 4, !tbaa !109 ; 2 uses
  %i.emu = fcmp ogt float %i.ems, %i.emt
  br i1 %i.emu, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.emv = load float, ptr %i.edv, align 4, !tbaa !109 ; 4 uses
  %i.emw = load float, ptr %i.edp, align 4, !tbaa !109 ; 2 uses
  %i.emx = fcmp olt float %i.emv, %i.ems
  %i.emy = fcmp olt float %i.ems, %i.emv
  %i.emz = select i1 %i.emy, float %i.emv, float %i.ems ; 2 uses
  %i.ena = fcmp olt float %i.emw, %i.emz
  %i.enb = select i1 %i.emx, float %i.emv, float %i.ems ; 2 uses
  %i.enc = select i1 %i.ena, float %i.emw, float %i.emz ; 2 uses
  %i.end = fcmp olt float %i.enb, %i.enc
  %i.ene = select i1 %i.end, float %i.enc, float %i.enb
  store float %i.ene, ptr %i.egk, align 4, !tbaa !109
  %.pre3068 = load float, ptr %i.ect, align 4, !tbaa !109
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.enf = phi float [ %.pre3068, %bb.cf ], [ %i.emt, %bb.ce ]
  %i.eng = fcmp ogt float %i.emr, %i.enf
  br i1 %i.eng, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.enh = load float, ptr %i.edj, align 4, !tbaa !109 ; 4 uses
  %i.eni = load float, ptr %i.eda, align 4, !tbaa !109 ; 2 uses
  %i.enj = fcmp olt float %i.enh, %i.emr
  %i.enk = fcmp olt float %i.emr, %i.enh
  %i.enl = select i1 %i.enk, float %i.enh, float %i.emr ; 2 uses
  %i.enm = fcmp olt float %i.eni, %i.enl
  %i.enn = select i1 %i.enj, float %i.enh, float %i.emr ; 2 uses
  %i.eno = select i1 %i.enm, float %i.eni, float %i.enl ; 2 uses
  %i.enp = fcmp olt float %i.enn, %i.eno
  %i.enq = select i1 %i.enp, float %i.eno, float %i.enn
  store float %i.enq, ptr %12, align 4, !tbaa !109
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.enr = add nuw nsw i32 %.022432750, 2         ; 2 uses
  %indvars.iv.next2997 = add nuw nsw i64 %indvars.iv2996, 1
  %i.ens = icmp slt i32 %i.enr, %i.dyt
  br i1 %i.ens, label %bb.by, label %._crit_edge2755, !llvm.loop !1575

.preheader2563.thread:                            ; preds = %.preheader2564, %.preheader2565
  %i.ent = add i32 %i.an, -12
  br label %._crit_edge2774

.preheader2563:                                   ; preds = %._crit_edge2763
  %i.enu = add nsw i32 %i.an, -12                 ; 3 uses
  %i.env = icmp sgt i32 %i.an, 24
  br i1 %i.env, label %.lr.ph2773, label %._crit_edge2774

.lr.ph2773:                                       ; preds = %.preheader2563
  %i.enw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.enx = load ptr, ptr %i.enw, align 8, !tbaa !1633, !nonnull !204, !align !206
  %.val2421 = load ptr, ptr %i.enx, align 8, !tbaa !403
  %i.eny = add nsw i32 %i.ao, -12                 ; 2 uses
  %i.enz = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.cm

bb.cj:                                            ; preds = %.lr.ph2765, %._crit_edge2763
  %indvars.iv3002 = phi i32 [ 1610, %.lr.ph2765 ], [ %indvars.iv.next3003, %._crit_edge2763 ] ; 2 uses
  %.022402764 = phi i32 [ 10, %.lr.ph2765 ], [ %i.eok, %._crit_edge2763 ] ; 3 uses
  %i.eoa = and i32 %.022402764, 1
  %i.eob = zext nneg i32 %i.eoa to i64
  %i.eoc = getelementptr inbounds nuw [8 x i8], ptr %.val2422, i64 %i.eob
  %i.eod = load i32, ptr %i.eoc, align 4, !tbaa !76
  %i.eoe = and i32 %i.eod, 1                      ; 2 uses
  %i.eof = or disjoint i32 %i.eoe, 10             ; 2 uses
  %i.eog = icmp slt i32 %i.eof, %i.eck
  br i1 %i.eog, label %.lr.ph2762.preheader, label %._crit_edge2763

.lr.ph2762.preheader:                             ; preds = %bb.cj
  %i.eoh = or disjoint i32 %indvars.iv3002, %i.eoe
  %i.eoi = zext i32 %i.eoh to i64                 ; 2 uses
  %i.eoj = lshr i64 %i.eoi, 1
  br label %.lr.ph2762

._crit_edge2763:                                  ; preds = %bb.cl, %bb.cj
  %i.eok = add nuw nsw i32 %.022402764, 1
  %indvars.iv.next3003 = add i32 %indvars.iv3002, 160
  %exitcond3009.not = icmp eq i32 %.022402764, %i.ecl
  br i1 %exitcond3009.not, label %.preheader2563, label %bb.cj, !llvm.loop !1576

.lr.ph2762:                                       ; preds = %.lr.ph2762.preheader, %bb.cl
  %indvars.iv3006 = phi i64 [ %i.eoi, %.lr.ph2762.preheader ], [ %indvars.iv.next3007, %bb.cl ] ; 5 uses
  %indvars.iv3004 = phi i64 [ %i.eoj, %.lr.ph2762.preheader ], [ %indvars.iv.next3005, %bb.cl ] ; 5 uses
  %.022392758 = phi i32 [ %i.eof, %.lr.ph2762.preheader ], [ %i.eqd, %bb.cl ]
  %i.eol = trunc nuw i64 %indvars.iv3006 to i32   ; 2 uses
  %i.eom = add nsw i32 %i.eol, -161
  %i.eon = ashr i32 %i.eom, 1
  %i.eoo = sext i32 %i.eon to i64
  %i.eop = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.eoo
  %i.eoq = load float, ptr %i.eop, align 4, !tbaa !109
  %i.eor = add nsw i32 %i.eol, -159
  %i.eos = ashr i32 %i.eor, 1
  %i.eot = sext i32 %i.eos to i64
  %i.eou = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.eot
  %i.eov = load float, ptr %i.eou, align 4, !tbaa !109
  %i.eow = fadd float %i.eoq, %i.eov
  %i.eox = add nuw i64 %indvars.iv3006, 159
  %i.eoy = lshr i64 %i.eox, 1
  %i.eoz = and i64 %i.eoy, 2147483647
  %i.epa = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.eoz
  %i.epb = load float, ptr %i.epa, align 4, !tbaa !109
  %i.epc = fadd float %i.eow, %i.epb
  %i.epd = add nuw i64 %indvars.iv3006, 161
  %i.epe = lshr i64 %i.epd, 1
  %i.epf = and i64 %i.epe, 2147483647
  %i.epg = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.epf
  %i.eph = load float, ptr %i.epg, align 4, !tbaa !109
  %i.epi = fadd float %i.epc, %i.eph
  %i.epj = fmul float %i.epi, 2.500000e-01        ; 3 uses
  %i.epk = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv3004 ; 2 uses
  %i.epl = load float, ptr %i.epk, align 4, !tbaa !109 ; 2 uses
  %i.epm = fsub float 5.000000e-01, %i.epl
  %i.epn = tail call float @llvm.fabs.f32(float %i.epm)
  %i.epo = fsub float 5.000000e-01, %i.epj
  %i.epp = tail call float @llvm.fabs.f32(float %i.epo)
  %i.epq = fcmp olt float %i.epn, %i.epp
  br i1 %i.epq, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %.lr.ph2762
  store float %i.epj, ptr %i.epk, align 4, !tbaa !109
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %.lr.ph2762
  %i.epr = phi float [ %i.epj, %bb.ck ], [ %i.epl, %.lr.ph2762 ] ; 2 uses
  %i.eps = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv3006
  %i.ept = load float, ptr %i.eps, align 4, !tbaa !109
  %i.epu = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv3004
  %i.epv = load float, ptr %i.epu, align 4, !tbaa !109
  %i.epw = fsub float 1.000000e+00, %i.epr
  %i.epx = tail call float @llvm.fmuladd.f32(float %i.epv, float %i.epw, float %i.ept)
  %i.epy = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv3004
  %i.epz = load float, ptr %i.epy, align 4, !tbaa !109
  %i.eqa = tail call float @llvm.fmuladd.f32(float %i.epz, float %i.epr, float %i.epx)
  %i.eqb = fmul float %i.eqa, 5.000000e-01
  %i.eqc = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv3004
  store float %i.eqb, ptr %i.eqc, align 4, !tbaa !109
  %i.eqd = add nuw nsw i32 %.022392758, 2         ; 2 uses
  %indvars.iv.next3007 = add nuw nsw i64 %indvars.iv3006, 2
  %indvars.iv.next3005 = add nuw nsw i64 %indvars.iv3004, 1
  %i.eqe = icmp slt i32 %i.eqd, %i.eck
  br i1 %i.eqe, label %.lr.ph2762, label %._crit_edge2763, !llvm.loop !1577

._crit_edge2774:                                  ; preds = %._crit_edge2771, %.preheader2563.thread, %.preheader2563
  %i.eqf = phi i32 [ %i.ent, %.preheader2563.thread ], [ %i.enu, %.preheader2563 ], [ %i.enu, %._crit_edge2771 ] ; 2 uses
  %i.eqg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.eqh = load ptr, ptr %i.eqg, align 8, !tbaa !1639, !nonnull !204, !align !257
  %i.eqi = load i32, ptr %i.eqh, align 4, !tbaa !76
  %i.eqj = sub nsw i32 13, %i.eqi                 ; 2 uses
  %i.eqk = icmp slt i32 %i.eqj, %i.eqf
  br i1 %i.eqk, label %.lr.ph2782, label %.preheader2562

.lr.ph2782:                                       ; preds = %._crit_edge2774
  %i.eql = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.eqm = load ptr, ptr %i.eql, align 8, !tbaa !1640, !nonnull !204, !align !257
  %i.eqn = load i32, ptr %i.eqm, align 4, !tbaa !76
  %i.eqo = add i32 %i.ao, -12
  %i.eqp = getelementptr inbounds nuw i8, ptr %i.k, i64 666368 ; 2 uses
  %invariant.op3862 = sub i32 13, %i.eqn
  br label %bb.cz

bb.cm:                                            ; preds = %.lr.ph2773, %._crit_edge2771
  %indvars.iv3010 = phi i32 [ 1932, %.lr.ph2773 ], [ %indvars.iv.next3011, %._crit_edge2771 ] ; 3 uses
  %.022362772 = phi i32 [ 12, %.lr.ph2773 ], [ %i.erb, %._crit_edge2771 ] ; 2 uses
  %i.eqq = and i32 %.022362772, 1
  %i.eqr = zext nneg i32 %i.eqq to i64
  %i.eqs = getelementptr inbounds nuw [8 x i8], ptr %.val2421, i64 %i.eqr
  %i.eqt = load i32, ptr %i.eqs, align 4, !tbaa !76
  %i.equ = and i32 %i.eqt, 1                      ; 2 uses
  %i.eqv = or disjoint i32 %i.equ, 12             ; 2 uses
  %i.eqw = icmp slt i32 %i.eqv, %i.eny
  br i1 %i.eqw, label %.lr.ph2770.preheader, label %._crit_edge2771

.lr.ph2770.preheader:                             ; preds = %bb.cm
  %i.eqx = or disjoint i32 %indvars.iv3010, %i.equ
  %i.eqy = lshr exact i32 %indvars.iv3010, 1
  %i.eqz = zext nneg i32 %i.eqy to i64
  %i.era = sext i32 %i.eqx to i64
  br label %.lr.ph2770

._crit_edge2771:                                  ; preds = %bb.cy, %bb.cm
  %i.erb = add nuw nsw i32 %.022362772, 1         ; 2 uses
  %indvars.iv.next3011 = add i32 %indvars.iv3010, 160
  %exitcond3017.not = icmp eq i32 %i.erb, %i.enu
  br i1 %exitcond3017.not, label %._crit_edge2774, label %bb.cm, !llvm.loop !1578

.lr.ph2770:                                       ; preds = %.lr.ph2770.preheader, %bb.cy
  %indvars.iv3014 = phi i64 [ %i.era, %.lr.ph2770.preheader ], [ %indvars.iv.next3015, %bb.cy ] ; 8 uses
  %indvars.iv3012 = phi i64 [ %i.eqz, %.lr.ph2770.preheader ], [ %indvars.iv.next3013, %bb.cy ] ; 3 uses
  %.022352766 = phi i32 [ %i.eqv, %.lr.ph2770.preheader ], [ %i.exe, %bb.cy ]
  %i.erc = lshr i64 %indvars.iv3014, 1
  %i.erd = and i64 %i.erc, 2147483647             ; 3 uses
  %i.ere = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.erd
  %i.erf = load float, ptr %i.ere, align 4, !tbaa !109
  %i.erg = fsub float 5.000000e-01, %i.erf
  %i.erh = tail call float @llvm.fabs.f32(float %i.erg)
  %i.eri = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.erd
  %i.erj = load float, ptr %i.eri, align 4, !tbaa !109
  %i.erk = fsub float 5.000000e-01, %i.erj
  %i.erl = tail call float @llvm.fabs.f32(float %i.erk)
  %i.erm = fcmp olt float %i.erh, %i.erl
  br i1 %i.erm, label %bb.cy, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph2770
  %i.ern = add nsw i64 %indvars.iv3014, -160      ; 2 uses
  %i.ero = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ern
  %i.erp = load float, ptr %i.ero, align 4, !tbaa !109 ; 10 uses
  %i.erq = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv3012 ; 5 uses
  %i.err = load float, ptr %i.erq, align 4, !tbaa !109 ; 10 uses
  %i.ers = fadd float %i.err, f0x3727C5AC
  %i.ert = getelementptr i8, ptr %i.erq, i64 -640
  %i.eru = load float, ptr %i.ert, align 4, !tbaa !109 ; 2 uses
  %i.erv = add nuw nsw i64 %indvars.iv3014, 160   ; 2 uses
  %i.erw = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.erv
  %i.erx = load float, ptr %i.erw, align 4, !tbaa !109 ; 6 uses
  %i.ery = getelementptr inbounds nuw i8, ptr %i.erq, i64 640
  %i.erz = load float, ptr %i.ery, align 4, !tbaa !109 ; 2 uses
  %i.esa = add nsw i64 %indvars.iv3014, -1        ; 2 uses
  %i.esb = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.esa
  %i.esc = load float, ptr %i.esb, align 4, !tbaa !109 ; 10 uses
  %i.esd = getelementptr i8, ptr %i.erq, i64 -4
  %i.ese = load float, ptr %i.esd, align 4, !tbaa !109 ; 2 uses
  %i.esf = add nuw nsw i64 %indvars.iv3014, 1     ; 2 uses
  %i.esg = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.esf
  %i.esh = load float, ptr %i.esg, align 4, !tbaa !109 ; 6 uses
  %i.esi = getelementptr inbounds nuw i8, ptr %i.erq, i64 4
  %i.esj = load float, ptr %i.esi, align 4, !tbaa !109 ; 2 uses
  %i.esk = insertelement <4 x float> poison, float %i.esh, i64 0
  %i.esl = insertelement <4 x float> %i.esk, float %i.esc, i64 1
  %i.esm = insertelement <4 x float> %i.esl, float %i.erx, i64 2
  %i.esn = insertelement <4 x float> %i.esm, float %i.erp, i64 3
  %i.eso = fmul <4 x float> %i.esn, splat (float 2.000000e+00)
end_hunk_0
begin_hunk_1_@_ZN3tev8demosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEi.resume:resume.entry
  unreachable

_ZN3tev5Latch9countDownEv.exit.i67:               ; preds = %.noexc2.i.i75, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bb = icmp slt i32 %i.aa, 2
  br i1 %i.bb, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i67, %bb.g, %.noexc.i.i70
  %i.bc = load ptr, ptr %i.x, align 8, !tbaa !70
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !72 ; 2 uses
  %i.be = inttoptr i64 %i.bd to ptr               ; 3 uses
  store ptr %i.be, ptr %.reload.addr202, align 8
  %.not.i77 = icmp eq i64 %i.bd, 0
  br i1 %.not.i77, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  store i8 2, ptr %index.addr, align 8
  %i.bf = load ptr, ptr %i.be, align 8
  musttail call void %i.bf(ptr nonnull %i.be)
  ret void

_ZN3tev16MultiChannelViewIfED2Ev.exit.sink.split: ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit64, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %.sink16 = phi i64 [ %i.f, %_ZN3tev4TaskIvE12await_resumeEv.exit ], [ %i.p, %_ZN3tev4TaskIvE12await_resumeEv.exit64 ]
  %.sink14.in = phi ptr [ %.reload.addr200, %_ZN3tev4TaskIvE12await_resumeEv.exit ], [ %.reload.addr201, %_ZN3tev4TaskIvE12await_resumeEv.exit64 ]
  %.sink14 = load ptr, ptr %.sink14.in, align 8, !tbaa !61
  %i.bg = mul i64 %.sink16, 24
  tail call void @_ZdlPvm(ptr noundef %.sink14, i64 noundef %i.bg) #36
  br label %_ZN3tev16MultiChannelViewIfED2Ev.exit

_ZN3tev16MultiChannelViewIfED2Ev.exit:            ; preds = %_ZN3tev16MultiChannelViewIfED2Ev.exit.sink.split, %_ZN3tev4TaskIvE12await_resumeEv.exit64, %_ZN3tev4TaskIvE12await_resumeEv.exit
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr205)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.i

bb.i:                                             ; preds = %_ZN3tev16MultiChannelViewIfED2Ev.exit
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #34
  unreachable

bb.j:                                             ; preds = %.from._ZN3tev16MultiChannelViewIfED2Ev.exit38
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

.from.194:                                        ; preds = %bb.e
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i67, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !71 ; 5 uses
  %.not.i.i78 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i78, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = atomicrmw add ptr %i.bn, i64 -1 acq_rel, align 8
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.l, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  tail call void %i.bs(ptr noundef nonnull align 8 dereferenceable(24) %i.bm) #33, !inline_history !2
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bm) #33
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.l, %bb.k, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr205) #33
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !60 ; 2 uses
  %i.bv = icmp ugt i64 %i.bu, 5
  br i1 %i.bv, label %bb.m, label %_ZN3tev16MultiChannelViewIfED2Ev.exit79

bb.m:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit
  %i.bw = load ptr, ptr %.reload.addr, align 8, !tbaa !61
  %i.bx = mul i64 %i.bu, 24
  tail call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bx) #36
  br label %_ZN3tev16MultiChannelViewIfED2Ev.exit79

_ZN3tev16MultiChannelViewIfED2Ev.exit79:          ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %bb.m
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 512) #33
  ret void

bb.n:                                             ; preds = %bb.j, %.from.194
  %.pn27 = phi { ptr, i32 } [ %i.bk, %.from.194 ], [ %i.bj, %bb.j ]
  store ptr null, ptr %0, align 8
  store i8 2, ptr %index.addr, align 8
  resume { ptr, i32 } %.pn27

bb.o:                                             ; preds = %bb.j
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  tail call void @__clang_call_terminate(ptr %i.bz) #34
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3tev8demosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEi.destroy(ptr noundef nonnull align 8 dereferenceable(512) %0) #6 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.reload.addr202 = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %.reload.addr205 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 504
  %index = load i8, ptr %index.addr, align 8
  switch i8 %index, label %unreachable [
    i8 0, label %_ZN3tev4TaskIvE12await_resumeEv.exit
    i8 1, label %_ZN3tev4TaskIvE12await_resumeEv.exit64
    i8 2, label %_ZN3tev16MultiChannelViewIfED2Ev.exit
  ], !prof !1727

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr200 = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr202) #33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load i64, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.c = icmp ugt i64 %i.b, 5
  br i1 %i.c, label %_ZN3tev16MultiChannelViewIfED2Ev.exit.sink.split, label %_ZN3tev16MultiChannelViewIfED2Ev.exit

_ZN3tev4TaskIvE12await_resumeEv.exit64:           ; preds = %resume.entry
  %.reload.addr201 = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr202) #33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.e = load i64, ptr %i.d, align 8, !tbaa !60   ; 2 uses
  %i.f = icmp ugt i64 %i.e, 5
  br i1 %i.f, label %_ZN3tev16MultiChannelViewIfED2Ev.exit.sink.split, label %_ZN3tev16MultiChannelViewIfED2Ev.exit

_ZN3tev16MultiChannelViewIfED2Ev.exit.sink.split: ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit64, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %.sink7 = phi i64 [ %i.b, %_ZN3tev4TaskIvE12await_resumeEv.exit ], [ %i.e, %_ZN3tev4TaskIvE12await_resumeEv.exit64 ]
  %.sink.in = phi ptr [ %.reload.addr200, %_ZN3tev4TaskIvE12await_resumeEv.exit ], [ %.reload.addr201, %_ZN3tev4TaskIvE12await_resumeEv.exit64 ]
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !61
  %i.g = mul i64 %.sink7, 24
  tail call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.g) #36
  br label %_ZN3tev16MultiChannelViewIfED2Ev.exit

_ZN3tev16MultiChannelViewIfED2Ev.exit:            ; preds = %_ZN3tev16MultiChannelViewIfED2Ev.exit.sink.split, %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit64, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !71   ; 5 uses
  %.not.i.i78 = icmp eq ptr %i.i, null
  br i1 %.not.i.i78, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev16MultiChannelViewIfED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i64 -1 acq_rel, align 8
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !64
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(24) %i.i) #33, !inline_history !2
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.i) #33
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev16MultiChannelViewIfED2Ev.exit
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr205) #33
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load i64, ptr %i.p, align 8, !tbaa !60   ; 2 uses
  %i.r = icmp ugt i64 %i.q, 5
  br i1 %i.r, label %bb.c, label %_ZN3tev16MultiChannelViewIfED2Ev.exit79

bb.c:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit
  %i.s = load ptr, ptr %.reload.addr, align 8, !tbaa !61
  %i.t = mul i64 %i.q, 24
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.t) #36
  br label %_ZN3tev16MultiChannelViewIfED2Ev.exit79

_ZN3tev16MultiChannelViewIfED2Ev.exit79:          ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 512) #33
  ret void

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #21

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nofree nounwind }
attributes #16 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nounwind memory(none) }
attributes #26 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { inlinehint mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { allocsize(0) }
attributes #32 = { builtin allocsize(0) }
attributes #33 = { nounwind }
attributes #34 = { noreturn nounwind }
attributes #35 = { noreturn }
attributes #36 = { builtin nounwind }
attributes #37 = { nounwind allocsize(0) }

!llvm.module.flags = !{!45, !46, !47, !48}
!llvm.ident = !{!49}
!llvm.errno.tbaa = !{!54}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{ptr @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev, null, null, null}
!3 = distinct !{null, null, null}
!4 = distinct !{null, null}
!5 = distinct !{!5, !111}
!6 = distinct !{null, null, null, null, null, ptr @_ZNSt3__110shared_ptrIN4tlog7IOutputEED2B8ne180100Ev, null, null}
!7 = distinct !{null, null}
!8 = distinct !{!8, !111}
!9 = distinct !{!9, !111}
!10 = distinct !{!10, !111}
!11 = distinct !{null, null}
!12 = distinct !{null, null, null}
!13 = distinct !{null, null}
!14 = distinct !{!14, !111}
!15 = distinct !{!15, !111}
!16 = distinct !{!16, !111}
!17 = distinct !{!17, !111}
!18 = distinct !{null, null}
!19 = distinct !{null, null}
!20 = distinct !{!20, !111}
!21 = distinct !{null}
!22 = distinct !{null}
!23 = distinct !{!23, !111}
!24 = distinct !{!24, !111}
!25 = distinct !{!25, !111}
!26 = distinct !{null, null, null, null}
!27 = distinct !{!27, !111}
!28 = distinct !{null, null}
!29 = distinct !{null}
!30 = distinct !{null, null}
!31 = distinct !{!31, !111}
!32 = distinct !{!32, !111}
!33 = distinct !{!33, !111}
!34 = distinct !{null}
!35 = distinct !{null, null, null, null}
!36 = distinct !{null, null, null}
!37 = distinct !{null}
!38 = distinct !{!38, !111}
!39 = distinct !{!39, !111}
!40 = distinct !{null, null, null, null}
!41 = distinct !{null, null, null, null, null}
!42 = distinct !{null, null, null}
!43 = distinct !{ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!44 = distinct !{null, null, ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!45 = !{i32 1, !"long-double-type", !"x86_fp80"}
!46 = !{i32 8, !"PIC Level", i32 2}
!47 = !{i32 7, !"PIE Level", i32 2}
!48 = !{i32 7, !"uwtable", i32 2}
!49 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!50 = !{!"Simple C++ TBAA"}
!51 = !{!"omnipotent char", !50, i64 0}
!52 = !{!"int", !51, i64 0}
!53 = !{!"__libc_errno", !52, i64 0}
!54 = !{!53, !52, i64 0}
!55 = !{!51, !51, i64 0}
!56 = !{!"any pointer", !51, i64 0}
!57 = !{!"p1 _ZTSN3tev11ChannelViewIfEE", !56, i64 0}
!58 = !{!"long", !51, i64 0}
!59 = !{!"_ZTSN3gch6detail22small_vector_data_baseIPN3tev11ChannelViewIfEEmEE", !57, i64 0, !58, i64 8, !58, i64 16}
!60 = !{!59, !58, i64 8}
!61 = !{!59, !57, i64 0}
!62 = !{!59, !58, i64 16}
!63 = !{!"vtable pointer", !50, i64 0}
!64 = !{!63, !63, i64 0}
!65 = !{!"_ZTSNSt3__122__cxx_atomic_base_implIiEE", !51, i64 0}
!66 = !{!65, !51, i64 0}
!67 = !{!"p1 _ZTSN3tev15TaskSharedStateE", !56, i64 0}
!68 = !{!"p1 _ZTSNSt3__119__shared_weak_countE", !56, i64 0}
!69 = !{!"_ZTSNSt3__110shared_ptrIN3tev15TaskSharedStateEEE", !67, i64 0, !68, i64 8}
!70 = !{!69, !67, i64 0}
!71 = !{!69, !68, i64 8}
!72 = !{!56, !56, i64 0}
!73 = !{!"p1 _ZTSNSt3__117__assoc_sub_stateE", !56, i64 0}
!74 = !{!"_ZTSNSt3__16futureIvEE", !73, i64 0}
!75 = !{!74, !73, i64 0}
!76 = !{!52, !52, i64 0}
!77 = !{!"p1 _ZTSN4tlog6LoggerE", !56, i64 0}
!78 = !{!77, !77, i64 0}
!79 = !{!"_ZTSN4tlog9ESeverityE", !51, i64 0}
!80 = !{!"p1 _ZTSNSt3__110shared_ptrIN4tlog7IOutputEEE", !56, i64 0}
!81 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_10shared_ptrIN4tlog7IOutputEEELi0ELb0EEE", !80, i64 0}
!82 = !{!"_ZTSNSt3__117__compressed_pairIPNS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEEE", !81, i64 0}
!83 = !{!"_ZTSNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEEE", !80, i64 0, !80, i64 8, !82, i64 16}
!84 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repE", !51, i64 0}
!85 = !{!"_ZTSNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEE", !84, i64 0}
!86 = !{!"_ZTSNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EE", !85, i64 0}
!87 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !86, i64 0}
!88 = !{!"_ZTSN4tlog6LoggerE", !79, i64 0, !83, i64 8, !87, i64 32}
!89 = !{!88, !79, i64 0}
!90 = !{!83, !80, i64 0}
!91 = !{!83, !80, i64 8}
!92 = !{!"p1 _ZTSN4tlog7IOutputE", !56, i64 0}
!93 = !{!"_ZTSNSt3__110shared_ptrIN4tlog7IOutputEEE", !92, i64 0, !68, i64 8}
!94 = !{!93, !92, i64 0}
!95 = !{!"_ZTSNSt3__116coroutine_handleIN3tev11TaskPromiseINS1_4TaskIvEEvEEEE", !56, i64 0}
!96 = !{!95, !56, i64 0}
!97 = !{!"p1 float", !56, i64 0}
!98 = !{!97, !97, i64 0}
!99 = !{!58, !58, i64 0}
!100 = !{i64 0, i64 8, !98, i64 8, i64 8, !99, i64 16, i64 8, !55}
!101 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!102 = !{!"p1 int", !56, i64 0}
!103 = !{!102, !102, i64 0}
!104 = !{!"p1 _ZTSN3tev11ChannelViewIKfEE", !56, i64 0}
!105 = !{!104, !104, i64 0}
!106 = !{!"p1 _ZTSN3tev16MultiChannelViewIfEE", !56, i64 0}
!107 = !{!106, !106, i64 0}
!108 = !{!"float", !51, i64 0}
!109 = !{!108, !108, i64 0}
!110 = !{!"branch_weights", i32 1, i32 1048575}
!111 = !{!"llvm.loop.mustprogress"}
!112 = !{!"llvm.loop.unswitch.partial.disable"}
!113 = !{!"p1 _ZTSZN3tevL13amazeDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEdiiE4Tile", !56, i64 0}
!114 = !{!113, !113, i64 0}
!115 = !{!"_ZTSNSt3__122__compressed_pair_elemIPZN3tevL13amazeDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEdiiE4TileLi0ELb0EEE", !113, i64 0}
!116 = !{!"_ZTSNSt3__117__compressed_pairIPZN3tevL13amazeDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEdiiE4TileNS_9allocatorISA_EEEE", !115, i64 0}
!117 = !{!"_ZTSNSt3__16vectorIZN3tevL13amazeDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEdiiE4TileNS_9allocatorISA_EEEE", !113, i64 0, !113, i64 8, !116, i64 16}
!118 = !{!117, !113, i64 0}
!119 = !{!117, !113, i64 8}
!120 = !{!"p1 _ZTSNSt3__16vectorIZN3tevL13amazeDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEdiiE4TileNS_9allocatorISA_EEEE", !56, i64 0}
!121 = !{!120, !120, i64 0}
!122 = !{!"p1 _ZTSN7nanogui5ArrayIiLm2EEE", !56, i64 0}
!123 = !{!122, !122, i64 0}
!124 = !{!"_ZN3tevL13amazeDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEdii.Frame Slot", !50, i64 0}
!125 = !{!124, !124, i64 0}
!126 = !{!"p1 _ZTSNSt3__16vectorIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesNS_9allocatorISD_EEEE", !56, i64 0}
!127 = !{!126, !126, i64 0}
!128 = !{!"_ZTSNSt3__16vectorIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesNS_9allocatorISD_EEE16__destroy_vectorE", !126, i64 0}
!129 = !{!"bool", !51, i64 0}
!130 = !{!"_ZTSNSt3__128__exception_guard_exceptionsINS_6vectorIZN3tevL15generalDemosaicENS2_11ChannelViewIKfEENS2_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesNS_9allocatorISE_EEE16__destroy_vectorEEE", !128, i64 0, !129, i64 8}
!131 = !{!130, !129, i64 8}
!132 = !{!"p1 _ZTSZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamples", !56, i64 0}
!133 = !{!"_ZTSNSt3__122__compressed_pair_elemIPZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesLi0ELb0EEE", !132, i64 0}
!134 = !{!"_ZTSNSt3__117__compressed_pairIPZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesNS_9allocatorISD_EEEE", !133, i64 0}
!135 = !{!"_ZTSNSt3__16vectorIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesNS_9allocatorISD_EEEE", !132, i64 0, !132, i64 8, !134, i64 16}
!136 = !{!135, !132, i64 0}
!137 = !{!132, !132, i64 0}
!138 = !{!135, !132, i64 8}
!139 = !{!"p1 _ZTSNSt3__16vectorINS0_IZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesNS_9allocatorISD_EEEENSE_ISG_EEEE", !56, i64 0}
!140 = !{!139, !139, i64 0}
!141 = !{!"_ZTSNSt3__16vectorINS0_IZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesNS_9allocatorISD_EEEENSE_ISG_EEE16__destroy_vectorE", !139, i64 0}
!142 = !{!"_ZTSNSt3__128__exception_guard_exceptionsINS_6vectorINS1_IZN3tevL15generalDemosaicENS2_11ChannelViewIKfEENS2_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesNS_9allocatorISE_EEEENSF_ISH_EEE16__destroy_vectorEEE", !141, i64 0, !129, i64 8}
!143 = !{!142, !129, i64 8}
!144 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_6vectorIZN3tevL15generalDemosaicENS2_11ChannelViewIKfEENS2_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesNS_9allocatorISE_EEEELi0ELb0EEE", !126, i64 0}
!145 = !{!"_ZTSNSt3__117__compressed_pairIPNS_6vectorIZN3tevL15generalDemosaicENS2_11ChannelViewIKfEENS2_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesNS_9allocatorISE_EEEENSF_ISH_EEEE", !144, i64 0}
!146 = !{!"_ZTSNSt3__16vectorINS0_IZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesNS_9allocatorISD_EEEENSE_ISG_EEEE", !126, i64 0, !126, i64 8, !145, i64 16}
!147 = !{!146, !126, i64 0}
!148 = !{!146, !126, i64 8}
!149 = !{!"p1 _ZTSNSt3__19allocatorIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesEE", !56, i64 0}
!150 = !{!"any p2 pointer", !56, i64 0}
!151 = !{!"p2 _ZTSZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamples", !150, i64 0}
!152 = !{!"_ZTSNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIZN3tevL15generalDemosaicENS2_11ChannelViewIKfEENS2_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesEEPSE_EE", !149, i64 0, !151, i64 8, !151, i64 16}
!153 = !{!"_ZTSNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIZN3tevL15generalDemosaicENS3_11ChannelViewIKfEENS3_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesEEPSF_EEEE", !152, i64 0, !129, i64 24}
!154 = !{!153, !129, i64 24}
!155 = !{!"p1 _ZTSZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffset", !56, i64 0}
!156 = !{!"_ZTSNSt3__122__compressed_pair_elemIPZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetLi0ELb0EEE", !155, i64 0}
end_hunk_1
