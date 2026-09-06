Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avx512?download=true
inline.NumInlined: 238
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 209
loop-unroll.NumUnrolled: 213
begin_hunk_0_@_ZN4ncnnL30transpose_pack_B_tile_quantizeERKNS_3MatERS0_iiiif:bb.a
  %i.m = sext i32 %i.l to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.n = phi i64 [ %i.j, %bb.h ], [ %i.m, %bb.i ] ; 44 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !25     ; 6 uses
  %i.p = icmp sgt i32 %3, 15
  br i1 %i.p, label %.lr.ph1131.i, label %.preheader1091.i

.lr.ph1131.i:                                     ; preds = %bb.j
  %i.q = sext i32 %4 to i64
  %i.r = mul i64 %i.n, %i.q                       ; 4 uses
  %i.s = insertelement <16 x float> poison, float %6, i64 0
  %i.t = shufflevector <16 x float> %i.s, <16 x float> poison, <16 x i32> zeroinitializer ; 33 uses
  %i.u = icmp ne i32 %i.e, 16
  %i.v = icmp slt i32 %5, 16
  %.idx742.i = shl i64 %i.n, 6
  %.idx741.i = shl i64 %i.n, 5
  %i.w = icmp ne i32 %i.e, 4
  %i.x = icmp slt i32 %5, 4
  %.idx740.i = shl i64 %i.n, 4
  %i.y = icmp eq i32 %i.e, 1
  %i.z = icmp sgt i32 %5, 1
  %.idx739.i = shl i64 %i.n, 3
  %i.aa = and i32 %5, -2
  %i.ab = zext nneg i32 %3 to i64                 ; 5 uses
  %i.ac = sext i32 %2 to i64                      ; 4 uses
  %i.ad = sext i32 %i.e to i64                    ; 4 uses
  %brmerge.i = or i1 %i.v, %i.u
  %brmerge1286.i = or i1 %i.x, %i.w
  br i1 %brmerge.i, label %.lr.ph1131.i.split.us, label %.lr.ph.i.preheader

.lr.ph1131.i.split.us:                            ; preds = %.lr.ph1131.i
  %i.ae = icmp slt i32 %5, 8
  %i.af = icmp ne i32 %i.e, 8
  %brmerge1283.i = or i1 %i.ae, %i.af
  br i1 %brmerge1283.i, label %.lr.ph1131.i.split.us.split.us, label %.loopexit1100.i.us

.lr.ph1131.i.split.us.split.us:                   ; preds = %.lr.ph1131.i.split.us
  br i1 %brmerge1286.i, label %.lr.ph1131.i.split.us.split.us.split.us, label %.loopexit1100.i.us.us

.lr.ph1131.i.split.us.split.us.split.us:          ; preds = %.lr.ph1131.i.split.us.split.us
  br i1 %i.y, label %.loopexit1100.i.us.us.us.us.preheader, label %.loopexit1100.i.us.us.us.preheader

.loopexit1100.i.us.us.us.us.preheader:            ; preds = %.lr.ph1131.i.split.us.split.us.split.us
  %xtraiter = and i32 %5, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br label %.loopexit1100.i.us.us.us.us

.loopexit1100.i.us.us.us.preheader:               ; preds = %.lr.ph1131.i.split.us.split.us.split.us
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 31)
  %i.ag = and i64 %umax, 2147483632
  br label %.preheader1091.loopexit.i

.loopexit1100.i.us.us.us.us:                      ; preds = %.loopexit1100.i.us.us.us.us.preheader, %.loopexit1093.i.us.us.us.us
  %indvars.iv.i.us.us.us.us = phi i64 [ %indvars.iv.next.i.us.us.us.us, %.loopexit1093.i.us.us.us.us ], [ 0, %.loopexit1100.i.us.us.us.us.preheader ] ; 2 uses
  %.06471130.i.us.us.us.us = phi ptr [ %.9.i.us.us.us.us, %.loopexit1093.i.us.us.us.us ], [ %i.o, %.loopexit1100.i.us.us.us.us.preheader ] ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !25
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.r
  %i.aj = add nsw i64 %indvars.iv.i.us.us.us.us, %i.ac
  %i.ak = mul nuw nsw i64 %i.aj, %i.ad
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.ak ; 2 uses
  br i1 %i.z, label %.lr.ph1120.i.us.us.us.us, label %.preheader1092.i.us.us.us.us

.lr.ph1120.i.us.us.us.us:                         ; preds = %.loopexit1100.i.us.us.us.us, %.lr.ph1120.i.us.us.us.us
  %.71119.i.us.us.us.us = phi ptr [ %i.be, %.lr.ph1120.i.us.us.us.us ], [ %.06471130.i.us.us.us.us, %.loopexit1100.i.us.us.us.us ] ; 3 uses
  %.66621118.i.us.us.us.us = phi ptr [ %i.bf, %.lr.ph1120.i.us.us.us.us ], [ %i.al, %.loopexit1100.i.us.us.us.us ] ; 3 uses
  %.06761117.i.us.us.us.us = phi i32 [ %i.bg, %.lr.ph1120.i.us.us.us.us ], [ 0, %.loopexit1100.i.us.us.us.us ]
  %i.am = load <16 x float>, ptr %.66621118.i.us.us.us.us, align 1, !tbaa !90
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.66621118.i.us.us.us.us, i64 %i.n
  %i.ao = load <16 x float>, ptr %i.an, align 1, !tbaa !90
  %i.ap = fmul fast <16 x float> %i.am, %i.t      ; 2 uses
  %i.aq = fmul fast <16 x float> %i.ao, %i.t      ; 2 uses
  %i.ar = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ap)
  %i.as = fadd fast <16 x float> %i.ar, %i.ap
  %i.at = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.as, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.au = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.at, <16 x i8> zeroinitializer, i16 -1)
  %i.av = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.au, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.aw = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.aq)
  %i.ax = fadd fast <16 x float> %i.aw, %i.aq
  %i.ay = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ax, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.az = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ay, <16 x i8> zeroinitializer, i16 -1)
  %i.ba = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.az, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.bb = shufflevector <16 x i8> %i.av, <16 x i8> %i.ba, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bc = shufflevector <16 x i8> %i.av, <16 x i8> %i.ba, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.bb, ptr %.71119.i.us.us.us.us, align 16, !tbaa !90
  %i.bd = getelementptr inbounds nuw i8, ptr %.71119.i.us.us.us.us, i64 16
  store <16 x i8> %i.bc, ptr %i.bd, align 16, !tbaa !90
  %i.be = getelementptr inbounds nuw i8, ptr %.71119.i.us.us.us.us, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.66621118.i.us.us.us.us, i64 %.idx739.i ; 2 uses
  %i.bg = add nuw nsw i32 %.06761117.i.us.us.us.us, 2 ; 2 uses
  %i.bh = or disjoint i32 %i.bg, 1
  %i.bi = icmp slt i32 %i.bh, %5
  br i1 %i.bi, label %.lr.ph1120.i.us.us.us.us, label %.preheader1092.i.us.us.us.us, !llvm.loop !1014

.preheader1092.i.us.us.us.us:                     ; preds = %.lr.ph1120.i.us.us.us.us, %.loopexit1100.i.us.us.us.us
  %.0676.lcssa.i.us.us.us.us = phi i32 [ 0, %.loopexit1100.i.us.us.us.us ], [ %i.aa, %.lr.ph1120.i.us.us.us.us ] ; 4 uses
  %.6662.lcssa.i.us.us.us.us = phi ptr [ %i.al, %.loopexit1100.i.us.us.us.us ], [ %i.bf, %.lr.ph1120.i.us.us.us.us ] ; 3 uses
  %.7.lcssa.i.us.us.us.us = phi ptr [ %.06471130.i.us.us.us.us, %.loopexit1100.i.us.us.us.us ], [ %i.be, %.lr.ph1120.i.us.us.us.us ] ; 4 uses
  %i.bj = icmp slt i32 %.0676.lcssa.i.us.us.us.us, %5
  br i1 %i.bj, label %.lr.ph1127.i.us.us.us.us.preheader, label %.loopexit1093.i.us.us.us.us

.lr.ph1127.i.us.us.us.us.preheader:               ; preds = %.preheader1092.i.us.us.us.us
  %.neg = or disjoint i32 %.0676.lcssa.i.us.us.us.us, 1
  br i1 %lcmp.mod.not, label %.lr.ph1127.i.us.us.us.us.prol.loopexit, label %.lr.ph1127.i.us.us.us.us.prol

.lr.ph1127.i.us.us.us.us.prol:                    ; preds = %.lr.ph1127.i.us.us.us.us.preheader
  %i.bk = load <16 x float>, ptr %.6662.lcssa.i.us.us.us.us, align 1, !tbaa !90
  %i.bl = fmul fast <16 x float> %i.bk, %i.t      ; 2 uses
  %i.bm = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.bl)
  %i.bn = fadd fast <16 x float> %i.bm, %i.bl
  %i.bo = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.bn, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bp = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.bo, <16 x i8> zeroinitializer, i16 -1)
  %i.bq = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.bp, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.bq, ptr %.7.lcssa.i.us.us.us.us, align 16, !tbaa !90
  %i.br = getelementptr inbounds nuw i8, ptr %.7.lcssa.i.us.us.us.us, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.6662.lcssa.i.us.us.us.us, i64 %i.n
  %i.bt = or disjoint i32 %.0676.lcssa.i.us.us.us.us, 1
  br label %.lr.ph1127.i.us.us.us.us.prol.loopexit

.lr.ph1127.i.us.us.us.us.prol.loopexit:           ; preds = %.lr.ph1127.i.us.us.us.us.prol, %.lr.ph1127.i.us.us.us.us.preheader
  %.lcssa258.unr = phi ptr [ poison, %.lr.ph1127.i.us.us.us.us.preheader ], [ %i.br, %.lr.ph1127.i.us.us.us.us.prol ]
  %.81126.i.us.us.us.us.unr = phi ptr [ %.7.lcssa.i.us.us.us.us, %.lr.ph1127.i.us.us.us.us.preheader ], [ %i.br, %.lr.ph1127.i.us.us.us.us.prol ]
  %.76631125.i.us.us.us.us.unr = phi ptr [ %.6662.lcssa.i.us.us.us.us, %.lr.ph1127.i.us.us.us.us.preheader ], [ %i.bs, %.lr.ph1127.i.us.us.us.us.prol ]
  %.16771124.i.us.us.us.us.unr = phi i32 [ %.0676.lcssa.i.us.us.us.us, %.lr.ph1127.i.us.us.us.us.preheader ], [ %i.bt, %.lr.ph1127.i.us.us.us.us.prol ]
  %i.bu = icmp eq i32 %5, %.neg
  br i1 %i.bu, label %.loopexit1093.i.us.us.us.us, label %.lr.ph1127.i.us.us.us.us

.lr.ph1127.i.us.us.us.us:                         ; preds = %.lr.ph1127.i.us.us.us.us.prol.loopexit, %.lr.ph1127.i.us.us.us.us
  %.81126.i.us.us.us.us = phi ptr [ %i.cl, %.lr.ph1127.i.us.us.us.us ], [ %.81126.i.us.us.us.us.unr, %.lr.ph1127.i.us.us.us.us.prol.loopexit ] ; 3 uses
  %.76631125.i.us.us.us.us = phi ptr [ %i.cm, %.lr.ph1127.i.us.us.us.us ], [ %.76631125.i.us.us.us.us.unr, %.lr.ph1127.i.us.us.us.us.prol.loopexit ] ; 2 uses
  %.16771124.i.us.us.us.us = phi i32 [ %i.cn, %.lr.ph1127.i.us.us.us.us ], [ %.16771124.i.us.us.us.us.unr, %.lr.ph1127.i.us.us.us.us.prol.loopexit ]
  %i.bv = load <16 x float>, ptr %.76631125.i.us.us.us.us, align 1, !tbaa !90
  %i.bw = fmul fast <16 x float> %i.bv, %i.t      ; 2 uses
  %i.bx = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.bw)
  %i.by = fadd fast <16 x float> %i.bx, %i.bw
  %i.bz = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.by, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ca = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.bz, <16 x i8> zeroinitializer, i16 -1)
  %i.cb = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.ca, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.cb, ptr %.81126.i.us.us.us.us, align 16, !tbaa !90
  %i.cc = getelementptr inbounds nuw i8, ptr %.81126.i.us.us.us.us, i64 16
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.76631125.i.us.us.us.us, i64 %i.n ; 2 uses
  %i.ce = load <16 x float>, ptr %i.cd, align 1, !tbaa !90
  %i.cf = fmul fast <16 x float> %i.ce, %i.t      ; 2 uses
  %i.cg = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.cf)
  %i.ch = fadd fast <16 x float> %i.cg, %i.cf
  %i.ci = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ch, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.cj = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ci, <16 x i8> zeroinitializer, i16 -1)
  %i.ck = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.cj, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.ck, ptr %i.cc, align 16, !tbaa !90
  %i.cl = getelementptr inbounds nuw i8, ptr %.81126.i.us.us.us.us, i64 32 ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.n
  %i.cn = add nuw nsw i32 %.16771124.i.us.us.us.us, 2 ; 2 uses
  %exitcond.not.i.us.us.us.us.1 = icmp eq i32 %i.cn, %5
  br i1 %exitcond.not.i.us.us.us.us.1, label %.loopexit1093.i.us.us.us.us, label %.lr.ph1127.i.us.us.us.us, !llvm.loop !1015

.loopexit1093.i.us.us.us.us:                      ; preds = %.lr.ph1127.i.us.us.us.us.prol.loopexit, %.lr.ph1127.i.us.us.us.us, %.preheader1092.i.us.us.us.us
  %.9.i.us.us.us.us = phi ptr [ %.7.lcssa.i.us.us.us.us, %.preheader1092.i.us.us.us.us ], [ %.lcssa258.unr, %.lr.ph1127.i.us.us.us.us.prol.loopexit ], [ %i.cl, %.lr.ph1127.i.us.us.us.us ] ; 2 uses
  %indvars.iv.next.i.us.us.us.us = add nuw nsw i64 %indvars.iv.i.us.us.us.us, 16 ; 3 uses
  %i.co = or disjoint i64 %indvars.iv.next.i.us.us.us.us, 15
  %i.cp = icmp samesign ult i64 %i.co, %i.ab
  br i1 %i.cp, label %.loopexit1100.i.us.us.us.us, label %.preheader1091.loopexit.i, !llvm.loop !1016

.loopexit1100.i.us.us:                            ; preds = %.lr.ph1131.i.split.us.split.us, %.loopexit1093.i.loopexit18.us.us
  %indvars.iv.i.us.us = phi i64 [ %indvars.iv.next.i.us.us, %.loopexit1093.i.loopexit18.us.us ], [ 0, %.lr.ph1131.i.split.us.split.us ] ; 2 uses
  %.06471130.i.us.us = phi ptr [ %i.ee, %.loopexit1093.i.loopexit18.us.us ], [ %i.o, %.lr.ph1131.i.split.us.split.us ]
  %i.cq = load ptr, ptr %0, align 8, !tbaa !25
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.r
  %i.cs = add nsw i64 %indvars.iv.i.us.us, %i.ac
  %i.ct = mul nsw i64 %i.cs, %i.ad
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.ct
  br label %.lr.ph1114.i.us.us

.lr.ph1114.i.us.us:                               ; preds = %.lr.ph1114.i.us.us, %.loopexit1100.i.us.us
  %.51113.i.us.us = phi ptr [ %i.ee, %.lr.ph1114.i.us.us ], [ %.06471130.i.us.us, %.loopexit1100.i.us.us ] ; 3 uses
  %.46601112.i.us.us = phi ptr [ %i.ef, %.lr.ph1114.i.us.us ], [ %i.cu, %.loopexit1100.i.us.us ] ; 5 uses
  %.06751111.i.us.us = phi i32 [ %i.eg, %.lr.ph1114.i.us.us ], [ 0, %.loopexit1100.i.us.us ]
  %i.cv = load <16 x float>, ptr %.46601112.i.us.us, align 1, !tbaa !90
  %i.cw = getelementptr inbounds nuw i8, ptr %.46601112.i.us.us, i64 64
  %i.cx = load <16 x float>, ptr %i.cw, align 1, !tbaa !90
  %i.cy = getelementptr inbounds nuw i8, ptr %.46601112.i.us.us, i64 128
  %i.cz = load <16 x float>, ptr %i.cy, align 1, !tbaa !90
  %i.da = getelementptr inbounds nuw i8, ptr %.46601112.i.us.us, i64 192
  %i.db = load <16 x float>, ptr %i.da, align 1, !tbaa !90
  %i.dc = fmul fast <16 x float> %i.cv, %i.t      ; 2 uses
  %i.dd = fmul fast <16 x float> %i.cx, %i.t      ; 2 uses
  %i.de = fmul fast <16 x float> %i.cz, %i.t      ; 2 uses
  %i.df = fmul fast <16 x float> %i.db, %i.t      ; 2 uses
  %i.dg = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.dc)
  %i.dh = fadd fast <16 x float> %i.dg, %i.dc
  %i.di = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.dh, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.dj = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.di, <16 x i8> zeroinitializer, i16 -1)
  %i.dk = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.dd)
  %i.dl = fadd fast <16 x float> %i.dk, %i.dd
  %i.dm = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.dl, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.dn = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.dm, <16 x i8> zeroinitializer, i16 -1)
  %i.do = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.de)
  %i.dp = fadd fast <16 x float> %i.do, %i.de
  %i.dq = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.dp, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.dr = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.dq, <16 x i8> zeroinitializer, i16 -1)
  %i.ds = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.df)
  %i.dt = fadd fast <16 x float> %i.ds, %i.df
  %i.du = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.dt, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.dv = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.du, <16 x i8> zeroinitializer, i16 -1)
  %i.dw = shufflevector <16 x i8> %i.dj, <16 x i8> %i.dr, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dx = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %i.dw, <32 x i8> splat (i8 -127))
  %7 = shufflevector <16 x i8> %i.dn, <16 x i8> %i.dv, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dy = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %7, <32 x i8> splat (i8 -127))
  %i.dz = bitcast <32 x i8> %i.dx to <16 x i16>   ; 2 uses
  %i.ea = bitcast <32 x i8> %i.dy to <16 x i16>   ; 2 uses
  %i.eb = shufflevector <16 x i16> %i.dz, <16 x i16> %i.ea, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 16, i32 18, i32 20, i32 22, i32 8, i32 10, i32 12, i32 14, i32 24, i32 26, i32 28, i32 30>
  %i.ec = shufflevector <16 x i16> %i.dz, <16 x i16> %i.ea, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 17, i32 19, i32 21, i32 23, i32 9, i32 11, i32 13, i32 15, i32 25, i32 27, i32 29, i32 31>
  store <16 x i16> %i.eb, ptr %.51113.i.us.us, align 32, !tbaa !90
  %i.ed = getelementptr inbounds nuw i8, ptr %.51113.i.us.us, i64 32
  store <16 x i16> %i.ec, ptr %i.ed, align 32, !tbaa !90
  %i.ee = getelementptr inbounds nuw i8, ptr %.51113.i.us.us, i64 64 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.46601112.i.us.us, i64 %.idx740.i
  %i.eg = add nuw nsw i32 %.06751111.i.us.us, 4   ; 2 uses
  %i.eh = or disjoint i32 %i.eg, 3
  %i.ei = icmp slt i32 %i.eh, %5
  br i1 %i.ei, label %.lr.ph1114.i.us.us, label %.loopexit1093.i.loopexit18.us.us, !llvm.loop !1017

.loopexit1093.i.loopexit18.us.us:                 ; preds = %.lr.ph1114.i.us.us
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.i.us.us, 16 ; 3 uses
  %i.ej = or disjoint i64 %indvars.iv.next.i.us.us, 15
  %i.ek = icmp samesign ult i64 %i.ej, %i.ab
  br i1 %i.ek, label %.loopexit1100.i.us.us, label %.preheader1091.loopexit.i, !llvm.loop !1016

.loopexit1100.i.us:                               ; preds = %.lr.ph1131.i.split.us, %.loopexit1093.i.loopexit19.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %.loopexit1093.i.loopexit19.us ], [ 0, %.lr.ph1131.i.split.us ] ; 2 uses
  %.06471130.i.us = phi ptr [ %i.hx, %.loopexit1093.i.loopexit19.us ], [ %i.o, %.lr.ph1131.i.split.us ]
  %i.el = load ptr, ptr %0, align 8, !tbaa !25
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.r
  %i.en = add nsw i64 %indvars.iv.i.us, %i.ac
  %i.eo = mul nsw i64 %i.en, %i.ad
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.eo
  br label %.lr.ph1108.i.us

.lr.ph1108.i.us:                                  ; preds = %.loopexit1100.i.us, %.lr.ph1108.i.us
  %.31107.i.us = phi ptr [ %i.hx, %.lr.ph1108.i.us ], [ %.06471130.i.us, %.loopexit1100.i.us ] ; 3 uses
  %.26581106.i.us = phi ptr [ %i.hy, %.lr.ph1108.i.us ], [ %i.ep, %.loopexit1100.i.us ] ; 9 uses
  %.06741105.i.us = phi i32 [ %i.hz, %.lr.ph1108.i.us ], [ 0, %.loopexit1100.i.us ]
  %i.eq = load <16 x float>, ptr %.26581106.i.us, align 1, !tbaa !90
  %i.er = getelementptr inbounds nuw i8, ptr %.26581106.i.us, i64 64
  %i.es = load <16 x float>, ptr %i.er, align 1, !tbaa !90
  %i.et = getelementptr inbounds nuw i8, ptr %.26581106.i.us, i64 128
  %i.eu = load <16 x float>, ptr %i.et, align 1, !tbaa !90
  %i.ev = getelementptr inbounds nuw i8, ptr %.26581106.i.us, i64 192
  %i.ew = load <16 x float>, ptr %i.ev, align 1, !tbaa !90
  %i.ex = getelementptr inbounds nuw i8, ptr %.26581106.i.us, i64 256
  %i.ey = load <16 x float>, ptr %i.ex, align 1, !tbaa !90
  %i.ez = getelementptr inbounds nuw i8, ptr %.26581106.i.us, i64 320
  %i.fa = load <16 x float>, ptr %i.ez, align 1, !tbaa !90
  %i.fb = getelementptr inbounds nuw i8, ptr %.26581106.i.us, i64 384
  %i.fc = load <16 x float>, ptr %i.fb, align 1, !tbaa !90
  %i.fd = getelementptr inbounds nuw i8, ptr %.26581106.i.us, i64 448
  %i.fe = load <16 x float>, ptr %i.fd, align 1, !tbaa !90
  %i.ff = fmul fast <16 x float> %i.eq, %i.t      ; 2 uses
  %i.fg = fmul fast <16 x float> %i.es, %i.t      ; 2 uses
  %i.fh = fmul fast <16 x float> %i.eu, %i.t      ; 2 uses
  %i.fi = fmul fast <16 x float> %i.ew, %i.t      ; 2 uses
  %i.fj = fmul fast <16 x float> %i.ey, %i.t      ; 2 uses
  %i.fk = fmul fast <16 x float> %i.fa, %i.t      ; 2 uses
  %i.fl = fmul fast <16 x float> %i.fc, %i.t      ; 2 uses
  %i.fm = fmul fast <16 x float> %i.fe, %i.t      ; 2 uses
  %i.fn = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ff)
  %i.fo = fadd fast <16 x float> %i.fn, %i.ff
  %i.fp = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.fo, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.fq = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.fp, <16 x i8> zeroinitializer, i16 -1)
  %i.fr = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.fq, <16 x i8> splat (i8 -127))
  %i.fs = bitcast <16 x i8> %i.fr to <2 x i64>
  %i.ft = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.fg)
  %i.fu = fadd fast <16 x float> %i.ft, %i.fg
  %i.fv = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.fu, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.fw = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.fv, <16 x i8> zeroinitializer, i16 -1)
  %i.fx = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.fw, <16 x i8> splat (i8 -127))
  %i.fy = bitcast <16 x i8> %i.fx to <2 x i64>
  %i.fz = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.fh)
  %i.ga = fadd fast <16 x float> %i.fz, %i.fh
  %i.gb = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ga, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.gc = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.gb, <16 x i8> zeroinitializer, i16 -1)
  %i.gd = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.gc, <16 x i8> splat (i8 -127))
  %i.ge = bitcast <16 x i8> %i.gd to <2 x i64>
  %i.gf = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.fi)
  %i.gg = fadd fast <16 x float> %i.gf, %i.fi
  %i.gh = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.gg, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.gi = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.gh, <16 x i8> zeroinitializer, i16 -1)
  %i.gj = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.gi, <16 x i8> splat (i8 -127))
  %i.gk = bitcast <16 x i8> %i.gj to <2 x i64>
  %i.gl = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.fj)
  %i.gm = fadd fast <16 x float> %i.gl, %i.fj
  %i.gn = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.gm, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.go = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.gn, <16 x i8> zeroinitializer, i16 -1)
  %i.gp = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.fk)
  %i.gq = fadd fast <16 x float> %i.gp, %i.fk
  %i.gr = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.gq, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.gs = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.gr, <16 x i8> zeroinitializer, i16 -1)
  %i.gt = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.fl)
  %i.gu = fadd fast <16 x float> %i.gt, %i.fl
  %i.gv = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.gu, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.gw = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.gv, <16 x i8> zeroinitializer, i16 -1)
  %i.gx = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.fm)
  %i.gy = fadd fast <16 x float> %i.gx, %i.fm
  %i.gz = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.gy, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ha = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.gz, <16 x i8> zeroinitializer, i16 -1)
  %i.hb = shufflevector <16 x i8> %i.go, <16 x i8> %i.gw, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hc = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %i.hb, <32 x i8> splat (i8 -127))
  %i.hd = shufflevector <2 x i64> %i.fs, <2 x i64> %i.ge, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.he = bitcast <8 x i64> %i.hd to <16 x i32>
  %i.hf = bitcast <32 x i8> %i.hc to <8 x i32>
  %i.hg = shufflevector <8 x i32> %i.hf, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hh = shufflevector <16 x i32> %i.he, <16 x i32> %i.hg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %8 = shufflevector <16 x i8> %i.gs, <16 x i8> %i.ha, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hi = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %8, <32 x i8> splat (i8 -127))
  %i.hj = shufflevector <2 x i64> %i.fy, <2 x i64> %i.gk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hk = bitcast <8 x i64> %i.hj to <16 x i32>
  %i.hl = bitcast <32 x i8> %i.hi to <8 x i32>
  %i.hm = shufflevector <8 x i32> %i.hl, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hn = shufflevector <16 x i32> %i.hk, <16 x i32> %i.hm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ho = bitcast <16 x i32> %i.hh to <32 x i16>  ; 2 uses
  %i.hp = bitcast <16 x i32> %i.hn to <32 x i16>  ; 2 uses
  %i.hq = shufflevector <32 x i16> %i.ho, <32 x i16> %i.hp, <32 x i32> <i32 0, i32 4, i32 32, i32 36, i32 1, i32 5, i32 33, i32 37, i32 8, i32 12, i32 40, i32 44, i32 9, i32 13, i32 41, i32 45, i32 16, i32 20, i32 48, i32 52, i32 17, i32 21, i32 49, i32 53, i32 24, i32 28, i32 56, i32 60, i32 25, i32 29, i32 57, i32 61>
  %i.hr = shufflevector <32 x i16> %i.ho, <32 x i16> %i.hp, <32 x i32> <i32 2, i32 6, i32 34, i32 38, i32 3, i32 7, i32 35, i32 39, i32 10, i32 14, i32 42, i32 46, i32 11, i32 15, i32 43, i32 47, i32 18, i32 22, i32 50, i32 54, i32 19, i32 23, i32 51, i32 55, i32 26, i32 30, i32 58, i32 62, i32 27, i32 31, i32 59, i32 63>
  %i.hs = bitcast <32 x i16> %i.hq to <16 x i32>
  %i.ht = shufflevector <16 x i32> %i.hs, <16 x i32> poison, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 2, i32 3, i32 6, i32 7, i32 10, i32 11, i32 14, i32 15>
  %i.hu = bitcast <32 x i16> %i.hr to <16 x i32>
  %i.hv = shufflevector <16 x i32> %i.hu, <16 x i32> poison, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 2, i32 3, i32 6, i32 7, i32 10, i32 11, i32 14, i32 15>
  store <16 x i32> %i.ht, ptr %.31107.i.us, align 64, !tbaa !90
  %i.hw = getelementptr inbounds nuw i8, ptr %.31107.i.us, i64 64
  store <16 x i32> %i.hv, ptr %i.hw, align 64, !tbaa !90
  %i.hx = getelementptr inbounds nuw i8, ptr %.31107.i.us, i64 128 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.26581106.i.us, i64 %.idx741.i
  %i.hz = add nuw nsw i32 %.06741105.i.us, 8      ; 2 uses
  %i.ia = or disjoint i32 %i.hz, 7
  %i.ib = icmp slt i32 %i.ia, %5
  br i1 %i.ib, label %.lr.ph1108.i.us, label %.loopexit1093.i.loopexit19.us, !llvm.loop !1018

.loopexit1093.i.loopexit19.us:                    ; preds = %.lr.ph1108.i.us
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 16 ; 3 uses
  %i.ic = or disjoint i64 %indvars.iv.next.i.us, 15
  %i.id = icmp samesign ult i64 %i.ic, %i.ab
  br i1 %i.id, label %.loopexit1100.i.us, label %.preheader1091.loopexit.i, !llvm.loop !1016

.preheader1091.loopexit.i:                        ; preds = %.loopexit1093.i.loopexit20, %.loopexit1093.i.loopexit19.us, %.loopexit1093.i.loopexit18.us.us, %.loopexit1093.i.us.us.us.us, %.loopexit1100.i.us.us.us.preheader
  %.us-phi = phi ptr [ %.9.i.us.us.us.us, %.loopexit1093.i.us.us.us.us ], [ %i.o, %.loopexit1100.i.us.us.us.preheader ], [ %i.hx, %.loopexit1093.i.loopexit19.us ], [ %i.ee, %.loopexit1093.i.loopexit18.us.us ], [ %i.yu, %.loopexit1093.i.loopexit20 ]
  %.us-phi53 = phi i64 [ %indvars.iv.next.i.us.us.us.us, %.loopexit1093.i.us.us.us.us ], [ %i.ag, %.loopexit1100.i.us.us.us.preheader ], [ %indvars.iv.next.i.us, %.loopexit1093.i.loopexit19.us ], [ %indvars.iv.next.i.us.us, %.loopexit1093.i.loopexit18.us.us ], [ %indvars.iv.next.i, %.loopexit1093.i.loopexit20 ]
  %i.ie = trunc nuw nsw i64 %.us-phi53 to i32
  br label %.preheader1091.i

.preheader1091.i:                                 ; preds = %.preheader1091.loopexit.i, %bb.j
  %.0650.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.ie, %.preheader1091.loopexit.i ] ; 3 uses
  %.0647.lcssa.i = phi ptr [ %i.o, %bb.j ], [ %.us-phi, %.preheader1091.loopexit.i ] ; 6 uses
  %i.if = or disjoint i32 %.0650.lcssa.i, 7
  %i.ig = icmp slt i32 %i.if, %3
  br i1 %i.ig, label %.lr.ph1166.i, label %.preheader1085.i

.lr.ph1166.i:                                     ; preds = %.preheader1091.i
  %i.ih = sext i32 %4 to i64
  %i.ii = mul i64 %i.n, %i.ih                     ; 4 uses
  %i.ij = icmp ne i32 %i.e, 16
  %i.ik = insertelement <16 x float> poison, float %6, i64 0
  %i.il = shufflevector <16 x float> %i.ik, <16 x float> poison, <16 x i32> zeroinitializer ; 8 uses
  %i.im = icmp slt i32 %5, 16
  %.idx738.i = shl i64 %i.n, 6
  %i.in = insertelement <8 x float> poison, float %6, i64 0
  %i.io = shufflevector <8 x float> %i.in, <8 x float> poison, <8 x i32> zeroinitializer ; 17 uses
  %.idx737.i = shl i64 %i.n, 5
  %i.ip = icmp ne i32 %i.e, 4
  %i.iq = icmp slt i32 %5, 4
  %.idx736.i = shl i64 %i.n, 4
  %i.ir = icmp eq i32 %i.e, 1
  %i.is = icmp sgt i32 %5, 1
  %.idx735.i = shl i64 %i.n, 3
  %i.it = and i32 %5, -2
  %i.iu = zext i32 %.0650.lcssa.i to i64          ; 7 uses
  %i.iv = sext i32 %3 to i64
  %i.iw = sext i32 %2 to i64                      ; 4 uses
  %i.ix = sext i32 %i.e to i64                    ; 4 uses
  %brmerge1289.i = or i1 %i.im, %i.ij
  %brmerge1295.i = or i1 %i.iq, %i.ip
  %invariant.op.i = add nsw i64 %i.iv, -7         ; 5 uses
  br i1 %brmerge1289.i, label %.lr.ph1166.i.split.us, label %.lr.ph1137.i.preheader

.lr.ph1166.i.split.us:                            ; preds = %.lr.ph1166.i
  %i.iy = icmp slt i32 %5, 8
  %i.iz = icmp ne i32 %i.e, 8
  %brmerge1292.i = or i1 %i.iy, %i.iz
  br i1 %brmerge1292.i, label %.lr.ph1166.i.split.us.split.us, label %.loopexit1090.i.us

.lr.ph1166.i.split.us.split.us:                   ; preds = %.lr.ph1166.i.split.us
  br i1 %brmerge1295.i, label %.lr.ph1166.i.split.us.split.us.split.us, label %.loopexit1090.i.us.us

.lr.ph1166.i.split.us.split.us.split.us:          ; preds = %.lr.ph1166.i.split.us.split.us
  br i1 %i.ir, label %.loopexit1090.i.us.us.us.us.preheader, label %.loopexit1090.i.us.us.us.preheader

.loopexit1090.i.us.us.us.us.preheader:            ; preds = %.lr.ph1166.i.split.us.split.us.split.us
  %xtraiter265 = and i32 %5, 1
  %lcmp.mod266.not = icmp eq i32 %xtraiter265, 0
  br label %.loopexit1090.i.us.us.us.us

.loopexit1090.i.us.us.us.preheader:               ; preds = %.lr.ph1166.i.split.us.split.us.split.us
  %i.ja = add nuw nsw i64 %i.iu, 8
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op.i, i64 %i.ja)
  %i.jb = xor i64 %i.iu, -1
  %i.jc = add nsw i64 %smax, %i.jb
  %i.jd = and i64 %i.jc, -8
  %i.je = add i64 %i.jd, %i.iu
  %i.jf = add i64 %i.je, 8
  br label %.preheader1085.loopexit.i

.loopexit1090.i.us.us.us.us:                      ; preds = %.loopexit1090.i.us.us.us.us.preheader, %.loopexit1087.i.us.us.us.us
  %indvars.iv1381.i.us.us.us.us = phi i64 [ %indvars.iv.next1382.i.us.us.us.us, %.loopexit1087.i.us.us.us.us ], [ %i.iu, %.loopexit1090.i.us.us.us.us.preheader ] ; 2 uses
  %.101165.i.us.us.us.us = phi ptr [ %.19.i.us.us.us.us, %.loopexit1087.i.us.us.us.us ], [ %.0647.lcssa.i, %.loopexit1090.i.us.us.us.us.preheader ] ; 2 uses
  %i.jg = load ptr, ptr %0, align 8, !tbaa !25
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.ii
  %i.ji = add nsw i64 %indvars.iv1381.i.us.us.us.us, %i.iw
  %i.jj = mul nuw nsw i64 %i.ji, %i.ix
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.jh, i64 %i.jj ; 2 uses
  br i1 %i.is, label %.lr.ph1155.i.us.us.us.us, label %.preheader1086.i.us.us.us.us

.lr.ph1155.i.us.us.us.us:                         ; preds = %.loopexit1090.i.us.us.us.us, %.lr.ph1155.i.us.us.us.us
  %.171154.i.us.us.us.us = phi ptr [ %i.kh, %.lr.ph1155.i.us.us.us.us ], [ %.101165.i.us.us.us.us, %.loopexit1090.i.us.us.us.us ] ; 2 uses
  %.66841153.i.us.us.us.us = phi ptr [ %i.ki, %.lr.ph1155.i.us.us.us.us ], [ %i.jk, %.loopexit1090.i.us.us.us.us ] ; 3 uses
  %.06931152.i.us.us.us.us = phi i32 [ %i.kj, %.lr.ph1155.i.us.us.us.us ], [ 0, %.loopexit1090.i.us.us.us.us ]
  %i.jl = load <8 x float>, ptr %.66841153.i.us.us.us.us, align 1, !tbaa !90
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %.66841153.i.us.us.us.us, i64 %i.n
  %i.jn = load <8 x float>, ptr %i.jm, align 1, !tbaa !90
  %i.jo = fmul fast <8 x float> %i.jl, %i.io      ; 2 uses
  %i.jp = fmul fast <8 x float> %i.jn, %i.io      ; 2 uses
  %i.jq = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.jo)
  %i.jr = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.jp)
  %i.js = fadd fast <8 x float> %i.jq, %i.jo
  %i.jt = fadd fast <8 x float> %i.jr, %i.jp
  %i.ju = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.js)
  %i.jv = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.jt)
  %i.jw = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.ju, <8 x i32> %i.jv)
  %i.jx = bitcast <16 x i16> %i.jw to <4 x i64>
  %i.jy = shufflevector <4 x i64> %i.jx, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.jz = bitcast <4 x i64> %i.jy to <16 x i16>
  %i.ka = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.jz, <16 x i16> splat (i16 -127))
  %i.kb = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.ka, <16 x i16> splat (i16 127))
  %i.kc = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.kb, <16 x i16> poison)
  %i.kd = bitcast <32 x i8> %i.kc to <8 x i32>
  %i.ke = shufflevector <8 x i32> %i.kd, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.kf = bitcast <4 x i32> %i.ke to <16 x i8>
  %i.kg = shufflevector <16 x i8> %i.kf, <16 x i8> poison, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %i.kg, ptr %.171154.i.us.us.us.us, align 16, !tbaa !90
  %i.kh = getelementptr inbounds nuw i8, ptr %.171154.i.us.us.us.us, i64 16 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.66841153.i.us.us.us.us, i64 %.idx735.i ; 2 uses
  %i.kj = add nuw nsw i32 %.06931152.i.us.us.us.us, 2 ; 2 uses
  %i.kk = or disjoint i32 %i.kj, 1
  %i.kl = icmp slt i32 %i.kk, %5
  br i1 %i.kl, label %.lr.ph1155.i.us.us.us.us, label %.preheader1086.i.us.us.us.us, !llvm.loop !1019

.preheader1086.i.us.us.us.us:                     ; preds = %.lr.ph1155.i.us.us.us.us, %.loopexit1090.i.us.us.us.us
  %.0693.lcssa.i.us.us.us.us = phi i32 [ 0, %.loopexit1090.i.us.us.us.us ], [ %i.it, %.lr.ph1155.i.us.us.us.us ] ; 4 uses
  %.6684.lcssa.i.us.us.us.us = phi ptr [ %i.jk, %.loopexit1090.i.us.us.us.us ], [ %i.ki, %.lr.ph1155.i.us.us.us.us ] ; 3 uses
  %.17.lcssa.i.us.us.us.us = phi ptr [ %.101165.i.us.us.us.us, %.loopexit1090.i.us.us.us.us ], [ %i.kh, %.lr.ph1155.i.us.us.us.us ] ; 4 uses
  %i.km = icmp slt i32 %.0693.lcssa.i.us.us.us.us, %5
  br i1 %i.km, label %.lr.ph1162.i.us.us.us.us.preheader, label %.loopexit1087.i.us.us.us.us

.lr.ph1162.i.us.us.us.us.preheader:               ; preds = %.preheader1086.i.us.us.us.us
  %.neg281 = or disjoint i32 %.0693.lcssa.i.us.us.us.us, 1
  br i1 %lcmp.mod266.not, label %.lr.ph1162.i.us.us.us.us.prol.loopexit, label %.lr.ph1162.i.us.us.us.us.prol

.lr.ph1162.i.us.us.us.us.prol:                    ; preds = %.lr.ph1162.i.us.us.us.us.preheader
  %i.kn = load <8 x float>, ptr %.6684.lcssa.i.us.us.us.us, align 1, !tbaa !90
  %i.ko = fmul fast <8 x float> %i.kn, %i.io      ; 2 uses
  %i.kp = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ko)
  %i.kq = fadd fast <8 x float> %i.kp, %i.ko
  %i.kr = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.kq)
  %i.ks = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.kr, <16 x i8> zeroinitializer, i8 -1)
  %i.kt = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.ks, <16 x i8> splat (i8 -127))
  %i.ku = bitcast <16 x i8> %i.kt to <2 x i64>
  %i.kv = extractelement <2 x i64> %i.ku, i64 0
  store i64 %i.kv, ptr %.17.lcssa.i.us.us.us.us, align 8, !tbaa !111
  %i.kw = getelementptr inbounds nuw i8, ptr %.17.lcssa.i.us.us.us.us, i64 8 ; 2 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %.6684.lcssa.i.us.us.us.us, i64 %i.n
  %i.ky = or disjoint i32 %.0693.lcssa.i.us.us.us.us, 1
  br label %.lr.ph1162.i.us.us.us.us.prol.loopexit

.lr.ph1162.i.us.us.us.us.prol.loopexit:           ; preds = %.lr.ph1162.i.us.us.us.us.prol, %.lr.ph1162.i.us.us.us.us.preheader
  %.lcssa249.unr = phi ptr [ poison, %.lr.ph1162.i.us.us.us.us.preheader ], [ %i.kw, %.lr.ph1162.i.us.us.us.us.prol ]
  %.181161.i.us.us.us.us.unr = phi ptr [ %.17.lcssa.i.us.us.us.us, %.lr.ph1162.i.us.us.us.us.preheader ], [ %i.kw, %.lr.ph1162.i.us.us.us.us.prol ]
  %.76851160.i.us.us.us.us.unr = phi ptr [ %.6684.lcssa.i.us.us.us.us, %.lr.ph1162.i.us.us.us.us.preheader ], [ %i.kx, %.lr.ph1162.i.us.us.us.us.prol ]
  %.16941159.i.us.us.us.us.unr = phi i32 [ %.0693.lcssa.i.us.us.us.us, %.lr.ph1162.i.us.us.us.us.preheader ], [ %i.ky, %.lr.ph1162.i.us.us.us.us.prol ]
  %i.kz = icmp eq i32 %5, %.neg281
  br i1 %i.kz, label %.loopexit1087.i.us.us.us.us, label %.lr.ph1162.i.us.us.us.us

.lr.ph1162.i.us.us.us.us:                         ; preds = %.lr.ph1162.i.us.us.us.us.prol.loopexit, %.lr.ph1162.i.us.us.us.us
  %.181161.i.us.us.us.us = phi ptr [ %i.lu, %.lr.ph1162.i.us.us.us.us ], [ %.181161.i.us.us.us.us.unr, %.lr.ph1162.i.us.us.us.us.prol.loopexit ] ; 3 uses
  %.76851160.i.us.us.us.us = phi ptr [ %i.lv, %.lr.ph1162.i.us.us.us.us ], [ %.76851160.i.us.us.us.us.unr, %.lr.ph1162.i.us.us.us.us.prol.loopexit ] ; 2 uses
  %.16941159.i.us.us.us.us = phi i32 [ %i.lw, %.lr.ph1162.i.us.us.us.us ], [ %.16941159.i.us.us.us.us.unr, %.lr.ph1162.i.us.us.us.us.prol.loopexit ]
  %i.la = load <8 x float>, ptr %.76851160.i.us.us.us.us, align 1, !tbaa !90
  %i.lb = fmul fast <8 x float> %i.la, %i.io      ; 2 uses
  %i.lc = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.lb)
  %i.ld = fadd fast <8 x float> %i.lc, %i.lb
  %i.le = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ld)
  %i.lf = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.le, <16 x i8> zeroinitializer, i8 -1)
  %i.lg = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.lf, <16 x i8> splat (i8 -127))
  %i.lh = bitcast <16 x i8> %i.lg to <2 x i64>
  %i.li = extractelement <2 x i64> %i.lh, i64 0
  store i64 %i.li, ptr %.181161.i.us.us.us.us, align 8, !tbaa !111
  %i.lj = getelementptr inbounds nuw i8, ptr %.181161.i.us.us.us.us, i64 8
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %.76851160.i.us.us.us.us, i64 %i.n ; 2 uses
  %i.ll = load <8 x float>, ptr %i.lk, align 1, !tbaa !90
  %i.lm = fmul fast <8 x float> %i.ll, %i.io      ; 2 uses
  %i.ln = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.lm)
  %i.lo = fadd fast <8 x float> %i.ln, %i.lm
  %i.lp = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.lo)
  %i.lq = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.lp, <16 x i8> zeroinitializer, i8 -1)
  %i.lr = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.lq, <16 x i8> splat (i8 -127))
  %i.ls = bitcast <16 x i8> %i.lr to <2 x i64>
  %i.lt = extractelement <2 x i64> %i.ls, i64 0
end_hunk_0
begin_hunk_1_@_ZN4ncnnL30transpose_pack_B_tile_quantizeERKNS_3MatERS0_iiiif:bb.a
  %i.pt = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.oy)
  %i.pu = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.pa)
  %i.pv = fadd fast <8 x float> %i.pt, %i.oy
  %i.pw = fadd fast <8 x float> %i.pu, %i.pa
  %i.px = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.pv)
  %i.py = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.pw)
  %i.pz = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.px, <8 x i32> %i.py)
  %i.qa = bitcast <16 x i16> %i.pz to <4 x i64>
  %i.qb = shufflevector <4 x i64> %i.qa, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.qc = bitcast <4 x i64> %i.qb to <16 x i16>
  %i.qd = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.qc, <16 x i16> splat (i16 -127))
  %i.qe = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.qd, <16 x i16> splat (i16 127))
  %i.qf = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.qe, <16 x i16> poison)
  %i.qg = bitcast <32 x i8> %i.qf to <4 x i64>
  %i.qh = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.pb)
  %i.qi = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.pd)
  %i.qj = fadd fast <8 x float> %i.qh, %i.pb
  %i.qk = fadd fast <8 x float> %i.qi, %i.pd
  %i.ql = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.qj)
  %i.qm = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.qk)
  %i.qn = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.ql, <8 x i32> %i.qm)
  %i.qo = bitcast <16 x i16> %i.qn to <4 x i64>
  %i.qp = shufflevector <4 x i64> %i.qo, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.qq = bitcast <4 x i64> %i.qp to <16 x i16>
  %i.qr = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.qq, <16 x i16> splat (i16 -127))
  %i.qs = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.qr, <16 x i16> splat (i16 127))
  %i.qt = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.qs, <16 x i16> poison)
  %i.qu = bitcast <32 x i8> %i.qt to <4 x i64>
  %i.qv = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.pc)
  %i.qw = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.pe)
  %i.qx = fadd fast <8 x float> %i.qv, %i.pc
  %i.qy = fadd fast <8 x float> %i.qw, %i.pe
  %i.qz = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.qx)
  %i.ra = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.qy)
  %i.rb = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.qz, <8 x i32> %i.ra)
  %i.rc = bitcast <16 x i16> %i.rb to <4 x i64>
  %i.rd = shufflevector <4 x i64> %i.rc, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.re = bitcast <4 x i64> %i.rd to <16 x i16>
  %i.rf = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.re, <16 x i16> splat (i16 -127))
  %i.rg = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.rf, <16 x i16> splat (i16 127))
  %i.rh = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.rg, <16 x i16> poison)
  %i.ri = bitcast <32 x i8> %i.rh to <4 x i64>
  %i.rj = shufflevector <4 x i64> %i.ps, <4 x i64> %i.qu, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.rk = shufflevector <4 x i64> %i.qg, <4 x i64> %i.ri, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.rl = bitcast <4 x i64> %i.rj to <16 x i16>   ; 2 uses
  %i.rm = bitcast <4 x i64> %i.rk to <16 x i16>   ; 2 uses
  %i.rn = shufflevector <16 x i16> %i.rl, <16 x i16> %i.rm, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27>
  %i.ro = shufflevector <16 x i16> %i.rl, <16 x i16> %i.rm, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.rp = bitcast <16 x i16> %i.rn to <8 x i32>   ; 2 uses
  %i.rq = bitcast <16 x i16> %i.ro to <8 x i32>   ; 2 uses
  %i.rr = shufflevector <8 x i32> %i.rp, <8 x i32> %i.rq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.rs = bitcast <8 x i32> %i.rr to <4 x i64>
  %i.rt = shufflevector <8 x i32> %i.rp, <8 x i32> %i.rq, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.ru = bitcast <8 x i32> %i.rt to <4 x i64>
  %i.rv = shufflevector <4 x i64> %i.rs, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.rw = shufflevector <4 x i64> %i.ru, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.rv, ptr %.131142.i.us, align 32, !tbaa !90
  %i.rx = getelementptr inbounds nuw i8, ptr %.131142.i.us, i64 32
  store <4 x i64> %i.rw, ptr %i.rx, align 32, !tbaa !90
  %i.ry = getelementptr inbounds nuw i8, ptr %.131142.i.us, i64 64 ; 3 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %.26801141.i.us, i64 %.idx737.i
  %i.sa = add nuw nsw i32 %.06871140.i.us, 8      ; 2 uses
  %i.sb = or disjoint i32 %i.sa, 7
  %i.sc = icmp slt i32 %i.sb, %5
  br i1 %i.sc, label %.lr.ph1143.i.us, label %.loopexit1087.i.loopexit16.us, !llvm.loop !1023

.loopexit1087.i.loopexit16.us:                    ; preds = %.lr.ph1143.i.us
  %indvars.iv.next1382.i.us = add nuw nsw i64 %indvars.iv1381.i.us, 8 ; 3 uses
  %i.sd = icmp slt i64 %indvars.iv.next1382.i.us, %invariant.op.i
  br i1 %i.sd, label %.loopexit1090.i.us, label %.preheader1085.loopexit.i, !llvm.loop !1021

.lr.ph.i.preheader:                               ; preds = %.lr.ph1131.i, %.loopexit1093.i.loopexit20
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.loopexit1093.i.loopexit20 ], [ 0, %.lr.ph1131.i ] ; 2 uses
  %.06471130.i = phi ptr [ %i.yu, %.loopexit1093.i.loopexit20 ], [ %i.o, %.lr.ph1131.i ]
  %i.se = load ptr, ptr %0, align 8, !tbaa !25
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %i.r
  %i.sg = add nsw i64 %indvars.iv.i, %i.ac
  %i.sh = mul nsw i64 %i.sg, %i.ad
  %i.si = getelementptr inbounds [4 x i8], ptr %i.sf, i64 %i.sh
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.16481103.i = phi ptr [ %i.yu, %.lr.ph.i ], [ %.06471130.i, %.lr.ph.i.preheader ] ; 5 uses
  %.06561102.i = phi ptr [ %i.yv, %.lr.ph.i ], [ %i.si, %.lr.ph.i.preheader ] ; 17 uses
  %.06731101.i = phi i32 [ %i.yw, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.sj = load <16 x float>, ptr %.06561102.i, align 64, !tbaa !90
  %i.sk = getelementptr inbounds nuw i8, ptr %.06561102.i, i64 64
  %i.sl = load <16 x float>, ptr %i.sk, align 64, !tbaa !90
  %i.sm = getelementptr inbounds nuw i8, ptr %.06561102.i, i64 128
  %i.sn = load <16 x float>, ptr %i.sm, align 64, !tbaa !90
  %i.so = getelementptr inbounds nuw i8, ptr %.06561102.i, i64 192
  %i.sp = load <16 x float>, ptr %i.so, align 64, !tbaa !90
  %i.sq = getelementptr inbounds nuw i8, ptr %.06561102.i, i64 256
  %i.sr = load <16 x float>, ptr %i.sq, align 64, !tbaa !90
  %i.ss = getelementptr inbounds nuw i8, ptr %.06561102.i, i64 320
  %i.st = load <16 x float>, ptr %i.ss, align 64, !tbaa !90
  %i.su = getelementptr inbounds nuw i8, ptr %.06561102.i, i64 384
  %i.sv = load <16 x float>, ptr %i.su, align 64, !tbaa !90
  %i.sw = getelementptr inbounds nuw i8, ptr %.06561102.i, i64 448
  %i.sx = load <16 x float>, ptr %i.sw, align 64, !tbaa !90
  %i.sy = getelementptr inbounds nuw i8, ptr %.06561102.i, i64 512
  %i.sz = load <16 x float>, ptr %i.sy, align 64, !tbaa !90
  %i.ta = getelementptr inbounds nuw i8, ptr %.06561102.i, i64 576
  %i.tb = load <16 x float>, ptr %i.ta, align 64, !tbaa !90
  %i.tc = getelementptr inbounds nuw i8, ptr %.06561102.i, i64 640
  %i.td = load <16 x float>, ptr %i.tc, align 64, !tbaa !90
  %i.te = getelementptr inbounds nuw i8, ptr %.06561102.i, i64 704
  %i.tf = load <16 x float>, ptr %i.te, align 64, !tbaa !90
  %i.tg = getelementptr inbounds nuw i8, ptr %.06561102.i, i64 768
  %i.th = load <16 x float>, ptr %i.tg, align 64, !tbaa !90
  %i.ti = getelementptr inbounds nuw i8, ptr %.06561102.i, i64 832
  %i.tj = load <16 x float>, ptr %i.ti, align 64, !tbaa !90
  %i.tk = getelementptr inbounds nuw i8, ptr %.06561102.i, i64 896
  %i.tl = load <16 x float>, ptr %i.tk, align 64, !tbaa !90
  %i.tm = getelementptr inbounds nuw i8, ptr %.06561102.i, i64 960
  %i.tn = load <16 x float>, ptr %i.tm, align 64, !tbaa !90
  %i.to = fmul fast <16 x float> %i.sj, %i.t      ; 2 uses
  %i.tp = fmul fast <16 x float> %i.sl, %i.t      ; 2 uses
  %i.tq = fmul fast <16 x float> %i.sn, %i.t      ; 2 uses
  %i.tr = fmul fast <16 x float> %i.sp, %i.t      ; 2 uses
  %i.ts = fmul fast <16 x float> %i.sr, %i.t      ; 2 uses
  %i.tt = fmul fast <16 x float> %i.st, %i.t      ; 2 uses
  %i.tu = fmul fast <16 x float> %i.sv, %i.t      ; 2 uses
  %i.tv = fmul fast <16 x float> %i.sx, %i.t      ; 2 uses
  %i.tw = fmul fast <16 x float> %i.sz, %i.t      ; 2 uses
  %i.tx = fmul fast <16 x float> %i.tb, %i.t      ; 2 uses
  %i.ty = fmul fast <16 x float> %i.td, %i.t      ; 2 uses
  %i.tz = fmul fast <16 x float> %i.tf, %i.t      ; 2 uses
  %i.ua = fmul fast <16 x float> %i.th, %i.t      ; 2 uses
  %i.ub = fmul fast <16 x float> %i.tj, %i.t      ; 2 uses
  %i.uc = fmul fast <16 x float> %i.tl, %i.t      ; 2 uses
  %i.ud = fmul fast <16 x float> %i.tn, %i.t      ; 2 uses
  %i.ue = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.to)
  %i.uf = fadd fast <16 x float> %i.ue, %i.to
  %i.ug = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.uf, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.uh = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ug, <16 x i8> zeroinitializer, i16 -1)
  %i.ui = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.uh, <16 x i8> splat (i8 -127))
  %i.uj = bitcast <16 x i8> %i.ui to <2 x i64>
  %i.uk = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.tp)
  %i.ul = fadd fast <16 x float> %i.uk, %i.tp
  %i.um = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ul, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.un = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.um, <16 x i8> zeroinitializer, i16 -1)
  %i.uo = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.un, <16 x i8> splat (i8 -127))
  %i.up = bitcast <16 x i8> %i.uo to <2 x i64>
  %i.uq = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.tq)
  %i.ur = fadd fast <16 x float> %i.uq, %i.tq
  %i.us = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ur, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ut = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.us, <16 x i8> zeroinitializer, i16 -1)
  %i.uu = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.ut, <16 x i8> splat (i8 -127))
  %i.uv = bitcast <16 x i8> %i.uu to <2 x i64>
  %i.uw = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.tr)
  %i.ux = fadd fast <16 x float> %i.uw, %i.tr
  %i.uy = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ux, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.uz = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.uy, <16 x i8> zeroinitializer, i16 -1)
  %i.va = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.uz, <16 x i8> splat (i8 -127))
  %i.vb = bitcast <16 x i8> %i.va to <2 x i64>
  %i.vc = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ts)
  %i.vd = fadd fast <16 x float> %i.vc, %i.ts
  %i.ve = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.vd, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.vf = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ve, <16 x i8> zeroinitializer, i16 -1)
  %i.vg = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.vf, <16 x i8> splat (i8 -127))
  %i.vh = bitcast <16 x i8> %i.vg to <2 x i64>
  %i.vi = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.tt)
  %i.vj = fadd fast <16 x float> %i.vi, %i.tt
  %i.vk = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.vj, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.vl = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.vk, <16 x i8> zeroinitializer, i16 -1)
  %i.vm = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.vl, <16 x i8> splat (i8 -127))
  %i.vn = bitcast <16 x i8> %i.vm to <2 x i64>
  %i.vo = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.tu)
  %i.vp = fadd fast <16 x float> %i.vo, %i.tu
  %i.vq = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.vp, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.vr = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.vq, <16 x i8> zeroinitializer, i16 -1)
  %i.vs = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.vr, <16 x i8> splat (i8 -127))
  %i.vt = bitcast <16 x i8> %i.vs to <2 x i64>
  %i.vu = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.tv)
  %i.vv = fadd fast <16 x float> %i.vu, %i.tv
  %i.vw = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.vv, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.vx = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.vw, <16 x i8> zeroinitializer, i16 -1)
  %i.vy = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.vx, <16 x i8> splat (i8 -127))
  %i.vz = bitcast <16 x i8> %i.vy to <2 x i64>
  %i.wa = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.tw)
  %i.wb = fadd fast <16 x float> %i.wa, %i.tw
  %i.wc = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.wb, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.wd = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.wc, <16 x i8> zeroinitializer, i16 -1)
  %i.we = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.tx)
  %i.wf = fadd fast <16 x float> %i.we, %i.tx
  %i.wg = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.wf, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.wh = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.wg, <16 x i8> zeroinitializer, i16 -1)
  %i.wi = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ty)
  %i.wj = fadd fast <16 x float> %i.wi, %i.ty
  %i.wk = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.wj, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.wl = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.wk, <16 x i8> zeroinitializer, i16 -1)
  %i.wm = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.tz)
  %i.wn = fadd fast <16 x float> %i.wm, %i.tz
  %i.wo = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.wn, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.wp = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.wo, <16 x i8> zeroinitializer, i16 -1)
  %i.wq = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ua)
  %i.wr = fadd fast <16 x float> %i.wq, %i.ua
  %i.ws = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.wr, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.wt = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ws, <16 x i8> zeroinitializer, i16 -1)
  %i.wu = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ub)
  %i.wv = fadd fast <16 x float> %i.wu, %i.ub
  %i.ww = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.wv, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.wx = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ww, <16 x i8> zeroinitializer, i16 -1)
  %i.wy = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.uc)
  %i.wz = fadd fast <16 x float> %i.wy, %i.uc
  %i.xa = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.wz, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.xb = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.xa, <16 x i8> zeroinitializer, i16 -1)
  %i.xc = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ud)
  %i.xd = fadd fast <16 x float> %i.xc, %i.ud
  %i.xe = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.xd, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.xf = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.xe, <16 x i8> zeroinitializer, i16 -1)
  %i.xg = shufflevector <16 x i8> %i.wd, <16 x i8> %i.wt, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.xh = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %i.xg, <32 x i8> splat (i8 -127))
  %i.xi = shufflevector <2 x i64> %i.uj, <2 x i64> %i.vh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.xj = bitcast <8 x i64> %i.xi to <16 x i32>
  %i.xk = bitcast <32 x i8> %i.xh to <8 x i32>
  %i.xl = shufflevector <8 x i32> %i.xk, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.xm = shufflevector <16 x i32> %i.xj, <16 x i32> %i.xl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %9 = shufflevector <16 x i8> %i.wh, <16 x i8> %i.wx, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.xn = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %9, <32 x i8> splat (i8 -127))
  %i.xo = shufflevector <2 x i64> %i.up, <2 x i64> %i.vn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.xp = bitcast <8 x i64> %i.xo to <16 x i32>
  %i.xq = bitcast <32 x i8> %i.xn to <8 x i32>
  %i.xr = shufflevector <8 x i32> %i.xq, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.xs = shufflevector <16 x i32> %i.xp, <16 x i32> %i.xr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %10 = shufflevector <16 x i8> %i.wl, <16 x i8> %i.xb, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.xt = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %10, <32 x i8> splat (i8 -127))
  %i.xu = shufflevector <2 x i64> %i.uv, <2 x i64> %i.vt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.xv = bitcast <8 x i64> %i.xu to <16 x i32>
  %i.xw = bitcast <32 x i8> %i.xt to <8 x i32>
  %i.xx = shufflevector <8 x i32> %i.xw, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.xy = shufflevector <16 x i32> %i.xv, <16 x i32> %i.xx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %11 = shufflevector <16 x i8> %i.wp, <16 x i8> %i.xf, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.xz = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %11, <32 x i8> splat (i8 -127))
  %i.ya = shufflevector <2 x i64> %i.vb, <2 x i64> %i.vz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.yb = bitcast <8 x i64> %i.ya to <16 x i32>
  %i.yc = bitcast <32 x i8> %i.xz to <8 x i32>
  %i.yd = shufflevector <8 x i32> %i.yc, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ye = shufflevector <16 x i32> %i.yb, <16 x i32> %i.yd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.yf = bitcast <16 x i32> %i.xm to <32 x i16>  ; 2 uses
  %i.yg = bitcast <16 x i32> %i.xs to <32 x i16>  ; 2 uses
  %i.yh = shufflevector <32 x i16> %i.yf, <32 x i16> %i.yg, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59> ; 2 uses
  %i.yi = shufflevector <32 x i16> %i.yf, <32 x i16> %i.yg, <32 x i32> <i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.yj = bitcast <16 x i32> %i.xy to <32 x i16>  ; 2 uses
  %i.yk = bitcast <16 x i32> %i.ye to <32 x i16>  ; 2 uses
  %i.yl = shufflevector <32 x i16> %i.yj, <32 x i16> %i.yk, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59> ; 2 uses
  %i.ym = shufflevector <32 x i16> %i.yj, <32 x i16> %i.yk, <32 x i32> <i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.yn = shufflevector <32 x i16> %i.yh, <32 x i16> %i.yl, <32 x i32> <i32 0, i32 1, i32 32, i32 33, i32 8, i32 9, i32 40, i32 41, i32 16, i32 17, i32 48, i32 49, i32 24, i32 25, i32 56, i32 57, i32 2, i32 3, i32 34, i32 35, i32 10, i32 11, i32 42, i32 43, i32 18, i32 19, i32 50, i32 51, i32 26, i32 27, i32 58, i32 59>
  %i.yo = shufflevector <32 x i16> %i.yh, <32 x i16> %i.yl, <32 x i32> <i32 4, i32 5, i32 36, i32 37, i32 12, i32 13, i32 44, i32 45, i32 20, i32 21, i32 52, i32 53, i32 28, i32 29, i32 60, i32 61, i32 6, i32 7, i32 38, i32 39, i32 14, i32 15, i32 46, i32 47, i32 22, i32 23, i32 54, i32 55, i32 30, i32 31, i32 62, i32 63>
  %i.yp = shufflevector <32 x i16> %i.yi, <32 x i16> %i.ym, <32 x i32> <i32 0, i32 1, i32 32, i32 33, i32 8, i32 9, i32 40, i32 41, i32 16, i32 17, i32 48, i32 49, i32 24, i32 25, i32 56, i32 57, i32 2, i32 3, i32 34, i32 35, i32 10, i32 11, i32 42, i32 43, i32 18, i32 19, i32 50, i32 51, i32 26, i32 27, i32 58, i32 59>
  %i.yq = shufflevector <32 x i16> %i.yi, <32 x i16> %i.ym, <32 x i32> <i32 4, i32 5, i32 36, i32 37, i32 12, i32 13, i32 44, i32 45, i32 20, i32 21, i32 52, i32 53, i32 28, i32 29, i32 60, i32 61, i32 6, i32 7, i32 38, i32 39, i32 14, i32 15, i32 46, i32 47, i32 22, i32 23, i32 54, i32 55, i32 30, i32 31, i32 62, i32 63>
  store <32 x i16> %i.yn, ptr %.16481103.i, align 64, !tbaa !90
  %i.yr = getelementptr inbounds nuw i8, ptr %.16481103.i, i64 64
  store <32 x i16> %i.yo, ptr %i.yr, align 64, !tbaa !90
  %i.ys = getelementptr inbounds nuw i8, ptr %.16481103.i, i64 128
  store <32 x i16> %i.yp, ptr %i.ys, align 64, !tbaa !90
  %i.yt = getelementptr inbounds nuw i8, ptr %.16481103.i, i64 192
  store <32 x i16> %i.yq, ptr %i.yt, align 64, !tbaa !90
  %i.yu = getelementptr inbounds nuw i8, ptr %.16481103.i, i64 256 ; 3 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %.06561102.i, i64 %.idx742.i
  %i.yw = add nuw nsw i32 %.06731101.i, 16        ; 2 uses
  %i.yx = or disjoint i32 %i.yw, 15
  %i.yy = icmp slt i32 %i.yx, %5
  br i1 %i.yy, label %.lr.ph.i, label %.loopexit1093.i.loopexit20, !llvm.loop !1024

.loopexit1093.i.loopexit20:                       ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 16 ; 3 uses
  %i.yz = or disjoint i64 %indvars.iv.next.i, 15
  %i.za = icmp samesign ult i64 %i.yz, %i.ab
  br i1 %i.za, label %.lr.ph.i.preheader, label %.preheader1091.loopexit.i, !llvm.loop !1016

.preheader1085.loopexit.i:                        ; preds = %.loopexit1087.i.loopexit17, %.loopexit1087.i.loopexit16.us, %.loopexit1087.i.loopexit15.us.us, %.loopexit1087.i.us.us.us.us, %.loopexit1090.i.us.us.us.preheader
  %.us-phi60 = phi ptr [ %.19.i.us.us.us.us, %.loopexit1087.i.us.us.us.us ], [ %.0647.lcssa.i, %.loopexit1090.i.us.us.us.preheader ], [ %i.ry, %.loopexit1087.i.loopexit16.us ], [ %i.nx, %.loopexit1087.i.loopexit15.us.us ], [ %i.akp, %.loopexit1087.i.loopexit17 ]
  %.us-phi61 = phi i64 [ %indvars.iv.next1382.i.us.us.us.us, %.loopexit1087.i.us.us.us.us ], [ %i.jf, %.loopexit1090.i.us.us.us.preheader ], [ %indvars.iv.next1382.i.us, %.loopexit1087.i.loopexit16.us ], [ %indvars.iv.next1382.i.us.us, %.loopexit1087.i.loopexit15.us.us ], [ %indvars.iv.next1382.i, %.loopexit1087.i.loopexit17 ]
  %i.zb = trunc nuw nsw i64 %.us-phi61 to i32
  br label %.preheader1085.i

.preheader1085.i:                                 ; preds = %.preheader1085.loopexit.i, %.preheader1091.i
  %.1651.lcssa.i = phi i32 [ %.0650.lcssa.i, %.preheader1091.i ], [ %i.zb, %.preheader1085.loopexit.i ] ; 3 uses
  %.10.lcssa.i = phi ptr [ %.0647.lcssa.i, %.preheader1091.i ], [ %.us-phi60, %.preheader1085.loopexit.i ] ; 3 uses
  %i.zc = or disjoint i32 %.1651.lcssa.i, 3
  %i.zd = icmp slt i32 %i.zc, %3
  br i1 %i.zd, label %.lr.ph1201.i, label %.preheader1079.i

.lr.ph1201.i:                                     ; preds = %.preheader1085.i
  %i.ze = sext i32 %4 to i64
  %i.zf = mul i64 %i.n, %i.ze                     ; 2 uses
  %i.zg = icmp ne i32 %i.e, 16
  %i.zh = insertelement <16 x float> poison, float %6, i64 0
  %i.zi = shufflevector <16 x float> %i.zh, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.zj = icmp slt i32 %5, 16
  %.idx734.i = shl i64 %i.n, 6
  %i.zk = icmp ne i32 %i.e, 8
  %i.zl = insertelement <8 x float> poison, float %6, i64 0
  %i.zm = shufflevector <8 x float> %i.zl, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.zn = icmp slt i32 %5, 8
  %.idx733.i = shl i64 %i.n, 5
  %i.zo = icmp ne i32 %i.e, 4
  %i.zp = insertelement <4 x float> poison, float %6, i64 0
  %i.zq = shufflevector <4 x float> %i.zp, <4 x float> poison, <4 x i32> zeroinitializer ; 9 uses
  %i.zr = icmp slt i32 %5, 4
  %.idx732.i = shl i64 %i.n, 4
  %i.zs = icmp eq i32 %i.e, 1
  %i.zt = icmp sgt i32 %5, 1
  %.idx731.i = shl i64 %i.n, 3
  %i.zu = and i32 %5, -2
  %i.zv = zext nneg i32 %.1651.lcssa.i to i64     ; 2 uses
  %i.zw = sext i32 %3 to i64
  %i.zx = sext i32 %2 to i64                      ; 2 uses
  %i.zy = sext i32 %i.e to i64                    ; 2 uses
  %brmerge1298.i = or i1 %i.zj, %i.zg
  %brmerge1301.i = or i1 %i.zn, %i.zk
  %brmerge1304.i = or i1 %i.zr, %i.zo
  %invariant.op1499.i = add nsw i64 %i.zw, -3     ; 2 uses
  br i1 %brmerge1298.i, label %.loopexit1084.i.us.preheader, label %.lr.ph1172.i.preheader

.loopexit1084.i.us.preheader:                     ; preds = %.lr.ph1201.i
  %xtraiter267 = and i32 %5, 1
  %lcmp.mod268.not = icmp eq i32 %xtraiter267, 0
  br label %.loopexit1084.i.us

.loopexit1084.i.us:                               ; preds = %.loopexit1084.i.us.preheader, %.loopexit1081.i.us
  %indvars.iv1385.i.us = phi i64 [ %indvars.iv.next1386.i.us, %.loopexit1081.i.us ], [ %i.zv, %.loopexit1084.i.us.preheader ] ; 2 uses
  %.201200.i.us = phi ptr [ %.29.i.us, %.loopexit1081.i.us ], [ %.10.lcssa.i, %.loopexit1084.i.us.preheader ] ; 5 uses
  %i.zz = load ptr, ptr %0, align 8, !tbaa !25
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %i.zz, i64 %i.zf
  %i.aab = add nsw i64 %indvars.iv1385.i.us, %i.zx
  %i.aac = mul nsw i64 %i.aab, %i.zy
  %i.aad = getelementptr inbounds [4 x i8], ptr %i.aaa, i64 %i.aac ; 4 uses
  br i1 %brmerge1301.i, label %.loopexit1083.i.us, label %.lr.ph1178.i.us

.lr.ph1178.i.us:                                  ; preds = %.loopexit1084.i.us, %.lr.ph1178.i.us
  %.231177.i.us = phi ptr [ %i.acc, %.lr.ph1178.i.us ], [ %.201200.i.us, %.loopexit1084.i.us ] ; 3 uses
  %.26981176.i.us = phi ptr [ %i.acd, %.lr.ph1178.i.us ], [ %i.aad, %.loopexit1084.i.us ] ; 5 uses
  %.07151175.i.us = phi i32 [ %i.ace, %.lr.ph1178.i.us ], [ 0, %.loopexit1084.i.us ]
  %i.aae = load <8 x float>, ptr %.26981176.i.us, align 32, !tbaa !90
  %i.aaf = getelementptr inbounds nuw i8, ptr %.26981176.i.us, i64 32
  %i.aag = load <8 x float>, ptr %i.aaf, align 32, !tbaa !90
  %i.aah = getelementptr inbounds nuw i8, ptr %.26981176.i.us, i64 64
  %i.aai = load <8 x float>, ptr %i.aah, align 32, !tbaa !90
  %i.aaj = getelementptr inbounds nuw i8, ptr %.26981176.i.us, i64 96
  %i.aak = load <8 x float>, ptr %i.aaj, align 32, !tbaa !90
  %i.aal = fmul fast <8 x float> %i.aae, %i.zm    ; 2 uses
  %i.aam = fmul fast <8 x float> %i.aag, %i.zm    ; 2 uses
  %i.aan = fmul fast <8 x float> %i.aai, %i.zm    ; 2 uses
  %i.aao = fmul fast <8 x float> %i.aak, %i.zm    ; 2 uses
  %i.aap = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.aal)
  %i.aaq = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.aan)
  %i.aar = fadd fast <8 x float> %i.aap, %i.aal
  %i.aas = fadd fast <8 x float> %i.aaq, %i.aan
  %i.aat = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aar)
  %i.aau = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aas)
  %i.aav = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.aat, <8 x i32> %i.aau)
  %i.aaw = bitcast <16 x i16> %i.aav to <4 x i64>
  %i.aax = shufflevector <4 x i64> %i.aaw, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.aay = bitcast <4 x i64> %i.aax to <16 x i16>
  %i.aaz = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.aay, <16 x i16> splat (i16 -127))
  %i.aba = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.aaz, <16 x i16> splat (i16 127))
  %i.abb = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.aba, <16 x i16> poison)
  %i.abc = bitcast <32 x i8> %i.abb to <8 x i32>
  %i.abd = shufflevector <8 x i32> %i.abc, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.abe = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.aam)
  %i.abf = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.aao)
  %i.abg = fadd fast <8 x float> %i.abe, %i.aam
  %i.abh = fadd fast <8 x float> %i.abf, %i.aao
  %i.abi = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.abg)
  %i.abj = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.abh)
  %i.abk = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.abi, <8 x i32> %i.abj)
  %i.abl = bitcast <16 x i16> %i.abk to <4 x i64>
  %i.abm = shufflevector <4 x i64> %i.abl, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.abn = bitcast <4 x i64> %i.abm to <16 x i16>
  %i.abo = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.abn, <16 x i16> splat (i16 -127))
  %i.abp = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.abo, <16 x i16> splat (i16 127))
  %i.abq = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.abp, <16 x i16> poison)
  %i.abr = bitcast <32 x i8> %i.abq to <8 x i32>
  %i.abs = shufflevector <8 x i32> %i.abr, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.abt = bitcast <4 x i32> %i.abd to <8 x i16>  ; 2 uses
  %i.abu = bitcast <4 x i32> %i.abs to <8 x i16>  ; 2 uses
  %i.abv = shufflevector <8 x i16> %i.abt, <8 x i16> %i.abu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.abw = shufflevector <8 x i16> %i.abt, <8 x i16> %i.abu, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.abx = bitcast <8 x i16> %i.abv to <4 x i32>  ; 2 uses
  %i.aby = bitcast <8 x i16> %i.abw to <4 x i32>  ; 2 uses
  %i.abz = shufflevector <4 x i32> %i.abx, <4 x i32> %i.aby, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.aca = shufflevector <4 x i32> %i.abx, <4 x i32> %i.aby, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x i32> %i.abz, ptr %.231177.i.us, align 16, !tbaa !90
  %i.acb = getelementptr inbounds nuw i8, ptr %.231177.i.us, i64 16
  store <4 x i32> %i.aca, ptr %i.acb, align 16, !tbaa !90
  %i.acc = getelementptr inbounds nuw i8, ptr %.231177.i.us, i64 32 ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %.26981176.i.us, i64 %.idx733.i
  %i.ace = add nuw nsw i32 %.07151175.i.us, 8     ; 2 uses
  %i.acf = or disjoint i32 %i.ace, 7
  %i.acg = icmp slt i32 %i.acf, %5
  br i1 %i.acg, label %.lr.ph1178.i.us, label %.loopexit1081.i.us, !llvm.loop !1025

.loopexit1083.i.us:                               ; preds = %.loopexit1084.i.us
  br i1 %brmerge1304.i, label %.loopexit1082.i.us, label %.lr.ph1184.i.us

.lr.ph1184.i.us:                                  ; preds = %.loopexit1083.i.us, %.lr.ph1184.i.us
  %.251183.i.us = phi ptr [ %i.adp, %.lr.ph1184.i.us ], [ %.201200.i.us, %.loopexit1083.i.us ] ; 2 uses
  %.47001182.i.us = phi ptr [ %i.adq, %.lr.ph1184.i.us ], [ %i.aad, %.loopexit1083.i.us ] ; 5 uses
  %.07161181.i.us = phi i32 [ %i.adr, %.lr.ph1184.i.us ], [ 0, %.loopexit1083.i.us ]
  %i.ach = load <4 x float>, ptr %.47001182.i.us, align 16, !tbaa !90
  %i.aci = getelementptr inbounds nuw i8, ptr %.47001182.i.us, i64 16
  %i.acj = load <4 x float>, ptr %i.aci, align 16, !tbaa !90
  %i.ack = getelementptr inbounds nuw i8, ptr %.47001182.i.us, i64 32
  %i.acl = load <4 x float>, ptr %i.ack, align 16, !tbaa !90
  %i.acm = getelementptr inbounds nuw i8, ptr %.47001182.i.us, i64 48
  %i.acn = load <4 x float>, ptr %i.acm, align 16, !tbaa !90
  %i.aco = fmul fast <4 x float> %i.ach, %i.zq    ; 2 uses
  %i.acp = fmul fast <4 x float> %i.acj, %i.zq    ; 2 uses
  %i.acq = fmul fast <4 x float> %i.acl, %i.zq    ; 2 uses
  %i.acr = fmul fast <4 x float> %i.acn, %i.zq    ; 2 uses
  %i.acs = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.aco)
  %i.act = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.acp)
  %i.acu = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.acq)
  %i.acv = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.acr)
  %i.acw = fadd fast <4 x float> %i.acs, %i.aco
  %i.acx = fadd fast <4 x float> %i.act, %i.acp
  %i.acy = fadd fast <4 x float> %i.acu, %i.acq
  %i.acz = fadd fast <4 x float> %i.acv, %i.acr
  %i.ada = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.acw)
  %i.adb = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.acx)
  %i.adc = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.acy)
  %i.add = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.acz)
  %i.ade = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ada, <4 x i32> %i.adb)
  %i.adf = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.adc, <4 x i32> %i.add)
  %i.adg = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ade, <8 x i16> splat (i16 -127))
  %i.adh = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.adg, <8 x i16> splat (i16 127))
  %i.adi = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.adf, <8 x i16> splat (i16 -127))
  %i.adj = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.adi, <8 x i16> splat (i16 127))
  %i.adk = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.adh, <8 x i16> %i.adj)
  %i.adl = bitcast <16 x i8> %i.adk to <8 x i16>
  %i.adm = shufflevector <8 x i16> %i.adl, <8 x i16> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7>
  %i.adn = bitcast <8 x i16> %i.adm to <4 x i32>
end_hunk_1
begin_hunk_2_@_ZN4ncnnL30transpose_pack_A_tile_quantizeERKNS_3MatERS0_iiiiS2_:bb.a
bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4ncnn42transpose_pack_A_tile_fp32_to_int8_avxvnniERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6)
  br label %_ZN4ncnnL34transpose_pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !65   ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !77
  %i.h = icmp eq i32 %i.g, 3
  br i1 %i.h, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i64, ptr %i.i, align 8, !tbaa !26
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !78
  %i.m = sext i32 %i.l to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.n = phi i64 [ %i.j, %bb.h ], [ %i.m, %bb.i ] ; 44 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !25     ; 3 uses
  %i.p = icmp sgt i32 %3, 15
  br i1 %i.p, label %.lr.ph1315.i, label %.preheader1277.i

.lr.ph1315.i:                                     ; preds = %bb.j
  %i.q = sext i32 %4 to i64
  %i.r = mul i64 %i.n, %i.q                       ; 2 uses
  %i.s = sext i32 %2 to i64                       ; 3 uses
  %i.t = icmp ne i32 %i.e, 16
  %i.u = icmp slt i32 %5, 16
  %.idx877.i = shl i64 %i.n, 6
  %i.v = icmp sgt i32 %5, 7
  %.idx876.i = shl i64 %i.n, 5
  %i.w = icmp sgt i32 %5, 3
  %.idx875.i = shl i64 %i.n, 4
  %i.x = icmp sgt i32 %5, 1
  %.idx874.i = shl i64 %i.n, 3
  %i.y = and i32 %5, -2
  %i.z = zext nneg i32 %3 to i64                  ; 2 uses
  %i.aa = sext i32 %i.e to i64                    ; 2 uses
  %brmerge.i = or i1 %i.u, %i.t
  br i1 %brmerge.i, label %.loopexit1284.i.us.preheader, label %.lr.ph.i.preheader

.loopexit1284.i.us.preheader:                     ; preds = %.lr.ph1315.i
  %xtraiter = and i32 %5, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br label %.loopexit1284.i.us

.loopexit1284.i.us:                               ; preds = %.loopexit1284.i.us.preheader, %.loopexit1279.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %.loopexit1279.i.us ], [ 0, %.loopexit1284.i.us.preheader ] ; 3 uses
  %.07821314.i.us = phi ptr [ %.9.i.us, %.loopexit1279.i.us ], [ %i.o, %.loopexit1284.i.us.preheader ] ; 7 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !25
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.r
  %i.ad = add nsw i64 %indvars.iv.i.us, %i.s
  %i.ae = mul nsw i64 %i.ad, %i.aa
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae ; 4 uses
  %i.ag = load ptr, ptr %6, align 8, !tbaa !25
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.s
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i.us
  %i.aj = load <16 x float>, ptr %i.ai, align 64, !tbaa !90 ; 17 uses
  switch i32 %i.e, label %.loopexit1279.i.us [
    i32 8, label %bb.l
    i32 4, label %bb.k
    i32 1, label %.preheader1280.i.us
  ]

.preheader1280.i.us:                              ; preds = %.loopexit1284.i.us
  br i1 %i.x, label %.lr.ph1304.i.us, label %.preheader1278.i.us

.lr.ph1304.i.us:                                  ; preds = %.preheader1280.i.us, %.lr.ph1304.i.us
  %.71303.i.us = phi ptr [ %i.bc, %.lr.ph1304.i.us ], [ %.07821314.i.us, %.preheader1280.i.us ] ; 3 uses
  %.67971302.i.us = phi ptr [ %i.bd, %.lr.ph1304.i.us ], [ %i.af, %.preheader1280.i.us ] ; 3 uses
  %.08111301.i.us = phi i32 [ %i.be, %.lr.ph1304.i.us ], [ 0, %.preheader1280.i.us ]
  %i.ak = load <16 x float>, ptr %.67971302.i.us, align 1, !tbaa !90
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.67971302.i.us, i64 %i.n
  %i.am = load <16 x float>, ptr %i.al, align 1, !tbaa !90
  %i.an = fmul fast <16 x float> %i.ak, %i.aj     ; 2 uses
  %i.ao = fmul fast <16 x float> %i.am, %i.aj     ; 2 uses
  %i.ap = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.an)
  %i.aq = fadd fast <16 x float> %i.ap, %i.an
  %i.ar = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.aq, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.as = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ar, <16 x i8> zeroinitializer, i16 -1)
  %i.at = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.as, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.au = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ao)
  %i.av = fadd fast <16 x float> %i.au, %i.ao
  %i.aw = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.av, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ax = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.aw, <16 x i8> zeroinitializer, i16 -1)
  %i.ay = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.ax, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.az = shufflevector <16 x i8> %i.at, <16 x i8> %i.ay, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ba = shufflevector <16 x i8> %i.at, <16 x i8> %i.ay, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.az, ptr %.71303.i.us, align 16, !tbaa !90
  %i.bb = getelementptr inbounds nuw i8, ptr %.71303.i.us, i64 16
  store <16 x i8> %i.ba, ptr %i.bb, align 16, !tbaa !90
  %i.bc = getelementptr inbounds nuw i8, ptr %.71303.i.us, i64 32 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.67971302.i.us, i64 %.idx874.i ; 2 uses
  %i.be = add nuw nsw i32 %.08111301.i.us, 2      ; 2 uses
  %i.bf = or disjoint i32 %i.be, 1
  %i.bg = icmp slt i32 %i.bf, %5
  br i1 %i.bg, label %.lr.ph1304.i.us, label %.preheader1278.i.us, !llvm.loop !1100

.preheader1278.i.us:                              ; preds = %.lr.ph1304.i.us, %.preheader1280.i.us
  %.0811.lcssa.i.us = phi i32 [ 0, %.preheader1280.i.us ], [ %i.y, %.lr.ph1304.i.us ] ; 4 uses
  %.6797.lcssa.i.us = phi ptr [ %i.af, %.preheader1280.i.us ], [ %i.bd, %.lr.ph1304.i.us ] ; 3 uses
  %.7.lcssa.i.us = phi ptr [ %.07821314.i.us, %.preheader1280.i.us ], [ %i.bc, %.lr.ph1304.i.us ] ; 4 uses
  %i.bh = icmp slt i32 %.0811.lcssa.i.us, %5
  br i1 %i.bh, label %.lr.ph1311.i.us.preheader, label %.loopexit1279.i.us

.lr.ph1311.i.us.preheader:                        ; preds = %.preheader1278.i.us
  %.neg = or disjoint i32 %.0811.lcssa.i.us, 1
  br i1 %lcmp.mod.not, label %.lr.ph1311.i.us.prol.loopexit, label %.lr.ph1311.i.us.prol

.lr.ph1311.i.us.prol:                             ; preds = %.lr.ph1311.i.us.preheader
  %i.bi = load <16 x float>, ptr %.6797.lcssa.i.us, align 1, !tbaa !90
  %i.bj = fmul fast <16 x float> %i.bi, %i.aj     ; 2 uses
  %i.bk = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.bj)
  %i.bl = fadd fast <16 x float> %i.bk, %i.bj
  %i.bm = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.bl, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bn = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.bm, <16 x i8> zeroinitializer, i16 -1)
  %i.bo = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.bn, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.bo, ptr %.7.lcssa.i.us, align 16, !tbaa !90
  %i.bp = getelementptr inbounds nuw i8, ptr %.7.lcssa.i.us, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.6797.lcssa.i.us, i64 %i.n
  %i.br = or disjoint i32 %.0811.lcssa.i.us, 1
  br label %.lr.ph1311.i.us.prol.loopexit

.lr.ph1311.i.us.prol.loopexit:                    ; preds = %.lr.ph1311.i.us.prol, %.lr.ph1311.i.us.preheader
  %.lcssa253.unr = phi ptr [ poison, %.lr.ph1311.i.us.preheader ], [ %i.bp, %.lr.ph1311.i.us.prol ]
  %.81310.i.us.unr = phi ptr [ %.7.lcssa.i.us, %.lr.ph1311.i.us.preheader ], [ %i.bp, %.lr.ph1311.i.us.prol ]
  %.77981309.i.us.unr = phi ptr [ %.6797.lcssa.i.us, %.lr.ph1311.i.us.preheader ], [ %i.bq, %.lr.ph1311.i.us.prol ]
  %.18121308.i.us.unr = phi i32 [ %.0811.lcssa.i.us, %.lr.ph1311.i.us.preheader ], [ %i.br, %.lr.ph1311.i.us.prol ]
  %i.bs = icmp eq i32 %5, %.neg
  br i1 %i.bs, label %.loopexit1279.i.us, label %.lr.ph1311.i.us

.lr.ph1311.i.us:                                  ; preds = %.lr.ph1311.i.us.prol.loopexit, %.lr.ph1311.i.us
  %.81310.i.us = phi ptr [ %i.cj, %.lr.ph1311.i.us ], [ %.81310.i.us.unr, %.lr.ph1311.i.us.prol.loopexit ] ; 3 uses
  %.77981309.i.us = phi ptr [ %i.ck, %.lr.ph1311.i.us ], [ %.77981309.i.us.unr, %.lr.ph1311.i.us.prol.loopexit ] ; 2 uses
  %.18121308.i.us = phi i32 [ %i.cl, %.lr.ph1311.i.us ], [ %.18121308.i.us.unr, %.lr.ph1311.i.us.prol.loopexit ]
  %i.bt = load <16 x float>, ptr %.77981309.i.us, align 1, !tbaa !90
  %i.bu = fmul fast <16 x float> %i.bt, %i.aj     ; 2 uses
  %i.bv = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.bu)
  %i.bw = fadd fast <16 x float> %i.bv, %i.bu
  %i.bx = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.bw, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.by = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.bx, <16 x i8> zeroinitializer, i16 -1)
  %i.bz = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.by, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.bz, ptr %.81310.i.us, align 16, !tbaa !90
  %i.ca = getelementptr inbounds nuw i8, ptr %.81310.i.us, i64 16
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.77981309.i.us, i64 %i.n ; 2 uses
  %i.cc = load <16 x float>, ptr %i.cb, align 1, !tbaa !90
  %i.cd = fmul fast <16 x float> %i.cc, %i.aj     ; 2 uses
  %i.ce = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.cd)
  %i.cf = fadd fast <16 x float> %i.ce, %i.cd
  %i.cg = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.cf, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ch = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.cg, <16 x i8> zeroinitializer, i16 -1)
  %i.ci = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.ch, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.ci, ptr %i.ca, align 16, !tbaa !90
  %i.cj = getelementptr inbounds nuw i8, ptr %.81310.i.us, i64 32 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.n
  %i.cl = add nuw nsw i32 %.18121308.i.us, 2      ; 2 uses
  %exitcond.not.i.us.1 = icmp eq i32 %i.cl, %5
  br i1 %exitcond.not.i.us.1, label %.loopexit1279.i.us, label %.lr.ph1311.i.us, !llvm.loop !1101

bb.k:                                             ; preds = %.loopexit1284.i.us
  %i.cm = shufflevector <16 x float> %i.aj, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3>
  %i.cn = shufflevector <16 x float> %i.aj, <16 x float> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7>
  %i.co = shufflevector <16 x float> %i.aj, <16 x float> poison, <16 x i32> <i32 8, i32 8, i32 8, i32 8, i32 9, i32 9, i32 9, i32 9, i32 10, i32 10, i32 10, i32 10, i32 11, i32 11, i32 11, i32 11>
  %i.cp = shufflevector <16 x float> %i.aj, <16 x float> poison, <16 x i32> <i32 12, i32 12, i32 12, i32 12, i32 13, i32 13, i32 13, i32 13, i32 14, i32 14, i32 14, i32 14, i32 15, i32 15, i32 15, i32 15>
  br i1 %i.w, label %.lr.ph1298.i.us, label %.loopexit1279.i.us

.lr.ph1298.i.us:                                  ; preds = %bb.k, %.lr.ph1298.i.us
  %.51297.i.us = phi ptr [ %i.dz, %.lr.ph1298.i.us ], [ %.07821314.i.us, %bb.k ] ; 3 uses
  %.47951296.i.us = phi ptr [ %i.ea, %.lr.ph1298.i.us ], [ %i.af, %bb.k ] ; 5 uses
  %.08101295.i.us = phi i32 [ %i.eb, %.lr.ph1298.i.us ], [ 0, %bb.k ]
  %i.cq = load <16 x float>, ptr %.47951296.i.us, align 1, !tbaa !90
  %i.cr = getelementptr inbounds nuw i8, ptr %.47951296.i.us, i64 64
  %i.cs = load <16 x float>, ptr %i.cr, align 1, !tbaa !90
  %i.ct = getelementptr inbounds nuw i8, ptr %.47951296.i.us, i64 128
  %i.cu = load <16 x float>, ptr %i.ct, align 1, !tbaa !90
  %i.cv = getelementptr inbounds nuw i8, ptr %.47951296.i.us, i64 192
  %i.cw = load <16 x float>, ptr %i.cv, align 1, !tbaa !90
  %i.cx = fmul fast <16 x float> %i.cq, %i.cm     ; 2 uses
  %i.cy = fmul fast <16 x float> %i.cs, %i.cn     ; 2 uses
  %i.cz = fmul fast <16 x float> %i.cu, %i.co     ; 2 uses
  %i.da = fmul fast <16 x float> %i.cw, %i.cp     ; 2 uses
  %i.db = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.cx)
  %i.dc = fadd fast <16 x float> %i.db, %i.cx
  %i.dd = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.dc, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.de = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.dd, <16 x i8> zeroinitializer, i16 -1)
  %i.df = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.cy)
  %i.dg = fadd fast <16 x float> %i.df, %i.cy
  %i.dh = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.dg, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.di = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.dh, <16 x i8> zeroinitializer, i16 -1)
  %i.dj = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.cz)
  %i.dk = fadd fast <16 x float> %i.dj, %i.cz
  %i.dl = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.dk, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.dm = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.dl, <16 x i8> zeroinitializer, i16 -1)
  %i.dn = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.da)
  %i.do = fadd fast <16 x float> %i.dn, %i.da
  %i.dp = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.do, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.dq = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.dp, <16 x i8> zeroinitializer, i16 -1)
  %i.dr = shufflevector <16 x i8> %i.de, <16 x i8> %i.dm, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ds = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %i.dr, <32 x i8> splat (i8 -127))
  %7 = shufflevector <16 x i8> %i.di, <16 x i8> %i.dq, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dt = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %7, <32 x i8> splat (i8 -127))
  %i.du = bitcast <32 x i8> %i.ds to <16 x i16>   ; 2 uses
  %i.dv = bitcast <32 x i8> %i.dt to <16 x i16>   ; 2 uses
  %i.dw = shufflevector <16 x i16> %i.du, <16 x i16> %i.dv, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 16, i32 18, i32 20, i32 22, i32 8, i32 10, i32 12, i32 14, i32 24, i32 26, i32 28, i32 30>
  %i.dx = shufflevector <16 x i16> %i.du, <16 x i16> %i.dv, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 17, i32 19, i32 21, i32 23, i32 9, i32 11, i32 13, i32 15, i32 25, i32 27, i32 29, i32 31>
  store <16 x i16> %i.dw, ptr %.51297.i.us, align 32, !tbaa !90
  %i.dy = getelementptr inbounds nuw i8, ptr %.51297.i.us, i64 32
  store <16 x i16> %i.dx, ptr %i.dy, align 32, !tbaa !90
  %i.dz = getelementptr inbounds nuw i8, ptr %.51297.i.us, i64 64 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.47951296.i.us, i64 %.idx875.i
  %i.eb = add nuw nsw i32 %.08101295.i.us, 4      ; 2 uses
  %i.ec = or disjoint i32 %i.eb, 3
  %i.ed = icmp slt i32 %i.ec, %5
  br i1 %i.ed, label %.lr.ph1298.i.us, label %.loopexit1279.i.us, !llvm.loop !1102

bb.l:                                             ; preds = %.loopexit1284.i.us
  %i.ee = shufflevector <16 x float> %i.aj, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ef = shufflevector <16 x float> %i.aj, <16 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.eg = shufflevector <16 x float> %i.aj, <16 x float> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.eh = shufflevector <16 x float> %i.aj, <16 x float> poison, <16 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %i.ei = shufflevector <16 x float> %i.aj, <16 x float> poison, <16 x i32> <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9>
  %i.ej = shufflevector <16 x float> %i.aj, <16 x float> poison, <16 x i32> <i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11>
  %i.ek = shufflevector <16 x float> %i.aj, <16 x float> poison, <16 x i32> <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13>
  %i.el = shufflevector <16 x float> %i.aj, <16 x float> poison, <16 x i32> <i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15>
  br i1 %i.v, label %.lr.ph1292.i.us, label %.loopexit1279.i.us

.lr.ph1292.i.us:                                  ; preds = %bb.l, %.lr.ph1292.i.us
  %.31291.i.us = phi ptr [ %i.ht, %.lr.ph1292.i.us ], [ %.07821314.i.us, %bb.l ] ; 3 uses
  %.27931290.i.us = phi ptr [ %i.hu, %.lr.ph1292.i.us ], [ %i.af, %bb.l ] ; 9 uses
  %.08091289.i.us = phi i32 [ %i.hv, %.lr.ph1292.i.us ], [ 0, %bb.l ]
  %i.em = load <16 x float>, ptr %.27931290.i.us, align 1, !tbaa !90
  %i.en = getelementptr inbounds nuw i8, ptr %.27931290.i.us, i64 64
  %i.eo = load <16 x float>, ptr %i.en, align 1, !tbaa !90
  %i.ep = getelementptr inbounds nuw i8, ptr %.27931290.i.us, i64 128
  %i.eq = load <16 x float>, ptr %i.ep, align 1, !tbaa !90
  %i.er = getelementptr inbounds nuw i8, ptr %.27931290.i.us, i64 192
  %i.es = load <16 x float>, ptr %i.er, align 1, !tbaa !90
  %i.et = getelementptr inbounds nuw i8, ptr %.27931290.i.us, i64 256
  %i.eu = load <16 x float>, ptr %i.et, align 1, !tbaa !90
  %i.ev = getelementptr inbounds nuw i8, ptr %.27931290.i.us, i64 320
  %i.ew = load <16 x float>, ptr %i.ev, align 1, !tbaa !90
  %i.ex = getelementptr inbounds nuw i8, ptr %.27931290.i.us, i64 384
  %i.ey = load <16 x float>, ptr %i.ex, align 1, !tbaa !90
  %i.ez = getelementptr inbounds nuw i8, ptr %.27931290.i.us, i64 448
  %i.fa = load <16 x float>, ptr %i.ez, align 1, !tbaa !90
  %i.fb = fmul fast <16 x float> %i.em, %i.ee     ; 2 uses
  %i.fc = fmul fast <16 x float> %i.eo, %i.ef     ; 2 uses
  %i.fd = fmul fast <16 x float> %i.eq, %i.eg     ; 2 uses
  %i.fe = fmul fast <16 x float> %i.es, %i.eh     ; 2 uses
  %i.ff = fmul fast <16 x float> %i.eu, %i.ei     ; 2 uses
  %i.fg = fmul fast <16 x float> %i.ew, %i.ej     ; 2 uses
  %i.fh = fmul fast <16 x float> %i.ey, %i.ek     ; 2 uses
  %i.fi = fmul fast <16 x float> %i.fa, %i.el     ; 2 uses
  %i.fj = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.fb)
  %i.fk = fadd fast <16 x float> %i.fj, %i.fb
  %i.fl = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.fk, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.fm = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.fl, <16 x i8> zeroinitializer, i16 -1)
  %i.fn = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.fm, <16 x i8> splat (i8 -127))
  %i.fo = bitcast <16 x i8> %i.fn to <2 x i64>
  %i.fp = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.fc)
  %i.fq = fadd fast <16 x float> %i.fp, %i.fc
  %i.fr = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.fq, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.fs = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.fr, <16 x i8> zeroinitializer, i16 -1)
  %i.ft = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.fs, <16 x i8> splat (i8 -127))
  %i.fu = bitcast <16 x i8> %i.ft to <2 x i64>
  %i.fv = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.fd)
  %i.fw = fadd fast <16 x float> %i.fv, %i.fd
  %i.fx = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.fw, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.fy = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.fx, <16 x i8> zeroinitializer, i16 -1)
  %i.fz = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.fy, <16 x i8> splat (i8 -127))
  %i.ga = bitcast <16 x i8> %i.fz to <2 x i64>
  %i.gb = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.fe)
  %i.gc = fadd fast <16 x float> %i.gb, %i.fe
  %i.gd = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.gc, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ge = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.gd, <16 x i8> zeroinitializer, i16 -1)
  %i.gf = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.ge, <16 x i8> splat (i8 -127))
  %i.gg = bitcast <16 x i8> %i.gf to <2 x i64>
  %i.gh = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ff)
  %i.gi = fadd fast <16 x float> %i.gh, %i.ff
  %i.gj = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.gi, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.gk = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.gj, <16 x i8> zeroinitializer, i16 -1)
  %i.gl = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.fg)
  %i.gm = fadd fast <16 x float> %i.gl, %i.fg
  %i.gn = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.gm, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.go = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.gn, <16 x i8> zeroinitializer, i16 -1)
  %i.gp = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.fh)
  %i.gq = fadd fast <16 x float> %i.gp, %i.fh
  %i.gr = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.gq, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.gs = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.gr, <16 x i8> zeroinitializer, i16 -1)
  %i.gt = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.fi)
  %i.gu = fadd fast <16 x float> %i.gt, %i.fi
  %i.gv = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.gu, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.gw = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.gv, <16 x i8> zeroinitializer, i16 -1)
  %i.gx = shufflevector <16 x i8> %i.gk, <16 x i8> %i.gs, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gy = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %i.gx, <32 x i8> splat (i8 -127))
  %i.gz = shufflevector <2 x i64> %i.fo, <2 x i64> %i.ga, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ha = bitcast <8 x i64> %i.gz to <16 x i32>
  %i.hb = bitcast <32 x i8> %i.gy to <8 x i32>
  %i.hc = shufflevector <8 x i32> %i.hb, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hd = shufflevector <16 x i32> %i.ha, <16 x i32> %i.hc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %8 = shufflevector <16 x i8> %i.go, <16 x i8> %i.gw, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.he = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %8, <32 x i8> splat (i8 -127))
  %i.hf = shufflevector <2 x i64> %i.fu, <2 x i64> %i.gg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hg = bitcast <8 x i64> %i.hf to <16 x i32>
  %i.hh = bitcast <32 x i8> %i.he to <8 x i32>
  %i.hi = shufflevector <8 x i32> %i.hh, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hj = shufflevector <16 x i32> %i.hg, <16 x i32> %i.hi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.hk = bitcast <16 x i32> %i.hd to <32 x i16>  ; 2 uses
  %i.hl = bitcast <16 x i32> %i.hj to <32 x i16>  ; 2 uses
  %i.hm = shufflevector <32 x i16> %i.hk, <32 x i16> %i.hl, <32 x i32> <i32 0, i32 4, i32 32, i32 36, i32 1, i32 5, i32 33, i32 37, i32 8, i32 12, i32 40, i32 44, i32 9, i32 13, i32 41, i32 45, i32 16, i32 20, i32 48, i32 52, i32 17, i32 21, i32 49, i32 53, i32 24, i32 28, i32 56, i32 60, i32 25, i32 29, i32 57, i32 61>
  %i.hn = shufflevector <32 x i16> %i.hk, <32 x i16> %i.hl, <32 x i32> <i32 2, i32 6, i32 34, i32 38, i32 3, i32 7, i32 35, i32 39, i32 10, i32 14, i32 42, i32 46, i32 11, i32 15, i32 43, i32 47, i32 18, i32 22, i32 50, i32 54, i32 19, i32 23, i32 51, i32 55, i32 26, i32 30, i32 58, i32 62, i32 27, i32 31, i32 59, i32 63>
  %i.ho = bitcast <32 x i16> %i.hm to <16 x i32>
  %i.hp = shufflevector <16 x i32> %i.ho, <16 x i32> poison, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 2, i32 3, i32 6, i32 7, i32 10, i32 11, i32 14, i32 15>
  %i.hq = bitcast <32 x i16> %i.hn to <16 x i32>
  %i.hr = shufflevector <16 x i32> %i.hq, <16 x i32> poison, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 2, i32 3, i32 6, i32 7, i32 10, i32 11, i32 14, i32 15>
  store <16 x i32> %i.hp, ptr %.31291.i.us, align 64, !tbaa !90
  %i.hs = getelementptr inbounds nuw i8, ptr %.31291.i.us, i64 64
  store <16 x i32> %i.hr, ptr %i.hs, align 64, !tbaa !90
  %i.ht = getelementptr inbounds nuw i8, ptr %.31291.i.us, i64 128 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.27931290.i.us, i64 %.idx876.i
  %i.hv = add nuw nsw i32 %.08091289.i.us, 8      ; 2 uses
  %i.hw = or disjoint i32 %i.hv, 7
  %i.hx = icmp slt i32 %i.hw, %5
  br i1 %i.hx, label %.lr.ph1292.i.us, label %.loopexit1279.i.us, !llvm.loop !1103

.loopexit1279.i.us:                               ; preds = %.lr.ph1311.i.us.prol.loopexit, %.lr.ph1311.i.us, %.lr.ph1298.i.us, %.lr.ph1292.i.us, %bb.l, %bb.k, %.preheader1278.i.us, %.loopexit1284.i.us
  %.9.i.us = phi ptr [ %.07821314.i.us, %.loopexit1284.i.us ], [ %.7.lcssa.i.us, %.preheader1278.i.us ], [ %i.dz, %.lr.ph1298.i.us ], [ %i.ht, %.lr.ph1292.i.us ], [ %.07821314.i.us, %bb.k ], [ %.07821314.i.us, %bb.l ], [ %.lcssa253.unr, %.lr.ph1311.i.us.prol.loopexit ], [ %i.cj, %.lr.ph1311.i.us ] ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 16 ; 3 uses
  %i.hy = or disjoint i64 %indvars.iv.next.i.us, 15
  %i.hz = icmp samesign ult i64 %i.hy, %i.z
  br i1 %i.hz, label %.loopexit1284.i.us, label %.preheader1277.loopexit.i, !llvm.loop !1104

.preheader1277.loopexit.i:                        ; preds = %.loopexit1279.i.loopexit20, %.loopexit1279.i.us
  %.us-phi = phi ptr [ %.9.i.us, %.loopexit1279.i.us ], [ %i.aca, %.loopexit1279.i.loopexit20 ]
  %.us-phi53 = phi i64 [ %indvars.iv.next.i.us, %.loopexit1279.i.us ], [ %indvars.iv.next.i, %.loopexit1279.i.loopexit20 ]
  %i.ia = trunc nuw nsw i64 %.us-phi53 to i32
  br label %.preheader1277.i

.preheader1277.i:                                 ; preds = %.preheader1277.loopexit.i, %bb.j
  %.0785.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.ia, %.preheader1277.loopexit.i ] ; 3 uses
  %.0782.lcssa.i = phi ptr [ %i.o, %bb.j ], [ %.us-phi, %.preheader1277.loopexit.i ] ; 4 uses
  %i.ib = or disjoint i32 %.0785.lcssa.i, 7
  %i.ic = icmp slt i32 %i.ib, %3
  br i1 %i.ic, label %.lr.ph1350.i, label %.preheader1268.i

.lr.ph1350.i:                                     ; preds = %.preheader1277.i
  %i.id = sext i32 %4 to i64
  %i.ie = mul i64 %i.n, %i.id                     ; 3 uses
  %i.if = sext i32 %2 to i64                      ; 4 uses
  %i.ig = icmp ne i32 %i.e, 16
  %i.ih = icmp slt i32 %5, 16
  %.idx873.i = shl i64 %i.n, 6
  %.idx872.i = shl i64 %i.n, 5
  %i.ii = icmp sgt i32 %5, 3
  %.idx871.i = shl i64 %i.n, 4
  %i.ij = icmp sgt i32 %5, 1
  %.idx870.i = shl i64 %i.n, 3
  %i.ik = and i32 %5, -2
  %i.il = zext nneg i32 %.0785.lcssa.i to i64     ; 3 uses
  %i.im = sext i32 %3 to i64
  %i.in = sext i32 %i.e to i64                    ; 3 uses
  %brmerge1467.i = or i1 %i.ih, %i.ig
  %invariant.op.i = add nsw i64 %i.im, -7         ; 3 uses
  br i1 %brmerge1467.i, label %.lr.ph1350.i.split.us, label %.lr.ph1321.i.preheader

.lr.ph1350.i.split.us:                            ; preds = %.lr.ph1350.i
  %i.io = icmp slt i32 %5, 8
  %i.ip = icmp ne i32 %i.e, 8
  %brmerge1470.i = or i1 %i.io, %i.ip
  br i1 %brmerge1470.i, label %.loopexit1276.i.us.us.preheader, label %.loopexit1276.i.us

.loopexit1276.i.us.us.preheader:                  ; preds = %.lr.ph1350.i.split.us
  %xtraiter258 = and i32 %5, 1
  %lcmp.mod259.not = icmp eq i32 %xtraiter258, 0
  br label %.loopexit1276.i.us.us

.loopexit1276.i.us.us:                            ; preds = %.loopexit1276.i.us.us.preheader, %.loopexit1270.i.us.us
  %indvars.iv1529.i.us.us = phi i64 [ %indvars.iv.next1530.i.us.us, %.loopexit1270.i.us.us ], [ %i.il, %.loopexit1276.i.us.us.preheader ] ; 3 uses
  %.101349.i.us.us = phi ptr [ %.19.i.us.us, %.loopexit1270.i.us.us ], [ %.0782.lcssa.i, %.loopexit1276.i.us.us.preheader ] ; 5 uses
  %i.iq = load ptr, ptr %0, align 8, !tbaa !25
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.ie
  %i.is = add nsw i64 %indvars.iv1529.i.us.us, %i.if
  %i.it = mul nsw i64 %i.is, %i.in
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.ir, i64 %i.it ; 3 uses
  %i.iv = load ptr, ptr %6, align 8, !tbaa !25
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.if
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %indvars.iv1529.i.us.us
  %i.iy = load <8 x float>, ptr %i.ix, align 32, !tbaa !90 ; 9 uses
  switch i32 %i.e, label %.loopexit1270.i.us.us [
    i32 4, label %bb.m
    i32 1, label %.preheader1271.i.us.us
  ]

.preheader1271.i.us.us:                           ; preds = %.loopexit1276.i.us.us
  br i1 %i.ij, label %.lr.ph1339.i.us.us, label %.preheader1269.i.us.us

.lr.ph1339.i.us.us:                               ; preds = %.preheader1271.i.us.us, %.lr.ph1339.i.us.us
  %.171338.i.us.us = phi ptr [ %i.jv, %.lr.ph1339.i.us.us ], [ %.101349.i.us.us, %.preheader1271.i.us.us ] ; 2 uses
  %.68191337.i.us.us = phi ptr [ %i.jw, %.lr.ph1339.i.us.us ], [ %i.iu, %.preheader1271.i.us.us ] ; 3 uses
  %.08271336.i.us.us = phi i32 [ %i.jx, %.lr.ph1339.i.us.us ], [ 0, %.preheader1271.i.us.us ]
  %i.iz = load <8 x float>, ptr %.68191337.i.us.us, align 1, !tbaa !90
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.68191337.i.us.us, i64 %i.n
  %i.jb = load <8 x float>, ptr %i.ja, align 1, !tbaa !90
  %i.jc = fmul fast <8 x float> %i.iz, %i.iy      ; 2 uses
  %i.jd = fmul fast <8 x float> %i.jb, %i.iy      ; 2 uses
  %i.je = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.jc)
  %i.jf = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.jd)
  %i.jg = fadd fast <8 x float> %i.je, %i.jc
  %i.jh = fadd fast <8 x float> %i.jf, %i.jd
  %i.ji = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.jg)
  %i.jj = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.jh)
  %i.jk = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.ji, <8 x i32> %i.jj)
  %i.jl = bitcast <16 x i16> %i.jk to <4 x i64>
  %i.jm = shufflevector <4 x i64> %i.jl, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.jn = bitcast <4 x i64> %i.jm to <16 x i16>
  %i.jo = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.jn, <16 x i16> splat (i16 -127))
  %i.jp = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.jo, <16 x i16> splat (i16 127))
  %i.jq = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.jp, <16 x i16> poison)
  %i.jr = bitcast <32 x i8> %i.jq to <8 x i32>
  %i.js = shufflevector <8 x i32> %i.jr, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.jt = bitcast <4 x i32> %i.js to <16 x i8>
  %i.ju = shufflevector <16 x i8> %i.jt, <16 x i8> poison, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %i.ju, ptr %.171338.i.us.us, align 16, !tbaa !90
  %i.jv = getelementptr inbounds nuw i8, ptr %.171338.i.us.us, i64 16 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.68191337.i.us.us, i64 %.idx870.i ; 2 uses
  %i.jx = add nuw nsw i32 %.08271336.i.us.us, 2   ; 2 uses
  %i.jy = or disjoint i32 %i.jx, 1
  %i.jz = icmp slt i32 %i.jy, %5
  br i1 %i.jz, label %.lr.ph1339.i.us.us, label %.preheader1269.i.us.us, !llvm.loop !1105

.preheader1269.i.us.us:                           ; preds = %.lr.ph1339.i.us.us, %.preheader1271.i.us.us
  %.0827.lcssa.i.us.us = phi i32 [ 0, %.preheader1271.i.us.us ], [ %i.ik, %.lr.ph1339.i.us.us ] ; 4 uses
  %.6819.lcssa.i.us.us = phi ptr [ %i.iu, %.preheader1271.i.us.us ], [ %i.jw, %.lr.ph1339.i.us.us ] ; 3 uses
  %.17.lcssa.i.us.us = phi ptr [ %.101349.i.us.us, %.preheader1271.i.us.us ], [ %i.jv, %.lr.ph1339.i.us.us ] ; 4 uses
  %i.ka = icmp slt i32 %.0827.lcssa.i.us.us, %5
  br i1 %i.ka, label %.lr.ph1346.i.us.us.preheader, label %.loopexit1270.i.us.us

.lr.ph1346.i.us.us.preheader:                     ; preds = %.preheader1269.i.us.us
  %.neg274 = or disjoint i32 %.0827.lcssa.i.us.us, 1
  br i1 %lcmp.mod259.not, label %.lr.ph1346.i.us.us.prol.loopexit, label %.lr.ph1346.i.us.us.prol

.lr.ph1346.i.us.us.prol:                          ; preds = %.lr.ph1346.i.us.us.preheader
  %i.kb = load <8 x float>, ptr %.6819.lcssa.i.us.us, align 1, !tbaa !90
  %i.kc = fmul fast <8 x float> %i.kb, %i.iy      ; 2 uses
  %i.kd = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.kc)
  %i.ke = fadd fast <8 x float> %i.kd, %i.kc
  %i.kf = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ke)
  %i.kg = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.kf, <16 x i8> zeroinitializer, i8 -1)
  %i.kh = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.kg, <16 x i8> splat (i8 -127))
  %i.ki = bitcast <16 x i8> %i.kh to <2 x i64>
  %i.kj = extractelement <2 x i64> %i.ki, i64 0
  store i64 %i.kj, ptr %.17.lcssa.i.us.us, align 8, !tbaa !111
  %i.kk = getelementptr inbounds nuw i8, ptr %.17.lcssa.i.us.us, i64 8 ; 2 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %.6819.lcssa.i.us.us, i64 %i.n
  %i.km = or disjoint i32 %.0827.lcssa.i.us.us, 1
  br label %.lr.ph1346.i.us.us.prol.loopexit

.lr.ph1346.i.us.us.prol.loopexit:                 ; preds = %.lr.ph1346.i.us.us.prol, %.lr.ph1346.i.us.us.preheader
  %.lcssa243.unr = phi ptr [ poison, %.lr.ph1346.i.us.us.preheader ], [ %i.kk, %.lr.ph1346.i.us.us.prol ]
  %.181345.i.us.us.unr = phi ptr [ %.17.lcssa.i.us.us, %.lr.ph1346.i.us.us.preheader ], [ %i.kk, %.lr.ph1346.i.us.us.prol ]
  %.78201344.i.us.us.unr = phi ptr [ %.6819.lcssa.i.us.us, %.lr.ph1346.i.us.us.preheader ], [ %i.kl, %.lr.ph1346.i.us.us.prol ]
  %.18281343.i.us.us.unr = phi i32 [ %.0827.lcssa.i.us.us, %.lr.ph1346.i.us.us.preheader ], [ %i.km, %.lr.ph1346.i.us.us.prol ]
  %i.kn = icmp eq i32 %5, %.neg274
  br i1 %i.kn, label %.loopexit1270.i.us.us, label %.lr.ph1346.i.us.us

.lr.ph1346.i.us.us:                               ; preds = %.lr.ph1346.i.us.us.prol.loopexit, %.lr.ph1346.i.us.us
  %.181345.i.us.us = phi ptr [ %i.li, %.lr.ph1346.i.us.us ], [ %.181345.i.us.us.unr, %.lr.ph1346.i.us.us.prol.loopexit ] ; 3 uses
  %.78201344.i.us.us = phi ptr [ %i.lj, %.lr.ph1346.i.us.us ], [ %.78201344.i.us.us.unr, %.lr.ph1346.i.us.us.prol.loopexit ] ; 2 uses
  %.18281343.i.us.us = phi i32 [ %i.lk, %.lr.ph1346.i.us.us ], [ %.18281343.i.us.us.unr, %.lr.ph1346.i.us.us.prol.loopexit ]
  %i.ko = load <8 x float>, ptr %.78201344.i.us.us, align 1, !tbaa !90
  %i.kp = fmul fast <8 x float> %i.ko, %i.iy      ; 2 uses
  %i.kq = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.kp)
  %i.kr = fadd fast <8 x float> %i.kq, %i.kp
  %i.ks = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.kr)
  %i.kt = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.ks, <16 x i8> zeroinitializer, i8 -1)
  %i.ku = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.kt, <16 x i8> splat (i8 -127))
  %i.kv = bitcast <16 x i8> %i.ku to <2 x i64>
  %i.kw = extractelement <2 x i64> %i.kv, i64 0
  store i64 %i.kw, ptr %.181345.i.us.us, align 8, !tbaa !111
  %i.kx = getelementptr inbounds nuw i8, ptr %.181345.i.us.us, i64 8
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %.78201344.i.us.us, i64 %i.n ; 2 uses
  %i.kz = load <8 x float>, ptr %i.ky, align 1, !tbaa !90
  %i.la = fmul fast <8 x float> %i.kz, %i.iy      ; 2 uses
  %i.lb = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.la)
  %i.lc = fadd fast <8 x float> %i.lb, %i.la
  %i.ld = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.lc)
  %i.le = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.ld, <16 x i8> zeroinitializer, i8 -1)
  %i.lf = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.le, <16 x i8> splat (i8 -127))
  %i.lg = bitcast <16 x i8> %i.lf to <2 x i64>
  %i.lh = extractelement <2 x i64> %i.lg, i64 0
  store i64 %i.lh, ptr %i.kx, align 8, !tbaa !111
  %i.li = getelementptr inbounds nuw i8, ptr %.181345.i.us.us, i64 16 ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.n
  %i.lk = add nuw nsw i32 %.18281343.i.us.us, 2   ; 2 uses
  %exitcond1528.not.i.us.us.1 = icmp eq i32 %i.lk, %5
  br i1 %exitcond1528.not.i.us.us.1, label %.loopexit1270.i.us.us, label %.lr.ph1346.i.us.us, !llvm.loop !1106

bb.m:                                             ; preds = %.loopexit1276.i.us.us
  %i.ll = shufflevector <8 x float> %i.iy, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.lm = shufflevector <8 x float> %i.iy, <8 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3>
  %i.ln = shufflevector <8 x float> %i.iy, <8 x float> poison, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5>
  %i.lo = shufflevector <8 x float> %i.iy, <8 x float> poison, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7>
end_hunk_2
begin_hunk_3_@_ZN4ncnnL30transpose_pack_A_tile_quantizeERKNS_3MatERS0_iiiiS2_:bb.a

.loopexit1270.i.loopexit16.us:                    ; preds = %.lr.ph1327.i.us
  %indvars.iv.next1530.i.us = add nuw nsw i64 %indvars.iv1529.i.us, 8 ; 3 uses
  %i.sw = icmp slt i64 %indvars.iv.next1530.i.us, %invariant.op.i
  br i1 %i.sw, label %.loopexit1276.i.us, label %.preheader1268.loopexit.i, !llvm.loop !1108

.lr.ph.i.preheader:                               ; preds = %.lr.ph1315.i, %.loopexit1279.i.loopexit20
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.loopexit1279.i.loopexit20 ], [ 0, %.lr.ph1315.i ] ; 2 uses
  %.07821314.i = phi ptr [ %i.aca, %.loopexit1279.i.loopexit20 ], [ %i.o, %.lr.ph1315.i ]
  %i.sx = load ptr, ptr %0, align 8, !tbaa !25
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %i.r
  %i.sz = add nsw i64 %indvars.iv.i, %i.s         ; 2 uses
  %i.ta = mul nsw i64 %i.sz, %i.aa
  %i.tb = getelementptr inbounds [4 x i8], ptr %i.sy, i64 %i.ta
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.17831287.i = phi ptr [ %i.aca, %.lr.ph.i ], [ %.07821314.i, %.lr.ph.i.preheader ] ; 5 uses
  %.07911286.i = phi ptr [ %i.acb, %.lr.ph.i ], [ %i.tb, %.lr.ph.i.preheader ] ; 17 uses
  %.08081285.i = phi i32 [ %i.acc, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.tc = load <16 x float>, ptr %.07911286.i, align 64, !tbaa !90
  %i.td = getelementptr inbounds nuw i8, ptr %.07911286.i, i64 64
  %i.te = load <16 x float>, ptr %i.td, align 64, !tbaa !90
  %i.tf = getelementptr inbounds nuw i8, ptr %.07911286.i, i64 128
  %i.tg = load <16 x float>, ptr %i.tf, align 64, !tbaa !90
  %i.th = getelementptr inbounds nuw i8, ptr %.07911286.i, i64 192
  %i.ti = load <16 x float>, ptr %i.th, align 64, !tbaa !90
  %i.tj = getelementptr inbounds nuw i8, ptr %.07911286.i, i64 256
  %i.tk = load <16 x float>, ptr %i.tj, align 64, !tbaa !90
  %i.tl = getelementptr inbounds nuw i8, ptr %.07911286.i, i64 320
  %i.tm = load <16 x float>, ptr %i.tl, align 64, !tbaa !90
  %i.tn = getelementptr inbounds nuw i8, ptr %.07911286.i, i64 384
  %i.to = load <16 x float>, ptr %i.tn, align 64, !tbaa !90
  %i.tp = getelementptr inbounds nuw i8, ptr %.07911286.i, i64 448
  %i.tq = load <16 x float>, ptr %i.tp, align 64, !tbaa !90
  %i.tr = getelementptr inbounds nuw i8, ptr %.07911286.i, i64 512
  %i.ts = load <16 x float>, ptr %i.tr, align 64, !tbaa !90
  %i.tt = getelementptr inbounds nuw i8, ptr %.07911286.i, i64 576
  %i.tu = load <16 x float>, ptr %i.tt, align 64, !tbaa !90
  %i.tv = getelementptr inbounds nuw i8, ptr %.07911286.i, i64 640
  %i.tw = load <16 x float>, ptr %i.tv, align 64, !tbaa !90
  %i.tx = getelementptr inbounds nuw i8, ptr %.07911286.i, i64 704
  %i.ty = load <16 x float>, ptr %i.tx, align 64, !tbaa !90
  %i.tz = getelementptr inbounds nuw i8, ptr %.07911286.i, i64 768
  %i.ua = load <16 x float>, ptr %i.tz, align 64, !tbaa !90
  %i.ub = getelementptr inbounds nuw i8, ptr %.07911286.i, i64 832
  %i.uc = load <16 x float>, ptr %i.ub, align 64, !tbaa !90
  %i.ud = getelementptr inbounds nuw i8, ptr %.07911286.i, i64 896
  %i.ue = load <16 x float>, ptr %i.ud, align 64, !tbaa !90
  %i.uf = getelementptr inbounds nuw i8, ptr %.07911286.i, i64 960
  %i.ug = load <16 x float>, ptr %i.uf, align 64, !tbaa !90
  %i.uh = load ptr, ptr %6, align 8, !tbaa !25
  %i.ui = getelementptr [4 x i8], ptr %i.uh, i64 %i.sz ; 16 uses
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !69
  %i.uk = insertelement <16 x float> poison, float %i.uj, i64 0
  %i.ul = shufflevector <16 x float> %i.uk, <16 x float> poison, <16 x i32> zeroinitializer
  %i.um = fmul fast <16 x float> %i.ul, %i.tc     ; 2 uses
  %i.un = getelementptr i8, ptr %i.ui, i64 4
  %i.uo = load float, ptr %i.un, align 4, !tbaa !69
  %i.up = insertelement <16 x float> poison, float %i.uo, i64 0
  %i.uq = shufflevector <16 x float> %i.up, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ur = fmul fast <16 x float> %i.uq, %i.te     ; 2 uses
  %i.us = getelementptr i8, ptr %i.ui, i64 8
  %i.ut = load float, ptr %i.us, align 4, !tbaa !69
  %i.uu = insertelement <16 x float> poison, float %i.ut, i64 0
  %i.uv = shufflevector <16 x float> %i.uu, <16 x float> poison, <16 x i32> zeroinitializer
  %i.uw = fmul fast <16 x float> %i.uv, %i.tg     ; 2 uses
  %i.ux = getelementptr i8, ptr %i.ui, i64 12
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !69
  %i.uz = insertelement <16 x float> poison, float %i.uy, i64 0
  %i.va = shufflevector <16 x float> %i.uz, <16 x float> poison, <16 x i32> zeroinitializer
  %i.vb = fmul fast <16 x float> %i.va, %i.ti     ; 2 uses
  %i.vc = getelementptr i8, ptr %i.ui, i64 16
  %i.vd = load float, ptr %i.vc, align 4, !tbaa !69
  %i.ve = insertelement <16 x float> poison, float %i.vd, i64 0
  %i.vf = shufflevector <16 x float> %i.ve, <16 x float> poison, <16 x i32> zeroinitializer
  %i.vg = fmul fast <16 x float> %i.vf, %i.tk     ; 2 uses
  %i.vh = getelementptr i8, ptr %i.ui, i64 20
  %i.vi = load float, ptr %i.vh, align 4, !tbaa !69
  %i.vj = insertelement <16 x float> poison, float %i.vi, i64 0
  %i.vk = shufflevector <16 x float> %i.vj, <16 x float> poison, <16 x i32> zeroinitializer
  %i.vl = fmul fast <16 x float> %i.vk, %i.tm     ; 2 uses
  %i.vm = getelementptr i8, ptr %i.ui, i64 24
  %i.vn = load float, ptr %i.vm, align 4, !tbaa !69
  %i.vo = insertelement <16 x float> poison, float %i.vn, i64 0
  %i.vp = shufflevector <16 x float> %i.vo, <16 x float> poison, <16 x i32> zeroinitializer
  %i.vq = fmul fast <16 x float> %i.vp, %i.to     ; 2 uses
  %i.vr = getelementptr i8, ptr %i.ui, i64 28
  %i.vs = load float, ptr %i.vr, align 4, !tbaa !69
  %i.vt = insertelement <16 x float> poison, float %i.vs, i64 0
  %i.vu = shufflevector <16 x float> %i.vt, <16 x float> poison, <16 x i32> zeroinitializer
  %i.vv = fmul fast <16 x float> %i.vu, %i.tq     ; 2 uses
  %i.vw = getelementptr i8, ptr %i.ui, i64 32
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !69
  %i.vy = insertelement <16 x float> poison, float %i.vx, i64 0
  %i.vz = shufflevector <16 x float> %i.vy, <16 x float> poison, <16 x i32> zeroinitializer
  %i.wa = fmul fast <16 x float> %i.vz, %i.ts     ; 2 uses
  %i.wb = getelementptr i8, ptr %i.ui, i64 36
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !69
  %i.wd = insertelement <16 x float> poison, float %i.wc, i64 0
  %i.we = shufflevector <16 x float> %i.wd, <16 x float> poison, <16 x i32> zeroinitializer
  %i.wf = fmul fast <16 x float> %i.we, %i.tu     ; 2 uses
  %i.wg = getelementptr i8, ptr %i.ui, i64 40
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !69
  %i.wi = insertelement <16 x float> poison, float %i.wh, i64 0
  %i.wj = shufflevector <16 x float> %i.wi, <16 x float> poison, <16 x i32> zeroinitializer
  %i.wk = fmul fast <16 x float> %i.wj, %i.tw     ; 2 uses
  %i.wl = getelementptr i8, ptr %i.ui, i64 44
  %i.wm = load float, ptr %i.wl, align 4, !tbaa !69
  %i.wn = insertelement <16 x float> poison, float %i.wm, i64 0
  %i.wo = shufflevector <16 x float> %i.wn, <16 x float> poison, <16 x i32> zeroinitializer
  %i.wp = fmul fast <16 x float> %i.wo, %i.ty     ; 2 uses
  %i.wq = getelementptr i8, ptr %i.ui, i64 48
  %i.wr = load float, ptr %i.wq, align 4, !tbaa !69
  %i.ws = insertelement <16 x float> poison, float %i.wr, i64 0
  %i.wt = shufflevector <16 x float> %i.ws, <16 x float> poison, <16 x i32> zeroinitializer
  %i.wu = fmul fast <16 x float> %i.wt, %i.ua     ; 2 uses
  %i.wv = getelementptr i8, ptr %i.ui, i64 52
  %i.ww = load float, ptr %i.wv, align 4, !tbaa !69
  %i.wx = insertelement <16 x float> poison, float %i.ww, i64 0
  %i.wy = shufflevector <16 x float> %i.wx, <16 x float> poison, <16 x i32> zeroinitializer
  %i.wz = fmul fast <16 x float> %i.wy, %i.uc     ; 2 uses
  %i.xa = getelementptr i8, ptr %i.ui, i64 56
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !69
  %i.xc = insertelement <16 x float> poison, float %i.xb, i64 0
  %i.xd = shufflevector <16 x float> %i.xc, <16 x float> poison, <16 x i32> zeroinitializer
  %i.xe = fmul fast <16 x float> %i.xd, %i.ue     ; 2 uses
  %i.xf = getelementptr i8, ptr %i.ui, i64 60
  %i.xg = load float, ptr %i.xf, align 4, !tbaa !69
  %i.xh = insertelement <16 x float> poison, float %i.xg, i64 0
  %i.xi = shufflevector <16 x float> %i.xh, <16 x float> poison, <16 x i32> zeroinitializer
  %i.xj = fmul fast <16 x float> %i.xi, %i.ug     ; 2 uses
  %i.xk = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.um)
  %i.xl = fadd fast <16 x float> %i.xk, %i.um
  %i.xm = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.xl, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.xn = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.xm, <16 x i8> zeroinitializer, i16 -1)
  %i.xo = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.xn, <16 x i8> splat (i8 -127))
  %i.xp = bitcast <16 x i8> %i.xo to <2 x i64>
  %i.xq = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ur)
  %i.xr = fadd fast <16 x float> %i.xq, %i.ur
  %i.xs = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.xr, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.xt = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.xs, <16 x i8> zeroinitializer, i16 -1)
  %i.xu = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.xt, <16 x i8> splat (i8 -127))
  %i.xv = bitcast <16 x i8> %i.xu to <2 x i64>
  %i.xw = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.uw)
  %i.xx = fadd fast <16 x float> %i.xw, %i.uw
  %i.xy = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.xx, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.xz = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.xy, <16 x i8> zeroinitializer, i16 -1)
  %i.ya = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.xz, <16 x i8> splat (i8 -127))
  %i.yb = bitcast <16 x i8> %i.ya to <2 x i64>
  %i.yc = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.vb)
  %i.yd = fadd fast <16 x float> %i.yc, %i.vb
  %i.ye = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.yd, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.yf = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ye, <16 x i8> zeroinitializer, i16 -1)
  %i.yg = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.yf, <16 x i8> splat (i8 -127))
  %i.yh = bitcast <16 x i8> %i.yg to <2 x i64>
  %i.yi = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.vg)
  %i.yj = fadd fast <16 x float> %i.yi, %i.vg
  %i.yk = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.yj, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.yl = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.yk, <16 x i8> zeroinitializer, i16 -1)
  %i.ym = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.yl, <16 x i8> splat (i8 -127))
  %i.yn = bitcast <16 x i8> %i.ym to <2 x i64>
  %i.yo = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.vl)
  %i.yp = fadd fast <16 x float> %i.yo, %i.vl
  %i.yq = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.yp, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.yr = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.yq, <16 x i8> zeroinitializer, i16 -1)
  %i.ys = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.yr, <16 x i8> splat (i8 -127))
  %i.yt = bitcast <16 x i8> %i.ys to <2 x i64>
  %i.yu = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.vq)
  %i.yv = fadd fast <16 x float> %i.yu, %i.vq
  %i.yw = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.yv, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.yx = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.yw, <16 x i8> zeroinitializer, i16 -1)
  %i.yy = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.yx, <16 x i8> splat (i8 -127))
  %i.yz = bitcast <16 x i8> %i.yy to <2 x i64>
  %i.za = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.vv)
  %i.zb = fadd fast <16 x float> %i.za, %i.vv
  %i.zc = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.zb, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.zd = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.zc, <16 x i8> zeroinitializer, i16 -1)
  %i.ze = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.zd, <16 x i8> splat (i8 -127))
  %i.zf = bitcast <16 x i8> %i.ze to <2 x i64>
  %i.zg = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.wa)
  %i.zh = fadd fast <16 x float> %i.zg, %i.wa
  %i.zi = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.zh, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.zj = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.zi, <16 x i8> zeroinitializer, i16 -1)
  %i.zk = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.wf)
  %i.zl = fadd fast <16 x float> %i.zk, %i.wf
  %i.zm = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.zl, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.zn = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.zm, <16 x i8> zeroinitializer, i16 -1)
  %i.zo = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.wk)
  %i.zp = fadd fast <16 x float> %i.zo, %i.wk
  %i.zq = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.zp, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.zr = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.zq, <16 x i8> zeroinitializer, i16 -1)
  %i.zs = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.wp)
  %i.zt = fadd fast <16 x float> %i.zs, %i.wp
  %i.zu = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.zt, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.zv = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.zu, <16 x i8> zeroinitializer, i16 -1)
  %i.zw = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.wu)
  %i.zx = fadd fast <16 x float> %i.zw, %i.wu
  %i.zy = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.zx, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.zz = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.zy, <16 x i8> zeroinitializer, i16 -1)
  %i.aaa = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.wz)
  %i.aab = fadd fast <16 x float> %i.aaa, %i.wz
  %i.aac = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.aab, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aad = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.aac, <16 x i8> zeroinitializer, i16 -1)
  %i.aae = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.xe)
  %i.aaf = fadd fast <16 x float> %i.aae, %i.xe
  %i.aag = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.aaf, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aah = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.aag, <16 x i8> zeroinitializer, i16 -1)
  %i.aai = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.xj)
  %i.aaj = fadd fast <16 x float> %i.aai, %i.xj
  %i.aak = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.aaj, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aal = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.aak, <16 x i8> zeroinitializer, i16 -1)
  %i.aam = shufflevector <16 x i8> %i.zj, <16 x i8> %i.zz, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aan = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %i.aam, <32 x i8> splat (i8 -127))
  %i.aao = shufflevector <2 x i64> %i.xp, <2 x i64> %i.yn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aap = bitcast <8 x i64> %i.aao to <16 x i32>
  %i.aaq = bitcast <32 x i8> %i.aan to <8 x i32>
  %i.aar = shufflevector <8 x i32> %i.aaq, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aas = shufflevector <16 x i32> %i.aap, <16 x i32> %i.aar, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %9 = shufflevector <16 x i8> %i.zn, <16 x i8> %i.aad, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aat = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %9, <32 x i8> splat (i8 -127))
  %i.aau = shufflevector <2 x i64> %i.xv, <2 x i64> %i.yt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aav = bitcast <8 x i64> %i.aau to <16 x i32>
  %i.aaw = bitcast <32 x i8> %i.aat to <8 x i32>
  %i.aax = shufflevector <8 x i32> %i.aaw, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aay = shufflevector <16 x i32> %i.aav, <16 x i32> %i.aax, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %10 = shufflevector <16 x i8> %i.zr, <16 x i8> %i.aah, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aaz = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %10, <32 x i8> splat (i8 -127))
  %i.aba = shufflevector <2 x i64> %i.yb, <2 x i64> %i.yz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.abb = bitcast <8 x i64> %i.aba to <16 x i32>
  %i.abc = bitcast <32 x i8> %i.aaz to <8 x i32>
  %i.abd = shufflevector <8 x i32> %i.abc, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.abe = shufflevector <16 x i32> %i.abb, <16 x i32> %i.abd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %11 = shufflevector <16 x i8> %i.zv, <16 x i8> %i.aal, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.abf = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %11, <32 x i8> splat (i8 -127))
  %i.abg = shufflevector <2 x i64> %i.yh, <2 x i64> %i.zf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.abh = bitcast <8 x i64> %i.abg to <16 x i32>
  %i.abi = bitcast <32 x i8> %i.abf to <8 x i32>
  %i.abj = shufflevector <8 x i32> %i.abi, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.abk = shufflevector <16 x i32> %i.abh, <16 x i32> %i.abj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.abl = bitcast <16 x i32> %i.aas to <32 x i16> ; 2 uses
  %i.abm = bitcast <16 x i32> %i.aay to <32 x i16> ; 2 uses
  %i.abn = shufflevector <32 x i16> %i.abl, <32 x i16> %i.abm, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59> ; 2 uses
  %i.abo = shufflevector <32 x i16> %i.abl, <32 x i16> %i.abm, <32 x i32> <i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.abp = bitcast <16 x i32> %i.abe to <32 x i16> ; 2 uses
  %i.abq = bitcast <16 x i32> %i.abk to <32 x i16> ; 2 uses
  %i.abr = shufflevector <32 x i16> %i.abp, <32 x i16> %i.abq, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59> ; 2 uses
  %i.abs = shufflevector <32 x i16> %i.abp, <32 x i16> %i.abq, <32 x i32> <i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.abt = shufflevector <32 x i16> %i.abn, <32 x i16> %i.abr, <32 x i32> <i32 0, i32 1, i32 32, i32 33, i32 8, i32 9, i32 40, i32 41, i32 16, i32 17, i32 48, i32 49, i32 24, i32 25, i32 56, i32 57, i32 2, i32 3, i32 34, i32 35, i32 10, i32 11, i32 42, i32 43, i32 18, i32 19, i32 50, i32 51, i32 26, i32 27, i32 58, i32 59>
  %i.abu = shufflevector <32 x i16> %i.abn, <32 x i16> %i.abr, <32 x i32> <i32 4, i32 5, i32 36, i32 37, i32 12, i32 13, i32 44, i32 45, i32 20, i32 21, i32 52, i32 53, i32 28, i32 29, i32 60, i32 61, i32 6, i32 7, i32 38, i32 39, i32 14, i32 15, i32 46, i32 47, i32 22, i32 23, i32 54, i32 55, i32 30, i32 31, i32 62, i32 63>
  %i.abv = shufflevector <32 x i16> %i.abo, <32 x i16> %i.abs, <32 x i32> <i32 0, i32 1, i32 32, i32 33, i32 8, i32 9, i32 40, i32 41, i32 16, i32 17, i32 48, i32 49, i32 24, i32 25, i32 56, i32 57, i32 2, i32 3, i32 34, i32 35, i32 10, i32 11, i32 42, i32 43, i32 18, i32 19, i32 50, i32 51, i32 26, i32 27, i32 58, i32 59>
  %i.abw = shufflevector <32 x i16> %i.abo, <32 x i16> %i.abs, <32 x i32> <i32 4, i32 5, i32 36, i32 37, i32 12, i32 13, i32 44, i32 45, i32 20, i32 21, i32 52, i32 53, i32 28, i32 29, i32 60, i32 61, i32 6, i32 7, i32 38, i32 39, i32 14, i32 15, i32 46, i32 47, i32 22, i32 23, i32 54, i32 55, i32 30, i32 31, i32 62, i32 63>
  store <32 x i16> %i.abt, ptr %.17831287.i, align 64, !tbaa !90
  %i.abx = getelementptr inbounds nuw i8, ptr %.17831287.i, i64 64
  store <32 x i16> %i.abu, ptr %i.abx, align 64, !tbaa !90
  %i.aby = getelementptr inbounds nuw i8, ptr %.17831287.i, i64 128
  store <32 x i16> %i.abv, ptr %i.aby, align 64, !tbaa !90
  %i.abz = getelementptr inbounds nuw i8, ptr %.17831287.i, i64 192
  store <32 x i16> %i.abw, ptr %i.abz, align 64, !tbaa !90
  %i.aca = getelementptr inbounds nuw i8, ptr %.17831287.i, i64 256 ; 3 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %.07911286.i, i64 %.idx877.i
  %i.acc = add nuw nsw i32 %.08081285.i, 16       ; 2 uses
  %i.acd = or disjoint i32 %i.acc, 15
  %i.ace = icmp slt i32 %i.acd, %5
  br i1 %i.ace, label %.lr.ph.i, label %.loopexit1279.i.loopexit20, !llvm.loop !1110

.loopexit1279.i.loopexit20:                       ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 16 ; 3 uses
  %i.acf = or disjoint i64 %indvars.iv.next.i, 15
  %i.acg = icmp samesign ult i64 %i.acf, %i.z
  br i1 %i.acg, label %.lr.ph.i.preheader, label %.preheader1277.loopexit.i, !llvm.loop !1104

.preheader1268.loopexit.i:                        ; preds = %.loopexit1270.i.loopexit17, %.loopexit1270.i.loopexit16.us, %.loopexit1270.i.us.us
  %.us-phi54 = phi ptr [ %i.sr, %.loopexit1270.i.loopexit16.us ], [ %.19.i.us.us, %.loopexit1270.i.us.us ], [ %i.ath, %.loopexit1270.i.loopexit17 ]
  %.us-phi55 = phi i64 [ %indvars.iv.next1530.i.us, %.loopexit1270.i.loopexit16.us ], [ %indvars.iv.next1530.i.us.us, %.loopexit1270.i.us.us ], [ %indvars.iv.next1530.i, %.loopexit1270.i.loopexit17 ]
  %i.ach = trunc nuw nsw i64 %.us-phi55 to i32
  br label %.preheader1268.i

.preheader1268.i:                                 ; preds = %.preheader1268.loopexit.i, %.preheader1277.i
  %.1786.lcssa.i = phi i32 [ %.0785.lcssa.i, %.preheader1277.i ], [ %i.ach, %.preheader1268.loopexit.i ] ; 3 uses
  %.10.lcssa.i = phi ptr [ %.0782.lcssa.i, %.preheader1277.i ], [ %.us-phi54, %.preheader1268.loopexit.i ] ; 3 uses
  %i.aci = or disjoint i32 %.1786.lcssa.i, 3
  %i.acj = icmp slt i32 %i.aci, %3
  br i1 %i.acj, label %.lr.ph1385.i, label %.preheader1262.i

.lr.ph1385.i:                                     ; preds = %.preheader1268.i
  %i.ack = sext i32 %4 to i64
  %i.acl = mul i64 %i.n, %i.ack
  %i.acm = icmp sgt i32 %5, 15
  %.idx869.i = shl i64 %i.n, 6
  %i.acn = icmp sgt i32 %5, 7
  %.idx868.i = shl i64 %i.n, 5
  %i.aco = icmp sgt i32 %5, 3
  %.idx867.i = shl i64 %i.n, 4
  %i.acp = sext i32 %2 to i64                     ; 2 uses
  %i.acq = icmp sgt i32 %5, 1
  %.idx866.i = shl i64 %i.n, 3
  %i.acr = and i32 %5, -2
  %i.acs = zext i32 %.1786.lcssa.i to i64         ; 4 uses
  %i.act = sext i32 %3 to i64
  %i.acu = sext i32 %i.e to i64
  %invariant.op1638.i = add nsw i64 %i.act, -3    ; 2 uses
  %i.acv = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.e)
  %i.acw = icmp eq i32 %i.acv, 1
  %i.acx = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.e, i1 true)
  br i1 %i.acw, label %.split.i.us.preheader, label %.loopexit1264.i.preheader

.split.i.us.preheader:                            ; preds = %.lr.ph1385.i
  %xtraiter260 = and i32 %5, 1
  %lcmp.mod261.not = icmp eq i32 %xtraiter260, 0
  br label %.split.i.us

.loopexit1264.i.preheader:                        ; preds = %.lr.ph1385.i
  %i.acy = add nuw nsw i64 %i.acs, 4
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op1638.i, i64 %i.acy)
  %i.acz = xor i64 %i.acs, -1
  %i.ada = add nsw i64 %smax, %i.acz
  %i.adb = and i64 %i.ada, -4
  %i.adc = add i64 %i.adb, %i.acs
  %i.add = add i64 %i.adc, 4
  br label %.preheader1262.loopexit.i

.split.i.us:                                      ; preds = %.split.i.us.preheader, %.loopexit1264.i.us
  %indvars.iv1533.i.us = phi i64 [ %indvars.iv.next1534.i.us, %.loopexit1264.i.us ], [ %i.acs, %.split.i.us.preheader ] ; 3 uses
  %.201384.i.us = phi ptr [ %.29.i.us, %.loopexit1264.i.us ], [ %.10.lcssa.i, %.split.i.us.preheader ] ; 9 uses
  %i.ade = load ptr, ptr %0, align 8, !tbaa !25
  %i.adf = getelementptr inbounds nuw [4 x i8], ptr %i.ade, i64 %i.acl
  %i.adg = add nsw i64 %indvars.iv1533.i.us, %i.acp ; 4 uses
  %i.adh = mul nsw i64 %i.adg, %i.acu
  %i.adi = getelementptr inbounds [4 x i8], ptr %i.adf, i64 %i.adh ; 5 uses
  switch i32 %i.acx, label %.loopexit1264.i.us [
    i32 4, label %bb.q
    i32 3, label %bb.p
    i32 2, label %bb.o
    i32 0, label %bb.n
  ]

bb.n:                                             ; preds = %.split.i.us
  %i.adj = load ptr, ptr %6, align 8, !tbaa !25
  %i.adk = getelementptr inbounds [4 x i8], ptr %i.adj, i64 %i.acp
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %i.adk, i64 %indvars.iv1533.i.us
  %i.adm = load <4 x float>, ptr %i.adl, align 16, !tbaa !90 ; 5 uses
  br i1 %i.acq, label %.lr.ph1374.i.us, label %.preheader1263.i.us

.lr.ph1374.i.us:                                  ; preds = %bb.n, %.lr.ph1374.i.us
  %.271373.i.us = phi ptr [ %i.aeg, %.lr.ph1374.i.us ], [ %.201384.i.us, %bb.n ] ; 2 uses
  %.68351372.i.us = phi ptr [ %i.aeh, %.lr.ph1374.i.us ], [ %i.adi, %bb.n ] ; 3 uses
  %.08511371.i.us = phi i32 [ %i.aei, %.lr.ph1374.i.us ], [ 0, %bb.n ]
  %i.adn = load <4 x float>, ptr %.68351372.i.us, align 1, !tbaa !90
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %.68351372.i.us, i64 %i.n
  %i.adp = load <4 x float>, ptr %i.ado, align 1, !tbaa !90
  %i.adq = fmul fast <4 x float> %i.adn, %i.adm   ; 2 uses
  %i.adr = fmul fast <4 x float> %i.adp, %i.adm   ; 2 uses
  %i.ads = shufflevector <4 x float> %i.adq, <4 x float> %i.adr, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.adt = shufflevector <4 x float> %i.adq, <4 x float> %i.adr, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.adu = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ads)
  %i.adv = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.adt)
  %i.adw = fadd fast <4 x float> %i.adu, %i.ads
  %i.adx = fadd fast <4 x float> %i.adv, %i.adt
  %i.ady = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.adw)
  %i.adz = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.adx)
  %i.aea = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ady, <4 x i32> %i.adz)
  %i.aeb = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aea, <8 x i16> splat (i16 -127))
  %i.aec = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.aeb, <8 x i16> splat (i16 127))
  %i.aed = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.aec, <8 x i16> poison)
  %i.aee = bitcast <16 x i8> %i.aed to <2 x i64>
  %i.aef = extractelement <2 x i64> %i.aee, i64 0
  store i64 %i.aef, ptr %.271373.i.us, align 8, !tbaa !111
  %i.aeg = getelementptr inbounds nuw i8, ptr %.271373.i.us, i64 8 ; 2 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %.68351372.i.us, i64 %.idx866.i ; 2 uses
  %i.aei = add nuw nsw i32 %.08511371.i.us, 2     ; 2 uses
  %i.aej = or disjoint i32 %i.aei, 1
  %i.aek = icmp slt i32 %i.aej, %5
  br i1 %i.aek, label %.lr.ph1374.i.us, label %.preheader1263.i.us, !llvm.loop !1111

.preheader1263.i.us:                              ; preds = %.lr.ph1374.i.us, %bb.n
  %.0851.lcssa.i.us = phi i32 [ 0, %bb.n ], [ %i.acr, %.lr.ph1374.i.us ] ; 4 uses
  %.6835.lcssa.i.us = phi ptr [ %i.adi, %bb.n ], [ %i.aeh, %.lr.ph1374.i.us ] ; 3 uses
  %.27.lcssa.i.us = phi ptr [ %.201384.i.us, %bb.n ], [ %i.aeg, %.lr.ph1374.i.us ] ; 4 uses
  %i.ael = icmp slt i32 %.0851.lcssa.i.us, %5
  br i1 %i.ael, label %.lr.ph1381.i.us.preheader, label %.loopexit1264.i.us

.lr.ph1381.i.us.preheader:                        ; preds = %.preheader1263.i.us
  %.neg275 = or disjoint i32 %.0851.lcssa.i.us, 1
  br i1 %lcmp.mod261.not, label %.lr.ph1381.i.us.prol.loopexit, label %.lr.ph1381.i.us.prol

.lr.ph1381.i.us.prol:                             ; preds = %.lr.ph1381.i.us.preheader
  %i.aem = load <4 x float>, ptr %.6835.lcssa.i.us, align 1, !tbaa !90
  %i.aen = fmul fast <4 x float> %i.aem, %i.adm   ; 2 uses
  %i.aeo = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.aen)
  %i.aep = fadd fast <4 x float> %i.aeo, %i.aen
  %i.aeq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aep) ; 2 uses
  %i.aer = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.aeq, <4 x i32> %i.aeq)
  %i.aes = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aer, <8 x i16> splat (i16 -127))
  %i.aet = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.aes, <8 x i16> splat (i16 127))
  %i.aeu = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.aet, <8 x i16> poison)
  %i.aev = bitcast <16 x i8> %i.aeu to <4 x i32>
  %i.aew = extractelement <4 x i32> %i.aev, i64 0
  store i32 %i.aew, ptr %.27.lcssa.i.us, align 4, !tbaa !51
  %i.aex = getelementptr inbounds nuw i8, ptr %.27.lcssa.i.us, i64 4 ; 2 uses
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %.6835.lcssa.i.us, i64 %i.n
  %i.aez = or disjoint i32 %.0851.lcssa.i.us, 1
  br label %.lr.ph1381.i.us.prol.loopexit

.lr.ph1381.i.us.prol.loopexit:                    ; preds = %.lr.ph1381.i.us.prol, %.lr.ph1381.i.us.preheader
  %.lcssa236.unr = phi ptr [ poison, %.lr.ph1381.i.us.preheader ], [ %i.aex, %.lr.ph1381.i.us.prol ]
  %.281380.i.us.unr = phi ptr [ %.27.lcssa.i.us, %.lr.ph1381.i.us.preheader ], [ %i.aex, %.lr.ph1381.i.us.prol ]
  %.78361379.i.us.unr = phi ptr [ %.6835.lcssa.i.us, %.lr.ph1381.i.us.preheader ], [ %i.aey, %.lr.ph1381.i.us.prol ]
  %.18521378.i.us.unr = phi i32 [ %.0851.lcssa.i.us, %.lr.ph1381.i.us.preheader ], [ %i.aez, %.lr.ph1381.i.us.prol ]
  %i.afa = icmp eq i32 %5, %.neg275
  br i1 %i.afa, label %.loopexit1264.i.us, label %.lr.ph1381.i.us

.lr.ph1381.i.us:                                  ; preds = %.lr.ph1381.i.us.prol.loopexit, %.lr.ph1381.i.us
  %.281380.i.us = phi ptr [ %i.afz, %.lr.ph1381.i.us ], [ %.281380.i.us.unr, %.lr.ph1381.i.us.prol.loopexit ] ; 3 uses
  %.78361379.i.us = phi ptr [ %i.aga, %.lr.ph1381.i.us ], [ %.78361379.i.us.unr, %.lr.ph1381.i.us.prol.loopexit ] ; 2 uses
  %.18521378.i.us = phi i32 [ %i.agb, %.lr.ph1381.i.us ], [ %.18521378.i.us.unr, %.lr.ph1381.i.us.prol.loopexit ]
  %i.afb = load <4 x float>, ptr %.78361379.i.us, align 1, !tbaa !90
  %i.afc = fmul fast <4 x float> %i.afb, %i.adm   ; 2 uses
  %i.afd = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.afc)
  %i.afe = fadd fast <4 x float> %i.afd, %i.afc
  %i.aff = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.afe) ; 2 uses
  %i.afg = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.aff, <4 x i32> %i.aff)
  %i.afh = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.afg, <8 x i16> splat (i16 -127))
  %i.afi = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.afh, <8 x i16> splat (i16 127))
  %i.afj = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.afi, <8 x i16> poison)
  %i.afk = bitcast <16 x i8> %i.afj to <4 x i32>
  %i.afl = extractelement <4 x i32> %i.afk, i64 0
  store i32 %i.afl, ptr %.281380.i.us, align 4, !tbaa !51
  %i.afm = getelementptr inbounds nuw i8, ptr %.281380.i.us, i64 4
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %.78361379.i.us, i64 %i.n ; 2 uses
  %i.afo = load <4 x float>, ptr %i.afn, align 1, !tbaa !90
  %i.afp = fmul fast <4 x float> %i.afo, %i.adm   ; 2 uses
  %i.afq = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.afp)
  %i.afr = fadd fast <4 x float> %i.afq, %i.afp
  %i.afs = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.afr) ; 2 uses
end_hunk_3
