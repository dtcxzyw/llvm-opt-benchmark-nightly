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
  %i.agv = load i32, ptr %i.agu, align 8, !tbaa !17 ; 10 uses
  %i.agw = add nsw i32 %6, -1                     ; 2 uses
  %i.agx = mul nsw i32 %8, %i.agw
  %.neg.i.i = xor i32 %i.agx, -1
  %i.agy = add i32 %i.agt, %.neg.i.i
  %i.agz = sdiv i32 %i.agy, %10                   ; 3 uses
  %i.aha = add nsw i32 %i.agz, 1                  ; 8 uses
  %i.ahb = mul nsw i32 %7, %6                     ; 54 uses
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
  %i.akv = shufflevector <2 x i32> %i.aku, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.akw = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.akx = shufflevector <2 x i32> %i.akw, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aky = insertelement <2 x i32> poison, i32 %i.akd, i64 0
  %i.akz = shufflevector <2 x i32> %i.aky, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ala = insertelement <2 x i32> <i32 poison, i32 1>, i32 %6, i64 0
  %i.alb = insertelement <2 x i32> poison, i32 %.scalar588.i.i, i64 0
  %i.alc = insertelement <2 x i32> %i.alb, i32 %8, i64 1
  %i.ald = insertelement <2 x i32> poison, i32 %i.ahb, i64 0
  %i.ale = insertelement <2 x i32> %i.ald, i32 %6, i64 1
  %i.alf = insertelement <2 x i32> <i32 1, i32 poison>, i32 %6, i64 1 ; 2 uses
  %i.alg = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.alh = insertelement <2 x i32> %i.alg, i32 %.scalar588.i.i, i64 1 ; 2 uses
  %i.ali = insertelement <2 x i32> poison, i32 %i.ahb, i64 0
  %i.alj = shufflevector <2 x i32> %i.ali, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.alk = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.all = shufflevector <2 x i32> %i.alk, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.alm = insertelement <2 x i64> poison, i64 %i.l, i64 0
  %i.aln = shufflevector <2 x i64> %i.alm, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.alo = insertelement <2 x i32> <i32 1, i32 poison>, i32 %6, i64 1
  %i.alp = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.alq = insertelement <2 x i32> %i.alp, i32 %.scalar588.i.i, i64 1
  br label %bb.i

.preheader288.i.i:                                ; preds = %.loopexit290.i.i, %_ZN17FastDivider_epu32C2Ej.exit.i.i
  %.01640.lcssa.i.i = phi i32 [ 0, %_ZN17FastDivider_epu32C2Ej.exit.i.i ], [ %i.bdb, %.loopexit290.i.i ] ; 3 uses
  %.0.lcssa.i33.i = phi ptr [ %.val, %_ZN17FastDivider_epu32C2Ej.exit.i.i ], [ %.12.i.i, %.loopexit290.i.i ] ; 2 uses
  %i.alr = or disjoint i32 %.01640.lcssa.i.i, 7
  %i.als = icmp slt i32 %i.alr, %3
  br i1 %i.als, label %.lr.ph378.i.i, label %.preheader275.i.i

.lr.ph378.i.i:                                    ; preds = %.preheader288.i.i
  %i.alt = shufflevector <8 x i64> %i.ahs, <8 x i64> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.alu = and <4 x i64> %i.alt, splat (i64 4294967295) ; 2 uses
  %i.alv = shufflevector <4 x i32> %i.aht, <4 x i32> poison, <8 x i32> zeroinitializer
  %i.alw = insertelement <8 x i32> poison, i32 %i.aha, i64 0
  %i.alx = shufflevector <8 x i32> %i.alw, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aly = insertelement <8 x i32> poison, i32 %10, i64 0
  %i.alz = shufflevector <8 x i32> %i.aly, <8 x i32> poison, <8 x i32> zeroinitializer
  %.scalar590.i.i = mul i32 %i.agt, %11
  %i.ama = insertelement <8 x i32> poison, i32 %.scalar590.i.i, i64 0
  %i.amb = shufflevector <8 x i32> %i.ama, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.amc = icmp eq i32 %i.agv, 1                  ; 2 uses
  %i.amd = icmp sgt i32 %5, 3                     ; 2 uses
  %i.ame = shufflevector <8 x i64> %i.aim, <8 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.amf = and <2 x i64> %i.ame, splat (i64 4294967295) ; 4 uses
  %i.amg = shufflevector <4 x i32> %i.ain, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.amh = insertelement <4 x i32> poison, i32 %i.ahb, i64 0
  %i.ami = shufflevector <4 x i32> %i.amh, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.amj = shufflevector <8 x i64> %i.aje, <8 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.amk = and <2 x i64> %i.amj, splat (i64 4294967295) ; 4 uses
  %i.aml = shufflevector <4 x i32> %i.ajf, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.amm = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.amn = shufflevector <4 x i32> %i.amm, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.amo = trunc i64 %i.l to i32                  ; 4 uses
  %i.amp = insertelement <4 x i32> poison, i32 %i.amo, i64 0
  %i.amq = shufflevector <4 x i32> %i.amp, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.amr = insertelement <4 x i32> poison, i32 %8, i64 0
  %i.ams = shufflevector <4 x i32> %i.amr, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %.scalar591.i.i = mul i32 %i.agt, %9            ; 7 uses
  %i.amt = insertelement <4 x i32> poison, i32 %.scalar591.i.i, i64 0
  %i.amu = shufflevector <4 x i32> %i.amt, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.amv = icmp ne i32 %i.agv, 8
end_hunk_0
begin_hunk_1_@_ZN4ncnn45convolution_im2col_input_tile_int8_avx512vnniERKNS_3MatERS0_iiiiiiiiii:bb.a
  %i.boi = shufflevector <4 x i32> %i.boh, <4 x i32> poison, <8 x i32> zeroinitializer
  %i.boj = add <8 x i32> %i.boi, %i.bgm
  %i.bok = shufflevector <4 x i32> %i.boh, <4 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.bol = add <8 x i32> %i.bok, %i.bgm
  %i.bom = shufflevector <4 x i32> %i.boh, <4 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.bon = add <8 x i32> %i.bom, %i.bgm
  %i.boo = shufflevector <4 x i32> %i.boh, <4 x i32> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.bop = add <8 x i32> %i.boo, %i.bgm
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
  %.11658.lcssa.i.i = phi i32 [ %.01657.lcssa.i.i, %.preheader286.i.i ], [ %i.bqr, %.lr.ph347.i.i ] ; 2 uses
  %.21.lcssa.i35.i = phi ptr [ %.20.lcssa.i.i, %.preheader286.i.i ], [ %i.bqq, %.lr.ph347.i.i ] ; 2 uses
  %i.bpm = icmp slt i32 %.11658.lcssa.i.i, %5
  br i1 %i.bpm, label %.lr.ph352.i.i, label %.loopexit277.i.i

.lr.ph347.i.i:                                    ; preds = %.preheader286.i.i, %.lr.ph347.i.i
  %.21346.i.i = phi ptr [ %i.bqq, %.lr.ph347.i.i ], [ %.20.lcssa.i.i, %.preheader286.i.i ] ; 2 uses
  %.11658345.i.i = phi i32 [ %i.bqr, %.lr.ph347.i.i ], [ %.01657.lcssa.i.i, %.preheader286.i.i ] ; 2 uses
  %i.bpn = add nsw i32 %.11658345.i.i, %4         ; 2 uses
  %i.bpo = add nsw i32 %i.bpn, 1
  %i.bpp = insertelement <2 x i32> poison, i32 %i.bpn, i64 0
  %i.bpq = insertelement <2 x i32> %i.bpp, i32 %i.bpo, i64 1
  %.frozen827 = freeze <2 x i32> %i.bpq           ; 2 uses
  %i.bpr = sdiv <2 x i32> %.frozen827, %i.ang     ; 2 uses
  %i.bps = mul <2 x i32> %i.bpr, %i.ang
  %.decomposed828 = sub <2 x i32> %.frozen827, %i.bps ; 3 uses
  %i.bpt = srem <2 x i32> %.decomposed828, %i.ani ; 2 uses
  %i.bpu = shufflevector <2 x i32> %i.bpt, <2 x i32> %.decomposed828, <2 x i32> <i32 2, i32 0>
  %i.bpv = sdiv <2 x i32> %i.bpu, %i.anc
  %i.bpw = mul <2 x i32> %i.bpv, %i.ane           ; 2 uses
  %i.bpx = shufflevector <2 x i32> %i.bpt, <2 x i32> %.decomposed828, <2 x i32> <i32 3, i32 1>
  %i.bpy = sdiv <2 x i32> %i.bpx, %i.anc
  %i.bpz = mul <2 x i32> %i.bpy, %i.ane           ; 2 uses
  %i.bqa = mul <2 x i32> %i.bpr, %i.ank           ; 2 uses
  %foldExtExtBinop521 = add <2 x i32> %i.bpw, %i.bqa
  %i.bqb = shufflevector <2 x i32> %foldExtExtBinop521, <2 x i32> poison, <8 x i32> zeroinitializer
  %i.bqc = shufflevector <2 x i32> %i.bpw, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.bqd = add <8 x i32> %i.bqb, %i.bqc
  %i.bqe = add <8 x i32> %i.bqd, %i.bgm
  %i.bqf = shufflevector <2 x i32> %i.bpz, <2 x i32> poison, <8 x i32> zeroinitializer
  %i.bqg = shufflevector <2 x i32> %i.bqa, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.bqh = add <8 x i32> %i.bqf, %i.bqg
  %i.bqi = shufflevector <2 x i32> %i.bpz, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.bqj = add <8 x i32> %i.bqh, %i.bqi
  %i.bqk = add <8 x i32> %i.bqj, %i.bgm
  %i.bql = load ptr, ptr %0, align 8, !tbaa !28   ; 2 uses
  %i.bqm = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.bql, <8 x i32> %i.bqe, <8 x i32> splat (i32 -1), i8 1)
  %i.bqn = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.bql, <8 x i32> %i.bqk, <8 x i32> splat (i32 -1), i8 1)
  %i.bqo = shufflevector <8 x i32> %i.bqm, <8 x i32> %i.bqn, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bqp = trunc <16 x i32> %i.bqo to <16 x i8>
  store <16 x i8> %i.bqp, ptr %.21346.i.i, align 1, !tbaa !30
  %i.bqq = getelementptr inbounds nuw i8, ptr %.21346.i.i, i64 16 ; 2 uses
  %i.bqr = add nuw nsw i32 %.11658345.i.i, 2      ; 3 uses
  %i.bqs = or disjoint i32 %i.bqr, 1
  %i.bqt = icmp slt i32 %i.bqs, %5
  br i1 %i.bqt, label %.lr.ph347.i.i, label %.preheader284.i.i, !llvm.loop !512

.lr.ph352.i.i:                                    ; preds = %.preheader284.i.i, %.lr.ph352.i.i
  %.22351.i.i = phi ptr [ %i.brq, %.lr.ph352.i.i ], [ %.21.lcssa.i35.i, %.preheader284.i.i ] ; 2 uses
  %.21659350.i.i = phi i32 [ %i.brr, %.lr.ph352.i.i ], [ %.11658.lcssa.i.i, %.preheader284.i.i ] ; 2 uses
  %i.bqu = add nsw i32 %.21659350.i.i, %4         ; 2 uses
  %i.bqv = sdiv i32 %i.bqu, %i.ahb
  %i.bqw = srem i32 %i.bqu, %i.ahb                ; 2 uses
  %i.bqx = srem i32 %i.bqw, %6
  %i.bqy = insertelement <2 x i32> poison, i32 %i.bqw, i64 0
  %i.bqz = insertelement <2 x i32> %i.bqy, i32 %i.bqx, i64 1
  %i.bra = sdiv <2 x i32> %i.bqz, %i.anl
  %i.brb = mul <2 x i32> %i.bra, %i.ann           ; 2 uses
  %i.brc = mul i32 %i.bqv, %i.amo
  %i.brd = extractelement <2 x i32> %i.brb, i64 0
  %i.bre = add i32 %i.brd, %i.brc
  %i.brf = extractelement <2 x i32> %i.brb, i64 1
  %i.brg = add i32 %i.bre, %i.brf
  %i.brh = insertelement <8 x i32> poison, i32 %i.brg, i64 0
  %i.bri = shufflevector <8 x i32> %i.brh, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.brj = add <8 x i32> %i.bri, %i.bgm
  %i.brk = load ptr, ptr %0, align 8, !tbaa !28
  %i.brl = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.brk, <8 x i32> %i.brj, <8 x i32> splat (i32 -1), i8 1)
  %i.brm = shufflevector <8 x i32> %i.brl, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.brn = trunc <16 x i32> %i.brm to <16 x i8>
  %i.bro = bitcast <16 x i8> %i.brn to <2 x i64>
  %i.brp = extractelement <2 x i64> %i.bro, i64 0
  store i64 %i.brp, ptr %.22351.i.i, align 1, !tbaa !30
  %i.brq = getelementptr inbounds nuw i8, ptr %.22351.i.i, i64 8 ; 2 uses
  %i.brr = add nuw nsw i32 %.21659350.i.i, 1      ; 2 uses
  %exitcond573.not.i.i = icmp eq i32 %i.brr, %5
  br i1 %exitcond573.not.i.i, label %.loopexit277.i.i, label %.lr.ph352.i.i, !llvm.loop !513

.loopexit285.i.i:                                 ; preds = %bb.v
  br i1 %brmerge494.i.i, label %.loopexit277.i.i, label %.lr.ph356.i.i

.lr.ph356.i.i:                                    ; preds = %.loopexit285.i.i, %.lr.ph356.i.i
  %.24355.i.i = phi ptr [ %i.btb, %.lr.ph356.i.i ], [ %.13377.i.i, %.loopexit285.i.i ] ; 3 uses
  %.01660354.i.i = phi i32 [ %i.btc, %.lr.ph356.i.i ], [ 0, %.loopexit285.i.i ] ; 2 uses
  %i.brs = add nsw i32 %.01660354.i.i, %i.amy     ; 2 uses
  %i.brt = sdiv i32 %i.brs, %i.ahb
  %i.bru = srem i32 %i.brs, %i.ahb                ; 2 uses
  %i.brv = srem i32 %i.bru, %6
  %i.brw = insertelement <2 x i32> poison, i32 %i.bru, i64 0
  %i.brx = insertelement <2 x i32> %i.brw, i32 %i.brv, i64 1
  %i.bry = sdiv <2 x i32> %i.brx, %i.amz
  %i.brz = mul <2 x i32> %i.bry, %i.anb           ; 2 uses
  %i.bsa = mul i32 %i.brt, %i.amo
  %i.bsb = extractelement <2 x i32> %i.brz, i64 0
  %i.bsc = add i32 %i.bsb, %i.bsa
  %i.bsd = extractelement <2 x i32> %i.brz, i64 1
  %i.bse = add i32 %i.bsc, %i.bsd
  %i.bsf = insertelement <8 x i32> poison, i32 %i.bse, i64 0
  %i.bsg = shufflevector <8 x i32> %i.bsf, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bsh = add <8 x i32> %i.bsg, %i.bgm
  %i.bsi = shl <8 x i32> %i.bsh, splat (i32 3)    ; 2 uses
  %i.bsj = load ptr, ptr %0, align 8, !tbaa !28   ; 2 uses
  %i.bsk = shufflevector <8 x i32> %i.bsi, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bsl = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %i.bsj, <4 x i32> %i.bsk, <4 x i64> splat (i64 -1), i8 1)
  %i.bsm = shufflevector <8 x i32> %i.bsi, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bsn = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %i.bsj, <4 x i32> %i.bsm, <4 x i64> splat (i64 -1), i8 1)
  %i.bso = bitcast <4 x i64> %i.bsl to <8 x i32>  ; 2 uses
  %i.bsp = bitcast <4 x i64> %i.bsn to <8 x i32>  ; 2 uses
  %i.bsq = shufflevector <8 x i32> %i.bso, <8 x i32> %i.bsp, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %i.bsr = bitcast <8 x i32> %i.bsq to <4 x i64>
  %i.bss = shufflevector <8 x i32> %i.bso, <8 x i32> %i.bsp, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.bst = bitcast <8 x i32> %i.bss to <4 x i64>
  %i.bsu = shufflevector <4 x i64> %i.bsr, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.bsv = shufflevector <4 x i64> %i.bst, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.bsw = bitcast <4 x i64> %i.bsu to <32 x i8>
  %i.bsx = add <32 x i8> %i.bsw, splat (i8 127)
  %i.bsy = bitcast <4 x i64> %i.bsv to <32 x i8>
  %i.bsz = add <32 x i8> %i.bsy, splat (i8 127)
  store <32 x i8> %i.bsx, ptr %.24355.i.i, align 1, !tbaa !30
  %i.bta = getelementptr inbounds nuw i8, ptr %.24355.i.i, i64 32
  store <32 x i8> %i.bsz, ptr %i.bta, align 1, !tbaa !30
  %i.btb = getelementptr inbounds nuw i8, ptr %.24355.i.i, i64 64 ; 2 uses
  %i.btc = add nuw nsw i32 %.01660354.i.i, 1      ; 2 uses
  %exitcond574.not.i.i = icmp eq i32 %i.btc, %i.amw
  br i1 %exitcond574.not.i.i, label %.loopexit277.i.i, label %.lr.ph356.i.i, !llvm.loop !514

.loopexit277.i.i:                                 ; preds = %.lr.ph356.i.i, %.lr.ph352.i.i, %bb.u, %bb.t, %.loopexit285.i.i, %.preheader284.i.i, %.loopexit279.i.i, %.preheader278.i.i
  %.25.i.i = phi ptr [ %.13377.i.i, %.loopexit285.i.i ], [ %.15.lcssa.i.i, %.preheader278.i.i ], [ %.13377.i.i, %.loopexit279.i.i ], [ %i.bmn, %bb.u ], [ %i.blf, %bb.t ], [ %.21.lcssa.i35.i, %.preheader284.i.i ], [ %i.brq, %.lr.ph352.i.i ], [ %i.btb, %.lr.ph356.i.i ] ; 2 uses
  %i.btd = add nuw nsw i32 %.11641376.i.i, 8      ; 3 uses
  %i.bte = or disjoint i32 %i.btd, 7
  %i.btf = icmp slt i32 %i.bte, %3
  br i1 %i.btf, label %bb.p, label %.preheader275.i.i, !llvm.loop !515

.preheader262.i.i:                                ; preds = %.loopexit264.i.i, %.preheader275.i.i
  %.21642.lcssa.i.i = phi i32 [ %.11641.lcssa.i.i, %.preheader275.i.i ], [ %i.ciz, %.loopexit264.i.i ] ; 3 uses
  %.26.lcssa.i.i = phi ptr [ %.13.lcssa.i.i, %.preheader275.i.i ], [ %.38.i.i, %.loopexit264.i.i ] ; 2 uses
  %i.btg = or disjoint i32 %.21642.lcssa.i.i, 1
  %i.bth = icmp slt i32 %i.btg, %3
  br i1 %i.bth, label %.lr.ph461.i.i, label %.preheader249.i.i

.lr.ph461.i.i:                                    ; preds = %.preheader262.i.i
  %i.bti = mul i32 %i.agt, %11
  %i.btj = icmp eq i32 %i.agv, 1                  ; 2 uses
  %i.btk = icmp sgt i32 %5, 3                     ; 2 uses
  %i.btl = shufflevector <8 x i64> %i.aim, <8 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.btm = and <2 x i64> %i.btl, splat (i64 4294967295) ; 4 uses
  %i.btn = shufflevector <4 x i32> %i.ain, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bto = insertelement <4 x i32> poison, i32 %i.ahb, i64 0
  %i.btp = shufflevector <4 x i32> %i.bto, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.btq = shufflevector <8 x i64> %i.aje, <8 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.btr = and <2 x i64> %i.btq, splat (i64 4294967295) ; 4 uses
  %i.bts = shufflevector <4 x i32> %i.ajf, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.btt = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.btu = shufflevector <4 x i32> %i.btt, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.btv = trunc i64 %i.l to i32                  ; 2 uses
  %i.btw = insertelement <4 x i32> poison, i32 %i.btv, i64 0
  %i.btx = shufflevector <4 x i32> %i.btw, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bty = insertelement <4 x i32> poison, i32 %8, i64 0
  %i.btz = shufflevector <4 x i32> %i.bty, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %.scalar596.i.i = mul i32 %i.agt, %9            ; 8 uses
  %i.bua = insertelement <4 x i32> poison, i32 %.scalar596.i.i, i64 0
  %i.bub = shufflevector <4 x i32> %i.bua, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.buc = icmp eq i32 %i.agv, 8
  %i.bud = sdiv i32 %5, 8                         ; 2 uses
  %i.bue = sdiv i32 %4, 8                         ; 2 uses
  %i.buf = icmp sgt i32 %5, 7
  %or.cond504.i.i = and i1 %i.buf, %i.buc         ; 2 uses
  %i.bug = insertelement <2 x i32> poison, i32 %10, i64 0
  %i.buh = shufflevector <2 x i32> %i.bug, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bui = insertelement <2 x i32> poison, i32 %i.aha, i64 0
  %i.buj = shufflevector <2 x i32> %i.bui, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.buk = insertelement <2 x i32> poison, i32 %i.bti, i64 0
  %i.bul = shufflevector <2 x i32> %i.buk, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bum = insertelement <2 x i32> <i32 1, i32 poison>, i32 %6, i64 1
  %i.bun = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.buo = insertelement <2 x i32> %i.bun, i32 %.scalar596.i.i, i64 1
  %i.bup = insertelement <2 x i32> poison, i32 %i.ahb, i64 0
  %i.buq = shufflevector <2 x i32> %i.bup, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bur = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.bus = shufflevector <2 x i32> %i.bur, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.but = insertelement <2 x i32> poison, i32 %.scalar596.i.i, i64 0
  %i.buu = shufflevector <2 x i32> %i.but, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.buv = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.buw = shufflevector <2 x i32> %i.buv, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bux = insertelement <2 x i32> poison, i32 %i.btv, i64 0
  %i.buy = shufflevector <2 x i32> %i.bux, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.buz = insertelement <2 x i32> poison, i32 %i.ahb, i64 0
  %i.bva = insertelement <2 x i32> %i.buz, i32 %6, i64 1
  %i.bvb = insertelement <2 x i32> <i32 1, i32 poison>, i32 %6, i64 1
  %i.bvc = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.bvd = insertelement <2 x i32> %i.bvc, i32 %.scalar596.i.i, i64 1
  %i.bve = insertelement <2 x i32> poison, i32 %i.ahb, i64 0
  %i.bvf = shufflevector <2 x i32> %i.bve, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bvg = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.bvh = shufflevector <2 x i32> %i.bvg, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bvi = insertelement <2 x i64> poison, i64 %i.l, i64 0
  %i.bvj = shufflevector <2 x i64> %i.bvi, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.bvk = insertelement <2 x i32> poison, i32 %i.ahb, i64 0
  %i.bvl = insertelement <2 x i32> %i.bvk, i32 %6, i64 1
  br label %bb.ad

bb.w:                                             ; preds = %.loopexit264.i.i, %.lr.ph419.i.i
  %.26418.i.i = phi ptr [ %.13.lcssa.i.i, %.lr.ph419.i.i ], [ %.38.i.i, %.loopexit264.i.i ] ; 8 uses
  %.21642417.i.i = phi i32 [ %.11641.lcssa.i.i, %.lr.ph419.i.i ], [ %i.ciz, %.loopexit264.i.i ] ; 2 uses
  %i.bvm = add nsw i32 %.21642417.i.i, %2
  %i.bvn = insertelement <4 x i32> poison, i32 %i.bvm, i64 0
  %i.bvo = shufflevector <4 x i32> %i.bvn, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bvp = add <4 x i32> %i.bvo, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.bvq = bitcast <4 x i32> %i.bvp to <2 x i64>
  %i.bvr = bitcast <4 x i32> %i.bvp to <2 x i64>
  %i.bvs = and <2 x i64> %i.bvr, splat (i64 4294967295)
  %i.bvt = mul nuw <2 x i64> %i.bvs, %i.bdh
  %i.bvu = lshr <2 x i64> %i.bvt, splat (i64 32)
  %i.bvv = lshr <2 x i64> %i.bvq, splat (i64 32)
  %i.bvw = mul nuw <2 x i64> %i.bvv, %i.bdh
  %i.bvx = bitcast <2 x i64> %i.bvu to <8 x i16>
  %i.bvy = bitcast <2 x i64> %i.bvw to <8 x i16>
  %i.bvz = shufflevector <8 x i16> %i.bvx, <8 x i16> %i.bvy, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.bwa = bitcast <8 x i16> %i.bvz to <4 x i32>  ; 2 uses
  %i.bwb = sub <4 x i32> %i.bvp, %i.bwa
  %i.bwc = lshr <4 x i32> %i.bwb, %i.bdi
  %i.bwd = add <4 x i32> %i.bwc, %i.bwa
  %i.bwe = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.bwd, <4 x i32> %i.ahu) ; 2 uses
  %i.bwf = mul <4 x i32> %i.bwe, %i.bdk
  %i.bwg = sub <4 x i32> %i.bvp, %i.bwf
  %i.bwh = mul <4 x i32> %i.bwg, %i.bdm           ; 2 uses
  %i.bwi = mul <4 x i32> %i.bwe, %i.bdo           ; 4 uses
  %i.bwj = add <4 x i32> %i.bwh, %i.bwi           ; 8 uses
  %shift578 = shufflevector <4 x i32> %i.bwi, <4 x i32> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.bwk = icmp eq <4 x i32> %i.bwi, %shift578
  %i.bwl = extractelement <4 x i1> %i.bwk, i64 0
  %or.cond5.i.i = and i1 %i.g, %i.bwl
  br i1 %or.cond5.i.i, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %foldExtExtBinop533 = add nsw <4 x i32> %i.bwh, %i.bwi ; 2 uses
  %i.bwm = extractelement <4 x i32> %foldExtExtBinop533, i64 0 ; 3 uses
  br i1 %i.bdp, label %.preheader268.i.i, label %.loopexit266.i.i

.preheader268.i.i:                                ; preds = %bb.x
  br i1 %i.bdq, label %.lr.ph401.i.i, label %.preheader267.i.i

.lr.ph401.i.i:                                    ; preds = %.preheader268.i.i
  %i.bwn = shufflevector <4 x i32> %foldExtExtBinop533, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.y

.preheader267.i.i:                                ; preds = %bb.y, %.preheader268.i.i
  %.01661.lcssa.i.i = phi i32 [ 0, %.preheader268.i.i ], [ %i.byp, %bb.y ] ; 3 uses
  %.27.lcssa.i.i = phi ptr [ %.26418.i.i, %.preheader268.i.i ], [ %i.byo, %bb.y ] ; 2 uses
  %i.bwo = or disjoint i32 %.01661.lcssa.i.i, 1
  %i.bwp = icmp slt i32 %i.bwo, %5
  br i1 %i.bwp, label %.lr.ph406.i.i, label %.preheader265.i.i

.lr.ph406.i.i:                                    ; preds = %.preheader267.i.i
  %i.bwq = sext i32 %i.bwm to i64                 ; 2 uses
  br label %bb.z

bb.y:                                             ; preds = %bb.y, %.lr.ph401.i.i
  %.27400.i.i = phi ptr [ %.26418.i.i, %.lr.ph401.i.i ], [ %i.byo, %bb.y ] ; 2 uses
  %.01661399.i.i = phi i32 [ 0, %.lr.ph401.i.i ], [ %i.byp, %bb.y ] ; 2 uses
  %i.bwr = add nsw i32 %.01661399.i.i, %4
  %i.bws = insertelement <4 x i32> poison, i32 %i.bwr, i64 0
  %i.bwt = shufflevector <4 x i32> %i.bws, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bwu = add <4 x i32> %i.bwt, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.bwv = bitcast <4 x i32> %i.bwu to <2 x i64>
  %i.bww = bitcast <4 x i32> %i.bwu to <2 x i64>
  %i.bwx = and <2 x i64> %i.bww, splat (i64 4294967295)
  %i.bwy = mul nuw <2 x i64> %i.bwx, %i.bds
  %i.bwz = lshr <2 x i64> %i.bwy, splat (i64 32)
  %i.bxa = lshr <2 x i64> %i.bwv, splat (i64 32)
  %i.bxb = mul nuw <2 x i64> %i.bxa, %i.bds
  %i.bxc = bitcast <2 x i64> %i.bwz to <8 x i16>
  %i.bxd = bitcast <2 x i64> %i.bxb to <8 x i16>
  %i.bxe = shufflevector <8 x i16> %i.bxc, <8 x i16> %i.bxd, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.bxf = bitcast <8 x i16> %i.bxe to <4 x i32>  ; 2 uses
  %i.bxg = sub <4 x i32> %i.bwu, %i.bxf
  %i.bxh = lshr <4 x i32> %i.bxg, %i.bdt
  %i.bxi = add <4 x i32> %i.bxh, %i.bxf
  %i.bxj = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.bxi, <4 x i32> %i.aio) ; 2 uses
  %i.bxk = mul <4 x i32> %i.bxj, %i.bdv
  %i.bxl = sub <4 x i32> %i.bwu, %i.bxk           ; 4 uses
  %i.bxm = bitcast <4 x i32> %i.bxl to <2 x i64>
  %i.bxn = bitcast <4 x i32> %i.bxl to <2 x i64>
  %i.bxo = and <2 x i64> %i.bxn, splat (i64 4294967295)
  %i.bxp = mul nuw <2 x i64> %i.bxo, %i.bdx
  %i.bxq = lshr <2 x i64> %i.bxp, splat (i64 32)
  %i.bxr = lshr <2 x i64> %i.bxm, splat (i64 32)
  %i.bxs = mul nuw <2 x i64> %i.bxr, %i.bdx
  %i.bxt = bitcast <2 x i64> %i.bxq to <8 x i16>
  %i.bxu = bitcast <2 x i64> %i.bxs to <8 x i16>
  %i.bxv = shufflevector <8 x i16> %i.bxt, <8 x i16> %i.bxu, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.bxw = bitcast <8 x i16> %i.bxv to <4 x i32>  ; 2 uses
  %i.bxx = sub <4 x i32> %i.bxl, %i.bxw
  %i.bxy = lshr <4 x i32> %i.bxx, %i.bdy
  %i.bxz = add <4 x i32> %i.bxy, %i.bxw
  %i.bya = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.bxz, <4 x i32> %i.ajg) ; 2 uses
  %i.byb = mul <4 x i32> %i.bya, %i.bea
  %i.byc = sub <4 x i32> %i.bxl, %i.byb
  %i.byd = mul <4 x i32> %i.bxj, %i.bed
  %i.bye = mul <4 x i32> %i.byc, %i.bef
  %i.byf = mul <4 x i32> %i.bya, %i.beh
  %i.byg = add <4 x i32> %i.byd, %i.bwn
  %i.byh = add <4 x i32> %i.byg, %i.byf
  %i.byi = add <4 x i32> %i.byh, %i.bye
  %i.byj = load ptr, ptr %0, align 8, !tbaa !28
  %i.byk = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.byj, <4 x i32> %i.byi, <4 x i32> splat (i32 -1), i8 1)
  %i.byl = bitcast <4 x i32> %i.byk to <16 x i8>
  %i.bym = add <16 x i8> %i.byl, splat (i8 127)
  %i.byn = shufflevector <16 x i8> %i.bym, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %i.byn, ptr %.27400.i.i, align 1, !tbaa !30
  %i.byo = getelementptr inbounds nuw i8, ptr %.27400.i.i, i64 16 ; 2 uses
  %i.byp = add nuw nsw i32 %.01661399.i.i, 4      ; 3 uses
  %i.byq = or disjoint i32 %i.byp, 3
  %i.byr = icmp slt i32 %i.byq, %5
  br i1 %i.byr, label %bb.y, label %.preheader267.i.i, !llvm.loop !516

.preheader265.i.i:                                ; preds = %bb.z, %.preheader267.i.i
  %.11662.lcssa.i.i = phi i32 [ %.01661.lcssa.i.i, %.preheader267.i.i ], [ %i.cag, %bb.z ] ; 2 uses
  %.28.lcssa.i.i = phi ptr [ %.27.lcssa.i.i, %.preheader267.i.i ], [ %i.caf, %bb.z ] ; 2 uses
  %i.bys = icmp slt i32 %.11662.lcssa.i.i, %5
  br i1 %i.bys, label %.lr.ph411.i.i, label %.loopexit264.i.i

.lr.ph411.i.i:                                    ; preds = %.preheader265.i.i
  %i.byt = sext i32 %i.bwm to i64
  br label %bb.aa

bb.z:                                             ; preds = %bb.z, %.lr.ph406.i.i
  %.28405.i.i = phi ptr [ %.27.lcssa.i.i, %.lr.ph406.i.i ], [ %i.caf, %bb.z ] ; 2 uses
  %.11662404.i.i = phi i32 [ %.01661.lcssa.i.i, %.lr.ph406.i.i ], [ %i.cag, %bb.z ] ; 2 uses
  %i.byu = add nsw i32 %.11662404.i.i, %4         ; 2 uses
  %i.byv = add nsw i32 %i.byu, 1
  %i.byw = insertelement <2 x i32> poison, i32 %i.byu, i64 0
  %i.byx = insertelement <2 x i32> %i.byw, i32 %i.byv, i64 1
  %.frozen829 = freeze <2 x i32> %i.byx           ; 2 uses
  %i.byy = sdiv <2 x i32> %.frozen829, %i.bfi     ; 2 uses
  %i.byz = sext <2 x i32> %i.byy to <2 x i64>
  %i.bza = mul <2 x i64> %i.bfm, %i.byz           ; 2 uses
  %i.bzb = mul <2 x i32> %i.byy, %i.bfi
  %.decomposed830 = sub <2 x i32> %.frozen829, %i.bzb ; 3 uses
  %i.bzc = srem <2 x i32> %.decomposed830, %i.bfk ; 2 uses
  %i.bzd = shufflevector <2 x i32> %i.bzc, <2 x i32> %.decomposed830, <2 x i32> <i32 0, i32 2>
  %i.bze = sdiv <2 x i32> %i.bzd, %i.bfe
  %i.bzf = mul <2 x i32> %i.bze, %i.bfg
  %i.bzg = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.bzf)
  %i.bzh = sext i32 %i.bzg to i64
  %i.bzi = shufflevector <2 x i32> %i.bzc, <2 x i32> %.decomposed830, <2 x i32> <i32 1, i32 3>
  %i.bzj = sdiv <2 x i32> %i.bzi, %i.bfe
  %i.bzk = mul <2 x i32> %i.bzj, %i.bfg
  %i.bzl = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.bzk)
  %i.bzm = sext i32 %i.bzl to i64
  %i.bzn = load ptr, ptr %0, align 8, !tbaa !28   ; 2 uses
  %i.bzo = extractelement <2 x i64> %i.bza, i64 0
  %i.bzp = getelementptr i8, ptr %i.bzn, i64 %i.bzo
  %i.bzq = getelementptr i8, ptr %i.bzp, i64 %i.bwq
  %i.bzr = getelementptr i8, ptr %i.bzq, i64 %i.bzh
  %i.bzs = load i64, ptr %i.bzr, align 1, !tbaa !30
  %i.bzt = insertelement <2 x i64> poison, i64 %i.bzs, i64 0
  %i.bzu = extractelement <2 x i64> %i.bza, i64 1
  %i.bzv = getelementptr i8, ptr %i.bzn, i64 %i.bzu
  %i.bzw = getelementptr i8, ptr %i.bzv, i64 %i.bwq
  %i.bzx = getelementptr i8, ptr %i.bzw, i64 %i.bzm
  %i.bzy = load i64, ptr %i.bzx, align 1, !tbaa !30
  %i.bzz = insertelement <2 x i64> poison, i64 %i.bzy, i64 0
  %i.caa = bitcast <2 x i64> %i.bzt to <16 x i8>
  %i.cab = bitcast <2 x i64> %i.bzz to <16 x i8>
  %i.cac = shufflevector <16 x i8> %i.caa, <16 x i8> %i.cab, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cad = bitcast <16 x i8> %i.cac to <2 x i64>
end_hunk_1
begin_hunk_2_@_ZN4ncnn45convolution_im2col_input_tile_int8_avx512vnniERKNS_3MatERS0_iiiiiiiiii:bb.a
  %i.ckp = insertelement <2 x i32> poison, i32 %i.ckn, i64 0
  %i.ckq = insertelement <2 x i32> %i.ckp, i32 %i.cko, i64 1
  %.frozen833 = freeze <2 x i32> %i.ckq           ; 2 uses
  %.frozen834 = freeze <2 x i32> %i.buj           ; 2 uses
  %i.ckr = sdiv <2 x i32> %.frozen833, %.frozen834 ; 2 uses
  %i.cks = mul <2 x i32> %i.ckr, %.frozen834
  %.decomposed835 = sub <2 x i32> %.frozen833, %i.cks
  %i.ckt = mul nsw <2 x i32> %.decomposed835, %i.buh
  %i.cku = mul <2 x i32> %i.ckr, %i.bul           ; 3 uses
  %i.ckv = add nsw <2 x i32> %i.ckt, %i.cku       ; 11 uses
  %shift559 = shufflevector <2 x i32> %i.cku, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.ckw = icmp eq <2 x i32> %i.cku, %shift559
  %i.ckx = extractelement <2 x i1> %i.ckw, i64 0
  %or.cond7.i.i = and i1 %i.g, %i.ckx
  br i1 %or.cond7.i.i, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.btj, label %.preheader255.i.i, label %.loopexit253.i.i

.preheader255.i.i:                                ; preds = %bb.ae
  br i1 %i.btk, label %.lr.ph443.i.i, label %.preheader254.i.i

.lr.ph443.i.i:                                    ; preds = %.preheader255.i.i
  %i.cky = shufflevector <2 x i32> %i.ckv, <2 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.af

.preheader254.i.i:                                ; preds = %bb.af, %.preheader255.i.i
  %.01672.lcssa.i.i = phi i32 [ 0, %.preheader255.i.i ], [ %i.cne, %bb.af ] ; 3 uses
  %.40.lcssa.i.i = phi ptr [ %.39460.i.i, %.preheader255.i.i ], [ %i.cnd, %bb.af ] ; 2 uses
  %i.ckz = or disjoint i32 %.01672.lcssa.i.i, 1
  %i.cla = icmp slt i32 %i.ckz, %5
  br i1 %i.cla, label %.lr.ph448.i.i, label %.preheader252.i.i

.lr.ph448.i.i:                                    ; preds = %.preheader254.i.i
  %i.clb = extractelement <2 x i32> %i.ckv, i64 0
  %i.clc = sext i32 %i.clb to i64                 ; 2 uses
  br label %bb.ag

bb.af:                                            ; preds = %bb.af, %.lr.ph443.i.i
  %.40442.i.i = phi ptr [ %.39460.i.i, %.lr.ph443.i.i ], [ %i.cnd, %bb.af ] ; 2 uses
  %.01672441.i.i = phi i32 [ 0, %.lr.ph443.i.i ], [ %i.cne, %bb.af ] ; 2 uses
  %i.cld = add nsw i32 %.01672441.i.i, %4
  %i.cle = insertelement <4 x i32> poison, i32 %i.cld, i64 0
  %i.clf = shufflevector <4 x i32> %i.cle, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.clg = add <4 x i32> %i.clf, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.clh = bitcast <4 x i32> %i.clg to <2 x i64>
  %i.cli = bitcast <4 x i32> %i.clg to <2 x i64>
  %i.clj = and <2 x i64> %i.cli, splat (i64 4294967295)
  %i.clk = mul nuw <2 x i64> %i.clj, %i.btm
  %i.cll = lshr <2 x i64> %i.clk, splat (i64 32)
  %i.clm = lshr <2 x i64> %i.clh, splat (i64 32)
  %i.cln = mul nuw <2 x i64> %i.clm, %i.btm
  %i.clo = bitcast <2 x i64> %i.cll to <8 x i16>
  %i.clp = bitcast <2 x i64> %i.cln to <8 x i16>
  %i.clq = shufflevector <8 x i16> %i.clo, <8 x i16> %i.clp, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.clr = bitcast <8 x i16> %i.clq to <4 x i32>  ; 2 uses
  %i.cls = sub <4 x i32> %i.clg, %i.clr
  %i.clt = lshr <4 x i32> %i.cls, %i.btn
  %i.clu = add <4 x i32> %i.clt, %i.clr
  %i.clv = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.clu, <4 x i32> %i.aio) ; 2 uses
  %i.clw = mul <4 x i32> %i.clv, %i.btp
  %i.clx = sub <4 x i32> %i.clg, %i.clw           ; 4 uses
  %i.cly = bitcast <4 x i32> %i.clx to <2 x i64>
  %i.clz = bitcast <4 x i32> %i.clx to <2 x i64>
  %i.cma = and <2 x i64> %i.clz, splat (i64 4294967295)
  %i.cmb = mul nuw <2 x i64> %i.cma, %i.btr
  %i.cmc = lshr <2 x i64> %i.cmb, splat (i64 32)
  %i.cmd = lshr <2 x i64> %i.cly, splat (i64 32)
  %i.cme = mul nuw <2 x i64> %i.cmd, %i.btr
  %i.cmf = bitcast <2 x i64> %i.cmc to <8 x i16>
  %i.cmg = bitcast <2 x i64> %i.cme to <8 x i16>
  %i.cmh = shufflevector <8 x i16> %i.cmf, <8 x i16> %i.cmg, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.cmi = bitcast <8 x i16> %i.cmh to <4 x i32>  ; 2 uses
  %i.cmj = sub <4 x i32> %i.clx, %i.cmi
  %i.cmk = lshr <4 x i32> %i.cmj, %i.bts
  %i.cml = add <4 x i32> %i.cmk, %i.cmi
  %i.cmm = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.cml, <4 x i32> %i.ajg) ; 2 uses
  %i.cmn = mul <4 x i32> %i.cmm, %i.btu
  %i.cmo = sub <4 x i32> %i.clx, %i.cmn
  %i.cmp = mul <4 x i32> %i.clv, %i.btx
  %i.cmq = mul <4 x i32> %i.cmo, %i.btz
  %i.cmr = mul <4 x i32> %i.cmm, %i.bub
  %i.cms = add <4 x i32> %i.cmp, %i.cky
  %i.cmt = add <4 x i32> %i.cms, %i.cmr
  %i.cmu = add <4 x i32> %i.cmt, %i.cmq
  %i.cmv = load ptr, ptr %0, align 8, !tbaa !28
  %i.cmw = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.cmv, <4 x i32> %i.cmu, <4 x i32> splat (i32 -1), i8 1)
  %i.cmx = trunc <4 x i32> %i.cmw to <4 x i16>
  %i.cmy = bitcast <4 x i16> %i.cmx to <8 x i8>
  %i.cmz = add <8 x i8> %i.cmy, splat (i8 127)
  %i.cna = shufflevector <8 x i8> %i.cmz, <8 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cnb = bitcast <16 x i8> %i.cna to <2 x i64>
  %i.cnc = extractelement <2 x i64> %i.cnb, i64 0
  store i64 %i.cnc, ptr %.40442.i.i, align 1, !tbaa !30
  %i.cnd = getelementptr inbounds nuw i8, ptr %.40442.i.i, i64 8 ; 2 uses
  %i.cne = add nuw nsw i32 %.01672441.i.i, 4      ; 3 uses
  %i.cnf = or disjoint i32 %i.cne, 3
  %i.cng = icmp slt i32 %i.cnf, %5
  br i1 %i.cng, label %bb.af, label %.preheader254.i.i, !llvm.loop !525

.preheader252.i.i:                                ; preds = %bb.ag, %.preheader254.i.i
  %.11673.lcssa.i.i = phi i32 [ %.01672.lcssa.i.i, %.preheader254.i.i ], [ %i.cpa, %bb.ag ] ; 2 uses
  %.41.lcssa.i.i = phi ptr [ %.40.lcssa.i.i, %.preheader254.i.i ], [ %i.coz, %bb.ag ] ; 2 uses
  %i.cnh = icmp slt i32 %.11673.lcssa.i.i, %5
  br i1 %i.cnh, label %.lr.ph453.i.i, label %.loopexit251.i.i

.lr.ph453.i.i:                                    ; preds = %.preheader252.i.i
  %i.cni = extractelement <2 x i32> %i.ckv, i64 0
  %i.cnj = sext i32 %i.cni to i64
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ag, %.lr.ph448.i.i
  %.41447.i.i = phi ptr [ %.40.lcssa.i.i, %.lr.ph448.i.i ], [ %i.coz, %bb.ag ] ; 5 uses
  %.11673446.i.i = phi i32 [ %.01672.lcssa.i.i, %.lr.ph448.i.i ], [ %i.cpa, %bb.ag ] ; 2 uses
  %i.cnk = add nsw i32 %.11673446.i.i, %4         ; 2 uses
  %i.cnl = add nsw i32 %i.cnk, 1
  %i.cnm = insertelement <2 x i32> poison, i32 %i.cnk, i64 0
  %i.cnn = insertelement <2 x i32> %i.cnm, i32 %i.cnl, i64 1
  %.frozen836 = freeze <2 x i32> %i.cnn           ; 2 uses
  %i.cno = sdiv <2 x i32> %.frozen836, %i.bvf     ; 2 uses
  %i.cnp = mul <2 x i32> %i.cno, %i.bvf
  %.decomposed837 = sub <2 x i32> %.frozen836, %i.cnp ; 3 uses
  %i.cnq = extractelement <2 x i32> %.decomposed837, i64 0
  %i.cnr = sdiv i32 %i.cnq, %6
  %i.cns = extractelement <2 x i32> %.decomposed837, i64 1
  %i.cnt = sdiv i32 %i.cns, %6
  %i.cnu = srem <2 x i32> %.decomposed837, %i.bvh ; 2 uses
  %i.cnv = mul i32 %i.cnr, %.scalar596.i.i
  %i.cnw = extractelement <2 x i32> %i.cnu, i64 0
  %i.cnx = mul nsw i32 %i.cnw, %8
  %i.cny = add nsw i32 %i.cnx, %i.cnv
  %i.cnz = sext i32 %i.cny to i64
  %i.coa = sext <2 x i32> %i.cno to <2 x i64>
  %i.cob = mul <2 x i64> %i.bvj, %i.coa           ; 2 uses
  %i.coc = mul i32 %i.cnt, %.scalar596.i.i
  %i.cod = extractelement <2 x i32> %i.cnu, i64 1
  %i.coe = mul nsw i32 %i.cod, %8
  %i.cof = add nsw i32 %i.coe, %i.coc
  %i.cog = sext i32 %i.cof to i64
  %i.coh = load ptr, ptr %0, align 8, !tbaa !28   ; 2 uses
  %i.coi = extractelement <2 x i64> %i.cob, i64 0
  %i.coj = getelementptr i8, ptr %i.coh, i64 %i.coi
  %i.cok = getelementptr i8, ptr %i.coj, i64 %i.clc
  %i.col = getelementptr i8, ptr %i.cok, i64 %i.cnz ; 2 uses
  %i.com = extractelement <2 x i64> %i.cob, i64 1
  %i.con = getelementptr i8, ptr %i.coh, i64 %i.com
  %i.coo = getelementptr i8, ptr %i.con, i64 %i.clc
  %i.cop = getelementptr i8, ptr %i.coo, i64 %i.cog ; 2 uses
  %i.coq = load i8, ptr %i.col, align 1, !tbaa !30
  store i8 %i.coq, ptr %.41447.i.i, align 1, !tbaa !30
  %i.cor = load i8, ptr %i.cop, align 1, !tbaa !30
  %i.cos = getelementptr inbounds nuw i8, ptr %.41447.i.i, i64 1
  store i8 %i.cor, ptr %i.cos, align 1, !tbaa !30
  %i.cot = getelementptr inbounds nuw i8, ptr %i.col, i64 1
  %i.cou = load i8, ptr %i.cot, align 1, !tbaa !30
  %i.cov = getelementptr inbounds nuw i8, ptr %.41447.i.i, i64 2
  store i8 %i.cou, ptr %i.cov, align 1, !tbaa !30
  %i.cow = getelementptr inbounds nuw i8, ptr %i.cop, i64 1
  %i.cox = load i8, ptr %i.cow, align 1, !tbaa !30
  %i.coy = getelementptr inbounds nuw i8, ptr %.41447.i.i, i64 3
  store i8 %i.cox, ptr %i.coy, align 1, !tbaa !30
  %i.coz = getelementptr inbounds nuw i8, ptr %.41447.i.i, i64 4 ; 2 uses
  %i.cpa = add nuw nsw i32 %.11673446.i.i, 2      ; 3 uses
  %i.cpb = or disjoint i32 %i.cpa, 1
  %i.cpc = icmp slt i32 %i.cpb, %5
  br i1 %i.cpc, label %bb.ag, label %.preheader252.i.i, !llvm.loop !526

bb.ah:                                            ; preds = %bb.ah, %.lr.ph453.i.i
  %.42452.i.i = phi ptr [ %.41.lcssa.i.i, %.lr.ph453.i.i ], [ %i.cpz, %bb.ah ] ; 3 uses
  %.21674451.i.i = phi i32 [ %.11673.lcssa.i.i, %.lr.ph453.i.i ], [ %i.cqa, %bb.ah ] ; 2 uses
  %i.cpd = add nsw i32 %.21674451.i.i, %4         ; 2 uses
  %i.cpe = srem i32 %i.cpd, %i.ahb                ; 2 uses
  %i.cpf = insertelement <2 x i32> poison, i32 %i.cpd, i64 0
  %i.cpg = insertelement <2 x i32> %i.cpf, i32 %i.cpe, i64 1
  %i.cph = sdiv <2 x i32> %i.cpg, %i.bvl          ; 2 uses
  %i.cpi = srem i32 %i.cpe, %6
  %i.cpj = extractelement <2 x i32> %i.cph, i64 0
  %i.cpk = sext i32 %i.cpj to i64
  %i.cpl = mul i64 %i.l, %i.cpk
  %i.cpm = extractelement <2 x i32> %i.cph, i64 1
  %i.cpn = mul i32 %i.cpm, %.scalar596.i.i
  %i.cpo = mul nsw i32 %i.cpi, %8
  %i.cpp = add nsw i32 %i.cpo, %i.cpn
  %i.cpq = sext i32 %i.cpp to i64
  %i.cpr = load ptr, ptr %0, align 8, !tbaa !28
  %i.cps = getelementptr i8, ptr %i.cpr, i64 %i.cpl
  %i.cpt = getelementptr i8, ptr %i.cps, i64 %i.cnj
  %i.cpu = getelementptr i8, ptr %i.cpt, i64 %i.cpq ; 2 uses
  %i.cpv = load i8, ptr %i.cpu, align 1, !tbaa !30
  store i8 %i.cpv, ptr %.42452.i.i, align 1, !tbaa !30
  %i.cpw = getelementptr inbounds nuw i8, ptr %i.cpu, i64 1
  %i.cpx = load i8, ptr %i.cpw, align 1, !tbaa !30
  %i.cpy = getelementptr inbounds nuw i8, ptr %.42452.i.i, i64 1
  store i8 %i.cpx, ptr %i.cpy, align 1, !tbaa !30
  %i.cpz = getelementptr inbounds nuw i8, ptr %.42452.i.i, i64 2 ; 2 uses
  %i.cqa = add nuw nsw i32 %.21674451.i.i, 1      ; 2 uses
  %exitcond583.not.i.i = icmp eq i32 %i.cqa, %5
  br i1 %exitcond583.not.i.i, label %.loopexit251.i.i, label %bb.ah, !llvm.loop !527

.loopexit253.i.i:                                 ; preds = %bb.ae
  br i1 %or.cond504.i.i, label %.lr.ph457.i.i, label %.loopexit251.i.i

.lr.ph457.i.i:                                    ; preds = %.loopexit253.i.i
  %i.cqb = extractelement <2 x i32> %i.ckv, i64 0
  %i.cqc = sext i32 %i.cqb to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.lr.ph457.i.i
  %.44456.i.i = phi ptr [ %.39460.i.i, %.lr.ph457.i.i ], [ %i.cqx, %bb.ai ] ; 2 uses
  %.01675455.i.i = phi i32 [ 0, %.lr.ph457.i.i ], [ %i.cqy, %bb.ai ] ; 2 uses
  %i.cqd = add nsw i32 %.01675455.i.i, %i.bue     ; 2 uses
  %i.cqe = sdiv i32 %i.cqd, %i.ahb
  %i.cqf = srem i32 %i.cqd, %i.ahb                ; 2 uses
  %i.cqg = sext i32 %i.cqe to i64
  %i.cqh = mul i64 %i.l, %i.cqg
  %i.cqi = add i64 %i.cqh, %i.cqc
  %i.cqj = srem i32 %i.cqf, %6
  %i.cqk = insertelement <2 x i32> poison, i32 %i.cqj, i64 0
  %i.cql = insertelement <2 x i32> %i.cqk, i32 %i.cqf, i64 1
  %i.cqm = sdiv <2 x i32> %i.cql, %i.bvb
  %i.cqn = mul <2 x i32> %i.cqm, %i.bvd
  %i.cqo = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.cqn)
  %i.cqp = sext i32 %i.cqo to i64
  %i.cqq = add i64 %i.cqi, %i.cqp
  %i.cqr = shl i64 %i.cqq, 3
  %i.cqs = load ptr, ptr %0, align 8, !tbaa !28
  %i.cqt = getelementptr inbounds nuw i8, ptr %i.cqs, i64 %i.cqr
  %i.cqu = load <16 x i8>, ptr %i.cqt, align 1, !tbaa !30
  %i.cqv = add <16 x i8> %i.cqu, splat (i8 127)
  %i.cqw = shufflevector <16 x i8> %i.cqv, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <16 x i8> %i.cqw, ptr %.44456.i.i, align 1, !tbaa !30
  %i.cqx = getelementptr inbounds nuw i8, ptr %.44456.i.i, i64 16 ; 2 uses
  %i.cqy = add nuw nsw i32 %.01675455.i.i, 1      ; 2 uses
  %exitcond584.not.i.i = icmp eq i32 %i.cqy, %i.bud
  br i1 %exitcond584.not.i.i, label %.loopexit251.i.i, label %bb.ai, !llvm.loop !528

bb.aj:                                            ; preds = %bb.ad
  br i1 %i.btj, label %.preheader261.i.i, label %.loopexit259.i.i

.preheader261.i.i:                                ; preds = %bb.aj
  br i1 %i.btk, label %.lr.ph424.i.i.preheader, label %.preheader260.i.i

.lr.ph424.i.i.preheader:                          ; preds = %.preheader261.i.i
  %i.cqz = extractelement <2 x i32> %i.ckv, i64 0 ; 4 uses
  %i.cra = extractelement <2 x i32> %i.ckv, i64 1 ; 4 uses
  br label %.lr.ph424.i.i

.preheader260.i.i:                                ; preds = %.lr.ph424.i.i, %.preheader261.i.i
  %.01676.lcssa.i.i = phi i32 [ 0, %.preheader261.i.i ], [ %i.cus, %.lr.ph424.i.i ] ; 3 uses
  %.46.lcssa.i.i = phi ptr [ %.39460.i.i, %.preheader261.i.i ], [ %i.cur, %.lr.ph424.i.i ] ; 2 uses
  %i.crb = or disjoint i32 %.01676.lcssa.i.i, 1
  %i.crc = icmp slt i32 %i.crb, %5
  br i1 %i.crc, label %.lr.ph429.i.i.preheader, label %.preheader258.i.i

.lr.ph429.i.i.preheader:                          ; preds = %.preheader260.i.i
  %i.crd = shufflevector <2 x i32> %i.ckv, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %.lr.ph429.i.i

.lr.ph424.i.i:                                    ; preds = %.lr.ph424.i.i.preheader, %.lr.ph424.i.i
  %.46423.i.i = phi ptr [ %i.cur, %.lr.ph424.i.i ], [ %.39460.i.i, %.lr.ph424.i.i.preheader ] ; 9 uses
  %.01676422.i.i = phi i32 [ %i.cus, %.lr.ph424.i.i ], [ 0, %.lr.ph424.i.i.preheader ] ; 2 uses
  %i.cre = add nsw i32 %.01676422.i.i, %4
  %i.crf = insertelement <4 x i32> poison, i32 %i.cre, i64 0
  %i.crg = shufflevector <4 x i32> %i.crf, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.crh = add <4 x i32> %i.crg, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.cri = bitcast <4 x i32> %i.crh to <2 x i64>
  %i.crj = bitcast <4 x i32> %i.crh to <2 x i64>
  %i.crk = and <2 x i64> %i.crj, splat (i64 4294967295)
  %i.crl = mul nuw <2 x i64> %i.crk, %i.btm
  %i.crm = lshr <2 x i64> %i.crl, splat (i64 32)
  %i.crn = lshr <2 x i64> %i.cri, splat (i64 32)
  %i.cro = mul nuw <2 x i64> %i.crn, %i.btm
  %i.crp = bitcast <2 x i64> %i.crm to <8 x i16>
  %i.crq = bitcast <2 x i64> %i.cro to <8 x i16>
  %i.crr = shufflevector <8 x i16> %i.crp, <8 x i16> %i.crq, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.crs = bitcast <8 x i16> %i.crr to <4 x i32>  ; 2 uses
  %i.crt = sub <4 x i32> %i.crh, %i.crs
  %i.cru = lshr <4 x i32> %i.crt, %i.btn
  %i.crv = add <4 x i32> %i.cru, %i.crs
  %i.crw = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.crv, <4 x i32> %i.aio) ; 2 uses
  %i.crx = mul <4 x i32> %i.crw, %i.btp
  %i.cry = sub <4 x i32> %i.crh, %i.crx           ; 4 uses
  %i.crz = bitcast <4 x i32> %i.cry to <2 x i64>
  %i.csa = bitcast <4 x i32> %i.cry to <2 x i64>
  %i.csb = and <2 x i64> %i.csa, splat (i64 4294967295)
  %i.csc = mul nuw <2 x i64> %i.csb, %i.btr
  %i.csd = lshr <2 x i64> %i.csc, splat (i64 32)
  %i.cse = lshr <2 x i64> %i.crz, splat (i64 32)
  %i.csf = mul nuw <2 x i64> %i.cse, %i.btr
  %i.csg = bitcast <2 x i64> %i.csd to <8 x i16>
  %i.csh = bitcast <2 x i64> %i.csf to <8 x i16>
  %i.csi = shufflevector <8 x i16> %i.csg, <8 x i16> %i.csh, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.csj = bitcast <8 x i16> %i.csi to <4 x i32>  ; 2 uses
  %i.csk = sub <4 x i32> %i.cry, %i.csj
  %i.csl = lshr <4 x i32> %i.csk, %i.bts
  %i.csm = add <4 x i32> %i.csl, %i.csj
  %i.csn = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.csm, <4 x i32> %i.ajg) ; 2 uses
  %i.cso = mul <4 x i32> %i.csn, %i.btu
  %i.csp = sub <4 x i32> %i.cry, %i.cso
  %i.csq = mul <4 x i32> %i.crw, %i.btx
  %i.csr = mul <4 x i32> %i.csp, %i.btz
  %i.css = mul <4 x i32> %i.csn, %i.bub
  %i.cst = add <4 x i32> %i.css, %i.csq
  %i.csu = add <4 x i32> %i.cst, %i.csr           ; 4 uses
  %.sroa.09.0.vec.extract.i.i = extractelement <4 x i32> %i.csu, i64 0 ; 2 uses
  %i.csv = add nsw i32 %.sroa.09.0.vec.extract.i.i, %i.cqz
  %i.csw = add nsw i32 %.sroa.09.0.vec.extract.i.i, %i.cra
  %.sroa.09.4.vec.extract.i.i = extractelement <4 x i32> %i.csu, i64 1 ; 2 uses
  %i.csx = add nsw i32 %.sroa.09.4.vec.extract.i.i, %i.cqz
  %i.csy = add nsw i32 %.sroa.09.4.vec.extract.i.i, %i.cra
  %.sroa.09.8.vec.extract.i.i = extractelement <4 x i32> %i.csu, i64 2 ; 2 uses
  %i.csz = add nsw i32 %.sroa.09.8.vec.extract.i.i, %i.cqz
  %i.cta = add nsw i32 %.sroa.09.8.vec.extract.i.i, %i.cra
  %.sroa.09.12.vec.extract.i.i = extractelement <4 x i32> %i.csu, i64 3 ; 2 uses
  %i.ctb = add nsw i32 %.sroa.09.12.vec.extract.i.i, %i.cqz
  %i.ctc = add nsw i32 %.sroa.09.12.vec.extract.i.i, %i.cra
  %i.ctd = load ptr, ptr %0, align 8, !tbaa !28   ; 8 uses
  %i.cte = sext i32 %i.csv to i64
  %i.ctf = getelementptr inbounds i8, ptr %i.ctd, i64 %i.cte
  %i.ctg = sext i32 %i.csw to i64
  %i.cth = getelementptr inbounds i8, ptr %i.ctd, i64 %i.ctg
  %i.cti = sext i32 %i.csx to i64
  %i.ctj = getelementptr inbounds i8, ptr %i.ctd, i64 %i.cti
  %i.ctk = sext i32 %i.csy to i64
  %i.ctl = getelementptr inbounds i8, ptr %i.ctd, i64 %i.ctk
  %i.ctm = sext i32 %i.csz to i64
  %i.ctn = getelementptr inbounds i8, ptr %i.ctd, i64 %i.ctm
  %i.cto = sext i32 %i.cta to i64
  %i.ctp = getelementptr inbounds i8, ptr %i.ctd, i64 %i.cto
  %i.ctq = sext i32 %i.ctb to i64
  %i.ctr = getelementptr inbounds i8, ptr %i.ctd, i64 %i.ctq
  %i.cts = sext i32 %i.ctc to i64
  %i.ctt = getelementptr inbounds i8, ptr %i.ctd, i64 %i.cts
  %i.ctu = load i8, ptr %i.ctf, align 1, !tbaa !30
  %i.ctv = add i8 %i.ctu, 127
  store i8 %i.ctv, ptr %.46423.i.i, align 1, !tbaa !30
  %i.ctw = load i8, ptr %i.ctj, align 1, !tbaa !30
  %i.ctx = add i8 %i.ctw, 127
  %i.cty = getelementptr inbounds nuw i8, ptr %.46423.i.i, i64 1
  store i8 %i.ctx, ptr %i.cty, align 1, !tbaa !30
  %i.ctz = load i8, ptr %i.ctn, align 1, !tbaa !30
  %i.cua = add i8 %i.ctz, 127
  %i.cub = getelementptr inbounds nuw i8, ptr %.46423.i.i, i64 2
  store i8 %i.cua, ptr %i.cub, align 1, !tbaa !30
  %i.cuc = load i8, ptr %i.ctr, align 1, !tbaa !30
  %i.cud = add i8 %i.cuc, 127
  %i.cue = getelementptr inbounds nuw i8, ptr %.46423.i.i, i64 3
  store i8 %i.cud, ptr %i.cue, align 1, !tbaa !30
  %i.cuf = load i8, ptr %i.cth, align 1, !tbaa !30
  %i.cug = add i8 %i.cuf, 127
  %i.cuh = getelementptr inbounds nuw i8, ptr %.46423.i.i, i64 4
  store i8 %i.cug, ptr %i.cuh, align 1, !tbaa !30
  %i.cui = load i8, ptr %i.ctl, align 1, !tbaa !30
  %i.cuj = add i8 %i.cui, 127
  %i.cuk = getelementptr inbounds nuw i8, ptr %.46423.i.i, i64 5
  store i8 %i.cuj, ptr %i.cuk, align 1, !tbaa !30
  %i.cul = load i8, ptr %i.ctp, align 1, !tbaa !30
  %i.cum = add i8 %i.cul, 127
  %i.cun = getelementptr inbounds nuw i8, ptr %.46423.i.i, i64 6
  store i8 %i.cum, ptr %i.cun, align 1, !tbaa !30
  %i.cuo = load i8, ptr %i.ctt, align 1, !tbaa !30
  %i.cup = add i8 %i.cuo, 127
  %i.cuq = getelementptr inbounds nuw i8, ptr %.46423.i.i, i64 7
  store i8 %i.cup, ptr %i.cuq, align 1, !tbaa !30
  %i.cur = getelementptr inbounds nuw i8, ptr %.46423.i.i, i64 8 ; 2 uses
  %i.cus = add nuw nsw i32 %.01676422.i.i, 4      ; 3 uses
  %i.cut = or disjoint i32 %i.cus, 3
  %i.cuu = icmp slt i32 %i.cut, %5
  br i1 %i.cuu, label %.lr.ph424.i.i, label %.preheader260.i.i, !llvm.loop !529

.preheader258.i.i:                                ; preds = %.lr.ph429.i.i, %.preheader260.i.i
  %.11677.lcssa.i.i = phi i32 [ %.01676.lcssa.i.i, %.preheader260.i.i ], [ %i.cwk, %.lr.ph429.i.i ] ; 2 uses
  %.47.lcssa.i.i = phi ptr [ %.46.lcssa.i.i, %.preheader260.i.i ], [ %i.cwj, %.lr.ph429.i.i ] ; 2 uses
  %i.cuv = icmp slt i32 %.11677.lcssa.i.i, %5
  br i1 %i.cuv, label %.lr.ph434.i.i, label %.loopexit251.i.i

.lr.ph434.i.i:                                    ; preds = %.preheader258.i.i
  %i.cuw = extractelement <2 x i32> %i.ckv, i64 0
  %i.cux = extractelement <2 x i32> %i.ckv, i64 1
  %i.cuy = sext i32 %i.cuw to i64
  %i.cuz = sext i32 %i.cux to i64
  br label %bb.ak

.lr.ph429.i.i:                                    ; preds = %.lr.ph429.i.i.preheader, %.lr.ph429.i.i
  %.47428.i.i = phi ptr [ %i.cwj, %.lr.ph429.i.i ], [ %.46.lcssa.i.i, %.lr.ph429.i.i.preheader ] ; 5 uses
  %.11677427.i.i = phi i32 [ %i.cwk, %.lr.ph429.i.i ], [ %.01676.lcssa.i.i, %.lr.ph429.i.i.preheader ] ; 2 uses
  %i.cva = add nsw i32 %.11677427.i.i, %4         ; 2 uses
  %i.cvb = add nsw i32 %i.cva, 1
  %i.cvc = insertelement <2 x i32> poison, i32 %i.cva, i64 0
  %i.cvd = insertelement <2 x i32> %i.cvc, i32 %i.cvb, i64 1
  %.frozen838 = freeze <2 x i32> %i.cvd           ; 2 uses
  %i.cve = sdiv <2 x i32> %.frozen838, %i.buq     ; 2 uses
  %i.cvf = mul <2 x i32> %i.cve, %i.buq
  %.decomposed839 = sub <2 x i32> %.frozen838, %i.cvf ; 2 uses
  %i.cvg = sdiv <2 x i32> %.decomposed839, %i.bus ; 2 uses
  %i.cvh = mul <2 x i32> %i.cvg, %i.bus
  %.decomposed840 = sub <2 x i32> %.decomposed839, %i.cvh
  %i.cvi = load ptr, ptr %0, align 8, !tbaa !28   ; 4 uses
  %i.cvj = mul <2 x i32> %i.cvg, %i.buu
  %i.cvk = mul nsw <2 x i32> %.decomposed840, %i.buw
  %i.cvl = mul <2 x i32> %i.cve, %i.buy
end_hunk_2
