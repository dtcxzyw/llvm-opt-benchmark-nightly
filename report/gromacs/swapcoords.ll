Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/swapcoords?download=true
inline.NumInlined: 2349
inline.NumDeleted: 1072
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_Z15init_swapcoordsP8_IO_FILEPK10t_inputrecPKcRK10gmx_mtop_tPK7t_stateP18ObservablesHistoryRKN3gmx7MpiCommEPK12gmx_domdec_tPNSE_19LocalAtomSetManagerEPK16gmx_output_env_tRKNSE_12MdrunOptionsENSE_16StartingBehaviorE:bb.a
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.1

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.1: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.1, %bb.jc
  %.0.i.i.i.i.1 = phi ptr [ %i.aso, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.1 ], [ %i.asl, %bb.jc ]
  store ptr %.0.i.i.i.i.1, ptr %i.ars, align 8, !tbaa !207
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.1

bb.jd:                                            ; preds = %bb.jb
  %i.asp = icmp ult i64 %i.asj, %i.asc
  br i1 %i.asp, label %bb.iu, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.1

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.1: ; preds = %bb.jd
  %.sroa.speculated.i.i.1 = call i64 @llvm.umax.i64(i64 %i.ary, i64 %i.asc)
  %i.asq = add nuw nsw i64 %.sroa.speculated.i.i.1, %i.ary
  %i.asr = call i64 @llvm.umin.i64(i64 %i.asq, i64 2305843009213693951) ; 2 uses
  %i.ass = shl nuw nsw i64 %i.asr, 2
  %i.ast = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ass) #27
          to label %.noexc620.1 unwind label %.loopexit715 ; 4 uses

.noexc620.1:                                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.1
  %i.asu = getelementptr inbounds nuw i8, ptr %i.ast, i64 %i.arx ; 3 uses
  store i32 0, ptr %i.asu, align 4, !tbaa !63
  %i.asv = add nsw i64 %i.asc, -1                 ; 2 uses
  %i.asw = icmp eq i64 %i.asv, 0
  br i1 %i.asw, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.1, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.1

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.1: ; preds = %.noexc620.1
  %i.asx = getelementptr i8, ptr %i.asu, i64 4
  %.idx.i.i.i.i.i31.i.1 = shl nuw nsw i64 %i.asv, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.asx, i8 0, i64 %.idx.i.i.i.i.i31.i.1, i1 false), !tbaa !63
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.1

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.1: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.1, %.noexc620.1
  %i.asy = icmp sgt i64 %i.arx, 0
  br i1 %i.asy, label %bb.je, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.1

bb.je:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ast, ptr align 4 %i.aru, i64 %i.arx, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.1

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.1: ; preds = %bb.je, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.1
  %.not.i35.i.1 = icmp eq ptr %i.aru, null
  br i1 %.not.i35.i.1, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.1, label %bb.jf

bb.jf:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.1
  %i.asz = sub i64 %i.asf, %i.arw
  call void @_ZdlPvm(ptr noundef nonnull %i.aru, i64 noundef %i.asz) #28
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.1

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.1: ; preds = %bb.jf, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.1
  store ptr %i.ast, ptr %i.arp, align 8, !tbaa !209
  %i.ata = getelementptr inbounds nuw [4 x i8], ptr %i.asu, i64 %i.asc
  store ptr %i.ata, ptr %i.ars, align 8, !tbaa !207
  %i.atb = getelementptr inbounds nuw [4 x i8], ptr %i.ast, i64 %i.asr
  store ptr %i.atb, ptr %i.asd, align 8, !tbaa !359
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.1

_ZNSt6vectorIiSaIiEE6resizeEm.exit.1:             ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.1, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.1, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.1, %bb.ja, %bb.iz
  %i.atc = getelementptr inbounds nuw i8, ptr %.sroa.0638.0829, i64 472 ; 2 uses
  %.not694 = icmp eq ptr %i.atc, %i.apy
  br i1 %.not694, label %._crit_edge830, label %.preheader714

.loopexit715:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.1, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit717 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp716:                            ; preds = %bb.iu
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.jg:                                            ; preds = %._crit_edge830
  br i1 %i.aa, label %bb.jn, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  br i1 %i.ah, label %bb.ji, label %.thread.i525

bb.ji:                                            ; preds = %bb.jh
  %i.atd = load ptr, ptr @stderr, align 8, !tbaa !94
  %i.ate = load ptr, ptr @_ZL3SwSB5cxx11, align 8, !tbaa !93
  %i.atf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.atd, ptr noundef nonnull @.str.60, ptr noundef %i.ate) #30 ; 0 uses
  %i.atg = load ptr, ptr %i.gu, align 8, !tbaa !301 ; 2 uses
  %i.ath = getelementptr inbounds nuw i8, ptr %i.atg, i64 1416
  %i.ati = load ptr, ptr %i.ir, align 8, !tbaa !291
  %.not12.i = icmp eq ptr %i.ati, %i.ath
  br i1 %.not12.i, label %_ZL30get_initial_ioncounts_from_cptRK12t_swapcoordsPN10SwapCoords4ImplEP13swaphistory_tRKN3gmx7MpiCommEb.exit.thread, label %.split.us.us.preheader.i

.thread.i525:                                     ; preds = %bb.jh
  %i.atj = load ptr, ptr %i.gu, align 8, !tbaa !301 ; 11 uses
  %i.atk = getelementptr inbounds nuw i8, ptr %i.atj, i64 1416 ; 2 uses
  %i.atl = load ptr, ptr %i.ir, align 8, !tbaa !291 ; 2 uses
  %.not1244.i = icmp eq ptr %i.atl, %i.atk
  br i1 %.not1244.i, label %_ZL30get_initial_ioncounts_from_cptRK12t_swapcoordsPN10SwapCoords4ImplEP13swaphistory_tRKN3gmx7MpiCommEb.exit.thread, label %.lr.ph14.split.i

.split.us.us.preheader.i:                         ; preds = %bb.ji
  %i.atm = getelementptr inbounds nuw i8, ptr %.0, i64 96
  %i.atn = getelementptr inbounds nuw i8, ptr %i.gt, i64 32 ; 4 uses
  br label %.split.us.us.i

.split.us.us.i:                                   ; preds = %._crit_edge.split.us.us.us.1.i, %.split.us.us.preheader.i
  %i.ato = phi ptr [ %i.avd, %._crit_edge.split.us.us.us.1.i ], [ %i.atg, %.split.us.us.preheader.i ]
  %.03913.us.i = phi i64 [ %i.avc, %._crit_edge.split.us.us.us.1.i ], [ 0, %.split.us.us.preheader.i ] ; 3 uses
  %i.atp = getelementptr [472 x i8], ptr %i.ato, i64 %.03913.us.i ; 6 uses
  %i.atq = load ptr, ptr %i.atm, align 8, !tbaa !332
  %i.atr = getelementptr inbounds nuw [136 x i8], ptr %i.atq, i64 %.03913.us.i ; 6 uses
  %i.ats = getelementptr inbounds nuw i8, ptr %i.atr, i64 24
  %i.att = getelementptr inbounds nuw i8, ptr %i.atr, i64 48
  %i.atu = load i32, ptr %i.atr, align 4, !tbaa !63 ; 2 uses
  %i.atv = getelementptr i8, ptr %i.atp, i64 1672
  store i32 %i.atu, ptr %i.atv, align 8, !tbaa !360
  %i.atw = load i32, ptr %i.ats, align 4, !tbaa !63 ; 2 uses
  %i.atx = getelementptr i8, ptr %i.atp, i64 1752
  store i32 %i.atw, ptr %i.atx, align 8, !tbaa !362
  %i.aty = load ptr, ptr @stderr, align 8, !tbaa !94
  %i.atz = load ptr, ptr @_ZL3SwSB5cxx11, align 8, !tbaa !93
  %i.aua = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aty, ptr noundef nonnull @.str.61, ptr noundef %i.atz, i32 noundef %i.atw, i32 noundef %i.atu) #30 ; 0 uses
  %i.aub = load i32, ptr %i.atn, align 8, !tbaa !103
  %i.auc = icmp sgt i32 %i.aub, 0
  br i1 %i.auc, label %.lr.ph.us.us.i, label %._crit_edge.split.us.us.us.i

._crit_edge.split.us.us.us.i:                     ; preds = %bb.jk, %.split.us.us.i
  %i.aud = load ptr, ptr @stderr, align 8, !tbaa !94
  %fputc.us.us.i = call i32 @fputc(i32 10, ptr %i.aud) ; 0 uses
  %i.aue = getelementptr inbounds nuw i8, ptr %i.atr, i64 4
  %i.auf = load i32, ptr %i.aue, align 4, !tbaa !63 ; 2 uses
  %i.aug = getelementptr i8, ptr %i.atp, i64 1768
  store i32 %i.auf, ptr %i.aug, align 8, !tbaa !360
  %i.auh = getelementptr inbounds nuw i8, ptr %i.atr, i64 28
  %i.aui = load i32, ptr %i.auh, align 4, !tbaa !63 ; 2 uses
  %i.auj = getelementptr i8, ptr %i.atp, i64 1848
  store i32 %i.aui, ptr %i.auj, align 8, !tbaa !362
  %i.auk = load ptr, ptr @stderr, align 8, !tbaa !94
  %i.aul = load ptr, ptr @_ZL3SwSB5cxx11, align 8, !tbaa !93
  %i.aum = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.auk, ptr noundef nonnull @.str.61, ptr noundef %i.aul, i32 noundef %i.aui, i32 noundef %i.auf) #30 ; 0 uses
  %i.aun = load i32, ptr %i.atn, align 8, !tbaa !103
  %i.auo = icmp sgt i32 %i.aun, 0
  br i1 %i.auo, label %.lr.ph.us.us.1.i, label %._crit_edge.split.us.us.us.1.i

.lr.ph.us.us.1.i:                                 ; preds = %._crit_edge.split.us.us.us.i
  %i.aup = getelementptr inbounds nuw i8, ptr %i.atr, i64 56
  %i.auq = getelementptr i8, ptr %i.atp, i64 1776
  br label %bb.jj

bb.jj:                                            ; preds = %bb.jj, %.lr.ph.us.us.1.i
  %indvars.iv27.1.i = phi i64 [ %indvars.iv.next28.1.i, %bb.jj ], [ 0, %.lr.ph.us.us.1.i ] ; 3 uses
  %i.aur = load ptr, ptr %i.aup, align 8, !tbaa !206
  %i.aus = getelementptr inbounds nuw [4 x i8], ptr %i.aur, i64 %indvars.iv27.1.i
  %i.aut = load i32, ptr %i.aus, align 4, !tbaa !63 ; 2 uses
  %i.auu = load ptr, ptr %i.auq, align 8, !tbaa !209
  %i.auv = getelementptr inbounds nuw [4 x i8], ptr %i.auu, i64 %indvars.iv27.1.i
  store i32 %i.aut, ptr %i.auv, align 4, !tbaa !63
  %i.auw = load ptr, ptr @stderr, align 8, !tbaa !94
  %i.aux = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.auw, ptr noundef nonnull @.str.62, i32 noundef %i.aut) #30 ; 0 uses
  %indvars.iv.next28.1.i = add nuw nsw i64 %indvars.iv27.1.i, 1 ; 2 uses
  %i.auy = load i32, ptr %i.atn, align 8, !tbaa !103
  %i.auz = sext i32 %i.auy to i64
  %i.ava = icmp slt i64 %indvars.iv.next28.1.i, %i.auz
  br i1 %i.ava, label %bb.jj, label %._crit_edge.split.us.us.us.1.i, !llvm.loop !363

._crit_edge.split.us.us.us.1.i:                   ; preds = %bb.jj, %._crit_edge.split.us.us.us.i
  %i.avb = load ptr, ptr @stderr, align 8, !tbaa !94
  %fputc.us.us.1.i = call i32 @fputc(i32 10, ptr %i.avb) ; 0 uses
  %i.avc = add i64 %.03913.us.i, 1                ; 2 uses
  %i.avd = load ptr, ptr %i.gu, align 8, !tbaa !301 ; 2 uses
  %i.ave = getelementptr inbounds nuw i8, ptr %i.avd, i64 1416
  %i.avf = load ptr, ptr %i.ir, align 8, !tbaa !291
  %i.avg = ptrtoint ptr %i.avf to i64
  %i.avh = ptrtoint ptr %i.ave to i64
  %i.avi = sub i64 %i.avg, %i.avh
  %i.avj = sdiv exact i64 %i.avi, 472
  %.not.us.i = icmp eq i64 %i.avc, %i.avj
  br i1 %.not.us.i, label %_ZL30get_initial_ioncounts_from_cptRK12t_swapcoordsPN10SwapCoords4ImplEP13swaphistory_tRKN3gmx7MpiCommEb.exit, label %.split.us.us.i, !llvm.loop !364

.lr.ph.us.us.i:                                   ; preds = %.split.us.us.i
  %i.avk = getelementptr i8, ptr %i.atp, i64 1680
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jk, %.lr.ph.us.us.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %bb.jk ], [ 0, %.lr.ph.us.us.i ] ; 3 uses
  %i.avl = load ptr, ptr %i.att, align 8, !tbaa !206
  %i.avm = getelementptr inbounds nuw [4 x i8], ptr %i.avl, i64 %indvars.iv27.i
  %i.avn = load i32, ptr %i.avm, align 4, !tbaa !63 ; 2 uses
  %i.avo = load ptr, ptr %i.avk, align 8, !tbaa !209
  %i.avp = getelementptr inbounds nuw [4 x i8], ptr %i.avo, i64 %indvars.iv27.i
  store i32 %i.avn, ptr %i.avp, align 4, !tbaa !63
  %i.avq = load ptr, ptr @stderr, align 8, !tbaa !94
  %i.avr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.avq, ptr noundef nonnull @.str.62, i32 noundef %i.avn) #30 ; 0 uses
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %i.avs = load i32, ptr %i.atn, align 8, !tbaa !103
  %i.avt = sext i32 %i.avs to i64
  %i.avu = icmp slt i64 %indvars.iv.next28.i, %i.avt
  br i1 %i.avu, label %bb.jk, label %._crit_edge.split.us.us.us.i, !llvm.loop !363

.lr.ph14.split.i:                                 ; preds = %.thread.i525
  %i.avv = getelementptr inbounds nuw i8, ptr %.0, i64 96
  %i.avw = getelementptr inbounds nuw i8, ptr %i.gt, i64 32 ; 3 uses
  %i.avx = ptrtoint ptr %i.atl to i64
  %i.avy = ptrtoint ptr %i.atk to i64
  %i.avz = sub i64 %i.avx, %i.avy                 ; 2 uses
  %i.awa = sdiv i64 %i.avz, 472                   ; 3 uses
  %i.awb = load i32, ptr %i.avw, align 8, !tbaa !103 ; 2 uses
  %i.awc = icmp sgt i32 %i.awb, 0
  %.pre.i526 = load ptr, ptr %i.avv, align 8, !tbaa !332 ; 10 uses
  br i1 %i.awc, label %.split.i, label %.lr.ph14.split.split.us.i

.lr.ph14.split.split.us.i:                        ; preds = %.lr.ph14.split.i
  %i.awd = getelementptr inbounds nuw i8, ptr %.pre.i526, i64 24
  %i.awe = load i32, ptr %.pre.i526, align 4, !tbaa !63
  %i.awf = getelementptr i8, ptr %i.atj, i64 1672
  store i32 %i.awe, ptr %i.awf, align 8, !tbaa !360
  %i.awg = load i32, ptr %i.awd, align 4, !tbaa !63
  %i.awh = getelementptr i8, ptr %i.atj, i64 1752
  store i32 %i.awg, ptr %i.awh, align 8, !tbaa !362
  %i.awi = getelementptr inbounds nuw i8, ptr %.pre.i526, i64 4
  %i.awj = load i32, ptr %i.awi, align 4, !tbaa !63
  %i.awk = getelementptr i8, ptr %i.atj, i64 1768
  store i32 %i.awj, ptr %i.awk, align 8, !tbaa !360
  %i.awl = getelementptr inbounds nuw i8, ptr %.pre.i526, i64 28
  %i.awm = load i32, ptr %i.awl, align 4, !tbaa !63
  %i.awn = getelementptr i8, ptr %i.atj, i64 1848
  store i32 %i.awm, ptr %i.awn, align 8, !tbaa !362
  %.not.us16.peel.i = icmp eq i64 %i.avz, 472
  br i1 %.not.us16.peel.i, label %_ZL30get_initial_ioncounts_from_cptRK12t_swapcoordsPN10SwapCoords4ImplEP13swaphistory_tRKN3gmx7MpiCommEb.exit.thread, label %.split.us.i.preheader

.split.us.i.preheader:                            ; preds = %.lr.ph14.split.split.us.i
  %i.awo = add nsw i64 %i.awa, -1                 ; 2 uses
  %i.awp = add nsw i64 %i.awa, -2
  %xtraiter = and i64 %i.awo, 3                   ; 3 uses
  %i.awq = icmp ult i64 %i.awp, 3
  br i1 %i.awq, label %.split.us.i.epil.preheader, label %.split.us.i.preheader.new

.split.us.i.preheader.new:                        ; preds = %.split.us.i.preheader
  %unroll_iter = and i64 %i.awo, -4
  br label %.split.us.i

.split.us.i:                                      ; preds = %.split.us.i, %.split.us.i.preheader.new
  %.03913.us15.i = phi i64 [ 1, %.split.us.i.preheader.new ], [ %i.ayu, %.split.us.i ] ; 6 uses
  %niter = phi i64 [ 0, %.split.us.i.preheader.new ], [ %niter.next.3, %.split.us.i ]
  %i.awr = getelementptr [472 x i8], ptr %i.atj, i64 %.03913.us15.i ; 4 uses
  %i.aws = getelementptr inbounds nuw [136 x i8], ptr %.pre.i526, i64 %.03913.us15.i ; 4 uses
  %i.awt = getelementptr inbounds nuw i8, ptr %i.aws, i64 24
  %i.awu = load i32, ptr %i.aws, align 4, !tbaa !63
  %i.awv = getelementptr i8, ptr %i.awr, i64 1672
  store i32 %i.awu, ptr %i.awv, align 8, !tbaa !360
  %i.aww = load i32, ptr %i.awt, align 4, !tbaa !63
  %i.awx = getelementptr i8, ptr %i.awr, i64 1752
  store i32 %i.aww, ptr %i.awx, align 8, !tbaa !362
  %i.awy = getelementptr inbounds nuw i8, ptr %i.aws, i64 4
  %i.awz = load i32, ptr %i.awy, align 4, !tbaa !63
  %i.axa = getelementptr i8, ptr %i.awr, i64 1768
  store i32 %i.awz, ptr %i.axa, align 8, !tbaa !360
  %i.axb = getelementptr inbounds nuw i8, ptr %i.aws, i64 28
  %i.axc = load i32, ptr %i.axb, align 4, !tbaa !63
  %i.axd = getelementptr i8, ptr %i.awr, i64 1848
  store i32 %i.axc, ptr %i.axd, align 8, !tbaa !362
  %i.axe = add nuw nsw i64 %.03913.us15.i, 1      ; 2 uses
  %i.axf = getelementptr [472 x i8], ptr %i.atj, i64 %i.axe ; 4 uses
  %i.axg = getelementptr inbounds nuw [136 x i8], ptr %.pre.i526, i64 %i.axe ; 4 uses
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axg, i64 24
  %i.axi = load i32, ptr %i.axg, align 4, !tbaa !63
  %i.axj = getelementptr i8, ptr %i.axf, i64 1672
  store i32 %i.axi, ptr %i.axj, align 8, !tbaa !360
  %i.axk = load i32, ptr %i.axh, align 4, !tbaa !63
  %i.axl = getelementptr i8, ptr %i.axf, i64 1752
  store i32 %i.axk, ptr %i.axl, align 8, !tbaa !362
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axg, i64 4
  %i.axn = load i32, ptr %i.axm, align 4, !tbaa !63
  %i.axo = getelementptr i8, ptr %i.axf, i64 1768
  store i32 %i.axn, ptr %i.axo, align 8, !tbaa !360
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axg, i64 28
  %i.axq = load i32, ptr %i.axp, align 4, !tbaa !63
  %i.axr = getelementptr i8, ptr %i.axf, i64 1848
  store i32 %i.axq, ptr %i.axr, align 8, !tbaa !362
  %i.axs = add nuw nsw i64 %.03913.us15.i, 2      ; 2 uses
  %i.axt = getelementptr [472 x i8], ptr %i.atj, i64 %i.axs ; 4 uses
  %i.axu = getelementptr inbounds nuw [136 x i8], ptr %.pre.i526, i64 %i.axs ; 4 uses
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 24
  %i.axw = load i32, ptr %i.axu, align 4, !tbaa !63
  %i.axx = getelementptr i8, ptr %i.axt, i64 1672
  store i32 %i.axw, ptr %i.axx, align 8, !tbaa !360
  %i.axy = load i32, ptr %i.axv, align 4, !tbaa !63
  %i.axz = getelementptr i8, ptr %i.axt, i64 1752
  store i32 %i.axy, ptr %i.axz, align 8, !tbaa !362
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axu, i64 4
  %i.ayb = load i32, ptr %i.aya, align 4, !tbaa !63
  %i.ayc = getelementptr i8, ptr %i.axt, i64 1768
  store i32 %i.ayb, ptr %i.ayc, align 8, !tbaa !360
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.axu, i64 28
  %i.aye = load i32, ptr %i.ayd, align 4, !tbaa !63
  %i.ayf = getelementptr i8, ptr %i.axt, i64 1848
  store i32 %i.aye, ptr %i.ayf, align 8, !tbaa !362
  %i.ayg = add i64 %.03913.us15.i, 3              ; 2 uses
  %i.ayh = getelementptr [472 x i8], ptr %i.atj, i64 %i.ayg ; 4 uses
  %i.ayi = getelementptr inbounds nuw [136 x i8], ptr %.pre.i526, i64 %i.ayg ; 4 uses
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.ayi, i64 24
  %i.ayk = load i32, ptr %i.ayi, align 4, !tbaa !63
  %i.ayl = getelementptr i8, ptr %i.ayh, i64 1672
  store i32 %i.ayk, ptr %i.ayl, align 8, !tbaa !360
  %i.aym = load i32, ptr %i.ayj, align 4, !tbaa !63
  %i.ayn = getelementptr i8, ptr %i.ayh, i64 1752
  store i32 %i.aym, ptr %i.ayn, align 8, !tbaa !362
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.ayi, i64 4
  %i.ayp = load i32, ptr %i.ayo, align 4, !tbaa !63
  %i.ayq = getelementptr i8, ptr %i.ayh, i64 1768
  store i32 %i.ayp, ptr %i.ayq, align 8, !tbaa !360
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayi, i64 28
  %i.ays = load i32, ptr %i.ayr, align 4, !tbaa !63
  %i.ayt = getelementptr i8, ptr %i.ayh, i64 1848
  store i32 %i.ays, ptr %i.ayt, align 8, !tbaa !362
  %i.ayu = add i64 %.03913.us15.i, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZL30get_initial_ioncounts_from_cptRK12t_swapcoordsPN10SwapCoords4ImplEP13swaphistory_tRKN3gmx7MpiCommEb.exit.thread.loopexit.unr-lcssa, label %.split.us.i, !llvm.loop !365

.split.i:                                         ; preds = %.lr.ph14.split.i, %.split9.i
  %i.ayv = phi i32 [ %i.azk, %.split9.i ], [ %i.awb, %.lr.ph14.split.i ] ; 2 uses
  %.03913.i = phi i64 [ %i.azl, %.split9.i ], [ 0, %.lr.ph14.split.i ] ; 3 uses
  %i.ayw = getelementptr [472 x i8], ptr %i.atj, i64 %.03913.i ; 8 uses
  %i.ayx = getelementptr inbounds nuw [136 x i8], ptr %.pre.i526, i64 %.03913.i ; 8 uses
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayx, i64 24
  %i.ayz = icmp sgt i32 %i.ayv, 0
  %i.aza = load i32, ptr %i.ayx, align 4, !tbaa !63
  %i.azb = getelementptr i8, ptr %i.ayw, i64 1672
  store i32 %i.aza, ptr %i.azb, align 8, !tbaa !360
  %i.azc = load i32, ptr %i.ayy, align 4, !tbaa !63
  %i.azd = getelementptr i8, ptr %i.ayw, i64 1752
  store i32 %i.azc, ptr %i.azd, align 8, !tbaa !362
  br i1 %i.ayz, label %.lr.ph.i528, label %.split.split.us.preheader.i

.split.split.us.preheader.i:                      ; preds = %.split.i
  %i.aze = getelementptr inbounds nuw i8, ptr %i.ayx, i64 4
  %i.azf = load i32, ptr %i.aze, align 4, !tbaa !63
  %i.azg = getelementptr i8, ptr %i.ayw, i64 1768
  store i32 %i.azf, ptr %i.azg, align 8, !tbaa !360
  %i.azh = getelementptr inbounds nuw i8, ptr %i.ayx, i64 28
  %i.azi = load i32, ptr %i.azh, align 4, !tbaa !63
  %i.azj = getelementptr i8, ptr %i.ayw, i64 1848
  store i32 %i.azi, ptr %i.azj, align 8, !tbaa !362
  br label %.split9.i

.split9.i:                                        ; preds = %bb.jl, %._crit_edge.split.i, %.split.split.us.preheader.i
  %i.azk = phi i32 [ %i.ayv, %.split.split.us.preheader.i ], [ %i.bag, %._crit_edge.split.i ], [ %i.baa, %bb.jl ]
  %i.azl = add i64 %.03913.i, 1                   ; 2 uses
  %.not.i527 = icmp eq i64 %i.azl, %i.awa
  br i1 %.not.i527, label %_ZL30get_initial_ioncounts_from_cptRK12t_swapcoordsPN10SwapCoords4ImplEP13swaphistory_tRKN3gmx7MpiCommEb.exit, label %.split.i, !llvm.loop !367

.lr.ph.i528:                                      ; preds = %.split.i
  %i.azm = getelementptr inbounds nuw i8, ptr %i.ayx, i64 48
  %i.azn = getelementptr i8, ptr %i.ayw, i64 1680
  %.pre33.i = load ptr, ptr %i.azm, align 8, !tbaa !206
  %.pre34.i = load ptr, ptr %i.azn, align 8, !tbaa !209
  br label %bb.jm

._crit_edge.split.i:                              ; preds = %bb.jm
  %i.azo = getelementptr inbounds nuw i8, ptr %i.ayx, i64 4
  %i.azp = load i32, ptr %i.azo, align 4, !tbaa !63
  %i.azq = getelementptr i8, ptr %i.ayw, i64 1768
  store i32 %i.azp, ptr %i.azq, align 8, !tbaa !360
  %i.azr = getelementptr inbounds nuw i8, ptr %i.ayx, i64 28
  %i.azs = load i32, ptr %i.azr, align 4, !tbaa !63
  %i.azt = getelementptr i8, ptr %i.ayw, i64 1848
  store i32 %i.azs, ptr %i.azt, align 8, !tbaa !362
  %i.azu = icmp sgt i32 %i.bag, 0
  br i1 %i.azu, label %.lr.ph.1.i, label %.split9.i

.lr.ph.1.i:                                       ; preds = %._crit_edge.split.i
  %i.azv = getelementptr inbounds nuw i8, ptr %i.ayx, i64 56
  %i.azw = getelementptr i8, ptr %i.ayw, i64 1776
  %.pre35.i = load ptr, ptr %i.azv, align 8, !tbaa !206
  %.pre36.i = load ptr, ptr %i.azw, align 8, !tbaa !209
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jl, %.lr.ph.1.i
  %indvars.iv.1.i = phi i64 [ 0, %.lr.ph.1.i ], [ %indvars.iv.next.1.i, %bb.jl ] ; 3 uses
  %i.azx = getelementptr inbounds nuw [4 x i8], ptr %.pre35.i, i64 %indvars.iv.1.i
  %i.azy = load i32, ptr %i.azx, align 4, !tbaa !63
  %i.azz = getelementptr inbounds nuw [4 x i8], ptr %.pre36.i, i64 %indvars.iv.1.i
  store i32 %i.azy, ptr %i.azz, align 4, !tbaa !63
  %indvars.iv.next.1.i = add nuw nsw i64 %indvars.iv.1.i, 1 ; 2 uses
  %i.baa = load i32, ptr %i.avw, align 8, !tbaa !103 ; 2 uses
  %i.bab = sext i32 %i.baa to i64
  %i.bac = icmp slt i64 %indvars.iv.next.1.i, %i.bab
  br i1 %i.bac, label %bb.jl, label %.split9.i, !llvm.loop !363

bb.jm:                                            ; preds = %bb.jm, %.lr.ph.i528
  %indvars.iv.i529 = phi i64 [ 0, %.lr.ph.i528 ], [ %indvars.iv.next.i530, %bb.jm ] ; 3 uses
  %i.bad = getelementptr inbounds nuw [4 x i8], ptr %.pre33.i, i64 %indvars.iv.i529
  %i.bae = load i32, ptr %i.bad, align 4, !tbaa !63
  %i.baf = getelementptr inbounds nuw [4 x i8], ptr %.pre34.i, i64 %indvars.iv.i529
  store i32 %i.bae, ptr %i.baf, align 4, !tbaa !63
  %indvars.iv.next.i530 = add nuw nsw i64 %indvars.iv.i529, 1 ; 2 uses
  %i.bag = load i32, ptr %i.avw, align 8, !tbaa !103 ; 3 uses
  %i.bah = sext i32 %i.bag to i64
  %i.bai = icmp slt i64 %indvars.iv.next.i530, %i.bah
  br i1 %i.bai, label %bb.jm, label %._crit_edge.split.i, !llvm.loop !363

bb.jn:                                            ; preds = %bb.jg
  %i.baj = load ptr, ptr @stderr, align 8, !tbaa !94
  %i.bak = load ptr, ptr @_ZL3SwSB5cxx11, align 8, !tbaa !93
  %i.bal = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.baj, ptr noundef nonnull @.str.32, ptr noundef %i.bak) #30 ; 0 uses
end_hunk_0
begin_hunk_1_@_Z15init_swapcoordsP8_IO_FILEPK10t_inputrecPKcRK10gmx_mtop_tPK7t_stateP18ObservablesHistoryRKN3gmx7MpiCommEPK12gmx_domdec_tPNSE_19LocalAtomSetManagerEPK16gmx_output_env_tRKNSE_12MdrunOptionsENSE_16StartingBehaviorE:bb.a
  store float %i.bbw, ptr %i.bbx, align 4, !tbaa !370
  br i1 %i.bbv, label %.lr.ph91.i, label %.preheader.split.us.preheader.i

.preheader.split.us.preheader.i:                  ; preds = %.preheader.i534
  %i.bby = sitofp i32 %i.bcg to float
  %i.bbz = getelementptr i8, ptr %i.bax, i64 1772
  store float %i.bby, ptr %i.bbz, align 4, !tbaa !370
  br label %.split.us.i535

bb.jq:                                            ; preds = %.noexc542
  %i.bca = load i32, ptr %i.bbg, align 8, !tbaa !371
  br label %bb.jr

bb.jr:                                            ; preds = %bb.jq, %.noexc542
  %.sink.i = phi i32 [ %i.bca, %bb.jq ], [ %i.bbh, %.noexc542 ] ; 2 uses
  %i.bcb = getelementptr i8, ptr %i.bax, i64 1672
  store i32 %.sink.i, ptr %i.bcb, align 8, !tbaa !360
  %i.bcc = getelementptr i8, ptr %i.bbe, i64 252
  %i.bcd = load i32, ptr %i.bcc, align 4, !tbaa !63 ; 2 uses
  %i.bce = icmp slt i32 %i.bcd, 0
  %i.bcf = getelementptr i8, ptr %i.bax, i64 1760
  %i.bcg = load i32, ptr %i.bcf, align 8, !tbaa !371 ; 3 uses
  %. = select i1 %i.bce, i32 %i.bcg, i32 %i.bcd   ; 2 uses
  %i.bch = getelementptr i8, ptr %i.bax, i64 1768
  store i32 %., ptr %i.bch, align 8, !tbaa !360
  %i.bci = add nsw i32 %., %.sink.i               ; 2 uses
  %i.bcj = load i32, ptr %i.bbg, align 8, !tbaa !371 ; 3 uses
  %i.bck = add nsw i32 %i.bcj, %i.bcg             ; 2 uses
  %.not69.i = icmp eq i32 %i.bci, %i.bck
  br i1 %.not69.i, label %.preheader.i534, label %bb.js

bb.js:                                            ; preds = %bb.jr
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA64_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull align 1 dereferenceable(64) @.str.4, i8 noundef zeroext 2)
          to label %.noexc545 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc545:                                        ; preds = %bb.js
  %i.bcl = getelementptr i8, ptr %i.bax, i64 1768
  %i.bcm = getelementptr i8, ptr %i.bax, i64 1672
  %i.bcn = load ptr, ptr %i.bay, align 8, !tbaa !93
  %i.bco = load i32, ptr %i.bcm, align 8, !tbaa !360
  %i.bcp = load i32, ptr %i.bcl, align 8, !tbaa !360
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %21, i32 noundef 972, ptr noundef nonnull @.str.64, ptr noundef %i.bcn, i32 noundef %i.bci, i32 noundef %i.bco, i32 noundef %i.bcp, i32 noundef %i.bck) #29
          to label %bb.jt unwind label %bb.ju

bb.jt:                                            ; preds = %.noexc545
  unreachable

bb.ju:                                            ; preds = %.noexc545
  %i.bcq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %21) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %.body

.split.us.i535:                                   ; preds = %bb.jv, %._crit_edge92.i, %.preheader.split.us.preheader.i
  %i.bcr = add i64 %.06497.i, 1                   ; 2 uses
  %i.bcs = load ptr, ptr %i.gu, align 8, !tbaa !301 ; 2 uses
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bcs, i64 1416
  %i.bcu = load ptr, ptr %i.ir, align 8, !tbaa !291
  %i.bcv = ptrtoint ptr %i.bcu to i64
  %i.bcw = ptrtoint ptr %i.bct to i64
  %i.bcx = sub i64 %i.bcv, %i.bcw
  %i.bcy = sdiv exact i64 %i.bcx, 472
  %.not.i536 = icmp eq i64 %i.bcr, %i.bcy
  br i1 %.not.i536, label %_ZL30get_initial_ioncounts_from_cptRK12t_swapcoordsPN10SwapCoords4ImplEP13swaphistory_tRKN3gmx7MpiCommEb.exit, label %bb.jo, !llvm.loop !372

.lr.ph91.i:                                       ; preds = %.preheader.i534
  %i.bcz = getelementptr i8, ptr %i.bax, i64 1680
  %i.bda = load ptr, ptr %i.bcz, align 8, !tbaa !209
  br label %bb.jw

._crit_edge92.i:                                  ; preds = %bb.jw
  %.phi.trans.insert116.i = getelementptr i8, ptr %i.bax, i64 1760
  %.pre117.i = load i32, ptr %.phi.trans.insert116.i, align 8, !tbaa !371 ; 2 uses
  %i.bdb = sitofp i32 %.pre117.i to float
  %i.bdc = getelementptr i8, ptr %i.bax, i64 1772
  store float %i.bdb, ptr %i.bdc, align 4, !tbaa !370
  %i.bdd = icmp sgt i32 %i.bdl, 0
  br i1 %i.bdd, label %.lr.ph91.1.i, label %.split.us.i535

.lr.ph91.1.i:                                     ; preds = %._crit_edge92.i
  %i.bde = getelementptr i8, ptr %i.bax, i64 1776
  %i.bdf = load ptr, ptr %i.bde, align 8, !tbaa !209
  br label %bb.jv

bb.jv:                                            ; preds = %bb.jv, %.lr.ph91.1.i
  %indvars.iv.1.i539 = phi i64 [ 0, %.lr.ph91.1.i ], [ %indvars.iv.next.1.i540, %bb.jv ] ; 2 uses
  %i.bdg = getelementptr inbounds nuw [4 x i8], ptr %i.bdf, i64 %indvars.iv.1.i539
  store i32 %.pre117.i, ptr %i.bdg, align 4, !tbaa !63
  %indvars.iv.next.1.i540 = add nuw nsw i64 %indvars.iv.1.i539, 1 ; 2 uses
  %i.bdh = load i32, ptr %i.bav, align 8, !tbaa !103
  %i.bdi = sext i32 %i.bdh to i64
  %i.bdj = icmp slt i64 %indvars.iv.next.1.i540, %i.bdi
  br i1 %i.bdj, label %bb.jv, label %.split.us.i535, !llvm.loop !373

bb.jw:                                            ; preds = %bb.jw, %.lr.ph91.i
  %indvars.iv.i537 = phi i64 [ 0, %.lr.ph91.i ], [ %indvars.iv.next.i538, %bb.jw ] ; 2 uses
  %i.bdk = getelementptr inbounds nuw [4 x i8], ptr %i.bda, i64 %indvars.iv.i537
  store i32 %i.bcj, ptr %i.bdk, align 4, !tbaa !63
  %indvars.iv.next.i538 = add nuw nsw i64 %indvars.iv.i537, 1 ; 2 uses
  %i.bdl = load i32, ptr %i.bav, align 8, !tbaa !103 ; 2 uses
  %i.bdm = sext i32 %i.bdl to i64
  %i.bdn = icmp slt i64 %indvars.iv.next.i538, %i.bdm
  br i1 %i.bdn, label %bb.jw, label %._crit_edge92.i, !llvm.loop !373

_ZL30get_initial_ioncounts_from_cptRK12t_swapcoordsPN10SwapCoords4ImplEP13swaphistory_tRKN3gmx7MpiCommEb.exit: ; preds = %.split9.i, %._crit_edge.split.us.us.us.1.i, %.split.us.i535
  br i1 %i.aa, label %_ZL30get_initial_ioncounts_from_cptRK12t_swapcoordsPN10SwapCoords4ImplEP13swaphistory_tRKN3gmx7MpiCommEb.exit.thread685, label %_ZL30get_initial_ioncounts_from_cptRK12t_swapcoordsPN10SwapCoords4ImplEP13swaphistory_tRKN3gmx7MpiCommEb.exit.thread

_ZL30get_initial_ioncounts_from_cptRK12t_swapcoordsPN10SwapCoords4ImplEP13swaphistory_tRKN3gmx7MpiCommEb.exit.thread.loopexit.unr-lcssa: ; preds = %.split.us.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL30get_initial_ioncounts_from_cptRK12t_swapcoordsPN10SwapCoords4ImplEP13swaphistory_tRKN3gmx7MpiCommEb.exit.thread, label %.split.us.i.epil.preheader

.split.us.i.epil.preheader:                       ; preds = %_ZL30get_initial_ioncounts_from_cptRK12t_swapcoordsPN10SwapCoords4ImplEP13swaphistory_tRKN3gmx7MpiCommEb.exit.thread.loopexit.unr-lcssa, %.split.us.i.preheader
  %.03913.us15.i.epil.init = phi i64 [ 1, %.split.us.i.preheader ], [ %i.ayu, %_ZL30get_initial_ioncounts_from_cptRK12t_swapcoordsPN10SwapCoords4ImplEP13swaphistory_tRKN3gmx7MpiCommEb.exit.thread.loopexit.unr-lcssa ]
  %lcmp.mod1641 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1641)
  br label %.split.us.i.epil

.split.us.i.epil:                                 ; preds = %.split.us.i.epil, %.split.us.i.epil.preheader
  %.03913.us15.i.epil = phi i64 [ %i.beb, %.split.us.i.epil ], [ %.03913.us15.i.epil.init, %.split.us.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.split.us.i.epil ], [ 0, %.split.us.i.epil.preheader ]
  %i.bdo = getelementptr [472 x i8], ptr %i.atj, i64 %.03913.us15.i.epil ; 4 uses
  %i.bdp = getelementptr inbounds nuw [136 x i8], ptr %.pre.i526, i64 %.03913.us15.i.epil ; 4 uses
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bdp, i64 24
  %i.bdr = load i32, ptr %i.bdp, align 4, !tbaa !63
  %i.bds = getelementptr i8, ptr %i.bdo, i64 1672
  store i32 %i.bdr, ptr %i.bds, align 8, !tbaa !360
  %i.bdt = load i32, ptr %i.bdq, align 4, !tbaa !63
  %i.bdu = getelementptr i8, ptr %i.bdo, i64 1752
  store i32 %i.bdt, ptr %i.bdu, align 8, !tbaa !362
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bdp, i64 4
  %i.bdw = load i32, ptr %i.bdv, align 4, !tbaa !63
  %i.bdx = getelementptr i8, ptr %i.bdo, i64 1768
  store i32 %i.bdw, ptr %i.bdx, align 8, !tbaa !360
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.bdp, i64 28
  %i.bdz = load i32, ptr %i.bdy, align 4, !tbaa !63
  %i.bea = getelementptr i8, ptr %i.bdo, i64 1848
  store i32 %i.bdz, ptr %i.bea, align 8, !tbaa !362
  %i.beb = add i64 %.03913.us15.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL30get_initial_ioncounts_from_cptRK12t_swapcoordsPN10SwapCoords4ImplEP13swaphistory_tRKN3gmx7MpiCommEb.exit.thread, label %.split.us.i.epil, !llvm.loop !374

_ZL30get_initial_ioncounts_from_cptRK12t_swapcoordsPN10SwapCoords4ImplEP13swaphistory_tRKN3gmx7MpiCommEb.exit.thread: ; preds = %_ZL30get_initial_ioncounts_from_cptRK12t_swapcoordsPN10SwapCoords4ImplEP13swaphistory_tRKN3gmx7MpiCommEb.exit.thread.loopexit.unr-lcssa, %.split.us.i.epil, %bb.ji, %.thread.i525, %.lr.ph14.split.split.us.i, %_ZL30get_initial_ioncounts_from_cptRK12t_swapcoordsPN10SwapCoords4ImplEP13swaphistory_tRKN3gmx7MpiCommEb.exit
  %i.bec = getelementptr inbounds nuw i8, ptr %.0, i64 4 ; 2 uses
  %i.bed = load i32, ptr %i.bec, align 4, !tbaa !319
  %i.bee = getelementptr inbounds nuw i8, ptr %i.gt, i64 32 ; 2 uses
  %i.bef = load i32, ptr %i.bee, align 8, !tbaa !103
  %.not351 = icmp eq i32 %i.bed, %i.bef
  br i1 %.not351, label %bb.kd, label %bb.jx

bb.jx:                                            ; preds = %_ZL30get_initial_ioncounts_from_cptRK12t_swapcoordsPN10SwapCoords4ImplEP13swaphistory_tRKN3gmx7MpiCommEb.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #25
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA64_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %38, ptr noundef nonnull align 1 dereferenceable(64) @.str.4, i8 noundef zeroext 2)
          to label %bb.jy unwind label %bb.ka

bb.jy:                                            ; preds = %bb.jx
  %i.beg = load ptr, ptr @_ZL3SwSB5cxx11, align 8, !tbaa !93
  %i.beh = load i32, ptr %i.bec, align 4, !tbaa !319
  %i.bei = load i32, ptr %i.bee, align 8, !tbaa !103
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %38, i32 noundef 1854, ptr noundef nonnull @.str.33, ptr noundef %i.beg, i32 noundef %i.beh, i32 noundef %i.bei) #29
          to label %bb.jz unwind label %bb.kb

bb.jz:                                            ; preds = %bb.jy
  unreachable

bb.ka:                                            ; preds = %bb.jx
  %i.bej = landingpad { ptr, i32 }
          cleanup
  br label %bb.kc

bb.kb:                                            ; preds = %bb.jy
  %i.bek = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %38) #25
  br label %bb.kc

bb.kc:                                            ; preds = %bb.kb, %bb.ka
  %.pn355 = phi { ptr, i32 } [ %i.bek, %bb.kb ], [ %i.bej, %bb.ka ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #25
  br label %.body

_ZL30get_initial_ioncounts_from_cptRK12t_swapcoordsPN10SwapCoords4ImplEP13swaphistory_tRKN3gmx7MpiCommEb.exit.thread685: ; preds = %bb.jn, %_ZL30get_initial_ioncounts_from_cptRK12t_swapcoordsPN10SwapCoords4ImplEP13swaphistory_tRKN3gmx7MpiCommEb.exit
  %i.bel = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  %i.bem = load i32, ptr %i.bel, align 8, !tbaa !103
  %i.ben = getelementptr inbounds nuw i8, ptr %.0, i64 4
  store i32 %i.bem, ptr %i.ben, align 4, !tbaa !319
  br label %bb.kd

bb.kd:                                            ; preds = %_ZL30get_initial_ioncounts_from_cptRK12t_swapcoordsPN10SwapCoords4ImplEP13swaphistory_tRKN3gmx7MpiCommEb.exit.thread, %_ZL30get_initial_ioncounts_from_cptRK12t_swapcoordsPN10SwapCoords4ImplEP13swaphistory_tRKN3gmx7MpiCommEb.exit.thread685
  %i.beo = load ptr, ptr @stderr, align 8, !tbaa !94
  %i.bep = load ptr, ptr @_ZL3SwSB5cxx11, align 8, !tbaa !93
  %i.beq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.beo, ptr noundef nonnull @.str.34, ptr noundef %i.bep) #30 ; 0 uses
  %i.ber = load ptr, ptr %i.gu, align 8, !tbaa !301 ; 12 uses
  %i.bes = getelementptr inbounds nuw i8, ptr %i.ber, i64 1416 ; 2 uses
  %i.bet = load ptr, ptr %i.ir, align 8, !tbaa !291 ; 4 uses
  %i.beu = ptrtoint ptr %i.bet to i64
  %i.bev = ptrtoint ptr %i.bes to i64
  %i.bew = sub i64 %i.beu, %i.bev
  %i.bex = sdiv i64 %i.bew, 472                   ; 5 uses
  %.not832 = icmp eq ptr %i.bet, %i.bes
  br i1 %.not832, label %.split837, label %.split

.split:                                           ; preds = %bb.kd
  %i.bey = getelementptr inbounds nuw i8, ptr %.0, i64 96
  %i.bez = load ptr, ptr %i.bey, align 8, !tbaa !332 ; 10 uses
  %39 = add nsw i64 %i.bex, -1                    ; 2 uses
  %xtraiter1642 = and i64 %i.bex, 3               ; 3 uses
  %i.bfa = icmp ult i64 %39, 3
  br i1 %i.bfa, label %.epil.preheader, label %.split.new

.split.new:                                       ; preds = %.split
  %unroll_iter1646 = and i64 %i.bex, -4
  br label %bb.ke

.split837:                                        ; preds = %._crit_edge835.1, %bb.kd
  %.val392 = phi ptr [ %.val392.pre, %._crit_edge835.1 ], [ %i.ber, %bb.kd ]
  %i.bfb = getelementptr inbounds nuw i8, ptr %.val392, i64 1416 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.bfb, %i.bet
  br i1 %.not5.i.i, label %_ZL27getRequestedChargeImbalancePN10SwapCoords4ImplE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.split837, %.lr.ph.i.i
  %.07.i.i = phi float [ %i.bfk, %.lr.ph.i.i ], [ 0.000000e+00, %.split837 ]
  %.sroa.0.06.i.i = phi ptr [ %i.bfl, %.lr.ph.i.i ], [ %i.bfb, %.split837 ] ; 4 uses
  %i.bfc = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i, i64 144
  %i.bfd = load float, ptr %i.bfc, align 8, !tbaa !345
  %i.bfe = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i, i64 256
  %i.bff = load i32, ptr %i.bfe, align 8, !tbaa !360
  %i.bfg = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i, i64 352
  %i.bfh = load i32, ptr %i.bfg, align 8, !tbaa !360
  %i.bfi = sub nsw i32 %i.bff, %i.bfh
  %i.bfj = sitofp i32 %i.bfi to float
  %i.bfk = call noundef float @llvm.fmuladd.f32(float %i.bfd, float %i.bfj, float %.07.i.i) ; 2 uses
  %i.bfl = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i, i64 472 ; 2 uses
  %.not.i.i548 = icmp eq ptr %i.bfl, %i.bet
  br i1 %.not.i.i548, label %_ZL27getRequestedChargeImbalancePN10SwapCoords4ImplE.exit, label %.lr.ph.i.i, !llvm.loop !376

._crit_edge835:                                   ; preds = %._crit_edge835, %._crit_edge835.preheader.new
  %.0329833.1 = phi i64 [ 0, %._crit_edge835.preheader.new ], [ %i.bgz, %._crit_edge835 ] ; 6 uses
  %niter1655 = phi i64 [ 0, %._crit_edge835.preheader.new ], [ %niter1655.next.3, %._crit_edge835 ]
  %i.bfm = getelementptr [472 x i8], ptr %i.ber, i64 %.0329833.1 ; 3 uses
  %i.bfn = getelementptr inbounds nuw [136 x i8], ptr %i.bez, i64 %.0329833.1 ; 3 uses
  %i.bfo = getelementptr i8, ptr %i.bfm, i64 1768
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.bfn, i64 16
  store ptr %i.bfo, ptr %i.bfp, align 8, !tbaa !206
  %i.bfq = getelementptr i8, ptr %i.bfm, i64 1776
  %i.bfr = load ptr, ptr %i.bfq, align 8, !tbaa !209
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.bfn, i64 72
  store ptr %i.bfr, ptr %i.bfs, align 8, !tbaa !206
  %i.bft = getelementptr i8, ptr %i.bfm, i64 1848
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bfn, i64 40
  store ptr %i.bft, ptr %i.bfu, align 8, !tbaa !206
  %i.bfv = or disjoint i64 %.0329833.1, 1         ; 2 uses
  %i.bfw = getelementptr [472 x i8], ptr %i.ber, i64 %i.bfv ; 3 uses
  %i.bfx = getelementptr inbounds nuw [136 x i8], ptr %i.bez, i64 %i.bfv ; 3 uses
  %i.bfy = getelementptr i8, ptr %i.bfw, i64 1768
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.bfx, i64 16
  store ptr %i.bfy, ptr %i.bfz, align 8, !tbaa !206
  %i.bga = getelementptr i8, ptr %i.bfw, i64 1776
  %i.bgb = load ptr, ptr %i.bga, align 8, !tbaa !209
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bfx, i64 72
  store ptr %i.bgb, ptr %i.bgc, align 8, !tbaa !206
  %i.bgd = getelementptr i8, ptr %i.bfw, i64 1848
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bfx, i64 40
  store ptr %i.bgd, ptr %i.bge, align 8, !tbaa !206
  %i.bgf = or disjoint i64 %.0329833.1, 2         ; 2 uses
  %i.bgg = getelementptr [472 x i8], ptr %i.ber, i64 %i.bgf ; 3 uses
  %i.bgh = getelementptr inbounds nuw [136 x i8], ptr %i.bez, i64 %i.bgf ; 3 uses
  %i.bgi = getelementptr i8, ptr %i.bgg, i64 1768
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bgh, i64 16
  store ptr %i.bgi, ptr %i.bgj, align 8, !tbaa !206
  %i.bgk = getelementptr i8, ptr %i.bgg, i64 1776
  %i.bgl = load ptr, ptr %i.bgk, align 8, !tbaa !209
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bgh, i64 72
  store ptr %i.bgl, ptr %i.bgm, align 8, !tbaa !206
  %i.bgn = getelementptr i8, ptr %i.bgg, i64 1848
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bgh, i64 40
  store ptr %i.bgn, ptr %i.bgo, align 8, !tbaa !206
  %i.bgp = or disjoint i64 %.0329833.1, 3         ; 2 uses
  %i.bgq = getelementptr [472 x i8], ptr %i.ber, i64 %i.bgp ; 3 uses
  %i.bgr = getelementptr inbounds nuw [136 x i8], ptr %i.bez, i64 %i.bgp ; 3 uses
  %i.bgs = getelementptr i8, ptr %i.bgq, i64 1768
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bgr, i64 16
  store ptr %i.bgs, ptr %i.bgt, align 8, !tbaa !206
  %i.bgu = getelementptr i8, ptr %i.bgq, i64 1776
  %i.bgv = load ptr, ptr %i.bgu, align 8, !tbaa !209
  %i.bgw = getelementptr inbounds nuw i8, ptr %i.bgr, i64 72
  store ptr %i.bgv, ptr %i.bgw, align 8, !tbaa !206
  %i.bgx = getelementptr i8, ptr %i.bgq, i64 1848
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.bgr, i64 40
  store ptr %i.bgx, ptr %i.bgy, align 8, !tbaa !206
  %i.bgz = add i64 %.0329833.1, 4                 ; 2 uses
  %niter1655.next.3 = add i64 %niter1655, 4       ; 2 uses
  %niter1655.ncmp.3 = icmp eq i64 %niter1655.next.3, %unroll_iter1654
  br i1 %niter1655.ncmp.3, label %._crit_edge835.1.unr-lcssa, label %._crit_edge835, !llvm.loop !377

._crit_edge835.1.unr-lcssa:                       ; preds = %._crit_edge835
  %lcmp.mod1652.not = icmp eq i64 %xtraiter1650, 0
  br i1 %lcmp.mod1652.not, label %._crit_edge835.1, label %._crit_edge835.epil.preheader

._crit_edge835.epil.preheader:                    ; preds = %._crit_edge835.1.unr-lcssa, %._crit_edge835.preheader
  %.0329833.1.epil.init = phi i64 [ 0, %._crit_edge835.preheader ], [ %i.bgz, %._crit_edge835.1.unr-lcssa ]
  %lcmp.mod1653 = icmp ne i64 %xtraiter1650, 0
  call void @llvm.assume(i1 %lcmp.mod1653)
  br label %._crit_edge835.epil

._crit_edge835.epil:                              ; preds = %._crit_edge835.epil, %._crit_edge835.epil.preheader
  %.0329833.1.epil = phi i64 [ %i.bhj, %._crit_edge835.epil ], [ %.0329833.1.epil.init, %._crit_edge835.epil.preheader ] ; 3 uses
  %epil.iter1651 = phi i64 [ %epil.iter1651.next, %._crit_edge835.epil ], [ 0, %._crit_edge835.epil.preheader ]
  %i.bha = getelementptr [472 x i8], ptr %i.ber, i64 %.0329833.1.epil ; 3 uses
  %i.bhb = getelementptr inbounds nuw [136 x i8], ptr %i.bez, i64 %.0329833.1.epil ; 3 uses
  %i.bhc = getelementptr i8, ptr %i.bha, i64 1768
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.bhb, i64 16
  store ptr %i.bhc, ptr %i.bhd, align 8, !tbaa !206
  %i.bhe = getelementptr i8, ptr %i.bha, i64 1776
  %i.bhf = load ptr, ptr %i.bhe, align 8, !tbaa !209
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bhb, i64 72
  store ptr %i.bhf, ptr %i.bhg, align 8, !tbaa !206
  %i.bhh = getelementptr i8, ptr %i.bha, i64 1848
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bhb, i64 40
  store ptr %i.bhh, ptr %i.bhi, align 8, !tbaa !206
  %i.bhj = add i64 %.0329833.1.epil, 1
  %epil.iter1651.next = add i64 %epil.iter1651, 1 ; 2 uses
  %epil.iter1651.cmp.not = icmp eq i64 %epil.iter1651.next, %xtraiter1650
  br i1 %epil.iter1651.cmp.not, label %._crit_edge835.1, label %._crit_edge835.epil, !llvm.loop !378

._crit_edge835.1:                                 ; preds = %._crit_edge835.epil, %._crit_edge835.1.unr-lcssa
  %.val392.pre = load ptr, ptr %i.gu, align 8, !tbaa !301
  br label %.split837

bb.ke:                                            ; preds = %bb.ke, %.split.new
  %.0329833 = phi i64 [ 0, %.split.new ], [ %i.bix, %bb.ke ] ; 6 uses
  %niter1647 = phi i64 [ 0, %.split.new ], [ %niter1647.next.3, %bb.ke ]
  %i.bhk = getelementptr [472 x i8], ptr %i.ber, i64 %.0329833 ; 3 uses
  %i.bhl = getelementptr inbounds nuw [136 x i8], ptr %i.bez, i64 %.0329833 ; 3 uses
  %i.bhm = getelementptr i8, ptr %i.bhk, i64 1672
  %i.bhn = getelementptr inbounds nuw i8, ptr %i.bhl, i64 8
  store ptr %i.bhm, ptr %i.bhn, align 8, !tbaa !206
  %i.bho = getelementptr i8, ptr %i.bhk, i64 1680
  %i.bhp = load ptr, ptr %i.bho, align 8, !tbaa !209
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bhl, i64 64
  store ptr %i.bhp, ptr %i.bhq, align 8, !tbaa !206
  %i.bhr = getelementptr i8, ptr %i.bhk, i64 1752
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhl, i64 32
  store ptr %i.bhr, ptr %i.bhs, align 8, !tbaa !206
  %i.bht = or disjoint i64 %.0329833, 1           ; 2 uses
  %i.bhu = getelementptr [472 x i8], ptr %i.ber, i64 %i.bht ; 3 uses
  %i.bhv = getelementptr inbounds nuw [136 x i8], ptr %i.bez, i64 %i.bht ; 3 uses
  %i.bhw = getelementptr i8, ptr %i.bhu, i64 1672
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.bhv, i64 8
  store ptr %i.bhw, ptr %i.bhx, align 8, !tbaa !206
  %i.bhy = getelementptr i8, ptr %i.bhu, i64 1680
  %i.bhz = load ptr, ptr %i.bhy, align 8, !tbaa !209
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bhv, i64 64
  store ptr %i.bhz, ptr %i.bia, align 8, !tbaa !206
  %i.bib = getelementptr i8, ptr %i.bhu, i64 1752
  %i.bic = getelementptr inbounds nuw i8, ptr %i.bhv, i64 32
  store ptr %i.bib, ptr %i.bic, align 8, !tbaa !206
  %i.bid = or disjoint i64 %.0329833, 2           ; 2 uses
  %i.bie = getelementptr [472 x i8], ptr %i.ber, i64 %i.bid ; 3 uses
  %i.bif = getelementptr inbounds nuw [136 x i8], ptr %i.bez, i64 %i.bid ; 3 uses
  %i.big = getelementptr i8, ptr %i.bie, i64 1672
  %i.bih = getelementptr inbounds nuw i8, ptr %i.bif, i64 8
  store ptr %i.big, ptr %i.bih, align 8, !tbaa !206
  %i.bii = getelementptr i8, ptr %i.bie, i64 1680
  %i.bij = load ptr, ptr %i.bii, align 8, !tbaa !209
  %i.bik = getelementptr inbounds nuw i8, ptr %i.bif, i64 64
  store ptr %i.bij, ptr %i.bik, align 8, !tbaa !206
  %i.bil = getelementptr i8, ptr %i.bie, i64 1752
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bif, i64 32
  store ptr %i.bil, ptr %i.bim, align 8, !tbaa !206
  %i.bin = or disjoint i64 %.0329833, 3           ; 2 uses
  %i.bio = getelementptr [472 x i8], ptr %i.ber, i64 %i.bin ; 3 uses
  %i.bip = getelementptr inbounds nuw [136 x i8], ptr %i.bez, i64 %i.bin ; 3 uses
  %i.biq = getelementptr i8, ptr %i.bio, i64 1672
  %i.bir = getelementptr inbounds nuw i8, ptr %i.bip, i64 8
  store ptr %i.biq, ptr %i.bir, align 8, !tbaa !206
  %i.bis = getelementptr i8, ptr %i.bio, i64 1680
  %i.bit = load ptr, ptr %i.bis, align 8, !tbaa !209
  %i.biu = getelementptr inbounds nuw i8, ptr %i.bip, i64 64
  store ptr %i.bit, ptr %i.biu, align 8, !tbaa !206
  %i.biv = getelementptr i8, ptr %i.bio, i64 1752
  %i.biw = getelementptr inbounds nuw i8, ptr %i.bip, i64 32
  store ptr %i.biv, ptr %i.biw, align 8, !tbaa !206
  %i.bix = add i64 %.0329833, 4                   ; 2 uses
  %niter1647.next.3 = add i64 %niter1647, 4       ; 2 uses
  %niter1647.ncmp.3 = icmp eq i64 %niter1647.next.3, %unroll_iter1646
  br i1 %niter1647.ncmp.3, label %._crit_edge835.preheader.unr-lcssa, label %bb.ke, !llvm.loop !377

._crit_edge835.preheader.unr-lcssa:               ; preds = %bb.ke
  %lcmp.mod1644.not = icmp eq i64 %xtraiter1642, 0
  br i1 %lcmp.mod1644.not, label %._crit_edge835.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge835.preheader.unr-lcssa, %.split
  %.0329833.epil.init = phi i64 [ 0, %.split ], [ %i.bix, %._crit_edge835.preheader.unr-lcssa ]
  %lcmp.mod1645 = icmp ne i64 %xtraiter1642, 0
  call void @llvm.assume(i1 %lcmp.mod1645)
  br label %bb.kf

bb.kf:                                            ; preds = %bb.kf, %.epil.preheader
  %.0329833.epil = phi i64 [ %.0329833.epil.init, %.epil.preheader ], [ %i.bjh, %bb.kf ] ; 3 uses
  %epil.iter1643 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter1643.next, %bb.kf ]
  %i.biy = getelementptr [472 x i8], ptr %i.ber, i64 %.0329833.epil ; 3 uses
  %i.biz = getelementptr inbounds nuw [136 x i8], ptr %i.bez, i64 %.0329833.epil ; 3 uses
  %i.bja = getelementptr i8, ptr %i.biy, i64 1672
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.biz, i64 8
  store ptr %i.bja, ptr %i.bjb, align 8, !tbaa !206
  %i.bjc = getelementptr i8, ptr %i.biy, i64 1680
  %i.bjd = load ptr, ptr %i.bjc, align 8, !tbaa !209
  %i.bje = getelementptr inbounds nuw i8, ptr %i.biz, i64 64
  store ptr %i.bjd, ptr %i.bje, align 8, !tbaa !206
  %i.bjf = getelementptr i8, ptr %i.biy, i64 1752
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.biz, i64 32
  store ptr %i.bjf, ptr %i.bjg, align 8, !tbaa !206
  %i.bjh = add i64 %.0329833.epil, 1
  %epil.iter1643.next = add i64 %epil.iter1643, 1 ; 2 uses
  %epil.iter1643.cmp.not = icmp eq i64 %epil.iter1643.next, %xtraiter1642
  br i1 %epil.iter1643.cmp.not, label %._crit_edge835.preheader, label %bb.kf, !llvm.loop !379

._crit_edge835.preheader:                         ; preds = %bb.kf, %._crit_edge835.preheader.unr-lcssa
  %xtraiter1650 = and i64 %i.bex, 3               ; 3 uses
  %i.bji = icmp ult i64 %39, 3
  br i1 %i.bji, label %._crit_edge835.epil.preheader, label %._crit_edge835.preheader.new

._crit_edge835.preheader.new:                     ; preds = %._crit_edge835.preheader
  %unroll_iter1654 = and i64 %i.bex, -4
  br label %._crit_edge835

_ZL27getRequestedChargeImbalancePN10SwapCoords4ImplE.exit: ; preds = %.lr.ph.i.i, %.split837
  %.0.lcssa.i.i = phi float [ 0.000000e+00, %.split837 ], [ %i.bfk, %.lr.ph.i.i ] ; 2 uses
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.k, i64 428 ; 2 uses
  store float %.0.lcssa.i.i, ptr %i.bjj, align 4, !tbaa !380
  br i1 %i.ah, label %bb.kg, label %bb.kh

bb.kg:                                            ; preds = %_ZL27getRequestedChargeImbalancePN10SwapCoords4ImplE.exit
  %i.bjk = load ptr, ptr @stderr, align 8, !tbaa !94
  %i.bjl = load ptr, ptr @_ZL3SwSB5cxx11, align 8, !tbaa !93
  %i.bjm = fpext float %.0.lcssa.i.i to double
  %i.bjn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bjk, ptr noundef nonnull @.str.35, ptr noundef %i.bjl, double noundef %i.bjm) #30 ; 0 uses
  br label %bb.kh

bb.kh:                                            ; preds = %bb.kg, %_ZL27getRequestedChargeImbalancePN10SwapCoords4ImplE.exit
  br i1 %i.aez, label %bb.ki, label %bb.kj

bb.ki:                                            ; preds = %bb.kh
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.k, i64 392
  %i.bjp = load ptr, ptr %i.bjo, align 8, !tbaa !349
  %i.bjq = load float, ptr %i.bjj, align 4, !tbaa !380
  %i.bjr = fpext float %i.bjq to double
  %i.bjs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bjp, ptr noundef nonnull @.str.36, double noundef %i.bjr) #25 ; 0 uses
  br label %bb.kj

bb.kj:                                            ; preds = %bb.kh, %bb.ki, %._crit_edge830
  %i.bjt = load i32, ptr %i.b, align 8, !tbaa !65
  %i.bju = icmp sgt i32 %i.bjt, 1
  %.pre955 = load ptr, ptr %i.gu, align 8, !tbaa !301 ; 3 uses
  %.pre957 = load ptr, ptr %i.ir, align 8, !tbaa !291 ; 4 uses
  br i1 %i.bju, label %bb.kk, label %.loopexit706

bb.kk:                                            ; preds = %bb.kj
  %i.bjv = getelementptr inbounds nuw i8, ptr %.pre955, i64 1416 ; 2 uses
  %.not9.i = icmp eq ptr %i.bjv, %.pre957
  br i1 %.not9.i, label %.loopexit706, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.kk
  %i.bjw = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.bjw, i64 32 ; 2 uses
  br label %.preheader.i552

.preheader.i552:                                  ; preds = %.noexc560, %.preheader.lr.ph.i
  %.sroa.04.010.i = phi ptr [ %i.bjv, %.preheader.lr.ph.i ], [ %i.bks, %.noexc560 ] ; 7 uses
  %i.bjy = getelementptr inbounds nuw i8, ptr %.sroa.04.010.i, i64 256
  %i.bjz = load ptr, ptr %7, align 8, !tbaa !340
  invoke void @_Z9gmx_bcastmPvP10tmpi_comm_(i64 noundef 4, ptr noundef nonnull %i.bjy, ptr noundef %i.bjz)
          to label %.noexc555 unwind label %.loopexit.split-lp.loopexit

.noexc555:                                        ; preds = %.preheader.i552
  %i.bka = getelementptr inbounds nuw i8, ptr %.sroa.04.010.i, i64 248
  %i.bkb = load ptr, ptr %7, align 8, !tbaa !340
  invoke void @_Z9gmx_bcastmPvP10tmpi_comm_(i64 noundef 4, ptr noundef nonnull %i.bka, ptr noundef %i.bkb)
          to label %.noexc556 unwind label %.loopexit.split-lp.loopexit

.noexc556:                                        ; preds = %.noexc555
  %i.bkc = load i32, ptr %i.bjx, align 8, !tbaa !103
  %i.bkd = sext i32 %i.bkc to i64
  %i.bke = shl nsw i64 %i.bkd, 2
  %i.bkf = getelementptr inbounds nuw i8, ptr %.sroa.04.010.i, i64 264
  %i.bkg = load ptr, ptr %i.bkf, align 8, !tbaa !209
  %i.bkh = load ptr, ptr %7, align 8, !tbaa !340
  invoke void @_Z9gmx_bcastmPvP10tmpi_comm_(i64 noundef %i.bke, ptr noundef %i.bkg, ptr noundef %i.bkh)
          to label %.noexc557 unwind label %.loopexit.split-lp.loopexit

.noexc557:                                        ; preds = %.noexc556
  %i.bki = getelementptr inbounds nuw i8, ptr %.sroa.04.010.i, i64 352
  %i.bkj = load ptr, ptr %7, align 8, !tbaa !340
  invoke void @_Z9gmx_bcastmPvP10tmpi_comm_(i64 noundef 4, ptr noundef nonnull %i.bki, ptr noundef %i.bkj)
          to label %.noexc558 unwind label %.loopexit.split-lp.loopexit

.noexc558:                                        ; preds = %.noexc557
  %i.bkk = getelementptr inbounds nuw i8, ptr %.sroa.04.010.i, i64 344
  %i.bkl = load ptr, ptr %7, align 8, !tbaa !340
  invoke void @_Z9gmx_bcastmPvP10tmpi_comm_(i64 noundef 4, ptr noundef nonnull %i.bkk, ptr noundef %i.bkl)
          to label %.noexc559 unwind label %.loopexit.split-lp.loopexit

.noexc559:                                        ; preds = %.noexc558
  %i.bkm = load i32, ptr %i.bjx, align 8, !tbaa !103
  %i.bkn = sext i32 %i.bkm to i64
  %i.bko = shl nsw i64 %i.bkn, 2
  %i.bkp = getelementptr inbounds nuw i8, ptr %.sroa.04.010.i, i64 360
  %i.bkq = load ptr, ptr %i.bkp, align 8, !tbaa !209
  %i.bkr = load ptr, ptr %7, align 8, !tbaa !340
  invoke void @_Z9gmx_bcastmPvP10tmpi_comm_(i64 noundef %i.bko, ptr noundef %i.bkq, ptr noundef %i.bkr)
          to label %.noexc560 unwind label %.loopexit.split-lp.loopexit

.noexc560:                                        ; preds = %.noexc559
  %i.bks = getelementptr inbounds nuw i8, ptr %.sroa.04.010.i, i64 472 ; 2 uses
  %.not.i553 = icmp eq ptr %i.bks, %.pre957
  br i1 %.not.i553, label %.loopexit706.loopexit, label %.preheader.i552

.loopexit706.loopexit:                            ; preds = %.noexc560
  %.pre954 = load ptr, ptr %i.gu, align 8, !tbaa !301
  %.pre956 = load ptr, ptr %i.ir, align 8, !tbaa !291
  br label %.loopexit706

.loopexit706:                                     ; preds = %.loopexit706.loopexit, %bb.kj, %bb.kk
  %i.bkt = phi ptr [ %.pre956, %.loopexit706.loopexit ], [ %.pre957, %bb.kj ], [ %.pre957, %bb.kk ] ; 4 uses
  %i.bku = phi ptr [ %.pre954, %.loopexit706.loopexit ], [ %.pre955, %bb.kj ], [ %.pre955, %bb.kk ] ; 3 uses
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bku, i64 1416 ; 3 uses
  %.not696842 = icmp eq ptr %i.bkv, %i.bkt
  br i1 %.not696842, label %._crit_edge846.thread1277, label %.lr.ph845

.lr.ph845:                                        ; preds = %.loopexit706
  %i.bkw = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  %i.bkx = load i32, ptr %i.bkw, align 8, !tbaa !103 ; 5 uses
  %i.bky = icmp sgt i32 %i.bkx, 0
  %i.bkz = sitofp i32 %i.bkx to float             ; 3 uses
  %wide.trip.count.i592 = zext i32 %i.bkx to i64  ; 4 uses
  %i.bla = fdiv float 0.000000e+00, %i.bkz        ; 2 uses
  br i1 %i.bky, label %.split839.us.us.preheader, label %.split839

.split839.us.us.preheader:                        ; preds = %.lr.ph845
  %xtraiter1658 = and i64 %wide.trip.count.i592, 7 ; 3 uses
  %i.blb = icmp ult i32 %i.bkx, 8
  %unroll_iter1663 = and i64 %wide.trip.count.i592, 2147483640
  %lcmp.mod1660.not = icmp eq i64 %xtraiter1658, 0
  %lcmp.mod1662 = icmp ne i64 %xtraiter1658, 0
  %xtraiter1670 = and i64 %wide.trip.count.i592, 7 ; 3 uses
  %i.blc = icmp ult i32 %i.bkx, 8
  %unroll_iter1675 = and i64 %wide.trip.count.i592, 2147483640
  %lcmp.mod1672.not = icmp eq i64 %xtraiter1670, 0
  %lcmp.mod1674 = icmp ne i64 %xtraiter1670, 0
  br label %.split839.us.us

.split839.us.us:                                  ; preds = %.split839.us.us.preheader, %_ZL18update_time_windowP16swap_compartmentii.exit.loopexit.us.us.1
  %.sroa.0624.0843.us = phi ptr [ %i.bot, %_ZL18update_time_windowP16swap_compartmentii.exit.loopexit.us.us.1 ], [ %i.bkv, %.split839.us.us.preheader ] ; 5 uses
  %i.bld = getelementptr inbounds nuw i8, ptr %.sroa.0624.0843.us, i64 264
  %i.ble = load ptr, ptr %i.bld, align 8, !tbaa !209 ; 9 uses
  br i1 %i.blb, label %.epil.preheader1657, label %.split839.us.us.new

.split839.us.us.new:                              ; preds = %.split839.us.us, %.split839.us.us.new
  %indvars.iv.i593.us.us = phi i64 [ %indvars.iv.next.i594.us.us.7, %.split839.us.us.new ], [ 0, %.split839.us.us ] ; 9 uses
  %.01316.i.us.us = phi float [ %i.bmr, %.split839.us.us.new ], [ 0.000000e+00, %.split839.us.us ]
  %niter1664 = phi i64 [ %niter1664.next.7, %.split839.us.us.new ], [ 0, %.split839.us.us ]
  %i.blf = getelementptr inbounds nuw [4 x i8], ptr %i.ble, i64 %indvars.iv.i593.us.us
  %i.blg = load i32, ptr %i.blf, align 4, !tbaa !63
  %i.blh = sitofp i32 %i.blg to float
  %i.bli = fadd float %.01316.i.us.us, %i.blh
  %i.blj = getelementptr inbounds nuw [4 x i8], ptr %i.ble, i64 %indvars.iv.i593.us.us
  %i.blk = getelementptr inbounds nuw i8, ptr %i.blj, i64 4
  %i.bll = load i32, ptr %i.blk, align 4, !tbaa !63
  %i.blm = sitofp i32 %i.bll to float
  %i.bln = fadd float %i.bli, %i.blm
  %i.blo = getelementptr inbounds nuw [4 x i8], ptr %i.ble, i64 %indvars.iv.i593.us.us
  %i.blp = getelementptr inbounds nuw i8, ptr %i.blo, i64 8
  %i.blq = load i32, ptr %i.blp, align 4, !tbaa !63
  %i.blr = sitofp i32 %i.blq to float
  %i.bls = fadd float %i.bln, %i.blr
  %i.blt = getelementptr inbounds nuw [4 x i8], ptr %i.ble, i64 %indvars.iv.i593.us.us
  %i.blu = getelementptr inbounds nuw i8, ptr %i.blt, i64 12
  %i.blv = load i32, ptr %i.blu, align 4, !tbaa !63
  %i.blw = sitofp i32 %i.blv to float
  %i.blx = fadd float %i.bls, %i.blw
  %i.bly = getelementptr inbounds nuw [4 x i8], ptr %i.ble, i64 %indvars.iv.i593.us.us
  %i.blz = getelementptr inbounds nuw i8, ptr %i.bly, i64 16
  %i.bma = load i32, ptr %i.blz, align 4, !tbaa !63
  %i.bmb = sitofp i32 %i.bma to float
  %i.bmc = fadd float %i.blx, %i.bmb
  %i.bmd = getelementptr inbounds nuw [4 x i8], ptr %i.ble, i64 %indvars.iv.i593.us.us
  %i.bme = getelementptr inbounds nuw i8, ptr %i.bmd, i64 20
  %i.bmf = load i32, ptr %i.bme, align 4, !tbaa !63
  %i.bmg = sitofp i32 %i.bmf to float
  %i.bmh = fadd float %i.bmc, %i.bmg
  %i.bmi = getelementptr inbounds nuw [4 x i8], ptr %i.ble, i64 %indvars.iv.i593.us.us
  %i.bmj = getelementptr inbounds nuw i8, ptr %i.bmi, i64 24
  %i.bmk = load i32, ptr %i.bmj, align 4, !tbaa !63
  %i.bml = sitofp i32 %i.bmk to float
  %i.bmm = fadd float %i.bmh, %i.bml
  %i.bmn = getelementptr inbounds nuw [4 x i8], ptr %i.ble, i64 %indvars.iv.i593.us.us
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bmn, i64 28
  %i.bmp = load i32, ptr %i.bmo, align 4, !tbaa !63
  %i.bmq = sitofp i32 %i.bmp to float
  %i.bmr = fadd float %i.bmm, %i.bmq              ; 3 uses
  %indvars.iv.next.i594.us.us.7 = add nuw nsw i64 %indvars.iv.i593.us.us, 8 ; 2 uses
  %niter1664.next.7 = add i64 %niter1664, 8       ; 2 uses
  %niter1664.ncmp.7 = icmp eq i64 %niter1664.next.7, %unroll_iter1663
  br i1 %niter1664.ncmp.7, label %_ZL18update_time_windowP16swap_compartmentii.exit.loopexit.us.us.unr-lcssa, label %.split839.us.us.new, !llvm.loop !381

_ZL18update_time_windowP16swap_compartmentii.exit.loopexit.us.us.unr-lcssa: ; preds = %.split839.us.us.new
  br i1 %lcmp.mod1660.not, label %_ZL18update_time_windowP16swap_compartmentii.exit.loopexit.us.us, label %.epil.preheader1657

.epil.preheader1657:                              ; preds = %_ZL18update_time_windowP16swap_compartmentii.exit.loopexit.us.us.unr-lcssa, %.split839.us.us
  %indvars.iv.i593.us.us.epil.init = phi i64 [ 0, %.split839.us.us ], [ %indvars.iv.next.i594.us.us.7, %_ZL18update_time_windowP16swap_compartmentii.exit.loopexit.us.us.unr-lcssa ]
  %.01316.i.us.us.epil.init = phi float [ 0.000000e+00, %.split839.us.us ], [ %i.bmr, %_ZL18update_time_windowP16swap_compartmentii.exit.loopexit.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1662)
  br label %bb.kl

bb.kl:                                            ; preds = %bb.kl, %.epil.preheader1657
  %indvars.iv.i593.us.us.epil = phi i64 [ %indvars.iv.i593.us.us.epil.init, %.epil.preheader1657 ], [ %indvars.iv.next.i594.us.us.epil, %bb.kl ] ; 2 uses
  %.01316.i.us.us.epil = phi float [ %.01316.i.us.us.epil.init, %.epil.preheader1657 ], [ %i.bmv, %bb.kl ]
  %epil.iter1659 = phi i64 [ 0, %.epil.preheader1657 ], [ %epil.iter1659.next, %bb.kl ]
  %i.bms = getelementptr inbounds nuw [4 x i8], ptr %i.ble, i64 %indvars.iv.i593.us.us.epil
  %i.bmt = load i32, ptr %i.bms, align 4, !tbaa !63
end_hunk_1
