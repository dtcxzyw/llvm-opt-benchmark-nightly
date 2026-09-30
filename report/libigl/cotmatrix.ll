Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/cotmatrix?download=true
inline.NumInlined: 11620
inline.NumDeleted: 5654
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 83
loop-unroll.NumUnrolled: 93
begin_hunk_0_@_ZN3igl9cotmatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES4_dEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERNS1_12SparseMatrixIT2_Li0EiEESL_SL_:bb.a
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  %.not1304 = icmp slt i32 %i.ca, 0
  br i1 %.not1304, label %._crit_edge1321, label %.lr.ph1309

.lr.ph1309:                                       ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit
  %i.pp = add nsw i64 %storemerge1771334, %i.b
  %i.pq = trunc i64 %i.pp to i32
  br label %bb.ax

.preheader821:                                    ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJllRdEEERS2_DpOT_.exit
  br i1 %i.ci, label %._crit_edge1321, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader821
  %i.pr = add nsw i64 %storemerge1771334, %i.b
  %i.ps = trunc i64 %i.pr to i32                  ; 6 uses
  br label %.preheader

bb.at:                                            ; preds = %._crit_edge1303
  %i.pt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.au:                                            ; preds = %bb.ah
  %i.pu = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.av:                                            ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %i.pv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.pn197 = phi { ptr, i32 } [ %i.pv, %bb.av ], [ %i.pu, %bb.au ]
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %24) #26
  br label %.body286

.body286:                                         ; preds = %bb.ag, %bb.aw
  %.pn197.pn = phi { ptr, i32 } [ %.pn197, %bb.aw ], [ %i.nq, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  br label %bb.cg

bb.ax:                                            ; preds = %.lr.ph1309, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJllRdEEERS2_DpOT_.exit
  %.01191308 = phi i64 [ 0, %.lr.ph1309 ], [ %i.rd, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJllRdEEERS2_DpOT_.exit ] ; 5 uses
  %.sroa.0704.11307 = phi ptr [ %.sroa.0704.01330, %.lr.ph1309 ], [ %.sroa.0704.8, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJllRdEEERS2_DpOT_.exit ] ; 8 uses
  %.sroa.9708.11306 = phi ptr [ %.sroa.9708.01329, %.lr.ph1309 ], [ %.sroa.9708.2, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJllRdEEERS2_DpOT_.exit ] ; 10 uses
  %.sroa.13710.11305 = phi ptr [ %.sroa.13710.01328, %.lr.ph1309 ], [ %.sroa.13710.8, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJllRdEEERS2_DpOT_.exit ] ; 2 uses
  %i.pw = icmp eq i64 %.01191308, %i.cb
  br i1 %i.pw, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.px = load ptr, ptr %2, align 8, !tbaa !28
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.px, i64 %storemerge1771334
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !24
  %i.qa = sext i32 %i.pz to i64
  %i.qb = load ptr, ptr %1, align 8, !tbaa !28
  %i.qc = getelementptr [4 x i8], ptr %i.qb, i64 %.01191308
  %i.qd = getelementptr [4 x i8], ptr %i.qc, i64 %i.qa
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !24
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.qf = phi i32 [ %i.qe, %bb.ay ], [ %i.pq, %bb.ax ] ; 4 uses
  %i.qg = load ptr, ptr %23, align 8, !tbaa !43
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %i.qg, i64 %.01191308 ; 2 uses
  %.not.i290 = icmp eq ptr %.sroa.9708.11306, %.sroa.13710.11305
  br i1 %.not.i290, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i32 %i.qf, ptr %.sroa.9708.11306, align 8, !tbaa !279
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.9708.11306, i64 4
  store i32 %i.qf, ptr %i.qi, align 4, !tbaa !280
  %i.qj = getelementptr inbounds nuw i8, ptr %.sroa.9708.11306, i64 8
  %i.qk = load double, ptr %i.qh, align 8, !tbaa !25
  store double %i.qk, ptr %i.qj, align 8, !tbaa !281
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJllRdEEERS2_DpOT_.exit

bb.bb:                                            ; preds = %bb.az
  %i.ql = ptrtoint ptr %.sroa.9708.11306 to i64
  %i.qm = ptrtoint ptr %.sroa.0704.11307 to i64
  %i.qn = sub i64 %i.ql, %i.qm                    ; 4 uses
  %i.qo = icmp eq i64 %i.qn, 9223372036854775792
  br i1 %i.qo, label %bb.bc, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i291

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #23
          to label %.noexc302 unwind label %.loopexit.split-lp823

.noexc302:                                        ; preds = %bb.bc
  unreachable

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i291: ; preds = %bb.bb
  %i.qp = ashr exact i64 %i.qn, 4                 ; 3 uses
  %.sroa.speculated.i.i.i292 = call i64 @llvm.umax.i64(i64 %i.qp, i64 1)
  %i.qq = add nsw i64 %.sroa.speculated.i.i.i292, %i.qp ; 2 uses
  %i.qr = icmp ult i64 %i.qq, %i.qp
  %i.qs = call i64 @llvm.umin.i64(i64 %i.qq, i64 576460752303423487)
  %i.qt = select i1 %i.qr, i64 576460752303423487, i64 %i.qs ; 3 uses
  %.not.i.i.i293 = icmp ne i64 %i.qt, 0
  call void @llvm.assume(i1 %.not.i.i.i293)
  %i.qu = shl nuw nsw i64 %i.qt, 4
  %i.qv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qu) #24
          to label %.noexc303 unwind label %.loopexit822 ; 5 uses

.noexc303:                                        ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i291
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 %i.qn ; 3 uses
  store i32 %i.qf, ptr %i.qw, align 8, !tbaa !279
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 4
  store i32 %i.qf, ptr %i.qx, align 4, !tbaa !280
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %i.qz = load double, ptr %i.qh, align 8, !tbaa !25
  store double %i.qz, ptr %i.qy, align 8, !tbaa !281
  %.not10.i.i.i.i.i294 = icmp eq ptr %.sroa.0704.11307, %.sroa.9708.11306
  br i1 %.not10.i.i.i.i.i294, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i299, label %.lr.ph.i.i.i.i.i295

.lr.ph.i.i.i.i.i295:                              ; preds = %.noexc303, %.lr.ph.i.i.i.i.i295
  %.012.i.i.i.i.i296 = phi ptr [ %i.rb, %.lr.ph.i.i.i.i.i295 ], [ %i.qv, %.noexc303 ] ; 2 uses
  %.0911.i.i.i.i.i297 = phi ptr [ %i.ra, %.lr.ph.i.i.i.i.i295 ], [ %.sroa.0704.11307, %.noexc303 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i296, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i297, i64 16, i1 false), !tbaa.struct !26, !alias.scope !309
  %i.ra = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i297, i64 16 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i296, i64 16 ; 2 uses
  %.not.i.i.i.i.i298 = icmp eq ptr %i.ra, %.sroa.9708.11306
  br i1 %.not.i.i.i.i.i298, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i299, label %.lr.ph.i.i.i.i.i295, !llvm.loop !0

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i299: ; preds = %.lr.ph.i.i.i.i.i295, %.noexc303
  %.0.lcssa.i.i.i.i.i300 = phi ptr [ %i.qv, %.noexc303 ], [ %i.rb, %.lr.ph.i.i.i.i.i295 ]
  %.not.i35.i.i301 = icmp eq ptr %.sroa.0704.11307, null
  br i1 %.not.i35.i.i301, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJllRdEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i299
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0704.11307, i64 noundef %i.qn) #25
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJllRdEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJllRdEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.bd, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i299
  %i.rc = getelementptr inbounds nuw [16 x i8], ptr %i.qv, i64 %i.qt
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJllRdEEERS2_DpOT_.exit

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJllRdEEERS2_DpOT_.exit: ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJllRdEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.ba
  %.sroa.13710.8 = phi ptr [ %i.rc, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJllRdEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.13710.11305, %bb.ba ] ; 11 uses
  %.0.lcssa.i.i.i.i.i300.pn = phi ptr [ %.0.lcssa.i.i.i.i.i300, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJllRdEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.9708.11306, %bb.ba ]
  %.sroa.0704.8 = phi ptr [ %i.qv, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJllRdEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.0704.11307, %bb.ba ] ; 11 uses
  %.sroa.9708.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i300.pn, i64 16 ; 3 uses
  %i.rd = add nuw nsw i64 %.01191308, 1
  %exitcond1688.not = icmp eq i64 %.01191308, %i.cb
  br i1 %exitcond1688.not, label %.preheader821, label %bb.ax, !llvm.loop !252

.loopexit822:                                     ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i291
  %lpad.loopexit824 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

.loopexit.split-lp823:                            ; preds = %bb.bc
  %lpad.loopexit.split-lp825 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.be
  %.01181320 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.rl, %bb.be ] ; 6 uses
  %.sroa.0714.11319 = phi ptr [ %.sroa.0714.01333, %.preheader.lr.ph ], [ %.sroa.0714.13, %bb.be ]
  %.sroa.15721.11318 = phi ptr [ %.sroa.15721.01332, %.preheader.lr.ph ], [ %.sroa.15721.6, %bb.be ]
  %.sroa.28.11317 = phi ptr [ %.sroa.28.01331, %.preheader.lr.ph ], [ %.sroa.28.13, %bb.be ]
  br label %bb.bf

._crit_edge1321:                                  ; preds = %bb.be, %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, %.preheader821
  %.sroa.0704.1.lcssa1754 = phi ptr [ %.sroa.0704.8, %.preheader821 ], [ %.sroa.0704.01330, %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit ], [ %.sroa.0704.8, %bb.be ] ; 2 uses
  %.sroa.9708.1.lcssa1753 = phi ptr [ %.sroa.9708.2, %.preheader821 ], [ %.sroa.9708.01329, %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit ], [ %.sroa.9708.2, %bb.be ] ; 2 uses
  %.sroa.13710.1.lcssa1752 = phi ptr [ %.sroa.13710.8, %.preheader821 ], [ %.sroa.13710.01328, %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit ], [ %.sroa.13710.8, %bb.be ] ; 2 uses
  %.sroa.28.1.lcssa = phi ptr [ %.sroa.28.01331, %.preheader821 ], [ %.sroa.28.01331, %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit ], [ %.sroa.28.13, %bb.be ] ; 2 uses
  %.sroa.15721.1.lcssa = phi ptr [ %.sroa.15721.01332, %.preheader821 ], [ %.sroa.15721.01332, %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit ], [ %.sroa.15721.6, %bb.be ] ; 2 uses
  %.sroa.0714.1.lcssa = phi ptr [ %.sroa.0714.01333, %.preheader821 ], [ %.sroa.0714.01333, %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit ], [ %.sroa.0714.13, %bb.be ] ; 2 uses
  %i.re = load ptr, ptr %23, align 8, !tbaa !43
  call void @free(ptr noundef %i.re) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  %i.rf = load ptr, ptr %22, align 8, !tbaa !32
  call void @free(ptr noundef %i.rf) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  %i.rg = load ptr, ptr %21, align 8, !tbaa !67
  call void @free(ptr noundef %i.rg) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  %i.rh = load ptr, ptr %15, align 8, !tbaa !31
  call void @free(ptr noundef %i.rh) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.ri = load i64, ptr %i.c, align 8, !tbaa !22
  %i.rj = add nsw i64 %i.ri, -1
  %i.rk = icmp slt i64 %i.bu, %i.rj
  br i1 %i.rk, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i.i, label %._crit_edge1335, !llvm.loop !253

bb.be:                                            ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJlldEEERS2_DpOT_.exit373
  %i.rl = add nuw nsw i64 %.01181320, 1           ; 2 uses
  %exitcond1691.not = icmp eq i64 %i.rl, %i.cb
  br i1 %exitcond1691.not, label %._crit_edge1321, label %.preheader, !llvm.loop !254

bb.bf:                                            ; preds = %.preheader, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJlldEEERS2_DpOT_.exit373
  %.01171316 = phi i64 [ 0, %.preheader ], [ %i.rm, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJlldEEERS2_DpOT_.exit373 ] ; 7 uses
  %.sroa.0714.21315 = phi ptr [ %.sroa.0714.11319, %.preheader ], [ %.sroa.0714.13, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJlldEEERS2_DpOT_.exit373 ] ; 8 uses
  %.sroa.15721.21314 = phi ptr [ %.sroa.15721.11318, %.preheader ], [ %.sroa.15721.6, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJlldEEERS2_DpOT_.exit373 ] ; 10 uses
  %.sroa.28.21313 = phi ptr [ %.sroa.28.11317, %.preheader ], [ %.sroa.28.13, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJlldEEERS2_DpOT_.exit373 ] ; 2 uses
  %i.rm = add nuw nsw i64 %.01171316, 1           ; 3 uses
  %i.rn = icmp eq i64 %i.rm, 3                    ; 2 uses
  %i.ro = select i1 %i.rn, i64 0, i64 %i.rm
  %i.rp = load ptr, ptr %21, align 8, !tbaa !67
  %i.rq = load i64, ptr %i.aj, align 8, !tbaa !68 ; 2 uses
  %i.rr = mul nsw i64 %i.rq, %i.ro
  %i.rs = getelementptr [4 x i8], ptr %i.rp, i64 %.01181320 ; 2 uses
  %i.rt = getelementptr [4 x i8], ptr %i.rs, i64 %i.rr
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !24 ; 2 uses
  %i.rv = sext i32 %i.ru to i64                   ; 3 uses
  %.urem = add nsw i64 %.01171316, -1
  %.cmp = icmp eq i64 %.01171316, 0
  %i.rw = select i1 %.cmp, i64 2, i64 %.urem
  %i.rx = mul nsw i64 %i.rq, %i.rw
  %i.ry = getelementptr [4 x i8], ptr %i.rs, i64 %i.rx
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !24 ; 2 uses
  %i.sa = sext i32 %i.rz to i64                   ; 3 uses
  %i.sb = icmp eq i32 %i.ru, %i.ca                ; 3 uses
  br i1 %i.sb, label %_ZZN3igl9cotmatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES4_dEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERNS1_12SparseMatrixIT2_Li0EiEESL_SL_ENKUllE_clEl.exit304, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.sc = load ptr, ptr %2, align 8, !tbaa !28
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.sc, i64 %storemerge1771334
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !24
  %i.sf = sext i32 %i.se to i64
  %i.sg = load ptr, ptr %1, align 8, !tbaa !28
  %i.sh = getelementptr [4 x i8], ptr %i.sg, i64 %i.rv
  %i.si = getelementptr [4 x i8], ptr %i.sh, i64 %i.sf
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !24
  br label %_ZZN3igl9cotmatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES4_dEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERNS1_12SparseMatrixIT2_Li0EiEESL_SL_ENKUllE_clEl.exit304

_ZZN3igl9cotmatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES4_dEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERNS1_12SparseMatrixIT2_Li0EiEESL_SL_ENKUllE_clEl.exit304: ; preds = %bb.bf, %bb.bg
  %i.sk = phi i32 [ %i.sj, %bb.bg ], [ %i.ps, %bb.bf ] ; 2 uses
  %i.sl = icmp eq i32 %i.rz, %i.ca                ; 3 uses
  br i1 %i.sl, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %_ZZN3igl9cotmatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES4_dEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERNS1_12SparseMatrixIT2_Li0EiEESL_SL_ENKUllE_clEl.exit304
  %i.sm = load ptr, ptr %2, align 8, !tbaa !28
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %storemerge1771334
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !24
  %i.sp = sext i32 %i.so to i64
  %i.sq = load ptr, ptr %1, align 8, !tbaa !28
  %i.sr = getelementptr [4 x i8], ptr %i.sq, i64 %i.sa
  %i.ss = getelementptr [4 x i8], ptr %i.sr, i64 %i.sp
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !24
  br label %bb.bi

bb.bi:                                            ; preds = %_ZZN3igl9cotmatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES4_dEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERNS1_12SparseMatrixIT2_Li0EiEESL_SL_ENKUllE_clEl.exit304, %bb.bh
  %i.su = phi i32 [ %i.st, %bb.bh ], [ %i.ps, %_ZZN3igl9cotmatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES4_dEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERNS1_12SparseMatrixIT2_Li0EiEESL_SL_ENKUllE_clEl.exit304 ] ; 2 uses
  %i.sv = load ptr, ptr %22, align 8, !tbaa !32
  %i.sw = load i64, ptr %i.as, align 8, !tbaa !19
  %i.sx = mul nsw i64 %i.sw, %.01171316
  %i.sy = getelementptr [8 x i8], ptr %i.sv, i64 %.01181320
  %i.sz = getelementptr [8 x i8], ptr %i.sy, i64 %i.sx ; 2 uses
  %.not.i306 = icmp eq ptr %.sroa.15721.21314, %.sroa.28.21313
  br i1 %.not.i306, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i32 %i.sk, ptr %.sroa.15721.21314, align 8, !tbaa !279
  %i.ta = getelementptr inbounds nuw i8, ptr %.sroa.15721.21314, i64 4
  store i32 %i.su, ptr %i.ta, align 4, !tbaa !280
  %i.tb = getelementptr inbounds nuw i8, ptr %.sroa.15721.21314, i64 8
  %i.tc = load double, ptr %i.sz, align 8, !tbaa !25
  store double %i.tc, ptr %i.tb, align 8, !tbaa !281
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJllRdEEERS2_DpOT_.exit321

bb.bk:                                            ; preds = %bb.bi
  %i.td = ptrtoint ptr %.sroa.15721.21314 to i64
  %i.te = ptrtoint ptr %.sroa.0714.21315 to i64
  %i.tf = sub i64 %i.td, %i.te                    ; 4 uses
  %i.tg = icmp eq i64 %i.tf, 9223372036854775792
  br i1 %i.tg, label %bb.bl, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i307

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #23
          to label %.noexc319 unwind label %.loopexit.split-lp

.noexc319:                                        ; preds = %bb.bl
  unreachable

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i307: ; preds = %bb.bk
  %i.th = ashr exact i64 %i.tf, 4                 ; 3 uses
  %.sroa.speculated.i.i.i308 = call i64 @llvm.umax.i64(i64 %i.th, i64 1)
  %i.ti = add nsw i64 %.sroa.speculated.i.i.i308, %i.th ; 2 uses
  %i.tj = icmp ult i64 %i.ti, %i.th
  %i.tk = call i64 @llvm.umin.i64(i64 %i.ti, i64 576460752303423487)
  %i.tl = select i1 %i.tj, i64 576460752303423487, i64 %i.tk ; 3 uses
  %.not.i.i.i309 = icmp ne i64 %i.tl, 0
  call void @llvm.assume(i1 %.not.i.i.i309)
  %i.tm = shl nuw nsw i64 %i.tl, 4
  %i.tn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tm) #24
          to label %.noexc320 unwind label %.loopexit804 ; 5 uses

.noexc320:                                        ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i307
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 %i.tf ; 3 uses
  store i32 %i.sk, ptr %i.to, align 8, !tbaa !279
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 4
  store i32 %i.su, ptr %i.tp, align 4, !tbaa !280
  %i.tq = getelementptr inbounds nuw i8, ptr %i.to, i64 8
  %i.tr = load double, ptr %i.sz, align 8, !tbaa !25
  store double %i.tr, ptr %i.tq, align 8, !tbaa !281
  %.not10.i.i.i.i.i310 = icmp eq ptr %.sroa.0714.21315, %.sroa.15721.21314
  br i1 %.not10.i.i.i.i.i310, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i315, label %.lr.ph.i.i.i.i.i311

.lr.ph.i.i.i.i.i311:                              ; preds = %.noexc320, %.lr.ph.i.i.i.i.i311
  %.012.i.i.i.i.i312 = phi ptr [ %i.tt, %.lr.ph.i.i.i.i.i311 ], [ %i.tn, %.noexc320 ] ; 2 uses
  %.0911.i.i.i.i.i313 = phi ptr [ %i.ts, %.lr.ph.i.i.i.i.i311 ], [ %.sroa.0714.21315, %.noexc320 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i312, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i313, i64 16, i1 false), !tbaa.struct !26, !alias.scope !310
  %i.ts = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i313, i64 16 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i312, i64 16 ; 2 uses
  %.not.i.i.i.i.i314 = icmp eq ptr %i.ts, %.sroa.15721.21314
  br i1 %.not.i.i.i.i.i314, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i315, label %.lr.ph.i.i.i.i.i311, !llvm.loop !0

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i315: ; preds = %.lr.ph.i.i.i.i.i311, %.noexc320
  %.0.lcssa.i.i.i.i.i316 = phi ptr [ %i.tn, %.noexc320 ], [ %i.tt, %.lr.ph.i.i.i.i.i311 ]
  %.not.i35.i.i317 = icmp eq ptr %.sroa.0714.21315, null
  br i1 %.not.i35.i.i317, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJllRdEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i318, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i315
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0714.21315, i64 noundef %i.tf) #25
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJllRdEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i318

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJllRdEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i318: ; preds = %bb.bm, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i315
  %i.tu = getelementptr inbounds nuw [16 x i8], ptr %i.tn, i64 %i.tl
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJllRdEEERS2_DpOT_.exit321

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJllRdEEERS2_DpOT_.exit321: ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJllRdEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i318, %bb.bj
  %.sroa.28.10 = phi ptr [ %i.tu, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJllRdEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i318 ], [ %.sroa.28.21313, %bb.bj ] ; 6 uses
  %.0.lcssa.i.i.i.i.i316.pn = phi ptr [ %.0.lcssa.i.i.i.i.i316, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJllRdEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i318 ], [ %.sroa.15721.21314, %bb.bj ] ; 6 uses
  %.sroa.0714.10 = phi ptr [ %i.tn, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJllRdEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i318 ], [ %.sroa.0714.21315, %bb.bj ] ; 9 uses
  %.0.lcssa.i.i.i.i.i316.pn2675 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i316.pn to i64
  %.sroa.15721.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i316.pn, i64 16 ; 2 uses
  br i1 %i.sl, label %_ZZN3igl9cotmatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES4_dEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERNS1_12SparseMatrixIT2_Li0EiEESL_SL_ENKUllE_clEl.exit322, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJllRdEEERS2_DpOT_.exit321
  %i.tv = load ptr, ptr %2, align 8, !tbaa !28
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.tv, i64 %storemerge1771334
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !24
  %i.ty = sext i32 %i.tx to i64
  %i.tz = load ptr, ptr %1, align 8, !tbaa !28
  %i.ua = getelementptr [4 x i8], ptr %i.tz, i64 %i.sa
  %i.ub = getelementptr [4 x i8], ptr %i.ua, i64 %i.ty
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !24
  br label %_ZZN3igl9cotmatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES4_dEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERNS1_12SparseMatrixIT2_Li0EiEESL_SL_ENKUllE_clEl.exit322

_ZZN3igl9cotmatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES4_dEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERNS1_12SparseMatrixIT2_Li0EiEESL_SL_ENKUllE_clEl.exit322: ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJllRdEEERS2_DpOT_.exit321, %bb.bn
  %i.ud = phi i32 [ %i.uc, %bb.bn ], [ %i.ps, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJllRdEEERS2_DpOT_.exit321 ] ; 2 uses
  br i1 %i.sb, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZZN3igl9cotmatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES4_dEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERNS1_12SparseMatrixIT2_Li0EiEESL_SL_ENKUllE_clEl.exit322
  %i.ue = load ptr, ptr %2, align 8, !tbaa !28
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.ue, i64 %storemerge1771334
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !24
  %i.uh = sext i32 %i.ug to i64
  %i.ui = load ptr, ptr %1, align 8, !tbaa !28
  %i.uj = getelementptr [4 x i8], ptr %i.ui, i64 %i.rv
  %i.uk = getelementptr [4 x i8], ptr %i.uj, i64 %i.uh
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !24
  br label %bb.bp

bb.bp:                                            ; preds = %_ZZN3igl9cotmatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES4_dEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERNS1_12SparseMatrixIT2_Li0EiEESL_SL_ENKUllE_clEl.exit322, %bb.bo
  %i.um = phi i32 [ %i.ul, %bb.bo ], [ %i.ps, %_ZZN3igl9cotmatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES4_dEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERNS1_12SparseMatrixIT2_Li0EiEESL_SL_ENKUllE_clEl.exit322 ] ; 2 uses
  %i.un = load ptr, ptr %22, align 8, !tbaa !32
  %i.uo = load i64, ptr %i.as, align 8, !tbaa !19
  %i.up = mul nsw i64 %i.uo, %.01171316
  %i.uq = getelementptr [8 x i8], ptr %i.un, i64 %.01181320
  %i.ur = getelementptr [8 x i8], ptr %i.uq, i64 %i.up ; 2 uses
  %.not.i324 = icmp eq ptr %.sroa.15721.3, %.sroa.28.10
  br i1 %.not.i324, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  store i32 %i.ud, ptr %.sroa.15721.3, align 8, !tbaa !279
  %i.us = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i316.pn, i64 20
  store i32 %i.um, ptr %i.us, align 4, !tbaa !280
  %i.ut = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i316.pn, i64 24
  %i.uu = load double, ptr %i.ur, align 8, !tbaa !25
  store double %i.uu, ptr %i.ut, align 8, !tbaa !281
  %i.uv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i316.pn, i64 32
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJllRdEEERS2_DpOT_.exit339

bb.br:                                            ; preds = %bb.bp
  %i.uw = ptrtoint ptr %.sroa.28.10 to i64
  %i.ux = ptrtoint ptr %.sroa.0714.10 to i64      ; 2 uses
  %i.uy = sub i64 %i.uw, %i.ux                    ; 4 uses
  %i.uz = icmp eq i64 %i.uy, 9223372036854775792
  br i1 %i.uz, label %bb.bs, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i325

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #23
          to label %.noexc337 unwind label %.loopexit.split-lp806

.noexc337:                                        ; preds = %bb.bs
  unreachable

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i325: ; preds = %bb.br
  %i.va = ashr exact i64 %i.uy, 4                 ; 3 uses
  %.sroa.speculated.i.i.i326 = call i64 @llvm.umax.i64(i64 %i.va, i64 1)
  %i.vb = add nsw i64 %.sroa.speculated.i.i.i326, %i.va ; 2 uses
  %i.vc = icmp ult i64 %i.vb, %i.va
  %i.vd = call i64 @llvm.umin.i64(i64 %i.vb, i64 576460752303423487)
  %i.ve = select i1 %i.vc, i64 576460752303423487, i64 %i.vd ; 3 uses
  %.not.i.i.i327 = icmp ne i64 %i.ve, 0
end_hunk_0
begin_hunk_1_@_ZN3igl9cotmatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES4_dEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERNS1_12SparseMatrixIT2_Li0EiEESL_SL_:bb.a
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJlldEEERS2_DpOT_.exit

bb.bx:                                            ; preds = %bb.bv
  %i.wt = ptrtoint ptr %.sroa.28.11 to i64
  %i.wu = ptrtoint ptr %.sroa.0714.11 to i64
  %i.wv = sub i64 %i.wt, %i.wu                    ; 4 uses
  %i.ww = icmp eq i64 %i.wv, 9223372036854775792
  br i1 %i.ww, label %bb.by, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i343

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #23
          to label %.noexc354 unwind label %.loopexit.split-lp811

.noexc354:                                        ; preds = %bb.by
  unreachable

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i343: ; preds = %bb.bx
  %i.wx = ashr exact i64 %i.wv, 4                 ; 3 uses
  %.sroa.speculated.i.i.i344 = call i64 @llvm.umax.i64(i64 %i.wx, i64 1)
  %i.wy = add nsw i64 %.sroa.speculated.i.i.i344, %i.wx ; 2 uses
  %i.wz = icmp ult i64 %i.wy, %i.wx
  %i.xa = call i64 @llvm.umin.i64(i64 %i.wy, i64 576460752303423487)
  %i.xb = select i1 %i.wz, i64 576460752303423487, i64 %i.xa ; 3 uses
  %.not.i.i.i345 = icmp ne i64 %i.xb, 0
  call void @llvm.assume(i1 %.not.i.i.i345)
  %i.xc = shl nuw nsw i64 %i.xb, 4
  %i.xd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xc) #24
          to label %.noexc355 unwind label %.loopexit810 ; 5 uses

.noexc355:                                        ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i343
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.wv ; 3 uses
  store i32 %i.wj, ptr %i.xe, align 8, !tbaa !279
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 4
  store i32 %i.wj, ptr %i.xf, align 4, !tbaa !280
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  store double %i.wq, ptr %i.xg, align 8, !tbaa !281
  %.not10.i.i.i.i.i346 = icmp eq ptr %.sroa.0714.11, %.sroa.28.11
  br i1 %.not10.i.i.i.i.i346, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i351, label %.lr.ph.i.i.i.i.i347

.lr.ph.i.i.i.i.i347:                              ; preds = %.noexc355, %.lr.ph.i.i.i.i.i347
  %.012.i.i.i.i.i348 = phi ptr [ %i.xi, %.lr.ph.i.i.i.i.i347 ], [ %i.xd, %.noexc355 ] ; 2 uses
  %.0911.i.i.i.i.i349 = phi ptr [ %i.xh, %.lr.ph.i.i.i.i.i347 ], [ %.sroa.0714.11, %.noexc355 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i348, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i349, i64 16, i1 false), !tbaa.struct !26, !alias.scope !312
  %i.xh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i349, i64 16 ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i348, i64 16 ; 2 uses
  %.not.i.i.i.i.i350 = icmp eq ptr %i.xh, %.sroa.28.11
  br i1 %.not.i.i.i.i.i350, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i351, label %.lr.ph.i.i.i.i.i347, !llvm.loop !0

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i351: ; preds = %.lr.ph.i.i.i.i.i347, %.noexc355
  %.0.lcssa.i.i.i.i.i352 = phi ptr [ %i.xd, %.noexc355 ], [ %i.xi, %.lr.ph.i.i.i.i.i347 ]
  %.not.i35.i.i353 = icmp eq ptr %.sroa.0714.11, null
  br i1 %.not.i35.i.i353, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJlldEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i351
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0714.11, i64 noundef %i.wv) #25
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJlldEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJlldEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.bz, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i351
  %i.xj = getelementptr inbounds nuw [16 x i8], ptr %i.xd, i64 %i.xb
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJlldEEERS2_DpOT_.exit

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJlldEEERS2_DpOT_.exit: ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJlldEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.bw
  %.sroa.28.12 = phi ptr [ %i.xj, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJlldEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.28.11, %bb.bw ] ; 6 uses
  %.0.lcssa.i.i.i.i.i352.pn = phi ptr [ %.0.lcssa.i.i.i.i.i352, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJlldEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.15721.4, %bb.bw ] ; 6 uses
  %.sroa.0714.12 = phi ptr [ %i.xd, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJlldEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.0714.11, %bb.bw ] ; 9 uses
  %.0.lcssa.i.i.i.i.i352.pn2679 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i352.pn to i64
  %.sroa.15721.5 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i352.pn, i64 16 ; 2 uses
  br i1 %i.sl, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJlldEEERS2_DpOT_.exit
  %i.xk = load ptr, ptr %2, align 8, !tbaa !28
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.xk, i64 %storemerge1771334
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !24
  %i.xn = sext i32 %i.xm to i64
  %i.xo = load ptr, ptr %1, align 8, !tbaa !28
  %i.xp = getelementptr [4 x i8], ptr %i.xo, i64 %i.sa
  %i.xq = getelementptr [4 x i8], ptr %i.xp, i64 %i.xn
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !24
  br label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJlldEEERS2_DpOT_.exit, %bb.ca
  %i.xs = phi i32 [ %i.xr, %bb.ca ], [ %i.ps, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJlldEEERS2_DpOT_.exit ] ; 4 uses
  %i.xt = load ptr, ptr %22, align 8, !tbaa !32
  %i.xu = load i64, ptr %i.as, align 8, !tbaa !19
  %i.xv = mul nsw i64 %i.xu, %.01171316
  %i.xw = getelementptr [8 x i8], ptr %i.xt, i64 %.01181320
  %i.xx = getelementptr [8 x i8], ptr %i.xw, i64 %i.xv
  %i.xy = load double, ptr %i.xx, align 8, !tbaa !25
  %i.xz = fneg double %i.xy                       ; 2 uses
  %.not.i358 = icmp eq ptr %.sroa.15721.5, %.sroa.28.12
  br i1 %.not.i358, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  store i32 %i.xs, ptr %.sroa.15721.5, align 8, !tbaa !279
  %i.ya = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i352.pn, i64 20
  store i32 %i.xs, ptr %i.ya, align 4, !tbaa !280
  %i.yb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i352.pn, i64 24
  store double %i.xz, ptr %i.yb, align 8, !tbaa !281
  %i.yc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i352.pn, i64 32
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJlldEEERS2_DpOT_.exit373

bb.cd:                                            ; preds = %bb.cb
  %i.yd = ptrtoint ptr %.sroa.28.12 to i64
  %i.ye = ptrtoint ptr %.sroa.0714.12 to i64      ; 2 uses
  %i.yf = sub i64 %i.yd, %i.ye                    ; 4 uses
  %i.yg = icmp eq i64 %i.yf, 9223372036854775792
  br i1 %i.yg, label %bb.ce, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i359

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #23
          to label %.noexc371 unwind label %.loopexit.split-lp816

.noexc371:                                        ; preds = %bb.ce
  unreachable

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i359: ; preds = %bb.cd
  %i.yh = ashr exact i64 %i.yf, 4                 ; 3 uses
  %.sroa.speculated.i.i.i360 = call i64 @llvm.umax.i64(i64 %i.yh, i64 1)
  %i.yi = add nsw i64 %.sroa.speculated.i.i.i360, %i.yh ; 2 uses
  %i.yj = icmp ult i64 %i.yi, %i.yh
  %i.yk = call i64 @llvm.umin.i64(i64 %i.yi, i64 576460752303423487)
  %i.yl = select i1 %i.yj, i64 576460752303423487, i64 %i.yk ; 3 uses
  %.not.i.i.i361 = icmp ne i64 %i.yl, 0
  call void @llvm.assume(i1 %.not.i.i.i361)
  %i.ym = shl nuw nsw i64 %i.yl, 4
  %i.yn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ym) #24
          to label %.noexc372 unwind label %.loopexit815 ; 6 uses

.noexc372:                                        ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i359
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 %i.yf ; 3 uses
  store i32 %i.xs, ptr %i.yo, align 8, !tbaa !279
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 4
  store i32 %i.xs, ptr %i.yp, align 4, !tbaa !280
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yo, i64 8
  store double %i.xz, ptr %i.yq, align 8, !tbaa !281
  %.not10.i.i.i.i.i362 = icmp eq ptr %.sroa.0714.12, %.sroa.28.12
  br i1 %.not10.i.i.i.i.i362, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i367, label %.lr.ph.i.i.i.i.i363.preheader

.lr.ph.i.i.i.i.i363.preheader:                    ; preds = %.noexc372
  %i.yr = sub i64 %.0.lcssa.i.i.i.i.i352.pn2679, %i.ye ; 2 uses
  %i.ys = lshr i64 %i.yr, 4
  %i.yt = add nuw nsw i64 %i.ys, 1
  %xtraiter2680 = and i64 %i.yt, 3                ; 2 uses
  %lcmp.mod2681.not = icmp eq i64 %xtraiter2680, 0
  br i1 %lcmp.mod2681.not, label %.lr.ph.i.i.i.i.i363.prol.loopexit, label %.lr.ph.i.i.i.i.i363.prol

.lr.ph.i.i.i.i.i363.prol:                         ; preds = %.lr.ph.i.i.i.i.i363.preheader, %.lr.ph.i.i.i.i.i363.prol
  %.012.i.i.i.i.i364.prol = phi ptr [ %i.yv, %.lr.ph.i.i.i.i.i363.prol ], [ %i.yn, %.lr.ph.i.i.i.i.i363.preheader ] ; 2 uses
  %.0911.i.i.i.i.i365.prol = phi ptr [ %i.yu, %.lr.ph.i.i.i.i.i363.prol ], [ %.sroa.0714.12, %.lr.ph.i.i.i.i.i363.preheader ] ; 2 uses
  %prol.iter2682 = phi i64 [ %prol.iter2682.next, %.lr.ph.i.i.i.i.i363.prol ], [ 0, %.lr.ph.i.i.i.i.i363.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i364.prol, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i365.prol, i64 16, i1 false), !tbaa.struct !26, !alias.scope !313
  %i.yu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i365.prol, i64 16 ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i364.prol, i64 16 ; 3 uses
  %prol.iter2682.next = add i64 %prol.iter2682, 1 ; 2 uses
  %prol.iter2682.cmp.not = icmp eq i64 %prol.iter2682.next, %xtraiter2680
  br i1 %prol.iter2682.cmp.not, label %.lr.ph.i.i.i.i.i363.prol.loopexit, label %.lr.ph.i.i.i.i.i363.prol, !llvm.loop !268

.lr.ph.i.i.i.i.i363.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i363.prol, %.lr.ph.i.i.i.i.i363.preheader
  %.lcssa2400.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i363.preheader ], [ %i.yv, %.lr.ph.i.i.i.i.i363.prol ]
  %.012.i.i.i.i.i364.unr = phi ptr [ %i.yn, %.lr.ph.i.i.i.i.i363.preheader ], [ %i.yv, %.lr.ph.i.i.i.i.i363.prol ]
  %.0911.i.i.i.i.i365.unr = phi ptr [ %.sroa.0714.12, %.lr.ph.i.i.i.i.i363.preheader ], [ %i.yu, %.lr.ph.i.i.i.i.i363.prol ]
  %i.yw = icmp ult i64 %i.yr, 48
  br i1 %i.yw, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i367, label %.lr.ph.i.i.i.i.i363

.lr.ph.i.i.i.i.i363:                              ; preds = %.lr.ph.i.i.i.i.i363.prol.loopexit, %.lr.ph.i.i.i.i.i363
  %.012.i.i.i.i.i364 = phi ptr [ %i.ze, %.lr.ph.i.i.i.i.i363 ], [ %.012.i.i.i.i.i364.unr, %.lr.ph.i.i.i.i.i363.prol.loopexit ] ; 5 uses
  %.0911.i.i.i.i.i365 = phi ptr [ %i.zd, %.lr.ph.i.i.i.i.i363 ], [ %.0911.i.i.i.i.i365.unr, %.lr.ph.i.i.i.i.i363.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i364, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i365, i64 16, i1 false), !tbaa.struct !26, !alias.scope !313
  %i.yx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i365, i64 16
  %i.yy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i364, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yy, ptr noundef nonnull align 8 dereferenceable(16) %i.yx, i64 16, i1 false), !tbaa.struct !26, !alias.scope !313
  %i.yz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i365, i64 32
  %i.za = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i364, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.za, ptr noundef nonnull align 8 dereferenceable(16) %i.yz, i64 16, i1 false), !tbaa.struct !26, !alias.scope !313
  %i.zb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i365, i64 48 ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i364, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zc, ptr noundef nonnull align 8 dereferenceable(16) %i.zb, i64 16, i1 false), !tbaa.struct !26, !alias.scope !313
  %i.zd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i365, i64 64
  %i.ze = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i364, i64 64 ; 2 uses
  %.not.i.i.i.i.i366.3 = icmp eq ptr %i.zb, %.0.lcssa.i.i.i.i.i352.pn
  br i1 %.not.i.i.i.i.i366.3, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i367, label %.lr.ph.i.i.i.i.i363, !llvm.loop !0

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i367: ; preds = %.lr.ph.i.i.i.i.i363.prol.loopexit, %.lr.ph.i.i.i.i.i363, %.noexc372
  %.0.lcssa.i.i.i.i.i368 = phi ptr [ %i.yn, %.noexc372 ], [ %.lcssa2400.unr, %.lr.ph.i.i.i.i.i363.prol.loopexit ], [ %i.ze, %.lr.ph.i.i.i.i.i363 ]
  %i.zf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i368, i64 16
  %.not.i35.i.i369 = icmp eq ptr %.sroa.0714.12, null
  br i1 %.not.i35.i.i369, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJlldEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i370, label %bb.cf

bb.cf:                                            ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i367
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0714.12, i64 noundef %i.yf) #25
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJlldEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i370

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJlldEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i370: ; preds = %bb.cf, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i367
  %i.zg = getelementptr inbounds nuw [16 x i8], ptr %i.yn, i64 %i.yl
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJlldEEERS2_DpOT_.exit373

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJlldEEERS2_DpOT_.exit373: ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJlldEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i370, %bb.cc
  %.sroa.28.13 = phi ptr [ %i.zg, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJlldEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i370 ], [ %.sroa.28.12, %bb.cc ] ; 3 uses
  %.sroa.15721.6 = phi ptr [ %i.zf, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJlldEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i370 ], [ %i.yc, %bb.cc ] ; 3 uses
  %.sroa.0714.13 = phi ptr [ %i.yn, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJlldEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i370 ], [ %.sroa.0714.12, %bb.cc ] ; 3 uses
  br i1 %i.rn, label %bb.be, label %bb.bf, !llvm.loop !269

.loopexit804:                                     ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i307
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

.loopexit.split-lp:                               ; preds = %bb.bl
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

.loopexit805:                                     ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i325
  %lpad.loopexit807 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

.loopexit.split-lp806:                            ; preds = %bb.bs
  %lpad.loopexit.split-lp808 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

.loopexit810:                                     ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i343
  %lpad.loopexit812 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

.loopexit.split-lp811:                            ; preds = %bb.by
  %lpad.loopexit.split-lp813 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

.loopexit815:                                     ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i359
  %lpad.loopexit817 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

.loopexit.split-lp816:                            ; preds = %bb.ce
  %lpad.loopexit.split-lp818 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.cg:                                            ; preds = %.loopexit815, %.loopexit.split-lp816, %.loopexit810, %.loopexit.split-lp811, %.loopexit805, %.loopexit.split-lp806, %.loopexit804, %.loopexit.split-lp, %.loopexit822, %.loopexit.split-lp823, %.body286
  %.sroa.13710.2 = phi ptr [ %.sroa.13710.01328, %.body286 ], [ %.sroa.9708.11306, %.loopexit.split-lp823 ], [ %.sroa.13710.8, %.loopexit.split-lp811 ], [ %.sroa.13710.8, %.loopexit.split-lp ], [ %.sroa.13710.8, %.loopexit.split-lp806 ], [ %.sroa.9708.11306, %.loopexit822 ], [ %.sroa.13710.8, %.loopexit804 ], [ %.sroa.13710.8, %.loopexit805 ], [ %.sroa.13710.8, %.loopexit810 ], [ %.sroa.13710.8, %.loopexit815 ], [ %.sroa.13710.8, %.loopexit.split-lp816 ]
  %.sroa.0704.2 = phi ptr [ %.sroa.0704.01330, %.body286 ], [ %.sroa.0704.11307, %.loopexit.split-lp823 ], [ %.sroa.0704.8, %.loopexit.split-lp811 ], [ %.sroa.0704.8, %.loopexit.split-lp ], [ %.sroa.0704.8, %.loopexit.split-lp806 ], [ %.sroa.0704.11307, %.loopexit822 ], [ %.sroa.0704.8, %.loopexit804 ], [ %.sroa.0704.8, %.loopexit805 ], [ %.sroa.0704.8, %.loopexit810 ], [ %.sroa.0704.8, %.loopexit815 ], [ %.sroa.0704.8, %.loopexit.split-lp816 ]
  %.sroa.28.4 = phi ptr [ %.sroa.28.01331, %.body286 ], [ %.sroa.28.01331, %.loopexit.split-lp823 ], [ %.sroa.28.11, %.loopexit.split-lp811 ], [ %.sroa.15721.21314, %.loopexit.split-lp ], [ %.sroa.28.10, %.loopexit.split-lp806 ], [ %.sroa.28.01331, %.loopexit822 ], [ %.sroa.15721.21314, %.loopexit804 ], [ %.sroa.28.10, %.loopexit805 ], [ %.sroa.28.11, %.loopexit810 ], [ %.sroa.28.12, %.loopexit815 ], [ %.sroa.28.12, %.loopexit.split-lp816 ]
  %.sroa.0714.4 = phi ptr [ %.sroa.0714.01333, %.body286 ], [ %.sroa.0714.01333, %.loopexit.split-lp823 ], [ %.sroa.0714.11, %.loopexit.split-lp811 ], [ %.sroa.0714.21315, %.loopexit.split-lp ], [ %.sroa.0714.10, %.loopexit.split-lp806 ], [ %.sroa.0714.01333, %.loopexit822 ], [ %.sroa.0714.21315, %.loopexit804 ], [ %.sroa.0714.10, %.loopexit805 ], [ %.sroa.0714.11, %.loopexit810 ], [ %.sroa.0714.12, %.loopexit815 ], [ %.sroa.0714.12, %.loopexit.split-lp816 ]
  %.pn212.pn.pn = phi { ptr, i32 } [ %.pn197.pn, %.body286 ], [ %lpad.loopexit.split-lp825, %.loopexit.split-lp823 ], [ %lpad.loopexit.split-lp813, %.loopexit.split-lp811 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp808, %.loopexit.split-lp806 ], [ %lpad.loopexit824, %.loopexit822 ], [ %lpad.loopexit, %.loopexit804 ], [ %lpad.loopexit807, %.loopexit805 ], [ %lpad.loopexit812, %.loopexit810 ], [ %lpad.loopexit817, %.loopexit815 ], [ %lpad.loopexit.split-lp818, %.loopexit.split-lp816 ]
  %i.zh = load ptr, ptr %23, align 8, !tbaa !43
  call void @free(ptr noundef %i.zh) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.at
  %.sroa.13710.3 = phi ptr [ %.sroa.13710.2, %bb.cg ], [ %.sroa.13710.01328, %bb.at ]
  %.sroa.0704.3 = phi ptr [ %.sroa.0704.2, %bb.cg ], [ %.sroa.0704.01330, %bb.at ]
  %.sroa.28.5 = phi ptr [ %.sroa.28.4, %bb.cg ], [ %.sroa.28.01331, %bb.at ]
  %.sroa.0714.5 = phi ptr [ %.sroa.0714.4, %bb.cg ], [ %.sroa.0714.01333, %bb.at ]
  %.pn212.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn212.pn.pn, %bb.cg ], [ %i.pt, %bb.at ]
  %i.zi = load ptr, ptr %22, align 8, !tbaa !32
  call void @free(ptr noundef %i.zi) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  br label %.body270

.body270:                                         ; preds = %bb.r, %bb.ch
  %.sroa.13710.4 = phi ptr [ %.sroa.13710.3, %bb.ch ], [ %.sroa.13710.01328, %bb.r ]
  %.sroa.0704.4 = phi ptr [ %.sroa.0704.3, %bb.ch ], [ %.sroa.0704.01330, %bb.r ]
  %.sroa.28.6 = phi ptr [ %.sroa.28.5, %bb.ch ], [ %.sroa.28.01331, %bb.r ]
  %.sroa.0714.6 = phi ptr [ %.sroa.0714.5, %bb.ch ], [ %.sroa.0714.01333, %bb.r ]
  %.pn219.pn = phi { ptr, i32 } [ %.pn212.pn.pn.pn.pn, %bb.ch ], [ %i.lb, %bb.r ]
  %i.zj = load ptr, ptr %21, align 8, !tbaa !67
  call void @free(ptr noundef %i.zj) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br label %.body

.body:                                            ; preds = %bb.ac, %.body270, %bb.g
  %.sroa.18698.8 = phi ptr [ %.sroa.18698.11325, %bb.g ], [ %.sroa.18698.6, %bb.ac ], [ %.sroa.18698.2.lcssa, %.body270 ]
  %.sroa.0690.8 = phi ptr [ %.sroa.0690.11327, %bb.g ], [ %.sroa.0690.6, %bb.ac ], [ %.sroa.0690.2.lcssa, %.body270 ]
  %.sroa.13710.6 = phi ptr [ %.sroa.13710.01328, %bb.g ], [ %.sroa.13710.01328, %bb.ac ], [ %.sroa.13710.4, %.body270 ]
  %.sroa.0704.6 = phi ptr [ %.sroa.0704.01330, %bb.g ], [ %.sroa.0704.01330, %bb.ac ], [ %.sroa.0704.4, %.body270 ]
  %.sroa.28.8 = phi ptr [ %.sroa.28.01331, %bb.g ], [ %.sroa.28.01331, %bb.ac ], [ %.sroa.28.6, %.body270 ]
  %.sroa.0714.8 = phi ptr [ %.sroa.0714.01333, %bb.g ], [ %.sroa.0714.01333, %bb.ac ], [ %.sroa.0714.6, %.body270 ]
  %.pn235.pn.pn = phi { ptr, i32 } [ %i.ch, %bb.g ], [ %.pn227.pn.pn.pn.pn.pn.pn, %bb.ac ], [ %.pn219.pn, %.body270 ]
  %i.zk = load ptr, ptr %15, align 8, !tbaa !31
  call void @free(ptr noundef %i.zk) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.eg

bb.ci:                                            ; preds = %._crit_edge1335
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  store ptr %.sroa.0690.1.lcssa, ptr %25, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  store ptr %.sroa.11695.1.lcssa, ptr %26, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  invoke void @_ZN5Eigen8internal17set_from_tripletsIN9__gnu_cxx17__normal_iteratorIPNS_7TripletIdiEESt6vectorIS5_SaIS5_EEEENS_12SparseMatrixIdLi0EiEENS0_13scalar_sum_opIddEEEEvRKT_SH_RT0_T1_(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 1 dead_on_return %9)
          to label %bb.cj unwind label %bb.dr

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26
  store i8 0, ptr %27, align 8, !tbaa !72
  %i.zl = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.zl, i8 0, i64 64, i1 false)
  %i.zm = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i64 %i.bt, ptr %i.zm, align 8, !tbaa !78
  %i.zn = getelementptr inbounds nuw i8, ptr %27, i64 24 ; 2 uses
  %i.zo = shl i64 %i.bt, 2
  %i.zp = add i64 %i.zo, 4                        ; 2 uses
  %calloc1755 = call ptr @calloc(i64 1, i64 %i.zp) ; 2 uses
  store ptr %calloc1755, ptr %i.zn, align 8, !tbaa !77
  %.not6.i423 = icmp eq ptr %calloc1755, null
  br i1 %.not6.i423, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %bb.cj
  %i.zq = call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.zq, align 8, !tbaa !65
  invoke void @__cxa_throw(ptr nonnull %i.zq, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
          to label %.noexc424 unwind label %bb.cl

.noexc424:                                        ; preds = %bb.ck
  unreachable

bb.cl:                                            ; preds = %bb.ck
  %i.zr = landingpad { ptr, i32 }
          cleanup
  %i.zs = getelementptr inbounds nuw i8, ptr %27, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.zs) #26
  br label %.body375

bb.cm:                                            ; preds = %bb.cj
  store i64 %i.bt, ptr %i.zl, align 8, !tbaa !76
  %i.zt = getelementptr inbounds nuw i8, ptr %27, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #26
  store ptr %.sroa.0714.0.lcssa, ptr %28, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #26
  store ptr %.sroa.15721.0.lcssa, ptr %29, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  invoke void @_ZN5Eigen8internal17set_from_tripletsIN9__gnu_cxx17__normal_iteratorIPNS_7TripletIdiEESt6vectorIS5_SaIS5_EEEENS_12SparseMatrixIdLi0EiEENS0_13scalar_sum_opIddEEEEvRKT_SH_RT0_T1_(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dereferenceable(72) %27, ptr noundef nonnull align 1 dead_on_return %8)
          to label %bb.cn unwind label %bb.ds

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #26
  store i8 0, ptr %30, align 8, !tbaa !72
  %i.zu = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.zu, i8 0, i64 64, i1 false)
  %i.zv = getelementptr inbounds nuw i8, ptr %30, i64 16
  store i64 %i.bt, ptr %i.zv, align 8, !tbaa !78
  %i.zw = getelementptr inbounds nuw i8, ptr %30, i64 24 ; 2 uses
  %calloc = call ptr @calloc(i64 1, i64 %i.zp)    ; 2 uses
  store ptr %calloc, ptr %i.zw, align 8, !tbaa !77
  %.not6.i430 = icmp eq ptr %calloc, null
  br i1 %.not6.i430, label %bb.co, label %bb.cq

bb.co:                                            ; preds = %bb.cn
  %i.zx = call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.zx, align 8, !tbaa !65
  invoke void @__cxa_throw(ptr nonnull %i.zx, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
          to label %.noexc431 unwind label %bb.cp

.noexc431:                                        ; preds = %bb.co
  unreachable

bb.cp:                                            ; preds = %bb.co
  %i.zy = landingpad { ptr, i32 }
          cleanup
  %i.zz = getelementptr inbounds nuw i8, ptr %30, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.zz) #26
  br label %.body379

bb.cq:                                            ; preds = %bb.cn
  store i64 %i.bt, ptr %i.zu, align 8, !tbaa !76
  %i.aaa = getelementptr inbounds nuw i8, ptr %30, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #26
  store ptr %.sroa.0704.0.lcssa, ptr %31, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #26
  store ptr %.sroa.9708.0.lcssa, ptr %32, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  invoke void @_ZN5Eigen8internal17set_from_tripletsIN9__gnu_cxx17__normal_iteratorIPNS_7TripletIdiEESt6vectorIS5_SaIS5_EEEENS_12SparseMatrixIdLi0EiEENS0_13scalar_sum_opIddEEEEvRKT_SH_RT0_T1_(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dereferenceable(72) %30, ptr noundef nonnull align 1 dead_on_return %7)
          to label %bb.cr unwind label %bb.dt

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #26
  store i8 0, ptr %33, align 8, !tbaa !83, !alias.scope !314
  %i.aab = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i8 0, ptr %i.aab, align 8
  %.sroa.5466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %33, i64 16
  store i8 0, ptr %.sroa.5466.0..sroa_idx, align 8
  %.sroa.7468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %33, i64 24
  store ptr %5, ptr %.sroa.7468.0..sroa_idx, align 8
  %.sroa.8469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %33, i64 32
  store ptr %27, ptr %.sroa.8469.0..sroa_idx, align 8
  %i.aac = getelementptr inbounds nuw i8, ptr %33, i64 40
  store ptr %5, ptr %i.aac, align 8, !tbaa !315, !alias.scope !314
end_hunk_1
