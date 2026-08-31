Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/grompp?download=true
inline.NumInlined: 3296
inline.NumDeleted: 1547
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_Z10gmx_gromppiPPc:bb.a
bb.sg:                                            ; preds = %bb.sf
  %i.ccs = icmp slt i32 %i.cbr, 0
  br i1 %i.ccs, label %.noexc.i747.invoke, label %_ZNKSt6vectorI14gmx_cmapdata_tSaIS0_EE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorI14gmx_cmapdata_tSaIS0_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.sg
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ccg, i64 %i.cci)
  %i.cct = add nuw nsw i64 %.sroa.speculated.i.i, %i.ccg
  %i.ccu = call i64 @llvm.umin.i64(i64 %i.cct, i64 384307168202282325) ; 2 uses
  %i.ccv = mul nuw nsw i64 %i.ccu, 24
  %i.ccw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ccv) #33
          to label %.noexc1221 unwind label %.loopexit.split-lp1375.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc1221:                                       ; preds = %_ZNKSt6vectorI14gmx_cmapdata_tSaIS0_EE12_M_check_lenEmPKc.exit.i
  %i.ccx = getelementptr inbounds nuw i8, ptr %i.ccw, i64 %i.ccf ; 2 uses
  %i.ccy = mul nuw nsw i64 %i.cci, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ccx, i8 0, i64 %i.ccy, i1 false)
  %.not10.i.i.i.i = icmp eq ptr %i.ccc, %i.ccb
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI14gmx_cmapdata_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i1218

.lr.ph.i.i.i.i1218:                               ; preds = %.noexc1221, %.lr.ph.i.i.i.i1218
  %.012.i.i.i.i = phi ptr [ %i.cde, %.lr.ph.i.i.i.i1218 ], [ %i.ccw, %.noexc1221 ] ; 3 uses
  %.0911.i.i.i.i = phi ptr [ %i.cdd, %.lr.ph.i.i.i.i1218 ], [ %i.ccc, %.noexc1221 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !508)
  call void @llvm.experimental.noalias.scope.decl(metadata !511)
  %i.ccz = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !412, !alias.scope !511, !noalias !508
  store <2 x ptr> %i.ccz, ptr %.012.i.i.i.i, align 8, !tbaa !412, !alias.scope !508, !noalias !511
  %i.cda = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %i.cdb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16
  %i.cdc = load ptr, ptr %i.cdb, align 8, !tbaa !372, !alias.scope !511, !noalias !508
  store ptr %i.cdc, ptr %i.cda, align 8, !tbaa !372, !alias.scope !508, !noalias !511
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !511, !noalias !508
  %i.cdd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.cde = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %.not.i.i.i.i1219 = icmp eq ptr %i.cdd, %i.ccb
  br i1 %.not.i.i.i.i1219, label %_ZNSt6vectorI14gmx_cmapdata_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i1218, !llvm.loop !513

_ZNSt6vectorI14gmx_cmapdata_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i: ; preds = %.lr.ph.i.i.i.i1218, %.noexc1221
  %.not.i36.i = icmp eq ptr %i.ccc, null
  br i1 %.not.i36.i, label %_ZNSt12_Vector_baseI14gmx_cmapdata_tSaIS0_EE13_M_deallocateEPS0_m.exit37.i, label %bb.sh

bb.sh:                                            ; preds = %_ZNSt6vectorI14gmx_cmapdata_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  %i.cdf = load ptr, ptr %i.ccj, align 8, !tbaa !507
  %i.cdg = ptrtoint ptr %i.cdf to i64
  %i.cdh = sub i64 %i.cdg, %i.cce
  call void @_ZdlPvm(ptr noundef nonnull %i.ccc, i64 noundef %i.cdh) #31
  br label %_ZNSt12_Vector_baseI14gmx_cmapdata_tSaIS0_EE13_M_deallocateEPS0_m.exit37.i

_ZNSt12_Vector_baseI14gmx_cmapdata_tSaIS0_EE13_M_deallocateEPS0_m.exit37.i: ; preds = %bb.sh, %_ZNSt6vectorI14gmx_cmapdata_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  store ptr %i.ccw, ptr %i.cby, align 8, !tbaa !506
  %i.cdi = getelementptr inbounds nuw [24 x i8], ptr %i.ccx, i64 %i.cci
  store ptr %i.cdi, ptr %i.cca, align 8, !tbaa !505
  %i.cdj = getelementptr inbounds nuw [24 x i8], ptr %i.ccw, i64 %i.ccu
  store ptr %i.cdj, ptr %i.ccj, align 8, !tbaa !507
  br label %_ZNSt6vectorI14gmx_cmapdata_tSaIS0_EE6resizeEm.exit.i

bb.si:                                            ; preds = %_ZNRSt8optionalIiE5valueEv.exit
  %i.cdk = icmp ugt i64 %i.ccg, %i.cbz
  br i1 %i.cdk, label %bb.sj, label %_ZNSt6vectorI14gmx_cmapdata_tSaIS0_EE6resizeEm.exit.i

bb.sj:                                            ; preds = %bb.si
  %i.cdl = getelementptr inbounds nuw [24 x i8], ptr %i.ccc, i64 %i.cbz ; 3 uses
  %.not.i.i.i721 = icmp eq ptr %i.ccb, %i.cdl
  br i1 %.not.i.i.i721, label %_ZNSt6vectorI14gmx_cmapdata_tSaIS0_EE6resizeEm.exit.i, label %.lr.ph.i.i.i.i.i722

.lr.ph.i.i.i.i.i722:                              ; preds = %bb.sj, %_ZSt8_DestroyI14gmx_cmapdata_tEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i723 = phi ptr [ %i.cds, %_ZSt8_DestroyI14gmx_cmapdata_tEvPT_.exit.i.i.i.i.i ], [ %i.cdl, %bb.sj ] ; 3 uses
  %i.cdm = load ptr, ptr %.05.i.i.i.i.i723, align 8, !tbaa !371 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i724 = icmp eq ptr %i.cdm, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i724, label %_ZSt8_DestroyI14gmx_cmapdata_tEvPT_.exit.i.i.i.i.i, label %bb.sk

bb.sk:                                            ; preds = %.lr.ph.i.i.i.i.i722
  %i.cdn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i723, i64 16
  %i.cdo = load ptr, ptr %i.cdn, align 8, !tbaa !372
  %i.cdp = ptrtoint ptr %i.cdo to i64
  %i.cdq = ptrtoint ptr %i.cdm to i64
  %i.cdr = sub i64 %i.cdp, %i.cdq
  call void @_ZdlPvm(ptr noundef nonnull %i.cdm, i64 noundef %i.cdr) #31
  br label %_ZSt8_DestroyI14gmx_cmapdata_tEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyI14gmx_cmapdata_tEvPT_.exit.i.i.i.i.i: ; preds = %bb.sk, %.lr.ph.i.i.i.i.i722
  %i.cds = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i723, i64 24 ; 2 uses
  %.not.i.i.i.i.i725 = icmp eq ptr %i.cds, %i.ccb
  br i1 %.not.i.i.i.i.i725, label %_ZSt8_DestroyIP14gmx_cmapdata_tS0_EvT_S2_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i722, !llvm.loop !514

_ZSt8_DestroyIP14gmx_cmapdata_tS0_EvT_S2_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyI14gmx_cmapdata_tEvPT_.exit.i.i.i.i.i
  store ptr %i.cdl, ptr %i.cca, align 8, !tbaa !505
  br label %_ZNSt6vectorI14gmx_cmapdata_tSaIS0_EE6resizeEm.exit.i

_ZNSt6vectorI14gmx_cmapdata_tSaIS0_EE6resizeEm.exit.i: ; preds = %_ZSt27__uninitialized_default_n_aIP14gmx_cmapdata_tmS0_ET_S2_T0_RSaIT1_E.exit.i, %_ZNSt12_Vector_baseI14gmx_cmapdata_tSaIS0_EE13_M_deallocateEPS0_m.exit37.i, %_ZSt8_DestroyIP14gmx_cmapdata_tS0_EvT_S2_RSaIT0_E.exit.i.i.i, %bb.sj, %bb.si
  %i.cdt = icmp sgt i32 %i.cbr, 0
  br i1 %i.cdt, label %.lr.ph.i718, label %_ZL14init_cmap_gridP10gmx_cmap_tii.exit

.lr.ph.i718:                                      ; preds = %_ZNSt6vectorI14gmx_cmapdata_tSaIS0_EE6resizeEm.exit.i
  %factor.op.mul.i = shl i32 %i.cbx, 2
  %.reass.i = mul i32 %factor.op.mul.i, %i.cbx
  %i.cdu = zext nneg i32 %.reass.i to i64         ; 4 uses
  %wide.trip.count.i = zext nneg i32 %i.cbr to i64
  br label %bb.sl

bb.sl:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i, %.lr.ph.i718
  %indvars.iv.i719 = phi i64 [ 0, %.lr.ph.i718 ], [ %indvars.iv.next.i720, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i ] ; 2 uses
  %i.cdv = load ptr, ptr %i.cby, align 8, !tbaa !506
  %i.cdw = getelementptr inbounds nuw [24 x i8], ptr %i.cdv, i64 %indvars.iv.i719 ; 3 uses
  %i.cdx = getelementptr inbounds nuw i8, ptr %i.cdw, i64 8 ; 2 uses
  %i.cdy = load ptr, ptr %i.cdx, align 8, !tbaa !370 ; 2 uses
  %i.cdz = load ptr, ptr %i.cdw, align 8, !tbaa !371 ; 2 uses
  %i.cea = ptrtoint ptr %i.cdy to i64
  %i.ceb = ptrtoint ptr %i.cdz to i64
  %i.cec = sub i64 %i.cea, %i.ceb
  %i.ced = ashr exact i64 %i.cec, 2               ; 3 uses
  %i.cee = icmp ult i64 %i.ced, %i.cdu
  br i1 %i.cee, label %bb.sm, label %bb.sn

bb.sm:                                            ; preds = %bb.sl
  %i.cef = sub nuw nsw i64 %i.cdu, %i.ced
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cdw, i64 noundef %i.cef)
          to label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i unwind label %.loopexit.split-lp1375.loopexit

bb.sn:                                            ; preds = %bb.sl
  %i.ceg = icmp ugt i64 %i.ced, %i.cdu
  br i1 %i.ceg, label %bb.so, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

bb.so:                                            ; preds = %bb.sn
  %i.ceh = getelementptr inbounds nuw [4 x i8], ptr %i.cdz, i64 %i.cdu ; 2 uses
  %.not.i.i11.i = icmp eq ptr %i.cdy, %i.ceh
  br i1 %.not.i.i11.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.so
  store ptr %i.ceh, ptr %i.cdx, align 8, !tbaa !370
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i:             ; preds = %bb.sm, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i, %bb.so, %bb.sn
  %indvars.iv.next.i720 = add nuw nsw i64 %indvars.iv.i719, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i720, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL14init_cmap_gridP10gmx_cmap_tii.exit, label %bb.sl, !llvm.loop !515

_ZL14init_cmap_gridP10gmx_cmap_tii.exit:          ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i, %_ZNSt6vectorI14gmx_cmapdata_tSaIS0_EE6resizeEm.exit.i
  %i.cei = load i8, ptr %i.cbt, align 4, !tbaa !258, !range !45, !noundef !46
  %i.cej = trunc nuw i8 %i.cei to i1
  br i1 %i.cej, label %_ZNRSt8optionalIiE5valueEv.exit729, label %.invoke2205

_ZNRSt8optionalIiE5valueEv.exit729:               ; preds = %_ZL14init_cmap_gridP10gmx_cmap_tii.exit
  %i.cek = load i32, ptr %i.cbs, align 8, !tbaa !23 ; 19 uses
  %i.cel = load i32, ptr %i.cbq, align 8, !tbaa !260 ; 2 uses
  %i.cem = load ptr, ptr %i.cbm, align 8, !tbaa !371 ; 6 uses
  %i.cen = shl i32 %i.cek, 1                      ; 9 uses
  %i.ceo = sext i32 %i.cen to i64                 ; 5 uses
  %i.cep = icmp slt i32 %i.cek, 0
  br i1 %i.cep, label %.noexc.i747.invoke, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i747.invoke:                               ; preds = %_ZNRSt8optionalIiE5valueEv.exit729, %bb.sg
  %i.ceq = phi ptr [ @.str.25, %bb.sg ], [ @.str.8, %_ZNRSt8optionalIiE5valueEv.exit729 ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.ceq) #29
          to label %.noexc.i747.cont unwind label %.loopexit.split-lp1375.loopexit.split-lp.loopexit.split-lp

.noexc.i747.cont:                                 ; preds = %.noexc.i747.invoke
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %_ZNRSt8optionalIiE5valueEv.exit729
  %.not.i.i.i.i.i730 = icmp eq i32 %i.cek, 0      ; 2 uses
  br i1 %.not.i.i.i.i.i730, label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit157.i, label %.noexc127.i

.noexc127.i:                                      ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.cer = shl nuw nsw i64 %i.ceo, 3              ; 8 uses
  %i.ces = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cer) #33
          to label %.noexc749 unwind label %.loopexit.split-lp1375.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc749:                                        ; preds = %.noexc127.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ces, i8 0, i64 %i.cer, i1 false), !tbaa !516
  %i.cet = getelementptr inbounds nuw [8 x i8], ptr %i.ces, i64 %i.ceo ; 4 uses
  %i.ceu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cer) #33
          to label %.noexc136.i unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit223.thread.i ; 5 uses

.noexc136.i:                                      ; preds = %.noexc749
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ceu, i8 0, i64 %i.cer, i1 false), !tbaa !516
  %i.cev = getelementptr inbounds nuw [8 x i8], ptr %i.ceu, i64 %i.ceo ; 3 uses
  %i.cew = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cer) #33
          to label %.noexc146.i unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit221.thread.i ; 4 uses

.noexc146.i:                                      ; preds = %.noexc136.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cew, i8 0, i64 %i.cer, i1 false), !tbaa !516
  %i.cex = getelementptr inbounds nuw [8 x i8], ptr %i.cew, i64 %i.ceo ; 2 uses
  %i.cey = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cer) #33
          to label %.noexc156.i unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit219.thread.i ; 3 uses

.noexc156.i:                                      ; preds = %.noexc146.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cey, i8 0, i64 %i.cer, i1 false), !tbaa !516
  %i.cez = getelementptr inbounds nuw [8 x i8], ptr %i.cey, i64 %i.ceo
  %i.cfa = ptrtoint ptr %i.cez to i64
  br label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit157.i

_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit157.i:       ; preds = %.noexc156.i, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.12256.0329.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.cex, %.noexc156.i ] ; 2 uses
  %.sroa.0250.0326.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.cew, %.noexc156.i ] ; 15 uses
  %.sroa.0270.0289296323.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.ces, %.noexc156.i ] ; 43 uses
  %.sroa.12276.0286299320.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.cet, %.noexc156.i ] ; 3 uses
  %.sroa.0260.0302317.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.ceu, %.noexc156.i ] ; 36 uses
  %.sroa.13.0305314.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.cev, %.noexc156.i ] ; 3 uses
  %.sroa.0241.0.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.cey, %.noexc156.i ] ; 16 uses
  %.sroa.12.0.i = phi i64 [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.cfa, %.noexc156.i ] ; 2 uses
  %i.cfb = shl nuw nsw i32 %i.cek, 2
  %i.cfc = mul nuw nsw i32 %i.cfb, %i.cek         ; 2 uses
  %i.cfd = zext nneg i32 %i.cfc to i64            ; 3 uses
  %.not.i.i.i.i159.i = icmp eq i32 %i.cfc, 0
  br i1 %.not.i.i.i.i159.i, label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit177.i, label %bb.sp

bb.sp:                                            ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit157.i
  %i.cfe = shl nuw nsw i64 %i.cfd, 3              ; 5 uses
  %i.cff = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cfe) #33
          to label %.noexc166.i unwind label %bb.sq ; 4 uses

.noexc166.i:                                      ; preds = %bb.sp
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cff, i8 0, i64 %i.cfe, i1 false), !tbaa !516
  %i.cfg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cfe) #33
          to label %.noexc176.i unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit.i ; 3 uses

.noexc176.i:                                      ; preds = %.noexc166.i
  %i.cfh = getelementptr inbounds nuw [8 x i8], ptr %i.cff, i64 %i.cfd
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cfg, i8 0, i64 %i.cfe, i1 false), !tbaa !516
  %i.cfi = getelementptr inbounds nuw [8 x i8], ptr %i.cfg, i64 %i.cfd
  %i.cfj = ptrtoint ptr %i.cfi to i64
  %i.cfk = ptrtoint ptr %i.cfh to i64
  br label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit177.i

_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit177.i:       ; preds = %.noexc176.i, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit157.i
  %.sroa.11237.0335.i = phi i64 [ 0, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit157.i ], [ %i.cfk, %.noexc176.i ]
  %.sroa.0232.0333.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit157.i ], [ %i.cff, %.noexc176.i ] ; 7 uses
  %.sroa.0226.0.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit157.i ], [ %i.cfg, %.noexc176.i ] ; 7 uses
  %.sroa.11.0.i732 = phi i64 [ 0, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit157.i ], [ %i.cfj, %.noexc176.i ]
  %i.cfl = uitofp nneg i32 %i.cek to double       ; 2 uses
  %i.cfm = fdiv double 3.600000e+02, %i.cfl       ; 32 uses
  %i.cfn = fmul double %i.cfm, %i.cfl
  %i.cfo = fmul double %i.cfn, 5.000000e-01
  %i.cfp = fsub double -1.800000e+02, %i.cfo      ; 4 uses
  %i.cfq = icmp sgt i32 %i.cel, 0
  br i1 %i.cfq, label %.lr.ph400.i, label %._crit_edge401.i

.lr.ph400.i:                                      ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit177.i
  %i.cfr = lshr i32 %i.cek, 1                     ; 3 uses
  %i.cfs = sub nuw nsw i32 %i.cek, %i.cfr         ; 6 uses
  %i.cft = add i32 %i.cen, -1                     ; 2 uses
  %i.cfu = icmp samesign ugt i32 %i.cek, 1        ; 3 uses
  %i.cfv = sext i32 %i.cft to i64                 ; 2 uses
  %wide.trip.count.i.i735 = zext i32 %i.cft to i64 ; 8 uses
  %i.cfw = add i32 %i.cen, -2                     ; 4 uses
  %i.cfx = zext i32 %i.cfw to i64                 ; 4 uses
  %i.cfy = add nuw nsw i32 %i.cfr, %i.cek
  %i.cfz = fmul double %i.cfm, %i.cfm             ; 3 uses
  %i.cga = fneg double %i.cfm                     ; 2 uses
  %i.cgb = getelementptr inbounds [8 x i8], ptr %.sroa.0260.0302317.i, i64 %i.cfv ; 2 uses
  %i.cgc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0260.0302317.i, i64 %wide.trip.count.i.i735 ; 2 uses
  %smax.i = call i32 @llvm.smax.i32(i32 %i.cen, i32 1)
  %i.cgd = zext i32 %i.cen to i64                 ; 4 uses
  %i.cge = zext nneg i32 %i.cfr to i64            ; 4 uses
  %i.cgf = zext nneg i32 %i.cfy to i64            ; 2 uses
  %i.cgg = zext nneg i32 %i.cek to i64
  %wide.trip.count428.i = zext nneg i32 %i.cel to i64
  %wide.trip.count409.i = zext nneg i32 %smax.i to i64 ; 7 uses
  %.reass.i734 = mul i32 %i.cen, %i.cek
  %i.cgh = load ptr, ptr %i.cby, align 8
  br i1 %.not.i.i.i.i.i730, label %._crit_edge401.i, label %.lr.ph.i736.preheader.preheader

.lr.ph.i736.preheader.preheader:                  ; preds = %.lr.ph400.i
  %i.cgi = shl nuw nsw i64 %i.cfx, 3
  %i.cgj = or disjoint i64 %i.cgi, 8              ; 2 uses
  %i.cgk = shl nuw nsw i64 %i.cgd, 3
  %scevgep3054 = getelementptr i8, ptr %.sroa.0260.0302317.i, i64 %i.cgj ; 2 uses
  %xtraiter = and i64 %wide.trip.count409.i, 3    ; 3 uses
  %i.cgl = icmp slt i32 %i.cen, 4
  %unroll_iter = and i64 %wide.trip.count409.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod3203 = icmp ne i64 %xtraiter, 0
  %i.cgm = getelementptr i8, ptr %.sroa.0232.0333.i, i64 %i.cgj
  %xtraiter3204 = and i64 %wide.trip.count.i.i735, 7
  %i.cgn = icmp ult i32 %i.cfw, 7
  %i.cgo = insertelement <2 x double> <double poison, double 6.000000e+00>, double %i.cfm, i64 0 ; 2 uses
  %i.cgp = insertelement <2 x double> <double 6.000000e+00, double poison>, double %i.cfm, i64 1 ; 2 uses
  %min.iters.check2826 = icmp slt i32 %i.cen, 4
  %n.vec2828 = and i64 %wide.trip.count409.i, 2147483644 ; 3 uses
  %broadcast.splatinsert2841 = insertelement <4 x i64> poison, i64 %i.cgd, i64 0
  %broadcast.splat2842 = shufflevector <4 x i64> %broadcast.splatinsert2841, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2843 = insertelement <4 x double> poison, double %i.cfz, i64 0
  %broadcast.splat2844 = shufflevector <4 x double> %broadcast.splatinsert2843, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2845 = insertelement <4 x double> poison, double %i.cfm, i64 0
  %broadcast.splat2846 = shufflevector <4 x double> %broadcast.splatinsert2845, <4 x double> poison, <4 x i32> zeroinitializer
  %cmp.n2863 = icmp eq i64 %n.vec2828, %wide.trip.count409.i
  %xtraiter3206 = and i64 %wide.trip.count.i.i735, 7
  %i.cgq = icmp ult i32 %i.cfw, 7
  %xtraiter3209 = and i64 %wide.trip.count.i.i735, 7
  %i.cgr = icmp ult i32 %i.cfw, 7
  br label %.lr.ph.i736.preheader

.lr.ph.i736.preheader:                            ; preds = %.lr.ph.i736.preheader.preheader, %._crit_edge398.i.loopexit
  %indvars.iv425.i = phi i64 [ %indvars.iv.next426.i, %._crit_edge398.i.loopexit ], [ 0, %.lr.ph.i736.preheader.preheader ] ; 3 uses
  %i.cgs = trunc nuw nsw i64 %indvars.iv425.i to i32
  %i.cgt = mul i32 %.reass.i734, %i.cgs           ; 2 uses
  br label %.lr.ph.i736

.lr.ph.i736:                                      ; preds = %.lr.ph.i736.preheader, %._crit_edge.i740
  %indvars.iv406.i = phi i64 [ %indvars.iv.next407.i, %._crit_edge.i740 ], [ 0, %.lr.ph.i736.preheader ] ; 2 uses
  %i.cgu = trunc nuw nsw i64 %indvars.iv406.i to i32 ; 2 uses
  %i.cgv = add i32 %i.cfs, %i.cgu
  %i.cgw = srem i32 %i.cgv, %i.cek
  %factor.op.mul.reass.i = mul i32 %i.cen, %i.cgu
  %i.cgx = mul nsw i32 %i.cgw, %i.cek
  %i.cgy = add nsw i32 %i.cgx, %i.cgt             ; 5 uses
  %i.cgz = zext i32 %factor.op.mul.reass.i to i64
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0226.0.i, i64 %i.cgz ; 5 uses
  br i1 %i.cgl, label %.epil.preheader, label %.lr.ph.i736.new

.lr.ph.i736.new:                                  ; preds = %.lr.ph.i736, %.lr.ph.i736.new
  %indvars.iv.i737 = phi i64 [ %indvars.iv.next.i738.3, %.lr.ph.i736.new ], [ 0, %.lr.ph.i736 ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i736.new ], [ 0, %.lr.ph.i736 ]
  %i.cha = trunc nuw nsw i64 %indvars.iv.i737 to i32
  %i.chb = add i32 %i.cfs, %i.cha
  %i.chc = srem i32 %i.chb, %i.cek
  %i.chd = add nsw i32 %i.cgy, %i.chc
  %i.che = sext i32 %i.chd to i64
  %i.chf = getelementptr inbounds [4 x i8], ptr %i.cem, i64 %i.che
  %i.chg = load float, ptr %i.chf, align 4, !tbaa !32
  %i.chh = fpext float %i.chg to double
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i737
  store double %i.chh, ptr %gep.i, align 8, !tbaa !516
  %indvars.iv.next.i738 = or disjoint i64 %indvars.iv.i737, 1 ; 2 uses
  %i.chi = trunc nuw nsw i64 %indvars.iv.next.i738 to i32
  %i.chj = add i32 %i.cfs, %i.chi
  %i.chk = srem i32 %i.chj, %i.cek
  %i.chl = add nsw i32 %i.cgy, %i.chk
  %i.chm = sext i32 %i.chl to i64
  %i.chn = getelementptr inbounds [4 x i8], ptr %i.cem, i64 %i.chm
  %i.cho = load float, ptr %i.chn, align 4, !tbaa !32
  %i.chp = fpext float %i.cho to double
  %gep.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i738
  store double %i.chp, ptr %gep.i.1, align 8, !tbaa !516
  %indvars.iv.next.i738.1 = or disjoint i64 %indvars.iv.i737, 2 ; 2 uses
  %i.chq = trunc nuw nsw i64 %indvars.iv.next.i738.1 to i32
  %i.chr = add i32 %i.cfs, %i.chq
  %i.chs = srem i32 %i.chr, %i.cek
  %i.cht = add nsw i32 %i.cgy, %i.chs
  %i.chu = sext i32 %i.cht to i64
  %i.chv = getelementptr inbounds [4 x i8], ptr %i.cem, i64 %i.chu
  %i.chw = load float, ptr %i.chv, align 4, !tbaa !32
  %i.chx = fpext float %i.chw to double
  %gep.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i738.1
  store double %i.chx, ptr %gep.i.2, align 8, !tbaa !516
  %indvars.iv.next.i738.2 = or disjoint i64 %indvars.iv.i737, 3 ; 2 uses
  %i.chy = trunc nuw nsw i64 %indvars.iv.next.i738.2 to i32
  %i.chz = add i32 %i.cfs, %i.chy
  %i.cia = srem i32 %i.chz, %i.cek
  %i.cib = add nsw i32 %i.cgy, %i.cia
  %i.cic = sext i32 %i.cib to i64
  %i.cid = getelementptr inbounds [4 x i8], ptr %i.cem, i64 %i.cic
  %i.cie = load float, ptr %i.cid, align 4, !tbaa !32
  %i.cif = fpext float %i.cie to double
  %gep.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i738.2
  store double %i.cif, ptr %gep.i.3, align 8, !tbaa !516
  %indvars.iv.next.i738.3 = add nuw nsw i64 %indvars.iv.i737, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i740.unr-lcssa, label %.lr.ph.i736.new, !llvm.loop !517

_ZNSt6vectorIdSaIdEED2Ev.exit223.thread.i:        ; preds = %.noexc749
  %i.cig = landingpad { ptr, i32 }
          cleanup
  br label %bb.tb

_ZNSt6vectorIdSaIdEED2Ev.exit221.thread.i:        ; preds = %.noexc136.i
  %i.cih = landingpad { ptr, i32 }
          cleanup
  br label %bb.ta

_ZNSt6vectorIdSaIdEED2Ev.exit219.thread.i:        ; preds = %.noexc146.i
  %i.cii = landingpad { ptr, i32 }
          cleanup
  br label %bb.sz

bb.sq:                                            ; preds = %bb.sp
  %i.cij = landingpad { ptr, i32 }
          cleanup
  br label %bb.sx

_ZNSt6vectorIdSaIdEED2Ev.exit.i:                  ; preds = %.noexc166.i
  %i.cik = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cff, i64 noundef %i.cfe) #31
  br label %bb.sx

._crit_edge.i740.unr-lcssa:                       ; preds = %.lr.ph.i736.new
  br i1 %lcmp.mod.not, label %._crit_edge.i740, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i740.unr-lcssa, %.lr.ph.i736
  %indvars.iv.i737.epil.init = phi i64 [ 0, %.lr.ph.i736 ], [ %indvars.iv.next.i738.3, %._crit_edge.i740.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod3203)
  br label %bb.sr

bb.sr:                                            ; preds = %bb.sr, %.epil.preheader
  %indvars.iv.i737.epil = phi i64 [ %indvars.iv.i737.epil.init, %.epil.preheader ], [ %indvars.iv.next.i738.epil, %bb.sr ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.sr ]
  %i.cil = trunc nuw nsw i64 %indvars.iv.i737.epil to i32
  %i.cim = add i32 %i.cfs, %i.cil
  %i.cin = srem i32 %i.cim, %i.cek
  %i.cio = add nsw i32 %i.cgy, %i.cin
  %i.cip = sext i32 %i.cio to i64
  %i.ciq = getelementptr inbounds [4 x i8], ptr %i.cem, i64 %i.cip
  %i.cir = load float, ptr %i.ciq, align 4, !tbaa !32
  %i.cis = fpext float %i.cir to double
  %gep.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i737.epil
  store double %i.cis, ptr %gep.i.epil, align 8, !tbaa !516
  %indvars.iv.next.i738.epil = add nuw nsw i64 %indvars.iv.i737.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i740, label %bb.sr, !llvm.loop !518

._crit_edge.i740:                                 ; preds = %bb.sr, %._crit_edge.i740.unr-lcssa
  %indvars.iv.next407.i = add nuw nsw i64 %indvars.iv406.i, 1 ; 2 uses
  %exitcond410.not.i = icmp eq i64 %indvars.iv.next407.i, %wide.trip.count409.i
  br i1 %exitcond410.not.i, label %.lr.ph385.i, label %.lr.ph.i736, !llvm.loop !520

.lr.ph385.i:                                      ; preds = %._crit_edge.i740, %_ZL8spline1ddPKdiPdS1_.exit.loopexit.i
  %indvars.iv411.i = phi i64 [ %indvars.iv.next412.i, %_ZL8spline1ddPKdiPdS1_.exit.loopexit.i ], [ 0, %._crit_edge.i740 ] ; 3 uses
  %i.cit = mul i64 %i.cgk, %indvars.iv411.i
  %scevgep3049 = getelementptr i8, ptr %i.cgm, i64 %i.cit
  %i.ciu = mul nuw nsw i64 %indvars.iv411.i, %i.cgd ; 2 uses
  %i.civ = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0226.0.i, i64 %i.ciu ; 4 uses
  %i.ciw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0232.0333.i, i64 %i.ciu ; 13 uses
  store double 0.000000e+00, ptr %i.ciw, align 8, !tbaa !516
  store double 0.000000e+00, ptr %.sroa.0270.0289296323.i, align 8, !tbaa !516
  br i1 %i.cfu, label %.lr.ph.i.i743, label %.lr.ph40.preheader.i.i

.lr.ph.i.i743:                                    ; preds = %.lr.ph385.i, %.lr.ph.i.i743
  %i.cix = phi double [ %i.ckf, %.lr.ph.i.i743 ], [ 0.000000e+00, %.lr.ph385.i ]
  %i.ciy = phi double [ %i.cjr, %.lr.ph.i.i743 ], [ 0.000000e+00, %.lr.ph385.i ]
  %indvars.iv.i.i744 = phi i64 [ %indvars.iv.next.i.i745.1, %.lr.ph.i.i743 ], [ 1, %.lr.ph385.i ] ; 5 uses
  %i.ciz = call double @llvm.fmuladd.f64(double %i.ciy, double 5.000000e-01, double 2.000000e+00) ; 2 uses
  %i.cja = fdiv double -5.000000e-01, %i.ciz      ; 2 uses
  %i.cjb = getelementptr inbounds nuw [8 x i8], ptr %i.ciw, i64 %indvars.iv.i.i744
  store double %i.cja, ptr %i.cjb, align 8, !tbaa !516
  %indvars.iv.next.i.i745 = add nuw nsw i64 %indvars.iv.i.i744, 1 ; 4 uses
  %i.cjc = getelementptr inbounds nuw [8 x i8], ptr %i.civ, i64 %indvars.iv.next.i.i745
  %i.cjd = load double, ptr %i.cjc, align 8, !tbaa !516
  %i.cje = getelementptr inbounds nuw [8 x i8], ptr %i.civ, i64 %indvars.iv.i.i744 ; 2 uses
  %i.cjf = load double, ptr %i.cje, align 8, !tbaa !516
  %i.cjg = call double @llvm.fmuladd.f64(double %i.cjf, double -2.000000e+00, double %i.cjd)
  %i.cjh = getelementptr i8, ptr %i.cje, i64 -8
  %i.cji = load double, ptr %i.cjh, align 8, !tbaa !516
  %i.cjj = fadd double %i.cjg, %i.cji
  %i.cjk = fdiv double %i.cjj, %i.cfm
  %i.cjl = fmul double %i.cjk, 3.000000e+00
  %i.cjm = fdiv double %i.cjl, %i.cfm
  %i.cjn = call double @llvm.fmuladd.f64(double %i.cix, double -5.000000e-01, double %i.cjm)
  %i.cjo = fdiv double %i.cjn, %i.ciz             ; 2 uses
  %i.cjp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0270.0289296323.i, i64 %indvars.iv.i.i744
  store double %i.cjo, ptr %i.cjp, align 8, !tbaa !516
  %i.cjq = call double @llvm.fmuladd.f64(double %i.cja, double 5.000000e-01, double 2.000000e+00) ; 2 uses
  %i.cjr = fdiv double -5.000000e-01, %i.cjq      ; 2 uses
  %i.cjs = getelementptr inbounds nuw [8 x i8], ptr %i.ciw, i64 %indvars.iv.next.i.i745
  store double %i.cjr, ptr %i.cjs, align 8, !tbaa !516
  %indvars.iv.next.i.i745.1 = add nuw nsw i64 %indvars.iv.i.i744, 2 ; 3 uses
  %i.cjt = getelementptr inbounds nuw [8 x i8], ptr %i.civ, i64 %indvars.iv.next.i.i745.1
  %i.cju = load double, ptr %i.cjt, align 8, !tbaa !516
  %i.cjv = getelementptr inbounds nuw [8 x i8], ptr %i.civ, i64 %indvars.iv.next.i.i745 ; 2 uses
  %i.cjw = load double, ptr %i.cjv, align 8, !tbaa !516
  %i.cjx = call double @llvm.fmuladd.f64(double %i.cjw, double -2.000000e+00, double %i.cju)
  %i.cjy = getelementptr i8, ptr %i.cjv, i64 -8
  %i.cjz = load double, ptr %i.cjy, align 8, !tbaa !516
  %i.cka = fadd double %i.cjx, %i.cjz
  %i.ckb = fdiv double %i.cka, %i.cfm
  %i.ckc = fmul double %i.ckb, 3.000000e+00
  %i.ckd = fdiv double %i.ckc, %i.cfm
  %i.cke = call double @llvm.fmuladd.f64(double %i.cjo, double -5.000000e-01, double %i.ckd)
  %i.ckf = fdiv double %i.cke, %i.cjq             ; 2 uses
  %i.ckg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0270.0289296323.i, i64 %indvars.iv.next.i.i745
  store double %i.ckf, ptr %i.ckg, align 8, !tbaa !516
  %exitcond.not.i.i746.1 = icmp eq i64 %indvars.iv.next.i.i745.1, %wide.trip.count.i.i735
  br i1 %exitcond.not.i.i746.1, label %.lr.ph40.preheader.i.i, label %.lr.ph.i.i743, !llvm.loop !521

.lr.ph40.preheader.i.i:                           ; preds = %.lr.ph.i.i743, %.lr.ph385.i
  %.sink434.i = phi i64 [ %i.cfv, %.lr.ph385.i ], [ %wide.trip.count.i.i735, %.lr.ph.i.i743 ]
  %i.ckh = getelementptr inbounds [8 x i8], ptr %i.ciw, i64 %.sink434.i
  store double 0.000000e+00, ptr %i.ckh, align 8, !tbaa !516
  %load_initial = load double, ptr %scevgep3049, align 8
  br label %.lr.ph40.i.i.prol

.lr.ph40.i.i.prol:                                ; preds = %.lr.ph40.i.i.prol, %.lr.ph40.preheader.i.i
  %store_forwarded.prol = phi double [ %load_initial, %.lr.ph40.preheader.i.i ], [ %i.ckm, %.lr.ph40.i.i.prol ]
  %indvars.iv43.i.i.prol = phi i64 [ %i.cfx, %.lr.ph40.preheader.i.i ], [ %indvars.iv.next44.i.i.prol, %.lr.ph40.i.i.prol ] ; 3 uses
  %prol.iter = phi i64 [ 0, %.lr.ph40.preheader.i.i ], [ %prol.iter.next, %.lr.ph40.i.i.prol ]
  %i.cki = getelementptr inbounds nuw [8 x i8], ptr %i.ciw, i64 %indvars.iv43.i.i.prol ; 2 uses
  %i.ckj = load double, ptr %i.cki, align 8, !tbaa !516
  %i.ckk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0270.0289296323.i, i64 %indvars.iv43.i.i.prol
  %i.ckl = load double, ptr %i.ckk, align 8, !tbaa !516
  %i.ckm = call double @llvm.fmuladd.f64(double %i.ckj, double %store_forwarded.prol, double %i.ckl) ; 3 uses
  store double %i.ckm, ptr %i.cki, align 8, !tbaa !516
  %indvars.iv.next44.i.i.prol = add nsw i64 %indvars.iv43.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter3204
end_hunk_0
