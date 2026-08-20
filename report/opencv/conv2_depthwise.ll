inline.NumInlined: 226
inline.NumDeleted: 126
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baselineL16depthwiseConv32fEPKvS8_PvRKNS5_14dnn5_v202606059ConvStateES8_PKfSF_E3$_0E9_M_invokeERKSt9_Any_dataS3_":bb.a
  %i.nb = phi float [ %i.na, %bb.br ], [ 0.000000e+00, %.lr.ph.i.us.i.i ]
  store float %i.nb, ptr %i.b, align 16, !tbaa !89
  br i1 %i.ip, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.nc = load float, ptr %invariant.gep586.i.i.i, align 4, !tbaa !89
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.nd = phi float [ %i.nc, %bb.bt ], [ %.0232.i.i.i, %bb.bs ]
  store float %i.nd, ptr %i.c, align 16, !tbaa !89
  %exitcond.not.i.us.i.i = icmp eq i32 %i.mq, 1
  br i1 %exitcond.not.i.us.i.i, label %.preheader377.i.i.i, label %.lr.ph.i.us.i.i.1

.lr.ph.i.us.i.i.1:                                ; preds = %bb.bu
  store float 1.000000e+00, ptr %i.kx, align 4, !tbaa !89
  br i1 %.not288.i.i.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph.i.us.i.i.1
  %gep585.i.us.i.i.1 = getelementptr i8, ptr %invariant.gep584.i.i.i, i64 4
  %i.ne = load float, ptr %gep585.i.us.i.i.1, align 4, !tbaa !89
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %.lr.ph.i.us.i.i.1
  %i.nf = phi float [ %i.ne, %bb.bv ], [ 0.000000e+00, %.lr.ph.i.us.i.i.1 ]
  store float %i.nf, ptr %i.ky, align 4, !tbaa !89
  br i1 %i.ip, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %gep587.i.us.i.i.1 = getelementptr i8, ptr %invariant.gep586.i.i.i, i64 4
  %i.ng = load float, ptr %gep587.i.us.i.i.1, align 4, !tbaa !89
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.nh = phi float [ %i.ng, %bb.bx ], [ %.0232.i.i.i, %bb.bw ]
  store float %i.nh, ptr %i.kz, align 4, !tbaa !89
  %exitcond.not.i.us.i.i.1 = icmp eq i32 %i.mq, 2
  br i1 %exitcond.not.i.us.i.i.1, label %.preheader377.i.i.i, label %.lr.ph.i.us.i.i.2

.lr.ph.i.us.i.i.2:                                ; preds = %bb.by
  store float 1.000000e+00, ptr %i.la, align 8, !tbaa !89
  br i1 %.not288.i.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph.i.us.i.i.2
  %gep585.i.us.i.i.2 = getelementptr i8, ptr %invariant.gep584.i.i.i, i64 8
  %i.ni = load float, ptr %gep585.i.us.i.i.2, align 4, !tbaa !89
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %.lr.ph.i.us.i.i.2
  %i.nj = phi float [ %i.ni, %bb.bz ], [ 0.000000e+00, %.lr.ph.i.us.i.i.2 ]
  store float %i.nj, ptr %i.lb, align 8, !tbaa !89
  br i1 %i.ip, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %gep587.i.us.i.i.2 = getelementptr i8, ptr %invariant.gep586.i.i.i, i64 8
  %i.nk = load float, ptr %gep587.i.us.i.i.2, align 4, !tbaa !89
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.nl = phi float [ %i.nk, %bb.cb ], [ %.0232.i.i.i, %bb.ca ]
  store float %i.nl, ptr %i.lc, align 8, !tbaa !89
  %exitcond.not.i.us.i.i.2 = icmp eq i32 %i.mq, 3
  br i1 %exitcond.not.i.us.i.i.2, label %.preheader377.i.i.i, label %.lr.ph.i.us.i.i.3

.lr.ph.i.us.i.i.3:                                ; preds = %bb.cc
  store float 1.000000e+00, ptr %i.ld, align 4, !tbaa !89
  br i1 %.not288.i.i.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph.i.us.i.i.3
  %gep585.i.us.i.i.3 = getelementptr i8, ptr %invariant.gep584.i.i.i, i64 12
  %i.nm = load float, ptr %gep585.i.us.i.i.3, align 4, !tbaa !89
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %.lr.ph.i.us.i.i.3
  %i.nn = phi float [ %i.nm, %bb.cd ], [ 0.000000e+00, %.lr.ph.i.us.i.i.3 ]
  store float %i.nn, ptr %i.le, align 4, !tbaa !89
  br i1 %i.ip, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %gep587.i.us.i.i.3 = getelementptr i8, ptr %invariant.gep586.i.i.i, i64 12
  %i.no = load float, ptr %gep587.i.us.i.i.3, align 4, !tbaa !89
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.np = phi float [ %i.no, %bb.cf ], [ %.0232.i.i.i, %bb.ce ]
  store float %i.np, ptr %i.lf, align 4, !tbaa !89
  %exitcond.not.i.us.i.i.3 = icmp eq i32 %i.mq, 4
  br i1 %exitcond.not.i.us.i.i.3, label %.preheader377.i.i.i, label %.lr.ph.i.us.i.i.4

.lr.ph.i.us.i.i.4:                                ; preds = %bb.cg
  store float 1.000000e+00, ptr %i.lg, align 16, !tbaa !89
  br i1 %.not288.i.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph.i.us.i.i.4
  %gep585.i.us.i.i.4 = getelementptr i8, ptr %invariant.gep584.i.i.i, i64 16
  %i.nq = load float, ptr %gep585.i.us.i.i.4, align 4, !tbaa !89
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %.lr.ph.i.us.i.i.4
  %i.nr = phi float [ %i.nq, %bb.ch ], [ 0.000000e+00, %.lr.ph.i.us.i.i.4 ]
  store float %i.nr, ptr %i.lh, align 16, !tbaa !89
  br i1 %i.ip, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %gep587.i.us.i.i.4 = getelementptr i8, ptr %invariant.gep586.i.i.i, i64 16
  %i.ns = load float, ptr %gep587.i.us.i.i.4, align 4, !tbaa !89
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.nt = phi float [ %i.ns, %bb.cj ], [ %.0232.i.i.i, %bb.ci ]
  store float %i.nt, ptr %i.li, align 16, !tbaa !89
  %exitcond.not.i.us.i.i.4 = icmp eq i32 %i.mq, 5
  br i1 %exitcond.not.i.us.i.i.4, label %.preheader377.i.i.i, label %.lr.ph.i.us.i.i.5

.lr.ph.i.us.i.i.5:                                ; preds = %bb.ck
  store float 1.000000e+00, ptr %i.lj, align 4, !tbaa !89
  br i1 %.not288.i.i.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph.i.us.i.i.5
  %gep585.i.us.i.i.5 = getelementptr i8, ptr %invariant.gep584.i.i.i, i64 20
  %i.nu = load float, ptr %gep585.i.us.i.i.5, align 4, !tbaa !89
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %.lr.ph.i.us.i.i.5
  %i.nv = phi float [ %i.nu, %bb.cl ], [ 0.000000e+00, %.lr.ph.i.us.i.i.5 ]
  store float %i.nv, ptr %i.lk, align 4, !tbaa !89
  br i1 %i.ip, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %gep587.i.us.i.i.5 = getelementptr i8, ptr %invariant.gep586.i.i.i, i64 20
  %i.nw = load float, ptr %gep587.i.us.i.i.5, align 4, !tbaa !89
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.nx = phi float [ %i.nw, %bb.cn ], [ %.0232.i.i.i, %bb.cm ]
  store float %i.nx, ptr %i.ll, align 4, !tbaa !89
  %exitcond.not.i.us.i.i.5 = icmp eq i32 %i.mq, 6
  br i1 %exitcond.not.i.us.i.i.5, label %.preheader377.i.i.i, label %.lr.ph.i.us.i.i.6

.lr.ph.i.us.i.i.6:                                ; preds = %bb.co
  store float 1.000000e+00, ptr %i.lm, align 8, !tbaa !89
  br i1 %.not288.i.i.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %.lr.ph.i.us.i.i.6
  %gep585.i.us.i.i.6 = getelementptr i8, ptr %invariant.gep584.i.i.i, i64 24
  %i.ny = load float, ptr %gep585.i.us.i.i.6, align 4, !tbaa !89
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %.lr.ph.i.us.i.i.6
  %i.nz = phi float [ %i.ny, %bb.cp ], [ 0.000000e+00, %.lr.ph.i.us.i.i.6 ]
  store float %i.nz, ptr %i.ln, align 8, !tbaa !89
  br i1 %i.ip, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %gep587.i.us.i.i.6 = getelementptr i8, ptr %invariant.gep586.i.i.i, i64 24
  %i.oa = load float, ptr %gep587.i.us.i.i.6, align 4, !tbaa !89
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.ob = phi float [ %i.oa, %bb.cr ], [ %.0232.i.i.i, %bb.cq ]
  store float %i.ob, ptr %i.lo, align 8, !tbaa !89
  %exitcond.not.i.us.i.i.6 = icmp eq i32 %i.mq, 7
  br i1 %exitcond.not.i.us.i.i.6, label %.preheader377.i.i.i, label %.lr.ph.i.us.i.i.7

.lr.ph.i.us.i.i.7:                                ; preds = %bb.cs
  store float 1.000000e+00, ptr %i.lp, align 4, !tbaa !89
  br i1 %.not288.i.i.i, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph.i.us.i.i.7
  %gep585.i.us.i.i.7 = getelementptr i8, ptr %invariant.gep584.i.i.i, i64 28
  %i.oc = load float, ptr %gep585.i.us.i.i.7, align 4, !tbaa !89
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %.lr.ph.i.us.i.i.7
  %i.od = phi float [ %i.oc, %bb.ct ], [ 0.000000e+00, %.lr.ph.i.us.i.i.7 ]
  store float %i.od, ptr %i.lq, align 4, !tbaa !89
  br i1 %i.ip, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %gep587.i.us.i.i.7 = getelementptr i8, ptr %invariant.gep586.i.i.i, i64 28
  %i.oe = load float, ptr %gep587.i.us.i.i.7, align 4, !tbaa !89
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.of = phi float [ %i.oe, %bb.cv ], [ %.0232.i.i.i, %bb.cu ]
  store float %i.of, ptr %i.lr, align 4, !tbaa !89
  br label %.preheader377.i.i.i

.preheader377.i.i.sink.split.i:                   ; preds = %.lr.ph.i.preheader.i.split.i, %.lr.ph.i.preheader.i.split.us.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr align 4 %invariant.gep586.i.i.i, i64 %i.mz, i1 false), !tbaa !89
  br label %.preheader377.i.i.i

.preheader377.i.i.i:                              ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.3, %.lr.ph.i.i.i.4, %.lr.ph.i.i.i.5, %.lr.ph.i.i.i.6, %.lr.ph.i.i.i.7, %.lr.ph.i.i.us.i, %.lr.ph.i.i.us.i.1, %.lr.ph.i.i.us.i.2, %.lr.ph.i.i.us.i.3, %.lr.ph.i.i.us.i.4, %.lr.ph.i.i.us.i.5, %.lr.ph.i.i.us.i.6, %.lr.ph.i.i.us.i.7, %bb.bu, %bb.by, %bb.cc, %bb.cg, %bb.ck, %bb.co, %bb.cs, %bb.cw, %.preheader377.i.i.sink.split.i
  %i.og = icmp slt i32 %i.mq, 8
  br i1 %i.og, label %.lr.ph380.preheader.i.i.i, label %.preheader376.i.i.i

.lr.ph380.preheader.i.i.i:                        ; preds = %.preheader377.i.i.i, %bb.bq
  %.0229.lcssa580.i.i.i = phi i32 [ %.sroa.speculated351.i.i.i, %.preheader377.i.i.i ], [ 0, %bb.bq ]
  %i.oh = shl nuw nsw i32 %.0229.lcssa580.i.i.i, 2 ; 2 uses
  %i.oi = zext nneg i32 %i.oh to i64              ; 3 uses
  %scevgep.i.i.i = getelementptr nuw i8, ptr %i.a, i64 %i.oi
  %narrow.i.i.i = sub nuw nsw i32 32, %i.oh
  %i.oj = zext nneg i32 %narrow.i.i.i to i64      ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %scevgep.i.i.i, i8 0, i64 %i.oj, i1 false), !tbaa !89
  %scevgep444.i.i.i = getelementptr nuw i8, ptr %i.b, i64 %i.oi
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %scevgep444.i.i.i, i8 0, i64 %i.oj, i1 false), !tbaa !89
  %scevgep445.i.i.i = getelementptr nuw i8, ptr %i.c, i64 %i.oi
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %scevgep445.i.i.i, i8 0, i64 %i.oj, i1 false), !tbaa !89
  br label %.preheader376.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.preheader.i.split.i
  store float %.0232.i.i.i, ptr %i.c, align 16, !tbaa !89
  %exitcond.not.i.i.i = icmp eq i32 %i.mq, 1
  br i1 %exitcond.not.i.i.i, label %.preheader377.i.i.i, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.i.i
  store float %.0232.i.i.i, ptr %i.kj, align 4, !tbaa !89
  %exitcond.not.i.i.i.1 = icmp eq i32 %i.mq, 2
  br i1 %exitcond.not.i.i.i.1, label %.preheader377.i.i.i, label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.1
  store float %.0232.i.i.i, ptr %i.kk, align 8, !tbaa !89
  %exitcond.not.i.i.i.2 = icmp eq i32 %i.mq, 3
  br i1 %exitcond.not.i.i.i.2, label %.preheader377.i.i.i, label %.lr.ph.i.i.i.3

.lr.ph.i.i.i.3:                                   ; preds = %.lr.ph.i.i.i.2
  store float %.0232.i.i.i, ptr %i.kl, align 4, !tbaa !89
  %exitcond.not.i.i.i.3 = icmp eq i32 %i.mq, 4
  br i1 %exitcond.not.i.i.i.3, label %.preheader377.i.i.i, label %.lr.ph.i.i.i.4

.lr.ph.i.i.i.4:                                   ; preds = %.lr.ph.i.i.i.3
  store float %.0232.i.i.i, ptr %i.km, align 16, !tbaa !89
  %exitcond.not.i.i.i.4 = icmp eq i32 %i.mq, 5
  br i1 %exitcond.not.i.i.i.4, label %.preheader377.i.i.i, label %.lr.ph.i.i.i.5

.lr.ph.i.i.i.5:                                   ; preds = %.lr.ph.i.i.i.4
  store float %.0232.i.i.i, ptr %i.kn, align 4, !tbaa !89
  %exitcond.not.i.i.i.5 = icmp eq i32 %i.mq, 6
  br i1 %exitcond.not.i.i.i.5, label %.preheader377.i.i.i, label %.lr.ph.i.i.i.6

.lr.ph.i.i.i.6:                                   ; preds = %.lr.ph.i.i.i.5
  store float %.0232.i.i.i, ptr %i.ko, align 8, !tbaa !89
  %exitcond.not.i.i.i.6 = icmp eq i32 %i.mq, 7
  br i1 %exitcond.not.i.i.i.6, label %.preheader377.i.i.i, label %.lr.ph.i.i.i.7

.lr.ph.i.i.i.7:                                   ; preds = %.lr.ph.i.i.i.6
  store float %.0232.i.i.i, ptr %i.kp, align 4, !tbaa !89
  br label %.preheader377.i.i.i

.preheader376.i.i.i:                              ; preds = %.lr.ph380.preheader.i.i.i, %.preheader377.i.i.i
  br i1 %i.iq, label %.lr.ph412.i.i.i, label %._crit_edge413.i.i.i

.lr.ph412.i.i.i:                                  ; preds = %.preheader376.i.i.i
  br i1 %i.ir, label %.lr.ph406.us.i.i.i, label %.lr.ph412.split.i.i.i

.lr.ph406.us.i.i.i:                               ; preds = %.lr.ph412.i.i.i, %bb.db
  %.0228411.us.i.i.i = phi i32 [ %i.pg, %bb.db ], [ 0, %.lr.ph412.i.i.i ] ; 4 uses
  %.1234410.us.i.i.i = phi ptr [ %i.pe, %bb.db ], [ %.0233430.i.i.i, %.lr.ph412.i.i.i ]
  %.1237409.us.i.i.i = phi ptr [ %i.pd, %bb.db ], [ %.0236429.i.i.i, %.lr.ph412.i.i.i ] ; 7 uses
  %i.ok = mul nsw i32 %.0228411.us.i.i.i, %i.ea
  %i.ol = sub nsw i32 %i.ok, %i.eg                ; 2 uses
  %.not281.us.i.i.i = icmp sge i32 %.0228411.us.i.i.i, %i.em
  %i.om = icmp slt i32 %.0228411.us.i.i.i, %i.eo
  %or.cond.not365.not368.us.i.i.i = select i1 %.not281.us.i.i.i, i1 %i.om, i1 false
  %i.on = mul nsw i32 %i.ol, %i.df
  %scevgep = getelementptr i8, ptr %.1237409.us.i.i.i, i64 %i.jz ; 3 uses
  %scevgep131 = getelementptr i8, ptr %.1237409.us.i.i.i, i64 %i.kf
  %i.oo = insertelement <4 x ptr> poison, ptr %.1237409.us.i.i.i, i64 0
  %i.op = shufflevector <4 x ptr> %i.oo, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.oq = insertelement <4 x ptr> poison, ptr %scevgep131, i64 0
  %i.or = shufflevector <4 x ptr> %i.oq, <4 x ptr> poison, <4 x i32> zeroinitializer
  %bound0 = icmp ult ptr %.1237409.us.i.i.i, %scevgep69
  %bound1 = icmp ult ptr %i.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound072 = icmp ult ptr %.1237409.us.i.i.i, %scevgep70
  %bound173 = icmp ult ptr %i.b, %scevgep
  %found.conflict74 = and i1 %bound072, %bound173
  %conflict.rdx = or i1 %found.conflict, %found.conflict74
  %bound076 = icmp ult ptr %.1237409.us.i.i.i, %scevgep71
  %bound177 = icmp ult ptr %i.c, %scevgep
  %found.conflict78 = and i1 %bound076, %bound177
  %conflict.rdx80 = or i1 %conflict.rdx, %found.conflict78
  br label %bb.cx

bb.cx:                                            ; preds = %.loopexit373.us.i.i.i, %.lr.ph406.us.i.i.i
  %.0227405.us.i.i.i = phi i32 [ 0, %.lr.ph406.us.i.i.i ], [ %i.pc, %.loopexit373.us.i.i.i ] ; 4 uses
  %.2235403.us.i.i.i = phi ptr [ %.1234410.us.i.i.i, %.lr.ph406.us.i.i.i ], [ %i.pe, %.loopexit373.us.i.i.i ] ; 44 uses
  %.2238401.us.i.i.i = phi ptr [ %.1237409.us.i.i.i, %.lr.ph406.us.i.i.i ], [ %i.pd, %.loopexit373.us.i.i.i ] ; 49 uses
  %.not282.us.i.i.i = icmp sge i32 %.0227405.us.i.i.i, %i.eq
  %or.cond289.not366.us.i.i.i = select i1 %or.cond.not365.not368.us.i.i.i, i1 %.not282.us.i.i.i, i1 false
  %i.os = icmp slt i32 %.0227405.us.i.i.i, %i.es
  %or.cond290.us.i.i.i = select i1 %or.cond289.not366.us.i.i.i, i1 %i.os, i1 false
  %i.ot = select i1 %or.cond290.us.i.i.i, i32 %i.eu, i32 %i.ds
  %i.ou = mul nsw i32 %.0227405.us.i.i.i, %i.ec
  %i.ov = sub nsw i32 %i.ou, %i.ei                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %.2238401.us.i.i.i, i8 0, i64 %i.iu, i1 false)
  %i.ow = add nsw i32 %i.ov, %i.on
  %i.ox = mul nsw i32 %i.ow, %i.dh
  %i.oy = sub i32 %i.ox, %i.ek
  br label %bb.cy

bb.cy:                                            ; preds = %.loopexit371.us.i.i.i, %bb.cx
  %.0226.us.i.i.i = phi i32 [ 0, %bb.cx ], [ %.2.lcssa.us.i.i.i, %.loopexit371.us.i.i.i ] ; 3 uses
  %.0225.us.i.i.i = phi i32 [ %i.ot, %bb.cx ], [ %i.ds, %.loopexit371.us.i.i.i ] ; 4 uses
  %i.oz = icmp sge i32 %.0226.us.i.i.i, %.0225.us.i.i.i
  %brmerge.i.i.i = select i1 %i.oz, i1 true, i1 %i.iv
  %.0226.us.mux.i.i.i = tail call i32 @llvm.smax.i32(i32 %.0226.us.i.i.i, i32 %.0225.us.i.i.i)
  br i1 %brmerge.i.i.i, label %._crit_edge387.us.i.i.i, label %.lr.ph383.us.us.preheader.i.i.i

._crit_edge387.us.i.i.i:                          ; preds = %._crit_edge.us.us.i.i.i, %bb.cy
  %.1.lcssa.us.i.i.i = phi i32 [ %.0226.us.mux.i.i.i, %bb.cy ], [ %.0225.us.i.i.i, %._crit_edge.us.us.i.i.i ] ; 4 uses
  %i.pa = icmp eq i32 %.1.lcssa.us.i.i.i, %i.ds
  br i1 %i.pa, label %bb.cz, label %.preheader370.us.i.i.i

bb.cz:                                            ; preds = %._crit_edge387.us.i.i.i
  %.not283.us.i.i.i = icmp eq ptr %.2235403.us.i.i.i, null
  br i1 %.not283.us.i.i.i, label %.preheader372.us.i.i.i, label %.preheader374.us.i.i.i

.loopexit373.us.i.i.i:                            ; preds = %.preheader369.us.i.i.i, %.preheader.us.i.i.i, %middle.block213, %middle.block, %.preheader374.us.i.i.i, %.preheader372.us.i.i.i
  %i.pb = phi i64 [ 0, %.preheader372.us.i.i.i ], [ 0, %middle.block ], [ %i.it, %.preheader374.us.i.i.i ], [ %i.it, %middle.block213 ], [ 0, %.preheader.us.i.i.i ], [ %i.it, %.preheader369.us.i.i.i ]
  %i.pc = add nuw nsw i32 %.0227405.us.i.i.i, 1   ; 2 uses
  %i.pd = getelementptr inbounds [4 x i8], ptr %.2238401.us.i.i.i, i64 %i.it ; 4 uses
  %i.pe = getelementptr inbounds [4 x i8], ptr %.2235403.us.i.i.i, i64 %i.pb ; 3 uses
  %exitcond492.not.i.i.i = icmp eq i32 %i.pc, %i.di
  br i1 %exitcond492.not.i.i.i, label %._crit_edge.us424.i.i.i, label %bb.cx, !llvm.loop !92

bb.da:                                            ; preds = %._crit_edge.us424.i.i.i
  %i.pf = getelementptr inbounds [4 x i8], ptr %i.pd, i64 %i.iy ; 2 uses
  tail call void %i.gk(ptr noundef %i.pf, ptr noundef %i.pf, i64 noundef %i.ix, ptr noundef %i.gi), !inline_history !93
  br label %bb.db

bb.db:                                            ; preds = %._crit_edge.us424.i.i.i, %bb.da
  %i.pg = add nuw nsw i32 %.0228411.us.i.i.i, 1   ; 2 uses
  %exitcond493.not.i.i.i = icmp eq i32 %i.pg, %i.dd
  br i1 %exitcond493.not.i.i.i, label %._crit_edge413.i.i.i, label %.lr.ph406.us.i.i.i, !llvm.loop !94

.preheader.us.i.i.i:                              ; preds = %.preheader.us.i.i.i.preheader216, %.preheader.us.i.i.i
  %indvars.iv489.i.i.i = phi i64 [ %indvars.iv.next490.i.i.i, %.preheader.us.i.i.i ], [ %indvars.iv489.i.i.i.ph, %.preheader.us.i.i.i.preheader216 ] ; 2 uses
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %.2238401.us.i.i.i, i64 %indvars.iv489.i.i.i ; 9 uses
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !89
  %i.pj = load float, ptr %i.a, align 16, !tbaa !89
  %i.pk = load float, ptr %i.b, align 16, !tbaa !89
  %i.pl = tail call float @llvm.fmuladd.f32(float %i.pi, float %i.pj, float %i.pk) ; 3 uses
  %i.pm = fcmp ult float %i.pl, 0.000000e+00
  %i.pn = load float, ptr %i.c, align 16
  %i.po = fmul float %i.pl, %i.pn
  %i.pp = select i1 %i.pm, float %i.po, float %i.pl ; 2 uses
  %i.pq = fcmp olt float %.0356.i.i.i, %i.pp
  %.sroa.speculated.us.i.i.i = select i1 %i.pq, float %.0356.i.i.i, float %i.pp
  store float %.sroa.speculated.us.i.i.i, ptr %i.ph, align 4, !tbaa !89
  %i.pr = getelementptr inbounds nuw i8, ptr %i.ph, i64 4 ; 2 uses
  %i.ps = load float, ptr %i.pr, align 4, !tbaa !89
  %i.pt = load float, ptr %i.ja, align 4, !tbaa !89
  %i.pu = load float, ptr %i.jb, align 4, !tbaa !89
  %i.pv = tail call float @llvm.fmuladd.f32(float %i.ps, float %i.pt, float %i.pu) ; 3 uses
  %i.pw = fcmp ult float %i.pv, 0.000000e+00
  %i.px = load float, ptr %i.jc, align 4
  %i.py = fmul float %i.pv, %i.px
  %i.pz = select i1 %i.pw, float %i.py, float %i.pv ; 2 uses
  %i.qa = fcmp olt float %.0356.i.i.i, %i.pz
  %.sroa.speculated.us.1.i.i.i = select i1 %i.qa, float %.0356.i.i.i, float %i.pz
  store float %.sroa.speculated.us.1.i.i.i, ptr %i.pr, align 4, !tbaa !89
  %i.qb = getelementptr inbounds nuw i8, ptr %i.ph, i64 8 ; 2 uses
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !89
  %i.qd = load float, ptr %i.jd, align 8, !tbaa !89
  %i.qe = load float, ptr %i.je, align 8, !tbaa !89
  %i.qf = tail call float @llvm.fmuladd.f32(float %i.qc, float %i.qd, float %i.qe) ; 3 uses
  %i.qg = fcmp ult float %i.qf, 0.000000e+00
  %i.qh = load float, ptr %i.jf, align 8
  %i.qi = fmul float %i.qf, %i.qh
  %i.qj = select i1 %i.qg, float %i.qi, float %i.qf ; 2 uses
  %i.qk = fcmp olt float %.0356.i.i.i, %i.qj
  %.sroa.speculated.us.2.i.i.i = select i1 %i.qk, float %.0356.i.i.i, float %i.qj
  store float %.sroa.speculated.us.2.i.i.i, ptr %i.qb, align 4, !tbaa !89
  %i.ql = getelementptr inbounds nuw i8, ptr %i.ph, i64 12 ; 2 uses
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !89
  %i.qn = load float, ptr %i.jg, align 4, !tbaa !89
  %i.qo = load float, ptr %i.jh, align 4, !tbaa !89
  %i.qp = tail call float @llvm.fmuladd.f32(float %i.qm, float %i.qn, float %i.qo) ; 3 uses
  %i.qq = fcmp ult float %i.qp, 0.000000e+00
  %i.qr = load float, ptr %i.ji, align 4
  %i.qs = fmul float %i.qp, %i.qr
  %i.qt = select i1 %i.qq, float %i.qs, float %i.qp ; 2 uses
  %i.qu = fcmp olt float %.0356.i.i.i, %i.qt
  %.sroa.speculated.us.3.i.i.i = select i1 %i.qu, float %.0356.i.i.i, float %i.qt
  store float %.sroa.speculated.us.3.i.i.i, ptr %i.ql, align 4, !tbaa !89
  %i.qv = getelementptr inbounds nuw i8, ptr %i.ph, i64 16 ; 2 uses
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !89
  %i.qx = load float, ptr %i.jj, align 16, !tbaa !89
  %i.qy = load float, ptr %i.jk, align 16, !tbaa !89
  %i.qz = tail call float @llvm.fmuladd.f32(float %i.qw, float %i.qx, float %i.qy) ; 3 uses
  %i.ra = fcmp ult float %i.qz, 0.000000e+00
  %i.rb = load float, ptr %i.jl, align 16
  %i.rc = fmul float %i.qz, %i.rb
  %i.rd = select i1 %i.ra, float %i.rc, float %i.qz ; 2 uses
  %i.re = fcmp olt float %.0356.i.i.i, %i.rd
  %.sroa.speculated.us.4.i.i.i = select i1 %i.re, float %.0356.i.i.i, float %i.rd
  store float %.sroa.speculated.us.4.i.i.i, ptr %i.qv, align 4, !tbaa !89
  %i.rf = getelementptr inbounds nuw i8, ptr %i.ph, i64 20 ; 2 uses
  %i.rg = load float, ptr %i.rf, align 4, !tbaa !89
  %i.rh = load float, ptr %i.jm, align 4, !tbaa !89
  %i.ri = load float, ptr %i.jn, align 4, !tbaa !89
  %i.rj = tail call float @llvm.fmuladd.f32(float %i.rg, float %i.rh, float %i.ri) ; 3 uses
  %i.rk = fcmp ult float %i.rj, 0.000000e+00
  %i.rl = load float, ptr %i.jo, align 4
  %i.rm = fmul float %i.rj, %i.rl
  %i.rn = select i1 %i.rk, float %i.rm, float %i.rj ; 2 uses
  %i.ro = fcmp olt float %.0356.i.i.i, %i.rn
end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baselineL16depthwiseConv32fEPKvS8_PvRKNS5_14dnn5_v202606059ConvStateES8_PKfSF_E3$_0E9_M_invokeERKSt9_Any_dataS3_":bb.a
.lr.ph412.split.i.i.i:                            ; preds = %.lr.ph412.i.i.i
  %i.auv = getelementptr inbounds [4 x i8], ptr %.0236429.i.i.i, i64 %i.iy ; 2 uses
  br i1 %.not280.i.i.i, label %._crit_edge413.i.i.i, label %.lr.ph412.split.split.i.i.i

._crit_edge413.i.i.i:                             ; preds = %.lr.ph412.split.split.i.i.i, %bb.db, %.lr.ph412.split.i.i.i, %.preheader376.i.i.i
  %.1237.lcssa.i.i.i = phi ptr [ %.0236429.i.i.i, %.preheader376.i.i.i ], [ %.0236429.i.i.i, %.lr.ph412.split.i.i.i ], [ %i.pd, %bb.db ], [ %.0236429.i.i.i, %.lr.ph412.split.split.i.i.i ]
  %.1234.lcssa.i.i.i = phi ptr [ %.0233430.i.i.i, %.preheader376.i.i.i ], [ %.0233430.i.i.i, %.lr.ph412.split.i.i.i ], [ %i.pe, %bb.db ], [ %.0233430.i.i.i, %.lr.ph412.split.split.i.i.i ]
  %i.auw = add nsw i32 %.0231431.i.i.i, 1         ; 2 uses
  %i.aux = getelementptr inbounds [4 x i8], ptr %.0239427.i.i.i, i64 %i.iz
  %i.auy = load i32, ptr %i.ik, align 4, !tbaa !39
  %i.auz = icmp slt i32 %i.auw, %i.auy
  br i1 %i.auz, label %bb.bq, label %"_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baselineL16depthwiseConv32fEPKvS4_PvRKNS1_14dnn5_v202606059ConvStateES4_PKfSB_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit", !llvm.loop !126

.lr.ph412.split.split.i.i.i:                      ; preds = %.lr.ph412.split.i.i.i, %.lr.ph412.split.split.i.i.i
  %.0228411.i.i.i = phi i32 [ %i.ava, %.lr.ph412.split.split.i.i.i ], [ 0, %.lr.ph412.split.i.i.i ]
  tail call void %i.gk(ptr noundef %i.auv, ptr noundef %i.auv, i64 noundef %i.ix, ptr noundef %i.gi), !inline_history !93
  %i.ava = add nuw nsw i32 %.0228411.i.i.i, 1     ; 2 uses
  %exitcond449.not.i.i.i = icmp eq i32 %i.ava, %i.dd
  br i1 %exitcond449.not.i.i.i, label %._crit_edge413.i.i.i, label %.lr.ph412.split.split.i.i.i, !llvm.loop !94

bb.de:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334.i.i.i
  %.pn276.pn.i.i.i = phi { ptr, i32 } [ %.pn276.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334.i.i.i ], [ %.pn274.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337.i.i.i ], [ %.pn271.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340.i.i.i ], [ %.pn269.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %common.resume.i.i.i

"_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baselineL16depthwiseConv32fEPKvS4_PvRKNS1_14dnn5_v202606059ConvStateES4_PKfSB_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit": ; preds = %._crit_edge413.i.i.i, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baselineL16depthwiseConv32fEPKvS8_PvRKNS5_14dnn5_v202606059ConvStateES8_PKfSF_E3$_0E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #2 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baselineL16depthwiseConv32fEPKvS5_PvRKNS2_14dnn5_v202606059ConvStateES5_PKfSC_E3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv3dnn12cpu_baselineL16depthwiseConv32fEPKvS3_PvRKNS0_14dnn5_v202606059ConvStateES3_PKfSA_E3$_0", ptr %0, align 8, !tbaa !127
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baselineL16depthwiseConv32fEPKvS5_PvRKNS2_14dnn5_v202606059ConvStateES5_PKfSC_E3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !8
  store ptr %.val, ptr %0, align 8, !tbaa !8
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baselineL16depthwiseConv32fEPKvS5_PvRKNS2_14dnn5_v202606059ConvStateES5_PKfSC_E3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #19 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(56) %.val6, i64 56, i1 false), !tbaa.struct !129
  store ptr %i.a, ptr %0, align 8, !tbaa !8
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baselineL16depthwiseConv32fEPKvS5_PvRKNS2_14dnn5_v202606059ConvStateES5_PKfSC_E3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !8  ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baselineL16depthwiseConv32fEPKvS5_PvRKNS2_14dnn5_v202606059ConvStateES5_PKfSC_E3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 56) #18
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baselineL16depthwiseConv32fEPKvS5_PvRKNS2_14dnn5_v202606059ConvStateES5_PKfSC_E3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baselineL16depthwiseConv32fEPKvS5_PvRKNS2_14dnn5_v202606059ConvStateES5_PKfSC_E3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef nonnull align 4 dereferenceable(4) ptr @_ZNK2cv8MatShape4backEv(ptr noundef nonnull align 4 dereferenceable(52)) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

declare void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52), ptr noundef nonnull align 4 dereferenceable(52)) unnamed_addr #4

declare void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %0, align 8, !tbaa !71
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #20
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #16
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv29ParallelLoopBodyLambdaWrapperD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %0, align 8, !tbaa !71
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit unwind label %bb.c, !inline_history !73 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #20, !inline_history !73
  unreachable

_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit:   ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #16, !inline_history !73
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv29ParallelLoopBodyLambdaWrapperclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #17
  unreachable

_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit:     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 4 dereferenceable(8) %1), !inline_history !130
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn14dnn5_v2026060526repackDepthwiseConvWeightsERKNS0_3MatERS7_iiE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !8     ; 7 uses
  %i.a = load ptr, ptr %.val, align 8, !tbaa !131, !nonnull !76, !align !133
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !134, !nonnull !76, !align !133
  %i.e = load i32, ptr %i.d, align 4, !tbaa !21   ; 5 uses
  %i.f = lshr i32 %i.b, 5                         ; 6 uses
  %i.g = and i32 %i.f, 127
  %i.h = add nuw nsw i32 %i.g, 1
  %i.i = shl i32 %i.b, 2
  %i.j = and i32 %i.i, 124
  %i.k = zext nneg i32 %i.j to i64
  %i.l = lshr i64 1275511473185297, %i.k          ; 6 uses
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.m, 15
  %i.o = mul nuw nsw i32 %i.n, %i.h
  %i.p = zext nneg i32 %i.o to i64
  %i.q = lshr i32 %i.e, 5                         ; 6 uses
  %i.r = and i32 %i.q, 127
  %i.s = add nuw nsw i32 %i.r, 1
  %i.t = shl i32 %i.e, 2
  %i.u = and i32 %i.t, 124
  %i.v = zext nneg i32 %i.u to i64
  %i.w = lshr i64 1275511473185297, %i.v          ; 6 uses
  %i.x = trunc i64 %i.w to i32
  %i.y = and i32 %i.x, 15
  %i.z = mul nuw nsw i32 %i.y, %i.s
  %i.aa = zext nneg i32 %i.z to i64               ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !135, !nonnull !76, !align !133
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !21 ; 43 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !136, !nonnull !76, !align !133
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !21 ; 36 uses
  %i.ah = load i32, ptr %1, align 4, !tbaa !37    ; 20 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !39
  %i.ak = icmp slt i32 %i.ah, %i.aj
  br i1 %i.ak, label %.lr.ph.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnn14dnn5_v2026060526repackDepthwiseConvWeightsERKNS0_3MatERS3_iiE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !137, !nonnull !76, !align !133
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !21 ; 9 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.aq = mul i32 %i.ag, %i.ad                    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.as = sext i32 %i.aq to i64
  %i.at = mul nsw i64 %i.aa, %i.as
  %i.au = icmp sgt i32 %i.ag, 0                   ; 9 uses
  %i.av = sext i32 %i.ad to i64                   ; 16 uses
  %i.aw = zext nneg i32 %i.ag to i64              ; 27 uses
  %i.ax = sext i32 %i.ah to i64
  %i.ay = sext i32 %i.ao to i64
  %2 = and i32 %i.q, 127
  %narrow = add nuw nsw i32 %2, 1
  %3 = zext nneg i32 %narrow to i64
  %4 = and i64 %i.w, 15
  %5 = mul nuw nsw i64 %4, %3
  %i.az = mul i32 %i.ag, %i.ad
  %i.ba = mul i32 %i.az, %i.ah
  %i.bb = mul i32 %i.ag, %i.ad
  %i.bc = add i32 %i.ag, -1
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = mul nsw i64 %i.av, %i.bd
  %i.bf = shl i64 %i.be, 2
  %6 = and i32 %i.f, 127
  %narrow236 = add nuw nsw i32 %6, 1
  %7 = zext nneg i32 %narrow236 to i64
  %8 = and i64 %i.l, 15
  %9 = mul nuw nsw i64 %8, %7
  %i.bg = shl nuw nsw i64 %i.bd, 2
  %10 = and i32 %i.q, 127
  %narrow237 = add nuw nsw i32 %10, 1
  %11 = zext nneg i32 %narrow237 to i64
  %12 = and i64 %i.w, 15
  %13 = mul nuw nsw i64 %12, %11
  %i.bh = mul i32 %i.ag, %i.ad
  %i.bi = mul i32 %i.bh, %i.ah
  %i.bj = mul i32 %i.ag, %i.ad
  %i.bk = add i32 %i.ag, -1
  %i.bl = zext i32 %i.bk to i64                   ; 2 uses
  %i.bm = mul nsw i64 %i.av, %i.bl
  %i.bn = shl i64 %i.bm, 1
  %14 = and i32 %i.f, 127
  %narrow238 = add nuw nsw i32 %14, 1
  %15 = zext nneg i32 %narrow238 to i64
  %16 = and i64 %i.l, 15
  %17 = mul nuw nsw i64 %16, %15
  %i.bo = shl nuw nsw i64 %i.bl, 1
  %18 = and i32 %i.q, 127
  %narrow239 = add nuw nsw i32 %18, 1
  %19 = zext nneg i32 %narrow239 to i64
  %20 = and i64 %i.w, 15
  %21 = mul nuw nsw i64 %20, %19
  %i.bp = mul i32 %i.ag, %i.ad
  %i.bq = mul i32 %i.bp, %i.ah
  %i.br = mul i32 %i.ag, %i.ad
  %i.bs = add i32 %i.ag, -1
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %i.bu = mul nsw i64 %i.av, %i.bt
  %i.bv = shl i64 %i.bu, 1
  %22 = and i32 %i.f, 127
  %narrow240 = add nuw nsw i32 %22, 1
  %23 = zext nneg i32 %narrow240 to i64
  %24 = and i64 %i.l, 15
  %25 = mul nuw nsw i64 %24, %23
  %i.bw = shl nuw nsw i64 %i.bt, 1
  %26 = and i32 %i.q, 127
  %narrow241 = add nuw nsw i32 %26, 1
  %27 = zext nneg i32 %narrow241 to i64
  %28 = and i64 %i.w, 15
  %29 = mul nuw nsw i64 %28, %27
  %i.bx = mul i32 %i.ag, %i.ad
  %i.by = mul i32 %i.bx, %i.ah
  %i.bz = mul i32 %i.ag, %i.ad
  %i.ca = add i32 %i.ag, -1
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  %i.cc = mul nsw i64 %i.av, %i.cb
  %i.cd = shl i64 %i.cc, 1
  %30 = and i32 %i.f, 127
  %narrow242 = add nuw nsw i32 %30, 1
  %31 = zext nneg i32 %narrow242 to i64
  %32 = and i64 %i.l, 15
  %33 = mul nuw nsw i64 %32, %31
  %i.ce = shl nuw nsw i64 %i.cb, 1
  %34 = and i32 %i.q, 127
  %narrow243 = add nuw nsw i32 %34, 1
  %35 = zext nneg i32 %narrow243 to i64
  %36 = and i64 %i.w, 15
  %37 = mul nuw nsw i64 %36, %35
  %i.cf = mul i32 %i.ag, %i.ad
  %i.cg = mul i32 %i.cf, %i.ah
  %i.ch = mul i32 %i.ag, %i.ad
  %i.ci = add i32 %i.ag, -1
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  %i.ck = mul nsw i64 %i.av, %i.cj
  %i.cl = shl i64 %i.ck, 1
  %38 = and i32 %i.f, 127
  %narrow244 = add nuw nsw i32 %38, 1
  %39 = zext nneg i32 %narrow244 to i64
  %40 = and i64 %i.l, 15
  %41 = mul nuw nsw i64 %40, %39
  %i.cm = shl nuw nsw i64 %i.cj, 1
  %42 = mul i32 %i.ad, %i.ah
  %43 = sub i32 %i.ao, %42                        ; 5 uses
  %ident.check196.not = icmp eq i32 %i.ag, 1
  %ident.check170.not = icmp eq i32 %i.ag, 1
  %ident.check156.not = icmp eq i32 %i.ag, 1
  %ident.check130.not = icmp eq i32 %i.ag, 1
  %ident.check98.not = icmp eq i32 %i.ag, 1
  %ident.check83.not = icmp eq i32 %i.ag, 1
  %ident.check69.not = icmp eq i32 %i.ag, 1
  %ident.check55.not = icmp eq i32 %i.ag, 1
  %ident.check.not = icmp eq i32 %i.ag, 1
  br label %bb.b

bb.b:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L27repackDepthwiseWeightsBlockIffEEvPKT_PT0_iii.exit.i.i.i, %.lr.ph.i.i.i
  %indvar = phi i32 [ %indvar.next, %_ZN2cv3dnn14dnn5_v20260605L27repackDepthwiseWeightsBlockIffEEvPKT_PT0_iii.exit.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 23 uses
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %_ZN2cv3dnn14dnn5_v20260605L27repackDepthwiseWeightsBlockIffEEvPKT_PT0_iii.exit.i.i.i ], [ %i.ax, %.lr.ph.i.i.i ] ; 3 uses
  %i.cn = mul i32 %i.ad, %indvar
  %i.co = sub i32 %43, %i.cn
  %smin265 = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.co)
  %i.cp = zext i32 %smin265 to i64                ; 2 uses
  %i.cq = mul i32 %i.ad, %indvar
  %i.cr = sub i32 %43, %i.cq
  %smin261.a = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.cr)
  %i.cs = zext i32 %smin261.a to i64              ; 2 uses
  %i.ct = mul i32 %i.ad, %indvar
  %i.cu = sub i32 %43, %i.ct
  %smin257 = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.cu)
  %i.cv = zext i32 %smin257 to i64                ; 2 uses
  %i.cw = mul i32 %i.ad, %indvar
  %i.cx = sub i32 %43, %i.cw
  %smin253 = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.cx)
  %i.cy = zext i32 %smin253 to i64                ; 2 uses
  %i.cz = mul i32 %i.ad, %indvar
  %i.da = sub i32 %43, %i.cz
  %smin252 = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.da)
  %i.db = zext i32 %smin252 to i64                ; 2 uses
  %44 = add i32 %i.ah, %indvar
  %i.dc = mul i32 %i.ad, %44
  %i.dd = sub i32 %i.ao, %i.dc
  %smin208 = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.dd) ; 3 uses
  %i.de = zext i32 %smin208 to i64                ; 5 uses
  %i.df = mul i32 %i.ch, %indvar
  %i.dg = add i32 %i.cg, %i.df
  %i.dh = sext i32 %i.dg to i64
  %i.di = mul nsw i64 %37, %i.dh                  ; 2 uses
  %45 = add i32 %i.ah, %indvar
  %i.dj = mul i32 %i.ad, %45
  %i.dk = sub i32 %i.ao, %i.dj
  %smin200 = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.dk)
  %i.dl = zext i32 %smin200 to i64
  %i.dm = shl nuw nsw i64 %i.dl, 1                ; 2 uses
  %i.dn = add i32 %i.ah, %indvar
  %i.do = mul i32 %i.ad, %i.dn
  %i.dp = sext i32 %i.do to i64
  %i.dq = mul nsw i64 %41, %i.dp                  ; 2 uses
  %i.dr = mul i32 %i.bz, %indvar
  %i.ds = add i32 %i.by, %i.dr
  %i.dt = sext i32 %i.ds to i64
  %i.du = mul nsw i64 %29, %i.dt                  ; 2 uses
  %i.dv = add i32 %i.ah, %indvar
  %i.dw = mul i32 %i.ad, %i.dv
  %i.dx = sub i32 %i.ao, %i.dw
  %smin174 = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.dx)
  %i.dy = zext i32 %smin174 to i64
  %i.dz = shl nuw nsw i64 %i.dy, 1                ; 2 uses
  %i.ea = add i32 %i.ah, %indvar
  %i.eb = mul i32 %i.ad, %i.ea
  %i.ec = sext i32 %i.eb to i64
  %i.ed = mul nsw i64 %33, %i.ec                  ; 2 uses
  %i.ee = mul i32 %i.br, %indvar
  %i.ef = add i32 %i.bq, %i.ee
  %i.eg = sext i32 %i.ef to i64
  %i.eh = mul nsw i64 %21, %i.eg                  ; 2 uses
  %i.ei = add i32 %i.ah, %indvar
  %i.ej = mul i32 %i.ad, %i.ei
  %i.ek = sub i32 %i.ao, %i.ej
  %smin134 = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.ek)
  %i.el = zext i32 %smin134 to i64
  %i.em = shl nuw nsw i64 %i.el, 1                ; 2 uses
  %i.en = add i32 %i.ah, %indvar
  %i.eo = mul i32 %i.ad, %i.en
  %i.ep = sext i32 %i.eo to i64
  %i.eq = mul nsw i64 %25, %i.ep                  ; 2 uses
  %46 = add i32 %i.ah, %indvar
  %i.er = mul i32 %i.ad, %46
  %i.es = sub i32 %i.ao, %i.er
  %smin110 = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.es) ; 3 uses
  %i.et = zext i32 %smin110 to i64                ; 5 uses
  %i.eu = mul i32 %i.bj, %indvar
  %i.ev = add i32 %i.bi, %i.eu
  %i.ew = sext i32 %i.ev to i64
  %i.ex = mul nsw i64 %13, %i.ew                  ; 2 uses
  %47 = add i32 %i.ah, %indvar
  %i.ey = mul i32 %i.ad, %47
  %i.ez = sub i32 %i.ao, %i.ey
  %smin102 = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.ez)
  %i.fa = zext i32 %smin102 to i64
  %i.fb = shl nuw nsw i64 %i.fa, 1                ; 2 uses
  %i.fc = add i32 %i.ah, %indvar
  %i.fd = mul i32 %i.ad, %i.fc
  %i.fe = sext i32 %i.fd to i64
  %i.ff = mul nsw i64 %17, %i.fe                  ; 2 uses
  %i.fg = mul i32 %i.bb, %indvar
  %i.fh = add i32 %i.ba, %i.fg
  %i.fi = sext i32 %i.fh to i64
  %i.fj = mul nsw i64 %5, %i.fi                   ; 2 uses
  %i.fk = add i32 %i.ah, %indvar
  %i.fl = mul i32 %i.ad, %i.fk
  %i.fm = sub i32 %i.ao, %i.fl
  %smin = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.fm)
  %i.fn = zext i32 %smin to i64
  %i.fo = shl nuw nsw i64 %i.fn, 2                ; 2 uses
  %i.fp = add i32 %i.ah, %indvar
  %i.fq = mul i32 %i.ad, %i.fp
  %i.fr = sext i32 %i.fq to i64
  %i.fs = mul nsw i64 %9, %i.fr                   ; 2 uses
  %i.ft = load ptr, ptr %i.ap, align 8, !tbaa !138, !nonnull !76, !align !77
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !139 ; 11 uses
  %i.fw = trunc nsw i64 %indvars.iv.i.i.i to i32
  %i.fx = mul i32 %i.aq, %i.fw
  %i.fy = sext i32 %i.fx to i64                   ; 2 uses
  %i.fz = mul nsw i64 %i.fy, %i.p
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fz ; 9 uses
  %i.gb = load ptr, ptr %i.ar, align 8, !tbaa !140, !nonnull !76, !align !77
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !139 ; 11 uses
  %i.ge = mul nsw i64 %i.fy, %i.aa
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.ge ; 10 uses
  %i.gg = mul nsw i64 %indvars.iv.i.i.i, %i.av
  %i.gh = sub nsw i64 %i.ay, %i.gg                ; 2 uses
  %i.gi = trunc i64 %i.gh to i32
  %.sroa.speculated.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.gi) ; 25 uses
  %i.gj = icmp slt i64 %i.gh, %i.av
  br i1 %i.gj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.gf, i8 0, i64 %i.at, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  switch i32 %i.b, label %_ZN2cv3dnn14dnn5_v20260605L27repackDepthwiseWeightsBlockIffEEvPKT_PT0_iii.exit.i.i.i [
    i32 5, label %bb.e
    i32 7, label %bb.m
    i32 8, label %bb.u
  ]

bb.e:                                             ; preds = %bb.d
  switch i32 %i.e, label %_ZN2cv3dnn14dnn5_v20260605L27repackDepthwiseWeightsBlockIffEEvPKT_PT0_iii.exit.i.i.i [
    i32 5, label %bb.f
    i32 7, label %bb.g
    i32 8, label %bb.l
  ]

bb.f:                                             ; preds = %bb.e
  %i.gk = icmp sgt i32 %.sroa.speculated.i.i.i, 0
  %or.cond.i.i.i = select i1 %i.au, i1 %i.gk, i1 false
  br i1 %or.cond.i.i.i, label %.preheader.preheader.i.i.i.i, label %_ZN2cv3dnn14dnn5_v20260605L27repackDepthwiseWeightsBlockIffEEvPKT_PT0_iii.exit.i.i.i

.preheader.preheader.i.i.i.i:                     ; preds = %bb.f
  %wide.trip.count.i.i.i.i = zext nneg i32 %.sroa.speculated.i.i.i to i64 ; 3 uses
  %scevgep = getelementptr i8, ptr %i.gd, i64 %i.fj
  %scevgep48 = getelementptr i8, ptr %i.gd, i64 %i.bf
  %i.gl = getelementptr i8, ptr %scevgep48, i64 %i.fj
  %scevgep49 = getelementptr i8, ptr %i.gl, i64 %i.fo
  %scevgep50 = getelementptr i8, ptr %i.fv, i64 %i.fs
  %scevgep51 = getelementptr i8, ptr %i.fv, i64 %i.bg
  %i.gm = getelementptr i8, ptr %scevgep51, i64 %i.fs
  %scevgep52 = getelementptr i8, ptr %i.gm, i64 %i.fo
  %min.iters.check = icmp ugt i32 %.sroa.speculated.i.i.i, 7
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %bound0 = icmp ult ptr %scevgep, %scevgep52
  %bound1 = icmp ult ptr %scevgep50, %scevgep49
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %wide.trip.count.i.i.i.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i.i
  %xtraiter266 = and i64 %i.cp, 3                 ; 2 uses
  %lcmp.mod267.not = icmp eq i64 %xtraiter266, 0
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %._crit_edge.i.i.i.i, %.preheader.preheader.i.i.i.i
  %.01320.i.i.i.i = phi i32 [ %i.gy, %._crit_edge.i.i.i.i ], [ 0, %.preheader.preheader.i.i.i.i ]
  %.01419.i.i.i.i = phi ptr [ %i.gz, %._crit_edge.i.i.i.i ], [ %i.ga, %.preheader.preheader.i.i.i.i ] ; 7 uses
  %.01518.i.i.i.i = phi ptr [ %i.ha, %._crit_edge.i.i.i.i ], [ %i.gf, %.preheader.preheader.i.i.i.i ] ; 7 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i.i.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %.01419.i.i.i.i, i64 %index ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %wide.load = load <4 x float>, ptr %i.gn, align 4, !tbaa !89, !alias.scope !141
  %wide.load53 = load <4 x float>, ptr %i.go, align 4, !tbaa !89, !alias.scope !141
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.01518.i.i.i.i, i64 %index ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store <4 x float> %wide.load, ptr %i.gp, align 4, !tbaa !89, !alias.scope !144, !noalias !141
  store <4 x float> %wide.load53, ptr %i.gq, align 4, !tbaa !89, !alias.scope !144, !noalias !141
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gr = icmp eq i64 %index.next, %n.vec
  br i1 %i.gr, label %middle.block, label %vector.body, !llvm.loop !146

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i.i.i, %middle.block
  %indvars.iv.i.i.i.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  br i1 %lcmp.mod267.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter268 = phi i64 [ %prol.iter268.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.gs = mul nuw nsw i64 %indvars.iv.i.i.i.i.prol, %i.aw
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %.01419.i.i.i.i, i64 %i.gs
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !89
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %.01518.i.i.i.i, i64 %indvars.iv.i.i.i.i.prol
  store float %i.gu, ptr %i.gv, align 4, !tbaa !89
  %indvars.iv.next.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter268.next = add i64 %prol.iter268, 1   ; 2 uses
  %prol.iter268.cmp.not = icmp eq i64 %prol.iter268.next, %xtraiter266
  br i1 %prol.iter268.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !147

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.i.prol, %scalar.ph.prol ]
  %i.gw = sub nsw i64 %indvars.iv.i.i.i.i.ph, %i.cp
  %i.gx = icmp ugt i64 %i.gw, -4
  br i1 %i.gx, label %._crit_edge.i.i.i.i, label %scalar.ph

._crit_edge.i.i.i.i:                              ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.gy = add nuw nsw i32 %.01320.i.i.i.i, 1      ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.01419.i.i.i.i, i64 4
  %i.ha = getelementptr inbounds [4 x i8], ptr %.01518.i.i.i.i, i64 %i.av
  %exitcond23.not.i.i.i.i = icmp eq i32 %i.gy, %i.ag
  br i1 %exitcond23.not.i.i.i.i, label %_ZN2cv3dnn14dnn5_v20260605L27repackDepthwiseWeightsBlockIffEEvPKT_PT0_iii.exit.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !149

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.hb = mul nuw nsw i64 %indvars.iv.i.i.i.i, %i.aw
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.01419.i.i.i.i, i64 %i.hb
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !89
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.01518.i.i.i.i, i64 %indvars.iv.i.i.i.i
  store float %i.hd, ptr %i.he, align 4, !tbaa !89
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.hf = mul nuw nsw i64 %indvars.iv.next.i.i.i.i, %i.aw
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %.01419.i.i.i.i, i64 %i.hf
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !89
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.01518.i.i.i.i, i64 %indvars.iv.next.i.i.i.i
  store float %i.hh, ptr %i.hi, align 4, !tbaa !89
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %i.hj = mul nuw nsw i64 %indvars.iv.next.i.i.i.i.1, %i.aw
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %.01419.i.i.i.i, i64 %i.hj
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !89
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.01518.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.1
  store float %i.hl, ptr %i.hm, align 4, !tbaa !89
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i, 3 ; 2 uses
  %i.hn = mul nuw nsw i64 %indvars.iv.next.i.i.i.i.2, %i.aw
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.01419.i.i.i.i, i64 %i.hn
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !89
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %.01518.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.2
  store float %i.hp, ptr %i.hq, align 4, !tbaa !89
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.i.i.i.i, label %scalar.ph, !llvm.loop !150

bb.g:                                             ; preds = %bb.e
  %i.hr = icmp sgt i32 %.sroa.speculated.i.i.i, 0
  %or.cond203.i.i.i = select i1 %i.au, i1 %i.hr, i1 false
  br i1 %or.cond203.i.i.i, label %.preheader.preheader.i84.i.i.i, label %_ZN2cv3dnn14dnn5_v20260605L27repackDepthwiseWeightsBlockIffEEvPKT_PT0_iii.exit.i.i.i

.preheader.preheader.i84.i.i.i:                   ; preds = %bb.g
  %wide.trip.count.i85.i.i.i = zext nneg i32 %.sroa.speculated.i.i.i to i64 ; 3 uses
  %min.iters.check57 = icmp ugt i32 %.sroa.speculated.i.i.i, 3
  %or.cond236 = select i1 %min.iters.check57, i1 %ident.check55.not, i1 false
  %n.vec59 = and i64 %wide.trip.count.i85.i.i.i, 2147483644 ; 3 uses
  %cmp.n66 = icmp eq i64 %n.vec59, %wide.trip.count.i85.i.i.i
  br label %.preheader.i86.i.i.i

.preheader.i86.i.i.i:                             ; preds = %._crit_edge.i93.i.i.i, %.preheader.preheader.i84.i.i.i
  %.01320.i87.i.i.i = phi i32 [ %i.in, %._crit_edge.i93.i.i.i ], [ 0, %.preheader.preheader.i84.i.i.i ]
  %.01419.i88.i.i.i = phi ptr [ %i.io, %._crit_edge.i93.i.i.i ], [ %i.ga, %.preheader.preheader.i84.i.i.i ] ; 3 uses
  %.01518.i89.i.i.i = phi ptr [ %i.ip, %._crit_edge.i93.i.i.i ], [ %i.gf, %.preheader.preheader.i84.i.i.i ] ; 3 uses
  br i1 %or.cond236, label %vector.body60, label %scalar.ph56.preheader

vector.body60:                                    ; preds = %.preheader.i86.i.i.i, %vector.body60
  %index61 = phi i64 [ %index.next64, %vector.body60 ], [ 0, %.preheader.i86.i.i.i ] ; 3 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %.01419.i88.i.i.i, i64 %index61
  %wide.load62 = load <4 x float>, ptr %i.hs, align 4, !tbaa !89 ; 2 uses
  %i.ht = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load62) ; 2 uses
  %i.hu = bitcast <4 x float> %i.ht to <4 x i32>  ; 5 uses
  %i.hv = icmp samesign ult <4 x i32> %i.hu, splat (i32 1199570944)
  %i.hw = add nuw nsw <4 x i32> %i.hu, splat (i32 134221823)
  %i.hx = lshr <4 x i32> %i.hu, splat (i32 13)
  %i.hy = and <4 x i32> %i.hx, splat (i32 1)
  %i.hz = add nuw nsw <4 x i32> %i.hw, %i.hy
  %i.ia = lshr <4 x i32> %i.hz, splat (i32 13)
  %i.ib = icmp samesign ult <4 x i32> %i.hu, splat (i32 947912704)
  %i.ic = fadd <4 x float> %i.ht, splat (float 5.000000e-01)
  %i.id = bitcast <4 x float> %i.ic to <4 x i32>
  %i.ie = icmp samesign ugt <4 x i32> %i.hu, splat (i32 2139095040)
  %i.if = select <4 x i1> %i.ie, <4 x i16> splat (i16 32256), <4 x i16> splat (i16 31744)
  %predphi.v = select <4 x i1> %i.ib, <4 x i32> %i.id, <4 x i32> %i.ia
  %predphi = trunc <4 x i32> %predphi.v to <4 x i16>
  %predphi63 = select <4 x i1> %i.hv, <4 x i16> %predphi, <4 x i16> %i.if
  %i.ig = bitcast <4 x float> %wide.load62 to <4 x i32>
  %i.ih = lshr <4 x i32> %i.ig, splat (i32 16)
  %i.ii = trunc nuw <4 x i32> %i.ih to <4 x i16>
  %i.ij = and <4 x i16> %i.ii, splat (i16 -32768)
  %i.ik = or <4 x i16> %predphi63, %i.ij
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %.01518.i89.i.i.i, i64 %index61
  store <4 x i16> %i.ik, ptr %i.il, align 2, !tbaa !151
  %index.next64 = add nuw i64 %index61, 4         ; 2 uses
  %i.im = icmp eq i64 %index.next64, %n.vec59
  br i1 %i.im, label %middle.block65, label %vector.body60, !llvm.loop !153

middle.block65:                                   ; preds = %vector.body60
  br i1 %cmp.n66, label %._crit_edge.i93.i.i.i, label %scalar.ph56.preheader
end_hunk_1
