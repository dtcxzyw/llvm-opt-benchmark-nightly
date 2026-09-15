Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_cluster?download=true
inline.NumInlined: 443
inline.NumDeleted: 185
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_Z11gmx_clusteriPPc:bb.a
  store float %i.act, ptr %i.acu, align 4, !tbaa !27
  %indvars.iv.next863 = add nuw nsw i64 %indvars.iv862, 1 ; 2 uses
  %i.acv = getelementptr inbounds nuw [12 x i8], ptr %i.abx, i64 %indvars.iv.next863 ; 3 uses
  %i.acw = getelementptr inbounds nuw [12 x i8], ptr %i.abq, i64 %indvars.iv.next863 ; 3 uses
  %i.acx = load float, ptr %i.acv, align 4, !tbaa !27
  store float %i.acx, ptr %i.acw, align 4, !tbaa !27
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acv, i64 4
  %i.acz = load float, ptr %i.acy, align 4, !tbaa !27
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acw, i64 4
  store float %i.acz, ptr %i.ada, align 4, !tbaa !27
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acv, i64 8
  %i.adc = load float, ptr %i.adb, align 4, !tbaa !27
  %i.add = getelementptr inbounds nuw i8, ptr %i.acw, i64 8
  store float %i.adc, ptr %i.add, align 4, !tbaa !27
  %indvars.iv.next863.1 = add nuw nsw i64 %indvars.iv862, 2 ; 2 uses
  %i.ade = getelementptr inbounds nuw [12 x i8], ptr %i.abx, i64 %indvars.iv.next863.1 ; 3 uses
  %i.adf = getelementptr inbounds nuw [12 x i8], ptr %i.abq, i64 %indvars.iv.next863.1 ; 3 uses
  %i.adg = load float, ptr %i.ade, align 4, !tbaa !27
  store float %i.adg, ptr %i.adf, align 4, !tbaa !27
  %i.adh = getelementptr inbounds nuw i8, ptr %i.ade, i64 4
  %i.adi = load float, ptr %i.adh, align 4, !tbaa !27
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adf, i64 4
  store float %i.adi, ptr %i.adj, align 4, !tbaa !27
  %i.adk = getelementptr inbounds nuw i8, ptr %i.ade, i64 8
  %i.adl = load float, ptr %i.adk, align 4, !tbaa !27
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adf, i64 8
  store float %i.adl, ptr %i.adm, align 4, !tbaa !27
  %indvars.iv.next863.2 = add nuw nsw i64 %indvars.iv862, 3 ; 2 uses
  %i.adn = getelementptr inbounds nuw [12 x i8], ptr %i.abx, i64 %indvars.iv.next863.2 ; 3 uses
  %i.ado = getelementptr inbounds nuw [12 x i8], ptr %i.abq, i64 %indvars.iv.next863.2 ; 3 uses
  %i.adp = load float, ptr %i.adn, align 4, !tbaa !27
  store float %i.adp, ptr %i.ado, align 4, !tbaa !27
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adn, i64 4
  %i.adr = load float, ptr %i.adq, align 4, !tbaa !27
  %i.ads = getelementptr inbounds nuw i8, ptr %i.ado, i64 4
  store float %i.adr, ptr %i.ads, align 4, !tbaa !27
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adn, i64 8
  %i.adu = load float, ptr %i.adt, align 4, !tbaa !27
  %i.adv = getelementptr inbounds nuw i8, ptr %i.ado, i64 8
  store float %i.adu, ptr %i.adv, align 4, !tbaa !27
  %indvars.iv.next863.3 = add nuw nsw i64 %indvars.iv862, 4 ; 2 uses
  %exitcond866.not.3 = icmp eq i64 %indvars.iv.next863.3, %wide.trip.count865
  br i1 %exitcond866.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !75

bb.ei:                                            ; preds = %._crit_edge.us
  %i.adw = getelementptr inbounds nuw [8 x i8], ptr %.0304, i64 %indvars.iv867
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !32
  invoke void @_Z6do_fitiPfPA3_KfPA3_f(i32 noundef %.2301709, ptr noundef %.1684, ptr noundef %i.adx, ptr noundef nonnull %i.abq)
          to label %bb.ej unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us

bb.ej:                                            ; preds = %bb.ei, %._crit_edge.us
  %i.ady = getelementptr inbounds nuw [8 x i8], ptr %.0304, i64 %indvars.iv867
  %i.adz = load ptr, ptr %i.ady, align 8, !tbaa !32
  %i.aea = invoke noundef float @_Z6rmsdeviPfPA3_fS1_(i32 noundef %.2301709, ptr noundef %.1684, ptr noundef %i.adz, ptr noundef nonnull %i.abq)
          to label %bb.ek unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us

bb.ek:                                            ; preds = %bb.ej
  %i.aeb = trunc nuw nsw i64 %indvars.iv867 to i32
  invoke void @_Z13set_mat_entryP5t_matiif(ptr noundef %i.abf, i32 noundef %i.abw, i32 noundef %i.aeb, float noundef %i.aea)
          to label %bb.el unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us

bb.el:                                            ; preds = %bb.ek
  %indvars.iv.next868 = add nuw nsw i64 %indvars.iv867, 1 ; 2 uses
  %exitcond871.not = icmp eq i64 %indvars.iv.next868, %wide.trip.count875
  br i1 %exitcond871.not, label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit, label %.preheader731.us, !llvm.loop !76

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.aec = load i8, ptr %i.x, align 1, !tbaa !14, !range !28, !noundef !29
  %i.aed = trunc nuw i8 %i.aec to i1
  br i1 %i.aed, label %bb.ei, label %bb.ej

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us: ; preds = %bb.ek, %bb.ej, %bb.ei
  %lpad.loopexit732.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.preheader731:                                    ; preds = %.preheader731.lr.ph, %bb.ep
  %indvars.iv857 = phi i64 [ %indvars.iv.next858, %bb.ep ], [ %indvars.iv855, %.preheader731.lr.ph ] ; 4 uses
  %i.aee = load i8, ptr %i.x, align 1, !tbaa !14, !range !28, !noundef !29
  %i.aef = trunc nuw i8 %i.aee to i1
  br i1 %i.aef, label %bb.em, label %bb.en

bb.em:                                            ; preds = %.preheader731
  %i.aeg = getelementptr inbounds nuw [8 x i8], ptr %.0304, i64 %indvars.iv857
  %i.aeh = load ptr, ptr %i.aeg, align 8, !tbaa !32
  invoke void @_Z6do_fitiPfPA3_KfPA3_f(i32 noundef %.2301709, ptr noundef %.1684, ptr noundef %i.aeh, ptr noundef %i.abq)
          to label %bb.en unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split

bb.en:                                            ; preds = %bb.em, %.preheader731
  %i.aei = getelementptr inbounds nuw [8 x i8], ptr %.0304, i64 %indvars.iv857
  %i.aej = load ptr, ptr %i.aei, align 8, !tbaa !32
  %i.aek = invoke noundef float @_Z6rmsdeviPfPA3_fS1_(i32 noundef %.2301709, ptr noundef %.1684, ptr noundef %i.aej, ptr noundef %i.abq)
          to label %bb.eo unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split

bb.eo:                                            ; preds = %bb.en
  %i.ael = trunc nuw nsw i64 %indvars.iv857 to i32
  invoke void @_Z13set_mat_entryP5t_matiif(ptr noundef %i.abf, i32 noundef %i.abw, i32 noundef %i.ael, float noundef %i.aek)
          to label %bb.ep unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split

bb.ep:                                            ; preds = %bb.eo
  %indvars.iv.next858 = add nuw nsw i64 %indvars.iv857, 1 ; 2 uses
  %exitcond861.not = icmp eq i64 %indvars.iv.next858, %wide.trip.count875
  br i1 %exitcond861.not, label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit, label %.preheader731, !llvm.loop !76

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit:       ; preds = %bb.ep, %bb.el, %bb.eh
  %i.aem = xor i64 %indvars.iv872, -1
  %i.aen = add nsw i64 %i.abg, %i.aem
  %i.aeo = sub nsw i64 %.0305785, %i.aen          ; 2 uses
  %i.aep = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.aeq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aep, ptr noundef nonnull @.str.163, i64 noundef %i.aeo) #19 ; 0 uses
  %i.aer = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.aes = call i32 @fflush(ptr noundef %i.aer)   ; 0 uses
  %indvars.iv.next856 = add nuw nsw i64 %indvars.iv855, 1
  %exitcond876.not = icmp eq i64 %indvars.iv.next873, %wide.trip.count875
  br i1 %exitcond876.not, label %_ZL14gmx_sfree_implIPfEvPKcS2_iPT_.exit.invoke, label %bb.eh, !llvm.loop !77

bb.eq:                                            ; preds = %bb.ef
  %i.aet = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abn, ptr noundef nonnull @.str.164, i32 noundef %.0, i32 noundef %.0) #19 ; 0 uses
  %i.aeu = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.138, i32 noundef 1290, i64 noundef range(i64 -2147483648, 2147483648) %i.abo, i64 noundef 8)
          to label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit:         ; preds = %bb.eq
  %i.aev = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.138, i32 noundef 1291, i64 noundef range(i64 -2147483648, 2147483648) %i.abo, i64 noundef 8)
          to label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit427.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit427.preheader: ; preds = %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit
  %i.aew = icmp sgt i32 %.2301709, 0              ; 2 uses
  br i1 %i.aew, label %.lr.ph788.preheader, label %.preheader728

.lr.ph788.preheader:                              ; preds = %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit427.preheader
  %wide.trip.count880 = zext nneg i32 %.2301709 to i64
  br label %.lr.ph788

.preheader728:                                    ; preds = %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit427, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit427.preheader
  %i.aex = icmp sgt i32 %.0, 0
  br i1 %i.aex, label %.lr.ph795, label %.preheader722

.lr.ph795:                                        ; preds = %.preheader728
  %i.aey = icmp sgt i32 %.2301709, 1
  %i.aez = add i32 %.2301709, -1                  ; 2 uses
  %wide.trip.count24.i = zext i32 %i.aez to i64   ; 4 uses
  %wide.trip.count.i433 = zext i32 %.2301709 to i64 ; 12 uses
  %i.afa = mul nsw i32 %i.aez, %.2301709
  %i.afb = sdiv i32 %i.afa, 2
  %i.afc = sitofp i32 %i.afb to float             ; 2 uses
  %i.afd = fdiv float 0.000000e+00, %i.afc
  %wide.trip.count893 = zext nneg i32 %.0 to i64  ; 2 uses
  %i.afe = shl nuw nsw i64 %wide.trip.count.i433, 2 ; 2 uses
  %i.aff = mul nuw nsw i64 %wide.trip.count.i433, 12 ; 2 uses
  %i.afg = mul nuw nsw i64 %wide.trip.count24.i, 12 ; 2 uses
  %i.afh = add nsw i64 %wide.trip.count.i433, -1  ; 2 uses
  %i.afi = add nsw i64 %wide.trip.count.i433, -2
  %i.afj = add nsw i64 %wide.trip.count.i433, -1
  br label %bb.es

.lr.ph788:                                        ; preds = %.lr.ph788.preheader, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit427
  %indvars.iv877 = phi i64 [ 0, %.lr.ph788.preheader ], [ %indvars.iv.next878, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit427 ] ; 3 uses
  %i.afk = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.138, i32 noundef 1294, i64 noundef range(i64 -2147483648, 2147483648) %i.abo, i64 noundef 4)
          to label %bb.er unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.er:                                            ; preds = %.lr.ph788
  %i.afl = getelementptr inbounds nuw [8 x i8], ptr %i.aeu, i64 %indvars.iv877
  store ptr %i.afk, ptr %i.afl, align 8, !tbaa !32
  %i.afm = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.138, i32 noundef 1295, i64 noundef range(i64 -2147483648, 2147483648) %i.abo, i64 noundef 4)
          to label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit427 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit427:      ; preds = %bb.er
  %i.afn = getelementptr inbounds nuw [8 x i8], ptr %i.aev, i64 %indvars.iv877
  store ptr %i.afm, ptr %i.afn, align 8, !tbaa !32
  %indvars.iv.next878 = add nuw nsw i64 %indvars.iv877, 1 ; 2 uses
  %exitcond881.not = icmp eq i64 %indvars.iv.next878, %wide.trip.count880
  br i1 %exitcond881.not, label %.preheader728, label %.lr.ph788, !llvm.loop !78

.preheader722:                                    ; preds = %._crit_edge, %.preheader728
  br i1 %i.aew, label %.lr.ph797.preheader, label %._crit_edge798

.lr.ph797.preheader:                              ; preds = %.preheader722
  %wide.trip.count898 = zext nneg i32 %.2301709 to i64
  br label %.lr.ph797

bb.es:                                            ; preds = %.lr.ph795, %._crit_edge
  %indvars.iv890 = phi i64 [ 0, %.lr.ph795 ], [ %indvars.iv.next8911033, %._crit_edge ] ; 6 uses
  %indvars.iv883 = phi i64 [ 1, %.lr.ph795 ], [ %indvars.iv.next884, %._crit_edge ] ; 2 uses
  %.1306794 = phi i64 [ %i.abk, %.lr.ph795 ], [ %i.aof, %._crit_edge ]
  %i.afo = getelementptr inbounds nuw [8 x i8], ptr %.0304, i64 %indvars.iv890
  %i.afp = load ptr, ptr %i.afo, align 8, !tbaa !32 ; 9 uses
  br i1 %i.aey, label %.lr.ph.i434.preheader, label %_ZL9calc_distiPA3_fPPf.exit.thread

.lr.ph.i434.preheader:                            ; preds = %bb.es
  %scevgep1089 = getelementptr i8, ptr %i.afp, i64 %i.aff
  %scevgep1090 = getelementptr i8, ptr %i.afp, i64 %i.afg
  br label %.lr.ph.i434

.loopexit.i437:                                   ; preds = %scalar.ph1098.prol.loopexit, %scalar.ph1098, %middle.block1115
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1 ; 2 uses
  %indvars.iv.next.i438 = add nuw nsw i64 %indvars.iv.i435, 1
  %exitcond25.not.i = icmp eq i64 %indvars.iv.next22.i, %wide.trip.count24.i
  br i1 %exitcond25.not.i, label %_ZL9calc_distiPA3_fPPf.exit, label %.lr.ph.i434, !llvm.loop !79

.lr.ph.i434:                                      ; preds = %.lr.ph.i434.preheader, %.loopexit.i437
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %.loopexit.i437 ], [ 0, %.lr.ph.i434.preheader ] ; 4 uses
  %indvars.iv.i435 = phi i64 [ %indvars.iv.next.i438, %.loopexit.i437 ], [ 1, %.lr.ph.i434.preheader ] ; 7 uses
  %i.afq = getelementptr inbounds nuw [12 x i8], ptr %i.afp, i64 %indvars.iv21.i ; 6 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 4 ; 4 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afq, i64 8 ; 4 uses
  %i.aft = getelementptr inbounds nuw [8 x i8], ptr %i.aeu, i64 %indvars.iv21.i
  %i.afu = load ptr, ptr %i.aft, align 8, !tbaa !32 ; 6 uses
  %i.afv = xor i64 %indvars.iv21.i, -1
  %i.afw = add nsw i64 %i.afv, %wide.trip.count.i433 ; 3 uses
  %min.iters.check1099 = icmp ult i64 %i.afw, 8
  br i1 %min.iters.check1099, label %scalar.ph1098.preheader, label %vector.memcheck1085

vector.memcheck1085:                              ; preds = %.lr.ph.i434
  %i.afx = mul nuw nsw i64 %indvars.iv.i435, 12
  %scevgep1088 = getelementptr nuw i8, ptr %i.afp, i64 %i.afx
  %i.afy = shl nuw nsw i64 %indvars.iv.i435, 2
  %scevgep1086 = getelementptr nuw i8, ptr %i.afu, i64 %i.afy ; 2 uses
  %scevgep1087 = getelementptr i8, ptr %i.afu, i64 %i.afe ; 2 uses
  %bound01091 = icmp ult ptr %scevgep1086, %scevgep1089
  %bound11092 = icmp ult ptr %scevgep1088, %scevgep1087
  %found.conflict1093 = and i1 %bound01091, %bound11092
  %bound01094 = icmp ult ptr %scevgep1086, %scevgep1090
  %bound11095 = icmp ult ptr %i.afp, %scevgep1087
  %found.conflict1096 = and i1 %bound01094, %bound11095
  %conflict.rdx1097 = or i1 %found.conflict1093, %found.conflict1096
  br i1 %conflict.rdx1097, label %scalar.ph1098.preheader, label %vector.ph1100

vector.ph1100:                                    ; preds = %vector.memcheck1085
  %n.vec1101 = and i64 %i.afw, -8                 ; 3 uses
  %i.afz = add i64 %indvars.iv.i435, %n.vec1101
  %i.aga = load float, ptr %i.afq, align 4, !tbaa !27, !alias.scope !202
  %broadcast.splatinsert1108 = insertelement <8 x float> poison, float %i.aga, i64 0
  %broadcast.splat1109 = shufflevector <8 x float> %broadcast.splatinsert1108, <8 x float> poison, <8 x i32> zeroinitializer
  %i.agb = load float, ptr %i.afr, align 4, !tbaa !27, !alias.scope !202
  %broadcast.splatinsert1110 = insertelement <8 x float> poison, float %i.agb, i64 0
  %broadcast.splat1111 = shufflevector <8 x float> %broadcast.splatinsert1110, <8 x float> poison, <8 x i32> zeroinitializer
  %i.agc = load float, ptr %i.afs, align 4, !tbaa !27, !alias.scope !202
  %broadcast.splatinsert1112 = insertelement <8 x float> poison, float %i.agc, i64 0
  %broadcast.splat1113 = shufflevector <8 x float> %broadcast.splatinsert1112, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body1102

vector.body1102:                                  ; preds = %vector.body1102, %vector.ph1100
  %index1103 = phi i64 [ 0, %vector.ph1100 ], [ %index.next1114, %vector.body1102 ] ; 2 uses
  %i.agd = add nuw i64 %indvars.iv.i435, %index1103 ; 2 uses
  %i.age = getelementptr inbounds nuw [12 x i8], ptr %i.afp, i64 %i.agd
  %wide.vec1104 = load <24 x float>, ptr %i.age, align 4, !tbaa !27, !alias.scope !203 ; 3 uses
  %strided.vec1105 = shufflevector <24 x float> %wide.vec1104, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1106 = shufflevector <24 x float> %wide.vec1104, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1107 = shufflevector <24 x float> %wide.vec1104, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.agf = fsub <8 x float> %broadcast.splat1109, %strided.vec1105 ; 2 uses
  %i.agg = fsub <8 x float> %broadcast.splat1111, %strided.vec1106 ; 2 uses
  %i.agh = fsub <8 x float> %broadcast.splat1113, %strided.vec1107 ; 2 uses
  %i.agi = fmul <8 x float> %i.agg, %i.agg
  %i.agj = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.agf, <8 x float> %i.agf, <8 x float> %i.agi)
  %i.agk = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.agh, <8 x float> %i.agh, <8 x float> %i.agj)
  %i.agl = call <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.agk)
  %i.agm = getelementptr inbounds nuw [4 x i8], ptr %i.afu, i64 %i.agd
  store <8 x float> %i.agl, ptr %i.agm, align 4, !tbaa !27, !alias.scope !204, !noalias !205
  %index.next1114 = add nuw i64 %index1103, 8     ; 2 uses
  %i.agn = icmp eq i64 %index.next1114, %n.vec1101
  br i1 %i.agn, label %middle.block1115, label %vector.body1102, !llvm.loop !84

middle.block1115:                                 ; preds = %vector.body1102
  %cmp.n1116 = icmp eq i64 %i.afw, %n.vec1101
  br i1 %cmp.n1116, label %.loopexit.i437, label %scalar.ph1098.preheader

scalar.ph1098.preheader:                          ; preds = %vector.memcheck1085, %.lr.ph.i434, %middle.block1115
  %indvars.iv18.i.ph = phi i64 [ %indvars.iv.i435, %vector.memcheck1085 ], [ %indvars.iv.i435, %.lr.ph.i434 ], [ %i.afz, %middle.block1115 ] ; 6 uses
  %i.ago = sub i64 %wide.trip.count.i433, %indvars.iv18.i.ph
  %xtraiter1271 = and i64 %i.ago, 1
  %lcmp.mod1272.not = icmp eq i64 %xtraiter1271, 0
  br i1 %lcmp.mod1272.not, label %scalar.ph1098.prol.loopexit, label %scalar.ph1098.prol

scalar.ph1098.prol:                               ; preds = %scalar.ph1098.preheader
  %i.agp = getelementptr inbounds nuw [12 x i8], ptr %i.afp, i64 %indvars.iv18.i.ph ; 3 uses
  %i.agq = load float, ptr %i.afq, align 4, !tbaa !27
  %i.agr = load float, ptr %i.agp, align 4, !tbaa !27
  %i.ags = fsub float %i.agq, %i.agr              ; 2 uses
  %i.agt = load float, ptr %i.afr, align 4, !tbaa !27
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agp, i64 4
  %i.agv = load float, ptr %i.agu, align 4, !tbaa !27
  %i.agw = fsub float %i.agt, %i.agv              ; 2 uses
  %i.agx = load float, ptr %i.afs, align 4, !tbaa !27
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agp, i64 8
  %i.agz = load float, ptr %i.agy, align 4, !tbaa !27
  %i.aha = fsub float %i.agx, %i.agz              ; 2 uses
  %i.ahb = fmul float %i.agw, %i.agw
  %i.ahc = call float @llvm.fmuladd.f32(float %i.ags, float %i.ags, float %i.ahb)
  %i.ahd = call noundef float @llvm.fmuladd.f32(float %i.aha, float %i.aha, float %i.ahc)
  %sqrt.i.i.prol = call noundef float @llvm.sqrt.f32(float %i.ahd)
  %i.ahe = getelementptr inbounds nuw [4 x i8], ptr %i.afu, i64 %indvars.iv18.i.ph
  store float %sqrt.i.i.prol, ptr %i.ahe, align 4, !tbaa !27
  %indvars.iv.next19.i.prol = add nuw nsw i64 %indvars.iv18.i.ph, 1
  br label %scalar.ph1098.prol.loopexit

scalar.ph1098.prol.loopexit:                      ; preds = %scalar.ph1098.prol, %scalar.ph1098.preheader
  %indvars.iv18.i.unr = phi i64 [ %indvars.iv18.i.ph, %scalar.ph1098.preheader ], [ %indvars.iv.next19.i.prol, %scalar.ph1098.prol ]
  %i.ahf = icmp eq i64 %i.afh, %indvars.iv18.i.ph
  br i1 %i.ahf, label %.loopexit.i437, label %scalar.ph1098

scalar.ph1098:                                    ; preds = %scalar.ph1098.prol.loopexit, %scalar.ph1098
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i.1, %scalar.ph1098 ], [ %indvars.iv18.i.unr, %scalar.ph1098.prol.loopexit ] ; 4 uses
  %i.ahg = getelementptr inbounds nuw [12 x i8], ptr %i.afp, i64 %indvars.iv18.i ; 3 uses
  %i.ahh = load float, ptr %i.afq, align 4, !tbaa !27
  %i.ahi = load float, ptr %i.ahg, align 4, !tbaa !27
  %i.ahj = fsub float %i.ahh, %i.ahi              ; 2 uses
  %i.ahk = load float, ptr %i.afr, align 4, !tbaa !27
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahg, i64 4
  %i.ahm = load float, ptr %i.ahl, align 4, !tbaa !27
  %i.ahn = fsub float %i.ahk, %i.ahm              ; 2 uses
  %i.aho = load float, ptr %i.afs, align 4, !tbaa !27
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahg, i64 8
  %i.ahq = load float, ptr %i.ahp, align 4, !tbaa !27
  %i.ahr = fsub float %i.aho, %i.ahq              ; 2 uses
  %i.ahs = fmul float %i.ahn, %i.ahn
  %i.aht = call float @llvm.fmuladd.f32(float %i.ahj, float %i.ahj, float %i.ahs)
  %i.ahu = call noundef float @llvm.fmuladd.f32(float %i.ahr, float %i.ahr, float %i.aht)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.ahu)
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr %i.afu, i64 %indvars.iv18.i
  store float %sqrt.i.i, ptr %i.ahv, align 4, !tbaa !27
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1 ; 2 uses
  %i.ahw = getelementptr inbounds nuw [12 x i8], ptr %i.afp, i64 %indvars.iv.next19.i ; 3 uses
  %i.ahx = load float, ptr %i.afq, align 4, !tbaa !27
  %i.ahy = load float, ptr %i.ahw, align 4, !tbaa !27
  %i.ahz = fsub float %i.ahx, %i.ahy              ; 2 uses
  %i.aia = load float, ptr %i.afr, align 4, !tbaa !27
  %i.aib = getelementptr inbounds nuw i8, ptr %i.ahw, i64 4
  %i.aic = load float, ptr %i.aib, align 4, !tbaa !27
  %i.aid = fsub float %i.aia, %i.aic              ; 2 uses
  %i.aie = load float, ptr %i.afs, align 4, !tbaa !27
  %i.aif = getelementptr inbounds nuw i8, ptr %i.ahw, i64 8
  %i.aig = load float, ptr %i.aif, align 4, !tbaa !27
  %i.aih = fsub float %i.aie, %i.aig              ; 2 uses
  %i.aii = fmul float %i.aid, %i.aid
  %i.aij = call float @llvm.fmuladd.f32(float %i.ahz, float %i.ahz, float %i.aii)
  %i.aik = call noundef float @llvm.fmuladd.f32(float %i.aih, float %i.aih, float %i.aij)
  %sqrt.i.i.1 = call noundef float @llvm.sqrt.f32(float %i.aik)
  %i.ail = getelementptr inbounds nuw [4 x i8], ptr %i.afu, i64 %indvars.iv.next19.i
  store float %sqrt.i.i.1, ptr %i.ail, align 4, !tbaa !27
  %indvars.iv.next19.i.1 = add nuw nsw i64 %indvars.iv18.i, 2 ; 2 uses
  %exitcond.not.i436.1 = icmp eq i64 %indvars.iv.next19.i.1, %wide.trip.count.i433
  br i1 %exitcond.not.i436.1, label %.loopexit.i437, label %scalar.ph1098, !llvm.loop !85

_ZL9calc_distiPA3_fPPf.exit:                      ; preds = %.loopexit.i437
  %indvars.iv.next891 = add nuw nsw i64 %indvars.iv890, 1 ; 3 uses
  %i.aim = icmp slt i64 %indvars.iv.next891, %i.abg
  br i1 %i.aim, label %.lr.ph17.preheader.i440.us.preheader, label %._crit_edge

_ZL9calc_distiPA3_fPPf.exit.thread:               ; preds = %bb.es
  %indvars.iv.next8911032 = add nuw nsw i64 %indvars.iv890, 1 ; 4 uses
  %i.ain = icmp slt i64 %indvars.iv.next8911032, %i.abg
  br i1 %i.ain, label %_ZL9calc_distiPA3_fPPf.exit454.thread.preheader, label %._crit_edge

_ZL9calc_distiPA3_fPPf.exit454.thread.preheader:  ; preds = %_ZL9calc_distiPA3_fPPf.exit.thread
  %i.aio = trunc nuw nsw i64 %indvars.iv.next8911032 to i32
  %i.aip = trunc nuw nsw i64 %indvars.iv890 to i32
  br label %_ZL9calc_distiPA3_fPPf.exit454.thread

.lr.ph17.preheader.i440.us.preheader:             ; preds = %_ZL9calc_distiPA3_fPPf.exit
  %i.aiq = trunc nuw nsw i64 %indvars.iv890 to i32
  br label %.lr.ph17.preheader.i440.us

.lr.ph17.preheader.i440.us:                       ; preds = %.lr.ph17.preheader.i440.us.preheader, %bb.et
  %indvars.iv885 = phi i64 [ %indvars.iv883, %.lr.ph17.preheader.i440.us.preheader ], [ %indvars.iv.next886, %bb.et ] ; 3 uses
  %i.air = getelementptr inbounds nuw [8 x i8], ptr %.0304, i64 %indvars.iv885
  %i.ais = load ptr, ptr %i.air, align 8, !tbaa !32 ; 9 uses
  %scevgep1059 = getelementptr i8, ptr %i.ais, i64 %i.aff
  %scevgep1060 = getelementptr i8, ptr %i.ais, i64 %i.afg
  br label %.lr.ph.i443.us

.lr.ph.i443.us:                                   ; preds = %.loopexit.i451.us, %.lr.ph17.preheader.i440.us
  %indvars.iv21.i444.us = phi i64 [ 0, %.lr.ph17.preheader.i440.us ], [ %indvars.iv.next22.i446.us, %.loopexit.i451.us ] ; 4 uses
  %indvars.iv.i445.us = phi i64 [ 1, %.lr.ph17.preheader.i440.us ], [ %indvars.iv.next.i452.us, %.loopexit.i451.us ] ; 7 uses
  %i.ait = getelementptr inbounds nuw [12 x i8], ptr %i.ais, i64 %indvars.iv21.i444.us ; 6 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 4 ; 4 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.ait, i64 8 ; 4 uses
  %i.aiw = getelementptr inbounds nuw [8 x i8], ptr %i.aev, i64 %indvars.iv21.i444.us
  %i.aix = load ptr, ptr %i.aiw, align 8, !tbaa !32 ; 6 uses
  %i.aiy = xor i64 %indvars.iv21.i444.us, -1
  %i.aiz = add nsw i64 %i.aiy, %wide.trip.count.i433 ; 3 uses
  %min.iters.check1068 = icmp ult i64 %i.aiz, 8
  br i1 %min.iters.check1068, label %scalar.ph1067.preheader, label %vector.memcheck1055

vector.memcheck1055:                              ; preds = %.lr.ph.i443.us
  %i.aja = mul nuw nsw i64 %indvars.iv.i445.us, 12
  %scevgep1058 = getelementptr nuw i8, ptr %i.ais, i64 %i.aja
  %i.ajb = shl nuw nsw i64 %indvars.iv.i445.us, 2
  %scevgep1056 = getelementptr nuw i8, ptr %i.aix, i64 %i.ajb ; 2 uses
  %scevgep1057 = getelementptr i8, ptr %i.aix, i64 %i.afe ; 2 uses
  %bound01061 = icmp ult ptr %scevgep1056, %scevgep1059
  %bound11062 = icmp ult ptr %scevgep1058, %scevgep1057
  %found.conflict1063 = and i1 %bound01061, %bound11062
  %bound01064 = icmp ult ptr %scevgep1056, %scevgep1060
  %bound11065 = icmp ult ptr %i.ais, %scevgep1057
  %found.conflict1066 = and i1 %bound01064, %bound11065
  %conflict.rdx = or i1 %found.conflict1063, %found.conflict1066
  br i1 %conflict.rdx, label %scalar.ph1067.preheader, label %vector.ph1069

vector.ph1069:                                    ; preds = %vector.memcheck1055
  %n.vec1070 = and i64 %i.aiz, -8                 ; 3 uses
  %i.ajc = add i64 %indvars.iv.i445.us, %n.vec1070
  %i.ajd = load float, ptr %i.ait, align 4, !tbaa !27, !alias.scope !206
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ajd, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aje = load float, ptr %i.aiu, align 4, !tbaa !27, !alias.scope !206
  %broadcast.splatinsert1077 = insertelement <8 x float> poison, float %i.aje, i64 0
  %broadcast.splat1078 = shufflevector <8 x float> %broadcast.splatinsert1077, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ajf = load float, ptr %i.aiv, align 4, !tbaa !27, !alias.scope !206
  %broadcast.splatinsert1079 = insertelement <8 x float> poison, float %i.ajf, i64 0
  %broadcast.splat1080 = shufflevector <8 x float> %broadcast.splatinsert1079, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body1071

vector.body1071:                                  ; preds = %vector.body1071, %vector.ph1069
  %index1072 = phi i64 [ 0, %vector.ph1069 ], [ %index.next1081, %vector.body1071 ] ; 2 uses
  %i.ajg = add nuw i64 %indvars.iv.i445.us, %index1072 ; 2 uses
  %i.ajh = getelementptr inbounds nuw [12 x i8], ptr %i.ais, i64 %i.ajg
  %wide.vec1073 = load <24 x float>, ptr %i.ajh, align 4, !tbaa !27, !alias.scope !207 ; 3 uses
  %strided.vec1074 = shufflevector <24 x float> %wide.vec1073, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1075 = shufflevector <24 x float> %wide.vec1073, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1076 = shufflevector <24 x float> %wide.vec1073, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.aji = fsub <8 x float> %broadcast.splat, %strided.vec1074 ; 2 uses
  %i.ajj = fsub <8 x float> %broadcast.splat1078, %strided.vec1075 ; 2 uses
  %i.ajk = fsub <8 x float> %broadcast.splat1080, %strided.vec1076 ; 2 uses
  %i.ajl = fmul <8 x float> %i.ajj, %i.ajj
  %i.ajm = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.aji, <8 x float> %i.aji, <8 x float> %i.ajl)
  %i.ajn = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ajk, <8 x float> %i.ajk, <8 x float> %i.ajm)
  %i.ajo = call <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.ajn)
  %i.ajp = getelementptr inbounds nuw [4 x i8], ptr %i.aix, i64 %i.ajg
  store <8 x float> %i.ajo, ptr %i.ajp, align 4, !tbaa !27, !alias.scope !208, !noalias !209
  %index.next1081 = add nuw i64 %index1072, 8     ; 2 uses
  %i.ajq = icmp eq i64 %index.next1081, %n.vec1070
  br i1 %i.ajq, label %middle.block1082, label %vector.body1071, !llvm.loop !90

middle.block1082:                                 ; preds = %vector.body1071
  %cmp.n1083 = icmp eq i64 %i.aiz, %n.vec1070
  br i1 %cmp.n1083, label %.loopexit.i451.us, label %scalar.ph1067.preheader

scalar.ph1067.preheader:                          ; preds = %vector.memcheck1055, %.lr.ph.i443.us, %middle.block1082
  %indvars.iv18.i447.us.ph = phi i64 [ %indvars.iv.i445.us, %vector.memcheck1055 ], [ %indvars.iv.i445.us, %.lr.ph.i443.us ], [ %i.ajc, %middle.block1082 ] ; 6 uses
  %i.ajr = sub i64 %wide.trip.count.i433, %indvars.iv18.i447.us.ph
  %xtraiter1274 = and i64 %i.ajr, 1
  %lcmp.mod1275.not = icmp eq i64 %xtraiter1274, 0
  br i1 %lcmp.mod1275.not, label %scalar.ph1067.prol.loopexit, label %scalar.ph1067.prol

scalar.ph1067.prol:                               ; preds = %scalar.ph1067.preheader
  %i.ajs = getelementptr inbounds nuw [12 x i8], ptr %i.ais, i64 %indvars.iv18.i447.us.ph ; 3 uses
  %i.ajt = load float, ptr %i.ait, align 4, !tbaa !27
  %i.aju = load float, ptr %i.ajs, align 4, !tbaa !27
  %i.ajv = fsub float %i.ajt, %i.aju              ; 2 uses
  %i.ajw = load float, ptr %i.aiu, align 4, !tbaa !27
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajs, i64 4
  %i.ajy = load float, ptr %i.ajx, align 4, !tbaa !27
  %i.ajz = fsub float %i.ajw, %i.ajy              ; 2 uses
  %i.aka = load float, ptr %i.aiv, align 4, !tbaa !27
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajs, i64 8
  %i.akc = load float, ptr %i.akb, align 4, !tbaa !27
  %i.akd = fsub float %i.aka, %i.akc              ; 2 uses
  %i.ake = fmul float %i.ajz, %i.ajz
  %i.akf = call float @llvm.fmuladd.f32(float %i.ajv, float %i.ajv, float %i.ake)
  %i.akg = call noundef float @llvm.fmuladd.f32(float %i.akd, float %i.akd, float %i.akf)
  %sqrt.i.i448.us.prol = call noundef float @llvm.sqrt.f32(float %i.akg)
  %i.akh = getelementptr inbounds nuw [4 x i8], ptr %i.aix, i64 %indvars.iv18.i447.us.ph
  store float %sqrt.i.i448.us.prol, ptr %i.akh, align 4, !tbaa !27
  %indvars.iv.next19.i449.us.prol = add nuw nsw i64 %indvars.iv18.i447.us.ph, 1
  br label %scalar.ph1067.prol.loopexit

scalar.ph1067.prol.loopexit:                      ; preds = %scalar.ph1067.prol, %scalar.ph1067.preheader
  %indvars.iv18.i447.us.unr = phi i64 [ %indvars.iv18.i447.us.ph, %scalar.ph1067.preheader ], [ %indvars.iv.next19.i449.us.prol, %scalar.ph1067.prol ]
  %i.aki = icmp eq i64 %indvars.iv18.i447.us.ph, %i.afj
  br i1 %i.aki, label %.loopexit.i451.us, label %scalar.ph1067

scalar.ph1067:                                    ; preds = %scalar.ph1067.prol.loopexit, %scalar.ph1067
  %indvars.iv18.i447.us = phi i64 [ %indvars.iv.next19.i449.us.1, %scalar.ph1067 ], [ %indvars.iv18.i447.us.unr, %scalar.ph1067.prol.loopexit ] ; 4 uses
  %i.akj = getelementptr inbounds nuw [12 x i8], ptr %i.ais, i64 %indvars.iv18.i447.us ; 3 uses
  %i.akk = load float, ptr %i.ait, align 4, !tbaa !27
  %i.akl = load float, ptr %i.akj, align 4, !tbaa !27
  %i.akm = fsub float %i.akk, %i.akl              ; 2 uses
  %i.akn = load float, ptr %i.aiu, align 4, !tbaa !27
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akj, i64 4
  %i.akp = load float, ptr %i.ako, align 4, !tbaa !27
  %i.akq = fsub float %i.akn, %i.akp              ; 2 uses
  %i.akr = load float, ptr %i.aiv, align 4, !tbaa !27
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akj, i64 8
  %i.akt = load float, ptr %i.aks, align 4, !tbaa !27
  %i.aku = fsub float %i.akr, %i.akt              ; 2 uses
  %i.akv = fmul float %i.akq, %i.akq
  %i.akw = call float @llvm.fmuladd.f32(float %i.akm, float %i.akm, float %i.akv)
  %i.akx = call noundef float @llvm.fmuladd.f32(float %i.aku, float %i.aku, float %i.akw)
  %sqrt.i.i448.us = call noundef float @llvm.sqrt.f32(float %i.akx)
  %i.aky = getelementptr inbounds nuw [4 x i8], ptr %i.aix, i64 %indvars.iv18.i447.us
  store float %sqrt.i.i448.us, ptr %i.aky, align 4, !tbaa !27
  %indvars.iv.next19.i449.us = add nuw nsw i64 %indvars.iv18.i447.us, 1 ; 2 uses
  %i.akz = getelementptr inbounds nuw [12 x i8], ptr %i.ais, i64 %indvars.iv.next19.i449.us ; 3 uses
  %i.ala = load float, ptr %i.ait, align 4, !tbaa !27
  %i.alb = load float, ptr %i.akz, align 4, !tbaa !27
  %i.alc = fsub float %i.ala, %i.alb              ; 2 uses
  %i.ald = load float, ptr %i.aiu, align 4, !tbaa !27
  %i.ale = getelementptr inbounds nuw i8, ptr %i.akz, i64 4
  %i.alf = load float, ptr %i.ale, align 4, !tbaa !27
  %i.alg = fsub float %i.ald, %i.alf              ; 2 uses
  %i.alh = load float, ptr %i.aiv, align 4, !tbaa !27
  %i.ali = getelementptr inbounds nuw i8, ptr %i.akz, i64 8
  %i.alj = load float, ptr %i.ali, align 4, !tbaa !27
  %i.alk = fsub float %i.alh, %i.alj              ; 2 uses
  %i.all = fmul float %i.alg, %i.alg
  %i.alm = call float @llvm.fmuladd.f32(float %i.alc, float %i.alc, float %i.all)
  %i.aln = call noundef float @llvm.fmuladd.f32(float %i.alk, float %i.alk, float %i.alm)
  %sqrt.i.i448.us.1 = call noundef float @llvm.sqrt.f32(float %i.aln)
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr %i.aix, i64 %indvars.iv.next19.i449.us
  store float %sqrt.i.i448.us.1, ptr %i.alo, align 4, !tbaa !27
  %indvars.iv.next19.i449.us.1 = add nuw nsw i64 %indvars.iv18.i447.us, 2 ; 2 uses
  %exitcond.not.i450.us.1 = icmp eq i64 %indvars.iv.next19.i449.us.1, %wide.trip.count.i433
  br i1 %exitcond.not.i450.us.1, label %.loopexit.i451.us, label %scalar.ph1067, !llvm.loop !91

.loopexit.i451.us:                                ; preds = %scalar.ph1067.prol.loopexit, %scalar.ph1067, %middle.block1082
  %indvars.iv.next22.i446.us = add nuw nsw i64 %indvars.iv21.i444.us, 1 ; 2 uses
  %indvars.iv.next.i452.us = add nuw nsw i64 %indvars.iv.i445.us, 1
  %exitcond25.not.i453.us = icmp eq i64 %indvars.iv.next22.i446.us, %wide.trip.count24.i
  br i1 %exitcond25.not.i453.us, label %.lr.ph.i457.us, label %.lr.ph.i443.us, !llvm.loop !79

.lr.ph.i457.us:                                   ; preds = %.loopexit.i451.us, %.loopexit.i460.us
  %indvars.iv32.i.us = phi i64 [ %indvars.iv.next33.i.us, %.loopexit.i460.us ], [ 0, %.loopexit.i451.us ] ; 5 uses
  %indvars.iv.i458.us = phi i64 [ %indvars.iv.next.i461.us, %.loopexit.i460.us ], [ 1, %.loopexit.i451.us ] ; 3 uses
  %.025.i.us = phi float [ %.lcssa1258, %.loopexit.i460.us ], [ 0.000000e+00, %.loopexit.i451.us ] ; 2 uses
  %i.alp = sub i64 %i.afh, %indvars.iv32.i.us
  %i.alq = sub i64 %i.afi, %indvars.iv32.i.us
  %i.alr = getelementptr inbounds nuw [8 x i8], ptr %i.aeu, i64 %indvars.iv32.i.us
  %i.als = load ptr, ptr %i.alr, align 8, !tbaa !32 ; 9 uses
  %i.alt = getelementptr inbounds nuw [8 x i8], ptr %i.aev, i64 %indvars.iv32.i.us
  %i.alu = load ptr, ptr %i.alt, align 8, !tbaa !32 ; 9 uses
  %xtraiter1277 = and i64 %i.alp, 7               ; 2 uses
  %lcmp.mod1278.not = icmp eq i64 %xtraiter1277, 0
  br i1 %lcmp.mod1278.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i457.us, %.prol.preheader
  %indvars.iv29.i.us.prol = phi i64 [ %indvars.iv.next30.i.us.prol, %.prol.preheader ], [ %indvars.iv.i458.us, %.lr.ph.i457.us ] ; 3 uses
  %.123.i.us.prol = phi float [ %i.ama, %.prol.preheader ], [ %.025.i.us, %.lr.ph.i457.us ]
  %prol.iter1279 = phi i64 [ %prol.iter1279.next, %.prol.preheader ], [ 0, %.lr.ph.i457.us ]
  %i.alv = getelementptr inbounds nuw [4 x i8], ptr %i.als, i64 %indvars.iv29.i.us.prol
  %i.alw = load float, ptr %i.alv, align 4, !tbaa !27
  %i.alx = getelementptr inbounds nuw [4 x i8], ptr %i.alu, i64 %indvars.iv29.i.us.prol
  %i.aly = load float, ptr %i.alx, align 4, !tbaa !27
  %i.alz = fsub float %i.alw, %i.aly              ; 2 uses
  %i.ama = call float @llvm.fmuladd.f32(float %i.alz, float %i.alz, float %.123.i.us.prol) ; 3 uses
  %indvars.iv.next30.i.us.prol = add nuw nsw i64 %indvars.iv29.i.us.prol, 1 ; 2 uses
  %prol.iter1279.next = add i64 %prol.iter1279, 1 ; 2 uses
  %prol.iter1279.cmp.not = icmp eq i64 %prol.iter1279.next, %xtraiter1277
  br i1 %prol.iter1279.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !92

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i457.us
  %.lcssa1258.unr = phi float [ poison, %.lr.ph.i457.us ], [ %i.ama, %.prol.preheader ]
  %indvars.iv29.i.us.unr = phi i64 [ %indvars.iv.i458.us, %.lr.ph.i457.us ], [ %indvars.iv.next30.i.us.prol, %.prol.preheader ]
  %.123.i.us.unr = phi float [ %.025.i.us, %.lr.ph.i457.us ], [ %i.ama, %.prol.preheader ]
  %i.amb = icmp ult i64 %i.alq, 7
  br i1 %i.amb, label %.loopexit.i460.us, label %.lr.ph.i457.us.new

.lr.ph.i457.us.new:                               ; preds = %.prol.loopexit, %.lr.ph.i457.us.new
  %indvars.iv29.i.us = phi i64 [ %indvars.iv.next30.i.us.7, %.lr.ph.i457.us.new ], [ %indvars.iv29.i.us.unr, %.prol.loopexit ] ; 10 uses
  %.123.i.us = phi float [ %i.anx, %.lr.ph.i457.us.new ], [ %.123.i.us.unr, %.prol.loopexit ]
  %i.amc = getelementptr inbounds nuw [4 x i8], ptr %i.als, i64 %indvars.iv29.i.us
  %i.amd = load float, ptr %i.amc, align 4, !tbaa !27
  %i.ame = getelementptr inbounds nuw [4 x i8], ptr %i.alu, i64 %indvars.iv29.i.us
  %i.amf = load float, ptr %i.ame, align 4, !tbaa !27
  %i.amg = fsub float %i.amd, %i.amf              ; 2 uses
  %i.amh = call float @llvm.fmuladd.f32(float %i.amg, float %i.amg, float %.123.i.us)
  %indvars.iv.next30.i.us = add nuw nsw i64 %indvars.iv29.i.us, 1 ; 2 uses
  %i.ami = getelementptr inbounds nuw [4 x i8], ptr %i.als, i64 %indvars.iv.next30.i.us
  %i.amj = load float, ptr %i.ami, align 4, !tbaa !27
  %i.amk = getelementptr inbounds nuw [4 x i8], ptr %i.alu, i64 %indvars.iv.next30.i.us
  %i.aml = load float, ptr %i.amk, align 4, !tbaa !27
  %i.amm = fsub float %i.amj, %i.aml              ; 2 uses
  %i.amn = call float @llvm.fmuladd.f32(float %i.amm, float %i.amm, float %i.amh)
  %indvars.iv.next30.i.us.1 = add nuw nsw i64 %indvars.iv29.i.us, 2 ; 2 uses
  %i.amo = getelementptr inbounds nuw [4 x i8], ptr %i.als, i64 %indvars.iv.next30.i.us.1
  %i.amp = load float, ptr %i.amo, align 4, !tbaa !27
  %i.amq = getelementptr inbounds nuw [4 x i8], ptr %i.alu, i64 %indvars.iv.next30.i.us.1
  %i.amr = load float, ptr %i.amq, align 4, !tbaa !27
  %i.ams = fsub float %i.amp, %i.amr              ; 2 uses
  %i.amt = call float @llvm.fmuladd.f32(float %i.ams, float %i.ams, float %i.amn)
  %indvars.iv.next30.i.us.2 = add nuw nsw i64 %indvars.iv29.i.us, 3 ; 2 uses
  %i.amu = getelementptr inbounds nuw [4 x i8], ptr %i.als, i64 %indvars.iv.next30.i.us.2
  %i.amv = load float, ptr %i.amu, align 4, !tbaa !27
  %i.amw = getelementptr inbounds nuw [4 x i8], ptr %i.alu, i64 %indvars.iv.next30.i.us.2
  %i.amx = load float, ptr %i.amw, align 4, !tbaa !27
  %i.amy = fsub float %i.amv, %i.amx              ; 2 uses
  %i.amz = call float @llvm.fmuladd.f32(float %i.amy, float %i.amy, float %i.amt)
  %indvars.iv.next30.i.us.3 = add nuw nsw i64 %indvars.iv29.i.us, 4 ; 2 uses
  %i.ana = getelementptr inbounds nuw [4 x i8], ptr %i.als, i64 %indvars.iv.next30.i.us.3
end_hunk_0
