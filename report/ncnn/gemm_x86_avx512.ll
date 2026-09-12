Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avx512?download=true
inline.NumInlined: 238
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 209
loop-unroll.NumUnrolled: 213
begin_hunk_0_@_ZN4ncnn15Gemm_x86_avx51220create_pipeline_int8ERKNS_6OptionE.omp_outlined.9:bb.a
  %i.en = trunc <16 x i32> %i.em to <16 x i8>
  store <16 x i8> %i.en, ptr %i.ek, align 16, !tbaa !90
  %i.eo = getelementptr inbounds nuw i8, ptr %.2196.i, i64 64 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.1166195.i, i64 4
  %i.eq = add nuw nsw i32 %.1172194.i, 4          ; 2 uses
  %exitcond.not.i.3 = icmp eq i32 %i.eq, %.sroa.speculated
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph197.i, !llvm.loop !741

._crit_edge.i:                                    ; preds = %.lr.ph197.i.prol.loopexit, %.lr.ph197.i, %.preheader188.i
  %.2.lcssa.i = phi ptr [ %.1155.lcssa.i, %.preheader188.i ], [ %.lcssa357.unr, %.lr.ph197.i.prol.loopexit ], [ %i.eo, %.lr.ph197.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 16 ; 3 uses
  %i.er = or disjoint i64 %indvars.iv.next.i, 15
  %i.es = icmp samesign ult i64 %i.er, %i.bu
  br i1 %i.es, label %bb.j, label %.preheader187.loopexit.i, !llvm.loop !742

.preheader185.loopexit.i:                         ; preds = %._crit_edge217.i
  %i.et = trunc nuw nsw i64 %indvars.iv.next299.i to i32
  br label %.preheader185.i

.preheader185.i:                                  ; preds = %.preheader185.loopexit.i, %.preheader187.i
  %.1157.lcssa.i = phi i32 [ %.0156.lcssa.i, %.preheader187.i ], [ %i.et, %.preheader185.loopexit.i ] ; 3 uses
  %.3.lcssa.i = phi ptr [ %.0154.lcssa.i, %.preheader187.i ], [ %.5.lcssa.i, %.preheader185.loopexit.i ] ; 2 uses
  %i.eu = or disjoint i32 %.1157.lcssa.i, 3
  %i.ev = icmp slt i32 %i.eu, %.sroa.speculated86
  br i1 %i.ev, label %.lr.ph240.i, label %.preheader183.i

.lr.ph240.i:                                      ; preds = %.preheader185.i
  %i.ew = sext i32 %.0118 to i64
  %i.ex = icmp sgt i32 %.sroa.speculated, 1
  %i.ey = and i32 %.sroa.speculated, -2           ; 2 uses
  %i.ez = zext nneg i32 %.1157.lcssa.i to i64
  %i.fa = sext i32 %.sroa.speculated86 to i64
  %invariant.op332.i = add nsw i64 %i.fa, -3
  %i.fb = add i32 %.sroa.speculated, -2           ; 2 uses
  %i.fc = lshr i32 %i.fb, 1
  %i.fd = add nuw i32 %i.fc, 1                    ; 2 uses
  %xtraiter400 = and i32 %i.fd, 3                 ; 3 uses
  %i.fe = icmp ult i32 %i.fb, 6
  %unroll_iter406 = and i32 %i.fd, -4
  %lcmp.mod402.not = icmp eq i32 %xtraiter400, 0
  %lcmp.mod405 = icmp ne i32 %xtraiter400, 0
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge217.i, %.lr.ph221.i
  %indvars.iv298.i = phi i64 [ %i.cf, %.lr.ph221.i ], [ %indvars.iv.next299.i, %._crit_edge217.i ] ; 2 uses
  %.3220.i = phi ptr [ %.0154.lcssa.i, %.lr.ph221.i ], [ %.5.lcssa.i, %._crit_edge217.i ] ; 3 uses
  %i.ff = add nsw i64 %indvars.iv298.i, %i.aj
  %i.fg = load ptr, ptr %i.z, align 8, !tbaa !25
  %i.fh = load i32, ptr %i.aa, align 4, !tbaa !78 ; 2 uses
  %i.fi = sext i32 %i.fh to i64
  %i.fj = mul nsw i64 %i.ff, %i.fi
  %i.fk = load i64, ptr %i.ab, align 8, !tbaa !64
  %i.fl = mul i64 %i.fj, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fl
  %i.fn = getelementptr inbounds i8, ptr %i.fm, i64 %i.cc ; 3 uses
  %i.fo = insertelement <8 x i32> poison, i32 %i.fh, i64 0
  %i.fp = shufflevector <8 x i32> %i.fo, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.fq = mul <8 x i32> %i.fp, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 10 uses
  br i1 %i.cd, label %.lr.ph209.i.preheader, label %.preheader186.i

.lr.ph209.i.preheader:                            ; preds = %bb.k
  br i1 %i.ck, label %.lr.ph209.i.epil.preheader, label %.lr.ph209.i

.preheader186.i.loopexit.unr-lcssa:               ; preds = %.lr.ph209.i
  br i1 %lcmp.mod391.not, label %.preheader186.i, label %.lr.ph209.i.epil.preheader

.lr.ph209.i.epil.preheader:                       ; preds = %.preheader186.i.loopexit.unr-lcssa, %.lr.ph209.i.preheader
  %.4207.i.epil.init = phi ptr [ %.3220.i, %.lr.ph209.i.preheader ], [ %i.gv, %.preheader186.i.loopexit.unr-lcssa ]
  %.0169205.i.epil.init = phi ptr [ %i.fn, %.lr.ph209.i.preheader ], [ %i.gw, %.preheader186.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod394)
  br label %.lr.ph209.i.epil

.lr.ph209.i.epil:                                 ; preds = %.lr.ph209.i.epil, %.lr.ph209.i.epil.preheader
  %.4207.i.epil = phi ptr [ %i.ft, %.lr.ph209.i.epil ], [ %.4207.i.epil.init, %.lr.ph209.i.epil.preheader ] ; 2 uses
  %.0169205.i.epil = phi ptr [ %i.fu, %.lr.ph209.i.epil ], [ %.0169205.i.epil.init, %.lr.ph209.i.epil.preheader ] ; 2 uses
  %epil.iter390 = phi i32 [ %epil.iter390.next, %.lr.ph209.i.epil ], [ 0, %.lr.ph209.i.epil.preheader ]
  %i.fr = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.0169205.i.epil, <8 x i32> %i.fq, <8 x i32> splat (i32 -1), i8 1)
  %i.fs = trunc <8 x i32> %i.fr to <8 x i16>
  store <8 x i16> %i.fs, ptr %.4207.i.epil, align 16, !tbaa !90
  %i.ft = getelementptr inbounds nuw i8, ptr %.4207.i.epil, i64 16 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.0169205.i.epil, i64 2 ; 2 uses
  %epil.iter390.next = add i32 %epil.iter390, 1   ; 2 uses
  %epil.iter390.cmp.not = icmp eq i32 %epil.iter390.next, %xtraiter389
  br i1 %epil.iter390.cmp.not, label %.preheader186.i, label %.lr.ph209.i.epil, !llvm.loop !743

.preheader186.i:                                  ; preds = %.preheader186.i.loopexit.unr-lcssa, %.lr.ph209.i.epil, %bb.k
  %.0169.lcssa.i = phi ptr [ %i.fn, %bb.k ], [ %i.gw, %.preheader186.i.loopexit.unr-lcssa ], [ %i.fu, %.lr.ph209.i.epil ] ; 2 uses
  %.0167.lcssa.i = phi i32 [ 0, %bb.k ], [ %i.ce, %.lr.ph209.i.epil ], [ %i.ce, %.preheader186.i.loopexit.unr-lcssa ] ; 5 uses
  %.4.lcssa.i = phi ptr [ %.3220.i, %bb.k ], [ %i.gv, %.preheader186.i.loopexit.unr-lcssa ], [ %i.ft, %.lr.ph209.i.epil ] ; 3 uses
  %i.fv = icmp slt i32 %.0167.lcssa.i, %.sroa.speculated
  br i1 %i.fv, label %.lr.ph216.i.preheader, label %._crit_edge217.i

.lr.ph216.i.preheader:                            ; preds = %.preheader186.i
  %i.fw = sub i32 %.sroa.speculated, %.0167.lcssa.i
  %xtraiter397 = and i32 %i.fw, 3                 ; 2 uses
  %lcmp.mod398.not = icmp eq i32 %xtraiter397, 0
  br i1 %lcmp.mod398.not, label %.lr.ph216.i.prol.loopexit, label %.lr.ph216.i.prol

.lr.ph216.i.prol:                                 ; preds = %.lr.ph216.i.preheader, %.lr.ph216.i.prol
  %.5215.i.prol = phi ptr [ %i.gc, %.lr.ph216.i.prol ], [ %.4.lcssa.i, %.lr.ph216.i.preheader ] ; 2 uses
  %.1168214.i.prol = phi i32 [ %i.ge, %.lr.ph216.i.prol ], [ %.0167.lcssa.i, %.lr.ph216.i.preheader ]
  %.1170213.i.prol = phi ptr [ %i.gd, %.lr.ph216.i.prol ], [ %.0169.lcssa.i, %.lr.ph216.i.preheader ] ; 2 uses
  %prol.iter399 = phi i32 [ %prol.iter399.next, %.lr.ph216.i.prol ], [ 0, %.lr.ph216.i.preheader ]
  %i.fx = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.1170213.i.prol, <8 x i32> %i.fq, <8 x i32> splat (i32 -1), i8 1)
  %i.fy = shufflevector <8 x i32> %i.fx, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fz = trunc <16 x i32> %i.fy to <16 x i8>
  %i.ga = bitcast <16 x i8> %i.fz to <2 x i64>
  %i.gb = extractelement <2 x i64> %i.ga, i64 0
  store i64 %i.gb, ptr %.5215.i.prol, align 1, !tbaa !90
  %i.gc = getelementptr inbounds nuw i8, ptr %.5215.i.prol, i64 8 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.1170213.i.prol, i64 1 ; 2 uses
  %i.ge = add nuw nsw i32 %.1168214.i.prol, 1     ; 2 uses
  %prol.iter399.next = add i32 %prol.iter399, 1   ; 2 uses
  %prol.iter399.cmp.not = icmp eq i32 %prol.iter399.next, %xtraiter397
  br i1 %prol.iter399.cmp.not, label %.lr.ph216.i.prol.loopexit, label %.lr.ph216.i.prol, !llvm.loop !744

.lr.ph216.i.prol.loopexit:                        ; preds = %.lr.ph216.i.prol, %.lr.ph216.i.preheader
  %.lcssa360.unr = phi ptr [ poison, %.lr.ph216.i.preheader ], [ %i.gc, %.lr.ph216.i.prol ]
  %.5215.i.unr = phi ptr [ %.4.lcssa.i, %.lr.ph216.i.preheader ], [ %i.gc, %.lr.ph216.i.prol ]
  %.1168214.i.unr = phi i32 [ %.0167.lcssa.i, %.lr.ph216.i.preheader ], [ %i.ge, %.lr.ph216.i.prol ]
  %.1170213.i.unr = phi ptr [ %.0169.lcssa.i, %.lr.ph216.i.preheader ], [ %i.gd, %.lr.ph216.i.prol ]
  %i.gf = sub i32 %.0167.lcssa.i, %.sroa.speculated
  %i.gg = icmp ugt i32 %i.gf, -4
  br i1 %i.gg, label %._crit_edge217.i, label %.lr.ph216.i

.lr.ph209.i:                                      ; preds = %.lr.ph209.i.preheader, %.lr.ph209.i
  %.4207.i = phi ptr [ %i.gv, %.lr.ph209.i ], [ %.3220.i, %.lr.ph209.i.preheader ] ; 5 uses
  %.0169205.i = phi ptr [ %i.gw, %.lr.ph209.i ], [ %i.fn, %.lr.ph209.i.preheader ] ; 5 uses
  %niter396 = phi i32 [ %niter396.next.3, %.lr.ph209.i ], [ 0, %.lr.ph209.i.preheader ]
  %i.gh = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.0169205.i, <8 x i32> %i.fq, <8 x i32> splat (i32 -1), i8 1)
  %i.gi = trunc <8 x i32> %i.gh to <8 x i16>
  store <8 x i16> %i.gi, ptr %.4207.i, align 16, !tbaa !90
  %i.gj = getelementptr inbounds nuw i8, ptr %.4207.i, i64 16
  %i.gk = getelementptr inbounds nuw i8, ptr %.0169205.i, i64 2
  %i.gl = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.gk, <8 x i32> %i.fq, <8 x i32> splat (i32 -1), i8 1)
  %i.gm = trunc <8 x i32> %i.gl to <8 x i16>
  store <8 x i16> %i.gm, ptr %i.gj, align 16, !tbaa !90
  %i.gn = getelementptr inbounds nuw i8, ptr %.4207.i, i64 32
  %i.go = getelementptr inbounds nuw i8, ptr %.0169205.i, i64 4
  %i.gp = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.go, <8 x i32> %i.fq, <8 x i32> splat (i32 -1), i8 1)
  %i.gq = trunc <8 x i32> %i.gp to <8 x i16>
  store <8 x i16> %i.gq, ptr %i.gn, align 16, !tbaa !90
  %i.gr = getelementptr inbounds nuw i8, ptr %.4207.i, i64 48
  %i.gs = getelementptr inbounds nuw i8, ptr %.0169205.i, i64 6
  %i.gt = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.gs, <8 x i32> %i.fq, <8 x i32> splat (i32 -1), i8 1)
  %i.gu = trunc <8 x i32> %i.gt to <8 x i16>
  store <8 x i16> %i.gu, ptr %i.gr, align 16, !tbaa !90
  %i.gv = getelementptr inbounds nuw i8, ptr %.4207.i, i64 64 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.0169205.i, i64 8 ; 3 uses
  %niter396.next.3 = add i32 %niter396, 4         ; 2 uses
  %niter396.ncmp.3.not = icmp eq i32 %niter396.next.3, %unroll_iter395
  br i1 %niter396.ncmp.3.not, label %.preheader186.i.loopexit.unr-lcssa, label %.lr.ph209.i, !llvm.loop !745

.lr.ph216.i:                                      ; preds = %.lr.ph216.i.prol.loopexit, %.lr.ph216.i
  %.5215.i = phi ptr [ %i.hx, %.lr.ph216.i ], [ %.5215.i.unr, %.lr.ph216.i.prol.loopexit ] ; 5 uses
  %.1168214.i = phi i32 [ %i.hz, %.lr.ph216.i ], [ %.1168214.i.unr, %.lr.ph216.i.prol.loopexit ]
  %.1170213.i = phi ptr [ %i.hy, %.lr.ph216.i ], [ %.1170213.i.unr, %.lr.ph216.i.prol.loopexit ] ; 5 uses
  %i.gx = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.1170213.i, <8 x i32> %i.fq, <8 x i32> splat (i32 -1), i8 1)
  %i.gy = shufflevector <8 x i32> %i.gx, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gz = trunc <16 x i32> %i.gy to <16 x i8>
  %i.ha = bitcast <16 x i8> %i.gz to <2 x i64>
  %i.hb = extractelement <2 x i64> %i.ha, i64 0
  store i64 %i.hb, ptr %.5215.i, align 1, !tbaa !90
  %i.hc = getelementptr inbounds nuw i8, ptr %.5215.i, i64 8
  %i.hd = getelementptr inbounds nuw i8, ptr %.1170213.i, i64 1
  %i.he = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.hd, <8 x i32> %i.fq, <8 x i32> splat (i32 -1), i8 1)
  %i.hf = shufflevector <8 x i32> %i.he, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hg = trunc <16 x i32> %i.hf to <16 x i8>
  %i.hh = bitcast <16 x i8> %i.hg to <2 x i64>
  %i.hi = extractelement <2 x i64> %i.hh, i64 0
  store i64 %i.hi, ptr %i.hc, align 1, !tbaa !90
  %i.hj = getelementptr inbounds nuw i8, ptr %.5215.i, i64 16
  %i.hk = getelementptr inbounds nuw i8, ptr %.1170213.i, i64 2
  %i.hl = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.hk, <8 x i32> %i.fq, <8 x i32> splat (i32 -1), i8 1)
  %i.hm = shufflevector <8 x i32> %i.hl, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hn = trunc <16 x i32> %i.hm to <16 x i8>
  %i.ho = bitcast <16 x i8> %i.hn to <2 x i64>
  %i.hp = extractelement <2 x i64> %i.ho, i64 0
  store i64 %i.hp, ptr %i.hj, align 1, !tbaa !90
  %i.hq = getelementptr inbounds nuw i8, ptr %.5215.i, i64 24
  %i.hr = getelementptr inbounds nuw i8, ptr %.1170213.i, i64 3
  %i.hs = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.hr, <8 x i32> %i.fq, <8 x i32> splat (i32 -1), i8 1)
  %i.ht = shufflevector <8 x i32> %i.hs, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hu = trunc <16 x i32> %i.ht to <16 x i8>
  %i.hv = bitcast <16 x i8> %i.hu to <2 x i64>
  %i.hw = extractelement <2 x i64> %i.hv, i64 0
  store i64 %i.hw, ptr %i.hq, align 1, !tbaa !90
  %i.hx = getelementptr inbounds nuw i8, ptr %.5215.i, i64 32 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.1170213.i, i64 4
  %i.hz = add nuw nsw i32 %.1168214.i, 4          ; 2 uses
  %exitcond297.not.i.3 = icmp eq i32 %i.hz, %.sroa.speculated
  br i1 %exitcond297.not.i.3, label %._crit_edge217.i, label %.lr.ph216.i, !llvm.loop !746

._crit_edge217.i:                                 ; preds = %.lr.ph216.i.prol.loopexit, %.lr.ph216.i, %.preheader186.i
  %.5.lcssa.i = phi ptr [ %.4.lcssa.i, %.preheader186.i ], [ %.lcssa360.unr, %.lr.ph216.i.prol.loopexit ], [ %i.hx, %.lr.ph216.i ] ; 2 uses
  %indvars.iv.next299.i = add nuw nsw i64 %indvars.iv298.i, 8 ; 3 uses
  %i.ia = icmp slt i64 %indvars.iv.next299.i, %invariant.op.i
  br i1 %i.ia, label %bb.k, label %.preheader185.loopexit.i, !llvm.loop !747

.preheader183.loopexit.i:                         ; preds = %._crit_edge236.i
  %i.ib = trunc nsw i64 %indvars.iv.next303.i to i32
  br label %.preheader183.i

.preheader183.i:                                  ; preds = %.preheader183.loopexit.i, %.preheader185.i
  %.2158.lcssa.i = phi i32 [ %.1157.lcssa.i, %.preheader185.i ], [ %i.ib, %.preheader183.loopexit.i ] ; 3 uses
  %.6.lcssa.i = phi ptr [ %.3.lcssa.i, %.preheader185.i ], [ %.8.lcssa.i, %.preheader183.loopexit.i ] ; 2 uses
  %i.ic = or disjoint i32 %.2158.lcssa.i, 1
  %i.id = icmp slt i32 %i.ic, %.sroa.speculated86
  br i1 %i.id, label %.lr.ph262.i, label %.preheader.i

.lr.ph262.i:                                      ; preds = %.preheader183.i
  %i.ie = sext i32 %.0118 to i64                  ; 4 uses
  %i.if = icmp sgt i32 %.sroa.speculated, 1
  %i.ig = and i32 %.sroa.speculated, -2           ; 3 uses
  %i.ih = sext i32 %.2158.lcssa.i to i64
  %i.ii = sext i32 %.sroa.speculated86 to i64
  %invariant.op333.i = add nsw i64 %i.ii, -1
  %i.ij = add i32 %.sroa.speculated, -2           ; 4 uses
  %i.ik = zext i32 %i.ij to i64                   ; 2 uses
  %i.il = shl nuw nsw i64 %i.ik, 1
  %i.im = and i64 %i.il, 8589934588
  %i.in = and i64 %i.ik, 4294967294
  %i.io = lshr i32 %i.ij, 1
  %narrow = add nuw i32 %i.io, 1
  %i.ip = zext i32 %narrow to i64                 ; 5 uses
  %min.iters.check308 = icmp ult i32 %i.ij, 14
  %min.iters.check310 = icmp ult i32 %i.ij, 62
  %i.iq = and i64 %i.ip, 24
  %n.vec312 = and i64 %i.ip, 4294967264           ; 6 uses
  %i.ir = trunc nuw i64 %n.vec312 to i32
  %i.is = shl i32 %i.ir, 1
  %i.it = shl nuw nsw i64 %n.vec312, 1            ; 2 uses
  %i.iu = shl nuw nsw i64 %n.vec312, 2
  %cmp.n325 = icmp eq i64 %n.vec312, %i.ip
  %min.epilog.iters.check333 = icmp eq i64 %i.iq, 0
  %n.vec335 = and i64 %i.ip, 4294967288           ; 5 uses
  %i.iv = trunc nuw i64 %n.vec335 to i32
  %i.iw = shl i32 %i.iv, 1
  %i.ix = shl nuw nsw i64 %n.vec335, 1            ; 2 uses
  %i.iy = shl nuw nsw i64 %n.vec335, 2
  %cmp.n350 = icmp eq i64 %n.vec335, %i.ip
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge236.i, %.lr.ph240.i
  %indvars.iv302.i = phi i64 [ %i.ez, %.lr.ph240.i ], [ %indvars.iv.next303.i, %._crit_edge236.i ] ; 2 uses
  %.6239.i = phi ptr [ %.3.lcssa.i, %.lr.ph240.i ], [ %.8.lcssa.i, %._crit_edge236.i ] ; 3 uses
  %i.iz = add nsw i64 %indvars.iv302.i, %i.aj
  %i.ja = load ptr, ptr %i.z, align 8, !tbaa !25
  %i.jb = load i32, ptr %i.aa, align 4, !tbaa !78 ; 2 uses
  %i.jc = sext i32 %i.jb to i64
  %i.jd = mul nsw i64 %i.iz, %i.jc
  %i.je = load i64, ptr %i.ab, align 8, !tbaa !64
  %i.jf = mul i64 %i.jd, %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jf
  %i.jh = getelementptr inbounds i8, ptr %i.jg, i64 %i.ew ; 3 uses
  %i.ji = insertelement <4 x i32> poison, i32 %i.jb, i64 0
  %i.jj = shufflevector <4 x i32> %i.ji, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.jk = mul <4 x i32> %i.jj, <i32 0, i32 1, i32 2, i32 3> ; 10 uses
  br i1 %i.ex, label %.lr.ph228.i.preheader, label %.preheader184.i

.lr.ph228.i.preheader:                            ; preds = %bb.l
  br i1 %i.fe, label %.lr.ph228.i.epil.preheader, label %.lr.ph228.i

.preheader184.i.loopexit.unr-lcssa:               ; preds = %.lr.ph228.i
  br i1 %lcmp.mod402.not, label %.preheader184.i, label %.lr.ph228.i.epil.preheader

.lr.ph228.i.epil.preheader:                       ; preds = %.preheader184.i.loopexit.unr-lcssa, %.lr.ph228.i.preheader
  %.7226.i.epil.init = phi ptr [ %.6239.i, %.lr.ph228.i.preheader ], [ %i.kz, %.preheader184.i.loopexit.unr-lcssa ]
  %.0163224.i.epil.init = phi ptr [ %i.jh, %.lr.ph228.i.preheader ], [ %i.la, %.preheader184.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod405)
  br label %.lr.ph228.i.epil

.lr.ph228.i.epil:                                 ; preds = %.lr.ph228.i.epil, %.lr.ph228.i.epil.preheader
  %.7226.i.epil = phi ptr [ %i.jp, %.lr.ph228.i.epil ], [ %.7226.i.epil.init, %.lr.ph228.i.epil.preheader ] ; 2 uses
  %.0163224.i.epil = phi ptr [ %i.jq, %.lr.ph228.i.epil ], [ %.0163224.i.epil.init, %.lr.ph228.i.epil.preheader ] ; 2 uses
  %epil.iter401 = phi i32 [ %epil.iter401.next, %.lr.ph228.i.epil ], [ 0, %.lr.ph228.i.epil.preheader ]
  %i.jl = call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.0163224.i.epil, <4 x i32> %i.jk, <4 x i32> splat (i32 -1), i8 1)
  %i.jm = trunc <4 x i32> %i.jl to <4 x i16>
  %i.jn = bitcast <4 x i16> %i.jm to <1 x i64>
  %i.jo = extractelement <1 x i64> %i.jn, i64 0
  store i64 %i.jo, ptr %.7226.i.epil, align 1, !tbaa !90
  %i.jp = getelementptr inbounds nuw i8, ptr %.7226.i.epil, i64 8 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.0163224.i.epil, i64 2 ; 2 uses
  %epil.iter401.next = add i32 %epil.iter401, 1   ; 2 uses
  %epil.iter401.cmp.not = icmp eq i32 %epil.iter401.next, %xtraiter400
  br i1 %epil.iter401.cmp.not, label %.preheader184.i, label %.lr.ph228.i.epil, !llvm.loop !748

.preheader184.i:                                  ; preds = %.preheader184.i.loopexit.unr-lcssa, %.lr.ph228.i.epil, %bb.l
  %.0163.lcssa.i = phi ptr [ %i.jh, %bb.l ], [ %i.la, %.preheader184.i.loopexit.unr-lcssa ], [ %i.jq, %.lr.ph228.i.epil ] ; 2 uses
  %.0161.lcssa.i = phi i32 [ 0, %bb.l ], [ %i.ey, %.lr.ph228.i.epil ], [ %i.ey, %.preheader184.i.loopexit.unr-lcssa ] ; 5 uses
  %.7.lcssa.i = phi ptr [ %.6239.i, %bb.l ], [ %i.kz, %.preheader184.i.loopexit.unr-lcssa ], [ %i.jp, %.lr.ph228.i.epil ] ; 3 uses
  %i.jr = icmp slt i32 %.0161.lcssa.i, %.sroa.speculated
  br i1 %i.jr, label %.lr.ph235.i.preheader, label %._crit_edge236.i

.lr.ph235.i.preheader:                            ; preds = %.preheader184.i
  %i.js = sub i32 %.sroa.speculated, %.0161.lcssa.i
  %xtraiter408 = and i32 %i.js, 3                 ; 2 uses
  %lcmp.mod409.not = icmp eq i32 %xtraiter408, 0
  br i1 %lcmp.mod409.not, label %.lr.ph235.i.prol.loopexit, label %.lr.ph235.i.prol

.lr.ph235.i.prol:                                 ; preds = %.lr.ph235.i.preheader, %.lr.ph235.i.prol
  %.8234.i.prol = phi ptr [ %i.jy, %.lr.ph235.i.prol ], [ %.7.lcssa.i, %.lr.ph235.i.preheader ] ; 2 uses
  %.1162233.i.prol = phi i32 [ %i.ka, %.lr.ph235.i.prol ], [ %.0161.lcssa.i, %.lr.ph235.i.preheader ]
  %.1164232.i.prol = phi ptr [ %i.jz, %.lr.ph235.i.prol ], [ %.0163.lcssa.i, %.lr.ph235.i.preheader ] ; 2 uses
  %prol.iter410 = phi i32 [ %prol.iter410.next, %.lr.ph235.i.prol ], [ 0, %.lr.ph235.i.preheader ]
  %i.jt = call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.1164232.i.prol, <4 x i32> %i.jk, <4 x i32> splat (i32 -1), i8 1)
  %i.ju = shufflevector <4 x i32> %i.jt, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jv = trunc <16 x i32> %i.ju to <16 x i8>
  %i.jw = bitcast <16 x i8> %i.jv to <4 x float>
  %i.jx = extractelement <4 x float> %i.jw, i64 0
  store float %i.jx, ptr %.8234.i.prol, align 1, !tbaa !90
  %i.jy = getelementptr inbounds nuw i8, ptr %.8234.i.prol, i64 4 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.1164232.i.prol, i64 1 ; 2 uses
  %i.ka = add nuw nsw i32 %.1162233.i.prol, 1     ; 2 uses
  %prol.iter410.next = add i32 %prol.iter410, 1   ; 2 uses
  %prol.iter410.cmp.not = icmp eq i32 %prol.iter410.next, %xtraiter408
  br i1 %prol.iter410.cmp.not, label %.lr.ph235.i.prol.loopexit, label %.lr.ph235.i.prol, !llvm.loop !749

.lr.ph235.i.prol.loopexit:                        ; preds = %.lr.ph235.i.prol, %.lr.ph235.i.preheader
  %.lcssa363.unr = phi ptr [ poison, %.lr.ph235.i.preheader ], [ %i.jy, %.lr.ph235.i.prol ]
  %.8234.i.unr = phi ptr [ %.7.lcssa.i, %.lr.ph235.i.preheader ], [ %i.jy, %.lr.ph235.i.prol ]
  %.1162233.i.unr = phi i32 [ %.0161.lcssa.i, %.lr.ph235.i.preheader ], [ %i.ka, %.lr.ph235.i.prol ]
  %.1164232.i.unr = phi ptr [ %.0163.lcssa.i, %.lr.ph235.i.preheader ], [ %i.jz, %.lr.ph235.i.prol ]
  %i.kb = sub i32 %.0161.lcssa.i, %.sroa.speculated
  %i.kc = icmp ugt i32 %i.kb, -4
  br i1 %i.kc, label %._crit_edge236.i, label %.lr.ph235.i

.lr.ph228.i:                                      ; preds = %.lr.ph228.i.preheader, %.lr.ph228.i
  %.7226.i = phi ptr [ %i.kz, %.lr.ph228.i ], [ %.6239.i, %.lr.ph228.i.preheader ] ; 5 uses
  %.0163224.i = phi ptr [ %i.la, %.lr.ph228.i ], [ %i.jh, %.lr.ph228.i.preheader ] ; 5 uses
  %niter407 = phi i32 [ %niter407.next.3, %.lr.ph228.i ], [ 0, %.lr.ph228.i.preheader ]
  %i.kd = call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.0163224.i, <4 x i32> %i.jk, <4 x i32> splat (i32 -1), i8 1)
  %i.ke = trunc <4 x i32> %i.kd to <4 x i16>
  %i.kf = bitcast <4 x i16> %i.ke to <1 x i64>
  %i.kg = extractelement <1 x i64> %i.kf, i64 0
  store i64 %i.kg, ptr %.7226.i, align 1, !tbaa !90
  %i.kh = getelementptr inbounds nuw i8, ptr %.7226.i, i64 8
  %i.ki = getelementptr inbounds nuw i8, ptr %.0163224.i, i64 2
  %i.kj = call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.ki, <4 x i32> %i.jk, <4 x i32> splat (i32 -1), i8 1)
  %i.kk = trunc <4 x i32> %i.kj to <4 x i16>
  %i.kl = bitcast <4 x i16> %i.kk to <1 x i64>
  %i.km = extractelement <1 x i64> %i.kl, i64 0
  store i64 %i.km, ptr %i.kh, align 1, !tbaa !90
  %i.kn = getelementptr inbounds nuw i8, ptr %.7226.i, i64 16
  %i.ko = getelementptr inbounds nuw i8, ptr %.0163224.i, i64 4
  %i.kp = call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.ko, <4 x i32> %i.jk, <4 x i32> splat (i32 -1), i8 1)
  %i.kq = trunc <4 x i32> %i.kp to <4 x i16>
  %i.kr = bitcast <4 x i16> %i.kq to <1 x i64>
  %i.ks = extractelement <1 x i64> %i.kr, i64 0
  store i64 %i.ks, ptr %i.kn, align 1, !tbaa !90
  %i.kt = getelementptr inbounds nuw i8, ptr %.7226.i, i64 24
  %i.ku = getelementptr inbounds nuw i8, ptr %.0163224.i, i64 6
  %i.kv = call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.ku, <4 x i32> %i.jk, <4 x i32> splat (i32 -1), i8 1)
  %i.kw = trunc <4 x i32> %i.kv to <4 x i16>
  %i.kx = bitcast <4 x i16> %i.kw to <1 x i64>
  %i.ky = extractelement <1 x i64> %i.kx, i64 0
  store i64 %i.ky, ptr %i.kt, align 1, !tbaa !90
  %i.kz = getelementptr inbounds nuw i8, ptr %.7226.i, i64 32 ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.0163224.i, i64 8 ; 3 uses
  %niter407.next.3 = add i32 %niter407, 4         ; 2 uses
  %niter407.ncmp.3.not = icmp eq i32 %niter407.next.3, %unroll_iter406
  br i1 %niter407.ncmp.3.not, label %.preheader184.i.loopexit.unr-lcssa, label %.lr.ph228.i, !llvm.loop !750

.lr.ph235.i:                                      ; preds = %.lr.ph235.i.prol.loopexit, %.lr.ph235.i
  %.8234.i = phi ptr [ %i.mb, %.lr.ph235.i ], [ %.8234.i.unr, %.lr.ph235.i.prol.loopexit ] ; 5 uses
  %.1162233.i = phi i32 [ %i.md, %.lr.ph235.i ], [ %.1162233.i.unr, %.lr.ph235.i.prol.loopexit ]
  %.1164232.i = phi ptr [ %i.mc, %.lr.ph235.i ], [ %.1164232.i.unr, %.lr.ph235.i.prol.loopexit ] ; 5 uses
  %i.lb = call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.1164232.i, <4 x i32> %i.jk, <4 x i32> splat (i32 -1), i8 1)
  %i.lc = shufflevector <4 x i32> %i.lb, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ld = trunc <16 x i32> %i.lc to <16 x i8>
  %i.le = bitcast <16 x i8> %i.ld to <4 x float>
  %i.lf = extractelement <4 x float> %i.le, i64 0
  store float %i.lf, ptr %.8234.i, align 1, !tbaa !90
  %i.lg = getelementptr inbounds nuw i8, ptr %.8234.i, i64 4
  %i.lh = getelementptr inbounds nuw i8, ptr %.1164232.i, i64 1
  %i.li = call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.lh, <4 x i32> %i.jk, <4 x i32> splat (i32 -1), i8 1)
  %i.lj = shufflevector <4 x i32> %i.li, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lk = trunc <16 x i32> %i.lj to <16 x i8>
  %i.ll = bitcast <16 x i8> %i.lk to <4 x float>
  %i.lm = extractelement <4 x float> %i.ll, i64 0
  store float %i.lm, ptr %i.lg, align 1, !tbaa !90
  %i.ln = getelementptr inbounds nuw i8, ptr %.8234.i, i64 8
  %i.lo = getelementptr inbounds nuw i8, ptr %.1164232.i, i64 2
  %i.lp = call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.lo, <4 x i32> %i.jk, <4 x i32> splat (i32 -1), i8 1)
  %i.lq = shufflevector <4 x i32> %i.lp, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lr = trunc <16 x i32> %i.lq to <16 x i8>
  %i.ls = bitcast <16 x i8> %i.lr to <4 x float>
  %i.lt = extractelement <4 x float> %i.ls, i64 0
  store float %i.lt, ptr %i.ln, align 1, !tbaa !90
  %i.lu = getelementptr inbounds nuw i8, ptr %.8234.i, i64 12
  %i.lv = getelementptr inbounds nuw i8, ptr %.1164232.i, i64 3
  %i.lw = call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.lv, <4 x i32> %i.jk, <4 x i32> splat (i32 -1), i8 1)
  %i.lx = shufflevector <4 x i32> %i.lw, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ly = trunc <16 x i32> %i.lx to <16 x i8>
  %i.lz = bitcast <16 x i8> %i.ly to <4 x float>
  %i.ma = extractelement <4 x float> %i.lz, i64 0
  store float %i.ma, ptr %i.lu, align 1, !tbaa !90
  %i.mb = getelementptr inbounds nuw i8, ptr %.8234.i, i64 16 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.1164232.i, i64 4
  %i.md = add nuw nsw i32 %.1162233.i, 4          ; 2 uses
  %exitcond301.not.i.3 = icmp eq i32 %i.md, %.sroa.speculated
end_hunk_0
begin_hunk_1_@_ZN4ncnnL20pack_B_tile_quantizeERKNS_3MatERS0_iiiif:bb.a
  %i.sz = extractelement <2 x i64> %i.sy, i64 0
  store i64 %i.sz, ptr %.17.lcssa.i, align 8, !tbaa !111
  %i.ta = getelementptr inbounds nuw i8, ptr %.17.lcssa.i, i64 8 ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %.3437.lcssa.i, i64 16
  %i.tc = or disjoint i32 %.0446.lcssa.i, 1
  br label %.lr.ph679.i.prol.loopexit

.lr.ph679.i.prol.loopexit:                        ; preds = %.lr.ph679.i.prol, %.lr.ph679.i.preheader
  %.lcssa289.unr = phi ptr [ poison, %.lr.ph679.i.preheader ], [ %i.ta, %.lr.ph679.i.prol ]
  %.18678.i.unr = phi ptr [ %.17.lcssa.i, %.lr.ph679.i.preheader ], [ %i.ta, %.lr.ph679.i.prol ]
  %.4438677.i.unr = phi ptr [ %.3437.lcssa.i, %.lr.ph679.i.preheader ], [ %i.tb, %.lr.ph679.i.prol ]
  %.1447676.i.unr = phi i32 [ %.0446.lcssa.i, %.lr.ph679.i.preheader ], [ %i.tc, %.lr.ph679.i.prol ]
  %i.td = icmp eq i32 %5, %.neg327
  br i1 %i.td, label %.loopexit581.i, label %.lr.ph679.i

.lr.ph672.i:                                      ; preds = %.preheader585.i, %.lr.ph672.i
  %.17671.i = phi ptr [ %i.ua, %.lr.ph672.i ], [ %.13695.i, %.preheader585.i ] ; 2 uses
  %.3437670.i = phi ptr [ %i.ub, %.lr.ph672.i ], [ %i.qa, %.preheader585.i ] ; 3 uses
  %.0446669.i = phi i32 [ %i.uc, %.lr.ph672.i ], [ 0, %.preheader585.i ]
  %i.te = load <8 x float>, ptr %.3437670.i, align 1, !tbaa !90
  %i.tf = getelementptr inbounds nuw i8, ptr %.3437670.i, i64 %.idx459.i
  %i.tg = load <8 x float>, ptr %i.tf, align 1, !tbaa !90
  %i.th = fmul fast <8 x float> %i.te, %i.jf      ; 2 uses
  %i.ti = fmul fast <8 x float> %i.tg, %i.jf      ; 2 uses
  %i.tj = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.th)
  %i.tk = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ti)
  %i.tl = fadd fast <8 x float> %i.tj, %i.th
  %i.tm = fadd fast <8 x float> %i.tk, %i.ti
  %i.tn = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.tl)
  %i.to = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.tm)
  %i.tp = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.tn, <8 x i32> %i.to)
  %i.tq = bitcast <16 x i16> %i.tp to <4 x i64>
  %i.tr = shufflevector <4 x i64> %i.tq, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ts = bitcast <4 x i64> %i.tr to <16 x i16>
  %i.tt = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.ts, <16 x i16> splat (i16 -127))
  %i.tu = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.tt, <16 x i16> splat (i16 127))
  %i.tv = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.tu, <16 x i16> poison)
  %i.tw = bitcast <32 x i8> %i.tv to <8 x i32>
  %i.tx = shufflevector <8 x i32> %i.tw, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ty = bitcast <4 x i32> %i.tx to <16 x i8>
  %i.tz = shufflevector <16 x i8> %i.ty, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7, i32 8, i32 12, i32 9, i32 13, i32 10, i32 14, i32 11, i32 15>
  store <16 x i8> %i.tz, ptr %.17671.i, align 16, !tbaa !90
  %i.ua = getelementptr inbounds nuw i8, ptr %.17671.i, i64 16 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %.3437670.i, i64 32 ; 2 uses
  %i.uc = add nuw nsw i32 %.0446669.i, 2          ; 2 uses
  %i.ud = or disjoint i32 %i.uc, 1
  %i.ue = icmp slt i32 %i.ud, %5
  br i1 %i.ue, label %.lr.ph672.i, label %.preheader583.i, !llvm.loop !985

.lr.ph679.i:                                      ; preds = %.lr.ph679.i.prol.loopexit, %.lr.ph679.i
  %.18678.i = phi ptr [ %i.vf, %.lr.ph679.i ], [ %.18678.i.unr, %.lr.ph679.i.prol.loopexit ] ; 3 uses
  %.4438677.i = phi ptr [ %i.vg, %.lr.ph679.i ], [ %.4438677.i.unr, %.lr.ph679.i.prol.loopexit ] ; 4 uses
  %.1447676.i = phi i32 [ %i.vh, %.lr.ph679.i ], [ %.1447676.i.unr, %.lr.ph679.i.prol.loopexit ]
  %i.uf = load <4 x float>, ptr %.4438677.i, align 16, !tbaa !90
  %i.ug = getelementptr inbounds nuw i8, ptr %.4438677.i, i64 %.idx459.i
  %i.uh = load <4 x float>, ptr %i.ug, align 16, !tbaa !90
  %i.ui = shufflevector <4 x float> %i.uf, <4 x float> %i.uh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.uj = fmul fast <8 x float> %i.ui, %i.jf      ; 2 uses
  %i.uk = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.uj)
  %i.ul = fadd fast <8 x float> %i.uk, %i.uj
  %i.um = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ul)
  %i.un = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.um, <16 x i8> zeroinitializer, i8 -1)
  %i.uo = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.un, <16 x i8> splat (i8 -127))
  %i.up = bitcast <16 x i8> %i.uo to <2 x i64>
  %i.uq = extractelement <2 x i64> %i.up, i64 0
  store i64 %i.uq, ptr %.18678.i, align 8, !tbaa !111
  %i.ur = getelementptr inbounds nuw i8, ptr %.18678.i, i64 8
  %i.us = getelementptr inbounds nuw i8, ptr %.4438677.i, i64 16 ; 2 uses
  %i.ut = load <4 x float>, ptr %i.us, align 16, !tbaa !90
  %i.uu = getelementptr inbounds nuw i8, ptr %i.us, i64 %.idx459.i
  %i.uv = load <4 x float>, ptr %i.uu, align 16, !tbaa !90
  %i.uw = shufflevector <4 x float> %i.ut, <4 x float> %i.uv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ux = fmul fast <8 x float> %i.uw, %i.jf      ; 2 uses
  %i.uy = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ux)
  %i.uz = fadd fast <8 x float> %i.uy, %i.ux
  %i.va = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.uz)
  %i.vb = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.va, <16 x i8> zeroinitializer, i8 -1)
  %i.vc = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.vb, <16 x i8> splat (i8 -127))
  %i.vd = bitcast <16 x i8> %i.vc to <2 x i64>
  %i.ve = extractelement <2 x i64> %i.vd, i64 0
  store i64 %i.ve, ptr %i.ur, align 8, !tbaa !111
  %i.vf = getelementptr inbounds nuw i8, ptr %.18678.i, i64 16 ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %.4438677.i, i64 32
  %i.vh = add nuw nsw i32 %.1447676.i, 2          ; 2 uses
  %exitcond831.not.i.1 = icmp eq i32 %i.vh, %5
  br i1 %exitcond831.not.i.1, label %.loopexit581.i, label %.lr.ph679.i, !llvm.loop !986

.preheader582.i:                                  ; preds = %bb.k
  br i1 %i.jg, label %.lr.ph685.i, label %.preheader580.i

.preheader580.i:                                  ; preds = %.lr.ph685.i, %.preheader582.i
  %.0448.lcssa.i = phi i32 [ 0, %.preheader582.i ], [ %i.jl, %.lr.ph685.i ] ; 4 uses
  %.6440.lcssa.i = phi ptr [ %i.qa, %.preheader582.i ], [ %i.wt, %.lr.ph685.i ] ; 3 uses
  %.20.lcssa.i = phi ptr [ %.13695.i, %.preheader582.i ], [ %i.ws, %.lr.ph685.i ] ; 4 uses
  %i.vi = icmp slt i32 %.0448.lcssa.i, %5
  br i1 %i.vi, label %.lr.ph692.i.preheader, label %.loopexit581.i

.lr.ph692.i.preheader:                            ; preds = %.preheader580.i
  %.neg326 = or disjoint i32 %.0448.lcssa.i, 1
  br i1 %lcmp.mod313.not, label %.lr.ph692.i.prol.loopexit, label %.lr.ph692.i.prol

.lr.ph692.i.prol:                                 ; preds = %.lr.ph692.i.preheader
  %i.vj = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %.6440.lcssa.i, <8 x i32> %i.jk, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.vk = fmul fast <8 x float> %i.vj, %i.jf      ; 2 uses
  %i.vl = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.vk)
  %i.vm = fadd fast <8 x float> %i.vl, %i.vk
  %i.vn = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.vm)
  %i.vo = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.vn, <16 x i8> zeroinitializer, i8 -1)
  %i.vp = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.vo, <16 x i8> splat (i8 -127))
  %i.vq = bitcast <16 x i8> %i.vp to <2 x i64>
  %i.vr = extractelement <2 x i64> %i.vq, i64 0
  store i64 %i.vr, ptr %.20.lcssa.i, align 8, !tbaa !111
  %i.vs = getelementptr inbounds nuw i8, ptr %.20.lcssa.i, i64 8 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %.6440.lcssa.i, i64 4
  %i.vu = or disjoint i32 %.0448.lcssa.i, 1
  br label %.lr.ph692.i.prol.loopexit

.lr.ph692.i.prol.loopexit:                        ; preds = %.lr.ph692.i.prol, %.lr.ph692.i.preheader
  %.lcssa286.unr = phi ptr [ poison, %.lr.ph692.i.preheader ], [ %i.vs, %.lr.ph692.i.prol ]
  %.21691.i.unr = phi ptr [ %.20.lcssa.i, %.lr.ph692.i.preheader ], [ %i.vs, %.lr.ph692.i.prol ]
  %.7441690.i.unr = phi ptr [ %.6440.lcssa.i, %.lr.ph692.i.preheader ], [ %i.vt, %.lr.ph692.i.prol ]
  %.1449689.i.unr = phi i32 [ %.0448.lcssa.i, %.lr.ph692.i.preheader ], [ %i.vu, %.lr.ph692.i.prol ]
  %i.vv = icmp eq i32 %5, %.neg326
  br i1 %i.vv, label %.loopexit581.i, label %.lr.ph692.i

.lr.ph685.i:                                      ; preds = %.preheader582.i, %.lr.ph685.i
  %.20684.i = phi ptr [ %i.ws, %.lr.ph685.i ], [ %.13695.i, %.preheader582.i ] ; 2 uses
  %.6440683.i = phi ptr [ %i.wt, %.lr.ph685.i ], [ %i.qa, %.preheader582.i ] ; 3 uses
  %.0448682.i = phi i32 [ %i.wu, %.lr.ph685.i ], [ 0, %.preheader582.i ]
  %i.vw = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %.6440683.i, <8 x i32> %i.jk, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.vx = getelementptr inbounds nuw i8, ptr %.6440683.i, i64 4
  %i.vy = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.vx, <8 x i32> %i.jk, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.vz = fmul fast <8 x float> %i.vw, %i.jf      ; 2 uses
  %i.wa = fmul fast <8 x float> %i.vy, %i.jf      ; 2 uses
  %i.wb = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.vz)
  %i.wc = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.wa)
  %i.wd = fadd fast <8 x float> %i.wb, %i.vz
  %i.we = fadd fast <8 x float> %i.wc, %i.wa
  %i.wf = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.wd)
  %i.wg = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.we)
  %i.wh = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.wf, <8 x i32> %i.wg)
  %i.wi = bitcast <16 x i16> %i.wh to <4 x i64>
  %i.wj = shufflevector <4 x i64> %i.wi, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.wk = bitcast <4 x i64> %i.wj to <16 x i16>
  %i.wl = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.wk, <16 x i16> splat (i16 -127))
  %i.wm = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.wl, <16 x i16> splat (i16 127))
  %i.wn = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.wm, <16 x i16> poison)
  %i.wo = bitcast <32 x i8> %i.wn to <8 x i32>
  %i.wp = shufflevector <8 x i32> %i.wo, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.wq = bitcast <4 x i32> %i.wp to <16 x i8>
  %i.wr = shufflevector <16 x i8> %i.wq, <16 x i8> poison, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %i.wr, ptr %.20684.i, align 16, !tbaa !90
  %i.ws = getelementptr inbounds nuw i8, ptr %.20684.i, i64 16 ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %.6440683.i, i64 8 ; 2 uses
  %i.wu = add nuw nsw i32 %.0448682.i, 2          ; 2 uses
  %i.wv = or disjoint i32 %i.wu, 1
  %i.ww = icmp slt i32 %i.wv, %5
  br i1 %i.ww, label %.lr.ph685.i, label %.preheader580.i, !llvm.loop !987

.lr.ph692.i:                                      ; preds = %.lr.ph692.i.prol.loopexit, %.lr.ph692.i
  %.21691.i = phi ptr [ %i.xr, %.lr.ph692.i ], [ %.21691.i.unr, %.lr.ph692.i.prol.loopexit ] ; 3 uses
  %.7441690.i = phi ptr [ %i.xs, %.lr.ph692.i ], [ %.7441690.i.unr, %.lr.ph692.i.prol.loopexit ] ; 3 uses
  %.1449689.i = phi i32 [ %i.xt, %.lr.ph692.i ], [ %.1449689.i.unr, %.lr.ph692.i.prol.loopexit ]
  %i.wx = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %.7441690.i, <8 x i32> %i.jk, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.wy = fmul fast <8 x float> %i.wx, %i.jf      ; 2 uses
  %i.wz = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.wy)
  %i.xa = fadd fast <8 x float> %i.wz, %i.wy
  %i.xb = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.xa)
  %i.xc = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.xb, <16 x i8> zeroinitializer, i8 -1)
  %i.xd = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.xc, <16 x i8> splat (i8 -127))
  %i.xe = bitcast <16 x i8> %i.xd to <2 x i64>
  %i.xf = extractelement <2 x i64> %i.xe, i64 0
  store i64 %i.xf, ptr %.21691.i, align 8, !tbaa !111
  %i.xg = getelementptr inbounds nuw i8, ptr %.21691.i, i64 8
  %i.xh = getelementptr inbounds nuw i8, ptr %.7441690.i, i64 4
  %i.xi = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.xh, <8 x i32> %i.jk, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.xj = fmul fast <8 x float> %i.xi, %i.jf      ; 2 uses
  %i.xk = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.xj)
  %i.xl = fadd fast <8 x float> %i.xk, %i.xj
  %i.xm = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.xl)
  %i.xn = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.xm, <16 x i8> zeroinitializer, i8 -1)
  %i.xo = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.xn, <16 x i8> splat (i8 -127))
  %i.xp = bitcast <16 x i8> %i.xo to <2 x i64>
  %i.xq = extractelement <2 x i64> %i.xp, i64 0
  store i64 %i.xq, ptr %i.xg, align 8, !tbaa !111
  %i.xr = getelementptr inbounds nuw i8, ptr %.21691.i, i64 16 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %.7441690.i, i64 8
  %i.xt = add nuw nsw i32 %.1449689.i, 2          ; 2 uses
  %exitcond832.not.i.1 = icmp eq i32 %i.xt, %5
  br i1 %exitcond832.not.i.1, label %.loopexit581.i, label %.lr.ph692.i, !llvm.loop !988

.loopexit581.i:                                   ; preds = %.lr.ph692.i.prol.loopexit, %.lr.ph692.i, %.lr.ph679.i.prol.loopexit, %.lr.ph679.i, %.lr.ph666.i.prol.loopexit, %.lr.ph666.i, %.preheader580.i, %.preheader583.i, %.preheader586.i, %bb.k
  %.22.i = phi ptr [ %.13695.i, %bb.k ], [ %.20.lcssa.i, %.preheader580.i ], [ %i.sk, %.lr.ph666.i ], [ %i.vf, %.lr.ph679.i ], [ %.17.lcssa.i, %.preheader583.i ], [ %.14.lcssa.i, %.preheader586.i ], [ %.lcssa292.unr, %.lr.ph666.i.prol.loopexit ], [ %.lcssa289.unr, %.lr.ph679.i.prol.loopexit ], [ %.lcssa286.unr, %.lr.ph692.i.prol.loopexit ], [ %i.xr, %.lr.ph692.i ] ; 2 uses
  %indvars.iv.next834.i = add nuw nsw i64 %indvars.iv833.i, 8 ; 3 uses
  %i.xu = icmp slt i64 %indvars.iv.next834.i, %invariant.op.i
  br i1 %i.xu, label %bb.k, label %.preheader579.loopexit.i, !llvm.loop !989

.preheader572.loopexit.i:                         ; preds = %.loopexit574.i.us54, %.loopexit574.i.us, %.loopexit574.i.preheader
  %.us-phi48 = phi ptr [ %.13.lcssa.i, %.loopexit574.i.preheader ], [ %.29.i.us, %.loopexit574.i.us ], [ %.29.i.us55, %.loopexit574.i.us54 ]
  %.us-phi49 = phi i64 [ %i.kl, %.loopexit574.i.preheader ], [ %indvars.iv.next839.i.us, %.loopexit574.i.us ], [ %indvars.iv.next839.i.us56, %.loopexit574.i.us54 ]
  %i.xv = trunc nsw i64 %.us-phi49 to i32
  br label %.preheader572.i

.preheader572.i:                                  ; preds = %.preheader572.loopexit.i, %.preheader579.i
  %.2406.lcssa.i = phi i32 [ %.1405.lcssa.i, %.preheader579.i ], [ %i.xv, %.preheader572.loopexit.i ] ; 3 uses
  %.23.lcssa.i = phi ptr [ %.13.lcssa.i, %.preheader579.i ], [ %.us-phi48, %.preheader572.loopexit.i ] ; 2 uses
  %i.xw = or disjoint i32 %.2406.lcssa.i, 1
  %i.xx = icmp slt i32 %i.xw, %3
  br i1 %i.xx, label %.lr.ph750.i, label %.preheader569.i

.lr.ph750.i:                                      ; preds = %.preheader572.i
  %i.xy = sext i32 %4 to i64
  %i.xz = insertelement <4 x float> poison, float %6, i64 0
  %i.ya = shufflevector <4 x float> %i.xz, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.yb = icmp sgt i32 %5, 3
  %i.yc = and i32 %5, -4
  %i.yd = sext i32 %.2406.lcssa.i to i64
  %i.ye = sext i32 %3 to i64
  %i.yf = sext i32 %2 to i64
  %invariant.op916.i = add nsw i64 %i.ye, -1
  %i.yg = shl nuw nsw i64 %i.n, 2                 ; 2 uses
  %broadcast.splatinsert = insertelement <16 x float> poison, float %6, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert206 = insertelement <4 x float> poison, float %6, i64 0
  %broadcast.splat207 = shufflevector <4 x float> %broadcast.splatinsert206, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.l

.preheader569.loopexit.i:                         ; preds = %._crit_edge.i
  %i.yh = trunc nsw i64 %indvars.iv.next843.i to i32
  br label %.preheader569.i

.preheader569.i:                                  ; preds = %.preheader569.loopexit.i, %.preheader572.i
  %.3407.lcssa.i = phi i32 [ %.2406.lcssa.i, %.preheader572.i ], [ %i.yh, %.preheader569.loopexit.i ] ; 2 uses
  %.30.lcssa.i = phi ptr [ %.23.lcssa.i, %.preheader572.i ], [ %.33.lcssa.i, %.preheader569.loopexit.i ]
  %i.yi = icmp slt i32 %.3407.lcssa.i, %3
  br i1 %i.yi, label %.lr.ph769.i, label %_ZN4ncnnL24pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit

.lr.ph769.i:                                      ; preds = %.preheader569.i
  %i.yj = sext i32 %4 to i64
  %i.yk = insertelement <4 x float> poison, float %6, i64 0
  %i.yl = shufflevector <4 x float> %i.yk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ym = icmp sgt i32 %5, 3
  %i.yn = and i32 %5, -4
  %i.yo = sext i32 %.3407.lcssa.i to i64
  %i.yp = sext i32 %2 to i64
  %wide.trip.count.i = sext i32 %3 to i64
  %broadcast.splatinsert232 = insertelement <16 x float> poison, float %6, i64 0
  %broadcast.splat233 = shufflevector <16 x float> %broadcast.splatinsert232, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert254 = insertelement <8 x float> poison, float %6, i64 0
  %broadcast.splat255 = shufflevector <8 x float> %broadcast.splatinsert254, <8 x float> poison, <8 x i32> zeroinitializer
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i, %.lr.ph750.i
  %indvars.iv842.i = phi i64 [ %i.yd, %.lr.ph750.i ], [ %indvars.iv.next843.i, %._crit_edge.i ] ; 2 uses
  %.30749.i = phi ptr [ %.23.lcssa.i, %.lr.ph750.i ], [ %.33.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.yq = load ptr, ptr %0, align 8, !tbaa !25
  %i.yr = add nsw i64 %indvars.iv842.i, %i.yf
  %i.ys = mul i64 %i.yr, %i.n
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %i.yq, i64 %i.ys
  %i.yu = getelementptr inbounds [4 x i8], ptr %i.yt, i64 %i.xy ; 2 uses
  br i1 %i.yb, label %.lr.ph732.i, label %.preheader571.i

.preheader571.i:                                  ; preds = %.lr.ph732.i, %bb.l
  %.0425.lcssa.i = phi ptr [ %i.yu, %bb.l ], [ %i.zr, %.lr.ph732.i ] ; 2 uses
  %.0422.lcssa.i = phi i32 [ 0, %bb.l ], [ %i.yc, %.lr.ph732.i ] ; 3 uses
  %.31.lcssa.i = phi ptr [ %.30749.i, %bb.l ], [ %i.zq, %.lr.ph732.i ] ; 2 uses
  %i.yv = or disjoint i32 %.0422.lcssa.i, 1
  %i.yw = icmp slt i32 %i.yv, %5
  br i1 %i.yw, label %.lr.ph739.i, label %.preheader570.i

.lr.ph732.i:                                      ; preds = %bb.l, %.lr.ph732.i
  %.31731.i = phi ptr [ %i.zq, %.lr.ph732.i ], [ %.30749.i, %bb.l ] ; 2 uses
  %.0422730.i = phi i32 [ %i.zs, %.lr.ph732.i ], [ 0, %bb.l ]
  %.0425729.i = phi ptr [ %i.zr, %.lr.ph732.i ], [ %i.yu, %bb.l ] ; 3 uses
  %i.yx = load <4 x float>, ptr %.0425729.i, align 1, !tbaa !90
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %.0425729.i, i64 %i.n
  %i.yz = load <4 x float>, ptr %i.yy, align 1, !tbaa !90
  %i.za = fmul fast <4 x float> %i.yx, %i.ya      ; 2 uses
  %i.zb = fmul fast <4 x float> %i.yz, %i.ya      ; 2 uses
  %i.zc = shufflevector <4 x float> %i.za, <4 x float> %i.zb, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.zd = shufflevector <4 x float> %i.za, <4 x float> %i.zb, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.ze = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.zc)
  %i.zf = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.zd)
  %i.zg = fadd fast <4 x float> %i.ze, %i.zc
  %i.zh = fadd fast <4 x float> %i.zf, %i.zd
  %i.zi = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.zg)
  %i.zj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.zh)
  %i.zk = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.zi, <4 x i32> %i.zj)
  %i.zl = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.zk, <8 x i16> splat (i16 -127))
  %i.zm = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.zl, <8 x i16> splat (i16 127))
  %i.zn = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.zm, <8 x i16> poison)
  %i.zo = bitcast <16 x i8> %i.zn to <2 x i64>
  %i.zp = extractelement <2 x i64> %i.zo, i64 0
  store i64 %i.zp, ptr %.31731.i, align 8, !tbaa !111
  %i.zq = getelementptr inbounds nuw i8, ptr %.31731.i, i64 8 ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %.0425729.i, i64 16 ; 2 uses
  %i.zs = add nuw nsw i32 %.0422730.i, 4          ; 2 uses
  %i.zt = or disjoint i32 %i.zs, 3
  %i.zu = icmp slt i32 %i.zt, %5
  br i1 %i.zu, label %.lr.ph732.i, label %.preheader571.i, !llvm.loop !990

.preheader570.i:                                  ; preds = %.lr.ph739.i, %.preheader571.i
  %.1426.lcssa.i = phi ptr [ %.0425.lcssa.i, %.preheader571.i ], [ %i.acf, %.lr.ph739.i ] ; 10 uses
  %.1423.lcssa.i = phi i32 [ %.0422.lcssa.i, %.preheader571.i ], [ %i.acg, %.lr.ph739.i ] ; 7 uses
  %.32.lcssa.i = phi ptr [ %.31.lcssa.i, %.preheader571.i ], [ %i.ace, %.lr.ph739.i ] ; 10 uses
  %i.zv = icmp slt i32 %.1423.lcssa.i, %5
  br i1 %i.zv, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %.preheader570.i
  %i.zw = xor i32 %.1423.lcssa.i, -1
  %i.zx = add i32 %5, %i.zw                       ; 3 uses
  %i.zy = zext i32 %i.zx to i64
  %i.zz = add nuw nsw i64 %i.zy, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.zx, 3
  br i1 %min.iters.check, label %.lr.ph746.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.32.lcssa.i, i64 2
  %i.aaa = xor i32 %.1423.lcssa.i, -1
  %i.aab = add i32 %5, %i.aaa
  %i.aac = zext i32 %i.aab to i64                 ; 2 uses
  %i.aad = shl nuw nsw i64 %i.aac, 1
  %scevgep191 = getelementptr i8, ptr %scevgep, i64 %i.aad ; 2 uses
  %scevgep192 = getelementptr i8, ptr %.1426.lcssa.i, i64 %i.yg
  %i.aae = getelementptr i8, ptr %.1426.lcssa.i, i64 %i.yg
  %scevgep193 = getelementptr i8, ptr %i.aae, i64 4
  %i.aaf = shl nuw nsw i64 %i.aac, 2              ; 2 uses
  %scevgep194 = getelementptr i8, ptr %scevgep193, i64 %i.aaf
  %scevgep195 = getelementptr i8, ptr %.1426.lcssa.i, i64 4
  %scevgep196 = getelementptr i8, ptr %scevgep195, i64 %i.aaf
  %bound0 = icmp ult ptr %.32.lcssa.i, %scevgep194
  %bound1 = icmp ult ptr %scevgep192, %scevgep191
  %found.conflict = and i1 %bound0, %bound1
  %bound0197 = icmp ult ptr %.32.lcssa.i, %scevgep196
  %bound1198 = icmp ult ptr %.1426.lcssa.i, %scevgep191
  %found.conflict199 = and i1 %bound0197, %bound1198
  %conflict.rdx = or i1 %found.conflict, %found.conflict199
  br i1 %conflict.rdx, label %.lr.ph746.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check200 = icmp ult i32 %i.zx, 15
  br i1 %min.iters.check200, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aag = and i64 %i.zz, 12
  %n.vec = and i64 %i.zz, 8589934576              ; 6 uses
  %i.aah = shl nuw nsw i64 %n.vec, 1
  %i.aai = getelementptr i8, ptr %.32.lcssa.i, i64 %i.aah ; 2 uses
  %i.aaj = trunc i64 %n.vec to i32
  %i.aak = add i32 %.1423.lcssa.i, %i.aaj
  %i.aal = shl nuw nsw i64 %n.vec, 2
  %i.aam = getelementptr i8, ptr %.1426.lcssa.i, i64 %i.aal
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aan = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.32.lcssa.i, i64 %i.aan
  %i.aao = shl i64 %index, 2
  %next.gep201 = getelementptr i8, ptr %.1426.lcssa.i, i64 %i.aao ; 2 uses
  %wide.load = load <16 x float>, ptr %next.gep201, align 4, !tbaa !69, !alias.scope !1008
  %i.aap = fmul fast <16 x float> %wide.load, %broadcast.splat
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %next.gep201, i64 %i.n
  %wide.load202 = load <16 x float>, ptr %i.aaq, align 4, !tbaa !69, !alias.scope !1009
  %i.aar = fmul fast <16 x float> %wide.load202, %broadcast.splat
  %i.aas = shufflevector <16 x float> %i.aap, <16 x float> %i.aar, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.aat = tail call fast <32 x float> @llvm.round.v32f32(<32 x float> %i.aas)
  %i.aau = fptosi <32 x float> %i.aat to <32 x i32>
  %i.aav = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.aau, <32 x i32> splat (i32 -127))
  %i.aaw = tail call <32 x i32> @llvm.smin.v32i32(<32 x i32> %i.aav, <32 x i32> splat (i32 127))
  %interleaved.vec = trunc nsw <32 x i32> %i.aaw to <32 x i8>
  store <32 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !90, !alias.scope !1010, !noalias !1011
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aax = icmp eq i64 %index.next, %n.vec
  br i1 %i.aax, label %middle.block, label %vector.body, !llvm.loop !995

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.zz, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aag, 0
  br i1 %min.epilog.iters.check, label %.lr.ph746.i.preheader, label %vec.epilog.ph, !prof !92

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec205 = and i64 %i.zz, 8589934588           ; 5 uses
  %i.aay = shl nuw nsw i64 %n.vec205, 1
  %i.aaz = getelementptr i8, ptr %.32.lcssa.i, i64 %i.aay ; 2 uses
  %i.aba = trunc i64 %n.vec205 to i32
  %i.abb = add i32 %.1423.lcssa.i, %i.aba
  %i.abc = shl nuw nsw i64 %n.vec205, 2
  %i.abd = getelementptr i8, ptr %.1426.lcssa.i, i64 %i.abc
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index208 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next214, %vec.epilog.vector.body ] ; 3 uses
  %i.abe = shl i64 %index208, 1
  %next.gep209 = getelementptr i8, ptr %.32.lcssa.i, i64 %i.abe
  %i.abf = shl i64 %index208, 2
  %next.gep210 = getelementptr i8, ptr %.1426.lcssa.i, i64 %i.abf ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnnL30transpose_pack_B_tile_quantizeERKNS_3MatERS0_iiiif:bb.a
  %i.afa = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.aez)
  %i.afb = fadd fast <4 x float> %i.afa, %i.aez
  %i.afc = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.afb) ; 2 uses
  %i.afd = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.afc, <4 x i32> %i.afc)
  %i.afe = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.afd, <8 x i16> splat (i16 -127))
  %i.aff = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.afe, <8 x i16> splat (i16 127))
  %i.afg = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.aff, <8 x i16> poison)
  %i.afh = bitcast <16 x i8> %i.afg to <4 x i32>
  %i.afi = extractelement <4 x i32> %i.afh, i64 0
  store i32 %i.afi, ptr %.27.lcssa.i.us, align 4, !tbaa !51
  %i.afj = getelementptr inbounds nuw i8, ptr %.27.lcssa.i.us, i64 4 ; 2 uses
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %.6702.lcssa.i.us, i64 %i.n
  %i.afl = or disjoint i32 %.0717.lcssa.i.us, 1
  br label %.lr.ph1197.i.us.prol.loopexit

.lr.ph1197.i.us.prol.loopexit:                    ; preds = %.lr.ph1197.i.us.prol, %.lr.ph1197.i.us.preheader
  %.lcssa244.unr = phi ptr [ poison, %.lr.ph1197.i.us.preheader ], [ %i.afj, %.lr.ph1197.i.us.prol ]
  %.281196.i.us.unr = phi ptr [ %.27.lcssa.i.us, %.lr.ph1197.i.us.preheader ], [ %i.afj, %.lr.ph1197.i.us.prol ]
  %.77031195.i.us.unr = phi ptr [ %.6702.lcssa.i.us, %.lr.ph1197.i.us.preheader ], [ %i.afk, %.lr.ph1197.i.us.prol ]
  %.17181194.i.us.unr = phi i32 [ %.0717.lcssa.i.us, %.lr.ph1197.i.us.preheader ], [ %i.afl, %.lr.ph1197.i.us.prol ]
  %i.afm = icmp eq i32 %5, %.neg282
  br i1 %i.afm, label %.loopexit1081.i.us, label %.lr.ph1197.i.us

.lr.ph1197.i.us:                                  ; preds = %.lr.ph1197.i.us.prol.loopexit, %.lr.ph1197.i.us
  %.281196.i.us = phi ptr [ %i.agl, %.lr.ph1197.i.us ], [ %.281196.i.us.unr, %.lr.ph1197.i.us.prol.loopexit ] ; 3 uses
  %.77031195.i.us = phi ptr [ %i.agm, %.lr.ph1197.i.us ], [ %.77031195.i.us.unr, %.lr.ph1197.i.us.prol.loopexit ] ; 2 uses
  %.17181194.i.us = phi i32 [ %i.agn, %.lr.ph1197.i.us ], [ %.17181194.i.us.unr, %.lr.ph1197.i.us.prol.loopexit ]
  %i.afn = load <4 x float>, ptr %.77031195.i.us, align 1, !tbaa !90
  %i.afo = fmul fast <4 x float> %i.afn, %i.zv    ; 2 uses
  %i.afp = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.afo)
  %i.afq = fadd fast <4 x float> %i.afp, %i.afo
  %i.afr = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.afq) ; 2 uses
  %i.afs = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.afr, <4 x i32> %i.afr)
  %i.aft = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.afs, <8 x i16> splat (i16 -127))
  %i.afu = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.aft, <8 x i16> splat (i16 127))
  %i.afv = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.afu, <8 x i16> poison)
  %i.afw = bitcast <16 x i8> %i.afv to <4 x i32>
  %i.afx = extractelement <4 x i32> %i.afw, i64 0
  store i32 %i.afx, ptr %.281196.i.us, align 4, !tbaa !51
  %i.afy = getelementptr inbounds nuw i8, ptr %.281196.i.us, i64 4
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %.77031195.i.us, i64 %i.n ; 2 uses
  %i.aga = load <4 x float>, ptr %i.afz, align 1, !tbaa !90
  %i.agb = fmul fast <4 x float> %i.aga, %i.zv    ; 2 uses
  %i.agc = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.agb)
  %i.agd = fadd fast <4 x float> %i.agc, %i.agb
  %i.age = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.agd) ; 2 uses
  %i.agf = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.age, <4 x i32> %i.age)
  %i.agg = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.agf, <8 x i16> splat (i16 -127))
  %i.agh = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.agg, <8 x i16> splat (i16 127))
  %i.agi = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.agh, <8 x i16> poison)
  %i.agj = bitcast <16 x i8> %i.agi to <4 x i32>
  %i.agk = extractelement <4 x i32> %i.agj, i64 0
  store i32 %i.agk, ptr %i.afy, align 4, !tbaa !51
  %i.agl = getelementptr inbounds nuw i8, ptr %.281196.i.us, i64 8 ; 2 uses
  %i.agm = getelementptr inbounds nuw [4 x i8], ptr %i.afz, i64 %i.n
  %i.agn = add nuw nsw i32 %.17181194.i.us, 2     ; 2 uses
  %exitcond1384.not.i.us.1 = icmp eq i32 %i.agn, %5
  br i1 %exitcond1384.not.i.us.1, label %.loopexit1081.i.us, label %.lr.ph1197.i.us, !llvm.loop !1028

.loopexit1081.i.us:                               ; preds = %.lr.ph1178.i.us, %.lr.ph1184.i.us, %.lr.ph1197.i.us.prol.loopexit, %.lr.ph1197.i.us, %.preheader1080.i.us, %.loopexit1082.i.us
  %.29.i.us = phi ptr [ %.201200.i.us, %.loopexit1082.i.us ], [ %.27.lcssa.i.us, %.preheader1080.i.us ], [ %i.adu, %.lr.ph1184.i.us ], [ %i.agl, %.lr.ph1197.i.us ], [ %.lcssa244.unr, %.lr.ph1197.i.us.prol.loopexit ], [ %i.ach, %.lr.ph1178.i.us ] ; 2 uses
  %indvars.iv.next1386.i.us = add nuw nsw i64 %indvars.iv1385.i.us, 4 ; 3 uses
  %i.ago = icmp slt i64 %indvars.iv.next1386.i.us, %invariant.op1499.i
  br i1 %i.ago, label %.loopexit1084.i.us, label %.preheader1079.loopexit.i, !llvm.loop !1029

.lr.ph1137.i.preheader:                           ; preds = %.lr.ph1166.i, %.loopexit1087.i.loopexit17
  %indvars.iv1381.i = phi i64 [ %indvars.iv.next1382.i, %.loopexit1087.i.loopexit17 ], [ %i.iw, %.lr.ph1166.i ] ; 2 uses
  %.101165.i = phi ptr [ %i.aku, %.loopexit1087.i.loopexit17 ], [ %.0647.lcssa.i, %.lr.ph1166.i ]
  %i.agp = load ptr, ptr %0, align 8, !tbaa !25
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %i.agp, i64 %i.ik
  %i.agr = add nsw i64 %indvars.iv1381.i, %i.iy
  %i.ags = mul nsw i64 %i.agr, %i.iz
  %i.agt = getelementptr inbounds [4 x i8], ptr %i.agq, i64 %i.ags
  br label %.lr.ph1137.i

.lr.ph1137.i:                                     ; preds = %.lr.ph1137.i.preheader, %.lr.ph1137.i
  %.111136.i = phi ptr [ %i.aku, %.lr.ph1137.i ], [ %.101165.i, %.lr.ph1137.i.preheader ] ; 3 uses
  %.06781135.i = phi ptr [ %i.akv, %.lr.ph1137.i ], [ %i.agt, %.lr.ph1137.i.preheader ] ; 9 uses
  %.06861134.i = phi i32 [ %i.akw, %.lr.ph1137.i ], [ 0, %.lr.ph1137.i.preheader ]
  %i.agu = load <16 x float>, ptr %.06781135.i, align 64, !tbaa !90
  %i.agv = getelementptr inbounds nuw i8, ptr %.06781135.i, i64 64
  %i.agw = load <16 x float>, ptr %i.agv, align 64, !tbaa !90
  %i.agx = getelementptr inbounds nuw i8, ptr %.06781135.i, i64 128
  %i.agy = load <16 x float>, ptr %i.agx, align 64, !tbaa !90
  %i.agz = getelementptr inbounds nuw i8, ptr %.06781135.i, i64 192
  %i.aha = load <16 x float>, ptr %i.agz, align 64, !tbaa !90
  %i.ahb = getelementptr inbounds nuw i8, ptr %.06781135.i, i64 256
  %i.ahc = load <16 x float>, ptr %i.ahb, align 64, !tbaa !90
  %i.ahd = getelementptr inbounds nuw i8, ptr %.06781135.i, i64 320
  %i.ahe = load <16 x float>, ptr %i.ahd, align 64, !tbaa !90
  %i.ahf = getelementptr inbounds nuw i8, ptr %.06781135.i, i64 384
  %i.ahg = load <16 x float>, ptr %i.ahf, align 64, !tbaa !90
  %i.ahh = getelementptr inbounds nuw i8, ptr %.06781135.i, i64 448
  %i.ahi = load <16 x float>, ptr %i.ahh, align 64, !tbaa !90
  %i.ahj = fmul fast <16 x float> %i.agu, %i.in   ; 2 uses
  %i.ahk = fmul fast <16 x float> %i.agw, %i.in   ; 2 uses
  %i.ahl = fmul fast <16 x float> %i.agy, %i.in   ; 2 uses
  %i.ahm = fmul fast <16 x float> %i.aha, %i.in   ; 2 uses
  %i.ahn = fmul fast <16 x float> %i.ahc, %i.in   ; 2 uses
  %i.aho = fmul fast <16 x float> %i.ahe, %i.in   ; 2 uses
  %i.ahp = fmul fast <16 x float> %i.ahg, %i.in   ; 2 uses
  %i.ahq = fmul fast <16 x float> %i.ahi, %i.in   ; 2 uses
  %i.ahr = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ahj)
  %i.ahs = fadd fast <16 x float> %i.ahr, %i.ahj
  %i.aht = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ahs, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ahu = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.aht, <16 x i8> zeroinitializer, i16 -1)
  %i.ahv = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.ahu, <16 x i8> splat (i8 -127))
  %i.ahw = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ahk)
  %i.ahx = fadd fast <16 x float> %i.ahw, %i.ahk
  %i.ahy = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ahx, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ahz = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ahy, <16 x i8> zeroinitializer, i16 -1)
  %i.aia = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.ahz, <16 x i8> splat (i8 -127))
  %i.aib = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ahl)
  %i.aic = fadd fast <16 x float> %i.aib, %i.ahl
  %i.aid = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.aic, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aie = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.aid, <16 x i8> zeroinitializer, i16 -1)
  %i.aif = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.aie, <16 x i8> splat (i8 -127))
  %i.aig = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ahm)
  %i.aih = fadd fast <16 x float> %i.aig, %i.ahm
  %i.aii = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.aih, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aij = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.aii, <16 x i8> zeroinitializer, i16 -1)
  %i.aik = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.aij, <16 x i8> splat (i8 -127))
  %i.ail = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ahn)
  %i.aim = fadd fast <16 x float> %i.ail, %i.ahn
  %i.ain = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.aim, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aio = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ain, <16 x i8> zeroinitializer, i16 -1)
  %i.aip = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.aio, <16 x i8> splat (i8 -127))
  %i.aiq = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.aho)
  %i.air = fadd fast <16 x float> %i.aiq, %i.aho
  %i.ais = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.air, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ait = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ais, <16 x i8> zeroinitializer, i16 -1)
  %i.aiu = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.ait, <16 x i8> splat (i8 -127))
  %i.aiv = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ahp)
  %i.aiw = fadd fast <16 x float> %i.aiv, %i.ahp
  %i.aix = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.aiw, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aiy = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.aix, <16 x i8> zeroinitializer, i16 -1)
  %i.aiz = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.aiy, <16 x i8> splat (i8 -127))
  %i.aja = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ahq)
  %i.ajb = fadd fast <16 x float> %i.aja, %i.ahq
  %i.ajc = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ajb, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ajd = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ajc, <16 x i8> zeroinitializer, i16 -1)
  %i.aje = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.ajd, <16 x i8> splat (i8 -127))
  %i.ajf = bitcast <16 x i8> %i.ahv to <8 x i16>  ; 2 uses
  %i.ajg = bitcast <16 x i8> %i.aia to <8 x i16>  ; 2 uses
  %i.ajh = shufflevector <8 x i16> %i.ajf, <8 x i16> %i.ajg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aji = shufflevector <8 x i16> %i.ajf, <8 x i16> %i.ajg, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ajj = bitcast <16 x i8> %i.aif to <8 x i16>  ; 2 uses
  %i.ajk = bitcast <16 x i8> %i.aik to <8 x i16>  ; 2 uses
  %i.ajl = shufflevector <8 x i16> %i.ajj, <8 x i16> %i.ajk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ajm = shufflevector <8 x i16> %i.ajj, <8 x i16> %i.ajk, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ajn = bitcast <16 x i8> %i.aip to <8 x i16>  ; 2 uses
  %i.ajo = bitcast <16 x i8> %i.aiu to <8 x i16>  ; 2 uses
  %i.ajp = shufflevector <8 x i16> %i.ajn, <8 x i16> %i.ajo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ajq = shufflevector <8 x i16> %i.ajn, <8 x i16> %i.ajo, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ajr = bitcast <16 x i8> %i.aiz to <8 x i16>  ; 2 uses
  %i.ajs = bitcast <16 x i8> %i.aje to <8 x i16>  ; 2 uses
  %i.ajt = shufflevector <8 x i16> %i.ajr, <8 x i16> %i.ajs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aju = shufflevector <8 x i16> %i.ajr, <8 x i16> %i.ajs, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ajv = bitcast <8 x i16> %i.ajh to <4 x i32>  ; 2 uses
  %i.ajw = bitcast <8 x i16> %i.ajl to <4 x i32>  ; 2 uses
  %i.ajx = shufflevector <4 x i32> %i.ajv, <4 x i32> %i.ajw, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ajy = shufflevector <4 x i32> %i.ajv, <4 x i32> %i.ajw, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.ajz = bitcast <8 x i16> %i.aji to <4 x i32>  ; 2 uses
  %i.aka = bitcast <8 x i16> %i.ajm to <4 x i32>  ; 2 uses
  %i.akb = shufflevector <4 x i32> %i.ajz, <4 x i32> %i.aka, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.akc = shufflevector <4 x i32> %i.ajz, <4 x i32> %i.aka, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.akd = bitcast <8 x i16> %i.ajp to <4 x i32>  ; 2 uses
  %i.ake = bitcast <8 x i16> %i.ajt to <4 x i32>  ; 2 uses
  %i.akf = shufflevector <4 x i32> %i.akd, <4 x i32> %i.ake, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.akg = shufflevector <4 x i32> %i.akd, <4 x i32> %i.ake, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.akh = bitcast <8 x i16> %i.ajq to <4 x i32>  ; 2 uses
  %i.aki = bitcast <8 x i16> %i.aju to <4 x i32>  ; 2 uses
  %i.akj = shufflevector <4 x i32> %i.akh, <4 x i32> %i.aki, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.akk = shufflevector <4 x i32> %i.akh, <4 x i32> %i.aki, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.akl = shufflevector <4 x i32> %i.ajy, <4 x i32> %i.akg, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 2, i32 3, i32 6, i32 7>
  %i.akm = shufflevector <4 x i32> %i.ajx, <4 x i32> %i.akf, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 2, i32 3, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.akn = shufflevector <8 x i32> %i.akl, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ako = shufflevector <16 x i32> %i.akm, <16 x i32> %i.akn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.akp = shufflevector <4 x i32> %i.akc, <4 x i32> %i.akk, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 2, i32 3, i32 6, i32 7>
  %i.akq = shufflevector <4 x i32> %i.akb, <4 x i32> %i.akj, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 2, i32 3, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.akr = shufflevector <8 x i32> %i.akp, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aks = shufflevector <16 x i32> %i.akq, <16 x i32> %i.akr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  store <16 x i32> %i.ako, ptr %.111136.i, align 64, !tbaa !90
  %i.akt = getelementptr inbounds nuw i8, ptr %.111136.i, i64 64
  store <16 x i32> %i.aks, ptr %i.akt, align 64, !tbaa !90
  %i.aku = getelementptr inbounds nuw i8, ptr %.111136.i, i64 128 ; 3 uses
  %i.akv = getelementptr inbounds nuw i8, ptr %.06781135.i, i64 %.idx738.i
  %i.akw = add nuw nsw i32 %.06861134.i, 16       ; 2 uses
  %i.akx = or disjoint i32 %i.akw, 15
  %i.aky = icmp slt i32 %i.akx, %5
  br i1 %i.aky, label %.lr.ph1137.i, label %.loopexit1087.i.loopexit17, !llvm.loop !1030

.loopexit1087.i.loopexit17:                       ; preds = %.lr.ph1137.i
  %indvars.iv.next1382.i = add nuw nsw i64 %indvars.iv1381.i, 8 ; 3 uses
  %i.akz = icmp slt i64 %indvars.iv.next1382.i, %invariant.op.i
  br i1 %i.akz, label %.lr.ph1137.i.preheader, label %.preheader1085.loopexit.i, !llvm.loop !1021

.preheader1079.loopexit.i:                        ; preds = %.loopexit1081.i.loopexit14, %.loopexit1081.i.us
  %.us-phi68 = phi ptr [ %.29.i.us, %.loopexit1081.i.us ], [ %i.aob, %.loopexit1081.i.loopexit14 ]
  %.us-phi69 = phi i64 [ %indvars.iv.next1386.i.us, %.loopexit1081.i.us ], [ %indvars.iv.next1386.i, %.loopexit1081.i.loopexit14 ]
  %i.ala = trunc nsw i64 %.us-phi69 to i32
  br label %.preheader1079.i

.preheader1079.i:                                 ; preds = %.preheader1079.loopexit.i, %.preheader1085.i
  %.2652.lcssa.i = phi i32 [ %.1651.lcssa.i, %.preheader1085.i ], [ %i.ala, %.preheader1079.loopexit.i ] ; 3 uses
  %.20.lcssa.i = phi ptr [ %.10.lcssa.i, %.preheader1085.i ], [ %.us-phi68, %.preheader1079.loopexit.i ] ; 2 uses
  %i.alb = or disjoint i32 %.2652.lcssa.i, 1
  %i.alc = icmp slt i32 %i.alb, %3
  br i1 %i.alc, label %.lr.ph1243.i, label %.preheader1071.i

.lr.ph1243.i:                                     ; preds = %.preheader1079.i
  %i.ald = sext i32 %4 to i64
  %i.ale = mul i64 %i.n, %i.ald
  %i.alf = icmp ne i32 %i.e, 16
  %i.alg = insertelement <16 x float> poison, float %6, i64 0
  %i.alh = shufflevector <16 x float> %i.alg, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ali = icmp slt i32 %5, 16
  %.idx730.i = shl i64 %i.n, 6
  %i.alj = icmp ne i32 %i.e, 8
  %i.alk = insertelement <8 x float> poison, float %6, i64 0
  %i.all = shufflevector <8 x float> %i.alk, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.alm = icmp slt i32 %5, 8
  %.idx729.i = shl i64 %i.n, 5
  %i.aln = icmp ne i32 %i.e, 4
  %i.alo = insertelement <4 x float> poison, float %6, i64 0
  %i.alp = shufflevector <4 x float> %i.alo, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %i.alq = icmp slt i32 %5, 4
  %.idx728.i = shl i64 %i.n, 4                    ; 2 uses
  %i.alr = icmp eq i32 %i.e, 1
  %i.als = icmp sgt i32 %5, 3
  %.idx725.i = shl i64 %i.n, 3                    ; 2 uses
  %.idx726.i = mul i64 %i.n, 12
  %i.alt = and i32 %5, -4
  %i.alu = sext i32 %.2652.lcssa.i to i64
  %i.alv = sext i32 %3 to i64
  %i.alw = sext i32 %2 to i64
  %i.alx = sext i32 %i.e to i64
  %brmerge1307.i = or i1 %i.ali, %i.alf
  %brmerge1310.i = or i1 %i.alm, %i.alj
  %brmerge1313.i = or i1 %i.alq, %i.aln
  %invariant.op1500.i = add nsw i64 %i.alv, -1
  br label %bb.l

.lr.ph1172.i.preheader:                           ; preds = %.lr.ph1201.i, %.loopexit1081.i.loopexit14
  %indvars.iv1385.i = phi i64 [ %indvars.iv.next1386.i, %.loopexit1081.i.loopexit14 ], [ %i.aaa, %.lr.ph1201.i ] ; 2 uses
  %.201200.i = phi ptr [ %i.aob, %.loopexit1081.i.loopexit14 ], [ %.10.lcssa.i, %.lr.ph1201.i ]
  %i.aly = load ptr, ptr %0, align 8, !tbaa !25
  %i.alz = getelementptr inbounds nuw [4 x i8], ptr %i.aly, i64 %i.zk
  %i.ama = add nsw i64 %indvars.iv1385.i, %i.aac
  %i.amb = mul nsw i64 %i.ama, %i.aad
  %i.amc = getelementptr inbounds [4 x i8], ptr %i.alz, i64 %i.amb
  br label %.lr.ph1172.i

.lr.ph1172.i:                                     ; preds = %.lr.ph1172.i.preheader, %.lr.ph1172.i
  %.211171.i = phi ptr [ %i.aob, %.lr.ph1172.i ], [ %.201200.i, %.lr.ph1172.i.preheader ] ; 5 uses
  %.06961170.i = phi ptr [ %i.aoc, %.lr.ph1172.i ], [ %i.amc, %.lr.ph1172.i.preheader ] ; 5 uses
  %.07041169.i = phi i32 [ %i.aod, %.lr.ph1172.i ], [ 0, %.lr.ph1172.i.preheader ]
  %i.amd = load <16 x float>, ptr %.06961170.i, align 64, !tbaa !90
  %i.ame = getelementptr inbounds nuw i8, ptr %.06961170.i, i64 64
  %i.amf = load <16 x float>, ptr %i.ame, align 64, !tbaa !90
  %i.amg = getelementptr inbounds nuw i8, ptr %.06961170.i, i64 128
  %i.amh = load <16 x float>, ptr %i.amg, align 64, !tbaa !90
  %i.ami = getelementptr inbounds nuw i8, ptr %.06961170.i, i64 192
  %i.amj = load <16 x float>, ptr %i.ami, align 64, !tbaa !90
  %i.amk = fmul fast <16 x float> %i.amd, %i.zn   ; 2 uses
  %i.aml = fmul fast <16 x float> %i.amf, %i.zn   ; 2 uses
  %i.amm = fmul fast <16 x float> %i.amh, %i.zn   ; 2 uses
  %i.amn = fmul fast <16 x float> %i.amj, %i.zn   ; 2 uses
  %i.amo = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.amk)
  %i.amp = fadd fast <16 x float> %i.amo, %i.amk
  %i.amq = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.amp, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.amr = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.amq, <16 x i8> zeroinitializer, i16 -1)
  %i.ams = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.amr, <16 x i8> splat (i8 -127))
  %i.amt = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.aml)
  %i.amu = fadd fast <16 x float> %i.amt, %i.aml
  %i.amv = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.amu, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.amw = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.amv, <16 x i8> zeroinitializer, i16 -1)
  %i.amx = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.amw, <16 x i8> splat (i8 -127))
  %i.amy = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.amm)
  %i.amz = fadd fast <16 x float> %i.amy, %i.amm
  %i.ana = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.amz, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.anb = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ana, <16 x i8> zeroinitializer, i16 -1)
  %i.anc = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.anb, <16 x i8> splat (i8 -127))
  %i.and = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.amn)
  %i.ane = fadd fast <16 x float> %i.and, %i.amn
  %i.anf = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ane, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ang = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.anf, <16 x i8> zeroinitializer, i16 -1)
  %i.anh = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.ang, <16 x i8> splat (i8 -127))
  %i.ani = bitcast <16 x i8> %i.ams to <8 x i16>  ; 2 uses
  %i.anj = bitcast <16 x i8> %i.amx to <8 x i16>  ; 2 uses
  %i.ank = shufflevector <8 x i16> %i.ani, <8 x i16> %i.anj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.anl = shufflevector <8 x i16> %i.ani, <8 x i16> %i.anj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.anm = bitcast <16 x i8> %i.anc to <8 x i16>  ; 2 uses
  %i.ann = bitcast <16 x i8> %i.anh to <8 x i16>  ; 2 uses
  %i.ano = shufflevector <8 x i16> %i.anm, <8 x i16> %i.ann, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.anp = shufflevector <8 x i16> %i.anm, <8 x i16> %i.ann, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.anq = bitcast <8 x i16> %i.ank to <4 x i32>  ; 2 uses
  %i.anr = bitcast <8 x i16> %i.ano to <4 x i32>  ; 2 uses
  %i.ans = shufflevector <4 x i32> %i.anq, <4 x i32> %i.anr, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ant = shufflevector <4 x i32> %i.anq, <4 x i32> %i.anr, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.anu = bitcast <8 x i16> %i.anl to <4 x i32>  ; 2 uses
  %i.anv = bitcast <8 x i16> %i.anp to <4 x i32>  ; 2 uses
  %i.anw = shufflevector <4 x i32> %i.anu, <4 x i32> %i.anv, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.anx = shufflevector <4 x i32> %i.anu, <4 x i32> %i.anv, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x i32> %i.ans, ptr %.211171.i, align 16, !tbaa !90
  %i.any = getelementptr inbounds nuw i8, ptr %.211171.i, i64 16
  store <4 x i32> %i.ant, ptr %i.any, align 16, !tbaa !90
  %i.anz = getelementptr inbounds nuw i8, ptr %.211171.i, i64 32
  store <4 x i32> %i.anw, ptr %i.anz, align 16, !tbaa !90
  %i.aoa = getelementptr inbounds nuw i8, ptr %.211171.i, i64 48
  store <4 x i32> %i.anx, ptr %i.aoa, align 16, !tbaa !90
  %i.aob = getelementptr inbounds nuw i8, ptr %.211171.i, i64 64 ; 3 uses
  %i.aoc = getelementptr inbounds nuw i8, ptr %.06961170.i, i64 %.idx734.i
  %i.aod = add nuw nsw i32 %.07041169.i, 16       ; 2 uses
  %i.aoe = or disjoint i32 %i.aod, 15
  %i.aof = icmp slt i32 %i.aoe, %5
  br i1 %i.aof, label %.lr.ph1172.i, label %.loopexit1081.i.loopexit14, !llvm.loop !1031

.loopexit1081.i.loopexit14:                       ; preds = %.lr.ph1172.i
  %indvars.iv.next1386.i = add nuw nsw i64 %indvars.iv1385.i, 4 ; 3 uses
  %i.aog = icmp slt i64 %indvars.iv.next1386.i, %invariant.op1499.i
  br i1 %i.aog, label %.lr.ph1172.i.preheader, label %.preheader1079.loopexit.i, !llvm.loop !1029

.preheader1071.loopexit.i:                        ; preds = %.loopexit1074.i
  %i.aoh = trunc nsw i64 %indvars.iv.next1390.i to i32
  br label %.preheader1071.i

.preheader1071.i:                                 ; preds = %.preheader1071.loopexit.i, %.preheader1079.i
  %.3653.lcssa.i = phi i32 [ %.2652.lcssa.i, %.preheader1079.i ], [ %i.aoh, %.preheader1071.loopexit.i ] ; 2 uses
  %.30.lcssa.i = phi ptr [ %.20.lcssa.i, %.preheader1079.i ], [ %.40.i, %.preheader1071.loopexit.i ]
  %i.aoi = icmp slt i32 %.3653.lcssa.i, %3
  br i1 %i.aoi, label %.lr.ph1278.i, label %_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit

.lr.ph1278.i:                                     ; preds = %.preheader1071.i
  %i.aoj = sext i32 %4 to i64
  %i.aok = mul i64 %i.n, %i.aoj
  %i.aol = icmp ne i32 %i.e, 16
  %i.aom = insertelement <16 x float> poison, float %6, i64 0
  %i.aon = shufflevector <16 x float> %i.aom, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.aoo = icmp slt i32 %5, 16
  %.idx723.i = shl i64 %i.n, 6                    ; 2 uses
  %i.aop = icmp ne i32 %i.e, 8
  %i.aoq = insertelement <8 x float> poison, float %6, i64 0
  %i.aor = shufflevector <8 x float> %i.aoq, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.aos = icmp slt i32 %5, 8
  %.idx722.i = shl i64 %i.n, 5                    ; 2 uses
  %i.aot = icmp ne i32 %i.e, 4
  %i.aou = insertelement <4 x float> poison, float %6, i64 0
  %i.aov = shufflevector <4 x float> %i.aou, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aow = icmp slt i32 %5, 4
  %.idx721.i = shl i64 %i.n, 4                    ; 2 uses
  %i.aox = icmp eq i32 %i.e, 1
  %i.aoy = icmp sgt i32 %5, 3
  %i.aoz = trunc i64 %i.n to i32
  %i.apa = insertelement <4 x i32> poison, i32 %i.aoz, i64 0
  %i.apb = shufflevector <4 x i32> %i.apa, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.apc = mul <4 x i32> %i.apb, <i32 0, i32 1, i32 2, i32 3>
  %i.apd = and i32 %5, -4
  %i.ape = sext i32 %.3653.lcssa.i to i64
  %i.apf = sext i32 %2 to i64
  %i.apg = sext i32 %i.e to i64
  %wide.trip.count.i = sext i32 %3 to i64
  %brmerge1316.i = or i1 %i.aoo, %i.aol
  %brmerge1319.i = or i1 %i.aos, %i.aop
  %brmerge1322.i = or i1 %i.aow, %i.aot
  %i.aph = add i32 %5, -16                        ; 2 uses
  %i.api = lshr i32 %i.aph, 4                     ; 2 uses
  %i.apj = add nuw nsw i32 %i.api, 1              ; 2 uses
  %i.apk = add i32 %5, -8                         ; 2 uses
  %i.apl = lshr i32 %i.apk, 3                     ; 2 uses
  %i.apm = add nuw nsw i32 %i.apl, 1              ; 2 uses
  %i.apn = icmp eq i32 %i.api, 0
  %unroll_iter = and i32 %i.apj, 536870910
  %i.apo = and i32 %i.aph, 16
  %lcmp.mod270.not.not = icmp eq i32 %i.apo, 0
  %lcmp.mod272 = trunc i32 %i.apj to i1
  %i.app = icmp eq i32 %i.apl, 0
  %unroll_iter277 = and i32 %i.apm, 1073741822
  %i.apq = and i32 %i.apk, 8
  %lcmp.mod274.not.not = icmp eq i32 %i.apq, 0
  %lcmp.mod276 = trunc i32 %i.apm to i1
  %xtraiter279 = and i32 %5, 1
  %lcmp.mod280.not = icmp eq i32 %xtraiter279, 0
  br label %bb.n

bb.l:                                             ; preds = %.loopexit1074.i, %.lr.ph1243.i
  %indvars.iv1389.i = phi i64 [ %i.alu, %.lr.ph1243.i ], [ %indvars.iv.next1390.i, %.loopexit1074.i ] ; 2 uses
  %.301242.i = phi ptr [ %.20.lcssa.i, %.lr.ph1243.i ], [ %.40.i, %.loopexit1074.i ] ; 6 uses
  %i.apr = load ptr, ptr %0, align 8, !tbaa !25
  %i.aps = getelementptr inbounds nuw [4 x i8], ptr %i.apr, i64 %i.ale
  %i.apt = add nsw i64 %indvars.iv1389.i, %i.alw
  %i.apu = mul nsw i64 %i.apt, %i.alx
  %i.apv = getelementptr inbounds [4 x i8], ptr %i.aps, i64 %i.apu ; 5 uses
  br i1 %brmerge1307.i, label %.loopexit1078.i, label %.lr.ph1207.i

.lr.ph1207.i:                                     ; preds = %bb.l, %.lr.ph1207.i
  %.311206.i = phi ptr [ %i.aqq, %.lr.ph1207.i ], [ %.301242.i, %bb.l ] ; 3 uses
  %.07051205.i = phi i32 [ %i.aqs, %.lr.ph1207.i ], [ 0, %bb.l ]
  %.07061204.i = phi ptr [ %i.aqr, %.lr.ph1207.i ], [ %i.apv, %bb.l ] ; 3 uses
  %i.apw = load <16 x float>, ptr %.07061204.i, align 64, !tbaa !90
  %i.apx = getelementptr inbounds nuw i8, ptr %.07061204.i, i64 64
end_hunk_2
begin_hunk_3_@_ZN4ncnnL36transpose_compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii:bb.a
  %i.abh = shufflevector <4 x float> %i.aav, <4 x float> %i.abf, <2 x i32> <i32 0, i32 4> ; 3 uses
  br i1 %i.abg, label %.lr.ph334.i.preheader, label %._crit_edge335.i

.lr.ph334.i.preheader:                            ; preds = %._crit_edge324.i
  br i1 %lcmp.mod312.not, label %.lr.ph334.i.prol.loopexit, label %.lr.ph334.i.prol

.lr.ph334.i.prol:                                 ; preds = %.lr.ph334.i.preheader, %.lr.ph334.i.prol
  %.1603332.i.prol = phi i32 [ %i.abn, %.lr.ph334.i.prol ], [ %.0602.lcssa.i, %.lr.ph334.i.preheader ]
  %.1605331.i.prol = phi ptr [ %i.abm, %.lr.ph334.i.prol ], [ %.0604.lcssa.i, %.lr.ph334.i.preheader ] ; 2 uses
  %i.abi = phi <2 x float> [ %i.abl, %.lr.ph334.i.prol ], [ %i.abh, %.lr.ph334.i.preheader ]
  %prol.iter313 = phi i32 [ %prol.iter313.next, %.lr.ph334.i.prol ], [ 0, %.lr.ph334.i.preheader ]
  %i.abj = load <2 x float>, ptr %.1605331.i.prol, align 4, !tbaa !69
  %i.abk = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.abj)
  %i.abl = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.abi, <2 x float> %i.abk) ; 3 uses
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %.1605331.i.prol, i64 %i.l ; 2 uses
  %i.abn = add nuw nsw i32 %.1603332.i.prol, 1    ; 2 uses
  %prol.iter313.next = add i32 %prol.iter313, 1   ; 2 uses
  %prol.iter313.cmp.not = icmp eq i32 %prol.iter313.next, %xtraiter311
  br i1 %prol.iter313.cmp.not, label %.lr.ph334.i.prol.loopexit, label %.lr.ph334.i.prol, !llvm.loop !1082

.lr.ph334.i.prol.loopexit:                        ; preds = %.lr.ph334.i.prol, %.lr.ph334.i.preheader
  %.lcssa240.unr = phi <2 x float> [ poison, %.lr.ph334.i.preheader ], [ %i.abl, %.lr.ph334.i.prol ]
  %.1603332.i.unr = phi i32 [ %.0602.lcssa.i, %.lr.ph334.i.preheader ], [ %i.abn, %.lr.ph334.i.prol ]
  %.1605331.i.unr = phi ptr [ %.0604.lcssa.i, %.lr.ph334.i.preheader ], [ %i.abm, %.lr.ph334.i.prol ]
  %.unr = phi <2 x float> [ %i.abh, %.lr.ph334.i.preheader ], [ %i.abl, %.lr.ph334.i.prol ]
  %i.abo = sub i32 %.0602.lcssa.i, %i.m
  %i.abp = icmp ugt i32 %i.abo, -4
  br i1 %i.abp, label %._crit_edge335.i, label %.lr.ph334.i

.lr.ph334.i:                                      ; preds = %.lr.ph334.i.prol.loopexit, %.lr.ph334.i
  %.1603332.i = phi i32 [ %i.ach, %.lr.ph334.i ], [ %.1603332.i.unr, %.lr.ph334.i.prol.loopexit ]
  %.1605331.i = phi ptr [ %i.acg, %.lr.ph334.i ], [ %.1605331.i.unr, %.lr.ph334.i.prol.loopexit ] ; 2 uses
  %i.abq = phi <2 x float> [ %i.acf, %.lr.ph334.i ], [ %.unr, %.lr.ph334.i.prol.loopexit ]
  %i.abr = load <2 x float>, ptr %.1605331.i, align 4, !tbaa !69
  %i.abs = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.abr)
  %i.abt = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.abq, <2 x float> %i.abs)
  %i.abu = getelementptr inbounds nuw [4 x i8], ptr %.1605331.i, i64 %i.l ; 2 uses
  %i.abv = load <2 x float>, ptr %i.abu, align 4, !tbaa !69
  %i.abw = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.abv)
  %i.abx = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.abt, <2 x float> %i.abw)
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %i.abu, i64 %i.l ; 2 uses
  %i.abz = load <2 x float>, ptr %i.aby, align 4, !tbaa !69
  %i.aca = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.abz)
  %i.acb = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.abx, <2 x float> %i.aca)
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %i.aby, i64 %i.l ; 2 uses
  %i.acd = load <2 x float>, ptr %i.acc, align 4, !tbaa !69
  %i.ace = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.acd)
  %i.acf = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.acb, <2 x float> %i.ace) ; 2 uses
  %i.acg = getelementptr inbounds nuw [4 x i8], ptr %i.acc, i64 %i.l
  %i.ach = add nuw nsw i32 %.1603332.i, 4         ; 2 uses
  %exitcond442.not.i.3 = icmp eq i32 %i.ach, %i.m
  br i1 %exitcond442.not.i.3, label %._crit_edge335.i, label %.lr.ph334.i, !llvm.loop !1083

._crit_edge335.i:                                 ; preds = %.lr.ph334.i.prol.loopexit, %.lr.ph334.i, %._crit_edge324.i
  %i.aci = phi <2 x float> [ %i.abh, %._crit_edge324.i ], [ %.lcssa240.unr, %.lr.ph334.i.prol.loopexit ], [ %i.acf, %.lr.ph334.i ] ; 2 uses
  %i.acj = fdiv fast <2 x float> splat (float 1.270000e+02), %i.aci
  store <2 x float> %i.acj, ptr %.22340.i, align 4, !tbaa !69
  %i.ack = fmul fast <2 x float> %i.aci, splat (float f0x3C010204)
  %i.acl = fmul fast <2 x float> %i.ack, %i.vh
  store <2 x float> %i.acl, ptr %.22640339.i, align 4, !tbaa !69
  %i.acm = getelementptr inbounds nuw i8, ptr %.22340.i, i64 8 ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %.22640339.i, i64 8 ; 2 uses
  %indvars.iv.next444.i = add nuw nsw i64 %indvars.iv443.i, 2 ; 2 uses
  %i.aco = trunc i64 %indvars.iv.next444.i to i32 ; 2 uses
  %i.acp = or i32 %i.aco, 1
  %i.acq = icmp slt i32 %i.acp, %i.r
  br i1 %i.acq, label %bb.t, label %.preheader.i, !llvm.loop !1084

bb.u:                                             ; preds = %._crit_edge359.i, %.lr.ph364.i
  %indvars.iv447.i = phi i64 [ %i.zh, %.lr.ph364.i ], [ %indvars.iv.next448.i, %._crit_edge359.i ] ; 2 uses
  %.23363.i = phi ptr [ %.22.lcssa.i, %.lr.ph364.i ], [ %i.aeu, %._crit_edge359.i ] ; 2 uses
  %.23641362.i = phi ptr [ %.22640.lcssa.i, %.lr.ph364.i ], [ %i.aev, %._crit_edge359.i ] ; 2 uses
  %i.acr = getelementptr inbounds [4 x i8], ptr %i.za, i64 %indvars.iv447.i ; 3 uses
  br i1 %i.zf, label %.lr.ph349.i.preheader, label %._crit_edge350.i

.lr.ph349.i.preheader:                            ; preds = %bb.u
  br i1 %i.zl, label %.lr.ph349.i.epil.preheader, label %.lr.ph349.i

.lr.ph349.i:                                      ; preds = %.lr.ph349.i.preheader, %.lr.ph349.i
  %.0600346.i = phi ptr [ %i.adh, %.lr.ph349.i ], [ %i.acr, %.lr.ph349.i.preheader ] ; 2 uses
  %.090345.i = phi <16 x float> [ %i.adg, %.lr.ph349.i ], [ zeroinitializer, %.lr.ph349.i.preheader ]
  %niter320 = phi i32 [ %niter320.next.3, %.lr.ph349.i ], [ 0, %.lr.ph349.i.preheader ]
  %i.acs = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %.0600346.i, <16 x i32> %i.ze, <16 x i1> splat (i1 true), i32 4)
  %i.act = tail call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.acs)
  %i.acu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.090345.i, <16 x float> nofpclass(nan inf) %i.act, i32 4)
  %i.acv = getelementptr inbounds nuw i8, ptr %.0600346.i, i64 %.idx.i ; 2 uses
  %i.acw = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.acv, <16 x i32> %i.ze, <16 x i1> splat (i1 true), i32 4)
  %i.acx = tail call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.acw)
  %i.acy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.acu, <16 x float> nofpclass(nan inf) %i.acx, i32 4)
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acv, i64 %.idx.i ; 2 uses
  %i.ada = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.acz, <16 x i32> %i.ze, <16 x i1> splat (i1 true), i32 4)
  %i.adb = tail call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.ada)
  %i.adc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.acy, <16 x float> nofpclass(nan inf) %i.adb, i32 4)
  %i.add = getelementptr inbounds nuw i8, ptr %i.acz, i64 %.idx.i ; 2 uses
  %i.ade = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.add, <16 x i32> %i.ze, <16 x i1> splat (i1 true), i32 4)
  %i.adf = tail call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.ade)
  %i.adg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.adc, <16 x float> nofpclass(nan inf) %i.adf, i32 4) ; 3 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.add, i64 %.idx.i ; 3 uses
  %niter320.next.3 = add i32 %niter320, 4         ; 2 uses
  %niter320.ncmp.3.not = icmp eq i32 %niter320.next.3, %unroll_iter319
  br i1 %niter320.ncmp.3.not, label %._crit_edge350.i.loopexit.unr-lcssa, label %.lr.ph349.i, !llvm.loop !1085

._crit_edge350.i.loopexit.unr-lcssa:              ; preds = %.lr.ph349.i
  br i1 %lcmp.mod315.not, label %._crit_edge350.i, label %.lr.ph349.i.epil.preheader

.lr.ph349.i.epil.preheader:                       ; preds = %._crit_edge350.i.loopexit.unr-lcssa, %.lr.ph349.i.preheader
  %.0600346.i.epil.init = phi ptr [ %i.acr, %.lr.ph349.i.preheader ], [ %i.adh, %._crit_edge350.i.loopexit.unr-lcssa ]
  %.090345.i.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph349.i.preheader ], [ %i.adg, %._crit_edge350.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod318)
  br label %.lr.ph349.i.epil

.lr.ph349.i.epil:                                 ; preds = %.lr.ph349.i.epil, %.lr.ph349.i.epil.preheader
  %.0600346.i.epil = phi ptr [ %i.adl, %.lr.ph349.i.epil ], [ %.0600346.i.epil.init, %.lr.ph349.i.epil.preheader ] ; 2 uses
  %.090345.i.epil = phi <16 x float> [ %i.adk, %.lr.ph349.i.epil ], [ %.090345.i.epil.init, %.lr.ph349.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph349.i.epil ], [ 0, %.lr.ph349.i.epil.preheader ]
  %i.adi = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %.0600346.i.epil, <16 x i32> %i.ze, <16 x i1> splat (i1 true), i32 4)
  %i.adj = tail call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.adi)
  %i.adk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.090345.i.epil, <16 x float> nofpclass(nan inf) %i.adj, i32 4) ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %.0600346.i.epil, i64 %.idx.i ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter314
  br i1 %epil.iter.cmp.not, label %._crit_edge350.i, label %.lr.ph349.i.epil, !llvm.loop !1086

._crit_edge350.i:                                 ; preds = %._crit_edge350.i.loopexit.unr-lcssa, %.lr.ph349.i.epil, %bb.u
  %.090.lcssa.i = phi <16 x float> [ zeroinitializer, %bb.u ], [ %i.adg, %._crit_edge350.i.loopexit.unr-lcssa ], [ %i.adk, %.lr.ph349.i.epil ] ; 2 uses
  %.0600.lcssa.i = phi ptr [ %i.acr, %bb.u ], [ %i.adh, %._crit_edge350.i.loopexit.unr-lcssa ], [ %i.adl, %.lr.ph349.i.epil ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.u ], [ %i.zg, %.lr.ph349.i.epil ], [ %i.zg, %._crit_edge350.i.loopexit.unr-lcssa ] ; 4 uses
  %i.adm = shufflevector <16 x float> %.090.lcssa.i, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.adn = shufflevector <16 x float> %.090.lcssa.i, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ado = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.adm, <8 x float> nofpclass(nan inf) %i.adn) ; 2 uses
  %i.adp = shufflevector <8 x float> %i.ado, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.adq = shufflevector <8 x float> %i.ado, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.adr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.adp, <4 x float> nofpclass(nan inf) %i.adq) ; 2 uses
  %i.ads = shufflevector <4 x float> %i.adr, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.adt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.adr, <4 x float> nofpclass(nan inf) %i.ads) ; 2 uses
  %i.adu = shufflevector <4 x float> %i.adt, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.adv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.adt, <4 x float> nofpclass(nan inf) %i.adu)
  %i.adw = extractelement <4 x float> %i.adv, i64 0 ; 3 uses
  %i.adx = icmp slt i32 %.0.lcssa.i, %i.m
  br i1 %i.adx, label %.lr.ph358.i.preheader, label %._crit_edge359.i

.lr.ph358.i.preheader:                            ; preds = %._crit_edge350.i
  br i1 %lcmp.mod322.not, label %.lr.ph358.i.prol.loopexit, label %.lr.ph358.i.prol

.lr.ph358.i.prol:                                 ; preds = %.lr.ph358.i.preheader, %.lr.ph358.i.prol
  %.1356.i.prol = phi i32 [ %i.aeb, %.lr.ph358.i.prol ], [ %.0.lcssa.i, %.lr.ph358.i.preheader ]
  %.1601355.i.prol = phi ptr [ %i.aea, %.lr.ph358.i.prol ], [ %.0600.lcssa.i, %.lr.ph358.i.preheader ] ; 2 uses
  %.091354.i.prol = phi float [ %.sroa.speculated.i.prol, %.lr.ph358.i.prol ], [ %i.adw, %.lr.ph358.i.preheader ]
  %prol.iter323 = phi i32 [ %prol.iter323.next, %.lr.ph358.i.prol ], [ 0, %.lr.ph358.i.preheader ]
  %i.ady = load float, ptr %.1601355.i.prol, align 4, !tbaa !69
  %i.adz = tail call fast float @llvm.fabs.f32(float %i.ady)
  %.sroa.speculated.i.prol = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.091354.i.prol, float %i.adz) ; 3 uses
  %i.aea = getelementptr inbounds nuw [4 x i8], ptr %.1601355.i.prol, i64 %i.l ; 2 uses
  %i.aeb = add nuw nsw i32 %.1356.i.prol, 1       ; 2 uses
  %prol.iter323.next = add i32 %prol.iter323, 1   ; 2 uses
  %prol.iter323.cmp.not = icmp eq i32 %prol.iter323.next, %xtraiter321
  br i1 %prol.iter323.cmp.not, label %.lr.ph358.i.prol.loopexit, label %.lr.ph358.i.prol, !llvm.loop !1087

.lr.ph358.i.prol.loopexit:                        ; preds = %.lr.ph358.i.prol, %.lr.ph358.i.preheader
  %.sroa.speculated.i.lcssa.unr = phi float [ poison, %.lr.ph358.i.preheader ], [ %.sroa.speculated.i.prol, %.lr.ph358.i.prol ]
  %.1356.i.unr = phi i32 [ %.0.lcssa.i, %.lr.ph358.i.preheader ], [ %i.aeb, %.lr.ph358.i.prol ]
  %.1601355.i.unr = phi ptr [ %.0600.lcssa.i, %.lr.ph358.i.preheader ], [ %i.aea, %.lr.ph358.i.prol ]
  %.091354.i.unr = phi float [ %i.adw, %.lr.ph358.i.preheader ], [ %.sroa.speculated.i.prol, %.lr.ph358.i.prol ]
  %i.aec = sub i32 %.0.lcssa.i, %i.m
  %i.aed = icmp ugt i32 %i.aec, -4
  br i1 %i.aed, label %._crit_edge359.i, label %.lr.ph358.i

.lr.ph358.i:                                      ; preds = %.lr.ph358.i.prol.loopexit, %.lr.ph358.i
  %.1356.i = phi i32 [ %i.aeq, %.lr.ph358.i ], [ %.1356.i.unr, %.lr.ph358.i.prol.loopexit ]
  %.1601355.i = phi ptr [ %i.aep, %.lr.ph358.i ], [ %.1601355.i.unr, %.lr.ph358.i.prol.loopexit ] ; 2 uses
  %.091354.i = phi float [ %.sroa.speculated.i.3, %.lr.ph358.i ], [ %.091354.i.unr, %.lr.ph358.i.prol.loopexit ]
  %i.aee = load float, ptr %.1601355.i, align 4, !tbaa !69
  %i.aef = tail call fast float @llvm.fabs.f32(float %i.aee)
  %.sroa.speculated.i = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.091354.i, float %i.aef)
  %i.aeg = getelementptr inbounds nuw [4 x i8], ptr %.1601355.i, i64 %i.l ; 2 uses
  %i.aeh = load float, ptr %i.aeg, align 4, !tbaa !69
  %i.aei = tail call fast float @llvm.fabs.f32(float %i.aeh)
  %.sroa.speculated.i.1 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated.i, float %i.aei)
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr %i.aeg, i64 %i.l ; 2 uses
  %i.aek = load float, ptr %i.aej, align 4, !tbaa !69
  %i.ael = tail call fast float @llvm.fabs.f32(float %i.aek)
  %.sroa.speculated.i.2 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated.i.1, float %i.ael)
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %i.aej, i64 %i.l ; 2 uses
  %i.aen = load float, ptr %i.aem, align 4, !tbaa !69
  %i.aeo = tail call fast float @llvm.fabs.f32(float %i.aen)
  %.sroa.speculated.i.3 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated.i.2, float %i.aeo) ; 2 uses
  %i.aep = getelementptr inbounds nuw [4 x i8], ptr %i.aem, i64 %i.l
  %i.aeq = add nuw nsw i32 %.1356.i, 4            ; 2 uses
  %exitcond446.not.i.3 = icmp eq i32 %i.aeq, %i.m
  br i1 %exitcond446.not.i.3, label %._crit_edge359.i, label %.lr.ph358.i, !llvm.loop !1088

._crit_edge359.i:                                 ; preds = %.lr.ph358.i.prol.loopexit, %.lr.ph358.i, %._crit_edge350.i
  %.091.lcssa.i = phi float [ %i.adw, %._crit_edge350.i ], [ %.sroa.speculated.i.lcssa.unr, %.lr.ph358.i.prol.loopexit ], [ %.sroa.speculated.i.3, %.lr.ph358.i ] ; 2 uses
  %i.aer = fdiv fast float 1.270000e+02, %.091.lcssa.i
  store float %i.aer, ptr %.23363.i, align 4, !tbaa !69
  %i.aes = fmul fast float %.091.lcssa.i, f0x3C010204
  %i.aet = fmul fast float %i.aes, %i.zm
  store float %i.aet, ptr %.23641362.i, align 4, !tbaa !69
  %i.aeu = getelementptr inbounds nuw i8, ptr %.23363.i, i64 4
  %i.aev = getelementptr inbounds nuw i8, ptr %.23641362.i, i64 4
  %indvars.iv.next448.i = add nsw i64 %indvars.iv447.i, 1 ; 2 uses
  %exitcond450.not.i = icmp eq i64 %indvars.iv.next448.i, %wide.trip.count.i
  br i1 %exitcond450.not.i, label %_ZN4ncnnL41transpose_compute_A_tile_fp32_int8_scalesERKNS_3MatERS0_fS3_ii.exit, label %bb.u, !llvm.loop !1089

_ZN4ncnnL41transpose_compute_A_tile_fp32_int8_scalesERKNS_3MatERS0_fS3_ii.exit: ; preds = %._crit_edge359.i, %.preheader.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree writeonly captures(none) %.0.val, float noundef nofpclass(nan inf) %1, ptr nofree writeonly captures(none) %.0.val1, i32 noundef %2, i32 noundef %3) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !65   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !77
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j
  %i.l = sdiv i32 %3, %i.b                        ; 2 uses
  %i.m = mul i32 %i.i, %i.b                       ; 10 uses
  %.scalar.i = fdiv fast float f0x3C010204, %1    ; 3 uses
  %i.n = insertelement <4 x float> poison, float %.scalar.i, i64 0
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> zeroinitializer
  %i.p = insertelement <8 x float> poison, float %.scalar.i, i64 0
  %i.q = shufflevector <8 x float> %i.p, <8 x float> poison, <8 x i32> zeroinitializer
  %i.r = insertelement <16 x float> poison, float %.scalar.i, i64 0
  %i.s = shufflevector <16 x float> %i.r, <16 x float> poison, <16 x i32> zeroinitializer
  %i.t = icmp sgt i32 %i.l, 0
  br i1 %i.t, label %.lr.ph89.i, label %_ZN4ncnnL31compute_A_tile_fp32_int8_scalesERKNS_3MatERS0_fS3_ii.exit

.lr.ph89.i:                                       ; preds = %bb.a
  %i.u = sext i32 %2 to i64                       ; 3 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %.0.val1, i64 %i.u
  %i.w = getelementptr inbounds [4 x i8], ptr %.0.val, i64 %i.u
  %i.x = icmp sgt i32 %i.m, 15
  %i.y = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.b)
  %i.z = icmp eq i32 %i.y, 1
  %i.aa = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.b, i1 true)
  %i.ab = and i32 %i.m, -16                       ; 2 uses
  %i.ac = sext i32 %i.b to i64
  %wide.trip.count.i = zext nneg i32 %i.l to i64
  %i.ad = add i32 %i.m, -16                       ; 2 uses
  %i.ae = lshr i32 %i.ad, 4
  %i.af = add nuw nsw i32 %i.ae, 1                ; 2 uses
  %xtraiter = and i32 %i.af, 3                    ; 3 uses
  %i.ag = icmp ult i32 %i.ad, 48
  %unroll_iter = and i32 %i.af, 536870908
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod68 = icmp ne i32 %xtraiter, 0
  %i.ah = fdiv fast float 1.000000e+00, %1
  br label %bb.b

bb.b:                                             ; preds = %.thread54.i, %.lr.ph89.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph89.i ], [ %indvars.iv.next.i, %.thread54.i ] ; 2 uses
  %.087.i = phi ptr [ %i.w, %.lr.ph89.i ], [ %.4.i, %.thread54.i ] ; 10 uses
  %.08286.i = phi ptr [ %i.v, %.lr.ph89.i ], [ %.486.i, %.thread54.i ] ; 10 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !25
  %i.aj = mul nsw i64 %indvars.iv.i, %i.ac
  %i.ak = add nsw i64 %i.aj, %i.u
  %i.al = mul i64 %i.ak, %i.k
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.al ; 3 uses
  br i1 %i.x, label %.lr.ph.i.preheader, label %.preheader60.i

.lr.ph.i.preheader:                               ; preds = %bb.b
  br i1 %i.ag, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.preheader60.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %.preheader60.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader60.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.09162.i.epil.init = phi ptr [ %i.am, %.lr.ph.i.preheader ], [ %i.bn, %.preheader60.i.loopexit.unr-lcssa ]
  %.04061.i.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph.i.preheader ], [ %i.bm, %.preheader60.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod68)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.09162.i.epil = phi ptr [ %i.ar, %.lr.ph.i.epil ], [ %.09162.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.04061.i.epil = phi <16 x float> [ %i.aq, %.lr.ph.i.epil ], [ %.04061.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.an = load <16 x i32>, ptr %.09162.i.epil, align 1, !tbaa !90
  %i.ao = and <16 x i32> %i.an, splat (i32 2147483647)
  %i.ap = bitcast <16 x i32> %i.ao to <16 x float>
  %i.aq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.04061.i.epil, <16 x float> nofpclass(nan inf) %i.ap, i32 4) ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.09162.i.epil, i64 64 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader60.i, label %.lr.ph.i.epil, !llvm.loop !1090

.preheader60.i:                                   ; preds = %.preheader60.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b
  %.040.lcssa.i = phi <16 x float> [ zeroinitializer, %bb.b ], [ %i.bm, %.preheader60.i.loopexit.unr-lcssa ], [ %i.aq, %.lr.ph.i.epil ] ; 8 uses
  %.091.lcssa.i = phi ptr [ %i.am, %bb.b ], [ %i.bn, %.preheader60.i.loopexit.unr-lcssa ], [ %i.ar, %.lr.ph.i.epil ] ; 2 uses
  %.087.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.ab, %.lr.ph.i.epil ], [ %i.ab, %.preheader60.i.loopexit.unr-lcssa ] ; 3 uses
  %i.as = or disjoint i32 %.087.lcssa.i, 7
  %i.at = icmp slt i32 %i.as, %i.m
  br i1 %i.at, label %.lr.ph69.i, label %.preheader59.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.09162.i = phi ptr [ %i.bn, %.lr.ph.i ], [ %i.am, %.lr.ph.i.preheader ] ; 5 uses
  %.04061.i = phi <16 x float> [ %i.bm, %.lr.ph.i ], [ zeroinitializer, %.lr.ph.i.preheader ]
  %niter = phi i32 [ %niter.next.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.au = load <16 x i32>, ptr %.09162.i, align 1, !tbaa !90
  %i.av = and <16 x i32> %i.au, splat (i32 2147483647)
  %i.aw = bitcast <16 x i32> %i.av to <16 x float>
  %i.ax = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.04061.i, <16 x float> nofpclass(nan inf) %i.aw, i32 4)
  %i.ay = getelementptr inbounds nuw i8, ptr %.09162.i, i64 64
  %i.az = load <16 x i32>, ptr %i.ay, align 1, !tbaa !90
  %i.ba = and <16 x i32> %i.az, splat (i32 2147483647)
  %i.bb = bitcast <16 x i32> %i.ba to <16 x float>
  %i.bc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ax, <16 x float> nofpclass(nan inf) %i.bb, i32 4)
  %i.bd = getelementptr inbounds nuw i8, ptr %.09162.i, i64 128
  %i.be = load <16 x i32>, ptr %i.bd, align 1, !tbaa !90
  %i.bf = and <16 x i32> %i.be, splat (i32 2147483647)
  %i.bg = bitcast <16 x i32> %i.bf to <16 x float>
  %i.bh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.bc, <16 x float> nofpclass(nan inf) %i.bg, i32 4)
  %i.bi = getelementptr inbounds nuw i8, ptr %.09162.i, i64 192
  %i.bj = load <16 x i32>, ptr %i.bi, align 1, !tbaa !90
  %i.bk = and <16 x i32> %i.bj, splat (i32 2147483647)
  %i.bl = bitcast <16 x i32> %i.bk to <16 x float>
  %i.bm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.bh, <16 x float> nofpclass(nan inf) %i.bl, i32 4) ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.09162.i, i64 256 ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader60.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !3

.preheader59.i:                                   ; preds = %.lr.ph69.i, %.preheader60.i
  %.041.lcssa.i = phi <8 x float> [ zeroinitializer, %.preheader60.i ], [ %i.bt, %.lr.ph69.i ] ; 4 uses
  %.192.lcssa.i = phi ptr [ %.091.lcssa.i, %.preheader60.i ], [ %i.bu, %.lr.ph69.i ] ; 2 uses
  %.188.lcssa.i = phi i32 [ %.087.lcssa.i, %.preheader60.i ], [ %i.bv, %.lr.ph69.i ] ; 3 uses
  %i.bo = or disjoint i32 %.188.lcssa.i, 3
  %i.bp = icmp slt i32 %i.bo, %i.m
  br i1 %i.bp, label %.lr.ph76.i, label %.preheader.i

.lr.ph69.i:                                       ; preds = %.preheader60.i, %.lr.ph69.i
  %.18868.i = phi i32 [ %i.bv, %.lr.ph69.i ], [ %.087.lcssa.i, %.preheader60.i ]
  %.19267.i = phi ptr [ %i.bu, %.lr.ph69.i ], [ %.091.lcssa.i, %.preheader60.i ] ; 2 uses
  %.04166.i = phi <8 x float> [ %i.bt, %.lr.ph69.i ], [ zeroinitializer, %.preheader60.i ]
  %i.bq = load <8 x i32>, ptr %.19267.i, align 1, !tbaa !90
  %i.br = and <8 x i32> %i.bq, splat (i32 2147483647)
  %i.bs = bitcast <8 x i32> %i.br to <8 x float>
  %i.bt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.04166.i, <8 x float> nofpclass(nan inf) %i.bs) ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.19267.i, i64 32 ; 2 uses
  %i.bv = add nuw nsw i32 %.18868.i, 8            ; 3 uses
  %i.bw = or disjoint i32 %i.bv, 7
  %i.bx = icmp slt i32 %i.bw, %i.m
  br i1 %i.bx, label %.lr.ph69.i, label %.preheader59.i, !llvm.loop !4

.preheader.i:                                     ; preds = %.lr.ph76.i, %.preheader59.i
  %.044.lcssa.i = phi <4 x float> [ zeroinitializer, %.preheader59.i ], [ %i.di, %.lr.ph76.i ] ; 3 uses
  %.293.lcssa.i = phi ptr [ %.192.lcssa.i, %.preheader59.i ], [ %i.dj, %.lr.ph76.i ] ; 5 uses
  %.289.lcssa.i = phi i32 [ %.188.lcssa.i, %.preheader59.i ], [ %i.dk, %.lr.ph76.i ] ; 5 uses
  %i.by = icmp slt i32 %.289.lcssa.i, %i.m
  br i1 %i.by, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %.preheader.i
  %i.bz = xor i32 %.289.lcssa.i, -1
  %i.ca = add i32 %i.m, %i.bz                     ; 3 uses
  %i.cb = zext i32 %i.ca to i64
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.ca, 7
  br i1 %min.iters.check, label %.lr.ph83.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check32 = icmp ult i32 %i.ca, 63
  br i1 %min.iters.check32, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cd = and i64 %i.cc, 56
  %n.vec = and i64 %i.cc, 8589934528              ; 5 uses
  %i.ce = trunc i64 %n.vec to i32
  %i.cf = add i32 %.289.lcssa.i, %i.ce
  %i.cg = shl nuw nsw i64 %n.vec, 2
  %i.ch = getelementptr i8, ptr %.293.lcssa.i, i64 %i.cg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.cq, %vector.body ]
  %vec.phi33 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.cr, %vector.body ]
  %vec.phi34 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.cs, %vector.body ]
  %vec.phi35 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.ct, %vector.body ]
  %i.ci = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.293.lcssa.i, i64 %i.ci ; 4 uses
  %i.cj = getelementptr i8, ptr %next.gep, i64 64
  %i.ck = getelementptr i8, ptr %next.gep, i64 128
  %i.cl = getelementptr i8, ptr %next.gep, i64 192
  %wide.load = load <16 x float>, ptr %next.gep, align 4, !tbaa !69
  %wide.load36 = load <16 x float>, ptr %i.cj, align 4, !tbaa !69
  %wide.load37 = load <16 x float>, ptr %i.ck, align 4, !tbaa !69
  %wide.load38 = load <16 x float>, ptr %i.cl, align 4, !tbaa !69
  %i.cm = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load)
  %i.cn = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load36)
  %i.co = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load37)
  %i.cp = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load38)
  %i.cq = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi, <16 x float> %i.cm) ; 2 uses
  %i.cr = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi33, <16 x float> %i.cn) ; 2 uses
  %i.cs = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi34, <16 x float> %i.co) ; 2 uses
  %i.ct = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi35, <16 x float> %i.cp) ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4ncnnL30transpose_pack_A_tile_quantizeERKNS_3MatERS0_iiiiS2_:bb.a
  %i.anf = bitcast <16 x i8> %i.amv to <8 x i16>  ; 2 uses
  %i.ang = bitcast <16 x i8> %i.ana to <8 x i16>  ; 2 uses
  %i.anh = shufflevector <8 x i16> %i.anf, <8 x i16> %i.ang, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ani = shufflevector <8 x i16> %i.anf, <8 x i16> %i.ang, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.anj = bitcast <8 x i16> %i.and to <4 x i32>  ; 2 uses
  %i.ank = bitcast <8 x i16> %i.anh to <4 x i32>  ; 2 uses
  %i.anl = shufflevector <4 x i32> %i.anj, <4 x i32> %i.ank, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.anm = shufflevector <4 x i32> %i.anj, <4 x i32> %i.ank, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.ann = bitcast <8 x i16> %i.ane to <4 x i32>  ; 2 uses
  %i.ano = bitcast <8 x i16> %i.ani to <4 x i32>  ; 2 uses
  %i.anp = shufflevector <4 x i32> %i.ann, <4 x i32> %i.ano, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.anq = shufflevector <4 x i32> %i.ann, <4 x i32> %i.ano, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x i32> %i.anl, ptr %.211355.i.us, align 16, !tbaa !90
  %i.anr = getelementptr inbounds nuw i8, ptr %.211355.i.us, i64 16
  store <4 x i32> %i.anm, ptr %i.anr, align 16, !tbaa !90
  %i.ans = getelementptr inbounds nuw i8, ptr %.211355.i.us, i64 32
  store <4 x i32> %i.anp, ptr %i.ans, align 16, !tbaa !90
  %i.ant = getelementptr inbounds nuw i8, ptr %.211355.i.us, i64 48
  store <4 x i32> %i.anq, ptr %i.ant, align 16, !tbaa !90
  %i.anu = getelementptr inbounds nuw i8, ptr %.211355.i.us, i64 64 ; 2 uses
  %i.anv = getelementptr inbounds nuw i8, ptr %.08291354.i.us, i64 %.idx869.i
  %i.anw = add nuw nsw i32 %.08391353.i.us, 16    ; 2 uses
  %i.anx = or disjoint i32 %i.anw, 15
  %i.any = icmp slt i32 %i.anx, %5
  br i1 %i.any, label %.lr.ph1356.i.us, label %.loopexit1264.i.us, !llvm.loop !1115

.loopexit1264.i.us:                               ; preds = %.lr.ph1381.i.us.prol.loopexit, %.lr.ph1381.i.us, %.lr.ph1368.i.us, %.lr.ph1362.i.us, %.lr.ph1356.i.us, %bb.q, %bb.p, %bb.o, %.preheader1263.i.us, %.split.i.us
  %.29.i.us = phi ptr [ %.201384.i.us, %.split.i.us ], [ %.27.lcssa.i.us, %.preheader1263.i.us ], [ %i.aig, %.lr.ph1368.i.us ], [ %i.ala, %.lr.ph1362.i.us ], [ %.201384.i.us, %bb.o ], [ %i.anu, %.lr.ph1356.i.us ], [ %.201384.i.us, %bb.p ], [ %.201384.i.us, %bb.q ], [ %.lcssa236.unr, %.lr.ph1381.i.us.prol.loopexit ], [ %i.age, %.lr.ph1381.i.us ] ; 2 uses
  %indvars.iv.next1534.i.us = add nuw nsw i64 %indvars.iv1533.i.us, 4 ; 3 uses
  %i.anz = icmp slt i64 %indvars.iv.next1534.i.us, %invariant.op1638.i
  br i1 %i.anz, label %.split.i.us, label %.preheader1262.loopexit.i, !llvm.loop !1116

.lr.ph1321.i.preheader:                           ; preds = %.lr.ph1350.i, %.loopexit1270.i.loopexit17
  %indvars.iv1529.i = phi i64 [ %indvars.iv.next1530.i, %.loopexit1270.i.loopexit17 ], [ %i.in, %.lr.ph1350.i ] ; 2 uses
  %.101349.i = phi ptr [ %i.atm, %.loopexit1270.i.loopexit17 ], [ %.0782.lcssa.i, %.lr.ph1350.i ]
  %i.aoa = load ptr, ptr %0, align 8, !tbaa !25
  %i.aob = getelementptr inbounds nuw [4 x i8], ptr %i.aoa, i64 %i.ig
  %i.aoc = add nsw i64 %indvars.iv1529.i, %i.ih   ; 2 uses
  %i.aod = mul nsw i64 %i.aoc, %i.ip
  %i.aoe = getelementptr inbounds [4 x i8], ptr %i.aob, i64 %i.aod
  br label %.lr.ph1321.i

.lr.ph1321.i:                                     ; preds = %.lr.ph1321.i.preheader, %.lr.ph1321.i
  %.111320.i = phi ptr [ %i.atm, %.lr.ph1321.i ], [ %.101349.i, %.lr.ph1321.i.preheader ] ; 3 uses
  %.08131319.i = phi ptr [ %i.atn, %.lr.ph1321.i ], [ %i.aoe, %.lr.ph1321.i.preheader ] ; 9 uses
  %.08211318.i = phi i32 [ %i.ato, %.lr.ph1321.i ], [ 0, %.lr.ph1321.i.preheader ]
  %i.aof = load <16 x float>, ptr %.08131319.i, align 64, !tbaa !90
  %i.aog = getelementptr inbounds nuw i8, ptr %.08131319.i, i64 64
  %i.aoh = load <16 x float>, ptr %i.aog, align 64, !tbaa !90
  %i.aoi = getelementptr inbounds nuw i8, ptr %.08131319.i, i64 128
  %i.aoj = load <16 x float>, ptr %i.aoi, align 64, !tbaa !90
  %i.aok = getelementptr inbounds nuw i8, ptr %.08131319.i, i64 192
  %i.aol = load <16 x float>, ptr %i.aok, align 64, !tbaa !90
  %i.aom = getelementptr inbounds nuw i8, ptr %.08131319.i, i64 256
  %i.aon = load <16 x float>, ptr %i.aom, align 64, !tbaa !90
  %i.aoo = getelementptr inbounds nuw i8, ptr %.08131319.i, i64 320
  %i.aop = load <16 x float>, ptr %i.aoo, align 64, !tbaa !90
  %i.aoq = getelementptr inbounds nuw i8, ptr %.08131319.i, i64 384
  %i.aor = load <16 x float>, ptr %i.aoq, align 64, !tbaa !90
  %i.aos = getelementptr inbounds nuw i8, ptr %.08131319.i, i64 448
  %i.aot = load <16 x float>, ptr %i.aos, align 64, !tbaa !90
  %i.aou = load ptr, ptr %6, align 8, !tbaa !25
  %i.aov = getelementptr [4 x i8], ptr %i.aou, i64 %i.aoc ; 8 uses
  %i.aow = load float, ptr %i.aov, align 4, !tbaa !69
  %i.aox = insertelement <16 x float> poison, float %i.aow, i64 0
  %i.aoy = shufflevector <16 x float> %i.aox, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aoz = fmul fast <16 x float> %i.aoy, %i.aof  ; 2 uses
  %i.apa = getelementptr i8, ptr %i.aov, i64 4
  %i.apb = load float, ptr %i.apa, align 4, !tbaa !69
  %i.apc = insertelement <16 x float> poison, float %i.apb, i64 0
  %i.apd = shufflevector <16 x float> %i.apc, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ape = fmul fast <16 x float> %i.apd, %i.aoh  ; 2 uses
  %i.apf = getelementptr i8, ptr %i.aov, i64 8
  %i.apg = load float, ptr %i.apf, align 4, !tbaa !69
  %i.aph = insertelement <16 x float> poison, float %i.apg, i64 0
  %i.api = shufflevector <16 x float> %i.aph, <16 x float> poison, <16 x i32> zeroinitializer
  %i.apj = fmul fast <16 x float> %i.api, %i.aoj  ; 2 uses
  %i.apk = getelementptr i8, ptr %i.aov, i64 12
  %i.apl = load float, ptr %i.apk, align 4, !tbaa !69
  %i.apm = insertelement <16 x float> poison, float %i.apl, i64 0
  %i.apn = shufflevector <16 x float> %i.apm, <16 x float> poison, <16 x i32> zeroinitializer
  %i.apo = fmul fast <16 x float> %i.apn, %i.aol  ; 2 uses
  %i.app = getelementptr i8, ptr %i.aov, i64 16
  %i.apq = load float, ptr %i.app, align 4, !tbaa !69
  %i.apr = insertelement <16 x float> poison, float %i.apq, i64 0
  %i.aps = shufflevector <16 x float> %i.apr, <16 x float> poison, <16 x i32> zeroinitializer
  %i.apt = fmul fast <16 x float> %i.aps, %i.aon  ; 2 uses
  %i.apu = getelementptr i8, ptr %i.aov, i64 20
  %i.apv = load float, ptr %i.apu, align 4, !tbaa !69
  %i.apw = insertelement <16 x float> poison, float %i.apv, i64 0
  %i.apx = shufflevector <16 x float> %i.apw, <16 x float> poison, <16 x i32> zeroinitializer
  %i.apy = fmul fast <16 x float> %i.apx, %i.aop  ; 2 uses
  %i.apz = getelementptr i8, ptr %i.aov, i64 24
  %i.aqa = load float, ptr %i.apz, align 4, !tbaa !69
  %i.aqb = insertelement <16 x float> poison, float %i.aqa, i64 0
  %i.aqc = shufflevector <16 x float> %i.aqb, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aqd = fmul fast <16 x float> %i.aqc, %i.aor  ; 2 uses
  %i.aqe = getelementptr i8, ptr %i.aov, i64 28
  %i.aqf = load float, ptr %i.aqe, align 4, !tbaa !69
  %i.aqg = insertelement <16 x float> poison, float %i.aqf, i64 0
  %i.aqh = shufflevector <16 x float> %i.aqg, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aqi = fmul fast <16 x float> %i.aqh, %i.aot  ; 2 uses
  %i.aqj = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.aoz)
  %i.aqk = fadd fast <16 x float> %i.aqj, %i.aoz
  %i.aql = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.aqk, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aqm = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.aql, <16 x i8> zeroinitializer, i16 -1)
  %i.aqn = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.aqm, <16 x i8> splat (i8 -127))
  %i.aqo = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ape)
  %i.aqp = fadd fast <16 x float> %i.aqo, %i.ape
  %i.aqq = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.aqp, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aqr = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.aqq, <16 x i8> zeroinitializer, i16 -1)
  %i.aqs = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.aqr, <16 x i8> splat (i8 -127))
  %i.aqt = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.apj)
  %i.aqu = fadd fast <16 x float> %i.aqt, %i.apj
  %i.aqv = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.aqu, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aqw = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.aqv, <16 x i8> zeroinitializer, i16 -1)
  %i.aqx = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.aqw, <16 x i8> splat (i8 -127))
  %i.aqy = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.apo)
  %i.aqz = fadd fast <16 x float> %i.aqy, %i.apo
  %i.ara = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.aqz, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.arb = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ara, <16 x i8> zeroinitializer, i16 -1)
  %i.arc = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.arb, <16 x i8> splat (i8 -127))
  %i.ard = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.apt)
  %i.are = fadd fast <16 x float> %i.ard, %i.apt
  %i.arf = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.are, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.arg = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.arf, <16 x i8> zeroinitializer, i16 -1)
  %i.arh = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.arg, <16 x i8> splat (i8 -127))
  %i.ari = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.apy)
  %i.arj = fadd fast <16 x float> %i.ari, %i.apy
  %i.ark = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.arj, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.arl = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ark, <16 x i8> zeroinitializer, i16 -1)
  %i.arm = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.arl, <16 x i8> splat (i8 -127))
  %i.arn = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.aqd)
  %i.aro = fadd fast <16 x float> %i.arn, %i.aqd
  %i.arp = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.aro, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.arq = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.arp, <16 x i8> zeroinitializer, i16 -1)
  %i.arr = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.arq, <16 x i8> splat (i8 -127))
  %i.ars = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.aqi)
  %i.art = fadd fast <16 x float> %i.ars, %i.aqi
  %i.aru = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.art, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.arv = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.aru, <16 x i8> zeroinitializer, i16 -1)
  %i.arw = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.arv, <16 x i8> splat (i8 -127))
  %i.arx = bitcast <16 x i8> %i.aqn to <8 x i16>  ; 2 uses
  %i.ary = bitcast <16 x i8> %i.aqs to <8 x i16>  ; 2 uses
  %i.arz = shufflevector <8 x i16> %i.arx, <8 x i16> %i.ary, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.asa = shufflevector <8 x i16> %i.arx, <8 x i16> %i.ary, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.asb = bitcast <16 x i8> %i.aqx to <8 x i16>  ; 2 uses
  %i.asc = bitcast <16 x i8> %i.arc to <8 x i16>  ; 2 uses
  %i.asd = shufflevector <8 x i16> %i.asb, <8 x i16> %i.asc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ase = shufflevector <8 x i16> %i.asb, <8 x i16> %i.asc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.asf = bitcast <16 x i8> %i.arh to <8 x i16>  ; 2 uses
  %i.asg = bitcast <16 x i8> %i.arm to <8 x i16>  ; 2 uses
  %i.ash = shufflevector <8 x i16> %i.asf, <8 x i16> %i.asg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.asi = shufflevector <8 x i16> %i.asf, <8 x i16> %i.asg, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.asj = bitcast <16 x i8> %i.arr to <8 x i16>  ; 2 uses
  %i.ask = bitcast <16 x i8> %i.arw to <8 x i16>  ; 2 uses
  %i.asl = shufflevector <8 x i16> %i.asj, <8 x i16> %i.ask, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.asm = shufflevector <8 x i16> %i.asj, <8 x i16> %i.ask, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.asn = bitcast <8 x i16> %i.arz to <4 x i32>  ; 2 uses
  %i.aso = bitcast <8 x i16> %i.asd to <4 x i32>  ; 2 uses
  %i.asp = shufflevector <4 x i32> %i.asn, <4 x i32> %i.aso, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.asq = shufflevector <4 x i32> %i.asn, <4 x i32> %i.aso, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.asr = bitcast <8 x i16> %i.asa to <4 x i32>  ; 2 uses
  %i.ass = bitcast <8 x i16> %i.ase to <4 x i32>  ; 2 uses
  %i.ast = shufflevector <4 x i32> %i.asr, <4 x i32> %i.ass, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.asu = shufflevector <4 x i32> %i.asr, <4 x i32> %i.ass, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.asv = bitcast <8 x i16> %i.ash to <4 x i32>  ; 2 uses
  %i.asw = bitcast <8 x i16> %i.asl to <4 x i32>  ; 2 uses
  %i.asx = shufflevector <4 x i32> %i.asv, <4 x i32> %i.asw, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.asy = shufflevector <4 x i32> %i.asv, <4 x i32> %i.asw, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.asz = bitcast <8 x i16> %i.asi to <4 x i32>  ; 2 uses
  %i.ata = bitcast <8 x i16> %i.asm to <4 x i32>  ; 2 uses
  %i.atb = shufflevector <4 x i32> %i.asz, <4 x i32> %i.ata, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.atc = shufflevector <4 x i32> %i.asz, <4 x i32> %i.ata, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.atd = shufflevector <4 x i32> %i.asq, <4 x i32> %i.asy, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 2, i32 3, i32 6, i32 7>
  %i.ate = shufflevector <4 x i32> %i.asp, <4 x i32> %i.asx, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 2, i32 3, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.atf = shufflevector <8 x i32> %i.atd, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.atg = shufflevector <16 x i32> %i.ate, <16 x i32> %i.atf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ath = shufflevector <4 x i32> %i.asu, <4 x i32> %i.atc, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 2, i32 3, i32 6, i32 7>
  %i.ati = shufflevector <4 x i32> %i.ast, <4 x i32> %i.atb, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 2, i32 3, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.atj = shufflevector <8 x i32> %i.ath, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.atk = shufflevector <16 x i32> %i.ati, <16 x i32> %i.atj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  store <16 x i32> %i.atg, ptr %.111320.i, align 64, !tbaa !90
  %i.atl = getelementptr inbounds nuw i8, ptr %.111320.i, i64 64
  store <16 x i32> %i.atk, ptr %i.atl, align 64, !tbaa !90
  %i.atm = getelementptr inbounds nuw i8, ptr %.111320.i, i64 128 ; 3 uses
  %i.atn = getelementptr inbounds nuw i8, ptr %.08131319.i, i64 %.idx873.i
  %i.ato = add nuw nsw i32 %.08211318.i, 16       ; 2 uses
  %i.atp = or disjoint i32 %i.ato, 15
  %i.atq = icmp slt i32 %i.atp, %5
  br i1 %i.atq, label %.lr.ph1321.i, label %.loopexit1270.i.loopexit17, !llvm.loop !1117

.loopexit1270.i.loopexit17:                       ; preds = %.lr.ph1321.i
  %indvars.iv.next1530.i = add nuw nsw i64 %indvars.iv1529.i, 8 ; 3 uses
  %i.atr = icmp slt i64 %indvars.iv.next1530.i, %invariant.op.i
  br i1 %i.atr, label %.lr.ph1321.i.preheader, label %.preheader1268.loopexit.i, !llvm.loop !1108

.preheader1262.loopexit.i:                        ; preds = %.loopexit1264.i.us, %.loopexit1264.i.preheader
  %.us-phi58 = phi ptr [ %.10.lcssa.i, %.loopexit1264.i.preheader ], [ %.29.i.us, %.loopexit1264.i.us ]
  %.us-phi59 = phi i64 [ %i.adi, %.loopexit1264.i.preheader ], [ %indvars.iv.next1534.i.us, %.loopexit1264.i.us ]
  %i.ats = trunc nsw i64 %.us-phi59 to i32
  br label %.preheader1262.i

.preheader1262.i:                                 ; preds = %.preheader1262.loopexit.i, %.preheader1268.i
  %.2787.lcssa.i = phi i32 [ %.1786.lcssa.i, %.preheader1268.i ], [ %i.ats, %.preheader1262.loopexit.i ] ; 3 uses
  %.20.lcssa.i = phi ptr [ %.10.lcssa.i, %.preheader1268.i ], [ %.us-phi58, %.preheader1262.loopexit.i ] ; 3 uses
  %i.att = or disjoint i32 %.2787.lcssa.i, 1
  %i.atu = icmp slt i32 %i.att, %3
  br i1 %i.atu, label %.lr.ph1427.i, label %.preheader1254.i

.lr.ph1427.i:                                     ; preds = %.preheader1262.i
  %i.atv = sext i32 %4 to i64
  %i.atw = mul i64 %i.n, %i.atv
  %i.atx = icmp sgt i32 %5, 15
  %.idx865.i = shl i64 %i.n, 6
  %i.aty = icmp sgt i32 %5, 7
  %.idx864.i = shl i64 %i.n, 5
  %i.atz = icmp sgt i32 %5, 3                     ; 2 uses
  %.idx863.i = shl i64 %i.n, 4                    ; 2 uses
  %.idx860.i = shl i64 %i.n, 3                    ; 2 uses
  %.idx861.i = mul i64 %i.n, 12
  %i.aua = and i32 %5, -4
  %i.aub = sext i32 %.2787.lcssa.i to i64         ; 4 uses
  %i.auc = sext i32 %3 to i64
  %i.aud = sext i32 %2 to i64
  %i.aue = sext i32 %i.e to i64
  %invariant.op1639.i = add nsw i64 %i.auc, -1    ; 2 uses
  %i.auf = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.e)
  %i.aug = icmp eq i32 %i.auf, 1
  %i.auh = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.e, i1 true)
  br i1 %i.aug, label %.split1640.i.us, label %.loopexit1257.i.preheader

.loopexit1257.i.preheader:                        ; preds = %.lr.ph1427.i
  %i.aui = add nsw i64 %i.aub, 2
  %smax111 = tail call i64 @llvm.smax.i64(i64 %invariant.op1639.i, i64 %i.aui)
  %i.auj = xor i64 %i.aub, -1
  %i.auk = add nsw i64 %smax111, %i.auj
  %i.aul = and i64 %i.auk, -2
  %i.aum = add i64 %i.aul, %i.aub
  %i.aun = add i64 %i.aum, 2
  br label %.preheader1254.loopexit.i

.split1640.i.us:                                  ; preds = %.lr.ph1427.i, %.loopexit1257.i.us
  %indvars.iv1537.i.us = phi i64 [ %indvars.iv.next1538.i.us, %.loopexit1257.i.us ], [ %i.aub, %.lr.ph1427.i ] ; 2 uses
  %.301426.i.us = phi ptr [ %.40.i.us, %.loopexit1257.i.us ], [ %.20.lcssa.i, %.lr.ph1427.i ] ; 9 uses
  %i.auo = load ptr, ptr %0, align 8, !tbaa !25
  %i.aup = getelementptr inbounds nuw [4 x i8], ptr %i.auo, i64 %i.atw
  %i.auq = add nsw i64 %indvars.iv1537.i.us, %i.aud ; 5 uses
  %i.aur = mul nsw i64 %i.auq, %i.aue
  %i.aus = getelementptr inbounds [4 x i8], ptr %i.aup, i64 %i.aur ; 5 uses
  switch i32 %i.auh, label %.loopexit1257.i.us [
    i32 4, label %bb.u
    i32 3, label %bb.t
    i32 2, label %bb.s
    i32 0, label %bb.r
  ]

bb.r:                                             ; preds = %.split1640.i.us
  %i.aut = load ptr, ptr %6, align 8, !tbaa !25
  %i.auu = getelementptr [4 x i8], ptr %i.aut, i64 %i.auq ; 2 uses
  %i.auv = load float, ptr %i.auu, align 4, !tbaa !69 ; 2 uses
  %i.auw = getelementptr i8, ptr %i.auu, i64 4
  %i.aux = load float, ptr %i.auw, align 4, !tbaa !69 ; 2 uses
  %i.auy = insertelement <4 x float> poison, float %i.auv, i64 0 ; 2 uses
  %i.auz = shufflevector <4 x float> %i.auy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ava = insertelement <4 x float> poison, float %i.aux, i64 0 ; 2 uses
  %i.avb = shufflevector <4 x float> %i.ava, <4 x float> poison, <4 x i32> zeroinitializer
  %i.avc = shufflevector <4 x float> %i.auy, <4 x float> %i.ava, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  br i1 %i.atz, label %.lr.ph1409.i.us, label %.preheader1258.i.us

.lr.ph1409.i.us:                                  ; preds = %bb.r, %.lr.ph1409.i.us
  %.371408.i.us = phi ptr [ %i.awm, %.lr.ph1409.i.us ], [ %.301426.i.us, %bb.r ] ; 2 uses
  %.08241407.i.us = phi i32 [ %i.awo, %.lr.ph1409.i.us ], [ 0, %bb.r ]
  %.68471406.i.us = phi ptr [ %i.awn, %.lr.ph1409.i.us ], [ %i.aus, %bb.r ] ; 5 uses
  %i.avd = load i64, ptr %.68471406.i.us, align 1, !tbaa !90
  %i.ave = insertelement <2 x i64> poison, i64 %i.avd, i64 0
  %i.avf = bitcast <2 x i64> %i.ave to <4 x float>
  %i.avg = getelementptr inbounds nuw [4 x i8], ptr %.68471406.i.us, i64 %i.n
  %i.avh = load i64, ptr %i.avg, align 1, !tbaa !90
  %i.avi = insertelement <2 x i64> poison, i64 %i.avh, i64 0
  %i.avj = bitcast <2 x i64> %i.avi to <4 x float>
  %i.avk = getelementptr inbounds nuw i8, ptr %.68471406.i.us, i64 %.idx860.i
  %i.avl = load i64, ptr %i.avk, align 1, !tbaa !90
  %i.avm = insertelement <2 x i64> poison, i64 %i.avl, i64 0
  %i.avn = bitcast <2 x i64> %i.avm to <4 x float>
  %i.avo = getelementptr inbounds nuw i8, ptr %.68471406.i.us, i64 %.idx861.i
  %i.avp = load i64, ptr %i.avo, align 1, !tbaa !90
  %i.avq = insertelement <2 x i64> poison, i64 %i.avp, i64 0
  %i.avr = bitcast <2 x i64> %i.avq to <4 x float>
  %i.avs = shufflevector <4 x float> %i.avf, <4 x float> %i.avj, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.avt = shufflevector <4 x float> %i.avn, <4 x float> %i.avr, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.avu = shufflevector <4 x float> %i.avs, <4 x float> %i.avt, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.avv = shufflevector <4 x float> %i.avs, <4 x float> %i.avt, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.avw = fmul fast <4 x float> %i.auz, %i.avu   ; 2 uses
  %i.avx = fmul fast <4 x float> %i.avb, %i.avv   ; 2 uses
  %i.avy = shufflevector <4 x float> %i.avw, <4 x float> %i.avx, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.avz = shufflevector <4 x float> %i.avw, <4 x float> %i.avx, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.awa = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.avy)
  %i.awb = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.avz)
  %i.awc = fadd fast <4 x float> %i.awa, %i.avy
  %i.awd = fadd fast <4 x float> %i.awb, %i.avz
  %i.awe = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.awc)
  %i.awf = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.awd)
  %i.awg = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.awe, <4 x i32> %i.awf)
  %i.awh = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.awg, <8 x i16> splat (i16 -127))
  %i.awi = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.awh, <8 x i16> splat (i16 127))
  %i.awj = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.awi, <8 x i16> poison)
  %i.awk = bitcast <16 x i8> %i.awj to <2 x i64>
  %i.awl = extractelement <2 x i64> %i.awk, i64 0
  store i64 %i.awl, ptr %.371408.i.us, align 8, !tbaa !111
  %i.awm = getelementptr inbounds nuw i8, ptr %.371408.i.us, i64 8 ; 2 uses
  %i.awn = getelementptr inbounds nuw i8, ptr %.68471406.i.us, i64 %.idx863.i ; 2 uses
  %i.awo = add nuw nsw i32 %.08241407.i.us, 4     ; 2 uses
  %i.awp = or disjoint i32 %i.awo, 3
  %i.awq = icmp slt i32 %i.awp, %5
  br i1 %i.awq, label %.lr.ph1409.i.us, label %.preheader1258.i.us, !llvm.loop !1118

.preheader1258.i.us:                              ; preds = %.lr.ph1409.i.us, %bb.r
  %.6847.lcssa.i.us = phi ptr [ %i.aus, %bb.r ], [ %i.awn, %.lr.ph1409.i.us ] ; 2 uses
  %.0824.lcssa.i.us = phi i32 [ 0, %bb.r ], [ %i.aua, %.lr.ph1409.i.us ] ; 3 uses
  %.37.lcssa.i.us = phi ptr [ %.301426.i.us, %bb.r ], [ %i.awm, %.lr.ph1409.i.us ] ; 2 uses
  %i.awr = or disjoint i32 %.0824.lcssa.i.us, 1
  %i.aws = icmp slt i32 %i.awr, %5
  br i1 %i.aws, label %.lr.ph1416.i.us, label %.preheader1256.i.us

.lr.ph1416.i.us:                                  ; preds = %.preheader1258.i.us, %.lr.ph1416.i.us
  %.381415.i.us = phi ptr [ %i.axl, %.lr.ph1416.i.us ], [ %.37.lcssa.i.us, %.preheader1258.i.us ] ; 2 uses
  %.18251414.i.us = phi i32 [ %i.axn, %.lr.ph1416.i.us ], [ %.0824.lcssa.i.us, %.preheader1258.i.us ]
  %.78481413.i.us = phi ptr [ %i.axm, %.lr.ph1416.i.us ], [ %.6847.lcssa.i.us, %.preheader1258.i.us ] ; 3 uses
  %i.awt = load i64, ptr %.78481413.i.us, align 1, !tbaa !90
  %i.awu = insertelement <2 x i64> poison, i64 %i.awt, i64 0
  %i.awv = bitcast <2 x i64> %i.awu to <4 x float>
  %i.aww = getelementptr inbounds nuw [4 x i8], ptr %.78481413.i.us, i64 %i.n
  %i.awx = load i64, ptr %i.aww, align 1, !tbaa !90
  %i.awy = insertelement <2 x i64> poison, i64 %i.awx, i64 0
  %i.awz = bitcast <2 x i64> %i.awy to <4 x float>
  %i.axa = shufflevector <4 x float> %i.awv, <4 x float> %i.awz, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.axb = fmul fast <4 x float> %i.axa, %i.avc   ; 2 uses
  %i.axc = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.axb)
  %i.axd = fadd fast <4 x float> %i.axc, %i.axb
  %i.axe = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.axd) ; 2 uses
  %i.axf = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.axe, <4 x i32> %i.axe)
  %i.axg = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.axf, <8 x i16> splat (i16 -127))
  %i.axh = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.axg, <8 x i16> splat (i16 127))
  %i.axi = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.axh, <8 x i16> poison)
  %i.axj = bitcast <16 x i8> %i.axi to <4 x i32>
  %i.axk = extractelement <4 x i32> %i.axj, i64 0
  store i32 %i.axk, ptr %.381415.i.us, align 4, !tbaa !51
  %i.axl = getelementptr inbounds nuw i8, ptr %.381415.i.us, i64 4 ; 2 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %.78481413.i.us, i64 %.idx860.i ; 2 uses
  %i.axn = add nuw nsw i32 %.18251414.i.us, 2     ; 3 uses
  %i.axo = or disjoint i32 %i.axn, 1
  %i.axp = icmp slt i32 %i.axo, %5
  br i1 %i.axp, label %.lr.ph1416.i.us, label %.preheader1256.i.us, !llvm.loop !1119

.preheader1256.i.us:                              ; preds = %.lr.ph1416.i.us, %.preheader1258.i.us
  %.7848.lcssa.i.us = phi ptr [ %.6847.lcssa.i.us, %.preheader1258.i.us ], [ %i.axm, %.lr.ph1416.i.us ]
  %.1825.lcssa.i.us = phi i32 [ %.0824.lcssa.i.us, %.preheader1258.i.us ], [ %i.axn, %.lr.ph1416.i.us ] ; 2 uses
  %.38.lcssa.i.us = phi ptr [ %.37.lcssa.i.us, %.preheader1258.i.us ], [ %i.axl, %.lr.ph1416.i.us ] ; 2 uses
  %i.axq = icmp slt i32 %.1825.lcssa.i.us, %5
  br i1 %i.axq, label %.lr.ph1423.i.us, label %.loopexit1257.i.us

.lr.ph1423.i.us:                                  ; preds = %.preheader1256.i.us, %.lr.ph1423.i.us
  %.391422.i.us = phi ptr [ %i.ayb, %.lr.ph1423.i.us ], [ %.38.lcssa.i.us, %.preheader1256.i.us ] ; 3 uses
  %.28261421.i.us = phi i32 [ %i.ayd, %.lr.ph1423.i.us ], [ %.1825.lcssa.i.us, %.preheader1256.i.us ]
  %.88491420.i.us = phi ptr [ %i.ayc, %.lr.ph1423.i.us ], [ %.7848.lcssa.i.us, %.preheader1256.i.us ] ; 3 uses
  %i.axr = load float, ptr %.88491420.i.us, align 4, !tbaa !69
  %i.axs = fmul fast float %i.axr, %i.auv
  %i.axt = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.axs)
  %i.axu = fptosi float %i.axt to i32
  %spec.select.i8801247.i.us = tail call i32 @llvm.smax.i32(i32 %i.axu, i32 -127)
  %.0.i8811248.i.us = tail call i32 @llvm.smin.i32(i32 %spec.select.i8801247.i.us, i32 127)
  %.0.i881.i.us = trunc nsw i32 %.0.i8811248.i.us to i8
  store i8 %.0.i881.i.us, ptr %.391422.i.us, align 1, !tbaa !90
  %i.axv = getelementptr inbounds nuw i8, ptr %.88491420.i.us, i64 4
  %i.axw = load float, ptr %i.axv, align 4, !tbaa !69
  %i.axx = fmul fast float %i.axw, %i.aux
  %i.axy = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.axx)
  %i.axz = fptosi float %i.axy to i32
  %spec.select.i8781249.i.us = tail call i32 @llvm.smax.i32(i32 %i.axz, i32 -127)
  %.0.i8791250.i.us = tail call i32 @llvm.smin.i32(i32 %spec.select.i8781249.i.us, i32 127)
  %.0.i879.i.us = trunc nsw i32 %.0.i8791250.i.us to i8
  %i.aya = getelementptr inbounds nuw i8, ptr %.391422.i.us, i64 1
  store i8 %.0.i879.i.us, ptr %i.aya, align 1, !tbaa !90
  %i.ayb = getelementptr inbounds nuw i8, ptr %.391422.i.us, i64 2 ; 2 uses
  %i.ayc = getelementptr inbounds nuw [4 x i8], ptr %.88491420.i.us, i64 %i.n
  %i.ayd = add nuw nsw i32 %.28261421.i.us, 1     ; 2 uses
  %exitcond1536.not.i.us = icmp eq i32 %i.ayd, %5
  br i1 %exitcond1536.not.i.us, label %.loopexit1257.i.us, label %.lr.ph1423.i.us, !llvm.loop !1120

bb.s:                                             ; preds = %.split1640.i.us
  %i.aye = load ptr, ptr %6, align 8, !tbaa !25
  %i.ayf = getelementptr [4 x i8], ptr %i.aye, i64 %i.auq ; 2 uses
  %i.ayg = load float, ptr %i.ayf, align 4, !tbaa !69
  %i.ayh = insertelement <4 x float> poison, float %i.ayg, i64 0 ; 2 uses
  %i.ayi = getelementptr i8, ptr %i.ayf, i64 4
  %i.ayj = load float, ptr %i.ayi, align 4, !tbaa !69
  %i.ayk = insertelement <4 x float> poison, float %i.ayj, i64 0 ; 2 uses
  br i1 %i.atz, label %.lr.ph1403.i.us.preheader, label %.loopexit1257.i.us

.lr.ph1403.i.us.preheader:                        ; preds = %bb.s
end_hunk_4
begin_hunk_5_@_ZN4ncnnL20pack_A_tile_quantizeERKNS_3MatERS0_iiiiS2_:bb.a
  %i.tm = getelementptr inbounds nuw i8, ptr %.17.lcssa.i, i64 8 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %.3469.lcssa.i, i64 16
  %i.to = or disjoint i32 %.0478.lcssa.i, 1
  br label %.lr.ph706.i.prol.loopexit

.lr.ph706.i.prol.loopexit:                        ; preds = %.lr.ph706.i.prol, %.lr.ph706.i.preheader
  %.lcssa293.unr = phi ptr [ poison, %.lr.ph706.i.preheader ], [ %i.tm, %.lr.ph706.i.prol ]
  %.18705.i.unr = phi ptr [ %.17.lcssa.i, %.lr.ph706.i.preheader ], [ %i.tm, %.lr.ph706.i.prol ]
  %.4470704.i.unr = phi ptr [ %.3469.lcssa.i, %.lr.ph706.i.preheader ], [ %i.tn, %.lr.ph706.i.prol ]
  %.1479703.i.unr = phi i32 [ %.0478.lcssa.i, %.lr.ph706.i.preheader ], [ %i.to, %.lr.ph706.i.prol ]
  %i.tp = icmp eq i32 %5, %.neg331
  br i1 %i.tp, label %.loopexit608.i, label %.lr.ph706.i

.lr.ph699.i:                                      ; preds = %.preheader612.i, %.lr.ph699.i
  %.17698.i = phi ptr [ %i.uo, %.lr.ph699.i ], [ %.13722.i, %.preheader612.i ] ; 2 uses
  %.3469697.i = phi ptr [ %i.up, %.lr.ph699.i ], [ %i.qi, %.preheader612.i ] ; 3 uses
  %.0478696.i = phi i32 [ %i.uq, %.lr.ph699.i ], [ 0, %.preheader612.i ]
  %i.tq = load <8 x float>, ptr %.3469697.i, align 1, !tbaa !90 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.3469697.i, i64 %.idx491.i
  %i.ts = load <8 x float>, ptr %i.tr, align 1, !tbaa !90 ; 2 uses
  %i.tt = shufflevector <8 x float> %i.tq, <8 x float> %i.ts, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.tu = shufflevector <8 x float> %i.tq, <8 x float> %i.ts, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.tv = fmul fast <8 x float> %i.tt, %i.qm      ; 2 uses
  %i.tw = fmul fast <8 x float> %i.tu, %i.qm      ; 2 uses
  %i.tx = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.tv)
  %i.ty = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.tw)
  %i.tz = fadd fast <8 x float> %i.tx, %i.tv
  %i.ua = fadd fast <8 x float> %i.ty, %i.tw
  %i.ub = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.tz)
  %i.uc = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ua)
  %i.ud = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.ub, <8 x i32> %i.uc)
  %i.ue = bitcast <16 x i16> %i.ud to <4 x i64>
  %i.uf = shufflevector <4 x i64> %i.ue, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ug = bitcast <4 x i64> %i.uf to <16 x i16>
  %i.uh = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.ug, <16 x i16> splat (i16 -127))
  %i.ui = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.uh, <16 x i16> splat (i16 127))
  %i.uj = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.ui, <16 x i16> poison)
  %i.uk = bitcast <32 x i8> %i.uj to <8 x i32>
  %i.ul = shufflevector <8 x i32> %i.uk, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.um = bitcast <4 x i32> %i.ul to <16 x i8>
  %i.un = shufflevector <16 x i8> %i.um, <16 x i8> poison, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %i.un, ptr %.17698.i, align 16, !tbaa !90
  %i.uo = getelementptr inbounds nuw i8, ptr %.17698.i, i64 16 ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %.3469697.i, i64 32 ; 2 uses
  %i.uq = add nuw nsw i32 %.0478696.i, 2          ; 2 uses
  %i.ur = or disjoint i32 %i.uq, 1
  %i.us = icmp slt i32 %i.ur, %5
  br i1 %i.us, label %.lr.ph699.i, label %.preheader610.i, !llvm.loop !1147

.lr.ph706.i:                                      ; preds = %.lr.ph706.i.prol.loopexit, %.lr.ph706.i
  %.18705.i = phi ptr [ %i.vt, %.lr.ph706.i ], [ %.18705.i.unr, %.lr.ph706.i.prol.loopexit ] ; 3 uses
  %.4470704.i = phi ptr [ %i.vu, %.lr.ph706.i ], [ %.4470704.i.unr, %.lr.ph706.i.prol.loopexit ] ; 4 uses
  %.1479703.i = phi i32 [ %i.vv, %.lr.ph706.i ], [ %.1479703.i.unr, %.lr.ph706.i.prol.loopexit ]
  %i.ut = load <4 x float>, ptr %.4470704.i, align 16, !tbaa !90
  %i.uu = getelementptr inbounds nuw i8, ptr %.4470704.i, i64 %.idx491.i
  %i.uv = load <4 x float>, ptr %i.uu, align 16, !tbaa !90
  %i.uw = shufflevector <4 x float> %i.ut, <4 x float> %i.uv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ux = fmul fast <8 x float> %i.uw, %i.qm      ; 2 uses
  %i.uy = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ux)
  %i.uz = fadd fast <8 x float> %i.uy, %i.ux
  %i.va = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.uz)
  %i.vb = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.va, <16 x i8> zeroinitializer, i8 -1)
  %i.vc = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.vb, <16 x i8> splat (i8 -127))
  %i.vd = bitcast <16 x i8> %i.vc to <2 x i64>
  %i.ve = extractelement <2 x i64> %i.vd, i64 0
  store i64 %i.ve, ptr %.18705.i, align 8, !tbaa !111
  %i.vf = getelementptr inbounds nuw i8, ptr %.18705.i, i64 8
  %i.vg = getelementptr inbounds nuw i8, ptr %.4470704.i, i64 16 ; 2 uses
  %i.vh = load <4 x float>, ptr %i.vg, align 16, !tbaa !90
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vg, i64 %.idx491.i
  %i.vj = load <4 x float>, ptr %i.vi, align 16, !tbaa !90
  %i.vk = shufflevector <4 x float> %i.vh, <4 x float> %i.vj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.vl = fmul fast <8 x float> %i.vk, %i.qm      ; 2 uses
  %i.vm = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.vl)
  %i.vn = fadd fast <8 x float> %i.vm, %i.vl
  %i.vo = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.vn)
  %i.vp = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.vo, <16 x i8> zeroinitializer, i8 -1)
  %i.vq = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.vp, <16 x i8> splat (i8 -127))
  %i.vr = bitcast <16 x i8> %i.vq to <2 x i64>
  %i.vs = extractelement <2 x i64> %i.vr, i64 0
  store i64 %i.vs, ptr %i.vf, align 8, !tbaa !111
  %i.vt = getelementptr inbounds nuw i8, ptr %.18705.i, i64 16 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %.4470704.i, i64 32
  %i.vv = add nuw nsw i32 %.1479703.i, 2          ; 2 uses
  %exitcond858.not.i.1 = icmp eq i32 %i.vv, %5
  br i1 %exitcond858.not.i.1, label %.loopexit608.i, label %.lr.ph706.i, !llvm.loop !1148

.preheader609.i:                                  ; preds = %bb.k
  br i1 %i.jl, label %.lr.ph712.i, label %.preheader607.i

.preheader607.i:                                  ; preds = %.lr.ph712.i, %.preheader609.i
  %.0480.lcssa.i = phi i32 [ 0, %.preheader609.i ], [ %i.jq, %.lr.ph712.i ] ; 4 uses
  %.6472.lcssa.i = phi ptr [ %i.qi, %.preheader609.i ], [ %i.xh, %.lr.ph712.i ] ; 3 uses
  %.20.lcssa.i = phi ptr [ %.13722.i, %.preheader609.i ], [ %i.xg, %.lr.ph712.i ] ; 4 uses
  %i.vw = icmp slt i32 %.0480.lcssa.i, %5
  br i1 %i.vw, label %.lr.ph719.i.preheader, label %.loopexit608.i

.lr.ph719.i.preheader:                            ; preds = %.preheader607.i
  %.neg330 = or disjoint i32 %.0480.lcssa.i, 1
  br i1 %lcmp.mod317.not, label %.lr.ph719.i.prol.loopexit, label %.lr.ph719.i.prol

.lr.ph719.i.prol:                                 ; preds = %.lr.ph719.i.preheader
  %i.vx = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %.6472.lcssa.i, <8 x i32> %i.jp, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.vy = fmul fast <8 x float> %i.vx, %i.qm      ; 2 uses
  %i.vz = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.vy)
  %i.wa = fadd fast <8 x float> %i.vz, %i.vy
  %i.wb = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.wa)
  %i.wc = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.wb, <16 x i8> zeroinitializer, i8 -1)
  %i.wd = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.wc, <16 x i8> splat (i8 -127))
  %i.we = bitcast <16 x i8> %i.wd to <2 x i64>
  %i.wf = extractelement <2 x i64> %i.we, i64 0
  store i64 %i.wf, ptr %.20.lcssa.i, align 8, !tbaa !111
  %i.wg = getelementptr inbounds nuw i8, ptr %.20.lcssa.i, i64 8 ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %.6472.lcssa.i, i64 4
  %i.wi = or disjoint i32 %.0480.lcssa.i, 1
  br label %.lr.ph719.i.prol.loopexit

.lr.ph719.i.prol.loopexit:                        ; preds = %.lr.ph719.i.prol, %.lr.ph719.i.preheader
  %.lcssa290.unr = phi ptr [ poison, %.lr.ph719.i.preheader ], [ %i.wg, %.lr.ph719.i.prol ]
  %.21718.i.unr = phi ptr [ %.20.lcssa.i, %.lr.ph719.i.preheader ], [ %i.wg, %.lr.ph719.i.prol ]
  %.7473717.i.unr = phi ptr [ %.6472.lcssa.i, %.lr.ph719.i.preheader ], [ %i.wh, %.lr.ph719.i.prol ]
  %.1481716.i.unr = phi i32 [ %.0480.lcssa.i, %.lr.ph719.i.preheader ], [ %i.wi, %.lr.ph719.i.prol ]
  %i.wj = icmp eq i32 %5, %.neg330
  br i1 %i.wj, label %.loopexit608.i, label %.lr.ph719.i

.lr.ph712.i:                                      ; preds = %.preheader609.i, %.lr.ph712.i
  %.20711.i = phi ptr [ %i.xg, %.lr.ph712.i ], [ %.13722.i, %.preheader609.i ] ; 2 uses
  %.6472710.i = phi ptr [ %i.xh, %.lr.ph712.i ], [ %i.qi, %.preheader609.i ] ; 3 uses
  %.0480709.i = phi i32 [ %i.xi, %.lr.ph712.i ], [ 0, %.preheader609.i ]
  %i.wk = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %.6472710.i, <8 x i32> %i.jp, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.wl = getelementptr inbounds nuw i8, ptr %.6472710.i, i64 4
  %i.wm = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.wl, <8 x i32> %i.jp, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.wn = fmul fast <8 x float> %i.wk, %i.qm      ; 2 uses
  %i.wo = fmul fast <8 x float> %i.wm, %i.qm      ; 2 uses
  %i.wp = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.wn)
  %i.wq = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.wo)
  %i.wr = fadd fast <8 x float> %i.wp, %i.wn
  %i.ws = fadd fast <8 x float> %i.wq, %i.wo
  %i.wt = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.wr)
  %i.wu = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ws)
  %i.wv = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.wt, <8 x i32> %i.wu)
  %i.ww = bitcast <16 x i16> %i.wv to <4 x i64>
  %i.wx = shufflevector <4 x i64> %i.ww, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.wy = bitcast <4 x i64> %i.wx to <16 x i16>
  %i.wz = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.wy, <16 x i16> splat (i16 -127))
  %i.xa = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.wz, <16 x i16> splat (i16 127))
  %i.xb = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.xa, <16 x i16> poison)
  %i.xc = bitcast <32 x i8> %i.xb to <8 x i32>
  %i.xd = shufflevector <8 x i32> %i.xc, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.xe = bitcast <4 x i32> %i.xd to <16 x i8>
  %i.xf = shufflevector <16 x i8> %i.xe, <16 x i8> poison, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %i.xf, ptr %.20711.i, align 16, !tbaa !90
  %i.xg = getelementptr inbounds nuw i8, ptr %.20711.i, i64 16 ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %.6472710.i, i64 8 ; 2 uses
  %i.xi = add nuw nsw i32 %.0480709.i, 2          ; 2 uses
  %i.xj = or disjoint i32 %i.xi, 1
  %i.xk = icmp slt i32 %i.xj, %5
  br i1 %i.xk, label %.lr.ph712.i, label %.preheader607.i, !llvm.loop !1149

.lr.ph719.i:                                      ; preds = %.lr.ph719.i.prol.loopexit, %.lr.ph719.i
  %.21718.i = phi ptr [ %i.yf, %.lr.ph719.i ], [ %.21718.i.unr, %.lr.ph719.i.prol.loopexit ] ; 3 uses
  %.7473717.i = phi ptr [ %i.yg, %.lr.ph719.i ], [ %.7473717.i.unr, %.lr.ph719.i.prol.loopexit ] ; 3 uses
  %.1481716.i = phi i32 [ %i.yh, %.lr.ph719.i ], [ %.1481716.i.unr, %.lr.ph719.i.prol.loopexit ]
  %i.xl = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %.7473717.i, <8 x i32> %i.jp, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.xm = fmul fast <8 x float> %i.xl, %i.qm      ; 2 uses
  %i.xn = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.xm)
  %i.xo = fadd fast <8 x float> %i.xn, %i.xm
  %i.xp = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.xo)
  %i.xq = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.xp, <16 x i8> zeroinitializer, i8 -1)
  %i.xr = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.xq, <16 x i8> splat (i8 -127))
  %i.xs = bitcast <16 x i8> %i.xr to <2 x i64>
  %i.xt = extractelement <2 x i64> %i.xs, i64 0
  store i64 %i.xt, ptr %.21718.i, align 8, !tbaa !111
  %i.xu = getelementptr inbounds nuw i8, ptr %.21718.i, i64 8
  %i.xv = getelementptr inbounds nuw i8, ptr %.7473717.i, i64 4
  %i.xw = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.xv, <8 x i32> %i.jp, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.xx = fmul fast <8 x float> %i.xw, %i.qm      ; 2 uses
  %i.xy = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.xx)
  %i.xz = fadd fast <8 x float> %i.xy, %i.xx
  %i.ya = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.xz)
  %i.yb = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.ya, <16 x i8> zeroinitializer, i8 -1)
  %i.yc = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.yb, <16 x i8> splat (i8 -127))
  %i.yd = bitcast <16 x i8> %i.yc to <2 x i64>
  %i.ye = extractelement <2 x i64> %i.yd, i64 0
  store i64 %i.ye, ptr %i.xu, align 8, !tbaa !111
  %i.yf = getelementptr inbounds nuw i8, ptr %.21718.i, i64 16 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %.7473717.i, i64 8
  %i.yh = add nuw nsw i32 %.1481716.i, 2          ; 2 uses
  %exitcond859.not.i.1 = icmp eq i32 %i.yh, %5
  br i1 %exitcond859.not.i.1, label %.loopexit608.i, label %.lr.ph719.i, !llvm.loop !1150

.loopexit608.i:                                   ; preds = %.lr.ph719.i.prol.loopexit, %.lr.ph719.i, %.lr.ph706.i.prol.loopexit, %.lr.ph706.i, %.lr.ph693.i.prol.loopexit, %.lr.ph693.i, %.preheader607.i, %.preheader610.i, %.preheader613.i, %bb.k
  %.22.i = phi ptr [ %.13722.i, %bb.k ], [ %.20.lcssa.i, %.preheader607.i ], [ %i.sw, %.lr.ph693.i ], [ %i.vt, %.lr.ph706.i ], [ %.17.lcssa.i, %.preheader610.i ], [ %.14.lcssa.i, %.preheader613.i ], [ %.lcssa296.unr, %.lr.ph693.i.prol.loopexit ], [ %.lcssa293.unr, %.lr.ph706.i.prol.loopexit ], [ %.lcssa290.unr, %.lr.ph719.i.prol.loopexit ], [ %i.yf, %.lr.ph719.i ] ; 2 uses
  %indvars.iv.next861.i = add nuw nsw i64 %indvars.iv860.i, 8 ; 3 uses
  %i.yi = icmp slt i64 %indvars.iv.next861.i, %invariant.op.i
  br i1 %i.yi, label %bb.k, label %.preheader606.loopexit.i, !llvm.loop !1151

.preheader599.loopexit.i:                         ; preds = %.loopexit601.i.us54, %.loopexit601.i.us, %.loopexit601.i.preheader
  %.us-phi48 = phi ptr [ %.13.lcssa.i, %.loopexit601.i.preheader ], [ %.29.i.us, %.loopexit601.i.us ], [ %.29.i.us55, %.loopexit601.i.us54 ]
  %.us-phi49 = phi i64 [ %i.kp, %.loopexit601.i.preheader ], [ %indvars.iv.next866.i.us, %.loopexit601.i.us ], [ %indvars.iv.next866.i.us56, %.loopexit601.i.us54 ]
  %i.yj = trunc nsw i64 %.us-phi49 to i32
  br label %.preheader599.i

.preheader599.i:                                  ; preds = %.preheader599.loopexit.i, %.preheader606.i
  %.2438.lcssa.i = phi i32 [ %.1437.lcssa.i, %.preheader606.i ], [ %i.yj, %.preheader599.loopexit.i ] ; 3 uses
  %.23.lcssa.i = phi ptr [ %.13.lcssa.i, %.preheader606.i ], [ %.us-phi48, %.preheader599.loopexit.i ] ; 2 uses
  %i.yk = or disjoint i32 %.2438.lcssa.i, 1
  %i.yl = icmp slt i32 %i.yk, %3
  br i1 %i.yl, label %.lr.ph777.i, label %.preheader596.i

.lr.ph777.i:                                      ; preds = %.preheader599.i
  %i.ym = sext i32 %4 to i64
  %i.yn = icmp sgt i32 %5, 3
  %i.yo = and i32 %5, -4
  %i.yp = sext i32 %.2438.lcssa.i to i64
  %i.yq = sext i32 %3 to i64
  %i.yr = sext i32 %2 to i64
  %invariant.op943.i = add nsw i64 %i.yq, -1
  %i.ys = shl nuw nsw i64 %i.n, 2                 ; 2 uses
  br label %bb.l

.preheader596.loopexit.i:                         ; preds = %._crit_edge.i
  %i.yt = trunc nsw i64 %indvars.iv.next870.i to i32
  br label %.preheader596.i

.preheader596.i:                                  ; preds = %.preheader596.loopexit.i, %.preheader599.i
  %.3439.lcssa.i = phi i32 [ %.2438.lcssa.i, %.preheader599.i ], [ %i.yt, %.preheader596.loopexit.i ] ; 2 uses
  %.30.lcssa.i = phi ptr [ %.23.lcssa.i, %.preheader599.i ], [ %.33.lcssa.i, %.preheader596.loopexit.i ]
  %i.yu = icmp slt i32 %.3439.lcssa.i, %3
  br i1 %i.yu, label %.lr.ph796.i, label %_ZN4ncnnL24pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

.lr.ph796.i:                                      ; preds = %.preheader596.i
  %i.yv = sext i32 %4 to i64
  %i.yw = icmp sgt i32 %5, 3
  %i.yx = and i32 %5, -4
  %i.yy = sext i32 %.3439.lcssa.i to i64
  %i.yz = sext i32 %2 to i64
  %wide.trip.count.i = sext i32 %3 to i64
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i, %.lr.ph777.i
  %indvars.iv869.i = phi i64 [ %i.yp, %.lr.ph777.i ], [ %indvars.iv.next870.i, %._crit_edge.i ] ; 2 uses
  %.30776.i = phi ptr [ %.23.lcssa.i, %.lr.ph777.i ], [ %.33.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.za = load ptr, ptr %0, align 8, !tbaa !25
  %i.zb = add nsw i64 %indvars.iv869.i, %i.yr     ; 2 uses
  %i.zc = mul i64 %i.zb, %i.n
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %i.za, i64 %i.zc
  %i.ze = getelementptr inbounds [4 x i8], ptr %i.zd, i64 %i.ym ; 2 uses
  %i.zf = load ptr, ptr %6, align 8, !tbaa !25
  %i.zg = getelementptr [4 x i8], ptr %i.zf, i64 %i.zb ; 2 uses
  %i.zh = load float, ptr %i.zg, align 4, !tbaa !69 ; 4 uses
  %i.zi = getelementptr i8, ptr %i.zg, i64 4
  %i.zj = load float, ptr %i.zi, align 4, !tbaa !69 ; 4 uses
  %i.zk = insertelement <4 x float> poison, float %i.zh, i64 0 ; 2 uses
  %i.zl = shufflevector <4 x float> %i.zk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zm = insertelement <4 x float> poison, float %i.zj, i64 0 ; 2 uses
  %i.zn = shufflevector <4 x float> %i.zm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zo = shufflevector <4 x float> %i.zk, <4 x float> %i.zm, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  br i1 %i.yn, label %.lr.ph759.i, label %.preheader598.i

.preheader598.i:                                  ; preds = %.lr.ph759.i, %bb.l
  %.0457.lcssa.i = phi ptr [ %i.ze, %bb.l ], [ %i.aal, %.lr.ph759.i ] ; 2 uses
  %.0454.lcssa.i = phi i32 [ 0, %bb.l ], [ %i.yo, %.lr.ph759.i ] ; 3 uses
  %.31.lcssa.i = phi ptr [ %.30776.i, %bb.l ], [ %i.aak, %.lr.ph759.i ] ; 2 uses
  %i.zp = or disjoint i32 %.0454.lcssa.i, 1
  %i.zq = icmp slt i32 %i.zp, %5
  br i1 %i.zq, label %.lr.ph766.i, label %.preheader597.i

.lr.ph759.i:                                      ; preds = %bb.l, %.lr.ph759.i
  %.31758.i = phi ptr [ %i.aak, %.lr.ph759.i ], [ %.30776.i, %bb.l ] ; 2 uses
  %.0454757.i = phi i32 [ %i.aam, %.lr.ph759.i ], [ 0, %bb.l ]
  %.0457756.i = phi ptr [ %i.aal, %.lr.ph759.i ], [ %i.ze, %bb.l ] ; 3 uses
  %i.zr = load <4 x float>, ptr %.0457756.i, align 1, !tbaa !90
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %.0457756.i, i64 %i.n
  %i.zt = load <4 x float>, ptr %i.zs, align 1, !tbaa !90
  %i.zu = fmul fast <4 x float> %i.zr, %i.zl      ; 2 uses
  %i.zv = fmul fast <4 x float> %i.zt, %i.zn      ; 2 uses
  %i.zw = shufflevector <4 x float> %i.zu, <4 x float> %i.zv, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.zx = shufflevector <4 x float> %i.zu, <4 x float> %i.zv, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.zy = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.zw)
  %i.zz = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.zx)
  %i.aaa = fadd fast <4 x float> %i.zy, %i.zw
  %i.aab = fadd fast <4 x float> %i.zz, %i.zx
  %i.aac = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aaa)
  %i.aad = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aab)
  %i.aae = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.aac, <4 x i32> %i.aad)
  %i.aaf = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aae, <8 x i16> splat (i16 -127))
  %i.aag = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.aaf, <8 x i16> splat (i16 127))
  %i.aah = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.aag, <8 x i16> poison)
  %i.aai = bitcast <16 x i8> %i.aah to <2 x i64>
  %i.aaj = extractelement <2 x i64> %i.aai, i64 0
  store i64 %i.aaj, ptr %.31758.i, align 8, !tbaa !111
  %i.aak = getelementptr inbounds nuw i8, ptr %.31758.i, i64 8 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %.0457756.i, i64 16 ; 2 uses
  %i.aam = add nuw nsw i32 %.0454757.i, 4         ; 2 uses
  %i.aan = or disjoint i32 %i.aam, 3
  %i.aao = icmp slt i32 %i.aan, %5
  br i1 %i.aao, label %.lr.ph759.i, label %.preheader598.i, !llvm.loop !1152

.preheader597.i:                                  ; preds = %.lr.ph766.i, %.preheader598.i
  %.1458.lcssa.i = phi ptr [ %.0457.lcssa.i, %.preheader598.i ], [ %i.acz, %.lr.ph766.i ] ; 10 uses
  %.1455.lcssa.i = phi i32 [ %.0454.lcssa.i, %.preheader598.i ], [ %i.ada, %.lr.ph766.i ] ; 7 uses
  %.32.lcssa.i = phi ptr [ %.31.lcssa.i, %.preheader598.i ], [ %i.acy, %.lr.ph766.i ] ; 10 uses
  %i.aap = icmp slt i32 %.1455.lcssa.i, %5
  br i1 %i.aap, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %.preheader597.i
  %i.aaq = xor i32 %.1455.lcssa.i, -1
  %i.aar = add i32 %5, %i.aaq                     ; 3 uses
  %i.aas = zext i32 %i.aar to i64
  %i.aat = add nuw nsw i64 %i.aas, 1              ; 5 uses
  %min.iters.check = icmp ult i32 %i.aar, 3
  br i1 %min.iters.check, label %.lr.ph773.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.32.lcssa.i, i64 2
  %i.aau = xor i32 %.1455.lcssa.i, -1
  %i.aav = add i32 %5, %i.aau
  %i.aaw = zext i32 %i.aav to i64                 ; 2 uses
  %i.aax = shl nuw nsw i64 %i.aaw, 1
  %scevgep191 = getelementptr i8, ptr %scevgep, i64 %i.aax ; 2 uses
  %scevgep192 = getelementptr i8, ptr %.1458.lcssa.i, i64 %i.ys
  %i.aay = getelementptr i8, ptr %.1458.lcssa.i, i64 %i.ys
  %scevgep193 = getelementptr i8, ptr %i.aay, i64 4
  %i.aaz = shl nuw nsw i64 %i.aaw, 2              ; 2 uses
  %scevgep194 = getelementptr i8, ptr %scevgep193, i64 %i.aaz
  %scevgep195 = getelementptr i8, ptr %.1458.lcssa.i, i64 4
  %scevgep196 = getelementptr i8, ptr %scevgep195, i64 %i.aaz
  %bound0 = icmp ult ptr %.32.lcssa.i, %scevgep194
  %bound1 = icmp ult ptr %scevgep192, %scevgep191
  %found.conflict = and i1 %bound0, %bound1
  %bound0197 = icmp ult ptr %.32.lcssa.i, %scevgep196
  %bound1198 = icmp ult ptr %.1458.lcssa.i, %scevgep191
  %found.conflict199 = and i1 %bound0197, %bound1198
  %conflict.rdx = or i1 %found.conflict, %found.conflict199
  br i1 %conflict.rdx, label %.lr.ph773.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check200 = icmp ult i32 %i.aar, 15
  br i1 %min.iters.check200, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aba = and i64 %i.aat, 12
  %n.vec = and i64 %i.aat, 8589934576             ; 6 uses
  %i.abb = shl nuw nsw i64 %n.vec, 1
  %i.abc = getelementptr i8, ptr %.32.lcssa.i, i64 %i.abb ; 2 uses
  %i.abd = trunc i64 %n.vec to i32
  %i.abe = add i32 %.1455.lcssa.i, %i.abd
  %i.abf = shl nuw nsw i64 %n.vec, 2
  %i.abg = getelementptr i8, ptr %.1458.lcssa.i, i64 %i.abf
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.zh, i64 0
  %broadcast.splatinsert201 = insertelement <16 x float> poison, float %i.zj, i64 0
  %i.abh = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> %broadcast.splatinsert201, <32 x i32> <i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.abi = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.32.lcssa.i, i64 %i.abi
  %i.abj = shl i64 %index, 2
  %next.gep203 = getelementptr i8, ptr %.1458.lcssa.i, i64 %i.abj ; 2 uses
  %wide.load = load <16 x float>, ptr %next.gep203, align 4, !tbaa !69, !alias.scope !1170
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %next.gep203, i64 %i.n
  %wide.load204 = load <16 x float>, ptr %i.abk, align 4, !tbaa !69, !alias.scope !1171
  %i.abl = shufflevector <16 x float> %wide.load, <16 x float> %wide.load204, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.abm = fmul fast <32 x float> %i.abl, %i.abh
  %i.abn = tail call fast <32 x float> @llvm.round.v32f32(<32 x float> %i.abm)
  %i.abo = fptosi <32 x float> %i.abn to <32 x i32>
  %i.abp = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.abo, <32 x i32> splat (i32 -127))
  %i.abq = tail call <32 x i32> @llvm.smin.v32i32(<32 x i32> %i.abp, <32 x i32> splat (i32 127))
  %interleaved.vec = trunc nsw <32 x i32> %i.abq to <32 x i8>
  store <32 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !90, !alias.scope !1172, !noalias !1173
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.abr = icmp eq i64 %index.next, %n.vec
  br i1 %i.abr, label %middle.block, label %vector.body, !llvm.loop !1157

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aat, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aba, 0
  br i1 %min.epilog.iters.check, label %.lr.ph773.i.preheader, label %vec.epilog.ph, !prof !92

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec207 = and i64 %i.aat, 8589934588          ; 5 uses
  %i.abs = shl nuw nsw i64 %n.vec207, 1
  %i.abt = getelementptr i8, ptr %.32.lcssa.i, i64 %i.abs ; 2 uses
  %i.abu = trunc i64 %n.vec207 to i32
  %i.abv = add i32 %.1455.lcssa.i, %i.abu
  %i.abw = shl nuw nsw i64 %n.vec207, 2
  %i.abx = getelementptr i8, ptr %.1458.lcssa.i, i64 %i.abw
  %broadcast.splatinsert208 = insertelement <4 x float> poison, float %i.zh, i64 0
  %broadcast.splatinsert210 = insertelement <4 x float> poison, float %i.zj, i64 0
  %i.aby = shufflevector <4 x float> %broadcast.splatinsert208, <4 x float> %broadcast.splatinsert210, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index212 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next218, %vec.epilog.vector.body ] ; 3 uses
  %i.abz = shl i64 %index212, 1
end_hunk_5
