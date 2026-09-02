Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/membed?download=true
inline.NumInlined: 899
inline.NumDeleted: 473
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_Z11init_membedP8_IO_FILEiPK8t_filenmP10gmx_mtop_tP10t_inputrecP7t_stateP9t_commrecPf:bb.a
  %indvars.iv.next305.i.2 = add nuw nsw i64 %indvars.iv304.i, 3 ; 2 uses
  %i.bwa = getelementptr inbounds nuw [12 x i8], ptr %i.bbx, i64 %indvars.iv.next305.i.2 ; 3 uses
  %i.bwb = getelementptr inbounds nuw [12 x i8], ptr %i.bml, i64 %indvars.iv.next305.i.2 ; 3 uses
  %i.bwc = load float, ptr %i.bwa, align 4, !tbaa !20
  store float %i.bwc, ptr %i.bwb, align 4, !tbaa !20
  %i.bwd = getelementptr inbounds nuw i8, ptr %i.bwa, i64 4
  %i.bwe = load float, ptr %i.bwd, align 4, !tbaa !20
  %i.bwf = getelementptr inbounds nuw i8, ptr %i.bwb, i64 4
  store float %i.bwe, ptr %i.bwf, align 4, !tbaa !20
  %i.bwg = getelementptr inbounds nuw i8, ptr %i.bwa, i64 8
  %i.bwh = load float, ptr %i.bwg, align 4, !tbaa !20
  %i.bwi = getelementptr inbounds nuw i8, ptr %i.bwb, i64 8
  store float %i.bwh, ptr %i.bwi, align 4, !tbaa !20
  %indvars.iv.next305.i.3 = add nuw nsw i64 %indvars.iv304.i, 4 ; 2 uses
  %exitcond308.not.i.3 = icmp eq i64 %indvars.iv.next305.i.3, %wide.trip.count307.i
  br i1 %exitcond308.not.i.3, label %._crit_edge262.i, label %.lr.ph261.i, !llvm.loop !168

_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit._crit_edge.i: ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit.i.prol.loopexit, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit.i, %middle.block1480, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit.preheader.i
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.1, i32 noundef 831, ptr noundef %i.bdn)
          to label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.preheader.preheader.i unwind label %bb.np

_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.preheader.preheader.i: ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit._crit_edge.i
  %i.bwj = load ptr, ptr %i.bdo, align 8, !tbaa !36
  %i.bwk = load ptr, ptr %i.bdq, align 8, !tbaa !36
  %i.bwl = icmp eq ptr %i.bwj, %i.bwk
  br i1 %i.bwl, label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.i, label %bb.oq

_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit.i:      ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit.i.prol.loopexit, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit.i
  %indvars.iv309.i = phi i64 [ %indvars.iv.next310.i.3, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit.i ], [ %indvars.iv309.i.unr, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit.i.prol.loopexit ] ; 6 uses
  %i.bwm = getelementptr inbounds nuw [12 x i8], ptr %i.bdn, i64 %indvars.iv309.i ; 3 uses
  %i.bwn = getelementptr inbounds nuw [12 x i8], ptr %i.bmn, i64 %indvars.iv309.i ; 3 uses
  %i.bwo = load float, ptr %i.bwm, align 4, !tbaa !20
  store float %i.bwo, ptr %i.bwn, align 4, !tbaa !20
  %i.bwp = getelementptr inbounds nuw i8, ptr %i.bwm, i64 4
  %i.bwq = load float, ptr %i.bwp, align 4, !tbaa !20
  %i.bwr = getelementptr inbounds nuw i8, ptr %i.bwn, i64 4
  store float %i.bwq, ptr %i.bwr, align 4, !tbaa !20
  %i.bws = getelementptr inbounds nuw i8, ptr %i.bwm, i64 8
  %i.bwt = load float, ptr %i.bws, align 4, !tbaa !20
  %i.bwu = getelementptr inbounds nuw i8, ptr %i.bwn, i64 8
  store float %i.bwt, ptr %i.bwu, align 4, !tbaa !20
  %indvars.iv.next310.i = add nuw nsw i64 %indvars.iv309.i, 1 ; 2 uses
  %i.bwv = getelementptr inbounds nuw [12 x i8], ptr %i.bdn, i64 %indvars.iv.next310.i ; 3 uses
  %i.bww = getelementptr inbounds nuw [12 x i8], ptr %i.bmn, i64 %indvars.iv.next310.i ; 3 uses
  %i.bwx = load float, ptr %i.bwv, align 4, !tbaa !20
  store float %i.bwx, ptr %i.bww, align 4, !tbaa !20
  %i.bwy = getelementptr inbounds nuw i8, ptr %i.bwv, i64 4
  %i.bwz = load float, ptr %i.bwy, align 4, !tbaa !20
  %i.bxa = getelementptr inbounds nuw i8, ptr %i.bww, i64 4
  store float %i.bwz, ptr %i.bxa, align 4, !tbaa !20
  %i.bxb = getelementptr inbounds nuw i8, ptr %i.bwv, i64 8
  %i.bxc = load float, ptr %i.bxb, align 4, !tbaa !20
  %i.bxd = getelementptr inbounds nuw i8, ptr %i.bww, i64 8
  store float %i.bxc, ptr %i.bxd, align 4, !tbaa !20
  %indvars.iv.next310.i.1 = add nuw nsw i64 %indvars.iv309.i, 2 ; 2 uses
  %i.bxe = getelementptr inbounds nuw [12 x i8], ptr %i.bdn, i64 %indvars.iv.next310.i.1 ; 3 uses
  %i.bxf = getelementptr inbounds nuw [12 x i8], ptr %i.bmn, i64 %indvars.iv.next310.i.1 ; 3 uses
  %i.bxg = load float, ptr %i.bxe, align 4, !tbaa !20
  store float %i.bxg, ptr %i.bxf, align 4, !tbaa !20
  %i.bxh = getelementptr inbounds nuw i8, ptr %i.bxe, i64 4
  %i.bxi = load float, ptr %i.bxh, align 4, !tbaa !20
  %i.bxj = getelementptr inbounds nuw i8, ptr %i.bxf, i64 4
  store float %i.bxi, ptr %i.bxj, align 4, !tbaa !20
  %i.bxk = getelementptr inbounds nuw i8, ptr %i.bxe, i64 8
  %i.bxl = load float, ptr %i.bxk, align 4, !tbaa !20
  %i.bxm = getelementptr inbounds nuw i8, ptr %i.bxf, i64 8
  store float %i.bxl, ptr %i.bxm, align 4, !tbaa !20
  %indvars.iv.next310.i.2 = add nuw nsw i64 %indvars.iv309.i, 3 ; 2 uses
  %i.bxn = getelementptr inbounds nuw [12 x i8], ptr %i.bdn, i64 %indvars.iv.next310.i.2 ; 3 uses
  %i.bxo = getelementptr inbounds nuw [12 x i8], ptr %i.bmn, i64 %indvars.iv.next310.i.2 ; 3 uses
  %i.bxp = load float, ptr %i.bxn, align 4, !tbaa !20
  store float %i.bxp, ptr %i.bxo, align 4, !tbaa !20
  %i.bxq = getelementptr inbounds nuw i8, ptr %i.bxn, i64 4
  %i.bxr = load float, ptr %i.bxq, align 4, !tbaa !20
  %i.bxs = getelementptr inbounds nuw i8, ptr %i.bxo, i64 4
  store float %i.bxr, ptr %i.bxs, align 4, !tbaa !20
  %i.bxt = getelementptr inbounds nuw i8, ptr %i.bxn, i64 8
  %i.bxu = load float, ptr %i.bxt, align 4, !tbaa !20
  %i.bxv = getelementptr inbounds nuw i8, ptr %i.bxo, i64 8
  store float %i.bxu, ptr %i.bxv, align 4, !tbaa !20
  %indvars.iv.next310.i.3 = add nuw nsw i64 %indvars.iv309.i, 4 ; 2 uses
  %exitcond313.not.i.3 = icmp eq i64 %indvars.iv.next310.i.3, %wide.trip.count312.i
  br i1 %exitcond313.not.i.3, label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit._crit_edge.i, label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit.i, !llvm.loop !169

bb.oq:                                            ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.preheader.preheader.i
  %i.bxw = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bdo, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.i unwind label %bb.or ; 0 uses

bb.or:                                            ; preds = %bb.pa, %bb.oz, %bb.oy, %bb.ox, %bb.ow, %bb.ov, %bb.ou, %bb.ot, %bb.os, %bb.oq
  %i.bxx = landingpad { ptr, i32 }
          cleanup
  br label %bb.pk

_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.i:   ; preds = %bb.oq, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.preheader.preheader.i
  %i.bxy = load ptr, ptr %i.bem, align 8, !tbaa !36
  %i.bxz = load ptr, ptr %i.beo, align 8, !tbaa !36
  %i.bya = icmp eq ptr %i.bxy, %i.bxz
  br i1 %i.bya, label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.1.i, label %bb.os

bb.os:                                            ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.i
  %i.byb = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.byc = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bem, ptr noundef nonnull align 8 dereferenceable(24) %i.byb)
          to label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.1.i unwind label %bb.or ; 0 uses

_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.1.i: ; preds = %bb.os, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.i
  %i.byd = load ptr, ptr %i.bfj, align 8, !tbaa !36
  %i.bye = load ptr, ptr %i.bfl, align 8, !tbaa !36
  %i.byf = icmp eq ptr %i.byd, %i.bye
  br i1 %i.byf, label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.2.i, label %bb.ot

bb.ot:                                            ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.1.i
  %i.byg = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.byh = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bfj, ptr noundef nonnull align 8 dereferenceable(24) %i.byg)
          to label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.2.i unwind label %bb.or ; 0 uses

_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.2.i: ; preds = %bb.ot, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.1.i
  %i.byi = load ptr, ptr %i.bgg, align 8, !tbaa !36
  %i.byj = load ptr, ptr %i.bgi, align 8, !tbaa !36
  %i.byk = icmp eq ptr %i.byi, %i.byj
  br i1 %i.byk, label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.3.i, label %bb.ou

bb.ou:                                            ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.2.i
  %i.byl = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.bym = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bgg, ptr noundef nonnull align 8 dereferenceable(24) %i.byl)
          to label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.3.i unwind label %bb.or ; 0 uses

_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.3.i: ; preds = %bb.ou, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.2.i
  %i.byn = load ptr, ptr %i.bhd, align 8, !tbaa !36
  %i.byo = load ptr, ptr %i.bhf, align 8, !tbaa !36
  %i.byp = icmp eq ptr %i.byn, %i.byo
  br i1 %i.byp, label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.4.i, label %bb.ov

bb.ov:                                            ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.3.i
  %i.byq = getelementptr inbounds nuw i8, ptr %11, i64 96
  %i.byr = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bhd, ptr noundef nonnull align 8 dereferenceable(24) %i.byq)
          to label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.4.i unwind label %bb.or ; 0 uses

_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.4.i: ; preds = %bb.ov, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.3.i
  %i.bys = load ptr, ptr %i.bia, align 8, !tbaa !36
  %i.byt = load ptr, ptr %i.bic, align 8, !tbaa !36
  %i.byu = icmp eq ptr %i.bys, %i.byt
  br i1 %i.byu, label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.5.i, label %bb.ow

bb.ow:                                            ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.4.i
  %i.byv = getelementptr inbounds nuw i8, ptr %11, i64 120
  %i.byw = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bia, ptr noundef nonnull align 8 dereferenceable(24) %i.byv)
          to label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.5.i unwind label %bb.or ; 0 uses

_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.5.i: ; preds = %bb.ow, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.4.i
  %i.byx = load ptr, ptr %i.bix, align 8, !tbaa !36
  %i.byy = load ptr, ptr %i.biz, align 8, !tbaa !36
  %i.byz = icmp eq ptr %i.byx, %i.byy
  br i1 %i.byz, label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.6.i, label %bb.ox

bb.ox:                                            ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.5.i
  %i.bza = getelementptr inbounds nuw i8, ptr %11, i64 144
  %i.bzb = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bix, ptr noundef nonnull align 8 dereferenceable(24) %i.bza)
          to label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.6.i unwind label %bb.or ; 0 uses

_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.6.i: ; preds = %bb.ox, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.5.i
  %i.bzc = load ptr, ptr %i.bju, align 8, !tbaa !36
  %i.bzd = load ptr, ptr %i.bjw, align 8, !tbaa !36
  %i.bze = icmp eq ptr %i.bzc, %i.bzd
  br i1 %i.bze, label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.7.i, label %bb.oy

bb.oy:                                            ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.6.i
  %i.bzf = getelementptr inbounds nuw i8, ptr %11, i64 168
  %i.bzg = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bju, ptr noundef nonnull align 8 dereferenceable(24) %i.bzf)
          to label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.7.i unwind label %bb.or ; 0 uses

_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.7.i: ; preds = %bb.oy, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.6.i
  %i.bzh = load ptr, ptr %i.bkr, align 8, !tbaa !36
  %i.bzi = load ptr, ptr %i.bkt, align 8, !tbaa !36
  %i.bzj = icmp eq ptr %i.bzh, %i.bzi
  br i1 %i.bzj, label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.8.i, label %bb.oz

bb.oz:                                            ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.7.i
  %i.bzk = getelementptr inbounds nuw i8, ptr %11, i64 192
  %i.bzl = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bkr, ptr noundef nonnull align 8 dereferenceable(24) %i.bzk)
          to label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.8.i unwind label %bb.or ; 0 uses

_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.8.i: ; preds = %bb.oz, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.7.i
  %i.bzm = load ptr, ptr %i.blo, align 8, !tbaa !36
  %i.bzn = load ptr, ptr %i.blq, align 8, !tbaa !36
  %i.bzo = icmp eq ptr %i.bzm, %i.bzn
  br i1 %i.bzo, label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.9.i, label %bb.pa

bb.pa:                                            ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.8.i
  %i.bzp = getelementptr inbounds nuw i8, ptr %11, i64 216
  %i.bzq = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.blo, ptr noundef nonnull align 8 dereferenceable(24) %i.bzp)
          to label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.9.i unwind label %bb.or ; 0 uses

_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.9.i: ; preds = %bb.pa, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.8.i
  %i.bzr = load ptr, ptr %i.aze, align 8, !tbaa !74 ; 2 uses
  %i.bzs = load ptr, ptr %i.yk, align 8, !tbaa !75 ; 2 uses
  %.not274.i = icmp eq ptr %i.bzr, %i.bzs
  br i1 %.not274.i, label %_ZNSt6vectorI14gmx_molblock_tSaIS0_EE6resizeEm.exit.i, label %.lr.ph268.i

._crit_edge269.i:                                 ; preds = %_ZN14gmx_molblock_taSERKS_.exit.i
  %i.bzt = sext i32 %.1158.i to i64               ; 3 uses
  %i.bzu = sub nsw i64 %i.cbl, %i.bzt             ; 2 uses
  %i.bzv = icmp ult i64 %i.cbl, %i.bzt
  br i1 %i.bzv, label %bb.pb, label %bb.pc

bb.pb:                                            ; preds = %._crit_edge269.i
  %i.bzw = sub nsw i64 0, %i.bzt
  invoke void @_ZNSt6vectorI14gmx_molblock_tSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.yk, i64 noundef %i.bzw)
          to label %_ZNSt6vectorI14gmx_molblock_tSaIS0_EE6resizeEm.exit.i unwind label %bb.np

bb.pc:                                            ; preds = %._crit_edge269.i
  %52 = icmp ult i64 %i.bzu, %i.cbl
  br i1 %52, label %bb.pd, label %_ZNSt6vectorI14gmx_molblock_tSaIS0_EE6resizeEm.exit.i

bb.pd:                                            ; preds = %bb.pc
  %i.bzx = getelementptr inbounds nuw [56 x i8], ptr %i.cbf, i64 %i.bzu ; 3 uses
  %.not.i.i185.i = icmp eq ptr %i.cbg, %i.bzx
  br i1 %.not.i.i185.i, label %_ZNSt6vectorI14gmx_molblock_tSaIS0_EE6resizeEm.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.pd, %_ZSt8_DestroyI14gmx_molblock_tEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.cam, %_ZSt8_DestroyI14gmx_molblock_tEvPT_.exit.i.i.i.i.i ], [ %i.bzx, %bb.pd ] ; 5 uses
  %i.bzy = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.bzz = load ptr, ptr %i.bzy, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bzz, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i.i.i.i.i.i.i, label %bb.pe

bb.pe:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.caa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48
  %i.cab = load ptr, ptr %i.caa, align 8, !tbaa !88
  %i.cac = ptrtoint ptr %i.cab to i64
  %i.cad = ptrtoint ptr %i.bzz to i64
  %i.cae = sub i64 %i.cac, %i.cad
  call void @_ZdlPvm(ptr noundef nonnull %i.bzz, i64 noundef %i.cae) #27
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i.i.i.i.i.i.i

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.pe, %.lr.ph.i.i.i.i.i
  %i.caf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.cag = load ptr, ptr %i.caf, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.cag, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i, label %_ZSt8_DestroyI14gmx_molblock_tEvPT_.exit.i.i.i.i.i, label %bb.pf

bb.pf:                                            ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i.i.i.i.i.i.i
  %i.cah = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.cai = load ptr, ptr %i.cah, align 8, !tbaa !88
  %i.caj = ptrtoint ptr %i.cai to i64
  %i.cak = ptrtoint ptr %i.cag to i64
  %i.cal = sub i64 %i.caj, %i.cak
  call void @_ZdlPvm(ptr noundef nonnull %i.cag, i64 noundef %i.cal) #27
  br label %_ZSt8_DestroyI14gmx_molblock_tEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyI14gmx_molblock_tEvPT_.exit.i.i.i.i.i: ; preds = %bb.pf, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i.i.i.i.i.i.i
  %i.cam = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i347 = icmp eq ptr %i.cam, %i.cbg
  br i1 %.not.i.i.i.i.i347, label %_ZSt8_DestroyIP14gmx_molblock_tS0_EvT_S2_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !170

_ZSt8_DestroyIP14gmx_molblock_tS0_EvT_S2_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyI14gmx_molblock_tEvPT_.exit.i.i.i.i.i
  store ptr %i.bzx, ptr %i.aze, align 8, !tbaa !74
  br label %_ZNSt6vectorI14gmx_molblock_tSaIS0_EE6resizeEm.exit.i

.lr.ph268.i:                                      ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.9.i, %_ZN14gmx_molblock_taSERKS_.exit.i
  %i.can = phi ptr [ %i.cbf, %_ZN14gmx_molblock_taSERKS_.exit.i ], [ %i.bzs, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.9.i ] ; 3 uses
  %i.cao = phi ptr [ %i.cbg, %_ZN14gmx_molblock_taSERKS_.exit.i ], [ %i.bzr, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.9.i ]
  %.0267.i = phi i64 [ %i.cbh, %_ZN14gmx_molblock_taSERKS_.exit.i ], [ 0, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.9.i ] ; 3 uses
  %.0157266.i = phi i32 [ %.1158.i, %_ZN14gmx_molblock_taSERKS_.exit.i ], [ 0, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.9.i ] ; 3 uses
  %i.cap = getelementptr inbounds nuw [56 x i8], ptr %i.can, i64 %.0267.i ; 4 uses
  %i.caq = getelementptr inbounds nuw i8, ptr %i.cap, i64 4
  %i.car = load i32, ptr %i.caq, align 4, !tbaa !358
  %i.cas = icmp eq i32 %i.car, 0
  br i1 %i.cas, label %bb.pg, label %bb.ph

bb.pg:                                            ; preds = %.lr.ph268.i
  %i.cat = add nsw i32 %.0157266.i, 1
  br label %_ZN14gmx_molblock_taSERKS_.exit.i

bb.ph:                                            ; preds = %.lr.ph268.i
  %i.cau = sext i32 %.0157266.i to i64
  %i.cav = sub i64 %.0267.i, %i.cau
  %i.caw = getelementptr inbounds nuw [56 x i8], ptr %i.can, i64 %i.cav ; 3 uses
  %i.cax = load i64, ptr %i.cap, align 8
  store i64 %i.cax, ptr %i.caw, align 8
  %i.cay = getelementptr inbounds nuw i8, ptr %i.caw, i64 8
  %i.caz = getelementptr inbounds nuw i8, ptr %i.cap, i64 8
  %i.cba = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.cay, ptr noundef nonnull align 8 dereferenceable(24) %i.caz)
          to label %.noexc187.i unwind label %bb.pi ; 0 uses

.noexc187.i:                                      ; preds = %bb.ph
  %i.cbb = getelementptr inbounds nuw i8, ptr %i.caw, i64 32
  %i.cbc = getelementptr inbounds nuw i8, ptr %i.cap, i64 32
  %i.cbd = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.cbb, ptr noundef nonnull align 8 dereferenceable(24) %i.cbc)
          to label %.noexc187._ZN14gmx_molblock_taSERKS_.exit_crit_edge.i unwind label %bb.pi ; 0 uses

.noexc187._ZN14gmx_molblock_taSERKS_.exit_crit_edge.i: ; preds = %.noexc187.i
  %.pre320.i = load ptr, ptr %i.aze, align 8, !tbaa !74
  %.pre321.i = load ptr, ptr %i.yk, align 8, !tbaa !75
  br label %_ZN14gmx_molblock_taSERKS_.exit.i

bb.pi:                                            ; preds = %.noexc187.i, %bb.ph
  %i.cbe = landingpad { ptr, i32 }
          cleanup
  br label %bb.pk

_ZN14gmx_molblock_taSERKS_.exit.i:                ; preds = %.noexc187._ZN14gmx_molblock_taSERKS_.exit_crit_edge.i, %bb.pg
  %i.cbf = phi ptr [ %i.can, %bb.pg ], [ %.pre321.i, %.noexc187._ZN14gmx_molblock_taSERKS_.exit_crit_edge.i ] ; 3 uses
  %i.cbg = phi ptr [ %i.cao, %bb.pg ], [ %.pre320.i, %.noexc187._ZN14gmx_molblock_taSERKS_.exit_crit_edge.i ] ; 4 uses
  %.1158.i = phi i32 [ %i.cat, %bb.pg ], [ %.0157266.i, %.noexc187._ZN14gmx_molblock_taSERKS_.exit_crit_edge.i ] ; 2 uses
  %i.cbh = add nuw i64 %.0267.i, 1                ; 2 uses
  %i.cbi = ptrtoint ptr %i.cbg to i64
  %i.cbj = ptrtoint ptr %i.cbf to i64
  %i.cbk = sub i64 %i.cbi, %i.cbj
  %i.cbl = sdiv exact i64 %i.cbk, 56              ; 4 uses
  %i.cbm = icmp ult i64 %i.cbh, %i.cbl
  br i1 %i.cbm, label %.lr.ph268.i, label %._crit_edge269.i, !llvm.loop !171

_ZNSt6vectorI14gmx_molblock_tSaIS0_EE6resizeEm.exit.i: ; preds = %_ZSt8_DestroyIP14gmx_molblock_tS0_EvT_S2_RSaIT0_E.exit.i.i.i, %bb.pd, %bb.pc, %bb.pb, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.9.i
  %i.cbn = load ptr, ptr %12, align 8, !tbaa !312 ; 3 uses
  %.not.i.i.i.i189.i = icmp eq ptr %i.cbn, null
  br i1 %.not.i.i.i.i189.i, label %bb.pm, label %bb.pj

bb.pj:                                            ; preds = %_ZNSt6vectorI14gmx_molblock_tSaIS0_EE6resizeEm.exit.i
  %i.cbo = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cbp = load ptr, ptr %i.cbo, align 8, !tbaa !374
  %i.cbq = ptrtoint ptr %i.cbp to i64
  %i.cbr = ptrtoint ptr %i.cbn to i64
  %i.cbs = sub i64 %i.cbq, %i.cbr
  call void @_ZdlPvm(ptr noundef nonnull %i.cbn, i64 noundef %i.cbs) #27
  br label %bb.pm

bb.pk:                                            ; preds = %bb.pi, %bb.or, %bb.np, %bb.ld, %bb.kv, %bb.kt, %bb.kp
  %.pn168.i = phi { ptr, i32 } [ %i.bdi, %bb.kt ], [ %i.bbz, %bb.kp ], [ %i.bdt, %bb.kv ], [ %i.bpg, %bb.np ], [ %i.bel, %bb.ld ], [ %i.bxx, %bb.or ], [ %i.cbe, %bb.pi ] ; 2 uses
  %i.cbt = load ptr, ptr %12, align 8, !tbaa !312 ; 3 uses
  %.not.i.i.i.i190.i = icmp eq ptr %i.cbt, null
  br i1 %.not.i.i.i.i190.i, label %_ZN3gmx17RangePartitioningD2Ev.exit191.i, label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  %i.cbu = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cbv = load ptr, ptr %i.cbu, align 8, !tbaa !374
  %i.cbw = ptrtoint ptr %i.cbv to i64
  %i.cbx = ptrtoint ptr %i.cbt to i64
  %i.cby = sub i64 %i.cbw, %i.cbx
  call void @_ZdlPvm(ptr noundef nonnull %i.cbt, i64 noundef %i.cby) #27
  br label %_ZN3gmx17RangePartitioningD2Ev.exit191.i

_ZN3gmx17RangePartitioningD2Ev.exit191.i:         ; preds = %bb.pl, %bb.pk, %bb.ko
  %.pn168.pn.i = phi { ptr, i32 } [ %i.bby, %bb.ko ], [ %.pn168.i, %bb.pk ], [ %.pn168.i, %bb.pl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @_ZN3gmx16EnumerationArrayI23SimulationAtomGroupTypeSt6vectorIhSaIhEELS1_10EED2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %.body270

bb.pm:                                            ; preds = %bb.pj, %_ZNSt6vectorI14gmx_molblock_tSaIS0_EE6resizeEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @_ZN3gmx16EnumerationArrayI23SimulationAtomGroupTypeSt6vectorIhSaIhEELS1_10EED2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.cbz = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 3 uses
  %i.cca = load ptr, ptr %i.cbz, align 8, !tbaa !422
  %i.ccb = load ptr, ptr %i.yj, align 8, !tbaa !351
  %i.ccc = ptrtoint ptr %i.cca to i64
  %i.ccd = ptrtoint ptr %i.ccb to i64
  %i.cce = sub i64 %i.ccc, %i.ccd
  %i.ccf = sdiv exact i64 %i.cce, 2408
  %i.ccg = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 869, i64 noundef %i.ccf, i64 noundef 1)
          to label %.noexc373 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc373:                                        ; preds = %bb.pm
  %i.cch = load ptr, ptr %i.cbz, align 8, !tbaa !422 ; 2 uses
  %i.cci = load ptr, ptr %i.yj, align 8, !tbaa !351 ; 4 uses
  %i.ccj = ptrtoint ptr %i.cch to i64
  %i.cck = ptrtoint ptr %i.cci to i64
  %i.ccl = sub i64 %i.ccj, %i.cck
  %i.ccm = sdiv exact i64 %i.ccl, 2408            ; 2 uses
  %.not.i361 = icmp eq ptr %i.cch, %i.cci         ; 2 uses
  br i1 %.not.i361, label %.preheader72.i, label %.lr.ph.preheader.i362

.lr.ph.preheader.i362:                            ; preds = %.noexc373
  call void @llvm.memset.p0.i64(ptr align 1 %i.ccg, i8 1, i64 %i.ccm, i1 false), !tbaa !306
  br label %.preheader72.i

.preheader72.i:                                   ; preds = %.lr.ph.preheader.i362, %.noexc373
  %i.ccn = load ptr, ptr %i.aze, align 8, !tbaa !74 ; 2 uses
  %i.cco = load ptr, ptr %i.yk, align 8, !tbaa !75 ; 3 uses
  %.not97.i = icmp eq ptr %i.ccn, %i.cco
  br i1 %.not97.i, label %.preheader71.i, label %.lr.ph90.i

.lr.ph90.i:                                       ; preds = %.preheader72.i
  %i.ccp = ptrtoint ptr %i.ccn to i64
  %i.ccq = ptrtoint ptr %i.cco to i64
  %i.ccr = sub i64 %i.ccp, %i.ccq
  %i.ccs = sdiv exact i64 %i.ccr, 56
  br label %bb.pn

.preheader71.i:                                   ; preds = %.critedge.i364, %.preheader72.i
  %.054.lcssa.i = phi i32 [ 0, %.preheader72.i ], [ %spec.select61.i, %.critedge.i364 ] ; 2 uses
  br i1 %.not.i361, label %._crit_edge96.i, label %.lr.ph95.i

bb.pn:                                            ; preds = %.critedge.i364, %.lr.ph90.i
  %.05189.i = phi i64 [ 0, %.lr.ph90.i ], [ %i.cdu, %.critedge.i364 ] ; 2 uses
  %.05488.i = phi i32 [ 0, %.lr.ph90.i ], [ %spec.select61.i, %.critedge.i364 ]
  %.05687.i = phi i32 [ 0, %.lr.ph90.i ], [ %i.cdr, %.critedge.i364 ] ; 2 uses
  %i.cct = getelementptr inbounds nuw [56 x i8], ptr %i.cco, i64 %.05189.i ; 2 uses
  %i.ccu = load i32, ptr %i.cct, align 8, !tbaa !84
  %i.ccv = sext i32 %i.ccu to i64                 ; 2 uses
  %i.ccw = getelementptr inbounds nuw [2408 x i8], ptr %i.cci, i64 %i.ccv
  %i.ccx = getelementptr inbounds nuw i8, ptr %i.ccw, i64 8
  %i.ccy = load i32, ptr %i.ccx, align 8, !tbaa !365
  %i.ccz = getelementptr inbounds nuw i8, ptr %i.cct, i64 4
  %i.cda = load i32, ptr %i.ccz, align 4, !tbaa !358
  %i.cdb = mul nsw i32 %i.cda, %i.ccy             ; 4 uses
  %i.cdc = icmp sgt i32 %i.cdb, 0
  %i.cdd = getelementptr inbounds i8, ptr %i.ccg, i64 %i.ccv ; 2 uses
  %.pre.i363 = load i8, ptr %i.cdd, align 1, !tbaa !306, !range !423 ; 2 uses
  br i1 %i.cdc, label %.lr.ph83.i, label %.critedge.i364

.lr.ph83.i:                                       ; preds = %bb.pn, %._crit_edge.i371
  %i.cde = phi i8 [ %.053.lcssa.i, %._crit_edge.i371 ], [ %.pre.i363, %bb.pn ]
  %.05881.i = phi i32 [ %i.cdp, %._crit_edge.i371 ], [ 0, %bb.pn ] ; 2 uses
  %i.cdf = trunc nuw i8 %i.cde to i1
  br i1 %i.cdf, label %bb.po, label %.critedge.i364

bb.po:                                            ; preds = %.lr.ph83.i
  %i.cdg = add nsw i32 %.05881.i, %.05687.i
  %i.cdh = load i32, ptr %i.k, align 8, !tbaa !64 ; 2 uses
  %i.cdi = icmp slt i32 %i.cdh, 1
  br i1 %i.cdi, label %._crit_edge.i371, label %.lr.ph79.i

.lr.ph79.i:                                       ; preds = %bb.po
  %i.cdj = load ptr, ptr %i.il, align 8, !tbaa !65
  %i.cdk = zext nneg i32 %i.cdh to i64
  br label %bb.pp

bb.pp:                                            ; preds = %bb.pp, %.lr.ph79.i
  %indvars.iv.i367 = phi i64 [ 0, %.lr.ph79.i ], [ %indvars.iv.next.i368, %bb.pp ] ; 2 uses
  %i.cdl = getelementptr inbounds nuw [4 x i8], ptr %i.cdj, i64 %indvars.iv.i367
  %i.cdm = load i32, ptr %i.cdl, align 4, !tbaa !30
  %i.cdn = icmp eq i32 %i.cdg, %i.cdm             ; 2 uses
  %indvars.iv.next.i368 = add nuw nsw i64 %indvars.iv.i367, 1 ; 2 uses
  %i.cdo = icmp samesign uge i64 %indvars.iv.next.i368, %i.cdk
  %.not60.i = select i1 %i.cdo, i1 true, i1 %i.cdn
  br i1 %.not60.i, label %._crit_edge.loopexit.i369, label %bb.pp, !llvm.loop !172

._crit_edge.loopexit.i369:                        ; preds = %bb.pp
  %spec.select.i370 = zext i1 %i.cdn to i8
  br label %._crit_edge.i371

._crit_edge.i371:                                 ; preds = %._crit_edge.loopexit.i369, %bb.po
  %.053.lcssa.i = phi i8 [ 0, %bb.po ], [ %spec.select.i370, %._crit_edge.loopexit.i369 ] ; 3 uses
  store i8 %.053.lcssa.i, ptr %i.cdd, align 1, !tbaa !306
  %i.cdp = add nuw nsw i32 %.05881.i, 1           ; 2 uses
  %exitcond.not.i372 = icmp eq i32 %i.cdp, %i.cdb
  br i1 %exitcond.not.i372, label %.critedge.i364, label %.lr.ph83.i, !llvm.loop !173

.critedge.i364:                                   ; preds = %._crit_edge.i371, %.lr.ph83.i, %bb.pn
  %i.cdq = phi i8 [ %.pre.i363, %bb.pn ], [ %.053.lcssa.i, %._crit_edge.i371 ], [ 0, %.lr.ph83.i ]
  %i.cdr = add nsw i32 %i.cdb, %.05687.i
  %i.cds = trunc nuw i8 %i.cdq to i1
  %i.cdt = select i1 %i.cds, i32 %i.cdb, i32 0
  %spec.select61.i = add nsw i32 %i.cdt, %.05488.i ; 2 uses
  %i.cdu = add nuw i64 %.05189.i, 1               ; 2 uses
  %exitcond100.not.i = icmp eq i64 %i.cdu, %i.ccs
  br i1 %exitcond100.not.i, label %.preheader71.i, label %bb.pn, !llvm.loop !174

._crit_edge96.i:                                  ; preds = %.loopexit.i365, %.preheader71.i
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 924, ptr noundef %i.ccg)
          to label %_ZL9rm_bondedP7t_blockP10gmx_mtop_t.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph95.i:                                       ; preds = %.preheader71.i, %.loopexit.i365
  %.094.i = phi i64 [ %i.cnf, %.loopexit.i365 ], [ 0, %.preheader71.i ] ; 3 uses
  %i.cdv = getelementptr inbounds nuw i8, ptr %i.ccg, i64 %.094.i
  %i.cdw = load i8, ptr %i.cdv, align 1, !tbaa !306, !range !423, !noundef !184
  %i.cdx = trunc nuw i8 %i.cdw to i1
  br i1 %i.cdx, label %.preheader70.i, label %.loopexit.i365

.preheader70.i:                                   ; preds = %.lr.ph95.i
  %i.cdy = getelementptr inbounds nuw [2408 x i8], ptr %i.cci, i64 %.094.i ; 120 uses
  %i.cdz = getelementptr inbounds nuw i8, ptr %i.cdy, i64 80
  %i.cea = load ptr, ptr %i.cdz, align 8, !tbaa !312 ; 2 uses
  %i.ceb = getelementptr inbounds nuw i8, ptr %i.cdy, i64 88 ; 2 uses
  %i.cec = load ptr, ptr %i.ceb, align 8, !tbaa !314
  %.not.i.i.i366 = icmp eq ptr %i.cec, %i.cea
  br i1 %.not.i.i.i366, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %.preheader70.i
  store ptr %i.cea, ptr %i.ceb, align 8, !tbaa !314
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i

_ZNSt6vectorIiSaIiEE5clearEv.exit.i:              ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i, %.preheader70.i
  %i.ced = getelementptr inbounds nuw i8, ptr %i.cdy, i64 104
  %i.cee = load ptr, ptr %i.ced, align 8, !tbaa !312 ; 2 uses
  %i.cef = getelementptr inbounds nuw i8, ptr %i.cdy, i64 112 ; 2 uses
  %i.ceg = load ptr, ptr %i.cef, align 8, !tbaa !314
  %.not.i.i.1.i = icmp eq ptr %i.ceg, %i.cee
  br i1 %.not.i.i.1.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.1.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.1.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.1.i:    ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.i
  store ptr %i.cee, ptr %i.cef, align 8, !tbaa !314
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.1.i

_ZNSt6vectorIiSaIiEE5clearEv.exit.1.i:            ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.1.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i
  %i.ceh = getelementptr inbounds nuw i8, ptr %i.cdy, i64 128
  %i.cei = load ptr, ptr %i.ceh, align 8, !tbaa !312 ; 2 uses
  %i.cej = getelementptr inbounds nuw i8, ptr %i.cdy, i64 136 ; 2 uses
  %i.cek = load ptr, ptr %i.cej, align 8, !tbaa !314
  %.not.i.i.2.i = icmp eq ptr %i.cek, %i.cei
  br i1 %.not.i.i.2.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.2.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.2.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.2.i:    ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.1.i
  store ptr %i.cei, ptr %i.cej, align 8, !tbaa !314
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.2.i

_ZNSt6vectorIiSaIiEE5clearEv.exit.2.i:            ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.2.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.1.i
  %i.cel = getelementptr inbounds nuw i8, ptr %i.cdy, i64 152
end_hunk_0
