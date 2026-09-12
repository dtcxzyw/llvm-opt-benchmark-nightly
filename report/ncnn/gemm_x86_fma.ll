Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_fma?download=true
inline.NumInlined: 233
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 134
loop-unroll.NumUnrolled: 138
begin_hunk_0_@_ZN4ncnn12Gemm_x86_fma20create_pipeline_int8ERKNS_6OptionE.omp_outlined.9:bb.a
  %next.gep340 = getelementptr i8, ptr %.0243.lcssa.i, i64 %index338
  %next.gep341 = getelementptr i8, ptr %.0245.lcssa.i, i64 %index338
  %next.gep342 = getelementptr i8, ptr %.0247.lcssa.i, i64 %index338
  %i.km = shl i64 %index338, 2
  %next.gep343 = getelementptr i8, ptr %.4.lcssa.i, i64 %i.km
  %wide.load344 = load <32 x i8>, ptr %next.gep342, align 1, !tbaa !89, !alias.scope !661
  %wide.load345 = load <32 x i8>, ptr %next.gep341, align 1, !tbaa !89, !alias.scope !662
  %wide.load346 = load <32 x i8>, ptr %next.gep340, align 1, !tbaa !89, !alias.scope !663
  %wide.load347 = load <32 x i8>, ptr %next.gep339, align 1, !tbaa !89, !alias.scope !664
  %i.kn = shufflevector <32 x i8> %wide.load344, <32 x i8> %wide.load345, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ko = shufflevector <32 x i8> %wide.load346, <32 x i8> %wide.load347, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %interleaved.vec348 = shufflevector <64 x i8> %i.kn, <64 x i8> %i.ko, <128 x i32> <i32 0, i32 32, i32 64, i32 96, i32 1, i32 33, i32 65, i32 97, i32 2, i32 34, i32 66, i32 98, i32 3, i32 35, i32 67, i32 99, i32 4, i32 36, i32 68, i32 100, i32 5, i32 37, i32 69, i32 101, i32 6, i32 38, i32 70, i32 102, i32 7, i32 39, i32 71, i32 103, i32 8, i32 40, i32 72, i32 104, i32 9, i32 41, i32 73, i32 105, i32 10, i32 42, i32 74, i32 106, i32 11, i32 43, i32 75, i32 107, i32 12, i32 44, i32 76, i32 108, i32 13, i32 45, i32 77, i32 109, i32 14, i32 46, i32 78, i32 110, i32 15, i32 47, i32 79, i32 111, i32 16, i32 48, i32 80, i32 112, i32 17, i32 49, i32 81, i32 113, i32 18, i32 50, i32 82, i32 114, i32 19, i32 51, i32 83, i32 115, i32 20, i32 52, i32 84, i32 116, i32 21, i32 53, i32 85, i32 117, i32 22, i32 54, i32 86, i32 118, i32 23, i32 55, i32 87, i32 119, i32 24, i32 56, i32 88, i32 120, i32 25, i32 57, i32 89, i32 121, i32 26, i32 58, i32 90, i32 122, i32 27, i32 59, i32 91, i32 123, i32 28, i32 60, i32 92, i32 124, i32 29, i32 61, i32 93, i32 125, i32 30, i32 62, i32 94, i32 126, i32 31, i32 63, i32 95, i32 127>
  store <128 x i8> %interleaved.vec348, ptr %next.gep343, align 1, !tbaa !89, !alias.scope !665, !noalias !666
  %index.next349 = add nuw i64 %index338, 32      ; 2 uses
  %i.kp = icmp eq i64 %index.next349, %n.vec336
  br i1 %i.kp, label %middle.block350, label %vector.body337, !llvm.loop !613

middle.block350:                                  ; preds = %vector.body337
  %cmp.n351 = icmp eq i64 %i.jy, %n.vec336
  br i1 %cmp.n351, label %._crit_edge338.i, label %vec.epilog.iter.check360

vec.epilog.iter.check360:                         ; preds = %middle.block350
  %min.epilog.iters.check361 = icmp eq i64 %i.kd, 0
  br i1 %min.epilog.iters.check361, label %.lr.ph337.i.preheader, label %vec.epilog.ph362, !prof !90

vec.epilog.ph362:                                 ; preds = %vector.main.loop.iter.check333, %vec.epilog.iter.check360
  %vec.epilog.resume.val352 = phi i64 [ %n.vec336, %vec.epilog.iter.check360 ], [ 0, %vector.main.loop.iter.check333 ]
  %n.vec363 = and i64 %i.jy, 8589934584           ; 8 uses
  %i.kq = trunc i64 %n.vec363 to i32
  %i.kr = add i32 %.0239.lcssa.i, %i.kq
  %i.ks = getelementptr i8, ptr %.0241.lcssa.i, i64 %n.vec363
  %i.kt = getelementptr i8, ptr %.0243.lcssa.i, i64 %n.vec363
  %i.ku = getelementptr i8, ptr %.0245.lcssa.i, i64 %n.vec363
  %i.kv = getelementptr i8, ptr %.0247.lcssa.i, i64 %n.vec363
  %i.kw = shl nuw nsw i64 %n.vec363, 2
  %i.kx = getelementptr i8, ptr %.4.lcssa.i, i64 %i.kw ; 2 uses
  br label %vec.epilog.vector.body364

vec.epilog.vector.body364:                        ; preds = %vec.epilog.vector.body364, %vec.epilog.ph362
  %index365 = phi i64 [ %vec.epilog.resume.val352, %vec.epilog.ph362 ], [ %index.next376, %vec.epilog.vector.body364 ] ; 6 uses
  %next.gep366 = getelementptr i8, ptr %.0241.lcssa.i, i64 %index365
  %next.gep367 = getelementptr i8, ptr %.0243.lcssa.i, i64 %index365
  %next.gep368 = getelementptr i8, ptr %.0245.lcssa.i, i64 %index365
  %next.gep369 = getelementptr i8, ptr %.0247.lcssa.i, i64 %index365
  %i.ky = shl i64 %index365, 2
  %next.gep370 = getelementptr i8, ptr %.4.lcssa.i, i64 %i.ky
  %wide.load371 = load <8 x i8>, ptr %next.gep369, align 1, !tbaa !89, !alias.scope !661
  %wide.load372 = load <8 x i8>, ptr %next.gep368, align 1, !tbaa !89, !alias.scope !662
  %wide.load373 = load <8 x i8>, ptr %next.gep367, align 1, !tbaa !89, !alias.scope !663
  %wide.load374 = load <8 x i8>, ptr %next.gep366, align 1, !tbaa !89, !alias.scope !664
  %i.kz = shufflevector <8 x i8> %wide.load371, <8 x i8> %wide.load372, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.la = shufflevector <8 x i8> %wide.load373, <8 x i8> %wide.load374, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec375 = shufflevector <16 x i8> %i.kz, <16 x i8> %i.la, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i8> %interleaved.vec375, ptr %next.gep370, align 1, !tbaa !89, !alias.scope !665, !noalias !666
  %index.next376 = add nuw i64 %index365, 8       ; 2 uses
  %i.lb = icmp eq i64 %index.next376, %n.vec363
  br i1 %i.lb, label %vec.epilog.middle.block377, label %vec.epilog.vector.body364, !llvm.loop !614

vec.epilog.middle.block377:                       ; preds = %vec.epilog.vector.body364
  %cmp.n378 = icmp eq i64 %i.jy, %n.vec363
  br i1 %cmp.n378, label %._crit_edge338.i, label %.lr.ph337.i.preheader

.lr.ph337.i.preheader:                            ; preds = %vector.memcheck306, %iter.check358, %vec.epilog.iter.check360, %vec.epilog.middle.block377
  %.1240336.i.ph = phi i32 [ %.0239.lcssa.i, %iter.check358 ], [ %.0239.lcssa.i, %vector.memcheck306 ], [ %i.kf, %vec.epilog.iter.check360 ], [ %i.kr, %vec.epilog.middle.block377 ] ; 4 uses
  %.1242335.i.ph = phi ptr [ %.0241.lcssa.i, %iter.check358 ], [ %.0241.lcssa.i, %vector.memcheck306 ], [ %i.kg, %vec.epilog.iter.check360 ], [ %i.ks, %vec.epilog.middle.block377 ] ; 3 uses
  %.1244334.i.ph = phi ptr [ %.0243.lcssa.i, %iter.check358 ], [ %.0243.lcssa.i, %vector.memcheck306 ], [ %i.kh, %vec.epilog.iter.check360 ], [ %i.kt, %vec.epilog.middle.block377 ] ; 3 uses
  %.1246333.i.ph = phi ptr [ %.0245.lcssa.i, %iter.check358 ], [ %.0245.lcssa.i, %vector.memcheck306 ], [ %i.ki, %vec.epilog.iter.check360 ], [ %i.ku, %vec.epilog.middle.block377 ] ; 3 uses
  %.1248332.i.ph = phi ptr [ %.0247.lcssa.i, %iter.check358 ], [ %.0247.lcssa.i, %vector.memcheck306 ], [ %i.kj, %vec.epilog.iter.check360 ], [ %i.kv, %vec.epilog.middle.block377 ] ; 3 uses
  %.5331.i.ph = phi ptr [ %.4.lcssa.i, %iter.check358 ], [ %.4.lcssa.i, %vector.memcheck306 ], [ %i.kl, %vec.epilog.iter.check360 ], [ %i.kx, %vec.epilog.middle.block377 ] ; 6 uses
  %i.lc = sub i32 %.sroa.speculated, %.1240336.i.ph
  %.neg = add i32 %.1240336.i.ph, 1
  %xtraiter = and i32 %i.lc, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph337.i.prol.loopexit, label %.lr.ph337.i.prol

.lr.ph337.i.prol:                                 ; preds = %.lr.ph337.i.preheader
  %i.ld = load i8, ptr %.1248332.i.ph, align 1, !tbaa !89
  store i8 %i.ld, ptr %.5331.i.ph, align 1, !tbaa !89
  %i.le = load i8, ptr %.1246333.i.ph, align 1, !tbaa !89
  %i.lf = getelementptr inbounds nuw i8, ptr %.5331.i.ph, i64 1
  store i8 %i.le, ptr %i.lf, align 1, !tbaa !89
  %i.lg = load i8, ptr %.1244334.i.ph, align 1, !tbaa !89
  %i.lh = getelementptr inbounds nuw i8, ptr %.5331.i.ph, i64 2
  store i8 %i.lg, ptr %i.lh, align 1, !tbaa !89
  %i.li = load i8, ptr %.1242335.i.ph, align 1, !tbaa !89
  %i.lj = getelementptr inbounds nuw i8, ptr %.5331.i.ph, i64 3
  store i8 %i.li, ptr %i.lj, align 1, !tbaa !89
  %i.lk = getelementptr inbounds nuw i8, ptr %.5331.i.ph, i64 4 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.1248332.i.ph, i64 1
  %i.lm = getelementptr inbounds nuw i8, ptr %.1246333.i.ph, i64 1
  %i.ln = getelementptr inbounds nuw i8, ptr %.1244334.i.ph, i64 1
  %i.lo = getelementptr inbounds nuw i8, ptr %.1242335.i.ph, i64 1
  %i.lp = add nuw nsw i32 %.1240336.i.ph, 1
  br label %.lr.ph337.i.prol.loopexit

.lr.ph337.i.prol.loopexit:                        ; preds = %.lr.ph337.i.prol, %.lr.ph337.i.preheader
  %.lcssa527.unr = phi ptr [ poison, %.lr.ph337.i.preheader ], [ %i.lk, %.lr.ph337.i.prol ]
  %.1240336.i.unr = phi i32 [ %.1240336.i.ph, %.lr.ph337.i.preheader ], [ %i.lp, %.lr.ph337.i.prol ]
  %.1242335.i.unr = phi ptr [ %.1242335.i.ph, %.lr.ph337.i.preheader ], [ %i.lo, %.lr.ph337.i.prol ]
  %.1244334.i.unr = phi ptr [ %.1244334.i.ph, %.lr.ph337.i.preheader ], [ %i.ln, %.lr.ph337.i.prol ]
  %.1246333.i.unr = phi ptr [ %.1246333.i.ph, %.lr.ph337.i.preheader ], [ %i.lm, %.lr.ph337.i.prol ]
  %.1248332.i.unr = phi ptr [ %.1248332.i.ph, %.lr.ph337.i.preheader ], [ %i.ll, %.lr.ph337.i.prol ]
  %.5331.i.unr = phi ptr [ %.5331.i.ph, %.lr.ph337.i.preheader ], [ %i.lk, %.lr.ph337.i.prol ]
  %i.lq = icmp eq i32 %.sroa.speculated, %.neg
  br i1 %i.lq, label %._crit_edge338.i, label %.lr.ph337.i

.lr.ph324.i:                                      ; preds = %bb.k, %.lr.ph324.i
  %.0239322.i = phi i32 [ %i.mp, %.lr.ph324.i ], [ 0, %bb.k ]
  %.0241321.i = phi ptr [ %i.mo, %.lr.ph324.i ], [ %i.jt, %bb.k ] ; 3 uses
  %.0243320.i = phi ptr [ %i.mn, %.lr.ph324.i ], [ %i.jp, %bb.k ] ; 3 uses
  %.0245319.i = phi ptr [ %i.mm, %.lr.ph324.i ], [ %i.jl, %bb.k ] ; 3 uses
  %.0247318.i = phi ptr [ %i.ml, %.lr.ph324.i ], [ %i.jh, %bb.k ] ; 3 uses
  %.4317.i = phi ptr [ %i.mk, %.lr.ph324.i ], [ %.3272340.i, %bb.k ] ; 9 uses
  %i.lr = load i8, ptr %.0247318.i, align 1, !tbaa !89
  store i8 %i.lr, ptr %.4317.i, align 1, !tbaa !89
  %i.ls = getelementptr inbounds nuw i8, ptr %.0247318.i, i64 1
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !89
  %i.lu = getelementptr inbounds nuw i8, ptr %.4317.i, i64 1
  store i8 %i.lt, ptr %i.lu, align 1, !tbaa !89
  %i.lv = load i8, ptr %.0245319.i, align 1, !tbaa !89
  %i.lw = getelementptr inbounds nuw i8, ptr %.4317.i, i64 2
  store i8 %i.lv, ptr %i.lw, align 1, !tbaa !89
  %i.lx = getelementptr inbounds nuw i8, ptr %.0245319.i, i64 1
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !89
  %i.lz = getelementptr inbounds nuw i8, ptr %.4317.i, i64 3
  store i8 %i.ly, ptr %i.lz, align 1, !tbaa !89
  %i.ma = load i8, ptr %.0243320.i, align 1, !tbaa !89
  %i.mb = getelementptr inbounds nuw i8, ptr %.4317.i, i64 4
  store i8 %i.ma, ptr %i.mb, align 1, !tbaa !89
  %i.mc = getelementptr inbounds nuw i8, ptr %.0243320.i, i64 1
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !89
  %i.me = getelementptr inbounds nuw i8, ptr %.4317.i, i64 5
  store i8 %i.md, ptr %i.me, align 1, !tbaa !89
  %i.mf = load i8, ptr %.0241321.i, align 1, !tbaa !89
  %i.mg = getelementptr inbounds nuw i8, ptr %.4317.i, i64 6
  store i8 %i.mf, ptr %i.mg, align 1, !tbaa !89
  %i.mh = getelementptr inbounds nuw i8, ptr %.0241321.i, i64 1
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !89
  %i.mj = getelementptr inbounds nuw i8, ptr %.4317.i, i64 7
  store i8 %i.mi, ptr %i.mj, align 1, !tbaa !89
  %i.mk = getelementptr inbounds nuw i8, ptr %.4317.i, i64 8 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.0247318.i, i64 2 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.0245319.i, i64 2 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.0243320.i, i64 2 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.0241321.i, i64 2 ; 2 uses
  %i.mp = add nuw nsw i32 %.0239322.i, 2          ; 2 uses
  %i.mq = or disjoint i32 %i.mp, 1
  %i.mr = icmp slt i32 %i.mq, %.sroa.speculated
  br i1 %i.mr, label %.lr.ph324.i, label %.preheader277.i, !llvm.loop !615

.lr.ph337.i:                                      ; preds = %.lr.ph337.i.prol.loopexit, %.lr.ph337.i
  %.1240336.i = phi i32 [ %i.nq, %.lr.ph337.i ], [ %.1240336.i.unr, %.lr.ph337.i.prol.loopexit ]
  %.1242335.i = phi ptr [ %i.np, %.lr.ph337.i ], [ %.1242335.i.unr, %.lr.ph337.i.prol.loopexit ] ; 3 uses
  %.1244334.i = phi ptr [ %i.no, %.lr.ph337.i ], [ %.1244334.i.unr, %.lr.ph337.i.prol.loopexit ] ; 3 uses
  %.1246333.i = phi ptr [ %i.nn, %.lr.ph337.i ], [ %.1246333.i.unr, %.lr.ph337.i.prol.loopexit ] ; 3 uses
  %.1248332.i = phi ptr [ %i.nm, %.lr.ph337.i ], [ %.1248332.i.unr, %.lr.ph337.i.prol.loopexit ] ; 3 uses
  %.5331.i = phi ptr [ %i.nl, %.lr.ph337.i ], [ %.5331.i.unr, %.lr.ph337.i.prol.loopexit ] ; 9 uses
  %i.ms = load i8, ptr %.1248332.i, align 1, !tbaa !89
  store i8 %i.ms, ptr %.5331.i, align 1, !tbaa !89
  %i.mt = load i8, ptr %.1246333.i, align 1, !tbaa !89
  %i.mu = getelementptr inbounds nuw i8, ptr %.5331.i, i64 1
  store i8 %i.mt, ptr %i.mu, align 1, !tbaa !89
  %i.mv = load i8, ptr %.1244334.i, align 1, !tbaa !89
  %i.mw = getelementptr inbounds nuw i8, ptr %.5331.i, i64 2
  store i8 %i.mv, ptr %i.mw, align 1, !tbaa !89
  %i.mx = load i8, ptr %.1242335.i, align 1, !tbaa !89
  %i.my = getelementptr inbounds nuw i8, ptr %.5331.i, i64 3
  store i8 %i.mx, ptr %i.my, align 1, !tbaa !89
  %i.mz = getelementptr inbounds nuw i8, ptr %.5331.i, i64 4
  %i.na = getelementptr inbounds nuw i8, ptr %.1248332.i, i64 1
  %i.nb = getelementptr inbounds nuw i8, ptr %.1246333.i, i64 1
  %i.nc = getelementptr inbounds nuw i8, ptr %.1244334.i, i64 1
  %i.nd = getelementptr inbounds nuw i8, ptr %.1242335.i, i64 1
  %i.ne = load i8, ptr %i.na, align 1, !tbaa !89
  store i8 %i.ne, ptr %i.mz, align 1, !tbaa !89
  %i.nf = load i8, ptr %i.nb, align 1, !tbaa !89
  %i.ng = getelementptr inbounds nuw i8, ptr %.5331.i, i64 5
  store i8 %i.nf, ptr %i.ng, align 1, !tbaa !89
  %i.nh = load i8, ptr %i.nc, align 1, !tbaa !89
  %i.ni = getelementptr inbounds nuw i8, ptr %.5331.i, i64 6
  store i8 %i.nh, ptr %i.ni, align 1, !tbaa !89
  %i.nj = load i8, ptr %i.nd, align 1, !tbaa !89
  %i.nk = getelementptr inbounds nuw i8, ptr %.5331.i, i64 7
  store i8 %i.nj, ptr %i.nk, align 1, !tbaa !89
  %i.nl = getelementptr inbounds nuw i8, ptr %.5331.i, i64 8 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.1248332.i, i64 2
  %i.nn = getelementptr inbounds nuw i8, ptr %.1246333.i, i64 2
  %i.no = getelementptr inbounds nuw i8, ptr %.1244334.i, i64 2
  %i.np = getelementptr inbounds nuw i8, ptr %.1242335.i, i64 2
  %i.nq = add nuw nsw i32 %.1240336.i, 2          ; 2 uses
  %exitcond404.not.i.1 = icmp eq i32 %i.nq, %.sroa.speculated
  br i1 %exitcond404.not.i.1, label %._crit_edge338.i, label %.lr.ph337.i, !llvm.loop !616

._crit_edge338.i:                                 ; preds = %.lr.ph337.i.prol.loopexit, %.lr.ph337.i, %middle.block350, %vec.epilog.middle.block377, %.preheader277.i
  %.5.lcssa.i = phi ptr [ %.4.lcssa.i, %.preheader277.i ], [ %i.kx, %vec.epilog.middle.block377 ], [ %i.kl, %middle.block350 ], [ %.lcssa527.unr, %.lr.ph337.i.prol.loopexit ], [ %i.nl, %.lr.ph337.i ] ; 2 uses
  %indvars.iv.next406.i = add nuw nsw i64 %indvars.iv405.i, 4 ; 3 uses
  %i.nr = icmp slt i64 %indvars.iv.next406.i, %invariant.op.i
  br i1 %i.nr, label %bb.k, label %.preheader276.loopexit.i, !llvm.loop !617

.preheader.loopexit.i:                            ; preds = %._crit_edge360.i
  %i.ns = trunc nuw nsw i64 %indvars.iv.next410.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader276.i
  %.6.lcssa.i = phi ptr [ %.3272.lcssa.i, %.preheader276.i ], [ %.8.lcssa.i, %.preheader.loopexit.i ]
  %.2.lcssa.i = phi i32 [ %.1268.lcssa.i, %.preheader276.i ], [ %i.ns, %.preheader.loopexit.i ] ; 2 uses
  %i.nt = icmp slt i32 %.2.lcssa.i, %.sroa.speculated81
  br i1 %i.nt, label %.lr.ph376.i, label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph376.i:                                      ; preds = %.preheader.i
  %i.nu = sext i32 %.0117 to i64                  ; 2 uses
  %i.nv = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.nv, label %.lr.ph371.preheader.i, label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph371.preheader.i:                            ; preds = %.lr.ph376.i
  %i.nw = sext i32 %.2.lcssa.i to i64
  %wide.trip.count.i = sext i32 %.sroa.speculated81 to i64
  %i.nx = zext nneg i32 %.sroa.speculated to i64  ; 5 uses
  %min.iters.check = icmp ult i32 %.sroa.speculated, 8
  %min.iters.check236 = icmp ult i32 %.sroa.speculated, 128
  %i.ny = and i64 %i.nx, 120
  %n.vec = and i64 %i.nx, 2147483520              ; 6 uses
  %i.nz = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.nx
  %min.epilog.iters.check = icmp eq i64 %i.ny, 0
  %n.vec243 = and i64 %i.nx, 2147483640           ; 5 uses
  %i.oa = trunc nuw nsw i64 %n.vec243 to i32
  %cmp.n249 = icmp eq i64 %n.vec243, %i.nx
  br label %iter.check

bb.l:                                             ; preds = %._crit_edge360.i, %.lr.ph364.i
  %indvars.iv409.i = phi i64 [ %i.is, %.lr.ph364.i ], [ %indvars.iv.next410.i, %._crit_edge360.i ] ; 2 uses
  %.6362.i = phi ptr [ %.3272.lcssa.i, %.lr.ph364.i ], [ %.8.lcssa.i, %._crit_edge360.i ] ; 3 uses
  %i.ob = add nsw i64 %indvars.iv409.i, %i.aj     ; 2 uses
  %i.oc = load ptr, ptr %i.z, align 8, !tbaa !24  ; 2 uses
  %i.od = load i32, ptr %i.aa, align 4, !tbaa !77
  %i.oe = sext i32 %i.od to i64
  %i.of = load i64, ptr %i.ab, align 8, !tbaa !63
  %i.og = mul i64 %i.of, %i.oe                    ; 2 uses
  %i.oh = mul i64 %i.og, %i.ob
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.oh
  %i.oj = getelementptr inbounds i8, ptr %i.oi, i64 %i.ip ; 3 uses
  %i.ok = add nsw i64 %i.ob, 1
  %i.ol = mul i64 %i.og, %i.ok
  %i.om = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.ol
  %i.on = getelementptr inbounds i8, ptr %i.om, i64 %i.ip ; 3 uses
  br i1 %i.iq, label %.lr.ph350.i.preheader, label %.preheader275.i

.lr.ph350.i.preheader:                            ; preds = %bb.l
  br i1 %i.ix, label %.lr.ph350.i.epil.preheader, label %.lr.ph350.i

.preheader275.i.loopexit.unr-lcssa:               ; preds = %.lr.ph350.i
  br i1 %lcmp.mod546.not.not, label %.lr.ph350.i.epil.preheader, label %.preheader275.i

.lr.ph350.i.epil.preheader:                       ; preds = %.preheader275.i.loopexit.unr-lcssa, %.lr.ph350.i.preheader
  %.0235347.i.epil.init = phi ptr [ %i.on, %.lr.ph350.i.preheader ], [ %i.rk, %.preheader275.i.loopexit.unr-lcssa ] ; 3 uses
  %.0237346.i.epil.init = phi ptr [ %i.oj, %.lr.ph350.i.preheader ], [ %i.rj, %.preheader275.i.loopexit.unr-lcssa ] ; 3 uses
  %.7345.i.epil.init = phi ptr [ %.6362.i, %.lr.ph350.i.preheader ], [ %i.ri, %.preheader275.i.loopexit.unr-lcssa ] ; 5 uses
  call void @llvm.assume(i1 %lcmp.mod550)
  %i.oo = load i8, ptr %.0237346.i.epil.init, align 1, !tbaa !89
  store i8 %i.oo, ptr %.7345.i.epil.init, align 1, !tbaa !89
  %i.op = getelementptr inbounds nuw i8, ptr %.0237346.i.epil.init, i64 1
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !89
  %i.or = getelementptr inbounds nuw i8, ptr %.7345.i.epil.init, i64 1
  store i8 %i.oq, ptr %i.or, align 1, !tbaa !89
  %i.os = load i8, ptr %.0235347.i.epil.init, align 1, !tbaa !89
  %i.ot = getelementptr inbounds nuw i8, ptr %.7345.i.epil.init, i64 2
  store i8 %i.os, ptr %i.ot, align 1, !tbaa !89
  %i.ou = getelementptr inbounds nuw i8, ptr %.0235347.i.epil.init, i64 1
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !89
  %i.ow = getelementptr inbounds nuw i8, ptr %.7345.i.epil.init, i64 3
  store i8 %i.ov, ptr %i.ow, align 1, !tbaa !89
  %i.ox = getelementptr inbounds nuw i8, ptr %.7345.i.epil.init, i64 4
  %i.oy = getelementptr inbounds nuw i8, ptr %.0237346.i.epil.init, i64 2
  %i.oz = getelementptr inbounds nuw i8, ptr %.0235347.i.epil.init, i64 2
  br label %.preheader275.i

.preheader275.i:                                  ; preds = %.lr.ph350.i.epil.preheader, %.preheader275.i.loopexit.unr-lcssa, %bb.l
  %.7.lcssa.i = phi ptr [ %.6362.i, %bb.l ], [ %i.ri, %.preheader275.i.loopexit.unr-lcssa ], [ %i.ox, %.lr.ph350.i.epil.preheader ] ; 11 uses
  %.0237.lcssa.i = phi ptr [ %i.oj, %bb.l ], [ %i.rj, %.preheader275.i.loopexit.unr-lcssa ], [ %i.oy, %.lr.ph350.i.epil.preheader ] ; 8 uses
  %.0235.lcssa.i = phi ptr [ %i.on, %bb.l ], [ %i.rk, %.preheader275.i.loopexit.unr-lcssa ], [ %i.oz, %.lr.ph350.i.epil.preheader ] ; 8 uses
  %.0234.lcssa.i = phi i32 [ 0, %bb.l ], [ %i.ir, %.preheader275.i.loopexit.unr-lcssa ], [ %i.ir, %.lr.ph350.i.epil.preheader ] ; 7 uses
  %i.pa = icmp slt i32 %.0234.lcssa.i, %.sroa.speculated
  br i1 %i.pa, label %iter.check285, label %._crit_edge360.i

iter.check285:                                    ; preds = %.preheader275.i
  %i.pb = xor i32 %.0234.lcssa.i, -1
  %i.pc = add i32 %.sroa.speculated, %i.pb        ; 3 uses
  %i.pd = zext i32 %i.pc to i64
  %i.pe = add nuw nsw i64 %i.pd, 1                ; 5 uses
  %min.iters.check262 = icmp ult i32 %i.pc, 3
  br i1 %min.iters.check262, label %.lr.ph359.i.preheader, label %vector.memcheck253

vector.memcheck253:                               ; preds = %iter.check285
  %scevgep = getelementptr i8, ptr %.7.lcssa.i, i64 2
  %i.pf = xor i32 %.0234.lcssa.i, -1
  %i.pg = add i32 %.sroa.speculated, %i.pf
  %i.ph = zext i32 %i.pg to i64                   ; 3 uses
  %i.pi = shl nuw nsw i64 %i.ph, 1
  %scevgep254 = getelementptr i8, ptr %scevgep, i64 %i.pi ; 2 uses
  %scevgep255 = getelementptr i8, ptr %.0235.lcssa.i, i64 1
  %scevgep256 = getelementptr i8, ptr %scevgep255, i64 %i.ph
  %scevgep257 = getelementptr i8, ptr %.0237.lcssa.i, i64 1
  %scevgep258 = getelementptr i8, ptr %scevgep257, i64 %i.ph
  %bound0 = icmp ult ptr %.7.lcssa.i, %scevgep256
  %bound1 = icmp ult ptr %.0235.lcssa.i, %scevgep254
  %found.conflict = and i1 %bound0, %bound1
  %bound0259 = icmp ult ptr %.7.lcssa.i, %scevgep258
  %bound1260 = icmp ult ptr %.0237.lcssa.i, %scevgep254
  %found.conflict261 = and i1 %bound0259, %bound1260
  %conflict.rdx = or i1 %found.conflict, %found.conflict261
  br i1 %conflict.rdx, label %.lr.ph359.i.preheader, label %vector.main.loop.iter.check263

vector.main.loop.iter.check263:                   ; preds = %vector.memcheck253
  %min.iters.check264 = icmp ult i32 %i.pc, 15
  br i1 %min.iters.check264, label %vec.epilog.ph289, label %vector.ph265

vector.ph265:                                     ; preds = %vector.main.loop.iter.check263
  %i.pj = and i64 %i.pe, 12
  %n.vec266 = and i64 %i.pe, 8589934576           ; 7 uses
  %i.pk = trunc i64 %n.vec266 to i32
  %i.pl = add i32 %.0234.lcssa.i, %i.pk
  %i.pm = getelementptr i8, ptr %.0235.lcssa.i, i64 %n.vec266
  %i.pn = getelementptr i8, ptr %.0237.lcssa.i, i64 %n.vec266
  %i.po = shl nuw nsw i64 %n.vec266, 1
  %i.pp = getelementptr i8, ptr %.7.lcssa.i, i64 %i.po ; 2 uses
  br label %vector.body267

vector.body267:                                   ; preds = %vector.body267, %vector.ph265
  %index268 = phi i64 [ 0, %vector.ph265 ], [ %index.next278, %vector.body267 ] ; 4 uses
  %next.gep269 = getelementptr i8, ptr %.0235.lcssa.i, i64 %index268 ; 2 uses
  %next.gep270 = getelementptr i8, ptr %.0237.lcssa.i, i64 %index268 ; 2 uses
  %i.pq = shl i64 %index268, 1                    ; 2 uses
  %next.gep271 = getelementptr i8, ptr %.7.lcssa.i, i64 %i.pq
  %i.pr = getelementptr i8, ptr %.7.lcssa.i, i64 %i.pq
  %next.gep272 = getelementptr i8, ptr %i.pr, i64 16
  %i.ps = getelementptr i8, ptr %next.gep270, i64 8
  %wide.load273 = load <8 x i8>, ptr %next.gep270, align 1, !tbaa !89, !alias.scope !667
  %wide.load274 = load <8 x i8>, ptr %i.ps, align 1, !tbaa !89, !alias.scope !667
  %i.pt = getelementptr i8, ptr %next.gep269, i64 8
  %wide.load275 = load <8 x i8>, ptr %next.gep269, align 1, !tbaa !89, !alias.scope !668
  %wide.load276 = load <8 x i8>, ptr %i.pt, align 1, !tbaa !89, !alias.scope !668
  %interleaved.vec = shufflevector <8 x i8> %wide.load273, <8 x i8> %wide.load275, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %next.gep271, align 1, !tbaa !89, !alias.scope !669, !noalias !670
  %interleaved.vec277 = shufflevector <8 x i8> %wide.load274, <8 x i8> %wide.load276, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec277, ptr %next.gep272, align 1, !tbaa !89, !alias.scope !669, !noalias !670
  %index.next278 = add nuw i64 %index268, 16      ; 2 uses
  %i.pu = icmp eq i64 %index.next278, %n.vec266
  br i1 %i.pu, label %middle.block279, label %vector.body267, !llvm.loop !622

middle.block279:                                  ; preds = %vector.body267
  %cmp.n280 = icmp eq i64 %i.pe, %n.vec266
  br i1 %cmp.n280, label %._crit_edge360.i, label %vec.epilog.iter.check287

vec.epilog.iter.check287:                         ; preds = %middle.block279
  %min.epilog.iters.check288 = icmp eq i64 %i.pj, 0
  br i1 %min.epilog.iters.check288, label %.lr.ph359.i.preheader, label %vec.epilog.ph289, !prof !103

vec.epilog.ph289:                                 ; preds = %vector.main.loop.iter.check263, %vec.epilog.iter.check287
  %vec.epilog.resume.val281 = phi i64 [ %n.vec266, %vec.epilog.iter.check287 ], [ 0, %vector.main.loop.iter.check263 ]
  %n.vec290 = and i64 %i.pe, 8589934588           ; 6 uses
  %i.pv = trunc i64 %n.vec290 to i32
  %i.pw = add i32 %.0234.lcssa.i, %i.pv
  %i.px = getelementptr i8, ptr %.0235.lcssa.i, i64 %n.vec290
  %i.py = getelementptr i8, ptr %.0237.lcssa.i, i64 %n.vec290
  %i.pz = shl nuw nsw i64 %n.vec290, 1
  %i.qa = getelementptr i8, ptr %.7.lcssa.i, i64 %i.pz ; 2 uses
  br label %vec.epilog.vector.body291

vec.epilog.vector.body291:                        ; preds = %vec.epilog.vector.body291, %vec.epilog.ph289
  %index292 = phi i64 [ %vec.epilog.resume.val281, %vec.epilog.ph289 ], [ %index.next299, %vec.epilog.vector.body291 ] ; 4 uses
  %next.gep293 = getelementptr i8, ptr %.0235.lcssa.i, i64 %index292
  %next.gep294 = getelementptr i8, ptr %.0237.lcssa.i, i64 %index292
  %i.qb = shl i64 %index292, 1
  %next.gep295 = getelementptr i8, ptr %.7.lcssa.i, i64 %i.qb
  %wide.load296 = load <4 x i8>, ptr %next.gep294, align 1, !tbaa !89, !alias.scope !667
  %wide.load297 = load <4 x i8>, ptr %next.gep293, align 1, !tbaa !89, !alias.scope !668
  %interleaved.vec298 = shufflevector <4 x i8> %wide.load296, <4 x i8> %wide.load297, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec298, ptr %next.gep295, align 1, !tbaa !89, !alias.scope !669, !noalias !670
  %index.next299 = add nuw i64 %index292, 4       ; 2 uses
  %i.qc = icmp eq i64 %index.next299, %n.vec290
  br i1 %i.qc, label %vec.epilog.middle.block300, label %vec.epilog.vector.body291, !llvm.loop !623

vec.epilog.middle.block300:                       ; preds = %vec.epilog.vector.body291
  %cmp.n301 = icmp eq i64 %i.pe, %n.vec290
  br i1 %cmp.n301, label %._crit_edge360.i, label %.lr.ph359.i.preheader

.lr.ph359.i.preheader:                            ; preds = %vector.memcheck253, %iter.check285, %vec.epilog.iter.check287, %vec.epilog.middle.block300
  %.1358.i.ph = phi i32 [ %.0234.lcssa.i, %iter.check285 ], [ %.0234.lcssa.i, %vector.memcheck253 ], [ %i.pl, %vec.epilog.iter.check287 ], [ %i.pw, %vec.epilog.middle.block300 ] ; 4 uses
  %.1236357.i.ph = phi ptr [ %.0235.lcssa.i, %iter.check285 ], [ %.0235.lcssa.i, %vector.memcheck253 ], [ %i.pm, %vec.epilog.iter.check287 ], [ %i.px, %vec.epilog.middle.block300 ] ; 2 uses
  %.1238356.i.ph = phi ptr [ %.0237.lcssa.i, %iter.check285 ], [ %.0237.lcssa.i, %vector.memcheck253 ], [ %i.pn, %vec.epilog.iter.check287 ], [ %i.py, %vec.epilog.middle.block300 ] ; 2 uses
  %.8355.i.ph = phi ptr [ %.7.lcssa.i, %iter.check285 ], [ %.7.lcssa.i, %vector.memcheck253 ], [ %i.pp, %vec.epilog.iter.check287 ], [ %i.qa, %vec.epilog.middle.block300 ] ; 2 uses
  %i.qd = sub i32 %.sroa.speculated, %.1358.i.ph
  %xtraiter551 = and i32 %i.qd, 3                 ; 2 uses
  %lcmp.mod552.not = icmp eq i32 %xtraiter551, 0
  br i1 %lcmp.mod552.not, label %.lr.ph359.i.prol.loopexit, label %.lr.ph359.i.prol

.lr.ph359.i.prol:                                 ; preds = %.lr.ph359.i.preheader, %.lr.ph359.i.prol
  %.1358.i.prol = phi i32 [ %i.qk, %.lr.ph359.i.prol ], [ %.1358.i.ph, %.lr.ph359.i.preheader ]
  %.1236357.i.prol = phi ptr [ %i.qj, %.lr.ph359.i.prol ], [ %.1236357.i.ph, %.lr.ph359.i.preheader ] ; 2 uses
  %.1238356.i.prol = phi ptr [ %i.qi, %.lr.ph359.i.prol ], [ %.1238356.i.ph, %.lr.ph359.i.preheader ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnnL29unpack_output_tile_dequantizeERKNS_3MatES2_RS0_iiiiiS2_ffi:bb.a
  %i.awh = getelementptr inbounds nuw i8, ptr %.323774.i, i64 %.sink4008.i ; 2 uses
  br i1 %i.bs, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.awi = fadd fast <4 x float> %.133322.i, %i.avb
  %i.awj = fadd fast <4 x float> %.03213.i, %i.avc
  br label %.thread3530.i

bb.fc:                                            ; preds = %bb.fa
  %i.awk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.133322.i, <4 x float> nofpclass(nan inf) %i.bp, <4 x float> nofpclass(nan inf) %i.avb)
  %i.awl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.03213.i, <4 x float> nofpclass(nan inf) %i.bp, <4 x float> nofpclass(nan inf) %i.avc)
  br label %.thread3530.i

bb.fd:                                            ; preds = %bb.ew
  %i.awm = load <2 x float>, ptr %.323774.i, align 4, !tbaa !68
  %i.awn = fmul fast <2 x float> %i.awm, %i.cg    ; 2 uses
  %i.awo = shufflevector <2 x float> %i.awn, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.awp = shufflevector <2 x float> %i.awn, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.awq = fadd fast <4 x float> %i.awo, %i.avb
  %i.awr = fadd fast <4 x float> %i.awp, %i.avc
  %i.aws = getelementptr inbounds nuw i8, ptr %.323774.i, i64 8
  br label %.thread3530.i

.thread3530.i:                                    ; preds = %bb.fd, %bb.fc, %bb.fb, %bb.ew, %bb.ev, %.thread3521.i, %.lr.ph3775.i
  %.153324.i = phi nsz <4 x float> [ %.1233213770.i, %.lr.ph3775.i ], [ %i.awo, %bb.fd ], [ %.1233213770.i, %bb.ew ], [ %.133322.i, %bb.fb ], [ %.133322.i, %bb.fc ], [ %.1233213770.i, %.thread3521.i ], [ %.1233213770.i, %bb.ev ] ; 2 uses
  %.43224.i = phi nsz <4 x float> [ %i.avb, %.lr.ph3775.i ], [ %i.awq, %bb.fd ], [ %i.avb, %bb.ew ], [ %i.awi, %bb.fb ], [ %i.awk, %bb.fc ], [ %i.avd, %.thread3521.i ], [ %i.avf, %bb.ev ]
  %.43218.i = phi nsz <4 x float> [ %i.avc, %.lr.ph3775.i ], [ %i.awr, %bb.fd ], [ %i.avc, %bb.ew ], [ %i.awj, %bb.fb ], [ %i.awl, %bb.fc ], [ %i.ave, %.thread3521.i ], [ %i.avg, %bb.ev ]
  %.35.i = phi ptr [ null, %.lr.ph3775.i ], [ %i.aws, %bb.fd ], [ %.323774.i, %bb.ew ], [ %i.awh, %bb.fb ], [ %i.awh, %bb.fc ], [ %.323774.i, %.thread3521.i ], [ %.323774.i, %bb.ev ] ; 2 uses
  %.53225.i = fmul reassoc nsz arcp contract afn <4 x float> %.43224.i, %i.bw ; 6 uses
  %.53219.i = fmul reassoc nsz arcp contract afn <4 x float> %.43218.i, %i.bw ; 6 uses
  br i1 %.not2029.i, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %.thread3530.i
  store <4 x float> %.53225.i, ptr %.719683772.i, align 1, !tbaa !89
  %i.awt = getelementptr inbounds nuw [4 x i8], ptr %.719683772.i, i64 %i.l
  store <4 x float> %.53219.i, ptr %i.awt, align 1, !tbaa !89
  %i.awu = getelementptr inbounds nuw i8, ptr %.719683772.i, i64 %.idx2054.i
  br label %bb.fh

bb.ff:                                            ; preds = %.thread3530.i
  switch i32 %i.c, label %bb.fh [
    i32 4, label %.thread3535.i
    i32 1, label %bb.fg
  ]

.thread3535.i:                                    ; preds = %bb.ff
  store <4 x float> %.53225.i, ptr %.719683772.i, align 16, !tbaa !89
  %i.awv = getelementptr inbounds nuw i8, ptr %.719683772.i, i64 16
  store <4 x float> %.53219.i, ptr %i.awv, align 16, !tbaa !89
  %i.aww = getelementptr inbounds nuw i8, ptr %.719683772.i, i64 32
  br label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %.sroa.02275.0.vec.extract.i = extractelement <4 x float> %.53225.i, i64 0
  store float %.sroa.02275.0.vec.extract.i, ptr %.719683772.i, align 4, !tbaa !68
  %.sroa.72276.16.vec.extract.i = extractelement <4 x float> %.53219.i, i64 0
  %i.awx = getelementptr inbounds nuw i8, ptr %.719683772.i, i64 4
  store float %.sroa.72276.16.vec.extract.i, ptr %i.awx, align 4, !tbaa !68
  %i.awy = getelementptr inbounds nuw [4 x i8], ptr %.719683772.i, i64 %i.l
  %i.awz = shufflevector <4 x float> %.53225.i, <4 x float> %.53219.i, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.awz, ptr %i.awy, align 4, !tbaa !68
  %i.axa = getelementptr inbounds nuw i8, ptr %.719683772.i, i64 %.idx2054.i
  %i.axb = shufflevector <4 x float> %.53225.i, <4 x float> %.53219.i, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.axb, ptr %i.axa, align 4, !tbaa !68
  %i.axc = getelementptr inbounds nuw i8, ptr %.719683772.i, i64 %.idx2055.i
  %i.axd = shufflevector <4 x float> %.53225.i, <4 x float> %.53219.i, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.axd, ptr %i.axc, align 4, !tbaa !68
  %i.axe = getelementptr inbounds nuw i8, ptr %.719683772.i, i64 8
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %.thread3535.i, %bb.ff, %bb.fe
  %.91970.i = phi ptr [ %i.awu, %bb.fe ], [ %i.axe, %bb.fg ], [ %.719683772.i, %bb.ff ], [ %i.aww, %.thread3535.i ] ; 2 uses
  %i.axf = getelementptr inbounds nuw i8, ptr %.819013773.i, i64 32 ; 2 uses
  %i.axg = add nuw nsw i32 %.219763771.i, 2       ; 3 uses
  %i.axh = or disjoint i32 %i.axg, 1
  %i.axi = icmp slt i32 %i.axh, %7
  br i1 %i.axi, label %.lr.ph3775.i, label %.preheader3685.i, !llvm.loop !741

.lr.ph3786.i:                                     ; preds = %.preheader3685.i, %bb.fu
  %.363785.i = phi ptr [ %.39.i, %bb.fu ], [ %.32.lcssa.i, %.preheader3685.i ] ; 12 uses
  %.919023784.i = phi ptr [ %i.ayp, %bb.fu ], [ %.81901.lcssa.i, %.preheader3685.i ] ; 2 uses
  %.1019713783.i = phi ptr [ %.121973.i, %bb.fu ], [ %.71968.lcssa.i, %.preheader3685.i ] ; 10 uses
  %.319773782.i = phi i32 [ %i.ayq, %bb.fu ], [ %.21976.lcssa.i, %.preheader3685.i ]
  %.1633253781.i = phi <4 x float> [ %.193328.i, %bb.fu ], [ %.123321.lcssa.i, %.preheader3685.i ] ; 6 uses
  %i.axj = load <4 x i32>, ptr %.919023784.i, align 16, !tbaa !89
  %i.axk = sitofp fast <4 x i32> %i.axj to <4 x float>
  %i.axl = fmul fast <4 x float> %i.afp, %i.axk   ; 6 uses
  %.not2031.i = icmp eq ptr %.363785.i, null
  br i1 %.not2031.i, label %.thread3544.i, label %bb.fi

bb.fi:                                            ; preds = %.lr.ph3786.i
  br i1 %i.bk, label %.thread3537.i, label %bb.fj

.thread3537.i:                                    ; preds = %bb.fi
  %i.axm = fadd fast <4 x float> %i.axl, %.1633253781.i
  br label %.thread3544.i

bb.fj:                                            ; preds = %bb.fi
  br i1 %or.cond11.i, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.axn = fadd fast <4 x float> %i.axl, %.1633253781.i
  br label %.thread3544.i

bb.fl:                                            ; preds = %bb.fj
  switch i32 %3, label %.thread3544.i [
    i32 3, label %bb.fm
    i32 4, label %bb.fq
  ]

bb.fm:                                            ; preds = %bb.fl
  br i1 %i.br, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.axo = load <4 x float>, ptr %.363785.i, align 1, !tbaa !89
  br label %bb.fp

bb.fo:                                            ; preds = %bb.fm
  %i.axp = load float, ptr %.363785.i, align 4, !tbaa !68
  %i.axq = getelementptr inbounds nuw [4 x i8], ptr %.363785.i, i64 %i.u
  %i.axr = load float, ptr %i.axq, align 4, !tbaa !68
  %i.axs = getelementptr inbounds nuw i8, ptr %.363785.i, i64 %.idx2047.i
  %i.axt = load float, ptr %i.axs, align 4, !tbaa !68
  %i.axu = getelementptr inbounds nuw i8, ptr %.363785.i, i64 %.idx2048.i
  %i.axv = load float, ptr %i.axu, align 4, !tbaa !68
  %i.axw = insertelement <4 x float> poison, float %i.axp, i64 0
  %i.axx = insertelement <4 x float> %i.axw, float %i.axr, i64 1
  %i.axy = insertelement <4 x float> %i.axx, float %i.axt, i64 2
  %i.axz = insertelement <4 x float> %i.axy, float %i.axv, i64 3
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %.sink4009.i = phi i64 [ 4, %bb.fo ], [ 16, %bb.fn ]
  %.173326.i = phi nsz <4 x float> [ %i.axz, %bb.fo ], [ %i.axo, %bb.fn ] ; 2 uses
  %i.aya = getelementptr inbounds nuw i8, ptr %.363785.i, i64 %.sink4009.i
  %i.ayb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.173326.i, <4 x float> nofpclass(nan inf) %i.bp, <4 x float> nofpclass(nan inf) %i.axl)
  br label %.thread3544.i

bb.fq:                                            ; preds = %bb.fl
  %i.ayc = load float, ptr %.363785.i, align 4, !tbaa !68
  %i.ayd = fmul fast float %i.ayc, %10
  %i.aye = insertelement <4 x float> poison, float %i.ayd, i64 0
  %i.ayf = shufflevector <4 x float> %i.aye, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ayg = fadd fast <4 x float> %i.ayf, %i.axl
  %i.ayh = getelementptr inbounds nuw i8, ptr %.363785.i, i64 4
  br label %.thread3544.i

.thread3544.i:                                    ; preds = %bb.fq, %bb.fp, %bb.fl, %bb.fk, %.thread3537.i, %.lr.ph3786.i
  %.193328.i = phi nsz <4 x float> [ %.1633253781.i, %.lr.ph3786.i ], [ %i.ayf, %bb.fq ], [ %.1633253781.i, %bb.fl ], [ %.173326.i, %bb.fp ], [ %.1633253781.i, %.thread3537.i ], [ %.1633253781.i, %bb.fk ]
  %.33194.i = phi nsz <4 x float> [ %i.axl, %.lr.ph3786.i ], [ %i.ayg, %bb.fq ], [ %i.axl, %bb.fl ], [ %i.ayb, %bb.fp ], [ %i.axm, %.thread3537.i ], [ %i.axn, %bb.fk ]
  %.39.i = phi ptr [ null, %.lr.ph3786.i ], [ %i.ayh, %bb.fq ], [ %.363785.i, %bb.fl ], [ %i.aya, %bb.fp ], [ %.363785.i, %.thread3537.i ], [ %.363785.i, %bb.fk ] ; 2 uses
  %i.ayi = fmul fast <4 x float> %.33194.i, %i.bv ; 6 uses
  br i1 %.not2029.i, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %.thread3544.i
  store <4 x float> %i.ayi, ptr %.1019713783.i, align 1, !tbaa !89
  %i.ayj = getelementptr inbounds nuw [4 x i8], ptr %.1019713783.i, i64 %i.l
  br label %bb.fu

bb.fs:                                            ; preds = %.thread3544.i
  switch i32 %i.c, label %bb.fu [
    i32 4, label %.thread3548.i
    i32 1, label %bb.ft
  ]

.thread3548.i:                                    ; preds = %bb.fs
  store <4 x float> %i.ayi, ptr %.1019713783.i, align 16, !tbaa !89
  %i.ayk = getelementptr inbounds nuw i8, ptr %.1019713783.i, i64 16
  br label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %.sroa.02268.0.vec.extract.i = extractelement <4 x float> %i.ayi, i64 0
  store float %.sroa.02268.0.vec.extract.i, ptr %.1019713783.i, align 4, !tbaa !68
  %.sroa.02268.4.vec.extract.i = extractelement <4 x float> %i.ayi, i64 1
  %i.ayl = getelementptr inbounds nuw [4 x i8], ptr %.1019713783.i, i64 %i.l
  store float %.sroa.02268.4.vec.extract.i, ptr %i.ayl, align 4, !tbaa !68
  %.sroa.02268.8.vec.extract.i = extractelement <4 x float> %i.ayi, i64 2
  %i.aym = getelementptr inbounds nuw i8, ptr %.1019713783.i, i64 %.idx2054.i
  store float %.sroa.02268.8.vec.extract.i, ptr %i.aym, align 4, !tbaa !68
  %.sroa.02268.12.vec.extract.i = extractelement <4 x float> %i.ayi, i64 3
  %i.ayn = getelementptr inbounds nuw i8, ptr %.1019713783.i, i64 %.idx2055.i
  store float %.sroa.02268.12.vec.extract.i, ptr %i.ayn, align 4, !tbaa !68
  %i.ayo = getelementptr inbounds nuw i8, ptr %.1019713783.i, i64 4
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %.thread3548.i, %bb.fs, %bb.fr
  %.121973.i = phi ptr [ %i.ayj, %bb.fr ], [ %i.ayo, %bb.ft ], [ %.1019713783.i, %bb.fs ], [ %i.ayk, %.thread3548.i ]
  %i.ayp = getelementptr inbounds nuw i8, ptr %.919023784.i, i64 16 ; 2 uses
  %i.ayq = add nuw nsw i32 %.319773782.i, 1       ; 2 uses
  %exitcond3922.not.i = icmp eq i32 %i.ayq, %7
  br i1 %exitcond3922.not.i, label %._crit_edge3787.i, label %.lr.ph3786.i, !llvm.loop !742

._crit_edge3787.i:                                ; preds = %bb.fu, %.preheader3685.i
  %.91902.lcssa.i = phi ptr [ %.81901.lcssa.i, %.preheader3685.i ], [ %i.ayp, %bb.fu ] ; 2 uses
  %.36.lcssa.i = phi ptr [ %.32.lcssa.i, %.preheader3685.i ], [ %.39.i, %bb.fu ] ; 2 uses
  %indvars.iv.next3924.i = add nuw nsw i64 %indvars.iv3923.i, 4 ; 3 uses
  %i.ayr = icmp slt i64 %indvars.iv.next3924.i, %invariant.op3995.i
  br i1 %i.ayr, label %bb.co, label %.preheader3684.loopexit.i, !llvm.loop !743

.preheader3680.loopexit.i:                        ; preds = %._crit_edge3835.i
  %i.ays = trunc nuw nsw i64 %indvars.iv.next3928.i to i32
  br label %.preheader3680.i

.preheader3680.i:                                 ; preds = %.preheader3680.loopexit.i, %.preheader3684.i
  %.21915.lcssa.i = phi i32 [ %.11914.lcssa.i, %.preheader3684.i ], [ %i.ays, %.preheader3680.loopexit.i ] ; 2 uses
  %.101903.lcssa.i = phi ptr [ %.51898.lcssa.i, %.preheader3684.i ], [ %.141907.lcssa.i, %.preheader3680.loopexit.i ]
  %.40.lcssa.i = phi ptr [ %.20.lcssa.i, %.preheader3684.i ], [ %.53.lcssa.i, %.preheader3680.loopexit.i ]
  %i.ayt = icmp slt i32 %.21915.lcssa.i, %5
  br i1 %i.ayt, label %.lr.ph3887.i, label %_ZN4ncnnL32unpack_output_tile_int32_to_fp32ERKNS_3MatES2_RS0_iiiiiS2_ffi.exit

.lr.ph3887.i:                                     ; preds = %.preheader3680.i
  %.not2002.i = icmp eq i32 %11, 0                ; 5 uses
  %i.ayu = sext i32 %6 to i64                     ; 4 uses
  %i.ayv = mul i64 %i.l, %i.ayu
  %i.ayw = icmp eq i32 %3, 0
  %i.ayx = add i32 %3, -1
  %or.cond31.i = icmp ult i32 %i.ayx, 2
  %i.ayy = sext i32 %4 to i64                     ; 3 uses
  %i.ayz = icmp sgt i32 %7, 7
  %or.cond35.i = icmp ult i32 %3, 3               ; 4 uses
  %i.aza = add i32 %3, -3
  %or.cond37.i = icmp ult i32 %i.aza, 2           ; 4 uses
  %i.azb = insertelement <4 x float> poison, float %10, i64 0
  %i.azc = shufflevector <4 x float> %i.azb, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.azd = fcmp fast une float %9, 1.000000e+00
  %i.aze = insertelement <4 x float> poison, float %9, i64 0
  %i.azf = shufflevector <4 x float> %i.aze, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.azg = select ninf nsz i1 %i.azd, <4 x float> %i.azf, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %i.azh = icmp eq i64 %i.l, 1                    ; 2 uses
  %.idx2012.i = shl i64 %i.l, 3                   ; 3 uses
  %.idx2013.i = mul i64 %i.l, 12                  ; 2 uses
  %.idx2014.i = shl i64 %i.l, 4                   ; 5 uses
  %.idx2015.i = mul i64 %i.l, 20
  %.idx2016.i = mul i64 %i.l, 24
  %.idx2017.i = mul i64 %i.l, 28
  %.idx2018.i = shl i64 %i.l, 5                   ; 4 uses
  %i.azi = and i32 %7, -8
  %i.azj = sext i32 %.21915.lcssa.i to i64
  %i.azk = sext i32 %i.c to i64
  %wide.trip.count.i = sext i32 %5 to i64
  %i.azl = insertelement <2 x float> poison, float %10, i64 0
  %i.azm = shufflevector <2 x float> %i.azl, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.hu

bb.fv:                                            ; preds = %._crit_edge3835.i, %.lr.ph3842.i
  %indvars.iv3927.i = phi i64 [ %i.aer, %.lr.ph3842.i ], [ %indvars.iv.next3928.i, %._crit_edge3835.i ] ; 4 uses
  %.403841.i = phi ptr [ %.20.lcssa.i, %.lr.ph3842.i ], [ %.53.lcssa.i, %._crit_edge3835.i ] ; 4 uses
  %.1019033840.i = phi ptr [ %.51898.lcssa.i, %.lr.ph3842.i ], [ %.141907.lcssa.i, %._crit_edge3835.i ] ; 2 uses
  %i.azn = load ptr, ptr %2, align 8, !tbaa !24   ; 2 uses
  br i1 %.not2019.i, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.azo = getelementptr inbounds nuw [4 x i8], ptr %i.azn, i64 %i.aed
  %i.azp = add nsw i64 %indvars.iv3927.i, %i.aei  ; 2 uses
  %i.azq = mul nsw i64 %i.azp, %i.aet
  %i.azr = getelementptr inbounds [4 x i8], ptr %i.azo, i64 %i.azq
  br label %bb.fy

bb.fx:                                            ; preds = %bb.fv
  %i.azs = add nsw i64 %indvars.iv3927.i, %i.aei  ; 2 uses
  %i.azt = mul i64 %i.azs, %i.l
  %i.azu = getelementptr inbounds nuw [4 x i8], ptr %i.azn, i64 %i.azt
  %i.azv = getelementptr inbounds [4 x i8], ptr %i.azu, i64 %i.aec
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %.pre-phi.i = phi i64 [ %i.azs, %bb.fx ], [ %i.azp, %bb.fw ] ; 2 uses
  %.01952.i = phi ptr [ %i.azv, %bb.fx ], [ %i.azr, %bb.fw ] ; 2 uses
  %i.azw = load ptr, ptr %8, align 8, !tbaa !24
  %i.azx = getelementptr [4 x i8], ptr %i.azw, i64 %.pre-phi.i
  %i.azy = load <2 x float>, ptr %i.azx, align 4, !tbaa !68 ; 4 uses
  %i.azz = shufflevector <2 x float> %i.azy, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.baa = shufflevector <2 x float> %i.azy, <2 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.bab = shufflevector <2 x float> %i.azy, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 3 uses
  %.not2020.i = icmp eq ptr %.403841.i, null
  br i1 %.not2020.i, label %.thread3566.i, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  br i1 %i.aex, label %.thread3550.i, label %bb.ga

.thread3550.i:                                    ; preds = %bb.fz
  %i.bac = load float, ptr %.403841.i, align 4, !tbaa !68
  %i.bad = fmul fast float %i.bac, %10            ; 3 uses
  %i.bae = insertelement <4 x float> poison, float %i.bad, i64 0
  %i.baf = shufflevector <4 x float> %i.bae, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bag = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bad, i64 0
  br label %.thread3566.i

bb.ga:                                            ; preds = %bb.fz
  br i1 %i.aey, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.bah = load ptr, ptr %1, align 8, !tbaa !24
  %i.bai = getelementptr inbounds [4 x i8], ptr %i.bah, i64 %i.aei
  %i.baj = getelementptr inbounds nuw [4 x i8], ptr %i.bai, i64 %indvars.iv3927.i ; 2 uses
  %i.bak = load <2 x float>, ptr %i.baj, align 4, !tbaa !68
  %i.bal = fmul fast <2 x float> %i.bak, %i.aew   ; 4 uses
  %i.bam = extractelement <2 x float> %i.bal, i64 0
  %i.ban = shufflevector <2 x float> %i.bal, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bao = shufflevector <2 x float> %i.bal, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %.thread3566.i

bb.gc:                                            ; preds = %bb.ga
  switch i32 %3, label %.thread3566.i [
    i32 3, label %bb.gd
    i32 4, label %bb.ge
  ]

bb.gd:                                            ; preds = %bb.gc
  %i.bap = load ptr, ptr %1, align 8, !tbaa !24
  %i.baq = mul i64 %.pre-phi.i, %i.u
  %i.bar = getelementptr inbounds nuw [4 x i8], ptr %i.bap, i64 %i.baq
  %i.bas = getelementptr inbounds [4 x i8], ptr %i.bar, i64 %i.aec
  br label %.thread3566.i

bb.ge:                                            ; preds = %bb.gc
  %i.bat = load ptr, ptr %1, align 8, !tbaa !24
  %i.bau = getelementptr inbounds [4 x i8], ptr %i.bat, i64 %i.aec
  br label %.thread3566.i

.thread3566.i:                                    ; preds = %bb.ge, %bb.gd, %bb.gc, %bb.gb, %.thread3550.i, %bb.fy
  %.23177.i = phi nsz <4 x float> [ zeroinitializer, %bb.fy ], [ zeroinitializer, %bb.ge ], [ zeroinitializer, %bb.gc ], [ zeroinitializer, %bb.gd ], [ %i.baf, %.thread3550.i ], [ %i.ban, %bb.gb ] ; 2 uses
  %.13168.i = phi nsz <4 x float> [ zeroinitializer, %bb.fy ], [ zeroinitializer, %bb.ge ], [ zeroinitializer, %bb.gc ], [ zeroinitializer, %bb.gd ], [ zeroinitializer, %.thread3550.i ], [ %i.bao, %bb.gb ] ; 2 uses
  %.21951.i = phi nsz float [ 0.000000e+00, %bb.fy ], [ 0.000000e+00, %bb.ge ], [ 0.000000e+00, %bb.gc ], [ 0.000000e+00, %bb.gd ], [ %i.bad, %.thread3550.i ], [ %i.bam, %bb.gb ]
  %.43.i = phi ptr [ null, %bb.fy ], [ %i.bau, %bb.ge ], [ %.403841.i, %bb.gc ], [ %i.bas, %bb.gd ], [ %.403841.i, %.thread3550.i ], [ %i.baj, %bb.gb ] ; 2 uses
  %i.bav = phi <2 x float> [ zeroinitializer, %bb.fy ], [ zeroinitializer, %bb.ge ], [ zeroinitializer, %bb.gc ], [ zeroinitializer, %bb.gd ], [ %i.bag, %.thread3550.i ], [ %i.bal, %bb.gb ] ; 3 uses
  %i.baw = shufflevector <2 x float> %i.bav, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  br i1 %i.aej, label %.lr.ph3803.i, label %.preheader3683.i

.preheader3683.i:                                 ; preds = %bb.gv, %.thread3566.i
  %.33178.lcssa.i = phi <4 x float> [ %.23177.i, %.thread3566.i ], [ %.53180.i, %bb.gv ]
  %.23169.lcssa.i = phi <4 x float> [ %.13168.i, %.thread3566.i ], [ %.43171.i, %bb.gv ]
  %.11953.lcssa.i = phi ptr [ %.01952.i, %.thread3566.i ], [ %i.bek, %bb.gv ] ; 2 uses
  %.01943.lcssa.i = phi i32 [ 0, %.thread3566.i ], [ %i.aeq, %bb.gv ] ; 3 uses
  %.111904.lcssa.i = phi ptr [ %.1019033840.i, %.thread3566.i ], [ %i.bel, %bb.gv ] ; 2 uses
  %.44.lcssa.i = phi ptr [ %.43.i, %.thread3566.i ], [ %.46.i, %bb.gv ] ; 2 uses
  %i.bax = or disjoint i32 %.01943.lcssa.i, 3
  %i.bay = icmp slt i32 %i.bax, %7
  br i1 %i.bay, label %.lr.ph3816.i, label %.preheader3682.i

.lr.ph3803.i:                                     ; preds = %.thread3566.i, %bb.gv
  %.443802.i = phi ptr [ %.46.i, %bb.gv ], [ %.43.i, %.thread3566.i ] ; 11 uses
  %.1119043801.i = phi ptr [ %i.bel, %bb.gv ], [ %.1019033840.i, %.thread3566.i ] ; 5 uses
  %.019433800.i = phi i32 [ %i.bem, %bb.gv ], [ 0, %.thread3566.i ]
  %.119533799.i = phi ptr [ %i.bek, %bb.gv ], [ %.01952.i, %.thread3566.i ] ; 20 uses
  %.231693798.i = phi <4 x float> [ %.43171.i, %bb.gv ], [ %.13168.i, %.thread3566.i ] ; 6 uses
  %.331783797.i = phi <4 x float> [ %.53180.i, %bb.gv ], [ %.23177.i, %.thread3566.i ] ; 10 uses
  %i.baz = load <4 x i32>, ptr %.1119043801.i, align 16, !tbaa !89
  %i.bba = sitofp fast <4 x i32> %i.baz to <4 x float> ; 2 uses
  %i.bbb = getelementptr inbounds nuw i8, ptr %.1119043801.i, i64 16
  %i.bbc = load <4 x i32>, ptr %i.bbb, align 16, !tbaa !89
  %i.bbd = sitofp fast <4 x i32> %i.bbc to <4 x float> ; 2 uses
  %i.bbe = getelementptr inbounds nuw i8, ptr %.1119043801.i, i64 32
  %i.bbf = load <4 x i32>, ptr %i.bbe, align 16, !tbaa !89
  %i.bbg = getelementptr inbounds nuw i8, ptr %.1119043801.i, i64 48
  %i.bbh = load <4 x i32>, ptr %i.bbg, align 16, !tbaa !89
  %i.bbi = sitofp <4 x i32> %i.bbf to <4 x float>
  %i.bbj = shufflevector <4 x float> %i.bbi, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.bbk = sitofp <4 x i32> %i.bbh to <4 x float>
  %i.bbl = shufflevector <4 x float> %i.bbk, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.bbm = shufflevector <4 x float> %i.bba, <4 x float> %i.bbj, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bbn = shufflevector <4 x float> %i.bba, <4 x float> %i.bbj, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bbo = shufflevector <4 x float> %i.bbd, <4 x float> %i.bbl, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bbp = shufflevector <4 x float> %i.bbd, <4 x float> %i.bbl, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bbq = shufflevector <4 x float> %i.bbm, <4 x float> %i.bbn, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bbr = shufflevector <4 x float> %i.bbo, <4 x float> %i.bbp, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bbs = shufflevector <4 x float> %i.bbm, <4 x float> %i.bbn, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.bbt = shufflevector <4 x float> %i.bbo, <4 x float> %i.bbp, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.bbu = shufflevector <4 x float> %i.bbs, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.bbv = shufflevector <4 x float> %i.bbt, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.bbw = fmul fast <4 x float> %i.baa, %i.bbq   ; 7 uses
  %i.bbx = fmul fast <4 x float> %i.baa, %i.bbr   ; 7 uses
  %i.bby = fmul fast <4 x float> %i.bbu, %i.bab   ; 7 uses
  %i.bbz = fmul fast <4 x float> %i.bbv, %i.bab   ; 7 uses
  %.not2026.i = icmp eq ptr %.443802.i, null
  br i1 %.not2026.i, label %.thread3585.i, label %bb.gf

bb.gf:                                            ; preds = %.lr.ph3803.i
  br i1 %i.aex, label %.thread3572.i, label %bb.gg

.thread3572.i:                                    ; preds = %bb.gf
  %i.bca = fadd fast <4 x float> %i.bbw, %.331783797.i
  %i.bcb = fadd fast <4 x float> %i.bbx, %.331783797.i
  %i.bcc = fadd fast <4 x float> %i.bby, %.331783797.i
  %i.bcd = fadd fast <4 x float> %i.bbz, %.331783797.i
  br label %.thread3585.i

bb.gg:                                            ; preds = %bb.gf
  br i1 %i.aey, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.bce = fadd fast <4 x float> %i.bbw, %.331783797.i
  %i.bcf = fadd fast <4 x float> %i.bbx, %.331783797.i
  %i.bcg = fadd fast <4 x float> %i.bby, %.231693798.i
  %i.bch = fadd fast <4 x float> %i.bbz, %.231693798.i
  br label %.thread3585.i

bb.gi:                                            ; preds = %bb.gg
  switch i32 %3, label %.thread3585.i [
    i32 3, label %bb.gj
    i32 4, label %bb.gn
end_hunk_1
begin_hunk_2_@_ZN4ncnnL20pack_B_tile_quantizeERKNS_3MatERS0_iiiif:bb.a
  %i.ia = shufflevector <8 x i32> %i.hw, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ib = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.hx, <4 x i32> %i.hy)
  %i.ic = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.hz, <4 x i32> %i.ia)
  %i.id = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ib, <8 x i16> splat (i16 -127))
  %i.ie = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.id, <8 x i16> splat (i16 127))
  %i.if = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ic, <8 x i16> splat (i16 -127))
  %i.ig = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.if, <8 x i16> splat (i16 127))
  %i.ih = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ie, <8 x i16> %i.ig)
  %i.ii = shufflevector <16 x i8> %i.ih, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7, i32 8, i32 12, i32 9, i32 13, i32 10, i32 14, i32 11, i32 15>
  store <16 x i8> %i.ii, ptr %.4447.i, align 1, !tbaa !89
  %i.ij = getelementptr inbounds nuw i8, ptr %.4447.i, i64 16 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.3312446.i, i64 32 ; 2 uses
  %i.il = add nuw nsw i32 %.0325445.i, 2          ; 2 uses
  %i.im = or disjoint i32 %i.il, 1
  %i.in = icmp slt i32 %i.im, %5
  br i1 %i.in, label %.lr.ph448.i, label %.preheader428.i, !llvm.loop !780

.lr.ph455.i:                                      ; preds = %.preheader428.i, %.lr.ph455.i
  %.5454.i = phi ptr [ %i.je, %.lr.ph455.i ], [ %.4.lcssa.i, %.preheader428.i ] ; 2 uses
  %.4313453.i = phi ptr [ %i.jf, %.lr.ph455.i ], [ %.3312.lcssa.i, %.preheader428.i ] ; 3 uses
  %.1326452.i = phi i32 [ %i.jg, %.lr.ph455.i ], [ %.0325.lcssa.i, %.preheader428.i ]
  %i.io = load <4 x float>, ptr %.4313453.i, align 16, !tbaa !89
  %i.ip = getelementptr inbounds nuw i8, ptr %.4313453.i, i64 %.idx348.i
  %i.iq = load <4 x float>, ptr %i.ip, align 16, !tbaa !89
  %i.ir = shufflevector <4 x float> %i.io, <4 x float> %i.iq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.is = fmul fast <8 x float> %i.ir, %i.t       ; 2 uses
  %i.it = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.is)
  %i.iu = fadd fast <8 x float> %i.it, %i.is
  %i.iv = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.iu) ; 2 uses
  %i.iw = shufflevector <8 x i32> %i.iv, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ix = shufflevector <8 x i32> %i.iv, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.iy = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.iw, <4 x i32> %i.ix)
  %i.iz = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.iy, <8 x i16> splat (i16 -127))
  %i.ja = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.iz, <8 x i16> splat (i16 127))
  %i.jb = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ja, <8 x i16> poison)
  %i.jc = bitcast <16 x i8> %i.jb to <2 x i64>
  %i.jd = extractelement <2 x i64> %i.jc, i64 0
  store i64 %i.jd, ptr %.5454.i, align 8, !tbaa !109
  %i.je = getelementptr inbounds nuw i8, ptr %.5454.i, i64 8 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.4313453.i, i64 16
  %i.jg = add nuw nsw i32 %.1326452.i, 1          ; 2 uses
  %exitcond582.not.i = icmp eq i32 %i.jg, %5
  br i1 %exitcond582.not.i, label %.loopexit426.i, label %.lr.ph455.i, !llvm.loop !781

.preheader427.i:                                  ; preds = %bb.k
  br i1 %i.u, label %.lr.ph461.i, label %.preheader425.i

.preheader425.i:                                  ; preds = %.lr.ph461.i, %.preheader427.i
  %.0327.lcssa.i = phi i32 [ 0, %.preheader427.i ], [ %i.v, %.lr.ph461.i ] ; 2 uses
  %.6315.lcssa.i = phi ptr [ %i.fr, %.preheader427.i ], [ %i.lj, %.lr.ph461.i ]
  %.7.lcssa.i = phi ptr [ %.0303471.i, %.preheader427.i ], [ %i.li, %.lr.ph461.i ] ; 2 uses
  %i.jh = icmp slt i32 %.0327.lcssa.i, %5
  br i1 %i.jh, label %.lr.ph468.i, label %.loopexit426.i

.lr.ph461.i:                                      ; preds = %.preheader427.i, %.lr.ph461.i
  %.7460.i = phi ptr [ %i.li, %.lr.ph461.i ], [ %.0303471.i, %.preheader427.i ] ; 2 uses
  %.6315459.i = phi ptr [ %i.lj, %.lr.ph461.i ], [ %i.fr, %.preheader427.i ] ; 9 uses
  %.0327458.i = phi i32 [ %i.lk, %.lr.ph461.i ], [ 0, %.preheader427.i ]
  %i.ji = load <2 x float>, ptr %.6315459.i, align 4, !tbaa !68
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %.6315459.i, i64 %i.n ; 2 uses
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !68
  %i.jl = getelementptr i8, ptr %i.jj, i64 4
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !68
  %i.jn = getelementptr inbounds nuw i8, ptr %.6315459.i, i64 %.idx408.i
  %i.jo = load <2 x float>, ptr %i.jn, align 4, !tbaa !68
  %i.jp = getelementptr inbounds nuw i8, ptr %.6315459.i, i64 %.idx409.i
  %i.jq = load <2 x float>, ptr %i.jp, align 4, !tbaa !68
  %i.jr = shufflevector <2 x float> %i.ji, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.js = insertelement <8 x float> %i.jr, float %i.jk, i64 2
  %i.jt = insertelement <8 x float> %i.js, float %i.jm, i64 3
  %i.ju = shufflevector <2 x float> %i.jo, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jv = shufflevector <8 x float> %i.jt, <8 x float> %i.ju, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %i.jw = shufflevector <2 x float> %i.jq, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jx = shufflevector <8 x float> %i.jv, <8 x float> %i.jw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.jy = getelementptr inbounds nuw i8, ptr %.6315459.i, i64 %.idx348.i
  %i.jz = load <2 x float>, ptr %i.jy, align 4, !tbaa !68
  %i.ka = getelementptr inbounds nuw i8, ptr %.6315459.i, i64 %.idx411.i ; 2 uses
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !68
  %i.kc = getelementptr i8, ptr %i.ka, i64 4
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !68
  %i.ke = getelementptr inbounds nuw i8, ptr %.6315459.i, i64 %.idx412.i
  %i.kf = load <2 x float>, ptr %i.ke, align 4, !tbaa !68
  %i.kg = getelementptr inbounds nuw i8, ptr %.6315459.i, i64 %.idx413.i
  %i.kh = load <2 x float>, ptr %i.kg, align 4, !tbaa !68
  %i.ki = shufflevector <2 x float> %i.jz, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kj = insertelement <8 x float> %i.ki, float %i.kb, i64 2
  %i.kk = insertelement <8 x float> %i.kj, float %i.kd, i64 3
  %i.kl = shufflevector <2 x float> %i.kf, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.km = shufflevector <8 x float> %i.kk, <8 x float> %i.kl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %i.kn = shufflevector <2 x float> %i.kh, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ko = shufflevector <8 x float> %i.km, <8 x float> %i.kn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.kp = fmul fast <8 x float> %i.jx, %i.t       ; 2 uses
  %i.kq = fmul fast <8 x float> %i.ko, %i.t       ; 2 uses
  %i.kr = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.kp)
  %i.ks = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.kq)
  %i.kt = fadd fast <8 x float> %i.kr, %i.kp
  %i.ku = fadd fast <8 x float> %i.ks, %i.kq
  %i.kv = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.kt) ; 2 uses
  %i.kw = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ku) ; 2 uses
  %i.kx = shufflevector <8 x i32> %i.kv, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ky = shufflevector <8 x i32> %i.kv, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.kz = shufflevector <8 x i32> %i.kw, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.la = shufflevector <8 x i32> %i.kw, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.lb = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.kx, <4 x i32> %i.ky)
  %i.lc = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.kz, <4 x i32> %i.la)
  %i.ld = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.lb, <8 x i16> splat (i16 -127))
  %i.le = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ld, <8 x i16> splat (i16 127))
  %i.lf = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.lc, <8 x i16> splat (i16 -127))
  %i.lg = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.lf, <8 x i16> splat (i16 127))
  %i.lh = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.le, <8 x i16> %i.lg)
  store <16 x i8> %i.lh, ptr %.7460.i, align 1, !tbaa !89
  %i.li = getelementptr inbounds nuw i8, ptr %.7460.i, i64 16 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.6315459.i, i64 8 ; 2 uses
  %i.lk = add nuw nsw i32 %.0327458.i, 2          ; 2 uses
  %i.ll = or disjoint i32 %i.lk, 1
  %i.lm = icmp slt i32 %i.ll, %5
  br i1 %i.lm, label %.lr.ph461.i, label %.preheader425.i, !llvm.loop !782

.lr.ph468.i:                                      ; preds = %.preheader425.i, %.lr.ph468.i
  %.8467.i = phi ptr [ %i.mw, %.lr.ph468.i ], [ %.7.lcssa.i, %.preheader425.i ] ; 2 uses
  %.7316466.i = phi ptr [ %i.mx, %.lr.ph468.i ], [ %.6315.lcssa.i, %.preheader425.i ] ; 9 uses
  %.1328465.i = phi i32 [ %i.my, %.lr.ph468.i ], [ %.0327.lcssa.i, %.preheader425.i ]
  %i.ln = load float, ptr %.7316466.i, align 4, !tbaa !68
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %.7316466.i, i64 %i.n
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !68
  %i.lq = getelementptr inbounds nuw i8, ptr %.7316466.i, i64 %.idx408.i
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !68
  %i.ls = getelementptr inbounds nuw i8, ptr %.7316466.i, i64 %.idx409.i
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !68
  %i.lu = getelementptr inbounds nuw i8, ptr %.7316466.i, i64 %.idx348.i
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !68
  %i.lw = getelementptr inbounds nuw i8, ptr %.7316466.i, i64 %.idx411.i
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !68
  %i.ly = getelementptr inbounds nuw i8, ptr %.7316466.i, i64 %.idx412.i
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !68
  %i.ma = getelementptr inbounds nuw i8, ptr %.7316466.i, i64 %.idx413.i
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !68
  %i.mc = insertelement <8 x float> poison, float %i.ln, i64 0
  %i.md = insertelement <8 x float> %i.mc, float %i.lp, i64 1
  %i.me = insertelement <8 x float> %i.md, float %i.lr, i64 2
  %i.mf = insertelement <8 x float> %i.me, float %i.lt, i64 3
  %i.mg = insertelement <8 x float> %i.mf, float %i.lv, i64 4
  %i.mh = insertelement <8 x float> %i.mg, float %i.lx, i64 5
  %i.mi = insertelement <8 x float> %i.mh, float %i.lz, i64 6
  %i.mj = insertelement <8 x float> %i.mi, float %i.mb, i64 7
  %i.mk = fmul fast <8 x float> %i.mj, %i.t       ; 2 uses
  %i.ml = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.mk)
  %i.mm = fadd fast <8 x float> %i.ml, %i.mk
  %i.mn = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mm) ; 2 uses
  %i.mo = shufflevector <8 x i32> %i.mn, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.mp = shufflevector <8 x i32> %i.mn, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.mq = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.mo, <4 x i32> %i.mp)
  %i.mr = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.mq, <8 x i16> splat (i16 -127))
  %i.ms = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.mr, <8 x i16> splat (i16 127))
  %i.mt = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ms, <8 x i16> poison)
  %i.mu = bitcast <16 x i8> %i.mt to <2 x i64>
  %i.mv = extractelement <2 x i64> %i.mu, i64 0
  store i64 %i.mv, ptr %.8467.i, align 8, !tbaa !109
  %i.mw = getelementptr inbounds nuw i8, ptr %.8467.i, i64 8 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.7316466.i, i64 4
  %i.my = add nuw nsw i32 %.1328465.i, 1          ; 2 uses
  %exitcond583.not.i = icmp eq i32 %i.my, %5
  br i1 %exitcond583.not.i, label %.loopexit426.i, label %.lr.ph468.i, !llvm.loop !783

.loopexit426.i:                                   ; preds = %.lr.ph468.i, %.lr.ph455.i, %.lr.ph442.i, %.preheader425.i, %.preheader428.i, %.preheader431.i, %bb.k
  %.9.i = phi ptr [ %.0303471.i, %bb.k ], [ %.7.lcssa.i, %.preheader425.i ], [ %i.hi, %.lr.ph442.i ], [ %i.je, %.lr.ph455.i ], [ %.4.lcssa.i, %.preheader428.i ], [ %.1304.lcssa.i, %.preheader431.i ], [ %i.mw, %.lr.ph468.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.mz = or disjoint i64 %indvars.iv.next.i, 7
  %i.na = icmp samesign ult i64 %i.mz, %i.w
  br i1 %i.na, label %bb.k, label %.preheader424.loopexit.i, !llvm.loop !784

.preheader417.loopexit.i:                         ; preds = %.loopexit419.i.us37, %.loopexit419.i.us, %.loopexit419.i.preheader
  %.us-phi = phi ptr [ %.0303.lcssa.i, %.loopexit419.i.preheader ], [ %.16.i.us, %.loopexit419.i.us ], [ %.16.i.us38, %.loopexit419.i.us37 ]
  %.us-phi32 = phi i64 [ %i.aq, %.loopexit419.i.preheader ], [ %indvars.iv.next588.i.us, %.loopexit419.i.us ], [ %indvars.iv.next588.i.us39, %.loopexit419.i.us37 ]
  %i.nb = trunc nuw nsw i64 %.us-phi32 to i32
  br label %.preheader417.i

.preheader417.i:                                  ; preds = %.preheader417.loopexit.i, %.preheader424.i
  %.1306.lcssa.i = phi i32 [ %.0305.lcssa.i, %.preheader424.i ], [ %i.nb, %.preheader417.loopexit.i ] ; 3 uses
  %.10.lcssa.i = phi ptr [ %.0303.lcssa.i, %.preheader424.i ], [ %.us-phi, %.preheader417.loopexit.i ] ; 2 uses
  %i.nc = or disjoint i32 %.1306.lcssa.i, 1
  %i.nd = icmp slt i32 %i.nc, %3
  br i1 %i.nd, label %.lr.ph526.i, label %.preheader414.i

.lr.ph526.i:                                      ; preds = %.preheader417.i
  %i.ne = sext i32 %4 to i64
  %i.nf = insertelement <4 x float> poison, float %6, i64 0
  %i.ng = shufflevector <4 x float> %i.nf, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.nh = icmp sgt i32 %5, 3
  %i.ni = and i32 %5, -4
  %i.nj = zext nneg i32 %.1306.lcssa.i to i64
  %i.nk = sext i32 %3 to i64
  %i.nl = sext i32 %2 to i64
  %invariant.op639.i = add nsw i64 %i.nk, -1
  %i.nm = shl nuw nsw i64 %i.n, 2                 ; 2 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %6, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %bb.l

.preheader414.loopexit.i:                         ; preds = %._crit_edge.i
  %i.nn = trunc nuw nsw i64 %indvars.iv.next592.i to i32
  br label %.preheader414.i

.preheader414.i:                                  ; preds = %.preheader414.loopexit.i, %.preheader417.i
  %.2307.lcssa.i = phi i32 [ %.1306.lcssa.i, %.preheader417.i ], [ %i.nn, %.preheader414.loopexit.i ] ; 2 uses
  %.17.lcssa.i = phi ptr [ %.10.lcssa.i, %.preheader417.i ], [ %.20.lcssa.i, %.preheader414.loopexit.i ]
  %i.no = icmp slt i32 %.2307.lcssa.i, %3
  br i1 %i.no, label %.lr.ph545.i, label %_ZN4ncnnL24pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit

.lr.ph545.i:                                      ; preds = %.preheader414.i
  %i.np = sext i32 %4 to i64
  %i.nq = insertelement <4 x float> poison, float %6, i64 0
  %i.nr = shufflevector <4 x float> %i.nq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ns = icmp sgt i32 %5, 3
  %i.nt = and i32 %5, -4
  %i.nu = sext i32 %.2307.lcssa.i to i64
  %i.nv = sext i32 %2 to i64
  %wide.trip.count.i = sext i32 %3 to i64
  %broadcast.splatinsert152 = insertelement <8 x float> poison, float %6, i64 0
  %broadcast.splat153 = shufflevector <8 x float> %broadcast.splatinsert152, <8 x float> poison, <8 x i32> zeroinitializer
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i, %.lr.ph526.i
  %indvars.iv591.i = phi i64 [ %i.nj, %.lr.ph526.i ], [ %indvars.iv.next592.i, %._crit_edge.i ] ; 2 uses
  %.17525.i = phi ptr [ %.10.lcssa.i, %.lr.ph526.i ], [ %.20.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.nw = load ptr, ptr %0, align 8, !tbaa !24
  %i.nx = add nsw i64 %indvars.iv591.i, %i.nl
  %i.ny = mul i64 %i.nx, %i.n
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.nw, i64 %i.ny
  %i.oa = getelementptr inbounds [4 x i8], ptr %i.nz, i64 %i.ne ; 2 uses
  br i1 %i.nh, label %.lr.ph508.i, label %.preheader416.i

.preheader416.i:                                  ; preds = %.lr.ph508.i, %bb.l
  %.0322.lcssa.i = phi ptr [ %i.oa, %bb.l ], [ %i.ox, %.lr.ph508.i ] ; 2 uses
  %.0319.lcssa.i = phi i32 [ 0, %bb.l ], [ %i.ni, %.lr.ph508.i ] ; 3 uses
  %.18.lcssa.i = phi ptr [ %.17525.i, %bb.l ], [ %i.ow, %.lr.ph508.i ] ; 2 uses
  %i.ob = or disjoint i32 %.0319.lcssa.i, 1
  %i.oc = icmp slt i32 %i.ob, %5
  br i1 %i.oc, label %.lr.ph515.i, label %.preheader415.i

.lr.ph508.i:                                      ; preds = %bb.l, %.lr.ph508.i
  %.18507.i = phi ptr [ %i.ow, %.lr.ph508.i ], [ %.17525.i, %bb.l ] ; 2 uses
  %.0319506.i = phi i32 [ %i.oy, %.lr.ph508.i ], [ 0, %bb.l ]
  %.0322505.i = phi ptr [ %i.ox, %.lr.ph508.i ], [ %i.oa, %bb.l ] ; 3 uses
  %i.od = load <4 x float>, ptr %.0322505.i, align 1, !tbaa !89
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %.0322505.i, i64 %i.n
  %i.of = load <4 x float>, ptr %i.oe, align 1, !tbaa !89
  %i.og = fmul fast <4 x float> %i.od, %i.ng      ; 2 uses
  %i.oh = fmul fast <4 x float> %i.of, %i.ng      ; 2 uses
  %i.oi = shufflevector <4 x float> %i.og, <4 x float> %i.oh, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.oj = shufflevector <4 x float> %i.og, <4 x float> %i.oh, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.ok = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.oi)
  %i.ol = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.oj)
  %i.om = fadd fast <4 x float> %i.ok, %i.oi
  %i.on = fadd fast <4 x float> %i.ol, %i.oj
  %i.oo = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.om)
  %i.op = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.on)
  %i.oq = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.oo, <4 x i32> %i.op)
  %i.or = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.oq, <8 x i16> splat (i16 -127))
  %i.os = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.or, <8 x i16> splat (i16 127))
  %i.ot = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.os, <8 x i16> poison)
  %i.ou = bitcast <16 x i8> %i.ot to <2 x i64>
  %i.ov = extractelement <2 x i64> %i.ou, i64 0
  store i64 %i.ov, ptr %.18507.i, align 8, !tbaa !109
  %i.ow = getelementptr inbounds nuw i8, ptr %.18507.i, i64 8 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.0322505.i, i64 16 ; 2 uses
  %i.oy = add nuw nsw i32 %.0319506.i, 4          ; 2 uses
  %i.oz = or disjoint i32 %i.oy, 3
  %i.pa = icmp slt i32 %i.oz, %5
  br i1 %i.pa, label %.lr.ph508.i, label %.preheader416.i, !llvm.loop !785

.preheader415.i:                                  ; preds = %.lr.ph515.i, %.preheader416.i
  %.1323.lcssa.i = phi ptr [ %.0322.lcssa.i, %.preheader416.i ], [ %i.qt, %.lr.ph515.i ] ; 8 uses
  %.1320.lcssa.i = phi i32 [ %.0319.lcssa.i, %.preheader416.i ], [ %i.qu, %.lr.ph515.i ] ; 6 uses
  %.19.lcssa.i = phi ptr [ %.18.lcssa.i, %.preheader416.i ], [ %i.qs, %.lr.ph515.i ] ; 8 uses
  %i.pb = icmp slt i32 %.1320.lcssa.i, %5
  br i1 %i.pb, label %.lr.ph522.i.preheader, label %._crit_edge.i

.lr.ph522.i.preheader:                            ; preds = %.preheader415.i
  %i.pc = xor i32 %.1320.lcssa.i, -1
  %i.pd = add i32 %5, %i.pc                       ; 2 uses
  %i.pe = zext i32 %i.pd to i64
  %i.pf = add nuw nsw i64 %i.pe, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.pd, 7
  br i1 %min.iters.check, label %.lr.ph522.i.preheader168, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph522.i.preheader
  %scevgep = getelementptr i8, ptr %.19.lcssa.i, i64 2
  %i.pg = xor i32 %.1320.lcssa.i, -1
  %i.ph = add i32 %5, %i.pg
  %i.pi = zext i32 %i.ph to i64                   ; 2 uses
  %i.pj = shl nuw nsw i64 %i.pi, 1
  %scevgep127 = getelementptr i8, ptr %scevgep, i64 %i.pj ; 2 uses
  %scevgep128 = getelementptr i8, ptr %.1323.lcssa.i, i64 %i.nm
  %i.pk = getelementptr i8, ptr %.1323.lcssa.i, i64 %i.nm
  %scevgep129 = getelementptr i8, ptr %i.pk, i64 4
  %i.pl = shl nuw nsw i64 %i.pi, 2                ; 2 uses
  %scevgep130 = getelementptr i8, ptr %scevgep129, i64 %i.pl
  %scevgep131 = getelementptr i8, ptr %.1323.lcssa.i, i64 4
  %scevgep132 = getelementptr i8, ptr %scevgep131, i64 %i.pl
  %bound0 = icmp ult ptr %.19.lcssa.i, %scevgep130
  %bound1 = icmp ult ptr %scevgep128, %scevgep127
  %found.conflict = and i1 %bound0, %bound1
  %bound0133 = icmp ult ptr %.19.lcssa.i, %scevgep132
  %bound1134 = icmp ult ptr %.1323.lcssa.i, %scevgep127
  %found.conflict135 = and i1 %bound0133, %bound1134
  %conflict.rdx = or i1 %found.conflict, %found.conflict135
  br i1 %conflict.rdx, label %.lr.ph522.i.preheader168, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.pf, 8589934584              ; 5 uses
  %i.pm = shl nuw nsw i64 %n.vec, 1
  %i.pn = getelementptr i8, ptr %.19.lcssa.i, i64 %i.pm ; 2 uses
  %i.po = trunc i64 %n.vec to i32
  %i.pp = add i32 %.1320.lcssa.i, %i.po
  %i.pq = shl nuw nsw i64 %n.vec, 2
  %i.pr = getelementptr i8, ptr %.1323.lcssa.i, i64 %i.pq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ps = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.19.lcssa.i, i64 %i.ps
  %i.pt = shl i64 %index, 2
  %next.gep136 = getelementptr i8, ptr %.1323.lcssa.i, i64 %i.pt ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep136, align 4, !tbaa !68, !alias.scope !801
  %i.pu = fmul fast <8 x float> %wide.load, %broadcast.splat
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %next.gep136, i64 %i.n
  %wide.load137 = load <8 x float>, ptr %i.pv, align 4, !tbaa !68, !alias.scope !802
  %i.pw = fmul fast <8 x float> %wide.load137, %broadcast.splat
  %i.px = shufflevector <8 x float> %i.pu, <8 x float> %i.pw, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.py = tail call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.px)
  %i.pz = fptosi <16 x float> %i.py to <16 x i32>
  %i.qa = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.pz, <16 x i32> splat (i32 -127))
  %i.qb = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.qa, <16 x i32> splat (i32 127))
  %interleaved.vec = trunc nsw <16 x i32> %i.qb to <16 x i8>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !89, !alias.scope !803, !noalias !804
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.qc = icmp eq i64 %index.next, %n.vec
  br i1 %i.qc, label %middle.block, label %vector.body, !llvm.loop !790

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.pf, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph522.i.preheader168

.lr.ph522.i.preheader168:                         ; preds = %vector.memcheck, %.lr.ph522.i.preheader, %middle.block
  %.20521.i.ph = phi ptr [ %.19.lcssa.i, %vector.memcheck ], [ %.19.lcssa.i, %.lr.ph522.i.preheader ], [ %i.pn, %middle.block ]
  %.2321520.i.ph = phi i32 [ %.1320.lcssa.i, %vector.memcheck ], [ %.1320.lcssa.i, %.lr.ph522.i.preheader ], [ %i.pp, %middle.block ]
  %.2324519.i.ph = phi ptr [ %.1323.lcssa.i, %vector.memcheck ], [ %.1323.lcssa.i, %.lr.ph522.i.preheader ], [ %i.pr, %middle.block ]
  br label %.lr.ph522.i

.lr.ph515.i:                                      ; preds = %.preheader416.i, %.lr.ph515.i
  %.19514.i = phi ptr [ %i.qs, %.lr.ph515.i ], [ %.18.lcssa.i, %.preheader416.i ] ; 2 uses
  %.1320513.i = phi i32 [ %i.qu, %.lr.ph515.i ], [ %.0319.lcssa.i, %.preheader416.i ]
  %.1323512.i = phi ptr [ %i.qt, %.lr.ph515.i ], [ %.0322.lcssa.i, %.preheader416.i ] ; 3 uses
  %i.qd = load i64, ptr %.1323512.i, align 1, !tbaa !89
  %i.qe = insertelement <2 x i64> poison, i64 %i.qd, i64 0
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %.1323512.i, i64 %i.n
  %i.qg = load i64, ptr %i.qf, align 1, !tbaa !89
  %.uncasted.i = insertelement <2 x i64> %i.qe, i64 %i.qg, i64 1
  %i.qh = bitcast <2 x i64> %.uncasted.i to <4 x float>
  %i.qi = fmul fast <4 x float> %i.ng, %i.qh      ; 2 uses
  %i.qj = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.qi)
  %i.qk = fadd fast <4 x float> %i.qj, %i.qi
  %i.ql = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qk) ; 2 uses
  %i.qm = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ql, <4 x i32> %i.ql)
  %i.qn = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.qm, <8 x i16> splat (i16 -127))
  %i.qo = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.qn, <8 x i16> splat (i16 127))
  %i.qp = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.qo, <8 x i16> poison)
  %i.qq = bitcast <16 x i8> %i.qp to <4 x i32>
  %i.qr = extractelement <4 x i32> %i.qq, i64 0
  store i32 %i.qr, ptr %.19514.i, align 4, !tbaa !50
  %i.qs = getelementptr inbounds nuw i8, ptr %.19514.i, i64 4 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.1323512.i, i64 8 ; 2 uses
  %i.qu = add nuw nsw i32 %.1320513.i, 2          ; 3 uses
  %i.qv = or disjoint i32 %i.qu, 1
  %i.qw = icmp slt i32 %i.qv, %5
  br i1 %i.qw, label %.lr.ph515.i, label %.preheader415.i, !llvm.loop !791

.lr.ph522.i:                                      ; preds = %.lr.ph522.i.preheader168, %.lr.ph522.i
  %.20521.i = phi ptr [ %i.rh, %.lr.ph522.i ], [ %.20521.i.ph, %.lr.ph522.i.preheader168 ] ; 3 uses
  %.2321520.i = phi i32 [ %i.rj, %.lr.ph522.i ], [ %.2321520.i.ph, %.lr.ph522.i.preheader168 ]
  %.2324519.i = phi ptr [ %i.ri, %.lr.ph522.i ], [ %.2324519.i.ph, %.lr.ph522.i.preheader168 ] ; 3 uses
  %i.qx = load float, ptr %.2324519.i, align 4, !tbaa !68
  %i.qy = fmul fast float %i.qx, %6
  %i.qz = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.qy)
  %i.ra = fptosi float %i.qz to i32
  %spec.select.i351402.i = tail call i32 @llvm.smax.i32(i32 %i.ra, i32 -127)
  %.0.i352403.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i351402.i, i32 127)
  %.0.i352.i = trunc nsw i32 %.0.i352403.i to i8
  store i8 %.0.i352.i, ptr %.20521.i, align 1, !tbaa !89
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %.2324519.i, i64 %i.n
  %i.rc = load float, ptr %i.rb, align 4, !tbaa !68
  %i.rd = fmul fast float %i.rc, %6
  %i.re = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.rd)
  %i.rf = fptosi float %i.re to i32
  %spec.select.i349404.i = tail call i32 @llvm.smax.i32(i32 %i.rf, i32 -127)
  %.0.i350405.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i349404.i, i32 127)
  %.0.i350.i = trunc nsw i32 %.0.i350405.i to i8
  %i.rg = getelementptr inbounds nuw i8, ptr %.20521.i, i64 1
  store i8 %.0.i350.i, ptr %i.rg, align 1, !tbaa !89
end_hunk_2
begin_hunk_3_@_ZN4ncnnL30transpose_pack_B_tile_quantizeERKNS_3MatERS0_iiiif:bb.a
  br i1 %i.ry, label %.lr.ph667.i.us.us.us, label %.preheader574.i.us.us.us

.lr.ph667.i.us.us.us:                             ; preds = %.preheader576.i.us.us.us, %.lr.ph667.i.us.us.us
  %.22666.i.us.us.us = phi ptr [ %i.sr, %.lr.ph667.i.us.us.us ], [ %.21.lcssa.i.us.us.us, %.preheader576.i.us.us.us ] ; 2 uses
  %.1420665.i.us.us.us = phi i32 [ %i.st, %.lr.ph667.i.us.us.us ], [ %.0419.lcssa.i.us.us.us, %.preheader576.i.us.us.us ]
  %.5431664.i.us.us.us = phi ptr [ %i.ss, %.lr.ph667.i.us.us.us ], [ %.4430.lcssa.i.us.us.us, %.preheader576.i.us.us.us ] ; 3 uses
  %i.rz = load i64, ptr %.5431664.i.us.us.us, align 1, !tbaa !89
  %i.sa = insertelement <2 x i64> poison, i64 %i.rz, i64 0
  %i.sb = bitcast <2 x i64> %i.sa to <4 x float>
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %.5431664.i.us.us.us, i64 %i.n
  %i.sd = load i64, ptr %i.sc, align 1, !tbaa !89
  %i.se = insertelement <2 x i64> poison, i64 %i.sd, i64 0
  %i.sf = bitcast <2 x i64> %i.se to <4 x float>
  %i.sg = shufflevector <4 x float> %i.sb, <4 x float> %i.sf, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.sh = fmul fast <4 x float> %i.sg, %i.pn      ; 2 uses
  %i.si = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.sh)
  %i.sj = fadd fast <4 x float> %i.si, %i.sh
  %i.sk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.sj) ; 2 uses
  %i.sl = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.sk, <4 x i32> %i.sk)
  %i.sm = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.sl, <8 x i16> splat (i16 -127))
  %i.sn = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.sm, <8 x i16> splat (i16 127))
  %i.so = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.sn, <8 x i16> poison)
  %i.sp = bitcast <16 x i8> %i.so to <4 x i32>
  %i.sq = extractelement <4 x i32> %i.sp, i64 0
  store i32 %i.sq, ptr %.22666.i.us.us.us, align 4, !tbaa !50
  %i.sr = getelementptr inbounds nuw i8, ptr %.22666.i.us.us.us, i64 4 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.5431664.i.us.us.us, i64 %.idx442.i ; 2 uses
  %i.st = add nuw nsw i32 %.1420665.i.us.us.us, 2 ; 3 uses
  %i.su = or disjoint i32 %i.st, 1
  %i.sv = icmp slt i32 %i.su, %5
  br i1 %i.sv, label %.lr.ph667.i.us.us.us, label %.preheader574.i.us.us.us, !llvm.loop !817

.preheader574.i.us.us.us:                         ; preds = %.lr.ph667.i.us.us.us, %.preheader576.i.us.us.us
  %.5431.lcssa.i.us.us.us = phi ptr [ %.4430.lcssa.i.us.us.us, %.preheader576.i.us.us.us ], [ %i.ss, %.lr.ph667.i.us.us.us ]
  %.1420.lcssa.i.us.us.us = phi i32 [ %.0419.lcssa.i.us.us.us, %.preheader576.i.us.us.us ], [ %i.st, %.lr.ph667.i.us.us.us ] ; 2 uses
  %.22.lcssa.i.us.us.us = phi ptr [ %.21.lcssa.i.us.us.us, %.preheader576.i.us.us.us ], [ %i.sr, %.lr.ph667.i.us.us.us ] ; 2 uses
  %i.sw = icmp slt i32 %.1420.lcssa.i.us.us.us, %5
  br i1 %i.sw, label %.lr.ph674.i.us.us.us, label %.loopexit575.i.us.us.us

.lr.ph674.i.us.us.us:                             ; preds = %.preheader574.i.us.us.us, %.lr.ph674.i.us.us.us
  %.23673.i.us.us.us = phi ptr [ %i.th, %.lr.ph674.i.us.us.us ], [ %.22.lcssa.i.us.us.us, %.preheader574.i.us.us.us ] ; 3 uses
  %.2421672.i.us.us.us = phi i32 [ %i.tj, %.lr.ph674.i.us.us.us ], [ %.1420.lcssa.i.us.us.us, %.preheader574.i.us.us.us ]
  %.6432671.i.us.us.us = phi ptr [ %i.ti, %.lr.ph674.i.us.us.us ], [ %.5431.lcssa.i.us.us.us, %.preheader574.i.us.us.us ] ; 3 uses
  %i.sx = load float, ptr %.6432671.i.us.us.us, align 4, !tbaa !68
  %i.sy = fmul fast float %i.sx, %6
  %i.sz = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.sy)
  %i.ta = fptosi float %i.sz to i32
  %spec.select.i455566.i.us.us.us = tail call i32 @llvm.smax.i32(i32 %i.ta, i32 -127)
  %.0.i456567.i.us.us.us = tail call i32 @llvm.smin.i32(i32 %spec.select.i455566.i.us.us.us, i32 127)
  %.0.i456.i.us.us.us = trunc nsw i32 %.0.i456567.i.us.us.us to i8
  store i8 %.0.i456.i.us.us.us, ptr %.23673.i.us.us.us, align 1, !tbaa !89
  %i.tb = getelementptr inbounds nuw i8, ptr %.6432671.i.us.us.us, i64 4
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !68
  %i.td = fmul fast float %i.tc, %6
  %i.te = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.td)
  %i.tf = fptosi float %i.te to i32
  %spec.select.i453568.i.us.us.us = tail call i32 @llvm.smax.i32(i32 %i.tf, i32 -127)
  %.0.i454569.i.us.us.us = tail call i32 @llvm.smin.i32(i32 %spec.select.i453568.i.us.us.us, i32 127)
  %.0.i454.i.us.us.us = trunc nsw i32 %.0.i454569.i.us.us.us to i8
  %i.tg = getelementptr inbounds nuw i8, ptr %.23673.i.us.us.us, i64 1
  store i8 %.0.i454.i.us.us.us, ptr %i.tg, align 1, !tbaa !89
  %i.th = getelementptr inbounds nuw i8, ptr %.23673.i.us.us.us, i64 2 ; 2 uses
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %.6432671.i.us.us.us, i64 %i.n
  %i.tj = add nuw nsw i32 %.2421672.i.us.us.us, 1 ; 2 uses
  %exitcond773.not.i.us.us.us = icmp eq i32 %i.tj, %5
  br i1 %exitcond773.not.i.us.us.us, label %.loopexit575.i.us.us.us, label %.lr.ph674.i.us.us.us, !llvm.loop !818

.loopexit575.i.us.us.us:                          ; preds = %.lr.ph674.i.us.us.us, %.preheader574.i.us.us.us
  %.24.i.us.us.us = phi ptr [ %.22.lcssa.i.us.us.us, %.preheader574.i.us.us.us ], [ %i.th, %.lr.ph674.i.us.us.us ] ; 2 uses
  %indvars.iv.next775.i.us.us.us = add nuw nsw i64 %indvars.iv774.i.us.us.us, 2 ; 3 uses
  %i.tk = icmp slt i64 %indvars.iv.next775.i.us.us.us, %invariant.op842.i
  br i1 %i.tk, label %.loopexit578.i.us.us.us, label %.preheader572.loopexit.i, !llvm.loop !819

.loopexit578.i.us:                                ; preds = %.loopexit578.i.us.preheader, %.loopexit575.i.loopexit8.us
  %indvars.iv774.i.us = phi i64 [ %indvars.iv.next775.i.us, %.loopexit575.i.loopexit8.us ], [ %i.pr, %.loopexit578.i.us.preheader ] ; 2 uses
  %.16677.i.us = phi ptr [ %i.uh, %.loopexit575.i.loopexit8.us ], [ %.8.lcssa.i, %.loopexit578.i.us.preheader ]
  %i.tl = add nsw i64 %indvars.iv774.i.us, %i.pt
  %i.tm = mul nsw i64 %i.tl, %i.pu
  %i.tn = getelementptr inbounds [4 x i8], ptr %i.px, i64 %i.tm
  br label %.lr.ph654.i.us

.lr.ph654.i.us:                                   ; preds = %.lr.ph654.i.us, %.loopexit578.i.us
  %.19653.i.us = phi ptr [ %i.uh, %.lr.ph654.i.us ], [ %.16677.i.us, %.loopexit578.i.us ] ; 2 uses
  %.0424652.i.us = phi i32 [ %i.uj, %.lr.ph654.i.us ], [ 0, %.loopexit578.i.us ]
  %.2428651.i.us = phi ptr [ %i.ui, %.lr.ph654.i.us ], [ %i.tn, %.loopexit578.i.us ] ; 3 uses
  %i.to = load <4 x float>, ptr %.2428651.i.us, align 16, !tbaa !89
  %i.tp = getelementptr inbounds nuw i8, ptr %.2428651.i.us, i64 16
  %i.tq = load <4 x float>, ptr %i.tp, align 16, !tbaa !89
  %i.tr = fmul fast <4 x float> %i.to, %i.pn      ; 2 uses
  %i.ts = fmul fast <4 x float> %i.tq, %i.pn      ; 2 uses
  %i.tt = shufflevector <4 x float> %i.tr, <4 x float> %i.ts, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.tu = shufflevector <4 x float> %i.tr, <4 x float> %i.ts, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.tv = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.tt)
  %i.tw = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.tu)
  %i.tx = fadd fast <4 x float> %i.tv, %i.tt
  %i.ty = fadd fast <4 x float> %i.tw, %i.tu
  %i.tz = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.tx)
  %i.ua = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ty)
  %i.ub = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.tz, <4 x i32> %i.ua)
  %i.uc = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ub, <8 x i16> splat (i16 -127))
  %i.ud = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.uc, <8 x i16> splat (i16 127))
  %i.ue = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ud, <8 x i16> poison)
  %i.uf = bitcast <16 x i8> %i.ue to <2 x i64>
  %i.ug = extractelement <2 x i64> %i.uf, i64 0
  store i64 %i.ug, ptr %.19653.i.us, align 8, !tbaa !109
  %i.uh = getelementptr inbounds nuw i8, ptr %.19653.i.us, i64 8 ; 3 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %.2428651.i.us, i64 %.idx445.i
  %i.uj = add nuw nsw i32 %.0424652.i.us, 4       ; 2 uses
  %i.uk = or disjoint i32 %i.uj, 3
  %i.ul = icmp slt i32 %i.uk, %5
  br i1 %i.ul, label %.lr.ph654.i.us, label %.loopexit575.i.loopexit8.us, !llvm.loop !820

.loopexit575.i.loopexit8.us:                      ; preds = %.lr.ph654.i.us
  %indvars.iv.next775.i.us = add nuw nsw i64 %indvars.iv774.i.us, 2 ; 3 uses
  %i.um = icmp slt i64 %indvars.iv.next775.i.us, %invariant.op842.i
  br i1 %i.um, label %.loopexit578.i.us, label %.preheader572.loopexit.i, !llvm.loop !819

.lr.ph619.i.preheader:                            ; preds = %.lr.ph642.i, %.loopexit581.i.loopexit11
  %indvars.iv770.i = phi i64 [ %indvars.iv.next771.i, %.loopexit581.i.loopexit11 ], [ %i.fb, %.lr.ph642.i ] ; 2 uses
  %.8641.i = phi ptr [ %i.ws, %.loopexit581.i.loopexit11 ], [ %.0390.lcssa.i, %.lr.ph642.i ]
  %i.un = load ptr, ptr %0, align 8, !tbaa !24
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %i.er
  %i.up = add nsw i64 %indvars.iv770.i, %i.fd
  %i.uq = mul nsw i64 %i.up, %i.fe
  %i.ur = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %i.uq
  br label %.lr.ph619.i

.lr.ph619.i:                                      ; preds = %.lr.ph619.i.preheader, %.lr.ph619.i
  %.9618.i = phi ptr [ %i.ws, %.lr.ph619.i ], [ %.8641.i, %.lr.ph619.i.preheader ] ; 3 uses
  %.0413617.i = phi ptr [ %i.wt, %.lr.ph619.i ], [ %i.ur, %.lr.ph619.i.preheader ] ; 5 uses
  %.0422616.i = phi i32 [ %i.wu, %.lr.ph619.i ], [ 0, %.lr.ph619.i.preheader ]
  %i.us = load <8 x float>, ptr %.0413617.i, align 32, !tbaa !89
  %i.ut = getelementptr inbounds nuw i8, ptr %.0413617.i, i64 32
  %i.uu = load <8 x float>, ptr %i.ut, align 32, !tbaa !89
  %i.uv = getelementptr inbounds nuw i8, ptr %.0413617.i, i64 64
  %i.uw = load <8 x float>, ptr %i.uv, align 32, !tbaa !89
  %i.ux = getelementptr inbounds nuw i8, ptr %.0413617.i, i64 96
  %i.uy = load <8 x float>, ptr %i.ux, align 32, !tbaa !89
  %i.uz = fmul fast <8 x float> %i.us, %i.eu      ; 2 uses
  %i.va = fmul fast <8 x float> %i.uu, %i.eu      ; 2 uses
  %i.vb = fmul fast <8 x float> %i.uw, %i.eu      ; 2 uses
  %i.vc = fmul fast <8 x float> %i.uy, %i.eu      ; 2 uses
  %i.vd = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.uz)
  %i.ve = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.vb)
  %i.vf = fadd fast <8 x float> %i.vd, %i.uz
  %i.vg = fadd fast <8 x float> %i.ve, %i.vb
  %i.vh = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.vf) ; 2 uses
  %i.vi = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.vg) ; 2 uses
  %i.vj = shufflevector <8 x i32> %i.vh, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.vk = shufflevector <8 x i32> %i.vh, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.vl = shufflevector <8 x i32> %i.vi, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.vm = shufflevector <8 x i32> %i.vi, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.vn = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.vj, <4 x i32> %i.vk)
  %i.vo = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.vl, <4 x i32> %i.vm)
  %i.vp = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.vn, <8 x i16> splat (i16 -127))
  %i.vq = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.vp, <8 x i16> splat (i16 127))
  %i.vr = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.vo, <8 x i16> splat (i16 -127))
  %i.vs = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.vr, <8 x i16> splat (i16 127))
  %i.vt = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.vq, <8 x i16> %i.vs) ; 2 uses
  %i.vu = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.va)
  %i.vv = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.vc)
  %i.vw = fadd fast <8 x float> %i.vu, %i.va
  %i.vx = fadd fast <8 x float> %i.vv, %i.vc
  %i.vy = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.vw) ; 2 uses
  %i.vz = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.vx) ; 2 uses
  %i.wa = shufflevector <8 x i32> %i.vy, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.wb = shufflevector <8 x i32> %i.vy, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.wc = shufflevector <8 x i32> %i.vz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.wd = shufflevector <8 x i32> %i.vz, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.we = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.wa, <4 x i32> %i.wb)
  %i.wf = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.wc, <4 x i32> %i.wd)
  %i.wg = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.we, <8 x i16> splat (i16 -127))
  %i.wh = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.wg, <8 x i16> splat (i16 127))
  %i.wi = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.wf, <8 x i16> splat (i16 -127))
  %i.wj = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.wi, <8 x i16> splat (i16 127))
  %i.wk = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.wh, <8 x i16> %i.wj) ; 2 uses
  %i.wl = shufflevector <16 x i8> %i.vt, <16 x i8> %i.wk, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23>
  %i.wm = shufflevector <16 x i8> %i.vt, <16 x i8> %i.wk, <16 x i32> <i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  %i.wn = bitcast <16 x i8> %i.wl to <4 x i32>    ; 2 uses
  %i.wo = bitcast <16 x i8> %i.wm to <4 x i32>    ; 2 uses
  %i.wp = shufflevector <4 x i32> %i.wn, <4 x i32> %i.wo, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.wq = shufflevector <4 x i32> %i.wn, <4 x i32> %i.wo, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x i32> %i.wp, ptr %.9618.i, align 16, !tbaa !89
  %i.wr = getelementptr inbounds nuw i8, ptr %.9618.i, i64 16
  store <4 x i32> %i.wq, ptr %i.wr, align 16, !tbaa !89
  %i.ws = getelementptr inbounds nuw i8, ptr %.9618.i, i64 32 ; 3 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %.0413617.i, i64 %.idx449.i
  %i.wu = add nuw nsw i32 %.0422616.i, 8          ; 2 uses
  %i.wv = or disjoint i32 %i.wu, 7
  %i.ww = icmp slt i32 %i.wv, %5
  br i1 %i.ww, label %.lr.ph619.i, label %.loopexit581.i.loopexit11, !llvm.loop !821

.loopexit581.i.loopexit11:                        ; preds = %.lr.ph619.i
  %indvars.iv.next771.i = add nuw nsw i64 %indvars.iv770.i, 4 ; 3 uses
  %i.wx = icmp slt i64 %indvars.iv.next771.i, %invariant.op.i
  br i1 %i.wx, label %.lr.ph619.i.preheader, label %.preheader579.loopexit.i, !llvm.loop !813

.preheader572.loopexit.i:                         ; preds = %.loopexit575.i.loopexit9, %.loopexit575.i.loopexit8.us, %.loopexit575.i.us.us.us, %.loopexit578.i.us.us.preheader
  %.us-phi47 = phi ptr [ %.8.lcssa.i, %.loopexit578.i.us.us.preheader ], [ %i.uh, %.loopexit575.i.loopexit8.us ], [ %.24.i.us.us.us, %.loopexit575.i.us.us.us ], [ %i.abl, %.loopexit575.i.loopexit9 ]
  %.us-phi48 = phi i64 [ %i.qd, %.loopexit578.i.us.us.preheader ], [ %indvars.iv.next775.i.us, %.loopexit575.i.loopexit8.us ], [ %indvars.iv.next775.i.us.us.us, %.loopexit575.i.us.us.us ], [ %indvars.iv.next775.i, %.loopexit575.i.loopexit9 ]
  %i.wy = trunc nuw nsw i64 %.us-phi48 to i32
  br label %.preheader572.i

.preheader572.i:                                  ; preds = %.preheader572.loopexit.i, %.preheader579.i
  %.2401.lcssa.i = phi i32 [ %.1400.lcssa.i, %.preheader579.i ], [ %i.wy, %.preheader572.loopexit.i ] ; 2 uses
  %.16.lcssa.i = phi ptr [ %.8.lcssa.i, %.preheader579.i ], [ %.us-phi47, %.preheader572.loopexit.i ] ; 2 uses
  %i.wz = icmp slt i32 %.2401.lcssa.i, %3
  br i1 %i.wz, label %.lr.ph707.i, label %_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit

.lr.ph707.i:                                      ; preds = %.preheader572.i
  %i.xa = sext i32 %4 to i64
  %i.xb = mul i64 %i.n, %i.xa                     ; 2 uses
  %i.xc = icmp ne i32 %i.e, 8
  %i.xd = insertelement <8 x float> poison, float %6, i64 0
  %i.xe = shufflevector <8 x float> %i.xd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.xf = icmp slt i32 %5, 8
  %.idx440.i = shl i64 %i.n, 5
  %i.xg = icmp ne i32 %i.e, 4
  %i.xh = insertelement <4 x float> poison, float %6, i64 0
  %i.xi = shufflevector <4 x float> %i.xh, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.xj = icmp slt i32 %5, 4
  %.idx439.i = shl i64 %i.n, 4                    ; 2 uses
  %i.xk = icmp eq i32 %i.e, 1
  %i.xl = icmp sgt i32 %5, 3
  %.idx.i = shl i64 %i.n, 3
  %.idx437.i = mul i64 %i.n, 12
  %i.xm = and i32 %5, -4
  %i.xn = sext i32 %.2401.lcssa.i to i64          ; 2 uses
  %i.xo = sext i32 %2 to i64                      ; 2 uses
  %i.xp = sext i32 %i.e to i64                    ; 2 uses
  %wide.trip.count.i = sext i32 %3 to i64         ; 2 uses
  %brmerge727.i = or i1 %i.xf, %i.xc
  %brmerge730.i = or i1 %i.xj, %i.xg
  br i1 %brmerge727.i, label %.loopexit571.i.us.preheader, label %.lr.ph684.i.preheader.preheader

.loopexit571.i.us.preheader:                      ; preds = %.lr.ph707.i
  %xtraiter182 = and i32 %5, 1
  %lcmp.mod183.not = icmp eq i32 %xtraiter182, 0
  br label %.loopexit571.i.us

.lr.ph684.i.preheader.preheader:                  ; preds = %.lr.ph707.i
  %.pre87 = load ptr, ptr %0, align 8, !tbaa !24
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %.pre87, i64 %i.xb
  br label %.lr.ph684.i.preheader

.loopexit571.i.us:                                ; preds = %.loopexit571.i.us.preheader, %.loopexit.i.us
  %indvars.iv778.i.us = phi i64 [ %indvars.iv.next779.i.us, %.loopexit.i.us ], [ %i.xn, %.loopexit571.i.us.preheader ] ; 2 uses
  %.25706.i.us = phi ptr [ %.32.i.us, %.loopexit.i.us ], [ %.16.lcssa.i, %.loopexit571.i.us.preheader ] ; 4 uses
  %i.xr = load ptr, ptr %0, align 8, !tbaa !24
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.xr, i64 %i.xb
  %i.xt = add nsw i64 %indvars.iv778.i.us, %i.xo
  %i.xu = mul nsw i64 %i.xt, %i.xp
  %i.xv = getelementptr inbounds [4 x i8], ptr %i.xs, i64 %i.xu ; 3 uses
  br i1 %brmerge730.i, label %.loopexit570.i.us, label %.lr.ph690.i.us

.lr.ph690.i.us:                                   ; preds = %.loopexit571.i.us, %.lr.ph690.i.us
  %.0389689.i.us = phi i32 [ %i.yj, %.lr.ph690.i.us ], [ 0, %.loopexit571.i.us ]
  %.28688.i.us = phi ptr [ %i.yh, %.lr.ph690.i.us ], [ %.25706.i.us, %.loopexit571.i.us ] ; 2 uses
  %.2395687.i.us = phi ptr [ %i.yi, %.lr.ph690.i.us ], [ %i.xv, %.loopexit571.i.us ] ; 2 uses
  %i.xw = load <4 x float>, ptr %.2395687.i.us, align 16, !tbaa !89
  %i.xx = fmul fast <4 x float> %i.xw, %i.xi      ; 2 uses
  %i.xy = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.xx)
  %i.xz = fadd fast <4 x float> %i.xy, %i.xx
  %i.ya = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.xz) ; 2 uses
  %i.yb = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ya, <4 x i32> %i.ya)
  %i.yc = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.yb, <8 x i16> splat (i16 -127))
  %i.yd = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.yc, <8 x i16> splat (i16 127))
  %i.ye = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.yd, <8 x i16> poison)
  %i.yf = bitcast <16 x i8> %i.ye to <4 x i32>
  %i.yg = extractelement <4 x i32> %i.yf, i64 0
  store i32 %i.yg, ptr %.28688.i.us, align 4, !tbaa !50
  %i.yh = getelementptr inbounds nuw i8, ptr %.28688.i.us, i64 4 ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %.2395687.i.us, i64 %.idx439.i
  %i.yj = add nuw nsw i32 %.0389689.i.us, 4       ; 2 uses
  %i.yk = or disjoint i32 %i.yj, 3
  %i.yl = icmp slt i32 %i.yk, %5
  br i1 %i.yl, label %.lr.ph690.i.us, label %.loopexit.i.us, !llvm.loop !822

.loopexit570.i.us:                                ; preds = %.loopexit571.i.us
  br i1 %i.xk, label %bb.k, label %.loopexit.i.us

bb.k:                                             ; preds = %.loopexit570.i.us
  br i1 %i.xl, label %.lr.ph696.i.us, label %.preheader.i.us

.lr.ph696.i.us:                                   ; preds = %bb.k, %.lr.ph696.i.us
  %.0695.i.us = phi i32 [ %i.zj, %.lr.ph696.i.us ], [ 0, %bb.k ]
  %.30694.i.us = phi ptr [ %i.zh, %.lr.ph696.i.us ], [ %.25706.i.us, %bb.k ] ; 2 uses
  %.4397693.i.us = phi ptr [ %i.zi, %.lr.ph696.i.us ], [ %i.xv, %bb.k ] ; 5 uses
  %i.ym = load float, ptr %.4397693.i.us, align 4, !tbaa !68
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %.4397693.i.us, i64 %i.n
  %i.yo = load float, ptr %i.yn, align 4, !tbaa !68
  %i.yp = getelementptr inbounds nuw i8, ptr %.4397693.i.us, i64 %.idx.i
  %i.yq = load float, ptr %i.yp, align 4, !tbaa !68
  %i.yr = getelementptr inbounds nuw i8, ptr %.4397693.i.us, i64 %.idx437.i
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !68
  %i.yt = insertelement <4 x float> poison, float %i.ym, i64 0
  %i.yu = insertelement <4 x float> %i.yt, float %i.yo, i64 1
  %i.yv = insertelement <4 x float> %i.yu, float %i.yq, i64 2
  %i.yw = insertelement <4 x float> %i.yv, float %i.ys, i64 3
  %i.yx = fmul fast <4 x float> %i.yw, %i.xi      ; 2 uses
  %i.yy = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.yx)
  %i.yz = fadd fast <4 x float> %i.yy, %i.yx
  %i.za = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.yz) ; 2 uses
  %i.zb = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.za, <4 x i32> %i.za)
  %i.zc = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.zb, <8 x i16> splat (i16 -127))
  %i.zd = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.zc, <8 x i16> splat (i16 127))
  %i.ze = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.zd, <8 x i16> poison)
  %i.zf = bitcast <16 x i8> %i.ze to <4 x i32>
  %i.zg = extractelement <4 x i32> %i.zf, i64 0
  store i32 %i.zg, ptr %.30694.i.us, align 4, !tbaa !50
  %i.zh = getelementptr inbounds nuw i8, ptr %.30694.i.us, i64 4 ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %.4397693.i.us, i64 %.idx439.i ; 2 uses
  %i.zj = add nuw nsw i32 %.0695.i.us, 4          ; 2 uses
  %i.zk = or disjoint i32 %i.zj, 3
  %i.zl = icmp slt i32 %i.zk, %5
  br i1 %i.zl, label %.lr.ph696.i.us, label %.preheader.i.us, !llvm.loop !823

.preheader.i.us:                                  ; preds = %.lr.ph696.i.us, %bb.k
  %.4397.lcssa.i.us = phi ptr [ %i.xv, %bb.k ], [ %i.zi, %.lr.ph696.i.us ] ; 3 uses
  %.30.lcssa.i.us = phi ptr [ %.25706.i.us, %bb.k ], [ %i.zh, %.lr.ph696.i.us ] ; 4 uses
  %.0.lcssa.i.us = phi i32 [ 0, %bb.k ], [ %i.xm, %.lr.ph696.i.us ] ; 4 uses
  %i.zm = icmp slt i32 %.0.lcssa.i.us, %5
  br i1 %i.zm, label %.lr.ph703.i.us.preheader, label %.loopexit.i.us

.lr.ph703.i.us.preheader:                         ; preds = %.preheader.i.us
  %.neg184 = or disjoint i32 %.0.lcssa.i.us, 1
  br i1 %lcmp.mod183.not, label %.lr.ph703.i.us.prol.loopexit, label %.lr.ph703.i.us.prol

.lr.ph703.i.us.prol:                              ; preds = %.lr.ph703.i.us.preheader
  %i.zn = load float, ptr %.4397.lcssa.i.us, align 4, !tbaa !68
  %i.zo = fmul fast float %i.zn, %6
  %i.zp = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.zo)
  %i.zq = fptosi float %i.zp to i32
  %spec.select.i564.i.us.prol = tail call i32 @llvm.smax.i32(i32 %i.zq, i32 -127)
  %.0.i565.i.us.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i564.i.us.prol, i32 127)
  %.0.i.i.us.prol = trunc nsw i32 %.0.i565.i.us.prol to i8
  store i8 %.0.i.i.us.prol, ptr %.30.lcssa.i.us, align 1, !tbaa !89
  %i.zr = getelementptr inbounds nuw i8, ptr %.30.lcssa.i.us, i64 1 ; 2 uses
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %.4397.lcssa.i.us, i64 %i.n
  %i.zt = or disjoint i32 %.0.lcssa.i.us, 1
  br label %.lr.ph703.i.us.prol.loopexit

.lr.ph703.i.us.prol.loopexit:                     ; preds = %.lr.ph703.i.us.prol, %.lr.ph703.i.us.preheader
  %.lcssa155.unr = phi ptr [ poison, %.lr.ph703.i.us.preheader ], [ %i.zr, %.lr.ph703.i.us.prol ]
  %.1702.i.us.unr = phi i32 [ %.0.lcssa.i.us, %.lr.ph703.i.us.preheader ], [ %i.zt, %.lr.ph703.i.us.prol ]
  %.31701.i.us.unr = phi ptr [ %.30.lcssa.i.us, %.lr.ph703.i.us.preheader ], [ %i.zr, %.lr.ph703.i.us.prol ]
  %.5398700.i.us.unr = phi ptr [ %.4397.lcssa.i.us, %.lr.ph703.i.us.preheader ], [ %i.zs, %.lr.ph703.i.us.prol ]
  %i.zu = icmp eq i32 %5, %.neg184
  br i1 %i.zu, label %.loopexit.i.us, label %.lr.ph703.i.us

.lr.ph703.i.us:                                   ; preds = %.lr.ph703.i.us.prol.loopexit, %.lr.ph703.i.us
  %.1702.i.us = phi i32 [ %i.aah, %.lr.ph703.i.us ], [ %.1702.i.us.unr, %.lr.ph703.i.us.prol.loopexit ]
  %.31701.i.us = phi ptr [ %i.aaf, %.lr.ph703.i.us ], [ %.31701.i.us.unr, %.lr.ph703.i.us.prol.loopexit ] ; 3 uses
  %.5398700.i.us = phi ptr [ %i.aag, %.lr.ph703.i.us ], [ %.5398700.i.us.unr, %.lr.ph703.i.us.prol.loopexit ] ; 2 uses
  %i.zv = load float, ptr %.5398700.i.us, align 4, !tbaa !68
  %i.zw = fmul fast float %i.zv, %6
  %i.zx = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.zw)
  %i.zy = fptosi float %i.zx to i32
  %spec.select.i564.i.us = tail call i32 @llvm.smax.i32(i32 %i.zy, i32 -127)
  %.0.i565.i.us = tail call i32 @llvm.smin.i32(i32 %spec.select.i564.i.us, i32 127)
  %.0.i.i.us = trunc nsw i32 %.0.i565.i.us to i8
  store i8 %.0.i.i.us, ptr %.31701.i.us, align 1, !tbaa !89
  %i.zz = getelementptr inbounds nuw i8, ptr %.31701.i.us, i64 1
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %.5398700.i.us, i64 %i.n ; 2 uses
  %i.aab = load float, ptr %i.aaa, align 4, !tbaa !68
  %i.aac = fmul fast float %i.aab, %6
  %i.aad = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.aac)
  %i.aae = fptosi float %i.aad to i32
  %spec.select.i564.i.us.1 = tail call i32 @llvm.smax.i32(i32 %i.aae, i32 -127)
  %.0.i565.i.us.1 = tail call i32 @llvm.smin.i32(i32 %spec.select.i564.i.us.1, i32 127)
  %.0.i.i.us.1 = trunc nsw i32 %.0.i565.i.us.1 to i8
  store i8 %.0.i.i.us.1, ptr %i.zz, align 1, !tbaa !89
  %i.aaf = getelementptr inbounds nuw i8, ptr %.31701.i.us, i64 2 ; 2 uses
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.aaa, i64 %i.n
  %i.aah = add nuw nsw i32 %.1702.i.us, 2         ; 2 uses
  %exitcond777.not.i.us.1 = icmp eq i32 %i.aah, %5
  br i1 %exitcond777.not.i.us.1, label %.loopexit.i.us, label %.lr.ph703.i.us, !llvm.loop !824

.loopexit.i.us:                                   ; preds = %.lr.ph690.i.us, %.lr.ph703.i.us.prol.loopexit, %.lr.ph703.i.us, %.preheader.i.us, %.loopexit570.i.us
  %.32.i.us = phi ptr [ %.25706.i.us, %.loopexit570.i.us ], [ %.30.lcssa.i.us, %.preheader.i.us ], [ %i.aaf, %.lr.ph703.i.us ], [ %.lcssa155.unr, %.lr.ph703.i.us.prol.loopexit ], [ %i.yh, %.lr.ph690.i.us ]
  %indvars.iv.next779.i.us = add nuw nsw i64 %indvars.iv778.i.us, 1 ; 2 uses
  %exitcond781.not.i.us = icmp eq i64 %indvars.iv.next779.i.us, %wide.trip.count.i
  br i1 %exitcond781.not.i.us, label %_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit, label %.loopexit571.i.us, !llvm.loop !825

.lr.ph648.i.preheader:                            ; preds = %.lr.ph678.i, %.loopexit575.i.loopexit9
  %indvars.iv774.i = phi i64 [ %indvars.iv.next775.i, %.loopexit575.i.loopexit9 ], [ %i.pr, %.lr.ph678.i ] ; 2 uses
  %.16677.i = phi ptr [ %i.abl, %.loopexit575.i.loopexit9 ], [ %.8.lcssa.i, %.lr.ph678.i ]
  %i.aai = load ptr, ptr %0, align 8, !tbaa !24
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.aai, i64 %i.ph
  %i.aak = add nsw i64 %indvars.iv774.i, %i.pt
  %i.aal = mul nsw i64 %i.aak, %i.pu
  %i.aam = getelementptr inbounds [4 x i8], ptr %i.aaj, i64 %i.aal
  br label %.lr.ph648.i

.lr.ph648.i:                                      ; preds = %.lr.ph648.i.preheader, %.lr.ph648.i
  %.17647.i = phi ptr [ %i.abl, %.lr.ph648.i ], [ %.16677.i, %.lr.ph648.i.preheader ] ; 2 uses
  %.0425646.i = phi i32 [ %i.abn, %.lr.ph648.i ], [ 0, %.lr.ph648.i.preheader ]
  %.0426645.i = phi ptr [ %i.abm, %.lr.ph648.i ], [ %i.aam, %.lr.ph648.i.preheader ] ; 3 uses
  %i.aan = load <8 x float>, ptr %.0426645.i, align 32, !tbaa !89
  %i.aao = getelementptr inbounds nuw i8, ptr %.0426645.i, i64 32
  %i.aap = load <8 x float>, ptr %i.aao, align 32, !tbaa !89
end_hunk_3
begin_hunk_4_@_ZN4ncnnL30transpose_pack_A_tile_quantizeERKNS_3MatERS0_iiiiS2_:bb.a
  %i.or = shufflevector <16 x i8> %i.nz, <16 x i8> %i.oq, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23>
  %i.os = shufflevector <16 x i8> %i.nz, <16 x i8> %i.oq, <16 x i32> <i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  %i.ot = bitcast <16 x i8> %i.or to <4 x i32>    ; 2 uses
  %i.ou = bitcast <16 x i8> %i.os to <4 x i32>    ; 2 uses
  %i.ov = shufflevector <4 x i32> %i.ot, <4 x i32> %i.ou, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ow = shufflevector <4 x i32> %i.ot, <4 x i32> %i.ou, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x i32> %i.ov, ptr %.8712.i, align 16, !tbaa !89
  %i.ox = getelementptr inbounds nuw i8, ptr %.8712.i, i64 16
  store <4 x i32> %i.ow, ptr %i.ox, align 16, !tbaa !89
  %i.oy = getelementptr inbounds nuw i8, ptr %.8712.i, i64 32 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.0486711.i, i64 %.idx522.i
  %i.pa = add nuw nsw i32 %.0495710.i, 8          ; 2 uses
  %i.pb = or disjoint i32 %i.pa, 7
  %i.pc = icmp slt i32 %i.pb, %5
  br i1 %i.pc, label %.lr.ph713.i, label %.loopexit666.i, !llvm.loop !891

bb.m:                                             ; preds = %bb.k
  %i.pd = load ptr, ptr %6, align 8, !tbaa !24
  %i.pe = getelementptr [4 x i8], ptr %i.pd, i64 %i.me ; 4 uses
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !68
  %i.pg = insertelement <4 x float> poison, float %i.pf, i64 0
  %i.ph = shufflevector <4 x float> %i.pg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pi = getelementptr i8, ptr %i.pe, i64 4
  %i.pj = load float, ptr %i.pi, align 4, !tbaa !68
  %i.pk = insertelement <4 x float> poison, float %i.pj, i64 0
  %i.pl = shufflevector <4 x float> %i.pk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pm = getelementptr i8, ptr %i.pe, i64 8
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !68
  %i.po = insertelement <4 x float> poison, float %i.pn, i64 0
  %i.pp = shufflevector <4 x float> %i.po, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pq = getelementptr i8, ptr %i.pe, i64 12
  %i.pr = load float, ptr %i.pq, align 4, !tbaa !68
  %i.ps = insertelement <4 x float> poison, float %i.pr, i64 0
  %i.pt = shufflevector <4 x float> %i.ps, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.fs, label %.lr.ph719.i, label %.loopexit666.i

.lr.ph719.i:                                      ; preds = %bb.m, %.lr.ph719.i
  %.10718.i = phi ptr [ %i.rc, %.lr.ph719.i ], [ %.7735.i, %bb.m ] ; 2 uses
  %.2488717.i = phi ptr [ %i.rd, %.lr.ph719.i ], [ %i.mg, %bb.m ] ; 5 uses
  %.0505716.i = phi i32 [ %i.re, %.lr.ph719.i ], [ 0, %bb.m ]
  %i.pu = load <4 x float>, ptr %.2488717.i, align 16, !tbaa !89
  %i.pv = getelementptr inbounds nuw i8, ptr %.2488717.i, i64 16
  %i.pw = load <4 x float>, ptr %i.pv, align 16, !tbaa !89
  %i.px = getelementptr inbounds nuw i8, ptr %.2488717.i, i64 32
  %i.py = load <4 x float>, ptr %i.px, align 16, !tbaa !89
  %i.pz = getelementptr inbounds nuw i8, ptr %.2488717.i, i64 48
  %i.qa = load <4 x float>, ptr %i.pz, align 16, !tbaa !89
  %i.qb = fmul fast <4 x float> %i.pu, %i.ph      ; 2 uses
  %i.qc = fmul fast <4 x float> %i.pw, %i.pl      ; 2 uses
  %i.qd = fmul fast <4 x float> %i.py, %i.pp      ; 2 uses
  %i.qe = fmul fast <4 x float> %i.qa, %i.pt      ; 2 uses
  %i.qf = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.qb)
  %i.qg = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.qc)
  %i.qh = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.qd)
  %i.qi = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.qe)
  %i.qj = fadd fast <4 x float> %i.qf, %i.qb
  %i.qk = fadd fast <4 x float> %i.qg, %i.qc
  %i.ql = fadd fast <4 x float> %i.qh, %i.qd
  %i.qm = fadd fast <4 x float> %i.qi, %i.qe
  %i.qn = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qj)
  %i.qo = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qk)
  %i.qp = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ql)
  %i.qq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qm)
  %i.qr = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.qn, <4 x i32> %i.qo)
  %i.qs = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.qp, <4 x i32> %i.qq)
  %i.qt = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.qr, <8 x i16> splat (i16 -127))
  %i.qu = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.qt, <8 x i16> splat (i16 127))
  %i.qv = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.qs, <8 x i16> splat (i16 -127))
  %i.qw = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.qv, <8 x i16> splat (i16 127))
  %i.qx = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.qu, <8 x i16> %i.qw)
  %i.qy = bitcast <16 x i8> %i.qx to <8 x i16>
  %i.qz = shufflevector <8 x i16> %i.qy, <8 x i16> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7>
  %i.ra = bitcast <8 x i16> %i.qz to <4 x i32>
  %i.rb = shufflevector <4 x i32> %i.ra, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %i.rb, ptr %.10718.i, align 16, !tbaa !89
  %i.rc = getelementptr inbounds nuw i8, ptr %.10718.i, i64 16 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.2488717.i, i64 %.idx521.i
  %i.re = add nuw nsw i32 %.0505716.i, 4          ; 2 uses
  %i.rf = or disjoint i32 %i.re, 3
  %i.rg = icmp slt i32 %i.rf, %5
  br i1 %i.rg, label %.lr.ph719.i, label %.loopexit666.i, !llvm.loop !892

bb.n:                                             ; preds = %bb.k
  %i.rh = load ptr, ptr %6, align 8, !tbaa !24
  %i.ri = getelementptr inbounds [4 x i8], ptr %i.rh, i64 %i.ft
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.ri, i64 %indvars.iv846.i
  %i.rk = load <4 x float>, ptr %i.rj, align 16, !tbaa !89 ; 5 uses
  br i1 %i.fu, label %.lr.ph725.i, label %.preheader665.i

.preheader665.i:                                  ; preds = %.lr.ph725.i, %bb.n
  %.0506.lcssa.i = phi i32 [ 0, %bb.n ], [ %i.fv, %.lr.ph725.i ] ; 4 uses
  %.4490.lcssa.i = phi ptr [ %i.mg, %bb.n ], [ %i.sv, %.lr.ph725.i ] ; 3 uses
  %.12.lcssa.i = phi ptr [ %.7735.i, %bb.n ], [ %i.su, %.lr.ph725.i ] ; 4 uses
  %i.rl = icmp slt i32 %.0506.lcssa.i, %5
  br i1 %i.rl, label %.lr.ph732.i.preheader, label %.loopexit666.i

.lr.ph732.i.preheader:                            ; preds = %.preheader665.i
  %.neg = or disjoint i32 %.0506.lcssa.i, 1
  br i1 %lcmp.mod.not, label %.lr.ph732.i.prol.loopexit, label %.lr.ph732.i.prol

.lr.ph732.i.prol:                                 ; preds = %.lr.ph732.i.preheader
  %i.rm = load <4 x float>, ptr %.4490.lcssa.i, align 1, !tbaa !89
  %i.rn = fmul fast <4 x float> %i.rm, %i.rk      ; 2 uses
  %i.ro = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.rn)
  %i.rp = fadd fast <4 x float> %i.ro, %i.rn
  %i.rq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.rp) ; 2 uses
  %i.rr = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.rq, <4 x i32> %i.rq)
  %i.rs = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.rr, <8 x i16> splat (i16 -127))
  %i.rt = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.rs, <8 x i16> splat (i16 127))
  %i.ru = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.rt, <8 x i16> poison)
  %i.rv = bitcast <16 x i8> %i.ru to <4 x i32>
  %i.rw = extractelement <4 x i32> %i.rv, i64 0
  store i32 %i.rw, ptr %.12.lcssa.i, align 4, !tbaa !50
  %i.rx = getelementptr inbounds nuw i8, ptr %.12.lcssa.i, i64 4 ; 2 uses
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %.4490.lcssa.i, i64 %i.n
  %i.rz = or disjoint i32 %.0506.lcssa.i, 1
  br label %.lr.ph732.i.prol.loopexit

.lr.ph732.i.prol.loopexit:                        ; preds = %.lr.ph732.i.prol, %.lr.ph732.i.preheader
  %.lcssa170.unr = phi ptr [ poison, %.lr.ph732.i.preheader ], [ %i.rx, %.lr.ph732.i.prol ]
  %.13731.i.unr = phi ptr [ %.12.lcssa.i, %.lr.ph732.i.preheader ], [ %i.rx, %.lr.ph732.i.prol ]
  %.5491730.i.unr = phi ptr [ %.4490.lcssa.i, %.lr.ph732.i.preheader ], [ %i.ry, %.lr.ph732.i.prol ]
  %.1507729.i.unr = phi i32 [ %.0506.lcssa.i, %.lr.ph732.i.preheader ], [ %i.rz, %.lr.ph732.i.prol ]
  %i.sa = icmp eq i32 %5, %.neg
  br i1 %i.sa, label %.loopexit666.i, label %.lr.ph732.i

.lr.ph725.i:                                      ; preds = %bb.n, %.lr.ph725.i
  %.12724.i = phi ptr [ %i.su, %.lr.ph725.i ], [ %.7735.i, %bb.n ] ; 2 uses
  %.4490723.i = phi ptr [ %i.sv, %.lr.ph725.i ], [ %i.mg, %bb.n ] ; 3 uses
  %.0506722.i = phi i32 [ %i.sw, %.lr.ph725.i ], [ 0, %bb.n ]
  %i.sb = load <4 x float>, ptr %.4490723.i, align 1, !tbaa !89
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %.4490723.i, i64 %i.n
  %i.sd = load <4 x float>, ptr %i.sc, align 1, !tbaa !89
  %i.se = fmul fast <4 x float> %i.sb, %i.rk      ; 2 uses
  %i.sf = fmul fast <4 x float> %i.sd, %i.rk      ; 2 uses
  %i.sg = shufflevector <4 x float> %i.se, <4 x float> %i.sf, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.sh = shufflevector <4 x float> %i.se, <4 x float> %i.sf, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.si = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.sg)
  %i.sj = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.sh)
  %i.sk = fadd fast <4 x float> %i.si, %i.sg
  %i.sl = fadd fast <4 x float> %i.sj, %i.sh
  %i.sm = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.sk)
  %i.sn = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.sl)
  %i.so = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.sm, <4 x i32> %i.sn)
  %i.sp = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.so, <8 x i16> splat (i16 -127))
  %i.sq = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.sp, <8 x i16> splat (i16 127))
  %i.sr = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.sq, <8 x i16> poison)
  %i.ss = bitcast <16 x i8> %i.sr to <2 x i64>
  %i.st = extractelement <2 x i64> %i.ss, i64 0
  store i64 %i.st, ptr %.12724.i, align 8, !tbaa !109
  %i.su = getelementptr inbounds nuw i8, ptr %.12724.i, i64 8 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %.4490723.i, i64 %.idx520.i ; 2 uses
  %i.sw = add nuw nsw i32 %.0506722.i, 2          ; 2 uses
  %i.sx = or disjoint i32 %i.sw, 1
  %i.sy = icmp slt i32 %i.sx, %5
  br i1 %i.sy, label %.lr.ph725.i, label %.preheader665.i, !llvm.loop !893

.lr.ph732.i:                                      ; preds = %.lr.ph732.i.prol.loopexit, %.lr.ph732.i
  %.13731.i = phi ptr [ %i.tx, %.lr.ph732.i ], [ %.13731.i.unr, %.lr.ph732.i.prol.loopexit ] ; 3 uses
  %.5491730.i = phi ptr [ %i.ty, %.lr.ph732.i ], [ %.5491730.i.unr, %.lr.ph732.i.prol.loopexit ] ; 2 uses
  %.1507729.i = phi i32 [ %i.tz, %.lr.ph732.i ], [ %.1507729.i.unr, %.lr.ph732.i.prol.loopexit ]
  %i.sz = load <4 x float>, ptr %.5491730.i, align 1, !tbaa !89
  %i.ta = fmul fast <4 x float> %i.sz, %i.rk      ; 2 uses
  %i.tb = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ta)
  %i.tc = fadd fast <4 x float> %i.tb, %i.ta
  %i.td = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.tc) ; 2 uses
  %i.te = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.td, <4 x i32> %i.td)
  %i.tf = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.te, <8 x i16> splat (i16 -127))
  %i.tg = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.tf, <8 x i16> splat (i16 127))
  %i.th = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.tg, <8 x i16> poison)
  %i.ti = bitcast <16 x i8> %i.th to <4 x i32>
  %i.tj = extractelement <4 x i32> %i.ti, i64 0
  store i32 %i.tj, ptr %.13731.i, align 4, !tbaa !50
  %i.tk = getelementptr inbounds nuw i8, ptr %.13731.i, i64 4
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %.5491730.i, i64 %i.n ; 2 uses
  %i.tm = load <4 x float>, ptr %i.tl, align 1, !tbaa !89
  %i.tn = fmul fast <4 x float> %i.tm, %i.rk      ; 2 uses
  %i.to = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.tn)
  %i.tp = fadd fast <4 x float> %i.to, %i.tn
  %i.tq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.tp) ; 2 uses
  %i.tr = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.tq, <4 x i32> %i.tq)
  %i.ts = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.tr, <8 x i16> splat (i16 -127))
  %i.tt = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ts, <8 x i16> splat (i16 127))
  %i.tu = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.tt, <8 x i16> poison)
  %i.tv = bitcast <16 x i8> %i.tu to <4 x i32>
  %i.tw = extractelement <4 x i32> %i.tv, i64 0
  store i32 %i.tw, ptr %i.tk, align 4, !tbaa !50
  %i.tx = getelementptr inbounds nuw i8, ptr %.13731.i, i64 8 ; 2 uses
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.tl, i64 %i.n
  %i.tz = add nuw nsw i32 %.1507729.i, 2          ; 2 uses
  %exitcond845.not.i.1 = icmp eq i32 %i.tz, %5
  br i1 %exitcond845.not.i.1, label %.loopexit666.i, label %.lr.ph732.i, !llvm.loop !894

.loopexit666.i:                                   ; preds = %.lr.ph732.i.prol.loopexit, %.lr.ph732.i, %.lr.ph719.i, %.lr.ph713.i, %.preheader665.i, %bb.m, %bb.l, %bb.k
  %.14.i = phi ptr [ %.7735.i, %bb.k ], [ %.12.lcssa.i, %.preheader665.i ], [ %i.oy, %.lr.ph713.i ], [ %i.rc, %.lr.ph719.i ], [ %.7735.i, %bb.m ], [ %.7735.i, %bb.l ], [ %.lcssa170.unr, %.lr.ph732.i.prol.loopexit ], [ %i.tx, %.lr.ph732.i ] ; 2 uses
  %indvars.iv.next847.i = add nuw nsw i64 %indvars.iv846.i, 4 ; 3 uses
  %i.ua = icmp slt i64 %indvars.iv.next847.i, %invariant.op.i
  br i1 %i.ua, label %bb.k, label %.preheader664.loopexit.i, !llvm.loop !895

.preheader657.loopexit.i:                         ; preds = %.loopexit660.i
  %i.ub = trunc nuw nsw i64 %indvars.iv.next851.i to i32
  br label %.preheader657.i

.preheader657.i:                                  ; preds = %.preheader657.loopexit.i, %.preheader664.i
  %.2466.lcssa.i = phi i32 [ %.1465.lcssa.i, %.preheader664.i ], [ %i.ub, %.preheader657.loopexit.i ] ; 2 uses
  %.15.lcssa.i = phi ptr [ %.7.lcssa.i, %.preheader664.i ], [ %.23.i, %.preheader657.loopexit.i ]
  %i.uc = icmp slt i32 %.2466.lcssa.i, %3
  br i1 %i.uc, label %.lr.ph801.i, label %_ZN4ncnnL34transpose_pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

.lr.ph801.i:                                      ; preds = %.preheader657.i
  %i.ud = sext i32 %4 to i64
  %i.ue = mul i64 %i.n, %i.ud
  %i.uf = icmp sgt i32 %5, 7
  %.idx513.i = shl i64 %i.n, 5
  %i.ug = icmp sgt i32 %5, 3                      ; 2 uses
  %.idx512.i = shl i64 %i.n, 4                    ; 2 uses
  %.idx.i = shl i64 %i.n, 3
  %.idx510.i = mul i64 %i.n, 12
  %i.uh = and i32 %5, -4
  %i.ui = sext i32 %.2466.lcssa.i to i64
  %i.uj = sext i32 %2 to i64
  %i.uk = sext i32 %i.e to i64
  %wide.trip.count.i = sext i32 %3 to i64
  %xtraiter181 = and i32 %5, 1
  %lcmp.mod182.not = icmp eq i32 %xtraiter181, 0
  br label %bb.s

bb.o:                                             ; preds = %.loopexit660.i, %.lr.ph772.i
  %indvars.iv850.i = phi i64 [ %i.ly, %.lr.ph772.i ], [ %indvars.iv.next851.i, %.loopexit660.i ] ; 2 uses
  %.15771.i = phi ptr [ %.7.lcssa.i, %.lr.ph772.i ], [ %.23.i, %.loopexit660.i ] ; 7 uses
  %i.ul = load ptr, ptr %0, align 8, !tbaa !24
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.ul, i64 %i.lu
  %i.un = add nsw i64 %indvars.iv850.i, %i.ma     ; 4 uses
  %i.uo = mul nsw i64 %i.un, %i.mb
  %i.up = getelementptr inbounds [4 x i8], ptr %i.um, i64 %i.uo ; 4 uses
  switch i32 %i.e, label %.loopexit660.i [
    i32 8, label %bb.p
    i32 4, label %bb.q
    i32 1, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.uq = load ptr, ptr %6, align 8, !tbaa !24
  %i.ur = getelementptr [4 x i8], ptr %i.uq, i64 %i.un ; 2 uses
  %i.us = load float, ptr %i.ur, align 4, !tbaa !68
  %i.ut = insertelement <8 x float> poison, float %i.us, i64 0
  %i.uu = shufflevector <8 x float> %i.ut, <8 x float> poison, <8 x i32> zeroinitializer
  %i.uv = getelementptr i8, ptr %i.ur, i64 4
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !68
  %i.ux = insertelement <8 x float> poison, float %i.uw, i64 0
  %i.uy = shufflevector <8 x float> %i.ux, <8 x float> poison, <8 x i32> zeroinitializer
  br i1 %i.lv, label %.lr.ph742.i, label %.loopexit660.i

.lr.ph742.i:                                      ; preds = %bb.p, %.lr.ph742.i
  %.16741.i = phi ptr [ %i.vx, %.lr.ph742.i ], [ %.15771.i, %bb.p ] ; 2 uses
  %.0497740.i = phi i32 [ %i.vz, %.lr.ph742.i ], [ 0, %bb.p ]
  %.0498739.i = phi ptr [ %i.vy, %.lr.ph742.i ], [ %i.up, %bb.p ] ; 3 uses
  %i.uz = load <8 x float>, ptr %.0498739.i, align 32, !tbaa !89
  %i.va = getelementptr inbounds nuw i8, ptr %.0498739.i, i64 32
  %i.vb = load <8 x float>, ptr %i.va, align 32, !tbaa !89
  %i.vc = fmul fast <8 x float> %i.uz, %i.uu      ; 2 uses
  %i.vd = fmul fast <8 x float> %i.vb, %i.uy      ; 2 uses
  %i.ve = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.vc)
  %i.vf = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.vd)
  %i.vg = fadd fast <8 x float> %i.ve, %i.vc
  %i.vh = fadd fast <8 x float> %i.vf, %i.vd
  %i.vi = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.vg) ; 2 uses
  %i.vj = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.vh) ; 2 uses
  %i.vk = shufflevector <8 x i32> %i.vi, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.vl = shufflevector <8 x i32> %i.vi, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.vm = shufflevector <8 x i32> %i.vj, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.vn = shufflevector <8 x i32> %i.vj, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.vo = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.vk, <4 x i32> %i.vl)
  %i.vp = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.vm, <4 x i32> %i.vn)
  %i.vq = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.vo, <8 x i16> splat (i16 -127))
  %i.vr = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.vq, <8 x i16> splat (i16 127))
  %i.vs = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.vp, <8 x i16> splat (i16 -127))
  %i.vt = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.vs, <8 x i16> splat (i16 127))
  %i.vu = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.vr, <8 x i16> %i.vt)
  %i.vv = bitcast <16 x i8> %i.vu to <8 x i16>
  %i.vw = shufflevector <8 x i16> %i.vv, <8 x i16> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %i.vw, ptr %.16741.i, align 16, !tbaa !89
  %i.vx = getelementptr inbounds nuw i8, ptr %.16741.i, i64 16 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %.0498739.i, i64 %.idx519.i
  %i.vz = add nuw nsw i32 %.0497740.i, 8          ; 2 uses
  %i.wa = or disjoint i32 %i.vz, 7
  %i.wb = icmp slt i32 %i.wa, %5
  br i1 %i.wb, label %.lr.ph742.i, label %.loopexit660.i, !llvm.loop !896

bb.q:                                             ; preds = %bb.o
  %i.wc = load ptr, ptr %6, align 8, !tbaa !24
  %i.wd = getelementptr [4 x i8], ptr %i.wc, i64 %i.un ; 2 uses
  %i.we = load float, ptr %i.wd, align 4, !tbaa !68
  %i.wf = insertelement <4 x float> poison, float %i.we, i64 0 ; 2 uses
  %i.wg = getelementptr i8, ptr %i.wd, i64 4
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !68
  %i.wi = insertelement <4 x float> poison, float %i.wh, i64 0 ; 2 uses
  br i1 %i.lw, label %.lr.ph748.i.preheader, label %.loopexit660.i

.lr.ph748.i.preheader:                            ; preds = %bb.q
  %i.wj = shufflevector <4 x float> %i.wf, <4 x float> %i.wi, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  %i.wk = shufflevector <4 x float> %i.wf, <4 x float> %i.wi, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  br label %.lr.ph748.i

.lr.ph748.i:                                      ; preds = %.lr.ph748.i.preheader, %.lr.ph748.i
  %.18747.i = phi ptr [ %i.xe, %.lr.ph748.i ], [ %.15771.i, %.lr.ph748.i.preheader ] ; 2 uses
  %.0496746.i = phi i32 [ %i.xg, %.lr.ph748.i ], [ 0, %.lr.ph748.i.preheader ]
  %.2500745.i = phi ptr [ %i.xf, %.lr.ph748.i ], [ %i.up, %.lr.ph748.i.preheader ] ; 3 uses
  %i.wl = load <4 x float>, ptr %.2500745.i, align 16, !tbaa !89 ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %.2500745.i, i64 16
  %i.wn = load <4 x float>, ptr %i.wm, align 16, !tbaa !89 ; 2 uses
  %i.wo = shufflevector <4 x float> %i.wl, <4 x float> %i.wn, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.wp = fmul fast <4 x float> %i.wo, %i.wj      ; 2 uses
  %i.wq = shufflevector <4 x float> %i.wl, <4 x float> %i.wn, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.wr = fmul fast <4 x float> %i.wq, %i.wk      ; 2 uses
  %i.ws = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.wp)
  %i.wt = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.wr)
  %i.wu = fadd fast <4 x float> %i.ws, %i.wp
  %i.wv = fadd fast <4 x float> %i.wt, %i.wr
  %i.ww = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.wu)
  %i.wx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.wv)
  %i.wy = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ww, <4 x i32> %i.wx)
  %i.wz = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.wy, <8 x i16> splat (i16 -127))
  %i.xa = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.wz, <8 x i16> splat (i16 127))
  %i.xb = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.xa, <8 x i16> poison)
  %i.xc = bitcast <16 x i8> %i.xb to <2 x i64>
  %i.xd = extractelement <2 x i64> %i.xc, i64 0
  store i64 %i.xd, ptr %.18747.i, align 8, !tbaa !109
  %i.xe = getelementptr inbounds nuw i8, ptr %.18747.i, i64 8 ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %.2500745.i, i64 %.idx518.i
  %i.xg = add nuw nsw i32 %.0496746.i, 4          ; 2 uses
  %i.xh = or disjoint i32 %i.xg, 3
  %i.xi = icmp slt i32 %i.xh, %5
  br i1 %i.xi, label %.lr.ph748.i, label %.loopexit660.i, !llvm.loop !897

bb.r:                                             ; preds = %bb.o
  %i.xj = load ptr, ptr %6, align 8, !tbaa !24
  %i.xk = getelementptr [4 x i8], ptr %i.xj, i64 %i.un ; 2 uses
  %i.xl = load float, ptr %i.xk, align 4, !tbaa !68 ; 2 uses
  %i.xm = getelementptr i8, ptr %i.xk, i64 4
  %i.xn = load float, ptr %i.xm, align 4, !tbaa !68 ; 2 uses
  %i.xo = insertelement <4 x float> poison, float %i.xl, i64 0 ; 2 uses
  %i.xp = shufflevector <4 x float> %i.xo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xq = insertelement <4 x float> poison, float %i.xn, i64 0 ; 2 uses
  %i.xr = shufflevector <4 x float> %i.xq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xs = shufflevector <4 x float> %i.xo, <4 x float> %i.xq, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  br i1 %i.lw, label %.lr.ph754.i, label %.preheader661.i

.preheader661.i:                                  ; preds = %.lr.ph754.i, %bb.r
  %.4502.lcssa.i = phi ptr [ %i.up, %bb.r ], [ %i.zf, %.lr.ph754.i ] ; 2 uses
  %.0492.lcssa.i = phi i32 [ 0, %bb.r ], [ %i.lx, %.lr.ph754.i ] ; 3 uses
  %.20.lcssa.i = phi ptr [ %.15771.i, %bb.r ], [ %i.ze, %.lr.ph754.i ] ; 2 uses
  %i.xt = or disjoint i32 %.0492.lcssa.i, 1
  %i.xu = icmp slt i32 %i.xt, %5
  br i1 %i.xu, label %.lr.ph761.i, label %.preheader659.i

.lr.ph754.i:                                      ; preds = %bb.r, %.lr.ph754.i
  %.20753.i = phi ptr [ %i.ze, %.lr.ph754.i ], [ %.15771.i, %bb.r ] ; 2 uses
  %.0492752.i = phi i32 [ %i.zg, %.lr.ph754.i ], [ 0, %bb.r ]
  %.4502751.i = phi ptr [ %i.zf, %.lr.ph754.i ], [ %i.up, %bb.r ] ; 5 uses
  %i.xv = load i64, ptr %.4502751.i, align 1, !tbaa !89
  %i.xw = insertelement <2 x i64> poison, i64 %i.xv, i64 0
  %i.xx = bitcast <2 x i64> %i.xw to <4 x float>
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %.4502751.i, i64 %i.n
  %i.xz = load i64, ptr %i.xy, align 1, !tbaa !89
  %i.ya = insertelement <2 x i64> poison, i64 %i.xz, i64 0
  %i.yb = bitcast <2 x i64> %i.ya to <4 x float>
  %i.yc = getelementptr inbounds nuw i8, ptr %.4502751.i, i64 %.idx515.i
  %i.yd = load i64, ptr %i.yc, align 1, !tbaa !89
  %i.ye = insertelement <2 x i64> poison, i64 %i.yd, i64 0
  %i.yf = bitcast <2 x i64> %i.ye to <4 x float>
  %i.yg = getelementptr inbounds nuw i8, ptr %.4502751.i, i64 %.idx516.i
  %i.yh = load i64, ptr %i.yg, align 1, !tbaa !89
  %i.yi = insertelement <2 x i64> poison, i64 %i.yh, i64 0
  %i.yj = bitcast <2 x i64> %i.yi to <4 x float>
  %i.yk = shufflevector <4 x float> %i.xx, <4 x float> %i.yb, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.yl = shufflevector <4 x float> %i.yf, <4 x float> %i.yj, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ym = shufflevector <4 x float> %i.yk, <4 x float> %i.yl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.yn = shufflevector <4 x float> %i.yk, <4 x float> %i.yl, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.yo = fmul fast <4 x float> %i.xp, %i.ym      ; 2 uses
  %i.yp = fmul fast <4 x float> %i.xr, %i.yn      ; 2 uses
  %i.yq = shufflevector <4 x float> %i.yo, <4 x float> %i.yp, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.yr = shufflevector <4 x float> %i.yo, <4 x float> %i.yp, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.ys = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.yq)
  %i.yt = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.yr)
  %i.yu = fadd fast <4 x float> %i.ys, %i.yq
  %i.yv = fadd fast <4 x float> %i.yt, %i.yr
  %i.yw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.yu)
  %i.yx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.yv)
  %i.yy = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.yw, <4 x i32> %i.yx)
  %i.yz = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.yy, <8 x i16> splat (i16 -127))
  %i.za = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.yz, <8 x i16> splat (i16 127))
  %i.zb = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.za, <8 x i16> poison)
  %i.zc = bitcast <16 x i8> %i.zb to <2 x i64>
  %i.zd = extractelement <2 x i64> %i.zc, i64 0
  store i64 %i.zd, ptr %.20753.i, align 8, !tbaa !109
  %i.ze = getelementptr inbounds nuw i8, ptr %.20753.i, i64 8 ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %.4502751.i, i64 %.idx518.i ; 2 uses
  %i.zg = add nuw nsw i32 %.0492752.i, 4          ; 2 uses
  %i.zh = or disjoint i32 %i.zg, 3
  %i.zi = icmp slt i32 %i.zh, %5
end_hunk_4
begin_hunk_5_@_ZN4ncnnL20pack_A_tile_quantizeERKNS_3MatERS0_iiiiS2_:bb.a
  %i.kc = fmul fast <8 x float> %i.kb, %i.gp      ; 2 uses
  %i.kd = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.kc)
  %i.ke = fadd fast <8 x float> %i.kd, %i.kc
  %i.kf = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ke) ; 2 uses
  %i.kg = shufflevector <8 x i32> %i.kf, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.kh = shufflevector <8 x i32> %i.kf, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ki = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.kg, <4 x i32> %i.kh)
  %i.kj = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ki, <8 x i16> splat (i16 -127))
  %i.kk = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.kj, <8 x i16> splat (i16 127))
  %i.kl = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.kk, <8 x i16> poison)
  %i.km = bitcast <16 x i8> %i.kl to <4 x i32>    ; 2 uses
  %i.kn = extractelement <4 x i32> %i.km, i64 0
  store i32 %i.kn, ptr %.5519.i, align 4, !tbaa !50
  %i.ko = extractelement <4 x i32> %i.km, i64 1
  store i32 %i.ko, ptr %.5365518.i, align 4, !tbaa !50
  %i.kp = getelementptr inbounds nuw i8, ptr %.5519.i, i64 4
  %i.kq = getelementptr inbounds nuw i8, ptr %.5365518.i, i64 4 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.4374517.i, i64 16
  %i.ks = add nuw nsw i32 %.1387516.i, 1          ; 2 uses
  %exitcond656.not.i = icmp eq i32 %i.ks, %5
  br i1 %exitcond656.not.i, label %.loopexit484.i, label %.lr.ph520.i, !llvm.loop !915

.preheader485.i:                                  ; preds = %bb.k
  br i1 %i.v, label %.lr.ph528.i, label %.preheader483.i

.preheader483.i:                                  ; preds = %.lr.ph528.i, %.preheader485.i
  %.0388.lcssa.i = phi i32 [ 0, %.preheader485.i ], [ %i.w, %.lr.ph528.i ] ; 2 uses
  %.6376.lcssa.i = phi ptr [ %i.gl, %.preheader485.i ], [ %i.no, %.lr.ph528.i ]
  %.7367.lcssa.i = phi ptr [ %.0360.i, %.preheader485.i ], [ %i.nn, %.lr.ph528.i ] ; 2 uses
  %.7.lcssa.i = phi ptr [ %.0354540.i, %.preheader485.i ], [ %i.nm, %.lr.ph528.i ]
  %i.kt = icmp slt i32 %.0388.lcssa.i, %5
  br i1 %i.kt, label %.lr.ph537.i, label %.loopexit484.i

.lr.ph528.i:                                      ; preds = %.preheader485.i, %.lr.ph528.i
  %.7527.i = phi ptr [ %i.nm, %.lr.ph528.i ], [ %.0354540.i, %.preheader485.i ] ; 2 uses
  %.7367526.i = phi ptr [ %i.nn, %.lr.ph528.i ], [ %.0360.i, %.preheader485.i ] ; 2 uses
  %.6376525.i = phi ptr [ %i.no, %.lr.ph528.i ], [ %i.gl, %.preheader485.i ] ; 10 uses
  %.0388524.i = phi i32 [ %i.np, %.lr.ph528.i ], [ 0, %.preheader485.i ]
  %i.ku = load float, ptr %.6376525.i, align 4, !tbaa !68
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %.6376525.i, i64 %i.n ; 2 uses
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !68
  %i.kx = getelementptr inbounds nuw i8, ptr %.6376525.i, i64 %.idx466.i ; 2 uses
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !68
  %i.kz = getelementptr inbounds nuw i8, ptr %.6376525.i, i64 %.idx467.i ; 2 uses
  %i.la = load float, ptr %i.kz, align 4, !tbaa !68
  %i.lb = getelementptr inbounds nuw i8, ptr %.6376525.i, i64 %.idx409.i ; 2 uses
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !68
  %i.ld = getelementptr inbounds nuw i8, ptr %.6376525.i, i64 %.idx469.i ; 2 uses
  %i.le = load float, ptr %i.ld, align 4, !tbaa !68
  %i.lf = getelementptr inbounds nuw i8, ptr %.6376525.i, i64 %.idx470.i ; 2 uses
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !68
  %i.lh = getelementptr inbounds nuw i8, ptr %.6376525.i, i64 %.idx471.i ; 2 uses
  %i.li = load float, ptr %i.lh, align 4, !tbaa !68
  %i.lj = insertelement <8 x float> poison, float %i.ku, i64 0
  %i.lk = insertelement <8 x float> %i.lj, float %i.kw, i64 1
  %i.ll = insertelement <8 x float> %i.lk, float %i.ky, i64 2
  %i.lm = insertelement <8 x float> %i.ll, float %i.la, i64 3
  %i.ln = insertelement <8 x float> %i.lm, float %i.lc, i64 4
  %i.lo = insertelement <8 x float> %i.ln, float %i.le, i64 5
  %i.lp = insertelement <8 x float> %i.lo, float %i.lg, i64 6
  %i.lq = insertelement <8 x float> %i.lp, float %i.li, i64 7
  %i.lr = getelementptr inbounds nuw i8, ptr %.6376525.i, i64 4
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !68
  %i.lt = getelementptr i8, ptr %i.kv, i64 4
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !68
  %i.lv = getelementptr inbounds nuw i8, ptr %i.kx, i64 4
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !68
  %i.lx = getelementptr i8, ptr %i.kz, i64 4
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !68
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !68
  %i.mb = getelementptr i8, ptr %i.ld, i64 4
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !68
  %i.md = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  %i.me = load float, ptr %i.md, align 4, !tbaa !68
  %i.mf = getelementptr i8, ptr %i.lh, i64 4
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !68
  %i.mh = insertelement <8 x float> poison, float %i.ls, i64 0
  %i.mi = insertelement <8 x float> %i.mh, float %i.lu, i64 1
  %i.mj = insertelement <8 x float> %i.mi, float %i.lw, i64 2
  %i.mk = insertelement <8 x float> %i.mj, float %i.ly, i64 3
  %i.ml = insertelement <8 x float> %i.mk, float %i.ma, i64 4
  %i.mm = insertelement <8 x float> %i.ml, float %i.mc, i64 5
  %i.mn = insertelement <8 x float> %i.mm, float %i.me, i64 6
  %i.mo = insertelement <8 x float> %i.mn, float %i.mg, i64 7
  %i.mp = fmul fast <8 x float> %i.lq, %i.gp      ; 2 uses
  %i.mq = fmul fast <8 x float> %i.mo, %i.gp      ; 2 uses
  %i.mr = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.mp)
  %i.ms = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.mq)
  %i.mt = fadd fast <8 x float> %i.mr, %i.mp
  %i.mu = fadd fast <8 x float> %i.ms, %i.mq
  %i.mv = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mt) ; 2 uses
  %i.mw = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mu) ; 2 uses
  %i.mx = shufflevector <8 x i32> %i.mv, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.my = shufflevector <8 x i32> %i.mv, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.mz = shufflevector <8 x i32> %i.mw, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.na = shufflevector <8 x i32> %i.mw, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.nb = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.mx, <4 x i32> %i.my)
  %i.nc = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.mz, <4 x i32> %i.na)
  %i.nd = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.nb, <8 x i16> splat (i16 -127))
  %i.ne = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.nd, <8 x i16> splat (i16 127))
  %i.nf = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.nc, <8 x i16> splat (i16 -127))
  %i.ng = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.nf, <8 x i16> splat (i16 127))
  %i.nh = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ne, <8 x i16> %i.ng)
  %i.ni = shufflevector <16 x i8> %i.nh, <16 x i8> poison, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.nj = bitcast <16 x i8> %i.ni to <2 x double> ; 2 uses
  %i.nk = extractelement <2 x double> %i.nj, i64 0
  store double %i.nk, ptr %.7527.i, align 1, !tbaa !89
  %i.nl = extractelement <2 x double> %i.nj, i64 1
  store double %i.nl, ptr %.7367526.i, align 1, !tbaa !89
  %i.nm = getelementptr inbounds nuw i8, ptr %.7527.i, i64 8 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.7367526.i, i64 8 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.6376525.i, i64 8 ; 2 uses
  %i.np = add nuw nsw i32 %.0388524.i, 2          ; 2 uses
  %i.nq = or disjoint i32 %i.np, 1
  %i.nr = icmp slt i32 %i.nq, %5
  br i1 %i.nr, label %.lr.ph528.i, label %.preheader483.i, !llvm.loop !916

.lr.ph537.i:                                      ; preds = %.preheader483.i, %.lr.ph537.i
  %.8536.i = phi ptr [ %i.pc, %.lr.ph537.i ], [ %.7.lcssa.i, %.preheader483.i ] ; 2 uses
  %.8368535.i = phi ptr [ %i.pd, %.lr.ph537.i ], [ %.7367.lcssa.i, %.preheader483.i ] ; 2 uses
  %.7377534.i = phi ptr [ %i.pe, %.lr.ph537.i ], [ %.6376.lcssa.i, %.preheader483.i ] ; 9 uses
  %.1389533.i = phi i32 [ %i.pf, %.lr.ph537.i ], [ %.0388.lcssa.i, %.preheader483.i ]
  %i.ns = load float, ptr %.7377534.i, align 4, !tbaa !68
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %.7377534.i, i64 %i.n
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !68
  %i.nv = getelementptr inbounds nuw i8, ptr %.7377534.i, i64 %.idx466.i
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !68
  %i.nx = getelementptr inbounds nuw i8, ptr %.7377534.i, i64 %.idx467.i
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !68
  %i.nz = getelementptr inbounds nuw i8, ptr %.7377534.i, i64 %.idx409.i
  %i.oa = load float, ptr %i.nz, align 4, !tbaa !68
  %i.ob = getelementptr inbounds nuw i8, ptr %.7377534.i, i64 %.idx469.i
  %i.oc = load float, ptr %i.ob, align 4, !tbaa !68
  %i.od = getelementptr inbounds nuw i8, ptr %.7377534.i, i64 %.idx470.i
  %i.oe = load float, ptr %i.od, align 4, !tbaa !68
  %i.of = getelementptr inbounds nuw i8, ptr %.7377534.i, i64 %.idx471.i
  %i.og = load float, ptr %i.of, align 4, !tbaa !68
  %i.oh = insertelement <8 x float> poison, float %i.ns, i64 0
  %i.oi = insertelement <8 x float> %i.oh, float %i.nu, i64 1
  %i.oj = insertelement <8 x float> %i.oi, float %i.nw, i64 2
  %i.ok = insertelement <8 x float> %i.oj, float %i.ny, i64 3
  %i.ol = insertelement <8 x float> %i.ok, float %i.oa, i64 4
  %i.om = insertelement <8 x float> %i.ol, float %i.oc, i64 5
  %i.on = insertelement <8 x float> %i.om, float %i.oe, i64 6
  %i.oo = insertelement <8 x float> %i.on, float %i.og, i64 7
  %i.op = fmul fast <8 x float> %i.oo, %i.gp      ; 2 uses
  %i.oq = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.op)
  %i.or = fadd fast <8 x float> %i.oq, %i.op
  %i.os = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.or) ; 2 uses
  %i.ot = shufflevector <8 x i32> %i.os, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ou = shufflevector <8 x i32> %i.os, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ov = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ot, <4 x i32> %i.ou)
  %i.ow = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ov, <8 x i16> splat (i16 -127))
  %i.ox = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ow, <8 x i16> splat (i16 127))
  %i.oy = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ox, <8 x i16> poison)
  %i.oz = bitcast <16 x i8> %i.oy to <4 x i32>    ; 2 uses
  %i.pa = extractelement <4 x i32> %i.oz, i64 0
  store i32 %i.pa, ptr %.8536.i, align 4, !tbaa !50
  %i.pb = extractelement <4 x i32> %i.oz, i64 1
  store i32 %i.pb, ptr %.8368535.i, align 4, !tbaa !50
  %i.pc = getelementptr inbounds nuw i8, ptr %.8536.i, i64 4
  %i.pd = getelementptr inbounds nuw i8, ptr %.8368535.i, i64 4 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %.7377534.i, i64 4
  %i.pf = add nuw nsw i32 %.1389533.i, 1          ; 2 uses
  %exitcond657.not.i = icmp eq i32 %i.pf, %5
  br i1 %exitcond657.not.i, label %.loopexit484.i, label %.lr.ph537.i, !llvm.loop !917

.loopexit484.i:                                   ; preds = %.lr.ph537.i, %.lr.ph520.i, %.lr.ph503.i, %.preheader483.i, %.preheader486.i, %.preheader489.i, %bb.k
  %.9369.i = phi ptr [ %.0360.i, %bb.k ], [ %.7367.lcssa.i, %.preheader483.i ], [ %i.im, %.lr.ph503.i ], [ %i.kq, %.lr.ph520.i ], [ %.4364.lcssa.i, %.preheader486.i ], [ %.1361.lcssa.i, %.preheader489.i ], [ %i.pd, %.lr.ph537.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.pg = or disjoint i64 %indvars.iv.next.i, 7
  %i.ph = icmp samesign ult i64 %i.pg, %i.x
  br i1 %i.ph, label %bb.k, label %.preheader482.loopexit.i, !llvm.loop !918

.preheader475.loopexit.i:                         ; preds = %.loopexit477.i.us40, %.loopexit477.i.us, %.loopexit477.i.preheader
  %.us-phi = phi ptr [ %.0354.lcssa.i, %.loopexit477.i.preheader ], [ %.15.i.us, %.loopexit477.i.us ], [ %.15.i.us41, %.loopexit477.i.us40 ]
  %.us-phi35 = phi i64 [ %i.aq, %.loopexit477.i.preheader ], [ %indvars.iv.next662.i.us, %.loopexit477.i.us ], [ %indvars.iv.next662.i.us42, %.loopexit477.i.us40 ]
  %i.pi = trunc nuw nsw i64 %.us-phi35 to i32
  br label %.preheader475.i

.preheader475.i:                                  ; preds = %.preheader475.loopexit.i, %.preheader482.i
  %.1357.lcssa.i = phi i32 [ %.0356.lcssa.i, %.preheader482.i ], [ %i.pi, %.preheader475.loopexit.i ] ; 3 uses
  %.9.lcssa.i = phi ptr [ %.0354.lcssa.i, %.preheader482.i ], [ %.us-phi, %.preheader475.loopexit.i ] ; 2 uses
  %i.pj = or disjoint i32 %.1357.lcssa.i, 1
  %i.pk = icmp slt i32 %i.pj, %3
  br i1 %i.pk, label %.lr.ph595.i, label %.preheader472.i

.lr.ph595.i:                                      ; preds = %.preheader475.i
  %i.pl = sext i32 %4 to i64
  %i.pm = icmp sgt i32 %5, 3
  %i.pn = and i32 %5, -4
  %i.po = zext nneg i32 %.1357.lcssa.i to i64
  %i.pp = sext i32 %3 to i64
  %i.pq = sext i32 %2 to i64
  %invariant.op717.i = add nsw i64 %i.pp, -1
  %i.pr = shl nuw nsw i64 %i.n, 2                 ; 2 uses
  br label %bb.l

.preheader472.loopexit.i:                         ; preds = %._crit_edge.i
  %i.ps = trunc nuw nsw i64 %indvars.iv.next666.i to i32
  br label %.preheader472.i

.preheader472.i:                                  ; preds = %.preheader472.loopexit.i, %.preheader475.i
  %.2358.lcssa.i = phi i32 [ %.1357.lcssa.i, %.preheader475.i ], [ %i.ps, %.preheader472.loopexit.i ] ; 2 uses
  %.16.lcssa.i = phi ptr [ %.9.lcssa.i, %.preheader475.i ], [ %.19.lcssa.i, %.preheader472.loopexit.i ]
  %i.pt = icmp slt i32 %.2358.lcssa.i, %3
  br i1 %i.pt, label %.lr.ph614.i, label %_ZN4ncnnL24pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

.lr.ph614.i:                                      ; preds = %.preheader472.i
  %i.pu = sext i32 %4 to i64
  %i.pv = icmp sgt i32 %5, 3
  %i.pw = and i32 %5, -4
  %i.px = sext i32 %.2358.lcssa.i to i64
  %i.py = sext i32 %2 to i64
  %wide.trip.count.i = sext i32 %3 to i64
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i, %.lr.ph595.i
  %indvars.iv665.i = phi i64 [ %i.po, %.lr.ph595.i ], [ %indvars.iv.next666.i, %._crit_edge.i ] ; 2 uses
  %.16594.i = phi ptr [ %.9.lcssa.i, %.lr.ph595.i ], [ %.19.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.pz = load ptr, ptr %0, align 8, !tbaa !24
  %i.qa = add nsw i64 %indvars.iv665.i, %i.pq     ; 2 uses
  %i.qb = mul i64 %i.qa, %i.n
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.pz, i64 %i.qb
  %i.qd = getelementptr inbounds [4 x i8], ptr %i.qc, i64 %i.pl ; 2 uses
  %i.qe = load ptr, ptr %6, align 8, !tbaa !24
  %i.qf = getelementptr [4 x i8], ptr %i.qe, i64 %i.qa ; 2 uses
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !68 ; 3 uses
  %i.qh = getelementptr i8, ptr %i.qf, i64 4
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !68 ; 3 uses
  %i.qj = insertelement <4 x float> poison, float %i.qg, i64 0 ; 2 uses
  %i.qk = shufflevector <4 x float> %i.qj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ql = insertelement <4 x float> poison, float %i.qi, i64 0 ; 2 uses
  %i.qm = shufflevector <4 x float> %i.ql, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qn = shufflevector <4 x float> %i.qj, <4 x float> %i.ql, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  br i1 %i.pm, label %.lr.ph577.i, label %.preheader474.i

.preheader474.i:                                  ; preds = %.lr.ph577.i, %bb.l
  %.0381.lcssa.i = phi ptr [ %i.qd, %bb.l ], [ %i.rk, %.lr.ph577.i ] ; 2 uses
  %.0378.lcssa.i = phi i32 [ 0, %bb.l ], [ %i.pn, %.lr.ph577.i ] ; 3 uses
  %.17.lcssa.i = phi ptr [ %.16594.i, %bb.l ], [ %i.rj, %.lr.ph577.i ] ; 2 uses
  %i.qo = or disjoint i32 %.0378.lcssa.i, 1
  %i.qp = icmp slt i32 %i.qo, %5
  br i1 %i.qp, label %.lr.ph584.i, label %.preheader473.i

.lr.ph577.i:                                      ; preds = %bb.l, %.lr.ph577.i
  %.17576.i = phi ptr [ %i.rj, %.lr.ph577.i ], [ %.16594.i, %bb.l ] ; 2 uses
  %.0378575.i = phi i32 [ %i.rl, %.lr.ph577.i ], [ 0, %bb.l ]
  %.0381574.i = phi ptr [ %i.rk, %.lr.ph577.i ], [ %i.qd, %bb.l ] ; 3 uses
  %i.qq = load <4 x float>, ptr %.0381574.i, align 1, !tbaa !89
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %.0381574.i, i64 %i.n
  %i.qs = load <4 x float>, ptr %i.qr, align 1, !tbaa !89
  %i.qt = fmul fast <4 x float> %i.qq, %i.qk      ; 2 uses
  %i.qu = fmul fast <4 x float> %i.qs, %i.qm      ; 2 uses
  %i.qv = shufflevector <4 x float> %i.qt, <4 x float> %i.qu, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.qw = shufflevector <4 x float> %i.qt, <4 x float> %i.qu, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.qx = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.qv)
  %i.qy = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.qw)
  %i.qz = fadd fast <4 x float> %i.qx, %i.qv
  %i.ra = fadd fast <4 x float> %i.qy, %i.qw
  %i.rb = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qz)
  %i.rc = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ra)
  %i.rd = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.rb, <4 x i32> %i.rc)
  %i.re = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.rd, <8 x i16> splat (i16 -127))
  %i.rf = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.re, <8 x i16> splat (i16 127))
  %i.rg = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.rf, <8 x i16> poison)
  %i.rh = bitcast <16 x i8> %i.rg to <2 x i64>
  %i.ri = extractelement <2 x i64> %i.rh, i64 0
  store i64 %i.ri, ptr %.17576.i, align 8, !tbaa !109
  %i.rj = getelementptr inbounds nuw i8, ptr %.17576.i, i64 8 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %.0381574.i, i64 16 ; 2 uses
  %i.rl = add nuw nsw i32 %.0378575.i, 4          ; 2 uses
  %i.rm = or disjoint i32 %i.rl, 3
  %i.rn = icmp slt i32 %i.rm, %5
  br i1 %i.rn, label %.lr.ph577.i, label %.preheader474.i, !llvm.loop !919

.preheader473.i:                                  ; preds = %.lr.ph584.i, %.preheader474.i
  %.1382.lcssa.i = phi ptr [ %.0381.lcssa.i, %.preheader474.i ], [ %i.tg, %.lr.ph584.i ] ; 8 uses
  %.1379.lcssa.i = phi i32 [ %.0378.lcssa.i, %.preheader474.i ], [ %i.th, %.lr.ph584.i ] ; 6 uses
  %.18.lcssa.i = phi ptr [ %.17.lcssa.i, %.preheader474.i ], [ %i.tf, %.lr.ph584.i ] ; 8 uses
  %i.ro = icmp slt i32 %.1379.lcssa.i, %5
  br i1 %i.ro, label %.lr.ph591.i.preheader, label %._crit_edge.i

.lr.ph591.i.preheader:                            ; preds = %.preheader473.i
  %i.rp = xor i32 %.1379.lcssa.i, -1
  %i.rq = add i32 %5, %i.rp                       ; 2 uses
  %i.rr = zext i32 %i.rq to i64
  %i.rs = add nuw nsw i64 %i.rr, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.rq, 7
  br i1 %min.iters.check, label %.lr.ph591.i.preheader182, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph591.i.preheader
  %scevgep = getelementptr i8, ptr %.18.lcssa.i, i64 2
  %i.rt = xor i32 %.1379.lcssa.i, -1
  %i.ru = add i32 %5, %i.rt
  %i.rv = zext i32 %i.ru to i64                   ; 2 uses
  %i.rw = shl nuw nsw i64 %i.rv, 1
  %scevgep139 = getelementptr i8, ptr %scevgep, i64 %i.rw ; 2 uses
  %scevgep140 = getelementptr i8, ptr %.1382.lcssa.i, i64 %i.pr
  %i.rx = getelementptr i8, ptr %.1382.lcssa.i, i64 %i.pr
  %scevgep141 = getelementptr i8, ptr %i.rx, i64 4
  %i.ry = shl nuw nsw i64 %i.rv, 2                ; 2 uses
  %scevgep142 = getelementptr i8, ptr %scevgep141, i64 %i.ry
  %scevgep143 = getelementptr i8, ptr %.1382.lcssa.i, i64 4
  %scevgep144 = getelementptr i8, ptr %scevgep143, i64 %i.ry
  %bound0 = icmp ult ptr %.18.lcssa.i, %scevgep142
  %bound1 = icmp ult ptr %scevgep140, %scevgep139
  %found.conflict = and i1 %bound0, %bound1
  %bound0145 = icmp ult ptr %.18.lcssa.i, %scevgep144
  %bound1146 = icmp ult ptr %.1382.lcssa.i, %scevgep139
  %found.conflict147 = and i1 %bound0145, %bound1146
  %conflict.rdx = or i1 %found.conflict, %found.conflict147
  br i1 %conflict.rdx, label %.lr.ph591.i.preheader182, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.rs, 8589934584              ; 5 uses
  %i.rz = shl nuw nsw i64 %n.vec, 1
  %i.sa = getelementptr i8, ptr %.18.lcssa.i, i64 %i.rz ; 2 uses
  %i.sb = trunc i64 %n.vec to i32
  %i.sc = add i32 %.1379.lcssa.i, %i.sb
  %i.sd = shl nuw nsw i64 %n.vec, 2
  %i.se = getelementptr i8, ptr %.1382.lcssa.i, i64 %i.sd
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.qg, i64 0
  %broadcast.splatinsert148 = insertelement <8 x float> poison, float %i.qi, i64 0
  %i.sf = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> %broadcast.splatinsert148, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.sg = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.18.lcssa.i, i64 %i.sg
  %i.sh = shl i64 %index, 2
  %next.gep150 = getelementptr i8, ptr %.1382.lcssa.i, i64 %i.sh ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep150, align 4, !tbaa !68, !alias.scope !935
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %next.gep150, i64 %i.n
  %wide.load151 = load <8 x float>, ptr %i.si, align 4, !tbaa !68, !alias.scope !936
  %i.sj = shufflevector <8 x float> %wide.load, <8 x float> %wide.load151, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.sk = fmul fast <16 x float> %i.sj, %i.sf
  %i.sl = tail call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.sk)
  %i.sm = fptosi <16 x float> %i.sl to <16 x i32>
  %i.sn = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.sm, <16 x i32> splat (i32 -127))
  %i.so = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.sn, <16 x i32> splat (i32 127))
  %interleaved.vec = trunc nsw <16 x i32> %i.so to <16 x i8>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !89, !alias.scope !937, !noalias !938
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.sp = icmp eq i64 %index.next, %n.vec
  br i1 %i.sp, label %middle.block, label %vector.body, !llvm.loop !924

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.rs, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph591.i.preheader182

.lr.ph591.i.preheader182:                         ; preds = %vector.memcheck, %.lr.ph591.i.preheader, %middle.block
  %.19590.i.ph = phi ptr [ %.18.lcssa.i, %vector.memcheck ], [ %.18.lcssa.i, %.lr.ph591.i.preheader ], [ %i.sa, %middle.block ]
  %.2380589.i.ph = phi i32 [ %.1379.lcssa.i, %vector.memcheck ], [ %.1379.lcssa.i, %.lr.ph591.i.preheader ], [ %i.sc, %middle.block ]
  %.2383588.i.ph = phi ptr [ %.1382.lcssa.i, %vector.memcheck ], [ %.1382.lcssa.i, %.lr.ph591.i.preheader ], [ %i.se, %middle.block ]
  br label %.lr.ph591.i

.lr.ph584.i:                                      ; preds = %.preheader474.i, %.lr.ph584.i
  %.18583.i = phi ptr [ %i.tf, %.lr.ph584.i ], [ %.17.lcssa.i, %.preheader474.i ] ; 2 uses
  %.1379582.i = phi i32 [ %i.th, %.lr.ph584.i ], [ %.0378.lcssa.i, %.preheader474.i ]
  %.1382581.i = phi ptr [ %i.tg, %.lr.ph584.i ], [ %.0381.lcssa.i, %.preheader474.i ] ; 3 uses
  %i.sq = load i64, ptr %.1382581.i, align 1, !tbaa !89
  %i.sr = insertelement <2 x i64> poison, i64 %i.sq, i64 0
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %.1382581.i, i64 %i.n
  %i.st = load i64, ptr %i.ss, align 1, !tbaa !89
  %.uncasted.i = insertelement <2 x i64> %i.sr, i64 %i.st, i64 1
  %i.su = bitcast <2 x i64> %.uncasted.i to <4 x float>
  %i.sv = fmul fast <4 x float> %i.qn, %i.su      ; 2 uses
  %i.sw = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.sv)
  %i.sx = fadd fast <4 x float> %i.sw, %i.sv
  %i.sy = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.sx) ; 2 uses
  %i.sz = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.sy, <4 x i32> %i.sy)
  %i.ta = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.sz, <8 x i16> splat (i16 -127))
  %i.tb = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ta, <8 x i16> splat (i16 127))
  %i.tc = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.tb, <8 x i16> poison)
  %i.td = bitcast <16 x i8> %i.tc to <4 x i32>
  %i.te = extractelement <4 x i32> %i.td, i64 0
  store i32 %i.te, ptr %.18583.i, align 4, !tbaa !50
  %i.tf = getelementptr inbounds nuw i8, ptr %.18583.i, i64 4 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %.1382581.i, i64 8 ; 2 uses
  %i.th = add nuw nsw i32 %.1379582.i, 2          ; 3 uses
  %i.ti = or disjoint i32 %i.th, 1
  %i.tj = icmp slt i32 %i.ti, %5
  br i1 %i.tj, label %.lr.ph584.i, label %.preheader473.i, !llvm.loop !925

.lr.ph591.i:                                      ; preds = %.lr.ph591.i.preheader182, %.lr.ph591.i
  %.19590.i = phi ptr [ %i.tu, %.lr.ph591.i ], [ %.19590.i.ph, %.lr.ph591.i.preheader182 ] ; 3 uses
  %.2380589.i = phi i32 [ %i.tw, %.lr.ph591.i ], [ %.2380589.i.ph, %.lr.ph591.i.preheader182 ]
  %.2383588.i = phi ptr [ %i.tv, %.lr.ph591.i ], [ %.2383588.i.ph, %.lr.ph591.i.preheader182 ] ; 3 uses
  %i.tk = load float, ptr %.2383588.i, align 4, !tbaa !68
  %i.tl = fmul fast float %i.tk, %i.qg
  %i.tm = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.tl)
  %i.tn = fptosi float %i.tm to i32
  %spec.select.i412460.i = tail call i32 @llvm.smax.i32(i32 %i.tn, i32 -127)
  %.0.i413461.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i412460.i, i32 127)
  %.0.i413.i = trunc nsw i32 %.0.i413461.i to i8
  store i8 %.0.i413.i, ptr %.19590.i, align 1, !tbaa !89
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %.2383588.i, i64 %i.n
  %i.tp = load float, ptr %i.to, align 4, !tbaa !68
end_hunk_5
