Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avx2?download=true
inline.NumInlined: 22
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN4ncnn21pack_A_tile_int8_avx2ERKNS_3MatERS0_iiii:bb.a
  %lcmp.mod196.not = icmp eq i32 %xtraiter194, 0
  %lcmp.mod199 = icmp ne i32 %xtraiter194, 0
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i, %.lr.ph165.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph165.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %.0121163.i = phi ptr [ %i.c, %.lr.ph165.i ], [ %.2.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ae = add nsw i64 %indvars.iv.i, %i.k
  %i.af = load ptr, ptr %0, align 8, !tbaa !14
  %i.ag = load i32, ptr %i.e, align 4, !tbaa !15  ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = mul nsw i64 %i.ae, %i.ah
  %i.aj = load i64, ptr %i.f, align 8, !tbaa !16
  %i.ak = mul i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ak
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.g ; 3 uses
  %i.an = insertelement <8 x i32> poison, i32 %i.ag, i64 0
  %i.ao = shufflevector <8 x i32> %i.an, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ap = mul <8 x i32> %i.ao, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 10 uses
  br i1 %i.h, label %.lr.ph.i.preheader, label %.preheader151.i

.lr.ph.i.preheader:                               ; preds = %bb.f
  br i1 %i.o, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.preheader151.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %.preheader151.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader151.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.1122154.i.epil.init = phi ptr [ %.0121163.i, %.lr.ph.i.preheader ], [ %i.cl, %.preheader151.i.loopexit.unr-lcssa ]
  %.0131153.i.epil.init = phi ptr [ %i.am, %.lr.ph.i.preheader ], [ %i.cm, %.preheader151.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod191)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.1122154.i.epil = phi ptr [ %i.av, %.lr.ph.i.epil ], [ %.1122154.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.0131153.i.epil = phi ptr [ %i.aw, %.lr.ph.i.epil ], [ %.0131153.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.aq = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.0131153.i.epil, <8 x i32> %i.ap, <8 x i32> splat (i32 -1), i8 1)
  %i.ar = bitcast <8 x i32> %i.aq to <32 x i8>
  %i.as = shufflevector <32 x i8> %i.ar, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.at = bitcast <32 x i8> %i.as to <4 x i64>
  %i.au = shufflevector <4 x i64> %i.at, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.au, ptr %.1122154.i.epil, align 1, !tbaa !17
  %i.av = getelementptr inbounds nuw i8, ptr %.1122154.i.epil, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0131153.i.epil, i64 2 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader151.i, label %.lr.ph.i.epil, !llvm.loop !32

.preheader151.i:                                  ; preds = %.preheader151.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.f
  %.0133.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.i, %.lr.ph.i.epil ], [ %i.i, %.preheader151.i.loopexit.unr-lcssa ] ; 5 uses
  %.0131.lcssa.i = phi ptr [ %i.am, %bb.f ], [ %i.cm, %.preheader151.i.loopexit.unr-lcssa ], [ %i.aw, %.lr.ph.i.epil ] ; 2 uses
  %.1122.lcssa.i = phi ptr [ %.0121163.i, %bb.f ], [ %i.cl, %.preheader151.i.loopexit.unr-lcssa ], [ %i.av, %.lr.ph.i.epil ] ; 3 uses
  %i.ax = icmp slt i32 %.0133.lcssa.i, %5
  br i1 %i.ax, label %.lr.ph160.i.preheader, label %._crit_edge.i

.lr.ph160.i.preheader:                            ; preds = %.preheader151.i
  %i.ay = sub i32 %5, %.0133.lcssa.i
  %xtraiter192 = and i32 %i.ay, 3                 ; 2 uses
  %lcmp.mod193.not = icmp eq i32 %xtraiter192, 0
  br i1 %lcmp.mod193.not, label %.lr.ph160.i.prol.loopexit, label %.lr.ph160.i.prol

.lr.ph160.i.prol:                                 ; preds = %.lr.ph160.i.preheader, %.lr.ph160.i.prol
  %.2159.i.prol = phi ptr [ %i.bg, %.lr.ph160.i.prol ], [ %.1122.lcssa.i, %.lr.ph160.i.preheader ] ; 2 uses
  %.1132158.i.prol = phi ptr [ %i.bh, %.lr.ph160.i.prol ], [ %.0131.lcssa.i, %.lr.ph160.i.preheader ] ; 2 uses
  %.1134157.i.prol = phi i32 [ %i.bi, %.lr.ph160.i.prol ], [ %.0133.lcssa.i, %.lr.ph160.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph160.i.prol ], [ 0, %.lr.ph160.i.preheader ]
  %i.az = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.1132158.i.prol, <8 x i32> %i.ap, <8 x i32> splat (i32 -1), i8 1)
  %i.ba = bitcast <8 x i32> %i.az to <32 x i8>
  %i.bb = shufflevector <32 x i8> %i.ba, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bc = bitcast <32 x i8> %i.bb to <8 x i32>
  %i.bd = shufflevector <8 x i32> %i.bc, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.be = bitcast <4 x i32> %i.bd to <2 x i64>
  %i.bf = extractelement <2 x i64> %i.be, i64 0
  store i64 %i.bf, ptr %.2159.i.prol, align 1, !tbaa !17
  %i.bg = getelementptr inbounds nuw i8, ptr %.2159.i.prol, i64 8 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.1132158.i.prol, i64 1 ; 2 uses
  %i.bi = add nuw nsw i32 %.1134157.i.prol, 1     ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter192
  br i1 %prol.iter.cmp.not, label %.lr.ph160.i.prol.loopexit, label %.lr.ph160.i.prol, !llvm.loop !33

.lr.ph160.i.prol.loopexit:                        ; preds = %.lr.ph160.i.prol, %.lr.ph160.i.preheader
  %.lcssa188.unr = phi ptr [ poison, %.lr.ph160.i.preheader ], [ %i.bg, %.lr.ph160.i.prol ]
  %.2159.i.unr = phi ptr [ %.1122.lcssa.i, %.lr.ph160.i.preheader ], [ %i.bg, %.lr.ph160.i.prol ]
  %.1132158.i.unr = phi ptr [ %.0131.lcssa.i, %.lr.ph160.i.preheader ], [ %i.bh, %.lr.ph160.i.prol ]
  %.1134157.i.unr = phi i32 [ %.0133.lcssa.i, %.lr.ph160.i.preheader ], [ %i.bi, %.lr.ph160.i.prol ]
  %i.bj = sub i32 %.0133.lcssa.i, %5
  %i.bk = icmp ugt i32 %i.bj, -4
  br i1 %i.bk, label %._crit_edge.i, label %.lr.ph160.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.1122154.i = phi ptr [ %i.cl, %.lr.ph.i ], [ %.0121163.i, %.lr.ph.i.preheader ] ; 5 uses
  %.0131153.i = phi ptr [ %i.cm, %.lr.ph.i ], [ %i.am, %.lr.ph.i.preheader ] ; 5 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.bl = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.0131153.i, <8 x i32> %i.ap, <8 x i32> splat (i32 -1), i8 1)
  %i.bm = bitcast <8 x i32> %i.bl to <32 x i8>
  %i.bn = shufflevector <32 x i8> %i.bm, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bo = bitcast <32 x i8> %i.bn to <4 x i64>
  %i.bp = shufflevector <4 x i64> %i.bo, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.bp, ptr %.1122154.i, align 1, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %.1122154.i, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %.0131153.i, i64 2
  %i.bs = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.br, <8 x i32> %i.ap, <8 x i32> splat (i32 -1), i8 1)
  %i.bt = bitcast <8 x i32> %i.bs to <32 x i8>
  %i.bu = shufflevector <32 x i8> %i.bt, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bv = bitcast <32 x i8> %i.bu to <4 x i64>
  %i.bw = shufflevector <4 x i64> %i.bv, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.bw, ptr %i.bq, align 1, !tbaa !17
  %i.bx = getelementptr inbounds nuw i8, ptr %.1122154.i, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %.0131153.i, i64 4
  %i.bz = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.by, <8 x i32> %i.ap, <8 x i32> splat (i32 -1), i8 1)
  %i.ca = bitcast <8 x i32> %i.bz to <32 x i8>
  %i.cb = shufflevector <32 x i8> %i.ca, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cc = bitcast <32 x i8> %i.cb to <4 x i64>
  %i.cd = shufflevector <4 x i64> %i.cc, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.cd, ptr %i.bx, align 1, !tbaa !17
  %i.ce = getelementptr inbounds nuw i8, ptr %.1122154.i, i64 48
  %i.cf = getelementptr inbounds nuw i8, ptr %.0131153.i, i64 6
  %i.cg = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.cf, <8 x i32> %i.ap, <8 x i32> splat (i32 -1), i8 1)
  %i.ch = bitcast <8 x i32> %i.cg to <32 x i8>
  %i.ci = shufflevector <32 x i8> %i.ch, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cj = bitcast <32 x i8> %i.ci to <4 x i64>
  %i.ck = shufflevector <4 x i64> %i.cj, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.ck, ptr %i.ce, align 1, !tbaa !17
  %i.cl = getelementptr inbounds nuw i8, ptr %.1122154.i, i64 64 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0131153.i, i64 8 ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader151.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !34

.lr.ph160.i:                                      ; preds = %.lr.ph160.i.prol.loopexit, %.lr.ph160.i
  %.2159.i = phi ptr [ %i.dv, %.lr.ph160.i ], [ %.2159.i.unr, %.lr.ph160.i.prol.loopexit ] ; 5 uses
  %.1132158.i = phi ptr [ %i.dw, %.lr.ph160.i ], [ %.1132158.i.unr, %.lr.ph160.i.prol.loopexit ] ; 5 uses
  %.1134157.i = phi i32 [ %i.dx, %.lr.ph160.i ], [ %.1134157.i.unr, %.lr.ph160.i.prol.loopexit ]
  %i.cn = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.1132158.i, <8 x i32> %i.ap, <8 x i32> splat (i32 -1), i8 1)
  %i.co = bitcast <8 x i32> %i.cn to <32 x i8>
  %i.cp = shufflevector <32 x i8> %i.co, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cq = bitcast <32 x i8> %i.cp to <8 x i32>
  %i.cr = shufflevector <8 x i32> %i.cq, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.cs = bitcast <4 x i32> %i.cr to <2 x i64>
  %i.ct = extractelement <2 x i64> %i.cs, i64 0
  store i64 %i.ct, ptr %.2159.i, align 1, !tbaa !17
  %i.cu = getelementptr inbounds nuw i8, ptr %.2159.i, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %.1132158.i, i64 1
  %i.cw = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.cv, <8 x i32> %i.ap, <8 x i32> splat (i32 -1), i8 1)
  %i.cx = bitcast <8 x i32> %i.cw to <32 x i8>
  %i.cy = shufflevector <32 x i8> %i.cx, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cz = bitcast <32 x i8> %i.cy to <8 x i32>
  %i.da = shufflevector <8 x i32> %i.cz, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.db = bitcast <4 x i32> %i.da to <2 x i64>
  %i.dc = extractelement <2 x i64> %i.db, i64 0
  store i64 %i.dc, ptr %i.cu, align 1, !tbaa !17
  %i.dd = getelementptr inbounds nuw i8, ptr %.2159.i, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %.1132158.i, i64 2
  %i.df = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.de, <8 x i32> %i.ap, <8 x i32> splat (i32 -1), i8 1)
  %i.dg = bitcast <8 x i32> %i.df to <32 x i8>
  %i.dh = shufflevector <32 x i8> %i.dg, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.di = bitcast <32 x i8> %i.dh to <8 x i32>
  %i.dj = shufflevector <8 x i32> %i.di, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.dk = bitcast <4 x i32> %i.dj to <2 x i64>
  %i.dl = extractelement <2 x i64> %i.dk, i64 0
  store i64 %i.dl, ptr %i.dd, align 1, !tbaa !17
  %i.dm = getelementptr inbounds nuw i8, ptr %.2159.i, i64 24
  %i.dn = getelementptr inbounds nuw i8, ptr %.1132158.i, i64 3
  %i.do = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.dn, <8 x i32> %i.ap, <8 x i32> splat (i32 -1), i8 1)
  %i.dp = bitcast <8 x i32> %i.do to <32 x i8>
  %i.dq = shufflevector <32 x i8> %i.dp, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dr = bitcast <32 x i8> %i.dq to <8 x i32>
  %i.ds = shufflevector <8 x i32> %i.dr, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.dt = bitcast <4 x i32> %i.ds to <2 x i64>
  %i.du = extractelement <2 x i64> %i.dt, i64 0
  store i64 %i.du, ptr %i.dm, align 1, !tbaa !17
  %i.dv = getelementptr inbounds nuw i8, ptr %.2159.i, i64 32 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.1132158.i, i64 4
  %i.dx = add nuw nsw i32 %.1134157.i, 4          ; 2 uses
  %exitcond.not.i.3 = icmp eq i32 %i.dx, %5
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph160.i, !llvm.loop !35

._crit_edge.i:                                    ; preds = %.lr.ph160.i.prol.loopexit, %.lr.ph160.i, %.preheader151.i
  %.2.lcssa.i = phi ptr [ %.1122.lcssa.i, %.preheader151.i ], [ %.lcssa188.unr, %.lr.ph160.i.prol.loopexit ], [ %i.dv, %.lr.ph160.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.dy = or disjoint i64 %indvars.iv.next.i, 7
  %i.dz = icmp samesign ult i64 %i.dy, %i.j
  br i1 %i.dz, label %bb.f, label %.preheader150.loopexit.i, !llvm.loop !36

.preheader148.loopexit.i:                         ; preds = %._crit_edge180.i
  %i.ea = trunc nuw nsw i64 %indvars.iv.next238.i to i32
  br label %.preheader148.i

.preheader148.i:                                  ; preds = %.preheader148.loopexit.i, %.preheader150.i
  %.1124.lcssa.i = phi i32 [ %.0123.lcssa.i, %.preheader150.i ], [ %i.ea, %.preheader148.loopexit.i ] ; 3 uses
  %.3.lcssa.i = phi ptr [ %.0121.lcssa.i, %.preheader150.i ], [ %.5.lcssa.i, %.preheader148.loopexit.i ] ; 2 uses
  %i.eb = or disjoint i32 %.1124.lcssa.i, 1
  %i.ec = icmp slt i32 %i.eb, %3
  br i1 %i.ec, label %.lr.ph206.i, label %.preheader.i

.lr.ph206.i:                                      ; preds = %.preheader148.i
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ef = sext i32 %4 to i64                      ; 4 uses
  %i.eg = icmp sgt i32 %5, 1
  %i.eh = and i32 %5, -2                          ; 3 uses
  %i.ei = zext i32 %.1124.lcssa.i to i64
  %i.ej = sext i32 %3 to i64
  %i.ek = sext i32 %2 to i64
  %invariant.op263.i = add nsw i64 %i.ej, -1
  %i.el = add i32 %5, -2
  %i.em = zext i32 %i.el to i64                   ; 2 uses
  %i.en = shl nuw nsw i64 %i.em, 1
  %i.eo = and i64 %i.en, 8589934588
  %i.ep = and i64 %i.em, 4294967294
  %i.eq = add i32 %5, -2                          ; 3 uses
  %i.er = lshr i32 %i.eq, 1
  %narrow = add nuw i32 %i.er, 1
  %i.es = zext i32 %narrow to i64                 ; 5 uses
  %min.iters.check93.a = icmp ult i32 %i.eq, 14
  %min.iters.check95 = icmp ult i32 %i.eq, 62
  %i.et = and i64 %i.es, 24
  %n.vec97 = and i64 %i.es, 4294967264            ; 6 uses
  %i.eu = trunc nuw i64 %n.vec97 to i32
  %i.ev = shl i32 %i.eu, 1
  %i.ew = shl nuw nsw i64 %n.vec97, 1             ; 2 uses
  %i.ex = shl nuw nsw i64 %n.vec97, 2
  %cmp.n110 = icmp eq i64 %n.vec97, %i.es
  %min.epilog.iters.check118 = icmp eq i64 %i.et, 0
  %n.vec120 = and i64 %i.es, 4294967288           ; 5 uses
  %i.ey = trunc nuw i64 %n.vec120 to i32
  %i.ez = shl i32 %i.ey, 1
  %i.fa = shl nuw nsw i64 %n.vec120, 1            ; 2 uses
  %i.fb = shl nuw nsw i64 %n.vec120, 2
  %cmp.n135 = icmp eq i64 %n.vec120, %i.es
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge180.i, %.lr.ph184.i
  %indvars.iv237.i = phi i64 [ %i.x, %.lr.ph184.i ], [ %indvars.iv.next238.i, %._crit_edge180.i ] ; 2 uses
  %.3183.i = phi ptr [ %.0121.lcssa.i, %.lr.ph184.i ], [ %.5.lcssa.i, %._crit_edge180.i ] ; 3 uses
  %i.fc = add nsw i64 %indvars.iv237.i, %i.z
  %i.fd = load ptr, ptr %0, align 8, !tbaa !14
  %i.fe = load i32, ptr %i.s, align 4, !tbaa !15  ; 2 uses
  %i.ff = sext i32 %i.fe to i64
  %i.fg = mul nsw i64 %i.fc, %i.ff
  %i.fh = load i64, ptr %i.t, align 8, !tbaa !16
  %i.fi = mul i64 %i.fg, %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fi
  %i.fk = getelementptr inbounds i8, ptr %i.fj, i64 %i.u ; 3 uses
  %i.fl = insertelement <4 x i32> poison, i32 %i.fe, i64 0
  %i.fm = shufflevector <4 x i32> %i.fl, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fn = mul <4 x i32> %i.fm, <i32 0, i32 1, i32 2, i32 3> ; 10 uses
  br i1 %i.v, label %.lr.ph172.i.preheader, label %.preheader149.i

.lr.ph172.i.preheader:                            ; preds = %bb.g
  br i1 %i.ad, label %.lr.ph172.i.epil.preheader, label %.lr.ph172.i

.preheader149.i.loopexit.unr-lcssa:               ; preds = %.lr.ph172.i
  br i1 %lcmp.mod196.not, label %.preheader149.i, label %.lr.ph172.i.epil.preheader

.lr.ph172.i.epil.preheader:                       ; preds = %.preheader149.i.loopexit.unr-lcssa, %.lr.ph172.i.preheader
  %.4170.i.epil.init = phi ptr [ %.3183.i, %.lr.ph172.i.preheader ], [ %i.hh, %.preheader149.i.loopexit.unr-lcssa ]
  %.0129168.i.epil.init = phi ptr [ %i.fk, %.lr.ph172.i.preheader ], [ %i.hi, %.preheader149.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod199)
  br label %.lr.ph172.i.epil

.lr.ph172.i.epil:                                 ; preds = %.lr.ph172.i.epil, %.lr.ph172.i.epil.preheader
  %.4170.i.epil = phi ptr [ %i.ft, %.lr.ph172.i.epil ], [ %.4170.i.epil.init, %.lr.ph172.i.epil.preheader ] ; 2 uses
  %.0129168.i.epil = phi ptr [ %i.fu, %.lr.ph172.i.epil ], [ %.0129168.i.epil.init, %.lr.ph172.i.epil.preheader ] ; 2 uses
  %epil.iter195 = phi i32 [ %epil.iter195.next, %.lr.ph172.i.epil ], [ 0, %.lr.ph172.i.epil.preheader ]
  %i.fo = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.0129168.i.epil, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.fp = bitcast <4 x i32> %i.fo to <16 x i8>
  %i.fq = shufflevector <16 x i8> %i.fp, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fr = bitcast <16 x i8> %i.fq to <2 x i64>
  %i.fs = extractelement <2 x i64> %i.fr, i64 0
  store i64 %i.fs, ptr %.4170.i.epil, align 1, !tbaa !17
  %i.ft = getelementptr inbounds nuw i8, ptr %.4170.i.epil, i64 8 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.0129168.i.epil, i64 2 ; 2 uses
  %epil.iter195.next = add i32 %epil.iter195, 1   ; 2 uses
  %epil.iter195.cmp.not = icmp eq i32 %epil.iter195.next, %xtraiter194
  br i1 %epil.iter195.cmp.not, label %.preheader149.i, label %.lr.ph172.i.epil, !llvm.loop !37

.preheader149.i:                                  ; preds = %.preheader149.i.loopexit.unr-lcssa, %.lr.ph172.i.epil, %bb.g
  %.0129.lcssa.i = phi ptr [ %i.fk, %bb.g ], [ %i.hi, %.preheader149.i.loopexit.unr-lcssa ], [ %i.fu, %.lr.ph172.i.epil ] ; 2 uses
  %.0127.lcssa.i = phi i32 [ 0, %bb.g ], [ %i.w, %.lr.ph172.i.epil ], [ %i.w, %.preheader149.i.loopexit.unr-lcssa ] ; 5 uses
  %.4.lcssa.i = phi ptr [ %.3183.i, %bb.g ], [ %i.hh, %.preheader149.i.loopexit.unr-lcssa ], [ %i.ft, %.lr.ph172.i.epil ] ; 3 uses
  %i.fv = icmp slt i32 %.0127.lcssa.i, %5
  br i1 %i.fv, label %.lr.ph179.i.preheader, label %._crit_edge180.i

.lr.ph179.i.preheader:                            ; preds = %.preheader149.i
  %i.fw = sub i32 %5, %.0127.lcssa.i
  %xtraiter202 = and i32 %i.fw, 3                 ; 2 uses
  %lcmp.mod203.not = icmp eq i32 %xtraiter202, 0
  br i1 %lcmp.mod203.not, label %.lr.ph179.i.prol.loopexit, label %.lr.ph179.i.prol

.lr.ph179.i.prol:                                 ; preds = %.lr.ph179.i.preheader, %.lr.ph179.i.prol
  %.5178.i.prol = phi ptr [ %i.gc, %.lr.ph179.i.prol ], [ %.4.lcssa.i, %.lr.ph179.i.preheader ] ; 2 uses
  %.1128177.i.prol = phi i32 [ %i.ge, %.lr.ph179.i.prol ], [ %.0127.lcssa.i, %.lr.ph179.i.preheader ]
  %.1130176.i.prol = phi ptr [ %i.gd, %.lr.ph179.i.prol ], [ %.0129.lcssa.i, %.lr.ph179.i.preheader ] ; 2 uses
  %prol.iter204 = phi i32 [ %prol.iter204.next, %.lr.ph179.i.prol ], [ 0, %.lr.ph179.i.preheader ]
  %i.fx = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.1130176.i.prol, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.fy = bitcast <4 x i32> %i.fx to <16 x i8>
  %i.fz = shufflevector <16 x i8> %i.fy, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ga = bitcast <16 x i8> %i.fz to <4 x float>
  %i.gb = extractelement <4 x float> %i.ga, i64 0
  store float %i.gb, ptr %.5178.i.prol, align 1, !tbaa !17
  %i.gc = getelementptr inbounds nuw i8, ptr %.5178.i.prol, i64 4 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.1130176.i.prol, i64 1 ; 2 uses
  %i.ge = add nuw nsw i32 %.1128177.i.prol, 1     ; 2 uses
  %prol.iter204.next = add i32 %prol.iter204, 1   ; 2 uses
  %prol.iter204.cmp.not = icmp eq i32 %prol.iter204.next, %xtraiter202
  br i1 %prol.iter204.cmp.not, label %.lr.ph179.i.prol.loopexit, label %.lr.ph179.i.prol, !llvm.loop !38

.lr.ph179.i.prol.loopexit:                        ; preds = %.lr.ph179.i.prol, %.lr.ph179.i.preheader
  %.lcssa185.unr = phi ptr [ poison, %.lr.ph179.i.preheader ], [ %i.gc, %.lr.ph179.i.prol ]
  %.5178.i.unr = phi ptr [ %.4.lcssa.i, %.lr.ph179.i.preheader ], [ %i.gc, %.lr.ph179.i.prol ]
  %.1128177.i.unr = phi i32 [ %.0127.lcssa.i, %.lr.ph179.i.preheader ], [ %i.ge, %.lr.ph179.i.prol ]
  %.1130176.i.unr = phi ptr [ %.0129.lcssa.i, %.lr.ph179.i.preheader ], [ %i.gd, %.lr.ph179.i.prol ]
  %i.gf = sub i32 %.0127.lcssa.i, %5
  %i.gg = icmp ugt i32 %i.gf, -4
  br i1 %i.gg, label %._crit_edge180.i, label %.lr.ph179.i

.lr.ph172.i:                                      ; preds = %.lr.ph172.i.preheader, %.lr.ph172.i
  %.4170.i = phi ptr [ %i.hh, %.lr.ph172.i ], [ %.3183.i, %.lr.ph172.i.preheader ] ; 5 uses
  %.0129168.i = phi ptr [ %i.hi, %.lr.ph172.i ], [ %i.fk, %.lr.ph172.i.preheader ] ; 5 uses
  %niter201 = phi i32 [ %niter201.next.3, %.lr.ph172.i ], [ 0, %.lr.ph172.i.preheader ]
  %i.gh = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.0129168.i, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.gi = bitcast <4 x i32> %i.gh to <16 x i8>
  %i.gj = shufflevector <16 x i8> %i.gi, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gk = bitcast <16 x i8> %i.gj to <2 x i64>
  %i.gl = extractelement <2 x i64> %i.gk, i64 0
  store i64 %i.gl, ptr %.4170.i, align 1, !tbaa !17
  %i.gm = getelementptr inbounds nuw i8, ptr %.4170.i, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %.0129168.i, i64 2
  %i.go = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.gn, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.gp = bitcast <4 x i32> %i.go to <16 x i8>
  %i.gq = shufflevector <16 x i8> %i.gp, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gr = bitcast <16 x i8> %i.gq to <2 x i64>
  %i.gs = extractelement <2 x i64> %i.gr, i64 0
  store i64 %i.gs, ptr %i.gm, align 1, !tbaa !17
  %i.gt = getelementptr inbounds nuw i8, ptr %.4170.i, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %.0129168.i, i64 4
  %i.gv = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.gu, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.gw = bitcast <4 x i32> %i.gv to <16 x i8>
  %i.gx = shufflevector <16 x i8> %i.gw, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gy = bitcast <16 x i8> %i.gx to <2 x i64>
  %i.gz = extractelement <2 x i64> %i.gy, i64 0
  store i64 %i.gz, ptr %i.gt, align 1, !tbaa !17
  %i.ha = getelementptr inbounds nuw i8, ptr %.4170.i, i64 24
  %i.hb = getelementptr inbounds nuw i8, ptr %.0129168.i, i64 6
  %i.hc = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.hb, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.hd = bitcast <4 x i32> %i.hc to <16 x i8>
  %i.he = shufflevector <16 x i8> %i.hd, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hf = bitcast <16 x i8> %i.he to <2 x i64>
  %i.hg = extractelement <2 x i64> %i.hf, i64 0
  store i64 %i.hg, ptr %i.ha, align 1, !tbaa !17
  %i.hh = getelementptr inbounds nuw i8, ptr %.4170.i, i64 32 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.0129168.i, i64 8 ; 3 uses
  %niter201.next.3 = add i32 %niter201, 4         ; 2 uses
  %niter201.ncmp.3.not = icmp eq i32 %niter201.next.3, %unroll_iter200
  br i1 %niter201.ncmp.3.not, label %.preheader149.i.loopexit.unr-lcssa, label %.lr.ph172.i, !llvm.loop !39

.lr.ph179.i:                                      ; preds = %.lr.ph179.i.prol.loopexit, %.lr.ph179.i
  %.5178.i = phi ptr [ %i.ij, %.lr.ph179.i ], [ %.5178.i.unr, %.lr.ph179.i.prol.loopexit ] ; 5 uses
  %.1128177.i = phi i32 [ %i.il, %.lr.ph179.i ], [ %.1128177.i.unr, %.lr.ph179.i.prol.loopexit ]
  %.1130176.i = phi ptr [ %i.ik, %.lr.ph179.i ], [ %.1130176.i.unr, %.lr.ph179.i.prol.loopexit ] ; 5 uses
  %i.hj = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.1130176.i, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.hk = bitcast <4 x i32> %i.hj to <16 x i8>
  %i.hl = shufflevector <16 x i8> %i.hk, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hm = bitcast <16 x i8> %i.hl to <4 x float>
  %i.hn = extractelement <4 x float> %i.hm, i64 0
  store float %i.hn, ptr %.5178.i, align 1, !tbaa !17
  %i.ho = getelementptr inbounds nuw i8, ptr %.5178.i, i64 4
  %i.hp = getelementptr inbounds nuw i8, ptr %.1130176.i, i64 1
  %i.hq = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.hp, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.hr = bitcast <4 x i32> %i.hq to <16 x i8>
  %i.hs = shufflevector <16 x i8> %i.hr, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ht = bitcast <16 x i8> %i.hs to <4 x float>
  %i.hu = extractelement <4 x float> %i.ht, i64 0
  store float %i.hu, ptr %i.ho, align 1, !tbaa !17
  %i.hv = getelementptr inbounds nuw i8, ptr %.5178.i, i64 8
  %i.hw = getelementptr inbounds nuw i8, ptr %.1130176.i, i64 2
  %i.hx = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.hw, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.hy = bitcast <4 x i32> %i.hx to <16 x i8>
  %i.hz = shufflevector <16 x i8> %i.hy, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ia = bitcast <16 x i8> %i.hz to <4 x float>
  %i.ib = extractelement <4 x float> %i.ia, i64 0
  store float %i.ib, ptr %i.hv, align 1, !tbaa !17
  %i.ic = getelementptr inbounds nuw i8, ptr %.5178.i, i64 12
  %i.id = getelementptr inbounds nuw i8, ptr %.1130176.i, i64 3
  %i.ie = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.id, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.if = bitcast <4 x i32> %i.ie to <16 x i8>
  %i.ig = shufflevector <16 x i8> %i.if, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ih = bitcast <16 x i8> %i.ig to <4 x float>
  %i.ii = extractelement <4 x float> %i.ih, i64 0
  store float %i.ii, ptr %i.ic, align 1, !tbaa !17
  %i.ij = getelementptr inbounds nuw i8, ptr %.5178.i, i64 16 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.1130176.i, i64 4
  %i.il = add nuw nsw i32 %.1128177.i, 4          ; 2 uses
  %exitcond236.not.i.3 = icmp eq i32 %i.il, %5
  br i1 %exitcond236.not.i.3, label %._crit_edge180.i, label %.lr.ph179.i, !llvm.loop !40

._crit_edge180.i:                                 ; preds = %.lr.ph179.i.prol.loopexit, %.lr.ph179.i, %.preheader149.i
  %.5.lcssa.i = phi ptr [ %.4.lcssa.i, %.preheader149.i ], [ %.lcssa185.unr, %.lr.ph179.i.prol.loopexit ], [ %i.ij, %.lr.ph179.i ] ; 2 uses
  %indvars.iv.next238.i = add nuw nsw i64 %indvars.iv237.i, 4 ; 3 uses
  %i.im = icmp slt i64 %indvars.iv.next238.i, %invariant.op.i
  br i1 %i.im, label %bb.g, label %.preheader148.loopexit.i, !llvm.loop !41

.preheader.loopexit.i:                            ; preds = %._crit_edge202.i
  %i.in = trunc nuw nsw i64 %indvars.iv.next242.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader148.i
  %.2125.lcssa.i = phi i32 [ %.1124.lcssa.i, %.preheader148.i ], [ %i.in, %.preheader.loopexit.i ] ; 2 uses
  %.6.lcssa.i = phi ptr [ %.3.lcssa.i, %.preheader148.i ], [ %.8.lcssa.i, %.preheader.loopexit.i ]
  %i.io = icmp slt i32 %.2125.lcssa.i, %3
  br i1 %i.io, label %.lr.ph218.i, label %_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph218.i:                                      ; preds = %.preheader.i
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ir = sext i32 %4 to i64                      ; 2 uses
  %i.is = icmp sgt i32 %5, 0
  br i1 %i.is, label %.lr.ph213.preheader.i, label %_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph213.preheader.i:                            ; preds = %.lr.ph218.i
  %i.it = sext i32 %.2125.lcssa.i to i64
  %i.iu = sext i32 %2 to i64
  %wide.trip.count.i = sext i32 %3 to i64
  %i.iv = zext nneg i32 %5 to i64                 ; 5 uses
  %min.iters.check142.a = icmp ult i32 %5, 8
  %min.iters.check144 = icmp ult i32 %5, 128
  %i.iw = and i64 %i.iv, 120
  %n.vec146 = and i64 %i.iv, 2147483520           ; 6 uses
  %i.ix = trunc nuw nsw i64 %n.vec146 to i32
  %cmp.n157 = icmp eq i64 %n.vec146, %i.iv
  %min.epilog.iters.check164 = icmp eq i64 %i.iw, 0
  %n.vec166 = and i64 %i.iv, 2147483640           ; 5 uses
  %i.iy = trunc nuw nsw i64 %n.vec166 to i32
  %cmp.n174 = icmp eq i64 %n.vec166, %i.iv
  br label %iter.check161

bb.h:                                             ; preds = %._crit_edge202.i, %.lr.ph206.i
  %indvars.iv241.i = phi i64 [ %i.ei, %.lr.ph206.i ], [ %indvars.iv.next242.i, %._crit_edge202.i ] ; 2 uses
  %.6205.i = phi ptr [ %.3.lcssa.i, %.lr.ph206.i ], [ %.8.lcssa.i, %._crit_edge202.i ] ; 10 uses
  %i.iz = add i64 %indvars.iv241.i, %i.ek         ; 2 uses
  %i.ja = load ptr, ptr %0, align 8, !tbaa !14    ; 4 uses
  %i.jb = load i32, ptr %i.ed, align 4, !tbaa !15
  %i.jc = sext i32 %i.jb to i64
  %i.jd = load i64, ptr %i.ee, align 8, !tbaa !16
  %i.je = mul i64 %i.jd, %i.jc                    ; 2 uses
  %i.jf = mul i64 %i.je, %i.iz                    ; 2 uses
  %i.jg = getelementptr i8, ptr %i.ja, i64 %i.jf
  %i.jh = getelementptr i8, ptr %i.jg, i64 %i.ef  ; 8 uses
  %i.ji = add nsw i64 %i.iz, 1
  %i.jj = mul i64 %i.je, %i.ji                    ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jj
  %i.jl = getelementptr inbounds i8, ptr %i.jk, i64 %i.ef ; 7 uses
  br i1 %i.eg, label %iter.check115, label %.preheader147.i

iter.check115:                                    ; preds = %bb.h
  br i1 %min.iters.check93.a, label %.lr.ph192.i.preheader, label %vector.memcheck79

vector.memcheck79:                                ; preds = %iter.check115
  %i.jm = getelementptr i8, ptr %.6205.i, i64 %i.eo
  %scevgep80 = getelementptr i8, ptr %i.jm, i64 4 ; 2 uses
  %scevgep81 = getelementptr i8, ptr %i.ja, i64 %i.ef
  %scevgep82.a = getelementptr i8, ptr %scevgep81, i64 %i.jj
  %i.jn = getelementptr i8, ptr %i.ja, i64 %i.ep
  %i.jo = getelementptr i8, ptr %i.jn, i64 %i.ef
  %scevgep83.a = getelementptr i8, ptr %i.jo, i64 2 ; 2 uses
  %scevgep84 = getelementptr i8, ptr %scevgep83.a, i64 %i.jj
  %scevgep85 = getelementptr i8, ptr %scevgep83.a, i64 %i.jf
  %bound086 = icmp ult ptr %.6205.i, %scevgep84
  %bound187 = icmp ult ptr %scevgep82.a, %scevgep80
  %found.conflict88 = and i1 %bound086, %bound187
  %bound089 = icmp ult ptr %.6205.i, %scevgep85
  %bound190 = icmp ult ptr %i.jh, %scevgep80
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx92 = or i1 %found.conflict88, %found.conflict91
  br i1 %conflict.rdx92, label %.lr.ph192.i.preheader, label %vector.main.loop.iter.check94

vector.main.loop.iter.check94:                    ; preds = %vector.memcheck79
  br i1 %min.iters.check95, label %vec.epilog.ph119, label %vector.ph96

vector.ph96:                                      ; preds = %vector.main.loop.iter.check94
  %i.jp = getelementptr i8, ptr %i.jl, i64 %i.ew  ; 2 uses
  %i.jq = getelementptr i8, ptr %i.jh, i64 %i.ew  ; 2 uses
  %i.jr = getelementptr i8, ptr %.6205.i, i64 %i.ex ; 2 uses
  br label %vector.body98

vector.body98:                                    ; preds = %vector.ph96, %vector.body98
  %index99 = phi i64 [ 0, %vector.ph96 ], [ %index.next108, %vector.body98 ] ; 3 uses
  %i.js = shl i64 %index99, 1                     ; 2 uses
  %next.gep100.a = getelementptr i8, ptr %i.jl, i64 %i.js
  %next.gep101 = getelementptr i8, ptr %i.jh, i64 %i.js
  %i.jt = shl i64 %index99, 2
  %next.gep102 = getelementptr i8, ptr %.6205.i, i64 %i.jt
  %wide.vec = load <64 x i8>, ptr %next.gep101, align 1, !tbaa !17, !alias.scope !63
  %wide.vec104 = load <64 x i8>, ptr %next.gep100.a, align 1, !tbaa !17, !alias.scope !64
  %interleaved.vec107 = shufflevector <64 x i8> %wide.vec, <64 x i8> %wide.vec104, <128 x i32> <i32 0, i32 1, i32 64, i32 65, i32 2, i32 3, i32 66, i32 67, i32 4, i32 5, i32 68, i32 69, i32 6, i32 7, i32 70, i32 71, i32 8, i32 9, i32 72, i32 73, i32 10, i32 11, i32 74, i32 75, i32 12, i32 13, i32 76, i32 77, i32 14, i32 15, i32 78, i32 79, i32 16, i32 17, i32 80, i32 81, i32 18, i32 19, i32 82, i32 83, i32 20, i32 21, i32 84, i32 85, i32 22, i32 23, i32 86, i32 87, i32 24, i32 25, i32 88, i32 89, i32 26, i32 27, i32 90, i32 91, i32 28, i32 29, i32 92, i32 93, i32 30, i32 31, i32 94, i32 95, i32 32, i32 33, i32 96, i32 97, i32 34, i32 35, i32 98, i32 99, i32 36, i32 37, i32 100, i32 101, i32 38, i32 39, i32 102, i32 103, i32 40, i32 41, i32 104, i32 105, i32 42, i32 43, i32 106, i32 107, i32 44, i32 45, i32 108, i32 109, i32 46, i32 47, i32 110, i32 111, i32 48, i32 49, i32 112, i32 113, i32 50, i32 51, i32 114, i32 115, i32 52, i32 53, i32 116, i32 117, i32 54, i32 55, i32 118, i32 119, i32 56, i32 57, i32 120, i32 121, i32 58, i32 59, i32 122, i32 123, i32 60, i32 61, i32 124, i32 125, i32 62, i32 63, i32 126, i32 127>
  store <128 x i8> %interleaved.vec107, ptr %next.gep102, align 1, !tbaa !17, !alias.scope !65, !noalias !66
  %index.next108 = add nuw i64 %index99, 32       ; 2 uses
  %i.ju = icmp eq i64 %index.next108, %n.vec97
  br i1 %i.ju, label %middle.block109, label %vector.body98, !llvm.loop !46

middle.block109:                                  ; preds = %vector.body98
  br i1 %cmp.n110, label %.preheader147.i, label %vec.epilog.iter.check117

vec.epilog.iter.check117:                         ; preds = %middle.block109
  br i1 %min.epilog.iters.check118, label %.lr.ph192.i.preheader, label %vec.epilog.ph119, !prof !22

vec.epilog.ph119:                                 ; preds = %vector.main.loop.iter.check94, %vec.epilog.iter.check117
  %vec.epilog.resume.val111 = phi i64 [ %n.vec97, %vec.epilog.iter.check117 ], [ 0, %vector.main.loop.iter.check94 ]
  %i.jv = getelementptr i8, ptr %i.jl, i64 %i.fa  ; 2 uses
  %i.jw = getelementptr i8, ptr %i.jh, i64 %i.fa  ; 2 uses
  %i.jx = getelementptr i8, ptr %.6205.i, i64 %i.fb ; 2 uses
  br label %vec.epilog.vector.body121

vec.epilog.vector.body121:                        ; preds = %vec.epilog.vector.body121, %vec.epilog.ph119
  %index122 = phi i64 [ %vec.epilog.resume.val111, %vec.epilog.ph119 ], [ %index.next133, %vec.epilog.vector.body121 ] ; 3 uses
  %i.jy = shl i64 %index122, 1                    ; 2 uses
  %next.gep123.a = getelementptr i8, ptr %i.jl, i64 %i.jy
  %next.gep124 = getelementptr i8, ptr %i.jh, i64 %i.jy
  %i.jz = shl i64 %index122, 2
  %next.gep125 = getelementptr i8, ptr %.6205.i, i64 %i.jz
  %wide.vec126 = load <16 x i8>, ptr %next.gep124, align 1, !tbaa !17, !alias.scope !63
  %wide.vec129 = load <16 x i8>, ptr %next.gep123.a, align 1, !tbaa !17, !alias.scope !64
  %interleaved.vec132 = shufflevector <16 x i8> %wide.vec126, <16 x i8> %wide.vec129, <32 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23, i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  store <32 x i8> %interleaved.vec132, ptr %next.gep125, align 1, !tbaa !17, !alias.scope !65, !noalias !66
  %index.next133 = add nuw i64 %index122, 8       ; 2 uses
  %i.ka = icmp eq i64 %index.next133, %n.vec120
  br i1 %i.ka, label %vec.epilog.middle.block134, label %vec.epilog.vector.body121, !llvm.loop !47

vec.epilog.middle.block134:                       ; preds = %vec.epilog.vector.body121
  br i1 %cmp.n135, label %.preheader147.i, label %.lr.ph192.i.preheader

.lr.ph192.i.preheader:                            ; preds = %iter.check115, %vector.memcheck79, %vec.epilog.iter.check117, %vec.epilog.middle.block134
  %.0116190.i.ph = phi i32 [ 0, %iter.check115 ], [ 0, %vector.memcheck79 ], [ %i.ev, %vec.epilog.iter.check117 ], [ %i.ez, %vec.epilog.middle.block134 ]
  %.0117189.i.ph = phi ptr [ %i.jl, %iter.check115 ], [ %i.jl, %vector.memcheck79 ], [ %i.jp, %vec.epilog.iter.check117 ], [ %i.jv, %vec.epilog.middle.block134 ]
  %.0119188.i.ph = phi ptr [ %i.jh, %iter.check115 ], [ %i.jh, %vector.memcheck79 ], [ %i.jq, %vec.epilog.iter.check117 ], [ %i.jw, %vec.epilog.middle.block134 ]
  %.7187.i.ph = phi ptr [ %.6205.i, %iter.check115 ], [ %.6205.i, %vector.memcheck79 ], [ %i.jr, %vec.epilog.iter.check117 ], [ %i.jx, %vec.epilog.middle.block134 ]
  br label %.lr.ph192.i

.preheader147.i:                                  ; preds = %.lr.ph192.i, %middle.block109, %vec.epilog.middle.block134, %bb.h
  %.7.lcssa.i = phi ptr [ %.6205.i, %bb.h ], [ %i.jx, %vec.epilog.middle.block134 ], [ %i.jr, %middle.block109 ], [ %i.lu, %.lr.ph192.i ] ; 10 uses
  %.0119.lcssa.i = phi ptr [ %i.jh, %bb.h ], [ %i.jw, %vec.epilog.middle.block134 ], [ %i.jq, %middle.block109 ], [ %i.lv, %.lr.ph192.i ] ; 8 uses
  %.0117.lcssa.i = phi ptr [ %i.jl, %bb.h ], [ %i.jv, %vec.epilog.middle.block134 ], [ %i.jp, %middle.block109 ], [ %i.lw, %.lr.ph192.i ] ; 8 uses
  %.0116.lcssa.i = phi i32 [ 0, %bb.h ], [ %i.eh, %vec.epilog.middle.block134 ], [ %i.eh, %middle.block109 ], [ %i.eh, %.lr.ph192.i ] ; 7 uses
  %i.kb = icmp slt i32 %.0116.lcssa.i, %5
  br i1 %i.kb, label %iter.check, label %._crit_edge202.i

iter.check:                                       ; preds = %.preheader147.i
  %i.kc = xor i32 %.0116.lcssa.i, -1
  %i.kd = add i32 %5, %i.kc                       ; 3 uses
  %i.ke = zext i32 %i.kd to i64
  %i.kf = add nuw nsw i64 %i.ke, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.kd, 7
  br i1 %min.iters.check, label %.lr.ph201.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.7.lcssa.i, i64 2
  %i.kg = xor i32 %.0116.lcssa.i, -1
  %i.kh = add i32 %5, %i.kg
  %i.ki = zext i32 %i.kh to i64                   ; 3 uses
  %i.kj = shl nuw nsw i64 %i.ki, 1
  %scevgep50 = getelementptr i8, ptr %scevgep, i64 %i.kj ; 2 uses
  %scevgep51 = getelementptr i8, ptr %.0117.lcssa.i, i64 1
  %scevgep52 = getelementptr i8, ptr %scevgep51, i64 %i.ki
  %scevgep53 = getelementptr i8, ptr %.0119.lcssa.i, i64 1
  %scevgep54 = getelementptr i8, ptr %scevgep53, i64 %i.ki
  %bound0 = icmp ult ptr %.7.lcssa.i, %scevgep52
  %bound1 = icmp ult ptr %.0117.lcssa.i, %scevgep50
  %found.conflict = and i1 %bound0, %bound1
  %bound055 = icmp ult ptr %.7.lcssa.i, %scevgep54
  %bound156 = icmp ult ptr %.0119.lcssa.i, %scevgep50
  %found.conflict57 = and i1 %bound055, %bound156
  %conflict.rdx = or i1 %found.conflict, %found.conflict57
  br i1 %conflict.rdx, label %.lr.ph201.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check58 = icmp ult i32 %i.kd, 31
  br i1 %min.iters.check58, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.kk = and i64 %i.kf, 24
  %n.vec = and i64 %i.kf, 8589934560              ; 7 uses
  %i.kl = trunc i64 %n.vec to i32
  %i.km = add i32 %.0116.lcssa.i, %i.kl
  %i.kn = getelementptr i8, ptr %.0117.lcssa.i, i64 %n.vec
  %i.ko = getelementptr i8, ptr %.0119.lcssa.i, i64 %n.vec
  %i.kp = shl nuw nsw i64 %n.vec, 1
  %i.kq = getelementptr i8, ptr %.7.lcssa.i, i64 %i.kp ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %next.gep = getelementptr i8, ptr %.0117.lcssa.i, i64 %index
  %next.gep59 = getelementptr i8, ptr %.0119.lcssa.i, i64 %index
  %i.kr = shl i64 %index, 1
  %next.gep60 = getelementptr i8, ptr %.7.lcssa.i, i64 %i.kr
  %wide.load = load <32 x i8>, ptr %next.gep59, align 1, !tbaa !17, !alias.scope !67
  %wide.load61 = load <32 x i8>, ptr %next.gep, align 1, !tbaa !17, !alias.scope !68
  %interleaved.vec = shufflevector <32 x i8> %wide.load, <32 x i8> %wide.load61, <64 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  store <64 x i8> %interleaved.vec, ptr %next.gep60, align 1, !tbaa !17, !alias.scope !69, !noalias !70
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ks = icmp eq i64 %index.next, %n.vec
  br i1 %i.ks, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kf, %n.vec
  br i1 %cmp.n, label %._crit_edge202.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.kk, 0
  br i1 %min.epilog.iters.check, label %.lr.ph201.i.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec65 = and i64 %i.kf, 8589934584            ; 6 uses
  %i.kt = trunc i64 %n.vec65 to i32
  %i.ku = add i32 %.0116.lcssa.i, %i.kt
  %i.kv = getelementptr i8, ptr %.0117.lcssa.i, i64 %n.vec65
  %i.kw = getelementptr i8, ptr %.0119.lcssa.i, i64 %n.vec65
  %i.kx = shl nuw nsw i64 %n.vec65, 1
  %i.ky = getelementptr i8, ptr %.7.lcssa.i, i64 %i.kx ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index66 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next73, %vec.epilog.vector.body ] ; 4 uses
  %next.gep67 = getelementptr i8, ptr %.0117.lcssa.i, i64 %index66
  %next.gep68 = getelementptr i8, ptr %.0119.lcssa.i, i64 %index66
  %i.kz = shl i64 %index66, 1
  %next.gep69 = getelementptr i8, ptr %.7.lcssa.i, i64 %i.kz
  %wide.load70 = load <8 x i8>, ptr %next.gep68, align 1, !tbaa !17, !alias.scope !67
  %wide.load71 = load <8 x i8>, ptr %next.gep67, align 1, !tbaa !17, !alias.scope !68
  %interleaved.vec72 = shufflevector <8 x i8> %wide.load70, <8 x i8> %wide.load71, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec72, ptr %next.gep69, align 1, !tbaa !17, !alias.scope !69, !noalias !70
  %index.next73 = add nuw i64 %index66, 8         ; 2 uses
  %i.la = icmp eq i64 %index.next73, %n.vec65
  br i1 %i.la, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !53

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n74 = icmp eq i64 %i.kf, %n.vec65
  br i1 %cmp.n74, label %._crit_edge202.i, label %.lr.ph201.i.preheader

.lr.ph201.i.preheader:                            ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1200.i.ph = phi i32 [ %.0116.lcssa.i, %iter.check ], [ %.0116.lcssa.i, %vector.memcheck ], [ %i.km, %vec.epilog.iter.check ], [ %i.ku, %vec.epilog.middle.block ] ; 4 uses
  %.1118199.i.ph = phi ptr [ %.0117.lcssa.i, %iter.check ], [ %.0117.lcssa.i, %vector.memcheck ], [ %i.kn, %vec.epilog.iter.check ], [ %i.kv, %vec.epilog.middle.block ] ; 2 uses
  %.1120198.i.ph = phi ptr [ %.0119.lcssa.i, %iter.check ], [ %.0119.lcssa.i, %vector.memcheck ], [ %i.ko, %vec.epilog.iter.check ], [ %i.kw, %vec.epilog.middle.block ] ; 2 uses
  %.8197.i.ph = phi ptr [ %.7.lcssa.i, %iter.check ], [ %.7.lcssa.i, %vector.memcheck ], [ %i.kq, %vec.epilog.iter.check ], [ %i.ky, %vec.epilog.middle.block ] ; 2 uses
  %i.lb = sub i32 %5, %.1200.i.ph
  %xtraiter205 = and i32 %i.lb, 3                 ; 2 uses
  %lcmp.mod206.not = icmp eq i32 %xtraiter205, 0
  br i1 %lcmp.mod206.not, label %.lr.ph201.i.prol.loopexit, label %.lr.ph201.i.prol

.lr.ph201.i.prol:                                 ; preds = %.lr.ph201.i.preheader, %.lr.ph201.i.prol
  %.1200.i.prol = phi i32 [ %i.li, %.lr.ph201.i.prol ], [ %.1200.i.ph, %.lr.ph201.i.preheader ]
  %.1118199.i.prol = phi ptr [ %i.lh, %.lr.ph201.i.prol ], [ %.1118199.i.ph, %.lr.ph201.i.preheader ] ; 2 uses
  %.1120198.i.prol = phi ptr [ %i.lg, %.lr.ph201.i.prol ], [ %.1120198.i.ph, %.lr.ph201.i.preheader ] ; 2 uses
  %.8197.i.prol = phi ptr [ %i.lf, %.lr.ph201.i.prol ], [ %.8197.i.ph, %.lr.ph201.i.preheader ] ; 3 uses
  %prol.iter207 = phi i32 [ %prol.iter207.next, %.lr.ph201.i.prol ], [ 0, %.lr.ph201.i.preheader ]
  %i.lc = load i8, ptr %.1120198.i.prol, align 1, !tbaa !17
  store i8 %i.lc, ptr %.8197.i.prol, align 1, !tbaa !17
  %i.ld = load i8, ptr %.1118199.i.prol, align 1, !tbaa !17
  %i.le = getelementptr inbounds nuw i8, ptr %.8197.i.prol, i64 1
  store i8 %i.ld, ptr %i.le, align 1, !tbaa !17
  %i.lf = getelementptr inbounds nuw i8, ptr %.8197.i.prol, i64 2 ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.1120198.i.prol, i64 1 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.1118199.i.prol, i64 1 ; 2 uses
  %i.li = add nuw nsw i32 %.1200.i.prol, 1        ; 2 uses
  %prol.iter207.next = add i32 %prol.iter207, 1   ; 2 uses
  %prol.iter207.cmp.not = icmp eq i32 %prol.iter207.next, %xtraiter205
  br i1 %prol.iter207.cmp.not, label %.lr.ph201.i.prol.loopexit, label %.lr.ph201.i.prol, !llvm.loop !54

.lr.ph201.i.prol.loopexit:                        ; preds = %.lr.ph201.i.prol, %.lr.ph201.i.preheader
  %.lcssa182.unr = phi ptr [ poison, %.lr.ph201.i.preheader ], [ %i.lf, %.lr.ph201.i.prol ]
  %.1200.i.unr = phi i32 [ %.1200.i.ph, %.lr.ph201.i.preheader ], [ %i.li, %.lr.ph201.i.prol ]
end_hunk_0
begin_hunk_1_@_ZN4ncnn21pack_B_tile_int8_avx2ERKNS_3MatERS0_iiii:bb.a
  %lcmp.mod196.not = icmp eq i32 %xtraiter194, 0
  %lcmp.mod199 = icmp ne i32 %xtraiter194, 0
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i, %.lr.ph165.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph165.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %.0121163.i = phi ptr [ %i.c, %.lr.ph165.i ], [ %.2.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ae = add nsw i64 %indvars.iv.i, %i.k
  %i.af = load ptr, ptr %0, align 8, !tbaa !14
  %i.ag = load i32, ptr %i.e, align 4, !tbaa !15  ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = mul nsw i64 %i.ae, %i.ah
  %i.aj = load i64, ptr %i.f, align 8, !tbaa !16
  %i.ak = mul i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ak
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.g ; 3 uses
  %i.an = insertelement <8 x i32> poison, i32 %i.ag, i64 0
  %i.ao = shufflevector <8 x i32> %i.an, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ap = mul <8 x i32> %i.ao, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 10 uses
  br i1 %i.h, label %.lr.ph.i.preheader, label %.preheader151.i

.lr.ph.i.preheader:                               ; preds = %bb.f
  br i1 %i.o, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.preheader151.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %.preheader151.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader151.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.1122154.i.epil.init = phi ptr [ %.0121163.i, %.lr.ph.i.preheader ], [ %i.cl, %.preheader151.i.loopexit.unr-lcssa ]
  %.0131153.i.epil.init = phi ptr [ %i.am, %.lr.ph.i.preheader ], [ %i.cm, %.preheader151.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod191)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.1122154.i.epil = phi ptr [ %i.av, %.lr.ph.i.epil ], [ %.1122154.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.0131153.i.epil = phi ptr [ %i.aw, %.lr.ph.i.epil ], [ %.0131153.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.aq = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.0131153.i.epil, <8 x i32> %i.ap, <8 x i32> splat (i32 -1), i8 1)
  %i.ar = bitcast <8 x i32> %i.aq to <32 x i8>
  %i.as = shufflevector <32 x i8> %i.ar, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.at = bitcast <32 x i8> %i.as to <4 x i64>
  %i.au = shufflevector <4 x i64> %i.at, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.au, ptr %.1122154.i.epil, align 1, !tbaa !17
  %i.av = getelementptr inbounds nuw i8, ptr %.1122154.i.epil, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0131153.i.epil, i64 2 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader151.i, label %.lr.ph.i.epil, !llvm.loop !85

.preheader151.i:                                  ; preds = %.preheader151.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.f
  %.0133.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.i, %.lr.ph.i.epil ], [ %i.i, %.preheader151.i.loopexit.unr-lcssa ] ; 5 uses
  %.0131.lcssa.i = phi ptr [ %i.am, %bb.f ], [ %i.cm, %.preheader151.i.loopexit.unr-lcssa ], [ %i.aw, %.lr.ph.i.epil ] ; 2 uses
  %.1122.lcssa.i = phi ptr [ %.0121163.i, %bb.f ], [ %i.cl, %.preheader151.i.loopexit.unr-lcssa ], [ %i.av, %.lr.ph.i.epil ] ; 3 uses
  %i.ax = icmp slt i32 %.0133.lcssa.i, %5
  br i1 %i.ax, label %.lr.ph160.i.preheader, label %._crit_edge.i

.lr.ph160.i.preheader:                            ; preds = %.preheader151.i
  %i.ay = sub i32 %5, %.0133.lcssa.i
  %xtraiter192 = and i32 %i.ay, 3                 ; 2 uses
  %lcmp.mod193.not = icmp eq i32 %xtraiter192, 0
  br i1 %lcmp.mod193.not, label %.lr.ph160.i.prol.loopexit, label %.lr.ph160.i.prol

.lr.ph160.i.prol:                                 ; preds = %.lr.ph160.i.preheader, %.lr.ph160.i.prol
  %.2159.i.prol = phi ptr [ %i.bg, %.lr.ph160.i.prol ], [ %.1122.lcssa.i, %.lr.ph160.i.preheader ] ; 2 uses
  %.1132158.i.prol = phi ptr [ %i.bh, %.lr.ph160.i.prol ], [ %.0131.lcssa.i, %.lr.ph160.i.preheader ] ; 2 uses
  %.1134157.i.prol = phi i32 [ %i.bi, %.lr.ph160.i.prol ], [ %.0133.lcssa.i, %.lr.ph160.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph160.i.prol ], [ 0, %.lr.ph160.i.preheader ]
  %i.az = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.1132158.i.prol, <8 x i32> %i.ap, <8 x i32> splat (i32 -1), i8 1)
  %i.ba = bitcast <8 x i32> %i.az to <32 x i8>
  %i.bb = shufflevector <32 x i8> %i.ba, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bc = bitcast <32 x i8> %i.bb to <8 x i32>
  %i.bd = shufflevector <8 x i32> %i.bc, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.be = bitcast <4 x i32> %i.bd to <2 x i64>
  %i.bf = extractelement <2 x i64> %i.be, i64 0
  store i64 %i.bf, ptr %.2159.i.prol, align 1, !tbaa !17
  %i.bg = getelementptr inbounds nuw i8, ptr %.2159.i.prol, i64 8 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.1132158.i.prol, i64 1 ; 2 uses
  %i.bi = add nuw nsw i32 %.1134157.i.prol, 1     ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter192
  br i1 %prol.iter.cmp.not, label %.lr.ph160.i.prol.loopexit, label %.lr.ph160.i.prol, !llvm.loop !86

.lr.ph160.i.prol.loopexit:                        ; preds = %.lr.ph160.i.prol, %.lr.ph160.i.preheader
  %.lcssa188.unr = phi ptr [ poison, %.lr.ph160.i.preheader ], [ %i.bg, %.lr.ph160.i.prol ]
  %.2159.i.unr = phi ptr [ %.1122.lcssa.i, %.lr.ph160.i.preheader ], [ %i.bg, %.lr.ph160.i.prol ]
  %.1132158.i.unr = phi ptr [ %.0131.lcssa.i, %.lr.ph160.i.preheader ], [ %i.bh, %.lr.ph160.i.prol ]
  %.1134157.i.unr = phi i32 [ %.0133.lcssa.i, %.lr.ph160.i.preheader ], [ %i.bi, %.lr.ph160.i.prol ]
  %i.bj = sub i32 %.0133.lcssa.i, %5
  %i.bk = icmp ugt i32 %i.bj, -4
  br i1 %i.bk, label %._crit_edge.i, label %.lr.ph160.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.1122154.i = phi ptr [ %i.cl, %.lr.ph.i ], [ %.0121163.i, %.lr.ph.i.preheader ] ; 5 uses
  %.0131153.i = phi ptr [ %i.cm, %.lr.ph.i ], [ %i.am, %.lr.ph.i.preheader ] ; 5 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.bl = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.0131153.i, <8 x i32> %i.ap, <8 x i32> splat (i32 -1), i8 1)
  %i.bm = bitcast <8 x i32> %i.bl to <32 x i8>
  %i.bn = shufflevector <32 x i8> %i.bm, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bo = bitcast <32 x i8> %i.bn to <4 x i64>
  %i.bp = shufflevector <4 x i64> %i.bo, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.bp, ptr %.1122154.i, align 1, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %.1122154.i, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %.0131153.i, i64 2
  %i.bs = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.br, <8 x i32> %i.ap, <8 x i32> splat (i32 -1), i8 1)
  %i.bt = bitcast <8 x i32> %i.bs to <32 x i8>
  %i.bu = shufflevector <32 x i8> %i.bt, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bv = bitcast <32 x i8> %i.bu to <4 x i64>
  %i.bw = shufflevector <4 x i64> %i.bv, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.bw, ptr %i.bq, align 1, !tbaa !17
  %i.bx = getelementptr inbounds nuw i8, ptr %.1122154.i, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %.0131153.i, i64 4
  %i.bz = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.by, <8 x i32> %i.ap, <8 x i32> splat (i32 -1), i8 1)
  %i.ca = bitcast <8 x i32> %i.bz to <32 x i8>
  %i.cb = shufflevector <32 x i8> %i.ca, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cc = bitcast <32 x i8> %i.cb to <4 x i64>
  %i.cd = shufflevector <4 x i64> %i.cc, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.cd, ptr %i.bx, align 1, !tbaa !17
  %i.ce = getelementptr inbounds nuw i8, ptr %.1122154.i, i64 48
  %i.cf = getelementptr inbounds nuw i8, ptr %.0131153.i, i64 6
  %i.cg = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.cf, <8 x i32> %i.ap, <8 x i32> splat (i32 -1), i8 1)
  %i.ch = bitcast <8 x i32> %i.cg to <32 x i8>
  %i.ci = shufflevector <32 x i8> %i.ch, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cj = bitcast <32 x i8> %i.ci to <4 x i64>
  %i.ck = shufflevector <4 x i64> %i.cj, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.ck, ptr %i.ce, align 1, !tbaa !17
  %i.cl = getelementptr inbounds nuw i8, ptr %.1122154.i, i64 64 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0131153.i, i64 8 ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader151.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !87

.lr.ph160.i:                                      ; preds = %.lr.ph160.i.prol.loopexit, %.lr.ph160.i
  %.2159.i = phi ptr [ %i.dv, %.lr.ph160.i ], [ %.2159.i.unr, %.lr.ph160.i.prol.loopexit ] ; 5 uses
  %.1132158.i = phi ptr [ %i.dw, %.lr.ph160.i ], [ %.1132158.i.unr, %.lr.ph160.i.prol.loopexit ] ; 5 uses
  %.1134157.i = phi i32 [ %i.dx, %.lr.ph160.i ], [ %.1134157.i.unr, %.lr.ph160.i.prol.loopexit ]
  %i.cn = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.1132158.i, <8 x i32> %i.ap, <8 x i32> splat (i32 -1), i8 1)
  %i.co = bitcast <8 x i32> %i.cn to <32 x i8>
  %i.cp = shufflevector <32 x i8> %i.co, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cq = bitcast <32 x i8> %i.cp to <8 x i32>
  %i.cr = shufflevector <8 x i32> %i.cq, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.cs = bitcast <4 x i32> %i.cr to <2 x i64>
  %i.ct = extractelement <2 x i64> %i.cs, i64 0
  store i64 %i.ct, ptr %.2159.i, align 1, !tbaa !17
  %i.cu = getelementptr inbounds nuw i8, ptr %.2159.i, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %.1132158.i, i64 1
  %i.cw = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.cv, <8 x i32> %i.ap, <8 x i32> splat (i32 -1), i8 1)
  %i.cx = bitcast <8 x i32> %i.cw to <32 x i8>
  %i.cy = shufflevector <32 x i8> %i.cx, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cz = bitcast <32 x i8> %i.cy to <8 x i32>
  %i.da = shufflevector <8 x i32> %i.cz, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.db = bitcast <4 x i32> %i.da to <2 x i64>
  %i.dc = extractelement <2 x i64> %i.db, i64 0
  store i64 %i.dc, ptr %i.cu, align 1, !tbaa !17
  %i.dd = getelementptr inbounds nuw i8, ptr %.2159.i, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %.1132158.i, i64 2
  %i.df = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.de, <8 x i32> %i.ap, <8 x i32> splat (i32 -1), i8 1)
  %i.dg = bitcast <8 x i32> %i.df to <32 x i8>
  %i.dh = shufflevector <32 x i8> %i.dg, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.di = bitcast <32 x i8> %i.dh to <8 x i32>
  %i.dj = shufflevector <8 x i32> %i.di, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.dk = bitcast <4 x i32> %i.dj to <2 x i64>
  %i.dl = extractelement <2 x i64> %i.dk, i64 0
  store i64 %i.dl, ptr %i.dd, align 1, !tbaa !17
  %i.dm = getelementptr inbounds nuw i8, ptr %.2159.i, i64 24
  %i.dn = getelementptr inbounds nuw i8, ptr %.1132158.i, i64 3
  %i.do = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.dn, <8 x i32> %i.ap, <8 x i32> splat (i32 -1), i8 1)
  %i.dp = bitcast <8 x i32> %i.do to <32 x i8>
  %i.dq = shufflevector <32 x i8> %i.dp, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dr = bitcast <32 x i8> %i.dq to <8 x i32>
  %i.ds = shufflevector <8 x i32> %i.dr, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.dt = bitcast <4 x i32> %i.ds to <2 x i64>
  %i.du = extractelement <2 x i64> %i.dt, i64 0
  store i64 %i.du, ptr %i.dm, align 1, !tbaa !17
  %i.dv = getelementptr inbounds nuw i8, ptr %.2159.i, i64 32 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.1132158.i, i64 4
  %i.dx = add nuw nsw i32 %.1134157.i, 4          ; 2 uses
  %exitcond.not.i.3 = icmp eq i32 %i.dx, %5
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph160.i, !llvm.loop !88

._crit_edge.i:                                    ; preds = %.lr.ph160.i.prol.loopexit, %.lr.ph160.i, %.preheader151.i
  %.2.lcssa.i = phi ptr [ %.1122.lcssa.i, %.preheader151.i ], [ %.lcssa188.unr, %.lr.ph160.i.prol.loopexit ], [ %i.dv, %.lr.ph160.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.dy = or disjoint i64 %indvars.iv.next.i, 7
  %i.dz = icmp samesign ult i64 %i.dy, %i.j
  br i1 %i.dz, label %bb.f, label %.preheader150.loopexit.i, !llvm.loop !89

.preheader148.loopexit.i:                         ; preds = %._crit_edge180.i
  %i.ea = trunc nuw nsw i64 %indvars.iv.next238.i to i32
  br label %.preheader148.i

.preheader148.i:                                  ; preds = %.preheader148.loopexit.i, %.preheader150.i
  %.1124.lcssa.i = phi i32 [ %.0123.lcssa.i, %.preheader150.i ], [ %i.ea, %.preheader148.loopexit.i ] ; 3 uses
  %.3.lcssa.i = phi ptr [ %.0121.lcssa.i, %.preheader150.i ], [ %.5.lcssa.i, %.preheader148.loopexit.i ] ; 2 uses
  %i.eb = or disjoint i32 %.1124.lcssa.i, 1
  %i.ec = icmp slt i32 %i.eb, %3
  br i1 %i.ec, label %.lr.ph206.i, label %.preheader.i

.lr.ph206.i:                                      ; preds = %.preheader148.i
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ef = sext i32 %4 to i64                      ; 4 uses
  %i.eg = icmp sgt i32 %5, 1
  %i.eh = and i32 %5, -2                          ; 3 uses
  %i.ei = zext i32 %.1124.lcssa.i to i64
  %i.ej = sext i32 %3 to i64
  %i.ek = sext i32 %2 to i64
  %invariant.op263.i = add nsw i64 %i.ej, -1
  %i.el = add i32 %5, -2
  %i.em = zext i32 %i.el to i64                   ; 2 uses
  %i.en = shl nuw nsw i64 %i.em, 1
  %i.eo = and i64 %i.en, 8589934588
  %i.ep = and i64 %i.em, 4294967294
  %i.eq = add i32 %5, -2                          ; 3 uses
  %i.er = lshr i32 %i.eq, 1
  %narrow = add nuw i32 %i.er, 1
  %i.es = zext i32 %narrow to i64                 ; 5 uses
  %min.iters.check93.a = icmp ult i32 %i.eq, 14
  %min.iters.check95 = icmp ult i32 %i.eq, 62
  %i.et = and i64 %i.es, 24
  %n.vec97 = and i64 %i.es, 4294967264            ; 6 uses
  %i.eu = trunc nuw i64 %n.vec97 to i32
  %i.ev = shl i32 %i.eu, 1
  %i.ew = shl nuw nsw i64 %n.vec97, 1             ; 2 uses
  %i.ex = shl nuw nsw i64 %n.vec97, 2
  %cmp.n110 = icmp eq i64 %n.vec97, %i.es
  %min.epilog.iters.check118 = icmp eq i64 %i.et, 0
  %n.vec120 = and i64 %i.es, 4294967288           ; 5 uses
  %i.ey = trunc nuw i64 %n.vec120 to i32
  %i.ez = shl i32 %i.ey, 1
  %i.fa = shl nuw nsw i64 %n.vec120, 1            ; 2 uses
  %i.fb = shl nuw nsw i64 %n.vec120, 2
  %cmp.n135 = icmp eq i64 %n.vec120, %i.es
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge180.i, %.lr.ph184.i
  %indvars.iv237.i = phi i64 [ %i.x, %.lr.ph184.i ], [ %indvars.iv.next238.i, %._crit_edge180.i ] ; 2 uses
  %.3183.i = phi ptr [ %.0121.lcssa.i, %.lr.ph184.i ], [ %.5.lcssa.i, %._crit_edge180.i ] ; 3 uses
  %i.fc = add nsw i64 %indvars.iv237.i, %i.z
  %i.fd = load ptr, ptr %0, align 8, !tbaa !14
  %i.fe = load i32, ptr %i.s, align 4, !tbaa !15  ; 2 uses
  %i.ff = sext i32 %i.fe to i64
  %i.fg = mul nsw i64 %i.fc, %i.ff
  %i.fh = load i64, ptr %i.t, align 8, !tbaa !16
  %i.fi = mul i64 %i.fg, %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fi
  %i.fk = getelementptr inbounds i8, ptr %i.fj, i64 %i.u ; 3 uses
  %i.fl = insertelement <4 x i32> poison, i32 %i.fe, i64 0
  %i.fm = shufflevector <4 x i32> %i.fl, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fn = mul <4 x i32> %i.fm, <i32 0, i32 1, i32 2, i32 3> ; 10 uses
  br i1 %i.v, label %.lr.ph172.i.preheader, label %.preheader149.i

.lr.ph172.i.preheader:                            ; preds = %bb.g
  br i1 %i.ad, label %.lr.ph172.i.epil.preheader, label %.lr.ph172.i

.preheader149.i.loopexit.unr-lcssa:               ; preds = %.lr.ph172.i
  br i1 %lcmp.mod196.not, label %.preheader149.i, label %.lr.ph172.i.epil.preheader

.lr.ph172.i.epil.preheader:                       ; preds = %.preheader149.i.loopexit.unr-lcssa, %.lr.ph172.i.preheader
  %.4170.i.epil.init = phi ptr [ %.3183.i, %.lr.ph172.i.preheader ], [ %i.hh, %.preheader149.i.loopexit.unr-lcssa ]
  %.0129168.i.epil.init = phi ptr [ %i.fk, %.lr.ph172.i.preheader ], [ %i.hi, %.preheader149.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod199)
  br label %.lr.ph172.i.epil

.lr.ph172.i.epil:                                 ; preds = %.lr.ph172.i.epil, %.lr.ph172.i.epil.preheader
  %.4170.i.epil = phi ptr [ %i.ft, %.lr.ph172.i.epil ], [ %.4170.i.epil.init, %.lr.ph172.i.epil.preheader ] ; 2 uses
  %.0129168.i.epil = phi ptr [ %i.fu, %.lr.ph172.i.epil ], [ %.0129168.i.epil.init, %.lr.ph172.i.epil.preheader ] ; 2 uses
  %epil.iter195 = phi i32 [ %epil.iter195.next, %.lr.ph172.i.epil ], [ 0, %.lr.ph172.i.epil.preheader ]
  %i.fo = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.0129168.i.epil, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.fp = bitcast <4 x i32> %i.fo to <16 x i8>
  %i.fq = shufflevector <16 x i8> %i.fp, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fr = bitcast <16 x i8> %i.fq to <2 x i64>
  %i.fs = extractelement <2 x i64> %i.fr, i64 0
  store i64 %i.fs, ptr %.4170.i.epil, align 1, !tbaa !17
  %i.ft = getelementptr inbounds nuw i8, ptr %.4170.i.epil, i64 8 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.0129168.i.epil, i64 2 ; 2 uses
  %epil.iter195.next = add i32 %epil.iter195, 1   ; 2 uses
  %epil.iter195.cmp.not = icmp eq i32 %epil.iter195.next, %xtraiter194
  br i1 %epil.iter195.cmp.not, label %.preheader149.i, label %.lr.ph172.i.epil, !llvm.loop !90

.preheader149.i:                                  ; preds = %.preheader149.i.loopexit.unr-lcssa, %.lr.ph172.i.epil, %bb.g
  %.0129.lcssa.i = phi ptr [ %i.fk, %bb.g ], [ %i.hi, %.preheader149.i.loopexit.unr-lcssa ], [ %i.fu, %.lr.ph172.i.epil ] ; 2 uses
  %.0127.lcssa.i = phi i32 [ 0, %bb.g ], [ %i.w, %.lr.ph172.i.epil ], [ %i.w, %.preheader149.i.loopexit.unr-lcssa ] ; 5 uses
  %.4.lcssa.i = phi ptr [ %.3183.i, %bb.g ], [ %i.hh, %.preheader149.i.loopexit.unr-lcssa ], [ %i.ft, %.lr.ph172.i.epil ] ; 3 uses
  %i.fv = icmp slt i32 %.0127.lcssa.i, %5
  br i1 %i.fv, label %.lr.ph179.i.preheader, label %._crit_edge180.i

.lr.ph179.i.preheader:                            ; preds = %.preheader149.i
  %i.fw = sub i32 %5, %.0127.lcssa.i
  %xtraiter202 = and i32 %i.fw, 3                 ; 2 uses
  %lcmp.mod203.not = icmp eq i32 %xtraiter202, 0
  br i1 %lcmp.mod203.not, label %.lr.ph179.i.prol.loopexit, label %.lr.ph179.i.prol

.lr.ph179.i.prol:                                 ; preds = %.lr.ph179.i.preheader, %.lr.ph179.i.prol
  %.5178.i.prol = phi ptr [ %i.gc, %.lr.ph179.i.prol ], [ %.4.lcssa.i, %.lr.ph179.i.preheader ] ; 2 uses
  %.1128177.i.prol = phi i32 [ %i.ge, %.lr.ph179.i.prol ], [ %.0127.lcssa.i, %.lr.ph179.i.preheader ]
  %.1130176.i.prol = phi ptr [ %i.gd, %.lr.ph179.i.prol ], [ %.0129.lcssa.i, %.lr.ph179.i.preheader ] ; 2 uses
  %prol.iter204 = phi i32 [ %prol.iter204.next, %.lr.ph179.i.prol ], [ 0, %.lr.ph179.i.preheader ]
  %i.fx = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.1130176.i.prol, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.fy = bitcast <4 x i32> %i.fx to <16 x i8>
  %i.fz = shufflevector <16 x i8> %i.fy, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ga = bitcast <16 x i8> %i.fz to <4 x float>
  %i.gb = extractelement <4 x float> %i.ga, i64 0
  store float %i.gb, ptr %.5178.i.prol, align 1, !tbaa !17
  %i.gc = getelementptr inbounds nuw i8, ptr %.5178.i.prol, i64 4 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.1130176.i.prol, i64 1 ; 2 uses
  %i.ge = add nuw nsw i32 %.1128177.i.prol, 1     ; 2 uses
  %prol.iter204.next = add i32 %prol.iter204, 1   ; 2 uses
  %prol.iter204.cmp.not = icmp eq i32 %prol.iter204.next, %xtraiter202
  br i1 %prol.iter204.cmp.not, label %.lr.ph179.i.prol.loopexit, label %.lr.ph179.i.prol, !llvm.loop !91

.lr.ph179.i.prol.loopexit:                        ; preds = %.lr.ph179.i.prol, %.lr.ph179.i.preheader
  %.lcssa185.unr = phi ptr [ poison, %.lr.ph179.i.preheader ], [ %i.gc, %.lr.ph179.i.prol ]
  %.5178.i.unr = phi ptr [ %.4.lcssa.i, %.lr.ph179.i.preheader ], [ %i.gc, %.lr.ph179.i.prol ]
  %.1128177.i.unr = phi i32 [ %.0127.lcssa.i, %.lr.ph179.i.preheader ], [ %i.ge, %.lr.ph179.i.prol ]
  %.1130176.i.unr = phi ptr [ %.0129.lcssa.i, %.lr.ph179.i.preheader ], [ %i.gd, %.lr.ph179.i.prol ]
  %i.gf = sub i32 %.0127.lcssa.i, %5
  %i.gg = icmp ugt i32 %i.gf, -4
  br i1 %i.gg, label %._crit_edge180.i, label %.lr.ph179.i

.lr.ph172.i:                                      ; preds = %.lr.ph172.i.preheader, %.lr.ph172.i
  %.4170.i = phi ptr [ %i.hh, %.lr.ph172.i ], [ %.3183.i, %.lr.ph172.i.preheader ] ; 5 uses
  %.0129168.i = phi ptr [ %i.hi, %.lr.ph172.i ], [ %i.fk, %.lr.ph172.i.preheader ] ; 5 uses
  %niter201 = phi i32 [ %niter201.next.3, %.lr.ph172.i ], [ 0, %.lr.ph172.i.preheader ]
  %i.gh = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.0129168.i, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.gi = bitcast <4 x i32> %i.gh to <16 x i8>
  %i.gj = shufflevector <16 x i8> %i.gi, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gk = bitcast <16 x i8> %i.gj to <2 x i64>
  %i.gl = extractelement <2 x i64> %i.gk, i64 0
  store i64 %i.gl, ptr %.4170.i, align 1, !tbaa !17
  %i.gm = getelementptr inbounds nuw i8, ptr %.4170.i, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %.0129168.i, i64 2
  %i.go = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.gn, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.gp = bitcast <4 x i32> %i.go to <16 x i8>
  %i.gq = shufflevector <16 x i8> %i.gp, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gr = bitcast <16 x i8> %i.gq to <2 x i64>
  %i.gs = extractelement <2 x i64> %i.gr, i64 0
  store i64 %i.gs, ptr %i.gm, align 1, !tbaa !17
  %i.gt = getelementptr inbounds nuw i8, ptr %.4170.i, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %.0129168.i, i64 4
  %i.gv = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.gu, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.gw = bitcast <4 x i32> %i.gv to <16 x i8>
  %i.gx = shufflevector <16 x i8> %i.gw, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gy = bitcast <16 x i8> %i.gx to <2 x i64>
  %i.gz = extractelement <2 x i64> %i.gy, i64 0
  store i64 %i.gz, ptr %i.gt, align 1, !tbaa !17
  %i.ha = getelementptr inbounds nuw i8, ptr %.4170.i, i64 24
  %i.hb = getelementptr inbounds nuw i8, ptr %.0129168.i, i64 6
  %i.hc = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.hb, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.hd = bitcast <4 x i32> %i.hc to <16 x i8>
  %i.he = shufflevector <16 x i8> %i.hd, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hf = bitcast <16 x i8> %i.he to <2 x i64>
  %i.hg = extractelement <2 x i64> %i.hf, i64 0
  store i64 %i.hg, ptr %i.ha, align 1, !tbaa !17
  %i.hh = getelementptr inbounds nuw i8, ptr %.4170.i, i64 32 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.0129168.i, i64 8 ; 3 uses
  %niter201.next.3 = add i32 %niter201, 4         ; 2 uses
  %niter201.ncmp.3.not = icmp eq i32 %niter201.next.3, %unroll_iter200
  br i1 %niter201.ncmp.3.not, label %.preheader149.i.loopexit.unr-lcssa, label %.lr.ph172.i, !llvm.loop !92

.lr.ph179.i:                                      ; preds = %.lr.ph179.i.prol.loopexit, %.lr.ph179.i
  %.5178.i = phi ptr [ %i.ij, %.lr.ph179.i ], [ %.5178.i.unr, %.lr.ph179.i.prol.loopexit ] ; 5 uses
  %.1128177.i = phi i32 [ %i.il, %.lr.ph179.i ], [ %.1128177.i.unr, %.lr.ph179.i.prol.loopexit ]
  %.1130176.i = phi ptr [ %i.ik, %.lr.ph179.i ], [ %.1130176.i.unr, %.lr.ph179.i.prol.loopexit ] ; 5 uses
  %i.hj = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.1130176.i, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.hk = bitcast <4 x i32> %i.hj to <16 x i8>
  %i.hl = shufflevector <16 x i8> %i.hk, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hm = bitcast <16 x i8> %i.hl to <4 x float>
  %i.hn = extractelement <4 x float> %i.hm, i64 0
  store float %i.hn, ptr %.5178.i, align 1, !tbaa !17
  %i.ho = getelementptr inbounds nuw i8, ptr %.5178.i, i64 4
  %i.hp = getelementptr inbounds nuw i8, ptr %.1130176.i, i64 1
  %i.hq = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.hp, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.hr = bitcast <4 x i32> %i.hq to <16 x i8>
  %i.hs = shufflevector <16 x i8> %i.hr, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ht = bitcast <16 x i8> %i.hs to <4 x float>
  %i.hu = extractelement <4 x float> %i.ht, i64 0
  store float %i.hu, ptr %i.ho, align 1, !tbaa !17
  %i.hv = getelementptr inbounds nuw i8, ptr %.5178.i, i64 8
  %i.hw = getelementptr inbounds nuw i8, ptr %.1130176.i, i64 2
  %i.hx = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.hw, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.hy = bitcast <4 x i32> %i.hx to <16 x i8>
  %i.hz = shufflevector <16 x i8> %i.hy, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ia = bitcast <16 x i8> %i.hz to <4 x float>
  %i.ib = extractelement <4 x float> %i.ia, i64 0
  store float %i.ib, ptr %i.hv, align 1, !tbaa !17
  %i.ic = getelementptr inbounds nuw i8, ptr %.5178.i, i64 12
  %i.id = getelementptr inbounds nuw i8, ptr %.1130176.i, i64 3
  %i.ie = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.id, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.if = bitcast <4 x i32> %i.ie to <16 x i8>
  %i.ig = shufflevector <16 x i8> %i.if, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ih = bitcast <16 x i8> %i.ig to <4 x float>
  %i.ii = extractelement <4 x float> %i.ih, i64 0
  store float %i.ii, ptr %i.ic, align 1, !tbaa !17
  %i.ij = getelementptr inbounds nuw i8, ptr %.5178.i, i64 16 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.1130176.i, i64 4
  %i.il = add nuw nsw i32 %.1128177.i, 4          ; 2 uses
  %exitcond236.not.i.3 = icmp eq i32 %i.il, %5
  br i1 %exitcond236.not.i.3, label %._crit_edge180.i, label %.lr.ph179.i, !llvm.loop !93

._crit_edge180.i:                                 ; preds = %.lr.ph179.i.prol.loopexit, %.lr.ph179.i, %.preheader149.i
  %.5.lcssa.i = phi ptr [ %.4.lcssa.i, %.preheader149.i ], [ %.lcssa185.unr, %.lr.ph179.i.prol.loopexit ], [ %i.ij, %.lr.ph179.i ] ; 2 uses
  %indvars.iv.next238.i = add nuw nsw i64 %indvars.iv237.i, 4 ; 3 uses
  %i.im = icmp slt i64 %indvars.iv.next238.i, %invariant.op.i
  br i1 %i.im, label %bb.g, label %.preheader148.loopexit.i, !llvm.loop !94

.preheader.loopexit.i:                            ; preds = %._crit_edge202.i
  %i.in = trunc nuw nsw i64 %indvars.iv.next242.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader148.i
  %.2125.lcssa.i = phi i32 [ %.1124.lcssa.i, %.preheader148.i ], [ %i.in, %.preheader.loopexit.i ] ; 2 uses
  %.6.lcssa.i = phi ptr [ %.3.lcssa.i, %.preheader148.i ], [ %.8.lcssa.i, %.preheader.loopexit.i ]
  %i.io = icmp slt i32 %.2125.lcssa.i, %3
  br i1 %i.io, label %.lr.ph218.i, label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph218.i:                                      ; preds = %.preheader.i
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ir = sext i32 %4 to i64                      ; 2 uses
  %i.is = icmp sgt i32 %5, 0
  br i1 %i.is, label %.lr.ph213.preheader.i, label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph213.preheader.i:                            ; preds = %.lr.ph218.i
  %i.it = sext i32 %.2125.lcssa.i to i64
  %i.iu = sext i32 %2 to i64
  %wide.trip.count.i = sext i32 %3 to i64
  %i.iv = zext nneg i32 %5 to i64                 ; 5 uses
  %min.iters.check142.a = icmp ult i32 %5, 8
  %min.iters.check144 = icmp ult i32 %5, 128
  %i.iw = and i64 %i.iv, 120
  %n.vec146 = and i64 %i.iv, 2147483520           ; 6 uses
  %i.ix = trunc nuw nsw i64 %n.vec146 to i32
  %cmp.n157 = icmp eq i64 %n.vec146, %i.iv
  %min.epilog.iters.check164 = icmp eq i64 %i.iw, 0
  %n.vec166 = and i64 %i.iv, 2147483640           ; 5 uses
  %i.iy = trunc nuw nsw i64 %n.vec166 to i32
  %cmp.n174 = icmp eq i64 %n.vec166, %i.iv
  br label %iter.check161

bb.h:                                             ; preds = %._crit_edge202.i, %.lr.ph206.i
  %indvars.iv241.i = phi i64 [ %i.ei, %.lr.ph206.i ], [ %indvars.iv.next242.i, %._crit_edge202.i ] ; 2 uses
  %.6205.i = phi ptr [ %.3.lcssa.i, %.lr.ph206.i ], [ %.8.lcssa.i, %._crit_edge202.i ] ; 10 uses
  %i.iz = add i64 %indvars.iv241.i, %i.ek         ; 2 uses
  %i.ja = load ptr, ptr %0, align 8, !tbaa !14    ; 4 uses
  %i.jb = load i32, ptr %i.ed, align 4, !tbaa !15
  %i.jc = sext i32 %i.jb to i64
  %i.jd = load i64, ptr %i.ee, align 8, !tbaa !16
  %i.je = mul i64 %i.jd, %i.jc                    ; 2 uses
  %i.jf = mul i64 %i.je, %i.iz                    ; 2 uses
  %i.jg = getelementptr i8, ptr %i.ja, i64 %i.jf
  %i.jh = getelementptr i8, ptr %i.jg, i64 %i.ef  ; 8 uses
  %i.ji = add nsw i64 %i.iz, 1
  %i.jj = mul i64 %i.je, %i.ji                    ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jj
  %i.jl = getelementptr inbounds i8, ptr %i.jk, i64 %i.ef ; 7 uses
  br i1 %i.eg, label %iter.check115, label %.preheader147.i

iter.check115:                                    ; preds = %bb.h
  br i1 %min.iters.check93.a, label %.lr.ph192.i.preheader, label %vector.memcheck79

vector.memcheck79:                                ; preds = %iter.check115
  %i.jm = getelementptr i8, ptr %.6205.i, i64 %i.eo
  %scevgep80 = getelementptr i8, ptr %i.jm, i64 4 ; 2 uses
  %scevgep81 = getelementptr i8, ptr %i.ja, i64 %i.ef
  %scevgep82.a = getelementptr i8, ptr %scevgep81, i64 %i.jj
  %i.jn = getelementptr i8, ptr %i.ja, i64 %i.ep
  %i.jo = getelementptr i8, ptr %i.jn, i64 %i.ef
  %scevgep83.a = getelementptr i8, ptr %i.jo, i64 2 ; 2 uses
  %scevgep84 = getelementptr i8, ptr %scevgep83.a, i64 %i.jj
  %scevgep85 = getelementptr i8, ptr %scevgep83.a, i64 %i.jf
  %bound086 = icmp ult ptr %.6205.i, %scevgep84
  %bound187 = icmp ult ptr %scevgep82.a, %scevgep80
  %found.conflict88 = and i1 %bound086, %bound187
  %bound089 = icmp ult ptr %.6205.i, %scevgep85
  %bound190 = icmp ult ptr %i.jh, %scevgep80
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx92 = or i1 %found.conflict88, %found.conflict91
  br i1 %conflict.rdx92, label %.lr.ph192.i.preheader, label %vector.main.loop.iter.check94

vector.main.loop.iter.check94:                    ; preds = %vector.memcheck79
  br i1 %min.iters.check95, label %vec.epilog.ph119, label %vector.ph96

vector.ph96:                                      ; preds = %vector.main.loop.iter.check94
  %i.jp = getelementptr i8, ptr %i.jl, i64 %i.ew  ; 2 uses
  %i.jq = getelementptr i8, ptr %i.jh, i64 %i.ew  ; 2 uses
  %i.jr = getelementptr i8, ptr %.6205.i, i64 %i.ex ; 2 uses
  br label %vector.body98

vector.body98:                                    ; preds = %vector.ph96, %vector.body98
  %index99 = phi i64 [ 0, %vector.ph96 ], [ %index.next108, %vector.body98 ] ; 3 uses
  %i.js = shl i64 %index99, 1                     ; 2 uses
  %next.gep100.a = getelementptr i8, ptr %i.jl, i64 %i.js
  %next.gep101 = getelementptr i8, ptr %i.jh, i64 %i.js
  %i.jt = shl i64 %index99, 2
  %next.gep102 = getelementptr i8, ptr %.6205.i, i64 %i.jt
  %wide.vec = load <64 x i8>, ptr %next.gep101, align 1, !tbaa !17, !alias.scope !116
  %wide.vec104 = load <64 x i8>, ptr %next.gep100.a, align 1, !tbaa !17, !alias.scope !117
  %interleaved.vec107 = shufflevector <64 x i8> %wide.vec, <64 x i8> %wide.vec104, <128 x i32> <i32 0, i32 1, i32 64, i32 65, i32 2, i32 3, i32 66, i32 67, i32 4, i32 5, i32 68, i32 69, i32 6, i32 7, i32 70, i32 71, i32 8, i32 9, i32 72, i32 73, i32 10, i32 11, i32 74, i32 75, i32 12, i32 13, i32 76, i32 77, i32 14, i32 15, i32 78, i32 79, i32 16, i32 17, i32 80, i32 81, i32 18, i32 19, i32 82, i32 83, i32 20, i32 21, i32 84, i32 85, i32 22, i32 23, i32 86, i32 87, i32 24, i32 25, i32 88, i32 89, i32 26, i32 27, i32 90, i32 91, i32 28, i32 29, i32 92, i32 93, i32 30, i32 31, i32 94, i32 95, i32 32, i32 33, i32 96, i32 97, i32 34, i32 35, i32 98, i32 99, i32 36, i32 37, i32 100, i32 101, i32 38, i32 39, i32 102, i32 103, i32 40, i32 41, i32 104, i32 105, i32 42, i32 43, i32 106, i32 107, i32 44, i32 45, i32 108, i32 109, i32 46, i32 47, i32 110, i32 111, i32 48, i32 49, i32 112, i32 113, i32 50, i32 51, i32 114, i32 115, i32 52, i32 53, i32 116, i32 117, i32 54, i32 55, i32 118, i32 119, i32 56, i32 57, i32 120, i32 121, i32 58, i32 59, i32 122, i32 123, i32 60, i32 61, i32 124, i32 125, i32 62, i32 63, i32 126, i32 127>
  store <128 x i8> %interleaved.vec107, ptr %next.gep102, align 1, !tbaa !17, !alias.scope !118, !noalias !119
  %index.next108 = add nuw i64 %index99, 32       ; 2 uses
  %i.ju = icmp eq i64 %index.next108, %n.vec97
  br i1 %i.ju, label %middle.block109, label %vector.body98, !llvm.loop !99

middle.block109:                                  ; preds = %vector.body98
  br i1 %cmp.n110, label %.preheader147.i, label %vec.epilog.iter.check117

vec.epilog.iter.check117:                         ; preds = %middle.block109
  br i1 %min.epilog.iters.check118, label %.lr.ph192.i.preheader, label %vec.epilog.ph119, !prof !22

vec.epilog.ph119:                                 ; preds = %vector.main.loop.iter.check94, %vec.epilog.iter.check117
  %vec.epilog.resume.val111 = phi i64 [ %n.vec97, %vec.epilog.iter.check117 ], [ 0, %vector.main.loop.iter.check94 ]
  %i.jv = getelementptr i8, ptr %i.jl, i64 %i.fa  ; 2 uses
  %i.jw = getelementptr i8, ptr %i.jh, i64 %i.fa  ; 2 uses
  %i.jx = getelementptr i8, ptr %.6205.i, i64 %i.fb ; 2 uses
  br label %vec.epilog.vector.body121

vec.epilog.vector.body121:                        ; preds = %vec.epilog.vector.body121, %vec.epilog.ph119
  %index122 = phi i64 [ %vec.epilog.resume.val111, %vec.epilog.ph119 ], [ %index.next133, %vec.epilog.vector.body121 ] ; 3 uses
  %i.jy = shl i64 %index122, 1                    ; 2 uses
  %next.gep123.a = getelementptr i8, ptr %i.jl, i64 %i.jy
  %next.gep124 = getelementptr i8, ptr %i.jh, i64 %i.jy
  %i.jz = shl i64 %index122, 2
  %next.gep125 = getelementptr i8, ptr %.6205.i, i64 %i.jz
  %wide.vec126 = load <16 x i8>, ptr %next.gep124, align 1, !tbaa !17, !alias.scope !116
  %wide.vec129 = load <16 x i8>, ptr %next.gep123.a, align 1, !tbaa !17, !alias.scope !117
  %interleaved.vec132 = shufflevector <16 x i8> %wide.vec126, <16 x i8> %wide.vec129, <32 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23, i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  store <32 x i8> %interleaved.vec132, ptr %next.gep125, align 1, !tbaa !17, !alias.scope !118, !noalias !119
  %index.next133 = add nuw i64 %index122, 8       ; 2 uses
  %i.ka = icmp eq i64 %index.next133, %n.vec120
  br i1 %i.ka, label %vec.epilog.middle.block134, label %vec.epilog.vector.body121, !llvm.loop !100

vec.epilog.middle.block134:                       ; preds = %vec.epilog.vector.body121
  br i1 %cmp.n135, label %.preheader147.i, label %.lr.ph192.i.preheader

.lr.ph192.i.preheader:                            ; preds = %iter.check115, %vector.memcheck79, %vec.epilog.iter.check117, %vec.epilog.middle.block134
  %.0116190.i.ph = phi i32 [ 0, %iter.check115 ], [ 0, %vector.memcheck79 ], [ %i.ev, %vec.epilog.iter.check117 ], [ %i.ez, %vec.epilog.middle.block134 ]
  %.0117189.i.ph = phi ptr [ %i.jl, %iter.check115 ], [ %i.jl, %vector.memcheck79 ], [ %i.jp, %vec.epilog.iter.check117 ], [ %i.jv, %vec.epilog.middle.block134 ]
  %.0119188.i.ph = phi ptr [ %i.jh, %iter.check115 ], [ %i.jh, %vector.memcheck79 ], [ %i.jq, %vec.epilog.iter.check117 ], [ %i.jw, %vec.epilog.middle.block134 ]
  %.7187.i.ph = phi ptr [ %.6205.i, %iter.check115 ], [ %.6205.i, %vector.memcheck79 ], [ %i.jr, %vec.epilog.iter.check117 ], [ %i.jx, %vec.epilog.middle.block134 ]
  br label %.lr.ph192.i

.preheader147.i:                                  ; preds = %.lr.ph192.i, %middle.block109, %vec.epilog.middle.block134, %bb.h
  %.7.lcssa.i = phi ptr [ %.6205.i, %bb.h ], [ %i.jx, %vec.epilog.middle.block134 ], [ %i.jr, %middle.block109 ], [ %i.lu, %.lr.ph192.i ] ; 10 uses
  %.0119.lcssa.i = phi ptr [ %i.jh, %bb.h ], [ %i.jw, %vec.epilog.middle.block134 ], [ %i.jq, %middle.block109 ], [ %i.lv, %.lr.ph192.i ] ; 8 uses
  %.0117.lcssa.i = phi ptr [ %i.jl, %bb.h ], [ %i.jv, %vec.epilog.middle.block134 ], [ %i.jp, %middle.block109 ], [ %i.lw, %.lr.ph192.i ] ; 8 uses
  %.0116.lcssa.i = phi i32 [ 0, %bb.h ], [ %i.eh, %vec.epilog.middle.block134 ], [ %i.eh, %middle.block109 ], [ %i.eh, %.lr.ph192.i ] ; 7 uses
  %i.kb = icmp slt i32 %.0116.lcssa.i, %5
  br i1 %i.kb, label %iter.check, label %._crit_edge202.i

iter.check:                                       ; preds = %.preheader147.i
  %i.kc = xor i32 %.0116.lcssa.i, -1
  %i.kd = add i32 %5, %i.kc                       ; 3 uses
  %i.ke = zext i32 %i.kd to i64
  %i.kf = add nuw nsw i64 %i.ke, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.kd, 7
  br i1 %min.iters.check, label %.lr.ph201.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.7.lcssa.i, i64 2
  %i.kg = xor i32 %.0116.lcssa.i, -1
  %i.kh = add i32 %5, %i.kg
  %i.ki = zext i32 %i.kh to i64                   ; 3 uses
  %i.kj = shl nuw nsw i64 %i.ki, 1
  %scevgep50 = getelementptr i8, ptr %scevgep, i64 %i.kj ; 2 uses
  %scevgep51 = getelementptr i8, ptr %.0117.lcssa.i, i64 1
  %scevgep52 = getelementptr i8, ptr %scevgep51, i64 %i.ki
  %scevgep53 = getelementptr i8, ptr %.0119.lcssa.i, i64 1
  %scevgep54 = getelementptr i8, ptr %scevgep53, i64 %i.ki
  %bound0 = icmp ult ptr %.7.lcssa.i, %scevgep52
  %bound1 = icmp ult ptr %.0117.lcssa.i, %scevgep50
  %found.conflict = and i1 %bound0, %bound1
  %bound055 = icmp ult ptr %.7.lcssa.i, %scevgep54
  %bound156 = icmp ult ptr %.0119.lcssa.i, %scevgep50
  %found.conflict57 = and i1 %bound055, %bound156
  %conflict.rdx = or i1 %found.conflict, %found.conflict57
  br i1 %conflict.rdx, label %.lr.ph201.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check58 = icmp ult i32 %i.kd, 31
  br i1 %min.iters.check58, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.kk = and i64 %i.kf, 24
  %n.vec = and i64 %i.kf, 8589934560              ; 7 uses
  %i.kl = trunc i64 %n.vec to i32
  %i.km = add i32 %.0116.lcssa.i, %i.kl
  %i.kn = getelementptr i8, ptr %.0117.lcssa.i, i64 %n.vec
  %i.ko = getelementptr i8, ptr %.0119.lcssa.i, i64 %n.vec
  %i.kp = shl nuw nsw i64 %n.vec, 1
  %i.kq = getelementptr i8, ptr %.7.lcssa.i, i64 %i.kp ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %next.gep = getelementptr i8, ptr %.0117.lcssa.i, i64 %index
  %next.gep59 = getelementptr i8, ptr %.0119.lcssa.i, i64 %index
  %i.kr = shl i64 %index, 1
  %next.gep60 = getelementptr i8, ptr %.7.lcssa.i, i64 %i.kr
  %wide.load = load <32 x i8>, ptr %next.gep59, align 1, !tbaa !17, !alias.scope !120
  %wide.load61 = load <32 x i8>, ptr %next.gep, align 1, !tbaa !17, !alias.scope !121
  %interleaved.vec = shufflevector <32 x i8> %wide.load, <32 x i8> %wide.load61, <64 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  store <64 x i8> %interleaved.vec, ptr %next.gep60, align 1, !tbaa !17, !alias.scope !122, !noalias !123
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ks = icmp eq i64 %index.next, %n.vec
  br i1 %i.ks, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kf, %n.vec
  br i1 %cmp.n, label %._crit_edge202.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.kk, 0
  br i1 %min.epilog.iters.check, label %.lr.ph201.i.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec65 = and i64 %i.kf, 8589934584            ; 6 uses
  %i.kt = trunc i64 %n.vec65 to i32
  %i.ku = add i32 %.0116.lcssa.i, %i.kt
  %i.kv = getelementptr i8, ptr %.0117.lcssa.i, i64 %n.vec65
  %i.kw = getelementptr i8, ptr %.0119.lcssa.i, i64 %n.vec65
  %i.kx = shl nuw nsw i64 %n.vec65, 1
  %i.ky = getelementptr i8, ptr %.7.lcssa.i, i64 %i.kx ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index66 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next73, %vec.epilog.vector.body ] ; 4 uses
  %next.gep67 = getelementptr i8, ptr %.0117.lcssa.i, i64 %index66
  %next.gep68 = getelementptr i8, ptr %.0119.lcssa.i, i64 %index66
  %i.kz = shl i64 %index66, 1
  %next.gep69 = getelementptr i8, ptr %.7.lcssa.i, i64 %i.kz
  %wide.load70 = load <8 x i8>, ptr %next.gep68, align 1, !tbaa !17, !alias.scope !120
  %wide.load71 = load <8 x i8>, ptr %next.gep67, align 1, !tbaa !17, !alias.scope !121
  %interleaved.vec72 = shufflevector <8 x i8> %wide.load70, <8 x i8> %wide.load71, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec72, ptr %next.gep69, align 1, !tbaa !17, !alias.scope !122, !noalias !123
  %index.next73 = add nuw i64 %index66, 8         ; 2 uses
  %i.la = icmp eq i64 %index.next73, %n.vec65
  br i1 %i.la, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !106

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n74 = icmp eq i64 %i.kf, %n.vec65
  br i1 %cmp.n74, label %._crit_edge202.i, label %.lr.ph201.i.preheader

.lr.ph201.i.preheader:                            ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1200.i.ph = phi i32 [ %.0116.lcssa.i, %iter.check ], [ %.0116.lcssa.i, %vector.memcheck ], [ %i.km, %vec.epilog.iter.check ], [ %i.ku, %vec.epilog.middle.block ] ; 4 uses
  %.1118199.i.ph = phi ptr [ %.0117.lcssa.i, %iter.check ], [ %.0117.lcssa.i, %vector.memcheck ], [ %i.kn, %vec.epilog.iter.check ], [ %i.kv, %vec.epilog.middle.block ] ; 2 uses
  %.1120198.i.ph = phi ptr [ %.0119.lcssa.i, %iter.check ], [ %.0119.lcssa.i, %vector.memcheck ], [ %i.ko, %vec.epilog.iter.check ], [ %i.kw, %vec.epilog.middle.block ] ; 2 uses
  %.8197.i.ph = phi ptr [ %.7.lcssa.i, %iter.check ], [ %.7.lcssa.i, %vector.memcheck ], [ %i.kq, %vec.epilog.iter.check ], [ %i.ky, %vec.epilog.middle.block ] ; 2 uses
  %i.lb = sub i32 %5, %.1200.i.ph
  %xtraiter205 = and i32 %i.lb, 3                 ; 2 uses
  %lcmp.mod206.not = icmp eq i32 %xtraiter205, 0
  br i1 %lcmp.mod206.not, label %.lr.ph201.i.prol.loopexit, label %.lr.ph201.i.prol

.lr.ph201.i.prol:                                 ; preds = %.lr.ph201.i.preheader, %.lr.ph201.i.prol
  %.1200.i.prol = phi i32 [ %i.li, %.lr.ph201.i.prol ], [ %.1200.i.ph, %.lr.ph201.i.preheader ]
  %.1118199.i.prol = phi ptr [ %i.lh, %.lr.ph201.i.prol ], [ %.1118199.i.ph, %.lr.ph201.i.preheader ] ; 2 uses
  %.1120198.i.prol = phi ptr [ %i.lg, %.lr.ph201.i.prol ], [ %.1120198.i.ph, %.lr.ph201.i.preheader ] ; 2 uses
  %.8197.i.prol = phi ptr [ %i.lf, %.lr.ph201.i.prol ], [ %.8197.i.ph, %.lr.ph201.i.preheader ] ; 3 uses
  %prol.iter207 = phi i32 [ %prol.iter207.next, %.lr.ph201.i.prol ], [ 0, %.lr.ph201.i.preheader ]
  %i.lc = load i8, ptr %.1120198.i.prol, align 1, !tbaa !17
  store i8 %i.lc, ptr %.8197.i.prol, align 1, !tbaa !17
  %i.ld = load i8, ptr %.1118199.i.prol, align 1, !tbaa !17
  %i.le = getelementptr inbounds nuw i8, ptr %.8197.i.prol, i64 1
  store i8 %i.ld, ptr %i.le, align 1, !tbaa !17
  %i.lf = getelementptr inbounds nuw i8, ptr %.8197.i.prol, i64 2 ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.1120198.i.prol, i64 1 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.1118199.i.prol, i64 1 ; 2 uses
  %i.li = add nuw nsw i32 %.1200.i.prol, 1        ; 2 uses
  %prol.iter207.next = add i32 %prol.iter207, 1   ; 2 uses
  %prol.iter207.cmp.not = icmp eq i32 %prol.iter207.next, %xtraiter205
  br i1 %prol.iter207.cmp.not, label %.lr.ph201.i.prol.loopexit, label %.lr.ph201.i.prol, !llvm.loop !107

.lr.ph201.i.prol.loopexit:                        ; preds = %.lr.ph201.i.prol, %.lr.ph201.i.preheader
  %.lcssa182.unr = phi ptr [ poison, %.lr.ph201.i.preheader ], [ %i.lf, %.lr.ph201.i.prol ]
  %.1200.i.unr = phi i32 [ %.1200.i.ph, %.lr.ph201.i.preheader ], [ %i.li, %.lr.ph201.i.prol ]
end_hunk_1
