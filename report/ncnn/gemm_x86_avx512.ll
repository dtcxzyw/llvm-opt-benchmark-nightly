Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avx512?download=true
inline.NumInlined: 238
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 209
loop-unroll.NumUnrolled: 213
begin_hunk_0_@_ZN4ncnn15Gemm_x86_avx51220create_pipeline_int8ERKNS_6OptionE.omp_outlined.9:bb.a
  %i.er = or disjoint i64 %indvars.iv.next.i, 15
  %i.es = icmp samesign ult i64 %i.er, %i.bu
  br i1 %i.es, label %bb.j, label %.preheader187.loopexit.i, !llvm.loop !743

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
  br i1 %epil.iter390.cmp.not, label %.preheader186.i, label %.lr.ph209.i.epil, !llvm.loop !744

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
  br i1 %prol.iter399.cmp.not, label %.lr.ph216.i.prol.loopexit, label %.lr.ph216.i.prol, !llvm.loop !745

.lr.ph216.i.prol.loopexit:                        ; preds = %.lr.ph216.i.prol, %.lr.ph216.i.preheader
  %.lcssa360.unr.a = phi ptr [ poison, %.lr.ph216.i.preheader ], [ %i.gc, %.lr.ph216.i.prol ]
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
  br i1 %niter396.ncmp.3.not, label %.preheader186.i.loopexit.unr-lcssa, label %.lr.ph209.i, !llvm.loop !746

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
  br i1 %exitcond297.not.i.3, label %._crit_edge217.i, label %.lr.ph216.i, !llvm.loop !747

._crit_edge217.i:                                 ; preds = %.lr.ph216.i.prol.loopexit, %.lr.ph216.i, %.preheader186.i
  %.5.lcssa.i = phi ptr [ %.4.lcssa.i, %.preheader186.i ], [ %.lcssa360.unr.a, %.lr.ph216.i.prol.loopexit ], [ %i.hx, %.lr.ph216.i ] ; 2 uses
  %indvars.iv.next299.i = add nuw nsw i64 %indvars.iv298.i, 8 ; 3 uses
  %i.ia = icmp slt i64 %indvars.iv.next299.i, %invariant.op.i
  br i1 %i.ia, label %bb.k, label %.preheader185.loopexit.i, !llvm.loop !748

.preheader183.loopexit.i:                         ; preds = %._crit_edge236.i
  %i.ib = trunc nuw nsw i64 %indvars.iv.next303.i to i32
  br label %.preheader183.i

.preheader183.i:                                  ; preds = %.preheader183.loopexit.i, %.preheader185.i
  %.2158.lcssa.i = phi i32 [ %.1157.lcssa.i, %.preheader185.i ], [ %i.ib, %.preheader183.loopexit.i ] ; 3 uses
  %.6.lcssa.i = phi ptr [ %.3.lcssa.i, %.preheader185.i ], [ %.8.lcssa.i, %.preheader183.loopexit.i ] ; 2 uses
  %i.ic = or disjoint i32 %.2158.lcssa.i, 1
  %i.id = icmp slt i32 %i.ic, %.sroa.speculated86
  br i1 %i.id, label %.lr.ph262.i, label %.preheader.i

.lr.ph262.i:                                      ; preds = %.preheader183.i
  %i.ie = sext i32 %.0118 to i64                  ; 3 uses
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
  br i1 %epil.iter401.cmp.not, label %.preheader184.i, label %.lr.ph228.i.epil, !llvm.loop !749

.preheader184.i:                                  ; preds = %.preheader184.i.loopexit.unr-lcssa, %.lr.ph228.i.epil, %bb.l
  %.0163.lcssa.i = phi ptr [ %i.jh, %bb.l ], [ %i.la, %.preheader184.i.loopexit.unr-lcssa ], [ %i.jq, %.lr.ph228.i.epil ] ; 2 uses
  %.0161.lcssa.i = phi i32 [ 0, %bb.l ], [ %i.ey, %.lr.ph228.i.epil ], [ %i.ey, %.preheader184.i.loopexit.unr-lcssa ] ; 5 uses
  %.7.lcssa.i = phi ptr [ %.6239.i, %bb.l ], [ %i.kz, %.preheader184.i.loopexit.unr-lcssa ], [ %i.jp, %.lr.ph228.i.epil ] ; 3 uses
  %i.jr = icmp slt i32 %.0161.lcssa.i, %.sroa.speculated
  br i1 %i.jr, label %.lr.ph235.i.preheader, label %._crit_edge236.i

.lr.ph235.i.preheader:                            ; preds = %.preheader184.i
  %i.js = sub i32 %.sroa.speculated, %.0161.lcssa.i
  %xtraiter408.a = and i32 %i.js, 3               ; 2 uses
  %lcmp.mod409.not.a = icmp eq i32 %xtraiter408.a, 0
  br i1 %lcmp.mod409.not.a, label %.lr.ph235.i.prol.loopexit, label %.lr.ph235.i.prol

.lr.ph235.i.prol:                                 ; preds = %.lr.ph235.i.preheader, %.lr.ph235.i.prol
  %.8234.i.prol = phi ptr [ %i.jy, %.lr.ph235.i.prol ], [ %.7.lcssa.i, %.lr.ph235.i.preheader ] ; 2 uses
  %.1162233.i.prol = phi i32 [ %i.ka, %.lr.ph235.i.prol ], [ %.0161.lcssa.i, %.lr.ph235.i.preheader ]
  %.1164232.i.prol = phi ptr [ %i.jz, %.lr.ph235.i.prol ], [ %.0163.lcssa.i, %.lr.ph235.i.preheader ] ; 2 uses
  %prol.iter410.a = phi i32 [ %prol.iter410.next.a, %.lr.ph235.i.prol ], [ 0, %.lr.ph235.i.preheader ]
  %i.jt = call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.1164232.i.prol, <4 x i32> %i.jk, <4 x i32> splat (i32 -1), i8 1)
  %i.ju = shufflevector <4 x i32> %i.jt, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jv = trunc <16 x i32> %i.ju to <16 x i8>
  %i.jw = bitcast <16 x i8> %i.jv to <4 x float>
  %i.jx = extractelement <4 x float> %i.jw, i64 0
  store float %i.jx, ptr %.8234.i.prol, align 1, !tbaa !90
  %i.jy = getelementptr inbounds nuw i8, ptr %.8234.i.prol, i64 4 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.1164232.i.prol, i64 1 ; 2 uses
  %i.ka = add nuw nsw i32 %.1162233.i.prol, 1     ; 2 uses
  %prol.iter410.next.a = add i32 %prol.iter410.a, 1 ; 2 uses
  %prol.iter410.cmp.not.a = icmp eq i32 %prol.iter410.next.a, %xtraiter408.a
  br i1 %prol.iter410.cmp.not.a, label %.lr.ph235.i.prol.loopexit, label %.lr.ph235.i.prol, !llvm.loop !750

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
  br i1 %niter407.ncmp.3.not, label %.preheader184.i.loopexit.unr-lcssa, label %.lr.ph228.i, !llvm.loop !751

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
  br i1 %exitcond301.not.i.3, label %._crit_edge236.i, label %.lr.ph235.i, !llvm.loop !752

._crit_edge236.i:                                 ; preds = %.lr.ph235.i.prol.loopexit, %.lr.ph235.i, %.preheader184.i
  %.8.lcssa.i = phi ptr [ %.7.lcssa.i, %.preheader184.i ], [ %.lcssa363.unr, %.lr.ph235.i.prol.loopexit ], [ %i.mb, %.lr.ph235.i ] ; 2 uses
  %indvars.iv.next303.i = add nuw nsw i64 %indvars.iv302.i, 4 ; 3 uses
  %i.me = icmp slt i64 %indvars.iv.next303.i, %invariant.op332.i
  br i1 %i.me, label %bb.l, label %.preheader183.loopexit.i, !llvm.loop !753

.preheader.loopexit.i:                            ; preds = %._crit_edge258.i
  %i.mf = trunc nsw i64 %indvars.iv.next307.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader183.i
  %.3159.lcssa.i = phi i32 [ %.2158.lcssa.i, %.preheader183.i ], [ %i.mf, %.preheader.loopexit.i ] ; 2 uses
  %.9.lcssa.i = phi ptr [ %.6.lcssa.i, %.preheader183.i ], [ %.11.lcssa.i, %.preheader.loopexit.i ]
  %i.mg = icmp slt i32 %.3159.lcssa.i, %.sroa.speculated86
  br i1 %i.mg, label %.lr.ph274.i, label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph274.i:                                      ; preds = %.preheader.i
  %i.mh = sext i32 %.0118 to i64                  ; 2 uses
  %i.mi = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.mi, label %.lr.ph269.preheader.i, label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph269.preheader.i:                            ; preds = %.lr.ph274.i
  %i.mj = sext i32 %.3159.lcssa.i to i64
  %wide.trip.count.i = sext i32 %.sroa.speculated86 to i64
  %i.mk = zext nneg i32 %.sroa.speculated to i64  ; 5 uses
  %min.iters.check = icmp ult i32 %.sroa.speculated, 16
  %min.iters.check225 = icmp ult i32 %.sroa.speculated, 256
  %i.ml = and i64 %i.mk, 240
  %n.vec = and i64 %i.mk, 2147483392              ; 6 uses
  %i.mm = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.mk
  %min.epilog.iters.check = icmp eq i64 %i.ml, 0
  %n.vec232 = and i64 %i.mk, 2147483632           ; 5 uses
  %i.mn = trunc nuw nsw i64 %n.vec232 to i32
  %cmp.n238 = icmp eq i64 %n.vec232, %i.mk
  br label %iter.check

bb.m:                                             ; preds = %._crit_edge258.i, %.lr.ph262.i
  %indvars.iv306.i = phi i64 [ %i.ih, %.lr.ph262.i ], [ %indvars.iv.next307.i, %._crit_edge258.i ] ; 2 uses
  %.9261.i = phi ptr [ %.6.lcssa.i, %.lr.ph262.i ], [ %.11.lcssa.i, %._crit_edge258.i ] ; 10 uses
  %i.mo = add i64 %indvars.iv306.i, %i.aj         ; 2 uses
  %i.mp = load ptr, ptr %i.z, align 8, !tbaa !25  ; 3 uses
  %i.mq = load i32, ptr %i.aa, align 4, !tbaa !78
  %i.mr = sext i32 %i.mq to i64
  %i.ms = load i64, ptr %i.ab, align 8, !tbaa !64
  %i.mt = mul i64 %i.ms, %i.mr                    ; 2 uses
  %i.mu = mul i64 %i.mt, %i.mo                    ; 2 uses
  %i.mv = getelementptr i8, ptr %i.mp, i64 %i.mu
  %i.mw = getelementptr i8, ptr %i.mv, i64 %i.ie  ; 8 uses
  %i.mx = add nsw i64 %i.mo, 1
  %i.my = mul i64 %i.mt, %i.mx                    ; 2 uses
  %i.mz = getelementptr i8, ptr %i.mp, i64 %i.my
  %i.na = getelementptr i8, ptr %i.mz, i64 %i.ie  ; 8 uses
  br i1 %i.if, label %iter.check330, label %.preheader182.i

iter.check330:                                    ; preds = %bb.m
  br i1 %min.iters.check308, label %.lr.ph248.i.preheader, label %vector.memcheck291

vector.memcheck291:                               ; preds = %iter.check330
  %scevgep292 = getelementptr i8, ptr %.9261.i, i64 4
  %scevgep295.a = getelementptr i8, ptr %scevgep292, i64 %i.im ; 2 uses
  %scevgep296.a = getelementptr i8, ptr %i.mp, i64 2
  %scevgep297.a = getelementptr i8, ptr %scevgep296.a, i64 %i.in
  %scevgep298 = getelementptr i8, ptr %scevgep297.a, i64 %i.ie ; 2 uses
  %scevgep299 = getelementptr i8, ptr %scevgep298, i64 %i.my
  %scevgep300 = getelementptr i8, ptr %scevgep298, i64 %i.mu
  %bound0301.a = icmp ult ptr %.9261.i, %scevgep299
  %bound1302.a = icmp ult ptr %i.na, %scevgep295.a
  %found.conflict303.a = and i1 %bound0301.a, %bound1302.a
  %bound0304 = icmp ult ptr %.9261.i, %scevgep300
  %bound1305 = icmp ult ptr %i.mw, %scevgep295.a
  %found.conflict306 = and i1 %bound0304, %bound1305
  %conflict.rdx307 = or i1 %found.conflict303.a, %found.conflict306
  br i1 %conflict.rdx307, label %.lr.ph248.i.preheader, label %vector.main.loop.iter.check309

vector.main.loop.iter.check309:                   ; preds = %vector.memcheck291
  br i1 %min.iters.check310, label %vec.epilog.ph334, label %vector.ph311

vector.ph311:                                     ; preds = %vector.main.loop.iter.check309
  %i.nb = getelementptr i8, ptr %i.na, i64 %i.it  ; 2 uses
  %i.nc = getelementptr i8, ptr %i.mw, i64 %i.it  ; 2 uses
  %i.nd = getelementptr i8, ptr %.9261.i, i64 %i.iu ; 2 uses
  br label %vector.body313

vector.body313:                                   ; preds = %vector.ph311, %vector.body313
  %index314 = phi i64 [ 0, %vector.ph311 ], [ %index.next323, %vector.body313 ] ; 3 uses
  %i.ne = shl i64 %index314, 1                    ; 2 uses
  %next.gep315 = getelementptr i8, ptr %i.na, i64 %i.ne
  %next.gep316 = getelementptr i8, ptr %i.mw, i64 %i.ne
  %i.nf = shl i64 %index314, 2
  %next.gep317 = getelementptr i8, ptr %.9261.i, i64 %i.nf
  %wide.vec = load <64 x i8>, ptr %next.gep316, align 1, !tbaa !90, !alias.scope !796
  %wide.vec319 = load <64 x i8>, ptr %next.gep315, align 1, !tbaa !90, !alias.scope !797
  %interleaved.vec322 = shufflevector <64 x i8> %wide.vec, <64 x i8> %wide.vec319, <128 x i32> <i32 0, i32 1, i32 64, i32 65, i32 2, i32 3, i32 66, i32 67, i32 4, i32 5, i32 68, i32 69, i32 6, i32 7, i32 70, i32 71, i32 8, i32 9, i32 72, i32 73, i32 10, i32 11, i32 74, i32 75, i32 12, i32 13, i32 76, i32 77, i32 14, i32 15, i32 78, i32 79, i32 16, i32 17, i32 80, i32 81, i32 18, i32 19, i32 82, i32 83, i32 20, i32 21, i32 84, i32 85, i32 22, i32 23, i32 86, i32 87, i32 24, i32 25, i32 88, i32 89, i32 26, i32 27, i32 90, i32 91, i32 28, i32 29, i32 92, i32 93, i32 30, i32 31, i32 94, i32 95, i32 32, i32 33, i32 96, i32 97, i32 34, i32 35, i32 98, i32 99, i32 36, i32 37, i32 100, i32 101, i32 38, i32 39, i32 102, i32 103, i32 40, i32 41, i32 104, i32 105, i32 42, i32 43, i32 106, i32 107, i32 44, i32 45, i32 108, i32 109, i32 46, i32 47, i32 110, i32 111, i32 48, i32 49, i32 112, i32 113, i32 50, i32 51, i32 114, i32 115, i32 52, i32 53, i32 116, i32 117, i32 54, i32 55, i32 118, i32 119, i32 56, i32 57, i32 120, i32 121, i32 58, i32 59, i32 122, i32 123, i32 60, i32 61, i32 124, i32 125, i32 62, i32 63, i32 126, i32 127>
  store <128 x i8> %interleaved.vec322, ptr %next.gep317, align 1, !tbaa !90, !alias.scope !798, !noalias !799
  %index.next323 = add nuw i64 %index314, 32      ; 2 uses
  %i.ng = icmp eq i64 %index.next323, %n.vec312
  br i1 %i.ng, label %middle.block324, label %vector.body313, !llvm.loop !758

middle.block324:                                  ; preds = %vector.body313
  br i1 %cmp.n325, label %.preheader182.i, label %vec.epilog.iter.check332

vec.epilog.iter.check332:                         ; preds = %middle.block324
  br i1 %min.epilog.iters.check333, label %.lr.ph248.i.preheader, label %vec.epilog.ph334, !prof !104

vec.epilog.ph334:                                 ; preds = %vector.main.loop.iter.check309, %vec.epilog.iter.check332
  %vec.epilog.resume.val326 = phi i64 [ %n.vec312, %vec.epilog.iter.check332 ], [ 0, %vector.main.loop.iter.check309 ]
  %i.nh = getelementptr i8, ptr %i.na, i64 %i.ix  ; 2 uses
  %i.ni = getelementptr i8, ptr %i.mw, i64 %i.ix  ; 2 uses
  %i.nj = getelementptr i8, ptr %.9261.i, i64 %i.iy ; 2 uses
  br label %vec.epilog.vector.body336

vec.epilog.vector.body336:                        ; preds = %vec.epilog.vector.body336, %vec.epilog.ph334
  %index337 = phi i64 [ %vec.epilog.resume.val326, %vec.epilog.ph334 ], [ %index.next348, %vec.epilog.vector.body336 ] ; 3 uses
  %i.nk = shl i64 %index337, 1                    ; 2 uses
  %next.gep338 = getelementptr i8, ptr %i.na, i64 %i.nk
  %next.gep339 = getelementptr i8, ptr %i.mw, i64 %i.nk
  %i.nl = shl i64 %index337, 2
  %next.gep340 = getelementptr i8, ptr %.9261.i, i64 %i.nl
  %wide.vec341.a = load <16 x i8>, ptr %next.gep339, align 1, !tbaa !90, !alias.scope !796
  %wide.vec344 = load <16 x i8>, ptr %next.gep338, align 1, !tbaa !90, !alias.scope !797
  %interleaved.vec347 = shufflevector <16 x i8> %wide.vec341.a, <16 x i8> %wide.vec344, <32 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23, i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  store <32 x i8> %interleaved.vec347, ptr %next.gep340, align 1, !tbaa !90, !alias.scope !798, !noalias !799
  %index.next348 = add nuw i64 %index337, 8       ; 2 uses
  %i.nm = icmp eq i64 %index.next348, %n.vec335
  br i1 %i.nm, label %vec.epilog.middle.block349, label %vec.epilog.vector.body336, !llvm.loop !759

vec.epilog.middle.block349:                       ; preds = %vec.epilog.vector.body336
  br i1 %cmp.n350, label %.preheader182.i, label %.lr.ph248.i.preheader

.lr.ph248.i.preheader:                            ; preds = %iter.check330, %vector.memcheck291, %vec.epilog.iter.check332, %vec.epilog.middle.block349
  %.0149246.i.ph = phi i32 [ 0, %iter.check330 ], [ 0, %vector.memcheck291 ], [ %i.is, %vec.epilog.iter.check332 ], [ %i.iw, %vec.epilog.middle.block349 ]
  %.0150245.i.ph = phi ptr [ %i.na, %iter.check330 ], [ %i.na, %vector.memcheck291 ], [ %i.nb, %vec.epilog.iter.check332 ], [ %i.nh, %vec.epilog.middle.block349 ]
  %.0152244.i.ph = phi ptr [ %i.mw, %iter.check330 ], [ %i.mw, %vector.memcheck291 ], [ %i.nc, %vec.epilog.iter.check332 ], [ %i.ni, %vec.epilog.middle.block349 ]
  %.10243.i.ph = phi ptr [ %.9261.i, %iter.check330 ], [ %.9261.i, %vector.memcheck291 ], [ %i.nd, %vec.epilog.iter.check332 ], [ %i.nj, %vec.epilog.middle.block349 ]
  br label %.lr.ph248.i

.preheader182.i:                                  ; preds = %.lr.ph248.i, %middle.block324, %vec.epilog.middle.block349, %bb.m
  %.10.lcssa.i = phi ptr [ %.9261.i, %bb.m ], [ %i.nj, %vec.epilog.middle.block349 ], [ %i.nd, %middle.block324 ], [ %i.pg, %.lr.ph248.i ] ; 10 uses
  %.0152.lcssa.i = phi ptr [ %i.mw, %bb.m ], [ %i.ni, %vec.epilog.middle.block349 ], [ %i.nc, %middle.block324 ], [ %i.ph, %.lr.ph248.i ] ; 8 uses
  %.0150.lcssa.i = phi ptr [ %i.na, %bb.m ], [ %i.nh, %vec.epilog.middle.block349 ], [ %i.nb, %middle.block324 ], [ %i.pi, %.lr.ph248.i ] ; 8 uses
  %.0149.lcssa.i = phi i32 [ 0, %bb.m ], [ %i.ig, %vec.epilog.middle.block349 ], [ %i.ig, %middle.block324 ], [ %i.ig, %.lr.ph248.i ] ; 7 uses
  %i.nn = icmp slt i32 %.0149.lcssa.i, %.sroa.speculated
  br i1 %i.nn, label %iter.check270, label %._crit_edge258.i

iter.check270:                                    ; preds = %.preheader182.i
  %i.no = xor i32 %.0149.lcssa.i, -1
  %i.np = add i32 %.sroa.speculated, %i.no        ; 3 uses
  %i.nq = zext i32 %i.np to i64
  %i.nr = add nuw nsw i64 %i.nq, 1                ; 5 uses
  %min.iters.check251 = icmp ult i32 %i.np, 7
  br i1 %min.iters.check251, label %.lr.ph257.i.preheader, label %vector.memcheck242

vector.memcheck242:                               ; preds = %iter.check270
  %scevgep = getelementptr i8, ptr %.10.lcssa.i, i64 2
  %i.ns = xor i32 %.0149.lcssa.i, -1
  %i.nt = add i32 %.sroa.speculated, %i.ns
  %i.nu = zext i32 %i.nt to i64                   ; 3 uses
  %i.nv = shl nuw nsw i64 %i.nu, 1
  %scevgep243 = getelementptr i8, ptr %scevgep, i64 %i.nv ; 2 uses
  %scevgep244 = getelementptr i8, ptr %.0150.lcssa.i, i64 1
  %scevgep245 = getelementptr i8, ptr %scevgep244, i64 %i.nu
  %scevgep246 = getelementptr i8, ptr %.0152.lcssa.i, i64 1
  %scevgep247 = getelementptr i8, ptr %scevgep246, i64 %i.nu
  %bound0 = icmp ult ptr %.10.lcssa.i, %scevgep245
  %bound1 = icmp ult ptr %.0150.lcssa.i, %scevgep243
  %found.conflict = and i1 %bound0, %bound1
  %bound0248 = icmp ult ptr %.10.lcssa.i, %scevgep247
  %bound1249 = icmp ult ptr %.0152.lcssa.i, %scevgep243
  %found.conflict250 = and i1 %bound0248, %bound1249
  %conflict.rdx = or i1 %found.conflict, %found.conflict250
  br i1 %conflict.rdx, label %.lr.ph257.i.preheader, label %vector.main.loop.iter.check252

vector.main.loop.iter.check252:                   ; preds = %vector.memcheck242
  %min.iters.check253 = icmp ult i32 %i.np, 63
  br i1 %min.iters.check253, label %vec.epilog.ph274, label %vector.ph254

vector.ph254:                                     ; preds = %vector.main.loop.iter.check252
  %i.nw = and i64 %i.nr, 56
  %n.vec255 = and i64 %i.nr, 8589934528           ; 7 uses
  %i.nx = trunc i64 %n.vec255 to i32
  %i.ny = add i32 %.0149.lcssa.i, %i.nx
  %i.nz = getelementptr i8, ptr %.0150.lcssa.i, i64 %n.vec255
  %i.oa = getelementptr i8, ptr %.0152.lcssa.i, i64 %n.vec255
  %i.ob = shl nuw nsw i64 %n.vec255, 1
  %i.oc = getelementptr i8, ptr %.10.lcssa.i, i64 %i.ob ; 2 uses
  br label %vector.body256

vector.body256:                                   ; preds = %vector.ph254, %vector.body256
  %index257 = phi i64 [ 0, %vector.ph254 ], [ %index.next263, %vector.body256 ] ; 4 uses
  %next.gep258 = getelementptr i8, ptr %.0150.lcssa.i, i64 %index257
  %next.gep259 = getelementptr i8, ptr %.0152.lcssa.i, i64 %index257
  %i.od = shl i64 %index257, 1
  %next.gep260 = getelementptr i8, ptr %.10.lcssa.i, i64 %i.od
  %wide.load261 = load <64 x i8>, ptr %next.gep259, align 1, !tbaa !90, !alias.scope !800
  %wide.load262 = load <64 x i8>, ptr %next.gep258, align 1, !tbaa !90, !alias.scope !801
  %interleaved.vec = shufflevector <64 x i8> %wide.load261, <64 x i8> %wide.load262, <128 x i32> <i32 0, i32 64, i32 1, i32 65, i32 2, i32 66, i32 3, i32 67, i32 4, i32 68, i32 5, i32 69, i32 6, i32 70, i32 7, i32 71, i32 8, i32 72, i32 9, i32 73, i32 10, i32 74, i32 11, i32 75, i32 12, i32 76, i32 13, i32 77, i32 14, i32 78, i32 15, i32 79, i32 16, i32 80, i32 17, i32 81, i32 18, i32 82, i32 19, i32 83, i32 20, i32 84, i32 21, i32 85, i32 22, i32 86, i32 23, i32 87, i32 24, i32 88, i32 25, i32 89, i32 26, i32 90, i32 27, i32 91, i32 28, i32 92, i32 29, i32 93, i32 30, i32 94, i32 31, i32 95, i32 32, i32 96, i32 33, i32 97, i32 34, i32 98, i32 35, i32 99, i32 36, i32 100, i32 37, i32 101, i32 38, i32 102, i32 39, i32 103, i32 40, i32 104, i32 41, i32 105, i32 42, i32 106, i32 43, i32 107, i32 44, i32 108, i32 45, i32 109, i32 46, i32 110, i32 47, i32 111, i32 48, i32 112, i32 49, i32 113, i32 50, i32 114, i32 51, i32 115, i32 52, i32 116, i32 53, i32 117, i32 54, i32 118, i32 55, i32 119, i32 56, i32 120, i32 57, i32 121, i32 58, i32 122, i32 59, i32 123, i32 60, i32 124, i32 61, i32 125, i32 62, i32 126, i32 63, i32 127>
  store <128 x i8> %interleaved.vec, ptr %next.gep260, align 1, !tbaa !90, !alias.scope !802, !noalias !803
  %index.next263 = add nuw i64 %index257, 64      ; 2 uses
  %i.oe = icmp eq i64 %index.next263, %n.vec255
  br i1 %i.oe, label %middle.block264, label %vector.body256, !llvm.loop !764

middle.block264:                                  ; preds = %vector.body256
  %cmp.n265 = icmp eq i64 %i.nr, %n.vec255
  br i1 %cmp.n265, label %._crit_edge258.i, label %vec.epilog.iter.check272

vec.epilog.iter.check272:                         ; preds = %middle.block264
  %min.epilog.iters.check273 = icmp eq i64 %i.nw, 0
  br i1 %min.epilog.iters.check273, label %.lr.ph257.i.preheader, label %vec.epilog.ph274, !prof !73

vec.epilog.ph274:                                 ; preds = %vector.main.loop.iter.check252, %vec.epilog.iter.check272
  %vec.epilog.resume.val266 = phi i64 [ %n.vec255, %vec.epilog.iter.check272 ], [ 0, %vector.main.loop.iter.check252 ]
  %n.vec275 = and i64 %i.nr, 8589934584           ; 6 uses
  %i.of = trunc i64 %n.vec275 to i32
  %i.og = add i32 %.0149.lcssa.i, %i.of
  %i.oh = getelementptr i8, ptr %.0150.lcssa.i, i64 %n.vec275
  %i.oi = getelementptr i8, ptr %.0152.lcssa.i, i64 %n.vec275
  %i.oj = shl nuw nsw i64 %n.vec275, 1
  %i.ok = getelementptr i8, ptr %.10.lcssa.i, i64 %i.oj ; 2 uses
  br label %vec.epilog.vector.body276

vec.epilog.vector.body276:                        ; preds = %vec.epilog.vector.body276, %vec.epilog.ph274
  %index277 = phi i64 [ %vec.epilog.resume.val266, %vec.epilog.ph274 ], [ %index.next284, %vec.epilog.vector.body276 ] ; 4 uses
  %next.gep278 = getelementptr i8, ptr %.0150.lcssa.i, i64 %index277
  %next.gep279 = getelementptr i8, ptr %.0152.lcssa.i, i64 %index277
  %i.ol = shl i64 %index277, 1
  %next.gep280 = getelementptr i8, ptr %.10.lcssa.i, i64 %i.ol
  %wide.load281 = load <8 x i8>, ptr %next.gep279, align 1, !tbaa !90, !alias.scope !800
  %wide.load282 = load <8 x i8>, ptr %next.gep278, align 1, !tbaa !90, !alias.scope !801
  %interleaved.vec283 = shufflevector <8 x i8> %wide.load281, <8 x i8> %wide.load282, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec283, ptr %next.gep280, align 1, !tbaa !90, !alias.scope !802, !noalias !803
  %index.next284 = add nuw i64 %index277, 8       ; 2 uses
  %i.om = icmp eq i64 %index.next284, %n.vec275
  br i1 %i.om, label %vec.epilog.middle.block285, label %vec.epilog.vector.body276, !llvm.loop !765

vec.epilog.middle.block285:                       ; preds = %vec.epilog.vector.body276
  %cmp.n286 = icmp eq i64 %i.nr, %n.vec275
  br i1 %cmp.n286, label %._crit_edge258.i, label %.lr.ph257.i.preheader

.lr.ph257.i.preheader:                            ; preds = %iter.check270, %vector.memcheck242, %vec.epilog.iter.check272, %vec.epilog.middle.block285
  %.1256.i.ph = phi i32 [ %.0149.lcssa.i, %iter.check270 ], [ %.0149.lcssa.i, %vector.memcheck242 ], [ %i.ny, %vec.epilog.iter.check272 ], [ %i.og, %vec.epilog.middle.block285 ] ; 4 uses
  %.1151255.i.ph = phi ptr [ %.0150.lcssa.i, %iter.check270 ], [ %.0150.lcssa.i, %vector.memcheck242 ], [ %i.nz, %vec.epilog.iter.check272 ], [ %i.oh, %vec.epilog.middle.block285 ] ; 2 uses
  %.1153254.i.ph = phi ptr [ %.0152.lcssa.i, %iter.check270 ], [ %.0152.lcssa.i, %vector.memcheck242 ], [ %i.oa, %vec.epilog.iter.check272 ], [ %i.oi, %vec.epilog.middle.block285 ] ; 2 uses
  %.11253.i.ph = phi ptr [ %.10.lcssa.i, %iter.check270 ], [ %.10.lcssa.i, %vector.memcheck242 ], [ %i.oc, %vec.epilog.iter.check272 ], [ %i.ok, %vec.epilog.middle.block285 ] ; 2 uses
  %i.on = sub i32 %.sroa.speculated, %.1256.i.ph
  %xtraiter411.a = and i32 %i.on, 3               ; 2 uses
  %lcmp.mod412.not.a = icmp eq i32 %xtraiter411.a, 0
  br i1 %lcmp.mod412.not.a, label %.lr.ph257.i.prol.loopexit, label %.lr.ph257.i.prol

.lr.ph257.i.prol:                                 ; preds = %.lr.ph257.i.preheader, %.lr.ph257.i.prol
  %.1256.i.prol = phi i32 [ %i.ou, %.lr.ph257.i.prol ], [ %.1256.i.ph, %.lr.ph257.i.preheader ]
  %.1151255.i.prol = phi ptr [ %i.ot, %.lr.ph257.i.prol ], [ %.1151255.i.ph, %.lr.ph257.i.preheader ] ; 2 uses
  %.1153254.i.prol = phi ptr [ %i.os, %.lr.ph257.i.prol ], [ %.1153254.i.ph, %.lr.ph257.i.preheader ] ; 2 uses
  %.11253.i.prol = phi ptr [ %i.or, %.lr.ph257.i.prol ], [ %.11253.i.ph, %.lr.ph257.i.preheader ] ; 3 uses
  %prol.iter413.a = phi i32 [ %prol.iter413.next.a, %.lr.ph257.i.prol ], [ 0, %.lr.ph257.i.preheader ]
  %i.oo = load i8, ptr %.1153254.i.prol, align 1, !tbaa !90
  store i8 %i.oo, ptr %.11253.i.prol, align 1, !tbaa !90
  %i.op = load i8, ptr %.1151255.i.prol, align 1, !tbaa !90
  %i.oq = getelementptr inbounds nuw i8, ptr %.11253.i.prol, i64 1
  store i8 %i.op, ptr %i.oq, align 1, !tbaa !90
  %i.or = getelementptr inbounds nuw i8, ptr %.11253.i.prol, i64 2 ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.1153254.i.prol, i64 1 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.1151255.i.prol, i64 1 ; 2 uses
  %i.ou = add nuw nsw i32 %.1256.i.prol, 1        ; 2 uses
  %prol.iter413.next.a = add i32 %prol.iter413.a, 1 ; 2 uses
  %prol.iter413.cmp.not.a = icmp eq i32 %prol.iter413.next.a, %xtraiter411.a
  br i1 %prol.iter413.cmp.not.a, label %.lr.ph257.i.prol.loopexit, label %.lr.ph257.i.prol, !llvm.loop !766

.lr.ph257.i.prol.loopexit:                        ; preds = %.lr.ph257.i.prol, %.lr.ph257.i.preheader
  %.lcssa367.unr = phi ptr [ poison, %.lr.ph257.i.preheader ], [ %i.or, %.lr.ph257.i.prol ]
  %.1256.i.unr = phi i32 [ %.1256.i.ph, %.lr.ph257.i.preheader ], [ %i.ou, %.lr.ph257.i.prol ]
end_hunk_0
begin_hunk_1_@_ZN4ncnnL26transpose_pack_A_tile_bf16ERKNS_3MatERS0_iiii:bb.a
  %.6860 = phi ptr [ %i.abi, %.lr.ph862 ], [ %i.zs, %.lr.ph862.preheader ] ; 2 uses
  %.43859 = phi ptr [ %i.abh, %.lr.ph862 ], [ %.36865, %.lr.ph862.preheader ] ; 9 uses
  %niter1173 = phi i32 [ %niter1173.next.7, %.lr.ph862 ], [ 0, %.lr.ph862.preheader ]
  %i.aal = load i16, ptr %.6860, align 2, !tbaa !110
  store i16 %i.aal, ptr %.43859, align 2, !tbaa !110
  %i.aam = getelementptr inbounds nuw i8, ptr %.43859, i64 2
  %i.aan = getelementptr inbounds nuw [2 x i8], ptr %.6860, i64 %i.l ; 2 uses
  %i.aao = load i16, ptr %i.aan, align 2, !tbaa !110
  store i16 %i.aao, ptr %i.aam, align 2, !tbaa !110
  %i.aap = getelementptr inbounds nuw i8, ptr %.43859, i64 4
  %i.aaq = getelementptr inbounds nuw [2 x i8], ptr %i.aan, i64 %i.l ; 2 uses
  %i.aar = load i16, ptr %i.aaq, align 2, !tbaa !110
  store i16 %i.aar, ptr %i.aap, align 2, !tbaa !110
  %i.aas = getelementptr inbounds nuw i8, ptr %.43859, i64 6
  %i.aat = getelementptr inbounds nuw [2 x i8], ptr %i.aaq, i64 %i.l ; 2 uses
  %i.aau = load i16, ptr %i.aat, align 2, !tbaa !110
  store i16 %i.aau, ptr %i.aas, align 2, !tbaa !110
  %i.aav = getelementptr inbounds nuw i8, ptr %.43859, i64 8
  %i.aaw = getelementptr inbounds nuw [2 x i8], ptr %i.aat, i64 %i.l ; 2 uses
  %i.aax = load i16, ptr %i.aaw, align 2, !tbaa !110
  store i16 %i.aax, ptr %i.aav, align 2, !tbaa !110
  %i.aay = getelementptr inbounds nuw i8, ptr %.43859, i64 10
  %i.aaz = getelementptr inbounds nuw [2 x i8], ptr %i.aaw, i64 %i.l ; 2 uses
  %i.aba = load i16, ptr %i.aaz, align 2, !tbaa !110
  store i16 %i.aba, ptr %i.aay, align 2, !tbaa !110
  %i.abb = getelementptr inbounds nuw i8, ptr %.43859, i64 12
  %i.abc = getelementptr inbounds nuw [2 x i8], ptr %i.aaz, i64 %i.l ; 2 uses
  %i.abd = load i16, ptr %i.abc, align 2, !tbaa !110
  store i16 %i.abd, ptr %i.abb, align 2, !tbaa !110
  %i.abe = getelementptr inbounds nuw i8, ptr %.43859, i64 14
  %i.abf = getelementptr inbounds nuw [2 x i8], ptr %i.abc, i64 %i.l ; 2 uses
  %i.abg = load i16, ptr %i.abf, align 2, !tbaa !110
  store i16 %i.abg, ptr %i.abe, align 2, !tbaa !110
  %i.abh = getelementptr inbounds nuw i8, ptr %.43859, i64 16 ; 3 uses
  %i.abi = getelementptr inbounds nuw [2 x i8], ptr %i.abf, i64 %i.l ; 2 uses
  %niter1173.next.7 = add i32 %niter1173, 8       ; 2 uses
  %niter1173.ncmp.7 = icmp eq i32 %niter1173.next.7, %unroll_iter1172
  br i1 %niter1173.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph862, !llvm.loop !1296

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph862
  br i1 %lcmp.mod1169.not, label %.loopexit, label %.lr.ph862.epil.preheader

.lr.ph862.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph862.preheader
  %.6860.epil.init = phi ptr [ %i.zs, %.lr.ph862.preheader ], [ %i.abi, %.loopexit.loopexit.unr-lcssa ]
  %.43859.epil.init = phi ptr [ %.36865, %.lr.ph862.preheader ], [ %i.abh, %.loopexit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1171)
  br label %.lr.ph862.epil

.lr.ph862.epil:                                   ; preds = %.lr.ph862.epil, %.lr.ph862.epil.preheader
  %.6860.epil = phi ptr [ %i.abl, %.lr.ph862.epil ], [ %.6860.epil.init, %.lr.ph862.epil.preheader ] ; 2 uses
  %.43859.epil = phi ptr [ %i.abk, %.lr.ph862.epil ], [ %.43859.epil.init, %.lr.ph862.epil.preheader ] ; 2 uses
  %epil.iter1168 = phi i32 [ %epil.iter1168.next, %.lr.ph862.epil ], [ 0, %.lr.ph862.epil.preheader ]
  %i.abj = load i16, ptr %.6860.epil, align 2, !tbaa !110
  store i16 %i.abj, ptr %.43859.epil, align 2, !tbaa !110
  %i.abk = getelementptr inbounds nuw i8, ptr %.43859.epil, i64 2 ; 2 uses
  %i.abl = getelementptr inbounds nuw [2 x i8], ptr %.6860.epil, i64 %i.l
  %epil.iter1168.next = add i32 %epil.iter1168, 1 ; 2 uses
  %epil.iter1168.cmp.not = icmp eq i32 %epil.iter1168.next, %xtraiter1167
  br i1 %epil.iter1168.cmp.not, label %.loopexit, label %.lr.ph862.epil, !llvm.loop !1297

.loopexit:                                        ; preds = %.lr.ph844, %.lr.ph850, %.lr.ph856, %.loopexit.loopexit.unr-lcssa, %.lr.ph862.epil, %.loopexit689
  %.44 = phi ptr [ %.36865, %.loopexit689 ], [ %i.abk, %.lr.ph862.epil ], [ %i.aag, %.lr.ph856 ], [ %i.aaa, %.lr.ph850 ], [ %i.abh, %.loopexit.loopexit.unr-lcssa ], [ %i.zu, %.lr.ph844 ]
  %indvars.iv.next979 = add nuw nsw i64 %indvars.iv978, 1 ; 2 uses
  %exitcond981.not = icmp eq i64 %indvars.iv.next979, %wide.trip.count
  br i1 %exitcond981.not, label %.loopexit695, label %bb.k, !llvm.loop !1298

.loopexit695:                                     ; preds = %.loopexit, %.preheader694, %bb.b
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZN4ncnnL16pack_A_tile_bf16ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #20 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev()
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn27pack_A_tile_bf16_avx512bf16ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !65   ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !77
  %i.f = icmp eq i32 %i.e, 3
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i64, ptr %i.g, align 8, !tbaa !26
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.j = load i32, ptr %i.i, align 4, !tbaa !78
  %i.k = sext i32 %i.j to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = phi i64 [ %i.h, %bb.d ], [ %i.k, %bb.e ] ; 35 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.n = icmp sgt i32 %3, 15
  br i1 %i.n, label %.lr.ph312, label %.preheader279

.lr.ph312:                                        ; preds = %bb.f
  %i.o = mul i32 %i.c, %4
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = icmp ne i32 %i.c, 16
  %i.r = icmp slt i32 %5, 1                       ; 2 uses
  %.idx264 = shl i64 %i.l, 4                      ; 2 uses
  %i.s = icmp sgt i32 %5, 0                       ; 2 uses
  %.idx265 = shl i64 %i.l, 3
  %.idx267 = mul i64 %i.l, 24
  %i.t = icmp ne i32 %i.c, 1
  %i.u = trunc i64 %i.l to i32
  %i.v = insertelement <16 x i32> poison, i32 %i.u, i64 0
  %i.w = shufflevector <16 x i32> %i.v, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.x = mul <16 x i32> %i.w, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 5 uses
  %i.y = zext nneg i32 %3 to i64
  %i.z = sext i32 %2 to i64                       ; 3 uses
  %brmerge = or i1 %i.q, %i.r
  %brmerge415 = or i1 %i.t, %i.r
  %i.aa = add i32 %5, -1
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = shl nuw nsw i64 %i.ab, 5
  %i.ad = shl nsw i64 %i.z, 1                     ; 3 uses
  %i.ae = add nsw i64 %i.ad, 24
  %i.af = mul i64 %i.l, %i.ae
  %i.ag = shl nuw nsw i64 %i.ab, 3                ; 4 uses
  %i.ah = shl nsw i64 %i.p, 1                     ; 4 uses
  %i.ai = shl i64 %i.l, 5
  %i.aj = add nsw i64 %i.ad, 16
  %i.ak = mul i64 %i.l, %i.aj
  %i.al = add nsw i64 %i.ad, 8
  %i.am = mul i64 %i.l, %i.al
  %i.an = mul i64 %i.l, %i.z
  %i.ao = shl i64 %i.an, 1
  %i.ap = add i32 %5, -1                          ; 3 uses
  %xtraiter = and i32 %5, 7                       ; 3 uses
  %i.aq = icmp ult i32 %i.ap, 7
  %unroll_iter = and i32 %5, 2147483640
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod915 = icmp ne i32 %xtraiter, 0
  %i.ar = zext nneg i32 %5 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %5, 8
  %n.vec = and i64 %i.ar, 2147483640              ; 5 uses
  %i.as = shl nuw nsw i64 %n.vec, 5
  %i.at = shl nuw nsw i64 %n.vec, 3               ; 4 uses
  %i.au = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.ar
  %xtraiter918 = and i32 %5, 3                    ; 3 uses
  %i.av = icmp ult i32 %i.ap, 3
  %unroll_iter923 = and i32 %5, 2147483644
  %lcmp.mod920.not = icmp eq i32 %xtraiter918, 0
  %lcmp.mod922 = icmp ne i32 %xtraiter918, 0
  %xtraiter925 = and i32 %5, 3                    ; 3 uses
  %i.aw = icmp ult i32 %i.ap, 3
  %unroll_iter930 = and i32 %5, 2147483644
  %lcmp.mod927.not = icmp eq i32 %xtraiter925, 0
  %lcmp.mod929 = icmp ne i32 %xtraiter925, 0
  br label %bb.g

.preheader279.loopexit:                           ; preds = %.loopexit280
  %i.ax = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader279

.preheader279:                                    ; preds = %.preheader279.loopexit, %bb.f
  %.0220.lcssa = phi i32 [ 0, %bb.f ], [ %i.ax, %.preheader279.loopexit ] ; 3 uses
  %.0219.lcssa = phi ptr [ %i.m, %bb.f ], [ %.8, %.preheader279.loopexit ] ; 2 uses
  %i.ay = or disjoint i32 %.0220.lcssa, 7
  %i.az = icmp slt i32 %i.ay, %3
  br i1 %i.az, label %.lr.ph335, label %.preheader274

.lr.ph335:                                        ; preds = %.preheader279
  %i.ba = mul i32 %i.c, %4
  %i.bb = sext i32 %i.ba to i64                   ; 2 uses
  %i.bc = icmp ne i32 %i.c, 8
  %i.bd = icmp slt i32 %5, 1                      ; 2 uses
  %i.be = icmp eq i32 %i.c, 4
  %.idx263 = shl i64 %i.l, 3
  %i.bf = icmp sgt i32 %5, 0
  %i.bg = icmp ne i32 %i.c, 1
  %i.bh = trunc i64 %i.l to i32
  %i.bi = insertelement <8 x i32> poison, i32 %i.bh, i64 0
  %i.bj = shufflevector <8 x i32> %i.bi, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bk = mul <8 x i32> %i.bj, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 5 uses
  %i.bl = zext i32 %.0220.lcssa to i64            ; 2 uses
  %i.bm = sext i32 %3 to i64
  %i.bn = sext i32 %2 to i64                      ; 2 uses
  %brmerge421 = or i1 %i.bc, %i.bd
  %brmerge424 = or i1 %i.bg, %i.bd
  %invariant.op = add nsw i64 %i.bm, -7
  %i.bo = add i32 %5, -1
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = shl nuw nsw i64 %i.bp, 4
  %i.br = add nsw i64 %i.bn, %i.bl                ; 2 uses
  %i.bs = shl nsw i64 %i.br, 1
  %i.bt = add nsw i64 %i.bs, 8
  %i.bu = mul i64 %i.l, %i.bt
  %i.bv = shl nuw nsw i64 %i.bp, 3                ; 2 uses
  %i.bw = shl nsw i64 %i.bb, 1                    ; 2 uses
  %i.bx = shl i64 %i.l, 4
  %i.by = mul i64 %i.l, %i.br
  %i.bz = shl i64 %i.by, 1
  %i.ca = add i32 %5, -1                          ; 2 uses
  %xtraiter932 = and i32 %5, 7                    ; 3 uses
  %i.cb = icmp ult i32 %i.ca, 7
  %unroll_iter937 = and i32 %5, 2147483640
  %lcmp.mod934.not = icmp eq i32 %xtraiter932, 0
  %lcmp.mod936 = icmp ne i32 %xtraiter932, 0
  %xtraiter939 = and i32 %5, 3                    ; 3 uses
  %i.cc = icmp ult i32 %i.ca, 3
  %unroll_iter944 = and i32 %5, 2147483644
  %lcmp.mod941.not = icmp eq i32 %xtraiter939, 0
  %lcmp.mod943 = icmp ne i32 %xtraiter939, 0
  %i.cd = zext nneg i32 %5 to i64                 ; 2 uses
  %min.iters.check599 = icmp ult i32 %5, 8
  %n.vec601 = and i64 %i.cd, 2147483640           ; 5 uses
  %i.ce = shl nuw nsw i64 %n.vec601, 4
  %i.cf = trunc nuw nsw i64 %n.vec601 to i32
  %i.cg = shl nuw nsw i64 %n.vec601, 3            ; 2 uses
  %cmp.n612 = icmp eq i64 %n.vec601, %i.cd
  br label %bb.j

bb.g:                                             ; preds = %.lr.ph312, %.loopexit280
  %indvar = phi i64 [ 0, %.lr.ph312 ], [ %indvar.next, %.loopexit280 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph312 ], [ %indvars.iv.next, %.loopexit280 ] ; 2 uses
  %.0219311 = phi ptr [ %i.m, %.lr.ph312 ], [ %.8, %.loopexit280 ] ; 18 uses
  %i.ch = mul i64 %i.ai, %indvar                  ; 4 uses
  %i.ci = load ptr, ptr %0, align 8, !tbaa !25    ; 5 uses
  %i.cj = add nsw i64 %indvars.iv, %i.z
  %i.ck = mul i64 %i.l, %i.cj
  %i.cl = getelementptr [2 x i8], ptr %i.ci, i64 %i.ck
  %i.cm = getelementptr [2 x i8], ptr %i.cl, i64 %i.p ; 15 uses
  br i1 %brmerge, label %.loopexit284, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  br i1 %i.aq, label %.lr.ph.epil.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.1287 = phi ptr [ %i.dj, %.lr.ph ], [ %.0219311, %.lr.ph.preheader ] ; 9 uses
  %.0225286 = phi ptr [ %i.dk, %.lr.ph ], [ %i.cm, %.lr.ph.preheader ] ; 9 uses
  %niter = phi i32 [ %niter.next.7, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.cn = load <4 x i64>, ptr %.0225286, align 1, !tbaa !90
  store <4 x i64> %i.cn, ptr %.1287, align 1, !tbaa !90
  %i.co = getelementptr inbounds nuw i8, ptr %.1287, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %.0225286, i64 32
  %i.cq = load <4 x i64>, ptr %i.cp, align 1, !tbaa !90
  store <4 x i64> %i.cq, ptr %i.co, align 1, !tbaa !90
  %i.cr = getelementptr inbounds nuw i8, ptr %.1287, i64 64
  %i.cs = getelementptr inbounds nuw i8, ptr %.0225286, i64 64
  %i.ct = load <4 x i64>, ptr %i.cs, align 1, !tbaa !90
  store <4 x i64> %i.ct, ptr %i.cr, align 1, !tbaa !90
  %i.cu = getelementptr inbounds nuw i8, ptr %.1287, i64 96
  %i.cv = getelementptr inbounds nuw i8, ptr %.0225286, i64 96
  %i.cw = load <4 x i64>, ptr %i.cv, align 1, !tbaa !90
  store <4 x i64> %i.cw, ptr %i.cu, align 1, !tbaa !90
  %i.cx = getelementptr inbounds nuw i8, ptr %.1287, i64 128
  %i.cy = getelementptr inbounds nuw i8, ptr %.0225286, i64 128
  %i.cz = load <4 x i64>, ptr %i.cy, align 1, !tbaa !90
  store <4 x i64> %i.cz, ptr %i.cx, align 1, !tbaa !90
  %i.da = getelementptr inbounds nuw i8, ptr %.1287, i64 160
  %i.db = getelementptr inbounds nuw i8, ptr %.0225286, i64 160
  %i.dc = load <4 x i64>, ptr %i.db, align 1, !tbaa !90
  store <4 x i64> %i.dc, ptr %i.da, align 1, !tbaa !90
  %i.dd = getelementptr inbounds nuw i8, ptr %.1287, i64 192
  %i.de = getelementptr inbounds nuw i8, ptr %.0225286, i64 192
  %i.df = load <4 x i64>, ptr %i.de, align 1, !tbaa !90
  store <4 x i64> %i.df, ptr %i.dd, align 1, !tbaa !90
  %i.dg = getelementptr inbounds nuw i8, ptr %.1287, i64 224
  %i.dh = getelementptr inbounds nuw i8, ptr %.0225286, i64 224
  %i.di = load <4 x i64>, ptr %i.dh, align 1, !tbaa !90
  store <4 x i64> %i.di, ptr %i.dg, align 1, !tbaa !90
  %i.dj = getelementptr inbounds nuw i8, ptr %.1287, i64 256 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.0225286, i64 256 ; 2 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit280.loopexit909.unr-lcssa, label %.lr.ph, !llvm.loop !1299

.loopexit284:                                     ; preds = %bb.g
  switch i32 %i.c, label %.loopexit281 [
    i32 8, label %bb.h
    i32 4, label %bb.i
  ]

bb.h:                                             ; preds = %.loopexit284
  br i1 %i.s, label %.lr.ph293.preheader, label %.loopexit280

.lr.ph293.preheader:                              ; preds = %bb.h
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.idx264 ; 2 uses
  br i1 %i.av, label %.lr.ph293.epil.preheader, label %.lr.ph293

.lr.ph293:                                        ; preds = %.lr.ph293.preheader, %.lr.ph293
  %.3292 = phi ptr [ %i.eh, %.lr.ph293 ], [ %.0219311, %.lr.ph293.preheader ] ; 9 uses
  %.2227291 = phi ptr [ %i.ei, %.lr.ph293 ], [ %i.cm, %.lr.ph293.preheader ] ; 5 uses
  %.0246290 = phi ptr [ %i.ej, %.lr.ph293 ], [ %i.dl, %.lr.ph293.preheader ] ; 5 uses
  %niter924 = phi i32 [ %niter924.next.3, %.lr.ph293 ], [ 0, %.lr.ph293.preheader ]
  %i.dm = load <2 x i64>, ptr %.2227291, align 1, !tbaa !90
  store <2 x i64> %i.dm, ptr %.3292, align 1, !tbaa !90
  %i.dn = getelementptr inbounds nuw i8, ptr %.3292, i64 16
  %i.do = load <2 x i64>, ptr %.0246290, align 1, !tbaa !90
  store <2 x i64> %i.do, ptr %i.dn, align 1, !tbaa !90
  %i.dp = getelementptr inbounds nuw i8, ptr %.3292, i64 32
  %i.dq = getelementptr inbounds nuw i8, ptr %.2227291, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %.0246290, i64 16
  %i.ds = load <2 x i64>, ptr %i.dq, align 1, !tbaa !90
  store <2 x i64> %i.ds, ptr %i.dp, align 1, !tbaa !90
  %i.dt = getelementptr inbounds nuw i8, ptr %.3292, i64 48
  %i.du = load <2 x i64>, ptr %i.dr, align 1, !tbaa !90
  store <2 x i64> %i.du, ptr %i.dt, align 1, !tbaa !90
  %i.dv = getelementptr inbounds nuw i8, ptr %.3292, i64 64
  %i.dw = getelementptr inbounds nuw i8, ptr %.2227291, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %.0246290, i64 32
  %i.dy = load <2 x i64>, ptr %i.dw, align 1, !tbaa !90
  store <2 x i64> %i.dy, ptr %i.dv, align 1, !tbaa !90
  %i.dz = getelementptr inbounds nuw i8, ptr %.3292, i64 80
  %i.ea = load <2 x i64>, ptr %i.dx, align 1, !tbaa !90
  store <2 x i64> %i.ea, ptr %i.dz, align 1, !tbaa !90
  %i.eb = getelementptr inbounds nuw i8, ptr %.3292, i64 96
  %i.ec = getelementptr inbounds nuw i8, ptr %.2227291, i64 48
  %i.ed = getelementptr inbounds nuw i8, ptr %.0246290, i64 48
  %i.ee = load <2 x i64>, ptr %i.ec, align 1, !tbaa !90
  store <2 x i64> %i.ee, ptr %i.eb, align 1, !tbaa !90
  %i.ef = getelementptr inbounds nuw i8, ptr %.3292, i64 112
  %i.eg = load <2 x i64>, ptr %i.ed, align 1, !tbaa !90
  store <2 x i64> %i.eg, ptr %i.ef, align 1, !tbaa !90
  %i.eh = getelementptr inbounds nuw i8, ptr %.3292, i64 128 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.2227291, i64 64 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.0246290, i64 64 ; 2 uses
  %niter924.next.3 = add nuw nsw i32 %niter924, 4 ; 2 uses
  %niter924.ncmp.3 = icmp eq i32 %niter924.next.3, %unroll_iter923
  br i1 %niter924.ncmp.3, label %.loopexit280.loopexit906.unr-lcssa, label %.lr.ph293, !llvm.loop !1300

bb.i:                                             ; preds = %.loopexit284
  br i1 %i.s, label %.lr.ph302.preheader, label %.loopexit280

.lr.ph302.preheader:                              ; preds = %bb.i
  %i.ek = getelementptr i8, ptr %i.cm, i64 %.idx267 ; 5 uses
  %i.el = getelementptr i8, ptr %i.cm, i64 %.idx264 ; 5 uses
  %i.em = getelementptr i8, ptr %i.cm, i64 %.idx265 ; 5 uses
  br i1 %min.iters.check, label %.lr.ph302.preheader907, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph302.preheader
  %i.en = getelementptr i8, ptr %.0219311, i64 %i.ac
  %scevgep = getelementptr i8, ptr %i.en, i64 32  ; 4 uses
  %i.eo = getelementptr i8, ptr %i.ci, i64 %i.af
  %i.ep = getelementptr i8, ptr %i.eo, i64 %i.ag
  %i.eq = getelementptr i8, ptr %i.ep, i64 %i.ah
  %i.er = getelementptr i8, ptr %i.eq, i64 8
  %scevgep557 = getelementptr i8, ptr %i.er, i64 %i.ch
  %i.es = getelementptr i8, ptr %i.ci, i64 %i.ak
  %i.et = getelementptr i8, ptr %i.es, i64 %i.ag
  %i.eu = getelementptr i8, ptr %i.et, i64 %i.ah
  %i.ev = getelementptr i8, ptr %i.eu, i64 8
  %scevgep558 = getelementptr i8, ptr %i.ev, i64 %i.ch
  %i.ew = getelementptr i8, ptr %i.ci, i64 %i.am
  %i.ex = getelementptr i8, ptr %i.ew, i64 %i.ag
  %i.ey = getelementptr i8, ptr %i.ex, i64 %i.ah
  %i.ez = getelementptr i8, ptr %i.ey, i64 8
  %scevgep559 = getelementptr i8, ptr %i.ez, i64 %i.ch
  %i.fa = getelementptr i8, ptr %i.ci, i64 %i.ao
  %i.fb = getelementptr i8, ptr %i.fa, i64 %i.ag
  %i.fc = getelementptr i8, ptr %i.fb, i64 %i.ah
  %i.fd = getelementptr i8, ptr %i.fc, i64 8
  %scevgep560 = getelementptr i8, ptr %i.fd, i64 %i.ch
  %bound0 = icmp ult ptr %.0219311, %scevgep557
  %bound1 = icmp ult ptr %i.ek, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0561 = icmp ult ptr %.0219311, %scevgep558
  %bound1562 = icmp ult ptr %i.el, %scevgep
  %found.conflict563 = and i1 %bound0561, %bound1562
  %conflict.rdx = or i1 %found.conflict, %found.conflict563
  %bound0564 = icmp ult ptr %.0219311, %scevgep559
  %bound1565 = icmp ult ptr %i.em, %scevgep
  %found.conflict566 = and i1 %bound0564, %bound1565
  %conflict.rdx567 = or i1 %conflict.rdx, %found.conflict566
  %bound0568 = icmp ult ptr %.0219311, %scevgep560
  %bound1569 = icmp ult ptr %i.cm, %scevgep
  %found.conflict570 = and i1 %bound0568, %bound1569
  %conflict.rdx571 = or i1 %conflict.rdx567, %found.conflict570
  br i1 %conflict.rdx571, label %.lr.ph302.preheader907, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fe = getelementptr i8, ptr %.0219311, i64 %i.as ; 2 uses
  %i.ff = getelementptr i8, ptr %i.cm, i64 %i.at
  %i.fg = getelementptr i8, ptr %i.em, i64 %i.at
  %i.fh = getelementptr i8, ptr %i.ek, i64 %i.at
  %i.fi = getelementptr i8, ptr %i.el, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fj = shl i64 %index, 5
  %next.gep = getelementptr i8, ptr %.0219311, i64 %i.fj
  %i.fk = shl i64 %index, 3                       ; 4 uses
  %next.gep572 = getelementptr i8, ptr %i.cm, i64 %i.fk
  %next.gep573 = getelementptr i8, ptr %i.em, i64 %i.fk
  %next.gep574 = getelementptr i8, ptr %i.ek, i64 %i.fk
  %next.gep575 = getelementptr i8, ptr %i.el, i64 %i.fk
  %wide.load = load <8 x i64>, ptr %next.gep572, align 1, !tbaa !90, !alias.scope !1359
  %wide.load576 = load <8 x i64>, ptr %next.gep573, align 1, !tbaa !90, !alias.scope !1360
  %wide.load577 = load <8 x i64>, ptr %next.gep575, align 1, !tbaa !90, !alias.scope !1361
end_hunk_1
begin_hunk_2_@_ZN4ncnnL16pack_A_tile_bf16ERKNS_3MatERS0_iiii:bb.a
  br label %.preheader269

.lr.ph367.split.split.us:                         ; preds = %.lr.ph367.split
  br i1 %i.in, label %.preheader272.us373.preheader, label %.preheader272.us373.us.preheader

.preheader272.us373.us.preheader:                 ; preds = %.lr.ph367.split.split.us
  %i.pv = zext i32 %.1221.lcssa to i64            ; 2 uses
  %i.pw = sext i32 %2 to i64                      ; 2 uses
  %i.px = sext i32 %3 to i64
  %invariant.op532 = add nsw i64 %i.px, -3
  %i.py = add nsw i64 %i.pw, %i.pv
  %i.pz = mul i64 %i.l, %i.py
  %i.qa = mul i64 %i.pz, -2
  %i.qb = shl nsw i64 %i.il, 1
  %i.qc = sub i64 %i.qa, %i.qb
  %i.qd = mul i64 %i.l, -8
  %i.qe = zext nneg i32 %5 to i64                 ; 5 uses
  %min.iters.check622.a = icmp ult i32 %5, 8
  %min.iters.check623 = icmp ult i32 %5, 32
  %i.qf = and i64 %i.qe, 24
  %n.vec625 = and i64 %i.qe, 2147483616           ; 5 uses
  %i.qg = shl nuw nsw i64 %n.vec625, 3            ; 2 uses
  %i.qh = trunc nuw nsw i64 %n.vec625 to i32
  %cmp.n636 = icmp eq i64 %n.vec625, %i.qe
  %min.epilog.iters.check = icmp eq i64 %i.qf, 0
  %n.vec640 = and i64 %i.qe, 2147483640           ; 4 uses
  %i.qi = shl nuw nsw i64 %n.vec640, 3            ; 2 uses
  %i.qj = trunc nuw nsw i64 %n.vec640 to i32
  %cmp.n646 = icmp eq i64 %n.vec640, %i.qe
  br label %iter.check

.preheader272.us373.preheader:                    ; preds = %.lr.ph367.split.split.us
  %i.qk = add i32 %3, -4
  %i.ql = sub i32 %i.qk, %.1221.lcssa
  %i.qm = and i32 %i.ql, -4
  %i.qn = add i32 %.1221.lcssa, %i.qm
  %i.qo = add i32 %i.qn, 4
  br label %.preheader269

iter.check:                                       ; preds = %.preheader272.us373.us.preheader, %..loopexit273_crit_edge.us378.us
  %indvar619 = phi i64 [ 0, %.preheader272.us373.us.preheader ], [ %indvar.next620, %..loopexit273_crit_edge.us378.us ] ; 2 uses
  %indvars.iv471 = phi i64 [ %i.pv, %.preheader272.us373.us.preheader ], [ %indvars.iv.next472, %..loopexit273_crit_edge.us378.us ] ; 2 uses
  %.16366.us371.us = phi ptr [ %.9.lcssa, %.preheader272.us373.us.preheader ], [ %.lcssa549, %..loopexit273_crit_edge.us378.us ] ; 7 uses
  %i.qp = load ptr, ptr %0, align 8, !tbaa !25    ; 2 uses
  %i.qq = add nsw i64 %indvars.iv471, %i.pw
  %i.qr = mul i64 %i.l, %i.qq
  %i.qs = getelementptr inbounds nuw [2 x i8], ptr %i.qp, i64 %i.qr
  %i.qt = getelementptr inbounds [2 x i8], ptr %i.qs, i64 %i.il ; 6 uses
  br i1 %min.iters.check622.a, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck617

vector.memcheck617:                               ; preds = %iter.check
  %i.qu = ptrtoaddr ptr %i.qp to i64
  %i.qv = mul i64 %i.qd, %indvar619
  %i.qw = add i64 %i.qc, %i.qv
  %.16366.us371.us618 = ptrtoaddr ptr %.16366.us371.us to i64
  %i.qx = add i64 %i.qw, %.16366.us371.us618
  %i.qy = sub i64 %i.qu, %i.qx
  %diff.check = icmp ugt i64 %i.qy, -256
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck617
  br i1 %min.iters.check623, label %vec.epilog.ph, label %vector.ph624

vector.ph624:                                     ; preds = %vector.main.loop.iter.check
  %i.qz = getelementptr i8, ptr %.16366.us371.us, i64 %i.qg ; 2 uses
  %i.ra = getelementptr i8, ptr %i.qt, i64 %i.qg
  br label %vector.body626

vector.body626:                                   ; preds = %vector.ph624, %vector.body626
  %index627 = phi i64 [ 0, %vector.ph624 ], [ %index.next634, %vector.body626 ] ; 2 uses
  %i.rb = shl i64 %index627, 3                    ; 2 uses
  %next.gep628.a = getelementptr i8, ptr %.16366.us371.us, i64 %i.rb ; 4 uses
  %next.gep629 = getelementptr i8, ptr %i.qt, i64 %i.rb ; 4 uses
  %i.rc = getelementptr i8, ptr %next.gep629, i64 64
  %i.rd = getelementptr i8, ptr %next.gep629, i64 128
  %i.re = getelementptr i8, ptr %next.gep629, i64 192
  %wide.load630.a = load <8 x i64>, ptr %next.gep629, align 1, !tbaa !90
  %wide.load631.a = load <8 x i64>, ptr %i.rc, align 1, !tbaa !90
  %wide.load632.a = load <8 x i64>, ptr %i.rd, align 1, !tbaa !90
  %wide.load633 = load <8 x i64>, ptr %i.re, align 1, !tbaa !90
  %i.rf = getelementptr i8, ptr %next.gep628.a, i64 64
  %i.rg = getelementptr i8, ptr %next.gep628.a, i64 128
  %i.rh = getelementptr i8, ptr %next.gep628.a, i64 192
  store <8 x i64> %wide.load630.a, ptr %next.gep628.a, align 1, !tbaa !90
  store <8 x i64> %wide.load631.a, ptr %i.rf, align 1, !tbaa !90
  store <8 x i64> %wide.load632.a, ptr %i.rg, align 1, !tbaa !90
  store <8 x i64> %wide.load633, ptr %i.rh, align 1, !tbaa !90
  %index.next634 = add nuw i64 %index627, 32      ; 2 uses
  %i.ri = icmp eq i64 %index.next634, %n.vec625
  br i1 %i.ri, label %middle.block635, label %vector.body626, !llvm.loop !1329

middle.block635:                                  ; preds = %vector.body626
  br i1 %cmp.n636, label %..loopexit273_crit_edge.us378.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block635
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !104

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec625, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.rj = getelementptr i8, ptr %.16366.us371.us, i64 %i.qi ; 2 uses
  %i.rk = getelementptr i8, ptr %i.qt, i64 %i.qi
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index641 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next645, %vec.epilog.vector.body ] ; 2 uses
  %i.rl = shl i64 %index641, 3                    ; 2 uses
  %next.gep642.a = getelementptr i8, ptr %.16366.us371.us, i64 %i.rl
  %next.gep643 = getelementptr i8, ptr %i.qt, i64 %i.rl
  %wide.load644 = load <8 x i64>, ptr %next.gep643, align 1, !tbaa !90
  store <8 x i64> %wide.load644, ptr %next.gep642.a, align 1, !tbaa !90
  %index.next645 = add nuw i64 %index641, 8       ; 2 uses
  %i.rm = icmp eq i64 %index.next645, %n.vec640
  br i1 %i.rm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1330

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n646, label %..loopexit273_crit_edge.us378.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck617, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.17340.us375.us.ph = phi ptr [ %.16366.us371.us, %iter.check ], [ %.16366.us371.us, %vector.memcheck617 ], [ %i.qz, %vec.epilog.iter.check ], [ %i.rj, %vec.epilog.middle.block ] ; 2 uses
  %.0241339.us376.us.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck617 ], [ %i.qh, %vec.epilog.iter.check ], [ %i.qj, %vec.epilog.middle.block ] ; 4 uses
  %.0242338.us377.us.ph = phi ptr [ %i.qt, %iter.check ], [ %i.qt, %vector.memcheck617 ], [ %i.ra, %vec.epilog.iter.check ], [ %i.rk, %vec.epilog.middle.block ] ; 2 uses
  %i.rn = sub i32 %5, %.0241339.us376.us.ph
  %xtraiter948 = and i32 %i.rn, 7                 ; 2 uses
  %lcmp.mod949.not = icmp eq i32 %xtraiter948, 0
  br i1 %lcmp.mod949.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.17340.us375.us.prol = phi ptr [ %i.rp, %vec.epilog.scalar.ph.prol ], [ %.17340.us375.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0241339.us376.us.prol = phi i32 [ %i.rr, %vec.epilog.scalar.ph.prol ], [ %.0241339.us376.us.ph, %vec.epilog.scalar.ph.preheader ]
  %.0242338.us377.us.prol = phi ptr [ %i.rq, %vec.epilog.scalar.ph.prol ], [ %.0242338.us377.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter950 = phi i32 [ %prol.iter950.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ro = load i64, ptr %.0242338.us377.us.prol, align 1, !tbaa !90
  store i64 %i.ro, ptr %.17340.us375.us.prol, align 1, !tbaa !90
  %i.rp = getelementptr inbounds nuw i8, ptr %.17340.us375.us.prol, i64 8 ; 3 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %.0242338.us377.us.prol, i64 8 ; 2 uses
  %i.rr = add nuw nsw i32 %.0241339.us376.us.prol, 1 ; 2 uses
  %prol.iter950.next = add i32 %prol.iter950, 1   ; 2 uses
  %prol.iter950.cmp.not = icmp eq i32 %prol.iter950.next, %xtraiter948
  br i1 %prol.iter950.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1331

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa899.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.rp, %vec.epilog.scalar.ph.prol ]
  %.17340.us375.us.unr = phi ptr [ %.17340.us375.us.ph, %vec.epilog.scalar.ph.preheader ], [ %i.rp, %vec.epilog.scalar.ph.prol ]
  %.0241339.us376.us.unr = phi i32 [ %.0241339.us376.us.ph, %vec.epilog.scalar.ph.preheader ], [ %i.rr, %vec.epilog.scalar.ph.prol ]
  %.0242338.us377.us.unr = phi ptr [ %.0242338.us377.us.ph, %vec.epilog.scalar.ph.preheader ], [ %i.rq, %vec.epilog.scalar.ph.prol ]
  %i.rs = sub i32 %.0241339.us376.us.ph, %5
  %i.rt = icmp ugt i32 %i.rs, -8
  br i1 %i.rt, label %..loopexit273_crit_edge.us378.us, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.17340.us375.us = phi ptr [ %i.sq, %vec.epilog.scalar.ph ], [ %.17340.us375.us.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.0241339.us376.us = phi i32 [ %i.ss, %vec.epilog.scalar.ph ], [ %.0241339.us376.us.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.0242338.us377.us = phi ptr [ %i.sr, %vec.epilog.scalar.ph ], [ %.0242338.us377.us.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.ru = load i64, ptr %.0242338.us377.us, align 1, !tbaa !90
  store i64 %i.ru, ptr %.17340.us375.us, align 1, !tbaa !90
  %i.rv = getelementptr inbounds nuw i8, ptr %.17340.us375.us, i64 8
  %i.rw = getelementptr inbounds nuw i8, ptr %.0242338.us377.us, i64 8
  %i.rx = load i64, ptr %i.rw, align 1, !tbaa !90
  store i64 %i.rx, ptr %i.rv, align 1, !tbaa !90
  %i.ry = getelementptr inbounds nuw i8, ptr %.17340.us375.us, i64 16
  %i.rz = getelementptr inbounds nuw i8, ptr %.0242338.us377.us, i64 16
  %i.sa = load i64, ptr %i.rz, align 1, !tbaa !90
  store i64 %i.sa, ptr %i.ry, align 1, !tbaa !90
  %i.sb = getelementptr inbounds nuw i8, ptr %.17340.us375.us, i64 24
  %i.sc = getelementptr inbounds nuw i8, ptr %.0242338.us377.us, i64 24
  %i.sd = load i64, ptr %i.sc, align 1, !tbaa !90
  store i64 %i.sd, ptr %i.sb, align 1, !tbaa !90
  %i.se = getelementptr inbounds nuw i8, ptr %.17340.us375.us, i64 32
  %i.sf = getelementptr inbounds nuw i8, ptr %.0242338.us377.us, i64 32
  %i.sg = load i64, ptr %i.sf, align 1, !tbaa !90
  store i64 %i.sg, ptr %i.se, align 1, !tbaa !90
  %i.sh = getelementptr inbounds nuw i8, ptr %.17340.us375.us, i64 40
  %i.si = getelementptr inbounds nuw i8, ptr %.0242338.us377.us, i64 40
  %i.sj = load i64, ptr %i.si, align 1, !tbaa !90
  store i64 %i.sj, ptr %i.sh, align 1, !tbaa !90
  %i.sk = getelementptr inbounds nuw i8, ptr %.17340.us375.us, i64 48
  %i.sl = getelementptr inbounds nuw i8, ptr %.0242338.us377.us, i64 48
  %i.sm = load i64, ptr %i.sl, align 1, !tbaa !90
  store i64 %i.sm, ptr %i.sk, align 1, !tbaa !90
  %i.sn = getelementptr inbounds nuw i8, ptr %.17340.us375.us, i64 56
  %i.so = getelementptr inbounds nuw i8, ptr %.0242338.us377.us, i64 56
  %i.sp = load i64, ptr %i.so, align 1, !tbaa !90
  store i64 %i.sp, ptr %i.sn, align 1, !tbaa !90
  %i.sq = getelementptr inbounds nuw i8, ptr %.17340.us375.us, i64 64 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %.0242338.us377.us, i64 64
  %i.ss = add nuw nsw i32 %.0241339.us376.us, 8   ; 2 uses
  %exitcond470.not.7 = icmp eq i32 %i.ss, %5
  br i1 %exitcond470.not.7, label %..loopexit273_crit_edge.us378.us, label %vec.epilog.scalar.ph, !llvm.loop !1332

..loopexit273_crit_edge.us378.us:                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block635
  %.lcssa549 = phi ptr [ %i.rj, %vec.epilog.middle.block ], [ %i.qz, %middle.block635 ], [ %.lcssa899.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.sq, %vec.epilog.scalar.ph ] ; 2 uses
  %indvars.iv.next472 = add nuw nsw i64 %indvars.iv471, 4 ; 3 uses
  %i.st = icmp slt i64 %indvars.iv.next472, %invariant.op532
  %indvar.next620 = add i64 %indvar619, 1
  br i1 %i.st, label %iter.check, label %.preheader269.loopexit428, !llvm.loop !1328

bb.j:                                             ; preds = %.lr.ph335, %.loopexit275
  %indvar586 = phi i64 [ 0, %.lr.ph335 ], [ %indvar.next587, %.loopexit275 ] ; 2 uses
  %indvars.iv467 = phi i64 [ %i.bl, %.lr.ph335 ], [ %indvars.iv.next468, %.loopexit275 ] ; 2 uses
  %.9334 = phi ptr [ %.0219.lcssa, %.lr.ph335 ], [ %.15, %.loopexit275 ] ; 13 uses
  %i.su = mul i64 %i.bx, %indvar586               ; 2 uses
  %i.sv = load ptr, ptr %0, align 8, !tbaa !25    ; 3 uses
  %i.sw = add i64 %indvars.iv467, %i.bn
  %i.sx = mul i64 %i.l, %i.sw
  %i.sy = getelementptr [2 x i8], ptr %i.sv, i64 %i.sx
  %i.sz = getelementptr [2 x i8], ptr %i.sy, i64 %i.bb ; 10 uses
  br i1 %brmerge421, label %.loopexit278, label %.lr.ph318.preheader

.lr.ph318.preheader:                              ; preds = %bb.j
  br i1 %i.cb, label %.lr.ph318.epil.preheader, label %.lr.ph318

.lr.ph318:                                        ; preds = %.lr.ph318.preheader, %.lr.ph318
  %.10317 = phi ptr [ %i.tw, %.lr.ph318 ], [ %.9334, %.lr.ph318.preheader ] ; 9 uses
  %.0251315 = phi ptr [ %i.tx, %.lr.ph318 ], [ %i.sz, %.lr.ph318.preheader ] ; 9 uses
  %niter938 = phi i32 [ %niter938.next.7, %.lr.ph318 ], [ 0, %.lr.ph318.preheader ]
  %i.ta = load <2 x i64>, ptr %.0251315, align 1, !tbaa !90
  store <2 x i64> %i.ta, ptr %.10317, align 1, !tbaa !90
  %i.tb = getelementptr inbounds nuw i8, ptr %.10317, i64 16
  %i.tc = getelementptr inbounds nuw i8, ptr %.0251315, i64 16
  %i.td = load <2 x i64>, ptr %i.tc, align 1, !tbaa !90
  store <2 x i64> %i.td, ptr %i.tb, align 1, !tbaa !90
  %i.te = getelementptr inbounds nuw i8, ptr %.10317, i64 32
  %i.tf = getelementptr inbounds nuw i8, ptr %.0251315, i64 32
  %i.tg = load <2 x i64>, ptr %i.tf, align 1, !tbaa !90
  store <2 x i64> %i.tg, ptr %i.te, align 1, !tbaa !90
  %i.th = getelementptr inbounds nuw i8, ptr %.10317, i64 48
  %i.ti = getelementptr inbounds nuw i8, ptr %.0251315, i64 48
  %i.tj = load <2 x i64>, ptr %i.ti, align 1, !tbaa !90
  store <2 x i64> %i.tj, ptr %i.th, align 1, !tbaa !90
  %i.tk = getelementptr inbounds nuw i8, ptr %.10317, i64 64
  %i.tl = getelementptr inbounds nuw i8, ptr %.0251315, i64 64
  %i.tm = load <2 x i64>, ptr %i.tl, align 1, !tbaa !90
  store <2 x i64> %i.tm, ptr %i.tk, align 1, !tbaa !90
  %i.tn = getelementptr inbounds nuw i8, ptr %.10317, i64 80
  %i.to = getelementptr inbounds nuw i8, ptr %.0251315, i64 80
  %i.tp = load <2 x i64>, ptr %i.to, align 1, !tbaa !90
  store <2 x i64> %i.tp, ptr %i.tn, align 1, !tbaa !90
  %i.tq = getelementptr inbounds nuw i8, ptr %.10317, i64 96
  %i.tr = getelementptr inbounds nuw i8, ptr %.0251315, i64 96
  %i.ts = load <2 x i64>, ptr %i.tr, align 1, !tbaa !90
  store <2 x i64> %i.ts, ptr %i.tq, align 1, !tbaa !90
  %i.tt = getelementptr inbounds nuw i8, ptr %.10317, i64 112
  %i.tu = getelementptr inbounds nuw i8, ptr %.0251315, i64 112
  %i.tv = load <2 x i64>, ptr %i.tu, align 1, !tbaa !90
  store <2 x i64> %i.tv, ptr %i.tt, align 1, !tbaa !90
  %i.tw = getelementptr inbounds nuw i8, ptr %.10317, i64 128 ; 3 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %.0251315, i64 128 ; 2 uses
  %niter938.next.7 = add nuw nsw i32 %niter938, 8 ; 2 uses
  %niter938.ncmp.7 = icmp eq i32 %niter938.next.7, %unroll_iter937
  br i1 %niter938.ncmp.7, label %.loopexit275.loopexit902.unr-lcssa, label %.lr.ph318, !llvm.loop !1333

.loopexit278:                                     ; preds = %bb.j
  br i1 %i.be, label %bb.k, label %.loopexit276

bb.k:                                             ; preds = %.loopexit278
  br i1 %i.bf, label %.lr.ph325.preheader, label %.loopexit275

.lr.ph325.preheader:                              ; preds = %bb.k
  %i.ty = getelementptr i8, ptr %i.sz, i64 %.idx263 ; 5 uses
  br i1 %min.iters.check599, label %.lr.ph325.preheader900, label %vector.memcheck584

vector.memcheck584:                               ; preds = %.lr.ph325.preheader
  %i.tz = getelementptr i8, ptr %.9334, i64 %i.bq
  %scevgep588.a = getelementptr i8, ptr %i.tz, i64 16 ; 2 uses
  %i.ua = getelementptr i8, ptr %i.sv, i64 %i.bu
  %i.ub = getelementptr i8, ptr %i.ua, i64 %i.bv
  %i.uc = getelementptr i8, ptr %i.ub, i64 %i.bw
  %i.ud = getelementptr i8, ptr %i.uc, i64 8
  %scevgep589.a = getelementptr i8, ptr %i.ud, i64 %i.su
  %i.ue = getelementptr i8, ptr %i.sv, i64 %i.bz
  %i.uf = getelementptr i8, ptr %i.ue, i64 %i.bv
  %i.ug = getelementptr i8, ptr %i.uf, i64 %i.bw
  %i.uh = getelementptr i8, ptr %i.ug, i64 8
  %scevgep590 = getelementptr i8, ptr %i.uh, i64 %i.su
  %bound0591 = icmp ult ptr %.9334, %scevgep589.a
  %bound1592 = icmp ult ptr %i.ty, %scevgep588.a
  %found.conflict593 = and i1 %bound0591, %bound1592
  %bound0594 = icmp ult ptr %.9334, %scevgep590
  %bound1595 = icmp ult ptr %i.sz, %scevgep588.a
  %found.conflict596 = and i1 %bound0594, %bound1595
  %conflict.rdx597 = or i1 %found.conflict593, %found.conflict596
  br i1 %conflict.rdx597, label %.lr.ph325.preheader900, label %vector.ph600

vector.ph600:                                     ; preds = %vector.memcheck584
  %i.ui = getelementptr i8, ptr %.9334, i64 %i.ce ; 2 uses
  %i.uj = getelementptr i8, ptr %i.ty, i64 %i.cg
  %i.uk = getelementptr i8, ptr %i.sz, i64 %i.cg
  br label %vector.body602

vector.body602:                                   ; preds = %vector.body602, %vector.ph600
  %index603 = phi i64 [ 0, %vector.ph600 ], [ %index.next610, %vector.body602 ] ; 3 uses
  %i.ul = shl i64 %index603, 4
  %next.gep604.a = getelementptr i8, ptr %.9334, i64 %i.ul
  %i.um = shl i64 %index603, 3                    ; 2 uses
  %next.gep605.a = getelementptr i8, ptr %i.ty, i64 %i.um
  %next.gep606 = getelementptr i8, ptr %i.sz, i64 %i.um
  %wide.load607.a = load <8 x i64>, ptr %next.gep606, align 1, !tbaa !90, !alias.scope !1371
  %wide.load608 = load <8 x i64>, ptr %next.gep605.a, align 1, !tbaa !90, !alias.scope !1372
  %interleaved.vec609 = shufflevector <8 x i64> %wide.load607.a, <8 x i64> %wide.load608, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i64> %interleaved.vec609, ptr %next.gep604.a, align 1, !tbaa !90, !alias.scope !1373, !noalias !1374
  %index.next610 = add nuw i64 %index603, 8       ; 2 uses
  %i.un = icmp eq i64 %index.next610, %n.vec601
  br i1 %i.un, label %middle.block611, label %vector.body602, !llvm.loop !1338

middle.block611:                                  ; preds = %vector.body602
  br i1 %cmp.n612, label %.loopexit275, label %.lr.ph325.preheader900

.lr.ph325.preheader900:                           ; preds = %vector.memcheck584, %.lr.ph325.preheader, %middle.block611
  %.12324.ph = phi ptr [ %.9334, %vector.memcheck584 ], [ %.9334, %.lr.ph325.preheader ], [ %i.ui, %middle.block611 ] ; 2 uses
  %.0248323.ph = phi i32 [ 0, %vector.memcheck584 ], [ 0, %.lr.ph325.preheader ], [ %i.cf, %middle.block611 ] ; 4 uses
  %.0249322.ph = phi ptr [ %i.ty, %vector.memcheck584 ], [ %i.ty, %.lr.ph325.preheader ], [ %i.uj, %middle.block611 ] ; 2 uses
  %.2253321.ph = phi ptr [ %i.sz, %vector.memcheck584 ], [ %i.sz, %.lr.ph325.preheader ], [ %i.uk, %middle.block611 ] ; 2 uses
  %i.uo = sub i32 %5, %.0248323.ph
  %xtraiter946 = and i32 %i.uo, 3                 ; 2 uses
  %lcmp.mod947.not = icmp eq i32 %xtraiter946, 0
  br i1 %lcmp.mod947.not, label %.lr.ph325.prol.loopexit, label %.lr.ph325.prol

.lr.ph325.prol:                                   ; preds = %.lr.ph325.preheader900, %.lr.ph325.prol
  %.12324.prol = phi ptr [ %i.us, %.lr.ph325.prol ], [ %.12324.ph, %.lr.ph325.preheader900 ] ; 3 uses
  %.0248323.prol = phi i32 [ %i.uv, %.lr.ph325.prol ], [ %.0248323.ph, %.lr.ph325.preheader900 ]
  %.0249322.prol = phi ptr [ %i.uu, %.lr.ph325.prol ], [ %.0249322.ph, %.lr.ph325.preheader900 ] ; 2 uses
  %.2253321.prol = phi ptr [ %i.ut, %.lr.ph325.prol ], [ %.2253321.ph, %.lr.ph325.preheader900 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph325.prol ], [ 0, %.lr.ph325.preheader900 ]
  %i.up = load i64, ptr %.2253321.prol, align 1, !tbaa !90
  store i64 %i.up, ptr %.12324.prol, align 1, !tbaa !90
  %i.uq = getelementptr inbounds nuw i8, ptr %.12324.prol, i64 8
  %i.ur = load i64, ptr %.0249322.prol, align 1, !tbaa !90
  store i64 %i.ur, ptr %i.uq, align 1, !tbaa !90
  %i.us = getelementptr inbounds nuw i8, ptr %.12324.prol, i64 16 ; 3 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %.2253321.prol, i64 8 ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %.0249322.prol, i64 8 ; 2 uses
  %i.uv = add nuw nsw i32 %.0248323.prol, 1       ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter946
  br i1 %prol.iter.cmp.not, label %.lr.ph325.prol.loopexit, label %.lr.ph325.prol, !llvm.loop !1339

.lr.ph325.prol.loopexit:                          ; preds = %.lr.ph325.prol, %.lr.ph325.preheader900
  %.lcssa905.unr = phi ptr [ poison, %.lr.ph325.preheader900 ], [ %i.us, %.lr.ph325.prol ]
  %.12324.unr = phi ptr [ %.12324.ph, %.lr.ph325.preheader900 ], [ %i.us, %.lr.ph325.prol ]
  %.0248323.unr = phi i32 [ %.0248323.ph, %.lr.ph325.preheader900 ], [ %i.uv, %.lr.ph325.prol ]
  %.0249322.unr = phi ptr [ %.0249322.ph, %.lr.ph325.preheader900 ], [ %i.uu, %.lr.ph325.prol ]
  %.2253321.unr = phi ptr [ %.2253321.ph, %.lr.ph325.preheader900 ], [ %i.ut, %.lr.ph325.prol ]
  %i.uw = sub i32 %.0248323.ph, %5
  %i.ux = icmp ugt i32 %i.uw, -4
  br i1 %i.ux, label %.loopexit275, label %.lr.ph325

.lr.ph325:                                        ; preds = %.lr.ph325.prol.loopexit, %.lr.ph325
  %.12324 = phi ptr [ %i.vt, %.lr.ph325 ], [ %.12324.unr, %.lr.ph325.prol.loopexit ] ; 9 uses
  %.0248323 = phi i32 [ %i.vw, %.lr.ph325 ], [ %.0248323.unr, %.lr.ph325.prol.loopexit ]
  %.0249322 = phi ptr [ %i.vv, %.lr.ph325 ], [ %.0249322.unr, %.lr.ph325.prol.loopexit ] ; 5 uses
  %.2253321 = phi ptr [ %i.vu, %.lr.ph325 ], [ %.2253321.unr, %.lr.ph325.prol.loopexit ] ; 5 uses
  %i.uy = load i64, ptr %.2253321, align 1, !tbaa !90
  store i64 %i.uy, ptr %.12324, align 1, !tbaa !90
  %i.uz = getelementptr inbounds nuw i8, ptr %.12324, i64 8
  %i.va = load i64, ptr %.0249322, align 1, !tbaa !90
  store i64 %i.va, ptr %i.uz, align 1, !tbaa !90
  %i.vb = getelementptr inbounds nuw i8, ptr %.12324, i64 16
  %i.vc = getelementptr inbounds nuw i8, ptr %.2253321, i64 8
  %i.vd = getelementptr inbounds nuw i8, ptr %.0249322, i64 8
  %i.ve = load i64, ptr %i.vc, align 1, !tbaa !90
  store i64 %i.ve, ptr %i.vb, align 1, !tbaa !90
  %i.vf = getelementptr inbounds nuw i8, ptr %.12324, i64 24
  %i.vg = load i64, ptr %i.vd, align 1, !tbaa !90
  store i64 %i.vg, ptr %i.vf, align 1, !tbaa !90
  %i.vh = getelementptr inbounds nuw i8, ptr %.12324, i64 32
  %i.vi = getelementptr inbounds nuw i8, ptr %.2253321, i64 16
  %i.vj = getelementptr inbounds nuw i8, ptr %.0249322, i64 16
  %i.vk = load i64, ptr %i.vi, align 1, !tbaa !90
  store i64 %i.vk, ptr %i.vh, align 1, !tbaa !90
  %i.vl = getelementptr inbounds nuw i8, ptr %.12324, i64 40
  %i.vm = load i64, ptr %i.vj, align 1, !tbaa !90
  store i64 %i.vm, ptr %i.vl, align 1, !tbaa !90
  %i.vn = getelementptr inbounds nuw i8, ptr %.12324, i64 48
  %i.vo = getelementptr inbounds nuw i8, ptr %.2253321, i64 24
  %i.vp = getelementptr inbounds nuw i8, ptr %.0249322, i64 24
  %i.vq = load i64, ptr %i.vo, align 1, !tbaa !90
  store i64 %i.vq, ptr %i.vn, align 1, !tbaa !90
  %i.vr = getelementptr inbounds nuw i8, ptr %.12324, i64 56
  %i.vs = load i64, ptr %i.vp, align 1, !tbaa !90
  store i64 %i.vs, ptr %i.vr, align 1, !tbaa !90
  %i.vt = getelementptr inbounds nuw i8, ptr %.12324, i64 64 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %.2253321, i64 32
  %i.vv = getelementptr inbounds nuw i8, ptr %.0249322, i64 32
  %i.vw = add nuw nsw i32 %.0248323, 4            ; 2 uses
  %exitcond465.not.3 = icmp eq i32 %i.vw, %5
  br i1 %exitcond465.not.3, label %.loopexit275, label %.lr.ph325, !llvm.loop !1340

.loopexit276:                                     ; preds = %.loopexit278
  br i1 %brmerge424, label %.loopexit275, label %.lr.ph331.preheader

.lr.ph331.preheader:                              ; preds = %.loopexit276
  br i1 %i.cc, label %.lr.ph331.epil.preheader, label %.lr.ph331

.lr.ph331:                                        ; preds = %.lr.ph331.preheader, %.lr.ph331
  %.14330 = phi ptr [ %i.wl, %.lr.ph331 ], [ %.9334, %.lr.ph331.preheader ] ; 5 uses
  %.4255328 = phi ptr [ %i.wm, %.lr.ph331 ], [ %i.sz, %.lr.ph331.preheader ] ; 5 uses
  %niter945 = phi i32 [ %niter945.next.3, %.lr.ph331 ], [ 0, %.lr.ph331.preheader ]
  %i.vx = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.4255328, <8 x i32> %i.bk, <8 x i32> splat (i32 -1), i8 2)
  %i.vy = trunc <8 x i32> %i.vx to <8 x i16>
  store <8 x i16> %i.vy, ptr %.14330, align 1, !tbaa !90
  %i.vz = getelementptr inbounds nuw i8, ptr %.14330, i64 16
  %i.wa = getelementptr inbounds nuw i8, ptr %.4255328, i64 2
  %i.wb = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.wa, <8 x i32> %i.bk, <8 x i32> splat (i32 -1), i8 2)
  %i.wc = trunc <8 x i32> %i.wb to <8 x i16>
  store <8 x i16> %i.wc, ptr %i.vz, align 1, !tbaa !90
  %i.wd = getelementptr inbounds nuw i8, ptr %.14330, i64 32
  %i.we = getelementptr inbounds nuw i8, ptr %.4255328, i64 4
  %i.wf = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.we, <8 x i32> %i.bk, <8 x i32> splat (i32 -1), i8 2)
  %i.wg = trunc <8 x i32> %i.wf to <8 x i16>
  store <8 x i16> %i.wg, ptr %i.wd, align 1, !tbaa !90
  %i.wh = getelementptr inbounds nuw i8, ptr %.14330, i64 48
  %i.wi = getelementptr inbounds nuw i8, ptr %.4255328, i64 6
  %i.wj = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.wi, <8 x i32> %i.bk, <8 x i32> splat (i32 -1), i8 2)
  %i.wk = trunc <8 x i32> %i.wj to <8 x i16>
  store <8 x i16> %i.wk, ptr %i.wh, align 1, !tbaa !90
  %i.wl = getelementptr inbounds nuw i8, ptr %.14330, i64 64 ; 3 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %.4255328, i64 8 ; 2 uses
  %niter945.next.3 = add nuw nsw i32 %niter945, 4 ; 2 uses
  %niter945.ncmp.3 = icmp eq i32 %niter945.next.3, %unroll_iter944
  br i1 %niter945.ncmp.3, label %.loopexit275.loopexit901.unr-lcssa.a, label %.lr.ph331, !llvm.loop !1341

.loopexit275.loopexit901.unr-lcssa.a:             ; preds = %.lr.ph331
  br i1 %lcmp.mod941.not, label %.loopexit275, label %.lr.ph331.epil.preheader

.lr.ph331.epil.preheader:                         ; preds = %.loopexit275.loopexit901.unr-lcssa.a, %.lr.ph331.preheader
  %.14330.epil.init = phi ptr [ %.9334, %.lr.ph331.preheader ], [ %i.wl, %.loopexit275.loopexit901.unr-lcssa.a ]
  %.4255328.epil.init = phi ptr [ %i.sz, %.lr.ph331.preheader ], [ %i.wm, %.loopexit275.loopexit901.unr-lcssa.a ]
  tail call void @llvm.assume(i1 %lcmp.mod943)
  br label %.lr.ph331.epil

.lr.ph331.epil:                                   ; preds = %.lr.ph331.epil, %.lr.ph331.epil.preheader
  %.14330.epil = phi ptr [ %i.wp, %.lr.ph331.epil ], [ %.14330.epil.init, %.lr.ph331.epil.preheader ] ; 2 uses
  %.4255328.epil = phi ptr [ %i.wq, %.lr.ph331.epil ], [ %.4255328.epil.init, %.lr.ph331.epil.preheader ] ; 2 uses
  %epil.iter940 = phi i32 [ %epil.iter940.next, %.lr.ph331.epil ], [ 0, %.lr.ph331.epil.preheader ]
  %i.wn = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.4255328.epil, <8 x i32> %i.bk, <8 x i32> splat (i32 -1), i8 2)
  %i.wo = trunc <8 x i32> %i.wn to <8 x i16>
  store <8 x i16> %i.wo, ptr %.14330.epil, align 1, !tbaa !90
  %i.wp = getelementptr inbounds nuw i8, ptr %.14330.epil, i64 16 ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %.4255328.epil, i64 2
  %epil.iter940.next = add i32 %epil.iter940, 1   ; 2 uses
  %epil.iter940.cmp.not = icmp eq i32 %epil.iter940.next, %xtraiter939
  br i1 %epil.iter940.cmp.not, label %.loopexit275, label %.lr.ph331.epil, !llvm.loop !1342

.loopexit275.loopexit902.unr-lcssa:               ; preds = %.lr.ph318
  br i1 %lcmp.mod934.not, label %.loopexit275, label %.lr.ph318.epil.preheader

.lr.ph318.epil.preheader:                         ; preds = %.loopexit275.loopexit902.unr-lcssa, %.lr.ph318.preheader
  %.10317.epil.init = phi ptr [ %.9334, %.lr.ph318.preheader ], [ %i.tw, %.loopexit275.loopexit902.unr-lcssa ]
  %.0251315.epil.init = phi ptr [ %i.sz, %.lr.ph318.preheader ], [ %i.tx, %.loopexit275.loopexit902.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod936)
  br label %.lr.ph318.epil

.lr.ph318.epil:                                   ; preds = %.lr.ph318.epil, %.lr.ph318.epil.preheader
  %.10317.epil = phi ptr [ %i.ws, %.lr.ph318.epil ], [ %.10317.epil.init, %.lr.ph318.epil.preheader ] ; 2 uses
  %.0251315.epil = phi ptr [ %i.wt, %.lr.ph318.epil ], [ %.0251315.epil.init, %.lr.ph318.epil.preheader ] ; 2 uses
  %epil.iter933 = phi i32 [ %epil.iter933.next, %.lr.ph318.epil ], [ 0, %.lr.ph318.epil.preheader ]
  %i.wr = load <2 x i64>, ptr %.0251315.epil, align 1, !tbaa !90
  store <2 x i64> %i.wr, ptr %.10317.epil, align 1, !tbaa !90
  %i.ws = getelementptr inbounds nuw i8, ptr %.10317.epil, i64 16 ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %.0251315.epil, i64 16
  %epil.iter933.next = add i32 %epil.iter933, 1   ; 2 uses
  %epil.iter933.cmp.not = icmp eq i32 %epil.iter933.next, %xtraiter932
  br i1 %epil.iter933.cmp.not, label %.loopexit275, label %.lr.ph318.epil, !llvm.loop !1343

.loopexit275:                                     ; preds = %.loopexit275.loopexit902.unr-lcssa, %.lr.ph318.epil, %.loopexit275.loopexit901.unr-lcssa.a, %.lr.ph331.epil, %.lr.ph325.prol.loopexit, %.lr.ph325, %middle.block611, %bb.k, %.loopexit276
  %.15 = phi ptr [ %.9334, %.loopexit276 ], [ %i.wp, %.lr.ph331.epil ], [ %i.vt, %.lr.ph325 ], [ %.9334, %bb.k ], [ %i.ui, %middle.block611 ], [ %.lcssa905.unr, %.lr.ph325.prol.loopexit ], [ %i.wl, %.loopexit275.loopexit901.unr-lcssa.a ], [ %i.tw, %.loopexit275.loopexit902.unr-lcssa ], [ %i.ws, %.lr.ph318.epil ] ; 2 uses
  %indvars.iv.next468 = add nuw nsw i64 %indvars.iv467, 8 ; 3 uses
  %i.wu = icmp slt i64 %indvars.iv.next468, %invariant.op
  %indvar.next587 = add i64 %indvar586, 1
  br i1 %i.wu, label %bb.j, label %.preheader274.loopexit, !llvm.loop !1344

.preheader269.loopexit:                           ; preds = %.loopexit271.us
  %i.wv = trunc nsw i64 %indvars.iv.next477 to i32
  br label %.preheader269

.preheader269.loopexit428:                        ; preds = %..loopexit273_crit_edge.us378.us
  %i.ww = trunc nsw i64 %indvars.iv.next472 to i32
  br label %.preheader269

end_hunk_2
begin_hunk_3_@_ZN4ncnn15Gemm_x86_avx51221create_pipeline_bf16sERKNS_6OptionE.omp_outlined.18:bb.a
          to label %bb.e unwind label %bb.m

bb.d:                                             ; preds = %.noexc42
  invoke fastcc void @_ZN4ncnnL26transpose_pack_B_tile_bf16ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef %i.ad, i32 noundef %.sroa.speculated55, i32 noundef %i.af, i32 noundef %.sroa.speculated)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bb = load ptr, ptr %i.r, align 8, !tbaa !23  ; 2 uses
  %.not.i35 = icmp eq ptr %i.bb, null
  br i1 %.not.i35, label %_ZN4ncnn3MatD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = atomicrmw add ptr %i.bb, i32 -1 acq_rel, align 4
  %i.bd = icmp eq i32 %i.bc, 1
  br i1 %i.bd, label %bb.g, label %_ZN4ncnn3MatD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.be = load ptr, ptr %i.u, align 8, !tbaa !24  ; 3 uses
  %.not3.i36 = icmp eq ptr %i.be, null
  %i.bf = load ptr, ptr %10, align 8, !tbaa !25   ; 3 uses
  br i1 %.not3.i36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !17
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  invoke void %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef %i.bf)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.k, !inline_history !0

bb.i:                                             ; preds = %bb.g
  %.not.i39 = icmp eq ptr %i.bf, null
  br i1 %.not.i39, label %_ZN4ncnn3MatD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef nonnull %i.bf) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.f, %bb.e, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  %i.bl = add nsw i32 %.059, 1
  %i.bm = load i32, ptr %i.b, align 4, !tbaa !51
  %.not.not = icmp slt i32 %.059, %i.bm
  br i1 %.not.not, label %.noexc42, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.m:                                             ; preds = %bb.d, %bb.c
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #30
  unreachable
}

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZN4ncnnL16pack_B_tile_bf16ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #20 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev()
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn27pack_B_tile_bf16_avx512bf16ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !65   ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !77
  %i.f = icmp eq i32 %i.e, 3
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i64, ptr %i.g, align 8, !tbaa !26
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.j = load i32, ptr %i.i, align 4, !tbaa !78
  %i.k = sext i32 %i.j to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = phi i64 [ %i.h, %bb.d ], [ %i.k, %bb.e ] ; 36 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.n = icmp sgt i32 %3, 15
  br i1 %i.n, label %.lr.ph282, label %.preheader249

.lr.ph282:                                        ; preds = %bb.f
  %i.o = mul i32 %i.c, %4
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = icmp ne i32 %i.c, 16
  %i.r = icmp slt i32 %5, 1                       ; 2 uses
  %.idx235 = shl i64 %i.l, 4                      ; 2 uses
  %i.s = icmp sgt i32 %5, 0                       ; 2 uses
  %.idx236 = shl i64 %i.l, 3
  %.idx238 = mul i64 %i.l, 24
  %i.t = icmp ne i32 %i.c, 1
  %i.u = trunc i64 %i.l to i32
  %i.v = insertelement <16 x i32> poison, i32 %i.u, i64 0
  %i.w = shufflevector <16 x i32> %i.v, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.x = mul <16 x i32> %i.w, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 5 uses
  %i.y = zext nneg i32 %3 to i64
  %i.z = sext i32 %2 to i64                       ; 3 uses
  %brmerge = or i1 %i.q, %i.r
  %brmerge372 = or i1 %i.t, %i.r
  %i.aa = add i32 %5, -1
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = shl nuw nsw i64 %i.ab, 5
  %i.ad = shl nsw i64 %i.z, 1                     ; 3 uses
  %i.ae = add nsw i64 %i.ad, 24
  %i.af = mul i64 %i.l, %i.ae
  %i.ag = shl nuw nsw i64 %i.ab, 3                ; 4 uses
  %i.ah = shl nsw i64 %i.p, 1                     ; 4 uses
  %i.ai = shl i64 %i.l, 5
  %i.aj = add nsw i64 %i.ad, 16
  %i.ak = mul i64 %i.l, %i.aj
  %i.al = add nsw i64 %i.ad, 8
  %i.am = mul i64 %i.l, %i.al
  %i.an = mul i64 %i.l, %i.z
  %i.ao = shl i64 %i.an, 1
  %i.ap = add i32 %5, -1                          ; 3 uses
  %xtraiter = and i32 %5, 7                       ; 3 uses
  %i.aq = icmp ult i32 %i.ap, 7
  %unroll_iter = and i32 %5, 2147483640
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod849 = icmp ne i32 %xtraiter, 0
  %i.ar = zext nneg i32 %5 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %5, 8
  %n.vec = and i64 %i.ar, 2147483640              ; 5 uses
  %i.as = shl nuw nsw i64 %n.vec, 5
  %i.at = trunc nuw nsw i64 %n.vec to i32
  %i.au = shl nuw nsw i64 %n.vec, 3               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ar
  %xtraiter852 = and i32 %5, 3                    ; 3 uses
  %i.av = icmp ult i32 %i.ap, 3
  %unroll_iter857 = and i32 %5, 2147483644
  %lcmp.mod854.not = icmp eq i32 %xtraiter852, 0
  %lcmp.mod856 = icmp ne i32 %xtraiter852, 0
  %xtraiter859 = and i32 %5, 3                    ; 3 uses
  %i.aw = icmp ult i32 %i.ap, 3
  %unroll_iter864 = and i32 %5, 2147483644
  %lcmp.mod861.not = icmp eq i32 %xtraiter859, 0
  %lcmp.mod863 = icmp ne i32 %xtraiter859, 0
  br label %bb.g

.preheader249.loopexit:                           ; preds = %.loopexit250
  %i.ax = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader249

.preheader249:                                    ; preds = %.preheader249.loopexit, %bb.f
  %.0228.lcssa = phi i32 [ 0, %bb.f ], [ %i.ax, %.preheader249.loopexit ] ; 3 uses
  %.0208.lcssa = phi ptr [ %i.m, %bb.f ], [ %.8, %.preheader249.loopexit ] ; 2 uses
  %i.ay = or disjoint i32 %.0228.lcssa, 7
  %i.az = icmp slt i32 %i.ay, %3
  br i1 %i.az, label %.lr.ph305, label %.preheader244

.lr.ph305:                                        ; preds = %.preheader249
  %i.ba = mul i32 %i.c, %4
  %i.bb = sext i32 %i.ba to i64                   ; 2 uses
  %i.bc = icmp ne i32 %i.c, 8
  %i.bd = icmp slt i32 %5, 1                      ; 2 uses
  %i.be = icmp eq i32 %i.c, 4
  %.idx234 = shl i64 %i.l, 3
  %i.bf = icmp sgt i32 %5, 0
  %i.bg = icmp ne i32 %i.c, 1
  %i.bh = trunc i64 %i.l to i32
  %i.bi = insertelement <8 x i32> poison, i32 %i.bh, i64 0
  %i.bj = shufflevector <8 x i32> %i.bi, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bk = mul <8 x i32> %i.bj, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 5 uses
  %i.bl = zext i32 %.0228.lcssa to i64            ; 2 uses
  %i.bm = sext i32 %3 to i64
  %i.bn = sext i32 %2 to i64                      ; 2 uses
  %brmerge378 = or i1 %i.bc, %i.bd
  %brmerge381 = or i1 %i.bg, %i.bd
  %invariant.op = add nsw i64 %i.bm, -7
  %i.bo = add i32 %5, -1
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = shl nuw nsw i64 %i.bp, 4
  %i.br = add nsw i64 %i.bn, %i.bl                ; 2 uses
  %i.bs = shl nsw i64 %i.br, 1
  %i.bt = add nsw i64 %i.bs, 8
  %i.bu = mul i64 %i.l, %i.bt
  %i.bv = shl nuw nsw i64 %i.bp, 3                ; 2 uses
  %i.bw = shl nsw i64 %i.bb, 1                    ; 2 uses
  %i.bx = shl i64 %i.l, 4
  %i.by = mul i64 %i.l, %i.br
  %i.bz = shl i64 %i.by, 1
  %i.ca = add i32 %5, -1                          ; 2 uses
  %xtraiter866 = and i32 %5, 7                    ; 3 uses
  %i.cb = icmp ult i32 %i.ca, 7
  %unroll_iter871 = and i32 %5, 2147483640
  %lcmp.mod868.not = icmp eq i32 %xtraiter866, 0
  %lcmp.mod870 = icmp ne i32 %xtraiter866, 0
  %xtraiter873 = and i32 %5, 3                    ; 3 uses
  %i.cc = icmp ult i32 %i.ca, 3
  %unroll_iter878 = and i32 %5, 2147483644
  %lcmp.mod875.not = icmp eq i32 %xtraiter873, 0
  %lcmp.mod877 = icmp ne i32 %xtraiter873, 0
  %i.cd = zext nneg i32 %5 to i64                 ; 2 uses
  %min.iters.check543 = icmp ult i32 %5, 8
  %n.vec545 = and i64 %i.cd, 2147483640           ; 5 uses
  %i.ce = trunc nuw nsw i64 %n.vec545 to i32
  %i.cf = shl nuw nsw i64 %n.vec545, 3            ; 2 uses
  %i.cg = shl nuw nsw i64 %n.vec545, 4
  %cmp.n556 = icmp eq i64 %n.vec545, %i.cd
  br label %bb.j

bb.g:                                             ; preds = %.lr.ph282, %.loopexit250
  %indvar = phi i64 [ 0, %.lr.ph282 ], [ %indvar.next, %.loopexit250 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph282 ], [ %indvars.iv.next, %.loopexit250 ] ; 2 uses
  %.0208281 = phi ptr [ %i.m, %.lr.ph282 ], [ %.8, %.loopexit250 ] ; 18 uses
  %i.ch = mul i64 %i.ai, %indvar                  ; 4 uses
  %i.ci = load ptr, ptr %0, align 8, !tbaa !25    ; 5 uses
  %i.cj = add nsw i64 %indvars.iv, %i.z
  %i.ck = mul i64 %i.l, %i.cj
  %i.cl = getelementptr [2 x i8], ptr %i.ci, i64 %i.ck
  %i.cm = getelementptr [2 x i8], ptr %i.cl, i64 %i.p ; 15 uses
  br i1 %brmerge, label %.loopexit254, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  br i1 %i.aq, label %.lr.ph.epil.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.1209257 = phi ptr [ %i.dj, %.lr.ph ], [ %.0208281, %.lr.ph.preheader ] ; 9 uses
  %.0221255 = phi ptr [ %i.dk, %.lr.ph ], [ %i.cm, %.lr.ph.preheader ] ; 9 uses
  %niter = phi i32 [ %niter.next.7, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.cn = load <4 x i64>, ptr %.0221255, align 1, !tbaa !90
  store <4 x i64> %i.cn, ptr %.1209257, align 1, !tbaa !90
  %i.co = getelementptr inbounds nuw i8, ptr %.1209257, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %.0221255, i64 32
  %i.cq = load <4 x i64>, ptr %i.cp, align 1, !tbaa !90
  store <4 x i64> %i.cq, ptr %i.co, align 1, !tbaa !90
  %i.cr = getelementptr inbounds nuw i8, ptr %.1209257, i64 64
  %i.cs = getelementptr inbounds nuw i8, ptr %.0221255, i64 64
  %i.ct = load <4 x i64>, ptr %i.cs, align 1, !tbaa !90
  store <4 x i64> %i.ct, ptr %i.cr, align 1, !tbaa !90
  %i.cu = getelementptr inbounds nuw i8, ptr %.1209257, i64 96
  %i.cv = getelementptr inbounds nuw i8, ptr %.0221255, i64 96
  %i.cw = load <4 x i64>, ptr %i.cv, align 1, !tbaa !90
  store <4 x i64> %i.cw, ptr %i.cu, align 1, !tbaa !90
  %i.cx = getelementptr inbounds nuw i8, ptr %.1209257, i64 128
  %i.cy = getelementptr inbounds nuw i8, ptr %.0221255, i64 128
  %i.cz = load <4 x i64>, ptr %i.cy, align 1, !tbaa !90
  store <4 x i64> %i.cz, ptr %i.cx, align 1, !tbaa !90
  %i.da = getelementptr inbounds nuw i8, ptr %.1209257, i64 160
  %i.db = getelementptr inbounds nuw i8, ptr %.0221255, i64 160
  %i.dc = load <4 x i64>, ptr %i.db, align 1, !tbaa !90
  store <4 x i64> %i.dc, ptr %i.da, align 1, !tbaa !90
  %i.dd = getelementptr inbounds nuw i8, ptr %.1209257, i64 192
  %i.de = getelementptr inbounds nuw i8, ptr %.0221255, i64 192
  %i.df = load <4 x i64>, ptr %i.de, align 1, !tbaa !90
  store <4 x i64> %i.df, ptr %i.dd, align 1, !tbaa !90
  %i.dg = getelementptr inbounds nuw i8, ptr %.1209257, i64 224
  %i.dh = getelementptr inbounds nuw i8, ptr %.0221255, i64 224
  %i.di = load <4 x i64>, ptr %i.dh, align 1, !tbaa !90
  store <4 x i64> %i.di, ptr %i.dg, align 1, !tbaa !90
  %i.dj = getelementptr inbounds nuw i8, ptr %.1209257, i64 256 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.0221255, i64 256 ; 2 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit250.loopexit843.unr-lcssa, label %.lr.ph, !llvm.loop !1385

.loopexit254:                                     ; preds = %bb.g
  switch i32 %i.c, label %.loopexit251 [
    i32 8, label %bb.h
    i32 4, label %bb.i
  ]

bb.h:                                             ; preds = %.loopexit254
  br i1 %i.s, label %.lr.ph263.preheader, label %.loopexit250

.lr.ph263.preheader:                              ; preds = %bb.h
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.idx235 ; 2 uses
  br i1 %i.av, label %.lr.ph263.epil.preheader, label %.lr.ph263

.lr.ph263:                                        ; preds = %.lr.ph263.preheader, %.lr.ph263
  %.3211262 = phi ptr [ %i.eh, %.lr.ph263 ], [ %.0208281, %.lr.ph263.preheader ] ; 9 uses
  %.0219260 = phi ptr [ %i.ej, %.lr.ph263 ], [ %i.dl, %.lr.ph263.preheader ] ; 5 uses
  %.2223259 = phi ptr [ %i.ei, %.lr.ph263 ], [ %i.cm, %.lr.ph263.preheader ] ; 5 uses
  %niter858 = phi i32 [ %niter858.next.3, %.lr.ph263 ], [ 0, %.lr.ph263.preheader ]
  %i.dm = load <2 x i64>, ptr %.2223259, align 1, !tbaa !90
  store <2 x i64> %i.dm, ptr %.3211262, align 1, !tbaa !90
  %i.dn = getelementptr inbounds nuw i8, ptr %.3211262, i64 16
  %i.do = load <2 x i64>, ptr %.0219260, align 1, !tbaa !90
  store <2 x i64> %i.do, ptr %i.dn, align 1, !tbaa !90
  %i.dp = getelementptr inbounds nuw i8, ptr %.3211262, i64 32
  %i.dq = getelementptr inbounds nuw i8, ptr %.2223259, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %.0219260, i64 16
  %i.ds = load <2 x i64>, ptr %i.dq, align 1, !tbaa !90
  store <2 x i64> %i.ds, ptr %i.dp, align 1, !tbaa !90
  %i.dt = getelementptr inbounds nuw i8, ptr %.3211262, i64 48
  %i.du = load <2 x i64>, ptr %i.dr, align 1, !tbaa !90
  store <2 x i64> %i.du, ptr %i.dt, align 1, !tbaa !90
  %i.dv = getelementptr inbounds nuw i8, ptr %.3211262, i64 64
  %i.dw = getelementptr inbounds nuw i8, ptr %.2223259, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %.0219260, i64 32
  %i.dy = load <2 x i64>, ptr %i.dw, align 1, !tbaa !90
  store <2 x i64> %i.dy, ptr %i.dv, align 1, !tbaa !90
  %i.dz = getelementptr inbounds nuw i8, ptr %.3211262, i64 80
  %i.ea = load <2 x i64>, ptr %i.dx, align 1, !tbaa !90
  store <2 x i64> %i.ea, ptr %i.dz, align 1, !tbaa !90
  %i.eb = getelementptr inbounds nuw i8, ptr %.3211262, i64 96
  %i.ec = getelementptr inbounds nuw i8, ptr %.2223259, i64 48
  %i.ed = getelementptr inbounds nuw i8, ptr %.0219260, i64 48
  %i.ee = load <2 x i64>, ptr %i.ec, align 1, !tbaa !90
  store <2 x i64> %i.ee, ptr %i.eb, align 1, !tbaa !90
  %i.ef = getelementptr inbounds nuw i8, ptr %.3211262, i64 112
  %i.eg = load <2 x i64>, ptr %i.ed, align 1, !tbaa !90
  store <2 x i64> %i.eg, ptr %i.ef, align 1, !tbaa !90
  %i.eh = getelementptr inbounds nuw i8, ptr %.3211262, i64 128 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.2223259, i64 64 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.0219260, i64 64 ; 2 uses
  %niter858.next.3 = add nuw nsw i32 %niter858, 4 ; 2 uses
  %niter858.ncmp.3 = icmp eq i32 %niter858.next.3, %unroll_iter857
  br i1 %niter858.ncmp.3, label %.loopexit250.loopexit840.unr-lcssa, label %.lr.ph263, !llvm.loop !1386

bb.i:                                             ; preds = %.loopexit254
  br i1 %i.s, label %.lr.ph272.preheader, label %.loopexit250

.lr.ph272.preheader:                              ; preds = %bb.i
  %i.ek = getelementptr i8, ptr %i.cm, i64 %.idx238 ; 5 uses
  %i.el = getelementptr i8, ptr %i.cm, i64 %.idx235 ; 5 uses
  %i.em = getelementptr i8, ptr %i.cm, i64 %.idx236 ; 5 uses
  br i1 %min.iters.check, label %.lr.ph272.preheader841, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph272.preheader
  %i.en = getelementptr i8, ptr %.0208281, i64 %i.ac
  %scevgep = getelementptr i8, ptr %i.en, i64 32  ; 4 uses
  %i.eo = getelementptr i8, ptr %i.ci, i64 %i.af
  %i.ep = getelementptr i8, ptr %i.eo, i64 %i.ag
  %i.eq = getelementptr i8, ptr %i.ep, i64 %i.ah
  %i.er = getelementptr i8, ptr %i.eq, i64 8
  %scevgep501 = getelementptr i8, ptr %i.er, i64 %i.ch
  %i.es = getelementptr i8, ptr %i.ci, i64 %i.ak
  %i.et = getelementptr i8, ptr %i.es, i64 %i.ag
  %i.eu = getelementptr i8, ptr %i.et, i64 %i.ah
  %i.ev = getelementptr i8, ptr %i.eu, i64 8
  %scevgep502 = getelementptr i8, ptr %i.ev, i64 %i.ch
  %i.ew = getelementptr i8, ptr %i.ci, i64 %i.am
  %i.ex = getelementptr i8, ptr %i.ew, i64 %i.ag
  %i.ey = getelementptr i8, ptr %i.ex, i64 %i.ah
  %i.ez = getelementptr i8, ptr %i.ey, i64 8
  %scevgep503 = getelementptr i8, ptr %i.ez, i64 %i.ch
  %i.fa = getelementptr i8, ptr %i.ci, i64 %i.ao
  %i.fb = getelementptr i8, ptr %i.fa, i64 %i.ag
  %i.fc = getelementptr i8, ptr %i.fb, i64 %i.ah
  %i.fd = getelementptr i8, ptr %i.fc, i64 8
  %scevgep504 = getelementptr i8, ptr %i.fd, i64 %i.ch
  %bound0 = icmp ult ptr %.0208281, %scevgep501
  %bound1 = icmp ult ptr %i.ek, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0505 = icmp ult ptr %.0208281, %scevgep502
  %bound1506 = icmp ult ptr %i.el, %scevgep
  %found.conflict507 = and i1 %bound0505, %bound1506
  %conflict.rdx = or i1 %found.conflict, %found.conflict507
  %bound0508 = icmp ult ptr %.0208281, %scevgep503
  %bound1509 = icmp ult ptr %i.em, %scevgep
  %found.conflict510 = and i1 %bound0508, %bound1509
  %conflict.rdx511 = or i1 %conflict.rdx, %found.conflict510
  %bound0512 = icmp ult ptr %.0208281, %scevgep504
  %bound1513 = icmp ult ptr %i.cm, %scevgep
  %found.conflict514 = and i1 %bound0512, %bound1513
  %conflict.rdx515 = or i1 %conflict.rdx511, %found.conflict514
  br i1 %conflict.rdx515, label %.lr.ph272.preheader841, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fe = getelementptr i8, ptr %.0208281, i64 %i.as ; 2 uses
  %i.ff = getelementptr i8, ptr %i.ek, i64 %i.au
  %i.fg = getelementptr i8, ptr %i.el, i64 %i.au
  %i.fh = getelementptr i8, ptr %i.em, i64 %i.au
  %i.fi = getelementptr i8, ptr %i.cm, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fj = shl i64 %index, 5
  %next.gep = getelementptr i8, ptr %.0208281, i64 %i.fj
  %i.fk = shl i64 %index, 3                       ; 4 uses
  %next.gep516 = getelementptr i8, ptr %i.ek, i64 %i.fk
  %next.gep517 = getelementptr i8, ptr %i.el, i64 %i.fk
  %next.gep518 = getelementptr i8, ptr %i.em, i64 %i.fk
  %next.gep519 = getelementptr i8, ptr %i.cm, i64 %i.fk
  %wide.load = load <8 x i64>, ptr %next.gep519, align 1, !tbaa !90, !alias.scope !1444
  %wide.load520 = load <8 x i64>, ptr %next.gep518, align 1, !tbaa !90, !alias.scope !1445
  %wide.load521 = load <8 x i64>, ptr %next.gep517, align 1, !tbaa !90, !alias.scope !1446
end_hunk_3
begin_hunk_4_@_ZN4ncnnL16pack_B_tile_bf16ERKNS_3MatERS0_iiii:bb.a
  br label %.preheader240

.lr.ph324.split.split.us:                         ; preds = %.lr.ph324.split
  br i1 %i.in, label %.preheader242.us330.preheader, label %.preheader242.us330.us.preheader

.preheader242.us330.us.preheader:                 ; preds = %.lr.ph324.split.split.us
  %i.ox = zext i32 %.1229.lcssa to i64            ; 2 uses
  %i.oy = sext i32 %2 to i64                      ; 2 uses
  %i.oz = sext i32 %3 to i64
  %invariant.op481 = add nsw i64 %i.oz, -3
  %i.pa = add nsw i64 %i.oy, %i.ox
  %i.pb = mul i64 %i.l, %i.pa
  %i.pc = mul i64 %i.pb, -2
  %i.pd = shl nsw i64 %i.il, 1
  %i.pe = sub i64 %i.pc, %i.pd
  %i.pf = mul i64 %i.l, -8
  %i.pg = zext nneg i32 %5 to i64                 ; 5 uses
  %min.iters.check566.a = icmp ult i32 %5, 8
  %min.iters.check567 = icmp ult i32 %5, 32
  %i.ph = and i64 %i.pg, 24
  %n.vec569 = and i64 %i.pg, 2147483616           ; 5 uses
  %i.pi = trunc nuw nsw i64 %n.vec569 to i32
  %i.pj = shl nuw nsw i64 %n.vec569, 3            ; 2 uses
  %cmp.n580 = icmp eq i64 %n.vec569, %i.pg
  %min.epilog.iters.check = icmp eq i64 %i.ph, 0
  %n.vec584 = and i64 %i.pg, 2147483640           ; 4 uses
  %i.pk = trunc nuw nsw i64 %n.vec584 to i32
  %i.pl = shl nuw nsw i64 %n.vec584, 3            ; 2 uses
  %cmp.n590 = icmp eq i64 %n.vec584, %i.pg
  br label %iter.check

.preheader242.us330.preheader:                    ; preds = %.lr.ph324.split.split.us
  %i.pm = add i32 %3, -4
  %i.pn = sub i32 %i.pm, %.1229.lcssa
  %i.po = and i32 %i.pn, -4
  %i.pp = add i32 %.1229.lcssa, %i.po
  %i.pq = add i32 %i.pp, 4
  br label %.preheader240

iter.check:                                       ; preds = %.preheader242.us330.us.preheader, %..loopexit243_crit_edge.us335.us
  %indvar563 = phi i64 [ 0, %.preheader242.us330.us.preheader ], [ %indvar.next564, %..loopexit243_crit_edge.us335.us ] ; 2 uses
  %indvars.iv422 = phi i64 [ %i.ox, %.preheader242.us330.us.preheader ], [ %indvars.iv.next423, %..loopexit243_crit_edge.us335.us ] ; 2 uses
  %.16323.us328.us = phi ptr [ %.9.lcssa, %.preheader242.us330.us.preheader ], [ %.lcssa493, %..loopexit243_crit_edge.us335.us ] ; 7 uses
  %i.pr = load ptr, ptr %0, align 8, !tbaa !25    ; 2 uses
  %i.ps = add nsw i64 %indvars.iv422, %i.oy
  %i.pt = mul i64 %i.l, %i.ps
  %i.pu = getelementptr inbounds nuw [2 x i8], ptr %i.pr, i64 %i.pt
  %i.pv = getelementptr inbounds [2 x i8], ptr %i.pu, i64 %i.il ; 6 uses
  br i1 %min.iters.check566.a, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck561

vector.memcheck561:                               ; preds = %iter.check
  %i.pw = ptrtoaddr ptr %i.pr to i64
  %i.px = mul i64 %i.pf, %indvar563
  %i.py = add i64 %i.pe, %i.px
  %.16323.us328.us562 = ptrtoaddr ptr %.16323.us328.us to i64
  %i.pz = add i64 %i.py, %.16323.us328.us562
  %i.qa = sub i64 %i.pw, %i.pz
  %diff.check = icmp ugt i64 %i.qa, -256
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck561
  br i1 %min.iters.check567, label %vec.epilog.ph, label %vector.ph568

vector.ph568:                                     ; preds = %vector.main.loop.iter.check
  %i.qb = getelementptr i8, ptr %i.pv, i64 %i.pj
  %i.qc = getelementptr i8, ptr %.16323.us328.us, i64 %i.pj ; 2 uses
  br label %vector.body570

vector.body570:                                   ; preds = %vector.ph568, %vector.body570
  %index571 = phi i64 [ 0, %vector.ph568 ], [ %index.next578, %vector.body570 ] ; 2 uses
  %i.qd = shl i64 %index571, 3                    ; 2 uses
  %next.gep572.a = getelementptr i8, ptr %i.pv, i64 %i.qd ; 4 uses
  %next.gep573 = getelementptr i8, ptr %.16323.us328.us, i64 %i.qd ; 4 uses
  %i.qe = getelementptr i8, ptr %next.gep572.a, i64 64
  %i.qf = getelementptr i8, ptr %next.gep572.a, i64 128
  %i.qg = getelementptr i8, ptr %next.gep572.a, i64 192
  %wide.load574.a = load <8 x i64>, ptr %next.gep572.a, align 1, !tbaa !90
  %wide.load575.a = load <8 x i64>, ptr %i.qe, align 1, !tbaa !90
  %wide.load576.a = load <8 x i64>, ptr %i.qf, align 1, !tbaa !90
  %wide.load577 = load <8 x i64>, ptr %i.qg, align 1, !tbaa !90
  %i.qh = getelementptr i8, ptr %next.gep573, i64 64
  %i.qi = getelementptr i8, ptr %next.gep573, i64 128
  %i.qj = getelementptr i8, ptr %next.gep573, i64 192
  store <8 x i64> %wide.load574.a, ptr %next.gep573, align 1, !tbaa !90
  store <8 x i64> %wide.load575.a, ptr %i.qh, align 1, !tbaa !90
  store <8 x i64> %wide.load576.a, ptr %i.qi, align 1, !tbaa !90
  store <8 x i64> %wide.load577, ptr %i.qj, align 1, !tbaa !90
  %index.next578 = add nuw i64 %index571, 32      ; 2 uses
  %i.qk = icmp eq i64 %index.next578, %n.vec569
  br i1 %i.qk, label %middle.block579, label %vector.body570, !llvm.loop !1414

middle.block579:                                  ; preds = %vector.body570
  br i1 %cmp.n580, label %..loopexit243_crit_edge.us335.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block579
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !104

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec569, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ql = getelementptr i8, ptr %i.pv, i64 %i.pl
  %i.qm = getelementptr i8, ptr %.16323.us328.us, i64 %i.pl ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index585 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next589, %vec.epilog.vector.body ] ; 2 uses
  %i.qn = shl i64 %index585, 3                    ; 2 uses
  %next.gep586.a = getelementptr i8, ptr %i.pv, i64 %i.qn
  %next.gep587 = getelementptr i8, ptr %.16323.us328.us, i64 %i.qn
  %wide.load588 = load <8 x i64>, ptr %next.gep586.a, align 1, !tbaa !90
  store <8 x i64> %wide.load588, ptr %next.gep587, align 1, !tbaa !90
  %index.next589 = add nuw i64 %index585, 8       ; 2 uses
  %i.qo = icmp eq i64 %index.next589, %n.vec584
  br i1 %i.qo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1415

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n590, label %..loopexit243_crit_edge.us335.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck561, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0199310.us332.us.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck561 ], [ %i.pi, %vec.epilog.iter.check ], [ %i.pk, %vec.epilog.middle.block ] ; 4 uses
  %.0200309.us333.us.ph = phi ptr [ %i.pv, %iter.check ], [ %i.pv, %vector.memcheck561 ], [ %i.qb, %vec.epilog.iter.check ], [ %i.ql, %vec.epilog.middle.block ] ; 2 uses
  %.17308.us334.us.ph = phi ptr [ %.16323.us328.us, %iter.check ], [ %.16323.us328.us, %vector.memcheck561 ], [ %i.qc, %vec.epilog.iter.check ], [ %i.qm, %vec.epilog.middle.block ] ; 2 uses
  %i.qp = sub i32 %5, %.0199310.us332.us.ph
  %xtraiter882 = and i32 %i.qp, 7                 ; 2 uses
  %lcmp.mod883.not = icmp eq i32 %xtraiter882, 0
  br i1 %lcmp.mod883.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.0199310.us332.us.prol = phi i32 [ %i.qt, %vec.epilog.scalar.ph.prol ], [ %.0199310.us332.us.ph, %vec.epilog.scalar.ph.preheader ]
  %.0200309.us333.us.prol = phi ptr [ %i.qs, %vec.epilog.scalar.ph.prol ], [ %.0200309.us333.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.17308.us334.us.prol = phi ptr [ %i.qr, %vec.epilog.scalar.ph.prol ], [ %.17308.us334.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter884 = phi i32 [ %prol.iter884.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.qq = load i64, ptr %.0200309.us333.us.prol, align 1, !tbaa !90
  store i64 %i.qq, ptr %.17308.us334.us.prol, align 1, !tbaa !90
  %i.qr = getelementptr inbounds nuw i8, ptr %.17308.us334.us.prol, i64 8 ; 3 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %.0200309.us333.us.prol, i64 8 ; 2 uses
  %i.qt = add nuw nsw i32 %.0199310.us332.us.prol, 1 ; 2 uses
  %prol.iter884.next = add i32 %prol.iter884, 1   ; 2 uses
  %prol.iter884.cmp.not = icmp eq i32 %prol.iter884.next, %xtraiter882
  br i1 %prol.iter884.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1416

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa833.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.qr, %vec.epilog.scalar.ph.prol ]
  %.0199310.us332.us.unr = phi i32 [ %.0199310.us332.us.ph, %vec.epilog.scalar.ph.preheader ], [ %i.qt, %vec.epilog.scalar.ph.prol ]
  %.0200309.us333.us.unr = phi ptr [ %.0200309.us333.us.ph, %vec.epilog.scalar.ph.preheader ], [ %i.qs, %vec.epilog.scalar.ph.prol ]
  %.17308.us334.us.unr = phi ptr [ %.17308.us334.us.ph, %vec.epilog.scalar.ph.preheader ], [ %i.qr, %vec.epilog.scalar.ph.prol ]
  %i.qu = sub i32 %.0199310.us332.us.ph, %5
  %i.qv = icmp ugt i32 %i.qu, -8
  br i1 %i.qv, label %..loopexit243_crit_edge.us335.us, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0199310.us332.us = phi i32 [ %i.ru, %vec.epilog.scalar.ph ], [ %.0199310.us332.us.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.0200309.us333.us = phi ptr [ %i.rt, %vec.epilog.scalar.ph ], [ %.0200309.us333.us.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.17308.us334.us = phi ptr [ %i.rs, %vec.epilog.scalar.ph ], [ %.17308.us334.us.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.qw = load i64, ptr %.0200309.us333.us, align 1, !tbaa !90
  store i64 %i.qw, ptr %.17308.us334.us, align 1, !tbaa !90
  %i.qx = getelementptr inbounds nuw i8, ptr %.17308.us334.us, i64 8
  %i.qy = getelementptr inbounds nuw i8, ptr %.0200309.us333.us, i64 8
  %i.qz = load i64, ptr %i.qy, align 1, !tbaa !90
  store i64 %i.qz, ptr %i.qx, align 1, !tbaa !90
  %i.ra = getelementptr inbounds nuw i8, ptr %.17308.us334.us, i64 16
  %i.rb = getelementptr inbounds nuw i8, ptr %.0200309.us333.us, i64 16
  %i.rc = load i64, ptr %i.rb, align 1, !tbaa !90
  store i64 %i.rc, ptr %i.ra, align 1, !tbaa !90
  %i.rd = getelementptr inbounds nuw i8, ptr %.17308.us334.us, i64 24
  %i.re = getelementptr inbounds nuw i8, ptr %.0200309.us333.us, i64 24
  %i.rf = load i64, ptr %i.re, align 1, !tbaa !90
  store i64 %i.rf, ptr %i.rd, align 1, !tbaa !90
  %i.rg = getelementptr inbounds nuw i8, ptr %.17308.us334.us, i64 32
  %i.rh = getelementptr inbounds nuw i8, ptr %.0200309.us333.us, i64 32
  %i.ri = load i64, ptr %i.rh, align 1, !tbaa !90
  store i64 %i.ri, ptr %i.rg, align 1, !tbaa !90
  %i.rj = getelementptr inbounds nuw i8, ptr %.17308.us334.us, i64 40
  %i.rk = getelementptr inbounds nuw i8, ptr %.0200309.us333.us, i64 40
  %i.rl = load i64, ptr %i.rk, align 1, !tbaa !90
  store i64 %i.rl, ptr %i.rj, align 1, !tbaa !90
  %i.rm = getelementptr inbounds nuw i8, ptr %.17308.us334.us, i64 48
  %i.rn = getelementptr inbounds nuw i8, ptr %.0200309.us333.us, i64 48
  %i.ro = load i64, ptr %i.rn, align 1, !tbaa !90
  store i64 %i.ro, ptr %i.rm, align 1, !tbaa !90
  %i.rp = getelementptr inbounds nuw i8, ptr %.17308.us334.us, i64 56
  %i.rq = getelementptr inbounds nuw i8, ptr %.0200309.us333.us, i64 56
  %i.rr = load i64, ptr %i.rq, align 1, !tbaa !90
  store i64 %i.rr, ptr %i.rp, align 1, !tbaa !90
  %i.rs = getelementptr inbounds nuw i8, ptr %.17308.us334.us, i64 64 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %.0200309.us333.us, i64 64
  %i.ru = add nuw nsw i32 %.0199310.us332.us, 8   ; 2 uses
  %exitcond421.not.7 = icmp eq i32 %i.ru, %5
  br i1 %exitcond421.not.7, label %..loopexit243_crit_edge.us335.us, label %vec.epilog.scalar.ph, !llvm.loop !1417

..loopexit243_crit_edge.us335.us:                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block579
  %.lcssa493 = phi ptr [ %i.qm, %vec.epilog.middle.block ], [ %i.qc, %middle.block579 ], [ %.lcssa833.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.rs, %vec.epilog.scalar.ph ] ; 2 uses
  %indvars.iv.next423 = add nuw nsw i64 %indvars.iv422, 4 ; 3 uses
  %i.rv = icmp slt i64 %indvars.iv.next423, %invariant.op481
  %indvar.next564 = add i64 %indvar563, 1
  br i1 %i.rv, label %iter.check, label %.preheader240.loopexit385, !llvm.loop !1413

bb.j:                                             ; preds = %.lr.ph305, %.loopexit245
  %indvar530 = phi i64 [ 0, %.lr.ph305 ], [ %indvar.next531, %.loopexit245 ] ; 2 uses
  %indvars.iv418 = phi i64 [ %i.bl, %.lr.ph305 ], [ %indvars.iv.next419, %.loopexit245 ] ; 2 uses
  %.9304 = phi ptr [ %.0208.lcssa, %.lr.ph305 ], [ %.15, %.loopexit245 ] ; 13 uses
  %i.rw = mul i64 %i.bx, %indvar530               ; 2 uses
  %i.rx = load ptr, ptr %0, align 8, !tbaa !25    ; 3 uses
  %i.ry = add i64 %indvars.iv418, %i.bn
  %i.rz = mul i64 %i.l, %i.ry
  %i.sa = getelementptr [2 x i8], ptr %i.rx, i64 %i.rz
  %i.sb = getelementptr [2 x i8], ptr %i.sa, i64 %i.bb ; 10 uses
  br i1 %brmerge378, label %.loopexit248, label %.lr.ph288.preheader

.lr.ph288.preheader:                              ; preds = %bb.j
  br i1 %i.cb, label %.lr.ph288.epil.preheader, label %.lr.ph288

.lr.ph288:                                        ; preds = %.lr.ph288.preheader, %.lr.ph288
  %.0205286 = phi ptr [ %i.sz, %.lr.ph288 ], [ %i.sb, %.lr.ph288.preheader ] ; 9 uses
  %.10285 = phi ptr [ %i.sy, %.lr.ph288 ], [ %.9304, %.lr.ph288.preheader ] ; 9 uses
  %niter872 = phi i32 [ %niter872.next.7, %.lr.ph288 ], [ 0, %.lr.ph288.preheader ]
  %i.sc = load <2 x i64>, ptr %.0205286, align 1, !tbaa !90
  store <2 x i64> %i.sc, ptr %.10285, align 1, !tbaa !90
  %i.sd = getelementptr inbounds nuw i8, ptr %.10285, i64 16
  %i.se = getelementptr inbounds nuw i8, ptr %.0205286, i64 16
  %i.sf = load <2 x i64>, ptr %i.se, align 1, !tbaa !90
  store <2 x i64> %i.sf, ptr %i.sd, align 1, !tbaa !90
  %i.sg = getelementptr inbounds nuw i8, ptr %.10285, i64 32
  %i.sh = getelementptr inbounds nuw i8, ptr %.0205286, i64 32
  %i.si = load <2 x i64>, ptr %i.sh, align 1, !tbaa !90
  store <2 x i64> %i.si, ptr %i.sg, align 1, !tbaa !90
  %i.sj = getelementptr inbounds nuw i8, ptr %.10285, i64 48
  %i.sk = getelementptr inbounds nuw i8, ptr %.0205286, i64 48
  %i.sl = load <2 x i64>, ptr %i.sk, align 1, !tbaa !90
  store <2 x i64> %i.sl, ptr %i.sj, align 1, !tbaa !90
  %i.sm = getelementptr inbounds nuw i8, ptr %.10285, i64 64
  %i.sn = getelementptr inbounds nuw i8, ptr %.0205286, i64 64
  %i.so = load <2 x i64>, ptr %i.sn, align 1, !tbaa !90
  store <2 x i64> %i.so, ptr %i.sm, align 1, !tbaa !90
  %i.sp = getelementptr inbounds nuw i8, ptr %.10285, i64 80
  %i.sq = getelementptr inbounds nuw i8, ptr %.0205286, i64 80
  %i.sr = load <2 x i64>, ptr %i.sq, align 1, !tbaa !90
  store <2 x i64> %i.sr, ptr %i.sp, align 1, !tbaa !90
  %i.ss = getelementptr inbounds nuw i8, ptr %.10285, i64 96
  %i.st = getelementptr inbounds nuw i8, ptr %.0205286, i64 96
  %i.su = load <2 x i64>, ptr %i.st, align 1, !tbaa !90
  store <2 x i64> %i.su, ptr %i.ss, align 1, !tbaa !90
  %i.sv = getelementptr inbounds nuw i8, ptr %.10285, i64 112
  %i.sw = getelementptr inbounds nuw i8, ptr %.0205286, i64 112
  %i.sx = load <2 x i64>, ptr %i.sw, align 1, !tbaa !90
  store <2 x i64> %i.sx, ptr %i.sv, align 1, !tbaa !90
  %i.sy = getelementptr inbounds nuw i8, ptr %.10285, i64 128 ; 3 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %.0205286, i64 128 ; 2 uses
  %niter872.next.7 = add nuw nsw i32 %niter872, 8 ; 2 uses
  %niter872.ncmp.7 = icmp eq i32 %niter872.next.7, %unroll_iter871
  br i1 %niter872.ncmp.7, label %.loopexit245.loopexit836.unr-lcssa, label %.lr.ph288, !llvm.loop !1418

.loopexit248:                                     ; preds = %bb.j
  br i1 %i.be, label %bb.k, label %.loopexit246

bb.k:                                             ; preds = %.loopexit248
  br i1 %i.bf, label %.lr.ph295.preheader, label %.loopexit245

.lr.ph295.preheader:                              ; preds = %bb.k
  %i.ta = getelementptr i8, ptr %i.sb, i64 %.idx234 ; 5 uses
  br i1 %min.iters.check543, label %.lr.ph295.preheader834, label %vector.memcheck528

vector.memcheck528:                               ; preds = %.lr.ph295.preheader
  %i.tb = getelementptr i8, ptr %.9304, i64 %i.bq
  %scevgep532.a = getelementptr i8, ptr %i.tb, i64 16 ; 2 uses
  %i.tc = getelementptr i8, ptr %i.rx, i64 %i.bu
  %i.td = getelementptr i8, ptr %i.tc, i64 %i.bv
  %i.te = getelementptr i8, ptr %i.td, i64 %i.bw
  %i.tf = getelementptr i8, ptr %i.te, i64 8
  %scevgep533.a = getelementptr i8, ptr %i.tf, i64 %i.rw
  %i.tg = getelementptr i8, ptr %i.rx, i64 %i.bz
  %i.th = getelementptr i8, ptr %i.tg, i64 %i.bv
  %i.ti = getelementptr i8, ptr %i.th, i64 %i.bw
  %i.tj = getelementptr i8, ptr %i.ti, i64 8
  %scevgep534 = getelementptr i8, ptr %i.tj, i64 %i.rw
  %bound0535 = icmp ult ptr %.9304, %scevgep533.a
  %bound1536 = icmp ult ptr %i.ta, %scevgep532.a
  %found.conflict537 = and i1 %bound0535, %bound1536
  %bound0538 = icmp ult ptr %.9304, %scevgep534
  %bound1539 = icmp ult ptr %i.sb, %scevgep532.a
  %found.conflict540 = and i1 %bound0538, %bound1539
  %conflict.rdx541 = or i1 %found.conflict537, %found.conflict540
  br i1 %conflict.rdx541, label %.lr.ph295.preheader834, label %vector.ph544

vector.ph544:                                     ; preds = %vector.memcheck528
  %i.tk = getelementptr i8, ptr %i.ta, i64 %i.cf
  %i.tl = getelementptr i8, ptr %i.sb, i64 %i.cf
  %i.tm = getelementptr i8, ptr %.9304, i64 %i.cg ; 2 uses
  br label %vector.body546

vector.body546:                                   ; preds = %vector.body546, %vector.ph544
  %index547 = phi i64 [ 0, %vector.ph544 ], [ %index.next554, %vector.body546 ] ; 3 uses
  %i.tn = shl i64 %index547, 3                    ; 2 uses
  %next.gep548.a = getelementptr i8, ptr %i.ta, i64 %i.tn
  %next.gep549.a = getelementptr i8, ptr %i.sb, i64 %i.tn
  %i.to = shl i64 %index547, 4
  %next.gep550 = getelementptr i8, ptr %.9304, i64 %i.to
  %wide.load551.a = load <8 x i64>, ptr %next.gep549.a, align 1, !tbaa !90, !alias.scope !1456
  %wide.load552 = load <8 x i64>, ptr %next.gep548.a, align 1, !tbaa !90, !alias.scope !1457
  %interleaved.vec553 = shufflevector <8 x i64> %wide.load551.a, <8 x i64> %wide.load552, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i64> %interleaved.vec553, ptr %next.gep550, align 1, !tbaa !90, !alias.scope !1458, !noalias !1459
  %index.next554 = add nuw i64 %index547, 8       ; 2 uses
  %i.tp = icmp eq i64 %index.next554, %n.vec545
  br i1 %i.tp, label %middle.block555, label %vector.body546, !llvm.loop !1423

middle.block555:                                  ; preds = %vector.body546
  br i1 %cmp.n556, label %.loopexit245, label %.lr.ph295.preheader834

.lr.ph295.preheader834:                           ; preds = %vector.memcheck528, %.lr.ph295.preheader, %middle.block555
  %.0202294.ph = phi i32 [ 0, %vector.memcheck528 ], [ 0, %.lr.ph295.preheader ], [ %i.ce, %middle.block555 ] ; 4 uses
  %.0203293.ph = phi ptr [ %i.ta, %vector.memcheck528 ], [ %i.ta, %.lr.ph295.preheader ], [ %i.tk, %middle.block555 ] ; 2 uses
  %.2207292.ph = phi ptr [ %i.sb, %vector.memcheck528 ], [ %i.sb, %.lr.ph295.preheader ], [ %i.tl, %middle.block555 ] ; 2 uses
  %.12291.ph = phi ptr [ %.9304, %vector.memcheck528 ], [ %.9304, %.lr.ph295.preheader ], [ %i.tm, %middle.block555 ] ; 2 uses
  %i.tq = sub i32 %5, %.0202294.ph
  %xtraiter880 = and i32 %i.tq, 3                 ; 2 uses
  %lcmp.mod881.not = icmp eq i32 %xtraiter880, 0
  br i1 %lcmp.mod881.not, label %.lr.ph295.prol.loopexit, label %.lr.ph295.prol

.lr.ph295.prol:                                   ; preds = %.lr.ph295.preheader834, %.lr.ph295.prol
  %.0202294.prol = phi i32 [ %i.tx, %.lr.ph295.prol ], [ %.0202294.ph, %.lr.ph295.preheader834 ]
  %.0203293.prol = phi ptr [ %i.tw, %.lr.ph295.prol ], [ %.0203293.ph, %.lr.ph295.preheader834 ] ; 2 uses
  %.2207292.prol = phi ptr [ %i.tv, %.lr.ph295.prol ], [ %.2207292.ph, %.lr.ph295.preheader834 ] ; 2 uses
  %.12291.prol = phi ptr [ %i.tu, %.lr.ph295.prol ], [ %.12291.ph, %.lr.ph295.preheader834 ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph295.prol ], [ 0, %.lr.ph295.preheader834 ]
  %i.tr = load i64, ptr %.2207292.prol, align 1, !tbaa !90
  store i64 %i.tr, ptr %.12291.prol, align 1, !tbaa !90
  %i.ts = getelementptr inbounds nuw i8, ptr %.12291.prol, i64 8
  %i.tt = load i64, ptr %.0203293.prol, align 1, !tbaa !90
  store i64 %i.tt, ptr %i.ts, align 1, !tbaa !90
  %i.tu = getelementptr inbounds nuw i8, ptr %.12291.prol, i64 16 ; 3 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %.2207292.prol, i64 8 ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %.0203293.prol, i64 8 ; 2 uses
  %i.tx = add nuw nsw i32 %.0202294.prol, 1       ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter880
  br i1 %prol.iter.cmp.not, label %.lr.ph295.prol.loopexit, label %.lr.ph295.prol, !llvm.loop !1424

.lr.ph295.prol.loopexit:                          ; preds = %.lr.ph295.prol, %.lr.ph295.preheader834
  %.lcssa839.unr = phi ptr [ poison, %.lr.ph295.preheader834 ], [ %i.tu, %.lr.ph295.prol ]
  %.0202294.unr = phi i32 [ %.0202294.ph, %.lr.ph295.preheader834 ], [ %i.tx, %.lr.ph295.prol ]
  %.0203293.unr = phi ptr [ %.0203293.ph, %.lr.ph295.preheader834 ], [ %i.tw, %.lr.ph295.prol ]
  %.2207292.unr = phi ptr [ %.2207292.ph, %.lr.ph295.preheader834 ], [ %i.tv, %.lr.ph295.prol ]
  %.12291.unr = phi ptr [ %.12291.ph, %.lr.ph295.preheader834 ], [ %i.tu, %.lr.ph295.prol ]
  %i.ty = sub i32 %.0202294.ph, %5
  %i.tz = icmp ugt i32 %i.ty, -4
  br i1 %i.tz, label %.loopexit245, label %.lr.ph295

.lr.ph295:                                        ; preds = %.lr.ph295.prol.loopexit, %.lr.ph295
  %.0202294 = phi i32 [ %i.uy, %.lr.ph295 ], [ %.0202294.unr, %.lr.ph295.prol.loopexit ]
  %.0203293 = phi ptr [ %i.ux, %.lr.ph295 ], [ %.0203293.unr, %.lr.ph295.prol.loopexit ] ; 5 uses
  %.2207292 = phi ptr [ %i.uw, %.lr.ph295 ], [ %.2207292.unr, %.lr.ph295.prol.loopexit ] ; 5 uses
  %.12291 = phi ptr [ %i.uv, %.lr.ph295 ], [ %.12291.unr, %.lr.ph295.prol.loopexit ] ; 9 uses
  %i.ua = load i64, ptr %.2207292, align 1, !tbaa !90
  store i64 %i.ua, ptr %.12291, align 1, !tbaa !90
  %i.ub = getelementptr inbounds nuw i8, ptr %.12291, i64 8
  %i.uc = load i64, ptr %.0203293, align 1, !tbaa !90
  store i64 %i.uc, ptr %i.ub, align 1, !tbaa !90
  %i.ud = getelementptr inbounds nuw i8, ptr %.12291, i64 16
  %i.ue = getelementptr inbounds nuw i8, ptr %.2207292, i64 8
  %i.uf = getelementptr inbounds nuw i8, ptr %.0203293, i64 8
  %i.ug = load i64, ptr %i.ue, align 1, !tbaa !90
  store i64 %i.ug, ptr %i.ud, align 1, !tbaa !90
  %i.uh = getelementptr inbounds nuw i8, ptr %.12291, i64 24
  %i.ui = load i64, ptr %i.uf, align 1, !tbaa !90
  store i64 %i.ui, ptr %i.uh, align 1, !tbaa !90
  %i.uj = getelementptr inbounds nuw i8, ptr %.12291, i64 32
  %i.uk = getelementptr inbounds nuw i8, ptr %.2207292, i64 16
  %i.ul = getelementptr inbounds nuw i8, ptr %.0203293, i64 16
  %i.um = load i64, ptr %i.uk, align 1, !tbaa !90
  store i64 %i.um, ptr %i.uj, align 1, !tbaa !90
  %i.un = getelementptr inbounds nuw i8, ptr %.12291, i64 40
  %i.uo = load i64, ptr %i.ul, align 1, !tbaa !90
  store i64 %i.uo, ptr %i.un, align 1, !tbaa !90
  %i.up = getelementptr inbounds nuw i8, ptr %.12291, i64 48
  %i.uq = getelementptr inbounds nuw i8, ptr %.2207292, i64 24
  %i.ur = getelementptr inbounds nuw i8, ptr %.0203293, i64 24
  %i.us = load i64, ptr %i.uq, align 1, !tbaa !90
  store i64 %i.us, ptr %i.up, align 1, !tbaa !90
  %i.ut = getelementptr inbounds nuw i8, ptr %.12291, i64 56
  %i.uu = load i64, ptr %i.ur, align 1, !tbaa !90
  store i64 %i.uu, ptr %i.ut, align 1, !tbaa !90
  %i.uv = getelementptr inbounds nuw i8, ptr %.12291, i64 64 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %.2207292, i64 32
  %i.ux = getelementptr inbounds nuw i8, ptr %.0203293, i64 32
  %i.uy = add nuw nsw i32 %.0202294, 4            ; 2 uses
  %exitcond416.not.3 = icmp eq i32 %i.uy, %5
  br i1 %exitcond416.not.3, label %.loopexit245, label %.lr.ph295, !llvm.loop !1425

.loopexit246:                                     ; preds = %.loopexit248
  br i1 %brmerge381, label %.loopexit245, label %.lr.ph301.preheader

.lr.ph301.preheader:                              ; preds = %.loopexit246
  br i1 %i.cc, label %.lr.ph301.epil.preheader, label %.lr.ph301

.lr.ph301:                                        ; preds = %.lr.ph301.preheader, %.lr.ph301
  %.4299 = phi ptr [ %i.vo, %.lr.ph301 ], [ %i.sb, %.lr.ph301.preheader ] ; 5 uses
  %.14298 = phi ptr [ %i.vn, %.lr.ph301 ], [ %.9304, %.lr.ph301.preheader ] ; 5 uses
  %niter879 = phi i32 [ %niter879.next.3, %.lr.ph301 ], [ 0, %.lr.ph301.preheader ]
  %i.uz = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.4299, <8 x i32> %i.bk, <8 x i32> splat (i32 -1), i8 2)
  %i.va = trunc <8 x i32> %i.uz to <8 x i16>
  store <8 x i16> %i.va, ptr %.14298, align 1, !tbaa !90
  %i.vb = getelementptr inbounds nuw i8, ptr %.14298, i64 16
  %i.vc = getelementptr inbounds nuw i8, ptr %.4299, i64 2
  %i.vd = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.vc, <8 x i32> %i.bk, <8 x i32> splat (i32 -1), i8 2)
  %i.ve = trunc <8 x i32> %i.vd to <8 x i16>
  store <8 x i16> %i.ve, ptr %i.vb, align 1, !tbaa !90
  %i.vf = getelementptr inbounds nuw i8, ptr %.14298, i64 32
  %i.vg = getelementptr inbounds nuw i8, ptr %.4299, i64 4
  %i.vh = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.vg, <8 x i32> %i.bk, <8 x i32> splat (i32 -1), i8 2)
  %i.vi = trunc <8 x i32> %i.vh to <8 x i16>
  store <8 x i16> %i.vi, ptr %i.vf, align 1, !tbaa !90
  %i.vj = getelementptr inbounds nuw i8, ptr %.14298, i64 48
  %i.vk = getelementptr inbounds nuw i8, ptr %.4299, i64 6
  %i.vl = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.vk, <8 x i32> %i.bk, <8 x i32> splat (i32 -1), i8 2)
  %i.vm = trunc <8 x i32> %i.vl to <8 x i16>
  store <8 x i16> %i.vm, ptr %i.vj, align 1, !tbaa !90
  %i.vn = getelementptr inbounds nuw i8, ptr %.14298, i64 64 ; 3 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %.4299, i64 8 ; 2 uses
  %niter879.next.3 = add nuw nsw i32 %niter879, 4 ; 2 uses
  %niter879.ncmp.3 = icmp eq i32 %niter879.next.3, %unroll_iter878
  br i1 %niter879.ncmp.3, label %.loopexit245.loopexit835.unr-lcssa.a, label %.lr.ph301, !llvm.loop !1426

.loopexit245.loopexit835.unr-lcssa.a:             ; preds = %.lr.ph301
  br i1 %lcmp.mod875.not, label %.loopexit245, label %.lr.ph301.epil.preheader

.lr.ph301.epil.preheader:                         ; preds = %.loopexit245.loopexit835.unr-lcssa.a, %.lr.ph301.preheader
  %.4299.epil.init = phi ptr [ %i.sb, %.lr.ph301.preheader ], [ %i.vo, %.loopexit245.loopexit835.unr-lcssa.a ]
  %.14298.epil.init = phi ptr [ %.9304, %.lr.ph301.preheader ], [ %i.vn, %.loopexit245.loopexit835.unr-lcssa.a ]
  tail call void @llvm.assume(i1 %lcmp.mod877)
  br label %.lr.ph301.epil

.lr.ph301.epil:                                   ; preds = %.lr.ph301.epil, %.lr.ph301.epil.preheader
  %.4299.epil = phi ptr [ %i.vs, %.lr.ph301.epil ], [ %.4299.epil.init, %.lr.ph301.epil.preheader ] ; 2 uses
  %.14298.epil = phi ptr [ %i.vr, %.lr.ph301.epil ], [ %.14298.epil.init, %.lr.ph301.epil.preheader ] ; 2 uses
  %epil.iter874 = phi i32 [ %epil.iter874.next, %.lr.ph301.epil ], [ 0, %.lr.ph301.epil.preheader ]
  %i.vp = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.4299.epil, <8 x i32> %i.bk, <8 x i32> splat (i32 -1), i8 2)
  %i.vq = trunc <8 x i32> %i.vp to <8 x i16>
  store <8 x i16> %i.vq, ptr %.14298.epil, align 1, !tbaa !90
  %i.vr = getelementptr inbounds nuw i8, ptr %.14298.epil, i64 16 ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %.4299.epil, i64 2
  %epil.iter874.next = add i32 %epil.iter874, 1   ; 2 uses
  %epil.iter874.cmp.not = icmp eq i32 %epil.iter874.next, %xtraiter873
  br i1 %epil.iter874.cmp.not, label %.loopexit245, label %.lr.ph301.epil, !llvm.loop !1427

.loopexit245.loopexit836.unr-lcssa:               ; preds = %.lr.ph288
  br i1 %lcmp.mod868.not, label %.loopexit245, label %.lr.ph288.epil.preheader

.lr.ph288.epil.preheader:                         ; preds = %.loopexit245.loopexit836.unr-lcssa, %.lr.ph288.preheader
  %.0205286.epil.init = phi ptr [ %i.sb, %.lr.ph288.preheader ], [ %i.sz, %.loopexit245.loopexit836.unr-lcssa ]
  %.10285.epil.init = phi ptr [ %.9304, %.lr.ph288.preheader ], [ %i.sy, %.loopexit245.loopexit836.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod870)
  br label %.lr.ph288.epil

.lr.ph288.epil:                                   ; preds = %.lr.ph288.epil, %.lr.ph288.epil.preheader
  %.0205286.epil = phi ptr [ %i.vv, %.lr.ph288.epil ], [ %.0205286.epil.init, %.lr.ph288.epil.preheader ] ; 2 uses
  %.10285.epil = phi ptr [ %i.vu, %.lr.ph288.epil ], [ %.10285.epil.init, %.lr.ph288.epil.preheader ] ; 2 uses
  %epil.iter867 = phi i32 [ %epil.iter867.next, %.lr.ph288.epil ], [ 0, %.lr.ph288.epil.preheader ]
  %i.vt = load <2 x i64>, ptr %.0205286.epil, align 1, !tbaa !90
  store <2 x i64> %i.vt, ptr %.10285.epil, align 1, !tbaa !90
  %i.vu = getelementptr inbounds nuw i8, ptr %.10285.epil, i64 16 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %.0205286.epil, i64 16
  %epil.iter867.next = add i32 %epil.iter867, 1   ; 2 uses
  %epil.iter867.cmp.not = icmp eq i32 %epil.iter867.next, %xtraiter866
  br i1 %epil.iter867.cmp.not, label %.loopexit245, label %.lr.ph288.epil, !llvm.loop !1428

.loopexit245:                                     ; preds = %.loopexit245.loopexit836.unr-lcssa, %.lr.ph288.epil, %.loopexit245.loopexit835.unr-lcssa.a, %.lr.ph301.epil, %.lr.ph295.prol.loopexit, %.lr.ph295, %middle.block555, %bb.k, %.loopexit246
  %.15 = phi ptr [ %.9304, %.loopexit246 ], [ %i.vr, %.lr.ph301.epil ], [ %i.uv, %.lr.ph295 ], [ %.9304, %bb.k ], [ %i.tm, %middle.block555 ], [ %.lcssa839.unr, %.lr.ph295.prol.loopexit ], [ %i.vn, %.loopexit245.loopexit835.unr-lcssa.a ], [ %i.sy, %.loopexit245.loopexit836.unr-lcssa ], [ %i.vu, %.lr.ph288.epil ] ; 2 uses
  %indvars.iv.next419 = add nuw nsw i64 %indvars.iv418, 8 ; 3 uses
  %i.vw = icmp slt i64 %indvars.iv.next419, %invariant.op
  %indvar.next531 = add i64 %indvar530, 1
  br i1 %i.vw, label %bb.j, label %.preheader244.loopexit, !llvm.loop !1429

.preheader240.loopexit:                           ; preds = %.loopexit241.us
  %i.vx = trunc nsw i64 %indvars.iv.next428 to i32
  br label %.preheader240

.preheader240.loopexit385:                        ; preds = %..loopexit243_crit_edge.us335.us
  %i.vy = trunc nsw i64 %indvars.iv.next423 to i32
  br label %.preheader240

end_hunk_4
