inline.NumInlined: 62
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 103
begin_hunk_0_@deflate_compress_near_optimal:bb.a
  %i.fz = zext <4 x i8> %wide.load480.12 to <4 x i32>
  %i.ga = zext <4 x i8> %wide.load481.12 to <4 x i32>
  %i.gb = add <4 x i32> %i.fx, %i.fz
  %i.gc = add <4 x i32> %i.fy, %i.ga
  %wide.load480.13 = load <4 x i8>, ptr %i.br, align 8, !tbaa !20
  %wide.load481.13 = load <4 x i8>, ptr %i.bs, align 4, !tbaa !20
  %i.gd = zext <4 x i8> %wide.load480.13 to <4 x i32>
  %i.ge = zext <4 x i8> %wide.load481.13 to <4 x i32>
  %i.gf = add <4 x i32> %i.gb, %i.gd
  %i.gg = add <4 x i32> %i.gc, %i.ge
  %wide.load480.14 = load <4 x i8>, ptr %i.bt, align 16, !tbaa !20
  %wide.load481.14 = load <4 x i8>, ptr %i.bu, align 4, !tbaa !20
  %i.gh = zext <4 x i8> %wide.load480.14 to <4 x i32>
  %i.gi = zext <4 x i8> %wide.load481.14 to <4 x i32>
  %i.gj = add <4 x i32> %i.gf, %i.gh
  %i.gk = add <4 x i32> %i.gg, %i.gi
  %wide.load480.15 = load <4 x i8>, ptr %i.bv, align 8, !tbaa !20
  %wide.load481.15 = load <4 x i8>, ptr %i.bw, align 4, !tbaa !20
  %i.gl = zext <4 x i8> %wide.load480.15 to <4 x i32>
  %i.gm = zext <4 x i8> %wide.load481.15 to <4 x i32>
  %i.gn = add <4 x i32> %i.gj, %i.gl
  %i.go = add <4 x i32> %i.gk, %i.gm
  %wide.load480.16 = load <4 x i8>, ptr %i.bx, align 16, !tbaa !20
  %wide.load481.16 = load <4 x i8>, ptr %i.by, align 4, !tbaa !20
  %i.gp = zext <4 x i8> %wide.load480.16 to <4 x i32>
  %i.gq = zext <4 x i8> %wide.load481.16 to <4 x i32>
  %i.gr = add <4 x i32> %i.gn, %i.gp
  %i.gs = add <4 x i32> %i.go, %i.gq
  %wide.load480.17 = load <4 x i8>, ptr %i.bz, align 8, !tbaa !20
  %wide.load481.17 = load <4 x i8>, ptr %i.ca, align 4, !tbaa !20
  %i.gt = zext <4 x i8> %wide.load480.17 to <4 x i32>
  %i.gu = zext <4 x i8> %wide.load481.17 to <4 x i32>
  %i.gv = add <4 x i32> %i.gr, %i.gt
  %i.gw = add <4 x i32> %i.gs, %i.gu
  %wide.load480.18 = load <4 x i8>, ptr %i.cb, align 16, !tbaa !20
  %wide.load481.18 = load <4 x i8>, ptr %i.cc, align 4, !tbaa !20
  %i.gx = zext <4 x i8> %wide.load480.18 to <4 x i32>
  %i.gy = zext <4 x i8> %wide.load481.18 to <4 x i32>
  %i.gz = add <4 x i32> %i.gv, %i.gx
  %i.ha = add <4 x i32> %i.gw, %i.gy
  %wide.load480.19 = load <4 x i8>, ptr %i.cd, align 8, !tbaa !20
  %wide.load481.19 = load <4 x i8>, ptr %i.ce, align 4, !tbaa !20
  %i.hb = zext <4 x i8> %wide.load480.19 to <4 x i32>
  %i.hc = zext <4 x i8> %wide.load481.19 to <4 x i32>
  %i.hd = add <4 x i32> %i.gz, %i.hb
  %i.he = add <4 x i32> %i.ha, %i.hc
  %wide.load480.20 = load <4 x i8>, ptr %i.cf, align 16, !tbaa !20
  %wide.load481.20 = load <4 x i8>, ptr %i.cg, align 4, !tbaa !20
  %i.hf = zext <4 x i8> %wide.load480.20 to <4 x i32>
  %i.hg = zext <4 x i8> %wide.load481.20 to <4 x i32>
  %i.hh = add <4 x i32> %i.hd, %i.hf
  %i.hi = add <4 x i32> %i.he, %i.hg
  %wide.load480.21 = load <4 x i8>, ptr %i.ch, align 8, !tbaa !20
  %wide.load481.21 = load <4 x i8>, ptr %i.ci, align 4, !tbaa !20
  %i.hj = zext <4 x i8> %wide.load480.21 to <4 x i32>
  %i.hk = zext <4 x i8> %wide.load481.21 to <4 x i32>
  %i.hl = add <4 x i32> %i.hh, %i.hj
  %i.hm = add <4 x i32> %i.hi, %i.hk
  %wide.load480.22 = load <4 x i8>, ptr %i.cj, align 16, !tbaa !20
  %wide.load481.22 = load <4 x i8>, ptr %i.ck, align 4, !tbaa !20
  %i.hn = zext <4 x i8> %wide.load480.22 to <4 x i32>
  %i.ho = zext <4 x i8> %wide.load481.22 to <4 x i32>
  %i.hp = add <4 x i32> %i.hl, %i.hn
  %i.hq = add <4 x i32> %i.hm, %i.ho
  %wide.load480.23 = load <4 x i8>, ptr %i.cl, align 8, !tbaa !20
  %wide.load481.23 = load <4 x i8>, ptr %i.cm, align 4, !tbaa !20
  %i.hr = zext <4 x i8> %wide.load480.23 to <4 x i32>
  %i.hs = zext <4 x i8> %wide.load481.23 to <4 x i32>
  %i.ht = add <4 x i32> %i.hp, %i.hr
  %i.hu = add <4 x i32> %i.hq, %i.hs
  %wide.load480.24 = load <4 x i8>, ptr %i.cn, align 16, !tbaa !20
  %wide.load481.24 = load <4 x i8>, ptr %i.co, align 4, !tbaa !20
  %i.hv = zext <4 x i8> %wide.load480.24 to <4 x i32>
  %i.hw = zext <4 x i8> %wide.load481.24 to <4 x i32>
  %i.hx = add <4 x i32> %i.ht, %i.hv
  %i.hy = add <4 x i32> %i.hu, %i.hw
  %wide.load480.25 = load <4 x i8>, ptr %i.cp, align 8, !tbaa !20
  %wide.load481.25 = load <4 x i8>, ptr %i.cq, align 4, !tbaa !20
  %i.hz = zext <4 x i8> %wide.load480.25 to <4 x i32>
  %i.ia = zext <4 x i8> %wide.load481.25 to <4 x i32>
  %i.ib = add <4 x i32> %i.hx, %i.hz
  %i.ic = add <4 x i32> %i.hy, %i.ia
  %wide.load480.26 = load <4 x i8>, ptr %i.cr, align 16, !tbaa !20
  %wide.load481.26 = load <4 x i8>, ptr %i.cs, align 4, !tbaa !20
  %i.id = zext <4 x i8> %wide.load480.26 to <4 x i32>
  %i.ie = zext <4 x i8> %wide.load481.26 to <4 x i32>
  %i.if = add <4 x i32> %i.ib, %i.id
  %i.ig = add <4 x i32> %i.ic, %i.ie
  %wide.load480.27 = load <4 x i8>, ptr %i.ct, align 8, !tbaa !20
  %wide.load481.27 = load <4 x i8>, ptr %i.cu, align 4, !tbaa !20
  %i.ih = zext <4 x i8> %wide.load480.27 to <4 x i32>
  %i.ii = zext <4 x i8> %wide.load481.27 to <4 x i32>
  %i.ij = add <4 x i32> %i.if, %i.ih
  %i.ik = add <4 x i32> %i.ig, %i.ii
  %wide.load480.28 = load <4 x i8>, ptr %i.cv, align 16, !tbaa !20
  %wide.load481.28 = load <4 x i8>, ptr %i.cw, align 4, !tbaa !20
  %i.il = zext <4 x i8> %wide.load480.28 to <4 x i32>
  %i.im = zext <4 x i8> %wide.load481.28 to <4 x i32>
  %i.in = add <4 x i32> %i.ij, %i.il
  %i.io = add <4 x i32> %i.ik, %i.im
  %wide.load480.29 = load <4 x i8>, ptr %i.cx, align 8, !tbaa !20
  %wide.load481.29 = load <4 x i8>, ptr %i.cy, align 4, !tbaa !20
  %i.ip = zext <4 x i8> %wide.load480.29 to <4 x i32>
  %i.iq = zext <4 x i8> %wide.load481.29 to <4 x i32>
  %i.ir = add <4 x i32> %i.in, %i.ip
  %i.is = add <4 x i32> %i.io, %i.iq
  %wide.load480.30 = load <4 x i8>, ptr %i.cz, align 16, !tbaa !20
  %wide.load481.30 = load <4 x i8>, ptr %i.da, align 4, !tbaa !20
  %i.it = zext <4 x i8> %wide.load480.30 to <4 x i32>
  %i.iu = zext <4 x i8> %wide.load481.30 to <4 x i32>
  %i.iv = add <4 x i32> %i.ir, %i.it
  %i.iw = add <4 x i32> %i.is, %i.iu
  %wide.load480.31 = load <4 x i8>, ptr %i.db, align 8, !tbaa !20
  %wide.load481.31 = load <4 x i8>, ptr %i.dc, align 4, !tbaa !20
  %i.ix = zext <4 x i8> %wide.load480.31 to <4 x i32>
  %i.iy = zext <4 x i8> %wide.load481.31 to <4 x i32>
  %i.iz = add <4 x i32> %i.iv, %i.ix
  %i.ja = add <4 x i32> %i.iw, %i.iy
  %bin.rdx = add <4 x i32> %i.ja, %i.iz
  %i.jb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 5 uses
  %i.jc = icmp ugt i32 %i.jb, 79
  br i1 %i.jc, label %calculate_min_match_len.exit, label %bb.e

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.013.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.jw, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.jd = getelementptr inbounds nuw i8, ptr %.0151, i64 %.013.i
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !20
  %i.jf = zext i8 %i.je to i64
  %i.jg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jf
  store i8 1, ptr %i.jg, align 1, !tbaa !20
  %i.jh = getelementptr inbounds nuw i8, ptr %.0151, i64 %.013.i
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 1
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !20
  %i.jk = zext i8 %i.jj to i64
  %i.jl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jk
  store i8 1, ptr %i.jl, align 1, !tbaa !20
  %i.jm = getelementptr inbounds nuw i8, ptr %.0151, i64 %.013.i
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 2
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !20
  %i.jp = zext i8 %i.jo to i64
  %i.jq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jp
  store i8 1, ptr %i.jq, align 1, !tbaa !20
  %i.jr = getelementptr inbounds nuw i8, ptr %.0151, i64 %.013.i
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 3
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !20
  %i.ju = zext i8 %i.jt to i64
  %i.jv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ju
  store i8 1, ptr %i.jv, align 1, !tbaa !20
  %i.jw = add nuw nsw i64 %.013.i, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %vector.body477.preheader.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !55

bb.e:                                             ; preds = %vector.body477
  %i.jx = zext nneg i32 %i.jb to i64
  %i.jy = getelementptr inbounds nuw i8, ptr @choose_min_match_len.min_lens, i64 %i.jx
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !20
  %i.ka = zext i8 %i.jz to i32                    ; 4 uses
  %i.kb = icmp ult i32 %i.dx, 16
  br i1 %i.kb, label %bb.f, label %calculate_min_match_len.exit

bb.f:                                             ; preds = %bb.e
  %i.kc = icmp samesign ult i32 %i.dx, 5
  br i1 %i.kc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.kd = icmp samesign ugt i32 %i.jb, 44
  %i.ke = select i1 %i.kd, i32 %i.ka, i32 4
  br label %calculate_min_match_len.exit

bb.h:                                             ; preds = %bb.f
  %i.kf = icmp samesign ult i32 %i.dx, 10
  br i1 %i.kf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.kg = icmp samesign ugt i32 %i.jb, 15
  %i.kh = select i1 %i.kg, i32 %i.ka, i32 5
  br label %calculate_min_match_len.exit

bb.j:                                             ; preds = %bb.h
  %i.ki = icmp samesign ugt i32 %i.jb, 7
  %i.kj = select i1 %i.ki, i32 %i.ka, i32 7
  br label %calculate_min_match_len.exit

calculate_min_match_len.exit:                     ; preds = %vector.body477, %bb.e, %bb.g, %bb.i, %bb.j
  %.013.i.i = phi i32 [ 3, %vector.body477 ], [ %i.ke, %bb.g ], [ %i.kh, %bb.i ], [ %i.kj, %bb.j ], [ %i.ka, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %calculate_min_match_len.exit
  %.0176 = phi i32 [ %.013.i.i, %calculate_min_match_len.exit ], [ 259, %bb.c ]
  br label %deflate_near_optimal_merge_stats.exit.outer

deflate_near_optimal_merge_stats.exit.outer:      ; preds = %scalar.ph465, %bb.k
  %.1281.ph = phi i32 [ %.3283, %scalar.ph465 ], [ %.0280, %bb.k ]
  %.1275.ph = phi i32 [ %.3277, %scalar.ph465 ], [ %.0274, %bb.k ]
  %.sroa.9.1.ph = phi i32 [ %.sroa.9.5, %scalar.ph465 ], [ %.sroa.9.0, %bb.k ]
  %.sroa.0.1.ph = phi i32 [ %.sroa.0.5, %scalar.ph465 ], [ %.sroa.0.0, %bb.k ]
  %.0174.ph = phi ptr [ %.1175, %scalar.ph465 ], [ %.0, %bb.k ]
  %.0170.ph = phi ptr [ %.3, %scalar.ph465 ], [ null, %bb.k ] ; 3 uses
  %.1165.idx.ph = phi i64 [ %.4168.idx, %scalar.ph465 ], [ %.0164.idx, %bb.k ]
  %.1158.ph = phi ptr [ %.5162, %scalar.ph465 ], [ %.0157, %bb.k ]
  %.1154.ph = phi ptr [ %.5, %scalar.ph465 ], [ %.0153, %bb.k ]
  %.1.ph = phi ptr [ %.3, %scalar.ph465 ], [ %.0, %bb.k ]
  br label %deflate_near_optimal_merge_stats.exit

deflate_near_optimal_merge_stats.exit:            ; preds = %deflate_near_optimal_merge_stats.exit.backedge, %deflate_near_optimal_merge_stats.exit.outer
  %.1281 = phi i32 [ %.1281.ph, %deflate_near_optimal_merge_stats.exit.outer ], [ %.3283, %deflate_near_optimal_merge_stats.exit.backedge ]
  %.1275 = phi i32 [ %.1275.ph, %deflate_near_optimal_merge_stats.exit.outer ], [ %.3277, %deflate_near_optimal_merge_stats.exit.backedge ] ; 2 uses
  %.sroa.9.1 = phi i32 [ %.sroa.9.1.ph, %deflate_near_optimal_merge_stats.exit.outer ], [ %.sroa.9.5, %deflate_near_optimal_merge_stats.exit.backedge ] ; 2 uses
  %.sroa.0.1 = phi i32 [ %.sroa.0.1.ph, %deflate_near_optimal_merge_stats.exit.outer ], [ %.sroa.0.5, %deflate_near_optimal_merge_stats.exit.backedge ] ; 2 uses
  %.0174 = phi ptr [ %.0174.ph, %deflate_near_optimal_merge_stats.exit.outer ], [ %.1175, %deflate_near_optimal_merge_stats.exit.backedge ] ; 2 uses
  %.1165.idx = phi i64 [ %.1165.idx.ph, %deflate_near_optimal_merge_stats.exit.outer ], [ %.4168.idx, %deflate_near_optimal_merge_stats.exit.backedge ] ; 8 uses
  %.1158 = phi ptr [ %.1158.ph, %deflate_near_optimal_merge_stats.exit.outer ], [ %.5162, %deflate_near_optimal_merge_stats.exit.backedge ] ; 2 uses
  %.1154 = phi ptr [ %.1154.ph, %deflate_near_optimal_merge_stats.exit.outer ], [ %.5, %deflate_near_optimal_merge_stats.exit.backedge ]
  %.1 = phi ptr [ %.1.ph, %deflate_near_optimal_merge_stats.exit.outer ], [ %.3, %deflate_near_optimal_merge_stats.exit.backedge ] ; 10 uses
  %.1165.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.1165.idx ; 2 uses
  %i.kk = ptrtoint ptr %.1 to i64                 ; 2 uses
  %i.kl = sub i64 %i.x, %i.kk                     ; 3 uses
  %i.km = icmp eq ptr %.1, %.1158
  br i1 %i.km, label %.preheader306, label %bb.l

.preheader306:                                    ; preds = %deflate_near_optimal_merge_stats.exit, %.preheader306
  %.015.i.i200 = phi ptr [ %i.lk, %.preheader306 ], [ %i.e, %deflate_near_optimal_merge_stats.exit ] ; 10 uses
  %.0.i.i201 = phi i64 [ %i.ll, %.preheader306 ], [ 524288, %deflate_near_optimal_merge_stats.exit ]
  %i.kn = load <8 x i16>, ptr %.015.i.i200, align 16, !tbaa !20
  %i.ko = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.kn, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.ko, ptr %.015.i.i200, align 16, !tbaa !20
  %i.kp = getelementptr inbounds nuw i8, ptr %.015.i.i200, i64 16 ; 2 uses
  %i.kq = load <8 x i16>, ptr %i.kp, align 16, !tbaa !20
  %i.kr = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.kq, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.kr, ptr %i.kp, align 16, !tbaa !20
  %i.ks = getelementptr inbounds nuw i8, ptr %.015.i.i200, i64 32 ; 2 uses
  %i.kt = load <8 x i16>, ptr %i.ks, align 16, !tbaa !20
  %i.ku = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.kt, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.ku, ptr %i.ks, align 16, !tbaa !20
  %i.kv = getelementptr inbounds nuw i8, ptr %.015.i.i200, i64 48 ; 2 uses
  %i.kw = load <8 x i16>, ptr %i.kv, align 16, !tbaa !20
  %i.kx = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.kw, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.kx, ptr %i.kv, align 16, !tbaa !20
  %i.ky = getelementptr inbounds nuw i8, ptr %.015.i.i200, i64 64 ; 2 uses
  %i.kz = load <8 x i16>, ptr %i.ky, align 16, !tbaa !20
  %i.la = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.kz, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.la, ptr %i.ky, align 16, !tbaa !20
  %i.lb = getelementptr inbounds nuw i8, ptr %.015.i.i200, i64 80 ; 2 uses
  %i.lc = load <8 x i16>, ptr %i.lb, align 16, !tbaa !20
  %i.ld = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.lc, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.ld, ptr %i.lb, align 16, !tbaa !20
  %i.le = getelementptr inbounds nuw i8, ptr %.015.i.i200, i64 96 ; 2 uses
  %i.lf = load <8 x i16>, ptr %i.le, align 16, !tbaa !20
  %i.lg = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.lf, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.lg, ptr %i.le, align 16, !tbaa !20
  %i.lh = getelementptr inbounds nuw i8, ptr %.015.i.i200, i64 112 ; 2 uses
  %i.li = load <8 x i16>, ptr %i.lh, align 16, !tbaa !20
  %i.lj = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.li, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.lj, ptr %i.lh, align 16, !tbaa !20
  %i.lk = getelementptr inbounds nuw i8, ptr %.015.i.i200, i64 128
  %i.ll = add nsw i64 %.0.i.i201, -128            ; 2 uses
  %.not.i.i202.1 = icmp eq i64 %i.ll, 0
  br i1 %.not.i.i202.1, label %bt_matchfinder_slide_window.exit203, label %.preheader306, !llvm.loop !44

bt_matchfinder_slide_window.exit203:              ; preds = %.preheader306
  %i.lm = tail call i64 @llvm.umin.i64(i64 %i.kl, i64 32768)
  %i.ln = getelementptr inbounds nuw i8, ptr %.1, i64 %i.lm
  br label %bb.l

bb.l:                                             ; preds = %bt_matchfinder_slide_window.exit203, %deflate_near_optimal_merge_stats.exit
  %.2159 = phi ptr [ %i.ln, %bt_matchfinder_slide_window.exit203 ], [ %.1158, %deflate_near_optimal_merge_stats.exit ] ; 2 uses
  %.2155 = phi ptr [ %.1, %bt_matchfinder_slide_window.exit203 ], [ %.1154, %deflate_near_optimal_merge_stats.exit ] ; 7 uses
  %i.lo = icmp ult i64 %i.kl, 258
  br i1 %i.lo, label %bb.m, label %adjust_max_and_nice_len.exit197, !prof !42

bb.m:                                             ; preds = %bb.l
  %i.lp = trunc nuw nsw i64 %i.kl to i32          ; 2 uses
  %..i196 = tail call i32 @llvm.umin.i32(i32 %.1275, i32 %i.lp)
  br label %adjust_max_and_nice_len.exit197

adjust_max_and_nice_len.exit197:                  ; preds = %bb.l, %bb.m
  %.5285 = phi i32 [ %i.lp, %bb.m ], [ %.1281, %bb.l ] ; 8 uses
  %.5279 = phi i32 [ %..i196, %bb.m ], [ %.1275, %bb.l ] ; 4 uses
  %i.lq = icmp ugt i32 %.5285, 4
  br i1 %i.lq, label %bb.n, label %bb.al, !prof !46

bb.n:                                             ; preds = %adjust_max_and_nice_len.exit197
  %i.lr = ptrtoint ptr %.2155 to i64
  %i.ls = sub i64 %i.kk, %i.lr                    ; 5 uses
  %i.lt = load i32, ptr %i.ac, align 8, !tbaa !19
  %i.lu = getelementptr inbounds i8, ptr %.2155, i64 %i.ls ; 10 uses
  %i.lv = trunc i64 %i.ls to i32
  %i.lw = add i32 %i.lv, -32768                   ; 4 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 1
  %.0.copyload.i.i208 = load i32, ptr %i.lx, align 1 ; 2 uses
  %i.ly = and i32 %.0.copyload.i.i208, 16777215
  %i.lz = mul i32 %i.ly, 506832829
  %i.ma = lshr i32 %i.lz, 16                      ; 3 uses
  %i.mb = mul i32 %.0.copyload.i.i208, 506832829
  %i.mc = lshr i32 %i.mb, 16                      ; 3 uses
  %i.md = zext nneg i32 %i.ma to i64
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.md
  tail call void @llvm.prefetch.p0(ptr nonnull %i.me, i32 1, i32 3, i32 1)
  %i.mf = zext nneg i32 %i.mc to i64
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.mf
  tail call void @llvm.prefetch.p0(ptr nonnull %i.mg, i32 1, i32 3, i32 1)
  %i.mh = zext nneg i32 %.sroa.0.1 to i64
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.mh ; 3 uses
  %i.mj = load i16, ptr %i.mi, align 4, !tbaa !45 ; 4 uses
  %i.mk = trunc i64 %i.ls to i16                  ; 3 uses
  store i16 %i.mk, ptr %i.mi, align 4, !tbaa !45
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 2 ; 2 uses
  %i.mm = load i16, ptr %i.ml, align 2, !tbaa !45 ; 3 uses
  %i.mn = sext i16 %i.mm to i32
  store i16 %i.mj, ptr %i.ml, align 2, !tbaa !45
  %i.mo = sext i16 %i.mj to i32
  %i.mp = icmp slt i32 %i.lw, %i.mo
  br i1 %i.mp, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %.0.copyload.i.i167.i = load i32, ptr %i.lu, align 1
  %i.mq = and i32 %.0.copyload.i.i167.i, 16777215 ; 2 uses
  %i.mr = sext i16 %i.mj to i64
  %i.ms = getelementptr inbounds i8, ptr %.2155, i64 %i.mr
  %.0.copyload.i.i166.i = load i32, ptr %i.ms, align 1
  %i.mt = and i32 %.0.copyload.i.i166.i, 16777215
  %i.mu = icmp eq i32 %i.mq, %i.mt
  br i1 %i.mu, label %.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.mv = icmp slt i32 %i.lw, %i.mn
  br i1 %i.mv, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.mw = sext i16 %i.mm to i64
  %i.mx = getelementptr inbounds i8, ptr %.2155, i64 %i.mw
  %.0.copyload.i.i.i = load i32, ptr %i.mx, align 1
  %i.my = and i32 %.0.copyload.i.i.i, 16777215
  %i.mz = icmp eq i32 %i.mq, %i.my
  br i1 %i.mz, label %.sink.split, label %bb.r

.sink.split:                                      ; preds = %bb.q, %bb.o
  %.sink418 = phi i16 [ %i.mj, %bb.o ], [ %i.mm, %bb.q ]
  store i16 3, ptr %.1165.ptr, align 2, !tbaa !77
  %i.na = sub i16 %i.mk, %.sink418
  %i.nb = getelementptr inbounds nuw i8, ptr %.1165.ptr, i64 2
  store i16 %i.na, ptr %i.nb, align 2, !tbaa !79
  %.1165.add = add nuw nsw i64 %.1165.idx, 4
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.q, %bb.p, %bb.n
  %.1134.i.idx = phi i64 [ %.1165.idx, %bb.n ], [ %.1165.idx, %bb.q ], [ %.1165.idx, %bb.p ], [ %.1165.add, %.sink.split ] ; 2 uses
  %i.nc = zext nneg i32 %.sroa.9.1 to i64
  %i.nd = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.nc ; 2 uses
  %i.ne = load i16, ptr %i.nd, align 2, !tbaa !45
  %i.nf = sext i16 %i.ne to i32                   ; 2 uses
  store i16 %i.mk, ptr %i.nd, align 2, !tbaa !45
  %i.ng = shl i64 %i.ls, 1
  %i.nh = and i64 %i.ng, 65534                    ; 2 uses
  %i.ni = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.nh ; 2 uses
  %i.nj = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.nh
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 393218 ; 2 uses
  %.not.i209 = icmp slt i32 %i.lw, %i.nf
  br i1 %.not.i209, label %.preheader305.preheader, label %bb.s

.preheader305.preheader:                          ; preds = %bb.r
  %i.nl = zext nneg i32 %.5285 to i64
  br label %.preheader305

bb.s:                                             ; preds = %bb.r
  store i16 -32768, ptr %i.ni, align 2, !tbaa !45
  store i16 -32768, ptr %i.nk, align 2, !tbaa !45
  br label %bt_matchfinder_advance_one_byte.exit257

.preheader305:                                    ; preds = %.preheader305.preheader, %bb.ai
  %.0137.i211 = phi i32 [ %.1138.i228, %bb.ai ], [ %i.nf, %.preheader305.preheader ] ; 4 uses
  %.0136.i212 = phi i32 [ %i.qh, %bb.ai ], [ %i.lt, %.preheader305.preheader ]
  %.2135.i213.idx = phi i64 [ %.4.i.idx, %bb.ai ], [ %.1134.i.idx, %.preheader305.preheader ] ; 4 uses
  %.0131.i214 = phi ptr [ %.1132.i223, %bb.ai ], [ %i.ni, %.preheader305.preheader ] ; 3 uses
  %.0129.i215 = phi ptr [ %.1130.i224, %bb.ai ], [ %i.nk, %.preheader305.preheader ] ; 3 uses
  %.0127.i216 = phi i32 [ %.1128.i225, %bb.ai ], [ 0, %.preheader305.preheader ] ; 2 uses
  %.0125.i217 = phi i32 [ %.1126.i226, %bb.ai ], [ 0, %.preheader305.preheader ] ; 2 uses
  %.0122.i218 = phi i32 [ %spec.select154.i221, %bb.ai ], [ 0, %.preheader305.preheader ] ; 7 uses
  %.0121.i219 = phi i32 [ %.2.i, %bb.ai ], [ 3, %.preheader305.preheader ] ; 3 uses
  %.2135.i213.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.2135.i213.idx ; 2 uses
  %i.nm = sext i32 %.0137.i211 to i64             ; 2 uses
  %i.nn = getelementptr inbounds i8, ptr %.2155, i64 %i.nm ; 8 uses
  %i.no = zext nneg i32 %.0122.i218 to i64        ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.no
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !20
  %i.nr = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.no
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !20
  %i.nt = icmp eq i8 %i.nq, %i.ns
  br i1 %i.nt, label %bb.t, label %bb.af

bb.t:                                             ; preds = %.preheader305
  %i.nu = add nuw nsw i32 %.0122.i218, 1          ; 4 uses
  %i.nv = sub nsw i32 %.5285, %i.nu
  %i.nw = icmp ugt i32 %i.nv, 31
  br i1 %i.nw, label %bb.u, label %.preheader486, !prof !46

bb.u:                                             ; preds = %bb.t
  %i.nx = zext nneg i32 %i.nu to i64              ; 2 uses
end_hunk_0
begin_hunk_1_@deflate_compress_near_optimal:bb.a
  %i.uo = sub nsw i32 %.4278, %i.un
  %i.up = icmp ugt i32 %i.uo, 31
  br i1 %i.up, label %bb.ax, label %.preheader484, !prof !46

bb.ax:                                            ; preds = %bb.aw
  %i.uq = zext nneg i32 %i.un to i64              ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.ug, i64 %i.uq
  %.0.copyload.i163.i = load i64, ptr %i.ur, align 1 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.td, i64 %i.uq
  %.0.copyload.i162.i = load i64, ptr %i.us, align 1 ; 2 uses
  %i.ut = xor i64 %.0.copyload.i162.i, %.0.copyload.i163.i
  %.not.i.i207 = icmp eq i64 %.0.copyload.i163.i, %.0.copyload.i162.i
  br i1 %.not.i.i207, label %bb.ay, label %bb.bf

bb.ay:                                            ; preds = %bb.ax
  %i.uu = add nuw nsw i32 %.0122.i, 9             ; 2 uses
  %i.uv = zext nneg i32 %i.uu to i64              ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ug, i64 %i.uv
  %.0.copyload.i161.i = load i64, ptr %i.uw, align 1 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.td, i64 %i.uv
  %.0.copyload.i160.i = load i64, ptr %i.ux, align 1 ; 2 uses
  %i.uy = xor i64 %.0.copyload.i160.i, %.0.copyload.i161.i
  %.not54.i.i = icmp eq i64 %.0.copyload.i161.i, %.0.copyload.i160.i
  br i1 %.not54.i.i, label %bb.az, label %bb.bf

bb.az:                                            ; preds = %bb.ay
  %i.uz = add nuw nsw i32 %.0122.i, 17            ; 2 uses
  %i.va = zext nneg i32 %i.uz to i64              ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ug, i64 %i.va
  %.0.copyload.i159.i = load i64, ptr %i.vb, align 1 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.td, i64 %i.va
  %.0.copyload.i158.i = load i64, ptr %i.vc, align 1 ; 2 uses
  %i.vd = xor i64 %.0.copyload.i158.i, %.0.copyload.i159.i
  %.not55.i.i = icmp eq i64 %.0.copyload.i159.i, %.0.copyload.i158.i
  br i1 %.not55.i.i, label %bb.ba, label %bb.bf

bb.ba:                                            ; preds = %bb.az
  %i.ve = add nuw nsw i32 %.0122.i, 25            ; 2 uses
  %i.vf = zext nneg i32 %i.ve to i64              ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ug, i64 %i.vf
  %.0.copyload.i157.i = load i64, ptr %i.vg, align 1 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.td, i64 %i.vf
  %.0.copyload.i156.i = load i64, ptr %i.vh, align 1 ; 2 uses
  %i.vi = xor i64 %.0.copyload.i156.i, %.0.copyload.i157.i
  %.not56.i.i = icmp eq i64 %.0.copyload.i157.i, %.0.copyload.i156.i
  br i1 %.not56.i.i, label %bb.bb, label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  %i.vj = add nuw nsw i32 %.0122.i, 33
  br label %.preheader484

.preheader484:                                    ; preds = %bb.bb, %bb.aw
  %.1.i.i.ph = phi i32 [ %i.un, %bb.aw ], [ %i.vj, %bb.bb ]
  br label %bb.bc

bb.bc:                                            ; preds = %.preheader484, %bb.bd
  %.1.i.i = phi i32 [ %i.vk, %bb.bd ], [ %.1.i.i.ph, %.preheader484 ] ; 6 uses
  %i.vk = add i32 %.1.i.i, 8                      ; 2 uses
  %.not57.i.i = icmp ugt i32 %i.vk, %.4278
  br i1 %.not57.i.i, label %.preheader, label %bb.bd

.preheader:                                       ; preds = %bb.bc
  %i.vl = icmp ult i32 %.1.i.i, %.4278
  br i1 %i.vl, label %.lr.ph323.preheader, label %lz_extend.exit.i

.lr.ph323.preheader:                              ; preds = %.preheader
  %i.vm = zext nneg i32 %.1.i.i to i64
  br label %.lr.ph323

bb.bd:                                            ; preds = %bb.bc
  %i.vn = zext i32 %.1.i.i to i64                 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.ug, i64 %i.vn
  %.0.copyload.i165.i = load i64, ptr %i.vo, align 1 ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.td, i64 %i.vn
  %.0.copyload.i164.i = load i64, ptr %i.vp, align 1 ; 2 uses
  %.not58.i.i = icmp eq i64 %.0.copyload.i165.i, %.0.copyload.i164.i
  br i1 %.not58.i.i, label %bb.bc, label %.loopexit, !llvm.loop !47

.lr.ph323:                                        ; preds = %.lr.ph323.preheader, %bb.be
  %indvars.iv342 = phi i64 [ %i.vm, %.lr.ph323.preheader ], [ %indvars.iv.next343, %bb.be ] ; 4 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.ug, i64 %indvars.iv342
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !20
  %i.vs = getelementptr inbounds nuw i8, ptr %i.td, i64 %indvars.iv342
  %i.vt = load i8, ptr %i.vs, align 1, !tbaa !20
  %i.vu = icmp eq i8 %i.vr, %i.vt
  br i1 %i.vu, label %bb.be, label %lz_extend.exit.i.loopexit

bb.be:                                            ; preds = %.lr.ph323
  %indvars.iv.next343 = add nuw nsw i64 %indvars.iv342, 1 ; 2 uses
  %exitcond345.not = icmp eq i64 %indvars.iv.next343, %i.ue
  br i1 %exitcond345.not, label %lz_extend.exit.i.thread, label %.lr.ph323, !llvm.loop !48

.loopexit:                                        ; preds = %bb.bd
  %i.vv = xor i64 %.0.copyload.i164.i, %.0.copyload.i165.i
  br label %bb.bf

bb.bf:                                            ; preds = %.loopexit, %bb.ba, %bb.az, %bb.ay, %bb.ax
  %.3.i.i = phi i32 [ %i.un, %bb.ax ], [ %i.uu, %bb.ay ], [ %i.uz, %bb.az ], [ %i.ve, %bb.ba ], [ %.1.i.i, %.loopexit ]
  %.0.i.i206 = phi i64 [ %i.ut, %bb.ax ], [ %i.uy, %bb.ay ], [ %i.vd, %bb.az ], [ %i.vi, %bb.ba ], [ %i.vv, %.loopexit ]
  %i.vw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0.i.i206, i1 true)
  %i.vx = trunc nuw nsw i64 %i.vw to i32
  %i.vy = lshr i32 %i.vx, 3
  %i.vz = add i32 %i.vy, %.3.i.i
  br label %lz_extend.exit.i

lz_extend.exit.i.loopexit:                        ; preds = %.lr.ph323
  %i.wa = trunc nuw i64 %indvars.iv342 to i32
  br label %lz_extend.exit.i

lz_extend.exit.i:                                 ; preds = %lz_extend.exit.i.loopexit, %.preheader, %bb.bf
  %.047.i.i = phi i32 [ %i.vz, %bb.bf ], [ %.1.i.i, %.preheader ], [ %i.wa, %lz_extend.exit.i.loopexit ] ; 3 uses
  %.not148.i = icmp ult i32 %.047.i.i, %.4278
  br i1 %.not148.i, label %lz_extend.exit.i._crit_edge, label %lz_extend.exit.i.thread

lz_extend.exit.i._crit_edge:                      ; preds = %lz_extend.exit.i
  %.phi.trans.insert = zext nneg i32 %.047.i.i to i64 ; 2 uses
  %.phi.trans.insert346 = getelementptr inbounds nuw i8, ptr %i.ug, i64 %.phi.trans.insert
  %.pre = load i8, ptr %.phi.trans.insert346, align 1, !tbaa !20
  %.phi.trans.insert348 = getelementptr inbounds nuw i8, ptr %i.td, i64 %.phi.trans.insert
  %.pre349 = load i8, ptr %.phi.trans.insert348, align 1, !tbaa !20
  br label %bb.bg

lz_extend.exit.i.thread:                          ; preds = %lz_extend.exit.i, %bb.be
  %i.wb = shl nsw i32 %.0137.i, 1
  %i.wc = and i32 %i.wb, 65534
  %i.wd = zext nneg i32 %i.wc to i64              ; 2 uses
  %i.we = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.wd
  %i.wf = load i16, ptr %i.we, align 2, !tbaa !45
  store i16 %i.wf, ptr %.0131.i, align 2, !tbaa !45
  %i.wg = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.wd
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 393218
  %i.wi = load i16, ptr %i.wh, align 2, !tbaa !45
  store i16 %i.wi, ptr %.0129.i, align 2, !tbaa !45
  br label %bt_matchfinder_advance_one_byte.exit

bb.bg:                                            ; preds = %lz_extend.exit.i._crit_edge, %.preheader300
  %i.wj = phi i8 [ %.pre349, %lz_extend.exit.i._crit_edge ], [ %i.ul, %.preheader300 ]
  %i.wk = phi i8 [ %.pre, %lz_extend.exit.i._crit_edge ], [ %i.uj, %.preheader300 ]
  %.1123.i = phi i32 [ %.047.i.i, %lz_extend.exit.i._crit_edge ], [ %.0122.i, %.preheader300 ] ; 3 uses
  %i.wl = icmp ult i8 %i.wk, %i.wj
  %i.wm = trunc nsw i32 %.0137.i to i16           ; 2 uses
  %i.wn = shl nsw i32 %.0137.i, 1
  %i.wo = and i32 %i.wn, 65534
  %i.wp = zext nneg i32 %i.wo to i64              ; 2 uses
  br i1 %i.wl, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i16 %i.wm, ptr %.0131.i, align 2, !tbaa !45
  %i.wq = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.wp
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 393218 ; 2 uses
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  store i16 %i.wm, ptr %.0129.i, align 2, !tbaa !45
  %i.ws = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.wp ; 2 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.0127.i.sink = phi i32 [ %.0127.i, %bb.bi ], [ %.0125.i, %bb.bh ]
  %.1138.in.i.in = phi ptr [ %i.ws, %bb.bi ], [ %i.wr, %bb.bh ]
  %.1132.i = phi ptr [ %.0131.i, %bb.bi ], [ %i.wr, %bb.bh ] ; 2 uses
  %.1130.i = phi ptr [ %i.ws, %bb.bi ], [ %.0129.i, %bb.bh ] ; 2 uses
  %.1128.i = phi i32 [ %.0127.i, %bb.bi ], [ %.1123.i, %bb.bh ]
  %.1126.i = phi i32 [ %.1123.i, %bb.bi ], [ %.0125.i, %bb.bh ]
  %spec.select154.i = tail call i32 @llvm.umin.i32(i32 %.0127.i.sink, i32 %.1123.i)
  %.1138.in.i = load i16, ptr %.1138.in.i.in, align 2, !tbaa !45
  %.1138.i = sext i16 %.1138.in.i to i32          ; 2 uses
  %.not149.i = icmp sge i32 %i.tf, %.1138.i
  %i.wt = add i32 %.0136.i, -1                    ; 2 uses
  %.not150.i = icmp eq i32 %i.wt, 0
  %or.cond155.i = select i1 %.not149.i, i1 true, i1 %.not150.i
  br i1 %or.cond155.i, label %bb.bk, label %.preheader300

bb.bk:                                            ; preds = %bb.bj
  store i16 -32768, ptr %.1132.i, align 2, !tbaa !45
  store i16 -32768, ptr %.1130.i, align 2, !tbaa !45
  br label %bt_matchfinder_advance_one_byte.exit

bt_matchfinder_advance_one_byte.exit:             ; preds = %bb.bk, %lz_extend.exit.i.thread, %bb.av, %adjust_max_and_nice_len.exit
  %.sroa.9.4 = phi i32 [ %.sroa.9.3, %adjust_max_and_nice_len.exit ], [ %i.tl, %bb.av ], [ %i.tl, %lz_extend.exit.i.thread ], [ %i.tl, %bb.bk ] ; 2 uses
  %.sroa.0.4 = phi i32 [ %.sroa.0.3, %adjust_max_and_nice_len.exit ], [ %i.tj, %bb.av ], [ %i.tj, %lz_extend.exit.i.thread ], [ %i.tj, %bb.bk ] ; 2 uses
  store i16 0, ptr %.3167.ptr, align 2, !tbaa !77
  %i.wu = load i8, ptr %.2, align 1, !tbaa !20
  %i.wv = zext i8 %i.wu to i16
  %i.ww = getelementptr inbounds nuw i8, ptr %.3167.ptr, i64 2
  store i16 %i.wv, ptr %i.ww, align 2, !tbaa !79
  %i.wx = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 2 uses
  %.3167.add = add nuw nsw i64 %.3167.idx, 4      ; 2 uses
  %i.wy = add nsw i32 %.1179, -1                  ; 2 uses
  %.not188 = icmp eq i32 %i.wy, 0
  br i1 %.not188, label %.loopexit304, label %bb.ar, !llvm.loop !80

.loopexit304:                                     ; preds = %bt_matchfinder_advance_one_byte.exit, %bb.ap
  %.3283 = phi i32 [ %.5285, %bb.ap ], [ %.4284, %bt_matchfinder_advance_one_byte.exit ] ; 3 uses
  %.3277 = phi i32 [ %.5279, %bb.ap ], [ %.4278, %bt_matchfinder_advance_one_byte.exit ] ; 3 uses
  %.sroa.9.5 = phi i32 [ %.sroa.9.2, %bb.ap ], [ %.sroa.9.4, %bt_matchfinder_advance_one_byte.exit ] ; 3 uses
  %.sroa.0.5 = phi i32 [ %.sroa.0.2, %bb.ap ], [ %.sroa.0.4, %bt_matchfinder_advance_one_byte.exit ] ; 3 uses
  %.4168.idx = phi i64 [ %.2166.add, %bb.ap ], [ %.3167.add, %bt_matchfinder_advance_one_byte.exit ] ; 5 uses
  %.5162 = phi ptr [ %.2159, %bb.ap ], [ %.4161, %bt_matchfinder_advance_one_byte.exit ] ; 3 uses
  %.5 = phi ptr [ %.2155, %bb.ap ], [ %.4, %bt_matchfinder_advance_one_byte.exit ] ; 3 uses
  %.3 = phi ptr [ %i.rq, %bb.ap ], [ %i.wx, %bt_matchfinder_advance_one_byte.exit ] ; 11 uses
  %.not189 = icmp ult ptr %.3, %.0.i
  %.not190 = icmp slt i64 %.4168.idx, 6530368
  %or.cond194 = select i1 %.not189, i1 %.not190, i1 false
  br i1 %or.cond194, label %bb.bl, label %.thread

.thread:                                          ; preds = %.loopexit304
  %.4168.ptr.le370 = getelementptr inbounds nuw i8, ptr %0, i64 %.4168.idx
  br label %vector.ph

bb.bl:                                            ; preds = %.loopexit304
  %i.wz = load i32, ptr %i.af, align 4, !tbaa !56
  %i.xa = icmp ugt i32 %i.wz, 511
  br i1 %i.xa, label %bb.bm, label %deflate_near_optimal_merge_stats.exit.backedge

deflate_near_optimal_merge_stats.exit.backedge:   ; preds = %bb.bl, %bb.bm
  br label %deflate_near_optimal_merge_stats.exit

bb.bm:                                            ; preds = %bb.bl
  %i.xb = ptrtoint ptr %.3 to i64                 ; 2 uses
  %i.xc = sub i64 %i.xb, %i.dp                    ; 2 uses
  %i.xd = icmp sgt i64 %i.xc, 4999
  %i.xe = sub i64 %i.x, %i.xb
  %i.xf = icmp sgt i64 %i.xe, 4999
  %or.cond292 = select i1 %i.xd, i1 %i.xf, i1 false
  br i1 %or.cond292, label %bb.bn, label %deflate_near_optimal_merge_stats.exit.backedge

bb.bn:                                            ; preds = %bb.bm
  %i.xg = trunc i64 %i.xc to i32
  %i.xh = tail call fastcc zeroext i1 @do_end_block_check(ptr noundef nonnull %i.aa, i32 noundef %i.xg)
  br i1 %i.xh, label %bb.bo, label %vector.ph466

vector.ph466:                                     ; preds = %bb.bn
  %i.xi = load <4 x i32>, ptr %i.aa, align 4, !tbaa !3
  %i.xj = load <4 x i32>, ptr %i.ag, align 4, !tbaa !3
  %i.xk = add <4 x i32> %i.xj, %i.xi
  store <4 x i32> %i.xk, ptr %i.ag, align 4, !tbaa !3
  store <4 x i32> zeroinitializer, ptr %i.aa, align 4, !tbaa !3
  %i.xl = load <4 x i32>, ptr %i.ah, align 4, !tbaa !3
  %i.xm = load <4 x i32>, ptr %i.ai, align 4, !tbaa !3
  %i.xn = add <4 x i32> %i.xm, %i.xl
  store <4 x i32> %i.xn, ptr %i.ai, align 4, !tbaa !3
  store <4 x i32> zeroinitializer, ptr %i.ah, align 4, !tbaa !3
  %i.xo = load <2 x i32>, ptr %i.aj, align 4, !tbaa !3
  store i32 0, ptr %i.aj, align 4, !tbaa !3
  %i.xp = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  %i.xq = add <2 x i32> %i.xp, %i.xo
  store <2 x i32> %i.xq, ptr %i.ak, align 4, !tbaa !3
  store i32 0, ptr %i.al, align 4, !tbaa !3
  %i.xr = load i32, ptr %i.af, align 4, !tbaa !56
  %i.xs = load i32, ptr %i.am, align 4, !tbaa !81
  %i.xt = add i32 %i.xs, %i.xr
  store i32 %i.xt, ptr %i.am, align 4, !tbaa !81
  store i32 0, ptr %i.af, align 4, !tbaa !56
  br label %vector.body467

vector.body467:                                   ; preds = %vector.body467, %vector.ph466
  %index468 = phi i64 [ 0, %vector.ph466 ], [ %index.next473.1, %vector.body467 ] ; 4 uses
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index468 ; 3 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 16 ; 2 uses
  %wide.load469 = load <4 x i32>, ptr %i.xu, align 4, !tbaa !20
  %wide.load470 = load <4 x i32>, ptr %i.xv, align 4, !tbaa !20
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index468 ; 3 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 16 ; 2 uses
  %wide.load471 = load <4 x i32>, ptr %i.xw, align 4, !tbaa !20
  %wide.load472 = load <4 x i32>, ptr %i.xx, align 4, !tbaa !20
  %i.xy = add <4 x i32> %wide.load471, %wide.load469
  %i.xz = add <4 x i32> %wide.load472, %wide.load470
  store <4 x i32> %i.xy, ptr %i.xw, align 4, !tbaa !20
  store <4 x i32> %i.xz, ptr %i.xx, align 4, !tbaa !20
  store <4 x i32> zeroinitializer, ptr %i.xu, align 4, !tbaa !20
  store <4 x i32> zeroinitializer, ptr %i.xv, align 4, !tbaa !20
  %index.next473 = or disjoint i64 %index468, 8   ; 2 uses
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index.next473 ; 3 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 16 ; 2 uses
  %wide.load469.1 = load <4 x i32>, ptr %i.ya, align 4, !tbaa !20
  %wide.load470.1 = load <4 x i32>, ptr %i.yb, align 4, !tbaa !20
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index.next473 ; 3 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 16 ; 2 uses
  %wide.load471.1 = load <4 x i32>, ptr %i.yc, align 4, !tbaa !20
  %wide.load472.1 = load <4 x i32>, ptr %i.yd, align 4, !tbaa !20
  %i.ye = add <4 x i32> %wide.load471.1, %wide.load469.1
  %i.yf = add <4 x i32> %wide.load472.1, %wide.load470.1
  store <4 x i32> %i.ye, ptr %i.yc, align 4, !tbaa !20
  store <4 x i32> %i.yf, ptr %i.yd, align 4, !tbaa !20
  store <4 x i32> zeroinitializer, ptr %i.ya, align 4, !tbaa !20
  store <4 x i32> zeroinitializer, ptr %i.yb, align 4, !tbaa !20
  %index.next473.1 = add nuw nsw i64 %index468, 16 ; 2 uses
  %i.yg = icmp eq i64 %index.next473.1, 256
  br i1 %i.yg, label %scalar.ph465, label %vector.body467, !llvm.loop !82

scalar.ph465:                                     ; preds = %vector.body467
  %i.yh = load i32, ptr %i.dd, align 4, !tbaa !20
  %i.yi = load i32, ptr %i.de, align 4, !tbaa !20
  %i.yj = add i32 %i.yi, %i.yh
  store i32 %i.yj, ptr %i.de, align 4, !tbaa !20
  store i32 0, ptr %i.dd, align 4, !tbaa !20
  %i.yk = load i32, ptr %i.df, align 4, !tbaa !20
  %i.yl = load i32, ptr %i.dg, align 4, !tbaa !20
  %i.ym = add i32 %i.yl, %i.yk
  store i32 %i.ym, ptr %i.dg, align 4, !tbaa !20
  store i32 0, ptr %i.df, align 4, !tbaa !20
  %i.yn = load i32, ptr %i.dh, align 4, !tbaa !20
  %i.yo = load i32, ptr %i.di, align 4, !tbaa !20
  %i.yp = add i32 %i.yo, %i.yn
  store i32 %i.yp, ptr %i.di, align 4, !tbaa !20
  store i32 0, ptr %i.dh, align 4, !tbaa !20
  br label %deflate_near_optimal_merge_stats.exit.outer

bb.bo:                                            ; preds = %bb.bn
  %.4168.ptr.le = getelementptr inbounds nuw i8, ptr %0, i64 %.4168.idx ; 4 uses
  %.not419 = icmp eq ptr %.0170.ph, null
  br i1 %.not419, label %vector.ph, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.yq = ptrtoint ptr %.0170.ph to i64           ; 3 uses
  %i.yr = ptrtoint ptr %.3 to i64                 ; 2 uses
  %i.ys = sub i64 %i.yr, %i.yq
  %i.yt = trunc i64 %i.ys to i32                  ; 3 uses
  %i.yu = trunc i64 %i.yq to i32
  %i.yv = trunc i64 %i.yr to i32
  %xtraiter532 = and i32 %i.yt, 7                 ; 2 uses
  %lcmp.mod533.not = icmp eq i32 %xtraiter532, 0
  br i1 %lcmp.mod533.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.bp, %.prol.preheader
  %.5169.prol = phi ptr [ %i.za, %.prol.preheader ], [ %.4168.ptr.le, %bb.bp ]
  %.0163.prol = phi i32 [ %i.zb, %.prol.preheader ], [ %i.yt, %bb.bp ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.bp ]
  %i.yw = getelementptr inbounds i8, ptr %.5169.prol, i64 -4 ; 2 uses
  %i.yx = load i16, ptr %i.yw, align 2, !tbaa !77
  %i.yy = zext i16 %i.yx to i64
  %i.yz = sub nsw i64 0, %i.yy
  %i.za = getelementptr inbounds [4 x i8], ptr %i.yw, i64 %i.yz ; 3 uses
  %i.zb = add i32 %.0163.prol, -1                 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter532
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !83

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.bp
  %.lcssa530.unr = phi ptr [ poison, %bb.bp ], [ %i.za, %.prol.preheader ]
  %.5169.unr = phi ptr [ %.4168.ptr.le, %bb.bp ], [ %i.za, %.prol.preheader ]
  %.0163.unr = phi i32 [ %i.yt, %bb.bp ], [ %i.zb, %.prol.preheader ]
  %i.zc = sub i32 %i.yu, %i.yv
  %i.zd = icmp ugt i32 %i.zc, -8
  br i1 %i.zd, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.5169 = phi ptr [ %i.aar, %.new ], [ %.5169.unr, %.prol.loopexit ]
  %.0163 = phi i32 [ %i.aas, %.new ], [ %.0163.unr, %.prol.loopexit ]
  %i.ze = getelementptr inbounds i8, ptr %.5169, i64 -4 ; 2 uses
  %i.zf = load i16, ptr %i.ze, align 2, !tbaa !77
  %i.zg = zext i16 %i.zf to i64
  %i.zh = sub nsw i64 0, %i.zg
  %i.zi = getelementptr inbounds [4 x i8], ptr %i.ze, i64 %i.zh
  %i.zj = getelementptr inbounds i8, ptr %i.zi, i64 -4 ; 2 uses
  %i.zk = load i16, ptr %i.zj, align 2, !tbaa !77
  %i.zl = zext i16 %i.zk to i64
  %i.zm = sub nsw i64 0, %i.zl
  %i.zn = getelementptr inbounds [4 x i8], ptr %i.zj, i64 %i.zm
  %i.zo = getelementptr inbounds i8, ptr %i.zn, i64 -4 ; 2 uses
  %i.zp = load i16, ptr %i.zo, align 2, !tbaa !77
  %i.zq = zext i16 %i.zp to i64
  %i.zr = sub nsw i64 0, %i.zq
  %i.zs = getelementptr inbounds [4 x i8], ptr %i.zo, i64 %i.zr
  %i.zt = getelementptr inbounds i8, ptr %i.zs, i64 -4 ; 2 uses
  %i.zu = load i16, ptr %i.zt, align 2, !tbaa !77
  %i.zv = zext i16 %i.zu to i64
  %i.zw = sub nsw i64 0, %i.zv
  %i.zx = getelementptr inbounds [4 x i8], ptr %i.zt, i64 %i.zw
  %i.zy = getelementptr inbounds i8, ptr %i.zx, i64 -4 ; 2 uses
  %i.zz = load i16, ptr %i.zy, align 2, !tbaa !77
  %i.aaa = zext i16 %i.zz to i64
  %i.aab = sub nsw i64 0, %i.aaa
  %i.aac = getelementptr inbounds [4 x i8], ptr %i.zy, i64 %i.aab
  %i.aad = getelementptr inbounds i8, ptr %i.aac, i64 -4 ; 2 uses
  %i.aae = load i16, ptr %i.aad, align 2, !tbaa !77
  %i.aaf = zext i16 %i.aae to i64
  %i.aag = sub nsw i64 0, %i.aaf
  %i.aah = getelementptr inbounds [4 x i8], ptr %i.aad, i64 %i.aag
  %i.aai = getelementptr inbounds i8, ptr %i.aah, i64 -4 ; 2 uses
  %i.aaj = load i16, ptr %i.aai, align 2, !tbaa !77
  %i.aak = zext i16 %i.aaj to i64
  %i.aal = sub nsw i64 0, %i.aak
  %i.aam = getelementptr inbounds [4 x i8], ptr %i.aai, i64 %i.aal
  %i.aan = getelementptr inbounds i8, ptr %i.aam, i64 -4 ; 2 uses
  %i.aao = load i16, ptr %i.aan, align 2, !tbaa !77
  %i.aap = zext i16 %i.aao to i64
  %i.aaq = sub nsw i64 0, %i.aap
  %i.aar = getelementptr inbounds [4 x i8], ptr %i.aan, i64 %i.aaq ; 2 uses
  %i.aas = add i32 %.0163, -8                     ; 2 uses
  %.not191.7 = icmp eq i32 %i.aas, 0
  br i1 %.not191.7, label %.unr-lcssa, label %.new, !llvm.loop !84

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %.lcssa530 = phi ptr [ %.lcssa530.unr, %.prol.loopexit ], [ %i.aar, %.new ] ; 3 uses
  %i.aat = sub i64 %i.yq, %i.dp
  %i.aau = trunc i64 %i.aat to i32
  %i.aav = icmp eq ptr %.0151, %1
  %i.aaw = ptrtoint ptr %.4168.ptr.le to i64
  %i.aax = ptrtoint ptr %.lcssa530 to i64
  %i.aay = sub i64 %i.aaw, %i.aax                 ; 2 uses
  call fastcc void @deflate_optimize_and_flush_block(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %.0151, i32 noundef %i.aau, ptr noundef nonnull %.lcssa530, i1 noundef zeroext %i.aav, i1 noundef zeroext false, ptr noundef %i.b)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 32 %.ptr296, ptr nonnull align 2 %.lcssa530, i64 %i.aay, i1 false)
  %.add = add nuw nsw i64 %i.aay, 530368
  %i.aaz = load <4 x i32>, ptr %i.ag, align 4, !tbaa !3
  store <4 x i32> %i.aaz, ptr %i.ao, align 4, !tbaa !20
  %i.aba = load <4 x i32>, ptr %i.ai, align 4, !tbaa !3
  store <4 x i32> %i.aba, ptr %i.ap, align 4, !tbaa !20
  %i.abb = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.abb, ptr %i.aq, align 4, !tbaa !20
  %i.abc = load i32, ptr %i.am, align 4, !tbaa !85
  store i32 %i.abc, ptr %i.ar, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.ag, i8 0, i64 40, i1 false), !tbaa !3
  store i32 0, ptr %i.am, align 4, !tbaa !85
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1036) %i.an, i8 0, i64 1036, i1 false)
  br label %bb.bq

vector.ph:                                        ; preds = %.thread, %bb.bo
  %.4168.ptr.le372 = phi ptr [ %.4168.ptr.le370, %.thread ], [ %.4168.ptr.le, %bb.bo ]
  %i.abd = load <4 x i32>, ptr %i.aa, align 4, !tbaa !3
  %i.abe = load <4 x i32>, ptr %i.ag, align 4, !tbaa !3
  %i.abf = add <4 x i32> %i.abe, %i.abd
  store <4 x i32> %i.abf, ptr %i.ag, align 4, !tbaa !3
  store <4 x i32> zeroinitializer, ptr %i.aa, align 4, !tbaa !3
  %i.abg = load <4 x i32>, ptr %i.ah, align 4, !tbaa !3
  %i.abh = load <4 x i32>, ptr %i.ai, align 4, !tbaa !3
  %i.abi = add <4 x i32> %i.abh, %i.abg
  store <4 x i32> %i.abi, ptr %i.ai, align 4, !tbaa !3
  store <4 x i32> zeroinitializer, ptr %i.ah, align 4, !tbaa !3
  %i.abj = load <2 x i32>, ptr %i.aj, align 4, !tbaa !3
  store i32 0, ptr %i.aj, align 4, !tbaa !3
  %i.abk = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  %i.abl = add <2 x i32> %i.abk, %i.abj
  store <2 x i32> %i.abl, ptr %i.ak, align 4, !tbaa !3
  store i32 0, ptr %i.al, align 4, !tbaa !3
  %i.abm = load i32, ptr %i.af, align 4, !tbaa !56
  %i.abn = load i32, ptr %i.am, align 4, !tbaa !81
  %i.abo = add i32 %i.abn, %i.abm
  store i32 %i.abo, ptr %i.am, align 4, !tbaa !81
  store i32 0, ptr %i.af, align 4, !tbaa !56
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 4 uses
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index ; 3 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.abp, align 4, !tbaa !20
  %wide.load462 = load <4 x i32>, ptr %i.abq, align 4, !tbaa !20
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index ; 3 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 16 ; 2 uses
  %wide.load463 = load <4 x i32>, ptr %i.abr, align 4, !tbaa !20
  %wide.load464 = load <4 x i32>, ptr %i.abs, align 4, !tbaa !20
  %i.abt = add <4 x i32> %wide.load463, %wide.load
  %i.abu = add <4 x i32> %wide.load464, %wide.load462
  store <4 x i32> %i.abt, ptr %i.abr, align 4, !tbaa !20
  store <4 x i32> %i.abu, ptr %i.abs, align 4, !tbaa !20
  store <4 x i32> zeroinitializer, ptr %i.abp, align 4, !tbaa !20
  store <4 x i32> zeroinitializer, ptr %i.abq, align 4, !tbaa !20
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.abv = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index.next ; 3 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 16 ; 2 uses
  %wide.load.1 = load <4 x i32>, ptr %i.abv, align 4, !tbaa !20
  %wide.load462.1 = load <4 x i32>, ptr %i.abw, align 4, !tbaa !20
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index.next ; 3 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 16 ; 2 uses
  %wide.load463.1 = load <4 x i32>, ptr %i.abx, align 4, !tbaa !20
  %wide.load464.1 = load <4 x i32>, ptr %i.aby, align 4, !tbaa !20
  %i.abz = add <4 x i32> %wide.load463.1, %wide.load.1
  %i.aca = add <4 x i32> %wide.load464.1, %wide.load462.1
  store <4 x i32> %i.abz, ptr %i.abx, align 4, !tbaa !20
  store <4 x i32> %i.aca, ptr %i.aby, align 4, !tbaa !20
  store <4 x i32> zeroinitializer, ptr %i.abv, align 4, !tbaa !20
  store <4 x i32> zeroinitializer, ptr %i.abw, align 4, !tbaa !20
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.acb = icmp eq i64 %index.next.1, 256
  br i1 %i.acb, label %scalar.ph, label %vector.body, !llvm.loop !86

scalar.ph:                                        ; preds = %vector.body
  %i.acc = load i32, ptr %i.dj, align 4, !tbaa !20
  %i.acd = load i32, ptr %i.dk, align 4, !tbaa !20
  %i.ace = add i32 %i.acd, %i.acc
  store i32 %i.ace, ptr %i.dk, align 4, !tbaa !20
  store i32 0, ptr %i.dj, align 4, !tbaa !20
  %i.acf = load i32, ptr %i.dl, align 4, !tbaa !20
  %i.acg = load i32, ptr %i.dm, align 4, !tbaa !20
  %i.ach = add i32 %i.acg, %i.acf
  store i32 %i.ach, ptr %i.dm, align 4, !tbaa !20
  store i32 0, ptr %i.dl, align 4, !tbaa !20
  %i.aci = load i32, ptr %i.dn, align 4, !tbaa !20
  %i.acj = load i32, ptr %i.do, align 4, !tbaa !20
  %i.ack = add i32 %i.acj, %i.aci
  store i32 %i.ack, ptr %i.do, align 4, !tbaa !20
  store i32 0, ptr %i.dn, align 4, !tbaa !20
  %i.acl = ptrtoint ptr %.3 to i64
  %i.acm = sub i64 %i.acl, %i.dp
  %i.acn = trunc i64 %i.acm to i32
  %i.aco = icmp eq ptr %.0151, %1
  %i.acp = icmp eq ptr %.3, %i.w
  call fastcc void @deflate_optimize_and_flush_block(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %.0151, i32 noundef %i.acn, ptr noundef nonnull %.4168.ptr.le372, i1 noundef zeroext %i.aco, i1 noundef zeroext %i.acp, ptr noundef %i.b)
  %i.acq = load <4 x i32>, ptr %i.ag, align 4, !tbaa !3
  store <4 x i32> %i.acq, ptr %i.ao, align 4, !tbaa !20
  %i.acr = load <4 x i32>, ptr %i.ai, align 4, !tbaa !3
  store <4 x i32> %i.acr, ptr %i.ap, align 4, !tbaa !20
  %i.acs = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.acs, ptr %i.aq, align 4, !tbaa !20
  %i.act = load i32, ptr %i.am, align 4, !tbaa !85
  store i32 %i.act, ptr %i.ar, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %i.aa, i8 0, i64 88, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2072) %i.ab, i8 0, i64 2072, i1 false)
  br label %bb.bq

bb.bq:                                            ; preds = %scalar.ph, %.unr-lcssa
  %.6.idx = phi i64 [ %.add, %.unr-lcssa ], [ 530368, %scalar.ph ]
  %.1152 = phi ptr [ %.0170.ph, %.unr-lcssa ], [ %.3, %scalar.ph ]
  %.not192 = icmp eq ptr %.3, %i.w
  br i1 %.not192, label %bb.br, label %bb.c, !llvm.loop !87

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret void
end_hunk_1
