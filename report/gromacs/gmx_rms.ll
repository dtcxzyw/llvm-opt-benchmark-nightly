Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_rms?download=true
inline.NumInlined: 401
inline.NumDeleted: 142
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_Z7gmx_rmsiPPc:bb.a
  %i.avk = load i32, ptr %i.avj, align 4, !tbaa !10
  %i.avl = sext i32 %i.avk to i64
  %i.avm = getelementptr inbounds [12 x i8], ptr %i.aty, i64 %i.avl ; 3 uses
  %i.avn = getelementptr inbounds nuw [12 x i8], ptr %i.atv, i64 %indvars.iv.next1847.2 ; 3 uses
  %i.avo = load float, ptr %i.avm, align 4, !tbaa !18
  store float %i.avo, ptr %i.avn, align 4, !tbaa !18
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avm, i64 4
  %i.avq = load float, ptr %i.avp, align 4, !tbaa !18
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avn, i64 4
  store float %i.avq, ptr %i.avr, align 4, !tbaa !18
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avm, i64 8
  %i.avt = load float, ptr %i.avs, align 4, !tbaa !18
  %i.avu = getelementptr inbounds nuw i8, ptr %i.avn, i64 8
  store float %i.avt, ptr %i.avu, align 4, !tbaa !18
  %indvars.iv.next1847.3 = add nuw nsw i64 %indvars.iv1846, 4 ; 2 uses
  %niter2683.next.3 = add i64 %niter2683, 4       ; 2 uses
  %niter2683.ncmp.3 = icmp eq i64 %niter2683.next.3, %unroll_iter2682
  br i1 %niter2683.ncmp.3, label %.loopexit1455.loopexit.unr-lcssa, label %.lr.ph1608.new, !llvm.loop !78

.loopexit1455.loopexit.unr-lcssa:                 ; preds = %.lr.ph1608.new
  br i1 %lcmp.mod2680.not, label %.loopexit1455, label %.epil.preheader2677

.epil.preheader2677:                              ; preds = %.loopexit1455.loopexit.unr-lcssa, %.lr.ph1608
  %indvars.iv1846.epil.init = phi i64 [ 0, %.lr.ph1608 ], [ %indvars.iv.next1847.3, %.loopexit1455.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod2681)
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gd, %.epil.preheader2677
  %indvars.iv1846.epil = phi i64 [ %indvars.iv1846.epil.init, %.epil.preheader2677 ], [ %indvars.iv.next1847.epil, %bb.gd ] ; 3 uses
  %epil.iter2679 = phi i64 [ 0, %.epil.preheader2677 ], [ %epil.iter2679.next, %bb.gd ]
  %i.avv = getelementptr inbounds nuw [4 x i8], ptr %.01414, i64 %indvars.iv1846.epil
  %i.avw = load i32, ptr %i.avv, align 4, !tbaa !10
  %i.avx = sext i32 %i.avw to i64
  %i.avy = getelementptr inbounds [12 x i8], ptr %i.aty, i64 %i.avx ; 3 uses
  %i.avz = getelementptr inbounds nuw [12 x i8], ptr %i.atv, i64 %indvars.iv1846.epil ; 3 uses
  %i.awa = load float, ptr %i.avy, align 4, !tbaa !18
  store float %i.awa, ptr %i.avz, align 4, !tbaa !18
  %i.awb = getelementptr inbounds nuw i8, ptr %i.avy, i64 4
  %i.awc = load float, ptr %i.awb, align 4, !tbaa !18
  %i.awd = getelementptr inbounds nuw i8, ptr %i.avz, i64 4
  store float %i.awc, ptr %i.awd, align 4, !tbaa !18
  %i.awe = getelementptr inbounds nuw i8, ptr %i.avy, i64 8
  %i.awf = load float, ptr %i.awe, align 4, !tbaa !18
  %i.awg = getelementptr inbounds nuw i8, ptr %i.avz, i64 8
  store float %i.awf, ptr %i.awg, align 4, !tbaa !18
  %indvars.iv.next1847.epil = add nuw nsw i64 %indvars.iv1846.epil, 1
  %epil.iter2679.next = add i64 %epil.iter2679, 1 ; 2 uses
  %epil.iter2679.cmp.not = icmp eq i64 %epil.iter2679.next, %xtraiter2678
  br i1 %epil.iter2679.cmp.not, label %.loopexit1455, label %bb.gd, !llvm.loop !79

.loopexit1455:                                    ; preds = %.loopexit1455.loopexit.unr-lcssa, %bb.gd, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit975, %bb.ga
  %.21405 = phi ptr [ %.01403, %bb.ga ], [ %.11404, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit975 ], [ %.11404, %bb.gd ], [ %.11404, %.loopexit1455.loopexit.unr-lcssa ]
  %i.awh = load ptr, ptr %i.t, align 8, !tbaa !173
  %i.awi = load float, ptr %i.i, align 4, !tbaa !18
  %i.awj = invoke noundef float @_Z20output_env_conv_timePK16gmx_output_env_tf(ptr noundef %i.awh, float noundef %i.awi)
          to label %bb.ge unwind label %.loopexit1457

bb.ge:                                            ; preds = %.loopexit1455
  %i.awk = add nsw i32 %.0665, 1
  %i.awl = sext i32 %.0664 to i64
  %i.awm = getelementptr inbounds [4 x i8], ptr %.01424, i64 %i.awl
  store float %i.awj, ptr %i.awm, align 4, !tbaa !18
  %i.awn = add nsw i32 %.0664, 1
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.fz
  %.31406 = phi ptr [ %.21405, %bb.ge ], [ %.01403, %bb.fz ] ; 2 uses
  %.1666 = phi i32 [ %i.awk, %bb.ge ], [ %.0665, %bb.fz ] ; 2 uses
  %.1 = phi i32 [ %i.awn, %bb.ge ], [ %.0664, %bb.fz ] ; 2 uses
  %i.awo = add nuw nsw i32 %.0663, 1
  %.not872 = icmp slt i32 %.1, %.0809
  br i1 %.not872, label %_ZL15gmx_srenew_implIfEvPKcS1_iRPT_m.exit976, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.awp = add nsw i32 %.0809, 5000               ; 2 uses
  %i.awq = sext i32 %i.awp to i64
  %i.awr = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.105, i32 noundef 777, ptr noundef %.01424, i64 noundef range(i64 -2147478648, 2147483648) %i.awq, i64 noundef 4)
          to label %_ZL15gmx_srenew_implIfEvPKcS1_iRPT_m.exit976 unwind label %.loopexit1457

_ZL15gmx_srenew_implIfEvPKcS1_iRPT_m.exit976:     ; preds = %bb.gg, %bb.gf
  %.11425 = phi ptr [ %.01424, %bb.gf ], [ %i.awr, %bb.gg ] ; 2 uses
  %.1810 = phi i32 [ %.0809, %bb.gf ], [ %i.awp, %bb.gg ]
  %i.aws = load ptr, ptr %i.t, align 8, !tbaa !173
  %i.awt = load ptr, ptr %i.n, align 8, !tbaa !181
  %i.awu = load ptr, ptr %i.l, align 8, !tbaa !167
  %i.awv = invoke noundef zeroext i1 @_Z11read_next_xPK16gmx_output_env_tP11t_trxstatusPfPA3_fS6_(ptr noundef %i.aws, ptr noundef %i.awt, ptr noundef nonnull %i.i, ptr noundef %i.awu, ptr noundef nonnull %i.k)
          to label %bb.gh unwind label %.loopexit1457

bb.gh:                                            ; preds = %_ZL15gmx_srenew_implIfEvPKcS1_iRPT_m.exit976
  br i1 %i.awv, label %bb.fr, label %bb.gi, !llvm.loop !80

bb.gi:                                            ; preds = %bb.gh
  %i.aww = load ptr, ptr %i.n, align 8, !tbaa !181
  invoke void @_Z9close_trxP11t_trxstatus(ptr noundef %i.aww)
          to label %bb.gk unwind label %.loopexit.split-lp1458

bb.gj:                                            ; preds = %bb.fd
  %i.awx = load i32, ptr @_ZZ7gmx_rmsiPPcE4freq, align 4, !tbaa !10
  store i32 %i.awx, ptr @_ZZ7gmx_rmsiPPcE5freq2, align 4, !tbaa !10
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gi, %bb.gj
  %.21426 = phi ptr [ %.11425, %bb.gi ], [ %.11428, %bb.gj ] ; 12 uses
  %.41407 = phi ptr [ %.31406, %bb.gi ], [ %.4, %bb.gj ] ; 2 uses
  %.2 = phi i32 [ %.1666, %bb.gi ], [ %.1673, %bb.gj ] ; 12 uses
  %.214262467 = ptrtoaddr ptr %.21426 to i64
  invoke void @_Z14gmx_rmpbc_doneP9gmx_rmpbc(ptr noundef %.0730)
          to label %bb.gl unwind label %.loopexit.split-lp1458

bb.gl:                                            ; preds = %bb.gk
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.awy = load i32, ptr @_ZZ7gmx_rmsiPPcE4nrms, align 4, !tbaa !10 ; 2 uses
  %i.awz = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %.not1435 = icmp eq i32 %i.awy, 0
  br i1 %.not1435, label %._crit_edge1611, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.axa = sext i32 %i.awy to i64
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %i.axa)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit unwind label %.loopexit.split-lp1448.loopexit.split-lp

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit: ; preds = %bb.gm
  %.pre1984 = load i32, ptr @_ZZ7gmx_rmsiPPcE4nrms, align 4, !tbaa !10
  %i.axb = icmp sgt i32 %.pre1984, 0
  br i1 %i.axb, label %.lr.ph1610, label %._crit_edge1611

._crit_edge1611:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.gl, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit
  br i1 %or.cond17, label %bb.go, label %bb.li

.loopexit1447:                                    ; preds = %.lr.ph1618
  %lpad.loopexit1449 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1448

.loopexit.split-lp1448.loopexit:                  ; preds = %.lr.ph1616
  %lpad.loopexit1452 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1448

.loopexit.split-lp1448.loopexit.split-lp:         ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1025, %._crit_edge1694, %bb.iy, %bb.gw, %bb.gv, %bb.gu, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit983, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit981, %bb.gq, %bb.gp, %bb.gm, %bb.pb, %bb.pa, %bb.oz, %bb.oy, %bb.ox, %bb.ow, %bb.ov, %bb.ou, %bb.ot, %bb.os, %bb.or, %bb.oq, %._crit_edge1729, %._crit_edge1726, %._crit_edge1723, %bb.nk, %bb.nh, %bb.mz, %._crit_edge1714, %bb.mh, %_ZNSt10filesystem7__cxx114pathD2Ev.exit1091, %bb.li, %._crit_edge1702, %bb.jx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1039, %bb.in, %bb.im, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1009
  %lpad.loopexit.split-lp1453 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1448

.lr.ph1610:                                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %indvars.iv1851 = phi i64 [ %indvars.iv.next1852, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ 0, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit ] ; 3 uses
  %i.axc = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %indvars.iv1851
  %i.axd = load ptr, ptr %i.axc, align 8, !tbaa !19 ; 2 uses
  %i.axe = load ptr, ptr %11, align 8, !tbaa !29
  %i.axf = getelementptr inbounds nuw [32 x i8], ptr %i.axe, i64 %indvars.iv1851 ; 2 uses
  %i.axg = getelementptr inbounds nuw i8, ptr %i.axf, i64 8
  %i.axh = load i64, ptr %i.axg, align 8, !tbaa !30
  %i.axi = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.axd) #20
  %i.axj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.axf, i64 noundef 0, i64 noundef %i.axh, ptr noundef nonnull %i.axd, i64 noundef %i.axi)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.gn ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %.lr.ph1610
  %indvars.iv.next1852 = add nuw nsw i64 %indvars.iv1851, 1 ; 2 uses
  %i.axk = load i32, ptr @_ZZ7gmx_rmsiPPcE4nrms, align 4, !tbaa !10
  %i.axl = sext i32 %i.axk to i64
  %i.axm = icmp slt i64 %indvars.iv.next1852, %i.axl
  br i1 %i.axm, label %.lr.ph1610, label %._crit_edge1611, !llvm.loop !81

bb.gn:                                            ; preds = %.lr.ph1610
  %i.axn = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1448

bb.go:                                            ; preds = %._crit_edge1611
  %i.axo = load ptr, ptr @stderr, align 8, !tbaa !139
  %fputc = call i32 @fputc(i32 10, ptr %i.axo)    ; 0 uses
  br i1 %.0806, label %bb.gp, label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit979

bb.gp:                                            ; preds = %bb.go
  %i.axp = load ptr, ptr @stderr, align 8, !tbaa !139
  %i.axq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.axp, ptr noundef nonnull @.str.147, ptr noundef %i.ky, i32 noundef %.1673, i32 noundef %.2) #22 ; 0 uses
  %i.axr = sext i32 %.1673 to i64
  %i.axs = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.105, i32 noundef 804, i64 noundef range(i64 -2147483648, 2147483648) %i.axr, i64 noundef 8)
          to label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit979 unwind label %.loopexit.split-lp1448.loopexit.split-lp

_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit979:      ; preds = %bb.gp, %bb.go
  %.01421 = phi ptr [ null, %bb.go ], [ %i.axs, %bb.gp ] ; 7 uses
  br i1 %.0805, label %bb.gq, label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit979._ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit981_crit_edge

_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit979._ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit981_crit_edge: ; preds = %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit979
  %.pre1991 = sext i32 %.1673 to i64
  br label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit981

bb.gq:                                            ; preds = %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit979
  %i.axt = load ptr, ptr @stderr, align 8, !tbaa !139
  %i.axu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.axt, ptr noundef nonnull @.str.149, i32 noundef %.1673, i32 noundef %.2) #22 ; 0 uses
  %i.axv = sext i32 %.1673 to i64                 ; 2 uses
  %i.axw = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.105, i32 noundef 809, i64 noundef range(i64 -2147483648, 2147483648) %i.axv, i64 noundef 8)
          to label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit981 unwind label %.loopexit.split-lp1448.loopexit.split-lp

_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit981:      ; preds = %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit979._ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit981_crit_edge, %bb.gq
  %.pre-phi1992 = phi i64 [ %.pre1991, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit979._ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit981_crit_edge ], [ %i.axv, %bb.gq ] ; 3 uses
  %.01420 = phi ptr [ null, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit979._ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit981_crit_edge ], [ %i.axw, %bb.gq ] ; 4 uses
  %i.axx = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.105, i32 noundef 811, i64 noundef range(i64 -2147483648, 2147483648) %.pre-phi1992, i64 noundef 4)
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit983 unwind label %.loopexit.split-lp1448.loopexit.split-lp ; 29 uses

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit983:       ; preds = %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit981
  %i.axy = sext i32 %.2 to i64                    ; 4 uses
  %i.axz = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.105, i32 noundef 812, i64 noundef range(i64 -2147483648, 2147483648) %i.axy, i64 noundef 4)
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit985 unwind label %.loopexit.split-lp1448.loopexit.split-lp ; 14 uses

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit985:       ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit983
  %. = select i1 %i.asr, float 1.000000e+10, float 0.000000e+00 ; 2 uses
  %i.aya = icmp sgt i32 %.2, 0                    ; 2 uses
  br i1 %i.aya, label %iter.check2484, label %._crit_edge1614

iter.check2484:                                   ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit985
  %i.ayb = ptrtoaddr ptr %i.axz to i64
  %i.ayc = load i32, ptr @_ZZ7gmx_rmsiPPcE5freq2, align 4, !tbaa !10 ; 2 uses
  %i.ayd = sext i32 %i.ayc to i64                 ; 9 uses
  %wide.trip.count1857 = zext nneg i32 %.2 to i64 ; 8 uses
  %min.iters.check2469 = icmp ult i32 %.2, 4
  %ident.check.not = icmp ne i32 %i.ayc, 1
  %or.cond2602.not2605 = select i1 %min.iters.check2469, i1 true, i1 %ident.check.not
  %i.aye = sub i64 %.214262467, %i.ayb
  %diff.check = icmp ugt i64 %i.aye, -128
  %or.cond2603 = select i1 %or.cond2602.not2605, i1 true, i1 %diff.check
  br i1 %or.cond2603, label %vec.epilog.scalar.ph2485.preheader, label %vector.main.loop.iter.check2470

vector.main.loop.iter.check2470:                  ; preds = %iter.check2484
  %min.iters.check2471 = icmp ult i32 %.2, 32
  br i1 %min.iters.check2471, label %vec.epilog.ph2488, label %vector.ph2472

vector.ph2472:                                    ; preds = %vector.main.loop.iter.check2470
  %i.ayf = and i64 %wide.trip.count1857, 28
  %n.vec2473 = and i64 %wide.trip.count1857, 2147483616 ; 4 uses
  br label %vector.body2474

vector.body2474:                                  ; preds = %vector.ph2472, %vector.body2474
  %index2475 = phi i64 [ 0, %vector.ph2472 ], [ %index.next2480, %vector.body2474 ] ; 3 uses
  %i.ayg = getelementptr inbounds [4 x i8], ptr %.21426, i64 %index2475 ; 4 uses
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.ayg, i64 32
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.ayg, i64 64
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.ayg, i64 96
  %wide.load2476 = load <8 x float>, ptr %i.ayg, align 4, !tbaa !18
  %wide.load2477 = load <8 x float>, ptr %i.ayh, align 4, !tbaa !18
  %wide.load2478 = load <8 x float>, ptr %i.ayi, align 4, !tbaa !18
  %wide.load2479 = load <8 x float>, ptr %i.ayj, align 4, !tbaa !18
  %i.ayk = getelementptr inbounds nuw [4 x i8], ptr %i.axz, i64 %index2475 ; 4 uses
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.ayk, i64 32
  %i.aym = getelementptr inbounds nuw i8, ptr %i.ayk, i64 64
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.ayk, i64 96
  store <8 x float> %wide.load2476, ptr %i.ayk, align 4, !tbaa !18
  store <8 x float> %wide.load2477, ptr %i.ayl, align 4, !tbaa !18
  store <8 x float> %wide.load2478, ptr %i.aym, align 4, !tbaa !18
  store <8 x float> %wide.load2479, ptr %i.ayn, align 4, !tbaa !18
  %index.next2480 = add nuw i64 %index2475, 32    ; 2 uses
  %i.ayo = icmp eq i64 %index.next2480, %n.vec2473
  br i1 %i.ayo, label %middle.block2481, label %vector.body2474, !llvm.loop !82

middle.block2481:                                 ; preds = %vector.body2474
  %cmp.n2482 = icmp eq i64 %n.vec2473, %wide.trip.count1857
  br i1 %cmp.n2482, label %._crit_edge1614, label %vec.epilog.iter.check2486

vec.epilog.iter.check2486:                        ; preds = %middle.block2481
  %min.epilog.iters.check2487 = icmp eq i64 %i.ayf, 0
  br i1 %min.epilog.iters.check2487, label %vec.epilog.scalar.ph2485.preheader, label %vec.epilog.ph2488, !prof !165

vec.epilog.ph2488:                                ; preds = %vector.main.loop.iter.check2470, %vec.epilog.iter.check2486
  %vec.epilog.resume.val2483 = phi i64 [ %n.vec2473, %vec.epilog.iter.check2486 ], [ 0, %vector.main.loop.iter.check2470 ]
  %n.vec2489 = and i64 %wide.trip.count1857, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body2490

vec.epilog.vector.body2490:                       ; preds = %vec.epilog.vector.body2490, %vec.epilog.ph2488
  %index2491 = phi i64 [ %vec.epilog.resume.val2483, %vec.epilog.ph2488 ], [ %index.next2493, %vec.epilog.vector.body2490 ] ; 3 uses
  %i.ayp = getelementptr inbounds [4 x i8], ptr %.21426, i64 %index2491
  %wide.load2492 = load <4 x float>, ptr %i.ayp, align 4, !tbaa !18
  %i.ayq = getelementptr inbounds nuw [4 x i8], ptr %i.axz, i64 %index2491
  store <4 x float> %wide.load2492, ptr %i.ayq, align 4, !tbaa !18
  %index.next2493 = add nuw i64 %index2491, 4     ; 2 uses
  %i.ayr = icmp eq i64 %index.next2493, %n.vec2489
  br i1 %i.ayr, label %vec.epilog.middle.block2494, label %vec.epilog.vector.body2490, !llvm.loop !83

vec.epilog.middle.block2494:                      ; preds = %vec.epilog.vector.body2490
  %cmp.n2495 = icmp eq i64 %n.vec2489, %wide.trip.count1857
  br i1 %cmp.n2495, label %._crit_edge1614, label %vec.epilog.scalar.ph2485.preheader

vec.epilog.scalar.ph2485.preheader:               ; preds = %iter.check2484, %vec.epilog.iter.check2486, %vec.epilog.middle.block2494
  %indvars.iv1854.ph = phi i64 [ 0, %iter.check2484 ], [ %n.vec2473, %vec.epilog.iter.check2486 ], [ %n.vec2489, %vec.epilog.middle.block2494 ] ; 4 uses
  %i.ays = sub nsw i64 %wide.trip.count1857, %indvars.iv1854.ph
  %xtraiter2684 = and i64 %i.ays, 7               ; 2 uses
  %lcmp.mod2685.not = icmp eq i64 %xtraiter2684, 0
  br i1 %lcmp.mod2685.not, label %vec.epilog.scalar.ph2485.prol.loopexit, label %vec.epilog.scalar.ph2485.prol

vec.epilog.scalar.ph2485.prol:                    ; preds = %vec.epilog.scalar.ph2485.preheader, %vec.epilog.scalar.ph2485.prol
  %indvars.iv1854.prol = phi i64 [ %indvars.iv.next1855.prol, %vec.epilog.scalar.ph2485.prol ], [ %indvars.iv1854.ph, %vec.epilog.scalar.ph2485.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph2485.prol ], [ 0, %vec.epilog.scalar.ph2485.preheader ]
  %i.ayt = mul nsw i64 %indvars.iv1854.prol, %i.ayd
  %i.ayu = getelementptr inbounds [4 x i8], ptr %.21426, i64 %i.ayt
  %i.ayv = load float, ptr %i.ayu, align 4, !tbaa !18
  %i.ayw = getelementptr inbounds nuw [4 x i8], ptr %i.axz, i64 %indvars.iv1854.prol
  store float %i.ayv, ptr %i.ayw, align 4, !tbaa !18
  %indvars.iv.next1855.prol = add nuw nsw i64 %indvars.iv1854.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter2684
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph2485.prol.loopexit, label %vec.epilog.scalar.ph2485.prol, !llvm.loop !84

vec.epilog.scalar.ph2485.prol.loopexit:           ; preds = %vec.epilog.scalar.ph2485.prol, %vec.epilog.scalar.ph2485.preheader
  %indvars.iv1854.unr = phi i64 [ %indvars.iv1854.ph, %vec.epilog.scalar.ph2485.preheader ], [ %indvars.iv.next1855.prol, %vec.epilog.scalar.ph2485.prol ]
  %i.ayx = sub nsw i64 %indvars.iv1854.ph, %wide.trip.count1857
  %i.ayy = icmp ugt i64 %i.ayx, -8
  br i1 %i.ayy, label %._crit_edge1614, label %vec.epilog.scalar.ph2485

vec.epilog.scalar.ph2485:                         ; preds = %vec.epilog.scalar.ph2485.prol.loopexit, %vec.epilog.scalar.ph2485
  %indvars.iv1854 = phi i64 [ %indvars.iv.next1855.7, %vec.epilog.scalar.ph2485 ], [ %indvars.iv1854.unr, %vec.epilog.scalar.ph2485.prol.loopexit ] ; 10 uses
  %i.ayz = mul nsw i64 %indvars.iv1854, %i.ayd
  %i.aza = getelementptr inbounds [4 x i8], ptr %.21426, i64 %i.ayz
  %i.azb = load float, ptr %i.aza, align 4, !tbaa !18
  %i.azc = getelementptr inbounds nuw [4 x i8], ptr %i.axz, i64 %indvars.iv1854
  store float %i.azb, ptr %i.azc, align 4, !tbaa !18
  %indvars.iv.next1855 = add nuw nsw i64 %indvars.iv1854, 1 ; 2 uses
  %i.azd = mul nsw i64 %indvars.iv.next1855, %i.ayd
  %i.aze = getelementptr inbounds [4 x i8], ptr %.21426, i64 %i.azd
  %i.azf = load float, ptr %i.aze, align 4, !tbaa !18
  %i.azg = getelementptr inbounds nuw [4 x i8], ptr %i.axz, i64 %indvars.iv.next1855
  store float %i.azf, ptr %i.azg, align 4, !tbaa !18
  %indvars.iv.next1855.1 = add nuw nsw i64 %indvars.iv1854, 2 ; 2 uses
  %i.azh = mul nsw i64 %indvars.iv.next1855.1, %i.ayd
  %i.azi = getelementptr inbounds [4 x i8], ptr %.21426, i64 %i.azh
  %i.azj = load float, ptr %i.azi, align 4, !tbaa !18
  %i.azk = getelementptr inbounds nuw [4 x i8], ptr %i.axz, i64 %indvars.iv.next1855.1
  store float %i.azj, ptr %i.azk, align 4, !tbaa !18
  %indvars.iv.next1855.2 = add nuw nsw i64 %indvars.iv1854, 3 ; 2 uses
  %i.azl = mul nsw i64 %indvars.iv.next1855.2, %i.ayd
  %i.azm = getelementptr inbounds [4 x i8], ptr %.21426, i64 %i.azl
  %i.azn = load float, ptr %i.azm, align 4, !tbaa !18
  %i.azo = getelementptr inbounds nuw [4 x i8], ptr %i.axz, i64 %indvars.iv.next1855.2
  store float %i.azn, ptr %i.azo, align 4, !tbaa !18
  %indvars.iv.next1855.3 = add nuw nsw i64 %indvars.iv1854, 4 ; 2 uses
  %i.azp = mul nsw i64 %indvars.iv.next1855.3, %i.ayd
  %i.azq = getelementptr inbounds [4 x i8], ptr %.21426, i64 %i.azp
  %i.azr = load float, ptr %i.azq, align 4, !tbaa !18
  %i.azs = getelementptr inbounds nuw [4 x i8], ptr %i.axz, i64 %indvars.iv.next1855.3
  store float %i.azr, ptr %i.azs, align 4, !tbaa !18
  %indvars.iv.next1855.4 = add nuw nsw i64 %indvars.iv1854, 5 ; 2 uses
  %i.azt = mul nsw i64 %indvars.iv.next1855.4, %i.ayd
  %i.azu = getelementptr inbounds [4 x i8], ptr %.21426, i64 %i.azt
  %i.azv = load float, ptr %i.azu, align 4, !tbaa !18
  %i.azw = getelementptr inbounds nuw [4 x i8], ptr %i.axz, i64 %indvars.iv.next1855.4
  store float %i.azv, ptr %i.azw, align 4, !tbaa !18
  %indvars.iv.next1855.5 = add nuw nsw i64 %indvars.iv1854, 6 ; 2 uses
  %i.azx = mul nsw i64 %indvars.iv.next1855.5, %i.ayd
  %i.azy = getelementptr inbounds [4 x i8], ptr %.21426, i64 %i.azx
  %i.azz = load float, ptr %i.azy, align 4, !tbaa !18
  %i.baa = getelementptr inbounds nuw [4 x i8], ptr %i.axz, i64 %indvars.iv.next1855.5
  store float %i.azz, ptr %i.baa, align 4, !tbaa !18
  %indvars.iv.next1855.6 = add nuw nsw i64 %indvars.iv1854, 7 ; 2 uses
  %i.bab = mul nsw i64 %indvars.iv.next1855.6, %i.ayd
  %i.bac = getelementptr inbounds [4 x i8], ptr %.21426, i64 %i.bab
  %i.bad = load float, ptr %i.bac, align 4, !tbaa !18
  %i.bae = getelementptr inbounds nuw [4 x i8], ptr %i.axz, i64 %indvars.iv.next1855.6
  store float %i.bad, ptr %i.bae, align 4, !tbaa !18
  %indvars.iv.next1855.7 = add nuw nsw i64 %indvars.iv1854, 8 ; 2 uses
  %exitcond1858.not.7 = icmp eq i64 %indvars.iv.next1855.7, %wide.trip.count1857
  br i1 %exitcond1858.not.7, label %._crit_edge1614, label %vec.epilog.scalar.ph2485, !llvm.loop !85

._crit_edge1614:                                  ; preds = %vec.epilog.scalar.ph2485.prol.loopexit, %vec.epilog.scalar.ph2485, %middle.block2481, %vec.epilog.middle.block2494, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit985
  br i1 %i.gc, label %bb.gr, label %.loopexit1446

bb.gr:                                            ; preds = %._crit_edge1614
  %i.baf = load i8, ptr @_ZZ7gmx_rmsiPPcE9bDeltaLog, align 1, !tbaa !140, !range !141, !noundef !142
  %i.bag = trunc nuw i8 %i.baf to i1
  br i1 %i.bag, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.bah = sitofp i32 %.1673 to double
  %i.bai = fmul nnan double %i.bah, 5.000000e-01
  %i.baj = call double @log(double noundef %i.bai) #20
  %i.bak = fmul double %i.baj, f0x4027154760000000
  %i.bal = call double @llvm.rint.f64(double %i.bak)
  %i.bam = fptosi double %i.bal to i32
  %i.ban = add nsw i32 %i.bam, 1
  br label %bb.gu

bb.gt:                                            ; preds = %bb.gr
  %i.bao = sdiv i32 %.1673, 2
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  %.0750 = phi float [ f0x4138AA3B, %bb.gs ], [ 0.000000e+00, %bb.gt ] ; 3 uses
  %.0747 = phi i32 [ %i.ban, %bb.gs ], [ %i.bao, %bb.gt ] ; 6 uses
  %i.bap = load float, ptr @_ZZ7gmx_rmsiPPcE10delta_maxy, align 4, !tbaa !18
  %i.baq = fdiv float 1.000000e+00, %i.bap        ; 3 uses
  %i.bar = sext i32 %.0747 to i64
  %i.bas = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.105, i32 noundef 841, i64 noundef range(i64 -2147483648, 2147483648) %i.bar, i64 noundef 8)
          to label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit987.preheader unwind label %.loopexit.split-lp1448.loopexit.split-lp ; 4 uses

_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit987.preheader: ; preds = %bb.gu
  %i.bat = icmp sgt i32 %.0747, 0
  br i1 %i.bat, label %.lr.ph1616.preheader, label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit987._crit_edge

.lr.ph1616.preheader:                             ; preds = %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit987.preheader
  %wide.trip.count1862 = zext nneg i32 %.0747 to i64
  br label %.lr.ph1616

end_hunk_0
begin_hunk_1_@_Z7gmx_rmsiPPc:bb.a
  %.fr1732 = freeze i8 %i.bns
  %i.bnt = trunc i8 %.fr1732 to i1
  %i.bnu = zext nneg i32 %i.bnr to i64            ; 2 uses
  %wide.trip.count1928 = zext nneg i32 %i.bnq to i64
  %wide.trip.count1916 = zext nneg i32 %.1673 to i64
  %wide.trip.count1923 = zext nneg i32 %.1673 to i64
  br label %.lr.ph1686

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1023.loopexit: ; preds = %bb.je, %bb.jb
  %indvars.iv.next1910 = add nuw nsw i64 %indvars.iv1909, 1
  %exitcond1929.not = icmp eq i64 %indvars.iv.next1926, %wide.trip.count1928
  br i1 %exitcond1929.not, label %.preheader1438, label %.lr.ph1686, !llvm.loop !101

.preheader1438:                                   ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1023.loopexit, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1023.preheader
  %i.bnv = icmp sgt i32 %.1748, 0                 ; 2 uses
  br i1 %i.bnv, label %.lr.ph1693.preheader, label %._crit_edge1694

.lr.ph1693.preheader:                             ; preds = %.preheader1438
  %wide.trip.count1937 = zext nneg i32 %.1748 to i64
  br label %.lr.ph1693

.lr.ph1686:                                       ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1023.loopexit, %.lr.ph1688
  %indvars.iv1925 = phi i64 [ 0, %.lr.ph1688 ], [ %indvars.iv.next1926, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1023.loopexit ] ; 5 uses
  %indvars.iv1909 = phi i64 [ 1, %.lr.ph1688 ], [ %indvars.iv.next1910, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1023.loopexit ] ; 3 uses
  %indvars.iv.next1926 = add nuw nsw i64 %indvars.iv1925, 1 ; 2 uses
  br i1 %i.bnt, label %.lr.ph1686.split.us, label %.lr.ph1686.split

.lr.ph1686.split.us:                              ; preds = %.lr.ph1686, %bb.jb
  %indvars.iv1918 = phi i64 [ %indvars.iv.next1919, %bb.jb ], [ %indvars.iv1909, %.lr.ph1686 ] ; 3 uses
  %i.bnw = sub nuw nsw i64 %indvars.iv1918, %indvars.iv1925 ; 2 uses
  %i.bnx = icmp samesign ult i64 %i.bnw, %i.bnu
  br i1 %i.bnx, label %bb.iz, label %bb.jb

bb.iz:                                            ; preds = %.lr.ph1686.split.us
  %i.bny = trunc nuw nsw i64 %i.bnw to i32
  %i.bnz = uitofp nneg i32 %i.bny to float
  %i.boa = call noundef float @logf(float noundef %i.bnz) #20
  %i.bob = fmul float %.1751, %i.boa
  %i.boc = call float @llvm.rint.f32(float %i.bob)
  %i.bod = fptosi float %i.boc to i32
  %i.boe = getelementptr inbounds nuw [8 x i8], ptr %.11422, i64 %indvars.iv1918
  %i.bof = load ptr, ptr %i.boe, align 8, !tbaa !167
  %i.bog = getelementptr inbounds nuw [4 x i8], ptr %i.bof, i64 %indvars.iv1925 ; 2 uses
  %i.boh = load float, ptr %i.bog, align 4, !tbaa !18
  %i.boi = sext i32 %i.bod to i64                 ; 2 uses
  %i.boj = getelementptr inbounds [4 x i8], ptr %i.bno, i64 %i.boi ; 2 uses
  %i.bok = load float, ptr %i.boj, align 4, !tbaa !18
  %i.bol = fadd float %i.bok, 1.000000e+00
  store float %i.bol, ptr %i.boj, align 4, !tbaa !18
  %i.bom = load float, ptr %i.bog, align 4, !tbaa !18 ; 2 uses
  %i.bon = fcmp ult float %i.bom, 0.000000e+00
  %i.boo = load float, ptr @_ZZ7gmx_rmsiPPcE10delta_maxy, align 4
  %i.bop = fcmp ugt float %i.bom, %i.boo
  %or.cond946.us = select i1 %i.bon, i1 true, i1 %i.bop
  br i1 %or.cond946.us, label %bb.jb, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.boq = fmul float %.0749, %i.boh
  %i.bor = fmul float %i.boq, 1.000000e+02
  %i.bos = call float @llvm.rint.f32(float %i.bor)
  %i.bot = fptosi float %i.bos to i32
  %i.bou = getelementptr inbounds [8 x i8], ptr %.01418, i64 %i.boi
  %i.bov = load ptr, ptr %i.bou, align 8, !tbaa !167
  %i.bow = sext i32 %i.bot to i64
  %i.box = getelementptr inbounds [4 x i8], ptr %i.bov, i64 %i.bow ; 2 uses
  %i.boy = load float, ptr %i.box, align 4, !tbaa !18
  %i.boz = fadd float %i.boy, 1.000000e+00
  store float %i.boz, ptr %i.box, align 4, !tbaa !18
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.iz, %.lr.ph1686.split.us
  %indvars.iv.next1919 = add nuw nsw i64 %indvars.iv1918, 1 ; 2 uses
  %exitcond1924.not = icmp eq i64 %indvars.iv.next1919, %wide.trip.count1923
  br i1 %exitcond1924.not, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1023.loopexit, label %.lr.ph1686.split.us, !llvm.loop !102

.lr.ph1686.split:                                 ; preds = %.lr.ph1686, %bb.je
  %indvars.iv1911 = phi i64 [ %indvars.iv.next1912, %bb.je ], [ %indvars.iv1909, %.lr.ph1686 ] ; 3 uses
  %i.bpa = sub nuw nsw i64 %indvars.iv1911, %indvars.iv1925 ; 3 uses
  %i.bpb = icmp samesign ult i64 %i.bpa, %i.bnu
  br i1 %i.bpb, label %bb.jc, label %bb.je

bb.jc:                                            ; preds = %.lr.ph1686.split
  %i.bpc = getelementptr inbounds nuw [8 x i8], ptr %.11422, i64 %indvars.iv1911
  %i.bpd = load ptr, ptr %i.bpc, align 8, !tbaa !167
  %i.bpe = getelementptr inbounds nuw [4 x i8], ptr %i.bpd, i64 %indvars.iv1925 ; 2 uses
  %i.bpf = load float, ptr %i.bpe, align 4, !tbaa !18
  %i.bpg = getelementptr inbounds nuw [4 x i8], ptr %i.bno, i64 %i.bpa ; 2 uses
  %i.bph = load float, ptr %i.bpg, align 4, !tbaa !18
  %i.bpi = fadd float %i.bph, 1.000000e+00
  store float %i.bpi, ptr %i.bpg, align 4, !tbaa !18
  %i.bpj = load float, ptr %i.bpe, align 4, !tbaa !18 ; 2 uses
  %i.bpk = fcmp ult float %i.bpj, 0.000000e+00
  %i.bpl = load float, ptr @_ZZ7gmx_rmsiPPcE10delta_maxy, align 4
  %i.bpm = fcmp ugt float %i.bpj, %i.bpl
  %or.cond946 = select i1 %i.bpk, i1 true, i1 %i.bpm
  br i1 %or.cond946, label %bb.je, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.bpn = fmul float %.0749, %i.bpf
  %i.bpo = fmul float %i.bpn, 1.000000e+02
  %i.bpp = call float @llvm.rint.f32(float %i.bpo)
  %i.bpq = fptosi float %i.bpp to i32
  %i.bpr = getelementptr inbounds nuw [8 x i8], ptr %.01418, i64 %i.bpa
  %i.bps = load ptr, ptr %i.bpr, align 8, !tbaa !167
  %i.bpt = sext i32 %i.bpq to i64
  %i.bpu = getelementptr inbounds [4 x i8], ptr %i.bps, i64 %i.bpt ; 2 uses
  %i.bpv = load float, ptr %i.bpu, align 4, !tbaa !18
  %i.bpw = fadd float %i.bpv, 1.000000e+00
  store float %i.bpw, ptr %i.bpu, align 4, !tbaa !18
  br label %bb.je

bb.je:                                            ; preds = %.lr.ph1686.split, %bb.jd, %bb.jc
  %indvars.iv.next1912 = add nuw nsw i64 %indvars.iv1911, 1 ; 2 uses
  %exitcond1917.not = icmp eq i64 %indvars.iv.next1912, %wide.trip.count1916
  br i1 %exitcond1917.not, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1023.loopexit, label %.lr.ph1686.split, !llvm.loop !102

._crit_edge1694:                                  ; preds = %.loopexit, %.preheader1438
  %.0752.lcssa = phi float [ 0.000000e+00, %.preheader1438 ], [ %.3755, %.loopexit ] ; 2 uses
  %i.bpx = load ptr, ptr @stderr, align 8, !tbaa !139
  %i.bpy = fpext float %.0752.lcssa to double
  %i.bpz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bpx, ptr noundef nonnull @.str.166, double noundef %i.bpy) #22 ; 0 uses
  %i.bqa = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.105, i32 noundef 1066, i64 noundef range(i64 -2147483648, 2147483648) %i.bnn, i64 noundef 4)
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1025 unwind label %.loopexit.split-lp1448.loopexit.split-lp ; 15 uses

.lr.ph1693:                                       ; preds = %.lr.ph1693.preheader, %.loopexit
  %indvars.iv1934 = phi i64 [ 0, %.lr.ph1693.preheader ], [ %indvars.iv.next1935, %.loopexit ] ; 3 uses
  %.07521691 = phi float [ 0.000000e+00, %.lr.ph1693.preheader ], [ %.3755, %.loopexit ] ; 2 uses
  %i.bqb = getelementptr inbounds nuw [4 x i8], ptr %i.bno, i64 %indvars.iv1934 ; 6 uses
  %i.bqc = load float, ptr %i.bqb, align 4, !tbaa !18 ; 2 uses
  %i.bqd = fcmp ogt float %i.bqc, 0.000000e+00
  br i1 %i.bqd, label %bb.jf, label %.loopexit

bb.jf:                                            ; preds = %.lr.ph1693
  %i.bqe = fdiv float 1.000000e+00, %i.bqc
  store float %i.bqe, ptr %i.bqb, align 4, !tbaa !18
  %i.bqf = getelementptr inbounds nuw [8 x i8], ptr %.01418, i64 %indvars.iv1934
  %i.bqg = load ptr, ptr %i.bqf, align 8, !tbaa !167 ; 4 uses
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jh, %bb.jf
  %indvars.iv1930 = phi i64 [ 0, %bb.jf ], [ %indvars.iv.next1931.3, %bb.jh ] ; 6 uses
  %.17531690 = phi float [ %.07521691, %bb.jf ], [ %spec.select947.3, %bb.jh ] ; 2 uses
  %i.bqh = load float, ptr %i.bqb, align 4, !tbaa !18
  %i.bqi = getelementptr inbounds nuw [4 x i8], ptr %i.bqg, i64 %indvars.iv1930 ; 2 uses
  %i.bqj = load float, ptr %i.bqi, align 4, !tbaa !18
  %i.bqk = fmul float %i.bqh, %i.bqj              ; 3 uses
  store float %i.bqk, ptr %i.bqi, align 4, !tbaa !18
  %i.bql = fcmp ogt float %i.bqk, %.17531690
  %spec.select947 = select i1 %i.bql, float %i.bqk, float %.17531690 ; 3 uses
  %exitcond1933.not = icmp eq i64 %indvars.iv1930, 100
  br i1 %exitcond1933.not, label %.loopexit, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.bqm = load float, ptr %i.bqb, align 4, !tbaa !18
  %i.bqn = getelementptr inbounds nuw [4 x i8], ptr %i.bqg, i64 %indvars.iv1930
  %i.bqo = getelementptr inbounds nuw i8, ptr %i.bqn, i64 4 ; 2 uses
  %i.bqp = load float, ptr %i.bqo, align 4, !tbaa !18
  %i.bqq = fmul float %i.bqm, %i.bqp              ; 3 uses
  store float %i.bqq, ptr %i.bqo, align 4, !tbaa !18
  %i.bqr = fcmp ogt float %i.bqq, %spec.select947
  %spec.select947.1 = select i1 %i.bqr, float %i.bqq, float %spec.select947 ; 2 uses
  %i.bqs = load float, ptr %i.bqb, align 4, !tbaa !18
  %i.bqt = getelementptr inbounds nuw [4 x i8], ptr %i.bqg, i64 %indvars.iv1930
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqt, i64 8 ; 2 uses
  %i.bqv = load float, ptr %i.bqu, align 4, !tbaa !18
  %i.bqw = fmul float %i.bqs, %i.bqv              ; 3 uses
  store float %i.bqw, ptr %i.bqu, align 4, !tbaa !18
  %i.bqx = fcmp ogt float %i.bqw, %spec.select947.1
  %spec.select947.2 = select i1 %i.bqx, float %i.bqw, float %spec.select947.1 ; 2 uses
  %i.bqy = load float, ptr %i.bqb, align 4, !tbaa !18
  %i.bqz = getelementptr inbounds nuw [4 x i8], ptr %i.bqg, i64 %indvars.iv1930
  %i.bra = getelementptr inbounds nuw i8, ptr %i.bqz, i64 12 ; 2 uses
  %i.brb = load float, ptr %i.bra, align 4, !tbaa !18
  %i.brc = fmul float %i.bqy, %i.brb              ; 3 uses
  store float %i.brc, ptr %i.bra, align 4, !tbaa !18
  %i.brd = fcmp ogt float %i.brc, %spec.select947.2
  %spec.select947.3 = select i1 %i.brd, float %i.brc, float %spec.select947.2
  %indvars.iv.next1931.3 = add nuw nsw i64 %indvars.iv1930, 4
  br label %bb.jg

.loopexit:                                        ; preds = %bb.jg, %.lr.ph1693
  %.3755 = phi float [ %.07521691, %.lr.ph1693 ], [ %spec.select947, %bb.jg ] ; 2 uses
  %indvars.iv.next1935 = add nuw nsw i64 %indvars.iv1934, 1 ; 2 uses
  %exitcond1938.not = icmp eq i64 %indvars.iv.next1935, %wide.trip.count1937
  br i1 %exitcond1938.not, label %._crit_edge1694, label %.lr.ph1693, !llvm.loop !103

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1025:      ; preds = %._crit_edge1694
  %i.bre = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.105, i32 noundef 1067, i64 noundef 101, i64 noundef 4)
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.preheader unwind label %.loopexit.split-lp1448.loopexit.split-lp ; 21 uses

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.preheader: ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1025
  br i1 %i.bnv, label %iter.check2546, label %vector.memcheck2561

iter.check2546:                                   ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.preheader
  %wide.trip.count1942 = zext nneg i32 %.1748 to i64 ; 9 uses
  %min.iters.check2529 = icmp ult i32 %.1748, 4
  br i1 %min.iters.check2529, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.preheader2607, label %vector.memcheck2518

vector.memcheck2518:                              ; preds = %iter.check2546
  %i.brf = shl nuw nsw i64 %wide.trip.count1942, 2 ; 2 uses
  %scevgep2519 = getelementptr i8, ptr %i.bqa, i64 %i.brf ; 2 uses
  %scevgep2520 = getelementptr i8, ptr %i.axx, i64 4
  %scevgep2521 = getelementptr i8, ptr %i.axx, i64 %i.brf
  %bound02522 = icmp ult ptr %i.bqa, %scevgep2520
  %bound12523 = icmp ult ptr %i.axx, %scevgep2519
  %found.conflict2524 = and i1 %bound02522, %bound12523
  %bound02525 = icmp ult ptr %i.bqa, %scevgep2521
  %bound12526 = icmp ult ptr %i.axx, %scevgep2519
  %found.conflict2527 = and i1 %bound02525, %bound12526
  %conflict.rdx = or i1 %found.conflict2524, %found.conflict2527
  br i1 %conflict.rdx, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.preheader2607, label %vector.main.loop.iter.check2530

vector.main.loop.iter.check2530:                  ; preds = %vector.memcheck2518
  %min.iters.check2531 = icmp ult i32 %.1748, 32
  br i1 %min.iters.check2531, label %vec.epilog.ph2550, label %vector.ph2532

vector.ph2532:                                    ; preds = %vector.main.loop.iter.check2530
  %i.brg = and i64 %wide.trip.count1942, 28
  %n.vec2533 = and i64 %wide.trip.count1942, 2147483616 ; 4 uses
  %i.brh = load float, ptr %i.axx, align 4, !tbaa !18, !alias.scope !186
  %broadcast.splatinsert2540 = insertelement <8 x float> poison, float %i.brh, i64 0
  %broadcast.splat2541 = shufflevector <8 x float> %broadcast.splatinsert2540, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body2534

vector.body2534:                                  ; preds = %vector.ph2532, %vector.body2534
  %index2535 = phi i64 [ 0, %vector.ph2532 ], [ %index.next2542, %vector.body2534 ] ; 3 uses
  %i.bri = getelementptr inbounds nuw [4 x i8], ptr %i.axx, i64 %index2535 ; 4 uses
  %i.brj = getelementptr inbounds nuw i8, ptr %i.bri, i64 32
  %i.brk = getelementptr inbounds nuw i8, ptr %i.bri, i64 64
  %i.brl = getelementptr inbounds nuw i8, ptr %i.bri, i64 96
  %wide.load2536 = load <8 x float>, ptr %i.bri, align 4, !tbaa !18, !alias.scope !187
  %wide.load2537 = load <8 x float>, ptr %i.brj, align 4, !tbaa !18, !alias.scope !187
  %wide.load2538 = load <8 x float>, ptr %i.brk, align 4, !tbaa !18, !alias.scope !187
  %wide.load2539 = load <8 x float>, ptr %i.brl, align 4, !tbaa !18, !alias.scope !187
  %i.brm = fsub <8 x float> %wide.load2536, %broadcast.splat2541
  %i.brn = fsub <8 x float> %wide.load2537, %broadcast.splat2541
  %i.bro = fsub <8 x float> %wide.load2538, %broadcast.splat2541
  %i.brp = fsub <8 x float> %wide.load2539, %broadcast.splat2541
  %i.brq = getelementptr inbounds nuw [4 x i8], ptr %i.bqa, i64 %index2535 ; 4 uses
  %i.brr = getelementptr inbounds nuw i8, ptr %i.brq, i64 32
  %i.brs = getelementptr inbounds nuw i8, ptr %i.brq, i64 64
  %i.brt = getelementptr inbounds nuw i8, ptr %i.brq, i64 96
  store <8 x float> %i.brm, ptr %i.brq, align 4, !tbaa !18, !alias.scope !188, !noalias !189
  store <8 x float> %i.brn, ptr %i.brr, align 4, !tbaa !18, !alias.scope !188, !noalias !189
  store <8 x float> %i.bro, ptr %i.brs, align 4, !tbaa !18, !alias.scope !188, !noalias !189
  store <8 x float> %i.brp, ptr %i.brt, align 4, !tbaa !18, !alias.scope !188, !noalias !189
  %index.next2542 = add nuw i64 %index2535, 32    ; 2 uses
  %i.bru = icmp eq i64 %index.next2542, %n.vec2533
  br i1 %i.bru, label %middle.block2543, label %vector.body2534, !llvm.loop !108

middle.block2543:                                 ; preds = %vector.body2534
  %cmp.n2544 = icmp eq i64 %n.vec2533, %wide.trip.count1942
  br i1 %cmp.n2544, label %vector.memcheck2561, label %vec.epilog.iter.check2548

vec.epilog.iter.check2548:                        ; preds = %middle.block2543
  %min.epilog.iters.check2549 = icmp eq i64 %i.brg, 0
  br i1 %min.epilog.iters.check2549, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.preheader2607, label %vec.epilog.ph2550, !prof !165

vec.epilog.ph2550:                                ; preds = %vector.main.loop.iter.check2530, %vec.epilog.iter.check2548
  %vec.epilog.resume.val2545 = phi i64 [ %n.vec2533, %vec.epilog.iter.check2548 ], [ 0, %vector.main.loop.iter.check2530 ]
  %n.vec2551 = and i64 %wide.trip.count1942, 2147483644 ; 3 uses
  %i.brv = load float, ptr %i.axx, align 4, !tbaa !18, !alias.scope !186
  %broadcast.splatinsert2555 = insertelement <4 x float> poison, float %i.brv, i64 0
  %broadcast.splat2556 = shufflevector <4 x float> %broadcast.splatinsert2555, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body2552

vec.epilog.vector.body2552:                       ; preds = %vec.epilog.vector.body2552, %vec.epilog.ph2550
  %index2553 = phi i64 [ %vec.epilog.resume.val2545, %vec.epilog.ph2550 ], [ %index.next2557, %vec.epilog.vector.body2552 ] ; 3 uses
  %i.brw = getelementptr inbounds nuw [4 x i8], ptr %i.axx, i64 %index2553
  %wide.load2554 = load <4 x float>, ptr %i.brw, align 4, !tbaa !18, !alias.scope !187
  %i.brx = fsub <4 x float> %wide.load2554, %broadcast.splat2556
  %i.bry = getelementptr inbounds nuw [4 x i8], ptr %i.bqa, i64 %index2553
  store <4 x float> %i.brx, ptr %i.bry, align 4, !tbaa !18, !alias.scope !188, !noalias !189
  %index.next2557 = add nuw i64 %index2553, 4     ; 2 uses
  %i.brz = icmp eq i64 %index.next2557, %n.vec2551
  br i1 %i.brz, label %vec.epilog.middle.block2558, label %vec.epilog.vector.body2552, !llvm.loop !109

vec.epilog.middle.block2558:                      ; preds = %vec.epilog.vector.body2552
  %cmp.n2559 = icmp eq i64 %n.vec2551, %wide.trip.count1942
  br i1 %cmp.n2559, label %vector.memcheck2561, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.preheader2607

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.preheader2607: ; preds = %iter.check2546, %vector.memcheck2518, %vec.epilog.iter.check2548, %vec.epilog.middle.block2558
  %indvars.iv1939.ph = phi i64 [ 0, %iter.check2546 ], [ 0, %vector.memcheck2518 ], [ %n.vec2533, %vec.epilog.iter.check2548 ], [ %n.vec2551, %vec.epilog.middle.block2558 ] ; 4 uses
  %i.bsa = sub nsw i64 %wide.trip.count1942, %indvars.iv1939.ph
  %xtraiter2692 = and i64 %i.bsa, 7               ; 2 uses
  %lcmp.mod2693.not = icmp eq i64 %xtraiter2692, 0
  br i1 %lcmp.mod2693.not, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.prol.loopexit, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.prol

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.prol: ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.preheader2607, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.prol
  %indvars.iv1939.prol = phi i64 [ %indvars.iv.next1940.prol, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.prol ], [ %indvars.iv1939.ph, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.preheader2607 ] ; 3 uses
  %prol.iter2694 = phi i64 [ %prol.iter2694.next, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.prol ], [ 0, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.preheader2607 ]
  %i.bsb = getelementptr inbounds nuw [4 x i8], ptr %i.axx, i64 %indvars.iv1939.prol
  %i.bsc = load float, ptr %i.bsb, align 4, !tbaa !18
  %i.bsd = load float, ptr %i.axx, align 4, !tbaa !18
  %i.bse = fsub float %i.bsc, %i.bsd
  %i.bsf = getelementptr inbounds nuw [4 x i8], ptr %i.bqa, i64 %indvars.iv1939.prol
  store float %i.bse, ptr %i.bsf, align 4, !tbaa !18
  %indvars.iv.next1940.prol = add nuw nsw i64 %indvars.iv1939.prol, 1 ; 2 uses
  %prol.iter2694.next = add i64 %prol.iter2694, 1 ; 2 uses
  %prol.iter2694.cmp.not = icmp eq i64 %prol.iter2694.next, %xtraiter2692
  br i1 %prol.iter2694.cmp.not, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.prol.loopexit, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.prol, !llvm.loop !110

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.prol.loopexit: ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.prol, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.preheader2607
  %indvars.iv1939.unr = phi i64 [ %indvars.iv1939.ph, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.preheader2607 ], [ %indvars.iv.next1940.prol, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.prol ]
  %i.bsg = sub nsw i64 %indvars.iv1939.ph, %wide.trip.count1942
  %i.bsh = icmp ugt i64 %i.bsg, -8
  br i1 %i.bsh, label %vector.memcheck2561, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027

vector.memcheck2561:                              ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.prol.loopexit, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.preheader, %vec.epilog.middle.block2558, %middle.block2543
  %scevgep2562 = getelementptr i8, ptr %i.bre, i64 404
  %bound02563 = icmp uge ptr %i.bre, getelementptr inbounds nuw (i8, ptr @_ZZ7gmx_rmsiPPcE10delta_maxy, i64 4)
  %bound12564 = icmp ule ptr %scevgep2562, @_ZZ7gmx_rmsiPPcE10delta_maxy
  %found.conflict2565.not = or i1 %bound02563, %bound12564 ; 2 uses
  br i1 %found.conflict2565.not, label %vector.body2569, label %vec.epilog.scalar.ph2582.prol.preheader

vec.epilog.scalar.ph2582.prol.preheader:          ; preds = %vector.memcheck2561, %vector.body2569
  %indvars.iv1944.ph = phi i64 [ 0, %vector.memcheck2561 ], [ 100, %vector.body2569 ]
  br label %vec.epilog.scalar.ph2582.prol

vec.epilog.scalar.ph2582.prol:                    ; preds = %vec.epilog.scalar.ph2582.prol, %vec.epilog.scalar.ph2582.prol.preheader
  %indvars.iv1944.prol = phi i64 [ %indvars.iv.next1945.prol, %vec.epilog.scalar.ph2582.prol ], [ %indvars.iv1944.ph, %vec.epilog.scalar.ph2582.prol.preheader ] ; 3 uses
  %prol.iter2697 = phi i64 [ %prol.iter2697.next, %vec.epilog.scalar.ph2582.prol ], [ 0, %vec.epilog.scalar.ph2582.prol.preheader ] ; 2 uses
  %i.bsi = load float, ptr @_ZZ7gmx_rmsiPPcE10delta_maxy, align 4, !tbaa !18
  %i.bsj = trunc nuw nsw i64 %indvars.iv1944.prol to i32
  %i.bsk = uitofp nneg i32 %i.bsj to float
  %i.bsl = fmul float %i.bsi, %i.bsk
  %i.bsm = fdiv float %i.bsl, 1.000000e+02
  %i.bsn = getelementptr inbounds nuw [4 x i8], ptr %i.bre, i64 %indvars.iv1944.prol
  store float %i.bsm, ptr %i.bsn, align 4, !tbaa !18
  %indvars.iv.next1945.prol = add nuw nsw i64 %indvars.iv1944.prol, 1 ; 2 uses
  %prol.iter2697.next = add i64 %prol.iter2697, 1
  %prol.iter2697.cmp.not = icmp eq i64 %prol.iter2697, 0
  br i1 %prol.iter2697.cmp.not, label %vec.epilog.scalar.ph2582.prol.loopexit, label %vec.epilog.scalar.ph2582.prol, !llvm.loop !111

vec.epilog.scalar.ph2582.prol.loopexit:           ; preds = %vec.epilog.scalar.ph2582.prol
  br i1 %found.conflict2565.not, label %.loopexit2597, label %vec.epilog.scalar.ph2582

vector.body2569:                                  ; preds = %vector.memcheck2561
  %i.bso = load float, ptr @_ZZ7gmx_rmsiPPcE10delta_maxy, align 4, !tbaa !18, !alias.scope !190
  %broadcast.splatinsert2575 = insertelement <8 x float> poison, float %i.bso, i64 0
  %broadcast.splat2576 = shufflevector <8 x float> %broadcast.splatinsert2575, <8 x float> poison, <8 x i32> zeroinitializer ; 12 uses
  %i.bsp = fmul <8 x float> %broadcast.splat2576, <float 0.000000e+00, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00>
  %i.bsq = fmul <8 x float> %broadcast.splat2576, <float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01>
  %i.bsr = fmul <8 x float> %broadcast.splat2576, <float 1.600000e+01, float 1.700000e+01, float 1.800000e+01, float 1.900000e+01, float 2.000000e+01, float 2.100000e+01, float 2.200000e+01, float 2.300000e+01>
  %i.bss = fmul <8 x float> %broadcast.splat2576, <float 2.400000e+01, float 2.500000e+01, float 2.600000e+01, float 2.700000e+01, float 2.800000e+01, float 2.900000e+01, float 3.000000e+01, float 3.100000e+01>
  %i.bst = fdiv <8 x float> %i.bsp, splat (float 1.000000e+02)
  %i.bsu = fdiv <8 x float> %i.bsq, splat (float 1.000000e+02)
  %i.bsv = fdiv <8 x float> %i.bsr, splat (float 1.000000e+02)
  %i.bsw = fdiv <8 x float> %i.bss, splat (float 1.000000e+02)
  %i.bsx = getelementptr inbounds nuw i8, ptr %i.bre, i64 32
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.bre, i64 64
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.bre, i64 96
  store <8 x float> %i.bst, ptr %i.bre, align 4, !tbaa !18, !alias.scope !191, !noalias !190
  store <8 x float> %i.bsu, ptr %i.bsx, align 4, !tbaa !18, !alias.scope !191, !noalias !190
  store <8 x float> %i.bsv, ptr %i.bsy, align 4, !tbaa !18, !alias.scope !191, !noalias !190
  store <8 x float> %i.bsw, ptr %i.bsz, align 4, !tbaa !18, !alias.scope !191, !noalias !190
  %i.bta = fmul <8 x float> %broadcast.splat2576, <float 3.200000e+01, float 3.300000e+01, float 3.400000e+01, float 3.500000e+01, float 3.600000e+01, float 3.700000e+01, float 3.800000e+01, float 3.900000e+01>
  %i.btb = fmul <8 x float> %broadcast.splat2576, <float 4.000000e+01, float 4.100000e+01, float 4.200000e+01, float 4.300000e+01, float 4.400000e+01, float 4.500000e+01, float 4.600000e+01, float 4.700000e+01>
  %i.btc = fmul <8 x float> %broadcast.splat2576, <float 4.800000e+01, float 4.900000e+01, float 5.000000e+01, float 5.100000e+01, float 5.200000e+01, float 5.300000e+01, float 5.400000e+01, float 5.500000e+01>
  %i.btd = fmul <8 x float> %broadcast.splat2576, <float 5.600000e+01, float 5.700000e+01, float 5.800000e+01, float 5.900000e+01, float 6.000000e+01, float 6.100000e+01, float 6.200000e+01, float 6.300000e+01>
  %i.bte = fdiv <8 x float> %i.bta, splat (float 1.000000e+02)
  %i.btf = fdiv <8 x float> %i.btb, splat (float 1.000000e+02)
  %i.btg = fdiv <8 x float> %i.btc, splat (float 1.000000e+02)
  %i.bth = fdiv <8 x float> %i.btd, splat (float 1.000000e+02)
  %i.bti = getelementptr inbounds nuw i8, ptr %i.bre, i64 128
  %i.btj = getelementptr inbounds nuw i8, ptr %i.bre, i64 160
  %i.btk = getelementptr inbounds nuw i8, ptr %i.bre, i64 192
  %i.btl = getelementptr inbounds nuw i8, ptr %i.bre, i64 224
  store <8 x float> %i.bte, ptr %i.bti, align 4, !tbaa !18, !alias.scope !191, !noalias !190
  store <8 x float> %i.btf, ptr %i.btj, align 4, !tbaa !18, !alias.scope !191, !noalias !190
  store <8 x float> %i.btg, ptr %i.btk, align 4, !tbaa !18, !alias.scope !191, !noalias !190
  store <8 x float> %i.bth, ptr %i.btl, align 4, !tbaa !18, !alias.scope !191, !noalias !190
  %i.btm = fmul <8 x float> %broadcast.splat2576, <float 6.400000e+01, float 6.500000e+01, float 6.600000e+01, float 6.700000e+01, float 6.800000e+01, float 6.900000e+01, float 7.000000e+01, float 7.100000e+01>
  %i.btn = fmul <8 x float> %broadcast.splat2576, <float 7.200000e+01, float 7.300000e+01, float 7.400000e+01, float 7.500000e+01, float 7.600000e+01, float 7.700000e+01, float 7.800000e+01, float 7.900000e+01>
  %i.bto = fmul <8 x float> %broadcast.splat2576, <float 8.000000e+01, float 8.100000e+01, float 8.200000e+01, float 8.300000e+01, float 8.400000e+01, float 8.500000e+01, float 8.600000e+01, float 8.700000e+01>
  %i.btp = fmul <8 x float> %broadcast.splat2576, <float 8.800000e+01, float 8.900000e+01, float 9.000000e+01, float 9.100000e+01, float 9.200000e+01, float 9.300000e+01, float 9.400000e+01, float 9.500000e+01>
  %i.btq = fdiv <8 x float> %i.btm, splat (float 1.000000e+02)
  %i.btr = fdiv <8 x float> %i.btn, splat (float 1.000000e+02)
  %i.bts = fdiv <8 x float> %i.bto, splat (float 1.000000e+02)
  %i.btt = fdiv <8 x float> %i.btp, splat (float 1.000000e+02)
  %i.btu = getelementptr inbounds nuw i8, ptr %i.bre, i64 256
  %i.btv = getelementptr inbounds nuw i8, ptr %i.bre, i64 288
  %i.btw = getelementptr inbounds nuw i8, ptr %i.bre, i64 320
  %i.btx = getelementptr inbounds nuw i8, ptr %i.bre, i64 352
  store <8 x float> %i.btq, ptr %i.btu, align 4, !tbaa !18, !alias.scope !191, !noalias !190
  store <8 x float> %i.btr, ptr %i.btv, align 4, !tbaa !18, !alias.scope !191, !noalias !190
  store <8 x float> %i.bts, ptr %i.btw, align 4, !tbaa !18, !alias.scope !191, !noalias !190
  store <8 x float> %i.btt, ptr %i.btx, align 4, !tbaa !18, !alias.scope !191, !noalias !190
  %i.bty = load float, ptr @_ZZ7gmx_rmsiPPcE10delta_maxy, align 4, !tbaa !18, !alias.scope !190
  %broadcast.splatinsert2591 = insertelement <4 x float> poison, float %i.bty, i64 0
  %broadcast.splat2592 = shufflevector <4 x float> %broadcast.splatinsert2591, <4 x float> poison, <4 x i32> zeroinitializer
  %i.btz = fmul <4 x float> %broadcast.splat2592, <float 9.600000e+01, float 9.700000e+01, float 9.800000e+01, float 9.900000e+01>
  %i.bua = fdiv <4 x float> %i.btz, splat (float 1.000000e+02)
  %i.bub = getelementptr inbounds nuw i8, ptr %i.bre, i64 384
  store <4 x float> %i.bua, ptr %i.bub, align 4, !tbaa !18, !alias.scope !191, !noalias !190
  br label %vec.epilog.scalar.ph2582.prol.preheader

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027:      ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.prol.loopexit, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027
  %indvars.iv1939 = phi i64 [ %indvars.iv.next1940.7, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027 ], [ %indvars.iv1939.unr, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.prol.loopexit ] ; 10 uses
  %i.buc = getelementptr inbounds nuw [4 x i8], ptr %i.axx, i64 %indvars.iv1939
  %i.bud = load float, ptr %i.buc, align 4, !tbaa !18
  %i.bue = load float, ptr %i.axx, align 4, !tbaa !18
  %i.buf = fsub float %i.bud, %i.bue
  %i.bug = getelementptr inbounds nuw [4 x i8], ptr %i.bqa, i64 %indvars.iv1939
  store float %i.buf, ptr %i.bug, align 4, !tbaa !18
  %indvars.iv.next1940 = add nuw nsw i64 %indvars.iv1939, 1 ; 2 uses
  %i.buh = getelementptr inbounds nuw [4 x i8], ptr %i.axx, i64 %indvars.iv.next1940
  %i.bui = load float, ptr %i.buh, align 4, !tbaa !18
  %i.buj = load float, ptr %i.axx, align 4, !tbaa !18
  %i.buk = fsub float %i.bui, %i.buj
  %i.bul = getelementptr inbounds nuw [4 x i8], ptr %i.bqa, i64 %indvars.iv.next1940
end_hunk_1
