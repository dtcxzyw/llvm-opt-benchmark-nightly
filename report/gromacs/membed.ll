Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/membed?download=true
inline.NumInlined: 899
inline.NumDeleted: 473
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_Z11init_membedP8_IO_FILEiPK8t_filenmP10gmx_mtop_tP10t_inputrecP7t_stateP9t_commrecPf:bb.a
  %indvars.iv.next305.i.2 = add nuw nsw i64 %indvars.iv304.i, 3 ; 2 uses
  %i.bvw = getelementptr inbounds nuw [12 x i8], ptr %i.bbt, i64 %indvars.iv.next305.i.2 ; 3 uses
  %i.bvx = getelementptr inbounds nuw [12 x i8], ptr %i.bmh, i64 %indvars.iv.next305.i.2 ; 3 uses
  %i.bvy = load float, ptr %i.bvw, align 4, !tbaa !20
  store float %i.bvy, ptr %i.bvx, align 4, !tbaa !20
  %i.bvz = getelementptr inbounds nuw i8, ptr %i.bvw, i64 4
  %i.bwa = load float, ptr %i.bvz, align 4, !tbaa !20
  %i.bwb = getelementptr inbounds nuw i8, ptr %i.bvx, i64 4
  store float %i.bwa, ptr %i.bwb, align 4, !tbaa !20
  %i.bwc = getelementptr inbounds nuw i8, ptr %i.bvw, i64 8
  %i.bwd = load float, ptr %i.bwc, align 4, !tbaa !20
  %i.bwe = getelementptr inbounds nuw i8, ptr %i.bvx, i64 8
  store float %i.bwd, ptr %i.bwe, align 4, !tbaa !20
  %indvars.iv.next305.i.3 = add nuw nsw i64 %indvars.iv304.i, 4 ; 2 uses
  %exitcond308.not.i.3 = icmp eq i64 %indvars.iv.next305.i.3, %wide.trip.count307.i
  br i1 %exitcond308.not.i.3, label %._crit_edge262.i, label %.lr.ph261.i, !llvm.loop !168

_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit._crit_edge.i: ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit.i.prol.loopexit, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit.i, %middle.block1483, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit.preheader.i
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.1, i32 noundef 831, ptr noundef %i.bdj)
          to label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.preheader.preheader.i unwind label %bb.np

_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.preheader.preheader.i: ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit._crit_edge.i
  %i.bwf = load ptr, ptr %i.bdk, align 8, !tbaa !36
  %i.bwg = load ptr, ptr %i.bdm, align 8, !tbaa !36
  %i.bwh = icmp eq ptr %i.bwf, %i.bwg
  br i1 %i.bwh, label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.i, label %bb.oq

_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit.i:      ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit.i.prol.loopexit, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit.i
  %indvars.iv309.i = phi i64 [ %indvars.iv.next310.i.3, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit.i ], [ %indvars.iv309.i.unr, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit.i.prol.loopexit ] ; 6 uses
  %i.bwi = getelementptr inbounds nuw [12 x i8], ptr %i.bdj, i64 %indvars.iv309.i ; 3 uses
  %i.bwj = getelementptr inbounds nuw [12 x i8], ptr %i.bmj, i64 %indvars.iv309.i ; 3 uses
  %i.bwk = load float, ptr %i.bwi, align 4, !tbaa !20
  store float %i.bwk, ptr %i.bwj, align 4, !tbaa !20
  %i.bwl = getelementptr inbounds nuw i8, ptr %i.bwi, i64 4
  %i.bwm = load float, ptr %i.bwl, align 4, !tbaa !20
  %i.bwn = getelementptr inbounds nuw i8, ptr %i.bwj, i64 4
  store float %i.bwm, ptr %i.bwn, align 4, !tbaa !20
  %i.bwo = getelementptr inbounds nuw i8, ptr %i.bwi, i64 8
  %i.bwp = load float, ptr %i.bwo, align 4, !tbaa !20
  %i.bwq = getelementptr inbounds nuw i8, ptr %i.bwj, i64 8
  store float %i.bwp, ptr %i.bwq, align 4, !tbaa !20
  %indvars.iv.next310.i = add nuw nsw i64 %indvars.iv309.i, 1 ; 2 uses
  %i.bwr = getelementptr inbounds nuw [12 x i8], ptr %i.bdj, i64 %indvars.iv.next310.i ; 3 uses
  %i.bws = getelementptr inbounds nuw [12 x i8], ptr %i.bmj, i64 %indvars.iv.next310.i ; 3 uses
  %i.bwt = load float, ptr %i.bwr, align 4, !tbaa !20
  store float %i.bwt, ptr %i.bws, align 4, !tbaa !20
  %i.bwu = getelementptr inbounds nuw i8, ptr %i.bwr, i64 4
  %i.bwv = load float, ptr %i.bwu, align 4, !tbaa !20
  %i.bww = getelementptr inbounds nuw i8, ptr %i.bws, i64 4
  store float %i.bwv, ptr %i.bww, align 4, !tbaa !20
  %i.bwx = getelementptr inbounds nuw i8, ptr %i.bwr, i64 8
  %i.bwy = load float, ptr %i.bwx, align 4, !tbaa !20
  %i.bwz = getelementptr inbounds nuw i8, ptr %i.bws, i64 8
  store float %i.bwy, ptr %i.bwz, align 4, !tbaa !20
  %indvars.iv.next310.i.1 = add nuw nsw i64 %indvars.iv309.i, 2 ; 2 uses
  %i.bxa = getelementptr inbounds nuw [12 x i8], ptr %i.bdj, i64 %indvars.iv.next310.i.1 ; 3 uses
  %i.bxb = getelementptr inbounds nuw [12 x i8], ptr %i.bmj, i64 %indvars.iv.next310.i.1 ; 3 uses
  %i.bxc = load float, ptr %i.bxa, align 4, !tbaa !20
  store float %i.bxc, ptr %i.bxb, align 4, !tbaa !20
  %i.bxd = getelementptr inbounds nuw i8, ptr %i.bxa, i64 4
  %i.bxe = load float, ptr %i.bxd, align 4, !tbaa !20
  %i.bxf = getelementptr inbounds nuw i8, ptr %i.bxb, i64 4
  store float %i.bxe, ptr %i.bxf, align 4, !tbaa !20
  %i.bxg = getelementptr inbounds nuw i8, ptr %i.bxa, i64 8
  %i.bxh = load float, ptr %i.bxg, align 4, !tbaa !20
  %i.bxi = getelementptr inbounds nuw i8, ptr %i.bxb, i64 8
  store float %i.bxh, ptr %i.bxi, align 4, !tbaa !20
  %indvars.iv.next310.i.2 = add nuw nsw i64 %indvars.iv309.i, 3 ; 2 uses
  %i.bxj = getelementptr inbounds nuw [12 x i8], ptr %i.bdj, i64 %indvars.iv.next310.i.2 ; 3 uses
  %i.bxk = getelementptr inbounds nuw [12 x i8], ptr %i.bmj, i64 %indvars.iv.next310.i.2 ; 3 uses
  %i.bxl = load float, ptr %i.bxj, align 4, !tbaa !20
  store float %i.bxl, ptr %i.bxk, align 4, !tbaa !20
  %i.bxm = getelementptr inbounds nuw i8, ptr %i.bxj, i64 4
  %i.bxn = load float, ptr %i.bxm, align 4, !tbaa !20
  %i.bxo = getelementptr inbounds nuw i8, ptr %i.bxk, i64 4
  store float %i.bxn, ptr %i.bxo, align 4, !tbaa !20
  %i.bxp = getelementptr inbounds nuw i8, ptr %i.bxj, i64 8
  %i.bxq = load float, ptr %i.bxp, align 4, !tbaa !20
  %i.bxr = getelementptr inbounds nuw i8, ptr %i.bxk, i64 8
  store float %i.bxq, ptr %i.bxr, align 4, !tbaa !20
  %indvars.iv.next310.i.3 = add nuw nsw i64 %indvars.iv309.i, 4 ; 2 uses
  %exitcond313.not.i.3 = icmp eq i64 %indvars.iv.next310.i.3, %wide.trip.count312.i
  br i1 %exitcond313.not.i.3, label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit._crit_edge.i, label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit.i, !llvm.loop !169

bb.oq:                                            ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.preheader.preheader.i
  %i.bxs = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bdk, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.i unwind label %bb.or ; 0 uses

bb.or:                                            ; preds = %bb.pa, %bb.oz, %bb.oy, %bb.ox, %bb.ow, %bb.ov, %bb.ou, %bb.ot, %bb.os, %bb.oq
  %i.bxt = landingpad { ptr, i32 }
          cleanup
  br label %bb.pk

_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.i:   ; preds = %bb.oq, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.preheader.preheader.i
  %i.bxu = load ptr, ptr %i.bei, align 8, !tbaa !36
  %i.bxv = load ptr, ptr %i.bek, align 8, !tbaa !36
  %i.bxw = icmp eq ptr %i.bxu, %i.bxv
  br i1 %i.bxw, label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.1.i, label %bb.os

bb.os:                                            ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.i
  %i.bxx = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bxy = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bei, ptr noundef nonnull align 8 dereferenceable(24) %i.bxx)
          to label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.1.i unwind label %bb.or ; 0 uses

_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.1.i: ; preds = %bb.os, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.i
  %i.bxz = load ptr, ptr %i.bff, align 8, !tbaa !36
  %i.bya = load ptr, ptr %i.bfh, align 8, !tbaa !36
  %i.byb = icmp eq ptr %i.bxz, %i.bya
  br i1 %i.byb, label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.2.i, label %bb.ot

bb.ot:                                            ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.1.i
  %i.byc = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.byd = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bff, ptr noundef nonnull align 8 dereferenceable(24) %i.byc)
          to label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.2.i unwind label %bb.or ; 0 uses

_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.2.i: ; preds = %bb.ot, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.1.i
  %i.bye = load ptr, ptr %i.bgc, align 8, !tbaa !36
  %i.byf = load ptr, ptr %i.bge, align 8, !tbaa !36
  %i.byg = icmp eq ptr %i.bye, %i.byf
  br i1 %i.byg, label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.3.i, label %bb.ou

bb.ou:                                            ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.2.i
  %i.byh = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.byi = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bgc, ptr noundef nonnull align 8 dereferenceable(24) %i.byh)
          to label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.3.i unwind label %bb.or ; 0 uses

_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.3.i: ; preds = %bb.ou, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.2.i
  %i.byj = load ptr, ptr %i.bgz, align 8, !tbaa !36
  %i.byk = load ptr, ptr %i.bhb, align 8, !tbaa !36
  %i.byl = icmp eq ptr %i.byj, %i.byk
  br i1 %i.byl, label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.4.i, label %bb.ov

bb.ov:                                            ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.3.i
  %i.bym = getelementptr inbounds nuw i8, ptr %11, i64 96
  %i.byn = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bgz, ptr noundef nonnull align 8 dereferenceable(24) %i.bym)
          to label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.4.i unwind label %bb.or ; 0 uses

_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.4.i: ; preds = %bb.ov, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.3.i
  %i.byo = load ptr, ptr %i.bhw, align 8, !tbaa !36
  %i.byp = load ptr, ptr %i.bhy, align 8, !tbaa !36
  %i.byq = icmp eq ptr %i.byo, %i.byp
  br i1 %i.byq, label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.5.i, label %bb.ow

bb.ow:                                            ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.4.i
  %i.byr = getelementptr inbounds nuw i8, ptr %11, i64 120
  %i.bys = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bhw, ptr noundef nonnull align 8 dereferenceable(24) %i.byr)
          to label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.5.i unwind label %bb.or ; 0 uses

_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.5.i: ; preds = %bb.ow, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.4.i
  %i.byt = load ptr, ptr %i.bit, align 8, !tbaa !36
  %i.byu = load ptr, ptr %i.biv, align 8, !tbaa !36
  %i.byv = icmp eq ptr %i.byt, %i.byu
  br i1 %i.byv, label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.6.i, label %bb.ox

bb.ox:                                            ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.5.i
  %i.byw = getelementptr inbounds nuw i8, ptr %11, i64 144
  %i.byx = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bit, ptr noundef nonnull align 8 dereferenceable(24) %i.byw)
          to label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.6.i unwind label %bb.or ; 0 uses

_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.6.i: ; preds = %bb.ox, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.5.i
  %i.byy = load ptr, ptr %i.bjq, align 8, !tbaa !36
  %i.byz = load ptr, ptr %i.bjs, align 8, !tbaa !36
  %i.bza = icmp eq ptr %i.byy, %i.byz
  br i1 %i.bza, label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.7.i, label %bb.oy

bb.oy:                                            ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.6.i
  %i.bzb = getelementptr inbounds nuw i8, ptr %11, i64 168
  %i.bzc = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bjq, ptr noundef nonnull align 8 dereferenceable(24) %i.bzb)
          to label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.7.i unwind label %bb.or ; 0 uses

_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.7.i: ; preds = %bb.oy, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.6.i
  %i.bzd = load ptr, ptr %i.bkn, align 8, !tbaa !36
  %i.bze = load ptr, ptr %i.bkp, align 8, !tbaa !36
  %i.bzf = icmp eq ptr %i.bzd, %i.bze
  br i1 %i.bzf, label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.8.i, label %bb.oz

bb.oz:                                            ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.7.i
  %i.bzg = getelementptr inbounds nuw i8, ptr %11, i64 192
  %i.bzh = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bkn, ptr noundef nonnull align 8 dereferenceable(24) %i.bzg)
          to label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.8.i unwind label %bb.or ; 0 uses

_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.8.i: ; preds = %bb.oz, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.7.i
  %i.bzi = load ptr, ptr %i.blk, align 8, !tbaa !36
  %i.bzj = load ptr, ptr %i.blm, align 8, !tbaa !36
  %i.bzk = icmp eq ptr %i.bzi, %i.bzj
  br i1 %i.bzk, label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.9.i, label %bb.pa

bb.pa:                                            ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.8.i
  %i.bzl = getelementptr inbounds nuw i8, ptr %11, i64 216
  %i.bzm = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.blk, ptr noundef nonnull align 8 dereferenceable(24) %i.bzl)
          to label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.9.i unwind label %bb.or ; 0 uses

_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.9.i: ; preds = %bb.pa, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.8.i
  %i.bzn = load ptr, ptr %i.aza, align 8, !tbaa !74 ; 2 uses
  %i.bzo = load ptr, ptr %i.yg, align 8, !tbaa !75 ; 2 uses
  %.not274.i = icmp eq ptr %i.bzn, %i.bzo
  br i1 %.not274.i, label %_ZNSt6vectorI14gmx_molblock_tSaIS0_EE6resizeEm.exit.i, label %.lr.ph268.i

._crit_edge269.i:                                 ; preds = %_ZN14gmx_molblock_taSERKS_.exit.i
  %i.bzp = sext i32 %.1158.i to i64               ; 3 uses
  %i.bzq = sub nuw nsw i64 %i.cbh, %i.bzp
  %i.bzr = icmp ult i64 %i.cbh, %i.bzp
  br i1 %i.bzr, label %bb.pb, label %bb.pc

bb.pb:                                            ; preds = %._crit_edge269.i
  %i.bzs = sub nsw i64 0, %i.bzp
  invoke void @_ZNSt6vectorI14gmx_molblock_tSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.yg, i64 noundef %i.bzs)
          to label %_ZNSt6vectorI14gmx_molblock_tSaIS0_EE6resizeEm.exit.i unwind label %bb.np

bb.pc:                                            ; preds = %._crit_edge269.i
  %.not275.i = icmp eq i32 %.1158.i, 0
  br i1 %.not275.i, label %_ZNSt6vectorI14gmx_molblock_tSaIS0_EE6resizeEm.exit.i, label %bb.pd

bb.pd:                                            ; preds = %bb.pc
  %i.bzt = getelementptr inbounds nuw [56 x i8], ptr %i.cbb, i64 %i.bzq ; 3 uses
  %.not.i.i185.i = icmp eq ptr %i.cbc, %i.bzt
  br i1 %.not.i.i185.i, label %_ZNSt6vectorI14gmx_molblock_tSaIS0_EE6resizeEm.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.pd, %_ZSt8_DestroyI14gmx_molblock_tEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.cai, %_ZSt8_DestroyI14gmx_molblock_tEvPT_.exit.i.i.i.i.i ], [ %i.bzt, %bb.pd ] ; 5 uses
  %i.bzu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.bzv = load ptr, ptr %i.bzu, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bzv, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i.i.i.i.i.i.i, label %bb.pe

bb.pe:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.bzw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48
  %i.bzx = load ptr, ptr %i.bzw, align 8, !tbaa !88
  %i.bzy = ptrtoint ptr %i.bzx to i64
  %i.bzz = ptrtoint ptr %i.bzv to i64
  %i.caa = sub i64 %i.bzy, %i.bzz
  call void @_ZdlPvm(ptr noundef nonnull %i.bzv, i64 noundef %i.caa) #27
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i.i.i.i.i.i.i

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.pe, %.lr.ph.i.i.i.i.i
  %i.cab = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.cac = load ptr, ptr %i.cab, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.cac, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i, label %_ZSt8_DestroyI14gmx_molblock_tEvPT_.exit.i.i.i.i.i, label %bb.pf

bb.pf:                                            ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i.i.i.i.i.i.i
  %i.cad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.cae = load ptr, ptr %i.cad, align 8, !tbaa !88
  %i.caf = ptrtoint ptr %i.cae to i64
  %i.cag = ptrtoint ptr %i.cac to i64
  %i.cah = sub i64 %i.caf, %i.cag
  call void @_ZdlPvm(ptr noundef nonnull %i.cac, i64 noundef %i.cah) #27
  br label %_ZSt8_DestroyI14gmx_molblock_tEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyI14gmx_molblock_tEvPT_.exit.i.i.i.i.i: ; preds = %bb.pf, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i.i.i.i.i.i.i
  %i.cai = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i350 = icmp eq ptr %i.cai, %i.cbc
  br i1 %.not.i.i.i.i.i350, label %_ZSt8_DestroyIP14gmx_molblock_tS0_EvT_S2_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !170

_ZSt8_DestroyIP14gmx_molblock_tS0_EvT_S2_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyI14gmx_molblock_tEvPT_.exit.i.i.i.i.i
  store ptr %i.bzt, ptr %i.aza, align 8, !tbaa !74
  br label %_ZNSt6vectorI14gmx_molblock_tSaIS0_EE6resizeEm.exit.i

.lr.ph268.i:                                      ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.9.i, %_ZN14gmx_molblock_taSERKS_.exit.i
  %i.caj = phi ptr [ %i.cbb, %_ZN14gmx_molblock_taSERKS_.exit.i ], [ %i.bzo, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.9.i ] ; 3 uses
  %i.cak = phi ptr [ %i.cbc, %_ZN14gmx_molblock_taSERKS_.exit.i ], [ %i.bzn, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.9.i ]
  %.0267.i = phi i64 [ %i.cbd, %_ZN14gmx_molblock_taSERKS_.exit.i ], [ 0, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.9.i ] ; 3 uses
  %.0157266.i = phi i32 [ %.1158.i, %_ZN14gmx_molblock_taSERKS_.exit.i ], [ 0, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.9.i ] ; 3 uses
  %i.cal = getelementptr inbounds nuw [56 x i8], ptr %i.caj, i64 %.0267.i ; 4 uses
  %i.cam = getelementptr inbounds nuw i8, ptr %i.cal, i64 4
  %i.can = load i32, ptr %i.cam, align 4, !tbaa !358
  %i.cao = icmp eq i32 %i.can, 0
  br i1 %i.cao, label %bb.pg, label %bb.ph

bb.pg:                                            ; preds = %.lr.ph268.i
  %i.cap = add nsw i32 %.0157266.i, 1
  br label %_ZN14gmx_molblock_taSERKS_.exit.i

bb.ph:                                            ; preds = %.lr.ph268.i
  %i.caq = sext i32 %.0157266.i to i64
  %i.car = sub i64 %.0267.i, %i.caq
  %i.cas = getelementptr inbounds nuw [56 x i8], ptr %i.caj, i64 %i.car ; 3 uses
  %i.cat = load i64, ptr %i.cal, align 8
  store i64 %i.cat, ptr %i.cas, align 8
  %i.cau = getelementptr inbounds nuw i8, ptr %i.cas, i64 8
  %i.cav = getelementptr inbounds nuw i8, ptr %i.cal, i64 8
  %i.caw = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.cau, ptr noundef nonnull align 8 dereferenceable(24) %i.cav)
          to label %.noexc187.i unwind label %bb.pi ; 0 uses

.noexc187.i:                                      ; preds = %bb.ph
  %i.cax = getelementptr inbounds nuw i8, ptr %i.cas, i64 32
  %i.cay = getelementptr inbounds nuw i8, ptr %i.cal, i64 32
  %i.caz = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.cax, ptr noundef nonnull align 8 dereferenceable(24) %i.cay)
          to label %.noexc187._ZN14gmx_molblock_taSERKS_.exit_crit_edge.i unwind label %bb.pi ; 0 uses

.noexc187._ZN14gmx_molblock_taSERKS_.exit_crit_edge.i: ; preds = %.noexc187.i
  %.pre320.i = load ptr, ptr %i.aza, align 8, !tbaa !74
  %.pre321.i = load ptr, ptr %i.yg, align 8, !tbaa !75
  br label %_ZN14gmx_molblock_taSERKS_.exit.i

bb.pi:                                            ; preds = %.noexc187.i, %bb.ph
  %i.cba = landingpad { ptr, i32 }
          cleanup
  br label %bb.pk

_ZN14gmx_molblock_taSERKS_.exit.i:                ; preds = %.noexc187._ZN14gmx_molblock_taSERKS_.exit_crit_edge.i, %bb.pg
  %i.cbb = phi ptr [ %i.caj, %bb.pg ], [ %.pre321.i, %.noexc187._ZN14gmx_molblock_taSERKS_.exit_crit_edge.i ] ; 3 uses
  %i.cbc = phi ptr [ %i.cak, %bb.pg ], [ %.pre320.i, %.noexc187._ZN14gmx_molblock_taSERKS_.exit_crit_edge.i ] ; 4 uses
  %.1158.i = phi i32 [ %i.cap, %bb.pg ], [ %.0157266.i, %.noexc187._ZN14gmx_molblock_taSERKS_.exit_crit_edge.i ] ; 3 uses
  %i.cbd = add nuw i64 %.0267.i, 1                ; 2 uses
  %i.cbe = ptrtoint ptr %i.cbc to i64
  %i.cbf = ptrtoint ptr %i.cbb to i64
  %i.cbg = sub i64 %i.cbe, %i.cbf
  %i.cbh = sdiv exact i64 %i.cbg, 56              ; 3 uses
  %i.cbi = icmp ult i64 %i.cbd, %i.cbh
  br i1 %i.cbi, label %.lr.ph268.i, label %._crit_edge269.i, !llvm.loop !171

_ZNSt6vectorI14gmx_molblock_tSaIS0_EE6resizeEm.exit.i: ; preds = %_ZSt8_DestroyIP14gmx_molblock_tS0_EvT_S2_RSaIT0_E.exit.i.i.i, %bb.pd, %bb.pc, %bb.pb, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit184.9.i
  %i.cbj = load ptr, ptr %12, align 8, !tbaa !312 ; 3 uses
  %.not.i.i.i.i189.i = icmp eq ptr %i.cbj, null
  br i1 %.not.i.i.i.i189.i, label %bb.pm, label %bb.pj

bb.pj:                                            ; preds = %_ZNSt6vectorI14gmx_molblock_tSaIS0_EE6resizeEm.exit.i
  %i.cbk = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cbl = load ptr, ptr %i.cbk, align 8, !tbaa !375
  %i.cbm = ptrtoint ptr %i.cbl to i64
  %i.cbn = ptrtoint ptr %i.cbj to i64
  %i.cbo = sub i64 %i.cbm, %i.cbn
  call void @_ZdlPvm(ptr noundef nonnull %i.cbj, i64 noundef %i.cbo) #27
  br label %bb.pm

bb.pk:                                            ; preds = %bb.pi, %bb.or, %bb.np, %bb.ld, %bb.kv, %bb.kt, %bb.kp
  %.pn168.i = phi { ptr, i32 } [ %i.bde, %bb.kt ], [ %i.bbv, %bb.kp ], [ %i.bdp, %bb.kv ], [ %i.bpc, %bb.np ], [ %i.beh, %bb.ld ], [ %i.bxt, %bb.or ], [ %i.cba, %bb.pi ] ; 2 uses
  %i.cbp = load ptr, ptr %12, align 8, !tbaa !312 ; 3 uses
  %.not.i.i.i.i190.i = icmp eq ptr %i.cbp, null
  br i1 %.not.i.i.i.i190.i, label %_ZN3gmx17RangePartitioningD2Ev.exit191.i, label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  %i.cbq = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cbr = load ptr, ptr %i.cbq, align 8, !tbaa !375
  %i.cbs = ptrtoint ptr %i.cbr to i64
  %i.cbt = ptrtoint ptr %i.cbp to i64
  %i.cbu = sub i64 %i.cbs, %i.cbt
  call void @_ZdlPvm(ptr noundef nonnull %i.cbp, i64 noundef %i.cbu) #27
  br label %_ZN3gmx17RangePartitioningD2Ev.exit191.i

_ZN3gmx17RangePartitioningD2Ev.exit191.i:         ; preds = %bb.pl, %bb.pk, %bb.ko
  %.pn168.pn.i = phi { ptr, i32 } [ %i.bbu, %bb.ko ], [ %.pn168.i, %bb.pk ], [ %.pn168.i, %bb.pl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @_ZN3gmx16EnumerationArrayI23SimulationAtomGroupTypeSt6vectorIhSaIhEELS1_10EED2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %.body273

bb.pm:                                            ; preds = %bb.pj, %_ZNSt6vectorI14gmx_molblock_tSaIS0_EE6resizeEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @_ZN3gmx16EnumerationArrayI23SimulationAtomGroupTypeSt6vectorIhSaIhEELS1_10EED2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.cbv = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 3 uses
  %i.cbw = load ptr, ptr %i.cbv, align 8, !tbaa !422
  %i.cbx = load ptr, ptr %i.yf, align 8, !tbaa !351
  %i.cby = ptrtoint ptr %i.cbw to i64
  %i.cbz = ptrtoint ptr %i.cbx to i64
  %i.cca = sub i64 %i.cby, %i.cbz
  %i.ccb = sdiv exact i64 %i.cca, 2408
  %i.ccc = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 869, i64 noundef %i.ccb, i64 noundef 1)
          to label %.noexc376 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc376:                                        ; preds = %bb.pm
  %i.ccd = load ptr, ptr %i.cbv, align 8, !tbaa !422 ; 2 uses
  %i.cce = load ptr, ptr %i.yf, align 8, !tbaa !351 ; 4 uses
  %i.ccf = ptrtoint ptr %i.ccd to i64
  %i.ccg = ptrtoint ptr %i.cce to i64
  %i.cch = sub i64 %i.ccf, %i.ccg
  %i.cci = sdiv exact i64 %i.cch, 2408            ; 2 uses
  %.not.i364 = icmp eq ptr %i.ccd, %i.cce         ; 2 uses
  br i1 %.not.i364, label %.preheader72.i, label %.lr.ph.preheader.i365

.lr.ph.preheader.i365:                            ; preds = %.noexc376
  call void @llvm.memset.p0.i64(ptr align 1 %i.ccc, i8 1, i64 %i.cci, i1 false), !tbaa !306
  br label %.preheader72.i

.preheader72.i:                                   ; preds = %.lr.ph.preheader.i365, %.noexc376
  %i.ccj = load ptr, ptr %i.aza, align 8, !tbaa !74 ; 2 uses
  %i.cck = load ptr, ptr %i.yg, align 8, !tbaa !75 ; 3 uses
  %.not97.i = icmp eq ptr %i.ccj, %i.cck
  br i1 %.not97.i, label %.preheader71.i, label %.lr.ph90.i

.lr.ph90.i:                                       ; preds = %.preheader72.i
  %i.ccl = ptrtoint ptr %i.ccj to i64
  %i.ccm = ptrtoint ptr %i.cck to i64
  %i.ccn = sub i64 %i.ccl, %i.ccm
  %i.cco = sdiv exact i64 %i.ccn, 56
  br label %bb.pn

.preheader71.i:                                   ; preds = %.critedge.i367, %.preheader72.i
  %.054.lcssa.i = phi i32 [ 0, %.preheader72.i ], [ %spec.select61.i, %.critedge.i367 ] ; 2 uses
  br i1 %.not.i364, label %._crit_edge96.i, label %.lr.ph95.i

bb.pn:                                            ; preds = %.critedge.i367, %.lr.ph90.i
  %.05189.i = phi i64 [ 0, %.lr.ph90.i ], [ %i.cdq, %.critedge.i367 ] ; 2 uses
  %.05488.i = phi i32 [ 0, %.lr.ph90.i ], [ %spec.select61.i, %.critedge.i367 ]
  %.05687.i = phi i32 [ 0, %.lr.ph90.i ], [ %i.cdn, %.critedge.i367 ] ; 2 uses
  %i.ccp = getelementptr inbounds nuw [56 x i8], ptr %i.cck, i64 %.05189.i ; 2 uses
  %i.ccq = load i32, ptr %i.ccp, align 8, !tbaa !84
  %i.ccr = sext i32 %i.ccq to i64                 ; 2 uses
  %i.ccs = getelementptr inbounds nuw [2408 x i8], ptr %i.cce, i64 %i.ccr
  %i.cct = getelementptr inbounds nuw i8, ptr %i.ccs, i64 8
  %i.ccu = load i32, ptr %i.cct, align 8, !tbaa !366
  %i.ccv = getelementptr inbounds nuw i8, ptr %i.ccp, i64 4
  %i.ccw = load i32, ptr %i.ccv, align 4, !tbaa !358
  %i.ccx = mul nsw i32 %i.ccw, %i.ccu             ; 4 uses
  %i.ccy = icmp sgt i32 %i.ccx, 0
  %i.ccz = getelementptr inbounds i8, ptr %i.ccc, i64 %i.ccr ; 2 uses
  %.pre.i366 = load i8, ptr %i.ccz, align 1, !tbaa !306, !range !423 ; 2 uses
  br i1 %i.ccy, label %.lr.ph83.i, label %.critedge.i367

.lr.ph83.i:                                       ; preds = %bb.pn, %._crit_edge.i374
  %i.cda = phi i8 [ %.053.lcssa.i, %._crit_edge.i374 ], [ %.pre.i366, %bb.pn ]
  %.05881.i = phi i32 [ %i.cdl, %._crit_edge.i374 ], [ 0, %bb.pn ] ; 2 uses
  %i.cdb = trunc nuw i8 %i.cda to i1
  br i1 %i.cdb, label %bb.po, label %.critedge.i367

bb.po:                                            ; preds = %.lr.ph83.i
  %i.cdc = add nsw i32 %.05881.i, %.05687.i
  %i.cdd = load i32, ptr %i.k, align 8, !tbaa !64 ; 2 uses
  %i.cde = icmp slt i32 %i.cdd, 1
  br i1 %i.cde, label %._crit_edge.i374, label %.lr.ph79.i

.lr.ph79.i:                                       ; preds = %bb.po
  %i.cdf = load ptr, ptr %i.ii, align 8, !tbaa !65
  %i.cdg = zext nneg i32 %i.cdd to i64
  br label %bb.pp

bb.pp:                                            ; preds = %bb.pp, %.lr.ph79.i
  %indvars.iv.i370 = phi i64 [ 0, %.lr.ph79.i ], [ %indvars.iv.next.i371, %bb.pp ] ; 2 uses
  %i.cdh = getelementptr inbounds nuw [4 x i8], ptr %i.cdf, i64 %indvars.iv.i370
  %i.cdi = load i32, ptr %i.cdh, align 4, !tbaa !30
  %i.cdj = icmp eq i32 %i.cdc, %i.cdi             ; 2 uses
  %indvars.iv.next.i371 = add nuw nsw i64 %indvars.iv.i370, 1 ; 2 uses
  %i.cdk = icmp samesign uge i64 %indvars.iv.next.i371, %i.cdg
  %.not60.i = select i1 %i.cdk, i1 true, i1 %i.cdj
  br i1 %.not60.i, label %._crit_edge.loopexit.i372, label %bb.pp, !llvm.loop !172

._crit_edge.loopexit.i372:                        ; preds = %bb.pp
  %spec.select.i373 = zext i1 %i.cdj to i8
  br label %._crit_edge.i374

._crit_edge.i374:                                 ; preds = %._crit_edge.loopexit.i372, %bb.po
  %.053.lcssa.i = phi i8 [ 0, %bb.po ], [ %spec.select.i373, %._crit_edge.loopexit.i372 ] ; 3 uses
  store i8 %.053.lcssa.i, ptr %i.ccz, align 1, !tbaa !306
  %i.cdl = add nuw nsw i32 %.05881.i, 1           ; 2 uses
  %exitcond.not.i375 = icmp eq i32 %i.cdl, %i.ccx
  br i1 %exitcond.not.i375, label %.critedge.i367, label %.lr.ph83.i, !llvm.loop !173

.critedge.i367:                                   ; preds = %._crit_edge.i374, %.lr.ph83.i, %bb.pn
  %i.cdm = phi i8 [ %.pre.i366, %bb.pn ], [ %.053.lcssa.i, %._crit_edge.i374 ], [ 0, %.lr.ph83.i ]
  %i.cdn = add nsw i32 %i.ccx, %.05687.i
  %i.cdo = trunc nuw i8 %i.cdm to i1
  %i.cdp = select i1 %i.cdo, i32 %i.ccx, i32 0
  %spec.select61.i = add nsw i32 %i.cdp, %.05488.i ; 2 uses
  %i.cdq = add nuw i64 %.05189.i, 1               ; 2 uses
  %exitcond100.not.i = icmp eq i64 %i.cdq, %i.cco
  br i1 %exitcond100.not.i, label %.preheader71.i, label %bb.pn, !llvm.loop !174

._crit_edge96.i:                                  ; preds = %.loopexit.i368, %.preheader71.i
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 924, ptr noundef %i.ccc)
          to label %_ZL9rm_bondedP7t_blockP10gmx_mtop_t.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph95.i:                                       ; preds = %.preheader71.i, %.loopexit.i368
  %.094.i = phi i64 [ %i.cnb, %.loopexit.i368 ], [ 0, %.preheader71.i ] ; 3 uses
  %i.cdr = getelementptr inbounds nuw i8, ptr %i.ccc, i64 %.094.i
  %i.cds = load i8, ptr %i.cdr, align 1, !tbaa !306, !range !423, !noundef !184
  %i.cdt = trunc nuw i8 %i.cds to i1
  br i1 %i.cdt, label %.preheader70.i, label %.loopexit.i368

.preheader70.i:                                   ; preds = %.lr.ph95.i
  %i.cdu = getelementptr inbounds nuw [2408 x i8], ptr %i.cce, i64 %.094.i ; 120 uses
  %i.cdv = getelementptr inbounds nuw i8, ptr %i.cdu, i64 80
  %i.cdw = load ptr, ptr %i.cdv, align 8, !tbaa !312 ; 2 uses
  %i.cdx = getelementptr inbounds nuw i8, ptr %i.cdu, i64 88 ; 2 uses
  %i.cdy = load ptr, ptr %i.cdx, align 8, !tbaa !314
  %.not.i.i.i369 = icmp eq ptr %i.cdy, %i.cdw
  br i1 %.not.i.i.i369, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %.preheader70.i
  store ptr %i.cdw, ptr %i.cdx, align 8, !tbaa !314
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i

_ZNSt6vectorIiSaIiEE5clearEv.exit.i:              ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i, %.preheader70.i
  %i.cdz = getelementptr inbounds nuw i8, ptr %i.cdu, i64 104
  %i.cea = load ptr, ptr %i.cdz, align 8, !tbaa !312 ; 2 uses
  %i.ceb = getelementptr inbounds nuw i8, ptr %i.cdu, i64 112 ; 2 uses
  %i.cec = load ptr, ptr %i.ceb, align 8, !tbaa !314
  %.not.i.i.1.i = icmp eq ptr %i.cec, %i.cea
  br i1 %.not.i.i.1.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.1.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.1.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.1.i:    ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.i
  store ptr %i.cea, ptr %i.ceb, align 8, !tbaa !314
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.1.i

_ZNSt6vectorIiSaIiEE5clearEv.exit.1.i:            ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.1.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i
  %i.ced = getelementptr inbounds nuw i8, ptr %i.cdu, i64 128
  %i.cee = load ptr, ptr %i.ced, align 8, !tbaa !312 ; 2 uses
  %i.cef = getelementptr inbounds nuw i8, ptr %i.cdu, i64 136 ; 2 uses
  %i.ceg = load ptr, ptr %i.cef, align 8, !tbaa !314
  %.not.i.i.2.i = icmp eq ptr %i.ceg, %i.cee
  br i1 %.not.i.i.2.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.2.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.2.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.2.i:    ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.1.i
  store ptr %i.cee, ptr %i.cef, align 8, !tbaa !314
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.2.i

_ZNSt6vectorIiSaIiEE5clearEv.exit.2.i:            ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.2.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.1.i
  %i.ceh = getelementptr inbounds nuw i8, ptr %i.cdu, i64 152
end_hunk_0
