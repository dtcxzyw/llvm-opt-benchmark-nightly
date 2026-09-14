Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/isolines_intrinsic?download=true
inline.NumInlined: 1150
inline.NumDeleted: 670
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN3igl18isolines_intrinsicIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEES3_NS2_IiLin1ELi1ELi0ELin1ELi1EEES5_S5_NS2_IdLin1ELin1ELi0ELin1ELin1EEES5_S3_EEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERKNS7_IT2_EERKNS7_IT3_EERKNS7_IT4_EENSC_6ScalarERNS1_15PlainObjectBaseIT5_EERNSX_IT6_EERNSX_IT7_EE:bb.a
  %i.gq = load i32, ptr %invariant.gep, align 4   ; 4 uses
  br i1 %.not.not.i.i297, label %.preheader897, label %bb.ab

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.loopexit: ; preds = %.critedge273
  %i.gr = sext i32 %.9 to i64
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.loopexit, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader
  %.0197.lcssa = phi i64 [ 0, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader ], [ %i.gr, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.loopexit ]
  %i.gs = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !39
  invoke void @_ZN5Eigen8internal29conservative_resize_like_implINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_Lb0EE3runERNS_9DenseBaseIS3_EEll(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %.0197.lcssa, i64 noundef %i.gt)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE18conservativeResizeElNS_10NoChange_tE.exit unwind label %bb.cv

bb.y:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE18conservativeResizeElNS_10NoChange_tE.exit, %._crit_edge587
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %.body287

bb.z:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i293, %bb.x
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %.body287

.preheader897:                                    ; preds = %.preheader504, %bb.aa
  %.sroa.06.0.in.i.i305 = phi ptr [ %.sroa.06.0.i.i306, %bb.aa ], [ %i.c, %.preheader504 ]
  %.sroa.06.0.i.i306 = load ptr, ptr %.sroa.06.0.in.i.i305, align 8, !tbaa !64 ; 3 uses
  %.not.i.i307 = icmp eq ptr %.sroa.06.0.i.i306, null
  br i1 %.not.i.i307, label %.loopexit494, label %bb.aa

bb.aa:                                            ; preds = %.preheader897
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i306, i64 8
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !40
  %i.gy = icmp eq i32 %i.gq, %i.gx
  br i1 %i.gy, label %.lr.ph591, label %.preheader897, !llvm.loop !110

bb.ab:                                            ; preds = %.preheader504
  %i.gz = sext i32 %i.gq to i64
  %i.ha = urem i64 %i.gz, %i.go                   ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.ha
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i298 = icmp eq ptr %i.hc, null
  br i1 %.not.i.i.i.i298, label %.loopexit494.thread, label %bb.ac

.loopexit494.thread:                              ; preds = %bb.ab
  %gep.1783 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.gl
  br label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !64 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !40
  %i.hg = icmp eq i32 %i.gq, %i.hf
  br i1 %i.hg, label %.lr.ph591, label %.lr.ph.i.i.i.i299

bb.ad:                                            ; preds = %bb.ae
  %i.hh = icmp eq i32 %i.gq, %i.hk
  br i1 %i.hh, label %.lr.ph591, label %.lr.ph.i.i.i.i299, !llvm.loop !111

.lr.ph.i.i.i.i299:                                ; preds = %bb.ac, %bb.ad
  %.020.i.i.i.i300 = phi ptr [ %i.hi, %bb.ad ], [ %i.hd, %bb.ac ]
  %i.hi = load ptr, ptr %.020.i.i.i.i300, align 8, !tbaa !64 ; 3 uses
  %.not18.i.i.i.i301 = icmp eq ptr %i.hi, null
  br i1 %.not18.i.i.i.i301, label %.loopexit494, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i299
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !40 ; 2 uses
  %i.hl = sext i32 %i.hk to i64
  %i.hm = urem i64 %i.hl, %i.go
  %.not19.i.i.i.i302 = icmp eq i64 %i.hm, %i.ha
  br i1 %.not19.i.i.i.i302, label %bb.ad, label %..loopexit_crit_edge21.i.i.i.i303, !llvm.loop !111

..loopexit_crit_edge21.i.i.i.i303:                ; preds = %bb.ae
  br label %.loopexit494, !llvm.loop !111

.loopexit494:                                     ; preds = %.lr.ph.i.i.i.i299, %.preheader897, %..loopexit_crit_edge21.i.i.i.i303
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.gl ; 2 uses
  br i1 %.not.not.i.i297, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %.loopexit494.thread, %.loopexit494
  %gep.1784 = phi ptr [ %gep.1783, %.loopexit494.thread ], [ %gep.1, %.loopexit494 ]
  %i.hn = load i32, ptr %gep.1784, align 4, !tbaa !40 ; 3 uses
  %i.ho = sext i32 %i.hn to i64
  %i.hp = urem i64 %i.ho, %i.go                   ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.hp
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i298.1 = icmp eq ptr %i.hr, null
  br i1 %.not.i.i.i.i298.1, label %.loopexit494.1.thread, label %bb.ag

.loopexit494.1.thread:                            ; preds = %bb.af
  %gep.2.idx785 = shl i64 %i.gl, 3
  %gep.2786 = getelementptr i8, ptr %invariant.gep, i64 %gep.2.idx785
  br label %bb.am

bb.ag:                                            ; preds = %bb.af
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !64 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !40
  %i.hv = icmp eq i32 %i.hn, %i.hu
  br i1 %i.hv, label %.lr.ph591, label %.lr.ph.i.i.i.i299.1

.lr.ph.i.i.i.i299.1:                              ; preds = %bb.ag, %bb.ai
  %.020.i.i.i.i300.1 = phi ptr [ %i.hw, %bb.ai ], [ %i.hs, %bb.ag ]
  %i.hw = load ptr, ptr %.020.i.i.i.i300.1, align 8, !tbaa !64 ; 3 uses
  %.not18.i.i.i.i301.1 = icmp eq ptr %i.hw, null
  br i1 %.not18.i.i.i.i301.1, label %.loopexit494.1, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i299.1
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !40 ; 2 uses
  %i.hz = sext i32 %i.hy to i64
  %i.ia = urem i64 %i.hz, %i.go
  %.not19.i.i.i.i302.1 = icmp eq i64 %i.ia, %i.hp
  br i1 %.not19.i.i.i.i302.1, label %bb.ai, label %..loopexit_crit_edge21.i.i.i.i303.1, !llvm.loop !111

..loopexit_crit_edge21.i.i.i.i303.1:              ; preds = %bb.ah
  br label %.loopexit494.1, !llvm.loop !111

bb.ai:                                            ; preds = %bb.ah
  %i.ib = icmp eq i32 %i.hn, %i.hy
  br i1 %i.ib, label %.lr.ph591, label %.lr.ph.i.i.i.i299.1, !llvm.loop !111

bb.aj:                                            ; preds = %.loopexit494
  %i.ic = load i32, ptr %gep.1, align 4
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %bb.aj
  %.sroa.06.0.in.i.i305.1 = phi ptr [ %i.c, %bb.aj ], [ %.sroa.06.0.i.i306.1, %bb.al ]
  %.sroa.06.0.i.i306.1 = load ptr, ptr %.sroa.06.0.in.i.i305.1, align 8, !tbaa !64 ; 3 uses
  %.not.i.i307.1 = icmp eq ptr %.sroa.06.0.i.i306.1, null
  br i1 %.not.i.i307.1, label %.loopexit494.1, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i306.1, i64 8
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !40
  %i.if = icmp eq i32 %i.ic, %i.ie
  br i1 %i.if, label %.lr.ph591, label %bb.ak, !llvm.loop !110

.loopexit494.1:                                   ; preds = %.lr.ph.i.i.i.i299.1, %bb.ak, %..loopexit_crit_edge21.i.i.i.i303.1
  %gep.2.idx = shl i64 %i.gl, 3
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %gep.2.idx ; 2 uses
  br i1 %.not.not.i.i297, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %.loopexit494.1.thread, %.loopexit494.1
  %gep.2787 = phi ptr [ %gep.2786, %.loopexit494.1.thread ], [ %gep.2, %.loopexit494.1 ]
  %i.ig = load i32, ptr %gep.2787, align 4, !tbaa !40 ; 3 uses
  %i.ih = sext i32 %i.ig to i64
  %i.ii = urem i64 %i.ih, %i.go                   ; 2 uses
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.ii
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i298.2 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i.i.i298.2, label %.preheader, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !64 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = load i32, ptr %i.im, align 4, !tbaa !40
  %i.io = icmp eq i32 %i.ig, %i.in
  br i1 %i.io, label %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit308.thread, label %.lr.ph.i.i.i.i299.2

.lr.ph.i.i.i.i299.2:                              ; preds = %bb.an, %bb.ap
  %.020.i.i.i.i300.2 = phi ptr [ %i.ip, %bb.ap ], [ %i.il, %bb.an ]
  %i.ip = load ptr, ptr %.020.i.i.i.i300.2, align 8, !tbaa !64 ; 3 uses
  %.not18.i.i.i.i301.2 = icmp eq ptr %i.ip, null
  br i1 %.not18.i.i.i.i301.2, label %.preheader, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i299.2
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !40 ; 2 uses
  %i.is = sext i32 %i.ir to i64
  %i.it = urem i64 %i.is, %i.go
  %.not19.i.i.i.i302.2 = icmp eq i64 %i.it, %i.ii
  br i1 %.not19.i.i.i.i302.2, label %bb.ap, label %..loopexit_crit_edge21.i.i.i.i303.2, !llvm.loop !111

..loopexit_crit_edge21.i.i.i.i303.2:              ; preds = %bb.ao
  br label %.preheader, !llvm.loop !111

bb.ap:                                            ; preds = %bb.ao
  %i.iu = icmp eq i32 %i.ig, %i.ir
  br i1 %i.iu, label %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit308.thread, label %.lr.ph.i.i.i.i299.2, !llvm.loop !111

bb.aq:                                            ; preds = %.loopexit494.1
  %i.iv = load i32, ptr %gep.2, align 4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.as, %bb.aq
  %.sroa.06.0.in.i.i305.2 = phi ptr [ %i.c, %bb.aq ], [ %.sroa.06.0.i.i306.2, %bb.as ]
  %.sroa.06.0.i.i306.2 = load ptr, ptr %.sroa.06.0.in.i.i305.2, align 8, !tbaa !64 ; 3 uses
  %.not.i.i307.2 = icmp eq ptr %.sroa.06.0.i.i306.2, null
  br i1 %.not.i.i307.2, label %.preheader, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i306.2, i64 8
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !40
  %i.iy = icmp eq i32 %i.iv, %i.ix
  br i1 %i.iy, label %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit308.thread, label %bb.ar, !llvm.loop !110

.lr.ph591:                                        ; preds = %bb.ad, %bb.aa, %bb.ai, %bb.al, %bb.ag, %bb.ac
  %.0195516 = phi i32 [ 1, %bb.ag ], [ 0, %bb.ac ], [ 0, %bb.aa ], [ 1, %bb.ai ], [ 1, %bb.al ], [ 0, %bb.ad ] ; 4 uses
  %i.iz = add nuw nsw i32 %.0195516, 1
  %i.ja = zext nneg i32 %.0195516 to i64          ; 2 uses
  %i.jb = add nuw nsw i64 %i.ja, 1
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph591, %.loopexit
  %indvars.iv662 = phi i64 [ %i.jb, %.lr.ph591 ], [ %indvars.iv.next663, %.loopexit ] ; 4 uses
  %i.jc = mul nsw i64 %i.gl, %indvars.iv662       ; 3 uses
  %gep593 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.jc
  %i.jd = load i32, ptr %gep593, align 4          ; 4 uses
  br i1 %.not.not.i.i297, label %.preheader888, label %bb.av

.preheader888:                                    ; preds = %bb.at, %bb.au
  %.sroa.06.0.in.i.i317 = phi ptr [ %.sroa.06.0.i.i318, %bb.au ], [ %i.c, %bb.at ]
  %.sroa.06.0.i.i318 = load ptr, ptr %.sroa.06.0.in.i.i317, align 8, !tbaa !64 ; 3 uses
  %.not.i.i319 = icmp eq ptr %.sroa.06.0.i.i318, null
  br i1 %.not.i.i319, label %.loopexit, label %bb.au

bb.au:                                            ; preds = %.preheader888
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i318, i64 8
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !40
  %i.jg = icmp eq i32 %i.jd, %i.jf
  br i1 %i.jg, label %.loopexit491, label %.preheader888, !llvm.loop !110

bb.av:                                            ; preds = %bb.at
  %i.jh = sext i32 %i.jd to i64
  %i.ji = urem i64 %i.jh, %i.go                   ; 2 uses
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.ji
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i310 = icmp eq ptr %i.jk, null
  br i1 %.not.i.i.i.i310, label %.loopexit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !64 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !40
  %i.jo = icmp eq i32 %i.jd, %i.jn
  br i1 %i.jo, label %.loopexit491, label %.lr.ph.i.i.i.i311

bb.ax:                                            ; preds = %bb.ay
  %i.jp = icmp eq i32 %i.jd, %i.js
  br i1 %i.jp, label %.loopexit491, label %.lr.ph.i.i.i.i311, !llvm.loop !111

.lr.ph.i.i.i.i311:                                ; preds = %bb.aw, %bb.ax
  %.020.i.i.i.i312 = phi ptr [ %i.jq, %bb.ax ], [ %i.jl, %bb.aw ]
  %i.jq = load ptr, ptr %.020.i.i.i.i312, align 8, !tbaa !64 ; 3 uses
  %.not18.i.i.i.i313 = icmp eq ptr %i.jq, null
  br i1 %.not18.i.i.i.i313, label %.loopexit, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i311
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !40 ; 2 uses
  %i.jt = sext i32 %i.js to i64
  %i.ju = urem i64 %i.jt, %i.go
  %.not19.i.i.i.i314 = icmp eq i64 %i.ju, %i.ji
  br i1 %.not19.i.i.i.i314, label %bb.ax, label %..loopexit_crit_edge21.i.i.i.i315, !llvm.loop !111

..loopexit_crit_edge21.i.i.i.i315:                ; preds = %bb.ay
  br label %.loopexit, !llvm.loop !111

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i311, %.preheader888, %..loopexit_crit_edge21.i.i.i.i315, %bb.av
  %indvars.iv.next663 = add nuw nsw i64 %indvars.iv662, 1 ; 2 uses
  %i.jv = and i64 %indvars.iv.next663, 4294967295
  %exitcond665.not = icmp eq i64 %i.jv, 3
  br i1 %exitcond665.not, label %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit308.thread.loopexit894, label %bb.at, !llvm.loop !117

.loopexit491:                                     ; preds = %bb.aw, %bb.ax, %bb.au
  %.0194590614 = trunc i64 %indvars.iv662 to i32
  %i.jw = add nuw i32 %.0195516, %.0194590614
  %i.jx = sub i32 3, %i.jw                        ; 2 uses
  %i.jy = mul nuw nsw i64 %i.gl, %i.ja
  %i.jz = getelementptr [4 x i8], ptr %i.gm, i64 %i.jy
  %i.ka = getelementptr [4 x i8], ptr %i.jz, i64 %indvars.iv674 ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !40 ; 3 uses
  %i.kc = sext i32 %i.kb to i64                   ; 2 uses
  %i.kd = urem i64 %i.kc, %i.go                   ; 3 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.kd
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i321 = icmp eq ptr %i.kf, null
  br i1 %.not.i.i.i.i321, label %.loopexit.i.i327, label %bb.az

bb.az:                                            ; preds = %.loopexit491
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !64 ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !40
  %i.kj = icmp eq i32 %i.kb, %i.ki
  br i1 %i.kj, label %.loopexit498, label %.lr.ph.i.i.i.i322

bb.ba:                                            ; preds = %bb.bb
  %i.kk = icmp eq i32 %i.kb, %i.kn
  br i1 %i.kk, label %.loopexit498, label %.lr.ph.i.i.i.i322, !llvm.loop !111

.lr.ph.i.i.i.i322:                                ; preds = %bb.az, %bb.ba
  %.020.i.i.i.i323 = phi ptr [ %i.kl, %bb.ba ], [ %i.kg, %bb.az ]
  %i.kl = load ptr, ptr %.020.i.i.i.i323, align 8, !tbaa !64 ; 4 uses
  %.not18.i.i.i.i324 = icmp eq ptr %i.kl, null
  br i1 %.not18.i.i.i.i324, label %.loopexit.i.i327, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i322
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !40 ; 2 uses
  %i.ko = sext i32 %i.kn to i64
  %i.kp = urem i64 %i.ko, %i.go
  %.not19.i.i.i.i325 = icmp eq i64 %i.kp, %i.kd
  br i1 %.not19.i.i.i.i325, label %bb.ba, label %..loopexit_crit_edge21.i.i.i.i326, !llvm.loop !111

..loopexit_crit_edge21.i.i.i.i326:                ; preds = %bb.bb
  br label %.loopexit.i.i327, !llvm.loop !111

.loopexit.i.i327:                                 ; preds = %.lr.ph.i.i.i.i322, %..loopexit_crit_edge21.i.i.i.i326, %.loopexit491
  %i.kq = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23
          to label %.noexc331 unwind label %bb.bh ; 5 uses

.noexc331:                                        ; preds = %.loopexit.i.i327
  store ptr null, ptr %i.kq, align 8, !tbaa !64
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load i32, ptr %i.ka, align 4, !tbaa !40
  store i32 %i.ks, ptr %i.kr, align 8, !tbaa !122
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 12
  store i32 0, ptr %i.kt, align 4, !tbaa !123
  %i.ku = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %10, i64 noundef %i.kd, i64 noundef %i.kc, ptr noundef nonnull %i.kq, i64 noundef 1)
          to label %.noexc331..loopexit498_crit_edge unwind label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i328

.noexc331..loopexit498_crit_edge:                 ; preds = %.noexc331
  %.pre682 = load i64, ptr %i.ay, align 8, !tbaa !38 ; 2 uses
  %.pre683 = load ptr, ptr %3, align 8, !tbaa !49
  %.pre684 = load i64, ptr %i.b, align 8, !tbaa !59
  %.pre685 = load ptr, ptr %10, align 8, !tbaa !58
  %.pre710 = mul nsw i64 %.pre682, %indvars.iv662
  br label %.loopexit498

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i328: ; preds = %.noexc331
  %i.kv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.kq, i64 noundef 16) #24
  br label %.body287

.loopexit498:                                     ; preds = %bb.ba, %.noexc331..loopexit498_crit_edge, %bb.az
  %.pre-phi711 = phi i64 [ %.pre710, %.noexc331..loopexit498_crit_edge ], [ %i.jc, %bb.az ], [ %i.jc, %bb.ba ]
  %i.kw = phi ptr [ %.pre685, %.noexc331..loopexit498_crit_edge ], [ %i.gp, %bb.az ], [ %i.gp, %bb.ba ]
  %i.kx = phi i64 [ %.pre684, %.noexc331..loopexit498_crit_edge ], [ %i.go, %bb.az ], [ %i.go, %bb.ba ] ; 2 uses
  %i.ky = phi ptr [ %.pre683, %.noexc331..loopexit498_crit_edge ], [ %i.gm, %bb.az ], [ %i.gm, %bb.ba ]
  %i.kz = phi i64 [ %.pre682, %.noexc331..loopexit498_crit_edge ], [ %i.gl, %bb.az ], [ %i.gl, %bb.ba ] ; 2 uses
  %.pn.i.i329 = phi ptr [ %i.ku, %.noexc331..loopexit498_crit_edge ], [ %i.kg, %bb.az ], [ %i.kl, %bb.ba ]
  %.1.i.i330 = getelementptr inbounds nuw i8, ptr %.pn.i.i329, i64 12
  %i.la = load i32, ptr %.1.i.i330, align 4, !tbaa !40 ; 4 uses
  %i.lb = getelementptr [4 x i8], ptr %i.ky, i64 %.pre-phi711
  %i.lc = getelementptr [4 x i8], ptr %i.lb, i64 %indvars.iv674 ; 2 uses
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !40 ; 3 uses
  %i.le = sext i32 %i.ld to i64                   ; 2 uses
  %i.lf = urem i64 %i.le, %i.kx                   ; 3 uses
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %i.lf
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i335 = icmp eq ptr %i.lh, null
  br i1 %.not.i.i.i.i335, label %.loopexit.i.i341, label %bb.bc

bb.bc:                                            ; preds = %.loopexit498
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !64 ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !40
  %i.ll = icmp eq i32 %i.ld, %i.lk
  br i1 %i.ll, label %.loopexit497, label %.lr.ph.i.i.i.i336

bb.bd:                                            ; preds = %bb.be
  %i.lm = icmp eq i32 %i.ld, %i.lp
  br i1 %i.lm, label %.loopexit497, label %.lr.ph.i.i.i.i336, !llvm.loop !111

.lr.ph.i.i.i.i336:                                ; preds = %bb.bc, %bb.bd
  %.020.i.i.i.i337 = phi ptr [ %i.ln, %bb.bd ], [ %i.li, %bb.bc ]
  %i.ln = load ptr, ptr %.020.i.i.i.i337, align 8, !tbaa !64 ; 4 uses
  %.not18.i.i.i.i338 = icmp eq ptr %i.ln, null
  br i1 %.not18.i.i.i.i338, label %.loopexit.i.i341, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i.i.i.i336
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !40 ; 2 uses
  %i.lq = sext i32 %i.lp to i64
  %i.lr = urem i64 %i.lq, %i.kx
  %.not19.i.i.i.i339 = icmp eq i64 %i.lr, %i.lf
  br i1 %.not19.i.i.i.i339, label %bb.bd, label %..loopexit_crit_edge21.i.i.i.i340, !llvm.loop !111

..loopexit_crit_edge21.i.i.i.i340:                ; preds = %bb.be
  br label %.loopexit.i.i341, !llvm.loop !111

.loopexit.i.i341:                                 ; preds = %.lr.ph.i.i.i.i336, %..loopexit_crit_edge21.i.i.i.i340, %.loopexit498
  %i.ls = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23
          to label %.noexc345 unwind label %bb.bi ; 5 uses

.noexc345:                                        ; preds = %.loopexit.i.i341
  store ptr null, ptr %i.ls, align 8, !tbaa !64
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lu = load i32, ptr %i.lc, align 4, !tbaa !40
  store i32 %i.lu, ptr %i.lt, align 8, !tbaa !122
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 12
  store i32 0, ptr %i.lv, align 4, !tbaa !123
  %i.lw = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %10, i64 noundef %i.lf, i64 noundef %i.le, ptr noundef nonnull %i.ls, i64 noundef 1)
          to label %.noexc345..loopexit497_crit_edge unwind label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i342

.noexc345..loopexit497_crit_edge:                 ; preds = %.noexc345
  %.pre686 = load i64, ptr %i.ay, align 8, !tbaa !38
  br label %.loopexit497

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i342: ; preds = %.noexc345
  %i.lx = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ls, i64 noundef 16) #24
  br label %.body287

.loopexit497:                                     ; preds = %bb.bd, %.noexc345..loopexit497_crit_edge, %bb.bc
  %i.ly = phi i64 [ %.pre686, %.noexc345..loopexit497_crit_edge ], [ %i.kz, %bb.bc ], [ %i.kz, %bb.bd ]
  %.pn.i.i343 = phi ptr [ %i.lw, %.noexc345..loopexit497_crit_edge ], [ %i.li, %bb.bc ], [ %i.ln, %bb.bd ]
  %.1.i.i344 = getelementptr inbounds nuw i8, ptr %.pn.i.i343, i64 12
  %i.lz = load i32, ptr %.1.i.i344, align 4, !tbaa !40 ; 4 uses
  %i.ma = sext i32 %i.jx to i64
  %i.mb = load ptr, ptr %0, align 8, !tbaa !17
  %i.mc = mul nsw i64 %i.ly, %i.ma
  %i.md = getelementptr [4 x i8], ptr %i.mb, i64 %indvars.iv674
  %i.me = getelementptr [4 x i8], ptr %i.md, i64 %i.mc
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !40
  %i.mg = sext i32 %i.mf to i64
  %i.mh = load ptr, ptr %1, align 8, !tbaa !35
  %i.mi = getelementptr inbounds [8 x i8], ptr %i.mh, i64 %i.mg
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !37
  %i.mk = fcmp olt double %i.mj, %6
  %i.ml = trunc i32 %i.jx to i1
  %i.mm = xor i1 %i.mk, %i.ml
  %i.mn = sext i32 %.0197595 to i64               ; 5 uses
  %i.mo = load i64, ptr %i.gj, align 8, !tbaa !38 ; 5 uses
  %.not.i349 = icmp sgt i64 %i.mo, %i.mn          ; 2 uses
  br i1 %i.mm, label %bb.bf, label %bb.bk

bb.bf:                                            ; preds = %.loopexit497
  br i1 %.not.i349, label %.critedge273.sink.split, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.mp = shl nsw i64 %i.mo, 1
  %i.mq = or disjoint i64 %i.mp, 1
  %i.mr = load i64, ptr %i.gk, align 8, !tbaa !39
  invoke void @_ZN5Eigen8internal29conservative_resize_like_implINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_Lb0EE3runERNS_9DenseBaseIS3_EEll(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %i.mq, i64 noundef %i.mr)
          to label %.critedge273.sink.split.sink.split unwind label %bb.bj

bb.bh:                                            ; preds = %.loopexit.i.i327
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %.body287

bb.bi:                                            ; preds = %.loopexit.i.i341
  %i.mt = landingpad { ptr, i32 }
          cleanup
  br label %.body287

bb.bj:                                            ; preds = %bb.bl, %bb.bg
  %i.mu = landingpad { ptr, i32 }
          cleanup
  br label %.body287

bb.bk:                                            ; preds = %.loopexit497
  br i1 %.not.i349, label %.critedge273.sink.split, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.mv = shl nsw i64 %i.mo, 1
  %i.mw = or disjoint i64 %i.mv, 1
  %i.mx = load i64, ptr %i.gk, align 8, !tbaa !39
  invoke void @_ZN5Eigen8internal29conservative_resize_like_implINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_Lb0EE3runERNS_9DenseBaseIS3_EEll(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %i.mw, i64 noundef %i.mx)
          to label %.critedge273.sink.split.sink.split unwind label %bb.bj

.preheader:                                       ; preds = %.lr.ph.i.i.i.i299.2, %bb.ar, %..loopexit_crit_edge21.i.i.i.i303.2, %bb.am
  %i.my = load ptr, ptr %0, align 8, !tbaa !17    ; 3 uses
  %i.mz = getelementptr [4 x i8], ptr %i.my, i64 %indvars.iv674 ; 7 uses
  %i.na = load ptr, ptr %1, align 8, !tbaa !35    ; 6 uses
  %i.nb = load i32, ptr %i.mz, align 4, !tbaa !40
  %i.nc = sext i32 %i.nb to i64
  %i.nd = getelementptr inbounds [8 x i8], ptr %i.na, i64 %i.nc
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !37
  %i.nf = fcmp oeq double %i.ne, %6
  br i1 %i.nf, label %bb.cb, label %bb.bz

_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit308.thread.loopexit894: ; preds = %.loopexit
  %i.ng = zext nneg i32 %.0195516 to i64
  %i.nh = zext nneg i32 %i.iz to i64
  br label %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit308.thread

_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit308.thread: ; preds = %bb.ap, %bb.as, %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit308.thread.loopexit894, %bb.an
  %.0195516789791 = phi i64 [ 2, %bb.an ], [ %i.ng, %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit308.thread.loopexit894 ], [ 2, %bb.as ], [ 2, %bb.ap ] ; 2 uses
  %i.ni = phi i64 [ 0, %bb.an ], [ %i.nh, %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit308.thread.loopexit894 ], [ 0, %bb.as ], [ 0, %bb.ap ]
  %i.nj = load ptr, ptr %0, align 8, !tbaa !17
  %i.nk = mul nsw i64 %i.gl, %.0195516789791      ; 3 uses
  %i.nl = getelementptr [4 x i8], ptr %i.nj, i64 %indvars.iv674
  %i.nm = getelementptr [4 x i8], ptr %i.nl, i64 %i.nk
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !40 ; 4 uses
  %i.no = sext i32 %i.nn to i64                   ; 2 uses
  %i.np = load i64, ptr %i.as, align 8, !tbaa !59 ; 2 uses
  %i.nq = urem i64 %i.no, %i.np                   ; 3 uses
  %i.nr = load ptr, ptr %12, align 8, !tbaa !58
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %i.nq
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i361 = icmp eq ptr %i.nt, null
  br i1 %.not.i.i.i.i361, label %.loopexit.i.i367, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit308.thread
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !64 ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !40
  %i.nx = icmp eq i32 %i.nn, %i.nw
  br i1 %i.nx, label %.loopexit500, label %.lr.ph.i.i.i.i362

bb.bn:                                            ; preds = %bb.bo
  %i.ny = icmp eq i32 %i.nn, %i.ob
  br i1 %i.ny, label %.loopexit500, label %.lr.ph.i.i.i.i362, !llvm.loop !111

.lr.ph.i.i.i.i362:                                ; preds = %bb.bm, %bb.bn
  %.020.i.i.i.i363 = phi ptr [ %i.nz, %bb.bn ], [ %i.nu, %bb.bm ]
  %i.nz = load ptr, ptr %.020.i.i.i.i363, align 8, !tbaa !64 ; 4 uses
  %.not18.i.i.i.i364 = icmp eq ptr %i.nz, null
  br i1 %.not18.i.i.i.i364, label %.loopexit.i.i367, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.i.i.i.i362
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !40 ; 2 uses
  %i.oc = sext i32 %i.ob to i64
  %i.od = urem i64 %i.oc, %i.np
  %.not19.i.i.i.i365 = icmp eq i64 %i.od, %i.nq
  br i1 %.not19.i.i.i.i365, label %bb.bn, label %..loopexit_crit_edge21.i.i.i.i366, !llvm.loop !111

..loopexit_crit_edge21.i.i.i.i366:                ; preds = %bb.bo
  br label %.loopexit.i.i367, !llvm.loop !111

.loopexit.i.i367:                                 ; preds = %.lr.ph.i.i.i.i362, %..loopexit_crit_edge21.i.i.i.i366, %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit308.thread
  %i.oe = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23
          to label %.noexc371 unwind label %bb.bu ; 5 uses

.noexc371:                                        ; preds = %.loopexit.i.i367
  store ptr null, ptr %i.oe, align 8, !tbaa !64
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  store i32 %i.nn, ptr %i.of, align 8, !tbaa !122
  %i.og = getelementptr inbounds nuw i8, ptr %i.oe, i64 12
  store i32 0, ptr %i.og, align 4, !tbaa !123
  %i.oh = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %12, i64 noundef %i.nq, i64 noundef %i.no, ptr noundef nonnull %i.oe, i64 noundef 1)
          to label %.noexc371..loopexit500_crit_edge unwind label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i368

.noexc371..loopexit500_crit_edge:                 ; preds = %.noexc371
  %.pre693 = load i64, ptr %i.ay, align 8, !tbaa !38 ; 2 uses
  %.pre694 = load ptr, ptr %3, align 8, !tbaa !49
  %.pre695 = load i64, ptr %i.b, align 8, !tbaa !59
  %.pre696 = load ptr, ptr %10, align 8, !tbaa !58
  %.pre706 = mul nsw i64 %.pre693, %.0195516789791
  br label %.loopexit500

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i368: ; preds = %.noexc371
  %i.oi = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.oe, i64 noundef 16) #24
  br label %.body287

.loopexit500:                                     ; preds = %bb.bn, %.noexc371..loopexit500_crit_edge, %bb.bm
  %.pre-phi707 = phi i64 [ %.pre706, %.noexc371..loopexit500_crit_edge ], [ %i.nk, %bb.bm ], [ %i.nk, %bb.bn ]
  %i.oj = phi ptr [ %.pre696, %.noexc371..loopexit500_crit_edge ], [ %i.gp, %bb.bm ], [ %i.gp, %bb.bn ]
  %i.ok = phi i64 [ %.pre695, %.noexc371..loopexit500_crit_edge ], [ %i.go, %bb.bm ], [ %i.go, %bb.bn ] ; 2 uses
  %i.ol = phi ptr [ %.pre694, %.noexc371..loopexit500_crit_edge ], [ %i.gm, %bb.bm ], [ %i.gm, %bb.bn ]
  %i.om = phi i64 [ %.pre693, %.noexc371..loopexit500_crit_edge ], [ %i.gl, %bb.bm ], [ %i.gl, %bb.bn ] ; 2 uses
  %.pn.i.i369 = phi ptr [ %i.oh, %.noexc371..loopexit500_crit_edge ], [ %i.nu, %bb.bm ], [ %i.nz, %bb.bn ]
  %.1.i.i370 = getelementptr inbounds nuw i8, ptr %.pn.i.i369, i64 12
  %i.on = load i32, ptr %.1.i.i370, align 4, !tbaa !40 ; 4 uses
  %i.oo = getelementptr [4 x i8], ptr %i.ol, i64 %.pre-phi707
  %i.op = getelementptr [4 x i8], ptr %i.oo, i64 %indvars.iv674 ; 2 uses
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !40 ; 3 uses
  %i.or = sext i32 %i.oq to i64                   ; 2 uses
  %i.os = urem i64 %i.or, %i.ok                   ; 3 uses
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %i.os
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i375 = icmp eq ptr %i.ou, null
  br i1 %.not.i.i.i.i375, label %.loopexit.i.i381, label %bb.bp

bb.bp:                                            ; preds = %.loopexit500
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !64 ; 3 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !40
  %i.oy = icmp eq i32 %i.oq, %i.ox
  br i1 %i.oy, label %.loopexit499, label %.lr.ph.i.i.i.i376

bb.bq:                                            ; preds = %bb.br
  %i.oz = icmp eq i32 %i.oq, %i.pc
  br i1 %i.oz, label %.loopexit499, label %.lr.ph.i.i.i.i376, !llvm.loop !111

.lr.ph.i.i.i.i376:                                ; preds = %bb.bp, %bb.bq
  %.020.i.i.i.i377 = phi ptr [ %i.pa, %bb.bq ], [ %i.ov, %bb.bp ]
  %i.pa = load ptr, ptr %.020.i.i.i.i377, align 8, !tbaa !64 ; 4 uses
  %.not18.i.i.i.i378 = icmp eq ptr %i.pa, null
  br i1 %.not18.i.i.i.i378, label %.loopexit.i.i381, label %bb.br

bb.br:                                            ; preds = %.lr.ph.i.i.i.i376
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !40 ; 2 uses
  %i.pd = sext i32 %i.pc to i64
  %i.pe = urem i64 %i.pd, %i.ok
  %.not19.i.i.i.i379 = icmp eq i64 %i.pe, %i.os
  br i1 %.not19.i.i.i.i379, label %bb.bq, label %..loopexit_crit_edge21.i.i.i.i380, !llvm.loop !111

..loopexit_crit_edge21.i.i.i.i380:                ; preds = %bb.br
  br label %.loopexit.i.i381, !llvm.loop !111

.loopexit.i.i381:                                 ; preds = %.lr.ph.i.i.i.i376, %..loopexit_crit_edge21.i.i.i.i380, %.loopexit500
  %i.pf = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23
          to label %.noexc385 unwind label %bb.bv ; 5 uses

.noexc385:                                        ; preds = %.loopexit.i.i381
  store ptr null, ptr %i.pf, align 8, !tbaa !64
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %i.ph = load i32, ptr %i.op, align 4, !tbaa !40
  store i32 %i.ph, ptr %i.pg, align 8, !tbaa !122
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pf, i64 12
  store i32 0, ptr %i.pi, align 4, !tbaa !123
  %i.pj = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %10, i64 noundef %i.os, i64 noundef %i.or, ptr noundef nonnull %i.pf, i64 noundef 1)
          to label %.noexc385..loopexit499_crit_edge unwind label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i382

.noexc385..loopexit499_crit_edge:                 ; preds = %.noexc385
  %.pre697 = load i64, ptr %i.ay, align 8, !tbaa !38
  br label %.loopexit499

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i382: ; preds = %.noexc385
  %i.pk = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.pf, i64 noundef 16) #24
  br label %.body287

.loopexit499:                                     ; preds = %bb.bq, %.noexc385..loopexit499_crit_edge, %bb.bp
  %i.pl = phi i64 [ %.pre697, %.noexc385..loopexit499_crit_edge ], [ %i.om, %bb.bp ], [ %i.om, %bb.bq ]
  %.pn.i.i383 = phi ptr [ %i.pj, %.noexc385..loopexit499_crit_edge ], [ %i.ov, %bb.bp ], [ %i.pa, %bb.bq ]
  %.1.i.i384 = getelementptr inbounds nuw i8, ptr %.pn.i.i383, i64 12
  %i.pm = load i32, ptr %.1.i.i384, align 4, !tbaa !40 ; 4 uses
  %i.pn = load ptr, ptr %0, align 8, !tbaa !17
  %i.po = mul nsw i64 %i.pl, %i.ni
  %i.pp = getelementptr [4 x i8], ptr %i.pn, i64 %indvars.iv674
  %i.pq = getelementptr [4 x i8], ptr %i.pp, i64 %i.po
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !40
  %i.ps = sext i32 %i.pr to i64
  %i.pt = load ptr, ptr %1, align 8, !tbaa !35
  %i.pu = getelementptr inbounds [8 x i8], ptr %i.pt, i64 %i.ps
  %i.pv = load double, ptr %i.pu, align 8, !tbaa !37
  %i.pw = fcmp ogt double %i.pv, %6
  %i.px = sext i32 %.0197595 to i64               ; 5 uses
  %i.py = load i64, ptr %i.gj, align 8, !tbaa !38 ; 5 uses
  %.not.i389 = icmp sgt i64 %i.py, %i.px          ; 2 uses
  br i1 %i.pw, label %bb.bs, label %bb.bx

bb.bs:                                            ; preds = %.loopexit499
  br i1 %.not.i389, label %.critedge273.sink.split, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.pz = shl nsw i64 %i.py, 1
  %i.qa = or disjoint i64 %i.pz, 1
  %i.qb = load i64, ptr %i.gk, align 8, !tbaa !39
  invoke void @_ZN5Eigen8internal29conservative_resize_like_implINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_Lb0EE3runERNS_9DenseBaseIS3_EEll(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %i.qa, i64 noundef %i.qb)
          to label %.critedge273.sink.split.sink.split unwind label %bb.bw

bb.bu:                                            ; preds = %.loopexit.i.i367
  %i.qc = landingpad { ptr, i32 }
          cleanup
  br label %.body287

bb.bv:                                            ; preds = %.loopexit.i.i381
  %i.qd = landingpad { ptr, i32 }
          cleanup
  br label %.body287

bb.bw:                                            ; preds = %bb.by, %bb.bt
  %i.qe = landingpad { ptr, i32 }
          cleanup
  br label %.body287

bb.bx:                                            ; preds = %.loopexit499
  br i1 %.not.i389, label %.critedge273.sink.split, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.qf = shl nsw i64 %i.py, 1
  %i.qg = or disjoint i64 %i.qf, 1
  %i.qh = load i64, ptr %i.gk, align 8, !tbaa !39
  invoke void @_ZN5Eigen8internal29conservative_resize_like_implINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_Lb0EE3runERNS_9DenseBaseIS3_EEll(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %i.qg, i64 noundef %i.qh)
          to label %.critedge273.sink.split.sink.split unwind label %bb.bw

end_hunk_0
