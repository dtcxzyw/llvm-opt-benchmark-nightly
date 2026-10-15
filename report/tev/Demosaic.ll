Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/Demosaic?download=true
inline.NumInlined: 6129
inline.NumDeleted: 2278
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 81
begin_hunk_0_@"_ZZN3tevL13amazeDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEdiiENK3$_0clEi":bb.a
  store float %i.dyk, ptr %i.dyl, align 4, !tbaa !109
  br label %bb.bt

bb.bt:                                            ; preds = %.lr.ph2735._crit_edge, %bb.bs
  %indvars.iv.next2978.pre-phi = phi i64 [ %.pre3070, %.lr.ph2735._crit_edge ], [ %i.duv, %bb.bs ] ; 2 uses
  %i.dym = icmp slt i64 %indvars.iv.next2978.pre-phi, %i.dst
  br i1 %i.dym, label %.lr.ph2735, label %._crit_edge2736, !llvm.loop !1570

.loopexit2569:                                    ; preds = %._crit_edge2736, %._crit_edge2731
  br i1 %i.dov, label %.lr.ph2749, label %.preheader2565

.lr.ph2749:                                       ; preds = %.loopexit2569
  %i.dyn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dyo = load ptr, ptr %i.dyn, align 8, !tbaa !1633, !nonnull !204, !align !206
  %.val2424 = load ptr, ptr %i.dyo, align 8, !tbaa !403
  %i.dyp = add nsw i32 %i.ao, -6                  ; 2 uses
  %i.dyq = icmp sgt i32 %i.ao, 12                 ; 2 uses
  br label %bb.bu

.preheader2565:                                   ; preds = %.loopexit2566, %.loopexit2569
  br i1 %i.dow, label %.lr.ph2757, label %.preheader2563.thread

.lr.ph2757:                                       ; preds = %.preheader2565
  %i.dyr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dys = load ptr, ptr %i.dyr, align 8, !tbaa !1633, !nonnull !204, !align !206
  %.val2423 = load ptr, ptr %i.dys, align 8, !tbaa !403
  %i.dyt = add nsw i32 %i.ao, -8                  ; 2 uses
  %i.dyu = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.bx

bb.bu:                                            ; preds = %.lr.ph2749, %.loopexit2566
  %indvars.iv2985 = phi i32 [ 960, %.lr.ph2749 ], [ %indvars.iv.next2986, %.loopexit2566 ] ; 2 uses
  %.022492747 = phi i32 [ 6, %.lr.ph2749 ], [ %i.ecg, %.loopexit2566 ] ; 2 uses
  %i.dyv = or disjoint i32 %indvars.iv2985, 6
  %i.dyw = zext i32 %i.dyv to i64                 ; 2 uses
  %i.dyx = and i32 %.022492747, 1
  %i.dyy = zext nneg i32 %i.dyx to i64
  %i.dyz = getelementptr inbounds nuw [8 x i8], ptr %.val2424, i64 %i.dyy
  %i.dza = load i32, ptr %i.dyz, align 4, !tbaa !76
  %i.dzb = and i32 %i.dza, 1
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
  %.022432750 = phi i32 [ %i.ecr, %.lr.ph2754 ], [ %i.eox, %bb.ci ]
  %i.ecz = add nuw nsw i64 %indvars.iv2998, 161   ; 2 uses
  %i.eda = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ecz ; 3 uses
  %i.edb = load float, ptr %i.eda, align 4, !tbaa !109 ; 2 uses
  %i.edc = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv2998 ; 3 uses
  %i.edd = load float, ptr %i.edc, align 4, !tbaa !109 ; 2 uses
  %i.ede = fadd float %i.edd, f0x3727C5AC
  %i.edf = add nuw nsw i64 %indvars.iv2998, 322   ; 2 uses
  %i.edg = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.edf
  %i.edh = load float, ptr %i.edg, align 4, !tbaa !109 ; 2 uses
  %i.edi = add nsw i64 %indvars.iv2998, -161      ; 2 uses
  %i.edj = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.edi ; 3 uses
  %i.edk = load float, ptr %i.edj, align 4, !tbaa !109 ; 2 uses
  %i.edl = add nsw i64 %indvars.iv2998, -322      ; 2 uses
  %i.edm = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.edl
  %i.edn = load float, ptr %i.edm, align 4, !tbaa !109 ; 2 uses
  %i.edo = add nsw i64 %indvars.iv2998, -159      ; 2 uses
  %i.edp = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.edo ; 3 uses
  %i.edq = load float, ptr %i.edp, align 4, !tbaa !109 ; 2 uses
  %i.edr = add nsw i64 %indvars.iv2998, -318      ; 2 uses
  %i.eds = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.edr
  %i.edt = load float, ptr %i.eds, align 4, !tbaa !109 ; 2 uses
  %i.edu = add nuw nsw i64 %indvars.iv2998, 159   ; 2 uses
  %i.edv = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.edu ; 3 uses
  %i.edw = load float, ptr %i.edv, align 4, !tbaa !109 ; 2 uses
  %i.edx = add nuw nsw i64 %indvars.iv2998, 318   ; 2 uses
  %i.edy = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.edx
  %i.edz = load float, ptr %i.edy, align 4, !tbaa !109 ; 2 uses
  %i.eea = insertelement <4 x float> poison, float %i.edw, i64 0
  %i.eeb = insertelement <4 x float> %i.eea, float %i.edq, i64 1
  %i.eec = insertelement <4 x float> %i.eeb, float %i.edk, i64 2
  %i.eed = insertelement <4 x float> %i.eec, float %i.edb, i64 3
  %i.eee = fmul <4 x float> %i.eed, splat (float 2.000000e+00)
  %i.eef = insertelement <4 x float> poison, float %i.ede, i64 0
  %i.eeg = shufflevector <4 x float> %i.eef, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eeh = insertelement <4 x float> poison, float %i.edz, i64 0
  %i.eei = insertelement <4 x float> %i.eeh, float %i.edt, i64 1
  %i.eej = insertelement <4 x float> %i.eei, float %i.edn, i64 2
  %i.eek = insertelement <4 x float> %i.eej, float %i.edh, i64 3
  %i.eel = fadd <4 x float> %i.eeg, %i.eek
  %i.eem = fdiv <4 x float> %i.eee, %i.eel        ; 2 uses
  %i.een = fsub <4 x float> splat (float 1.000000e+00), %i.eem
  %i.eeo = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.een)
  %i.eep = fcmp olt <4 x float> %i.eeo, splat (float 7.500000e-01) ; 2 uses
  %i.eeq = insertelement <4 x float> poison, float %i.edd, i64 0
  %i.eer = shufflevector <4 x float> %i.eeq, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ees = fmul <4 x float> %i.eer, %i.eem        ; 2 uses
  %2 = insertelement <4 x float> poison, float %i.edh, i64 0
  %3 = insertelement <4 x float> %2, float %i.edn, i64 1
  %4 = insertelement <4 x float> %3, float %i.edt, i64 2
  %5 = insertelement <4 x float> %4, float %i.edz, i64 3
  %i.eet = fsub <4 x float> %i.eer, %5
  %6 = insertelement <4 x float> poison, float %i.edb, i64 0
  %7 = insertelement <4 x float> %6, float %i.edk, i64 1
  %8 = insertelement <4 x float> %7, float %i.edq, i64 2
  %9 = insertelement <4 x float> %8, float %i.edw, i64 3
  %i.eeu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eet, <4 x float> splat (float 5.000000e-01), <4 x float> %9) ; 2 uses
  %10 = shufflevector <4 x i1> %i.eep, <4 x i1> poison, <2 x i32> <i32 2, i32 0>
  %11 = shufflevector <4 x float> %i.ees, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.eev = shufflevector <4 x float> %i.eeu, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.eew = select <2 x i1> %10, <2 x float> %11, <2 x float> %i.eev ; 2 uses
  %i.eex = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv2996
  %i.eey = load float, ptr %i.eex, align 4, !tbaa !109
  %i.eez = lshr i64 %i.ecz, 1
  %i.efa = and i64 %i.eez, 2147483647
  %i.efb = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.efa
  %i.efc = load float, ptr %i.efb, align 4, !tbaa !109
  %i.efd = lshr i64 %i.edf, 1
  %i.efe = and i64 %i.efd, 2147483647
  %i.eff = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.efe
  %i.efg = load float, ptr %i.eff, align 4, !tbaa !109
  %i.efh = trunc nsw i64 %i.edi to i32
  %i.efi = ashr i32 %i.efh, 1
  %i.efj = sext i32 %i.efi to i64
  %i.efk = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.efj
  %i.efl = load float, ptr %i.efk, align 4, !tbaa !109
  %i.efm = trunc nsw i64 %i.edl to i32
  %i.efn = ashr i32 %i.efm, 1
  %i.efo = sext i32 %i.efn to i64
  %i.efp = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.efo
  %i.efq = load float, ptr %i.efp, align 4, !tbaa !109
  %i.efr = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv2996
  %i.efs = load float, ptr %i.efr, align 4, !tbaa !109
  %i.eft = trunc nsw i64 %i.edo to i32
  %i.efu = ashr i32 %i.eft, 1
  %i.efv = sext i32 %i.efu to i64
  %i.efw = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.efv
  %i.efx = load float, ptr %i.efw, align 4, !tbaa !109
  %i.efy = trunc nsw i64 %i.edr to i32
  %i.efz = ashr i32 %i.efy, 1
  %i.ega = sext i32 %i.efz to i64
  %i.egb = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ega
  %i.egc = load float, ptr %i.egb, align 4, !tbaa !109
  %i.egd = lshr i64 %i.edu, 1
  %i.ege = and i64 %i.egd, 2147483647
  %i.egf = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ege
  %i.egg = load float, ptr %i.egf, align 4, !tbaa !109
  %i.egh = lshr i64 %i.edx, 1
  %i.egi = and i64 %i.egh, 2147483647
  %i.egj = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.egi
  %i.egk = load float, ptr %i.egj, align 4, !tbaa !109
  %i.egl = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv2996 ; 4 uses
  %12 = shufflevector <4 x i1> %i.eep, <4 x i1> poison, <2 x i32> <i32 3, i32 1>
  %13 = shufflevector <4 x float> %i.ees, <4 x float> poison, <2 x i32> <i32 3, i32 1>
  %i.egm = shufflevector <4 x float> %i.eeu, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.egn = select <2 x i1> %12, <2 x float> %13, <2 x float> %i.egm
  %i.ego = insertelement <2 x float> poison, float %i.eey, i64 0
  %i.egp = insertelement <2 x float> %i.ego, float %i.efs, i64 1
  %i.egq = fadd <2 x float> %i.egp, splat (float f0x3727C5AC) ; 3 uses
  %i.egr = extractelement <2 x float> %i.egq, i64 0
  %i.egs = fadd float %i.egr, %i.efc
  %i.egt = fadd float %i.egs, %i.efg              ; 2 uses
  %i.egu = extractelement <2 x float> %i.egq, i64 1
  %i.egv = fadd float %i.egu, %i.efx
  %i.egw = fadd float %i.egv, %i.egc              ; 2 uses
  %i.egx = insertelement <2 x float> poison, float %i.efl, i64 0
  %i.egy = insertelement <2 x float> %i.egx, float %i.egg, i64 1
  %i.egz = fadd <2 x float> %i.egq, %i.egy
  %i.eha = insertelement <2 x float> poison, float %i.efq, i64 0
  %i.ehb = insertelement <2 x float> %i.eha, float %i.egk, i64 1
  %i.ehc = fadd <2 x float> %i.egz, %i.ehb        ; 3 uses
  %i.ehd = fmul <2 x float> %i.egn, %i.ehc        ; 2 uses
  %i.ehe = extractelement <2 x float> %i.ehd, i64 0
  %i.ehf = extractelement <2 x float> %i.eew, i64 0
  %i.ehg = tail call float @llvm.fmuladd.f32(float %i.egt, float %i.ehf, float %i.ehe)
  %i.ehh = extractelement <2 x float> %i.ehc, i64 0
  %i.ehi = fadd float %i.egt, %i.ehh
  %i.ehj = fdiv float %i.ehg, %i.ehi
  store float %i.ehj, ptr %i.egl, align 4, !tbaa !109
  %i.ehk = extractelement <2 x float> %i.ehd, i64 1
  %i.ehl = extractelement <2 x float> %i.eew, i64 1
  %i.ehm = tail call float @llvm.fmuladd.f32(float %i.egw, float %i.ehl, float %i.ehk)
  %i.ehn = extractelement <2 x float> %i.ehc, i64 1
  %i.eho = fadd float %i.egw, %i.ehn
  %i.ehp = fdiv float %i.ehm, %i.eho              ; 10 uses
  %i.ehq = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv2996 ; 4 uses
  store float %i.ehp, ptr %i.ehq, align 4, !tbaa !109
  %i.ehr = trunc i64 %indvars.iv2998 to i32
  %i.ehs = add i32 %i.ehr, -160
  %i.eht = ashr i32 %i.ehs, 1
  %i.ehu = sext i32 %i.eht to i64                 ; 2 uses
  %i.ehv = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.ehu
  %i.ehw = load float, ptr %i.ehv, align 4, !tbaa !109
  %i.ehx = trunc i64 %indvars.iv2998 to i32
  %i.ehy = add i32 %i.ehx, -1
  %i.ehz = ashr i32 %i.ehy, 1
  %i.eia = sext i32 %i.ehz to i64                 ; 2 uses
  %i.eib = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.eia
  %i.eic = load float, ptr %i.eib, align 4, !tbaa !109
  %i.eid = fadd float %i.ehw, %i.eic
  %i.eie = add i64 %indvars.iv2998, 1
  %i.eif = lshr i64 %i.eie, 1
  %i.eig = and i64 %i.eif, 2147483647             ; 2 uses
  %i.eih = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.eig
  %i.eii = load float, ptr %i.eih, align 4, !tbaa !109
  %i.eij = fadd float %i.eid, %i.eii
  %i.eik = add i64 %indvars.iv2998, 160
  %i.eil = lshr i64 %i.eik, 1
  %i.eim = and i64 %i.eil, 2147483647             ; 2 uses
  %i.ein = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.eim
  %i.eio = load float, ptr %i.ein, align 4, !tbaa !109
  %i.eip = fadd float %i.eij, %i.eio
  %i.eiq = tail call float @llvm.fmuladd.f32(float %i.eip, float f0x3E0C7CD5, float 1.000000e-10)
  %i.eir = trunc i64 %indvars.iv2998 to i32
  %i.eis = add i32 %i.eir, -321
  %i.eit = ashr i32 %i.eis, 1
  %i.eiu = sext i32 %i.eit to i64                 ; 2 uses
  %i.eiv = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.eiu
  %i.eiw = load float, ptr %i.eiv, align 4, !tbaa !109
  %i.eix = trunc i64 %indvars.iv2998 to i32
  %i.eiy = add i32 %i.eix, -319
  %i.eiz = ashr i32 %i.eiy, 1
  %i.eja = sext i32 %i.eiz to i64                 ; 2 uses
  %i.ejb = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.eja
  %i.ejc = load float, ptr %i.ejb, align 4, !tbaa !109
  %i.ejd = fadd float %i.eiw, %i.ejc
  %i.eje = trunc i64 %indvars.iv2998 to i32
  %i.ejf = add i32 %i.eje, -162
  %i.ejg = ashr i32 %i.ejf, 1
  %i.ejh = sext i32 %i.ejg to i64                 ; 2 uses
  %i.eji = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.ejh
  %i.ejj = load float, ptr %i.eji, align 4, !tbaa !109
  %i.ejk = fadd float %i.ejd, %i.ejj
  %indvars.iv.next2999 = add nuw nsw i64 %indvars.iv2998, 2
  %i.ejl = trunc i64 %indvars.iv2998 to i32
  %i.ejm = add i32 %i.ejl, -158
  %i.ejn = ashr i32 %i.ejm, 1
  %i.ejo = sext i32 %i.ejn to i64                 ; 2 uses
  %i.ejp = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.ejo
  %i.ejq = load float, ptr %i.ejp, align 4, !tbaa !109
  %i.ejr = fadd float %i.ejk, %i.ejq
  %i.ejs = add i64 %indvars.iv2998, 158
  %i.ejt = lshr i64 %i.ejs, 1
  %i.eju = and i64 %i.ejt, 2147483647             ; 2 uses
  %i.ejv = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.eju
  %i.ejw = load float, ptr %i.ejv, align 4, !tbaa !109
  %i.ejx = fadd float %i.ejr, %i.ejw
  %i.ejy = add i64 %indvars.iv2998, 162
  %i.ejz = lshr i64 %i.ejy, 1
  %i.eka = and i64 %i.ejz, 2147483647             ; 2 uses
  %i.ekb = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.eka
  %i.ekc = load float, ptr %i.ekb, align 4, !tbaa !109
  %i.ekd = fadd float %i.ejx, %i.ekc
  %i.eke = add i64 %indvars.iv2998, 319
  %i.ekf = lshr i64 %i.eke, 1
  %i.ekg = and i64 %i.ekf, 2147483647             ; 2 uses
  %i.ekh = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ekg
  %i.eki = load float, ptr %i.ekh, align 4, !tbaa !109
  %i.ekj = fadd float %i.ekd, %i.eki
  %i.ekk = add i64 %indvars.iv2998, 321
  %i.ekl = lshr i64 %i.ekk, 1
  %i.ekm = and i64 %i.ekl, 2147483647             ; 2 uses
  %i.ekn = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ekm
  %i.eko = load float, ptr %i.ekn, align 4, !tbaa !109
  %i.ekp = fadd float %i.ekj, %i.eko
  %i.ekq = tail call float @llvm.fmuladd.f32(float %i.ekp, float f0x3D670656, float %i.eiq) ; 2 uses
  %i.ekr = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ehu
  %i.eks = load float, ptr %i.ekr, align 4, !tbaa !109
  %i.ekt = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.eia
  %i.eku = load float, ptr %i.ekt, align 4, !tbaa !109
  %i.ekv = fadd float %i.eks, %i.eku
  %i.ekw = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.eig
  %i.ekx = load float, ptr %i.ekw, align 4, !tbaa !109
  %i.eky = fadd float %i.ekv, %i.ekx
  %i.ekz = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.eim
  %i.ela = load float, ptr %i.ekz, align 4, !tbaa !109
  %i.elb = fadd float %i.eky, %i.ela
  %i.elc = tail call float @llvm.fmuladd.f32(float %i.elb, float f0x3E0C7CD5, float 1.000000e-10)
  %i.eld = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.eiu
  %i.ele = load float, ptr %i.eld, align 4, !tbaa !109
  %i.elf = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.eja
  %i.elg = load float, ptr %i.elf, align 4, !tbaa !109
  %i.elh = fadd float %i.ele, %i.elg
  %i.eli = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ejh
  %i.elj = load float, ptr %i.eli, align 4, !tbaa !109
  %i.elk = fadd float %i.elh, %i.elj
  %i.ell = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ejo
  %i.elm = load float, ptr %i.ell, align 4, !tbaa !109
  %i.eln = fadd float %i.elk, %i.elm
  %i.elo = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.eju
  %i.elp = load float, ptr %i.elo, align 4, !tbaa !109
  %i.elq = fadd float %i.eln, %i.elp
  %i.elr = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.eka
  %i.els = load float, ptr %i.elr, align 4, !tbaa !109
  %i.elt = fadd float %i.elq, %i.els
  %i.elu = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ekg
  %i.elv = load float, ptr %i.elu, align 4, !tbaa !109
  %i.elw = fadd float %i.elt, %i.elv
  %i.elx = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ekm
  %i.ely = load float, ptr %i.elx, align 4, !tbaa !109
  %i.elz = fadd float %i.elw, %i.ely
  %i.ema = tail call float @llvm.fmuladd.f32(float %i.elz, float f0x3D670656, float %i.elc)
  %i.emb = fadd float %i.ekq, %i.ema
  %i.emc = fdiv float %i.ekq, %i.emb
  %i.emd = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv2996
  store float %i.emc, ptr %i.emd, align 4, !tbaa !109
  %i.eme = load float, ptr %i.edc, align 4, !tbaa !109 ; 4 uses
  %i.emf = fcmp olt float %i.ehp, %i.eme
  br i1 %i.emf, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.emg = fmul float %i.ehp, 2.000000e+00
  %i.emh = fcmp olt float %i.emg, %i.eme
  %i.emi = load float, ptr %i.edv, align 4, !tbaa !109 ; 4 uses
  %i.emj = load float, ptr %i.edp, align 4, !tbaa !109 ; 2 uses
  %i.emk = fcmp olt float %i.emi, %i.ehp
  %i.eml = fcmp olt float %i.ehp, %i.emi
  %i.emm = select i1 %i.eml, float %i.emi, float %i.ehp ; 2 uses
  %i.emn = fcmp olt float %i.emj, %i.emm
  %i.emo = select i1 %i.emk, float %i.emi, float %i.ehp ; 2 uses
  %i.emp = select i1 %i.emn, float %i.emj, float %i.emm ; 2 uses
  %i.emq = fcmp olt float %i.emo, %i.emp
  %i.emr = select i1 %i.emq, float %i.emp, float %i.emo ; 2 uses
  br i1 %i.emh, label %.sink.split3227, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ems = fsub float %i.eme, %i.ehp
  %i.emt = fmul float %i.ems, 2.000000e+00
  %i.emu = fadd float %i.ehp, f0x3727C5AC
  %i.emv = fadd float %i.emu, %i.eme
  %i.emw = fdiv float %i.emt, %i.emv              ; 2 uses
  %i.emx = fsub float 1.000000e+00, %i.emw
  %i.emy = fmul float %i.emx, %i.emr
  %i.emz = tail call float @llvm.fmuladd.f32(float %i.emw, float %i.ehp, float %i.emy)
  br label %.sink.split3227

.sink.split3227:                                  ; preds = %bb.bz, %bb.ca
  %.sink3228 = phi float [ %i.emz, %bb.ca ], [ %i.emr, %bb.bz ]
  store float %.sink3228, ptr %i.ehq, align 4, !tbaa !109
  br label %bb.cb

bb.cb:                                            ; preds = %.sink.split3227, %bb.by
  %i.ena = load float, ptr %i.egl, align 4, !tbaa !109 ; 10 uses
  %i.enb = load float, ptr %i.edc, align 4, !tbaa !109 ; 4 uses
  %i.enc = fcmp olt float %i.ena, %i.enb
  br i1 %i.enc, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  %i.end = fmul float %i.ena, 2.000000e+00
  %i.ene = fcmp olt float %i.end, %i.enb
  %i.enf = load float, ptr %i.edj, align 4, !tbaa !109 ; 4 uses
  %i.eng = load float, ptr %i.eda, align 4, !tbaa !109 ; 2 uses
  %i.enh = fcmp olt float %i.enf, %i.ena
  %i.eni = fcmp olt float %i.ena, %i.enf
  %i.enj = select i1 %i.eni, float %i.enf, float %i.ena ; 2 uses
  %i.enk = fcmp olt float %i.eng, %i.enj
end_hunk_0
