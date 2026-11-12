Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/load_mfbacks?download=true
inline.NumInlined: 98
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN6LibRaw17phase_one_correctEv:bb.a
  br i1 %i.ayr, label %._crit_edge755.us.us.us.split.loop.exit, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %indvars.iv.next1062 = add nuw nsw i64 %indvars.iv1061, 1 ; 2 uses
  %exitcond1067.not = icmp eq i64 %indvars.iv.next1062, %wide.trip.count1066
  br i1 %exitcond1067.not, label %._crit_edge755.us.us.us, label %bb.hu, !llvm.loop !158

._crit_edge755.us.us.us.split.loop.exit:          ; preds = %bb.hu
  %i.ays = trunc nsw i64 %i.ayn to i32
  %i.ayt = trunc nuw nsw i64 %indvars.iv1061 to i32
  br label %._crit_edge755.us.us.us

._crit_edge755.us.us.us:                          ; preds = %bb.hv, %._crit_edge755.us.us.us.split.loop.exit
  %.lcssa = phi i32 [ %i.ays, %._crit_edge755.us.us.us.split.loop.exit ], [ %i.ayj, %bb.hv ] ; 6 uses
  %.3317.lcssa.us.us.us = phi i32 [ %i.ayt, %._crit_edge755.us.us.us.split.loop.exit ], [ %i.awb, %bb.hv ] ; 2 uses
  %i.ayu = icmp eq i32 %.3317.lcssa.us.us.us, 0
  br i1 %i.ayu, label %bb.hz, label %bb.hw

bb.hw:                                            ; preds = %._crit_edge755.us.us.us
  %i.ayv = icmp ne i32 %.3317.lcssa.us.us.us, %i.awb
  %i.ayw = icmp sgt i32 %.lcssa, 0
  %or.cond17.not450.us.us.us = and i1 %i.ayv, %i.ayw
  %.not360.us.us.us = icmp ult i32 %.lcssa, %i.awv
  %or.cond.us.us.us = and i1 %.not360.us.us.us, %or.cond17.not450.us.us.us
  br i1 %or.cond.us.us.us, label %bb.hx, label %bb.hz

bb.hx:                                            ; preds = %bb.hw
  %i.ayx = zext nneg i32 %.lcssa to i64
  %i.ayy = getelementptr inbounds nuw [2 x i8], ptr %i.axb, i64 %i.ayx ; 2 uses
  %i.ayz = load i16, ptr %i.ayy, align 2, !tbaa !78 ; 3 uses
  %i.aza = getelementptr i8, ptr %i.ayy, i64 -2
  %i.azb = load i16, ptr %i.aza, align 2, !tbaa !78 ; 2 uses
  %.not361.us.us.us = icmp eq i16 %i.ayz, %i.azb
  br i1 %.not361.us.us.us, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.azc = zext i16 %i.azb to i32
  %i.azd = zext i16 %i.ayz to i32
  %i.aze = sub nsw i32 %i.azd, %i.azc
  %i.azf = uitofp i16 %i.ayz to float
  %i.azg = fsub reassoc nnan nsz arcp contract afn float %i.azf, %i.ayg
  %i.azh = sitofp reassoc nsz arcp contract afn i32 %i.aze to float
  %i.azi = fdiv reassoc nsz arcp contract afn float %i.azg, %i.azh
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hx, %bb.hw, %._crit_edge755.us.us.us
  %.0303.us.us.us = phi nsz float [ 0.000000e+00, %._crit_edge755.us.us.us ], [ 0.000000e+00, %bb.hw ], [ %i.azi, %bb.hy ], [ 0.000000e+00, %bb.hx ]
  %i.azj = icmp ult i32 %.lcssa, %i.awv
  br i1 %i.azj, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %bb.hz
  %i.azk = call i32 @llvm.smax.i32(i32 %.lcssa, i32 1)
  %i.azl = zext nneg i32 %i.azk to i64
  %i.azm = getelementptr [4 x i8], ptr %i.awx, i64 %i.azl
  %i.azn = getelementptr i8, ptr %i.azm, i64 -4
  %i.azo = load float, ptr %i.azn, align 4, !tbaa !81
  %i.azp = zext nneg i32 %.lcssa to i64
  %i.azq = getelementptr inbounds nuw [4 x i8], ptr %i.awx, i64 %i.azp
  %i.azr = load float, ptr %i.azq, align 4, !tbaa !81 ; 2 uses
  %i.azs = fsub reassoc nsz arcp contract afn float %i.azo, %i.azr
  %i.azt = fmul reassoc nsz arcp contract afn float %i.azs, %.0303.us.us.us
  %i.azu = fadd reassoc nsz arcp contract afn float %i.azt, %i.azr
  br label %bb.ib

bb.ib:                                            ; preds = %bb.hz, %bb.ia
  %storemerge = phi float [ %i.azu, %bb.ia ], [ 0.000000e+00, %bb.hz ] ; 2 uses
  %indvars.iv.next1069 = add nuw nsw i64 %i.ayk, 1 ; 2 uses
  %indvars.iv.next1064 = add i32 %i.ayj, %i.awb
  %lftr.wideiv = trunc nuw i64 %indvars.iv.next1069 to i32
  %exitcond1072 = icmp eq i32 %i.ayl, %lftr.wideiv
  br i1 %exitcond1072, label %.split761.us.us.us, label %.preheader.us.us.us.1

.preheader.us.us.us.1:                            ; preds = %bb.ib
  %i.azv = mul nuw nsw i64 %indvars.iv.next1069, %i.axo
  br label %bb.ic

bb.ic:                                            ; preds = %bb.id, %.preheader.us.us.us.1
  %indvars.iv1061.1 = phi i64 [ %indvars.iv.next1062.1, %bb.id ], [ 0, %.preheader.us.us.us.1 ] ; 3 uses
  %i.azw = add nuw nsw i64 %indvars.iv1061.1, %i.azv ; 2 uses
  %i.azx = getelementptr inbounds nuw [2 x i8], ptr %i.axb, i64 %i.azw
  %i.azy = load i16, ptr %i.azx, align 2, !tbaa !78
  %i.azz = uitofp i16 %i.azy to float
  %i.baa = fcmp reassoc nsz arcp contract afn olt float %i.ayg, %i.azz
  br i1 %i.baa, label %._crit_edge755.us.us.us.1.split.loop.exit1339, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %indvars.iv.next1062.1 = add nuw nsw i64 %indvars.iv1061.1, 1 ; 2 uses
  %exitcond1067.1.not = icmp eq i64 %indvars.iv.next1062.1, %wide.trip.count1066
  br i1 %exitcond1067.1.not, label %._crit_edge755.us.us.us.1, label %bb.ic, !llvm.loop !158

._crit_edge755.us.us.us.1.split.loop.exit1339:    ; preds = %bb.ic
  %i.bab = trunc nsw i64 %i.azw to i32
  %i.bac = trunc nuw nsw i64 %indvars.iv1061.1 to i32
  br label %._crit_edge755.us.us.us.1

._crit_edge755.us.us.us.1:                        ; preds = %bb.id, %._crit_edge755.us.us.us.1.split.loop.exit1339
  %.lcssa.1 = phi i32 [ %i.bab, %._crit_edge755.us.us.us.1.split.loop.exit1339 ], [ %indvars.iv.next1064, %bb.id ] ; 6 uses
  %.3317.lcssa.us.us.us.1 = phi i32 [ %i.bac, %._crit_edge755.us.us.us.1.split.loop.exit1339 ], [ %i.awb, %bb.id ] ; 2 uses
  %i.bad = icmp eq i32 %.3317.lcssa.us.us.us.1, 0
  br i1 %i.bad, label %bb.ih, label %bb.ie

bb.ie:                                            ; preds = %._crit_edge755.us.us.us.1
  %i.bae = icmp ne i32 %.3317.lcssa.us.us.us.1, %i.awb
  %i.baf = icmp sgt i32 %.lcssa.1, 0
  %or.cond17.not450.us.us.us.1 = and i1 %i.bae, %i.baf
  %.not360.us.us.us.1 = icmp ult i32 %.lcssa.1, %i.awv
  %or.cond.us.us.us.1 = and i1 %.not360.us.us.us.1, %or.cond17.not450.us.us.us.1
  br i1 %or.cond.us.us.us.1, label %bb.if, label %bb.ih

bb.if:                                            ; preds = %bb.ie
  %i.bag = zext nneg i32 %.lcssa.1 to i64
  %i.bah = getelementptr inbounds nuw [2 x i8], ptr %i.axb, i64 %i.bag ; 2 uses
  %i.bai = load i16, ptr %i.bah, align 2, !tbaa !78 ; 3 uses
  %i.baj = getelementptr i8, ptr %i.bah, i64 -2
  %i.bak = load i16, ptr %i.baj, align 2, !tbaa !78 ; 2 uses
  %.not361.us.us.us.1 = icmp eq i16 %i.bai, %i.bak
  br i1 %.not361.us.us.us.1, label %bb.ih, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.bal = zext i16 %i.bak to i32
  %i.bam = zext i16 %i.bai to i32
  %i.ban = sub nsw i32 %i.bam, %i.bal
  %i.bao = uitofp i16 %i.bai to float
  %i.bap = fsub reassoc nnan nsz arcp contract afn float %i.bao, %i.ayg
  %i.baq = sitofp reassoc nsz arcp contract afn i32 %i.ban to float
  %i.bar = fdiv reassoc nsz arcp contract afn float %i.bap, %i.baq
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.if, %bb.ie, %._crit_edge755.us.us.us.1
  %.0303.us.us.us.1 = phi nsz float [ 0.000000e+00, %._crit_edge755.us.us.us.1 ], [ 0.000000e+00, %bb.ie ], [ %i.bar, %bb.ig ], [ 0.000000e+00, %bb.if ]
  %i.bas = icmp ult i32 %.lcssa.1, %i.awv
  br i1 %i.bas, label %bb.ii, label %.split761.us.us.us

bb.ii:                                            ; preds = %bb.ih
  %i.bat = call i32 @llvm.smax.i32(i32 %.lcssa.1, i32 1)
  %i.bau = zext nneg i32 %i.bat to i64
  %i.bav = getelementptr [4 x i8], ptr %i.awx, i64 %i.bau
  %i.baw = getelementptr i8, ptr %i.bav, i64 -4
  %i.bax = load float, ptr %i.baw, align 4, !tbaa !81
  %i.bay = zext nneg i32 %.lcssa.1 to i64
  %i.baz = getelementptr inbounds nuw [4 x i8], ptr %i.awx, i64 %i.bay
  %i.bba = load float, ptr %i.baz, align 4, !tbaa !81 ; 2 uses
  %i.bbb = fsub reassoc nsz arcp contract afn float %i.bax, %i.bba
  %i.bbc = fmul reassoc nsz arcp contract afn float %i.bbb, %.0303.us.us.us.1
  %i.bbd = fadd reassoc nsz arcp contract afn float %i.bbc, %i.bba
  br label %.split761.us.us.us

.split761.us.us.us:                               ; preds = %bb.ii, %bb.ih, %bb.ib
  %storemerge11781343 = phi float [ %storemerge11781344, %bb.ib ], [ %i.bbd, %bb.ii ], [ 0.000000e+00, %bb.ih ] ; 3 uses
  %i.bbe = uitofp nsz nneg i32 %i.axz to float
  %i.bbf = fsub reassoc nsz arcp contract afn float %i.axy, %i.bbe
  %i.bbg = fsub reassoc nsz arcp contract afn float %storemerge11781343, %storemerge
  %i.bbh = fmul reassoc nsz arcp contract afn float %i.bbg, %i.bbf
  %i.bbi = fadd reassoc nsz arcp contract afn float %i.bbh, %storemerge
  %i.bbj = fmul reassoc nsz arcp contract afn float %i.bbi, %i.axs
  %i.bbk = fadd reassoc nsz arcp contract afn float %i.bbj, %i.ayg
  %i.bbl = fmul reassoc nsz arcp contract afn float %i.bbk, 2.000000e+00
  %i.bbm = fptosi float %i.bbl to i32
  %i.bbn = call i32 @llvm.smax.i32(i32 %i.bbm, i32 0)
  %i.bbo = call i32 @llvm.umin.i32(i32 %i.bbn, i32 65535)
  %i.bbp = trunc nuw i32 %i.bbo to i16
  store i16 %i.bbp, ptr %i.ayd, align 2, !tbaa !78
  %i.bbq = add nuw nsw i32 %storemerge764.us.us, 1 ; 2 uses
  %i.bbr = load i16, ptr %i.au, align 2, !tbaa !76 ; 2 uses
  %i.bbs = zext i16 %i.bbr to i32                 ; 2 uses
  %i.bbt = icmp samesign ult i32 %i.bbq, %i.bbs
  br i1 %i.bbt, label %.split759.us.us.us, label %._crit_edge766.split.us.us, !llvm.loop !159

._crit_edge766.split.us.us:                       ; preds = %.split761.us.us.us, %.preheader451.us
  %storemerge11781343.lcssa1346 = phi float [ %storemerge11781343.lcssa1347, %.preheader451.us ], [ %storemerge11781343, %.split761.us.us.us ]
  %i.bbu = add nuw nsw i32 %.5330768.us, 1        ; 2 uses
  %i.bbv = load i16, ptr %i.as, align 8, !tbaa !75
  %i.bbw = zext i16 %i.bbv to i32
  %i.bbx = icmp samesign ult i32 %i.bbu, %i.bbw
  br i1 %i.bbx, label %.lr.ph770.split.us, label %._crit_edge771, !llvm.loop !160

.lr.ph747:                                        ; preds = %bb.hr, %bb.ij
  %indvars.iv1044 = phi i64 [ %indvars.iv.next1045, %bb.ij ], [ 0, %bb.hr ] ; 2 uses
  %i.bby = invoke noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.ij unwind label %.loopexit.split-lp.thread1192

bb.ij:                                            ; preds = %.lr.ph747
  %i.bbz = getelementptr inbounds nuw [2 x i8], ptr %i.axb, i64 %indvars.iv1044
  store i16 %i.bby, ptr %i.bbz, align 2, !tbaa !78
  %indvars.iv.next1045 = add nuw nsw i64 %indvars.iv1044, 1 ; 2 uses
  %exitcond1048.not = icmp eq i64 %indvars.iv.next1045, %i.awy
  br i1 %exitcond1048.not, label %.lr.ph747.1, label %.lr.ph747, !llvm.loop !157

.lr.ph770.split:                                  ; preds = %.lr.ph770, %._crit_edge766.split
  %.lcssa13511357 = phi float [ %.lcssa13511356, %._crit_edge766.split ], [ undef, %.lr.ph770 ] ; 2 uses
  %.5330768 = phi i32 [ %i.bdm, %._crit_edge766.split ], [ 0, %.lr.ph770 ] ; 3 uses
  invoke void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.preheader451 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader451:                                    ; preds = %.lr.ph770.split
  %i.bca = load i16, ptr %i.au, align 2, !tbaa !76 ; 3 uses
  %.not785 = icmp eq i16 %i.bca, 0
  br i1 %.not785, label %._crit_edge766.split, label %.lr.ph765

.lr.ph765:                                        ; preds = %.preheader451
  %1 = zext i16 %i.bca to i32
  %i.bcb = load ptr, ptr %i.av, align 8, !tbaa !77
  %i.bcc = uitofp reassoc nsz arcp contract afn nneg i32 %.5330768 to float
  %factor.op.fmul = fmul reassoc nnan nsz arcp contract afn float %i.bcc, 2.000000e+00
  %i.bcd = load float, ptr %i.awx, align 4, !tbaa !81 ; 3 uses
  %i.bce = fsub reassoc nsz arcp contract afn float %i.bcd, %i.bcd
  %i.bcf = fmul reassoc nsz arcp contract afn float %i.bce, 0.000000e+00
  %i.bcg = fadd reassoc nsz arcp contract afn float %i.bcf, %i.bcd ; 3 uses
  br label %.split759.split.us

.split759.split.us:                               ; preds = %.split759.split.us, %.lr.ph765
  %i.bch = phi float [ %.lcssa13511357, %.lr.ph765 ], [ %spec.select1360, %.split759.split.us ]
  %i.bci = phi i32 [ %1, %.lr.ph765 ], [ %i.bdk, %.split759.split.us ]
  %i.bcj = phi i16 [ %i.bca, %.lr.ph765 ], [ %i.bdj, %.split759.split.us ]
  %storemerge764 = phi i32 [ 0, %.lr.ph765 ], [ %i.bdi, %.split759.split.us ] ; 3 uses
  %i.bck = uitofp reassoc nsz arcp contract afn nneg i32 %storemerge764 to float
  %i.bcl = fmul reassoc nnan nsz arcp contract afn float %i.bck, %i.axn
  %i.bcm = uitofp i16 %i.bcj to float
  %i.bcn = fdiv reassoc nsz arcp contract afn float %i.bcl, %i.bcm ; 2 uses
  %i.bco = fptosi float %i.bcn to i32             ; 3 uses
  %i.bcp = uitofp nsz nneg i32 %i.bco to float
  %i.bcq = fsub reassoc nsz arcp contract afn float %i.bcn, %i.bcp
  %i.bcr = mul nuw i32 %i.bci, %.5330768
  %i.bcs = add nuw i32 %i.bcr, %storemerge764
  %i.bct = zext i32 %i.bcs to i64
  %i.bcu = getelementptr inbounds nuw [2 x i8], ptr %i.bcb, i64 %i.bct ; 2 uses
  %i.bcv = load i16, ptr %i.bcu, align 2, !tbaa !78
  %i.bcw = uitofp i16 %i.bcv to float
  %i.bcx = add nuw i32 %i.bco, 2
  %i.bcy = sext i32 %i.bcx to i64
  %narrow = add nuw i32 %i.bco, 1
  %indvars.iv.next1056 = zext i32 %narrow to i64
  %i.bcz = icmp slt i64 %indvars.iv.next1056, %i.bcy
  %spec.select1360 = select i1 %i.bcz, float %i.bcg, float %i.bch ; 3 uses
  %i.bda = fsub reassoc nsz arcp contract afn float %spec.select1360, %i.bcg
  %i.bdb = fmul reassoc nsz arcp contract afn float %i.bda, %i.bcq
  %i.bdc = fadd reassoc nsz arcp contract afn float %i.bdb, %i.bcg
  %.reass767 = fmul reassoc nsz arcp contract afn float %i.bdc, %factor.op.fmul
  %i.bdd = fadd reassoc nsz arcp contract afn float %.reass767, %i.bcw
  %i.bde = fptosi float %i.bdd to i32
  %i.bdf = call i32 @llvm.smax.i32(i32 %i.bde, i32 0)
  %i.bdg = call i32 @llvm.umin.i32(i32 %i.bdf, i32 65535)
  %i.bdh = trunc nuw i32 %i.bdg to i16
  store i16 %i.bdh, ptr %i.bcu, align 2, !tbaa !78
  %i.bdi = add nuw nsw i32 %storemerge764, 1      ; 2 uses
  %i.bdj = load i16, ptr %i.au, align 2, !tbaa !76 ; 2 uses
  %i.bdk = zext i16 %i.bdj to i32                 ; 2 uses
  %i.bdl = icmp samesign ult i32 %i.bdi, %i.bdk
  br i1 %i.bdl, label %.split759.split.us, label %._crit_edge766.split, !llvm.loop !159

._crit_edge766.split:                             ; preds = %.split759.split.us, %.preheader451
  %.lcssa13511356 = phi float [ %.lcssa13511357, %.preheader451 ], [ %spec.select1360, %.split759.split.us ]
  %i.bdm = add nuw nsw i32 %.5330768, 1           ; 2 uses
  %i.bdn = load i16, ptr %i.as, align 8, !tbaa !75
  %i.bdo = zext i16 %i.bdn to i32
  %i.bdp = icmp samesign ult i32 %i.bdm, %i.bdo
  br i1 %i.bdp, label %.lr.ph770.split, label %._crit_edge771, !llvm.loop !160

._crit_edge771:                                   ; preds = %._crit_edge766.split.us.us, %._crit_edge766.split, %.loopexit454.1
  invoke void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.awx)
          to label %bb.im unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ik:                                            ; preds = %bb.hn
  %i.bdq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.io unwind label %bb.iq

bb.il:                                            ; preds = %.loopexit.split-lp.thread, %bb.hn, %.loopexit.split-lp
  %.sroa.24.71191 = phi ptr [ %.sroa.24.7.ph, %.loopexit.split-lp.thread ], [ %.sroa.24.71201, %bb.hn ], [ %.sroa.24.7, %.loopexit.split-lp ] ; 2 uses
  %.sroa.0.71190 = phi ptr [ %.sroa.0.7.ph, %.loopexit.split-lp.thread ], [ %.sroa.0.71200, %bb.hn ], [ %.sroa.0.7, %.loopexit.split-lp ] ; 2 uses
  invoke void @__cxa_end_catch()
          to label %bb.im unwind label %bb.t

bb.im:                                            ; preds = %bb.il, %._crit_edge771, %.loopexit469
  %.sroa.0.8 = phi ptr [ %.sroa.0.0.ph.lcssa, %._crit_edge771 ], [ %.sroa.0.0.ph.lcssa, %.loopexit469 ], [ %.sroa.0.71190, %bb.il ] ; 3 uses
  %.sroa.24.8 = phi ptr [ %.sroa.24.0.ph.lcssa, %._crit_edge771 ], [ %.sroa.24.0.ph.lcssa, %.loopexit469 ], [ %.sroa.24.71191, %bb.il ]
  %.1333 = phi i32 [ 0, %._crit_edge771 ], [ 0, %.loopexit469 ], [ -100010, %bb.il ] ; 2 uses
  %.not.i.i.i399 = icmp eq ptr %.sroa.0.8, null
  br i1 %.not.i.i.i399, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.bdr = ptrtoint ptr %.sroa.24.8 to i64
  %i.bds = ptrtoint ptr %.sroa.0.8 to i64
  %i.bdt = sub i64 %i.bdr, %i.bds
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.8, i64 noundef %i.bdt) #24
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.a, %bb.im, %bb.in
  %.1333445 = phi i32 [ %.1333, %bb.in ], [ %.1333, %bb.im ], [ 0, %bb.a ]
  ret i32 %.1333445

bb.io:                                            ; preds = %bb.t, %bb.ik
  %.sroa.0.9 = phi ptr [ %.sroa.0.1, %bb.t ], [ %.sroa.0.71200, %bb.ik ] ; 3 uses
  %.sroa.24.9 = phi ptr [ %.sroa.24.1, %bb.t ], [ %.sroa.24.71201, %bb.ik ]
  %.pn381.pn = phi { ptr, i32 } [ %i.gc, %bb.t ], [ %i.bdq, %bb.ik ]
  %.not.i.i.i400 = icmp eq ptr %.sroa.0.9, null
  br i1 %.not.i.i.i400, label %_ZNSt6vectorIjSaIjEED2Ev.exit401, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.bdu = ptrtoint ptr %.sroa.24.9 to i64
  %i.bdv = ptrtoint ptr %.sroa.0.9 to i64
  %i.bdw = sub i64 %i.bdu, %i.bdv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.9, i64 noundef %i.bdw) #24
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit401

_ZNSt6vectorIjSaIjEED2Ev.exit401:                 ; preds = %bb.io, %bb.ip
  resume { ptr, i32 } %.pn381.pn

bb.iq:                                            ; preds = %bb.ik
  %i.bdx = landingpad { ptr, i32 }
          catch ptr null
  %i.bdy = extractvalue { ptr, i32 } %i.bdx, 0
  call void @__clang_call_terminate(ptr %i.bdy) #25
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare i32 @__gxx_personality_v0(...)

declare noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

declare void @_ZN6LibRaw12cubic_splineEPKiS1_i(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #9

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #10

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw18phase_one_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 153476 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 153480
  %i.e = load i32, ptr %i.d, align 8, !tbaa !175
  %i.f = sext i32 %i.e to i64
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.f, i32 noundef 0), !call_target !99 ; 0 uses
  %i.k = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.l = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.m = load i32, ptr %i.c, align 4, !tbaa !103
  %i.n = icmp eq i32 %i.m, 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 153496 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !104
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 153504
  %i.r = load i32, ptr %i.q, align 8, !tbaa !105
  %.not18 = icmp eq i32 %i.r, 0
  br i1 %.not18, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load i16, ptr %i.s, align 8, !tbaa !75
  %i.u = zext i16 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 1
  %i.w = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.v, i64 noundef 2)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 193832 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !106
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.z = load i16, ptr %i.y, align 2, !tbaa !76
  %i.aa = zext i16 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 1
  %i.ac = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.ab, i64 noundef 2)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 193840 ; 2 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !107
  %i.ae = load i32, ptr %i.o, align 8, !tbaa !104 ; 2 uses
  %.not19 = icmp eq i32 %i.ae, 0
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !88  ; 2 uses
  %i.ag = sext i32 %i.ae to i64
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !90
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef i32 %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i64 noundef %i.ag, i32 noundef 0), !call_target !99 ; 0 uses
  %i.al = load ptr, ptr %i.x, align 8, !tbaa !106
  %i.am = load i16, ptr %i.s, align 8, !tbaa !75
  %i.an = zext i16 %i.am to i32
  %i.ao = shl nuw nsw i32 %i.an, 1
  tail call void @_ZN6LibRaw11read_shortsEPtj(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.al, i32 noundef %i.ao)
end_hunk_0
