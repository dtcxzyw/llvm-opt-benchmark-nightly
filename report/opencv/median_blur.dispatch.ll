Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/median_blur.dispatch?download=true
inline.NumInlined: 1467
inline.NumDeleted: 105
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN2cv12cpu_baseline10medianBlurERKNS_3MatERS1_i:bb.a
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit946.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit946.i: ; preds = %bb.iu, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit944.i
  %i.die = phi i32 [ %i.did, %bb.iu ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit944.i ]
  %i.dif = add nsw i32 %i.dem, %i.die
  %i.dig = sub nsw i32 %i.dhw, %i.dif             ; 2 uses
  %i.dih = add nsw i32 %i.dig, 256
  %or.cond.i947.i = icmp ult i32 %i.dih, 769
  br i1 %or.cond.i947.i, label %bb.iv, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit948.i

bb.iv:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit946.i
  %i.dii = sext i32 %i.dig to i64
  %i.dij = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.dii
  %i.dik = getelementptr i8, ptr %i.dij, i64 256
  %i.dil = load i8, ptr %i.dik, align 1, !tbaa !26
  %i.dim = zext i8 %i.dil to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit948.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit948.i: ; preds = %bb.iv, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit946.i
  %i.din = phi i32 [ %i.dim, %bb.iv ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit946.i ]
  %i.dio = add nsw i32 %i.din, %i.dem
  %i.dip = getelementptr inbounds i8, ptr %.33351585.i, i64 %indvars.iv1620.i
  %i.diq = trunc i32 %i.dio to i8
  store i8 %i.diq, ptr %i.dip, align 1, !tbaa !26
  %indvars.iv.next1621.i = add nsw i64 %indvars.iv1620.i, 1 ; 3 uses
  %i.dir = icmp slt i64 %indvars.iv.next1621.i, %i.yj
  br i1 %i.dir, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit724.i, label %.loopexit1578.loopexit.i, !llvm.loop !43

bb.iw:                                            ; preds = %._crit_edge.i
  %i.dis = getelementptr inbounds i8, ptr %.33351585.i, i64 %i.yg
  %exitcond1627.not.i = icmp eq i64 %indvars.iv.next1624.i, %wide.trip.count1626.i
  br i1 %exitcond1627.not.i, label %.loopexit.i, label %bb.bj, !llvm.loop !44

.loopexit.i:                                      ; preds = %bb.iw, %bb.bh, %bb.az, %bb.w, %bb.bi, %bb.bb, %bb.x, %bb.t, %bb.r
  %i.dit = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.diu = load i32, ptr %i.dit, align 8, !tbaa !30
  %.not.i.i = icmp eq i32 %i.diu, 0
  br i1 %.not.i.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_118medianBlur_SortNetINS1_8MinMax8uES3_EEvRKNS_3MatERS4_i.exit, label %bb.ix

bb.ix:                                            ; preds = %.loopexit.i
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %27)
          to label %_ZN2cv12cpu_baseline12_GLOBAL__N_118medianBlur_SortNetINS1_8MinMax8uES3_EEvRKNS_3MatERS4_i.exit unwind label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.div = landingpad { ptr, i32 }
          catch ptr null
  %i.diw = extractvalue { ptr, i32 } %i.div, 0
  call void @__clang_call_terminate(ptr %i.diw) #16
  unreachable

_ZN2cv12cpu_baseline12_GLOBAL__N_118medianBlur_SortNetINS1_8MinMax8uES3_EEvRKNS_3MatERS4_i.exit: ; preds = %.loopexit.i, %bb.ix
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #13
  br label %bb.qc

bb.iz:                                            ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #13
  invoke void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %24, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baseline12_GLOBAL__N_118medianBlur_SortNetINS1_9MinMax16uES3_EEvRKNS_3MatERS4_iE25__cv_trace_location_fn626)
          to label %.noexc133 unwind label %bb.ny

.noexc133:                                        ; preds = %bb.iz
  %i.dix = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.diy = load ptr, ptr %i.dix, align 8, !tbaa !119 ; 11 uses
  %i.diz = ptrtoaddr ptr %i.diy to i64            ; 9 uses
  %i.dja = getelementptr inbounds nuw i8, ptr %29, i64 128
  %i.djb = load ptr, ptr %i.i, align 8, !tbaa !119 ; 5 uses
  %i.djc = ptrtoaddr ptr %i.djb to i64            ; 11 uses
  %i.djd = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.dje = load i64, ptr %i.dja, align 8, !tbaa !21
  %i.djf = lshr i64 %i.dje, 1                     ; 3 uses
  %i.djg = trunc i64 %i.djf to i32                ; 4 uses
  %i.djh = load i64, ptr %i.djd, align 8, !tbaa !21
  %i.dji = lshr i64 %i.djh, 1                     ; 3 uses
  %i.djj = trunc i64 %i.dji to i32                ; 2 uses
  %i.djk = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.djl = load i32, ptr %i.djk, align 8, !tbaa !22 ; 6 uses
  %i.djm = icmp slt i32 %i.djl, 3
  br i1 %i.djm, label %bb.jd, label %bb.ja

bb.ja:                                            ; preds = %.noexc133
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %.noexc.i64 unwind label %bb.jj

.noexc.i64:                                       ; preds = %bb.ja
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.17, i32 noundef 109) #14
          to label %bb.jb unwind label %bb.jc

bb.jb:                                            ; preds = %.noexc.i64
  unreachable

bb.jc:                                            ; preds = %.noexc.i64
  %i.djn = landingpad { ptr, i32 }
          cleanup
  %i.djo = load ptr, ptr %22, align 8, !tbaa !25  ; 2 uses
  %i.djp = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.djq = icmp eq ptr %i.djo, %i.djp
  br i1 %i.djq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i65: ; preds = %bb.jc
  %i.djr = load i64, ptr %i.djp, align 8, !tbaa !26
  %i.djs = add i64 %i.djr, 1
  call void @_ZdlPvm(ptr noundef %i.djo, i64 noundef %i.djs) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i66: ; preds = %bb.jc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  br label %.body.i62

bb.jd:                                            ; preds = %.noexc133
  %i.djt = icmp sgt i32 %i.djl, 0
  br i1 %i.djt, label %bb.je, label %bb.jf

bb.je:                                            ; preds = %bb.jd
  %i.dju = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.djv = icmp eq i32 %i.djl, 2
  %i.djw = zext i1 %i.djv to i64
  %i.djx = getelementptr inbounds nuw [4 x i8], ptr %i.dju, i64 %i.djw
  %i.djy = load i32, ptr %i.djx, align 4, !tbaa !27
  br label %bb.jg

bb.jf:                                            ; preds = %bb.jd
  %i.djz = icmp eq i32 %i.djl, 0
  %i.dka = zext i1 %i.djz to i32
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jf, %bb.je
  %i.dkb = phi i32 [ %i.djy, %bb.je ], [ %i.dka, %bb.jf ] ; 6 uses
  %i.dkc = icmp eq i32 %i.djl, 2
  %i.dkd = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.dke = load i32, ptr %i.dkd, align 4
  %i.dkf = icmp sgt i32 %i.djl, -1
  %i.dkg = zext i1 %i.dkf to i32
  %i.dkh = select i1 %i.dkc, i32 %i.dke, i32 %i.dkg ; 10 uses
  %i.dki = load i32, ptr %29, align 8, !tbaa !16
  %i.dkj = lshr i32 %i.dki, 5                     ; 3 uses
  %i.dkk = and i32 %i.dkj, 127                    ; 6 uses
  %i.dkl = add nuw nsw i32 %i.dkk, 1              ; 18 uses
  switch i32 %2, label %.loopexit.i69 [
    i32 3, label %bb.jh
    i32 5, label %bb.jn
  ]

bb.jh:                                            ; preds = %bb.jg
  %i.dkm = icmp eq i32 %i.dkb, 1
  %i.dkn = icmp eq i32 %i.dkh, 1                  ; 4 uses
  %or.cond.i113 = or i1 %i.dkm, %i.dkn
  br i1 %or.cond.i113, label %bb.ji, label %bb.jk

bb.ji:                                            ; preds = %bb.jh
  %i.dko = add nsw i32 %i.dkh, %i.dkb             ; 2 uses
  %i.dkp = select i1 %i.dkn, i32 %i.dkl, i32 %i.djg ; 2 uses
  %i.dkq = icmp sgt i32 %i.dko, 1
  br i1 %i.dkq, label %.preheader.lr.ph.i130, label %.loopexit.i69

.preheader.lr.ph.i130:                            ; preds = %bb.ji
  %i.dkr = select i1 %i.dkn, i32 %i.dkl, i32 %i.djj
  %i.dks = sub nsw i32 %i.djg, %i.dkl
  %i.dkt = sub nsw i32 0, %i.dkp
  %i.dku = add nsw i32 %i.dko, -2                 ; 2 uses
  %narrow1196.i = select i1 %i.dkn, i32 0, i32 %i.dks
  %i.dkv = sext i32 %narrow1196.i to i64
  %i.dkw = sext i32 %i.dkr to i64                 ; 2 uses
  %wide.trip.count1277.i = zext nneg i32 %i.dkl to i64 ; 6 uses
  %i.dkx = shl nsw i64 %i.dkw, 1
  %min.iters.check1693 = icmp samesign ult i32 %i.dkk, 3
  %min.iters.check1700 = icmp samesign ult i32 %i.dkk, 15
  %i.dky = and i64 %wide.trip.count1277.i, 12
  %n.vec1702 = and i64 %wide.trip.count1277.i, 240 ; 11 uses
  %i.dkz = shl nuw nsw i64 %n.vec1702, 1
  %i.dla = icmp eq i64 %n.vec1702, 16
  %i.dlb = icmp eq i64 %n.vec1702, 32
  %i.dlc = icmp eq i64 %n.vec1702, 48
  %i.dld = icmp eq i64 %n.vec1702, 64
  %i.dle = icmp eq i64 %n.vec1702, 80
  %i.dlf = icmp eq i64 %n.vec1702, 96
  %i.dlg = icmp eq i64 %n.vec1702, 112
  %cmp.n1714 = icmp eq i64 %n.vec1702, %wide.trip.count1277.i
  %min.epilog.iters.check = icmp eq i64 %i.dky, 0
  %n.vec1715 = and i64 %wide.trip.count1277.i, 252 ; 4 uses
  %i.dlh = shl nuw nsw i64 %n.vec1715, 1
  %cmp.n1722 = icmp eq i64 %n.vec1715, %wide.trip.count1277.i
  br label %iter.check

iter.check:                                       ; preds = %.loopexit, %.preheader.lr.ph.i130
  %indvar1690 = phi i64 [ %indvar.next1691, %.loopexit ], [ 0, %.preheader.lr.ph.i130 ] ; 2 uses
  %.01235.i = phi ptr [ %i.dri, %.loopexit ], [ %i.diy, %.preheader.lr.ph.i130 ] ; 24 uses
  %.03321234.i = phi ptr [ %i.drj, %.loopexit ], [ %i.djb, %.preheader.lr.ph.i130 ] ; 19 uses
  %.03361233.i = phi i32 [ %i.drh, %.loopexit ], [ 0, %.preheader.lr.ph.i130 ] ; 4 uses
  %.not362.i132 = icmp eq i32 %.03361233.i, 0
  %i.dli = select i1 %.not362.i132, i32 0, i32 %i.dkt
  %i.dlj = sext i32 %i.dli to i64                 ; 11 uses
  %i.dlk = icmp slt i32 %.03361233.i, %i.dku
  %i.dll = select i1 %i.dlk, i32 %i.dkp, i32 0
  %i.dlm = sext i32 %i.dll to i64                 ; 11 uses
  br i1 %min.iters.check1693, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck1694

vector.memcheck1694:                              ; preds = %iter.check
  %.01235.i1689 = ptrtoaddr ptr %.01235.i to i64
  %i.dln = mul nsw i64 %indvar1690, %i.dkx
  %i.dlo = add i64 %i.dln, %i.djc
  %i.dlp = shl nsw i64 %i.dlm, 1
  %i.dlq = sub i64 %i.dlo, %.01235.i1689          ; 3 uses
  %i.dlr = sub i64 %i.dlp, %i.dlq
  %diff.check1695 = icmp ugt i64 %i.dlr, -32
  %i.dls = add i64 %i.dlq, -1
  %diff.check1696 = icmp ult i64 %i.dls, 31
  %conflict.rdx1697 = or i1 %diff.check1695, %diff.check1696
  %i.dlt = shl nsw i64 %i.dlj, 1
  %i.dlu = sub i64 %i.dlt, %i.dlq
  %diff.check1698 = icmp ugt i64 %i.dlu, -32
  %conflict.rdx1699 = or i1 %conflict.rdx1697, %diff.check1698
  br i1 %conflict.rdx1699, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck1694
  br i1 %min.iters.check1700, label %vec.epilog.ph, label %vector.ph1701

vector.ph1701:                                    ; preds = %vector.main.loop.iter.check
  %i.dlv = getelementptr i8, ptr %.01235.i, i64 %i.dkz ; 2 uses
  %i.dlw = getelementptr inbounds [2 x i8], ptr %.01235.i, i64 %i.dlj ; 2 uses
  %i.dlx = getelementptr inbounds nuw i8, ptr %i.dlw, i64 16
  %wide.load1706 = load <8 x i16>, ptr %i.dlw, align 2, !tbaa !123 ; 2 uses
  %wide.load1707 = load <8 x i16>, ptr %i.dlx, align 2, !tbaa !123 ; 2 uses
  %i.dly = getelementptr i8, ptr %.01235.i, i64 16
  %wide.load1708 = load <8 x i16>, ptr %.01235.i, align 2, !tbaa !123 ; 2 uses
  %wide.load1709 = load <8 x i16>, ptr %i.dly, align 2, !tbaa !123 ; 2 uses
  %i.dlz = getelementptr inbounds [2 x i8], ptr %.01235.i, i64 %i.dlm ; 2 uses
  %i.dma = getelementptr inbounds nuw i8, ptr %i.dlz, i64 16
  %wide.load1710 = load <8 x i16>, ptr %i.dlz, align 2, !tbaa !123
  %wide.load1711 = load <8 x i16>, ptr %i.dma, align 2, !tbaa !123
  %i.dmb = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load1708, <8 x i16> %wide.load1706)
  %i.dmc = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load1709, <8 x i16> %wide.load1707)
  %i.dmd = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load1708, <8 x i16> %wide.load1706)
  %i.dme = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load1709, <8 x i16> %wide.load1707)
  %i.dmf = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load1710, <8 x i16> %i.dmd)
  %i.dmg = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load1711, <8 x i16> %i.dme)
  %i.dmh = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.dmf, <8 x i16> %i.dmb)
  %i.dmi = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.dmg, <8 x i16> %i.dmc)
  %i.dmj = getelementptr inbounds nuw i8, ptr %.03321234.i, i64 16
  store <8 x i16> %i.dmh, ptr %.03321234.i, align 2, !tbaa !123
  store <8 x i16> %i.dmi, ptr %i.dmj, align 2, !tbaa !123
  br i1 %i.dla, label %middle.block1713, label %vector.body1703.1

vector.body1703.1:                                ; preds = %vector.ph1701
  %next.gep1705.1 = getelementptr i8, ptr %.01235.i, i64 32 ; 3 uses
  %i.dmk = getelementptr inbounds [2 x i8], ptr %next.gep1705.1, i64 %i.dlj ; 2 uses
  %i.dml = getelementptr inbounds nuw i8, ptr %i.dmk, i64 16
  %wide.load1706.1 = load <8 x i16>, ptr %i.dmk, align 2, !tbaa !123 ; 2 uses
  %wide.load1707.1 = load <8 x i16>, ptr %i.dml, align 2, !tbaa !123 ; 2 uses
  %i.dmm = getelementptr i8, ptr %.01235.i, i64 48
  %wide.load1708.1 = load <8 x i16>, ptr %next.gep1705.1, align 2, !tbaa !123 ; 2 uses
  %wide.load1709.1 = load <8 x i16>, ptr %i.dmm, align 2, !tbaa !123 ; 2 uses
  %i.dmn = getelementptr inbounds [2 x i8], ptr %next.gep1705.1, i64 %i.dlm ; 2 uses
  %i.dmo = getelementptr inbounds nuw i8, ptr %i.dmn, i64 16
  %wide.load1710.1 = load <8 x i16>, ptr %i.dmn, align 2, !tbaa !123
  %wide.load1711.1 = load <8 x i16>, ptr %i.dmo, align 2, !tbaa !123
  %i.dmp = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load1708.1, <8 x i16> %wide.load1706.1)
  %i.dmq = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load1709.1, <8 x i16> %wide.load1707.1)
  %i.dmr = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load1708.1, <8 x i16> %wide.load1706.1)
  %i.dms = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load1709.1, <8 x i16> %wide.load1707.1)
  %i.dmt = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load1710.1, <8 x i16> %i.dmr)
  %i.dmu = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load1711.1, <8 x i16> %i.dms)
  %i.dmv = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.dmt, <8 x i16> %i.dmp)
  %i.dmw = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.dmu, <8 x i16> %i.dmq)
  %i.dmx = getelementptr inbounds nuw i8, ptr %.03321234.i, i64 32
  %i.dmy = getelementptr inbounds nuw i8, ptr %.03321234.i, i64 48
  store <8 x i16> %i.dmv, ptr %i.dmx, align 2, !tbaa !123
  store <8 x i16> %i.dmw, ptr %i.dmy, align 2, !tbaa !123
  br i1 %i.dlb, label %middle.block1713, label %vector.body1703.2

vector.body1703.2:                                ; preds = %vector.body1703.1
  %next.gep1705.2 = getelementptr i8, ptr %.01235.i, i64 64 ; 3 uses
  %i.dmz = getelementptr inbounds [2 x i8], ptr %next.gep1705.2, i64 %i.dlj ; 2 uses
  %i.dna = getelementptr inbounds nuw i8, ptr %i.dmz, i64 16
  %wide.load1706.2 = load <8 x i16>, ptr %i.dmz, align 2, !tbaa !123 ; 2 uses
  %wide.load1707.2 = load <8 x i16>, ptr %i.dna, align 2, !tbaa !123 ; 2 uses
  %i.dnb = getelementptr i8, ptr %.01235.i, i64 80
  %wide.load1708.2 = load <8 x i16>, ptr %next.gep1705.2, align 2, !tbaa !123 ; 2 uses
  %wide.load1709.2 = load <8 x i16>, ptr %i.dnb, align 2, !tbaa !123 ; 2 uses
  %i.dnc = getelementptr inbounds [2 x i8], ptr %next.gep1705.2, i64 %i.dlm ; 2 uses
  %i.dnd = getelementptr inbounds nuw i8, ptr %i.dnc, i64 16
  %wide.load1710.2 = load <8 x i16>, ptr %i.dnc, align 2, !tbaa !123
  %wide.load1711.2 = load <8 x i16>, ptr %i.dnd, align 2, !tbaa !123
  %i.dne = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load1708.2, <8 x i16> %wide.load1706.2)
  %i.dnf = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load1709.2, <8 x i16> %wide.load1707.2)
  %i.dng = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load1708.2, <8 x i16> %wide.load1706.2)
  %i.dnh = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load1709.2, <8 x i16> %wide.load1707.2)
  %i.dni = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load1710.2, <8 x i16> %i.dng)
  %i.dnj = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load1711.2, <8 x i16> %i.dnh)
  %i.dnk = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.dni, <8 x i16> %i.dne)
  %i.dnl = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.dnj, <8 x i16> %i.dnf)
  %i.dnm = getelementptr inbounds nuw i8, ptr %.03321234.i, i64 64
  %i.dnn = getelementptr inbounds nuw i8, ptr %.03321234.i, i64 80
  store <8 x i16> %i.dnk, ptr %i.dnm, align 2, !tbaa !123
  store <8 x i16> %i.dnl, ptr %i.dnn, align 2, !tbaa !123
  br i1 %i.dlc, label %middle.block1713, label %vector.body1703.3

vector.body1703.3:                                ; preds = %vector.body1703.2
  %next.gep1705.3 = getelementptr i8, ptr %.01235.i, i64 96 ; 3 uses
  %i.dno = getelementptr inbounds [2 x i8], ptr %next.gep1705.3, i64 %i.dlj ; 2 uses
  %i.dnp = getelementptr inbounds nuw i8, ptr %i.dno, i64 16
  %wide.load1706.3 = load <8 x i16>, ptr %i.dno, align 2, !tbaa !123 ; 2 uses
  %wide.load1707.3 = load <8 x i16>, ptr %i.dnp, align 2, !tbaa !123 ; 2 uses
  %i.dnq = getelementptr i8, ptr %.01235.i, i64 112
  %wide.load1708.3 = load <8 x i16>, ptr %next.gep1705.3, align 2, !tbaa !123 ; 2 uses
  %wide.load1709.3 = load <8 x i16>, ptr %i.dnq, align 2, !tbaa !123 ; 2 uses
  %i.dnr = getelementptr inbounds [2 x i8], ptr %next.gep1705.3, i64 %i.dlm ; 2 uses
  %i.dns = getelementptr inbounds nuw i8, ptr %i.dnr, i64 16
  %wide.load1710.3 = load <8 x i16>, ptr %i.dnr, align 2, !tbaa !123
  %wide.load1711.3 = load <8 x i16>, ptr %i.dns, align 2, !tbaa !123
  %i.dnt = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load1708.3, <8 x i16> %wide.load1706.3)
  %i.dnu = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load1709.3, <8 x i16> %wide.load1707.3)
  %i.dnv = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load1708.3, <8 x i16> %wide.load1706.3)
  %i.dnw = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load1709.3, <8 x i16> %wide.load1707.3)
  %i.dnx = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load1710.3, <8 x i16> %i.dnv)
  %i.dny = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load1711.3, <8 x i16> %i.dnw)
  %i.dnz = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.dnx, <8 x i16> %i.dnt)
  %i.doa = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.dny, <8 x i16> %i.dnu)
  %i.dob = getelementptr inbounds nuw i8, ptr %.03321234.i, i64 96
  %i.doc = getelementptr inbounds nuw i8, ptr %.03321234.i, i64 112
  store <8 x i16> %i.dnz, ptr %i.dob, align 2, !tbaa !123
  store <8 x i16> %i.doa, ptr %i.doc, align 2, !tbaa !123
  br i1 %i.dld, label %middle.block1713, label %vector.body1703.4

vector.body1703.4:                                ; preds = %vector.body1703.3
  %next.gep1705.4 = getelementptr i8, ptr %.01235.i, i64 128 ; 3 uses
  %i.dod = getelementptr inbounds [2 x i8], ptr %next.gep1705.4, i64 %i.dlj ; 2 uses
  %i.doe = getelementptr inbounds nuw i8, ptr %i.dod, i64 16
  %wide.load1706.4 = load <8 x i16>, ptr %i.dod, align 2, !tbaa !123 ; 2 uses
  %wide.load1707.4 = load <8 x i16>, ptr %i.doe, align 2, !tbaa !123 ; 2 uses
  %i.dof = getelementptr i8, ptr %.01235.i, i64 144
  %wide.load1708.4 = load <8 x i16>, ptr %next.gep1705.4, align 2, !tbaa !123 ; 2 uses
  %wide.load1709.4 = load <8 x i16>, ptr %i.dof, align 2, !tbaa !123 ; 2 uses
  %i.dog = getelementptr inbounds [2 x i8], ptr %next.gep1705.4, i64 %i.dlm ; 2 uses
  %i.doh = getelementptr inbounds nuw i8, ptr %i.dog, i64 16
  %wide.load1710.4 = load <8 x i16>, ptr %i.dog, align 2, !tbaa !123
  %wide.load1711.4 = load <8 x i16>, ptr %i.doh, align 2, !tbaa !123
  %i.doi = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load1708.4, <8 x i16> %wide.load1706.4)
  %i.doj = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load1709.4, <8 x i16> %wide.load1707.4)
  %i.dok = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load1708.4, <8 x i16> %wide.load1706.4)
  %i.dol = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load1709.4, <8 x i16> %wide.load1707.4)
  %i.dom = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load1710.4, <8 x i16> %i.dok)
  %i.don = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load1711.4, <8 x i16> %i.dol)
  %i.doo = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.dom, <8 x i16> %i.doi)
  %i.dop = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.don, <8 x i16> %i.doj)
  %i.doq = getelementptr inbounds nuw i8, ptr %.03321234.i, i64 128
  %i.dor = getelementptr inbounds nuw i8, ptr %.03321234.i, i64 144
  store <8 x i16> %i.doo, ptr %i.doq, align 2, !tbaa !123
  store <8 x i16> %i.dop, ptr %i.dor, align 2, !tbaa !123
  br i1 %i.dle, label %middle.block1713, label %vector.body1703.5

vector.body1703.5:                                ; preds = %vector.body1703.4
  %next.gep1705.5 = getelementptr i8, ptr %.01235.i, i64 160 ; 3 uses
  %i.dos = getelementptr inbounds [2 x i8], ptr %next.gep1705.5, i64 %i.dlj ; 2 uses
  %i.dot = getelementptr inbounds nuw i8, ptr %i.dos, i64 16
  %wide.load1706.5 = load <8 x i16>, ptr %i.dos, align 2, !tbaa !123 ; 2 uses
  %wide.load1707.5 = load <8 x i16>, ptr %i.dot, align 2, !tbaa !123 ; 2 uses
  %i.dou = getelementptr i8, ptr %.01235.i, i64 176
  %wide.load1708.5 = load <8 x i16>, ptr %next.gep1705.5, align 2, !tbaa !123 ; 2 uses
  %wide.load1709.5 = load <8 x i16>, ptr %i.dou, align 2, !tbaa !123 ; 2 uses
  %i.dov = getelementptr inbounds [2 x i8], ptr %next.gep1705.5, i64 %i.dlm ; 2 uses
  %i.dow = getelementptr inbounds nuw i8, ptr %i.dov, i64 16
  %wide.load1710.5 = load <8 x i16>, ptr %i.dov, align 2, !tbaa !123
  %wide.load1711.5 = load <8 x i16>, ptr %i.dow, align 2, !tbaa !123
  %i.dox = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load1708.5, <8 x i16> %wide.load1706.5)
  %i.doy = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load1709.5, <8 x i16> %wide.load1707.5)
  %i.doz = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load1708.5, <8 x i16> %wide.load1706.5)
  %i.dpa = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load1709.5, <8 x i16> %wide.load1707.5)
  %i.dpb = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load1710.5, <8 x i16> %i.doz)
  %i.dpc = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load1711.5, <8 x i16> %i.dpa)
  %i.dpd = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.dpb, <8 x i16> %i.dox)
  %i.dpe = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.dpc, <8 x i16> %i.doy)
  %i.dpf = getelementptr inbounds nuw i8, ptr %.03321234.i, i64 160
  %i.dpg = getelementptr inbounds nuw i8, ptr %.03321234.i, i64 176
  store <8 x i16> %i.dpd, ptr %i.dpf, align 2, !tbaa !123
  store <8 x i16> %i.dpe, ptr %i.dpg, align 2, !tbaa !123
  br i1 %i.dlf, label %middle.block1713, label %vector.body1703.6

vector.body1703.6:                                ; preds = %vector.body1703.5
  %next.gep1705.6 = getelementptr i8, ptr %.01235.i, i64 192 ; 3 uses
  %i.dph = getelementptr inbounds [2 x i8], ptr %next.gep1705.6, i64 %i.dlj ; 2 uses
  %i.dpi = getelementptr inbounds nuw i8, ptr %i.dph, i64 16
  %wide.load1706.6 = load <8 x i16>, ptr %i.dph, align 2, !tbaa !123 ; 2 uses
  %wide.load1707.6 = load <8 x i16>, ptr %i.dpi, align 2, !tbaa !123 ; 2 uses
  %i.dpj = getelementptr i8, ptr %.01235.i, i64 208
  %wide.load1708.6 = load <8 x i16>, ptr %next.gep1705.6, align 2, !tbaa !123 ; 2 uses
  %wide.load1709.6 = load <8 x i16>, ptr %i.dpj, align 2, !tbaa !123 ; 2 uses
  %i.dpk = getelementptr inbounds [2 x i8], ptr %next.gep1705.6, i64 %i.dlm ; 2 uses
  %i.dpl = getelementptr inbounds nuw i8, ptr %i.dpk, i64 16
  %wide.load1710.6 = load <8 x i16>, ptr %i.dpk, align 2, !tbaa !123
  %wide.load1711.6 = load <8 x i16>, ptr %i.dpl, align 2, !tbaa !123
  %i.dpm = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load1708.6, <8 x i16> %wide.load1706.6)
  %i.dpn = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load1709.6, <8 x i16> %wide.load1707.6)
  %i.dpo = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load1708.6, <8 x i16> %wide.load1706.6)
  %i.dpp = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load1709.6, <8 x i16> %wide.load1707.6)
  %i.dpq = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load1710.6, <8 x i16> %i.dpo)
  %i.dpr = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load1711.6, <8 x i16> %i.dpp)
  %i.dps = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.dpq, <8 x i16> %i.dpm)
  %i.dpt = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.dpr, <8 x i16> %i.dpn)
  %i.dpu = getelementptr inbounds nuw i8, ptr %.03321234.i, i64 192
end_hunk_0
begin_hunk_1_@_ZN2cv12cpu_baseline10medianBlurERKNS_3MatERS1_i:bb.a
  br label %vector.body1665

vector.body1665:                                  ; preds = %vector.body1665, %vector.ph1663
  %index1666 = phi i64 [ 0, %vector.ph1663 ], [ %index.next1676, %vector.body1665 ] ; 2 uses
  %i.dwn = add i64 %index1666, %i.dwi             ; 4 uses
  %i.dwo = getelementptr inbounds [2 x i8], ptr %i.dte, i64 %i.dwn ; 3 uses
  %i.dwp = getelementptr inbounds [2 x i8], ptr %i.dwo, i64 %i.drq
  %wide.load1667 = load <8 x i16>, ptr %i.dwp, align 2, !tbaa !123
  %i.dwq = zext <8 x i16> %wide.load1667 to <8 x i32> ; 2 uses
  %wide.load1668 = load <8 x i16>, ptr %i.dwo, align 2, !tbaa !123
  %i.dwr = zext <8 x i16> %wide.load1668 to <8 x i32> ; 2 uses
  %i.dws = getelementptr inbounds nuw [2 x i8], ptr %i.dwo, i64 %i.drp
  %wide.load1669 = load <8 x i16>, ptr %i.dws, align 2, !tbaa !123
  %i.dwt = zext <8 x i16> %wide.load1669 to <8 x i32> ; 2 uses
  %i.dwu = getelementptr inbounds [2 x i8], ptr %i.dtg, i64 %i.dwn ; 3 uses
  %i.dwv = getelementptr inbounds [2 x i8], ptr %i.dwu, i64 %i.drq
  %wide.load1670 = load <8 x i16>, ptr %i.dwv, align 2, !tbaa !123
  %i.dww = zext <8 x i16> %wide.load1670 to <8 x i32> ; 2 uses
  %wide.load1671 = load <8 x i16>, ptr %i.dwu, align 2, !tbaa !123
  %i.dwx = zext <8 x i16> %wide.load1671 to <8 x i32> ; 2 uses
  %i.dwy = getelementptr inbounds nuw [2 x i8], ptr %i.dwu, i64 %i.drp
  %wide.load1672 = load <8 x i16>, ptr %i.dwy, align 2, !tbaa !123
  %i.dwz = zext <8 x i16> %wide.load1672 to <8 x i32> ; 2 uses
  %i.dxa = getelementptr inbounds [2 x i8], ptr %i.dtk, i64 %i.dwn ; 3 uses
  %i.dxb = getelementptr inbounds [2 x i8], ptr %i.dxa, i64 %i.drq
  %wide.load1673 = load <8 x i16>, ptr %i.dxb, align 2, !tbaa !123
  %i.dxc = zext <8 x i16> %wide.load1673 to <8 x i32> ; 2 uses
  %wide.load1674 = load <8 x i16>, ptr %i.dxa, align 2, !tbaa !123
  %i.dxd = zext <8 x i16> %wide.load1674 to <8 x i32> ; 2 uses
  %i.dxe = getelementptr inbounds nuw [2 x i8], ptr %i.dxa, i64 %i.drp
  %wide.load1675 = load <8 x i16>, ptr %i.dxe, align 2, !tbaa !123
  %i.dxf = zext <8 x i16> %wide.load1675 to <8 x i32> ; 2 uses
  %i.dxg = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.dwt, <8 x i32> %i.dwr) ; 2 uses
  %i.dxh = call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.dwt, <8 x i32> %i.dwr) ; 2 uses
  %i.dxi = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.dwz, <8 x i32> %i.dwx) ; 2 uses
  %i.dxj = call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.dwz, <8 x i32> %i.dwx) ; 2 uses
  %i.dxk = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.dxf, <8 x i32> %i.dxd) ; 2 uses
  %i.dxl = call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.dxf, <8 x i32> %i.dxd) ; 2 uses
  %i.dxm = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.dxg, <8 x i32> %i.dwq)
  %i.dxn = call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.dxg, <8 x i32> %i.dwq) ; 2 uses
  %i.dxo = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.dxi, <8 x i32> %i.dww)
  %i.dxp = call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.dxi, <8 x i32> %i.dww) ; 2 uses
  %i.dxq = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.dxk, <8 x i32> %i.dxc)
  %i.dxr = call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.dxk, <8 x i32> %i.dxc) ; 2 uses
  %i.dxs = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.dxh, <8 x i32> %i.dxn)
  %i.dxt = call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.dxh, <8 x i32> %i.dxn)
  %i.dxu = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.dxj, <8 x i32> %i.dxp) ; 2 uses
  %i.dxv = call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.dxj, <8 x i32> %i.dxp)
  %i.dxw = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.dxl, <8 x i32> %i.dxr) ; 2 uses
  %i.dxx = call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.dxl, <8 x i32> %i.dxr)
  %i.dxy = call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.dxo, <8 x i32> %i.dxm)
  %i.dxz = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.dxx, <8 x i32> %i.dxv)
  %i.dya = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.dxw, <8 x i32> %i.dxu)
  %i.dyb = call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.dxw, <8 x i32> %i.dxu)
  %i.dyc = call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.dxq, <8 x i32> %i.dxy)
  %i.dyd = call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.dya, <8 x i32> %i.dxs)
  %i.dye = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.dxz, <8 x i32> %i.dxt) ; 2 uses
  %i.dyf = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.dyb, <8 x i32> %i.dyd) ; 2 uses
  %i.dyg = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.dye, <8 x i32> %i.dyf)
  %i.dyh = call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.dye, <8 x i32> %i.dyf)
  %i.dyi = call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.dyg, <8 x i32> %i.dyc)
  %i.dyj = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.dyh, <8 x i32> %i.dyi)
  %i.dyk = getelementptr inbounds [2 x i8], ptr %.13331228.i, i64 %i.dwn
  %i.dyl = trunc nuw <8 x i32> %i.dyj to <8 x i16>
  store <8 x i16> %i.dyl, ptr %i.dyk, align 2, !tbaa !123
  %index.next1676 = add nuw i64 %index1666, 8     ; 2 uses
  %i.dym = icmp eq i64 %index.next1676, %n.vec1664
  br i1 %i.dym, label %middle.block1677, label %vector.body1665, !llvm.loop !50

middle.block1677:                                 ; preds = %vector.body1665
  %cmp.n1678 = icmp eq i64 %i.dwl, %n.vec1664
  br i1 %cmp.n1678, label %.loopexit1198.loopexit.i, label %.lr.ph1225.i.preheader

.lr.ph1225.i.preheader:                           ; preds = %.lr.ph1225.preheader.i, %middle.block1677
  %indvars.iv1266.i.ph = phi i64 [ %i.dwm, %middle.block1677 ], [ %i.dwi, %.lr.ph1225.preheader.i ]
  br label %.lr.ph1225.i

.lr.ph1225.i:                                     ; preds = %.lr.ph1225.i.preheader, %.lr.ph1225.i
  %indvars.iv1266.i = phi i64 [ %indvars.iv.next1267.i, %.lr.ph1225.i ], [ %indvars.iv1266.i.ph, %.lr.ph1225.i.preheader ] ; 5 uses
  %i.dyn = getelementptr inbounds [2 x i8], ptr %i.dte, i64 %indvars.iv1266.i ; 3 uses
  %i.dyo = getelementptr inbounds [2 x i8], ptr %i.dyn, i64 %i.drq
  %.val370.i120 = load i16, ptr %i.dyo, align 2, !tbaa !123
  %i.dyp = zext i16 %.val370.i120 to i32          ; 2 uses
  %.val369.i121 = load i16, ptr %i.dyn, align 2, !tbaa !123
  %i.dyq = zext i16 %.val369.i121 to i32          ; 2 uses
  %i.dyr = getelementptr inbounds nuw [2 x i8], ptr %i.dyn, i64 %i.drp
  %.val368.i122 = load i16, ptr %i.dyr, align 2, !tbaa !123
  %i.dys = zext i16 %.val368.i122 to i32          ; 2 uses
  %i.dyt = getelementptr inbounds [2 x i8], ptr %i.dtg, i64 %indvars.iv1266.i ; 3 uses
  %i.dyu = getelementptr inbounds [2 x i8], ptr %i.dyt, i64 %i.drq
  %.val367.i123 = load i16, ptr %i.dyu, align 2, !tbaa !123
  %i.dyv = zext i16 %.val367.i123 to i32          ; 2 uses
  %.val366.i124 = load i16, ptr %i.dyt, align 2, !tbaa !123
  %i.dyw = zext i16 %.val366.i124 to i32          ; 2 uses
  %i.dyx = getelementptr inbounds nuw [2 x i8], ptr %i.dyt, i64 %i.drp
  %.val365.i125 = load i16, ptr %i.dyx, align 2, !tbaa !123
  %i.dyy = zext i16 %.val365.i125 to i32          ; 2 uses
  %i.dyz = getelementptr inbounds [2 x i8], ptr %i.dtk, i64 %indvars.iv1266.i ; 3 uses
  %i.dza = getelementptr inbounds [2 x i8], ptr %i.dyz, i64 %i.drq
  %.val364.i126 = load i16, ptr %i.dza, align 2, !tbaa !123
  %i.dzb = zext i16 %.val364.i126 to i32          ; 2 uses
  %.val363.i127 = load i16, ptr %i.dyz, align 2, !tbaa !123
  %i.dzc = zext i16 %.val363.i127 to i32          ; 2 uses
  %i.dzd = getelementptr inbounds nuw [2 x i8], ptr %i.dyz, i64 %i.drp
  %.val.i128 = load i16, ptr %i.dzd, align 2, !tbaa !123
  %i.dze = zext i16 %.val.i128 to i32             ; 2 uses
  %i.dzf = call i32 @llvm.umin.i32(i32 %i.dys, i32 %i.dyq) ; 2 uses
  %i.dzg = call i32 @llvm.umax.i32(i32 %i.dys, i32 %i.dyq) ; 2 uses
  %i.dzh = call i32 @llvm.umin.i32(i32 %i.dyy, i32 %i.dyw) ; 2 uses
  %i.dzi = call i32 @llvm.umax.i32(i32 %i.dyy, i32 %i.dyw) ; 2 uses
  %i.dzj = call i32 @llvm.umin.i32(i32 %i.dze, i32 %i.dzc) ; 2 uses
  %i.dzk = call i32 @llvm.umax.i32(i32 %i.dze, i32 %i.dzc) ; 2 uses
  %i.dzl = call i32 @llvm.umin.i32(i32 %i.dzf, i32 %i.dyp)
  %i.dzm = call i32 @llvm.umax.i32(i32 %i.dzf, i32 %i.dyp) ; 2 uses
  %i.dzn = call i32 @llvm.umin.i32(i32 %i.dzh, i32 %i.dyv)
  %i.dzo = call i32 @llvm.umax.i32(i32 %i.dzh, i32 %i.dyv) ; 2 uses
  %i.dzp = call i32 @llvm.umin.i32(i32 %i.dzj, i32 %i.dzb)
  %i.dzq = call i32 @llvm.umax.i32(i32 %i.dzj, i32 %i.dzb) ; 2 uses
  %i.dzr = call i32 @llvm.umin.i32(i32 %i.dzg, i32 %i.dzm)
  %i.dzs = call i32 @llvm.umax.i32(i32 %i.dzg, i32 %i.dzm)
  %i.dzt = call i32 @llvm.umin.i32(i32 %i.dzi, i32 %i.dzo) ; 2 uses
  %i.dzu = call i32 @llvm.umax.i32(i32 %i.dzi, i32 %i.dzo)
  %i.dzv = call i32 @llvm.umin.i32(i32 %i.dzk, i32 %i.dzq) ; 2 uses
  %i.dzw = call i32 @llvm.umax.i32(i32 %i.dzk, i32 %i.dzq)
  %i.dzx = call i32 @llvm.umax.i32(i32 %i.dzn, i32 %i.dzl)
  %i.dzy = call i32 @llvm.umin.i32(i32 %i.dzw, i32 %i.dzu)
  %i.dzz = call i32 @llvm.umin.i32(i32 %i.dzv, i32 %i.dzt)
  %i.eaa = call i32 @llvm.umax.i32(i32 %i.dzv, i32 %i.dzt)
  %i.eab = call i32 @llvm.umax.i32(i32 %i.dzp, i32 %i.dzx)
  %i.eac = call i32 @llvm.umax.i32(i32 %i.dzz, i32 %i.dzr)
  %i.ead = call i32 @llvm.umin.i32(i32 %i.dzy, i32 %i.dzs) ; 2 uses
  %i.eae = call i32 @llvm.umin.i32(i32 %i.eaa, i32 %i.eac) ; 2 uses
  %i.eaf = call i32 @llvm.umin.i32(i32 %i.ead, i32 %i.eae)
  %i.eag = call i32 @llvm.umax.i32(i32 %i.ead, i32 %i.eae)
  %i.eah = call i32 @llvm.umax.i32(i32 %i.eaf, i32 %i.eab)
  %i.eai = call i32 @llvm.umin.i32(i32 %i.eag, i32 %i.eah)
  %i.eaj = getelementptr inbounds [2 x i8], ptr %.13331228.i, i64 %indvars.iv1266.i
  %i.eak = trunc nuw i32 %i.eai to i16
  store i16 %i.eak, ptr %i.eaj, align 2, !tbaa !123
  %indvars.iv.next1267.i = add nsw i64 %indvars.iv1266.i, 1 ; 3 uses
  %i.eal = icmp slt i64 %indvars.iv.next1267.i, %i.drt
  br i1 %i.eal, label %.lr.ph1225.i, label %.loopexit1198.loopexit.i, !llvm.loop !51

bb.jm:                                            ; preds = %._crit_edge1222.i
  %i.eam = getelementptr inbounds i8, ptr %.13331228.i, i64 %i.drr
  %exitcond1273.not.i = icmp eq i64 %indvars.iv.next1270.i, %wide.trip.count1272.i
  br i1 %exitcond1273.not.i, label %.loopexit.i69, label %bb.jl, !llvm.loop !52

bb.jn:                                            ; preds = %bb.jg
  %i.ean = icmp eq i32 %i.dkb, 1
  %i.eao = icmp eq i32 %i.dkh, 1                  ; 4 uses
  %or.cond5.i68 = or i1 %i.ean, %i.eao
  br i1 %or.cond5.i68, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %bb.jn
  %i.eap = add nsw i32 %i.dkh, %i.dkb             ; 3 uses
  %i.eaq = select i1 %i.eao, i32 %i.dkl, i32 %i.djg ; 3 uses
  %i.ear = icmp sgt i32 %i.eap, 1
  br i1 %i.ear, label %.preheader1200.lr.ph.i, label %.loopexit.i69

.preheader1200.lr.ph.i:                           ; preds = %bb.jo
  %i.eas = select i1 %i.eao, i32 %i.dkl, i32 %i.djj
  %i.eat = sub nsw i32 %i.djg, %i.dkl
  %i.eau = sub nsw i32 0, %i.eaq                  ; 2 uses
  %i.eav = shl nsw i32 %i.eau, 1
  %i.eaw = add nsw i32 %i.eap, -2                 ; 2 uses
  %i.eax = add nsw i32 %i.eap, -3
  %i.eay = shl nsw i32 %i.eaq, 1
  %narrow.i111 = select i1 %i.eao, i32 0, i32 %i.eat
  %i.eaz = sext i32 %narrow.i111 to i64
  %i.eba = sext i32 %i.eas to i64                 ; 2 uses
  %wide.trip.count1258.i = zext nneg i32 %i.dkl to i64 ; 3 uses
  %i.ebb = shl nsw i64 %i.eba, 1
  %min.iters.check1595 = icmp samesign ult i32 %i.dkk, 7
  %n.vec1607 = and i64 %wide.trip.count1258.i, 248 ; 4 uses
  %i.ebc = shl nuw nsw i64 %n.vec1607, 1
  %cmp.n1618 = icmp eq i64 %n.vec1607, %wide.trip.count1258.i
  br label %.preheader1200.i

.preheader1200.i:                                 ; preds = %.loopexit1778, %.preheader1200.lr.ph.i
  %indvar1591 = phi i64 [ %indvar.next1592, %.loopexit1778 ], [ 0, %.preheader1200.lr.ph.i ] ; 2 uses
  %.21218.i = phi ptr [ %i.eds, %.loopexit1778 ], [ %i.diy, %.preheader1200.lr.ph.i ] ; 5 uses
  %.23341217.i = phi ptr [ %i.edt, %.loopexit1778 ], [ %i.djb, %.preheader1200.lr.ph.i ] ; 3 uses
  %.23381216.i = phi i32 [ %i.edr, %.loopexit1778 ], [ 0, %.preheader1200.lr.ph.i ] ; 6 uses
  %.not358.i112 = icmp eq i32 %.23381216.i, 0
  %i.ebd = select i1 %.not358.i112, i32 0, i32 %i.eau ; 2 uses
  %i.ebe = icmp samesign ugt i32 %.23381216.i, 1
  %i.ebf = select i1 %i.ebe, i32 %i.eav, i32 %i.ebd
  %i.ebg = icmp slt i32 %.23381216.i, %i.eaw
  %i.ebh = select i1 %i.ebg, i32 %i.eaq, i32 0    ; 2 uses
  %i.ebi = icmp slt i32 %.23381216.i, %i.eax
  %i.ebj = select i1 %i.ebi, i32 %i.eay, i32 %i.ebh
  %i.ebk = sext i32 %i.ebf to i64                 ; 3 uses
  %i.ebl = sext i32 %i.ebd to i64                 ; 3 uses
  %i.ebm = sext i32 %i.ebh to i64                 ; 3 uses
  %i.ebn = sext i32 %i.ebj to i64                 ; 3 uses
  br i1 %min.iters.check1595, label %scalar.ph1594.preheader, label %vector.memcheck1596

vector.memcheck1596:                              ; preds = %.preheader1200.i
  %.21218.i1593 = ptrtoaddr ptr %.21218.i to i64
  %i.ebo = mul nsw i64 %indvar1591, %i.ebb
  %i.ebp = add i64 %i.ebo, %i.djc
  %i.ebq = shl nsw i64 %i.ebn, 1
  %i.ebr = sub i64 %i.ebp, %.21218.i1593          ; 5 uses
  %i.ebs = sub i64 %i.ebq, %i.ebr
  %diff.check1597 = icmp ugt i64 %i.ebs, -16
  %i.ebt = shl nsw i64 %i.ebm, 1
  %i.ebu = sub i64 %i.ebt, %i.ebr
  %diff.check1598 = icmp ugt i64 %i.ebu, -16
  %conflict.rdx1599 = or i1 %diff.check1597, %diff.check1598
  %i.ebv = add i64 %i.ebr, -1
  %diff.check1600 = icmp ult i64 %i.ebv, 15
  %conflict.rdx1601 = or i1 %conflict.rdx1599, %diff.check1600
  %i.ebw = shl nsw i64 %i.ebl, 1
  %i.ebx = sub i64 %i.ebw, %i.ebr
  %diff.check1602 = icmp ugt i64 %i.ebx, -16
  %conflict.rdx1603 = or i1 %conflict.rdx1601, %diff.check1602
  %i.eby = shl nsw i64 %i.ebk, 1
  %i.ebz = sub i64 %i.eby, %i.ebr
  %diff.check1604 = icmp ugt i64 %i.ebz, -16
  %conflict.rdx1605 = or i1 %conflict.rdx1603, %diff.check1604
  br i1 %conflict.rdx1605, label %scalar.ph1594.preheader, label %vector.ph1606

vector.ph1606:                                    ; preds = %vector.memcheck1596
  %i.eca = getelementptr i8, ptr %.21218.i, i64 %i.ebc ; 2 uses
  br label %vector.body1608

vector.body1608:                                  ; preds = %vector.body1608, %vector.ph1606
  %index1609 = phi i64 [ 0, %vector.ph1606 ], [ %index.next1616, %vector.body1608 ] ; 3 uses
  %i.ecb = shl i64 %index1609, 1
  %next.gep1610 = getelementptr i8, ptr %.21218.i, i64 %i.ecb ; 5 uses
  %i.ecc = getelementptr inbounds [2 x i8], ptr %next.gep1610, i64 %i.ebk
  %wide.load1611 = load <8 x i16>, ptr %i.ecc, align 2, !tbaa !123 ; 2 uses
  %i.ecd = getelementptr inbounds [2 x i8], ptr %next.gep1610, i64 %i.ebl
  %wide.load1612 = load <8 x i16>, ptr %i.ecd, align 2, !tbaa !123 ; 2 uses
  %wide.load1613 = load <8 x i16>, ptr %next.gep1610, align 2, !tbaa !123 ; 2 uses
  %i.ece = getelementptr inbounds [2 x i8], ptr %next.gep1610, i64 %i.ebm
  %wide.load1614 = load <8 x i16>, ptr %i.ece, align 2, !tbaa !123 ; 2 uses
  %i.ecf = getelementptr inbounds [2 x i8], ptr %next.gep1610, i64 %i.ebn
  %wide.load1615 = load <8 x i16>, ptr %i.ecf, align 2, !tbaa !123 ; 2 uses
  %i.ecg = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load1612, <8 x i16> %wide.load1611)
  %i.ech = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load1612, <8 x i16> %wide.load1611)
  %i.eci = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load1615, <8 x i16> %wide.load1614) ; 2 uses
  %i.ecj = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load1615, <8 x i16> %wide.load1614) ; 2 uses
  %i.eck = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.eci, <8 x i16> %wide.load1613)
  %i.ecl = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.eci, <8 x i16> %wide.load1613) ; 2 uses
  %i.ecm = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.ecj, <8 x i16> %i.ecl)
  %i.ecn = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.ecj, <8 x i16> %i.ecl)
  %i.eco = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.eck, <8 x i16> %i.ecg)
  %i.ecp = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.ecn, <8 x i16> %i.eco)
  %i.ecq = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.ecm, <8 x i16> %i.ech)
  %i.ecr = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.ecp, <8 x i16> %i.ecq)
  %i.ecs = getelementptr inbounds nuw [2 x i8], ptr %.23341217.i, i64 %index1609
  store <8 x i16> %i.ecr, ptr %i.ecs, align 2, !tbaa !123
  %index.next1616 = add nuw i64 %index1609, 8     ; 2 uses
  %i.ect = icmp eq i64 %index.next1616, %n.vec1607
  br i1 %i.ect, label %middle.block1617, label %vector.body1608, !llvm.loop !53

middle.block1617:                                 ; preds = %vector.body1608
  br i1 %cmp.n1618, label %.loopexit1778, label %scalar.ph1594.preheader

scalar.ph1594.preheader:                          ; preds = %vector.memcheck1596, %.preheader1200.i, %middle.block1617
  %indvars.iv1255.i.ph = phi i64 [ 0, %vector.memcheck1596 ], [ 0, %.preheader1200.i ], [ %n.vec1607, %middle.block1617 ]
  %.31215.i.ph = phi ptr [ %.21218.i, %vector.memcheck1596 ], [ %.21218.i, %.preheader1200.i ], [ %i.eca, %middle.block1617 ]
  br label %scalar.ph1594

scalar.ph1594:                                    ; preds = %scalar.ph1594.preheader, %scalar.ph1594
  %indvars.iv1255.i = phi i64 [ %indvars.iv.next1256.i, %scalar.ph1594 ], [ %indvars.iv1255.i.ph, %scalar.ph1594.preheader ] ; 2 uses
  %.31215.i = phi ptr [ %i.edq, %scalar.ph1594 ], [ %.31215.i.ph, %scalar.ph1594.preheader ] ; 6 uses
  %i.ecu = getelementptr inbounds [2 x i8], ptr %.31215.i, i64 %i.ebk
  %i.ecv = load i16, ptr %i.ecu, align 2, !tbaa !123 ; 2 uses
  %i.ecw = getelementptr inbounds [2 x i8], ptr %.31215.i, i64 %i.ebl
  %i.ecx = load i16, ptr %i.ecw, align 2, !tbaa !123 ; 2 uses
  %i.ecy = load i16, ptr %.31215.i, align 2, !tbaa !123 ; 2 uses
  %i.ecz = getelementptr inbounds [2 x i8], ptr %.31215.i, i64 %i.ebm
  %i.eda = load i16, ptr %i.ecz, align 2, !tbaa !123 ; 2 uses
  %i.edb = getelementptr inbounds [2 x i8], ptr %.31215.i, i64 %i.ebn
  %i.edc = load i16, ptr %i.edb, align 2, !tbaa !123 ; 2 uses
  %i.edd = call i16 @llvm.umin.i16(i16 %i.ecx, i16 %i.ecv)
  %i.ede = call i16 @llvm.umax.i16(i16 %i.ecx, i16 %i.ecv)
  %i.edf = call i16 @llvm.umin.i16(i16 %i.edc, i16 %i.eda) ; 2 uses
  %i.edg = call i16 @llvm.umax.i16(i16 %i.edc, i16 %i.eda) ; 2 uses
  %i.edh = call i16 @llvm.umin.i16(i16 %i.edf, i16 %i.ecy)
  %i.edi = call i16 @llvm.umax.i16(i16 %i.edf, i16 %i.ecy) ; 2 uses
  %i.edj = call i16 @llvm.umin.i16(i16 %i.edg, i16 %i.edi)
  %i.edk = call i16 @llvm.umax.i16(i16 %i.edg, i16 %i.edi)
  %i.edl = call i16 @llvm.umax.i16(i16 %i.edh, i16 %i.edd)
  %i.edm = call i16 @llvm.umin.i16(i16 %i.edk, i16 %i.edl)
  %i.edn = call i16 @llvm.umin.i16(i16 %i.edj, i16 %i.ede)
  %i.edo = call i16 @llvm.umax.i16(i16 %i.edm, i16 %i.edn)
  %i.edp = getelementptr inbounds nuw [2 x i8], ptr %.23341217.i, i64 %indvars.iv1255.i
  store i16 %i.edo, ptr %i.edp, align 2, !tbaa !123
  %indvars.iv.next1256.i = add nuw nsw i64 %indvars.iv1255.i, 1 ; 2 uses
  %i.edq = getelementptr inbounds nuw i8, ptr %.31215.i, i64 2 ; 2 uses
  %exitcond1259.not.i = icmp eq i64 %indvars.iv.next1256.i, %wide.trip.count1258.i
  br i1 %exitcond1259.not.i, label %.loopexit1778, label %scalar.ph1594, !llvm.loop !54

.loopexit1778:                                    ; preds = %scalar.ph1594, %middle.block1617
  %.lcssa900 = phi ptr [ %i.eca, %middle.block1617 ], [ %i.edq, %scalar.ph1594 ]
  %i.edr = add nuw nsw i32 %.23381216.i, 1
  %i.eds = getelementptr inbounds [2 x i8], ptr %.lcssa900, i64 %i.eaz
  %i.edt = getelementptr inbounds [2 x i8], ptr %.23341217.i, i64 %i.eba
  %exitcond1260.not.i = icmp eq i32 %.23381216.i, %i.eaw
  %indvar.next1592 = add i64 %indvar1591, 1
  br i1 %exitcond1260.not.i, label %.loopexit.i69, label %.preheader1200.i, !llvm.loop !55

bb.jp:                                            ; preds = %bb.jn
  %i.edu = mul i32 %i.dkl, %i.dkb                 ; 4 uses
  %i.edv = icmp sgt i32 %i.dkh, 0
  br i1 %i.edv, label %.lr.ph1213.i, label %.loopexit.i69

.lr.ph1213.i:                                     ; preds = %bb.jp
  %sext.i71 = shl i64 %i.djf, 32                  ; 6 uses
  %i.edw = ashr exact i64 %sext.i71, 32           ; 7 uses
  %i.edx = add nsw i32 %i.dkh, -1                 ; 3 uses
  %i.edy = shl nuw nsw i32 %i.dkl, 1              ; 5 uses
  %i.edz = sub nsw i32 %i.edu, %i.dkl
  %i.eea = sub i32 %i.edu, %i.edy                 ; 2 uses
  %i.eeb = zext nneg i32 %i.edy to i64            ; 12 uses
  %i.eec = sub nsw i64 0, %i.eeb                  ; 10 uses
  %i.eed = zext nneg i32 %i.dkl to i64            ; 11 uses
  %i.eee = sub nsw i64 0, %i.eed                  ; 10 uses
  %sext356.i72 = shl i64 %i.dji, 32
  %i.eef = ashr exact i64 %sext356.i72, 31        ; 3 uses
  %i.eeg = zext nneg i32 %i.dkk to i64
  %i.eeh = sext i32 %i.edz to i64
  %i.eei = sext i32 %i.eea to i64                 ; 3 uses
  %wide.trip.count1253.i = zext nneg i32 %i.dkh to i64
  %i.eej = and i32 %i.dkj, 127
  %i.eek = zext nneg i32 %i.eej to i64            ; 4 uses
  %i.eel = shl nuw nsw i64 %i.eek, 2              ; 2 uses
  %i.eem = add i64 %i.eel, %i.djc
  %i.een = add i64 %i.eem, 4
  %i.eeo = sub i64 %i.een, %i.diz                 ; 2 uses
  %i.eep = ashr exact i64 %sext.i71, 31
  %i.eeq = ashr exact i64 %sext.i71, 31
  %i.eer = ashr exact i64 %sext.i71, 31
  %i.ees = sub nsw i64 %i.eef, %i.eer
  %i.eet = ashr exact i64 %sext.i71, 31
  %i.eeu = sext i32 %i.edx to i64                 ; 2 uses
  %i.eev = ashr exact i64 %sext.i71, 31
  %i.eew = shl nuw nsw i64 %i.eek, 1              ; 2 uses
  %i.eex = add i64 %i.eew, %i.djc
  %i.eey = add i64 %i.eex, 2
  %i.eez = sub i64 %i.eey, %i.diz                 ; 2 uses
  %i.efa = sub i64 %i.djc, %i.diz                 ; 2 uses
  %i.efb = add i64 %i.djc, -2
  %i.efc = sub i64 %i.efb, %i.diz                 ; 2 uses
  %i.efd = sub i64 %i.efc, %i.eew                 ; 2 uses
  %i.efe = add i64 %i.djc, -4
  %i.eff = add i64 %i.eel, %i.diz
  %i.efg = sub i64 %i.efe, %i.eff                 ; 2 uses
  %invariant.op1896 = add i64 %i.efg, -1
  %invariant.op1898 = add i64 %i.efd, -1
  %invariant.op1900 = add i64 %i.efa, -1
  %invariant.op1902 = add i64 %i.eez, -1
  %invariant.op1904 = add i64 %i.eeo, -1
  br label %bb.jq

bb.jq:                                            ; preds = %bb.jr, %.lr.ph1213.i
  %indvars.iv1250.i = phi i64 [ 0, %.lr.ph1213.i ], [ %indvars.iv.next1251.i, %bb.jr ] ; 8 uses
  %.33351211.i = phi ptr [ %i.djb, %.lr.ph1213.i ], [ %i.fnd, %bb.jr ] ; 4 uses
  %i.efh = mul i64 %i.eef, %indvars.iv1250.i      ; 6 uses
  %i.efi = add i64 %i.eeo, %i.efh                 ; 4 uses
  %i.efj = trunc i64 %indvars.iv1250.i to i32     ; 2 uses
  %smax1489 = call i32 @llvm.smax.i32(i32 %i.efj, i32 2)
  %i.efk = zext nneg i32 %smax1489 to i64
  %i.efl = add nsw i64 %i.efk, -2
  %i.efm = mul i64 %i.eep, %i.efl                 ; 5 uses
  %smax1490 = call i32 @llvm.smax.i32(i32 %i.efj, i32 1)
  %i.efn = zext nneg i32 %smax1490 to i64
  %i.efo = add nsw i64 %i.efn, -1
  %i.efp = mul i64 %i.eeq, %i.efo                 ; 5 uses
  %i.efq = mul i64 %i.ees, %indvars.iv1250.i      ; 5 uses
  %i.efr = add nuw i64 %indvars.iv1250.i, 1
  %smin1491 = call i64 @llvm.smin.i64(i64 %i.efr, i64 %i.eeu) ; 2 uses
  %i.efs = mul i64 %i.eet, %smin1491              ; 4 uses
  %i.eft = shl i64 %indvars.iv1250.i, 32
  %sext1784 = add i64 %i.eft, 8589934592
  %i.efu = ashr exact i64 %sext1784, 32
  %smin1492 = call i64 @llvm.smin.i64(i64 %i.efu, i64 %i.eeu) ; 2 uses
  %i.efv = mul i64 %i.eev, %smin1492              ; 4 uses
  %i.efw = add i64 %i.eez, %i.efh                 ; 4 uses
  %i.efx = add i64 %i.efa, %i.efh                 ; 4 uses
  %i.efy = add i64 %i.efd, %i.efh                 ; 2 uses
  %i.efz = add i64 %i.efc, %i.efh                 ; 2 uses
  %i.ega = mul i64 %i.edw, %smin1491
  %i.egb = add i64 %i.ega, %i.eek
  %i.egc = shl i64 %i.egb, 1
  %i.egd = mul i64 %i.edw, %smin1492
  %i.ege = add i64 %i.egd, %i.eek
  %i.egf = shl i64 %i.ege, 1
  %i.egg = add i64 %i.efg, %i.efh                 ; 4 uses
  %i.egh = trunc i64 %indvars.iv1250.i to i32     ; 3 uses
  %i.egi = call i32 @llvm.smax.i32(i32 %i.egh, i32 2)
  %.sroa.speculated1028.i = add nsw i32 %i.egi, -2
  %i.egj = zext nneg i32 %.sroa.speculated1028.i to i64
  %i.egk = mul nsw i64 %i.edw, %i.egj
  %i.egl = getelementptr inbounds nuw [2 x i8], ptr %i.diy, i64 %i.egk ; 7 uses
  %i.egm = call i32 @llvm.smax.i32(i32 %i.egh, i32 1)
  %.sroa.speculated1023.i = add nsw i32 %i.egm, -1
end_hunk_1
begin_hunk_2_@_ZN2cv12cpu_baseline10medianBlurERKNS_3MatERS1_i:bb.a
  %i.fls = call i32 @llvm.umin.i32(i32 %i.fkz, i32 %i.flm)
  %i.flt = call i32 @llvm.umax.i32(i32 %i.fkz, i32 %i.flm)
  %i.flu = call i32 @llvm.umin.i32(i32 %i.fla, i32 %i.fln)
  %i.flv = call i32 @llvm.umax.i32(i32 %i.fla, i32 %i.fln)
  %i.flw = call i32 @llvm.umin.i32(i32 %i.flb, i32 %i.flo)
  %i.flx = call i32 @llvm.umax.i32(i32 %i.flb, i32 %i.flo)
  %i.fly = call i32 @llvm.umin.i32(i32 %i.flc, i32 %i.flp)
  %i.flz = call i32 @llvm.umax.i32(i32 %i.flc, i32 %i.flp)
  %i.fma = call i32 @llvm.umin.i32(i32 %i.fld, i32 %i.flh)
  %i.fmb = call i32 @llvm.umax.i32(i32 %i.fld, i32 %i.flh)
  %i.fmc = call i32 @llvm.umax.i32(i32 %i.fko, i32 %i.fhc)
  %i.fmd = call i32 @llvm.umin.i32(i32 %i.flx, i32 %i.fih)
  %i.fme = call i32 @llvm.umax.i32(i32 %i.fmc, i32 %i.fmd)
  %i.fmf = call i32 @llvm.umax.i32(i32 %i.flt, i32 %i.fid)
  %i.fmg = call i32 @llvm.umin.i32(i32 %i.fmb, i32 %i.fmf)
  %i.fmh = call i32 @llvm.umin.i32(i32 %i.fmg, i32 %i.fme)
  %i.fmi = call i32 @llvm.umax.i32(i32 %i.flr, i32 %i.fib)
  %i.fmj = call i32 @llvm.umin.i32(i32 %i.flz, i32 %i.fij)
  %i.fmk = call i32 @llvm.umin.i32(i32 %i.fmi, i32 %i.fmj)
  %i.fml = call i32 @llvm.umin.i32(i32 %i.flv, i32 %i.fif)
  %i.fmm = call i32 @llvm.umax.i32(i32 %i.fmk, i32 %i.fml)
  %i.fmn = call i32 @llvm.umax.i32(i32 %i.fmh, i32 %i.fmm)
  %i.fmo = call i32 @llvm.umax.i32(i32 %i.flq, i32 %i.fia)
  %i.fmp = call i32 @llvm.umin.i32(i32 %i.fly, i32 %i.fii)
  %i.fmq = call i32 @llvm.umax.i32(i32 %i.fmo, i32 %i.fmp)
  %i.fmr = call i32 @llvm.umax.i32(i32 %i.flu, i32 %i.fie)
  %i.fms = call i32 @llvm.umin.i32(i32 %i.fmr, i32 %i.fmq)
  %i.fmt = call i32 @llvm.umax.i32(i32 %i.fls, i32 %i.fic)
  %i.fmu = call i32 @llvm.umin.i32(i32 %i.fma, i32 %i.fhr)
  %i.fmv = call i32 @llvm.umin.i32(i32 %i.fmt, i32 %i.fmu)
  %i.fmw = call i32 @llvm.umin.i32(i32 %i.flw, i32 %i.fig)
  %i.fmx = call i32 @llvm.umax.i32(i32 %i.fmv, i32 %i.fmw)
  %i.fmy = call i32 @llvm.umin.i32(i32 %i.fms, i32 %i.fmx)
  %i.fmz = call i32 @llvm.umax.i32(i32 %i.fmn, i32 %i.fmy)
  %i.fna = getelementptr inbounds [2 x i8], ptr %.33351211.i, i64 %indvars.iv1247.i
  %i.fnb = trunc nuw i32 %i.fmz to i16
  store i16 %i.fnb, ptr %i.fna, align 2, !tbaa !123
  %indvars.iv.next1248.i = add nsw i64 %indvars.iv1247.i, 1 ; 3 uses
  %i.fnc = icmp slt i64 %indvars.iv.next1248.i, %i.eei
  br i1 %i.fnc, label %.lr.ph1208.i, label %.loopexit1203.loopexit.i, !llvm.loop !59

bb.jr:                                            ; preds = %._crit_edge.i76
  %i.fnd = getelementptr inbounds i8, ptr %.33351211.i, i64 %i.eef
  %exitcond1254.not.i = icmp eq i64 %indvars.iv.next1251.i, %wide.trip.count1253.i
  br i1 %exitcond1254.not.i, label %.loopexit.i69, label %bb.jq, !llvm.loop !60

.loopexit.i69:                                    ; preds = %bb.jr, %.loopexit1778, %bb.jm, %.loopexit, %bb.jp, %bb.jo, %bb.jk, %bb.ji, %bb.jg
  %i.fne = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.fnf = load i32, ptr %i.fne, align 8, !tbaa !30
  %.not.i.i70 = icmp eq i32 %i.fnf, 0
  br i1 %.not.i.i70, label %_ZN2cv12cpu_baseline12_GLOBAL__N_118medianBlur_SortNetINS1_9MinMax16uES3_EEvRKNS_3MatERS4_i.exit, label %bb.js

bb.js:                                            ; preds = %.loopexit.i69
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %24)
          to label %_ZN2cv12cpu_baseline12_GLOBAL__N_118medianBlur_SortNetINS1_9MinMax16uES3_EEvRKNS_3MatERS4_i.exit unwind label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.fng = landingpad { ptr, i32 }
          catch ptr null
  %i.fnh = extractvalue { ptr, i32 } %i.fng, 0
  call void @__clang_call_terminate(ptr %i.fnh) #16
  unreachable

_ZN2cv12cpu_baseline12_GLOBAL__N_118medianBlur_SortNetINS1_9MinMax16uES3_EEvRKNS_3MatERS4_i.exit: ; preds = %.loopexit.i69, %bb.js
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #13
  br label %bb.qc

bb.ju:                                            ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #13
  invoke void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %21, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baseline12_GLOBAL__N_118medianBlur_SortNetINS1_9MinMax16sES3_EEvRKNS_3MatERS4_iE25__cv_trace_location_fn626)
          to label %.noexc267 unwind label %bb.ny

.noexc267:                                        ; preds = %bb.ju
  %i.fni = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.fnj = load ptr, ptr %i.fni, align 8, !tbaa !119 ; 11 uses
  %i.fnk = ptrtoaddr ptr %i.fnj to i64            ; 9 uses
  %i.fnl = getelementptr inbounds nuw i8, ptr %29, i64 128
  %i.fnm = load ptr, ptr %i.i, align 8, !tbaa !119 ; 5 uses
  %i.fnn = ptrtoaddr ptr %i.fnm to i64            ; 11 uses
  %i.fno = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.fnp = load i64, ptr %i.fnl, align 8, !tbaa !21
  %i.fnq = lshr i64 %i.fnp, 1                     ; 3 uses
  %i.fnr = trunc i64 %i.fnq to i32                ; 4 uses
  %i.fns = load i64, ptr %i.fno, align 8, !tbaa !21
  %i.fnt = lshr i64 %i.fns, 1                     ; 3 uses
  %i.fnu = trunc i64 %i.fnt to i32                ; 2 uses
  %i.fnv = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.fnw = load i32, ptr %i.fnv, align 8, !tbaa !22 ; 6 uses
  %i.fnx = icmp slt i32 %i.fnw, 3
  br i1 %i.fnx, label %bb.jy, label %bb.jv

bb.jv:                                            ; preds = %.noexc267
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %.noexc.i138 unwind label %bb.ke

.noexc.i138:                                      ; preds = %bb.jv
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.17, i32 noundef 109) #14
          to label %bb.jw unwind label %bb.jx

bb.jw:                                            ; preds = %.noexc.i138
  unreachable

bb.jx:                                            ; preds = %.noexc.i138
  %i.fny = landingpad { ptr, i32 }
          cleanup
  %i.fnz = load ptr, ptr %19, align 8, !tbaa !25  ; 2 uses
  %i.foa = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.fob = icmp eq ptr %i.fnz, %i.foa
  br i1 %i.fob, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i139: ; preds = %bb.jx
  %i.foc = load i64, ptr %i.foa, align 8, !tbaa !26
  %i.fod = add i64 %i.foc, 1
  call void @_ZdlPvm(ptr noundef %i.fnz, i64 noundef %i.fod) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i140: ; preds = %bb.jx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  br label %.body.i136

bb.jy:                                            ; preds = %.noexc267
  %i.foe = icmp sgt i32 %i.fnw, 0
  br i1 %i.foe, label %bb.jz, label %bb.ka

bb.jz:                                            ; preds = %bb.jy
  %i.fof = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.fog = icmp eq i32 %i.fnw, 2
  %i.foh = zext i1 %i.fog to i64
  %i.foi = getelementptr inbounds nuw [4 x i8], ptr %i.fof, i64 %i.foh
  %i.foj = load i32, ptr %i.foi, align 4, !tbaa !27
  br label %bb.kb

bb.ka:                                            ; preds = %bb.jy
  %i.fok = icmp eq i32 %i.fnw, 0
  %i.fol = zext i1 %i.fok to i32
  br label %bb.kb

bb.kb:                                            ; preds = %bb.ka, %bb.jz
  %i.fom = phi i32 [ %i.foj, %bb.jz ], [ %i.fol, %bb.ka ] ; 6 uses
  %i.fon = icmp eq i32 %i.fnw, 2
  %i.foo = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.fop = load i32, ptr %i.foo, align 4
  %i.foq = icmp sgt i32 %i.fnw, -1
  %i.for = zext i1 %i.foq to i32
  %i.fos = select i1 %i.fon, i32 %i.fop, i32 %i.for ; 10 uses
  %i.fot = load i32, ptr %29, align 8, !tbaa !16
  %i.fou = lshr i32 %i.fot, 5                     ; 3 uses
  %i.fov = and i32 %i.fou, 127                    ; 5 uses
  %i.fow = add nuw nsw i32 %i.fov, 1              ; 18 uses
  switch i32 %2, label %.loopexit.i143 [
    i32 3, label %bb.kc
    i32 5, label %bb.ki
  ]

bb.kc:                                            ; preds = %bb.kb
  %i.fox = icmp eq i32 %i.fom, 1
  %i.foy = icmp eq i32 %i.fos, 1                  ; 4 uses
  %or.cond.i215 = or i1 %i.fox, %i.foy
  br i1 %or.cond.i215, label %bb.kd, label %bb.kf

bb.kd:                                            ; preds = %bb.kc
  %i.foz = add nsw i32 %i.fos, %i.fom             ; 2 uses
  %i.fpa = select i1 %i.foy, i32 %i.fow, i32 %i.fnr ; 2 uses
  %i.fpb = icmp sgt i32 %i.foz, 1
  br i1 %i.fpb, label %.preheader.lr.ph.i254, label %.loopexit.i143

.preheader.lr.ph.i254:                            ; preds = %bb.kd
  %i.fpc = select i1 %i.foy, i32 %i.fow, i32 %i.fnu
  %i.fpd = sub nsw i32 %i.fnr, %i.fow
  %i.fpe = sub nsw i32 0, %i.fpa
  %i.fpf = add nsw i32 %i.foz, -2                 ; 2 uses
  %narrow1196.i255 = select i1 %i.foy, i32 0, i32 %i.fpd
  %i.fpg = sext i32 %narrow1196.i255 to i64
  %i.fph = sext i32 %i.fpc to i64                 ; 2 uses
  %wide.trip.count1277.i256 = zext nneg i32 %i.fow to i64 ; 3 uses
  %i.fpi = shl nsw i64 %i.fph, 1
  %min.iters.check1415 = icmp samesign ult i32 %i.fov, 7
  %n.vec1423 = and i64 %wide.trip.count1277.i256, 248 ; 4 uses
  %i.fpj = shl nuw nsw i64 %n.vec1423, 1
  %cmp.n1432 = icmp eq i64 %n.vec1423, %wide.trip.count1277.i256
  br label %.preheader.i257

.preheader.i257:                                  ; preds = %.loopexit1779, %.preheader.lr.ph.i254
  %indvar1411 = phi i64 [ %indvar.next1412, %.loopexit1779 ], [ 0, %.preheader.lr.ph.i254 ] ; 2 uses
  %.01235.i258 = phi ptr [ %i.fra, %.loopexit1779 ], [ %i.fnj, %.preheader.lr.ph.i254 ] ; 5 uses
  %.03321234.i259 = phi ptr [ %i.frb, %.loopexit1779 ], [ %i.fnm, %.preheader.lr.ph.i254 ] ; 3 uses
  %.03361233.i260 = phi i32 [ %i.fqz, %.loopexit1779 ], [ 0, %.preheader.lr.ph.i254 ] ; 4 uses
  %.not362.i261 = icmp eq i32 %.03361233.i260, 0
  %i.fpk = select i1 %.not362.i261, i32 0, i32 %i.fpe
  %i.fpl = sext i32 %i.fpk to i64                 ; 3 uses
  %i.fpm = icmp slt i32 %.03361233.i260, %i.fpf
  %i.fpn = select i1 %i.fpm, i32 %i.fpa, i32 0
  %i.fpo = sext i32 %i.fpn to i64                 ; 3 uses
  br i1 %min.iters.check1415, label %scalar.ph1414.preheader, label %vector.memcheck1416

vector.memcheck1416:                              ; preds = %.preheader.i257
  %.01235.i2581413 = ptrtoaddr ptr %.01235.i258 to i64
  %i.fpp = mul nsw i64 %indvar1411, %i.fpi
  %i.fpq = add i64 %i.fpp, %i.fnn
  %i.fpr = shl nsw i64 %i.fpo, 1
  %i.fps = sub i64 %i.fpq, %.01235.i2581413       ; 3 uses
  %i.fpt = sub i64 %i.fpr, %i.fps
  %diff.check1417 = icmp ugt i64 %i.fpt, -16
  %i.fpu = add i64 %i.fps, -1
  %diff.check1418 = icmp ult i64 %i.fpu, 15
  %conflict.rdx1419 = or i1 %diff.check1417, %diff.check1418
  %i.fpv = shl nsw i64 %i.fpl, 1
  %i.fpw = sub i64 %i.fpv, %i.fps
  %diff.check1420 = icmp ugt i64 %i.fpw, -16
  %conflict.rdx1421 = or i1 %conflict.rdx1419, %diff.check1420
  br i1 %conflict.rdx1421, label %scalar.ph1414.preheader, label %vector.ph1422

vector.ph1422:                                    ; preds = %vector.memcheck1416
  %i.fpx = getelementptr i8, ptr %.01235.i258, i64 %i.fpj ; 2 uses
  br label %vector.body1424

vector.body1424:                                  ; preds = %vector.body1424, %vector.ph1422
  %index1425 = phi i64 [ 0, %vector.ph1422 ], [ %index.next1430, %vector.body1424 ] ; 3 uses
  %i.fpy = shl i64 %index1425, 1
  %next.gep1426 = getelementptr i8, ptr %.01235.i258, i64 %i.fpy ; 3 uses
  %i.fpz = getelementptr inbounds [2 x i8], ptr %next.gep1426, i64 %i.fpl
  %wide.load1427 = load <8 x i16>, ptr %i.fpz, align 2, !tbaa !123
  %i.fqa = sext <8 x i16> %wide.load1427 to <8 x i32> ; 2 uses
  %wide.load1428 = load <8 x i16>, ptr %next.gep1426, align 2, !tbaa !123
  %i.fqb = sext <8 x i16> %wide.load1428 to <8 x i32> ; 2 uses
  %i.fqc = getelementptr inbounds [2 x i8], ptr %next.gep1426, i64 %i.fpo
  %wide.load1429 = load <8 x i16>, ptr %i.fqc, align 2, !tbaa !123
  %i.fqd = sext <8 x i16> %wide.load1429 to <8 x i32>
  %i.fqe = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.fqb, <8 x i32> %i.fqa)
  %i.fqf = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fqb, <8 x i32> %i.fqa)
  %i.fqg = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.fqd, <8 x i32> %i.fqf)
  %i.fqh = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fqg, <8 x i32> %i.fqe)
  %i.fqi = trunc nsw <8 x i32> %i.fqh to <8 x i16>
  %i.fqj = getelementptr inbounds nuw [2 x i8], ptr %.03321234.i259, i64 %index1425
  store <8 x i16> %i.fqi, ptr %i.fqj, align 2, !tbaa !123
  %index.next1430 = add nuw i64 %index1425, 8     ; 2 uses
  %i.fqk = icmp eq i64 %index.next1430, %n.vec1423
  br i1 %i.fqk, label %middle.block1431, label %vector.body1424, !llvm.loop !61

middle.block1431:                                 ; preds = %vector.body1424
  br i1 %cmp.n1432, label %.loopexit1779, label %scalar.ph1414.preheader

scalar.ph1414.preheader:                          ; preds = %vector.memcheck1416, %.preheader.i257, %middle.block1431
  %indvars.iv1274.i262.ph = phi i64 [ 0, %vector.memcheck1416 ], [ 0, %.preheader.i257 ], [ %n.vec1423, %middle.block1431 ]
  %.11232.i263.ph = phi ptr [ %.01235.i258, %vector.memcheck1416 ], [ %.01235.i258, %.preheader.i257 ], [ %i.fpx, %middle.block1431 ]
  br label %scalar.ph1414

scalar.ph1414:                                    ; preds = %scalar.ph1414.preheader, %scalar.ph1414
  %indvars.iv1274.i262 = phi i64 [ %indvars.iv.next1275.i264, %scalar.ph1414 ], [ %indvars.iv1274.i262.ph, %scalar.ph1414.preheader ] ; 2 uses
  %.11232.i263 = phi ptr [ %i.fqx, %scalar.ph1414 ], [ %.11232.i263.ph, %scalar.ph1414.preheader ] ; 4 uses
  %i.fql = getelementptr inbounds [2 x i8], ptr %.11232.i263, i64 %i.fpl
  %i.fqm = load i16, ptr %i.fql, align 2, !tbaa !123
  %i.fqn = sext i16 %i.fqm to i32                 ; 2 uses
  %i.fqo = load i16, ptr %.11232.i263, align 2, !tbaa !123
  %i.fqp = sext i16 %i.fqo to i32                 ; 2 uses
  %i.fqq = getelementptr inbounds [2 x i8], ptr %.11232.i263, i64 %i.fpo
  %i.fqr = load i16, ptr %i.fqq, align 2, !tbaa !123
  %i.fqs = sext i16 %i.fqr to i32
  %i.fqt = call i32 @llvm.smin.i32(i32 %i.fqp, i32 %i.fqn)
  %.sroa.speculated.i.i = call i32 @llvm.smax.i32(i32 %i.fqp, i32 %i.fqn)
  %i.fqu = call i32 @llvm.smin.i32(i32 %i.fqs, i32 %.sroa.speculated.i.i)
  %.sroa.speculated.i397.i = call i32 @llvm.smax.i32(i32 %i.fqu, i32 %i.fqt)
  %i.fqv = trunc nsw i32 %.sroa.speculated.i397.i to i16
  %i.fqw = getelementptr inbounds nuw [2 x i8], ptr %.03321234.i259, i64 %indvars.iv1274.i262
  store i16 %i.fqv, ptr %i.fqw, align 2, !tbaa !123
  %indvars.iv.next1275.i264 = add nuw nsw i64 %indvars.iv1274.i262, 1 ; 2 uses
  %i.fqx = getelementptr inbounds nuw i8, ptr %.11232.i263, i64 2 ; 2 uses
  %exitcond1278.not.i265 = icmp eq i64 %indvars.iv.next1275.i264, %wide.trip.count1277.i256
  br i1 %exitcond1278.not.i265, label %.loopexit1779, label %scalar.ph1414, !llvm.loop !62

bb.ke:                                            ; preds = %bb.jv
  %i.fqy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i136

.body.i136:                                       ; preds = %bb.ke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i140
  %eh.lpad-body.i137 = phi { ptr, i32 } [ %i.fqy, %bb.ke ], [ %i.fny, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i140 ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %21) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  br label %.body

.loopexit1779:                                    ; preds = %scalar.ph1414, %middle.block1431
  %.lcssa901 = phi ptr [ %i.fpx, %middle.block1431 ], [ %i.fqx, %scalar.ph1414 ]
  %i.fqz = add nuw nsw i32 %.03361233.i260, 1
  %i.fra = getelementptr inbounds [2 x i8], ptr %.lcssa901, i64 %i.fpg
  %i.frb = getelementptr inbounds [2 x i8], ptr %.03321234.i259, i64 %i.fph
  %exitcond1279.not.i266 = icmp eq i32 %.03361233.i260, %i.fpf
  %indvar.next1412 = add i64 %indvar1411, 1
  br i1 %exitcond1279.not.i266, label %.loopexit.i143, label %.preheader.i257, !llvm.loop !63

bb.kf:                                            ; preds = %bb.kc
  %i.frc = mul i32 %i.fow, %i.fom                 ; 3 uses
  %i.frd = icmp sgt i32 %i.fos, 0
  br i1 %i.frd, label %.lr.ph1230.i216, label %.loopexit.i143

.lr.ph1230.i216:                                  ; preds = %bb.kf
  %sext359.i217 = shl i64 %i.fnq, 32              ; 4 uses
  %i.fre = ashr exact i64 %sext359.i217, 32       ; 4 uses
  %i.frf = add nsw i32 %i.fos, -1                 ; 2 uses
  %i.frg = sub i32 %i.frc, %i.fow                 ; 2 uses
  %i.frh = zext nneg i32 %i.fow to i64            ; 9 uses
  %i.fri = sub nsw i64 0, %i.frh                  ; 6 uses
  %sext360.i218 = shl i64 %i.fnt, 32
  %i.frj = ashr exact i64 %sext360.i218, 31       ; 3 uses
  %i.frk = zext nneg i32 %i.fov to i64
  %i.frl = sext i32 %i.frg to i64                 ; 3 uses
  %wide.trip.count1272.i219 = zext nneg i32 %i.fos to i64
  %i.frm = and i32 %i.fou, 127
  %i.frn = zext nneg i32 %i.frm to i64            ; 2 uses
  %i.fro = shl nuw nsw i64 %i.frn, 1              ; 2 uses
  %i.frp = add i64 %i.fro, %i.fnn
  %i.frq = add i64 %i.frp, 2
  %i.frr = sub i64 %i.frq, %i.fnk                 ; 2 uses
  %i.frs = ashr exact i64 %sext359.i217, 31
  %i.frt = sub i64 %i.fnn, %i.fnk                 ; 2 uses
  %i.fru = add i64 %i.fnn, -2
  %i.frv = add i64 %i.fro, %i.fnk
  %i.frw = sub i64 %i.fru, %i.frv                 ; 2 uses
  %i.frx = ashr exact i64 %sext359.i217, 31
  %i.fry = sub nsw i64 %i.frj, %i.frx
  %i.frz = ashr exact i64 %sext359.i217, 31
  %i.fsa = sext i32 %i.frf to i64
  %i.fsb = add i64 %i.fnn, -2
  %invariant.op1890 = add i64 %i.frw, -1
  %invariant.op1892 = add i64 %i.frt, -1
  %invariant.op1894 = add i64 %i.frr, -1
  br label %bb.kg

bb.kg:                                            ; preds = %bb.kh, %.lr.ph1230.i216
  %indvars.iv1269.i220 = phi i64 [ 0, %.lr.ph1230.i216 ], [ %indvars.iv.next1270.i223, %bb.kh ] ; 7 uses
  %.13331228.i221 = phi ptr [ %i.fnm, %.lr.ph1230.i216 ], [ %i.fza, %bb.kh ] ; 4 uses
  %i.fsc = mul i64 %i.frj, %indvars.iv1269.i220   ; 4 uses
  %i.fsd = add i64 %i.frr, %i.fsc                 ; 2 uses
  %i.fse = trunc i64 %indvars.iv1269.i220 to i32
  %smax1363 = call i32 @llvm.smax.i32(i32 %i.fse, i32 1)
  %i.fsf = zext nneg i32 %smax1363 to i64
  %i.fsg = add nsw i64 %i.fsf, -1
  %i.fsh = mul i64 %i.frs, %i.fsg                 ; 3 uses
  %i.fsi = add i64 %i.frt, %i.fsc                 ; 2 uses
  %i.fsj = add i64 %i.frw, %i.fsc
  %i.fsk = mul i64 %i.fry, %indvars.iv1269.i220   ; 3 uses
  %i.fsl = add nuw i64 %indvars.iv1269.i220, 1
  %smin1364 = call i64 @llvm.smin.i64(i64 %i.fsl, i64 %i.fsa) ; 2 uses
  %i.fsm = mul i64 %i.frz, %smin1364              ; 2 uses
  %i.fsn = mul i64 %i.fre, %smin1364
  %i.fso = add i64 %i.fsn, %i.frn
  %i.fsp = shl i64 %i.fso, 1
  %i.fsq = add i64 %i.fsb, %i.fsc
  %i.fsr = add i64 %i.fsp, %i.fnk
  %i.fss = trunc nuw nsw i64 %indvars.iv1269.i220 to i32
  %i.fst = call i32 @llvm.smax.i32(i32 %i.fss, i32 1)
  %.sroa.speculated1179.i222 = add nsw i32 %i.fst, -1
  %i.fsu = zext nneg i32 %.sroa.speculated1179.i222 to i64
  %i.fsv = mul nsw i64 %i.fre, %i.fsu
  %i.fsw = getelementptr inbounds nuw [2 x i8], ptr %i.fnj, i64 %i.fsv ; 5 uses
  %i.fsx = mul nsw i64 %indvars.iv1269.i220, %i.fre
  %i.fsy = getelementptr inbounds nuw [2 x i8], ptr %i.fnj, i64 %i.fsx ; 5 uses
  %indvars.iv.next1270.i223 = add nuw nsw i64 %indvars.iv1269.i220, 1 ; 3 uses
  %i.fsz = trunc nuw nsw i64 %indvars.iv.next1270.i223 to i32
  %.sroa.speculated1174.i224 = call i32 @llvm.smin.i32(i32 %i.frf, i32 %i.fsz)
  %i.fta = sext i32 %.sroa.speculated1174.i224 to i64
  %i.ftb = mul nsw i64 %i.fre, %i.fta
  %i.ftc = getelementptr inbounds nuw [2 x i8], ptr %i.fnj, i64 %i.ftb ; 5 uses
  %i.ftd = sub i64 %i.fsr, %i.fsq
  %diff.check1368 = icmp ugt i64 %i.ftd, -16
  %i.fte = sub i64 %i.fsm, %i.fsi
  %diff.check1369 = icmp ugt i64 %i.fte, -16
  %conflict.rdx1370 = or i1 %diff.check1368, %diff.check1369
  %i.ftf = sub i64 %i.fsm, %i.fsd
  %diff.check1371 = icmp ugt i64 %i.ftf, -16
  %conflict.rdx1372 = or i1 %conflict.rdx1370, %diff.check1371
  %.reass1891 = add i64 %i.fsk, %invariant.op1890
  %diff.check1373 = icmp ult i64 %.reass1891, 15
  %conflict.rdx1374 = or i1 %conflict.rdx1372, %diff.check1373
  %.reass1893 = add i64 %i.fsk, %invariant.op1892
  %diff.check1375 = icmp ult i64 %.reass1893, 15
  %conflict.rdx1376 = or i1 %conflict.rdx1374, %diff.check1375
  %.reass1895 = add i64 %i.fsk, %invariant.op1894
  %diff.check1377 = icmp ult i64 %.reass1895, 15
  %conflict.rdx1378 = or i1 %conflict.rdx1376, %diff.check1377
  %i.ftg = sub i64 %i.fsh, %i.fsj
  %diff.check1379 = icmp ugt i64 %i.ftg, -16
  %conflict.rdx1380 = or i1 %conflict.rdx1378, %diff.check1379
  %i.fth = sub i64 %i.fsh, %i.fsi
  %diff.check1381 = icmp ugt i64 %i.fth, -16
  %conflict.rdx1382 = or i1 %conflict.rdx1380, %diff.check1381
  %i.fti = sub i64 %i.fsh, %i.fsd
  %diff.check1383 = icmp ugt i64 %i.fti, -16
  %conflict.rdx1384 = or i1 %conflict.rdx1382, %diff.check1383
  br label %.loopexit1198.i230

.loopexit1198.loopexit.i245:                      ; preds = %.lr.ph1225.i233, %middle.block1399
  %indvars.iv.next1267.i244.lcssa = phi i64 [ %i.fvp, %middle.block1399 ], [ %indvars.iv.next1267.i244, %.lr.ph1225.i233 ]
  %i.ftj = trunc nsw i64 %indvars.iv.next1267.i244.lcssa to i32
  br label %.loopexit1198.i230.backedge

.loopexit1198.i230:                               ; preds = %.loopexit1198.i230.backedge, %bb.kg
  %.1343.i225 = phi i32 [ 0, %bb.kg ], [ %.1343.i225.be, %.loopexit1198.i230.backedge ] ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN2cv12cpu_baseline10medianBlurERKNS_3MatERS1_i:bb.a
  br label %vector.body1387

vector.body1387:                                  ; preds = %vector.body1387, %vector.ph1385
  %index1388 = phi i64 [ 0, %vector.ph1385 ], [ %index.next1398, %vector.body1387 ] ; 2 uses
  %i.fvq = add i64 %index1388, %i.fvl             ; 4 uses
  %i.fvr = getelementptr inbounds [2 x i8], ptr %i.fsw, i64 %i.fvq ; 3 uses
  %i.fvs = getelementptr inbounds [2 x i8], ptr %i.fvr, i64 %i.fri
  %wide.load1389 = load <8 x i16>, ptr %i.fvs, align 2, !tbaa !123
  %i.fvt = sext <8 x i16> %wide.load1389 to <8 x i32> ; 2 uses
  %wide.load1390 = load <8 x i16>, ptr %i.fvr, align 2, !tbaa !123
  %i.fvu = sext <8 x i16> %wide.load1390 to <8 x i32> ; 2 uses
  %i.fvv = getelementptr inbounds nuw [2 x i8], ptr %i.fvr, i64 %i.frh
  %wide.load1391 = load <8 x i16>, ptr %i.fvv, align 2, !tbaa !123
  %i.fvw = sext <8 x i16> %wide.load1391 to <8 x i32> ; 2 uses
  %i.fvx = getelementptr inbounds [2 x i8], ptr %i.fsy, i64 %i.fvq ; 3 uses
  %i.fvy = getelementptr inbounds [2 x i8], ptr %i.fvx, i64 %i.fri
  %wide.load1392 = load <8 x i16>, ptr %i.fvy, align 2, !tbaa !123
  %i.fvz = sext <8 x i16> %wide.load1392 to <8 x i32> ; 2 uses
  %wide.load1393 = load <8 x i16>, ptr %i.fvx, align 2, !tbaa !123
  %i.fwa = sext <8 x i16> %wide.load1393 to <8 x i32> ; 2 uses
  %i.fwb = getelementptr inbounds nuw [2 x i8], ptr %i.fvx, i64 %i.frh
  %wide.load1394 = load <8 x i16>, ptr %i.fwb, align 2, !tbaa !123
  %i.fwc = sext <8 x i16> %wide.load1394 to <8 x i32> ; 2 uses
  %i.fwd = getelementptr inbounds [2 x i8], ptr %i.ftc, i64 %i.fvq ; 3 uses
  %i.fwe = getelementptr inbounds [2 x i8], ptr %i.fwd, i64 %i.fri
  %wide.load1395 = load <8 x i16>, ptr %i.fwe, align 2, !tbaa !123
  %i.fwf = sext <8 x i16> %wide.load1395 to <8 x i32> ; 2 uses
  %wide.load1396 = load <8 x i16>, ptr %i.fwd, align 2, !tbaa !123
  %i.fwg = sext <8 x i16> %wide.load1396 to <8 x i32> ; 2 uses
  %i.fwh = getelementptr inbounds nuw [2 x i8], ptr %i.fwd, i64 %i.frh
  %wide.load1397 = load <8 x i16>, ptr %i.fwh, align 2, !tbaa !123
  %i.fwi = sext <8 x i16> %wide.load1397 to <8 x i32> ; 2 uses
  %i.fwj = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.fvw, <8 x i32> %i.fvu) ; 2 uses
  %i.fwk = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fvw, <8 x i32> %i.fvu) ; 2 uses
  %i.fwl = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.fwc, <8 x i32> %i.fwa) ; 2 uses
  %i.fwm = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fwc, <8 x i32> %i.fwa) ; 2 uses
  %i.fwn = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.fwi, <8 x i32> %i.fwg) ; 2 uses
  %i.fwo = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fwi, <8 x i32> %i.fwg) ; 2 uses
  %i.fwp = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.fwj, <8 x i32> %i.fvt)
  %i.fwq = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fwj, <8 x i32> %i.fvt) ; 2 uses
  %i.fwr = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.fwl, <8 x i32> %i.fvz)
  %i.fws = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fwl, <8 x i32> %i.fvz) ; 2 uses
  %i.fwt = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.fwn, <8 x i32> %i.fwf)
  %i.fwu = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fwn, <8 x i32> %i.fwf) ; 2 uses
  %i.fwv = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.fwk, <8 x i32> %i.fwq)
  %i.fww = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fwk, <8 x i32> %i.fwq)
  %i.fwx = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.fwm, <8 x i32> %i.fws) ; 2 uses
  %i.fwy = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fwm, <8 x i32> %i.fws)
  %i.fwz = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.fwo, <8 x i32> %i.fwu) ; 2 uses
  %i.fxa = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fwo, <8 x i32> %i.fwu)
  %i.fxb = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fwr, <8 x i32> %i.fwp)
  %i.fxc = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.fxa, <8 x i32> %i.fwy)
  %i.fxd = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.fwz, <8 x i32> %i.fwx)
  %i.fxe = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fwz, <8 x i32> %i.fwx)
  %i.fxf = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fwt, <8 x i32> %i.fxb)
  %i.fxg = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fxd, <8 x i32> %i.fwv)
  %i.fxh = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.fxc, <8 x i32> %i.fww) ; 2 uses
  %i.fxi = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.fxe, <8 x i32> %i.fxg) ; 2 uses
  %i.fxj = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.fxh, <8 x i32> %i.fxi)
  %i.fxk = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fxh, <8 x i32> %i.fxi)
  %i.fxl = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fxj, <8 x i32> %i.fxf)
  %i.fxm = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.fxk, <8 x i32> %i.fxl)
  %i.fxn = getelementptr inbounds [2 x i8], ptr %.13331228.i221, i64 %i.fvq
  %i.fxo = trunc nsw <8 x i32> %i.fxm to <8 x i16>
  store <8 x i16> %i.fxo, ptr %i.fxn, align 2, !tbaa !123
  %index.next1398 = add nuw i64 %index1388, 8     ; 2 uses
  %i.fxp = icmp eq i64 %index.next1398, %n.vec1386
  br i1 %i.fxp, label %middle.block1399, label %vector.body1387, !llvm.loop !66

middle.block1399:                                 ; preds = %vector.body1387
  %cmp.n1400 = icmp eq i64 %i.fvo, %n.vec1386
  br i1 %cmp.n1400, label %.loopexit1198.loopexit.i245, label %.lr.ph1225.i233.preheader

.lr.ph1225.i233.preheader:                        ; preds = %.lr.ph1225.preheader.i232, %middle.block1399
  %indvars.iv1266.i234.ph = phi i64 [ %i.fvp, %middle.block1399 ], [ %i.fvl, %.lr.ph1225.preheader.i232 ]
  br label %.lr.ph1225.i233

.lr.ph1225.i233:                                  ; preds = %.lr.ph1225.i233.preheader, %.lr.ph1225.i233
  %indvars.iv1266.i234 = phi i64 [ %indvars.iv.next1267.i244, %.lr.ph1225.i233 ], [ %indvars.iv1266.i234.ph, %.lr.ph1225.i233.preheader ] ; 5 uses
  %i.fxq = getelementptr inbounds [2 x i8], ptr %i.fsw, i64 %indvars.iv1266.i234 ; 3 uses
  %i.fxr = getelementptr inbounds [2 x i8], ptr %i.fxq, i64 %i.fri
  %.val370.i235 = load i16, ptr %i.fxr, align 2, !tbaa !123
  %i.fxs = sext i16 %.val370.i235 to i32          ; 2 uses
  %.val369.i236 = load i16, ptr %i.fxq, align 2, !tbaa !123
  %i.fxt = sext i16 %.val369.i236 to i32          ; 2 uses
  %i.fxu = getelementptr inbounds nuw [2 x i8], ptr %i.fxq, i64 %i.frh
  %.val368.i237 = load i16, ptr %i.fxu, align 2, !tbaa !123
  %i.fxv = sext i16 %.val368.i237 to i32          ; 2 uses
  %i.fxw = getelementptr inbounds [2 x i8], ptr %i.fsy, i64 %indvars.iv1266.i234 ; 3 uses
  %i.fxx = getelementptr inbounds [2 x i8], ptr %i.fxw, i64 %i.fri
  %.val367.i238 = load i16, ptr %i.fxx, align 2, !tbaa !123
  %i.fxy = sext i16 %.val367.i238 to i32          ; 2 uses
  %.val366.i239 = load i16, ptr %i.fxw, align 2, !tbaa !123
  %i.fxz = sext i16 %.val366.i239 to i32          ; 2 uses
  %i.fya = getelementptr inbounds nuw [2 x i8], ptr %i.fxw, i64 %i.frh
  %.val365.i240 = load i16, ptr %i.fya, align 2, !tbaa !123
  %i.fyb = sext i16 %.val365.i240 to i32          ; 2 uses
  %i.fyc = getelementptr inbounds [2 x i8], ptr %i.ftc, i64 %indvars.iv1266.i234 ; 3 uses
  %i.fyd = getelementptr inbounds [2 x i8], ptr %i.fyc, i64 %i.fri
  %.val364.i241 = load i16, ptr %i.fyd, align 2, !tbaa !123
  %i.fye = sext i16 %.val364.i241 to i32          ; 2 uses
  %.val363.i242 = load i16, ptr %i.fyc, align 2, !tbaa !123
  %i.fyf = sext i16 %.val363.i242 to i32          ; 2 uses
  %i.fyg = getelementptr inbounds nuw [2 x i8], ptr %i.fyc, i64 %i.frh
  %.val.i243 = load i16, ptr %i.fyg, align 2, !tbaa !123
  %i.fyh = sext i16 %.val.i243 to i32             ; 2 uses
  %i.fyi = call i32 @llvm.smin.i32(i32 %i.fxv, i32 %i.fxt) ; 2 uses
  %.sroa.speculated.i418.i = call i32 @llvm.smax.i32(i32 %i.fxv, i32 %i.fxt) ; 2 uses
  %i.fyj = call i32 @llvm.smin.i32(i32 %i.fyb, i32 %i.fxz) ; 2 uses
  %.sroa.speculated.i419.i = call i32 @llvm.smax.i32(i32 %i.fyb, i32 %i.fxz) ; 2 uses
  %i.fyk = call i32 @llvm.smin.i32(i32 %i.fyh, i32 %i.fyf) ; 2 uses
  %.sroa.speculated.i420.i = call i32 @llvm.smax.i32(i32 %i.fyh, i32 %i.fyf) ; 2 uses
  %i.fyl = call i32 @llvm.smin.i32(i32 %i.fyi, i32 %i.fxs)
  %.sroa.speculated.i421.i = call i32 @llvm.smax.i32(i32 %i.fyi, i32 %i.fxs) ; 2 uses
  %i.fym = call i32 @llvm.smin.i32(i32 %i.fyj, i32 %i.fxy)
  %.sroa.speculated.i422.i = call i32 @llvm.smax.i32(i32 %i.fyj, i32 %i.fxy) ; 2 uses
  %i.fyn = call i32 @llvm.smin.i32(i32 %i.fyk, i32 %i.fye)
  %.sroa.speculated.i423.i = call i32 @llvm.smax.i32(i32 %i.fyk, i32 %i.fye) ; 2 uses
  %i.fyo = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i418.i, i32 %.sroa.speculated.i421.i)
  %.sroa.speculated.i424.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i418.i, i32 %.sroa.speculated.i421.i)
  %i.fyp = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i419.i, i32 %.sroa.speculated.i422.i) ; 2 uses
  %.sroa.speculated.i425.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i419.i, i32 %.sroa.speculated.i422.i)
  %i.fyq = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i420.i, i32 %.sroa.speculated.i423.i) ; 2 uses
  %.sroa.speculated.i426.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i420.i, i32 %.sroa.speculated.i423.i)
  %.sroa.speculated.i427.i = call i32 @llvm.smax.i32(i32 %i.fym, i32 %i.fyl)
  %i.fyr = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i426.i, i32 %.sroa.speculated.i425.i)
  %i.fys = call i32 @llvm.smin.i32(i32 %i.fyq, i32 %i.fyp)
  %.sroa.speculated.i429.i = call i32 @llvm.smax.i32(i32 %i.fyq, i32 %i.fyp)
  %.sroa.speculated.i430.i = call i32 @llvm.smax.i32(i32 %i.fyn, i32 %.sroa.speculated.i427.i)
  %.sroa.speculated.i431.i = call i32 @llvm.smax.i32(i32 %i.fys, i32 %i.fyo)
  %i.fyt = call i32 @llvm.smin.i32(i32 %i.fyr, i32 %.sroa.speculated.i424.i) ; 2 uses
  %i.fyu = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i429.i, i32 %.sroa.speculated.i431.i) ; 2 uses
  %i.fyv = call i32 @llvm.smin.i32(i32 %i.fyt, i32 %i.fyu)
  %.sroa.speculated.i434.i = call i32 @llvm.smax.i32(i32 %i.fyt, i32 %i.fyu)
  %.sroa.speculated.i435.i = call i32 @llvm.smax.i32(i32 %i.fyv, i32 %.sroa.speculated.i430.i)
  %i.fyw = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i434.i, i32 %.sroa.speculated.i435.i)
  %i.fyx = getelementptr inbounds [2 x i8], ptr %.13331228.i221, i64 %indvars.iv1266.i234
  %i.fyy = trunc nsw i32 %i.fyw to i16
  store i16 %i.fyy, ptr %i.fyx, align 2, !tbaa !123
  %indvars.iv.next1267.i244 = add nsw i64 %indvars.iv1266.i234, 1 ; 3 uses
  %i.fyz = icmp slt i64 %indvars.iv.next1267.i244, %i.frl
  br i1 %i.fyz, label %.lr.ph1225.i233, label %.loopexit1198.loopexit.i245, !llvm.loop !67

bb.kh:                                            ; preds = %._crit_edge1222.i227
  %i.fza = getelementptr inbounds i8, ptr %.13331228.i221, i64 %i.frj
  %exitcond1273.not.i246 = icmp eq i64 %indvars.iv.next1270.i223, %wide.trip.count1272.i219
  br i1 %exitcond1273.not.i246, label %.loopexit.i143, label %bb.kg, !llvm.loop !68

bb.ki:                                            ; preds = %bb.kb
  %i.fzb = icmp eq i32 %i.fom, 1
  %i.fzc = icmp eq i32 %i.fos, 1                  ; 4 uses
  %or.cond5.i142 = or i1 %i.fzb, %i.fzc
  br i1 %or.cond5.i142, label %bb.kj, label %bb.kk

bb.kj:                                            ; preds = %bb.ki
  %i.fzd = add nsw i32 %i.fos, %i.fom             ; 3 uses
  %i.fze = select i1 %i.fzc, i32 %i.fow, i32 %i.fnr ; 3 uses
  %i.fzf = icmp sgt i32 %i.fzd, 1
  br i1 %i.fzf, label %.preheader1200.lr.ph.i202, label %.loopexit.i143

.preheader1200.lr.ph.i202:                        ; preds = %bb.kj
  %i.fzg = select i1 %i.fzc, i32 %i.fow, i32 %i.fnu
  %i.fzh = sub nsw i32 %i.fnr, %i.fow
  %i.fzi = sub nsw i32 0, %i.fze                  ; 2 uses
  %i.fzj = shl nsw i32 %i.fzi, 1
  %i.fzk = add nsw i32 %i.fzd, -2                 ; 2 uses
  %i.fzl = add nsw i32 %i.fzd, -3
  %i.fzm = shl nsw i32 %i.fze, 1
  %narrow.i203 = select i1 %i.fzc, i32 0, i32 %i.fzh
  %i.fzn = sext i32 %narrow.i203 to i64
  %i.fzo = sext i32 %i.fzg to i64                 ; 2 uses
  %wide.trip.count1258.i204 = zext nneg i32 %i.fow to i64 ; 3 uses
  %i.fzp = shl nsw i64 %i.fzo, 1
  %min.iters.check1317 = icmp samesign ult i32 %i.fov, 7
  %n.vec1329 = and i64 %wide.trip.count1258.i204, 248 ; 4 uses
  %i.fzq = shl nuw nsw i64 %n.vec1329, 1
  %cmp.n1340 = icmp eq i64 %n.vec1329, %wide.trip.count1258.i204
  br label %.preheader1200.i205

.preheader1200.i205:                              ; preds = %.loopexit1780, %.preheader1200.lr.ph.i202
  %indvar1313 = phi i64 [ %indvar.next1314, %.loopexit1780 ], [ 0, %.preheader1200.lr.ph.i202 ] ; 2 uses
  %.21218.i206 = phi ptr [ %i.gcm, %.loopexit1780 ], [ %i.fnj, %.preheader1200.lr.ph.i202 ] ; 5 uses
  %.23341217.i207 = phi ptr [ %i.gcn, %.loopexit1780 ], [ %i.fnm, %.preheader1200.lr.ph.i202 ] ; 3 uses
  %.23381216.i208 = phi i32 [ %i.gcl, %.loopexit1780 ], [ 0, %.preheader1200.lr.ph.i202 ] ; 6 uses
  %.not358.i209 = icmp eq i32 %.23381216.i208, 0
  %i.fzr = select i1 %.not358.i209, i32 0, i32 %i.fzi ; 2 uses
  %i.fzs = icmp samesign ugt i32 %.23381216.i208, 1
  %i.fzt = select i1 %i.fzs, i32 %i.fzj, i32 %i.fzr
  %i.fzu = icmp slt i32 %.23381216.i208, %i.fzk
  %i.fzv = select i1 %i.fzu, i32 %i.fze, i32 0    ; 2 uses
  %i.fzw = icmp slt i32 %.23381216.i208, %i.fzl
  %i.fzx = select i1 %i.fzw, i32 %i.fzm, i32 %i.fzv
  %i.fzy = sext i32 %i.fzt to i64                 ; 3 uses
  %i.fzz = sext i32 %i.fzr to i64                 ; 3 uses
  %i.gaa = sext i32 %i.fzv to i64                 ; 3 uses
  %i.gab = sext i32 %i.fzx to i64                 ; 3 uses
  br i1 %min.iters.check1317, label %scalar.ph1316.preheader, label %vector.memcheck1318

vector.memcheck1318:                              ; preds = %.preheader1200.i205
  %.21218.i2061315 = ptrtoaddr ptr %.21218.i206 to i64
  %i.gac = mul nsw i64 %indvar1313, %i.fzp
  %i.gad = add i64 %i.gac, %i.fnn
  %i.gae = shl nsw i64 %i.gab, 1
  %i.gaf = sub i64 %i.gad, %.21218.i2061315       ; 5 uses
  %i.gag = sub i64 %i.gae, %i.gaf
  %diff.check1319 = icmp ugt i64 %i.gag, -16
  %i.gah = shl nsw i64 %i.gaa, 1
  %i.gai = sub i64 %i.gah, %i.gaf
  %diff.check1320 = icmp ugt i64 %i.gai, -16
  %conflict.rdx1321 = or i1 %diff.check1319, %diff.check1320
  %i.gaj = add i64 %i.gaf, -1
  %diff.check1322 = icmp ult i64 %i.gaj, 15
  %conflict.rdx1323 = or i1 %conflict.rdx1321, %diff.check1322
  %i.gak = shl nsw i64 %i.fzz, 1
  %i.gal = sub i64 %i.gak, %i.gaf
  %diff.check1324 = icmp ugt i64 %i.gal, -16
  %conflict.rdx1325 = or i1 %conflict.rdx1323, %diff.check1324
  %i.gam = shl nsw i64 %i.fzy, 1
  %i.gan = sub i64 %i.gam, %i.gaf
  %diff.check1326 = icmp ugt i64 %i.gan, -16
  %conflict.rdx1327 = or i1 %conflict.rdx1325, %diff.check1326
  br i1 %conflict.rdx1327, label %scalar.ph1316.preheader, label %vector.ph1328

vector.ph1328:                                    ; preds = %vector.memcheck1318
  %i.gao = getelementptr i8, ptr %.21218.i206, i64 %i.fzq ; 2 uses
  br label %vector.body1330

vector.body1330:                                  ; preds = %vector.body1330, %vector.ph1328
  %index1331 = phi i64 [ 0, %vector.ph1328 ], [ %index.next1338, %vector.body1330 ] ; 3 uses
  %i.gap = shl i64 %index1331, 1
  %next.gep1332 = getelementptr i8, ptr %.21218.i206, i64 %i.gap ; 5 uses
  %i.gaq = getelementptr inbounds [2 x i8], ptr %next.gep1332, i64 %i.fzy
  %wide.load1333 = load <8 x i16>, ptr %i.gaq, align 2, !tbaa !123
  %i.gar = sext <8 x i16> %wide.load1333 to <8 x i32> ; 2 uses
  %i.gas = getelementptr inbounds [2 x i8], ptr %next.gep1332, i64 %i.fzz
  %wide.load1334 = load <8 x i16>, ptr %i.gas, align 2, !tbaa !123
  %i.gat = sext <8 x i16> %wide.load1334 to <8 x i32> ; 2 uses
  %wide.load1335 = load <8 x i16>, ptr %next.gep1332, align 2, !tbaa !123
  %i.gau = sext <8 x i16> %wide.load1335 to <8 x i32> ; 2 uses
  %i.gav = getelementptr inbounds [2 x i8], ptr %next.gep1332, i64 %i.gaa
  %wide.load1336 = load <8 x i16>, ptr %i.gav, align 2, !tbaa !123
  %i.gaw = sext <8 x i16> %wide.load1336 to <8 x i32> ; 2 uses
  %i.gax = getelementptr inbounds [2 x i8], ptr %next.gep1332, i64 %i.gab
  %wide.load1337 = load <8 x i16>, ptr %i.gax, align 2, !tbaa !123
  %i.gay = sext <8 x i16> %wide.load1337 to <8 x i32> ; 2 uses
  %i.gaz = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.gat, <8 x i32> %i.gar)
  %i.gba = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gat, <8 x i32> %i.gar)
  %i.gbb = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.gay, <8 x i32> %i.gaw) ; 2 uses
  %i.gbc = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gay, <8 x i32> %i.gaw) ; 2 uses
  %i.gbd = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.gbb, <8 x i32> %i.gau)
  %i.gbe = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gbb, <8 x i32> %i.gau) ; 2 uses
  %i.gbf = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.gbc, <8 x i32> %i.gbe)
  %i.gbg = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gbc, <8 x i32> %i.gbe)
  %i.gbh = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gbd, <8 x i32> %i.gaz)
  %i.gbi = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.gbg, <8 x i32> %i.gbh)
  %i.gbj = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.gbf, <8 x i32> %i.gba)
  %i.gbk = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gbi, <8 x i32> %i.gbj)
  %i.gbl = trunc nsw <8 x i32> %i.gbk to <8 x i16>
  %i.gbm = getelementptr inbounds nuw [2 x i8], ptr %.23341217.i207, i64 %index1331
  store <8 x i16> %i.gbl, ptr %i.gbm, align 2, !tbaa !123
  %index.next1338 = add nuw i64 %index1331, 8     ; 2 uses
  %i.gbn = icmp eq i64 %index.next1338, %n.vec1329
  br i1 %i.gbn, label %middle.block1339, label %vector.body1330, !llvm.loop !69

middle.block1339:                                 ; preds = %vector.body1330
  br i1 %cmp.n1340, label %.loopexit1780, label %scalar.ph1316.preheader

scalar.ph1316.preheader:                          ; preds = %vector.memcheck1318, %.preheader1200.i205, %middle.block1339
  %indvars.iv1255.i210.ph = phi i64 [ 0, %vector.memcheck1318 ], [ 0, %.preheader1200.i205 ], [ %n.vec1329, %middle.block1339 ]
  %.31215.i211.ph = phi ptr [ %.21218.i206, %vector.memcheck1318 ], [ %.21218.i206, %.preheader1200.i205 ], [ %i.gao, %middle.block1339 ]
  br label %scalar.ph1316

scalar.ph1316:                                    ; preds = %scalar.ph1316.preheader, %scalar.ph1316
  %indvars.iv1255.i210 = phi i64 [ %indvars.iv.next1256.i212, %scalar.ph1316 ], [ %indvars.iv1255.i210.ph, %scalar.ph1316.preheader ] ; 2 uses
  %.31215.i211 = phi ptr [ %i.gck, %scalar.ph1316 ], [ %.31215.i211.ph, %scalar.ph1316.preheader ] ; 6 uses
  %i.gbo = getelementptr inbounds [2 x i8], ptr %.31215.i211, i64 %i.fzy
  %i.gbp = load i16, ptr %i.gbo, align 2, !tbaa !123
  %i.gbq = sext i16 %i.gbp to i32                 ; 2 uses
  %i.gbr = getelementptr inbounds [2 x i8], ptr %.31215.i211, i64 %i.fzz
  %i.gbs = load i16, ptr %i.gbr, align 2, !tbaa !123
  %i.gbt = sext i16 %i.gbs to i32                 ; 2 uses
  %i.gbu = load i16, ptr %.31215.i211, align 2, !tbaa !123
  %i.gbv = sext i16 %i.gbu to i32                 ; 2 uses
  %i.gbw = getelementptr inbounds [2 x i8], ptr %.31215.i211, i64 %i.gaa
  %i.gbx = load i16, ptr %i.gbw, align 2, !tbaa !123
  %i.gby = sext i16 %i.gbx to i32                 ; 2 uses
  %i.gbz = getelementptr inbounds [2 x i8], ptr %.31215.i211, i64 %i.gab
  %i.gca = load i16, ptr %i.gbz, align 2, !tbaa !123
  %i.gcb = sext i16 %i.gca to i32                 ; 2 uses
  %i.gcc = call i32 @llvm.smin.i32(i32 %i.gbt, i32 %i.gbq)
  %.sroa.speculated.i437.i = call i32 @llvm.smax.i32(i32 %i.gbt, i32 %i.gbq)
  %i.gcd = call i32 @llvm.smin.i32(i32 %i.gcb, i32 %i.gby) ; 2 uses
  %.sroa.speculated.i438.i = call i32 @llvm.smax.i32(i32 %i.gcb, i32 %i.gby) ; 2 uses
  %i.gce = call i32 @llvm.smin.i32(i32 %i.gcd, i32 %i.gbv)
  %.sroa.speculated.i439.i = call i32 @llvm.smax.i32(i32 %i.gcd, i32 %i.gbv) ; 2 uses
  %i.gcf = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i438.i, i32 %.sroa.speculated.i439.i)
  %.sroa.speculated.i440.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i438.i, i32 %.sroa.speculated.i439.i)
  %.sroa.speculated.i441.i = call i32 @llvm.smax.i32(i32 %i.gce, i32 %i.gcc)
  %i.gcg = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i440.i, i32 %.sroa.speculated.i441.i)
  %i.gch = call i32 @llvm.smin.i32(i32 %i.gcf, i32 %.sroa.speculated.i437.i)
  %.sroa.speculated.i444.i = call i32 @llvm.smax.i32(i32 %i.gcg, i32 %i.gch)
  %i.gci = trunc nsw i32 %.sroa.speculated.i444.i to i16
  %i.gcj = getelementptr inbounds nuw [2 x i8], ptr %.23341217.i207, i64 %indvars.iv1255.i210
  store i16 %i.gci, ptr %i.gcj, align 2, !tbaa !123
  %indvars.iv.next1256.i212 = add nuw nsw i64 %indvars.iv1255.i210, 1 ; 2 uses
  %i.gck = getelementptr inbounds nuw i8, ptr %.31215.i211, i64 2 ; 2 uses
  %exitcond1259.not.i213 = icmp eq i64 %indvars.iv.next1256.i212, %wide.trip.count1258.i204
  br i1 %exitcond1259.not.i213, label %.loopexit1780, label %scalar.ph1316, !llvm.loop !70

.loopexit1780:                                    ; preds = %scalar.ph1316, %middle.block1339
  %.lcssa902 = phi ptr [ %i.gao, %middle.block1339 ], [ %i.gck, %scalar.ph1316 ]
  %i.gcl = add nuw nsw i32 %.23381216.i208, 1
  %i.gcm = getelementptr inbounds [2 x i8], ptr %.lcssa902, i64 %i.fzn
  %i.gcn = getelementptr inbounds [2 x i8], ptr %.23341217.i207, i64 %i.fzo
  %exitcond1260.not.i214 = icmp eq i32 %.23381216.i208, %i.fzk
  %indvar.next1314 = add i64 %indvar1313, 1
  br i1 %exitcond1260.not.i214, label %.loopexit.i143, label %.preheader1200.i205, !llvm.loop !71

bb.kk:                                            ; preds = %bb.ki
  %i.gco = mul i32 %i.fow, %i.fom                 ; 4 uses
  %i.gcp = icmp sgt i32 %i.fos, 0
  br i1 %i.gcp, label %.lr.ph1213.i145, label %.loopexit.i143

.lr.ph1213.i145:                                  ; preds = %bb.kk
  %sext.i146 = shl i64 %i.fnq, 32                 ; 6 uses
  %i.gcq = ashr exact i64 %sext.i146, 32          ; 7 uses
  %i.gcr = add nsw i32 %i.fos, -1                 ; 3 uses
  %i.gcs = shl nuw nsw i32 %i.fow, 1              ; 5 uses
  %i.gct = sub nsw i32 %i.gco, %i.fow
  %i.gcu = sub i32 %i.gco, %i.gcs                 ; 2 uses
  %i.gcv = zext nneg i32 %i.gcs to i64            ; 12 uses
  %i.gcw = sub nsw i64 0, %i.gcv                  ; 10 uses
  %i.gcx = zext nneg i32 %i.fow to i64            ; 11 uses
  %i.gcy = sub nsw i64 0, %i.gcx                  ; 10 uses
  %sext356.i147 = shl i64 %i.fnt, 32
  %i.gcz = ashr exact i64 %sext356.i147, 31       ; 3 uses
  %i.gda = zext nneg i32 %i.fov to i64
  %i.gdb = sext i32 %i.gct to i64
  %i.gdc = sext i32 %i.gcu to i64                 ; 3 uses
  %wide.trip.count1253.i148 = zext nneg i32 %i.fos to i64
  %i.gdd = and i32 %i.fou, 127
  %i.gde = zext nneg i32 %i.gdd to i64            ; 4 uses
  %i.gdf = shl nuw nsw i64 %i.gde, 2              ; 2 uses
  %i.gdg = add i64 %i.gdf, %i.fnn
  %i.gdh = add i64 %i.gdg, 4
  %i.gdi = sub i64 %i.gdh, %i.fnk                 ; 2 uses
  %i.gdj = ashr exact i64 %sext.i146, 31
  %i.gdk = ashr exact i64 %sext.i146, 31
  %i.gdl = ashr exact i64 %sext.i146, 31
  %i.gdm = sub nsw i64 %i.gcz, %i.gdl
  %i.gdn = ashr exact i64 %sext.i146, 31
  %i.gdo = sext i32 %i.gcr to i64                 ; 2 uses
  %i.gdp = ashr exact i64 %sext.i146, 31
  %i.gdq = shl nuw nsw i64 %i.gde, 1              ; 2 uses
  %i.gdr = add i64 %i.gdq, %i.fnn
  %i.gds = add i64 %i.gdr, 2
  %i.gdt = sub i64 %i.gds, %i.fnk                 ; 2 uses
  %i.gdu = sub i64 %i.fnn, %i.fnk                 ; 2 uses
  %i.gdv = add i64 %i.fnn, -2
  %i.gdw = sub i64 %i.gdv, %i.fnk                 ; 2 uses
  %i.gdx = sub i64 %i.gdw, %i.gdq                 ; 2 uses
  %i.gdy = add i64 %i.fnn, -4
  %i.gdz = add i64 %i.gdf, %i.fnk
  %i.gea = sub i64 %i.gdy, %i.gdz                 ; 2 uses
  %invariant.op1880 = add i64 %i.gea, -1
  %invariant.op1882 = add i64 %i.gdx, -1
  %invariant.op1884 = add i64 %i.gdu, -1
  %invariant.op1886 = add i64 %i.gdt, -1
  %invariant.op1888 = add i64 %i.gdi, -1
  br label %bb.kl

bb.kl:                                            ; preds = %bb.km, %.lr.ph1213.i145
  %indvars.iv1250.i149 = phi i64 [ 0, %.lr.ph1213.i145 ], [ %indvars.iv.next1251.i153, %bb.km ] ; 8 uses
  %.33351211.i150 = phi ptr [ %i.fnm, %.lr.ph1213.i145 ], [ %i.hed, %bb.km ] ; 4 uses
  %i.geb = mul i64 %i.gcz, %indvars.iv1250.i149   ; 6 uses
  %i.gec = add i64 %i.gdi, %i.geb                 ; 4 uses
  %i.ged = trunc i64 %indvars.iv1250.i149 to i32  ; 2 uses
  %smax1211 = call i32 @llvm.smax.i32(i32 %i.ged, i32 2)
  %i.gee = zext nneg i32 %smax1211 to i64
  %i.gef = add nsw i64 %i.gee, -2
  %i.geg = mul i64 %i.gdj, %i.gef                 ; 5 uses
  %smax1212 = call i32 @llvm.smax.i32(i32 %i.ged, i32 1)
  %i.geh = zext nneg i32 %smax1212 to i64
  %i.gei = add nsw i64 %i.geh, -1
  %i.gej = mul i64 %i.gdk, %i.gei                 ; 5 uses
  %i.gek = mul i64 %i.gdm, %indvars.iv1250.i149   ; 5 uses
  %i.gel = add nuw i64 %indvars.iv1250.i149, 1
  %smin1213 = call i64 @llvm.smin.i64(i64 %i.gel, i64 %i.gdo) ; 2 uses
  %i.gem = mul i64 %i.gdn, %smin1213              ; 4 uses
  %i.gen = shl i64 %indvars.iv1250.i149, 32
  %sext1783 = add i64 %i.gen, 8589934592
  %i.geo = ashr exact i64 %sext1783, 32
  %smin1214 = call i64 @llvm.smin.i64(i64 %i.geo, i64 %i.gdo) ; 2 uses
  %i.gep = mul i64 %i.gdp, %smin1214              ; 4 uses
  %i.geq = add i64 %i.gdt, %i.geb                 ; 4 uses
  %i.ger = add i64 %i.gdu, %i.geb                 ; 4 uses
  %i.ges = add i64 %i.gdx, %i.geb                 ; 2 uses
  %i.get = add i64 %i.gdw, %i.geb                 ; 2 uses
  %i.geu = mul i64 %i.gcq, %smin1213
  %i.gev = add i64 %i.geu, %i.gde
  %i.gew = shl i64 %i.gev, 1
end_hunk_3
