Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/editconf?download=true
inline.NumInlined: 264
inline.NumDeleted: 119
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_Z12gmx_editconfiPPc:bb.a
  %i.bxc = getelementptr inbounds nuw [36 x i8], ptr %i.bwi, i64 %indvars.iv730
  %i.bxd = getelementptr inbounds nuw i8, ptr %i.bxc, i64 132
  %i.bxe = load i32, ptr %i.bxd, align 4, !tbaa !40
  %i.bxf = sext i32 %i.bxe to i64
  %i.bxg = getelementptr inbounds [32 x i8], ptr %i.bwg, i64 %i.bxf
  %i.bxh = getelementptr inbounds nuw i8, ptr %i.bxg, i64 20
  store i8 %.pre758, ptr %i.bxh, align 4, !tbaa !156
  %i.bxi = getelementptr inbounds nuw [36 x i8], ptr %i.bwi, i64 %indvars.iv730
  %i.bxj = getelementptr inbounds nuw i8, ptr %i.bxi, i64 168
  %i.bxk = load i32, ptr %i.bxj, align 4, !tbaa !40
  %i.bxl = sext i32 %i.bxk to i64
  %i.bxm = getelementptr inbounds [32 x i8], ptr %i.bwg, i64 %i.bxl
  %i.bxn = getelementptr inbounds nuw i8, ptr %i.bxm, i64 20
  store i8 %.pre758, ptr %i.bxn, align 4, !tbaa !156
  %i.bxo = getelementptr inbounds nuw [36 x i8], ptr %i.bwi, i64 %indvars.iv730
  %i.bxp = getelementptr inbounds nuw i8, ptr %i.bxo, i64 204
  %i.bxq = load i32, ptr %i.bxp, align 4, !tbaa !40
  %i.bxr = sext i32 %i.bxq to i64
  %i.bxs = getelementptr inbounds [32 x i8], ptr %i.bwg, i64 %i.bxr
  %i.bxt = getelementptr inbounds nuw i8, ptr %i.bxs, i64 20
  store i8 %.pre758, ptr %i.bxt, align 4, !tbaa !156
  %i.bxu = getelementptr inbounds nuw [36 x i8], ptr %i.bwi, i64 %indvars.iv730
  %i.bxv = getelementptr inbounds nuw i8, ptr %i.bxu, i64 240
  %i.bxw = load i32, ptr %i.bxv, align 4, !tbaa !40
  %i.bxx = sext i32 %i.bxw to i64
  %i.bxy = getelementptr inbounds [32 x i8], ptr %i.bwg, i64 %i.bxx
  %i.bxz = getelementptr inbounds nuw i8, ptr %i.bxy, i64 20
  store i8 %.pre758, ptr %i.bxz, align 4, !tbaa !156
  %i.bya = getelementptr inbounds nuw [36 x i8], ptr %i.bwi, i64 %indvars.iv730
  %i.byb = getelementptr inbounds nuw i8, ptr %i.bya, i64 276
  %i.byc = load i32, ptr %i.byb, align 4, !tbaa !40
  %i.byd = sext i32 %i.byc to i64
  %i.bye = getelementptr inbounds [32 x i8], ptr %i.bwg, i64 %i.byd
  %i.byf = getelementptr inbounds nuw i8, ptr %i.bye, i64 20
  store i8 %.pre758, ptr %i.byf, align 4, !tbaa !156
  %indvars.iv.next731.7 = add nuw nsw i64 %indvars.iv730, 8 ; 2 uses
  %niter1349.next.7 = add i64 %niter1349, 8       ; 2 uses
  %niter1349.ncmp.7 = icmp eq i64 %niter1349.next.7, %unroll_iter1348
  br i1 %niter1349.ncmp.7, label %.loopexit562.loopexit.unr-lcssa, label %bb.ku, !llvm.loop !100

.loopexit562.loopexit.unr-lcssa:                  ; preds = %bb.ku
  %lcmp.mod1346.not = icmp eq i64 %xtraiter1344, 0
  br i1 %lcmp.mod1346.not, label %.loopexit562, label %.epil.preheader1343

.epil.preheader1343:                              ; preds = %.loopexit562.loopexit.unr-lcssa, %.lr.ph648
  %indvars.iv730.epil.init = phi i64 [ 0, %.lr.ph648 ], [ %indvars.iv.next731.7, %.loopexit562.loopexit.unr-lcssa ]
  %lcmp.mod1347 = icmp ne i64 %xtraiter1344, 0
  call void @llvm.assume(i1 %lcmp.mod1347)
  br label %bb.kv

bb.kv:                                            ; preds = %bb.kv, %.epil.preheader1343
  %indvars.iv730.epil = phi i64 [ %indvars.iv730.epil.init, %.epil.preheader1343 ], [ %indvars.iv.next731.epil, %bb.kv ] ; 2 uses
  %epil.iter1345 = phi i64 [ 0, %.epil.preheader1343 ], [ %epil.iter1345.next, %bb.kv ]
  %i.byg = getelementptr inbounds nuw [36 x i8], ptr %i.bwi, i64 %indvars.iv730.epil
  %i.byh = getelementptr inbounds nuw i8, ptr %i.byg, i64 24
  %i.byi = load i32, ptr %i.byh, align 4, !tbaa !40
  %i.byj = sext i32 %i.byi to i64
  %i.byk = getelementptr inbounds [32 x i8], ptr %i.bwg, i64 %i.byj
  %i.byl = getelementptr inbounds nuw i8, ptr %i.byk, i64 20
  store i8 %.pre758, ptr %i.byl, align 4, !tbaa !156
  %indvars.iv.next731.epil = add nuw nsw i64 %indvars.iv730.epil, 1
  %epil.iter1345.next = add i64 %epil.iter1345, 1 ; 2 uses
  %epil.iter1345.cmp.not = icmp eq i64 %epil.iter1345.next, %xtraiter1344
  br i1 %epil.iter1345.cmp.not, label %.loopexit562, label %bb.kv, !llvm.loop !101

.loopexit562:                                     ; preds = %.loopexit562.loopexit.unr-lcssa, %bb.kv, %bb.kt
  %i.bym = sext i32 %.pre759 to i64
  %i.byn = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.142, i32 noundef 1377, i64 noundef range(i64 -2147483648, 2147483648) %i.bym, i64 noundef 4)
          to label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit493.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit493.preheader: ; preds = %.loopexit562
  %i.byo = load i32, ptr %12, align 8, !tbaa !125 ; 2 uses
  %i.byp = icmp sgt i32 %i.byo, 0
  br i1 %i.byp, label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit493, label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit493._crit_edge

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit493._crit_edge: ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit493, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit493.preheader
  %.lcssa = phi i32 [ %i.byo, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit493.preheader ], [ %i.byv, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit493 ]
  %i.byq = load ptr, ptr %i.ai, align 8, !tbaa !26
  %i.byr = load ptr, ptr %i.x, align 8, !tbaa !152
  %i.bys = load i32, ptr %i.ac, align 4, !tbaa !130
  invoke void @_Z21write_pdbfile_indexedP8_IO_FILEPKcPK7t_atomsPA3_Kf7PbcTypeS8_ciiPKiP12gmx_conect_tbb(ptr noundef %i.bop, ptr noundef %i.byq, ptr noundef nonnull %12, ptr noundef %i.byr, i32 noundef %i.bys, ptr noundef nonnull %i.ad, i8 noundef signext 32, i32 noundef -1, i32 noundef %.lcssa, ptr noundef %i.byn, ptr noundef %.0304, i1 noundef zeroext %i.boo, i1 noundef zeroext false)
          to label %bb.kw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.kr, %.lr.ph.i506, %.preheader.i, %bb.aq, %bb.az, %bb.bb, %bb.bc, %bb.be, %bb.dr, %._crit_edge631, %bb.gu, %bb.hd, %bb.hh, %bb.hq, %bb.hs, %bb.hy, %bb.ic, %bb.ki, %bb.kk, %bb.kl, %_ZL17set_pdb_conf_bfaciiP7t_atomsiPdPib.exit, %bb.ln, %bb.lo, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit535, %bb.ls, %bb.av, %bb.bw, %bb.dm, %.noexc424, %.noexc425, %.noexc426, %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i, %.noexc428, %bb.gc, %bb.gk, %bb.lp, %bb.lq, %bb.lr, %._crit_edge36.i, %.preheader.preheader.i, %._crit_edge.i503, %.noexc520, %bb.ld, %.noexc518, %.noexc517, %.noexc516, %.noexc515, %.noexc514, %.noexc513, %.noexc512, %.preheader12.i, %bb.kw, %.loopexit562, %_ZL13visualize_boxP8_IO_FILEiiPA3_fPKf.exit, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit493._crit_edge
  %lpad.loopexit.split-lp1273 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit493:       ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit493.preheader, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit493
  %indvars.iv735 = phi i64 [ %indvars.iv.next736, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit493 ], [ 0, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit493.preheader ] ; 3 uses
  %i.byt = getelementptr inbounds nuw [4 x i8], ptr %i.byn, i64 %indvars.iv735
  %i.byu = trunc nuw nsw i64 %indvars.iv735 to i32
  store i32 %i.byu, ptr %i.byt, align 4, !tbaa !11
  %indvars.iv.next736 = add nuw nsw i64 %indvars.iv735, 1 ; 2 uses
  %i.byv = load i32, ptr %12, align 8, !tbaa !125 ; 2 uses
  %i.byw = sext i32 %i.byv to i64
  %i.byx = icmp slt i64 %indvars.iv.next736, %i.byw
  br i1 %i.byx, label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit493, label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit493._crit_edge, !llvm.loop !102

bb.kw:                                            ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit493._crit_edge
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.142, i32 noundef 1384, ptr noundef %i.byn)
          to label %_ZL14gmx_sfree_implIiEvPKcS1_iPT_.exit495 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL14gmx_sfree_implIiEvPKcS1_iPT_.exit495:        ; preds = %bb.kw
  %i.byy = load i8, ptr @_ZZ12gmx_editconfiPPcE7bLegend, align 1, !tbaa !118, !range !23, !noundef !25
  %i.byz = trunc nuw i8 %i.byy to i1
  br i1 %i.byz, label %bb.kx, label %bb.ky

bb.kx:                                            ; preds = %_ZL14gmx_sfree_implIiEvPKcS1_iPT_.exit495
  %i.bza = load i32, ptr %12, align 8, !tbaa !125 ; 15 uses
  %i.bzb = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.bzc = load i32, ptr %i.bzb, align 8, !tbaa !164
  %i.bzd = load ptr, ptr %i.x, align 8, !tbaa !152 ; 3 uses
  %.val399 = load ptr, ptr %i.dt, align 8         ; 3 uses
  %i.bze = icmp sgt i32 %i.bza, 0
  br i1 %i.bze, label %.lr.ph.preheader.i497, label %_ZL10pdb_legendP8_IO_FILEiiP7t_atomsPA3_f.exit

.lr.ph.preheader.i497:                            ; preds = %bb.kx
  %wide.trip.count.i498 = zext nneg i32 %i.bza to i64 ; 2 uses
  %xtraiter1350 = and i64 %wide.trip.count.i498, 1
  %i.bzf = icmp eq i32 %i.bza, 1
  br i1 %i.bzf, label %.lr.ph.i499.epil.preheader, label %.lr.ph.preheader.i497.new

.lr.ph.preheader.i497.new:                        ; preds = %.lr.ph.preheader.i497
  %unroll_iter1358 = and i64 %wide.trip.count.i498, 2147483646
  br label %.lr.ph.i499

.lr.ph.i499:                                      ; preds = %.lr.ph.i499, %.lr.ph.preheader.i497.new
  %indvars.iv.i500 = phi i64 [ 0, %.lr.ph.preheader.i497.new ], [ %indvars.iv.next.i501.1, %.lr.ph.i499 ] ; 4 uses
  %.02433.i = phi float [ 1.000000e+10, %.lr.ph.preheader.i497.new ], [ %.sroa.speculated.i.1, %.lr.ph.i499 ] ; 2 uses
  %.02730.i = phi float [ -1.000000e+10, %.lr.ph.preheader.i497.new ], [ %.sroa.speculated15.i.1, %.lr.ph.i499 ] ; 2 uses
  %.02829.i = phi float [ 1.000000e+10, %.lr.ph.preheader.i497.new ], [ %.sroa.speculated21.i.1, %.lr.ph.i499 ] ; 2 uses
  %i.bzg = phi <2 x float> [ splat (float 1.000000e+10), %.lr.ph.preheader.i497.new ], [ %i.bzw, %.lr.ph.i499 ] ; 2 uses
  %niter1359 = phi i64 [ 0, %.lr.ph.preheader.i497.new ], [ %niter1359.next.1, %.lr.ph.i499 ]
  %i.bzh = getelementptr inbounds nuw [12 x i8], ptr %i.bzd, i64 %indvars.iv.i500 ; 2 uses
  %i.bzi = load <2 x float>, ptr %i.bzh, align 4, !tbaa !35 ; 2 uses
  %i.bzj = fcmp olt <2 x float> %i.bzi, %i.bzg
  %i.bzk = select <2 x i1> %i.bzj, <2 x float> %i.bzi, <2 x float> %i.bzg ; 2 uses
  %i.bzl = getelementptr inbounds nuw i8, ptr %i.bzh, i64 8
  %i.bzm = load float, ptr %i.bzl, align 4, !tbaa !35 ; 2 uses
  %i.bzn = fcmp olt float %i.bzm, %.02433.i
  %.sroa.speculated.i = select i1 %i.bzn, float %i.bzm, float %.02433.i ; 2 uses
  %i.bzo = getelementptr inbounds nuw [52 x i8], ptr %.val399, i64 %indvars.iv.i500
  %i.bzp = getelementptr inbounds nuw i8, ptr %i.bzo, i64 20
  %i.bzq = load float, ptr %i.bzp, align 4, !tbaa !35 ; 4 uses
  %i.bzr = fcmp olt float %i.bzq, %.02829.i
  %.sroa.speculated21.i = select i1 %i.bzr, float %i.bzq, float %.02829.i ; 2 uses
  %i.bzs = fcmp olt float %.02730.i, %i.bzq
  %.sroa.speculated15.i = select i1 %i.bzs, float %i.bzq, float %.02730.i ; 2 uses
  %indvars.iv.next.i501 = or disjoint i64 %indvars.iv.i500, 1 ; 2 uses
  %i.bzt = getelementptr inbounds nuw [12 x i8], ptr %i.bzd, i64 %indvars.iv.next.i501 ; 2 uses
  %i.bzu = load <2 x float>, ptr %i.bzt, align 4, !tbaa !35 ; 2 uses
  %i.bzv = fcmp olt <2 x float> %i.bzu, %i.bzk
  %i.bzw = select <2 x i1> %i.bzv, <2 x float> %i.bzu, <2 x float> %i.bzk ; 3 uses
  %i.bzx = getelementptr inbounds nuw i8, ptr %i.bzt, i64 8
  %i.bzy = load float, ptr %i.bzx, align 4, !tbaa !35 ; 2 uses
  %i.bzz = fcmp olt float %i.bzy, %.sroa.speculated.i
  %.sroa.speculated.i.1 = select i1 %i.bzz, float %i.bzy, float %.sroa.speculated.i ; 3 uses
  %i.caa = getelementptr inbounds nuw [52 x i8], ptr %.val399, i64 %indvars.iv.next.i501
  %i.cab = getelementptr inbounds nuw i8, ptr %i.caa, i64 20
  %i.cac = load float, ptr %i.cab, align 4, !tbaa !35 ; 4 uses
  %i.cad = fcmp olt float %i.cac, %.sroa.speculated21.i
  %.sroa.speculated21.i.1 = select i1 %i.cad, float %i.cac, float %.sroa.speculated21.i ; 3 uses
  %i.cae = fcmp olt float %.sroa.speculated15.i, %i.cac
  %.sroa.speculated15.i.1 = select i1 %i.cae, float %i.cac, float %.sroa.speculated15.i ; 3 uses
  %indvars.iv.next.i501.1 = add nuw nsw i64 %indvars.iv.i500, 2 ; 2 uses
  %niter1359.next.1 = add i64 %niter1359, 2       ; 2 uses
  %niter1359.ncmp.1 = icmp eq i64 %niter1359.next.1, %unroll_iter1358
  br i1 %niter1359.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i499, !llvm.loop !103

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i499
  %lcmp.mod1352.not = icmp eq i64 %xtraiter1350, 0
  br i1 %lcmp.mod1352.not, label %._crit_edge.loopexit.i, label %.lr.ph.i499.epil.preheader

.lr.ph.i499.epil.preheader:                       ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.preheader.i497
  %indvars.iv.i500.epil.init = phi i64 [ 0, %.lr.ph.preheader.i497 ], [ %indvars.iv.next.i501.1, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %.02433.i.epil.init = phi float [ 1.000000e+10, %.lr.ph.preheader.i497 ], [ %.sroa.speculated.i.1, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %.02730.i.epil.init = phi float [ -1.000000e+10, %.lr.ph.preheader.i497 ], [ %.sroa.speculated15.i.1, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %.02829.i.epil.init = phi float [ 1.000000e+10, %.lr.ph.preheader.i497 ], [ %.sroa.speculated21.i.1, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %.epil.init = phi <2 x float> [ splat (float 1.000000e+10), %.lr.ph.preheader.i497 ], [ %i.bzw, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod1357 = trunc i32 %i.bza to i1
  call void @llvm.assume(i1 %lcmp.mod1357)
  %i.caf = getelementptr inbounds nuw [12 x i8], ptr %i.bzd, i64 %indvars.iv.i500.epil.init ; 2 uses
  %i.cag = load <2 x float>, ptr %i.caf, align 4, !tbaa !35 ; 2 uses
  %i.cah = fcmp olt <2 x float> %i.cag, %.epil.init
  %i.cai = select <2 x i1> %i.cah, <2 x float> %i.cag, <2 x float> %.epil.init
  %i.caj = getelementptr inbounds nuw i8, ptr %i.caf, i64 8
  %i.cak = load float, ptr %i.caj, align 4, !tbaa !35 ; 2 uses
  %i.cal = fcmp olt float %i.cak, %.02433.i.epil.init
  %.sroa.speculated.i.epil = select i1 %i.cal, float %i.cak, float %.02433.i.epil.init
  %i.cam = getelementptr inbounds nuw [52 x i8], ptr %.val399, i64 %indvars.iv.i500.epil.init
  %i.can = getelementptr inbounds nuw i8, ptr %i.cam, i64 20
  %i.cao = load float, ptr %i.can, align 4, !tbaa !35 ; 4 uses
  %i.cap = fcmp olt float %i.cao, %.02829.i.epil.init
  %.sroa.speculated21.i.epil = select i1 %i.cap, float %i.cao, float %.02829.i.epil.init
  %i.caq = fcmp olt float %.02730.i.epil.init, %i.cao
  %.sroa.speculated15.i.epil = select i1 %i.caq, float %i.cao, float %.02730.i.epil.init
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i499.epil.preheader
  %.lcssa1263 = phi <2 x float> [ %i.bzw, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.cai, %.lr.ph.i499.epil.preheader ]
  %.sroa.speculated.i.lcssa = phi float [ %.sroa.speculated.i.1, %._crit_edge.loopexit.i.unr-lcssa ], [ %.sroa.speculated.i.epil, %.lr.ph.i499.epil.preheader ]
  %.sroa.speculated21.i.lcssa = phi float [ %.sroa.speculated21.i.1, %._crit_edge.loopexit.i.unr-lcssa ], [ %.sroa.speculated21.i.epil, %.lr.ph.i499.epil.preheader ]
  %.sroa.speculated15.i.lcssa = phi float [ %.sroa.speculated15.i.1, %._crit_edge.loopexit.i.unr-lcssa ], [ %.sroa.speculated15.i.epil, %.lr.ph.i499.epil.preheader ]
  %i.car = fmul <2 x float> %.lcssa1263, <float 1.000000e+00, float 1.000000e+01>
  %i.cas = fpext <2 x float> %i.car to <2 x double>
  %i.cat = fmul float %.sroa.speculated.i.lcssa, 1.000000e+01
  %i.cau = fpext float %i.cat to double
  br label %_ZL10pdb_legendP8_IO_FILEiiP7t_atomsPA3_f.exit

_ZL10pdb_legendP8_IO_FILEiiP7t_atomsPA3_f.exit:   ; preds = %bb.kx, %._crit_edge.loopexit.i
  %.028.lcssa.i = phi float [ 1.000000e+10, %bb.kx ], [ %.sroa.speculated21.i.lcssa, %._crit_edge.loopexit.i ] ; 2 uses
  %.027.lcssa.i = phi float [ -1.000000e+10, %bb.kx ], [ %.sroa.speculated15.i.lcssa, %._crit_edge.loopexit.i ] ; 2 uses
  %.024.lcssa.i = phi double [ f0x42374876E0000000, %bb.kx ], [ %i.cau, %._crit_edge.loopexit.i ] ; 11 uses
  %i.cav = phi <2 x double> [ <double 1.000000e+10, double f0x42374876E0000000>, %bb.kx ], [ %i.cas, %._crit_edge.loopexit.i ] ; 3 uses
  %i.caw = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.cax = fpext float %.028.lcssa.i to double    ; 5 uses
  %i.cay = fpext float %.027.lcssa.i to double
  %i.caz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.caw, ptr noundef nonnull @.str.216, double noundef %i.cax, double noundef %i.cay) #25 ; 0 uses
  %i.cba = add nsw i32 %i.bzc, 1                  ; 11 uses
  %i.cbb = fsub float %.027.lcssa.i, %.028.lcssa.i
  %i.cbc = add nsw i32 %i.bza, 2
  %i.cbd = extractelement <2 x double> %i.cav, i64 0 ; 3 uses
  %i.cbe = extractelement <2 x double> %i.cav, i64 1 ; 11 uses
  %i.cbf = add nsw i32 %i.bza, 3
  %i.cbg = add nsw i32 %i.bza, 4
  %i.cbh = add nsw i32 %i.bza, 5
  %i.cbi = shufflevector <2 x double> %i.cav, <2 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cbj = fadd <4 x double> %i.cbi, <double 1.200000e-01, double 2.400000e-01, double 3.600000e-01, double 4.800000e-01>
  %i.cbk = fmul <4 x double> %i.cbj, splat (double 1.000000e+01) ; 4 uses
  %i.cbl = add nsw i32 %i.bza, 6
  %i.cbm = add nsw i32 %i.bza, 7
  %i.cbn = add nsw i32 %i.bza, 8
  %i.cbo = add nsw i32 %i.bza, 9
  %i.cbp = fadd <4 x double> %i.cbi, <double 6.000000e-01, double f0x3FE70A3D70A3D70A, double 8.400000e-01, double f0x3FEEB851EB851EB8>
  %i.cbq = fmul <4 x double> %i.cbp, splat (double 1.000000e+01) ; 4 uses
  %i.cbr = fpext float %i.cbb to double           ; 3 uses
  %i.cbs = insertelement <8 x double> poison, double %i.cbr, i64 0
  %i.cbt = shufflevector <8 x double> %i.cbs, <8 x double> poison, <8 x i32> zeroinitializer
  %i.cbu = fmul <8 x double> %i.cbt, <double 0.000000e+00, double 1.000000e+00, double 2.000000e+00, double 3.000000e+00, double 4.000000e+00, double 5.000000e+00, double 6.000000e+00, double 7.000000e+00>
  %i.cbv = fdiv <8 x double> %i.cbu, splat (double 1.000000e+01) ; 2 uses
  %i.cbw = shufflevector <8 x double> %i.cbv, <8 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cbx = insertelement <4 x double> poison, double %i.cax, i64 0
  %i.cby = shufflevector <4 x double> %i.cbx, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cbz = fadd <4 x double> %i.cbw, %i.cby       ; 4 uses
  %i.cca = extractelement <4 x double> %i.cbz, i64 0
  %i.ccb = extractelement <4 x double> %i.cbk, i64 0
  %i.ccc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bop, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef %i.cbc, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, i32 noundef 32, i32 noundef %i.cba, i32 noundef 32, double noundef %i.ccb, double noundef %i.cbe, double noundef %.024.lcssa.i, double noundef 1.000000e+00, double noundef %i.cca) #20 ; 0 uses
  %i.ccd = extractelement <4 x double> %i.cbz, i64 1
  %i.cce = extractelement <4 x double> %i.cbk, i64 1
  %i.ccf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bop, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef %i.cbf, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, i32 noundef 32, i32 noundef %i.cba, i32 noundef 32, double noundef %i.cce, double noundef %i.cbe, double noundef %.024.lcssa.i, double noundef 1.000000e+00, double noundef %i.ccd) #20 ; 0 uses
  %i.ccg = extractelement <4 x double> %i.cbz, i64 2
  %i.cch = extractelement <4 x double> %i.cbk, i64 2
  %i.cci = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bop, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef %i.cbg, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, i32 noundef 32, i32 noundef %i.cba, i32 noundef 32, double noundef %i.cch, double noundef %i.cbe, double noundef %.024.lcssa.i, double noundef 1.000000e+00, double noundef %i.ccg) #20 ; 0 uses
  %i.ccj = extractelement <4 x double> %i.cbz, i64 3
  %i.cck = extractelement <4 x double> %i.cbk, i64 3
  %i.ccl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bop, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef %i.cbh, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, i32 noundef 32, i32 noundef %i.cba, i32 noundef 32, double noundef %i.cck, double noundef %i.cbe, double noundef %.024.lcssa.i, double noundef 1.000000e+00, double noundef %i.ccj) #20 ; 0 uses
  %i.ccm = shufflevector <8 x double> %i.cbv, <8 x double> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ccn = fadd <4 x double> %i.ccm, %i.cby       ; 4 uses
  %i.cco = extractelement <4 x double> %i.ccn, i64 0
  %i.ccp = extractelement <4 x double> %i.cbq, i64 0
  %i.ccq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bop, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef %i.cbl, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, i32 noundef 32, i32 noundef %i.cba, i32 noundef 32, double noundef %i.ccp, double noundef %i.cbe, double noundef %.024.lcssa.i, double noundef 1.000000e+00, double noundef %i.cco) #20 ; 0 uses
  %i.ccr = extractelement <4 x double> %i.ccn, i64 1
  %i.ccs = extractelement <4 x double> %i.cbq, i64 1
  %i.cct = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bop, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef %i.cbm, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, i32 noundef 32, i32 noundef %i.cba, i32 noundef 32, double noundef %i.ccs, double noundef %i.cbe, double noundef %.024.lcssa.i, double noundef 1.000000e+00, double noundef %i.ccr) #20 ; 0 uses
  %i.ccu = extractelement <4 x double> %i.ccn, i64 2
  %i.ccv = extractelement <4 x double> %i.cbq, i64 2
  %i.ccw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bop, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef %i.cbn, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, i32 noundef 32, i32 noundef %i.cba, i32 noundef 32, double noundef %i.ccv, double noundef %i.cbe, double noundef %.024.lcssa.i, double noundef 1.000000e+00, double noundef %i.ccu) #20 ; 0 uses
  %i.ccx = extractelement <4 x double> %i.ccn, i64 3
  %i.ccy = extractelement <4 x double> %i.cbq, i64 3
  %i.ccz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bop, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef %i.cbo, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, i32 noundef 32, i32 noundef %i.cba, i32 noundef 32, double noundef %i.ccy, double noundef %i.cbe, double noundef %.024.lcssa.i, double noundef 1.000000e+00, double noundef %i.ccx) #20 ; 0 uses
  %i.cda = add nsw i32 %i.bza, 10
  %i.cdb = fadd double %i.cbd, 1.080000e+00
  %i.cdc = fmul double %i.cdb, 1.000000e+01
  %i.cdd = fmul double %i.cbr, 8.000000e+00
  %i.cde = fdiv double %i.cdd, 1.000000e+01
  %i.cdf = fadd double %i.cde, %i.cax
  %i.cdg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bop, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef %i.cda, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, i32 noundef 32, i32 noundef %i.cba, i32 noundef 32, double noundef %i.cdc, double noundef %i.cbe, double noundef %.024.lcssa.i, double noundef 1.000000e+00, double noundef %i.cdf) #20 ; 0 uses
  %i.cdh = add nsw i32 %i.bza, 11
  %i.cdi = fadd double %i.cbd, 1.200000e+00
  %i.cdj = fmul double %i.cdi, 1.000000e+01
  %i.cdk = add nsw i32 %i.bza, 12
  %i.cdl = fadd double %i.cbd, f0x3FF51EB851EB851E
  %i.cdm = fmul double %i.cdl, 1.000000e+01
  %i.cdn = insertelement <2 x double> poison, double %i.cbr, i64 0
  %i.cdo = shufflevector <2 x double> %i.cdn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cdp = fmul <2 x double> %i.cdo, <double 9.000000e+00, double 1.000000e+01>
  %i.cdq = fdiv <2 x double> %i.cdp, splat (double 1.000000e+01) ; 2 uses
  %i.cdr = extractelement <2 x double> %i.cdq, i64 0
  %i.cds = fadd double %i.cdr, %i.cax
  %i.cdt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bop, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef %i.cdh, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, i32 noundef 32, i32 noundef %i.cba, i32 noundef 32, double noundef %i.cdj, double noundef %i.cbe, double noundef %.024.lcssa.i, double noundef 1.000000e+00, double noundef %i.cds) #20 ; 0 uses
  %i.cdu = extractelement <2 x double> %i.cdq, i64 1
  %i.cdv = fadd double %i.cdu, %i.cax
  %i.cdw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bop, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef %i.cdk, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, i32 noundef 32, i32 noundef %i.cba, i32 noundef 32, double noundef %i.cdm, double noundef %i.cbe, double noundef %.024.lcssa.i, double noundef 1.000000e+00, double noundef %i.cdv) #20 ; 0 uses
  br label %bb.ky

bb.ky:                                            ; preds = %_ZL10pdb_legendP8_IO_FILEiiP7t_atomsPA3_f.exit, %_ZL14gmx_sfree_implIiEvPKcS1_iPT_.exit495
  %i.cdx = load float, ptr @_ZZ12gmx_editconfiPPcE6visbox, align 4, !tbaa !35 ; 2 uses
  %i.cdy = fcmp ogt float %i.cdx, 0.000000e+00
  br i1 %i.cdy, label %bb.kz, label %_ZL13visualize_boxP8_IO_FILEiiPA3_fPKf.exit

bb.kz:                                            ; preds = %bb.ky
  %i.cdz = load i8, ptr @_ZZ12gmx_editconfiPPcE7bLegend, align 1, !tbaa !118, !range !23, !noundef !25
  %i.cea = trunc nuw i8 %i.cdz to i1              ; 2 uses
  %i.ceb = load i32, ptr %12, align 8             ; 2 uses
  %i.cec = add nsw i32 %i.ceb, 12
  %i.ced = select i1 %i.cea, i32 %i.cec, i32 %i.ceb ; 8 uses
  %i.cee = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  br i1 %i.cea, label %bb.la, label %bb.lb

bb.la:                                            ; preds = %bb.kz
  store i32 12, ptr %i.cee, align 8, !tbaa !164
  br label %bb.lc

bb.lb:                                            ; preds = %bb.kz
  %i.cef = load i32, ptr %i.cee, align 8, !tbaa !164
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lb, %bb.la
  %i.ceg = phi i32 [ 12, %bb.la ], [ %i.cef, %bb.lb ] ; 8 uses
  %i.ceh = add nsw i32 %i.ced, 1                  ; 6 uses
  %i.cei = add nsw i32 %i.ceg, 1                  ; 2 uses
  %i.cej = call float @llvm.rint.f32(float %i.cdx)
  %i.cek = fptosi float %i.cej to i32             ; 3 uses
  %i.cel = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_editconfiPPcE6visbox, i64 4), align 4, !tbaa !35
  %i.cem = call float @llvm.rint.f32(float %i.cel)
  %i.cen = fptosi float %i.cem to i32             ; 3 uses
  %i.ceo = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_editconfiPPcE6visbox, i64 8), align 4, !tbaa !35
  %i.cep = call float @llvm.rint.f32(float %i.ceo)
  %i.ceq = fptosi float %i.cep to i32             ; 3 uses
  %i.cer = mul i32 %i.cen, %i.cek
  %i.ces = mul i32 %i.cer, %i.ceq                 ; 3 uses
  %i.cet = getelementptr inbounds nuw i8, ptr %i.ad, i64 12 ; 2 uses
  %i.ceu = load float, ptr %i.cet, align 4, !tbaa !35
  %i.cev = fcmp une float %i.ceu, 0.000000e+00
  %i.cew = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  %i.cex = load float, ptr %i.cew, align 8
  %i.cey = fcmp une float %i.cex, 0.000000e+00
  %or.cond556 = select i1 %i.cev, i1 true, i1 %i.cey
  %i.cez = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  %i.cfa = load float, ptr %i.cez, align 4
  %i.cfb = fcmp une float %i.cfa, 0.000000e+00
  %or.cond559 = select i1 %or.cond556, i1 true, i1 %i.cfb
  br i1 %or.cond559, label %bb.ld, label %.preheader12.i

.preheader12.i:                                   ; preds = %bb.lc
  %i.cfc = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 8 uses
  %i.cfd = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 8 uses
  %i.cfe = load float, ptr %i.ad, align 16, !tbaa !35
  %i.cff = fmul float %i.cfe, 0.000000e+00
  %i.cfg = load float, ptr %i.cfc, align 16, !tbaa !35
  %i.cfh = fmul float %i.cfg, 0.000000e+00
  %i.cfi = load float, ptr %i.cfd, align 16, !tbaa !35
  %i.cfj = fmul float %i.cfi, 0.000000e+00
  %i.cfk = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.bop, i32 noundef 0, i32 noundef %i.ceh, ptr noundef nonnull @.str.201, i8 noundef signext 32, ptr noundef nonnull @.str.222, i8 noundef signext 75, i32 noundef %i.cei, i8 noundef signext 32, float noundef %i.cff, float noundef %i.cfh, float noundef %i.cfj, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.73)
          to label %.noexc512 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc512:                                        ; preds = %.preheader12.i
  %i.cfl = add nsw i32 %i.ced, 2                  ; 4 uses
  %i.cfm = add nsw i32 %i.ceg, 2
  %i.cfn = load float, ptr %i.ad, align 16, !tbaa !35
  %i.cfo = fmul float %i.cfn, 1.000000e+01
  %i.cfp = load float, ptr %i.cfc, align 16, !tbaa !35
  %i.cfq = fmul float %i.cfp, 0.000000e+00
  %i.cfr = load float, ptr %i.cfd, align 16, !tbaa !35
  %i.cfs = fmul float %i.cfr, 0.000000e+00
  %i.cft = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.bop, i32 noundef 0, i32 noundef %i.cfl, ptr noundef nonnull @.str.201, i8 noundef signext 32, ptr noundef nonnull @.str.222, i8 noundef signext 75, i32 noundef %i.cfm, i8 noundef signext 32, float noundef %i.cfo, float noundef %i.cfq, float noundef %i.cfs, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.73)
          to label %.noexc513 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc513:                                        ; preds = %.noexc512
  %i.cfu = add nsw i32 %i.ced, 3                  ; 4 uses
  %i.cfv = add nsw i32 %i.ceg, 3
  %i.cfw = load float, ptr %i.ad, align 16, !tbaa !35
  %i.cfx = fmul float %i.cfw, 0.000000e+00
  %i.cfy = load float, ptr %i.cfc, align 16, !tbaa !35
  %i.cfz = fmul float %i.cfy, 1.000000e+01
  %i.cga = load float, ptr %i.cfd, align 16, !tbaa !35
  %i.cgb = fmul float %i.cga, 0.000000e+00
  %i.cgc = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.bop, i32 noundef 0, i32 noundef %i.cfu, ptr noundef nonnull @.str.201, i8 noundef signext 32, ptr noundef nonnull @.str.222, i8 noundef signext 75, i32 noundef %i.cfv, i8 noundef signext 32, float noundef %i.cfx, float noundef %i.cfz, float noundef %i.cgb, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.73)
          to label %.noexc514 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc514:                                        ; preds = %.noexc513
  %i.cgd = add nsw i32 %i.ced, 4                  ; 4 uses
  %i.cge = add nsw i32 %i.ceg, 4
  %i.cgf = load float, ptr %i.ad, align 16, !tbaa !35
  %i.cgg = fmul float %i.cgf, 1.000000e+01
  %i.cgh = load float, ptr %i.cfc, align 16, !tbaa !35
  %i.cgi = fmul float %i.cgh, 1.000000e+01
  %i.cgj = load float, ptr %i.cfd, align 16, !tbaa !35
  %i.cgk = fmul float %i.cgj, 0.000000e+00
  %i.cgl = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.bop, i32 noundef 0, i32 noundef %i.cgd, ptr noundef nonnull @.str.201, i8 noundef signext 32, ptr noundef nonnull @.str.222, i8 noundef signext 75, i32 noundef %i.cge, i8 noundef signext 32, float noundef %i.cgg, float noundef %i.cgi, float noundef %i.cgk, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.73)
          to label %.noexc515 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc515:                                        ; preds = %.noexc514
  %i.cgm = add nsw i32 %i.ced, 5                  ; 4 uses
  %i.cgn = add nsw i32 %i.ceg, 5
  %i.cgo = load float, ptr %i.ad, align 16, !tbaa !35
  %i.cgp = fmul float %i.cgo, 0.000000e+00
  %i.cgq = load float, ptr %i.cfc, align 16, !tbaa !35
  %i.cgr = fmul float %i.cgq, 0.000000e+00
  %i.cgs = load float, ptr %i.cfd, align 16, !tbaa !35
  %i.cgt = fmul float %i.cgs, 1.000000e+01
  %i.cgu = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.bop, i32 noundef 0, i32 noundef %i.cgm, ptr noundef nonnull @.str.201, i8 noundef signext 32, ptr noundef nonnull @.str.222, i8 noundef signext 75, i32 noundef %i.cgn, i8 noundef signext 32, float noundef %i.cgp, float noundef %i.cgr, float noundef %i.cgt, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.73)
          to label %.noexc516 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc516:                                        ; preds = %.noexc515
end_hunk_0
