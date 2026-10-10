Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme_error?download=true
inline.NumInlined: 577
inline.NumDeleted: 259
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZL19estimate_reciprocalP14PmeErrorInputsPA3_fPKfiP8_IO_FILEbiPiRKN3gmx7MpiCommE:bb.a

bb.u:                                             ; preds = %bb.s
  %i.bey = fmul nnan float %i.bem, %i.bep
  %i.bez = load i32, ptr %i.dd, align 8, !tbaa !50 ; 2 uses
  %i.bfa = sitofp i32 %i.bez to float
  %i.bfb = fdiv float %i.bey, %i.bfa
  %i.bfc = call noundef float @llvm.ceil.f32(float %i.bfb)
  %i.bfd = fptosi float %i.bfc to i32             ; 5 uses
  %i.bfe = mul nsw i32 %i.bez, %i.bfd             ; 9 uses
  %i.bff = load i32, ptr %i.ds, align 4, !tbaa !35
  %i.bfg = mul nsw i32 %i.bff, %i.bfd             ; 4 uses
  %i.bfh = add nsw i32 %i.bfg, %i.bfd
  %.sroa.speculated74 = call i32 @llvm.smin.i32(i32 %i.bfe, i32 %i.bfh) ; 3 uses
  %i.bfi = sext i32 %i.bfe to i64                 ; 2 uses
  %i.bfj = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.24, i32 noundef 661, i64 noundef range(i64 -2147483648, 2147483648) %i.bfi, i64 noundef 4) ; 6 uses
  %i.bfk = load i32, ptr %i.ds, align 4, !tbaa !35
  %i.bfl = icmp eq i32 %i.bfk, 0
  %i.bfm = icmp sgt i32 %i.bfe, 0
  %or.cond = and i1 %i.bfl, %i.bfm
  br i1 %or.cond, label %.lr.ph100, label %.loopexit

.lr.ph100:                                        ; preds = %bb.u
  %i.bfn = icmp eq i32 %i.bm, 0
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bfo = zext nneg i32 %i.bfe to i64            ; 2 uses
  br i1 %i.bfn, label %_ZN3gmx22UniformIntDistributionIiEclINS_16ThreeFry2x64FastILj64EEEEEiRT_.exit.us.preheader, label %.lr.ph100.split

_ZN3gmx22UniformIntDistributionIiEclINS_16ThreeFry2x64FastILj64EEEEEiRT_.exit.us.preheader: ; preds = %.lr.ph100
  %i.bfp = shl nuw nsw i64 %i.bfo, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bfj, i8 0, i64 %i.bfp, i1 false), !tbaa !9
  br label %.loopexit

.lr.ph100.split:                                  ; preds = %.lr.ph100, %_ZN3gmx22UniformIntDistributionIiEclINS_16ThreeFry2x64FastILj64EEEEEiRT_.exit.loopexit
  %indvars.iv143 = phi i64 [ %indvars.iv.next144, %_ZN3gmx22UniformIntDistributionIiEclINS_16ThreeFry2x64FastILj64EEEEEiRT_.exit.loopexit ], [ 0, %.lr.ph100 ] ; 2 uses
  %.sroa.7.098 = phi i64 [ %i.bih, %_ZN3gmx22UniformIntDistributionIiEclINS_16ThreeFry2x64FastILj64EEEEEiRT_.exit.loopexit ], [ 0, %.lr.ph100 ]
  %.sroa.10.097 = phi i32 [ %i.bil, %_ZN3gmx22UniformIntDistributionIiEclINS_16ThreeFry2x64FastILj64EEEEEiRT_.exit.loopexit ], [ 0, %.lr.ph100 ]
  %i.bfq = call noundef i32 @_ZN3gmx5log2IEj(i32 noundef %i.bm) ; 2 uses
  %i.bfr = ashr i32 %i.bm, %i.bfq
  %i.bfs = icmp sgt i32 %i.bfr, 0
  %i.bft = zext i1 %i.bfs to i32
  %i.bfu = add i32 %i.bfq, %i.bft                 ; 3 uses
  %i.bfv = zext i32 %i.bfu to i64                 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge.i.i, %.lr.ph100.split
  %.sroa.7.1 = phi i64 [ %.sroa.7.098, %.lr.ph100.split ], [ %i.bih, %._crit_edge.i.i ]
  %i.bfw = phi i32 [ %.sroa.10.097, %.lr.ph100.split ], [ %i.bil, %._crit_edge.i.i ] ; 2 uses
  %i.bfx = icmp ult i32 %i.bfw, %i.bfu
  br i1 %i.bfx, label %bb.w, label %._crit_edge.i.i

bb.w:                                             ; preds = %bb.v
  %i.bfy = load i32, ptr %i.bl, align 8, !tbaa !312 ; 3 uses
  %i.bfz = icmp ugt i32 %i.bfy, 1
  br i1 %i.bfz, label %bb.x, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.w
  %.phi.trans.insert1.i = zext nneg i32 %i.bfy to i64
  %.phi.trans.insert2.i = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.phi.trans.insert1.i
  %.pre.i = load i64, ptr %.phi.trans.insert2.i, align 8, !tbaa !61
  %i.bga = add nuw nsw i32 %i.bfy, 1
  br label %_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv.exit

bb.x:                                             ; preds = %bb.w
  call void @_ZN3gmx8internal14highBitCounter9incrementImLm2ELj64EEEvPSt5arrayIT_XT0_EE(ptr noundef nonnull %i.j)
  %.sroa.020.0.copyload.i.i = load i64, ptr %i.j, align 8
  %.sroa.49.0.copyload.i.i = load i64, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !tbaa !18
  %i.bgb = load i64, ptr %8, align 8, !tbaa !61   ; 4 uses
  %i.bgc = add i64 %i.bgb, %.sroa.020.0.copyload.i.i
  %i.bgd = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !61 ; 4 uses
  %i.bge = xor i64 %i.bgb, %i.bgd
  %i.bgf = xor i64 %i.bge, 2004413935125273122    ; 2 uses
  %i.bgg = add i64 %i.bgd, %.sroa.49.0.copyload.i.i ; 3 uses
  %i.bgh = add i64 %i.bgc, %i.bgg                 ; 2 uses
  %i.bgi = call i64 @llvm.fshl.i64(i64 %i.bgg, i64 %i.bgg, i64 16)
  %i.bgj = xor i64 %i.bgi, %i.bgh                 ; 3 uses
  %i.bgk = add i64 %i.bgj, %i.bgh                 ; 2 uses
  %i.bgl = call i64 @llvm.fshl.i64(i64 %i.bgj, i64 %i.bgj, i64 42)
  %i.bgm = xor i64 %i.bgl, %i.bgk                 ; 3 uses
  %i.bgn = add i64 %i.bgm, %i.bgk                 ; 2 uses
  %i.bgo = call i64 @llvm.fshl.i64(i64 %i.bgm, i64 %i.bgm, i64 12)
  %i.bgp = xor i64 %i.bgo, %i.bgn                 ; 3 uses
  %i.bgq = add i64 %i.bgp, %i.bgn                 ; 2 uses
  %i.bgr = call i64 @llvm.fshl.i64(i64 %i.bgp, i64 %i.bgp, i64 31)
  %i.bgs = xor i64 %i.bgr, %i.bgq
  %i.bgt = add i64 %i.bgq, %i.bgd
  %i.bgu = add i64 %i.bgf, 1
  %i.bgv = add i64 %i.bgu, %i.bgs                 ; 3 uses
  %i.bgw = add i64 %i.bgt, %i.bgv                 ; 2 uses
  %i.bgx = call i64 @llvm.fshl.i64(i64 %i.bgv, i64 %i.bgv, i64 16)
  %i.bgy = xor i64 %i.bgx, %i.bgw                 ; 3 uses
  %i.bgz = add i64 %i.bgy, %i.bgw                 ; 2 uses
  %i.bha = call i64 @llvm.fshl.i64(i64 %i.bgy, i64 %i.bgy, i64 32)
  %i.bhb = xor i64 %i.bha, %i.bgz                 ; 3 uses
  %i.bhc = add i64 %i.bhb, %i.bgz                 ; 2 uses
  %i.bhd = call i64 @llvm.fshl.i64(i64 %i.bhb, i64 %i.bhb, i64 24)
  %i.bhe = xor i64 %i.bhd, %i.bhc                 ; 3 uses
  %i.bhf = add i64 %i.bhe, %i.bhc                 ; 2 uses
  %i.bhg = call i64 @llvm.fshl.i64(i64 %i.bhe, i64 %i.bhe, i64 21)
  %i.bhh = xor i64 %i.bhg, %i.bhf
  %i.bhi = add i64 %i.bhf, %i.bgf
  %i.bhj = add i64 %i.bgb, 2
  %i.bhk = add i64 %i.bhj, %i.bhh                 ; 3 uses
  %i.bhl = add i64 %i.bhi, %i.bhk                 ; 2 uses
  %i.bhm = call i64 @llvm.fshl.i64(i64 %i.bhk, i64 %i.bhk, i64 16)
  %i.bhn = xor i64 %i.bhm, %i.bhl                 ; 3 uses
  %i.bho = add i64 %i.bhn, %i.bhl                 ; 2 uses
  %i.bhp = call i64 @llvm.fshl.i64(i64 %i.bhn, i64 %i.bhn, i64 42)
  %i.bhq = xor i64 %i.bhp, %i.bho                 ; 3 uses
  %i.bhr = add i64 %i.bhq, %i.bho                 ; 2 uses
  %i.bhs = call i64 @llvm.fshl.i64(i64 %i.bhq, i64 %i.bhq, i64 12)
  %i.bht = xor i64 %i.bhs, %i.bhr                 ; 3 uses
  %i.bhu = add i64 %i.bht, %i.bhr                 ; 2 uses
  %i.bhv = call i64 @llvm.fshl.i64(i64 %i.bht, i64 %i.bht, i64 31)
  %i.bhw = xor i64 %i.bhv, %i.bhu
  %i.bhx = add i64 %i.bhu, %i.bgb
  %i.bhy = add i64 %i.bgd, 3
  %i.bhz = add i64 %i.bhy, %i.bhw                 ; 3 uses
  %i.bia = add i64 %i.bhx, %i.bhz                 ; 3 uses
  %i.bib = call i64 @llvm.fshl.i64(i64 %i.bhz, i64 %i.bhz, i64 16)
  %i.bic = xor i64 %i.bib, %i.bia
  store i64 %i.bia, ptr %i.bk, align 8
  store i64 %i.bic, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !18
  br label %_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv.exit

_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv.exit: ; preds = %._crit_edge.i, %bb.x
  %i.bid = phi i64 [ %i.bia, %bb.x ], [ %.pre.i, %._crit_edge.i ]
  %i.bie = phi i32 [ 1, %bb.x ], [ %i.bga, %._crit_edge.i ]
  store i32 %i.bie, ptr %i.bl, align 8, !tbaa !312
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.v, %_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv.exit
  %i.bif = phi i32 [ 64, %_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv.exit ], [ %i.bfw, %bb.v ]
  %i.big = phi i64 [ %i.bid, %_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv.exit ], [ %.sroa.7.1, %bb.v ] ; 2 uses
  %i.bih = lshr i64 %i.big, %i.bfv                ; 3 uses
  %i.bii = shl i64 %i.bih, %i.bfv
  %i.bij = sub i64 %i.big, %i.bii
  %i.bik = trunc i64 %i.bij to i32                ; 2 uses
  %i.bil = sub i32 %i.bif, %i.bfu                 ; 2 uses
  %.not80 = icmp sgt i32 %3, %i.bik
  br i1 %.not80, label %_ZN3gmx22UniformIntDistributionIiEclINS_16ThreeFry2x64FastILj64EEEEEiRT_.exit.loopexit, label %bb.v, !llvm.loop !304

_ZN3gmx22UniformIntDistributionIiEclINS_16ThreeFry2x64FastILj64EEEEEiRT_.exit.loopexit: ; preds = %._crit_edge.i.i
  %i.bim = getelementptr inbounds nuw [4 x i8], ptr %i.bfj, i64 %indvars.iv143
  store i32 %i.bik, ptr %i.bim, align 4, !tbaa !9
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %exitcond147.not = icmp eq i64 %indvars.iv.next144, %i.bfo
  br i1 %exitcond147.not, label %.loopexit, label %.lr.ph100.split, !llvm.loop !305

.loopexit:                                        ; preds = %_ZN3gmx22UniformIntDistributionIiEclINS_16ThreeFry2x64FastILj64EEEEEiRT_.exit.loopexit, %_ZN3gmx22UniformIntDistributionIiEclINS_16ThreeFry2x64FastILj64EEEEEiRT_.exit.us.preheader, %bb.u
  %i.bin = load i32, ptr %i.dd, align 8, !tbaa !50
  %i.bio = icmp sgt i32 %i.bin, 1
  br i1 %i.bio, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.loopexit
  %i.bip = load ptr, ptr %7, align 8, !tbaa !53
  %i.biq = shl nsw i64 %i.bfi, 2
  call void @_Z9gmx_bcastmPvP10tmpi_comm_(i64 noundef %i.biq, ptr noundef %i.bfj, ptr noundef %i.bip)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.loopexit
  br i1 %4, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.bir = load i32, ptr %i.ds, align 4, !tbaa !35
  %i.bis = icmp eq i32 %i.bir, 0
  br i1 %i.bis, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.bit = load ptr, ptr @stdout, align 8, !tbaa !59
  %i.biu = icmp eq i32 %i.bfe, 1
  %i.biv = select i1 %i.biu, ptr @.str.71, ptr @.str.72
  %i.biw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bit, ptr noundef nonnull @.str.70, i32 noundef %i.bfe, ptr noundef nonnull %i.biv) #22 ; 0 uses
  %i.bix = load i32, ptr %i.dd, align 8, !tbaa !50
  %i.biy = icmp sgt i32 %i.bix, 1
  br i1 %i.biy, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.biz = load ptr, ptr @stdout, align 8, !tbaa !59
  %i.bja = icmp eq i32 %i.bfd, 1
  %i.bjb = select i1 %i.bja, ptr @.str.71, ptr @.str.72
  %i.bjc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.biz, ptr noundef nonnull @.str.73, i32 noundef %i.bfd, ptr noundef nonnull %i.bjb) #22 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.bjd = load ptr, ptr @stdout, align 8, !tbaa !59
  %fwrite331 = call i64 @fwrite(ptr nonnull @.str.74, i64 2, i64 1, ptr %i.bjd) ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.t, %bb.z, %bb.aa, %bb.ad
  %.sroa.speculated78 = phi i32 [ %.sroa.speculated74, %bb.ad ], [ %.sroa.speculated74, %bb.aa ], [ %.sroa.speculated74, %bb.z ], [ %.sroa.speculated, %bb.t ] ; 3 uses
  %i.bje = phi i32 [ %i.bfg, %bb.ad ], [ %i.bfg, %bb.aa ], [ %i.bfg, %bb.z ], [ %i.bew, %bb.t ] ; 2 uses
  %.07076 = phi i32 [ %i.bfe, %bb.ad ], [ %i.bfe, %bb.aa ], [ %i.bfe, %bb.z ], [ %3, %bb.t ] ; 2 uses
  %.071 = phi ptr [ %i.bfj, %bb.ad ], [ %i.bfj, %bb.aa ], [ %i.bfj, %bb.z ], [ null, %bb.t ]
  store i32 %.07076, ptr %6, align 4, !tbaa !9
  %i.bjf = icmp slt i32 %i.bje, %.sroa.speculated78
  br i1 %i.bjf, label %.lr.ph135, label %._crit_edge136

.lr.ph135:                                        ; preds = %bb.ae
  %i.bjg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bjh = getelementptr inbounds nuw i8, ptr %0, i64 20
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bji = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bjj = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.bjk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bjl = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bjm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bjn = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bjo = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bjp = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bjq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bjr = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bjs = sitofp i32 %.07076 to double
  %i.bjt = fmul nnan double %i.bjs, f0x400921FB54442D18
  %i.bju = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bjv = sitofp i32 %.sroa.speculated78 to double
  %i.bjw = sext i32 %i.bje to i64
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph135, %bb.ao
  %indvars.iv151 = phi i64 [ %i.bjw, %.lr.ph135 ], [ %indvars.iv.next152.pre-phi, %bb.ao ] ; 4 uses
  br i1 %spec.select339, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.bjx = getelementptr inbounds [4 x i8], ptr %.071, i64 %indvars.iv151
  %i.bjy = load i32, ptr %i.bjx, align 4, !tbaa !9
  %i.bjz = sext i32 %i.bjy to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.0308 = phi i64 [ %i.bjz, %bb.ag ], [ %indvars.iv151, %bb.af ] ; 2 uses
  %i.bka = load ptr, ptr %i.cw, align 8, !tbaa !44 ; 3 uses
  %i.bkb = load i32, ptr %i.bka, align 4, !tbaa !9 ; 3 uses
  %i.bkc = sdiv i32 %i.bkb, -2                    ; 2 uses
  %i.bkd = sdiv i32 %i.bkb, 2
  %.not334122 = icmp sgt i32 %i.bkc, %i.bkd
  %.pre168 = load float, ptr %i.bjg, align 8, !tbaa !11 ; 2 uses
  %.pre169 = load float, ptr %i.bjh, align 4, !tbaa !11 ; 2 uses
  %.pre170 = load float, ptr %9, align 8, !tbaa !11 ; 2 uses
  br i1 %.not334122, label %._crit_edge129, label %.lr.ph128

.lr.ph128:                                        ; preds = %bb.ah
  %i.bke = load ptr, ptr %i.bji, align 8, !tbaa !45 ; 3 uses
  %i.bkf = getelementptr inbounds [12 x i8], ptr %1, i64 %.0308 ; 3 uses
  %.pre163 = load i32, ptr %i.bke, align 4, !tbaa !9 ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph128, %._crit_edge118
  %i.bkg = phi i32 [ %i.bkb, %.lr.ph128 ], [ %i.bmy, %._crit_edge118 ]
  %i.bkh = phi i32 [ %.pre163, %.lr.ph128 ], [ %i.bmz, %._crit_edge118 ] ; 2 uses
  %i.bki = phi i32 [ %.pre163, %.lr.ph128 ], [ %i.bna, %._crit_edge118 ] ; 3 uses
  %.1307126 = phi i32 [ %i.bkc, %.lr.ph128 ], [ %i.bnb, %._crit_edge118 ] ; 4 uses
  %.0311125 = phi float [ 0.000000e+00, %.lr.ph128 ], [ %.1312.lcssa, %._crit_edge118 ] ; 2 uses
  %.0314124 = phi float [ 0.000000e+00, %.lr.ph128 ], [ %.1315.lcssa, %._crit_edge118 ] ; 2 uses
  %.0318123 = phi float [ 0.000000e+00, %.lr.ph128 ], [ %.1319.lcssa, %._crit_edge118 ] ; 2 uses
  %i.bkj = sitofp i32 %.1307126 to float          ; 4 uses
  %i.bkk = fmul float %.pre168, %i.bkj
  %10 = fmul float %.pre169, %i.bkj
  %11 = fmul float %.pre170, %i.bkj
  %i.bkl = sdiv i32 %i.bki, -2                    ; 2 uses
  %i.bkm = sdiv i32 %i.bki, 2
  %.not335111 = icmp sgt i32 %i.bkl, %i.bkm
  br i1 %.not335111, label %._crit_edge118, label %.lr.ph117

.lr.ph117:                                        ; preds = %bb.ai
  %i.bkn = load float, ptr %i.bjj, align 4, !tbaa !11
  %12 = load float, ptr %i.bjk, align 8, !tbaa !11
  %13 = load float, ptr %i.bjl, align 4, !tbaa !11
  %i.bko = load ptr, ptr %i.bjm, align 8, !tbaa !46 ; 3 uses
  %.pre164 = load i32, ptr %i.bko, align 4, !tbaa !9 ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph117, %._crit_edge108
  %i.bkp = phi i32 [ %i.bkh, %.lr.ph117 ], [ %i.bmt, %._crit_edge108 ]
  %i.bkq = phi i32 [ %.pre164, %.lr.ph117 ], [ %i.bmu, %._crit_edge108 ] ; 2 uses
  %i.bkr = phi i32 [ %.pre164, %.lr.ph117 ], [ %i.bmv, %._crit_edge108 ] ; 3 uses
  %.1305115 = phi i32 [ %i.bkl, %.lr.ph117 ], [ %i.bmw, %._crit_edge108 ] ; 4 uses
  %.1312114 = phi float [ %.0311125, %.lr.ph117 ], [ %.2313.lcssa, %._crit_edge108 ] ; 2 uses
  %.1315113 = phi float [ %.0314124, %.lr.ph117 ], [ %.2316.lcssa, %._crit_edge108 ] ; 2 uses
  %.1319112 = phi float [ %.0318123, %.lr.ph117 ], [ %.2320.lcssa, %._crit_edge108 ] ; 2 uses
  %i.bks = sitofp i32 %.1305115 to float          ; 4 uses
  %14 = fmul float %i.bkn, %i.bks
  %15 = fmul float %12, %i.bks
  %i.bkt = fmul float %13, %i.bks
  %16 = fadd float %i.bkk, %14
  %17 = fadd float %10, %15
  %i.bku = fadd float %11, %i.bkt
  %i.bkv = sdiv i32 %i.bkr, -2                    ; 2 uses
  %i.bkw = sdiv i32 %i.bkr, 2
  %.not336101 = icmp sgt i32 %i.bkv, %i.bkw
  br i1 %.not336101, label %._crit_edge108, label %.lr.ph107

.lr.ph107:                                        ; preds = %bb.aj
  %i.bkx = or i32 %.1305115, %.1307126
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph107, %bb.am
  %i.bky = phi i32 [ %i.bkq, %.lr.ph107 ], [ %i.bmq, %bb.am ]
  %.1303105 = phi i32 [ %i.bkv, %.lr.ph107 ], [ %i.bmr, %bb.am ] ; 4 uses
  %.2313104 = phi float [ %.1312114, %.lr.ph107 ], [ %.3, %bb.am ] ; 2 uses
  %.2316103 = phi float [ %.1315113, %.lr.ph107 ], [ %.3317, %bb.am ] ; 2 uses
  %.2320102 = phi float [ %.1319112, %.lr.ph107 ], [ %.3321, %bb.am ] ; 2 uses
  %i.bkz = or i32 %i.bkx, %.1303105
  %or.cond7 = icmp eq i32 %i.bkz, 0
  br i1 %or.cond7, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bla = sitofp i32 %.1303105 to float          ; 4 uses
  %i.blb = load float, ptr %i.bjn, align 8, !tbaa !11
  %i.blc = fmul float %i.blb, %i.bla
  %i.bld = load float, ptr %i.bjo, align 4, !tbaa !11
  %i.ble = fmul float %i.bld, %i.bla
  %i.blf = load float, ptr %i.bjp, align 8, !tbaa !11
  %i.blg = fmul float %i.blf, %i.bla
  %i.blh = fadd float %16, %i.blc                 ; 2 uses
  %i.bli = fadd float %17, %i.ble                 ; 2 uses
  %i.blj = fadd float %i.bku, %i.blg              ; 2 uses
  %i.blk = fmul float %i.bli, %i.bli
  %i.bll = call float @llvm.fmuladd.f32(float %i.blh, float %i.blh, float %i.blk)
  %i.blm = call noundef float @llvm.fmuladd.f32(float %i.blj, float %i.blj, float %i.bll) ; 2 uses
  %i.bln = fpext float %i.blm to double
  %i.blo = fmul double %i.bln, f0xC023BD3CC9BE45DE
  %i.blp = load ptr, ptr %i.bjq, align 8, !tbaa !48
  %i.blq = load float, ptr %i.blp, align 4, !tbaa !11
  %i.blr = fpext float %i.blq to double           ; 2 uses
  %i.bls = fdiv double %i.blo, %i.blr
  %i.blt = fdiv double %i.bls, %i.blr
  %i.blu = call double @exp(double noundef %i.blt) #22
  %i.blv = fptrunc double %i.blu to float
  %i.blw = fdiv float %i.blv, %i.blm              ; 3 uses
  %i.blx = load i32, ptr %i.bka, align 4, !tbaa !9
  %i.bly = sitofp i32 %i.blx to float
  %i.blz = load ptr, ptr %i.bjr, align 8, !tbaa !43 ; 3 uses
  %i.bma = load i32, ptr %i.blz, align 4, !tbaa !9
  %i.bmb = sitofp i32 %i.bma to float
  %i.bmc = call fastcc noundef float @_ZL8eps_selfffPffS_(float noundef %i.bkj, float noundef %i.bly, ptr noundef %i.bjg, float noundef %i.bmb, ptr noundef %i.bkf)
  %i.bmd = call float @llvm.fmuladd.f32(float %i.blw, float %i.bmc, float %.2320102)
  %i.bme = load i32, ptr %i.bke, align 4, !tbaa !9
  %i.bmf = sitofp i32 %i.bme to float
  %i.bmg = load i32, ptr %i.blz, align 4, !tbaa !9
  %i.bmh = sitofp i32 %i.bmg to float
  %i.bmi = call fastcc noundef float @_ZL8eps_selfffPffS_(float noundef %i.bks, float noundef %i.bmf, ptr noundef %i.bjj, float noundef %i.bmh, ptr noundef %i.bkf)
  %i.bmj = call float @llvm.fmuladd.f32(float %i.blw, float %i.bmi, float %.2316103)
  %i.bmk = load i32, ptr %i.bko, align 4, !tbaa !9
  %i.bml = sitofp i32 %i.bmk to float
  %i.bmm = load i32, ptr %i.blz, align 4, !tbaa !9
  %i.bmn = sitofp i32 %i.bmm to float
  %i.bmo = call fastcc noundef float @_ZL8eps_selfffPffS_(float noundef %i.bla, float noundef %i.bml, ptr noundef %i.bjn, float noundef %i.bmn, ptr noundef %i.bkf)
  %i.bmp = call float @llvm.fmuladd.f32(float %i.blw, float %i.bmo, float %.2313104)
  %.pre165 = load i32, ptr %i.bko, align 4, !tbaa !9
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %i.bmq = phi i32 [ %i.bky, %bb.ak ], [ %.pre165, %bb.al ] ; 4 uses
  %.3321 = phi float [ %.2320102, %bb.ak ], [ %i.bmd, %bb.al ] ; 2 uses
  %.3317 = phi float [ %.2316103, %bb.ak ], [ %i.bmj, %bb.al ] ; 2 uses
  %.3 = phi float [ %.2313104, %bb.ak ], [ %i.bmp, %bb.al ] ; 2 uses
  %i.bmr = add nsw i32 %.1303105, 1
  %i.bms = sdiv i32 %i.bmq, 2
  %.not336.not = icmp slt i32 %.1303105, %i.bms
  br i1 %.not336.not, label %bb.ak, label %._crit_edge108.loopexit, !llvm.loop !306

._crit_edge108.loopexit:                          ; preds = %bb.am
  %.pre166 = load i32, ptr %i.bke, align 4, !tbaa !9
  br label %._crit_edge108

._crit_edge108:                                   ; preds = %._crit_edge108.loopexit, %bb.aj
  %i.bmt = phi i32 [ %i.bkp, %bb.aj ], [ %.pre166, %._crit_edge108.loopexit ] ; 4 uses
  %i.bmu = phi i32 [ %i.bkq, %bb.aj ], [ %i.bmq, %._crit_edge108.loopexit ]
  %i.bmv = phi i32 [ %i.bkr, %bb.aj ], [ %i.bmq, %._crit_edge108.loopexit ]
  %.2320.lcssa = phi float [ %.1319112, %bb.aj ], [ %.3321, %._crit_edge108.loopexit ] ; 2 uses
  %.2316.lcssa = phi float [ %.1315113, %bb.aj ], [ %.3317, %._crit_edge108.loopexit ] ; 2 uses
  %.2313.lcssa = phi float [ %.1312114, %bb.aj ], [ %.3, %._crit_edge108.loopexit ] ; 2 uses
  %i.bmw = add nsw i32 %.1305115, 1
  %i.bmx = sdiv i32 %i.bmt, 2
  %.not335.not = icmp slt i32 %.1305115, %i.bmx
  br i1 %.not335.not, label %bb.aj, label %._crit_edge118.loopexit, !llvm.loop !307

._crit_edge118.loopexit:                          ; preds = %._crit_edge108
  %.pre167 = load i32, ptr %i.bka, align 4, !tbaa !9
  br label %._crit_edge118

._crit_edge118:                                   ; preds = %._crit_edge118.loopexit, %bb.ai
  %i.bmy = phi i32 [ %i.bkg, %bb.ai ], [ %.pre167, %._crit_edge118.loopexit ] ; 2 uses
  %i.bmz = phi i32 [ %i.bkh, %bb.ai ], [ %i.bmt, %._crit_edge118.loopexit ]
  %i.bna = phi i32 [ %i.bki, %bb.ai ], [ %i.bmt, %._crit_edge118.loopexit ]
  %.1319.lcssa = phi float [ %.0318123, %bb.ai ], [ %.2320.lcssa, %._crit_edge118.loopexit ] ; 2 uses
  %.1315.lcssa = phi float [ %.0314124, %bb.ai ], [ %.2316.lcssa, %._crit_edge118.loopexit ] ; 2 uses
  %.1312.lcssa = phi float [ %.0311125, %bb.ai ], [ %.2313.lcssa, %._crit_edge118.loopexit ] ; 2 uses
  %i.bnb = add nsw i32 %.1307126, 1
  %i.bnc = sdiv i32 %i.bmy, 2
  %.not334.not = icmp slt i32 %.1307126, %i.bnc
  br i1 %.not334.not, label %bb.ai, label %._crit_edge129, !llvm.loop !308

._crit_edge129:                                   ; preds = %._crit_edge118, %bb.ah
  %.0318.lcssa = phi float [ 0.000000e+00, %bb.ah ], [ %.1319.lcssa, %._crit_edge118 ] ; 3 uses
  %.0314.lcssa = phi float [ 0.000000e+00, %bb.ah ], [ %.1315.lcssa, %._crit_edge118 ] ; 3 uses
  %.0311.lcssa = phi float [ 0.000000e+00, %bb.ah ], [ %.1312.lcssa, %._crit_edge118 ] ; 3 uses
  %i.bnd = fmul float %.0318.lcssa, %.pre168
  %i.bne = fmul float %.0318.lcssa, %.pre169
  %i.bnf = fmul float %.0318.lcssa, %.pre170
  %i.bng = fadd float %i.bnd, 0.000000e+00
  %i.bnh = fadd float %i.bne, 0.000000e+00
  %i.bni = fadd float %i.bnf, 0.000000e+00
  %i.bnj = load float, ptr %i.bjj, align 4, !tbaa !11
  %i.bnk = fmul float %.0314.lcssa, %i.bnj
  %i.bnl = load float, ptr %i.bjk, align 8, !tbaa !11
  %i.bnm = fmul float %.0314.lcssa, %i.bnl
  %i.bnn = load float, ptr %i.bjl, align 4, !tbaa !11
  %i.bno = fmul float %.0314.lcssa, %i.bnn
  %i.bnp = fadd float %i.bng, %i.bnk
  %i.bnq = fadd float %i.bnh, %i.bnm
  %i.bnr = fadd float %i.bni, %i.bno
  %i.bns = load float, ptr %i.bjn, align 8, !tbaa !11
  %i.bnt = fmul float %.0311.lcssa, %i.bns
  %i.bnu = load float, ptr %i.bjo, align 4, !tbaa !11
  %i.bnv = fmul float %.0311.lcssa, %i.bnu
  %i.bnw = load float, ptr %i.bjp, align 8, !tbaa !11
  %i.bnx = fmul float %.0311.lcssa, %i.bnw
  %i.bny = fadd float %i.bnp, %i.bnt              ; 2 uses
  %i.bnz = fadd float %i.bnq, %i.bnv              ; 2 uses
  %i.boa = fadd float %i.bnr, %i.bnx              ; 2 uses
  %i.bob = getelementptr inbounds [4 x i8], ptr %2, i64 %.0308
  %i.boc = load float, ptr %i.bob, align 4, !tbaa !11 ; 4 uses
  %i.bod = fmul float %i.boc, %i.boc
  %i.boe = fmul float %i.boc, %i.bod
  %i.bof = fmul float %i.boc, %i.boe
  %i.bog = fmul float %i.bnz, %i.bnz
  %i.boh = call float @llvm.fmuladd.f32(float %i.bny, float %i.bny, float %i.bog)
  %i.boi = call noundef float @llvm.fmuladd.f32(float %i.boa, float %i.boa, float %i.boh)
  %i.boj = fmul float %i.bof, %i.boi
  %i.bok = fpext float %i.boj to double
  %i.bol = load float, ptr %i.bju, align 4, !tbaa !26
  %i.bom = fpext float %i.bol to double           ; 2 uses
  %i.bon = fmul double %i.bjt, %i.bom
  %i.boo = fmul double %i.bon, f0x400921FB54442D18
  %i.bop = fmul double %i.boo, %i.bom
  %i.boq = fdiv double %i.bok, %i.bop
  %i.bor = load float, ptr %i.c, align 4, !tbaa !11
  %i.bos = fpext float %i.bor to double
  %i.bot = fadd double %i.boq, %i.bos
  %i.bou = fptrunc double %i.bot to float
  store float %i.bou, ptr %i.c, align 4, !tbaa !11
  %i.bov = load i32, ptr %i.ds, align 4, !tbaa !35
  %i.bow = icmp eq i32 %i.bov, 0
  br i1 %i.bow, label %bb.an, label %._crit_edge129._crit_edge

._crit_edge129._crit_edge:                        ; preds = %._crit_edge129
  %.pre174 = add nsw i64 %indvars.iv151, 1        ; 2 uses
  %.pre175 = trunc i64 %.pre174 to i32
  br label %bb.ao

bb.an:                                            ; preds = %._crit_edge129
  %i.box = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.boy = add nsw i64 %indvars.iv151, 1          ; 2 uses
  %i.boz = trunc i64 %i.boy to i32                ; 2 uses
  %i.bpa = sitofp i32 %i.boz to double
  %i.bpb = fmul nnan double %i.bpa, 1.000000e+02
  %i.bpc = fdiv double %i.bpb, %i.bjv
  %i.bpd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.box, ptr noundef nonnull @.str.75, double noundef %i.bpc) #25 ; 0 uses
  %i.bpe = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.bpf = call i32 @fflush(ptr noundef %i.bpe)   ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge129._crit_edge, %bb.an
  %lftr.wideiv.pre-phi = phi i32 [ %.pre175, %._crit_edge129._crit_edge ], [ %i.boz, %bb.an ]
  %indvars.iv.next152.pre-phi = phi i64 [ %.pre174, %._crit_edge129._crit_edge ], [ %i.boy, %bb.an ]
  %exitcond154.not = icmp eq i32 %lftr.wideiv.pre-phi, %.sroa.speculated78
  br i1 %exitcond154.not, label %._crit_edge136, label %bb.af, !llvm.loop !309

._crit_edge136:                                   ; preds = %bb.ao, %bb.ae
  %i.bpg = load i32, ptr %i.ds, align 4, !tbaa !35
  %i.bph = icmp eq i32 %i.bpg, 0
  br i1 %i.bph, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %._crit_edge136
  %i.bpi = load ptr, ptr @stderr, align 8, !tbaa !59
  %fputc333 = call i32 @fputc(i32 10, ptr %i.bpi) ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %._crit_edge136
  %i.bpj = load i32, ptr %i.dd, align 8, !tbaa !50
  %i.bpk = icmp sgt i32 %i.bpj, 1
  br i1 %i.bpk, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void @_ZNK3gmx7MpiComm9sumReduceEmPf(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef 1, ptr noundef nonnull %i.a)
  call void @_ZNK3gmx7MpiComm9sumReduceEmPf(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef 1, ptr noundef nonnull %i.b)
  call void @_ZNK3gmx7MpiComm9sumReduceEmPf(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef 1, ptr noundef nonnull %i.c)
  %.pre171 = load float, ptr %i.b, align 4, !tbaa !11
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.bpl = phi float [ %.pre171, %bb.ar ], [ %i.beh, %bb.aq ]
  %i.bpm = load float, ptr %i.a, align 4, !tbaa !11
  %i.bpn = fadd float %i.bpm, %i.bpl
  %i.bpo = load float, ptr %i.c, align 4, !tbaa !11
  %i.bpp = fadd float %i.bpn, %i.bpo
  %i.bpq = call noundef float @sqrtf(float noundef %i.bpp) #22
  %i.bpr = fpext float %i.bpq to double
  %i.bps = fmul double %i.bpr, f0x40615DEF44DEAD3D
  %i.bpt = fptrunc double %i.bps to float
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret float %i.bpt
}

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare noundef nonnull align 4 dereferenceable(36) ptr @_ZNK9AtomProxy4atomEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef i32 @_ZNK9AtomProxy16globalAtomNumberEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN12AtomIteratorppEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare void @_ZN12AtomIteratorC1ERK10gmx_mtop_ti(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(768), i32 noundef) unnamed_addr #2

declare noundef zeroext i1 @_ZNK12AtomIteratoreqERKS_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare float @erfcf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @expf(float noundef) local_unnamed_addr #14

declare noundef i64 @_ZN3gmx14makeRandomSeedEv() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define internal fastcc noundef float @_ZL9eps_poly2fff(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #15 {
bb.a:
  %i.a = fcmp oeq float %0, 0.000000e+00
  br i1 %i.a, label %bb.b, label %.preheader41

.preheader41:                                     ; preds = %bb.a
  %i.b = fdiv float %0, %1                        ; 3 uses
  %i.c = fmul float %2, -2.000000e+00             ; 12 uses
  %i.d = insertelement <8 x float> poison, float %i.b, i64 0
  %i.e = shufflevector <8 x float> %i.d, <8 x float> poison, <8 x i32> zeroinitializer
  %i.f = fadd <8 x float> %i.e, <float -6.000000e+00, float -5.000000e+00, float -4.000000e+00, float -3.000000e+00, float -2.000000e+00, float -1.000000e+00, float 6.000000e+00, float 5.000000e+00>
  %i.g = fpext <8 x float> %i.f to <8 x double>
  %i.h = fmul <8 x double> %i.g, splat (double f0x401921FB54442D18)
  %i.i = fptrunc <8 x double> %i.h to <8 x float> ; 8 uses
  %i.j = extractelement <8 x float> %i.i, i64 0   ; 2 uses
  %i.k = tail call noundef float @powf(float noundef %i.j, float noundef %i.c) #22
  %i.l = fadd float %i.k, 0.000000e+00
  %i.m = extractelement <8 x float> %i.i, i64 1   ; 2 uses
  %i.n = tail call noundef float @powf(float noundef %i.m, float noundef %i.c) #22
  %i.o = fadd float %i.l, %i.n
  %i.p = extractelement <8 x float> %i.i, i64 2   ; 2 uses
  %i.q = tail call noundef float @powf(float noundef %i.p, float noundef %i.c) #22
  %i.r = fadd float %i.o, %i.q
  %i.s = extractelement <8 x float> %i.i, i64 3   ; 2 uses
  %i.t = tail call noundef float @powf(float noundef %i.s, float noundef %i.c) #22
  %i.u = fadd float %i.r, %i.t
  %i.v = extractelement <8 x float> %i.i, i64 4   ; 2 uses
  %i.w = tail call noundef float @powf(float noundef %i.v, float noundef %i.c) #22
  %i.x = fadd float %i.u, %i.w
  %i.y = extractelement <8 x float> %i.i, i64 5   ; 2 uses
  %i.z = tail call noundef float @powf(float noundef %i.y, float noundef %i.c) #22
  %i.aa = fadd float %i.x, %i.z
  %i.ab = extractelement <8 x float> %i.i, i64 6  ; 2 uses
  %i.ac = tail call noundef float @powf(float noundef %i.ab, float noundef %i.c) #22
  %i.ad = extractelement <8 x float> %i.i, i64 7  ; 2 uses
  %i.ae = tail call noundef float @powf(float noundef %i.ad, float noundef %i.c) #22
  %i.af = insertelement <4 x float> poison, float %i.b, i64 0
  %i.ag = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ah = fadd <4 x float> %i.ag, <float 4.000000e+00, float 3.000000e+00, float 2.000000e+00, float 1.000000e+00>
  %i.ai = fpext <4 x float> %i.ah to <4 x double>
  %i.aj = fmul <4 x double> %i.ai, splat (double f0x401921FB54442D18) ; 4 uses
  %i.ak = extractelement <4 x double> %i.aj, i64 0
  %i.al = fptrunc double %i.ak to float           ; 2 uses
  %i.am = tail call noundef float @powf(float noundef %i.al, float noundef %i.c) #22
  %i.an = extractelement <4 x double> %i.aj, i64 1
  %i.ao = fptrunc double %i.an to float           ; 2 uses
  %i.ap = tail call noundef float @powf(float noundef %i.ao, float noundef %i.c) #22
  %i.aq = extractelement <4 x double> %i.aj, i64 2
  %i.ar = fptrunc double %i.aq to float           ; 2 uses
  %i.as = tail call noundef float @powf(float noundef %i.ar, float noundef %i.c) #22
  %i.at = extractelement <4 x double> %i.aj, i64 3
  %i.au = fptrunc double %i.at to float           ; 2 uses
  %i.av = tail call noundef float @powf(float noundef %i.au, float noundef %i.c) #22
  %i.aw = fneg float %2                           ; 13 uses
  %i.ax = tail call noundef float @powf(float noundef %i.j, float noundef %i.aw) #22
  %i.ay = fadd float %i.ax, 0.000000e+00
  %i.az = tail call noundef float @powf(float noundef %i.m, float noundef %i.aw) #22
  %i.ba = fadd float %i.ay, %i.az
  %i.bb = tail call noundef float @powf(float noundef %i.p, float noundef %i.aw) #22
  %i.bc = fadd float %i.ba, %i.bb
  %i.bd = tail call noundef float @powf(float noundef %i.s, float noundef %i.aw) #22
  %i.be = fadd float %i.bc, %i.bd
end_hunk_0
