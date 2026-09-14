Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx512vnni?download=true
inline.NumInlined: 75
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 99
begin_hunk_0_@_ZN4ncnn45convolution_im2col_input_tile_int8_avx512vnniERKNS_3MatERS0_iiiiiiiiii:bb.a
  %i.acu = shl nsw i64 %i.act, 3
  %i.acv = getelementptr inbounds i8, ptr %i.acs, i64 %i.acu ; 2 uses
  br i1 %i.acm, label %.lr.ph303.i.i.epil.preheader, label %.lr.ph303.i.i

.lr.ph303.i.i:                                    ; preds = %.lr.ph303.preheader.i.i, %.lr.ph303.i.i
  %.0503301.i.i = phi ptr [ %i.aeb, %.lr.ph303.i.i ], [ %i.acv, %.lr.ph303.preheader.i.i ] ; 2 uses
  %.29300.i.i = phi ptr [ %i.aea, %.lr.ph303.i.i ], [ %.28318.i.i, %.lr.ph303.preheader.i.i ] ; 5 uses
  %niter716 = phi i32 [ %niter716.next.3, %.lr.ph303.i.i ], [ 0, %.lr.ph303.preheader.i.i ]
  %i.acw = load i64, ptr %.0503301.i.i, align 1, !tbaa !30
  %i.acx = insertelement <2 x i64> poison, i64 %i.acw, i64 0
  %i.acy = bitcast <2 x i64> %i.acx to <16 x i8>
  %i.acz = add <16 x i8> %i.acy, <i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.ada = bitcast <16 x i8> %i.acz to <2 x i64>
  %i.adb = extractelement <2 x i64> %i.ada, i64 0
  store i64 %i.adb, ptr %.29300.i.i, align 1, !tbaa !30
  %i.adc = getelementptr inbounds nuw i8, ptr %.29300.i.i, i64 8
  %i.add = getelementptr inbounds nuw i8, ptr %.0503301.i.i, i64 %i.acc ; 2 uses
  %i.ade = load i64, ptr %i.add, align 1, !tbaa !30
  %i.adf = insertelement <2 x i64> poison, i64 %i.ade, i64 0
  %i.adg = bitcast <2 x i64> %i.adf to <16 x i8>
  %i.adh = add <16 x i8> %i.adg, <i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.adi = bitcast <16 x i8> %i.adh to <2 x i64>
  %i.adj = extractelement <2 x i64> %i.adi, i64 0
  store i64 %i.adj, ptr %i.adc, align 1, !tbaa !30
  %i.adk = getelementptr inbounds nuw i8, ptr %.29300.i.i, i64 16
  %i.adl = getelementptr inbounds nuw i8, ptr %i.add, i64 %i.acc ; 2 uses
  %i.adm = load i64, ptr %i.adl, align 1, !tbaa !30
  %i.adn = insertelement <2 x i64> poison, i64 %i.adm, i64 0
  %i.ado = bitcast <2 x i64> %i.adn to <16 x i8>
  %i.adp = add <16 x i8> %i.ado, <i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.adq = bitcast <16 x i8> %i.adp to <2 x i64>
  %i.adr = extractelement <2 x i64> %i.adq, i64 0
  store i64 %i.adr, ptr %i.adk, align 1, !tbaa !30
  %i.ads = getelementptr inbounds nuw i8, ptr %.29300.i.i, i64 24
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adl, i64 %i.acc ; 2 uses
  %i.adu = load i64, ptr %i.adt, align 1, !tbaa !30
  %i.adv = insertelement <2 x i64> poison, i64 %i.adu, i64 0
  %i.adw = bitcast <2 x i64> %i.adv to <16 x i8>
  %i.adx = add <16 x i8> %i.adw, <i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.ady = bitcast <16 x i8> %i.adx to <2 x i64>
  %i.adz = extractelement <2 x i64> %i.ady, i64 0
  store i64 %i.adz, ptr %i.ads, align 1, !tbaa !30
  %i.aea = getelementptr inbounds nuw i8, ptr %.29300.i.i, i64 32 ; 3 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adt, i64 %i.acc ; 2 uses
  %niter716.next.3 = add i32 %niter716, 4         ; 2 uses
  %niter716.ncmp.3 = icmp eq i32 %niter716.next.3, %unroll_iter715
  br i1 %niter716.ncmp.3, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph303.i.i, !llvm.loop !490

_ZN4ncnn3MatD2Ev.exit.i.i:                        ; preds = %bb.d
  %i.aec = load ptr, ptr %0, align 8, !tbaa !28, !noalias !548
  %i.aed = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !548
  %i.aee = mul i64 %i.aed, %i.acd
  %i.aef = load i64, ptr %i.abz, align 8, !tbaa !29, !noalias !548
  %i.aeg = mul i64 %i.aee, %i.aef
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aec, i64 %i.aeg
  %i.aei = getelementptr i8, ptr %i.aeh, i64 %indvars.iv379.i.i
  %i.aej = getelementptr i8, ptr %i.aei, i64 %i.ack ; 2 uses
  br i1 %i.ace, label %.lr.ph308.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph308.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i
  %.31.lcssa.i.i = phi ptr [ %.28318.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i ], [ %i.afg, %.lr.ph308.i.i ] ; 3 uses
  %.0500.lcssa.i.i = phi ptr [ %i.aej, %_ZN4ncnn3MatD2Ev.exit.i.i ], [ %i.afh, %.lr.ph308.i.i ] ; 2 uses
  %.0.lcssa.i.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit.i.i ], [ %i.aci, %.lr.ph308.i.i ] ; 5 uses
  %i.aek = icmp slt i32 %.0.lcssa.i.i, %5
  br i1 %i.aek, label %.lr.ph315.i.i.preheader, label %.loopexit.i.i

.lr.ph315.i.i.preheader:                          ; preds = %.preheader.i.i
  %i.ael = sub i32 %5, %.0.lcssa.i.i
  %xtraiter707 = and i32 %i.ael, 7                ; 2 uses
  %lcmp.mod708.not = icmp eq i32 %xtraiter707, 0
  br i1 %lcmp.mod708.not, label %.lr.ph315.i.i.prol.loopexit, label %.lr.ph315.i.i.prol

.lr.ph315.i.i.prol:                               ; preds = %.lr.ph315.i.i.preheader, %.lr.ph315.i.i.prol
  %.1314.i.i.prol = phi i32 [ %i.aep, %.lr.ph315.i.i.prol ], [ %.0.lcssa.i.i, %.lr.ph315.i.i.preheader ]
  %.1501313.i.i.prol = phi ptr [ %i.aeo, %.lr.ph315.i.i.prol ], [ %.0500.lcssa.i.i, %.lr.ph315.i.i.preheader ] ; 2 uses
  %.32312.i.i.prol = phi ptr [ %i.aen, %.lr.ph315.i.i.prol ], [ %.31.lcssa.i.i, %.lr.ph315.i.i.preheader ] ; 2 uses
  %prol.iter709 = phi i32 [ %prol.iter709.next, %.lr.ph315.i.i.prol ], [ 0, %.lr.ph315.i.i.preheader ]
  %i.aem = load i8, ptr %.1501313.i.i.prol, align 1, !tbaa !30
  store i8 %i.aem, ptr %.32312.i.i.prol, align 1, !tbaa !30
  %i.aen = getelementptr inbounds nuw i8, ptr %.32312.i.i.prol, i64 1 ; 3 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %.1501313.i.i.prol, i64 %i.l ; 2 uses
  %i.aep = add nuw nsw i32 %.1314.i.i.prol, 1     ; 2 uses
  %prol.iter709.next = add i32 %prol.iter709, 1   ; 2 uses
  %prol.iter709.cmp.not = icmp eq i32 %prol.iter709.next, %xtraiter707
  br i1 %prol.iter709.cmp.not, label %.lr.ph315.i.i.prol.loopexit, label %.lr.ph315.i.i.prol, !llvm.loop !493

.lr.ph315.i.i.prol.loopexit:                      ; preds = %.lr.ph315.i.i.prol, %.lr.ph315.i.i.preheader
  %.lcssa582.unr = phi ptr [ poison, %.lr.ph315.i.i.preheader ], [ %i.aen, %.lr.ph315.i.i.prol ]
  %.1314.i.i.unr = phi i32 [ %.0.lcssa.i.i, %.lr.ph315.i.i.preheader ], [ %i.aep, %.lr.ph315.i.i.prol ]
  %.1501313.i.i.unr = phi ptr [ %.0500.lcssa.i.i, %.lr.ph315.i.i.preheader ], [ %i.aeo, %.lr.ph315.i.i.prol ]
  %.32312.i.i.unr = phi ptr [ %.31.lcssa.i.i, %.lr.ph315.i.i.preheader ], [ %i.aen, %.lr.ph315.i.i.prol ]
  %i.aeq = sub i32 %.0.lcssa.i.i, %5
  %i.aer = icmp ugt i32 %i.aeq, -8
  br i1 %i.aer, label %.loopexit.i.i, label %.lr.ph315.i.i

.lr.ph308.i.i:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i, %.lr.ph308.i.i
  %.0307.i.i = phi i32 [ %i.afi, %.lr.ph308.i.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit.i.i ]
  %.0500306.i.i = phi ptr [ %i.afh, %.lr.ph308.i.i ], [ %i.aej, %_ZN4ncnn3MatD2Ev.exit.i.i ] ; 5 uses
  %.31305.i.i = phi ptr [ %i.afg, %.lr.ph308.i.i ], [ %.28318.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i ] ; 5 uses
  %i.aes = load i8, ptr %.0500306.i.i, align 1, !tbaa !30
  %i.aet = add i8 %i.aes, 127
  store i8 %i.aet, ptr %.31305.i.i, align 1, !tbaa !30
  %i.aeu = getelementptr inbounds nuw i8, ptr %.0500306.i.i, i64 %i.l
  %i.aev = load i8, ptr %i.aeu, align 1, !tbaa !30
  %i.aew = add i8 %i.aev, 127
  %i.aex = getelementptr inbounds nuw i8, ptr %.31305.i.i, i64 1
  store i8 %i.aew, ptr %i.aex, align 1, !tbaa !30
  %i.aey = getelementptr inbounds nuw i8, ptr %.0500306.i.i, i64 %i.acf
  %i.aez = load i8, ptr %i.aey, align 1, !tbaa !30
  %i.afa = add i8 %i.aez, 127
  %i.afb = getelementptr inbounds nuw i8, ptr %.31305.i.i, i64 2
  store i8 %i.afa, ptr %i.afb, align 1, !tbaa !30
  %i.afc = getelementptr inbounds nuw i8, ptr %.0500306.i.i, i64 %i.acg
  %i.afd = load i8, ptr %i.afc, align 1, !tbaa !30
  %i.afe = add i8 %i.afd, 127
  %i.aff = getelementptr inbounds nuw i8, ptr %.31305.i.i, i64 3
  store i8 %i.afe, ptr %i.aff, align 1, !tbaa !30
  %i.afg = getelementptr inbounds nuw i8, ptr %.31305.i.i, i64 4 ; 2 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %.0500306.i.i, i64 %i.ach ; 2 uses
  %i.afi = add nuw nsw i32 %.0307.i.i, 4          ; 2 uses
  %i.afj = or disjoint i32 %i.afi, 3
  %i.afk = icmp slt i32 %i.afj, %5
  br i1 %i.afk, label %.lr.ph308.i.i, label %.preheader.i.i, !llvm.loop !494

.lr.ph315.i.i:                                    ; preds = %.lr.ph315.i.i.prol.loopexit, %.lr.ph315.i.i
  %.1314.i.i = phi i32 [ %i.agj, %.lr.ph315.i.i ], [ %.1314.i.i.unr, %.lr.ph315.i.i.prol.loopexit ]
  %.1501313.i.i = phi ptr [ %i.agi, %.lr.ph315.i.i ], [ %.1501313.i.i.unr, %.lr.ph315.i.i.prol.loopexit ] ; 2 uses
  %.32312.i.i = phi ptr [ %i.agh, %.lr.ph315.i.i ], [ %.32312.i.i.unr, %.lr.ph315.i.i.prol.loopexit ] ; 9 uses
  %i.afl = load i8, ptr %.1501313.i.i, align 1, !tbaa !30
  store i8 %i.afl, ptr %.32312.i.i, align 1, !tbaa !30
  %i.afm = getelementptr inbounds nuw i8, ptr %.32312.i.i, i64 1
  %i.afn = getelementptr inbounds nuw i8, ptr %.1501313.i.i, i64 %i.l ; 2 uses
  %i.afo = load i8, ptr %i.afn, align 1, !tbaa !30
  store i8 %i.afo, ptr %i.afm, align 1, !tbaa !30
  %i.afp = getelementptr inbounds nuw i8, ptr %.32312.i.i, i64 2
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afn, i64 %i.l ; 2 uses
  %i.afr = load i8, ptr %i.afq, align 1, !tbaa !30
  store i8 %i.afr, ptr %i.afp, align 1, !tbaa !30
  %i.afs = getelementptr inbounds nuw i8, ptr %.32312.i.i, i64 3
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afq, i64 %i.l ; 2 uses
  %i.afu = load i8, ptr %i.aft, align 1, !tbaa !30
  store i8 %i.afu, ptr %i.afs, align 1, !tbaa !30
  %i.afv = getelementptr inbounds nuw i8, ptr %.32312.i.i, i64 4
  %i.afw = getelementptr inbounds nuw i8, ptr %i.aft, i64 %i.l ; 2 uses
  %i.afx = load i8, ptr %i.afw, align 1, !tbaa !30
  store i8 %i.afx, ptr %i.afv, align 1, !tbaa !30
  %i.afy = getelementptr inbounds nuw i8, ptr %.32312.i.i, i64 5
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afw, i64 %i.l ; 2 uses
  %i.aga = load i8, ptr %i.afz, align 1, !tbaa !30
  store i8 %i.aga, ptr %i.afy, align 1, !tbaa !30
  %i.agb = getelementptr inbounds nuw i8, ptr %.32312.i.i, i64 6
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afz, i64 %i.l ; 2 uses
  %i.agd = load i8, ptr %i.agc, align 1, !tbaa !30
  store i8 %i.agd, ptr %i.agb, align 1, !tbaa !30
  %i.age = getelementptr inbounds nuw i8, ptr %.32312.i.i, i64 7
  %i.agf = getelementptr inbounds nuw i8, ptr %i.agc, i64 %i.l ; 2 uses
  %i.agg = load i8, ptr %i.agf, align 1, !tbaa !30
  store i8 %i.agg, ptr %i.age, align 1, !tbaa !30
  %i.agh = getelementptr inbounds nuw i8, ptr %.32312.i.i, i64 8 ; 2 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agf, i64 %i.l
  %i.agj = add nuw nsw i32 %.1314.i.i, 8          ; 2 uses
  %exitcond378.not.i.i.7 = icmp eq i32 %i.agj, %5
  br i1 %exitcond378.not.i.i.7, label %.loopexit.i.i, label %.lr.ph315.i.i, !llvm.loop !495

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph303.i.i
  br i1 %lcmp.mod712.not, label %.loopexit.i.i, label %.lr.ph303.i.i.epil.preheader

.lr.ph303.i.i.epil.preheader:                     ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph303.preheader.i.i
  %.0503301.i.i.epil.init = phi ptr [ %i.acv, %.lr.ph303.preheader.i.i ], [ %i.aeb, %.loopexit.i.i.loopexit.unr-lcssa ]
  %.29300.i.i.epil.init = phi ptr [ %.28318.i.i, %.lr.ph303.preheader.i.i ], [ %i.aea, %.loopexit.i.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod714)
  br label %.lr.ph303.i.i.epil

.lr.ph303.i.i.epil:                               ; preds = %.lr.ph303.i.i.epil, %.lr.ph303.i.i.epil.preheader
  %.0503301.i.i.epil = phi ptr [ %i.agr, %.lr.ph303.i.i.epil ], [ %.0503301.i.i.epil.init, %.lr.ph303.i.i.epil.preheader ] ; 2 uses
  %.29300.i.i.epil = phi ptr [ %i.agq, %.lr.ph303.i.i.epil ], [ %.29300.i.i.epil.init, %.lr.ph303.i.i.epil.preheader ] ; 2 uses
  %epil.iter711 = phi i32 [ %epil.iter711.next, %.lr.ph303.i.i.epil ], [ 0, %.lr.ph303.i.i.epil.preheader ]
  %i.agk = load i64, ptr %.0503301.i.i.epil, align 1, !tbaa !30
  %i.agl = insertelement <2 x i64> poison, i64 %i.agk, i64 0
  %i.agm = bitcast <2 x i64> %i.agl to <16 x i8>
  %i.agn = add <16 x i8> %i.agm, <i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.ago = bitcast <16 x i8> %i.agn to <2 x i64>
  %i.agp = extractelement <2 x i64> %i.ago, i64 0
  store i64 %i.agp, ptr %.29300.i.i.epil, align 1, !tbaa !30
  %i.agq = getelementptr inbounds nuw i8, ptr %.29300.i.i.epil, i64 8 ; 2 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %.0503301.i.i.epil, i64 %i.acc
  %epil.iter711.next = add i32 %epil.iter711, 1   ; 2 uses
  %epil.iter711.cmp.not = icmp eq i32 %epil.iter711.next, %xtraiter710
  br i1 %epil.iter711.cmp.not, label %.loopexit.i.i, label %.lr.ph303.i.i.epil, !llvm.loop !496

.loopexit.i.i:                                    ; preds = %.lr.ph315.i.i.prol.loopexit, %.lr.ph315.i.i, %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph303.i.i.epil, %.preheader.i.i, %_ZN4ncnn3MatD2Ev.exit543.i.i, %bb.d
  %.33.i.i = phi ptr [ %.28318.i.i, %bb.d ], [ %.31.lcssa.i.i, %.preheader.i.i ], [ %i.agq, %.lr.ph303.i.i.epil ], [ %.28318.i.i, %_ZN4ncnn3MatD2Ev.exit543.i.i ], [ %i.aea, %.loopexit.i.i.loopexit.unr-lcssa ], [ %.lcssa582.unr, %.lr.ph315.i.i.prol.loopexit ], [ %i.agh, %.lr.ph315.i.i ]
  %indvars.iv.next380.i.i = add nuw nsw i64 %indvars.iv379.i.i, 1 ; 2 uses
  %exitcond382.not.i.i = icmp eq i64 %indvars.iv.next380.i.i, %wide.trip.count.i.i
  br i1 %exitcond382.not.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit, label %bb.d, !llvm.loop !497

bb.e:                                             ; preds = %bb.a
  %i.ags = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.agt = load i32, ptr %i.ags, align 4, !tbaa !16 ; 11 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.agv = load i32, ptr %i.agu, align 8, !tbaa !17 ; 11 uses
  %i.agw = add nsw i32 %6, -1                     ; 2 uses
  %i.agx = mul nsw i32 %8, %i.agw
  %.neg.i.i = xor i32 %i.agx, -1
  %i.agy = add i32 %i.agt, %.neg.i.i
  %i.agz = sdiv i32 %i.agy, %10                   ; 3 uses
  %i.aha = add nsw i32 %i.agz, 1                  ; 8 uses
  %i.ahb = mul nsw i32 %7, %6                     ; 70 uses
  %i.ahc = icmp eq i32 %i.agz, 0
  br i1 %i.ahc, label %_ZN17FastDivider_epu32C2Ej.exit1691.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ahd = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.agz, i1 true) ; 3 uses
  %i.ahe = sub nuw nsw i32 32, %i.ahd
  %i.ahf = icmp eq i32 %i.ahd, 0
  %i.ahg = shl nuw i32 1, %i.ahe
  %i.ahh = select i1 %i.ahf, i32 0, i32 %i.ahg
  %i.ahi = sub i32 %i.ahh, %i.aha
  %i.ahj = zext i32 %i.ahi to i64
  %i.ahk = shl nuw i64 %i.ahj, 32
  %i.ahl = zext i32 %i.aha to i64
  %i.ahm = udiv i64 %i.ahk, %i.ahl
  %i.ahn = trunc i64 %i.ahm to i32
  %i.aho = add i32 %i.ahn, 1
  %i.ahp = xor i32 %i.ahd, 31
  br label %_ZN17FastDivider_epu32C2Ej.exit1691.i.i

_ZN17FastDivider_epu32C2Ej.exit1691.i.i:          ; preds = %bb.f, %bb.e
  %.012.i1688.i.i = phi i32 [ %i.ahp, %bb.f ], [ 0, %bb.e ]
  %.011.i1689.i.i = phi i32 [ 1, %bb.f ], [ 0, %bb.e ]
  %.0.i1690.i.i = phi i32 [ %i.aho, %bb.f ], [ 1, %bb.e ]
  %i.ahq = insertelement <16 x i32> poison, i32 %.0.i1690.i.i, i64 0
  %i.ahr = shufflevector <16 x i32> %i.ahq, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ahs = bitcast <16 x i32> %i.ahr to <8 x i64> ; 2 uses
  %i.aht = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.011.i1689.i.i, i64 0 ; 3 uses
  %i.ahu = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.012.i1688.i.i, i64 0 ; 3 uses
  %i.ahv = icmp eq i32 %i.ahb, 1
  br i1 %i.ahv, label %_ZN17FastDivider_epu32C2Ej.exit1687.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN17FastDivider_epu32C2Ej.exit1691.i.i
  %i.ahw = add nsw i32 %i.ahb, -1
  %i.ahx = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ahw, i1 true) ; 3 uses
  %i.ahy = sub nuw nsw i32 32, %i.ahx
  %i.ahz = icmp eq i32 %i.ahx, 0
  %i.aia = shl nuw i32 1, %i.ahy
  %i.aib = select i1 %i.ahz, i32 0, i32 %i.aia
  %i.aic = sub i32 %i.aib, %i.ahb
  %i.aid = zext i32 %i.aic to i64
  %i.aie = shl nuw i64 %i.aid, 32
  %i.aif = zext i32 %i.ahb to i64
  %i.aig = udiv i64 %i.aie, %i.aif
  %i.aih = trunc i64 %i.aig to i32
  %i.aii = add i32 %i.aih, 1
  %i.aij = xor i32 %i.ahx, 31
  br label %_ZN17FastDivider_epu32C2Ej.exit1687.i.i

_ZN17FastDivider_epu32C2Ej.exit1687.i.i:          ; preds = %bb.g, %_ZN17FastDivider_epu32C2Ej.exit1691.i.i
  %.012.i1684.i.i = phi i32 [ %i.aij, %bb.g ], [ 0, %_ZN17FastDivider_epu32C2Ej.exit1691.i.i ]
  %.011.i1685.i.i = phi i32 [ 1, %bb.g ], [ 0, %_ZN17FastDivider_epu32C2Ej.exit1691.i.i ]
  %.0.i1686.i.i = phi i32 [ %i.aii, %bb.g ], [ 1, %_ZN17FastDivider_epu32C2Ej.exit1691.i.i ]
  %i.aik = insertelement <16 x i32> poison, i32 %.0.i1686.i.i, i64 0
  %i.ail = shufflevector <16 x i32> %i.aik, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.aim = bitcast <16 x i32> %i.ail to <8 x i64> ; 5 uses
  %i.ain = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.011.i1685.i.i, i64 0 ; 5 uses
  %i.aio = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.012.i1684.i.i, i64 0 ; 9 uses
  br i1 %i.a, label %_ZN17FastDivider_epu32C2Ej.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN17FastDivider_epu32C2Ej.exit1687.i.i
  %i.aip = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.agw, i1 true) ; 3 uses
  %i.aiq = sub nuw nsw i32 32, %i.aip
  %i.air = icmp eq i32 %i.aip, 0
  %i.ais = shl nuw i32 1, %i.aiq
  %i.ait = select i1 %i.air, i32 0, i32 %i.ais
  %i.aiu = sub i32 %i.ait, %6
  %i.aiv = zext i32 %i.aiu to i64
  %i.aiw = shl nuw i64 %i.aiv, 32
  %i.aix = zext i32 %6 to i64
  %i.aiy = udiv i64 %i.aiw, %i.aix
  %i.aiz = trunc i64 %i.aiy to i32
  %i.aja = add i32 %i.aiz, 1
  %i.ajb = xor i32 %i.aip, 31
  br label %_ZN17FastDivider_epu32C2Ej.exit.i.i

_ZN17FastDivider_epu32C2Ej.exit.i.i:              ; preds = %bb.h, %_ZN17FastDivider_epu32C2Ej.exit1687.i.i
  %.012.i.i.i = phi i32 [ %i.ajb, %bb.h ], [ 0, %_ZN17FastDivider_epu32C2Ej.exit1687.i.i ]
  %.011.i.i.i = phi i32 [ 1, %bb.h ], [ 0, %_ZN17FastDivider_epu32C2Ej.exit1687.i.i ]
  %.0.i.i.i = phi i32 [ %i.aja, %bb.h ], [ 1, %_ZN17FastDivider_epu32C2Ej.exit1687.i.i ]
  %i.ajc = insertelement <16 x i32> poison, i32 %.0.i.i.i, i64 0
  %i.ajd = shufflevector <16 x i32> %i.ajc, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.aje = bitcast <16 x i32> %i.ajd to <8 x i64> ; 5 uses
  %i.ajf = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.011.i.i.i, i64 0 ; 5 uses
  %i.ajg = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.012.i.i.i, i64 0 ; 9 uses
  %i.ajh = icmp sgt i32 %3, 15
  br i1 %i.ajh, label %.lr.ph337.i.i, label %.preheader288.i.i

.lr.ph337.i.i:                                    ; preds = %_ZN17FastDivider_epu32C2Ej.exit.i.i
  %i.aji = bitcast <16 x i32> %i.ahr to <8 x i64>
  %i.ajj = and <8 x i64> %i.aji, splat (i64 4294967295) ; 2 uses
  %i.ajk = shufflevector <4 x i32> %i.aht, <4 x i32> poison, <16 x i32> zeroinitializer
  %i.ajl = insertelement <16 x i32> poison, i32 %i.aha, i64 0
  %i.ajm = shufflevector <16 x i32> %i.ajl, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.ajn = insertelement <16 x i32> poison, i32 %10, i64 0
  %i.ajo = shufflevector <16 x i32> %i.ajn, <16 x i32> poison, <16 x i32> zeroinitializer
  %.scalar.i.i = mul i32 %i.agt, %11
  %i.ajp = insertelement <16 x i32> poison, i32 %.scalar.i.i, i64 0
  %i.ajq = shufflevector <16 x i32> %i.ajp, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.ajr = icmp eq i32 %i.agv, 1                  ; 2 uses
  %i.ajs = icmp sgt i32 %5, 3                     ; 2 uses
  %i.ajt = shufflevector <8 x i64> %i.aim, <8 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.aju = and <2 x i64> %i.ajt, splat (i64 4294967295) ; 4 uses
  %i.ajv = shufflevector <4 x i32> %i.ain, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ajw = insertelement <4 x i32> poison, i32 %i.ahb, i64 0
  %i.ajx = shufflevector <4 x i32> %i.ajw, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ajy = shufflevector <8 x i64> %i.aje, <8 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.ajz = and <2 x i64> %i.ajy, splat (i64 4294967295) ; 4 uses
  %i.aka = shufflevector <4 x i32> %i.ajf, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.akb = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.akc = shufflevector <4 x i32> %i.akb, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.akd = trunc i64 %i.l to i32                  ; 4 uses
  %i.ake = insertelement <4 x i32> poison, i32 %i.akd, i64 0
  %i.akf = shufflevector <4 x i32> %i.ake, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.akg = insertelement <4 x i32> poison, i32 %8, i64 0
  %i.akh = shufflevector <4 x i32> %i.akg, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %.scalar588.i.i = mul i32 %i.agt, %9            ; 7 uses
  %i.aki = insertelement <4 x i32> poison, i32 %.scalar588.i.i, i64 0
  %i.akj = shufflevector <4 x i32> %i.aki, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.akk = icmp ne i32 %i.agv, 8
  %i.akl = sdiv i32 %5, 8                         ; 2 uses
  %i.akm = icmp slt i32 %5, 8
  %i.akn = sdiv i32 %4, 8                         ; 2 uses
  %brmerge488.i.i = or i1 %i.akm, %i.akk          ; 2 uses
  %i.ako = insertelement <2 x i32> <i32 poison, i32 1>, i32 %6, i64 0
  %i.akp = insertelement <2 x i32> poison, i32 %.scalar588.i.i, i64 0
  %i.akq = insertelement <2 x i32> %i.akp, i32 %8, i64 1
  %i.akr = insertelement <2 x i32> <i32 poison, i32 1>, i32 %6, i64 0 ; 2 uses
  %i.aks = insertelement <2 x i32> poison, i32 %.scalar588.i.i, i64 0
  %i.akt = insertelement <2 x i32> %i.aks, i32 %8, i64 1 ; 2 uses
  %i.aku = insertelement <2 x i32> poison, i32 %i.ahb, i64 0
  %i.akv = shufflevector <2 x i32> %i.aku, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.akw = insertelement <2 x i32> poison, i32 %i.akd, i64 0
  %i.akx = shufflevector <2 x i32> %i.akw, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aky = insertelement <2 x i32> <i32 poison, i32 1>, i32 %6, i64 0
  %i.akz = insertelement <2 x i32> poison, i32 %.scalar588.i.i, i64 0
  %i.ala = insertelement <2 x i32> %i.akz, i32 %8, i64 1
  %i.alb = insertelement <2 x i32> poison, i32 %i.ahb, i64 0
  %i.alc = insertelement <2 x i32> %i.alb, i32 %6, i64 1
  %i.ald = insertelement <2 x i32> <i32 1, i32 poison>, i32 %6, i64 1 ; 2 uses
  %i.ale = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.alf = insertelement <2 x i32> %i.ale, i32 %.scalar588.i.i, i64 1 ; 2 uses
  %i.alg = insertelement <2 x i64> poison, i64 %i.l, i64 0
  %i.alh = shufflevector <2 x i64> %i.alg, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ali = insertelement <2 x i32> poison, i32 %i.ahb, i64 0
  %i.alj = shufflevector <2 x i32> %i.ali, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.alk = insertelement <2 x i32> <i32 1, i32 poison>, i32 %6, i64 1
  %i.all = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.alm = insertelement <2 x i32> %i.all, i32 %.scalar588.i.i, i64 1
  br label %bb.i

.preheader288.i.i:                                ; preds = %.loopexit290.i.i, %_ZN17FastDivider_epu32C2Ej.exit.i.i
  %.01640.lcssa.i.i = phi i32 [ 0, %_ZN17FastDivider_epu32C2Ej.exit.i.i ], [ %i.bdb, %.loopexit290.i.i ] ; 3 uses
  %.0.lcssa.i33.i = phi ptr [ %.val, %_ZN17FastDivider_epu32C2Ej.exit.i.i ], [ %.12.i.i, %.loopexit290.i.i ] ; 2 uses
  %i.aln = or disjoint i32 %.01640.lcssa.i.i, 7
  %i.alo = icmp slt i32 %i.aln, %3
  br i1 %i.alo, label %.lr.ph378.i.i, label %.preheader275.i.i

.lr.ph378.i.i:                                    ; preds = %.preheader288.i.i
  %i.alp = shufflevector <8 x i64> %i.ahs, <8 x i64> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.alq = and <4 x i64> %i.alp, splat (i64 4294967295) ; 2 uses
  %i.alr = shufflevector <4 x i32> %i.aht, <4 x i32> poison, <8 x i32> zeroinitializer
  %i.als = insertelement <8 x i32> poison, i32 %i.aha, i64 0
  %i.alt = shufflevector <8 x i32> %i.als, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.alu = insertelement <8 x i32> poison, i32 %10, i64 0
  %i.alv = shufflevector <8 x i32> %i.alu, <8 x i32> poison, <8 x i32> zeroinitializer
  %.scalar590.i.i = mul i32 %i.agt, %11
  %i.alw = insertelement <8 x i32> poison, i32 %.scalar590.i.i, i64 0
  %i.alx = shufflevector <8 x i32> %i.alw, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aly = icmp eq i32 %i.agv, 1                  ; 2 uses
  %i.alz = icmp sgt i32 %5, 3                     ; 2 uses
  %i.ama = shufflevector <8 x i64> %i.aim, <8 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.amb = and <2 x i64> %i.ama, splat (i64 4294967295) ; 4 uses
  %i.amc = shufflevector <4 x i32> %i.ain, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.amd = insertelement <4 x i32> poison, i32 %i.ahb, i64 0
  %i.ame = shufflevector <4 x i32> %i.amd, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.amf = shufflevector <8 x i64> %i.aje, <8 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.amg = and <2 x i64> %i.amf, splat (i64 4294967295) ; 4 uses
  %i.amh = shufflevector <4 x i32> %i.ajf, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ami = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.amj = shufflevector <4 x i32> %i.ami, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.amk = trunc i64 %i.l to i32                  ; 4 uses
  %i.aml = insertelement <4 x i32> poison, i32 %i.amk, i64 0
  %i.amm = shufflevector <4 x i32> %i.aml, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.amn = insertelement <4 x i32> poison, i32 %8, i64 0
  %i.amo = shufflevector <4 x i32> %i.amn, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %.scalar591.i.i = mul i32 %i.agt, %9            ; 7 uses
  %i.amp = insertelement <4 x i32> poison, i32 %.scalar591.i.i, i64 0
  %i.amq = shufflevector <4 x i32> %i.amp, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.amr = icmp ne i32 %i.agv, 8
  %i.ams = sdiv i32 %5, 8                         ; 2 uses
  %i.amt = icmp slt i32 %5, 8
  %i.amu = sdiv i32 %4, 8                         ; 2 uses
  %brmerge494.i.i = or i1 %i.amt, %i.amr          ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnn45convolution_im2col_input_tile_int8_avx512vnniERKNS_3MatERS0_iiiiiiiiii:bb.a
  %i.bok = shufflevector <4 x i32> %i.boh, <4 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.bol = add <8 x i32> %i.bok, %i.bgi
  %i.bom = shufflevector <4 x i32> %i.boh, <4 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.bon = add <8 x i32> %i.bom, %i.bgi
  %i.boo = shufflevector <4 x i32> %i.boh, <4 x i32> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.bop = add <8 x i32> %i.boo, %i.bgi
  %i.boq = load ptr, ptr %0, align 8, !tbaa !28   ; 4 uses
  %i.bor = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.boq, <8 x i32> %i.boj, <8 x i32> splat (i32 -1), i8 1)
  %i.bos = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.boq, <8 x i32> %i.bol, <8 x i32> splat (i32 -1), i8 1)
  %i.bot = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.boq, <8 x i32> %i.bon, <8 x i32> splat (i32 -1), i8 1)
  %i.bou = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.boq, <8 x i32> %i.bop, <8 x i32> splat (i32 -1), i8 1)
  %i.bov = shufflevector <8 x i32> %i.bor, <8 x i32> %i.bos, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bow = trunc <16 x i32> %i.bov to <16 x i8>
  %i.box = shufflevector <8 x i32> %i.bot, <8 x i32> %i.bou, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.boy = trunc <16 x i32> %i.box to <16 x i8>
  %i.boz = bitcast <16 x i8> %i.bow to <8 x i16>  ; 2 uses
  %i.bpa = bitcast <16 x i8> %i.boy to <8 x i16>  ; 2 uses
  %i.bpb = shufflevector <8 x i16> %i.boz, <8 x i16> %i.bpa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bpc = shufflevector <8 x i16> %i.boz, <8 x i16> %i.bpa, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bpd = bitcast <8 x i16> %i.bpb to <16 x i8>
  %i.bpe = add <16 x i8> %i.bpd, splat (i8 127)
  %i.bpf = bitcast <8 x i16> %i.bpc to <16 x i8>
  %i.bpg = add <16 x i8> %i.bpf, splat (i8 127)
  store <16 x i8> %i.bpe, ptr %.20341.i.i, align 1, !tbaa !30
  %i.bph = getelementptr inbounds nuw i8, ptr %.20341.i.i, i64 16
  store <16 x i8> %i.bpg, ptr %i.bph, align 1, !tbaa !30
  %i.bpi = getelementptr inbounds nuw i8, ptr %.20341.i.i, i64 32 ; 2 uses
  %i.bpj = add nuw nsw i32 %.01657340.i.i, 4      ; 3 uses
  %i.bpk = or disjoint i32 %i.bpj, 3
  %i.bpl = icmp slt i32 %i.bpk, %5
  br i1 %i.bpl, label %.lr.ph342.i.i, label %.preheader286.i.i, !llvm.loop !511

.preheader284.i.i:                                ; preds = %.lr.ph347.i.i, %.preheader286.i.i
  %.11658.lcssa.i.i = phi i32 [ %.01657.lcssa.i.i, %.preheader286.i.i ], [ %i.bqv, %.lr.ph347.i.i ] ; 2 uses
  %.21.lcssa.i35.i = phi ptr [ %.20.lcssa.i.i, %.preheader286.i.i ], [ %i.bqu, %.lr.ph347.i.i ] ; 2 uses
  %i.bpm = icmp slt i32 %.11658.lcssa.i.i, %5
  br i1 %i.bpm, label %.lr.ph352.i.i, label %.loopexit277.i.i

.lr.ph347.i.i:                                    ; preds = %.preheader286.i.i, %.lr.ph347.i.i
  %.21346.i.i = phi ptr [ %i.bqu, %.lr.ph347.i.i ], [ %.20.lcssa.i.i, %.preheader286.i.i ] ; 2 uses
  %.11658345.i.i = phi i32 [ %i.bqv, %.lr.ph347.i.i ], [ %.01657.lcssa.i.i, %.preheader286.i.i ] ; 2 uses
  %i.bpn = add nsw i32 %.11658345.i.i, %4         ; 3 uses
  %i.bpo = add nsw i32 %i.bpn, 1                  ; 2 uses
  %i.bpp = srem i32 %i.bpn, %i.ahb                ; 2 uses
  %i.bpq = srem i32 %i.bpo, %i.ahb                ; 2 uses
  %i.bpr = srem i32 %i.bpp, %6
  %i.bps = insertelement <2 x i32> poison, i32 %i.bpp, i64 0
  %i.bpt = insertelement <2 x i32> %i.bps, i32 %i.bpr, i64 1
  %i.bpu = sdiv <2 x i32> %i.bpt, %i.amy
  %i.bpv = mul <2 x i32> %i.bpu, %i.ana           ; 2 uses
  %i.bpw = srem i32 %i.bpq, %6
  %i.bpx = insertelement <2 x i32> poison, i32 %i.bpq, i64 0
  %i.bpy = insertelement <2 x i32> %i.bpx, i32 %i.bpw, i64 1
  %i.bpz = sdiv <2 x i32> %i.bpy, %i.amy
  %i.bqa = mul <2 x i32> %i.bpz, %i.ana           ; 2 uses
  %i.bqb = insertelement <2 x i32> poison, i32 %i.bpn, i64 0
  %i.bqc = insertelement <2 x i32> %i.bqb, i32 %i.bpo, i64 1
  %i.bqd = sdiv <2 x i32> %i.bqc, %i.anc
  %i.bqe = mul <2 x i32> %i.bqd, %i.ane           ; 2 uses
  %foldExtExtBinop521 = add <2 x i32> %i.bpv, %i.bqe
  %i.bqf = shufflevector <2 x i32> %foldExtExtBinop521, <2 x i32> poison, <8 x i32> zeroinitializer
  %i.bqg = shufflevector <2 x i32> %i.bpv, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.bqh = add <8 x i32> %i.bqf, %i.bqg
  %i.bqi = add <8 x i32> %i.bqh, %i.bgi
  %i.bqj = shufflevector <2 x i32> %i.bqa, <2 x i32> poison, <8 x i32> zeroinitializer
  %i.bqk = shufflevector <2 x i32> %i.bqe, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.bql = add <8 x i32> %i.bqj, %i.bqk
  %i.bqm = shufflevector <2 x i32> %i.bqa, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.bqn = add <8 x i32> %i.bql, %i.bqm
  %i.bqo = add <8 x i32> %i.bqn, %i.bgi
  %i.bqp = load ptr, ptr %0, align 8, !tbaa !28   ; 2 uses
  %i.bqq = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.bqp, <8 x i32> %i.bqi, <8 x i32> splat (i32 -1), i8 1)
  %i.bqr = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.bqp, <8 x i32> %i.bqo, <8 x i32> splat (i32 -1), i8 1)
  %i.bqs = shufflevector <8 x i32> %i.bqq, <8 x i32> %i.bqr, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bqt = trunc <16 x i32> %i.bqs to <16 x i8>
  store <16 x i8> %i.bqt, ptr %.21346.i.i, align 1, !tbaa !30
  %i.bqu = getelementptr inbounds nuw i8, ptr %.21346.i.i, i64 16 ; 2 uses
  %i.bqv = add nuw nsw i32 %.11658345.i.i, 2      ; 3 uses
  %i.bqw = or disjoint i32 %i.bqv, 1
  %i.bqx = icmp slt i32 %i.bqw, %5
  br i1 %i.bqx, label %.lr.ph347.i.i, label %.preheader284.i.i, !llvm.loop !512

.lr.ph352.i.i:                                    ; preds = %.preheader284.i.i, %.lr.ph352.i.i
  %.22351.i.i = phi ptr [ %i.bru, %.lr.ph352.i.i ], [ %.21.lcssa.i35.i, %.preheader284.i.i ] ; 2 uses
  %.21659350.i.i = phi i32 [ %i.brv, %.lr.ph352.i.i ], [ %.11658.lcssa.i.i, %.preheader284.i.i ] ; 2 uses
  %i.bqy = add nsw i32 %.21659350.i.i, %4         ; 2 uses
  %i.bqz = sdiv i32 %i.bqy, %i.ahb
  %i.bra = srem i32 %i.bqy, %i.ahb                ; 2 uses
  %i.brb = srem i32 %i.bra, %6
  %i.brc = insertelement <2 x i32> poison, i32 %i.bra, i64 0
  %i.brd = insertelement <2 x i32> %i.brc, i32 %i.brb, i64 1
  %i.bre = sdiv <2 x i32> %i.brd, %i.anf
  %i.brf = mul <2 x i32> %i.bre, %i.anh           ; 2 uses
  %i.brg = mul i32 %i.bqz, %i.amk
  %i.brh = extractelement <2 x i32> %i.brf, i64 0
  %i.bri = add i32 %i.brh, %i.brg
  %i.brj = extractelement <2 x i32> %i.brf, i64 1
  %i.brk = add i32 %i.bri, %i.brj
  %i.brl = insertelement <8 x i32> poison, i32 %i.brk, i64 0
  %i.brm = shufflevector <8 x i32> %i.brl, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.brn = add <8 x i32> %i.brm, %i.bgi
  %i.bro = load ptr, ptr %0, align 8, !tbaa !28
  %i.brp = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.bro, <8 x i32> %i.brn, <8 x i32> splat (i32 -1), i8 1)
  %i.brq = shufflevector <8 x i32> %i.brp, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.brr = trunc <16 x i32> %i.brq to <16 x i8>
  %i.brs = bitcast <16 x i8> %i.brr to <2 x i64>
  %i.brt = extractelement <2 x i64> %i.brs, i64 0
  store i64 %i.brt, ptr %.22351.i.i, align 1, !tbaa !30
  %i.bru = getelementptr inbounds nuw i8, ptr %.22351.i.i, i64 8 ; 2 uses
  %i.brv = add nuw nsw i32 %.21659350.i.i, 1      ; 2 uses
  %exitcond573.not.i.i = icmp eq i32 %i.brv, %5
  br i1 %exitcond573.not.i.i, label %.loopexit277.i.i, label %.lr.ph352.i.i, !llvm.loop !513

.loopexit285.i.i:                                 ; preds = %bb.v
  br i1 %brmerge494.i.i, label %.loopexit277.i.i, label %.lr.ph356.i.i

.lr.ph356.i.i:                                    ; preds = %.loopexit285.i.i, %.lr.ph356.i.i
  %.24355.i.i = phi ptr [ %i.btf, %.lr.ph356.i.i ], [ %.13377.i.i, %.loopexit285.i.i ] ; 3 uses
  %.01660354.i.i = phi i32 [ %i.btg, %.lr.ph356.i.i ], [ 0, %.loopexit285.i.i ] ; 2 uses
  %i.brw = add nsw i32 %.01660354.i.i, %i.amu     ; 2 uses
  %i.brx = sdiv i32 %i.brw, %i.ahb
  %i.bry = srem i32 %i.brw, %i.ahb                ; 2 uses
  %i.brz = srem i32 %i.bry, %6
  %i.bsa = insertelement <2 x i32> poison, i32 %i.bry, i64 0
  %i.bsb = insertelement <2 x i32> %i.bsa, i32 %i.brz, i64 1
  %i.bsc = sdiv <2 x i32> %i.bsb, %i.amv
  %i.bsd = mul <2 x i32> %i.bsc, %i.amx           ; 2 uses
  %i.bse = mul i32 %i.brx, %i.amk
  %i.bsf = extractelement <2 x i32> %i.bsd, i64 0
  %i.bsg = add i32 %i.bsf, %i.bse
  %i.bsh = extractelement <2 x i32> %i.bsd, i64 1
  %i.bsi = add i32 %i.bsg, %i.bsh
  %i.bsj = insertelement <8 x i32> poison, i32 %i.bsi, i64 0
  %i.bsk = shufflevector <8 x i32> %i.bsj, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bsl = add <8 x i32> %i.bsk, %i.bgi
  %i.bsm = shl <8 x i32> %i.bsl, splat (i32 3)    ; 2 uses
  %i.bsn = load ptr, ptr %0, align 8, !tbaa !28   ; 2 uses
  %i.bso = shufflevector <8 x i32> %i.bsm, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bsp = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %i.bsn, <4 x i32> %i.bso, <4 x i64> splat (i64 -1), i8 1)
  %i.bsq = shufflevector <8 x i32> %i.bsm, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bsr = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %i.bsn, <4 x i32> %i.bsq, <4 x i64> splat (i64 -1), i8 1)
  %i.bss = bitcast <4 x i64> %i.bsp to <8 x i32>  ; 2 uses
  %i.bst = bitcast <4 x i64> %i.bsr to <8 x i32>  ; 2 uses
  %i.bsu = shufflevector <8 x i32> %i.bss, <8 x i32> %i.bst, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %i.bsv = bitcast <8 x i32> %i.bsu to <4 x i64>
  %i.bsw = shufflevector <8 x i32> %i.bss, <8 x i32> %i.bst, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.bsx = bitcast <8 x i32> %i.bsw to <4 x i64>
  %i.bsy = shufflevector <4 x i64> %i.bsv, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.bsz = shufflevector <4 x i64> %i.bsx, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.bta = bitcast <4 x i64> %i.bsy to <32 x i8>
  %i.btb = add <32 x i8> %i.bta, splat (i8 127)
  %i.btc = bitcast <4 x i64> %i.bsz to <32 x i8>
  %i.btd = add <32 x i8> %i.btc, splat (i8 127)
  store <32 x i8> %i.btb, ptr %.24355.i.i, align 1, !tbaa !30
  %i.bte = getelementptr inbounds nuw i8, ptr %.24355.i.i, i64 32
  store <32 x i8> %i.btd, ptr %i.bte, align 1, !tbaa !30
  %i.btf = getelementptr inbounds nuw i8, ptr %.24355.i.i, i64 64 ; 2 uses
  %i.btg = add nuw nsw i32 %.01660354.i.i, 1      ; 2 uses
  %exitcond574.not.i.i = icmp eq i32 %i.btg, %i.ams
  br i1 %exitcond574.not.i.i, label %.loopexit277.i.i, label %.lr.ph356.i.i, !llvm.loop !514

.loopexit277.i.i:                                 ; preds = %.lr.ph356.i.i, %.lr.ph352.i.i, %bb.u, %bb.t, %.loopexit285.i.i, %.preheader284.i.i, %.loopexit279.i.i, %.preheader278.i.i
  %.25.i.i = phi ptr [ %.13377.i.i, %.loopexit285.i.i ], [ %.15.lcssa.i.i, %.preheader278.i.i ], [ %.13377.i.i, %.loopexit279.i.i ], [ %i.bmn, %bb.u ], [ %i.blf, %bb.t ], [ %.21.lcssa.i35.i, %.preheader284.i.i ], [ %i.bru, %.lr.ph352.i.i ], [ %i.btf, %.lr.ph356.i.i ] ; 2 uses
  %i.bth = add nuw nsw i32 %.11641376.i.i, 8      ; 3 uses
  %i.bti = or disjoint i32 %i.bth, 7
  %i.btj = icmp slt i32 %i.bti, %3
  br i1 %i.btj, label %bb.p, label %.preheader275.i.i, !llvm.loop !515

.preheader262.i.i:                                ; preds = %.loopexit264.i.i, %.preheader275.i.i
  %.21642.lcssa.i.i = phi i32 [ %.11641.lcssa.i.i, %.preheader275.i.i ], [ %i.cjj, %.loopexit264.i.i ] ; 3 uses
  %.26.lcssa.i.i = phi ptr [ %.13.lcssa.i.i, %.preheader275.i.i ], [ %.38.i.i, %.loopexit264.i.i ] ; 2 uses
  %i.btk = or disjoint i32 %.21642.lcssa.i.i, 1
  %i.btl = icmp slt i32 %i.btk, %3
  br i1 %i.btl, label %.lr.ph461.i.i, label %.preheader249.i.i

.lr.ph461.i.i:                                    ; preds = %.preheader262.i.i
  %i.btm = mul i32 %i.agt, %11
  %i.btn = icmp eq i32 %i.agv, 1                  ; 2 uses
  %i.bto = icmp sgt i32 %5, 3                     ; 2 uses
  %i.btp = shufflevector <8 x i64> %i.aim, <8 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.btq = and <2 x i64> %i.btp, splat (i64 4294967295) ; 4 uses
  %i.btr = shufflevector <4 x i32> %i.ain, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bts = insertelement <4 x i32> poison, i32 %i.ahb, i64 0
  %i.btt = shufflevector <4 x i32> %i.bts, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.btu = shufflevector <8 x i64> %i.aje, <8 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.btv = and <2 x i64> %i.btu, splat (i64 4294967295) ; 4 uses
  %i.btw = shufflevector <4 x i32> %i.ajf, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.btx = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.bty = shufflevector <4 x i32> %i.btx, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.btz = trunc i64 %i.l to i32                  ; 2 uses
  %i.bua = insertelement <4 x i32> poison, i32 %i.btz, i64 0
  %i.bub = shufflevector <4 x i32> %i.bua, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.buc = insertelement <4 x i32> poison, i32 %8, i64 0
  %i.bud = shufflevector <4 x i32> %i.buc, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %.scalar596.i.i = mul i32 %i.agt, %9            ; 8 uses
  %i.bue = insertelement <4 x i32> poison, i32 %.scalar596.i.i, i64 0
  %i.buf = shufflevector <4 x i32> %i.bue, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bug = icmp eq i32 %i.agv, 8
  %i.buh = sdiv i32 %5, 8                         ; 2 uses
  %i.bui = sdiv i32 %4, 8                         ; 2 uses
  %12 = icmp ne i32 %i.agv, 8
  %13 = icmp slt i32 %5, 8
  %i.buj = icmp sgt i32 %5, 7
  %or.cond504.i.i = and i1 %i.buj, %i.bug
  %brmerge503.i.i = or i1 %13, %12
  %i.buk = insertelement <2 x i32> poison, i32 %10, i64 0
  %i.bul = shufflevector <2 x i32> %i.buk, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bum = insertelement <2 x i32> poison, i32 %i.aha, i64 0
  %i.bun = shufflevector <2 x i32> %i.bum, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.buo = insertelement <2 x i32> poison, i32 %i.btm, i64 0
  %i.bup = shufflevector <2 x i32> %i.buo, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.buq = insertelement <2 x i32> <i32 1, i32 poison>, i32 %6, i64 1
  %i.bur = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.bus = insertelement <2 x i32> %i.bur, i32 %.scalar596.i.i, i64 1
  %i.but = insertelement <2 x i32> poison, i32 %i.ahb, i64 0
  %i.buu = shufflevector <2 x i32> %i.but, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.buv = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.buw = shufflevector <2 x i32> %i.buv, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bux = insertelement <2 x i32> poison, i32 %.scalar596.i.i, i64 0
  %i.buy = shufflevector <2 x i32> %i.bux, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.buz = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.bva = shufflevector <2 x i32> %i.buz, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bvb = insertelement <2 x i32> poison, i32 %i.btz, i64 0
  %i.bvc = shufflevector <2 x i32> %i.bvb, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bvd = insertelement <2 x i32> poison, i32 %i.ahb, i64 0
  %i.bve = insertelement <2 x i32> %i.bvd, i32 %6, i64 1
  %i.bvf = insertelement <2 x i32> <i32 1, i32 poison>, i32 %6, i64 1
  %i.bvg = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.bvh = insertelement <2 x i32> %i.bvg, i32 %.scalar596.i.i, i64 1
  %i.bvi = insertelement <2 x i64> poison, i64 %i.l, i64 0
  %i.bvj = shufflevector <2 x i64> %i.bvi, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.bvk = insertelement <2 x i32> poison, i32 %i.ahb, i64 0
  %i.bvl = shufflevector <2 x i32> %i.bvk, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bvm = insertelement <2 x i32> poison, i32 %i.ahb, i64 0
  %i.bvn = insertelement <2 x i32> %i.bvm, i32 %6, i64 1
  br label %bb.ad

bb.w:                                             ; preds = %.loopexit264.i.i, %.lr.ph419.i.i
  %.26418.i.i = phi ptr [ %.13.lcssa.i.i, %.lr.ph419.i.i ], [ %.38.i.i, %.loopexit264.i.i ] ; 8 uses
  %.21642417.i.i = phi i32 [ %.11641.lcssa.i.i, %.lr.ph419.i.i ], [ %i.cjj, %.loopexit264.i.i ] ; 2 uses
  %i.bvo = add nsw i32 %.21642417.i.i, %2
  %i.bvp = insertelement <4 x i32> poison, i32 %i.bvo, i64 0
  %i.bvq = shufflevector <4 x i32> %i.bvp, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bvr = add <4 x i32> %i.bvq, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.bvs = bitcast <4 x i32> %i.bvr to <2 x i64>
  %i.bvt = bitcast <4 x i32> %i.bvr to <2 x i64>
  %i.bvu = and <2 x i64> %i.bvt, splat (i64 4294967295)
  %i.bvv = mul nuw <2 x i64> %i.bvu, %i.bdh
  %i.bvw = lshr <2 x i64> %i.bvv, splat (i64 32)
  %i.bvx = lshr <2 x i64> %i.bvs, splat (i64 32)
  %i.bvy = mul nuw <2 x i64> %i.bvx, %i.bdh
  %i.bvz = bitcast <2 x i64> %i.bvw to <8 x i16>
  %i.bwa = bitcast <2 x i64> %i.bvy to <8 x i16>
  %i.bwb = shufflevector <8 x i16> %i.bvz, <8 x i16> %i.bwa, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.bwc = bitcast <8 x i16> %i.bwb to <4 x i32>  ; 2 uses
  %i.bwd = sub <4 x i32> %i.bvr, %i.bwc
  %i.bwe = lshr <4 x i32> %i.bwd, %i.bdi
  %i.bwf = add <4 x i32> %i.bwe, %i.bwc
  %i.bwg = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.bwf, <4 x i32> %i.ahu) ; 2 uses
  %i.bwh = mul <4 x i32> %i.bwg, %i.bdk
  %i.bwi = sub <4 x i32> %i.bvr, %i.bwh
  %i.bwj = mul <4 x i32> %i.bwi, %i.bdm           ; 2 uses
  %i.bwk = mul <4 x i32> %i.bwg, %i.bdo           ; 4 uses
  %i.bwl = add <4 x i32> %i.bwj, %i.bwk           ; 8 uses
  %shift578 = shufflevector <4 x i32> %i.bwk, <4 x i32> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.bwm = icmp eq <4 x i32> %i.bwk, %shift578
  %i.bwn = extractelement <4 x i1> %i.bwm, i64 0
  %or.cond5.i.i = and i1 %i.g, %i.bwn
  br i1 %or.cond5.i.i, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %foldExtExtBinop533 = add nsw <4 x i32> %i.bwj, %i.bwk ; 2 uses
  %i.bwo = extractelement <4 x i32> %foldExtExtBinop533, i64 0 ; 3 uses
  br i1 %i.bdp, label %.preheader268.i.i, label %.loopexit266.i.i

.preheader268.i.i:                                ; preds = %bb.x
  br i1 %i.bdq, label %.lr.ph401.i.i, label %.preheader267.i.i

.lr.ph401.i.i:                                    ; preds = %.preheader268.i.i
  %i.bwp = shufflevector <4 x i32> %foldExtExtBinop533, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.y

.preheader267.i.i:                                ; preds = %bb.y, %.preheader268.i.i
  %.01661.lcssa.i.i = phi i32 [ 0, %.preheader268.i.i ], [ %i.byr, %bb.y ] ; 3 uses
  %.27.lcssa.i.i = phi ptr [ %.26418.i.i, %.preheader268.i.i ], [ %i.byq, %bb.y ] ; 2 uses
  %i.bwq = or disjoint i32 %.01661.lcssa.i.i, 1
  %i.bwr = icmp slt i32 %i.bwq, %5
  br i1 %i.bwr, label %.lr.ph406.i.i, label %.preheader265.i.i

.lr.ph406.i.i:                                    ; preds = %.preheader267.i.i
  %i.bws = sext i32 %i.bwo to i64                 ; 2 uses
  br label %bb.z

bb.y:                                             ; preds = %bb.y, %.lr.ph401.i.i
  %.27400.i.i = phi ptr [ %.26418.i.i, %.lr.ph401.i.i ], [ %i.byq, %bb.y ] ; 2 uses
  %.01661399.i.i = phi i32 [ 0, %.lr.ph401.i.i ], [ %i.byr, %bb.y ] ; 2 uses
  %i.bwt = add nsw i32 %.01661399.i.i, %4
  %i.bwu = insertelement <4 x i32> poison, i32 %i.bwt, i64 0
  %i.bwv = shufflevector <4 x i32> %i.bwu, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bww = add <4 x i32> %i.bwv, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.bwx = bitcast <4 x i32> %i.bww to <2 x i64>
  %i.bwy = bitcast <4 x i32> %i.bww to <2 x i64>
  %i.bwz = and <2 x i64> %i.bwy, splat (i64 4294967295)
  %i.bxa = mul nuw <2 x i64> %i.bwz, %i.bds
  %i.bxb = lshr <2 x i64> %i.bxa, splat (i64 32)
  %i.bxc = lshr <2 x i64> %i.bwx, splat (i64 32)
  %i.bxd = mul nuw <2 x i64> %i.bxc, %i.bds
  %i.bxe = bitcast <2 x i64> %i.bxb to <8 x i16>
  %i.bxf = bitcast <2 x i64> %i.bxd to <8 x i16>
  %i.bxg = shufflevector <8 x i16> %i.bxe, <8 x i16> %i.bxf, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.bxh = bitcast <8 x i16> %i.bxg to <4 x i32>  ; 2 uses
  %i.bxi = sub <4 x i32> %i.bww, %i.bxh
  %i.bxj = lshr <4 x i32> %i.bxi, %i.bdt
  %i.bxk = add <4 x i32> %i.bxj, %i.bxh
  %i.bxl = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.bxk, <4 x i32> %i.aio) ; 2 uses
  %i.bxm = mul <4 x i32> %i.bxl, %i.bdv
  %i.bxn = sub <4 x i32> %i.bww, %i.bxm           ; 4 uses
  %i.bxo = bitcast <4 x i32> %i.bxn to <2 x i64>
  %i.bxp = bitcast <4 x i32> %i.bxn to <2 x i64>
  %i.bxq = and <2 x i64> %i.bxp, splat (i64 4294967295)
  %i.bxr = mul nuw <2 x i64> %i.bxq, %i.bdx
  %i.bxs = lshr <2 x i64> %i.bxr, splat (i64 32)
  %i.bxt = lshr <2 x i64> %i.bxo, splat (i64 32)
  %i.bxu = mul nuw <2 x i64> %i.bxt, %i.bdx
  %i.bxv = bitcast <2 x i64> %i.bxs to <8 x i16>
  %i.bxw = bitcast <2 x i64> %i.bxu to <8 x i16>
  %i.bxx = shufflevector <8 x i16> %i.bxv, <8 x i16> %i.bxw, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.bxy = bitcast <8 x i16> %i.bxx to <4 x i32>  ; 2 uses
  %i.bxz = sub <4 x i32> %i.bxn, %i.bxy
  %i.bya = lshr <4 x i32> %i.bxz, %i.bdy
  %i.byb = add <4 x i32> %i.bya, %i.bxy
  %i.byc = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.byb, <4 x i32> %i.ajg) ; 2 uses
  %i.byd = mul <4 x i32> %i.byc, %i.bea
  %i.bye = sub <4 x i32> %i.bxn, %i.byd
  %i.byf = mul <4 x i32> %i.bxl, %i.bed
  %i.byg = mul <4 x i32> %i.bye, %i.bef
  %i.byh = mul <4 x i32> %i.byc, %i.beh
  %i.byi = add <4 x i32> %i.byf, %i.bwp
  %i.byj = add <4 x i32> %i.byi, %i.byh
  %i.byk = add <4 x i32> %i.byj, %i.byg
  %i.byl = load ptr, ptr %0, align 8, !tbaa !28
  %i.bym = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.byl, <4 x i32> %i.byk, <4 x i32> splat (i32 -1), i8 1)
  %i.byn = bitcast <4 x i32> %i.bym to <16 x i8>
  %i.byo = add <16 x i8> %i.byn, splat (i8 127)
  %i.byp = shufflevector <16 x i8> %i.byo, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %i.byp, ptr %.27400.i.i, align 1, !tbaa !30
  %i.byq = getelementptr inbounds nuw i8, ptr %.27400.i.i, i64 16 ; 2 uses
  %i.byr = add nuw nsw i32 %.01661399.i.i, 4      ; 3 uses
  %i.bys = or disjoint i32 %i.byr, 3
  %i.byt = icmp slt i32 %i.bys, %5
  br i1 %i.byt, label %bb.y, label %.preheader267.i.i, !llvm.loop !516

.preheader265.i.i:                                ; preds = %bb.z, %.preheader267.i.i
  %.11662.lcssa.i.i = phi i32 [ %.01661.lcssa.i.i, %.preheader267.i.i ], [ %i.cam, %bb.z ] ; 2 uses
  %.28.lcssa.i.i = phi ptr [ %.27.lcssa.i.i, %.preheader267.i.i ], [ %i.cal, %bb.z ] ; 2 uses
  %i.byu = icmp slt i32 %.11662.lcssa.i.i, %5
  br i1 %i.byu, label %.lr.ph411.i.i, label %.loopexit264.i.i

.lr.ph411.i.i:                                    ; preds = %.preheader265.i.i
  %i.byv = sext i32 %i.bwo to i64
  br label %bb.aa

bb.z:                                             ; preds = %bb.z, %.lr.ph406.i.i
  %.28405.i.i = phi ptr [ %.27.lcssa.i.i, %.lr.ph406.i.i ], [ %i.cal, %bb.z ] ; 2 uses
  %.11662404.i.i = phi i32 [ %.01661.lcssa.i.i, %.lr.ph406.i.i ], [ %i.cam, %bb.z ] ; 2 uses
  %i.byw = add nsw i32 %.11662404.i.i, %4         ; 3 uses
  %i.byx = add nsw i32 %i.byw, 1                  ; 2 uses
  %i.byy = srem i32 %i.byw, %i.ahb                ; 2 uses
  %i.byz = srem i32 %i.byx, %i.ahb                ; 2 uses
  %i.bza = srem i32 %i.byy, %6
  %i.bzb = insertelement <2 x i32> poison, i32 %i.bza, i64 0
  %i.bzc = insertelement <2 x i32> %i.bzb, i32 %i.byy, i64 1
  %i.bzd = sdiv <2 x i32> %i.bzc, %i.bfc
  %i.bze = mul <2 x i32> %i.bzd, %i.bfe
  %i.bzf = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.bze)
  %i.bzg = sext i32 %i.bzf to i64
  %i.bzh = insertelement <2 x i32> poison, i32 %i.byw, i64 0
  %i.bzi = insertelement <2 x i32> %i.bzh, i32 %i.byx, i64 1
  %i.bzj = sdiv <2 x i32> %i.bzi, %i.bfi
  %i.bzk = sext <2 x i32> %i.bzj to <2 x i64>
  %i.bzl = mul <2 x i64> %i.bfg, %i.bzk           ; 2 uses
  %i.bzm = srem i32 %i.byz, %6
  %i.bzn = insertelement <2 x i32> poison, i32 %i.bzm, i64 0
  %i.bzo = insertelement <2 x i32> %i.bzn, i32 %i.byz, i64 1
  %i.bzp = sdiv <2 x i32> %i.bzo, %i.bfc
  %i.bzq = mul <2 x i32> %i.bzp, %i.bfe
  %i.bzr = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.bzq)
  %i.bzs = sext i32 %i.bzr to i64
  %i.bzt = load ptr, ptr %0, align 8, !tbaa !28   ; 2 uses
  %i.bzu = extractelement <2 x i64> %i.bzl, i64 0
  %i.bzv = getelementptr i8, ptr %i.bzt, i64 %i.bzu
  %i.bzw = getelementptr i8, ptr %i.bzv, i64 %i.bws
  %i.bzx = getelementptr i8, ptr %i.bzw, i64 %i.bzg
  %i.bzy = load i64, ptr %i.bzx, align 1, !tbaa !30
  %i.bzz = insertelement <2 x i64> poison, i64 %i.bzy, i64 0
  %i.caa = extractelement <2 x i64> %i.bzl, i64 1
  %i.cab = getelementptr i8, ptr %i.bzt, i64 %i.caa
  %i.cac = getelementptr i8, ptr %i.cab, i64 %i.bws
  %i.cad = getelementptr i8, ptr %i.cac, i64 %i.bzs
  %i.cae = load i64, ptr %i.cad, align 1, !tbaa !30
  %i.caf = insertelement <2 x i64> poison, i64 %i.cae, i64 0
  %i.cag = bitcast <2 x i64> %i.bzz to <16 x i8>
  %i.cah = bitcast <2 x i64> %i.caf to <16 x i8>
  %i.cai = shufflevector <16 x i8> %i.cag, <16 x i8> %i.cah, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.caj = bitcast <16 x i8> %i.cai to <2 x i64>
end_hunk_1
begin_hunk_2_@_ZN4ncnn45convolution_im2col_input_tile_int8_avx512vnniERKNS_3MatERS0_iiiiiiiiii:bb.a
  %.39460.i.i = phi ptr [ %.26.lcssa.i.i, %.lr.ph461.i.i ], [ %.52.i.i, %.loopexit251.i.i ] ; 8 uses
  %.31643459.i.i = phi i32 [ %.21642.lcssa.i.i, %.lr.ph461.i.i ], [ %i.czb, %.loopexit251.i.i ] ; 2 uses
  %i.ckv = add nsw i32 %.31643459.i.i, %2         ; 2 uses
  %i.ckw = add nsw i32 %i.ckv, 1
  %i.ckx = insertelement <2 x i32> poison, i32 %i.ckv, i64 0
  %i.cky = insertelement <2 x i32> %i.ckx, i32 %i.ckw, i64 1
  %.frozen = freeze <2 x i32> %i.cky              ; 2 uses
  %.frozen823 = freeze <2 x i32> %i.bun           ; 2 uses
  %i.ckz = sdiv <2 x i32> %.frozen, %.frozen823   ; 2 uses
  %i.cla = mul <2 x i32> %i.ckz, %.frozen823
  %.decomposed = sub <2 x i32> %.frozen, %i.cla
  %i.clb = mul nsw <2 x i32> %.decomposed, %i.bul
  %i.clc = mul <2 x i32> %i.ckz, %i.bup           ; 3 uses
  %i.cld = add nsw <2 x i32> %i.clb, %i.clc       ; 11 uses
  %shift559 = shufflevector <2 x i32> %i.clc, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.cle = icmp eq <2 x i32> %i.clc, %shift559
  %i.clf = extractelement <2 x i1> %i.cle, i64 0
  %or.cond7.i.i = and i1 %i.g, %i.clf
  br i1 %or.cond7.i.i, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.btn, label %.preheader255.i.i, label %.loopexit253.i.i

.preheader255.i.i:                                ; preds = %bb.ae
  br i1 %i.bto, label %.lr.ph443.i.i, label %.preheader254.i.i

.lr.ph443.i.i:                                    ; preds = %.preheader255.i.i
  %i.clg = shufflevector <2 x i32> %i.cld, <2 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.af

.preheader254.i.i:                                ; preds = %bb.af, %.preheader255.i.i
  %.01672.lcssa.i.i = phi i32 [ 0, %.preheader255.i.i ], [ %i.cnm, %bb.af ] ; 3 uses
  %.40.lcssa.i.i = phi ptr [ %.39460.i.i, %.preheader255.i.i ], [ %i.cnl, %bb.af ] ; 2 uses
  %i.clh = or disjoint i32 %.01672.lcssa.i.i, 1
  %i.cli = icmp slt i32 %i.clh, %5
  br i1 %i.cli, label %.lr.ph448.i.i, label %.preheader252.i.i

.lr.ph448.i.i:                                    ; preds = %.preheader254.i.i
  %i.clj = extractelement <2 x i32> %i.cld, i64 0
  %i.clk = sext i32 %i.clj to i64                 ; 2 uses
  br label %bb.ag

bb.af:                                            ; preds = %bb.af, %.lr.ph443.i.i
  %.40442.i.i = phi ptr [ %.39460.i.i, %.lr.ph443.i.i ], [ %i.cnl, %bb.af ] ; 2 uses
  %.01672441.i.i = phi i32 [ 0, %.lr.ph443.i.i ], [ %i.cnm, %bb.af ] ; 2 uses
  %i.cll = add nsw i32 %.01672441.i.i, %4
  %i.clm = insertelement <4 x i32> poison, i32 %i.cll, i64 0
  %i.cln = shufflevector <4 x i32> %i.clm, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.clo = add <4 x i32> %i.cln, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.clp = bitcast <4 x i32> %i.clo to <2 x i64>
  %i.clq = bitcast <4 x i32> %i.clo to <2 x i64>
  %i.clr = and <2 x i64> %i.clq, splat (i64 4294967295)
  %i.cls = mul nuw <2 x i64> %i.clr, %i.btq
  %i.clt = lshr <2 x i64> %i.cls, splat (i64 32)
  %i.clu = lshr <2 x i64> %i.clp, splat (i64 32)
  %i.clv = mul nuw <2 x i64> %i.clu, %i.btq
  %i.clw = bitcast <2 x i64> %i.clt to <8 x i16>
  %i.clx = bitcast <2 x i64> %i.clv to <8 x i16>
  %i.cly = shufflevector <8 x i16> %i.clw, <8 x i16> %i.clx, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.clz = bitcast <8 x i16> %i.cly to <4 x i32>  ; 2 uses
  %i.cma = sub <4 x i32> %i.clo, %i.clz
  %i.cmb = lshr <4 x i32> %i.cma, %i.btr
  %i.cmc = add <4 x i32> %i.cmb, %i.clz
  %i.cmd = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.cmc, <4 x i32> %i.aio) ; 2 uses
  %i.cme = mul <4 x i32> %i.cmd, %i.btt
  %i.cmf = sub <4 x i32> %i.clo, %i.cme           ; 4 uses
  %i.cmg = bitcast <4 x i32> %i.cmf to <2 x i64>
  %i.cmh = bitcast <4 x i32> %i.cmf to <2 x i64>
  %i.cmi = and <2 x i64> %i.cmh, splat (i64 4294967295)
  %i.cmj = mul nuw <2 x i64> %i.cmi, %i.btv
  %i.cmk = lshr <2 x i64> %i.cmj, splat (i64 32)
  %i.cml = lshr <2 x i64> %i.cmg, splat (i64 32)
  %i.cmm = mul nuw <2 x i64> %i.cml, %i.btv
  %i.cmn = bitcast <2 x i64> %i.cmk to <8 x i16>
  %i.cmo = bitcast <2 x i64> %i.cmm to <8 x i16>
  %i.cmp = shufflevector <8 x i16> %i.cmn, <8 x i16> %i.cmo, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.cmq = bitcast <8 x i16> %i.cmp to <4 x i32>  ; 2 uses
  %i.cmr = sub <4 x i32> %i.cmf, %i.cmq
  %i.cms = lshr <4 x i32> %i.cmr, %i.btw
  %i.cmt = add <4 x i32> %i.cms, %i.cmq
  %i.cmu = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.cmt, <4 x i32> %i.ajg) ; 2 uses
  %i.cmv = mul <4 x i32> %i.cmu, %i.bty
  %i.cmw = sub <4 x i32> %i.cmf, %i.cmv
  %i.cmx = mul <4 x i32> %i.cmd, %i.bub
  %i.cmy = mul <4 x i32> %i.cmw, %i.bud
  %i.cmz = mul <4 x i32> %i.cmu, %i.buf
  %i.cna = add <4 x i32> %i.cmx, %i.clg
  %i.cnb = add <4 x i32> %i.cna, %i.cmz
  %i.cnc = add <4 x i32> %i.cnb, %i.cmy
  %i.cnd = load ptr, ptr %0, align 8, !tbaa !28
  %i.cne = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.cnd, <4 x i32> %i.cnc, <4 x i32> splat (i32 -1), i8 1)
  %i.cnf = trunc <4 x i32> %i.cne to <4 x i16>
  %i.cng = bitcast <4 x i16> %i.cnf to <8 x i8>
  %i.cnh = add <8 x i8> %i.cng, splat (i8 127)
  %i.cni = shufflevector <8 x i8> %i.cnh, <8 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cnj = bitcast <16 x i8> %i.cni to <2 x i64>
  %i.cnk = extractelement <2 x i64> %i.cnj, i64 0
  store i64 %i.cnk, ptr %.40442.i.i, align 1, !tbaa !30
  %i.cnl = getelementptr inbounds nuw i8, ptr %.40442.i.i, i64 8 ; 2 uses
  %i.cnm = add nuw nsw i32 %.01672441.i.i, 4      ; 3 uses
  %i.cnn = or disjoint i32 %i.cnm, 3
  %i.cno = icmp slt i32 %i.cnn, %5
  br i1 %i.cno, label %bb.af, label %.preheader254.i.i, !llvm.loop !525

.preheader252.i.i:                                ; preds = %bb.ag, %.preheader254.i.i
  %.11673.lcssa.i.i = phi i32 [ %.01672.lcssa.i.i, %.preheader254.i.i ], [ %i.cpg, %bb.ag ] ; 2 uses
  %.41.lcssa.i.i = phi ptr [ %.40.lcssa.i.i, %.preheader254.i.i ], [ %i.cpf, %bb.ag ] ; 2 uses
  %i.cnp = icmp slt i32 %.11673.lcssa.i.i, %5
  br i1 %i.cnp, label %.lr.ph453.i.i, label %.loopexit251.i.i

.lr.ph453.i.i:                                    ; preds = %.preheader252.i.i
  %i.cnq = extractelement <2 x i32> %i.cld, i64 0
  %i.cnr = sext i32 %i.cnq to i64
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ag, %.lr.ph448.i.i
  %.41447.i.i = phi ptr [ %.40.lcssa.i.i, %.lr.ph448.i.i ], [ %i.cpf, %bb.ag ] ; 5 uses
  %.11673446.i.i = phi i32 [ %.01672.lcssa.i.i, %.lr.ph448.i.i ], [ %i.cpg, %bb.ag ] ; 2 uses
  %i.cns = add nsw i32 %.11673446.i.i, %4         ; 3 uses
  %i.cnt = add nsw i32 %i.cns, 1                  ; 2 uses
  %i.cnu = srem i32 %i.cns, %i.ahb                ; 2 uses
  %i.cnv = srem i32 %i.cnt, %i.ahb                ; 2 uses
  %i.cnw = sdiv i32 %i.cnu, %6
  %i.cnx = sdiv i32 %i.cnv, %6
  %i.cny = srem i32 %i.cnu, %6
  %i.cnz = srem i32 %i.cnv, %6
  %i.coa = mul i32 %i.cnw, %.scalar596.i.i
  %i.cob = mul nsw i32 %i.cny, %8
  %i.coc = add nsw i32 %i.cob, %i.coa
  %i.cod = sext i32 %i.coc to i64
  %i.coe = insertelement <2 x i32> poison, i32 %i.cns, i64 0
  %i.cof = insertelement <2 x i32> %i.coe, i32 %i.cnt, i64 1
  %i.cog = sdiv <2 x i32> %i.cof, %i.bvl
  %i.coh = sext <2 x i32> %i.cog to <2 x i64>
  %i.coi = mul <2 x i64> %i.bvj, %i.coh           ; 2 uses
  %i.coj = mul i32 %i.cnx, %.scalar596.i.i
  %i.cok = mul nsw i32 %i.cnz, %8
  %i.col = add nsw i32 %i.cok, %i.coj
  %i.com = sext i32 %i.col to i64
  %i.con = load ptr, ptr %0, align 8, !tbaa !28   ; 2 uses
  %i.coo = extractelement <2 x i64> %i.coi, i64 0
  %i.cop = getelementptr i8, ptr %i.con, i64 %i.coo
  %i.coq = getelementptr i8, ptr %i.cop, i64 %i.clk
  %i.cor = getelementptr i8, ptr %i.coq, i64 %i.cod ; 2 uses
  %i.cos = extractelement <2 x i64> %i.coi, i64 1
  %i.cot = getelementptr i8, ptr %i.con, i64 %i.cos
  %i.cou = getelementptr i8, ptr %i.cot, i64 %i.clk
  %i.cov = getelementptr i8, ptr %i.cou, i64 %i.com ; 2 uses
  %i.cow = load i8, ptr %i.cor, align 1, !tbaa !30
  store i8 %i.cow, ptr %.41447.i.i, align 1, !tbaa !30
  %i.cox = load i8, ptr %i.cov, align 1, !tbaa !30
  %i.coy = getelementptr inbounds nuw i8, ptr %.41447.i.i, i64 1
  store i8 %i.cox, ptr %i.coy, align 1, !tbaa !30
  %i.coz = getelementptr inbounds nuw i8, ptr %i.cor, i64 1
  %i.cpa = load i8, ptr %i.coz, align 1, !tbaa !30
  %i.cpb = getelementptr inbounds nuw i8, ptr %.41447.i.i, i64 2
  store i8 %i.cpa, ptr %i.cpb, align 1, !tbaa !30
  %i.cpc = getelementptr inbounds nuw i8, ptr %i.cov, i64 1
  %i.cpd = load i8, ptr %i.cpc, align 1, !tbaa !30
  %i.cpe = getelementptr inbounds nuw i8, ptr %.41447.i.i, i64 3
  store i8 %i.cpd, ptr %i.cpe, align 1, !tbaa !30
  %i.cpf = getelementptr inbounds nuw i8, ptr %.41447.i.i, i64 4 ; 2 uses
  %i.cpg = add nuw nsw i32 %.11673446.i.i, 2      ; 3 uses
  %i.cph = or disjoint i32 %i.cpg, 1
  %i.cpi = icmp slt i32 %i.cph, %5
  br i1 %i.cpi, label %bb.ag, label %.preheader252.i.i, !llvm.loop !526

bb.ah:                                            ; preds = %bb.ah, %.lr.ph453.i.i
  %.42452.i.i = phi ptr [ %.41.lcssa.i.i, %.lr.ph453.i.i ], [ %i.cqf, %bb.ah ] ; 3 uses
  %.21674451.i.i = phi i32 [ %.11673.lcssa.i.i, %.lr.ph453.i.i ], [ %i.cqg, %bb.ah ] ; 2 uses
  %i.cpj = add nsw i32 %.21674451.i.i, %4         ; 2 uses
  %i.cpk = srem i32 %i.cpj, %i.ahb                ; 2 uses
  %i.cpl = insertelement <2 x i32> poison, i32 %i.cpj, i64 0
  %i.cpm = insertelement <2 x i32> %i.cpl, i32 %i.cpk, i64 1
  %i.cpn = sdiv <2 x i32> %i.cpm, %i.bvn          ; 2 uses
  %i.cpo = srem i32 %i.cpk, %6
  %i.cpp = extractelement <2 x i32> %i.cpn, i64 0
  %i.cpq = sext i32 %i.cpp to i64
  %i.cpr = mul i64 %i.l, %i.cpq
  %i.cps = extractelement <2 x i32> %i.cpn, i64 1
  %i.cpt = mul i32 %i.cps, %.scalar596.i.i
  %i.cpu = mul nsw i32 %i.cpo, %8
  %i.cpv = add nsw i32 %i.cpu, %i.cpt
  %i.cpw = sext i32 %i.cpv to i64
  %i.cpx = load ptr, ptr %0, align 8, !tbaa !28
  %i.cpy = getelementptr i8, ptr %i.cpx, i64 %i.cpr
  %i.cpz = getelementptr i8, ptr %i.cpy, i64 %i.cnr
  %i.cqa = getelementptr i8, ptr %i.cpz, i64 %i.cpw ; 2 uses
  %i.cqb = load i8, ptr %i.cqa, align 1, !tbaa !30
  store i8 %i.cqb, ptr %.42452.i.i, align 1, !tbaa !30
  %i.cqc = getelementptr inbounds nuw i8, ptr %i.cqa, i64 1
  %i.cqd = load i8, ptr %i.cqc, align 1, !tbaa !30
  %i.cqe = getelementptr inbounds nuw i8, ptr %.42452.i.i, i64 1
  store i8 %i.cqd, ptr %i.cqe, align 1, !tbaa !30
  %i.cqf = getelementptr inbounds nuw i8, ptr %.42452.i.i, i64 2 ; 2 uses
  %i.cqg = add nuw nsw i32 %.21674451.i.i, 1      ; 2 uses
  %exitcond583.not.i.i = icmp eq i32 %i.cqg, %5
  br i1 %exitcond583.not.i.i, label %.loopexit251.i.i, label %bb.ah, !llvm.loop !527

.loopexit253.i.i:                                 ; preds = %bb.ae
  br i1 %brmerge503.i.i, label %.loopexit251.i.i, label %.lr.ph457.i.i

.lr.ph457.i.i:                                    ; preds = %.loopexit253.i.i
  %i.cqh = extractelement <2 x i32> %i.cld, i64 0
  %i.cqi = sext i32 %i.cqh to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.lr.ph457.i.i
  %.44456.i.i = phi ptr [ %.39460.i.i, %.lr.ph457.i.i ], [ %i.crd, %bb.ai ] ; 2 uses
  %.01675455.i.i = phi i32 [ 0, %.lr.ph457.i.i ], [ %i.cre, %bb.ai ] ; 2 uses
  %i.cqj = add nsw i32 %.01675455.i.i, %i.bui     ; 2 uses
  %i.cqk = sdiv i32 %i.cqj, %i.ahb
  %i.cql = srem i32 %i.cqj, %i.ahb                ; 2 uses
  %i.cqm = sext i32 %i.cqk to i64
  %i.cqn = mul i64 %i.l, %i.cqm
  %i.cqo = add i64 %i.cqn, %i.cqi
  %i.cqp = srem i32 %i.cql, %6
  %i.cqq = insertelement <2 x i32> poison, i32 %i.cqp, i64 0
  %i.cqr = insertelement <2 x i32> %i.cqq, i32 %i.cql, i64 1
  %i.cqs = sdiv <2 x i32> %i.cqr, %i.bvf
  %i.cqt = mul <2 x i32> %i.cqs, %i.bvh
  %i.cqu = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.cqt)
  %i.cqv = sext i32 %i.cqu to i64
  %i.cqw = add i64 %i.cqo, %i.cqv
  %i.cqx = shl i64 %i.cqw, 3
  %i.cqy = load ptr, ptr %0, align 8, !tbaa !28
  %i.cqz = getelementptr inbounds nuw i8, ptr %i.cqy, i64 %i.cqx
  %i.cra = load <16 x i8>, ptr %i.cqz, align 1, !tbaa !30
  %i.crb = add <16 x i8> %i.cra, splat (i8 127)
  %i.crc = shufflevector <16 x i8> %i.crb, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <16 x i8> %i.crc, ptr %.44456.i.i, align 1, !tbaa !30
  %i.crd = getelementptr inbounds nuw i8, ptr %.44456.i.i, i64 16 ; 2 uses
  %i.cre = add nuw nsw i32 %.01675455.i.i, 1      ; 2 uses
  %exitcond584.not.i.i = icmp eq i32 %i.cre, %i.buh
  br i1 %exitcond584.not.i.i, label %.loopexit251.i.i, label %bb.ai, !llvm.loop !528

bb.aj:                                            ; preds = %bb.ad
  br i1 %i.btn, label %.preheader261.i.i, label %.loopexit259.i.i

.preheader261.i.i:                                ; preds = %bb.aj
  br i1 %i.bto, label %.lr.ph424.i.i.preheader, label %.preheader260.i.i

.lr.ph424.i.i.preheader:                          ; preds = %.preheader261.i.i
  %i.crf = extractelement <2 x i32> %i.cld, i64 0 ; 4 uses
  %i.crg = extractelement <2 x i32> %i.cld, i64 1 ; 4 uses
  br label %.lr.ph424.i.i

.preheader260.i.i:                                ; preds = %.lr.ph424.i.i, %.preheader261.i.i
  %.01676.lcssa.i.i = phi i32 [ 0, %.preheader261.i.i ], [ %i.cuy, %.lr.ph424.i.i ] ; 3 uses
  %.46.lcssa.i.i = phi ptr [ %.39460.i.i, %.preheader261.i.i ], [ %i.cux, %.lr.ph424.i.i ] ; 2 uses
  %i.crh = or disjoint i32 %.01676.lcssa.i.i, 1
  %i.cri = icmp slt i32 %i.crh, %5
  br i1 %i.cri, label %.lr.ph429.i.i.preheader, label %.preheader258.i.i

.lr.ph429.i.i.preheader:                          ; preds = %.preheader260.i.i
  %i.crj = shufflevector <2 x i32> %i.cld, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %.lr.ph429.i.i

.lr.ph424.i.i:                                    ; preds = %.lr.ph424.i.i.preheader, %.lr.ph424.i.i
  %.46423.i.i = phi ptr [ %i.cux, %.lr.ph424.i.i ], [ %.39460.i.i, %.lr.ph424.i.i.preheader ] ; 9 uses
  %.01676422.i.i = phi i32 [ %i.cuy, %.lr.ph424.i.i ], [ 0, %.lr.ph424.i.i.preheader ] ; 2 uses
  %i.crk = add nsw i32 %.01676422.i.i, %4
  %i.crl = insertelement <4 x i32> poison, i32 %i.crk, i64 0
  %i.crm = shufflevector <4 x i32> %i.crl, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.crn = add <4 x i32> %i.crm, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.cro = bitcast <4 x i32> %i.crn to <2 x i64>
  %i.crp = bitcast <4 x i32> %i.crn to <2 x i64>
  %i.crq = and <2 x i64> %i.crp, splat (i64 4294967295)
  %i.crr = mul nuw <2 x i64> %i.crq, %i.btq
  %i.crs = lshr <2 x i64> %i.crr, splat (i64 32)
  %i.crt = lshr <2 x i64> %i.cro, splat (i64 32)
  %i.cru = mul nuw <2 x i64> %i.crt, %i.btq
  %i.crv = bitcast <2 x i64> %i.crs to <8 x i16>
  %i.crw = bitcast <2 x i64> %i.cru to <8 x i16>
  %i.crx = shufflevector <8 x i16> %i.crv, <8 x i16> %i.crw, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.cry = bitcast <8 x i16> %i.crx to <4 x i32>  ; 2 uses
  %i.crz = sub <4 x i32> %i.crn, %i.cry
  %i.csa = lshr <4 x i32> %i.crz, %i.btr
  %i.csb = add <4 x i32> %i.csa, %i.cry
  %i.csc = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.csb, <4 x i32> %i.aio) ; 2 uses
  %i.csd = mul <4 x i32> %i.csc, %i.btt
  %i.cse = sub <4 x i32> %i.crn, %i.csd           ; 4 uses
  %i.csf = bitcast <4 x i32> %i.cse to <2 x i64>
  %i.csg = bitcast <4 x i32> %i.cse to <2 x i64>
  %i.csh = and <2 x i64> %i.csg, splat (i64 4294967295)
  %i.csi = mul nuw <2 x i64> %i.csh, %i.btv
  %i.csj = lshr <2 x i64> %i.csi, splat (i64 32)
  %i.csk = lshr <2 x i64> %i.csf, splat (i64 32)
  %i.csl = mul nuw <2 x i64> %i.csk, %i.btv
  %i.csm = bitcast <2 x i64> %i.csj to <8 x i16>
  %i.csn = bitcast <2 x i64> %i.csl to <8 x i16>
  %i.cso = shufflevector <8 x i16> %i.csm, <8 x i16> %i.csn, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.csp = bitcast <8 x i16> %i.cso to <4 x i32>  ; 2 uses
  %i.csq = sub <4 x i32> %i.cse, %i.csp
  %i.csr = lshr <4 x i32> %i.csq, %i.btw
  %i.css = add <4 x i32> %i.csr, %i.csp
  %i.cst = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.css, <4 x i32> %i.ajg) ; 2 uses
  %i.csu = mul <4 x i32> %i.cst, %i.bty
  %i.csv = sub <4 x i32> %i.cse, %i.csu
  %i.csw = mul <4 x i32> %i.csc, %i.bub
  %i.csx = mul <4 x i32> %i.csv, %i.bud
  %i.csy = mul <4 x i32> %i.cst, %i.buf
  %i.csz = add <4 x i32> %i.csy, %i.csw
  %i.cta = add <4 x i32> %i.csz, %i.csx           ; 4 uses
  %.sroa.09.0.vec.extract.i.i = extractelement <4 x i32> %i.cta, i64 0 ; 2 uses
  %i.ctb = add nsw i32 %.sroa.09.0.vec.extract.i.i, %i.crf
  %i.ctc = add nsw i32 %.sroa.09.0.vec.extract.i.i, %i.crg
  %.sroa.09.4.vec.extract.i.i = extractelement <4 x i32> %i.cta, i64 1 ; 2 uses
  %i.ctd = add nsw i32 %.sroa.09.4.vec.extract.i.i, %i.crf
  %i.cte = add nsw i32 %.sroa.09.4.vec.extract.i.i, %i.crg
  %.sroa.09.8.vec.extract.i.i = extractelement <4 x i32> %i.cta, i64 2 ; 2 uses
  %i.ctf = add nsw i32 %.sroa.09.8.vec.extract.i.i, %i.crf
  %i.ctg = add nsw i32 %.sroa.09.8.vec.extract.i.i, %i.crg
  %.sroa.09.12.vec.extract.i.i = extractelement <4 x i32> %i.cta, i64 3 ; 2 uses
  %i.cth = add nsw i32 %.sroa.09.12.vec.extract.i.i, %i.crf
  %i.cti = add nsw i32 %.sroa.09.12.vec.extract.i.i, %i.crg
  %i.ctj = load ptr, ptr %0, align 8, !tbaa !28   ; 8 uses
  %i.ctk = sext i32 %i.ctb to i64
  %i.ctl = getelementptr inbounds i8, ptr %i.ctj, i64 %i.ctk
  %i.ctm = sext i32 %i.ctc to i64
  %i.ctn = getelementptr inbounds i8, ptr %i.ctj, i64 %i.ctm
  %i.cto = sext i32 %i.ctd to i64
  %i.ctp = getelementptr inbounds i8, ptr %i.ctj, i64 %i.cto
  %i.ctq = sext i32 %i.cte to i64
  %i.ctr = getelementptr inbounds i8, ptr %i.ctj, i64 %i.ctq
  %i.cts = sext i32 %i.ctf to i64
  %i.ctt = getelementptr inbounds i8, ptr %i.ctj, i64 %i.cts
  %i.ctu = sext i32 %i.ctg to i64
  %i.ctv = getelementptr inbounds i8, ptr %i.ctj, i64 %i.ctu
  %i.ctw = sext i32 %i.cth to i64
  %i.ctx = getelementptr inbounds i8, ptr %i.ctj, i64 %i.ctw
  %i.cty = sext i32 %i.cti to i64
  %i.ctz = getelementptr inbounds i8, ptr %i.ctj, i64 %i.cty
  %i.cua = load i8, ptr %i.ctl, align 1, !tbaa !30
  %i.cub = add i8 %i.cua, 127
  store i8 %i.cub, ptr %.46423.i.i, align 1, !tbaa !30
  %i.cuc = load i8, ptr %i.ctp, align 1, !tbaa !30
  %i.cud = add i8 %i.cuc, 127
  %i.cue = getelementptr inbounds nuw i8, ptr %.46423.i.i, i64 1
  store i8 %i.cud, ptr %i.cue, align 1, !tbaa !30
  %i.cuf = load i8, ptr %i.ctt, align 1, !tbaa !30
  %i.cug = add i8 %i.cuf, 127
  %i.cuh = getelementptr inbounds nuw i8, ptr %.46423.i.i, i64 2
  store i8 %i.cug, ptr %i.cuh, align 1, !tbaa !30
  %i.cui = load i8, ptr %i.ctx, align 1, !tbaa !30
  %i.cuj = add i8 %i.cui, 127
  %i.cuk = getelementptr inbounds nuw i8, ptr %.46423.i.i, i64 3
  store i8 %i.cuj, ptr %i.cuk, align 1, !tbaa !30
  %i.cul = load i8, ptr %i.ctn, align 1, !tbaa !30
  %i.cum = add i8 %i.cul, 127
  %i.cun = getelementptr inbounds nuw i8, ptr %.46423.i.i, i64 4
  store i8 %i.cum, ptr %i.cun, align 1, !tbaa !30
  %i.cuo = load i8, ptr %i.ctr, align 1, !tbaa !30
  %i.cup = add i8 %i.cuo, 127
  %i.cuq = getelementptr inbounds nuw i8, ptr %.46423.i.i, i64 5
  store i8 %i.cup, ptr %i.cuq, align 1, !tbaa !30
  %i.cur = load i8, ptr %i.ctv, align 1, !tbaa !30
  %i.cus = add i8 %i.cur, 127
  %i.cut = getelementptr inbounds nuw i8, ptr %.46423.i.i, i64 6
  store i8 %i.cus, ptr %i.cut, align 1, !tbaa !30
  %i.cuu = load i8, ptr %i.ctz, align 1, !tbaa !30
  %i.cuv = add i8 %i.cuu, 127
  %i.cuw = getelementptr inbounds nuw i8, ptr %.46423.i.i, i64 7
  store i8 %i.cuv, ptr %i.cuw, align 1, !tbaa !30
  %i.cux = getelementptr inbounds nuw i8, ptr %.46423.i.i, i64 8 ; 2 uses
  %i.cuy = add nuw nsw i32 %.01676422.i.i, 4      ; 3 uses
  %i.cuz = or disjoint i32 %i.cuy, 3
  %i.cva = icmp slt i32 %i.cuz, %5
  br i1 %i.cva, label %.lr.ph424.i.i, label %.preheader260.i.i, !llvm.loop !529

.preheader258.i.i:                                ; preds = %.lr.ph429.i.i, %.preheader260.i.i
  %.11677.lcssa.i.i = phi i32 [ %.01676.lcssa.i.i, %.preheader260.i.i ], [ %i.cwq, %.lr.ph429.i.i ] ; 2 uses
  %.47.lcssa.i.i = phi ptr [ %.46.lcssa.i.i, %.preheader260.i.i ], [ %i.cwp, %.lr.ph429.i.i ] ; 2 uses
  %i.cvb = icmp slt i32 %.11677.lcssa.i.i, %5
  br i1 %i.cvb, label %.lr.ph434.i.i, label %.loopexit251.i.i

.lr.ph434.i.i:                                    ; preds = %.preheader258.i.i
  %i.cvc = extractelement <2 x i32> %i.cld, i64 0
  %i.cvd = extractelement <2 x i32> %i.cld, i64 1
  %i.cve = sext i32 %i.cvc to i64
  %i.cvf = sext i32 %i.cvd to i64
  br label %bb.ak

.lr.ph429.i.i:                                    ; preds = %.lr.ph429.i.i.preheader, %.lr.ph429.i.i
  %.47428.i.i = phi ptr [ %i.cwp, %.lr.ph429.i.i ], [ %.46.lcssa.i.i, %.lr.ph429.i.i.preheader ] ; 5 uses
  %.11677427.i.i = phi i32 [ %i.cwq, %.lr.ph429.i.i ], [ %.01676.lcssa.i.i, %.lr.ph429.i.i.preheader ] ; 2 uses
  %i.cvg = add nsw i32 %.11677427.i.i, %4         ; 2 uses
  %i.cvh = add nsw i32 %i.cvg, 1
  %i.cvi = load ptr, ptr %0, align 8, !tbaa !28   ; 4 uses
  %i.cvj = insertelement <2 x i32> poison, i32 %i.cvg, i64 0
  %i.cvk = insertelement <2 x i32> %i.cvj, i32 %i.cvh, i64 1
  %.frozen824 = freeze <2 x i32> %i.cvk           ; 2 uses
  %i.cvl = sdiv <2 x i32> %.frozen824, %i.buu     ; 2 uses
  %i.cvm = mul <2 x i32> %i.cvl, %i.buu
  %.decomposed825 = sub <2 x i32> %.frozen824, %i.cvm ; 2 uses
  %i.cvn = sdiv <2 x i32> %.decomposed825, %i.buw ; 2 uses
  %i.cvo = mul <2 x i32> %i.cvn, %i.buw
  %.decomposed826 = sub <2 x i32> %.decomposed825, %i.cvo
  %i.cvp = mul <2 x i32> %i.cvn, %i.buy
  %i.cvq = mul nsw <2 x i32> %.decomposed826, %i.bva
  %i.cvr = mul <2 x i32> %i.cvl, %i.bvc
end_hunk_2
