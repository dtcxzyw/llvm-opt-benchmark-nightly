Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_cluster?download=true
inline.NumInlined: 443
inline.NumDeleted: 185
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_Z11gmx_clusteriPPc:bb.a
  %indvars.iv.next858 = add nuw nsw i64 %indvars.iv857, 1 ; 2 uses
  %i.acx = getelementptr inbounds nuw [12 x i8], ptr %i.abz, i64 %indvars.iv.next858 ; 3 uses
  %i.acy = getelementptr inbounds nuw [12 x i8], ptr %i.abs, i64 %indvars.iv.next858 ; 3 uses
  %i.acz = load float, ptr %i.acx, align 4, !tbaa !45
  store float %i.acz, ptr %i.acy, align 4, !tbaa !45
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acx, i64 4
  %i.adb = load float, ptr %i.ada, align 4, !tbaa !45
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acy, i64 4
  store float %i.adb, ptr %i.adc, align 4, !tbaa !45
  %i.add = getelementptr inbounds nuw i8, ptr %i.acx, i64 8
  %i.ade = load float, ptr %i.add, align 4, !tbaa !45
  %i.adf = getelementptr inbounds nuw i8, ptr %i.acy, i64 8
  store float %i.ade, ptr %i.adf, align 4, !tbaa !45
  %indvars.iv.next858.1 = add nuw nsw i64 %indvars.iv857, 2 ; 2 uses
  %i.adg = getelementptr inbounds nuw [12 x i8], ptr %i.abz, i64 %indvars.iv.next858.1 ; 3 uses
  %i.adh = getelementptr inbounds nuw [12 x i8], ptr %i.abs, i64 %indvars.iv.next858.1 ; 3 uses
  %i.adi = load float, ptr %i.adg, align 4, !tbaa !45
  store float %i.adi, ptr %i.adh, align 4, !tbaa !45
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adg, i64 4
  %i.adk = load float, ptr %i.adj, align 4, !tbaa !45
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adh, i64 4
  store float %i.adk, ptr %i.adl, align 4, !tbaa !45
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adg, i64 8
  %i.adn = load float, ptr %i.adm, align 4, !tbaa !45
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adh, i64 8
  store float %i.adn, ptr %i.ado, align 4, !tbaa !45
  %indvars.iv.next858.2 = add nuw nsw i64 %indvars.iv857, 3 ; 2 uses
  %i.adp = getelementptr inbounds nuw [12 x i8], ptr %i.abz, i64 %indvars.iv.next858.2 ; 3 uses
  %i.adq = getelementptr inbounds nuw [12 x i8], ptr %i.abs, i64 %indvars.iv.next858.2 ; 3 uses
  %i.adr = load float, ptr %i.adp, align 4, !tbaa !45
  store float %i.adr, ptr %i.adq, align 4, !tbaa !45
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adp, i64 4
  %i.adt = load float, ptr %i.ads, align 4, !tbaa !45
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adq, i64 4
  store float %i.adt, ptr %i.adu, align 4, !tbaa !45
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adp, i64 8
  %i.adw = load float, ptr %i.adv, align 4, !tbaa !45
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adq, i64 8
  store float %i.adw, ptr %i.adx, align 4, !tbaa !45
  %indvars.iv.next858.3 = add nuw nsw i64 %indvars.iv857, 4 ; 2 uses
  %exitcond861.not.3 = icmp eq i64 %indvars.iv.next858.3, %wide.trip.count860
  br i1 %exitcond861.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !145

bb.ei:                                            ; preds = %._crit_edge.us
  %i.ady = getelementptr inbounds nuw [8 x i8], ptr %.0304, i64 %indvars.iv862
  %i.adz = load ptr, ptr %i.ady, align 8, !tbaa !72
  invoke void @_Z6do_fitiPfPA3_KfPA3_f(i32 noundef %.2301704, ptr noundef %.1679, ptr noundef %i.adz, ptr noundef nonnull %i.abs)
          to label %bb.ej unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us

bb.ej:                                            ; preds = %bb.ei, %._crit_edge.us
  %i.aea = getelementptr inbounds nuw [8 x i8], ptr %.0304, i64 %indvars.iv862
  %i.aeb = load ptr, ptr %i.aea, align 8, !tbaa !72
  %i.aec = invoke noundef float @_Z6rmsdeviPfPA3_fS1_(i32 noundef %.2301704, ptr noundef %.1679, ptr noundef %i.aeb, ptr noundef nonnull %i.abs)
          to label %bb.ek unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us

bb.ek:                                            ; preds = %bb.ej
  %i.aed = trunc nuw nsw i64 %indvars.iv862 to i32
  invoke void @_Z13set_mat_entryP5t_matiif(ptr noundef %i.abh, i32 noundef %i.aby, i32 noundef %i.aed, float noundef %i.aec)
          to label %bb.el unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us

bb.el:                                            ; preds = %bb.ek
  %indvars.iv.next863 = add nuw nsw i64 %indvars.iv862, 1 ; 2 uses
  %exitcond866.not = icmp eq i64 %indvars.iv.next863, %wide.trip.count870
  br i1 %exitcond866.not, label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit, label %.preheader726.us, !llvm.loop !146

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.aee = load i8, ptr %i.x, align 1, !tbaa !15, !range !47, !noundef !48
  %i.aef = trunc nuw i8 %i.aee to i1
  br i1 %i.aef, label %bb.ei, label %bb.ej

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us: ; preds = %bb.ek, %bb.ej, %bb.ei
  %lpad.loopexit727.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.preheader726:                                    ; preds = %.preheader726.lr.ph, %bb.ep
  %indvars.iv852 = phi i64 [ %indvars.iv.next853, %bb.ep ], [ %indvars.iv850, %.preheader726.lr.ph ] ; 4 uses
  %i.aeg = load i8, ptr %i.x, align 1, !tbaa !15, !range !47, !noundef !48
  %i.aeh = trunc nuw i8 %i.aeg to i1
  br i1 %i.aeh, label %bb.em, label %bb.en

bb.em:                                            ; preds = %.preheader726
  %i.aei = getelementptr inbounds nuw [8 x i8], ptr %.0304, i64 %indvars.iv852
  %i.aej = load ptr, ptr %i.aei, align 8, !tbaa !72
  invoke void @_Z6do_fitiPfPA3_KfPA3_f(i32 noundef %.2301704, ptr noundef %.1679, ptr noundef %i.aej, ptr noundef %i.abs)
          to label %bb.en unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split

bb.en:                                            ; preds = %bb.em, %.preheader726
  %i.aek = getelementptr inbounds nuw [8 x i8], ptr %.0304, i64 %indvars.iv852
  %i.ael = load ptr, ptr %i.aek, align 8, !tbaa !72
  %i.aem = invoke noundef float @_Z6rmsdeviPfPA3_fS1_(i32 noundef %.2301704, ptr noundef %.1679, ptr noundef %i.ael, ptr noundef %i.abs)
          to label %bb.eo unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split

bb.eo:                                            ; preds = %bb.en
  %i.aen = trunc nuw nsw i64 %indvars.iv852 to i32
  invoke void @_Z13set_mat_entryP5t_matiif(ptr noundef %i.abh, i32 noundef %i.aby, i32 noundef %i.aen, float noundef %i.aem)
          to label %bb.ep unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split

bb.ep:                                            ; preds = %bb.eo
  %indvars.iv.next853 = add nuw nsw i64 %indvars.iv852, 1 ; 2 uses
  %exitcond856.not = icmp eq i64 %indvars.iv.next853, %wide.trip.count870
  br i1 %exitcond856.not, label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit, label %.preheader726, !llvm.loop !146

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit:       ; preds = %bb.ep, %bb.el, %bb.eh
  %i.aeo = xor i64 %indvars.iv867, -1
  %i.aep = add nsw i64 %i.abi, %i.aeo
  %i.aeq = sub nsw i64 %.0305780, %i.aep          ; 2 uses
  %i.aer = load ptr, ptr @stderr, align 8, !tbaa !37
  %i.aes = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aer, ptr noundef nonnull @.str.163, i64 noundef %i.aeq) #19 ; 0 uses
  %i.aet = load ptr, ptr @stderr, align 8, !tbaa !37
  %i.aeu = call i32 @fflush(ptr noundef %i.aet)   ; 0 uses
  %indvars.iv.next851 = add nuw nsw i64 %indvars.iv850, 1
  %exitcond871.not = icmp eq i64 %indvars.iv.next868, %wide.trip.count870
  br i1 %exitcond871.not, label %_ZL14gmx_sfree_implIPfEvPKcS2_iPT_.exit.invoke, label %bb.eh, !llvm.loop !147

bb.eq:                                            ; preds = %bb.ef
  %i.aev = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abp, ptr noundef nonnull @.str.164, i32 noundef %.0, i32 noundef %.0) #19 ; 0 uses
  %i.aew = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.138, i32 noundef 1290, i64 noundef range(i64 -2147483648, 2147483648) %i.abq, i64 noundef 8)
          to label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit:         ; preds = %bb.eq
  %i.aex = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.138, i32 noundef 1291, i64 noundef range(i64 -2147483648, 2147483648) %i.abq, i64 noundef 8)
          to label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit422.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit422.preheader: ; preds = %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit
  %i.aey = icmp sgt i32 %.2301704, 0              ; 2 uses
  br i1 %i.aey, label %.lr.ph783.preheader, label %.preheader723

.lr.ph783.preheader:                              ; preds = %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit422.preheader
  %wide.trip.count875 = zext nneg i32 %.2301704 to i64
  br label %.lr.ph783

.preheader723:                                    ; preds = %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit422, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit422.preheader
  %i.aez = icmp sgt i32 %.0, 0
  br i1 %i.aez, label %.lr.ph790, label %.preheader717

.lr.ph790:                                        ; preds = %.preheader723
  %i.afa = icmp sgt i32 %.2301704, 1
  %i.afb = add i32 %.2301704, -1                  ; 2 uses
  %wide.trip.count24.i = zext i32 %i.afb to i64   ; 4 uses
  %wide.trip.count.i428 = zext i32 %.2301704 to i64 ; 11 uses
  %i.afc = mul nsw i32 %i.afb, %.2301704
  %i.afd = sdiv i32 %i.afc, 2
  %i.afe = sitofp i32 %i.afd to float             ; 2 uses
  %i.aff = fdiv float 0.000000e+00, %i.afe
  %wide.trip.count888 = zext nneg i32 %.0 to i64  ; 2 uses
  %i.afg = shl nuw nsw i64 %wide.trip.count.i428, 2 ; 2 uses
  %i.afh = mul nuw nsw i64 %wide.trip.count.i428, 12 ; 2 uses
  %i.afi = mul nuw nsw i64 %wide.trip.count24.i, 12 ; 2 uses
  %i.afj = add nsw i64 %wide.trip.count.i428, -1  ; 3 uses
  %i.afk = add nsw i64 %wide.trip.count.i428, -2
  %i.afl = add nsw i64 %wide.trip.count.i428, -1
  %i.afm = add nsw i64 %wide.trip.count.i428, -1
  br label %bb.es

.lr.ph783:                                        ; preds = %.lr.ph783.preheader, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit422
  %indvars.iv872 = phi i64 [ 0, %.lr.ph783.preheader ], [ %indvars.iv.next873, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit422 ] ; 3 uses
  %i.afn = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.138, i32 noundef 1294, i64 noundef range(i64 -2147483648, 2147483648) %i.abq, i64 noundef 4)
          to label %bb.er unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.er:                                            ; preds = %.lr.ph783
  %i.afo = getelementptr inbounds nuw [8 x i8], ptr %i.aew, i64 %indvars.iv872
  store ptr %i.afn, ptr %i.afo, align 8, !tbaa !72
  %i.afp = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.138, i32 noundef 1295, i64 noundef range(i64 -2147483648, 2147483648) %i.abq, i64 noundef 4)
          to label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit422 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit422:      ; preds = %bb.er
  %i.afq = getelementptr inbounds nuw [8 x i8], ptr %i.aex, i64 %indvars.iv872
  store ptr %i.afp, ptr %i.afq, align 8, !tbaa !72
  %indvars.iv.next873 = add nuw nsw i64 %indvars.iv872, 1 ; 2 uses
  %exitcond876.not = icmp eq i64 %indvars.iv.next873, %wide.trip.count875
  br i1 %exitcond876.not, label %.preheader723, label %.lr.ph783, !llvm.loop !148

.preheader717:                                    ; preds = %._crit_edge, %.preheader723
  br i1 %i.aey, label %.lr.ph792.preheader, label %._crit_edge793

.lr.ph792.preheader:                              ; preds = %.preheader717
  %wide.trip.count893 = zext nneg i32 %.2301704 to i64
  br label %.lr.ph792

bb.es:                                            ; preds = %.lr.ph790, %._crit_edge
  %indvars.iv885 = phi i64 [ 0, %.lr.ph790 ], [ %indvars.iv.next8861028, %._crit_edge ] ; 6 uses
  %indvars.iv878 = phi i64 [ 1, %.lr.ph790 ], [ %indvars.iv.next879, %._crit_edge ] ; 2 uses
  %.1306789 = phi i64 [ %i.abm, %.lr.ph790 ], [ %i.aog, %._crit_edge ]
  %i.afr = getelementptr inbounds nuw [8 x i8], ptr %.0304, i64 %indvars.iv885
  %i.afs = load ptr, ptr %i.afr, align 8, !tbaa !72 ; 9 uses
  br i1 %i.afa, label %.lr.ph.i429.preheader, label %_ZL9calc_distiPA3_fPPf.exit.thread

.lr.ph.i429.preheader:                            ; preds = %bb.es
  %scevgep1084 = getelementptr i8, ptr %i.afs, i64 %i.afh
  %scevgep1085 = getelementptr i8, ptr %i.afs, i64 %i.afi
  br label %.lr.ph.i429

.loopexit.i432:                                   ; preds = %scalar.ph1093.prol.loopexit, %scalar.ph1093, %middle.block1110
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1 ; 2 uses
  %indvars.iv.next.i433 = add nuw nsw i64 %indvars.iv.i430, 1
  %exitcond25.not.i = icmp eq i64 %indvars.iv.next22.i, %wide.trip.count24.i
  br i1 %exitcond25.not.i, label %_ZL9calc_distiPA3_fPPf.exit, label %.lr.ph.i429, !llvm.loop !149

.lr.ph.i429:                                      ; preds = %.lr.ph.i429.preheader, %.loopexit.i432
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %.loopexit.i432 ], [ 0, %.lr.ph.i429.preheader ] ; 6 uses
  %indvars.iv.i430 = phi i64 [ %indvars.iv.next.i433, %.loopexit.i432 ], [ 1, %.lr.ph.i429.preheader ] ; 5 uses
  %i.aft = sub i64 %i.afj, %indvars.iv21.i        ; 3 uses
  %i.afu = getelementptr inbounds nuw [12 x i8], ptr %i.afs, i64 %indvars.iv21.i ; 6 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 4 ; 4 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afu, i64 8 ; 4 uses
  %i.afx = getelementptr inbounds nuw [8 x i8], ptr %i.aew, i64 %indvars.iv21.i
  %i.afy = load ptr, ptr %i.afx, align 8, !tbaa !72 ; 6 uses
  %min.iters.check1094 = icmp ult i64 %i.aft, 8
  br i1 %min.iters.check1094, label %scalar.ph1093.preheader, label %vector.memcheck1080

vector.memcheck1080:                              ; preds = %.lr.ph.i429
  %i.afz = mul nuw nsw i64 %indvars.iv21.i, 12
  %36 = getelementptr nuw i8, ptr %i.afs, i64 %i.afz
  %scevgep1083 = getelementptr nuw i8, ptr %36, i64 12
  %i.aga = shl nuw nsw i64 %indvars.iv21.i, 2
  %37 = getelementptr nuw i8, ptr %i.afy, i64 %i.aga
  %scevgep1081 = getelementptr nuw i8, ptr %37, i64 4 ; 2 uses
  %scevgep1082 = getelementptr i8, ptr %i.afy, i64 %i.afg ; 2 uses
  %bound01086 = icmp ult ptr %scevgep1081, %scevgep1084
  %bound11087 = icmp ult ptr %scevgep1083, %scevgep1082
  %found.conflict1088 = and i1 %bound01086, %bound11087
  %bound01089 = icmp ult ptr %scevgep1081, %scevgep1085
  %bound11090 = icmp ult ptr %i.afs, %scevgep1082
  %found.conflict1091 = and i1 %bound01089, %bound11090
  %conflict.rdx1092 = or i1 %found.conflict1088, %found.conflict1091
  br i1 %conflict.rdx1092, label %scalar.ph1093.preheader, label %vector.ph1095

vector.ph1095:                                    ; preds = %vector.memcheck1080
  %n.vec1096 = and i64 %i.aft, -8                 ; 3 uses
  %i.agb = add i64 %indvars.iv.i430, %n.vec1096
  %i.agc = load float, ptr %i.afu, align 4, !tbaa !45, !alias.scope !150
  %broadcast.splatinsert1103 = insertelement <8 x float> poison, float %i.agc, i64 0
  %broadcast.splat1104 = shufflevector <8 x float> %broadcast.splatinsert1103, <8 x float> poison, <8 x i32> zeroinitializer
  %i.agd = load float, ptr %i.afv, align 4, !tbaa !45, !alias.scope !150
  %broadcast.splatinsert1105 = insertelement <8 x float> poison, float %i.agd, i64 0
  %broadcast.splat1106 = shufflevector <8 x float> %broadcast.splatinsert1105, <8 x float> poison, <8 x i32> zeroinitializer
  %i.age = load float, ptr %i.afw, align 4, !tbaa !45, !alias.scope !150
  %broadcast.splatinsert1107 = insertelement <8 x float> poison, float %i.age, i64 0
  %broadcast.splat1108 = shufflevector <8 x float> %broadcast.splatinsert1107, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body1097

vector.body1097:                                  ; preds = %vector.body1097, %vector.ph1095
  %index1098 = phi i64 [ 0, %vector.ph1095 ], [ %index.next1109, %vector.body1097 ] ; 2 uses
  %i.agf = add nuw i64 %indvars.iv.i430, %index1098 ; 2 uses
  %i.agg = getelementptr inbounds nuw [12 x i8], ptr %i.afs, i64 %i.agf
  %wide.vec1099 = load <24 x float>, ptr %i.agg, align 4, !tbaa !45, !alias.scope !153 ; 3 uses
  %strided.vec1100 = shufflevector <24 x float> %wide.vec1099, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1101 = shufflevector <24 x float> %wide.vec1099, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1102 = shufflevector <24 x float> %wide.vec1099, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.agh = fsub <8 x float> %broadcast.splat1104, %strided.vec1100 ; 2 uses
  %i.agi = fsub <8 x float> %broadcast.splat1106, %strided.vec1101 ; 2 uses
  %i.agj = fsub <8 x float> %broadcast.splat1108, %strided.vec1102 ; 2 uses
  %i.agk = fmul <8 x float> %i.agi, %i.agi
  %i.agl = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.agh, <8 x float> %i.agh, <8 x float> %i.agk)
  %i.agm = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.agj, <8 x float> %i.agj, <8 x float> %i.agl)
  %i.agn = call <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.agm)
  %i.ago = getelementptr inbounds nuw [4 x i8], ptr %i.afy, i64 %i.agf
  store <8 x float> %i.agn, ptr %i.ago, align 4, !tbaa !45, !alias.scope !155, !noalias !157
  %index.next1109 = add nuw i64 %index1098, 8     ; 2 uses
  %i.agp = icmp eq i64 %index.next1109, %n.vec1096
  br i1 %i.agp, label %middle.block1110, label %vector.body1097, !llvm.loop !158

middle.block1110:                                 ; preds = %vector.body1097
  %cmp.n1111 = icmp eq i64 %i.aft, %n.vec1096
  br i1 %cmp.n1111, label %.loopexit.i432, label %scalar.ph1093.preheader

scalar.ph1093.preheader:                          ; preds = %vector.memcheck1080, %.lr.ph.i429, %middle.block1110
  %indvars.iv18.i.ph = phi i64 [ %indvars.iv.i430, %vector.memcheck1080 ], [ %indvars.iv.i430, %.lr.ph.i429 ], [ %i.agb, %middle.block1110 ] ; 6 uses
  %i.agq = sub i64 %wide.trip.count.i428, %indvars.iv18.i.ph
  %xtraiter1266 = and i64 %i.agq, 1
  %lcmp.mod1267.not = icmp eq i64 %xtraiter1266, 0
  br i1 %lcmp.mod1267.not, label %scalar.ph1093.prol.loopexit, label %scalar.ph1093.prol

scalar.ph1093.prol:                               ; preds = %scalar.ph1093.preheader
  %i.agr = getelementptr inbounds nuw [12 x i8], ptr %i.afs, i64 %indvars.iv18.i.ph ; 3 uses
  %i.ags = load float, ptr %i.afu, align 4, !tbaa !45
  %i.agt = load float, ptr %i.agr, align 4, !tbaa !45
  %i.agu = fsub float %i.ags, %i.agt              ; 2 uses
  %i.agv = load float, ptr %i.afv, align 4, !tbaa !45
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agr, i64 4
  %i.agx = load float, ptr %i.agw, align 4, !tbaa !45
  %i.agy = fsub float %i.agv, %i.agx              ; 2 uses
  %i.agz = load float, ptr %i.afw, align 4, !tbaa !45
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agr, i64 8
  %i.ahb = load float, ptr %i.aha, align 4, !tbaa !45
  %i.ahc = fsub float %i.agz, %i.ahb              ; 2 uses
  %i.ahd = fmul float %i.agy, %i.agy
  %i.ahe = call float @llvm.fmuladd.f32(float %i.agu, float %i.agu, float %i.ahd)
  %i.ahf = call noundef float @llvm.fmuladd.f32(float %i.ahc, float %i.ahc, float %i.ahe)
  %sqrt.i.i.prol = call noundef float @llvm.sqrt.f32(float %i.ahf)
  %i.ahg = getelementptr inbounds nuw [4 x i8], ptr %i.afy, i64 %indvars.iv18.i.ph
  store float %sqrt.i.i.prol, ptr %i.ahg, align 4, !tbaa !45
  %indvars.iv.next19.i.prol = add nuw nsw i64 %indvars.iv18.i.ph, 1
  br label %scalar.ph1093.prol.loopexit

scalar.ph1093.prol.loopexit:                      ; preds = %scalar.ph1093.prol, %scalar.ph1093.preheader
  %indvars.iv18.i.unr = phi i64 [ %indvars.iv18.i.ph, %scalar.ph1093.preheader ], [ %indvars.iv.next19.i.prol, %scalar.ph1093.prol ]
  %i.ahh = icmp eq i64 %indvars.iv18.i.ph, %i.afl
  br i1 %i.ahh, label %.loopexit.i432, label %scalar.ph1093

scalar.ph1093:                                    ; preds = %scalar.ph1093.prol.loopexit, %scalar.ph1093
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i.1, %scalar.ph1093 ], [ %indvars.iv18.i.unr, %scalar.ph1093.prol.loopexit ] ; 4 uses
  %i.ahi = getelementptr inbounds nuw [12 x i8], ptr %i.afs, i64 %indvars.iv18.i ; 3 uses
  %i.ahj = load float, ptr %i.afu, align 4, !tbaa !45
  %i.ahk = load float, ptr %i.ahi, align 4, !tbaa !45
  %i.ahl = fsub float %i.ahj, %i.ahk              ; 2 uses
  %i.ahm = load float, ptr %i.afv, align 4, !tbaa !45
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahi, i64 4
  %i.aho = load float, ptr %i.ahn, align 4, !tbaa !45
  %i.ahp = fsub float %i.ahm, %i.aho              ; 2 uses
  %i.ahq = load float, ptr %i.afw, align 4, !tbaa !45
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahi, i64 8
  %i.ahs = load float, ptr %i.ahr, align 4, !tbaa !45
  %i.aht = fsub float %i.ahq, %i.ahs              ; 2 uses
  %i.ahu = fmul float %i.ahp, %i.ahp
  %i.ahv = call float @llvm.fmuladd.f32(float %i.ahl, float %i.ahl, float %i.ahu)
  %i.ahw = call noundef float @llvm.fmuladd.f32(float %i.aht, float %i.aht, float %i.ahv)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.ahw)
  %i.ahx = getelementptr inbounds nuw [4 x i8], ptr %i.afy, i64 %indvars.iv18.i
  store float %sqrt.i.i, ptr %i.ahx, align 4, !tbaa !45
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1 ; 2 uses
  %i.ahy = getelementptr inbounds nuw [12 x i8], ptr %i.afs, i64 %indvars.iv.next19.i ; 3 uses
  %i.ahz = load float, ptr %i.afu, align 4, !tbaa !45
  %i.aia = load float, ptr %i.ahy, align 4, !tbaa !45
  %i.aib = fsub float %i.ahz, %i.aia              ; 2 uses
  %i.aic = load float, ptr %i.afv, align 4, !tbaa !45
  %i.aid = getelementptr inbounds nuw i8, ptr %i.ahy, i64 4
  %i.aie = load float, ptr %i.aid, align 4, !tbaa !45
  %i.aif = fsub float %i.aic, %i.aie              ; 2 uses
  %i.aig = load float, ptr %i.afw, align 4, !tbaa !45
  %i.aih = getelementptr inbounds nuw i8, ptr %i.ahy, i64 8
  %i.aii = load float, ptr %i.aih, align 4, !tbaa !45
  %i.aij = fsub float %i.aig, %i.aii              ; 2 uses
  %i.aik = fmul float %i.aif, %i.aif
  %i.ail = call float @llvm.fmuladd.f32(float %i.aib, float %i.aib, float %i.aik)
  %i.aim = call noundef float @llvm.fmuladd.f32(float %i.aij, float %i.aij, float %i.ail)
  %sqrt.i.i.1 = call noundef float @llvm.sqrt.f32(float %i.aim)
  %i.ain = getelementptr inbounds nuw [4 x i8], ptr %i.afy, i64 %indvars.iv.next19.i
  store float %sqrt.i.i.1, ptr %i.ain, align 4, !tbaa !45
  %indvars.iv.next19.i.1 = add nuw nsw i64 %indvars.iv18.i, 2 ; 2 uses
  %exitcond.not.i431.1 = icmp eq i64 %indvars.iv.next19.i.1, %wide.trip.count.i428
  br i1 %exitcond.not.i431.1, label %.loopexit.i432, label %scalar.ph1093, !llvm.loop !159

_ZL9calc_distiPA3_fPPf.exit:                      ; preds = %.loopexit.i432
  %indvars.iv.next886 = add nuw nsw i64 %indvars.iv885, 1 ; 3 uses
  %i.aio = icmp slt i64 %indvars.iv.next886, %i.abi
  br i1 %i.aio, label %.lr.ph17.preheader.i435.us.preheader, label %._crit_edge

_ZL9calc_distiPA3_fPPf.exit.thread:               ; preds = %bb.es
  %indvars.iv.next8861027 = add nuw nsw i64 %indvars.iv885, 1 ; 4 uses
  %i.aip = icmp slt i64 %indvars.iv.next8861027, %i.abi
  br i1 %i.aip, label %_ZL9calc_distiPA3_fPPf.exit449.thread.preheader, label %._crit_edge

_ZL9calc_distiPA3_fPPf.exit449.thread.preheader:  ; preds = %_ZL9calc_distiPA3_fPPf.exit.thread
  %i.aiq = trunc nuw nsw i64 %indvars.iv.next8861027 to i32
  %i.air = trunc nuw nsw i64 %indvars.iv885 to i32
  br label %_ZL9calc_distiPA3_fPPf.exit449.thread

.lr.ph17.preheader.i435.us.preheader:             ; preds = %_ZL9calc_distiPA3_fPPf.exit
  %i.ais = trunc nuw nsw i64 %indvars.iv885 to i32
  br label %.lr.ph17.preheader.i435.us

.lr.ph17.preheader.i435.us:                       ; preds = %.lr.ph17.preheader.i435.us.preheader, %bb.et
  %indvars.iv880 = phi i64 [ %indvars.iv878, %.lr.ph17.preheader.i435.us.preheader ], [ %indvars.iv.next881, %bb.et ] ; 3 uses
  %i.ait = getelementptr inbounds nuw [8 x i8], ptr %.0304, i64 %indvars.iv880
  %i.aiu = load ptr, ptr %i.ait, align 8, !tbaa !72 ; 9 uses
  %scevgep1054 = getelementptr i8, ptr %i.aiu, i64 %i.afh
  %scevgep1055 = getelementptr i8, ptr %i.aiu, i64 %i.afi
  br label %.lr.ph.i438.us

.lr.ph.i438.us:                                   ; preds = %.loopexit.i446.us, %.lr.ph17.preheader.i435.us
  %indvars.iv21.i439.us = phi i64 [ 0, %.lr.ph17.preheader.i435.us ], [ %indvars.iv.next22.i441.us, %.loopexit.i446.us ] ; 6 uses
  %indvars.iv.i440.us = phi i64 [ 1, %.lr.ph17.preheader.i435.us ], [ %indvars.iv.next.i447.us, %.loopexit.i446.us ] ; 5 uses
  %i.aiv = sub i64 %i.afj, %indvars.iv21.i439.us  ; 3 uses
  %i.aiw = getelementptr inbounds nuw [12 x i8], ptr %i.aiu, i64 %indvars.iv21.i439.us ; 6 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiw, i64 4 ; 4 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aiw, i64 8 ; 4 uses
  %i.aiz = getelementptr inbounds nuw [8 x i8], ptr %i.aex, i64 %indvars.iv21.i439.us
  %i.aja = load ptr, ptr %i.aiz, align 8, !tbaa !72 ; 6 uses
  %min.iters.check1063 = icmp ult i64 %i.aiv, 8
  br i1 %min.iters.check1063, label %scalar.ph1062.preheader, label %vector.memcheck1050

vector.memcheck1050:                              ; preds = %.lr.ph.i438.us
  %i.ajb = mul nuw nsw i64 %indvars.iv21.i439.us, 12
  %38 = getelementptr nuw i8, ptr %i.aiu, i64 %i.ajb
  %scevgep1053 = getelementptr nuw i8, ptr %38, i64 12
  %i.ajc = shl nuw nsw i64 %indvars.iv21.i439.us, 2
  %39 = getelementptr nuw i8, ptr %i.aja, i64 %i.ajc
  %scevgep1051 = getelementptr nuw i8, ptr %39, i64 4 ; 2 uses
  %scevgep1052 = getelementptr i8, ptr %i.aja, i64 %i.afg ; 2 uses
  %bound01056 = icmp ult ptr %scevgep1051, %scevgep1054
  %bound11057 = icmp ult ptr %scevgep1053, %scevgep1052
  %found.conflict1058 = and i1 %bound01056, %bound11057
  %bound01059 = icmp ult ptr %scevgep1051, %scevgep1055
  %bound11060 = icmp ult ptr %i.aiu, %scevgep1052
  %found.conflict1061 = and i1 %bound01059, %bound11060
  %conflict.rdx = or i1 %found.conflict1058, %found.conflict1061
  br i1 %conflict.rdx, label %scalar.ph1062.preheader, label %vector.ph1064

vector.ph1064:                                    ; preds = %vector.memcheck1050
  %n.vec1065 = and i64 %i.aiv, -8                 ; 3 uses
  %i.ajd = add i64 %indvars.iv.i440.us, %n.vec1065
  %i.aje = load float, ptr %i.aiw, align 4, !tbaa !45, !alias.scope !160
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.aje, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ajf = load float, ptr %i.aix, align 4, !tbaa !45, !alias.scope !160
  %broadcast.splatinsert1072 = insertelement <8 x float> poison, float %i.ajf, i64 0
  %broadcast.splat1073 = shufflevector <8 x float> %broadcast.splatinsert1072, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ajg = load float, ptr %i.aiy, align 4, !tbaa !45, !alias.scope !160
  %broadcast.splatinsert1074 = insertelement <8 x float> poison, float %i.ajg, i64 0
  %broadcast.splat1075 = shufflevector <8 x float> %broadcast.splatinsert1074, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body1066

vector.body1066:                                  ; preds = %vector.body1066, %vector.ph1064
  %index1067 = phi i64 [ 0, %vector.ph1064 ], [ %index.next1076, %vector.body1066 ] ; 2 uses
  %i.ajh = add nuw i64 %indvars.iv.i440.us, %index1067 ; 2 uses
  %i.aji = getelementptr inbounds nuw [12 x i8], ptr %i.aiu, i64 %i.ajh
  %wide.vec1068 = load <24 x float>, ptr %i.aji, align 4, !tbaa !45, !alias.scope !163 ; 3 uses
  %strided.vec1069 = shufflevector <24 x float> %wide.vec1068, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1070 = shufflevector <24 x float> %wide.vec1068, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1071 = shufflevector <24 x float> %wide.vec1068, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.ajj = fsub <8 x float> %broadcast.splat, %strided.vec1069 ; 2 uses
  %i.ajk = fsub <8 x float> %broadcast.splat1073, %strided.vec1070 ; 2 uses
  %i.ajl = fsub <8 x float> %broadcast.splat1075, %strided.vec1071 ; 2 uses
  %i.ajm = fmul <8 x float> %i.ajk, %i.ajk
  %i.ajn = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ajj, <8 x float> %i.ajj, <8 x float> %i.ajm)
  %i.ajo = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ajl, <8 x float> %i.ajl, <8 x float> %i.ajn)
  %i.ajp = call <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.ajo)
  %i.ajq = getelementptr inbounds nuw [4 x i8], ptr %i.aja, i64 %i.ajh
  store <8 x float> %i.ajp, ptr %i.ajq, align 4, !tbaa !45, !alias.scope !165, !noalias !167
  %index.next1076 = add nuw i64 %index1067, 8     ; 2 uses
  %i.ajr = icmp eq i64 %index.next1076, %n.vec1065
  br i1 %i.ajr, label %middle.block1077, label %vector.body1066, !llvm.loop !168

middle.block1077:                                 ; preds = %vector.body1066
  %cmp.n1078 = icmp eq i64 %i.aiv, %n.vec1065
  br i1 %cmp.n1078, label %.loopexit.i446.us, label %scalar.ph1062.preheader

scalar.ph1062.preheader:                          ; preds = %vector.memcheck1050, %.lr.ph.i438.us, %middle.block1077
  %indvars.iv18.i442.us.ph = phi i64 [ %indvars.iv.i440.us, %vector.memcheck1050 ], [ %indvars.iv.i440.us, %.lr.ph.i438.us ], [ %i.ajd, %middle.block1077 ] ; 6 uses
  %i.ajs = sub i64 %wide.trip.count.i428, %indvars.iv18.i442.us.ph
  %xtraiter1269 = and i64 %i.ajs, 1
  %lcmp.mod1270.not = icmp eq i64 %xtraiter1269, 0
  br i1 %lcmp.mod1270.not, label %scalar.ph1062.prol.loopexit, label %scalar.ph1062.prol

scalar.ph1062.prol:                               ; preds = %scalar.ph1062.preheader
  %i.ajt = getelementptr inbounds nuw [12 x i8], ptr %i.aiu, i64 %indvars.iv18.i442.us.ph ; 3 uses
  %i.aju = load float, ptr %i.aiw, align 4, !tbaa !45
  %i.ajv = load float, ptr %i.ajt, align 4, !tbaa !45
  %i.ajw = fsub float %i.aju, %i.ajv              ; 2 uses
  %i.ajx = load float, ptr %i.aix, align 4, !tbaa !45
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajt, i64 4
  %i.ajz = load float, ptr %i.ajy, align 4, !tbaa !45
  %i.aka = fsub float %i.ajx, %i.ajz              ; 2 uses
  %i.akb = load float, ptr %i.aiy, align 4, !tbaa !45
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ajt, i64 8
  %i.akd = load float, ptr %i.akc, align 4, !tbaa !45
  %i.ake = fsub float %i.akb, %i.akd              ; 2 uses
  %i.akf = fmul float %i.aka, %i.aka
  %i.akg = call float @llvm.fmuladd.f32(float %i.ajw, float %i.ajw, float %i.akf)
  %i.akh = call noundef float @llvm.fmuladd.f32(float %i.ake, float %i.ake, float %i.akg)
  %sqrt.i.i443.us.prol = call noundef float @llvm.sqrt.f32(float %i.akh)
  %i.aki = getelementptr inbounds nuw [4 x i8], ptr %i.aja, i64 %indvars.iv18.i442.us.ph
  store float %sqrt.i.i443.us.prol, ptr %i.aki, align 4, !tbaa !45
  %indvars.iv.next19.i444.us.prol = add nuw nsw i64 %indvars.iv18.i442.us.ph, 1
  br label %scalar.ph1062.prol.loopexit

scalar.ph1062.prol.loopexit:                      ; preds = %scalar.ph1062.prol, %scalar.ph1062.preheader
  %indvars.iv18.i442.us.unr = phi i64 [ %indvars.iv18.i442.us.ph, %scalar.ph1062.preheader ], [ %indvars.iv.next19.i444.us.prol, %scalar.ph1062.prol ]
  %i.akj = icmp eq i64 %indvars.iv18.i442.us.ph, %i.afm
  br i1 %i.akj, label %.loopexit.i446.us, label %scalar.ph1062

scalar.ph1062:                                    ; preds = %scalar.ph1062.prol.loopexit, %scalar.ph1062
  %indvars.iv18.i442.us = phi i64 [ %indvars.iv.next19.i444.us.1, %scalar.ph1062 ], [ %indvars.iv18.i442.us.unr, %scalar.ph1062.prol.loopexit ] ; 4 uses
  %i.akk = getelementptr inbounds nuw [12 x i8], ptr %i.aiu, i64 %indvars.iv18.i442.us ; 3 uses
  %i.akl = load float, ptr %i.aiw, align 4, !tbaa !45
  %i.akm = load float, ptr %i.akk, align 4, !tbaa !45
  %i.akn = fsub float %i.akl, %i.akm              ; 2 uses
  %i.ako = load float, ptr %i.aix, align 4, !tbaa !45
  %i.akp = getelementptr inbounds nuw i8, ptr %i.akk, i64 4
  %i.akq = load float, ptr %i.akp, align 4, !tbaa !45
  %i.akr = fsub float %i.ako, %i.akq              ; 2 uses
  %i.aks = load float, ptr %i.aiy, align 4, !tbaa !45
  %i.akt = getelementptr inbounds nuw i8, ptr %i.akk, i64 8
  %i.aku = load float, ptr %i.akt, align 4, !tbaa !45
  %i.akv = fsub float %i.aks, %i.aku              ; 2 uses
  %i.akw = fmul float %i.akr, %i.akr
  %i.akx = call float @llvm.fmuladd.f32(float %i.akn, float %i.akn, float %i.akw)
  %i.aky = call noundef float @llvm.fmuladd.f32(float %i.akv, float %i.akv, float %i.akx)
  %sqrt.i.i443.us = call noundef float @llvm.sqrt.f32(float %i.aky)
  %i.akz = getelementptr inbounds nuw [4 x i8], ptr %i.aja, i64 %indvars.iv18.i442.us
  store float %sqrt.i.i443.us, ptr %i.akz, align 4, !tbaa !45
  %indvars.iv.next19.i444.us = add nuw nsw i64 %indvars.iv18.i442.us, 1 ; 2 uses
  %i.ala = getelementptr inbounds nuw [12 x i8], ptr %i.aiu, i64 %indvars.iv.next19.i444.us ; 3 uses
  %i.alb = load float, ptr %i.aiw, align 4, !tbaa !45
  %i.alc = load float, ptr %i.ala, align 4, !tbaa !45
  %i.ald = fsub float %i.alb, %i.alc              ; 2 uses
  %i.ale = load float, ptr %i.aix, align 4, !tbaa !45
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ala, i64 4
  %i.alg = load float, ptr %i.alf, align 4, !tbaa !45
  %i.alh = fsub float %i.ale, %i.alg              ; 2 uses
  %i.ali = load float, ptr %i.aiy, align 4, !tbaa !45
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ala, i64 8
  %i.alk = load float, ptr %i.alj, align 4, !tbaa !45
  %i.all = fsub float %i.ali, %i.alk              ; 2 uses
  %i.alm = fmul float %i.alh, %i.alh
  %i.aln = call float @llvm.fmuladd.f32(float %i.ald, float %i.ald, float %i.alm)
  %i.alo = call noundef float @llvm.fmuladd.f32(float %i.all, float %i.all, float %i.aln)
  %sqrt.i.i443.us.1 = call noundef float @llvm.sqrt.f32(float %i.alo)
  %i.alp = getelementptr inbounds nuw [4 x i8], ptr %i.aja, i64 %indvars.iv.next19.i444.us
  store float %sqrt.i.i443.us.1, ptr %i.alp, align 4, !tbaa !45
  %indvars.iv.next19.i444.us.1 = add nuw nsw i64 %indvars.iv18.i442.us, 2 ; 2 uses
  %exitcond.not.i445.us.1 = icmp eq i64 %indvars.iv.next19.i444.us.1, %wide.trip.count.i428
  br i1 %exitcond.not.i445.us.1, label %.loopexit.i446.us, label %scalar.ph1062, !llvm.loop !169

.loopexit.i446.us:                                ; preds = %scalar.ph1062.prol.loopexit, %scalar.ph1062, %middle.block1077
  %indvars.iv.next22.i441.us = add nuw nsw i64 %indvars.iv21.i439.us, 1 ; 2 uses
  %indvars.iv.next.i447.us = add nuw nsw i64 %indvars.iv.i440.us, 1
  %exitcond25.not.i448.us = icmp eq i64 %indvars.iv.next22.i441.us, %wide.trip.count24.i
  br i1 %exitcond25.not.i448.us, label %.lr.ph.i452.us, label %.lr.ph.i438.us, !llvm.loop !149

.lr.ph.i452.us:                                   ; preds = %.loopexit.i446.us, %.loopexit.i455.us
  %indvars.iv32.i.us = phi i64 [ %indvars.iv.next33.i.us, %.loopexit.i455.us ], [ 0, %.loopexit.i446.us ] ; 5 uses
  %indvars.iv.i453.us = phi i64 [ %indvars.iv.next.i456.us, %.loopexit.i455.us ], [ 1, %.loopexit.i446.us ] ; 3 uses
  %.025.i.us = phi float [ %.lcssa1253, %.loopexit.i455.us ], [ 0.000000e+00, %.loopexit.i446.us ] ; 2 uses
  %i.alq = sub i64 %i.afj, %indvars.iv32.i.us
  %i.alr = sub i64 %i.afk, %indvars.iv32.i.us
  %i.als = getelementptr inbounds nuw [8 x i8], ptr %i.aew, i64 %indvars.iv32.i.us
  %i.alt = load ptr, ptr %i.als, align 8, !tbaa !72 ; 9 uses
  %i.alu = getelementptr inbounds nuw [8 x i8], ptr %i.aex, i64 %indvars.iv32.i.us
  %i.alv = load ptr, ptr %i.alu, align 8, !tbaa !72 ; 9 uses
  %xtraiter1272 = and i64 %i.alq, 7               ; 2 uses
  %lcmp.mod1273.not = icmp eq i64 %xtraiter1272, 0
  br i1 %lcmp.mod1273.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i452.us, %.prol.preheader
  %indvars.iv29.i.us.prol = phi i64 [ %indvars.iv.next30.i.us.prol, %.prol.preheader ], [ %indvars.iv.i453.us, %.lr.ph.i452.us ] ; 3 uses
  %.123.i.us.prol = phi float [ %i.amb, %.prol.preheader ], [ %.025.i.us, %.lr.ph.i452.us ]
  %prol.iter1274 = phi i64 [ %prol.iter1274.next, %.prol.preheader ], [ 0, %.lr.ph.i452.us ]
  %i.alw = getelementptr inbounds nuw [4 x i8], ptr %i.alt, i64 %indvars.iv29.i.us.prol
  %i.alx = load float, ptr %i.alw, align 4, !tbaa !45
  %i.aly = getelementptr inbounds nuw [4 x i8], ptr %i.alv, i64 %indvars.iv29.i.us.prol
  %i.alz = load float, ptr %i.aly, align 4, !tbaa !45
  %i.ama = fsub float %i.alx, %i.alz              ; 2 uses
  %i.amb = call float @llvm.fmuladd.f32(float %i.ama, float %i.ama, float %.123.i.us.prol) ; 3 uses
  %indvars.iv.next30.i.us.prol = add nuw nsw i64 %indvars.iv29.i.us.prol, 1 ; 2 uses
  %prol.iter1274.next = add i64 %prol.iter1274, 1 ; 2 uses
  %prol.iter1274.cmp.not = icmp eq i64 %prol.iter1274.next, %xtraiter1272
  br i1 %prol.iter1274.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !170

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i452.us
  %.lcssa1253.unr = phi float [ poison, %.lr.ph.i452.us ], [ %i.amb, %.prol.preheader ]
  %indvars.iv29.i.us.unr = phi i64 [ %indvars.iv.i453.us, %.lr.ph.i452.us ], [ %indvars.iv.next30.i.us.prol, %.prol.preheader ]
  %.123.i.us.unr = phi float [ %.025.i.us, %.lr.ph.i452.us ], [ %i.amb, %.prol.preheader ]
  %i.amc = icmp ult i64 %i.alr, 7
  br i1 %i.amc, label %.loopexit.i455.us, label %.lr.ph.i452.us.new

.lr.ph.i452.us.new:                               ; preds = %.prol.loopexit, %.lr.ph.i452.us.new
  %indvars.iv29.i.us = phi i64 [ %indvars.iv.next30.i.us.7, %.lr.ph.i452.us.new ], [ %indvars.iv29.i.us.unr, %.prol.loopexit ] ; 10 uses
  %.123.i.us = phi float [ %i.any, %.lr.ph.i452.us.new ], [ %.123.i.us.unr, %.prol.loopexit ]
  %i.amd = getelementptr inbounds nuw [4 x i8], ptr %i.alt, i64 %indvars.iv29.i.us
  %i.ame = load float, ptr %i.amd, align 4, !tbaa !45
  %i.amf = getelementptr inbounds nuw [4 x i8], ptr %i.alv, i64 %indvars.iv29.i.us
  %i.amg = load float, ptr %i.amf, align 4, !tbaa !45
  %i.amh = fsub float %i.ame, %i.amg              ; 2 uses
  %i.ami = call float @llvm.fmuladd.f32(float %i.amh, float %i.amh, float %.123.i.us)
  %indvars.iv.next30.i.us = add nuw nsw i64 %indvars.iv29.i.us, 1 ; 2 uses
  %i.amj = getelementptr inbounds nuw [4 x i8], ptr %i.alt, i64 %indvars.iv.next30.i.us
  %i.amk = load float, ptr %i.amj, align 4, !tbaa !45
  %i.aml = getelementptr inbounds nuw [4 x i8], ptr %i.alv, i64 %indvars.iv.next30.i.us
  %i.amm = load float, ptr %i.aml, align 4, !tbaa !45
  %i.amn = fsub float %i.amk, %i.amm              ; 2 uses
  %i.amo = call float @llvm.fmuladd.f32(float %i.amn, float %i.amn, float %i.ami)
  %indvars.iv.next30.i.us.1 = add nuw nsw i64 %indvars.iv29.i.us, 2 ; 2 uses
  %i.amp = getelementptr inbounds nuw [4 x i8], ptr %i.alt, i64 %indvars.iv.next30.i.us.1
  %i.amq = load float, ptr %i.amp, align 4, !tbaa !45
  %i.amr = getelementptr inbounds nuw [4 x i8], ptr %i.alv, i64 %indvars.iv.next30.i.us.1
  %i.ams = load float, ptr %i.amr, align 4, !tbaa !45
  %i.amt = fsub float %i.amq, %i.ams              ; 2 uses
  %i.amu = call float @llvm.fmuladd.f32(float %i.amt, float %i.amt, float %i.amo)
  %indvars.iv.next30.i.us.2 = add nuw nsw i64 %indvars.iv29.i.us, 3 ; 2 uses
  %i.amv = getelementptr inbounds nuw [4 x i8], ptr %i.alt, i64 %indvars.iv.next30.i.us.2
  %i.amw = load float, ptr %i.amv, align 4, !tbaa !45
  %i.amx = getelementptr inbounds nuw [4 x i8], ptr %i.alv, i64 %indvars.iv.next30.i.us.2
  %i.amy = load float, ptr %i.amx, align 4, !tbaa !45
  %i.amz = fsub float %i.amw, %i.amy              ; 2 uses
  %i.ana = call float @llvm.fmuladd.f32(float %i.amz, float %i.amz, float %i.amu)
  %indvars.iv.next30.i.us.3 = add nuw nsw i64 %indvars.iv29.i.us, 4 ; 2 uses
  %i.anb = getelementptr inbounds nuw [4 x i8], ptr %i.alt, i64 %indvars.iv.next30.i.us.3
end_hunk_0
