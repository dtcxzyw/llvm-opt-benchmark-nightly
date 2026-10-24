Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/resourcedivision?download=true
inline.NumInlined: 369
inline.NumDeleted: 202
begin_hunk_0_@_Z16get_nthreads_mpiPK13gmx_hw_info_tP12gmx_hw_opt_tibbPK10t_inputrecRK10gmx_mtop_tRKN3gmx8MDLoggerEb:bb.a
.thread.i.i:                                      ; preds = %bb.at, %bb.as
  br label %_ZL19nthreads_omp_fasterRKN3gmx7CpuInfoEb.exit.i

_ZL19nthreads_omp_fasterRKN3gmx7CpuInfoEb.exit.i: ; preds = %.thread.i.i, %bb.at, %bb.as, %_ZNK3gmx7CpuInfo7featureENS0_7FeatureE.exit.thread.i.i, %_ZNK3gmx7CpuInfo7featureENS0_7FeatureE.exit.i.i
  %.0.i.i = phi i32 [ 16, %.thread.i.i ], [ 32, %_ZNK3gmx7CpuInfo7featureENS0_7FeatureE.exit.i.i ], [ 24, %_ZNK3gmx7CpuInfo7featureENS0_7FeatureE.exit.thread.i.i ], [ 32, %bb.as ], [ 32, %bb.at ]
  %i.dv = icmp samesign ugt i32 %., %.0.i.i
  br i1 %i.dv, label %.critedge.peel.begin.i, label %bb.au

bb.au:                                            ; preds = %_ZL19nthreads_omp_fasterRKN3gmx7CpuInfoEb.exit.i
  %.not48.i = icmp eq i32 %i.cv, 1
  br i1 %.not48.i, label %_ZL28get_tmpi_omp_thread_divisionPK13gmx_hw_info_tRK12gmx_hw_opt_tii.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dw = udiv i32 %., %2
  %i.dx = icmp samesign ugt i32 %i.dw, 6
  br i1 %i.dx, label %.critedge.peel.begin.i, label %_ZL28get_tmpi_omp_thread_divisionPK13gmx_hw_info_tRK12gmx_hw_opt_tii.exit

.critedge.peel.begin.i:                           ; preds = %bb.av, %_ZL19nthreads_omp_fasterRKN3gmx7CpuInfoEb.exit.i
  %i.dy = insertelement <2 x i32> poison, i32 %i.cv, i64 0
  %i.dz = shufflevector <2 x i32> %i.dy, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ea = mul nuw nsw <2 x i32> %i.dz, <i32 2, i32 3> ; 3 uses
  %i.eb = insertelement <2 x i32> poison, i32 %., i64 0
  %i.ec = shufflevector <2 x i32> %i.eb, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ed = udiv <2 x i32> %i.ec, %i.ea             ; 3 uses
  %i.ee = extractelement <2 x i32> %i.ed, i64 0
  %i.ef = icmp samesign ugt i32 %i.ee, 6
  br i1 %i.ef, label %.critedge.backedge.peel.i, label %bb.aw

bb.aw:                                            ; preds = %.critedge.peel.begin.i
  %i.eg = extractelement <2 x i32> %i.ed, i64 1
  %i.eh = icmp samesign ugt i32 %i.eg, 1
  %i.ei = extractelement <2 x i32> %i.ea, i64 0   ; 3 uses
  br i1 %i.eh, label %bb.ax, label %_ZL28get_tmpi_omp_thread_divisionPK13gmx_hw_info_tRK12gmx_hw_opt_tii.exit

bb.ax:                                            ; preds = %bb.aw
  %i.ej = urem i32 %., %i.ei
  %.not49.peel.i = icmp eq i32 %i.ej, 0
  br i1 %.not49.peel.i, label %_ZL28get_tmpi_omp_thread_divisionPK13gmx_hw_info_tRK12gmx_hw_opt_tii.exit, label %.critedge.backedge.peel.i

.critedge.backedge.peel.i:                        ; preds = %bb.ax, %.critedge.peel.begin.i
  %i.ek = extractelement <2 x i32> %i.ed, i64 1
  %i.el = icmp samesign ugt i32 %i.ek, 6
  br i1 %i.el, label %.critedge.backedge.i.preheader, label %bb.ay

bb.ay:                                            ; preds = %.critedge.backedge.peel.i
  %i.em = shl nuw nsw i32 %i.cv, 2
  %i.en = udiv i32 %., %i.em
  %i.eo = icmp samesign ugt i32 %i.en, 1
  %i.ep = extractelement <2 x i32> %i.ea, i64 1   ; 3 uses
  br i1 %i.eo, label %bb.az, label %_ZL28get_tmpi_omp_thread_divisionPK13gmx_hw_info_tRK12gmx_hw_opt_tii.exit

bb.az:                                            ; preds = %bb.ay
  %i.eq = urem i32 %., %i.ep
  %.not49.peel7.i = icmp eq i32 %i.eq, 0
  br i1 %.not49.peel7.i, label %_ZL28get_tmpi_omp_thread_divisionPK13gmx_hw_info_tRK12gmx_hw_opt_tii.exit, label %.critedge.backedge.i.preheader

.critedge.backedge.i.preheader:                   ; preds = %bb.az, %.critedge.backedge.peel.i
  br label %.critedge.backedge.i

.critedge.backedge.i:                             ; preds = %.critedge.backedge.i.preheader, %bb.ba
  %.0.i = phi i32 [ %i.er, %bb.ba ], [ 3, %.critedge.backedge.i.preheader ] ; 2 uses
  %i.er = add nuw nsw i32 %.0.i, 1                ; 2 uses
  %i.es = mul nuw nsw i32 %i.er, %i.cv            ; 3 uses
  %i.et = add nuw nsw i32 %.0.i, 2
  %i.eu = mul nuw nsw i32 %i.et, %i.cv
  %i.ev = udiv i32 %., %i.eu
  %i.ew = icmp samesign ugt i32 %i.ev, 1
  br i1 %i.ew, label %bb.ba, label %_ZL28get_tmpi_omp_thread_divisionPK13gmx_hw_info_tRK12gmx_hw_opt_tii.exit

bb.ba:                                            ; preds = %.critedge.backedge.i
  %i.ex = urem i32 %., %i.es
  %.not49.i = icmp eq i32 %i.ex, 0
  br i1 %.not49.i, label %_ZL28get_tmpi_omp_thread_divisionPK13gmx_hw_info_tRK12gmx_hw_opt_tii.exit, label %.critedge.backedge.i, !llvm.loop !299

bb.bb:                                            ; preds = %bb.aj
  br i1 %i.cz, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ey = udiv i32 %., %.val126
  %.sroa.speculated.i = call i32 @llvm.umax.i32(i32 %i.ey, i32 1)
  br label %_ZL28get_tmpi_omp_thread_divisionPK13gmx_hw_info_tRK12gmx_hw_opt_tii.exit

bb.bd:                                            ; preds = %bb.bb
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cx, i64 4 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !202
  %i.fb = icmp eq i32 %i.fa, 1
  br i1 %i.fb, label %bb.be, label %_ZNK3gmx7CpuInfo7featureENS0_7FeatureE.exit.thread.i50.i

bb.be:                                            ; preds = %bb.bd
  %i.fc = getelementptr inbounds nuw i8, ptr %i.cx, i64 72
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !203 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.cx, i64 64 ; 2 uses
  %.not10.i.i.i.i.i54.i = icmp eq ptr %i.fd, null
  br i1 %.not10.i.i.i.i.i54.i, label %_ZNK3gmx7CpuInfo7featureENS0_7FeatureE.exit.thread.i50.i, label %.lr.ph.i.i.i.i.i55.i

.lr.ph.i.i.i.i.i55.i:                             ; preds = %bb.be, %.lr.ph.i.i.i.i.i55.i
  %.012.i.i.i.i.i56.i = phi ptr [ %.1.i.i.i.i.i61.i, %.lr.ph.i.i.i.i.i55.i ], [ %i.fd, %bb.be ] ; 3 uses
  %.0811.i.i.i.i.i57.i = phi ptr [ %.19.i.i.i.i.i58.i, %.lr.ph.i.i.i.i.i55.i ], [ %i.fe, %bb.be ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i56.i, i64 32
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !205
  %i.fh = icmp slt i32 %i.fg, 3                   ; 2 uses
  %.19.i.i.i.i.i58.i = select i1 %i.fh, ptr %.0811.i.i.i.i.i57.i, ptr %.012.i.i.i.i.i56.i ; 3 uses
  %.1.in.v.i.i.i.i.i59.i = select i1 %i.fh, i64 24, i64 16
  %.1.in.i.i.i.i.i60.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i56.i, i64 %.1.in.v.i.i.i.i.i59.i
  %.1.i.i.i.i.i61.i = load ptr, ptr %.1.in.i.i.i.i.i60.i, align 8, !tbaa !206 ; 2 uses
  %.not.i.i.i.i.i62.i = icmp eq ptr %.1.i.i.i.i.i61.i, null
  br i1 %.not.i.i.i.i.i62.i, label %_ZNKSt8_Rb_treeIN3gmx7CpuInfo7FeatureES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i.i63.i, label %.lr.ph.i.i.i.i.i55.i, !llvm.loop !2

_ZNKSt8_Rb_treeIN3gmx7CpuInfo7FeatureES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i.i63.i: ; preds = %.lr.ph.i.i.i.i.i55.i
  %i.fi = icmp eq ptr %.19.i.i.i.i.i58.i, %i.fe
  br i1 %i.fi, label %_ZNK3gmx7CpuInfo7featureENS0_7FeatureE.exit.thread.i50.i, label %_ZNK3gmx7CpuInfo7featureENS0_7FeatureE.exit.i64.i

_ZNK3gmx7CpuInfo7featureENS0_7FeatureE.exit.i64.i: ; preds = %_ZNKSt8_Rb_treeIN3gmx7CpuInfo7FeatureES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i.i63.i
  %i.fj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i58.i, i64 32
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !205
  %i.fl = icmp slt i32 %i.fk, 4
  br i1 %i.fl, label %_ZL19nthreads_omp_fasterRKN3gmx7CpuInfoEb.exit65.i, label %_ZNK3gmx7CpuInfo7featureENS0_7FeatureE.exit.thread.i50.i

_ZNK3gmx7CpuInfo7featureENS0_7FeatureE.exit.thread.i50.i: ; preds = %_ZNK3gmx7CpuInfo7featureENS0_7FeatureE.exit.i64.i, %_ZNKSt8_Rb_treeIN3gmx7CpuInfo7FeatureES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i.i63.i, %bb.be, %bb.bd
  %i.fm = call noundef zeroext i1 @_ZN3gmx15cpuIsX86NehalemERKNS_7CpuInfoE(ptr noundef nonnull align 8 dereferenceable(128) %i.cx)
  br i1 %i.fm, label %_ZL19nthreads_omp_fasterRKN3gmx7CpuInfoEb.exit65.i, label %bb.bf

bb.bf:                                            ; preds = %_ZNK3gmx7CpuInfo7featureENS0_7FeatureE.exit.thread.i50.i
  %i.fn = load i32, ptr %i.ez, align 4, !tbaa !202
  switch i32 %i.fn, label %.thread.i53.i [
    i32 2, label %bb.bg
    i32 7, label %_ZL19nthreads_omp_fasterRKN3gmx7CpuInfoEb.exit65.i
  ]

bb.bg:                                            ; preds = %bb.bf
  %i.fo = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !207
  %i.fq = icmp sgt i32 %i.fp, 22
  br i1 %i.fq, label %_ZL19nthreads_omp_fasterRKN3gmx7CpuInfoEb.exit65.i, label %.thread.i53.i

.thread.i53.i:                                    ; preds = %bb.bg, %bb.bf
  br label %_ZL19nthreads_omp_fasterRKN3gmx7CpuInfoEb.exit65.i

_ZL19nthreads_omp_fasterRKN3gmx7CpuInfoEb.exit65.i: ; preds = %.thread.i53.i, %bb.bg, %bb.bf, %_ZNK3gmx7CpuInfo7featureENS0_7FeatureE.exit.thread.i50.i, %_ZNK3gmx7CpuInfo7featureENS0_7FeatureE.exit.i64.i
  %.0.i51.i = phi i32 [ 8, %.thread.i53.i ], [ 16, %_ZNK3gmx7CpuInfo7featureENS0_7FeatureE.exit.i64.i ], [ 12, %_ZNK3gmx7CpuInfo7featureENS0_7FeatureE.exit.thread.i50.i ], [ 16, %bb.bf ], [ 16, %bb.bg ]
  %.not.i = icmp samesign ugt i32 %., %.0.i51.i
  %..i = select i1 %.not.i, i32 %., i32 1
  br label %_ZL28get_tmpi_omp_thread_divisionPK13gmx_hw_info_tRK12gmx_hw_opt_tii.exit

_ZL28get_tmpi_omp_thread_divisionPK13gmx_hw_info_tRK12gmx_hw_opt_tii.exit: ; preds = %.critedge.backedge.i, %bb.ba, %.preheader.i, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.bc, %_ZL19nthreads_omp_fasterRKN3gmx7CpuInfoEb.exit65.i
  %.1.i = phi i32 [ %..i, %_ZL19nthreads_omp_fasterRKN3gmx7CpuInfoEb.exit65.i ], [ %., %.preheader.i ], [ %2, %bb.av ], [ %2, %bb.au ], [ %.sroa.speculated.i, %bb.bc ], [ %i.ep, %bb.ay ], [ %i.ep, %bb.az ], [ %i.ei, %bb.aw ], [ %i.ei, %bb.ax ], [ %i.es, %bb.ba ], [ %i.es, %.critedge.backedge.i ] ; 2 uses
  %i.fr = load i32, ptr %i.m, align 4, !tbaa !127
  switch i32 %i.fr, label %bb.bh [
    i32 5, label %bb.bi
    i32 7, label %bb.bi
    i32 8, label %bb.bi
  ]

bb.bh:                                            ; preds = %_ZL28get_tmpi_omp_thread_divisionPK13gmx_hw_info_tRK12gmx_hw_opt_tii.exit
  %.121 = select i1 %i.cy, i32 900, i32 90
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %_ZL28get_tmpi_omp_thread_divisionPK13gmx_hw_info_tRK12gmx_hw_opt_tii.exit, %_ZL28get_tmpi_omp_thread_divisionPK13gmx_hw_info_tRK12gmx_hw_opt_tii.exit, %_ZL28get_tmpi_omp_thread_divisionPK13gmx_hw_info_tRK12gmx_hw_opt_tii.exit
  %.093 = phi i32 [ 1, %_ZL28get_tmpi_omp_thread_divisionPK13gmx_hw_info_tRK12gmx_hw_opt_tii.exit ], [ %.121, %bb.bh ], [ 1, %_ZL28get_tmpi_omp_thread_divisionPK13gmx_hw_info_tRK12gmx_hw_opt_tii.exit ], [ 1, %_ZL28get_tmpi_omp_thread_divisionPK13gmx_hw_info_tRK12gmx_hw_opt_tii.exit ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %6, i64 176
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !263 ; 2 uses
  %i.fu = sdiv i32 %i.ft, %.1.i
  %i.fv = icmp slt i32 %i.fu, %.093
  br i1 %i.fv, label %bb.bj, label %bb.bw

bb.bj:                                            ; preds = %bb.bi
  %i.fw = sdiv i32 %i.ft, %.093
  %.sroa.speculated149 = call i32 @llvm.smax.i32(i32 %i.fw, i32 1) ; 4 uses
  %i.fx = call fastcc noundef zeroext i1 @_ZL22gmxSmtIsUsedOnAllCoresRKN3gmx16HardwareTopologyE(ptr noundef nonnull align 8 dereferenceable(228) %i.c)
  br i1 %i.fx, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.fy = lshr i32 %i.cq, 1
  %i.fz = icmp slt i32 %.sroa.speculated149, %i.cq
  %i.ga = call i32 @llvm.umin.i32(i32 %.sroa.speculated149, i32 %i.fy)
  %spec.select = select i1 %i.fz, i32 %i.ga, i32 %.sroa.speculated149
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.079 = phi i32 [ %spec.select, %bb.bk ], [ %.sroa.speculated149, %bb.bj ] ; 2 uses
  %i.gb = load i32, ptr %1, align 8, !tbaa !188   ; 3 uses
  %i.gc = icmp sgt i32 %i.gb, 0
  br i1 %i.gc, label %.lr.ph.split.us, label %.critedge

.lr.ph.split.us:                                  ; preds = %bb.bl, %.lr.ph.split.us
  %.1158.us = phi i32 [ %i.ge, %.lr.ph.split.us ], [ %.079, %bb.bl ] ; 3 uses
  %i.gd = srem i32 %i.gb, %.1158.us
  %.not.us = icmp eq i32 %i.gd, 0
  %i.ge = add nsw i32 %.1158.us, -1
  br i1 %.not.us, label %.critedge, label %.lr.ph.split.us

.critedge:                                        ; preds = %.lr.ph.split.us, %bb.bl
  %.1.lcssa = phi i32 [ %.079, %bb.bl ], [ %.1158.us, %.lr.ph.split.us ] ; 5 uses
  %i.gf = icmp sgt i32 %.1.lcssa, 5
  br i1 %i.gf, label %.preheader, label %bb.bn

.preheader:                                       ; preds = %.critedge, %.preheader
  %.0 = phi i32 [ %i.gh, %.preheader ], [ 2, %.critedge ] ; 4 uses
  %i.gg = mul nuw nsw i32 %.0, 6
  %.not109 = icmp samesign ugt i32 %i.gg, %.1.lcssa
  %i.gh = shl nuw nsw i32 %.0, 1
  br i1 %.not109, label %bb.bm, label %.preheader, !llvm.loop !300

bb.bm:                                            ; preds = %.preheader
  %i.gi = call range(i32 1, 33) i32 @llvm.cttz.i32(i32 %.0, i1 true)
  %i.gj = lshr i32 %.1.lcssa, %i.gi
  %i.gk = mul nuw nsw i32 %i.gj, %.0
  br label %bb.bo

bb.bn:                                            ; preds = %.critedge
  %i.gl = icmp eq i32 %.1.lcssa, 5
  %spec.store.select = select i1 %i.gl, i32 4, i32 %.1.lcssa
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.2 = phi i32 [ %i.gk, %bb.bm ], [ %spec.store.select, %bb.bn ] ; 5 uses
  br i1 %i.cy, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  %i.gm = srem i32 %.2, %2
  %.not110 = icmp eq i32 %i.gm, 0
  br i1 %.not110, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gn = icmp sgt i32 %.2, %i.cv
  br i1 %i.gn, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.go = udiv i32 %.2, %2
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.go, i32 4)
  %i.gp = mul nuw nsw i32 %.sroa.speculated, %i.cv
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br, %bb.bp, %bb.bo
  %.3 = phi i32 [ %i.gp, %bb.br ], [ %.2, %bb.bo ], [ %.2, %bb.bp ], [ %2, %bb.bq ] ; 4 uses
  %i.gq = load i32, ptr %i.cw, align 8, !tbaa !264
  %i.gr = icmp slt i32 %i.gq, 1
  %i.gs = icmp slt i32 %i.gb, 1
  %or.cond156 = and i1 %i.gs, %i.gr
  br i1 %or.cond156, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %i.gt = call fastcc noundef i32 @_ZL26nthreads_omp_efficient_maxiRKN3gmx7CpuInfoEb(i32 noundef %.3, ptr noundef nonnull align 8 dereferenceable(128) %i.a, i1 noundef zeroext %i.cy) ; 2 uses
  %i.gu = mul nsw i32 %i.gt, %.3
  %i.gv = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 224
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !187
  %i.gy = icmp slt i32 %i.gu, %i.gx
  br i1 %i.gy, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  store i32 %i.gt, ptr %i.cw, align 8, !tbaa !264
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu, %bb.bs
  %i.gz = load ptr, ptr @stderr, align 8, !tbaa !266
  %fputc = call i32 @fputc(i32 10, ptr %i.gz)     ; 0 uses
  %i.ha = load ptr, ptr @stderr, align 8, !tbaa !266
  %fwrite = call i64 @fwrite(ptr nonnull @.str.9, i64 63, i64 1, ptr %i.ha) #22 ; 0 uses
  %i.hb = load ptr, ptr @stderr, align 8, !tbaa !266
  %i.hc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hb, ptr noundef nonnull @.str.10, i32 noundef %.3) #23 ; 0 uses
  %i.hd = load ptr, ptr @stderr, align 8, !tbaa !266
  %fwrite111 = call i64 @fwrite(ptr nonnull @.str.11, i64 83, i64 1, ptr %i.hd) #22 ; 0 uses
  br label %bb.bw

bb.bw:                                            ; preds = %_ZN12_GLOBAL__N_117SingleRankCheckerD2Ev.exit, %bb.bi, %bb.bv, %bb.ad, %bb.e
  %.197 = phi i32 [ 1, %_ZN12_GLOBAL__N_117SingleRankCheckerD2Ev.exit ], [ 1, %bb.e ], [ %i.cm, %bb.ad ], [ %.3, %bb.bv ], [ %.1.i, %bb.bi ]
  ret i32 %.197
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef zeroext i1 @_Z22pme_gpu_supports_buildPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_Z22pme_gpu_supports_inputRK10t_inputrecPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(888), ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_117SingleRankChecker15applyConstraintEbPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  br i1 %1, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %0, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.33, ptr noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !141  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !132
  %i.f = load ptr, ptr %3, align 8, !tbaa !128    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !133  ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  store ptr %i.f, ptr %i.b, align 8, !tbaa !128
  %i.m = load i64, ptr %i.g, align 8, !tbaa !139
  store i64 %i.m, ptr %i.e, align 8, !tbaa !139
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !133
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.n = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.j, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.n, ptr %i.p, align 8, !tbaa !133
  store i64 0, ptr %i.o, align 8, !tbaa !133
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !141
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.r, ptr %i.a, align 8, !tbaa !141
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.e:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.f

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.e
  %.pre7 = load ptr, ptr %3, align 8, !tbaa !128  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = icmp eq ptr %.pre7, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.v = load i64, ptr %i.t, align 8, !tbaa !139
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %.pre7, i64 noundef %i.w) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %3, align 8, !tbaa !128    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !139
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %i.x

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare noundef i32 @_Z20gmx_mtop_ftype_countRK10gmx_mtop_t19InteractionFunction(ptr noundef nonnull align 8 dereferenceable(768), i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA80_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(80) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(80) %1) #20 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.b, ptr %i.a, align 8, !tbaa !267
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !128
  %i.f = load i64, ptr %i.a, align 8, !tbaa !267
  store i64 %i.f, ptr %i.c, align 8, !tbaa !139
  br label %._crit_edge.i.i.i.i
end_hunk_0
