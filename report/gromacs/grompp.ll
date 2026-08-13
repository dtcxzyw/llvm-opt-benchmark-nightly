inline.NumInlined: 3296
inline.NumDeleted: 1547
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_Z10gmx_gromppiPPc:bb.a
bb.sm:                                            ; preds = %bb.sl
  %i.cdb = getelementptr inbounds nuw [24 x i8], ptr %i.cbs, i64 %i.cbp ; 3 uses
  %.not.i.i.i722 = icmp eq ptr %i.cbr, %i.cdb
  br i1 %.not.i.i.i722, label %_ZNSt6vectorI14gmx_cmapdata_tSaIS0_EE6resizeEm.exit.i, label %.lr.ph.i.i.i.i.i723

.lr.ph.i.i.i.i.i723:                              ; preds = %bb.sm, %_ZSt8_DestroyI14gmx_cmapdata_tEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i724 = phi ptr [ %i.cdi, %_ZSt8_DestroyI14gmx_cmapdata_tEvPT_.exit.i.i.i.i.i ], [ %i.cdb, %bb.sm ] ; 3 uses
  %i.cdc = load ptr, ptr %.05.i.i.i.i.i724, align 8, !tbaa !371 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i725 = icmp eq ptr %i.cdc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i725, label %_ZSt8_DestroyI14gmx_cmapdata_tEvPT_.exit.i.i.i.i.i, label %bb.sn

bb.sn:                                            ; preds = %.lr.ph.i.i.i.i.i723
  %i.cdd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i724, i64 16
  %i.cde = load ptr, ptr %i.cdd, align 8, !tbaa !372
  %i.cdf = ptrtoint ptr %i.cde to i64
  %i.cdg = ptrtoint ptr %i.cdc to i64
  %i.cdh = sub i64 %i.cdf, %i.cdg
  call void @_ZdlPvm(ptr noundef nonnull %i.cdc, i64 noundef %i.cdh) #31
  br label %_ZSt8_DestroyI14gmx_cmapdata_tEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyI14gmx_cmapdata_tEvPT_.exit.i.i.i.i.i: ; preds = %bb.sn, %.lr.ph.i.i.i.i.i723
  %i.cdi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i724, i64 24 ; 2 uses
  %.not.i.i.i.i.i726 = icmp eq ptr %i.cdi, %i.cbr
  br i1 %.not.i.i.i.i.i726, label %_ZSt8_DestroyIP14gmx_cmapdata_tS0_EvT_S2_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i723, !llvm.loop !514

_ZSt8_DestroyIP14gmx_cmapdata_tS0_EvT_S2_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyI14gmx_cmapdata_tEvPT_.exit.i.i.i.i.i
  store ptr %i.cdb, ptr %i.cbq, align 8, !tbaa !505
  br label %_ZNSt6vectorI14gmx_cmapdata_tSaIS0_EE6resizeEm.exit.i

_ZNSt6vectorI14gmx_cmapdata_tSaIS0_EE6resizeEm.exit.i: ; preds = %_ZSt27__uninitialized_default_n_aIP14gmx_cmapdata_tmS0_ET_S2_T0_RSaIT1_E.exit.i, %_ZNSt12_Vector_baseI14gmx_cmapdata_tSaIS0_EE13_M_deallocateEPS0_m.exit37.i, %_ZSt8_DestroyIP14gmx_cmapdata_tS0_EvT_S2_RSaIT0_E.exit.i.i.i, %bb.sm, %bb.sl
  %i.cdj = icmp sgt i32 %i.cbh, 0
  br i1 %i.cdj, label %.lr.ph.i719, label %_ZL14init_cmap_gridP10gmx_cmap_tii.exit

.lr.ph.i719:                                      ; preds = %_ZNSt6vectorI14gmx_cmapdata_tSaIS0_EE6resizeEm.exit.i
  %factor.op.mul.i = shl i32 %i.cbn, 2
  %.reass.i = mul i32 %factor.op.mul.i, %i.cbn
  %i.cdk = zext nneg i32 %.reass.i to i64         ; 4 uses
  %wide.trip.count.i = zext nneg i32 %i.cbh to i64
  br label %bb.so

bb.so:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i, %.lr.ph.i719
  %indvars.iv.i720 = phi i64 [ 0, %.lr.ph.i719 ], [ %indvars.iv.next.i721, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i ] ; 2 uses
  %i.cdl = load ptr, ptr %i.cbo, align 8, !tbaa !506
  %i.cdm = getelementptr inbounds nuw [24 x i8], ptr %i.cdl, i64 %indvars.iv.i720 ; 3 uses
  %i.cdn = getelementptr inbounds nuw i8, ptr %i.cdm, i64 8 ; 2 uses
  %i.cdo = load ptr, ptr %i.cdn, align 8, !tbaa !370 ; 2 uses
  %i.cdp = load ptr, ptr %i.cdm, align 8, !tbaa !371 ; 2 uses
  %i.cdq = ptrtoint ptr %i.cdo to i64
  %i.cdr = ptrtoint ptr %i.cdp to i64
  %i.cds = sub i64 %i.cdq, %i.cdr
  %i.cdt = ashr exact i64 %i.cds, 2               ; 3 uses
  %i.cdu = icmp ult i64 %i.cdt, %i.cdk
  br i1 %i.cdu, label %bb.sp, label %bb.sq

bb.sp:                                            ; preds = %bb.so
  %i.cdv = sub nuw nsw i64 %i.cdk, %i.cdt
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cdm, i64 noundef %i.cdv)
          to label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i unwind label %.loopexit.split-lp1379.loopexit

bb.sq:                                            ; preds = %bb.so
  %i.cdw = icmp ugt i64 %i.cdt, %i.cdk
  br i1 %i.cdw, label %bb.sr, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

bb.sr:                                            ; preds = %bb.sq
  %i.cdx = getelementptr inbounds nuw [4 x i8], ptr %i.cdp, i64 %i.cdk ; 2 uses
  %.not.i.i11.i = icmp eq ptr %i.cdo, %i.cdx
  br i1 %.not.i.i11.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.sr
  store ptr %i.cdx, ptr %i.cdn, align 8, !tbaa !370
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i:             ; preds = %bb.sp, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i, %bb.sr, %bb.sq
  %indvars.iv.next.i721 = add nuw nsw i64 %indvars.iv.i720, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i721, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL14init_cmap_gridP10gmx_cmap_tii.exit, label %bb.so, !llvm.loop !515

_ZL14init_cmap_gridP10gmx_cmap_tii.exit:          ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i, %_ZNSt6vectorI14gmx_cmapdata_tSaIS0_EE6resizeEm.exit.i
  %i.cdy = load i8, ptr %i.cbj, align 4, !tbaa !258, !range !45, !noundef !46
  %i.cdz = trunc nuw i8 %i.cdy to i1
  br i1 %i.cdz, label %_ZNRSt8optionalIiE5valueEv.exit730, label %.invoke2210

_ZNRSt8optionalIiE5valueEv.exit730:               ; preds = %_ZL14init_cmap_gridP10gmx_cmap_tii.exit
  %i.cea = load i32, ptr %i.cbi, align 8, !tbaa !23 ; 19 uses
  %i.ceb = load i32, ptr %i.cbg, align 8, !tbaa !260 ; 2 uses
  %i.cec = load ptr, ptr %i.cbc, align 8, !tbaa !371 ; 6 uses
  %.val545 = load ptr, ptr %i.cbo, align 8
  %i.ced = shl i32 %i.cea, 1                      ; 9 uses
  %i.cee = sext i32 %i.ced to i64                 ; 5 uses
  %i.cef = icmp slt i32 %i.cea, 0
  br i1 %i.cef, label %.noexc.i749.invoke, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i749.invoke:                               ; preds = %_ZNRSt8optionalIiE5valueEv.exit730, %bb.sj
  %i.ceg = phi ptr [ @.str.25, %bb.sj ], [ @.str.8, %_ZNRSt8optionalIiE5valueEv.exit730 ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.ceg) #29
          to label %.noexc.i749.cont unwind label %.loopexit.split-lp1379.loopexit.split-lp.loopexit.split-lp

.noexc.i749.cont:                                 ; preds = %.noexc.i749.invoke
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %_ZNRSt8optionalIiE5valueEv.exit730
  %.not.i.i.i.i.i731 = icmp eq i32 %i.cea, 0      ; 2 uses
  br i1 %.not.i.i.i.i.i731, label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit157.i, label %.noexc127.i

.noexc127.i:                                      ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ceh = shl nuw nsw i64 %i.cee, 3              ; 8 uses
  %i.cei = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ceh) #33
          to label %.noexc751 unwind label %.loopexit.split-lp1379.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc751:                                        ; preds = %.noexc127.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cei, i8 0, i64 %i.ceh, i1 false), !tbaa !516
  %i.cej = getelementptr inbounds nuw [8 x i8], ptr %i.cei, i64 %i.cee ; 4 uses
  %i.cek = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ceh) #33
          to label %.noexc136.i unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit223.thread.i ; 5 uses

.noexc136.i:                                      ; preds = %.noexc751
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cek, i8 0, i64 %i.ceh, i1 false), !tbaa !516
  %i.cel = getelementptr inbounds nuw [8 x i8], ptr %i.cek, i64 %i.cee ; 3 uses
  %i.cem = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ceh) #33
          to label %.noexc146.i unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit221.thread.i ; 4 uses

.noexc146.i:                                      ; preds = %.noexc136.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cem, i8 0, i64 %i.ceh, i1 false), !tbaa !516
  %i.cen = getelementptr inbounds nuw [8 x i8], ptr %i.cem, i64 %i.cee ; 2 uses
  %i.ceo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ceh) #33
          to label %.noexc156.i unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit219.thread.i ; 3 uses

.noexc156.i:                                      ; preds = %.noexc146.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ceo, i8 0, i64 %i.ceh, i1 false), !tbaa !516
  %i.cep = getelementptr inbounds nuw [8 x i8], ptr %i.ceo, i64 %i.cee
  %i.ceq = ptrtoint ptr %i.cep to i64
  br label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit157.i

_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit157.i:       ; preds = %.noexc156.i, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.025.0104.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.cem, %.noexc156.i ] ; 15 uses
  %.sroa.1231.0101.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.cen, %.noexc156.i ] ; 2 uses
  %.sroa.045.0647198.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.cei, %.noexc156.i ] ; 43 uses
  %.sroa.1251.0617495.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.cej, %.noexc156.i ] ; 3 uses
  %.sroa.13.07792.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.cel, %.noexc156.i ] ; 3 uses
  %.sroa.035.08089.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.cek, %.noexc156.i ] ; 36 uses
  %.sroa.016.0.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.ceo, %.noexc156.i ] ; 16 uses
  %.sroa.12.0.i = phi i64 [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.ceq, %.noexc156.i ] ; 2 uses
  %i.cer = shl nsw i32 %i.cea, 2
  %i.ces = mul nuw nsw i32 %i.cer, %i.cea         ; 2 uses
  %i.cet = zext nneg i32 %i.ces to i64            ; 3 uses
  %.not.i.i.i.i159.i = icmp eq i32 %i.ces, 0
  br i1 %.not.i.i.i.i159.i, label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit177.i, label %bb.ss

bb.ss:                                            ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit157.i
  %i.ceu = shl nuw nsw i64 %i.cet, 3              ; 5 uses
  %i.cev = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ceu) #33
          to label %.noexc166.i unwind label %bb.st ; 4 uses

.noexc166.i:                                      ; preds = %bb.ss
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cev, i8 0, i64 %i.ceu, i1 false), !tbaa !516
  %i.cew = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ceu) #33
          to label %.noexc176.i unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit.i ; 3 uses

.noexc176.i:                                      ; preds = %.noexc166.i
  %i.cex = getelementptr inbounds nuw [8 x i8], ptr %i.cev, i64 %i.cet
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cew, i8 0, i64 %i.ceu, i1 false), !tbaa !516
  %i.cey = getelementptr inbounds nuw [8 x i8], ptr %i.cew, i64 %i.cet
  %i.cez = ptrtoint ptr %i.cey to i64
  %i.cfa = ptrtoint ptr %i.cex to i64
  br label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit177.i

_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit177.i:       ; preds = %.noexc176.i, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit157.i
  %.sroa.1112.0110.i = phi i64 [ 0, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit157.i ], [ %i.cfa, %.noexc176.i ]
  %.sroa.07.0108.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit157.i ], [ %i.cev, %.noexc176.i ] ; 7 uses
  %.sroa.01.0.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit157.i ], [ %i.cew, %.noexc176.i ] ; 7 uses
  %.sroa.11.0.i733 = phi i64 [ 0, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit157.i ], [ %i.cez, %.noexc176.i ]
  %i.cfb = uitofp nneg i32 %i.cea to double       ; 2 uses
  %i.cfc = fdiv double 3.600000e+02, %i.cfb       ; 32 uses
  %i.cfd = fmul double %i.cfc, %i.cfb
  %i.cfe = fmul double %i.cfd, 5.000000e-01
  %i.cff = fsub double -1.800000e+02, %i.cfe      ; 4 uses
  %i.cfg = icmp sgt i32 %i.ceb, 0
  br i1 %i.cfg, label %.lr.ph175.i, label %._crit_edge176.i

.lr.ph175.i:                                      ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit177.i
  %i.cfh = lshr i32 %i.cea, 1                     ; 3 uses
  %i.cfi = sub nsw i32 %i.cea, %i.cfh             ; 6 uses
  %i.cfj = add i32 %i.ced, -1                     ; 2 uses
  %i.cfk = icmp samesign ugt i32 %i.cea, 1        ; 3 uses
  %i.cfl = sext i32 %i.cfj to i64                 ; 2 uses
  %wide.trip.count.i.i736 = zext i32 %i.cfj to i64 ; 8 uses
  %i.cfm = add i32 %i.ced, -2                     ; 4 uses
  %i.cfn = zext i32 %i.cfm to i64                 ; 4 uses
  %i.cfo = add nuw nsw i32 %i.cfh, %i.cea
  %i.cfp = fmul double %i.cfc, %i.cfc             ; 3 uses
  %i.cfq = fneg double %i.cfc                     ; 2 uses
  %i.cfr = getelementptr inbounds [8 x i8], ptr %.sroa.035.08089.i, i64 %i.cfl ; 2 uses
  %i.cfs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.035.08089.i, i64 %wide.trip.count.i.i736 ; 2 uses
  %smax.i = call i32 @llvm.smax.i32(i32 %i.ced, i32 1)
  %i.cft = zext i32 %i.ced to i64                 ; 4 uses
  %i.cfu = zext nneg i32 %i.cfh to i64            ; 4 uses
  %i.cfv = zext nneg i32 %i.cfo to i64            ; 2 uses
  %i.cfw = zext nneg i32 %i.cea to i64
  %wide.trip.count203.i = zext nneg i32 %i.ceb to i64
  %wide.trip.count184.i = zext nneg i32 %smax.i to i64 ; 7 uses
  %.reass.i735 = mul i32 %i.ced, %i.cea
  br i1 %.not.i.i.i.i.i731, label %._crit_edge176.i, label %.lr.ph.i737.preheader.preheader

.lr.ph.i737.preheader.preheader:                  ; preds = %.lr.ph175.i
  %i.cfx = shl nuw nsw i64 %i.cfn, 3
  %i.cfy = or disjoint i64 %i.cfx, 8              ; 2 uses
  %i.cfz = shl nuw nsw i64 %i.cft, 3
  %scevgep3060 = getelementptr i8, ptr %.sroa.035.08089.i, i64 %i.cfy ; 2 uses
  %xtraiter = and i64 %wide.trip.count184.i, 3    ; 3 uses
  %i.cga = icmp slt i32 %i.ced, 4
  %unroll_iter = and i64 %wide.trip.count184.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod3219 = icmp ne i64 %xtraiter, 0
  %i.cgb = getelementptr i8, ptr %.sroa.07.0108.i, i64 %i.cfy
  %xtraiter3220 = and i64 %wide.trip.count.i.i736, 7
  %i.cgc = icmp ult i32 %i.cfm, 7
  %i.cgd = insertelement <2 x double> <double poison, double 6.000000e+00>, double %i.cfc, i64 0 ; 2 uses
  %i.cge = insertelement <2 x double> <double 6.000000e+00, double poison>, double %i.cfc, i64 1 ; 2 uses
  %min.iters.check2832 = icmp slt i32 %i.ced, 4
  %n.vec2834 = and i64 %wide.trip.count184.i, 2147483644 ; 3 uses
  %broadcast.splatinsert2847 = insertelement <4 x i64> poison, i64 %i.cft, i64 0
  %broadcast.splat2848 = shufflevector <4 x i64> %broadcast.splatinsert2847, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2849 = insertelement <4 x double> poison, double %i.cfp, i64 0
  %broadcast.splat2850 = shufflevector <4 x double> %broadcast.splatinsert2849, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2851 = insertelement <4 x double> poison, double %i.cfc, i64 0
  %broadcast.splat2852 = shufflevector <4 x double> %broadcast.splatinsert2851, <4 x double> poison, <4 x i32> zeroinitializer
  %cmp.n2869 = icmp eq i64 %n.vec2834, %wide.trip.count184.i
  %xtraiter3222 = and i64 %wide.trip.count.i.i736, 7
  %i.cgf = icmp ult i32 %i.cfm, 7
  %xtraiter3225 = and i64 %wide.trip.count.i.i736, 7
  %i.cgg = icmp ult i32 %i.cfm, 7
  br label %.lr.ph.i737.preheader

.lr.ph.i737.preheader:                            ; preds = %.lr.ph.i737.preheader.preheader, %._crit_edge173.i.loopexit
  %indvars.iv200.i = phi i64 [ %indvars.iv.next201.i, %._crit_edge173.i.loopexit ], [ 0, %.lr.ph.i737.preheader.preheader ] ; 3 uses
  %i.cgh = trunc nuw nsw i64 %indvars.iv200.i to i32
  %i.cgi = mul i32 %.reass.i735, %i.cgh           ; 2 uses
  br label %.lr.ph.i737

.lr.ph.i737:                                      ; preds = %.lr.ph.i737.preheader, %._crit_edge.i741
  %indvars.iv181.i = phi i64 [ %indvars.iv.next182.i, %._crit_edge.i741 ], [ 0, %.lr.ph.i737.preheader ] ; 2 uses
  %i.cgj = trunc nuw nsw i64 %indvars.iv181.i to i32 ; 2 uses
  %i.cgk = add i32 %i.cfi, %i.cgj
  %i.cgl = srem i32 %i.cgk, %i.cea
  %factor.op.mul.reass.i = mul i32 %i.ced, %i.cgj
  %i.cgm = mul nsw i32 %i.cgl, %i.cea
  %i.cgn = add nsw i32 %i.cgm, %i.cgi             ; 5 uses
  %i.cgo = zext i32 %factor.op.mul.reass.i to i64
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i, i64 %i.cgo ; 5 uses
  br i1 %i.cga, label %.epil.preheader, label %.lr.ph.i737.new

.lr.ph.i737.new:                                  ; preds = %.lr.ph.i737, %.lr.ph.i737.new
  %indvars.iv.i738 = phi i64 [ %indvars.iv.next.i739.3, %.lr.ph.i737.new ], [ 0, %.lr.ph.i737 ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i737.new ], [ 0, %.lr.ph.i737 ]
  %i.cgp = trunc nuw nsw i64 %indvars.iv.i738 to i32
  %i.cgq = add i32 %i.cfi, %i.cgp
  %i.cgr = srem i32 %i.cgq, %i.cea
  %i.cgs = add nsw i32 %i.cgn, %i.cgr
  %i.cgt = sext i32 %i.cgs to i64
  %i.cgu = getelementptr inbounds [4 x i8], ptr %i.cec, i64 %i.cgt
  %i.cgv = load float, ptr %i.cgu, align 4, !tbaa !32
  %i.cgw = fpext float %i.cgv to double
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i738
  store double %i.cgw, ptr %gep.i, align 8, !tbaa !516
  %indvars.iv.next.i739 = or disjoint i64 %indvars.iv.i738, 1 ; 2 uses
  %i.cgx = trunc nuw nsw i64 %indvars.iv.next.i739 to i32
  %i.cgy = add i32 %i.cfi, %i.cgx
  %i.cgz = srem i32 %i.cgy, %i.cea
  %i.cha = add nsw i32 %i.cgn, %i.cgz
  %i.chb = sext i32 %i.cha to i64
  %i.chc = getelementptr inbounds [4 x i8], ptr %i.cec, i64 %i.chb
  %i.chd = load float, ptr %i.chc, align 4, !tbaa !32
  %i.che = fpext float %i.chd to double
  %gep.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i739
  store double %i.che, ptr %gep.i.1, align 8, !tbaa !516
  %indvars.iv.next.i739.1 = or disjoint i64 %indvars.iv.i738, 2 ; 2 uses
  %i.chf = trunc nuw nsw i64 %indvars.iv.next.i739.1 to i32
  %i.chg = add i32 %i.cfi, %i.chf
  %i.chh = srem i32 %i.chg, %i.cea
  %i.chi = add nsw i32 %i.cgn, %i.chh
  %i.chj = sext i32 %i.chi to i64
  %i.chk = getelementptr inbounds [4 x i8], ptr %i.cec, i64 %i.chj
  %i.chl = load float, ptr %i.chk, align 4, !tbaa !32
  %i.chm = fpext float %i.chl to double
  %gep.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i739.1
  store double %i.chm, ptr %gep.i.2, align 8, !tbaa !516
  %indvars.iv.next.i739.2 = or disjoint i64 %indvars.iv.i738, 3 ; 2 uses
  %i.chn = trunc nuw nsw i64 %indvars.iv.next.i739.2 to i32
  %i.cho = add i32 %i.cfi, %i.chn
  %i.chp = srem i32 %i.cho, %i.cea
  %i.chq = add nsw i32 %i.cgn, %i.chp
  %i.chr = sext i32 %i.chq to i64
  %i.chs = getelementptr inbounds [4 x i8], ptr %i.cec, i64 %i.chr
  %i.cht = load float, ptr %i.chs, align 4, !tbaa !32
  %i.chu = fpext float %i.cht to double
  %gep.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i739.2
  store double %i.chu, ptr %gep.i.3, align 8, !tbaa !516
  %indvars.iv.next.i739.3 = add nuw nsw i64 %indvars.iv.i738, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i741.unr-lcssa, label %.lr.ph.i737.new, !llvm.loop !517

_ZNSt6vectorIdSaIdEED2Ev.exit223.thread.i:        ; preds = %.noexc751
  %i.chv = landingpad { ptr, i32 }
          cleanup
  br label %bb.te

_ZNSt6vectorIdSaIdEED2Ev.exit221.thread.i:        ; preds = %.noexc136.i
  %i.chw = landingpad { ptr, i32 }
          cleanup
  br label %bb.td

_ZNSt6vectorIdSaIdEED2Ev.exit219.thread.i:        ; preds = %.noexc146.i
  %i.chx = landingpad { ptr, i32 }
          cleanup
  br label %bb.tc

bb.st:                                            ; preds = %bb.ss
  %i.chy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ta

_ZNSt6vectorIdSaIdEED2Ev.exit.i:                  ; preds = %.noexc166.i
  %i.chz = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cev, i64 noundef %i.ceu) #31
  br label %bb.ta

._crit_edge.i741.unr-lcssa:                       ; preds = %.lr.ph.i737.new
  br i1 %lcmp.mod.not, label %._crit_edge.i741, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i741.unr-lcssa, %.lr.ph.i737
  %indvars.iv.i738.epil.init = phi i64 [ 0, %.lr.ph.i737 ], [ %indvars.iv.next.i739.3, %._crit_edge.i741.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod3219)
  br label %bb.su

bb.su:                                            ; preds = %bb.su, %.epil.preheader
  %indvars.iv.i738.epil = phi i64 [ %indvars.iv.i738.epil.init, %.epil.preheader ], [ %indvars.iv.next.i739.epil, %bb.su ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.su ]
  %i.cia = trunc nuw nsw i64 %indvars.iv.i738.epil to i32
  %i.cib = add i32 %i.cfi, %i.cia
  %i.cic = srem i32 %i.cib, %i.cea
  %i.cid = add nsw i32 %i.cgn, %i.cic
  %i.cie = sext i32 %i.cid to i64
  %i.cif = getelementptr inbounds [4 x i8], ptr %i.cec, i64 %i.cie
  %i.cig = load float, ptr %i.cif, align 4, !tbaa !32
  %i.cih = fpext float %i.cig to double
  %gep.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i738.epil
  store double %i.cih, ptr %gep.i.epil, align 8, !tbaa !516
  %indvars.iv.next.i739.epil = add nuw nsw i64 %indvars.iv.i738.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i741, label %bb.su, !llvm.loop !518

._crit_edge.i741:                                 ; preds = %bb.su, %._crit_edge.i741.unr-lcssa
  %indvars.iv.next182.i = add nuw nsw i64 %indvars.iv181.i, 1 ; 2 uses
  %exitcond185.not.i = icmp eq i64 %indvars.iv.next182.i, %wide.trip.count184.i
  br i1 %exitcond185.not.i, label %.lr.ph160.i, label %.lr.ph.i737, !llvm.loop !520

.lr.ph160.i:                                      ; preds = %._crit_edge.i741, %_ZL8spline1ddPKdiPdS1_.exit.i.loopexit
  %indvars.iv186.i = phi i64 [ %indvars.iv.next187.i, %_ZL8spline1ddPKdiPdS1_.exit.i.loopexit ], [ 0, %._crit_edge.i741 ] ; 3 uses
  %i.cii = mul i64 %i.cfz, %indvars.iv186.i
  %scevgep3055 = getelementptr i8, ptr %i.cgb, i64 %i.cii
  %i.cij = mul nuw nsw i64 %indvars.iv186.i, %i.cft ; 2 uses
  %i.cik = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i, i64 %i.cij ; 4 uses
  %i.cil = getelementptr inbounds nuw [8 x i8], ptr %.sroa.07.0108.i, i64 %i.cij ; 13 uses
  store double 0.000000e+00, ptr %i.cil, align 8, !tbaa !516
  store double 0.000000e+00, ptr %.sroa.045.0647198.i, align 8, !tbaa !516
  br i1 %i.cfk, label %.lr.ph.i.i745, label %.lr.ph40.preheader.i.i

.lr.ph.i.i745:                                    ; preds = %.lr.ph160.i, %.lr.ph.i.i745
  %i.cim = phi double [ %i.cju, %.lr.ph.i.i745 ], [ 0.000000e+00, %.lr.ph160.i ]
  %i.cin = phi double [ %i.cjg, %.lr.ph.i.i745 ], [ 0.000000e+00, %.lr.ph160.i ]
  %indvars.iv.i.i746 = phi i64 [ %indvars.iv.next.i.i747.1, %.lr.ph.i.i745 ], [ 1, %.lr.ph160.i ] ; 5 uses
  %i.cio = call double @llvm.fmuladd.f64(double %i.cin, double 5.000000e-01, double 2.000000e+00) ; 2 uses
  %i.cip = fdiv double -5.000000e-01, %i.cio      ; 2 uses
  %i.ciq = getelementptr inbounds nuw [8 x i8], ptr %i.cil, i64 %indvars.iv.i.i746
  store double %i.cip, ptr %i.ciq, align 8, !tbaa !516
  %indvars.iv.next.i.i747 = add nuw nsw i64 %indvars.iv.i.i746, 1 ; 4 uses
  %i.cir = getelementptr inbounds nuw [8 x i8], ptr %i.cik, i64 %indvars.iv.next.i.i747
  %i.cis = load double, ptr %i.cir, align 8, !tbaa !516
  %i.cit = getelementptr inbounds nuw [8 x i8], ptr %i.cik, i64 %indvars.iv.i.i746 ; 2 uses
  %i.ciu = load double, ptr %i.cit, align 8, !tbaa !516
  %i.civ = call double @llvm.fmuladd.f64(double %i.ciu, double -2.000000e+00, double %i.cis)
  %i.ciw = getelementptr i8, ptr %i.cit, i64 -8
  %i.cix = load double, ptr %i.ciw, align 8, !tbaa !516
  %i.ciy = fadd double %i.civ, %i.cix
  %i.ciz = fdiv double %i.ciy, %i.cfc
  %i.cja = fmul double %i.ciz, 3.000000e+00
  %i.cjb = fdiv double %i.cja, %i.cfc
  %i.cjc = call double @llvm.fmuladd.f64(double %i.cim, double -5.000000e-01, double %i.cjb)
  %i.cjd = fdiv double %i.cjc, %i.cio             ; 2 uses
  %i.cje = getelementptr inbounds nuw [8 x i8], ptr %.sroa.045.0647198.i, i64 %indvars.iv.i.i746
  store double %i.cjd, ptr %i.cje, align 8, !tbaa !516
  %i.cjf = call double @llvm.fmuladd.f64(double %i.cip, double 5.000000e-01, double 2.000000e+00) ; 2 uses
  %i.cjg = fdiv double -5.000000e-01, %i.cjf      ; 2 uses
  %i.cjh = getelementptr inbounds nuw [8 x i8], ptr %i.cil, i64 %indvars.iv.next.i.i747
  store double %i.cjg, ptr %i.cjh, align 8, !tbaa !516
  %indvars.iv.next.i.i747.1 = add nuw nsw i64 %indvars.iv.i.i746, 2 ; 3 uses
  %i.cji = getelementptr inbounds nuw [8 x i8], ptr %i.cik, i64 %indvars.iv.next.i.i747.1
  %i.cjj = load double, ptr %i.cji, align 8, !tbaa !516
  %i.cjk = getelementptr inbounds nuw [8 x i8], ptr %i.cik, i64 %indvars.iv.next.i.i747 ; 2 uses
  %i.cjl = load double, ptr %i.cjk, align 8, !tbaa !516
  %i.cjm = call double @llvm.fmuladd.f64(double %i.cjl, double -2.000000e+00, double %i.cjj)
  %i.cjn = getelementptr i8, ptr %i.cjk, i64 -8
  %i.cjo = load double, ptr %i.cjn, align 8, !tbaa !516
  %i.cjp = fadd double %i.cjm, %i.cjo
  %i.cjq = fdiv double %i.cjp, %i.cfc
  %i.cjr = fmul double %i.cjq, 3.000000e+00
  %i.cjs = fdiv double %i.cjr, %i.cfc
  %i.cjt = call double @llvm.fmuladd.f64(double %i.cjd, double -5.000000e-01, double %i.cjs)
  %i.cju = fdiv double %i.cjt, %i.cjf             ; 2 uses
  %i.cjv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.045.0647198.i, i64 %indvars.iv.next.i.i747
  store double %i.cju, ptr %i.cjv, align 8, !tbaa !516
  %exitcond.not.i.i748.1 = icmp eq i64 %indvars.iv.next.i.i747.1, %wide.trip.count.i.i736
  br i1 %exitcond.not.i.i748.1, label %.lr.ph40.preheader.i.i, label %.lr.ph.i.i745, !llvm.loop !521

.lr.ph40.preheader.i.i:                           ; preds = %.lr.ph.i.i745, %.lr.ph160.i
  %.sink2212 = phi i64 [ %i.cfl, %.lr.ph160.i ], [ %wide.trip.count.i.i736, %.lr.ph.i.i745 ]
  %i.cjw = getelementptr inbounds [8 x i8], ptr %i.cil, i64 %.sink2212
  store double 0.000000e+00, ptr %i.cjw, align 8, !tbaa !516
  %load_initial = load double, ptr %scevgep3055, align 8
  br label %.lr.ph40.i.i.prol

.lr.ph40.i.i.prol:                                ; preds = %.lr.ph40.i.i.prol, %.lr.ph40.preheader.i.i
  %store_forwarded.prol = phi double [ %load_initial, %.lr.ph40.preheader.i.i ], [ %i.ckb, %.lr.ph40.i.i.prol ]
  %indvars.iv43.i.i.prol = phi i64 [ %i.cfn, %.lr.ph40.preheader.i.i ], [ %indvars.iv.next44.i.i.prol, %.lr.ph40.i.i.prol ] ; 3 uses
  %prol.iter = phi i64 [ 0, %.lr.ph40.preheader.i.i ], [ %prol.iter.next, %.lr.ph40.i.i.prol ]
  %i.cjx = getelementptr inbounds nuw [8 x i8], ptr %i.cil, i64 %indvars.iv43.i.i.prol ; 2 uses
  %i.cjy = load double, ptr %i.cjx, align 8, !tbaa !516
  %i.cjz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.045.0647198.i, i64 %indvars.iv43.i.i.prol
  %i.cka = load double, ptr %i.cjz, align 8, !tbaa !516
  %i.ckb = call double @llvm.fmuladd.f64(double %i.cjy, double %store_forwarded.prol, double %i.cka) ; 3 uses
  store double %i.ckb, ptr %i.cjx, align 8, !tbaa !516
  %indvars.iv.next44.i.i.prol = add nsw i64 %indvars.iv43.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter3220
  br i1 %prol.iter.cmp.not, label %.lr.ph40.i.i.prol.loopexit, label %.lr.ph40.i.i.prol, !llvm.loop !522

.lr.ph40.i.i.prol.loopexit:                       ; preds = %.lr.ph40.i.i.prol
  br i1 %i.cgc, label %_ZL8spline1ddPKdiPdS1_.exit.i.loopexit, label %.lr.ph40.i.i
end_hunk_0
