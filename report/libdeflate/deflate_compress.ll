Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libdeflate/original/deflate_compress?download=true
inline.NumInlined: 64
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 117
begin_hunk_0_@deflate_compress_near_optimal:bb.a
  %i.gb = zext <4 x i8> %wide.load482.7 to <4 x i32>
  %i.gc = add <4 x i32> %i.fy, %i.ga
  %i.gd = add <4 x i32> %i.fz, %i.gb
  %wide.load481.8 = load <4 x i8>, ptr %i.bi, align 16, !tbaa !30
  %wide.load482.8 = load <4 x i8>, ptr %i.bj, align 4, !tbaa !30
  %i.ge = zext <4 x i8> %wide.load481.8 to <4 x i32>
  %i.gf = zext <4 x i8> %wide.load482.8 to <4 x i32>
  %i.gg = add <4 x i32> %i.gc, %i.ge
  %i.gh = add <4 x i32> %i.gd, %i.gf
  %wide.load481.9 = load <4 x i8>, ptr %i.bk, align 8, !tbaa !30
  %wide.load482.9 = load <4 x i8>, ptr %i.bl, align 4, !tbaa !30
  %i.gi = zext <4 x i8> %wide.load481.9 to <4 x i32>
  %i.gj = zext <4 x i8> %wide.load482.9 to <4 x i32>
  %i.gk = add <4 x i32> %i.gg, %i.gi
  %i.gl = add <4 x i32> %i.gh, %i.gj
  %wide.load481.10 = load <4 x i8>, ptr %i.bm, align 16, !tbaa !30
  %wide.load482.10 = load <4 x i8>, ptr %i.bn, align 4, !tbaa !30
  %i.gm = zext <4 x i8> %wide.load481.10 to <4 x i32>
  %i.gn = zext <4 x i8> %wide.load482.10 to <4 x i32>
  %i.go = add <4 x i32> %i.gk, %i.gm
  %i.gp = add <4 x i32> %i.gl, %i.gn
  %wide.load481.11 = load <4 x i8>, ptr %i.bo, align 8, !tbaa !30
  %wide.load482.11 = load <4 x i8>, ptr %i.bp, align 4, !tbaa !30
  %i.gq = zext <4 x i8> %wide.load481.11 to <4 x i32>
  %i.gr = zext <4 x i8> %wide.load482.11 to <4 x i32>
  %i.gs = add <4 x i32> %i.go, %i.gq
  %i.gt = add <4 x i32> %i.gp, %i.gr
  %wide.load481.12 = load <4 x i8>, ptr %i.bq, align 16, !tbaa !30
  %wide.load482.12 = load <4 x i8>, ptr %i.br, align 4, !tbaa !30
  %i.gu = zext <4 x i8> %wide.load481.12 to <4 x i32>
  %i.gv = zext <4 x i8> %wide.load482.12 to <4 x i32>
  %i.gw = add <4 x i32> %i.gs, %i.gu
  %i.gx = add <4 x i32> %i.gt, %i.gv
  %wide.load481.13 = load <4 x i8>, ptr %i.bs, align 8, !tbaa !30
  %wide.load482.13 = load <4 x i8>, ptr %i.bt, align 4, !tbaa !30
  %i.gy = zext <4 x i8> %wide.load481.13 to <4 x i32>
  %i.gz = zext <4 x i8> %wide.load482.13 to <4 x i32>
  %i.ha = add <4 x i32> %i.gw, %i.gy
  %i.hb = add <4 x i32> %i.gx, %i.gz
  %wide.load481.14 = load <4 x i8>, ptr %i.bu, align 16, !tbaa !30
  %wide.load482.14 = load <4 x i8>, ptr %i.bv, align 4, !tbaa !30
  %i.hc = zext <4 x i8> %wide.load481.14 to <4 x i32>
  %i.hd = zext <4 x i8> %wide.load482.14 to <4 x i32>
  %i.he = add <4 x i32> %i.ha, %i.hc
  %i.hf = add <4 x i32> %i.hb, %i.hd
  %wide.load481.15 = load <4 x i8>, ptr %i.bw, align 8, !tbaa !30
  %wide.load482.15 = load <4 x i8>, ptr %i.bx, align 4, !tbaa !30
  %i.hg = zext <4 x i8> %wide.load481.15 to <4 x i32>
  %i.hh = zext <4 x i8> %wide.load482.15 to <4 x i32>
  %i.hi = add <4 x i32> %i.he, %i.hg
  %i.hj = add <4 x i32> %i.hf, %i.hh
  %wide.load481.16 = load <4 x i8>, ptr %i.by, align 16, !tbaa !30
  %wide.load482.16 = load <4 x i8>, ptr %i.bz, align 4, !tbaa !30
  %i.hk = zext <4 x i8> %wide.load481.16 to <4 x i32>
  %i.hl = zext <4 x i8> %wide.load482.16 to <4 x i32>
  %i.hm = add <4 x i32> %i.hi, %i.hk
  %i.hn = add <4 x i32> %i.hj, %i.hl
  %wide.load481.17 = load <4 x i8>, ptr %i.ca, align 8, !tbaa !30
  %wide.load482.17 = load <4 x i8>, ptr %i.cb, align 4, !tbaa !30
  %i.ho = zext <4 x i8> %wide.load481.17 to <4 x i32>
  %i.hp = zext <4 x i8> %wide.load482.17 to <4 x i32>
  %i.hq = add <4 x i32> %i.hm, %i.ho
  %i.hr = add <4 x i32> %i.hn, %i.hp
  %wide.load481.18 = load <4 x i8>, ptr %i.cc, align 16, !tbaa !30
  %wide.load482.18 = load <4 x i8>, ptr %i.cd, align 4, !tbaa !30
  %i.hs = zext <4 x i8> %wide.load481.18 to <4 x i32>
  %i.ht = zext <4 x i8> %wide.load482.18 to <4 x i32>
  %i.hu = add <4 x i32> %i.hq, %i.hs
  %i.hv = add <4 x i32> %i.hr, %i.ht
  %wide.load481.19 = load <4 x i8>, ptr %i.ce, align 8, !tbaa !30
  %wide.load482.19 = load <4 x i8>, ptr %i.cf, align 4, !tbaa !30
  %i.hw = zext <4 x i8> %wide.load481.19 to <4 x i32>
  %i.hx = zext <4 x i8> %wide.load482.19 to <4 x i32>
  %i.hy = add <4 x i32> %i.hu, %i.hw
  %i.hz = add <4 x i32> %i.hv, %i.hx
  %wide.load481.20 = load <4 x i8>, ptr %i.cg, align 16, !tbaa !30
  %wide.load482.20 = load <4 x i8>, ptr %i.ch, align 4, !tbaa !30
  %i.ia = zext <4 x i8> %wide.load481.20 to <4 x i32>
  %i.ib = zext <4 x i8> %wide.load482.20 to <4 x i32>
  %i.ic = add <4 x i32> %i.hy, %i.ia
  %i.id = add <4 x i32> %i.hz, %i.ib
  %wide.load481.21 = load <4 x i8>, ptr %i.ci, align 8, !tbaa !30
  %wide.load482.21 = load <4 x i8>, ptr %i.cj, align 4, !tbaa !30
  %i.ie = zext <4 x i8> %wide.load481.21 to <4 x i32>
  %i.if = zext <4 x i8> %wide.load482.21 to <4 x i32>
  %i.ig = add <4 x i32> %i.ic, %i.ie
  %i.ih = add <4 x i32> %i.id, %i.if
  %wide.load481.22 = load <4 x i8>, ptr %i.ck, align 16, !tbaa !30
  %wide.load482.22 = load <4 x i8>, ptr %i.cl, align 4, !tbaa !30
  %i.ii = zext <4 x i8> %wide.load481.22 to <4 x i32>
  %i.ij = zext <4 x i8> %wide.load482.22 to <4 x i32>
  %i.ik = add <4 x i32> %i.ig, %i.ii
  %i.il = add <4 x i32> %i.ih, %i.ij
  %wide.load481.23 = load <4 x i8>, ptr %i.cm, align 8, !tbaa !30
  %wide.load482.23 = load <4 x i8>, ptr %i.cn, align 4, !tbaa !30
  %i.im = zext <4 x i8> %wide.load481.23 to <4 x i32>
  %i.in = zext <4 x i8> %wide.load482.23 to <4 x i32>
  %i.io = add <4 x i32> %i.ik, %i.im
  %i.ip = add <4 x i32> %i.il, %i.in
  %wide.load481.24 = load <4 x i8>, ptr %i.co, align 16, !tbaa !30
  %wide.load482.24 = load <4 x i8>, ptr %i.cp, align 4, !tbaa !30
  %i.iq = zext <4 x i8> %wide.load481.24 to <4 x i32>
  %i.ir = zext <4 x i8> %wide.load482.24 to <4 x i32>
  %i.is = add <4 x i32> %i.io, %i.iq
  %i.it = add <4 x i32> %i.ip, %i.ir
  %wide.load481.25 = load <4 x i8>, ptr %i.cq, align 8, !tbaa !30
  %wide.load482.25 = load <4 x i8>, ptr %i.cr, align 4, !tbaa !30
  %i.iu = zext <4 x i8> %wide.load481.25 to <4 x i32>
  %i.iv = zext <4 x i8> %wide.load482.25 to <4 x i32>
  %i.iw = add <4 x i32> %i.is, %i.iu
  %i.ix = add <4 x i32> %i.it, %i.iv
  %wide.load481.26 = load <4 x i8>, ptr %i.cs, align 16, !tbaa !30
  %wide.load482.26 = load <4 x i8>, ptr %i.ct, align 4, !tbaa !30
  %i.iy = zext <4 x i8> %wide.load481.26 to <4 x i32>
  %i.iz = zext <4 x i8> %wide.load482.26 to <4 x i32>
  %i.ja = add <4 x i32> %i.iw, %i.iy
  %i.jb = add <4 x i32> %i.ix, %i.iz
  %wide.load481.27 = load <4 x i8>, ptr %i.cu, align 8, !tbaa !30
  %wide.load482.27 = load <4 x i8>, ptr %i.cv, align 4, !tbaa !30
  %i.jc = zext <4 x i8> %wide.load481.27 to <4 x i32>
  %i.jd = zext <4 x i8> %wide.load482.27 to <4 x i32>
  %i.je = add <4 x i32> %i.ja, %i.jc
  %i.jf = add <4 x i32> %i.jb, %i.jd
  %wide.load481.28 = load <4 x i8>, ptr %i.cw, align 16, !tbaa !30
  %wide.load482.28 = load <4 x i8>, ptr %i.cx, align 4, !tbaa !30
  %i.jg = zext <4 x i8> %wide.load481.28 to <4 x i32>
  %i.jh = zext <4 x i8> %wide.load482.28 to <4 x i32>
  %i.ji = add <4 x i32> %i.je, %i.jg
  %i.jj = add <4 x i32> %i.jf, %i.jh
  %wide.load481.29 = load <4 x i8>, ptr %i.cy, align 8, !tbaa !30
  %wide.load482.29 = load <4 x i8>, ptr %i.cz, align 4, !tbaa !30
  %i.jk = zext <4 x i8> %wide.load481.29 to <4 x i32>
  %i.jl = zext <4 x i8> %wide.load482.29 to <4 x i32>
  %i.jm = add <4 x i32> %i.ji, %i.jk
  %i.jn = add <4 x i32> %i.jj, %i.jl
  %wide.load481.30 = load <4 x i8>, ptr %i.da, align 16, !tbaa !30
  %wide.load482.30 = load <4 x i8>, ptr %i.db, align 4, !tbaa !30
  %i.jo = zext <4 x i8> %wide.load481.30 to <4 x i32>
  %i.jp = zext <4 x i8> %wide.load482.30 to <4 x i32>
  %i.jq = add <4 x i32> %i.jm, %i.jo
  %i.jr = add <4 x i32> %i.jn, %i.jp
  %wide.load481.31 = load <4 x i8>, ptr %i.dc, align 8, !tbaa !30
  %wide.load482.31 = load <4 x i8>, ptr %i.dd, align 4, !tbaa !30
  %i.js = zext <4 x i8> %wide.load481.31 to <4 x i32>
  %i.jt = zext <4 x i8> %wide.load482.31 to <4 x i32>
  %i.ju = add <4 x i32> %i.jq, %i.js
  %i.jv = add <4 x i32> %i.jr, %i.jt
  %bin.rdx = add <4 x i32> %i.jv, %i.ju
  %i.jw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 5 uses
  %i.jx = icmp ugt i32 %i.jw, 79
  br i1 %i.jx, label %calculate_min_match_len.exit, label %bb.g

bb.g:                                             ; preds = %vector.body478
  %i.jy = zext nneg i32 %i.jw to i64
  %i.jz = getelementptr inbounds nuw i8, ptr @choose_min_match_len.min_lens, i64 %i.jy
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !30
  %i.kb = zext i8 %i.ka to i32                    ; 4 uses
  %i.kc = icmp ult i32 %i.dy, 16
  br i1 %i.kc, label %bb.h, label %calculate_min_match_len.exit

bb.h:                                             ; preds = %bb.g
  %i.kd = icmp samesign ult i32 %i.dy, 5
  br i1 %i.kd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ke = icmp samesign ugt i32 %i.jw, 44
  %i.kf = select i1 %i.ke, i32 %i.kb, i32 4
  br label %calculate_min_match_len.exit

bb.j:                                             ; preds = %bb.h
  %i.kg = icmp samesign ult i32 %i.dy, 10
  br i1 %i.kg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.kh = icmp samesign ugt i32 %i.jw, 15
  %i.ki = select i1 %i.kh, i32 %i.kb, i32 5
  br label %calculate_min_match_len.exit

bb.l:                                             ; preds = %bb.j
  %i.kj = icmp samesign ugt i32 %i.jw, 7
  %i.kk = select i1 %i.kj, i32 %i.kb, i32 7
  br label %calculate_min_match_len.exit

calculate_min_match_len.exit:                     ; preds = %bb.d, %vector.body478, %bb.g, %bb.i, %bb.k, %bb.l
  %.015.i = phi i32 [ 3, %bb.d ], [ 3, %vector.body478 ], [ %i.kf, %bb.i ], [ %i.ki, %bb.k ], [ %i.kk, %bb.l ], [ %i.kb, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %calculate_min_match_len.exit
  %.0158 = phi i32 [ %.015.i, %calculate_min_match_len.exit ], [ 259, %bb.c ]
  br label %deflate_near_optimal_merge_stats.exit.outer

deflate_near_optimal_merge_stats.exit.outer:      ; preds = %scalar.ph466, %bb.m
  %.1281.ph = phi i32 [ %.3283, %scalar.ph466 ], [ %.0280, %bb.m ]
  %.1275.ph = phi i32 [ %.3277, %scalar.ph466 ], [ %.0274, %bb.m ]
  %.sroa.9.1.ph = phi i32 [ %.sroa.9.5, %scalar.ph466 ], [ %.sroa.9.0, %bb.m ]
  %.sroa.0.1.ph = phi i32 [ %.sroa.0.5, %scalar.ph466 ], [ %.sroa.0.0, %bb.m ]
  %.1176.ph = phi ptr [ %.5180, %scalar.ph466 ], [ %.0175, %bb.m ]
  %.1170.ph = phi ptr [ %.5174, %scalar.ph466 ], [ %.0169, %bb.m ]
  %.1166.idx.ph = phi i64 [ %.4.idx, %scalar.ph466 ], [ %.0165.idx, %bb.m ]
  %.0163.ph = phi ptr [ %.3, %scalar.ph466 ], [ null, %bb.m ] ; 4 uses
  %.0159.ph = phi ptr [ %.1160, %scalar.ph466 ], [ %.0, %bb.m ]
  %.1.ph = phi ptr [ %.3, %scalar.ph466 ], [ %.0, %bb.m ]
  br label %deflate_near_optimal_merge_stats.exit

deflate_near_optimal_merge_stats.exit:            ; preds = %deflate_near_optimal_merge_stats.exit.backedge, %deflate_near_optimal_merge_stats.exit.outer
  %.1281 = phi i32 [ %.1281.ph, %deflate_near_optimal_merge_stats.exit.outer ], [ %.3283, %deflate_near_optimal_merge_stats.exit.backedge ]
  %.1275 = phi i32 [ %.1275.ph, %deflate_near_optimal_merge_stats.exit.outer ], [ %.3277, %deflate_near_optimal_merge_stats.exit.backedge ] ; 2 uses
  %.sroa.9.1 = phi i32 [ %.sroa.9.1.ph, %deflate_near_optimal_merge_stats.exit.outer ], [ %.sroa.9.5, %deflate_near_optimal_merge_stats.exit.backedge ] ; 2 uses
  %.sroa.0.1 = phi i32 [ %.sroa.0.1.ph, %deflate_near_optimal_merge_stats.exit.outer ], [ %.sroa.0.5, %deflate_near_optimal_merge_stats.exit.backedge ] ; 2 uses
  %.1176 = phi ptr [ %.1176.ph, %deflate_near_optimal_merge_stats.exit.outer ], [ %.5180, %deflate_near_optimal_merge_stats.exit.backedge ]
  %.1170 = phi ptr [ %.1170.ph, %deflate_near_optimal_merge_stats.exit.outer ], [ %.5174, %deflate_near_optimal_merge_stats.exit.backedge ] ; 2 uses
  %.1166.idx = phi i64 [ %.1166.idx.ph, %deflate_near_optimal_merge_stats.exit.outer ], [ %.4.idx, %deflate_near_optimal_merge_stats.exit.backedge ] ; 8 uses
  %.0159 = phi ptr [ %.0159.ph, %deflate_near_optimal_merge_stats.exit.outer ], [ %.1160, %deflate_near_optimal_merge_stats.exit.backedge ] ; 2 uses
  %.1 = phi ptr [ %.1.ph, %deflate_near_optimal_merge_stats.exit.outer ], [ %.3, %deflate_near_optimal_merge_stats.exit.backedge ] ; 10 uses
  %.1166.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.1166.idx ; 2 uses
  %i.kl = ptrtoint ptr %.1 to i64                 ; 2 uses
  %i.km = sub i64 %i.x, %i.kl                     ; 3 uses
  %i.kn = icmp eq ptr %.1, %.1170
  br i1 %i.kn, label %.preheader306, label %bb.n

.preheader306:                                    ; preds = %deflate_near_optimal_merge_stats.exit, %.preheader306
  %.015.i.i201 = phi i64 [ %i.lm, %.preheader306 ], [ 524288, %deflate_near_optimal_merge_stats.exit ]
  %.0.i.i202 = phi ptr [ %i.ll, %.preheader306 ], [ %i.e, %deflate_near_optimal_merge_stats.exit ] ; 10 uses
  %i.ko = load <8 x i16>, ptr %.0.i.i202, align 16, !tbaa !30
  %i.kp = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.ko, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.kp, ptr %.0.i.i202, align 16, !tbaa !30
  %i.kq = getelementptr inbounds nuw i8, ptr %.0.i.i202, i64 16 ; 2 uses
  %i.kr = load <8 x i16>, ptr %i.kq, align 16, !tbaa !30
  %i.ks = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.kr, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.ks, ptr %i.kq, align 16, !tbaa !30
  %i.kt = getelementptr inbounds nuw i8, ptr %.0.i.i202, i64 32 ; 2 uses
  %i.ku = load <8 x i16>, ptr %i.kt, align 16, !tbaa !30
  %i.kv = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.ku, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.kv, ptr %i.kt, align 16, !tbaa !30
  %i.kw = getelementptr inbounds nuw i8, ptr %.0.i.i202, i64 48 ; 2 uses
  %i.kx = load <8 x i16>, ptr %i.kw, align 16, !tbaa !30
  %i.ky = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.kx, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.ky, ptr %i.kw, align 16, !tbaa !30
  %i.kz = getelementptr inbounds nuw i8, ptr %.0.i.i202, i64 64 ; 2 uses
  %i.la = load <8 x i16>, ptr %i.kz, align 16, !tbaa !30
  %i.lb = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.la, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.lb, ptr %i.kz, align 16, !tbaa !30
  %i.lc = getelementptr inbounds nuw i8, ptr %.0.i.i202, i64 80 ; 2 uses
  %i.ld = load <8 x i16>, ptr %i.lc, align 16, !tbaa !30
  %i.le = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.ld, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.le, ptr %i.lc, align 16, !tbaa !30
  %i.lf = getelementptr inbounds nuw i8, ptr %.0.i.i202, i64 96 ; 2 uses
  %i.lg = load <8 x i16>, ptr %i.lf, align 16, !tbaa !30
  %i.lh = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.lg, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.lh, ptr %i.lf, align 16, !tbaa !30
  %i.li = getelementptr inbounds nuw i8, ptr %.0.i.i202, i64 112 ; 2 uses
  %i.lj = load <8 x i16>, ptr %i.li, align 16, !tbaa !30
  %i.lk = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.lj, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.lk, ptr %i.li, align 16, !tbaa !30
  %i.ll = getelementptr inbounds nuw i8, ptr %.0.i.i202, i64 128
  %i.lm = add nsw i64 %.015.i.i201, -128          ; 2 uses
  %.not.i.i203.1 = icmp eq i64 %i.lm, 0
  br i1 %.not.i.i203.1, label %bt_matchfinder_slide_window.exit204, label %.preheader306, !llvm.loop !1

bt_matchfinder_slide_window.exit204:              ; preds = %.preheader306
  %i.ln = tail call i64 @llvm.umin.i64(i64 %i.km, i64 32768)
  %i.lo = getelementptr inbounds nuw i8, ptr %.1, i64 %i.ln
  br label %bb.n

bb.n:                                             ; preds = %bt_matchfinder_slide_window.exit204, %deflate_near_optimal_merge_stats.exit
  %.2177 = phi ptr [ %.1, %bt_matchfinder_slide_window.exit204 ], [ %.1176, %deflate_near_optimal_merge_stats.exit ] ; 7 uses
  %.2171 = phi ptr [ %i.lo, %bt_matchfinder_slide_window.exit204 ], [ %.1170, %deflate_near_optimal_merge_stats.exit ] ; 2 uses
  %i.lp = icmp ult i64 %i.km, 258
  br i1 %i.lp, label %bb.o, label %adjust_max_and_nice_len.exit198, !prof !39

bb.o:                                             ; preds = %bb.n
  %i.lq = trunc nuw nsw i64 %i.km to i32          ; 2 uses
  %..i197 = tail call i32 @llvm.umin.i32(i32 %.1275, i32 %i.lq)
  br label %adjust_max_and_nice_len.exit198

adjust_max_and_nice_len.exit198:                  ; preds = %bb.n, %bb.o
  %.5285 = phi i32 [ %i.lq, %bb.o ], [ %.1281, %bb.n ] ; 8 uses
  %.5279 = phi i32 [ %..i197, %bb.o ], [ %.1275, %bb.n ] ; 4 uses
  %i.lr = icmp ugt i32 %.5285, 4
  br i1 %i.lr, label %bb.p, label %bb.an, !prof !41

bb.p:                                             ; preds = %adjust_max_and_nice_len.exit198
  %i.ls = ptrtoint ptr %.2177 to i64
  %i.lt = sub i64 %i.kl, %i.ls                    ; 5 uses
  %i.lu = load i32, ptr %i.ac, align 32, !tbaa !29
  %i.lv = getelementptr inbounds i8, ptr %.2177, i64 %i.lt ; 10 uses
  %i.lw = trunc i64 %i.lt to i32
  %i.lx = add i32 %i.lw, -32768                   ; 4 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 1
  %.0.copyload.i.i209 = load i32, ptr %i.ly, align 1 ; 2 uses
  %i.lz = and i32 %.0.copyload.i.i209, 16777215
  %i.ma = mul i32 %i.lz, 506832829
  %i.mb = lshr i32 %i.ma, 16                      ; 3 uses
  %i.mc = mul i32 %.0.copyload.i.i209, 506832829
  %i.md = lshr i32 %i.mc, 16                      ; 3 uses
  %i.me = zext nneg i32 %i.mb to i64
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.me
  tail call void @llvm.prefetch.p0(ptr nonnull %i.mf, i32 1, i32 3, i32 1)
  %i.mg = zext nneg i32 %i.md to i64
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.mg
  tail call void @llvm.prefetch.p0(ptr nonnull %i.mh, i32 1, i32 3, i32 1)
  %i.mi = zext nneg i32 %.sroa.0.1 to i64
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.mi ; 3 uses
  %i.mk = load i16, ptr %i.mj, align 4, !tbaa !40 ; 4 uses
  %i.ml = trunc i64 %i.lt to i16                  ; 3 uses
  store i16 %i.ml, ptr %i.mj, align 4, !tbaa !40
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 2 ; 2 uses
  %i.mn = load i16, ptr %i.mm, align 2, !tbaa !40 ; 3 uses
  %i.mo = sext i16 %i.mn to i32
  store i16 %i.mk, ptr %i.mm, align 2, !tbaa !40
  %i.mp = sext i16 %i.mk to i32
  %i.mq = icmp slt i32 %i.lx, %i.mp
  br i1 %i.mq, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %.0.copyload.i.i167.i = load i32, ptr %i.lv, align 1
  %i.mr = and i32 %.0.copyload.i.i167.i, 16777215 ; 2 uses
  %i.ms = sext i16 %i.mk to i64
  %i.mt = getelementptr inbounds i8, ptr %.2177, i64 %i.ms
  %.0.copyload.i.i166.i = load i32, ptr %i.mt, align 1
  %i.mu = and i32 %.0.copyload.i.i166.i, 16777215
  %i.mv = icmp eq i32 %i.mr, %i.mu
  br i1 %i.mv, label %.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.mw = icmp slt i32 %i.lx, %i.mo
  br i1 %i.mw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.mx = sext i16 %i.mn to i64
  %i.my = getelementptr inbounds i8, ptr %.2177, i64 %i.mx
  %.0.copyload.i.i.i = load i32, ptr %i.my, align 1
  %i.mz = and i32 %.0.copyload.i.i.i, 16777215
  %i.na = icmp eq i32 %i.mr, %i.mz
  br i1 %i.na, label %.sink.split, label %bb.t

.sink.split:                                      ; preds = %bb.s, %bb.q
  %.sink419 = phi i16 [ %i.mk, %bb.q ], [ %i.mn, %bb.s ]
  store i16 3, ptr %.1166.ptr, align 2, !tbaa !53
  %i.nb = sub i16 %i.ml, %.sink419
  %i.nc = getelementptr inbounds nuw i8, ptr %.1166.ptr, i64 2
  store i16 %i.nb, ptr %i.nc, align 2, !tbaa !54
  %.1166.add = add nuw nsw i64 %.1166.idx, 4
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.s, %bb.r, %bb.p
  %.1137.i.idx = phi i64 [ %.1166.idx, %bb.p ], [ %.1166.idx, %bb.s ], [ %.1166.idx, %bb.r ], [ %.1166.add, %.sink.split ] ; 2 uses
  %i.nd = zext nneg i32 %.sroa.9.1 to i64
  %i.ne = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.nd ; 2 uses
  %i.nf = load i16, ptr %i.ne, align 2, !tbaa !40
  %i.ng = sext i16 %i.nf to i32                   ; 2 uses
  store i16 %i.ml, ptr %i.ne, align 2, !tbaa !40
  %i.nh = shl i64 %i.lt, 1
  %i.ni = and i64 %i.nh, 65534                    ; 2 uses
  %i.nj = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.ni ; 2 uses
  %i.nk = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.ni
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 393218 ; 2 uses
  %.not.i210 = icmp slt i32 %i.lx, %i.ng
  br i1 %.not.i210, label %.preheader305.preheader, label %bb.u

.preheader305.preheader:                          ; preds = %bb.t
  %i.nm = zext nneg i32 %.5285 to i64
  br label %.preheader305

bb.u:                                             ; preds = %bb.t
  store i16 -32768, ptr %i.nj, align 2, !tbaa !40
  store i16 -32768, ptr %i.nl, align 2, !tbaa !40
  br label %bt_matchfinder_advance_one_byte.exit258

.preheader305:                                    ; preds = %.preheader305.preheader, %bb.ak
  %.2138.i212.idx = phi i64 [ %.4.i.idx, %bb.ak ], [ %.1137.i.idx, %.preheader305.preheader ] ; 4 uses
  %.0134.i213 = phi i32 [ %i.qi, %bb.ak ], [ %i.lu, %.preheader305.preheader ]
  %.0132.i214 = phi i32 [ %.1133.i229, %bb.ak ], [ %i.ng, %.preheader305.preheader ] ; 4 uses
  %.0130.i215 = phi ptr [ %.1131.i224, %bb.ak ], [ %i.nj, %.preheader305.preheader ] ; 3 uses
  %.0128.i216 = phi ptr [ %.1129.i225, %bb.ak ], [ %i.nl, %.preheader305.preheader ] ; 3 uses
  %.0126.i217 = phi i32 [ %.1127.i226, %bb.ak ], [ 0, %.preheader305.preheader ] ; 2 uses
  %.0124.i218 = phi i32 [ %.1125.i227, %bb.ak ], [ 0, %.preheader305.preheader ] ; 2 uses
  %.0121.i219 = phi i32 [ %spec.select154.i222, %bb.ak ], [ 0, %.preheader305.preheader ] ; 7 uses
  %.0.i220 = phi i32 [ %.2.i, %bb.ak ], [ 3, %.preheader305.preheader ] ; 3 uses
  %.2138.i212.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.2138.i212.idx ; 2 uses
  %i.nn = sext i32 %.0132.i214 to i64             ; 2 uses
  %i.no = getelementptr inbounds i8, ptr %.2177, i64 %i.nn ; 8 uses
  %i.np = zext nneg i32 %.0121.i219 to i64        ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.no, i64 %i.np
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !30
  %i.ns = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.np
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !30
  %i.nu = icmp eq i8 %i.nr, %i.nt
  br i1 %i.nu, label %bb.v, label %bb.ah

bb.v:                                             ; preds = %.preheader305
  %i.nv = add nuw nsw i32 %.0121.i219, 1          ; 4 uses
  %i.nw = sub nsw i32 %.5285, %i.nv
  %i.nx = icmp ugt i32 %i.nw, 31
  br i1 %i.nx, label %bb.w, label %.preheader487, !prof !41

bb.w:                                             ; preds = %bb.v
  %i.ny = zext nneg i32 %i.nv to i64              ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.no, i64 %i.ny
  %.0.copyload.i163.i246 = load i64, ptr %i.nz, align 1 ; 2 uses
end_hunk_0
begin_hunk_1_@deflate_compress_near_optimal:bb.a
  %i.up = sub nsw i32 %.4278, %i.uo
  %i.uq = icmp ugt i32 %i.up, 31
  br i1 %i.uq, label %bb.az, label %.preheader485, !prof !41

bb.az:                                            ; preds = %bb.ay
  %i.ur = zext nneg i32 %i.uo to i64              ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.uh, i64 %i.ur
  %.0.copyload.i163.i = load i64, ptr %i.us, align 1 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.te, i64 %i.ur
  %.0.copyload.i162.i = load i64, ptr %i.ut, align 1 ; 2 uses
  %i.uu = xor i64 %.0.copyload.i162.i, %.0.copyload.i163.i
  %.not.i.i208 = icmp eq i64 %.0.copyload.i163.i, %.0.copyload.i162.i
  br i1 %.not.i.i208, label %bb.ba, label %bb.bh

bb.ba:                                            ; preds = %bb.az
  %i.uv = add nuw nsw i32 %.0121.i, 9             ; 2 uses
  %i.uw = zext nneg i32 %i.uv to i64              ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uh, i64 %i.uw
  %.0.copyload.i161.i = load i64, ptr %i.ux, align 1 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.te, i64 %i.uw
  %.0.copyload.i160.i = load i64, ptr %i.uy, align 1 ; 2 uses
  %i.uz = xor i64 %.0.copyload.i160.i, %.0.copyload.i161.i
  %.not54.i.i = icmp eq i64 %.0.copyload.i161.i, %.0.copyload.i160.i
  br i1 %.not54.i.i, label %bb.bb, label %bb.bh

bb.bb:                                            ; preds = %bb.ba
  %i.va = add nuw nsw i32 %.0121.i, 17            ; 2 uses
  %i.vb = zext nneg i32 %i.va to i64              ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uh, i64 %i.vb
  %.0.copyload.i159.i = load i64, ptr %i.vc, align 1 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.te, i64 %i.vb
  %.0.copyload.i158.i = load i64, ptr %i.vd, align 1 ; 2 uses
  %i.ve = xor i64 %.0.copyload.i158.i, %.0.copyload.i159.i
  %.not55.i.i = icmp eq i64 %.0.copyload.i159.i, %.0.copyload.i158.i
  br i1 %.not55.i.i, label %bb.bc, label %bb.bh

bb.bc:                                            ; preds = %bb.bb
  %i.vf = add nuw nsw i32 %.0121.i, 25            ; 2 uses
  %i.vg = zext nneg i32 %i.vf to i64              ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.uh, i64 %i.vg
  %.0.copyload.i157.i = load i64, ptr %i.vh, align 1 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.te, i64 %i.vg
  %.0.copyload.i156.i = load i64, ptr %i.vi, align 1 ; 2 uses
  %i.vj = xor i64 %.0.copyload.i156.i, %.0.copyload.i157.i
  %.not56.i.i = icmp eq i64 %.0.copyload.i157.i, %.0.copyload.i156.i
  br i1 %.not56.i.i, label %bb.bd, label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  %i.vk = add nuw nsw i32 %.0121.i, 33
  br label %.preheader485

.preheader485:                                    ; preds = %bb.bd, %bb.ay
  %.1.i.i.ph = phi i32 [ %i.uo, %bb.ay ], [ %i.vk, %bb.bd ]
  br label %bb.be

bb.be:                                            ; preds = %.preheader485, %bb.bf
  %.1.i.i = phi i32 [ %i.vl, %bb.bf ], [ %.1.i.i.ph, %.preheader485 ] ; 6 uses
  %i.vl = add i32 %.1.i.i, 8                      ; 2 uses
  %.not57.i.i = icmp ugt i32 %i.vl, %.4278
  br i1 %.not57.i.i, label %.preheader, label %bb.bf

.preheader:                                       ; preds = %bb.be
  %i.vm = icmp ult i32 %.1.i.i, %.4278
  br i1 %i.vm, label %.lr.ph323.preheader, label %lz_extend.exit.i

.lr.ph323.preheader:                              ; preds = %.preheader
  %i.vn = zext nneg i32 %.1.i.i to i64
  br label %.lr.ph323

bb.bf:                                            ; preds = %bb.be
  %i.vo = zext i32 %.1.i.i to i64                 ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.uh, i64 %i.vo
  %.0.copyload.i165.i = load i64, ptr %i.vp, align 1 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.te, i64 %i.vo
  %.0.copyload.i164.i = load i64, ptr %i.vq, align 1 ; 2 uses
  %.not58.i.i = icmp eq i64 %.0.copyload.i165.i, %.0.copyload.i164.i
  br i1 %.not58.i.i, label %bb.be, label %.loopexit, !llvm.loop !2

.lr.ph323:                                        ; preds = %.lr.ph323.preheader, %bb.bg
  %indvars.iv342 = phi i64 [ %i.vn, %.lr.ph323.preheader ], [ %indvars.iv.next343, %bb.bg ] ; 4 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.uh, i64 %indvars.iv342
  %i.vs = load i8, ptr %i.vr, align 1, !tbaa !30
  %i.vt = getelementptr inbounds nuw i8, ptr %i.te, i64 %indvars.iv342
  %i.vu = load i8, ptr %i.vt, align 1, !tbaa !30
  %i.vv = icmp eq i8 %i.vs, %i.vu
  br i1 %i.vv, label %bb.bg, label %lz_extend.exit.i.loopexit

bb.bg:                                            ; preds = %.lr.ph323
  %indvars.iv.next343 = add nuw nsw i64 %indvars.iv342, 1 ; 2 uses
  %exitcond345.not = icmp eq i64 %indvars.iv.next343, %i.uf
  br i1 %exitcond345.not, label %lz_extend.exit.i.thread, label %.lr.ph323, !llvm.loop !3

.loopexit:                                        ; preds = %bb.bf
  %i.vw = xor i64 %.0.copyload.i164.i, %.0.copyload.i165.i
  br label %bb.bh

bb.bh:                                            ; preds = %.loopexit, %bb.bc, %bb.bb, %bb.ba, %bb.az
  %.3.i.i = phi i32 [ %i.uo, %bb.az ], [ %i.uv, %bb.ba ], [ %i.va, %bb.bb ], [ %i.vf, %bb.bc ], [ %.1.i.i, %.loopexit ]
  %.0.i.i207 = phi i64 [ %i.uu, %bb.az ], [ %i.uz, %bb.ba ], [ %i.ve, %bb.bb ], [ %i.vj, %bb.bc ], [ %i.vw, %.loopexit ]
  %i.vx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0.i.i207, i1 true)
  %i.vy = trunc nuw nsw i64 %i.vx to i32
  %i.vz = lshr i32 %i.vy, 3
  %i.wa = add i32 %i.vz, %.3.i.i
  br label %lz_extend.exit.i

lz_extend.exit.i.loopexit:                        ; preds = %.lr.ph323
  %i.wb = trunc nuw i64 %indvars.iv342 to i32
  br label %lz_extend.exit.i

lz_extend.exit.i:                                 ; preds = %lz_extend.exit.i.loopexit, %.preheader, %bb.bh
  %.047.i.i = phi i32 [ %i.wa, %bb.bh ], [ %.1.i.i, %.preheader ], [ %i.wb, %lz_extend.exit.i.loopexit ] ; 3 uses
  %.not148.i = icmp ult i32 %.047.i.i, %.4278
  br i1 %.not148.i, label %lz_extend.exit.i._crit_edge, label %lz_extend.exit.i.thread

lz_extend.exit.i._crit_edge:                      ; preds = %lz_extend.exit.i
  %.phi.trans.insert = zext nneg i32 %.047.i.i to i64 ; 2 uses
  %.phi.trans.insert346 = getelementptr inbounds nuw i8, ptr %i.uh, i64 %.phi.trans.insert
  %.pre = load i8, ptr %.phi.trans.insert346, align 1, !tbaa !30
  %.phi.trans.insert348 = getelementptr inbounds nuw i8, ptr %i.te, i64 %.phi.trans.insert
  %.pre349 = load i8, ptr %.phi.trans.insert348, align 1, !tbaa !30
  br label %bb.bi

lz_extend.exit.i.thread:                          ; preds = %lz_extend.exit.i, %bb.bg
  %i.wc = shl nsw i32 %.0132.i, 1
  %i.wd = and i32 %i.wc, 65534
  %i.we = zext nneg i32 %i.wd to i64              ; 2 uses
  %i.wf = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.we
  %i.wg = load i16, ptr %i.wf, align 2, !tbaa !40
  store i16 %i.wg, ptr %.0130.i, align 2, !tbaa !40
  %i.wh = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.we
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 393218
  %i.wj = load i16, ptr %i.wi, align 2, !tbaa !40
  store i16 %i.wj, ptr %.0128.i, align 2, !tbaa !40
  br label %bt_matchfinder_advance_one_byte.exit

bb.bi:                                            ; preds = %lz_extend.exit.i._crit_edge, %.preheader300
  %i.wk = phi i8 [ %.pre349, %lz_extend.exit.i._crit_edge ], [ %i.um, %.preheader300 ]
  %i.wl = phi i8 [ %.pre, %lz_extend.exit.i._crit_edge ], [ %i.uk, %.preheader300 ]
  %.1122.i = phi i32 [ %.047.i.i, %lz_extend.exit.i._crit_edge ], [ %.0121.i, %.preheader300 ] ; 3 uses
  %i.wm = icmp ult i8 %i.wl, %i.wk
  %i.wn = trunc nsw i32 %.0132.i to i16           ; 2 uses
  %i.wo = shl nsw i32 %.0132.i, 1
  %i.wp = and i32 %i.wo, 65534
  %i.wq = zext nneg i32 %i.wp to i64              ; 2 uses
  br i1 %i.wm, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  store i16 %i.wn, ptr %.0130.i, align 2, !tbaa !40
  %i.wr = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.wq
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 393218 ; 2 uses
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  store i16 %i.wn, ptr %.0128.i, align 2, !tbaa !40
  %i.wt = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.wq ; 2 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.0126.i.sink = phi i32 [ %.0126.i, %bb.bk ], [ %.0124.i, %bb.bj ]
  %.1133.in.i.in = phi ptr [ %i.wt, %bb.bk ], [ %i.ws, %bb.bj ]
  %.1131.i = phi ptr [ %.0130.i, %bb.bk ], [ %i.ws, %bb.bj ] ; 2 uses
  %.1129.i = phi ptr [ %i.wt, %bb.bk ], [ %.0128.i, %bb.bj ] ; 2 uses
  %.1127.i = phi i32 [ %.0126.i, %bb.bk ], [ %.1122.i, %bb.bj ]
  %.1125.i = phi i32 [ %.1122.i, %bb.bk ], [ %.0124.i, %bb.bj ]
  %spec.select154.i = tail call i32 @llvm.umin.i32(i32 %.0126.i.sink, i32 %.1122.i)
  %.1133.in.i = load i16, ptr %.1133.in.i.in, align 2, !tbaa !40
  %.1133.i = sext i16 %.1133.in.i to i32          ; 2 uses
  %.not149.i = icmp sge i32 %i.tg, %.1133.i
  %i.wu = add i32 %.0134.i, -1                    ; 2 uses
  %.not150.i = icmp eq i32 %i.wu, 0
  %or.cond155.i = select i1 %.not149.i, i1 true, i1 %.not150.i
  br i1 %or.cond155.i, label %bb.bm, label %.preheader300

bb.bm:                                            ; preds = %bb.bl
  store i16 -32768, ptr %.1131.i, align 2, !tbaa !40
  store i16 -32768, ptr %.1129.i, align 2, !tbaa !40
  br label %bt_matchfinder_advance_one_byte.exit

bt_matchfinder_advance_one_byte.exit:             ; preds = %bb.bm, %lz_extend.exit.i.thread, %bb.ax, %adjust_max_and_nice_len.exit
  %.sroa.9.4 = phi i32 [ %.sroa.9.3, %adjust_max_and_nice_len.exit ], [ %i.tm, %bb.ax ], [ %i.tm, %lz_extend.exit.i.thread ], [ %i.tm, %bb.bm ] ; 2 uses
  %.sroa.0.4 = phi i32 [ %.sroa.0.3, %adjust_max_and_nice_len.exit ], [ %i.tk, %bb.ax ], [ %i.tk, %lz_extend.exit.i.thread ], [ %i.tk, %bb.bm ] ; 2 uses
  store i16 0, ptr %.3168.ptr, align 2, !tbaa !53
  %i.wv = load i8, ptr %.2, align 1, !tbaa !30
  %i.ww = zext i8 %i.wv to i16
  %i.wx = getelementptr inbounds nuw i8, ptr %.3168.ptr, i64 2
  store i16 %i.ww, ptr %i.wx, align 2, !tbaa !54
  %i.wy = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 2 uses
  %.3168.add = add nuw nsw i64 %.3168.idx, 4      ; 2 uses
  %i.wz = add nsw i32 %.1157, -1                  ; 2 uses
  %.not189 = icmp eq i32 %i.wz, 0
  br i1 %.not189, label %.loopexit304, label %bb.at, !llvm.loop !98

.loopexit304:                                     ; preds = %bt_matchfinder_advance_one_byte.exit, %bb.ar
  %.3283 = phi i32 [ %.5285, %bb.ar ], [ %.4284, %bt_matchfinder_advance_one_byte.exit ] ; 3 uses
  %.3277 = phi i32 [ %.5279, %bb.ar ], [ %.4278, %bt_matchfinder_advance_one_byte.exit ] ; 3 uses
  %.sroa.9.5 = phi i32 [ %.sroa.9.2, %bb.ar ], [ %.sroa.9.4, %bt_matchfinder_advance_one_byte.exit ] ; 3 uses
  %.sroa.0.5 = phi i32 [ %.sroa.0.2, %bb.ar ], [ %.sroa.0.4, %bt_matchfinder_advance_one_byte.exit ] ; 3 uses
  %.5180 = phi ptr [ %.2177, %bb.ar ], [ %.4179, %bt_matchfinder_advance_one_byte.exit ] ; 3 uses
  %.5174 = phi ptr [ %.2171, %bb.ar ], [ %.4173, %bt_matchfinder_advance_one_byte.exit ] ; 3 uses
  %.4.idx = phi i64 [ %.2167.add, %bb.ar ], [ %.3168.add, %bt_matchfinder_advance_one_byte.exit ] ; 5 uses
  %.3 = phi ptr [ %i.rr, %bb.ar ], [ %i.wy, %bt_matchfinder_advance_one_byte.exit ] ; 12 uses
  %.not190 = icmp ult ptr %.3, %.0.i
  %.not191 = icmp slt i64 %.4.idx, 6530368
  %or.cond195 = select i1 %.not190, i1 %.not191, i1 false
  br i1 %or.cond195, label %bb.bn, label %.thread

.thread:                                          ; preds = %.loopexit304
  %.4.ptr.le371 = getelementptr inbounds nuw i8, ptr %0, i64 %.4.idx
  br label %vector.ph

bb.bn:                                            ; preds = %.loopexit304
  %i.xa = load i32, ptr %i.af, align 4, !tbaa !50
  %i.xb = icmp ugt i32 %i.xa, 511
  br i1 %i.xb, label %bb.bo, label %deflate_near_optimal_merge_stats.exit.backedge

deflate_near_optimal_merge_stats.exit.backedge:   ; preds = %bb.bn, %bb.bo
  br label %deflate_near_optimal_merge_stats.exit

bb.bo:                                            ; preds = %bb.bn
  %i.xc = ptrtoint ptr %.3 to i64                 ; 2 uses
  %i.xd = sub i64 %i.xc, %i.dq                    ; 2 uses
  %i.xe = icmp sgt i64 %i.xd, 4999
  %i.xf = sub i64 %i.x, %i.xc
  %i.xg = icmp sgt i64 %i.xf, 4999
  %or.cond292 = select i1 %i.xe, i1 %i.xg, i1 false
  br i1 %or.cond292, label %bb.bp, label %deflate_near_optimal_merge_stats.exit.backedge

bb.bp:                                            ; preds = %bb.bo
  %i.xh = trunc i64 %i.xd to i32
  %i.xi = tail call fastcc zeroext i1 @do_end_block_check(ptr noundef nonnull %i.aa, i32 noundef %i.xh)
  br i1 %i.xi, label %bb.bq, label %vector.ph467

vector.ph467:                                     ; preds = %bb.bp
  %i.xj = load <4 x i32>, ptr %i.aa, align 4, !tbaa !31
  %i.xk = load <4 x i32>, ptr %i.ag, align 4, !tbaa !31
  %i.xl = add <4 x i32> %i.xk, %i.xj
  store <4 x i32> %i.xl, ptr %i.ag, align 4, !tbaa !31
  store <4 x i32> zeroinitializer, ptr %i.aa, align 4, !tbaa !31
  %i.xm = load <4 x i32>, ptr %i.ah, align 4, !tbaa !31
  %i.xn = load <4 x i32>, ptr %i.ai, align 4, !tbaa !31
  %i.xo = add <4 x i32> %i.xn, %i.xm
  store <4 x i32> %i.xo, ptr %i.ai, align 4, !tbaa !31
  store <4 x i32> zeroinitializer, ptr %i.ah, align 4, !tbaa !31
  %i.xp = load <2 x i32>, ptr %i.aj, align 4, !tbaa !31
  store i32 0, ptr %i.aj, align 4, !tbaa !31
  %i.xq = load <2 x i32>, ptr %i.ak, align 4, !tbaa !31
  %i.xr = add <2 x i32> %i.xq, %i.xp
  store <2 x i32> %i.xr, ptr %i.ak, align 4, !tbaa !31
  store i32 0, ptr %i.al, align 4, !tbaa !31
  %i.xs = load i32, ptr %i.af, align 4, !tbaa !50
  %i.xt = load i32, ptr %i.am, align 4, !tbaa !55
  %i.xu = add i32 %i.xt, %i.xs
  store i32 %i.xu, ptr %i.am, align 4, !tbaa !55
  store i32 0, ptr %i.af, align 4, !tbaa !50
  br label %vector.body468

vector.body468:                                   ; preds = %vector.body468, %vector.ph467
  %index469 = phi i64 [ 0, %vector.ph467 ], [ %index.next474.1, %vector.body468 ] ; 4 uses
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index469 ; 3 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 16 ; 2 uses
  %wide.load470 = load <4 x i32>, ptr %i.xv, align 4, !tbaa !30
  %wide.load471 = load <4 x i32>, ptr %i.xw, align 4, !tbaa !30
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index469 ; 3 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 16 ; 2 uses
  %wide.load472 = load <4 x i32>, ptr %i.xx, align 4, !tbaa !30
  %wide.load473 = load <4 x i32>, ptr %i.xy, align 4, !tbaa !30
  %i.xz = add <4 x i32> %wide.load472, %wide.load470
  %i.ya = add <4 x i32> %wide.load473, %wide.load471
  store <4 x i32> %i.xz, ptr %i.xx, align 4, !tbaa !30
  store <4 x i32> %i.ya, ptr %i.xy, align 4, !tbaa !30
  store <4 x i32> zeroinitializer, ptr %i.xv, align 4, !tbaa !30
  store <4 x i32> zeroinitializer, ptr %i.xw, align 4, !tbaa !30
  %index.next474 = or disjoint i64 %index469, 8   ; 2 uses
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index.next474 ; 3 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 16 ; 2 uses
  %wide.load470.1 = load <4 x i32>, ptr %i.yb, align 4, !tbaa !30
  %wide.load471.1 = load <4 x i32>, ptr %i.yc, align 4, !tbaa !30
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index.next474 ; 3 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 16 ; 2 uses
  %wide.load472.1 = load <4 x i32>, ptr %i.yd, align 4, !tbaa !30
  %wide.load473.1 = load <4 x i32>, ptr %i.ye, align 4, !tbaa !30
  %i.yf = add <4 x i32> %wide.load472.1, %wide.load470.1
  %i.yg = add <4 x i32> %wide.load473.1, %wide.load471.1
  store <4 x i32> %i.yf, ptr %i.yd, align 4, !tbaa !30
  store <4 x i32> %i.yg, ptr %i.ye, align 4, !tbaa !30
  store <4 x i32> zeroinitializer, ptr %i.yb, align 4, !tbaa !30
  store <4 x i32> zeroinitializer, ptr %i.yc, align 4, !tbaa !30
  %index.next474.1 = add nuw nsw i64 %index469, 16 ; 2 uses
  %i.yh = icmp eq i64 %index.next474.1, 256
  br i1 %i.yh, label %scalar.ph466, label %vector.body468, !llvm.loop !99

scalar.ph466:                                     ; preds = %vector.body468
  %i.yi = load i32, ptr %i.de, align 4, !tbaa !30
  %i.yj = load i32, ptr %i.df, align 4, !tbaa !30
  %i.yk = add i32 %i.yj, %i.yi
  store i32 %i.yk, ptr %i.df, align 4, !tbaa !30
  store i32 0, ptr %i.de, align 4, !tbaa !30
  %i.yl = load i32, ptr %i.dg, align 4, !tbaa !30
  %i.ym = load i32, ptr %i.dh, align 4, !tbaa !30
  %i.yn = add i32 %i.ym, %i.yl
  store i32 %i.yn, ptr %i.dh, align 4, !tbaa !30
  store i32 0, ptr %i.dg, align 4, !tbaa !30
  %i.yo = load i32, ptr %i.di, align 4, !tbaa !30
  %i.yp = load i32, ptr %i.dj, align 4, !tbaa !30
  %i.yq = add i32 %i.yp, %i.yo
  store i32 %i.yq, ptr %i.dj, align 4, !tbaa !30
  store i32 0, ptr %i.di, align 4, !tbaa !30
  br label %deflate_near_optimal_merge_stats.exit.outer

bb.bq:                                            ; preds = %bb.bp
  %.4.ptr.le = getelementptr inbounds nuw i8, ptr %0, i64 %.4.idx ; 4 uses
  %.not420 = icmp eq ptr %.0163.ph, null
  br i1 %.not420, label %vector.ph, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.3.lcssa537.lcssa538 = ptrtoaddr ptr %.3 to i64
  %.0163.ph.lcssa534535 = ptrtoaddr ptr %.0163.ph to i64
  %i.yr = ptrtoint ptr %.0163.ph to i64           ; 2 uses
  %i.ys = ptrtoint ptr %.3 to i64
  %i.yt = sub i64 %i.ys, %i.yr
  %4 = trunc i64 %i.yt to i32                     ; 3 uses
  %i.yu = trunc i64 %.0163.ph.lcssa534535 to i32
  %5 = trunc i64 %.3.lcssa537.lcssa538 to i32
  %xtraiter539 = and i32 %4, 7                    ; 2 uses
  %lcmp.mod540.not = icmp eq i32 %xtraiter539, 0
  br i1 %lcmp.mod540.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.br, %.prol.preheader
  %.5.prol = phi ptr [ %i.yz, %.prol.preheader ], [ %.4.ptr.le, %bb.br ]
  %.0154.prol = phi i32 [ %i.za, %.prol.preheader ], [ %4, %bb.br ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.br ]
  %i.yv = getelementptr inbounds i8, ptr %.5.prol, i64 -4 ; 2 uses
  %i.yw = load i16, ptr %i.yv, align 2, !tbaa !53
  %i.yx = zext i16 %i.yw to i64
  %i.yy = sub nsw i64 0, %i.yx
  %i.yz = getelementptr inbounds [4 x i8], ptr %i.yv, i64 %i.yy ; 3 uses
  %i.za = add i32 %.0154.prol, -1                 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter539
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !100

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.br
  %.lcssa531.unr = phi ptr [ poison, %bb.br ], [ %i.yz, %.prol.preheader ]
  %.5.unr = phi ptr [ %.4.ptr.le, %bb.br ], [ %i.yz, %.prol.preheader ]
  %.0154.unr = phi i32 [ %4, %bb.br ], [ %i.za, %.prol.preheader ]
  %6 = sub i32 %i.yu, %5
  %7 = icmp ugt i32 %6, -8
  br i1 %7, label %.unr-lcssa, label %.new533

.new533:                                          ; preds = %.prol.loopexit, %.new533
  %.5 = phi ptr [ %i.aao, %.new533 ], [ %.5.unr, %.prol.loopexit ]
  %.0154 = phi i32 [ %i.aap, %.new533 ], [ %.0154.unr, %.prol.loopexit ]
  %i.zb = getelementptr inbounds i8, ptr %.5, i64 -4 ; 2 uses
  %i.zc = load i16, ptr %i.zb, align 2, !tbaa !53
  %i.zd = zext i16 %i.zc to i64
  %i.ze = sub nsw i64 0, %i.zd
  %i.zf = getelementptr inbounds [4 x i8], ptr %i.zb, i64 %i.ze
  %i.zg = getelementptr inbounds i8, ptr %i.zf, i64 -4 ; 2 uses
  %i.zh = load i16, ptr %i.zg, align 2, !tbaa !53
  %i.zi = zext i16 %i.zh to i64
  %i.zj = sub nsw i64 0, %i.zi
  %i.zk = getelementptr inbounds [4 x i8], ptr %i.zg, i64 %i.zj
  %i.zl = getelementptr inbounds i8, ptr %i.zk, i64 -4 ; 2 uses
  %i.zm = load i16, ptr %i.zl, align 2, !tbaa !53
  %i.zn = zext i16 %i.zm to i64
  %i.zo = sub nsw i64 0, %i.zn
  %i.zp = getelementptr inbounds [4 x i8], ptr %i.zl, i64 %i.zo
  %i.zq = getelementptr inbounds i8, ptr %i.zp, i64 -4 ; 2 uses
  %i.zr = load i16, ptr %i.zq, align 2, !tbaa !53
  %i.zs = zext i16 %i.zr to i64
  %i.zt = sub nsw i64 0, %i.zs
  %i.zu = getelementptr inbounds [4 x i8], ptr %i.zq, i64 %i.zt
  %i.zv = getelementptr inbounds i8, ptr %i.zu, i64 -4 ; 2 uses
  %i.zw = load i16, ptr %i.zv, align 2, !tbaa !53
  %i.zx = zext i16 %i.zw to i64
  %i.zy = sub nsw i64 0, %i.zx
  %i.zz = getelementptr inbounds [4 x i8], ptr %i.zv, i64 %i.zy
  %i.aaa = getelementptr inbounds i8, ptr %i.zz, i64 -4 ; 2 uses
  %i.aab = load i16, ptr %i.aaa, align 2, !tbaa !53
  %i.aac = zext i16 %i.aab to i64
  %i.aad = sub nsw i64 0, %i.aac
  %i.aae = getelementptr inbounds [4 x i8], ptr %i.aaa, i64 %i.aad
  %i.aaf = getelementptr inbounds i8, ptr %i.aae, i64 -4 ; 2 uses
  %i.aag = load i16, ptr %i.aaf, align 2, !tbaa !53
  %i.aah = zext i16 %i.aag to i64
  %i.aai = sub nsw i64 0, %i.aah
  %i.aaj = getelementptr inbounds [4 x i8], ptr %i.aaf, i64 %i.aai
  %i.aak = getelementptr inbounds i8, ptr %i.aaj, i64 -4 ; 2 uses
  %i.aal = load i16, ptr %i.aak, align 2, !tbaa !53
  %i.aam = zext i16 %i.aal to i64
  %i.aan = sub nsw i64 0, %i.aam
  %i.aao = getelementptr inbounds [4 x i8], ptr %i.aak, i64 %i.aan ; 2 uses
  %i.aap = add i32 %.0154, -8                     ; 2 uses
  %.not192.7 = icmp eq i32 %i.aap, 0
  br i1 %.not192.7, label %.unr-lcssa, label %.new533, !llvm.loop !101

.unr-lcssa:                                       ; preds = %.new533, %.prol.loopexit
  %.lcssa531 = phi ptr [ %.lcssa531.unr, %.prol.loopexit ], [ %i.aao, %.new533 ] ; 3 uses
  %i.aaq = sub i64 %i.yr, %i.dq
  %i.aar = trunc i64 %i.aaq to i32
  %i.aas = icmp eq ptr %.0152, %1
  %i.aat = ptrtoint ptr %.4.ptr.le to i64
  %i.aau = ptrtoint ptr %.lcssa531 to i64
  %i.aav = sub i64 %i.aat, %i.aau                 ; 2 uses
  call fastcc void @deflate_optimize_and_flush_block(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %.0152, i32 noundef %i.aar, ptr noundef nonnull %.lcssa531, i1 noundef zeroext %i.aas, i1 noundef zeroext false, ptr noundef %i.b)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 32 %.ptr296, ptr nonnull align 2 %.lcssa531, i64 %i.aav, i1 false)
  %.add = add nuw nsw i64 %i.aav, 530368
  %i.aaw = load <4 x i32>, ptr %i.ag, align 16, !tbaa !31
  store <4 x i32> %i.aaw, ptr %i.ao, align 32, !tbaa !30
  %i.aax = load <4 x i32>, ptr %i.ai, align 32, !tbaa !31
  store <4 x i32> %i.aax, ptr %i.ap, align 16, !tbaa !30
  %i.aay = load <2 x i32>, ptr %i.ak, align 16, !tbaa !31
  store <2 x i32> %i.aay, ptr %i.aq, align 32, !tbaa !30
  %i.aaz = load i32, ptr %i.am, align 4, !tbaa !56
  store i32 %i.aaz, ptr %i.ar, align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.ag, i8 0, i64 40, i1 false), !tbaa !31
  store i32 0, ptr %i.am, align 4, !tbaa !56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1036) %i.an, i8 0, i64 1036, i1 false)
  br label %bb.bs

vector.ph:                                        ; preds = %.thread, %bb.bq
  %.4.ptr.le373 = phi ptr [ %.4.ptr.le371, %.thread ], [ %.4.ptr.le, %bb.bq ]
  %i.aba = load <4 x i32>, ptr %i.aa, align 4, !tbaa !31
  %i.abb = load <4 x i32>, ptr %i.ag, align 4, !tbaa !31
  %i.abc = add <4 x i32> %i.abb, %i.aba
  store <4 x i32> %i.abc, ptr %i.ag, align 4, !tbaa !31
  store <4 x i32> zeroinitializer, ptr %i.aa, align 4, !tbaa !31
  %i.abd = load <4 x i32>, ptr %i.ah, align 4, !tbaa !31
  %i.abe = load <4 x i32>, ptr %i.ai, align 4, !tbaa !31
  %i.abf = add <4 x i32> %i.abe, %i.abd
  store <4 x i32> %i.abf, ptr %i.ai, align 4, !tbaa !31
  store <4 x i32> zeroinitializer, ptr %i.ah, align 4, !tbaa !31
  %i.abg = load <2 x i32>, ptr %i.aj, align 4, !tbaa !31
  store i32 0, ptr %i.aj, align 4, !tbaa !31
  %i.abh = load <2 x i32>, ptr %i.ak, align 4, !tbaa !31
  %i.abi = add <2 x i32> %i.abh, %i.abg
  store <2 x i32> %i.abi, ptr %i.ak, align 4, !tbaa !31
  store i32 0, ptr %i.al, align 4, !tbaa !31
  %i.abj = load i32, ptr %i.af, align 4, !tbaa !50
  %i.abk = load i32, ptr %i.am, align 4, !tbaa !55
  %i.abl = add i32 %i.abk, %i.abj
  store i32 %i.abl, ptr %i.am, align 4, !tbaa !55
  store i32 0, ptr %i.af, align 4, !tbaa !50
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 4 uses
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index ; 3 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.abm, align 4, !tbaa !30
  %wide.load463 = load <4 x i32>, ptr %i.abn, align 4, !tbaa !30
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index ; 3 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 16 ; 2 uses
  %wide.load464 = load <4 x i32>, ptr %i.abo, align 4, !tbaa !30
  %wide.load465 = load <4 x i32>, ptr %i.abp, align 4, !tbaa !30
  %i.abq = add <4 x i32> %wide.load464, %wide.load
  %i.abr = add <4 x i32> %wide.load465, %wide.load463
  store <4 x i32> %i.abq, ptr %i.abo, align 4, !tbaa !30
  store <4 x i32> %i.abr, ptr %i.abp, align 4, !tbaa !30
  store <4 x i32> zeroinitializer, ptr %i.abm, align 4, !tbaa !30
  store <4 x i32> zeroinitializer, ptr %i.abn, align 4, !tbaa !30
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index.next ; 3 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 16 ; 2 uses
  %wide.load.1 = load <4 x i32>, ptr %i.abs, align 4, !tbaa !30
  %wide.load463.1 = load <4 x i32>, ptr %i.abt, align 4, !tbaa !30
  %i.abu = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index.next ; 3 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 16 ; 2 uses
  %wide.load464.1 = load <4 x i32>, ptr %i.abu, align 4, !tbaa !30
  %wide.load465.1 = load <4 x i32>, ptr %i.abv, align 4, !tbaa !30
  %i.abw = add <4 x i32> %wide.load464.1, %wide.load.1
  %i.abx = add <4 x i32> %wide.load465.1, %wide.load463.1
  store <4 x i32> %i.abw, ptr %i.abu, align 4, !tbaa !30
  store <4 x i32> %i.abx, ptr %i.abv, align 4, !tbaa !30
  store <4 x i32> zeroinitializer, ptr %i.abs, align 4, !tbaa !30
  store <4 x i32> zeroinitializer, ptr %i.abt, align 4, !tbaa !30
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.aby = icmp eq i64 %index.next.1, 256
  br i1 %i.aby, label %scalar.ph, label %vector.body, !llvm.loop !102

scalar.ph:                                        ; preds = %vector.body
  %i.abz = load i32, ptr %i.dk, align 4, !tbaa !30
  %i.aca = load i32, ptr %i.dl, align 4, !tbaa !30
  %i.acb = add i32 %i.aca, %i.abz
  store i32 %i.acb, ptr %i.dl, align 4, !tbaa !30
  store i32 0, ptr %i.dk, align 4, !tbaa !30
  %i.acc = load i32, ptr %i.dm, align 4, !tbaa !30
  %i.acd = load i32, ptr %i.dn, align 4, !tbaa !30
  %i.ace = add i32 %i.acd, %i.acc
  store i32 %i.ace, ptr %i.dn, align 4, !tbaa !30
  store i32 0, ptr %i.dm, align 4, !tbaa !30
  %i.acf = load i32, ptr %i.do, align 4, !tbaa !30
  %i.acg = load i32, ptr %i.dp, align 4, !tbaa !30
  %i.ach = add i32 %i.acg, %i.acf
  store i32 %i.ach, ptr %i.dp, align 4, !tbaa !30
  store i32 0, ptr %i.do, align 4, !tbaa !30
  %i.aci = ptrtoint ptr %.3 to i64
  %i.acj = sub i64 %i.aci, %i.dq
  %i.ack = trunc i64 %i.acj to i32
  %i.acl = icmp eq ptr %.0152, %1
  %i.acm = icmp eq ptr %.3, %i.w
  call fastcc void @deflate_optimize_and_flush_block(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %.0152, i32 noundef %i.ack, ptr noundef nonnull %.4.ptr.le373, i1 noundef zeroext %i.acl, i1 noundef zeroext %i.acm, ptr noundef %i.b)
  %i.acn = load <4 x i32>, ptr %i.ag, align 4, !tbaa !31
  store <4 x i32> %i.acn, ptr %i.ao, align 4, !tbaa !30
  %i.aco = load <4 x i32>, ptr %i.ai, align 4, !tbaa !31
  store <4 x i32> %i.aco, ptr %i.ap, align 4, !tbaa !30
  %i.acp = load <2 x i32>, ptr %i.ak, align 4, !tbaa !31
  store <2 x i32> %i.acp, ptr %i.aq, align 4, !tbaa !30
  %i.acq = load i32, ptr %i.am, align 4, !tbaa !56
  store i32 %i.acq, ptr %i.ar, align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.aa, i8 0, i64 88, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2072) %i.ab, i8 0, i64 2072, i1 false)
  br label %bb.bs

bb.bs:                                            ; preds = %scalar.ph, %.unr-lcssa
  %.6.idx = phi i64 [ %.add, %.unr-lcssa ], [ 530368, %scalar.ph ]
  %.1153 = phi ptr [ %.0163.ph, %.unr-lcssa ], [ %.3, %scalar.ph ]
  %.not193 = icmp eq ptr %.3, %i.w
  br i1 %.not193, label %.critedge, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.acr = load i8, ptr %i.as, align 8, !tbaa !47, !range !48, !noundef !49
  %i.acs = trunc nuw i8 %i.acr to i1
  br i1 %i.acs, label %.critedge, label %bb.c, !llvm.loop !103

.critedge:                                        ; preds = %bb.bs, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define ptr @libdeflate_alloc_compressor(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @libdeflate_alloc_compressor_ex(i32 noundef %0, ptr noundef nonnull @libdeflate_alloc_compressor.defaults)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define i64 @libdeflate_deflate_compress(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.deflate_output_bitstream, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26
  %.not = icmp ugt i64 %2, %i.b
end_hunk_1
begin_hunk_2_@deflate_flush_block:.preheader619
  %i.uz = getelementptr inbounds nuw i8, ptr %.5509645.prol, i64 1 ; 3 uses
  store i8 %i.uy, ptr %.5509645.prol, align 1, !tbaa !30
  %i.va = add i32 %.5537644.prol, -8              ; 3 uses
  %i.vb = lshr i64 %.5488646.prol, 8              ; 3 uses
  %prol.iter1062.next = add i32 %prol.iter1062, 1 ; 2 uses
  %prol.iter1062.cmp.not = icmp eq i32 %prol.iter1062.next, %xtraiter1060
  br i1 %prol.iter1062.cmp.not, label %.lr.ph647.prol.loopexit, label %.lr.ph647.prol, !llvm.loop !114

.lr.ph647.prol.loopexit:                          ; preds = %.lr.ph647.prol, %.lr.ph647.preheader
  %.5488646.unr = phi i64 [ %.lcssa1031, %.lr.ph647.preheader ], [ %i.vb, %.lr.ph647.prol ]
  %.5509645.unr = phi ptr [ %.4508, %.lr.ph647.preheader ], [ %i.uz, %.lr.ph647.prol ]
  %.5537644.unr = phi i32 [ %.lcssa1030, %.lr.ph647.preheader ], [ %i.va, %.lr.ph647.prol ]
  %.lcssa1029.unr = phi ptr [ poison, %.lr.ph647.preheader ], [ %i.uz, %.lr.ph647.prol ]
  %.lcssa1028.unr = phi i32 [ poison, %.lr.ph647.preheader ], [ %i.va, %.lr.ph647.prol ]
  %.lcssa1027.unr = phi i64 [ poison, %.lr.ph647.preheader ], [ %i.vb, %.lr.ph647.prol ]
  %i.vc = icmp ult i32 %i.uv, 56
  br i1 %i.vc, label %.loopexit614, label %.lr.ph647

bb.m:                                             ; preds = %.epilog-lcssa
  store i64 %.lcssa1031, ptr %.4508, align 1
  %i.vd = and i32 %.lcssa1030, -8
  %i.ve = zext nneg i32 %i.vd to i64
  %i.vf = lshr i64 %.lcssa1031, %i.ve
  %i.vg = lshr i32 %.lcssa1030, 3
  %i.vh = zext nneg i32 %i.vg to i64
  %i.vi = getelementptr inbounds nuw i8, ptr %.4508, i64 %i.vh
  %i.vj = and i32 %.lcssa1030, 7
  br label %.loopexit614

.lr.ph647:                                        ; preds = %.lr.ph647.prol.loopexit, %.lr.ph647
  %.5488646 = phi i64 [ 0, %.lr.ph647 ], [ %.5488646.unr, %.lr.ph647.prol.loopexit ] ; 8 uses
  %.5509645 = phi ptr [ %i.wg, %.lr.ph647 ], [ %.5509645.unr, %.lr.ph647.prol.loopexit ] ; 9 uses
  %.5537644 = phi i32 [ %i.wh, %.lr.ph647 ], [ %.5537644.unr, %.lr.ph647.prol.loopexit ]
  %i.vk = trunc i64 %.5488646 to i8
  %i.vl = getelementptr inbounds nuw i8, ptr %.5509645, i64 1
  store i8 %i.vk, ptr %.5509645, align 1, !tbaa !30
  %i.vm = lshr i64 %.5488646, 8
  %i.vn = trunc i64 %i.vm to i8
  %i.vo = getelementptr inbounds nuw i8, ptr %.5509645, i64 2
  store i8 %i.vn, ptr %i.vl, align 1, !tbaa !30
  %i.vp = lshr i64 %.5488646, 16
  %i.vq = trunc i64 %i.vp to i8
  %i.vr = getelementptr inbounds nuw i8, ptr %.5509645, i64 3
  store i8 %i.vq, ptr %i.vo, align 1, !tbaa !30
  %i.vs = lshr i64 %.5488646, 24
  %i.vt = trunc i64 %i.vs to i8
  %i.vu = getelementptr inbounds nuw i8, ptr %.5509645, i64 4
  store i8 %i.vt, ptr %i.vr, align 1, !tbaa !30
  %i.vv = lshr i64 %.5488646, 32
  %i.vw = trunc i64 %i.vv to i8
  %i.vx = getelementptr inbounds nuw i8, ptr %.5509645, i64 5
  store i8 %i.vw, ptr %i.vu, align 1, !tbaa !30
  %i.vy = lshr i64 %.5488646, 40
  %i.vz = trunc i64 %i.vy to i8
  %i.wa = getelementptr inbounds nuw i8, ptr %.5509645, i64 6
  store i8 %i.vz, ptr %i.vx, align 1, !tbaa !30
  %i.wb = lshr i64 %.5488646, 48
  %i.wc = trunc i64 %i.wb to i8
  %i.wd = getelementptr inbounds nuw i8, ptr %.5509645, i64 7
  store i8 %i.wc, ptr %i.wa, align 1, !tbaa !30
  %i.we = lshr i64 %.5488646, 56
  %i.wf = trunc nuw i64 %i.we to i8
  %i.wg = getelementptr inbounds nuw i8, ptr %.5509645, i64 8 ; 2 uses
  store i8 %i.wf, ptr %i.wd, align 1, !tbaa !30
  %i.wh = add i32 %.5537644, -64                  ; 3 uses
  %i.wi = icmp ugt i32 %i.wh, 7
  br i1 %i.wi, label %.lr.ph647, label %.loopexit614, !llvm.loop !115

.loopexit614:                                     ; preds = %.lr.ph647.prol.loopexit, %.lr.ph647, %.preheader613, %bb.m
  %.6538 = phi i32 [ %i.vj, %bb.m ], [ %.lcssa1030, %.preheader613 ], [ %.lcssa1028.unr, %.lr.ph647.prol.loopexit ], [ %i.wh, %.lr.ph647 ]
  %.6510 = phi ptr [ %i.vi, %bb.m ], [ %.4508, %.preheader613 ], [ %.lcssa1029.unr, %.lr.ph647.prol.loopexit ], [ %i.wg, %.lr.ph647 ]
  %.6 = phi i64 [ %i.vf, %bb.m ], [ %.lcssa1031, %.preheader613 ], [ %.lcssa1027.unr, %.lr.ph647.prol.loopexit ], [ 0, %.lr.ph647 ]
  %i.wj = getelementptr inbounds nuw i8, ptr %0, i64 4780
  %i.wk = getelementptr inbounds nuw i8, ptr %0, i64 4684
  %umax789 = tail call i32 @llvm.umax.i32(i32 %i.pp, i32 1)
  %wide.trip.count790 = zext i32 %umax789 to i64
  br label %bb.n

bb.n:                                             ; preds = %.loopexit611, %.loopexit614
  %indvars.iv786 = phi i64 [ %indvars.iv.next787, %.loopexit611 ], [ 0, %.loopexit614 ] ; 2 uses
  %.7539 = phi i32 [ %.9541, %.loopexit611 ], [ %.6538, %.loopexit614 ] ; 2 uses
  %.7511 = phi ptr [ %.9513, %.loopexit611 ], [ %.6510, %.loopexit614 ] ; 5 uses
  %.7 = phi i64 [ %.9, %.loopexit611 ], [ %.6, %.loopexit614 ]
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %indvars.iv786
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !30 ; 2 uses
  %i.wn = and i32 %i.wm, 31
  %i.wo = zext nneg i32 %i.wn to i64              ; 3 uses
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %i.wo
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !30
  %i.wr = zext i32 %i.wq to i64
  %i.ws = zext nneg i32 %.7539 to i64
  %i.wt = shl nuw nsw i64 %i.wr, %i.ws
  %i.wu = or i64 %i.wt, %.7
  %i.wv = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.wo
  %i.ww = load i8, ptr %i.wv, align 1, !tbaa !30
  %i.wx = zext i8 %i.ww to i32
  %i.wy = add nuw nsw i32 %.7539, %i.wx           ; 2 uses
  %i.wz = lshr i32 %i.wm, 5
  %i.xa = zext nneg i32 %i.wz to i64
  %i.xb = zext nneg i32 %i.wy to i64
  %i.xc = shl i64 %i.xa, %i.xb
  %i.xd = or i64 %i.wu, %i.xc                     ; 4 uses
  %i.xe = getelementptr inbounds nuw i8, ptr @deflate_extra_precode_bits, i64 %i.wo
  %i.xf = load i8, ptr %i.xe, align 1, !tbaa !30
  %i.xg = zext i8 %i.xf to i32
  %i.xh = add nuw nsw i32 %i.wy, %i.xg            ; 6 uses
  %i.xi = icmp ult ptr %.7511, %i.bm
  br i1 %i.xi, label %bb.o, label %.preheader610, !prof !41

.preheader610:                                    ; preds = %bb.n
  %i.xj = icmp ugt i32 %i.xh, 7
  br i1 %i.xj, label %.lr.ph654, label %.loopexit611

bb.o:                                             ; preds = %bb.n
  store i64 %i.xd, ptr %.7511, align 1
  %i.xk = and i32 %i.xh, -8
  %i.xl = zext nneg i32 %i.xk to i64
  %i.xm = lshr i64 %i.xd, %i.xl
  %i.xn = lshr i32 %i.xh, 3
  %i.xo = zext nneg i32 %i.xn to i64
  %i.xp = getelementptr inbounds nuw i8, ptr %.7511, i64 %i.xo
  %i.xq = and i32 %i.xh, 7
  br label %.loopexit611

.lr.ph654:                                        ; preds = %.preheader610, %.lr.ph654
  %.8653 = phi i64 [ %i.xu, %.lr.ph654 ], [ %i.xd, %.preheader610 ] ; 2 uses
  %.8512652 = phi ptr [ %i.xs, %.lr.ph654 ], [ %.7511, %.preheader610 ] ; 2 uses
  %.8540651 = phi i32 [ %i.xt, %.lr.ph654 ], [ %i.xh, %.preheader610 ]
  %i.xr = trunc i64 %.8653 to i8
  %i.xs = getelementptr inbounds nuw i8, ptr %.8512652, i64 1 ; 2 uses
  store i8 %i.xr, ptr %.8512652, align 1, !tbaa !30
  %i.xt = add nsw i32 %.8540651, -8               ; 3 uses
  %i.xu = lshr i64 %.8653, 8                      ; 2 uses
  %i.xv = icmp ugt i32 %i.xt, 7
  br i1 %i.xv, label %.lr.ph654, label %.loopexit611, !llvm.loop !116

.loopexit611:                                     ; preds = %.lr.ph654, %.preheader610, %bb.o
  %.9541 = phi i32 [ %i.xq, %bb.o ], [ %i.xh, %.preheader610 ], [ %i.xt, %.lr.ph654 ] ; 2 uses
  %.9513 = phi ptr [ %i.xp, %bb.o ], [ %.7511, %.preheader610 ], [ %i.xs, %.lr.ph654 ] ; 2 uses
  %.9 = phi i64 [ %i.xm, %bb.o ], [ %i.xd, %.preheader610 ], [ %i.xu, %.lr.ph654 ] ; 2 uses
  %indvars.iv.next787 = add nuw nsw i64 %indvars.iv786, 1 ; 2 uses
  %exitcond791.not = icmp eq i64 %indvars.iv.next787, %wide.trip.count790
  br i1 %exitcond791.not, label %.loopexit609, label %bb.n, !llvm.loop !117

.loopexit609:                                     ; preds = %.loopexit611, %.lr.ph661.prol.loopexit, %.lr.ph661, %.preheader608, %bb.h
  %.10542 = phi i32 [ %i.oo, %bb.h ], [ %i.pm, %.lr.ph661 ], [ %i.nx, %.preheader608 ], [ %.lcssa1021.unr, %.lr.ph661.prol.loopexit ], [ %.9541, %.loopexit611 ] ; 2 uses
  %.10514 = phi ptr [ %i.on, %bb.h ], [ %i.pl, %.lr.ph661 ], [ %i.e, %.preheader608 ], [ %.lcssa1022.unr, %.lr.ph661.prol.loopexit ], [ %.9513, %.loopexit611 ] ; 2 uses
  %.0494 = phi ptr [ %i.no, %bb.h ], [ %i.no, %.lr.ph661.prol.loopexit ], [ %i.no, %.preheader608 ], [ %i.no, %.lr.ph661 ], [ %i.ls, %.loopexit611 ] ; 16 uses
  %.10 = phi i64 [ %i.ok, %bb.h ], [ 0, %.lr.ph661 ], [ %i.nw, %.preheader608 ], [ %.lcssa1020.unr, %.lr.ph661.prol.loopexit ], [ %.9, %.loopexit611 ] ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %.0494, i64 1280 ; 9 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %0, i64 5644 ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.loopexit609
  %indvars.iv.i = phi i64 [ 3, %.loopexit609 ], [ %indvars.iv.next.i, %bb.p ] ; 5 uses
  %i.xy = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %indvars.iv.i
  %i.xz = load i8, ptr %i.xy, align 1, !tbaa !30
  %i.ya = zext i8 %i.xz to i64                    ; 3 uses
  %i.yb = add nuw nsw i64 %i.ya, 257              ; 2 uses
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr @deflate_length_slot_base, i64 %i.ya
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !31
  %i.ye = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.yf = sub i32 %i.ye, %i.yd
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %.0494, i64 %i.yb
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !31
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xw, i64 %i.yb ; 2 uses
  %i.yj = load i8, ptr %i.yi, align 1, !tbaa !30
  %i.yk = zext nneg i8 %i.yj to i32
  %i.yl = shl i32 %i.yf, %i.yk
  %i.ym = or i32 %i.yl, %i.yh
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  store i32 %i.ym, ptr %i.yn, align 4, !tbaa !30
  %i.yo = load i8, ptr %i.yi, align 1, !tbaa !30
  %i.yp = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.ya
  %i.yq = load i8, ptr %i.yp, align 1, !tbaa !30
  %i.yr = add i8 %i.yq, %i.yo
  %i.ys = getelementptr inbounds nuw i8, ptr %i.xx, i64 %indvars.iv.i
  store i8 %i.yr, ptr %i.ys, align 1, !tbaa !30
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 259
  br i1 %exitcond.not.i, label %deflate_compute_full_len_codewords.exit, label %bb.p, !llvm.loop !118

deflate_compute_full_len_codewords.exit:          ; preds = %bb.p
  %i.yt = icmp eq ptr %4, null
  br i1 %i.yt, label %bb.q, label %.preheader606

.preheader606:                                    ; preds = %deflate_compute_full_len_codewords.exit
  %i.yu = getelementptr inbounds nuw i8, ptr %.0494, i64 1152
  %i.yv = getelementptr inbounds nuw i8, ptr %.0494, i64 1568
  br label %bb.u

bb.q:                                             ; preds = %deflate_compute_full_len_codewords.exit
  %i.yw = getelementptr inbounds nuw i8, ptr %0, i64 6532420 ; 2 uses
  %i.yx = getelementptr inbounds nuw [8 x i8], ptr %i.yw, i64 %i.bg
  %i.yy = getelementptr inbounds nuw i8, ptr %0, i64 8976796
  %i.yz = getelementptr inbounds nuw i8, ptr %.0494, i64 1152
  %i.za = getelementptr inbounds nuw i8, ptr %.0494, i64 1568
  br label %bb.r

bb.r:                                             ; preds = %.loopexit596, %bb.q
  %.11543 = phi i32 [ %.10542, %bb.q ], [ %.15547, %.loopexit596 ] ; 5 uses
  %.11515 = phi ptr [ %.10514, %bb.q ], [ %.15519, %.loopexit596 ] ; 9 uses
  %.11 = phi i64 [ %.10, %bb.q ], [ %.15, %.loopexit596 ] ; 2 uses
  %.0476 = phi ptr [ %i.yw, %bb.q ], [ %i.acy, %.loopexit596 ] ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %.0476, i64 4
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !62 ; 2 uses
  %i.zd = and i32 %i.zc, 511                      ; 3 uses
  %i.ze = lshr i32 %i.zc, 9                       ; 2 uses
  %i.zf = icmp eq i32 %i.zd, 1
  %i.zg = zext nneg i32 %i.ze to i64              ; 3 uses
  br i1 %i.zf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %.0494, i64 %i.zg
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !31
  %i.zj = zext i32 %i.zi to i64
  %i.zk = zext nneg i32 %.11543 to i64
  %i.zl = shl nuw nsw i64 %i.zj, %i.zk
  %i.zm = or i64 %i.zl, %.11                      ; 4 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.xw, i64 %i.zg
  %i.zo = load i8, ptr %i.zn, align 1, !tbaa !30
  %i.zp = zext i8 %i.zo to i32                    ; 2 uses
  %i.zq = add nuw nsw i32 %.11543, %i.zp          ; 5 uses
  %i.zr = icmp ult ptr %.11515, %i.bm
  br i1 %i.zr, label %.loopexit596.sink.split, label %.preheader595, !prof !41

.preheader595:                                    ; preds = %bb.s
  %i.zs = icmp ugt i32 %i.zq, 7
  br i1 %i.zs, label %.lr.ph709.preheader, label %.loopexit596

.lr.ph709.preheader:                              ; preds = %.preheader595
  %6 = add i32 %.11543, -8
  %i.zt = add i32 %6, %i.zp                       ; 2 uses
  %i.zu = lshr i32 %i.zt, 3
  %i.zv = add nuw nsw i32 %i.zu, 1
  %xtraiter1069 = and i32 %i.zv, 7                ; 2 uses
  %lcmp.mod1070.not = icmp eq i32 %xtraiter1069, 0
  br i1 %lcmp.mod1070.not, label %.lr.ph709.prol.loopexit, label %.lr.ph709.prol

.lr.ph709.prol:                                   ; preds = %.lr.ph709.preheader, %.lr.ph709.prol
  %.12708.prol = phi i64 [ %i.zz, %.lr.ph709.prol ], [ %i.zm, %.lr.ph709.preheader ] ; 2 uses
  %.12516707.prol = phi ptr [ %i.zx, %.lr.ph709.prol ], [ %.11515, %.lr.ph709.preheader ] ; 2 uses
  %.12544706.prol = phi i32 [ %i.zy, %.lr.ph709.prol ], [ %i.zq, %.lr.ph709.preheader ]
  %prol.iter1071 = phi i32 [ %prol.iter1071.next, %.lr.ph709.prol ], [ 0, %.lr.ph709.preheader ]
  %i.zw = trunc i64 %.12708.prol to i8
  %i.zx = getelementptr inbounds nuw i8, ptr %.12516707.prol, i64 1 ; 3 uses
  store i8 %i.zw, ptr %.12516707.prol, align 1, !tbaa !30
  %i.zy = add nsw i32 %.12544706.prol, -8         ; 3 uses
  %i.zz = lshr i64 %.12708.prol, 8                ; 3 uses
  %prol.iter1071.next = add i32 %prol.iter1071, 1 ; 2 uses
  %prol.iter1071.cmp.not = icmp eq i32 %prol.iter1071.next, %xtraiter1069
  br i1 %prol.iter1071.cmp.not, label %.lr.ph709.prol.loopexit, label %.lr.ph709.prol, !llvm.loop !119

.lr.ph709.prol.loopexit:                          ; preds = %.lr.ph709.prol, %.lr.ph709.preheader
  %.12708.unr = phi i64 [ %i.zm, %.lr.ph709.preheader ], [ %i.zz, %.lr.ph709.prol ]
  %.12516707.unr = phi ptr [ %.11515, %.lr.ph709.preheader ], [ %i.zx, %.lr.ph709.prol ]
  %.12544706.unr = phi i32 [ %i.zq, %.lr.ph709.preheader ], [ %i.zy, %.lr.ph709.prol ]
  %.lcssa1007.unr = phi ptr [ poison, %.lr.ph709.preheader ], [ %i.zx, %.lr.ph709.prol ]
  %.lcssa1006.unr = phi i32 [ poison, %.lr.ph709.preheader ], [ %i.zy, %.lr.ph709.prol ]
  %.lcssa1005.unr = phi i64 [ poison, %.lr.ph709.preheader ], [ %i.zz, %.lr.ph709.prol ]
  %i.aaa = icmp ult i32 %i.zt, 56
  br i1 %i.aaa, label %.loopexit596, label %.lr.ph709

.lr.ph709:                                        ; preds = %.lr.ph709.prol.loopexit, %.lr.ph709
  %.12708 = phi i64 [ 0, %.lr.ph709 ], [ %.12708.unr, %.lr.ph709.prol.loopexit ] ; 8 uses
  %.12516707 = phi ptr [ %i.aax, %.lr.ph709 ], [ %.12516707.unr, %.lr.ph709.prol.loopexit ] ; 9 uses
  %.12544706 = phi i32 [ %i.aay, %.lr.ph709 ], [ %.12544706.unr, %.lr.ph709.prol.loopexit ]
  %i.aab = trunc i64 %.12708 to i8
  %i.aac = getelementptr inbounds nuw i8, ptr %.12516707, i64 1
  store i8 %i.aab, ptr %.12516707, align 1, !tbaa !30
  %i.aad = lshr i64 %.12708, 8
  %i.aae = trunc i64 %i.aad to i8
  %i.aaf = getelementptr inbounds nuw i8, ptr %.12516707, i64 2
  store i8 %i.aae, ptr %i.aac, align 1, !tbaa !30
  %i.aag = lshr i64 %.12708, 16
  %i.aah = trunc i64 %i.aag to i8
  %i.aai = getelementptr inbounds nuw i8, ptr %.12516707, i64 3
  store i8 %i.aah, ptr %i.aaf, align 1, !tbaa !30
  %i.aaj = lshr i64 %.12708, 24
  %i.aak = trunc i64 %i.aaj to i8
  %i.aal = getelementptr inbounds nuw i8, ptr %.12516707, i64 4
  store i8 %i.aak, ptr %i.aai, align 1, !tbaa !30
  %i.aam = lshr i64 %.12708, 32
  %i.aan = trunc i64 %i.aam to i8
  %i.aao = getelementptr inbounds nuw i8, ptr %.12516707, i64 5
  store i8 %i.aan, ptr %i.aal, align 1, !tbaa !30
  %i.aap = lshr i64 %.12708, 40
  %i.aaq = trunc i64 %i.aap to i8
  %i.aar = getelementptr inbounds nuw i8, ptr %.12516707, i64 6
  store i8 %i.aaq, ptr %i.aao, align 1, !tbaa !30
  %i.aas = lshr i64 %.12708, 48
  %i.aat = trunc i64 %i.aas to i8
  %i.aau = getelementptr inbounds nuw i8, ptr %.12516707, i64 7
  store i8 %i.aat, ptr %i.aar, align 1, !tbaa !30
  %i.aav = lshr i64 %.12708, 56
  %i.aaw = trunc nuw i64 %i.aav to i8
  %i.aax = getelementptr inbounds nuw i8, ptr %.12516707, i64 8 ; 2 uses
  store i8 %i.aaw, ptr %i.aau, align 1, !tbaa !30
  %i.aay = add nsw i32 %.12544706, -64            ; 3 uses
  %i.aaz = icmp ugt i32 %i.aay, 7
  br i1 %i.aaz, label %.lr.ph709, label %.loopexit596, !llvm.loop !120

bb.t:                                             ; preds = %bb.r
  %i.aba = getelementptr inbounds nuw i8, ptr %i.yy, i64 %i.zg
  %i.abb = load i8, ptr %i.aba, align 1, !tbaa !30
  %i.abc = zext nneg i32 %i.zd to i64             ; 2 uses
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.abc
  %i.abe = load i32, ptr %i.abd, align 4, !tbaa !30
  %i.abf = zext i32 %i.abe to i64
  %i.abg = zext nneg i32 %.11543 to i64
  %i.abh = shl nuw nsw i64 %i.abf, %i.abg
  %i.abi = getelementptr inbounds nuw i8, ptr %i.xx, i64 %i.abc
  %i.abj = load i8, ptr %i.abi, align 1, !tbaa !30
  %i.abk = zext i8 %i.abj to i32
  %i.abl = add nuw nsw i32 %.11543, %i.abk        ; 2 uses
  %i.abm = zext i8 %i.abb to i64                  ; 4 uses
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.abm
  %i.abo = load i32, ptr %i.abn, align 4, !tbaa !31
  %i.abp = zext i32 %i.abo to i64
  %i.abq = zext nneg i32 %i.abl to i64
  %i.abr = shl i64 %i.abp, %i.abq
  %i.abs = getelementptr inbounds nuw i8, ptr %i.za, i64 %i.abm
  %i.abt = load i8, ptr %i.abs, align 1, !tbaa !30
  %i.abu = zext i8 %i.abt to i32
  %i.abv = add nuw nsw i32 %i.abl, %i.abu         ; 2 uses
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr @deflate_offset_slot_base, i64 %i.abm
  %i.abx = load i32, ptr %i.abw, align 4, !tbaa !31
  %i.aby = sub i32 %i.ze, %i.abx
  %i.abz = zext i32 %i.aby to i64
  %i.aca = zext nneg i32 %i.abv to i64
  %i.acb = shl i64 %i.abz, %i.aca
  %i.acc = or i64 %i.abh, %i.abr
  %i.acd = or i64 %i.acc, %i.acb
  %i.ace = or i64 %i.acd, %.11                    ; 3 uses
  %i.acf = getelementptr inbounds nuw i8, ptr @deflate_extra_offset_bits, i64 %i.abm
  %i.acg = load i8, ptr %i.acf, align 1, !tbaa !30
  %i.ach = zext i8 %i.acg to i32
  %i.aci = add nuw nsw i32 %i.abv, %i.ach         ; 4 uses
  %i.acj = icmp ult ptr %.11515, %i.bm
  br i1 %i.acj, label %.loopexit596.sink.split, label %.preheader597, !prof !41

.preheader597:                                    ; preds = %bb.t
  %i.ack = icmp ugt i32 %i.aci, 7
  br i1 %i.ack, label %.lr.ph702, label %.loopexit596

.lr.ph702:                                        ; preds = %.preheader597, %.lr.ph702
  %.13701 = phi i64 [ %i.aco, %.lr.ph702 ], [ %i.ace, %.preheader597 ] ; 2 uses
  %.13517700 = phi ptr [ %i.acm, %.lr.ph702 ], [ %.11515, %.preheader597 ] ; 2 uses
  %.13545699 = phi i32 [ %i.acn, %.lr.ph702 ], [ %i.aci, %.preheader597 ]
  %i.acl = trunc i64 %.13701 to i8
  %i.acm = getelementptr inbounds nuw i8, ptr %.13517700, i64 1 ; 2 uses
  store i8 %i.acl, ptr %.13517700, align 1, !tbaa !30
  %i.acn = add nsw i32 %.13545699, -8             ; 3 uses
  %i.aco = lshr i64 %.13701, 8                    ; 2 uses
  %i.acp = icmp ugt i32 %i.acn, 7
  br i1 %i.acp, label %.lr.ph702, label %.loopexit596, !llvm.loop !121

.loopexit596.sink.split:                          ; preds = %bb.t, %bb.s
  %.sink887 = phi i64 [ %i.zm, %bb.s ], [ %i.ace, %bb.t ] ; 2 uses
  %.sink886 = phi i32 [ %i.zq, %bb.s ], [ %i.aci, %bb.t ] ; 3 uses
  store i64 %.sink887, ptr %.11515, align 1
  %i.acq = and i32 %.sink886, -8
  %i.acr = zext nneg i32 %i.acq to i64
  %i.acs = lshr i64 %.sink887, %i.acr
  %i.act = lshr i32 %.sink886, 3
  %i.acu = zext nneg i32 %i.act to i64
  %i.acv = getelementptr inbounds nuw i8, ptr %.11515, i64 %i.acu
  %i.acw = and i32 %.sink886, 7
  br label %.loopexit596

.loopexit596:                                     ; preds = %.lr.ph702, %.lr.ph709.prol.loopexit, %.lr.ph709, %.loopexit596.sink.split, %.preheader597, %.preheader595
  %.15547 = phi i32 [ %i.aci, %.preheader597 ], [ %i.acw, %.loopexit596.sink.split ], [ %i.aay, %.lr.ph709 ], [ %i.zq, %.preheader595 ], [ %.lcssa1006.unr, %.lr.ph709.prol.loopexit ], [ %i.acn, %.lr.ph702 ] ; 2 uses
  %.15519 = phi ptr [ %.11515, %.preheader597 ], [ %i.acv, %.loopexit596.sink.split ], [ %i.aax, %.lr.ph709 ], [ %.11515, %.preheader595 ], [ %.lcssa1007.unr, %.lr.ph709.prol.loopexit ], [ %i.acm, %.lr.ph702 ] ; 2 uses
  %.15 = phi i64 [ %i.ace, %.preheader597 ], [ %i.acs, %.loopexit596.sink.split ], [ 0, %.lr.ph709 ], [ %i.zm, %.preheader595 ], [ %.lcssa1005.unr, %.lr.ph709.prol.loopexit ], [ %i.aco, %.lr.ph702 ] ; 2 uses
  %i.acx = zext nneg i32 %i.zd to i64
  %i.acy = getelementptr inbounds nuw [8 x i8], ptr %.0476, i64 %i.acx ; 2 uses
  %.not580 = icmp eq ptr %i.acy, %i.yx
  br i1 %.not580, label %.loopexit599, label %bb.r, !llvm.loop !122

bb.u:                                             ; preds = %.preheader606, %.loopexit603
  %.16548 = phi i32 [ %.24556, %.loopexit603 ], [ %.10542, %.preheader606 ] ; 2 uses
  %.16520 = phi ptr [ %.23527, %.loopexit603 ], [ %.10514, %.preheader606 ] ; 2 uses
  %.16 = phi i64 [ %.24, %.loopexit603 ], [ %.10, %.preheader606 ] ; 2 uses
  %.1482 = phi ptr [ %i.aky, %.loopexit603 ], [ %2, %.preheader606 ] ; 2 uses
  %.0475 = phi ptr [ %i.akz, %.loopexit603 ], [ %4, %.preheader606 ] ; 4 uses
  %i.acz = load i32, ptr %.0475, align 4, !tbaa !38 ; 2 uses
  %i.ada = and i32 %i.acz, 8388607                ; 3 uses
  %i.adb = lshr i32 %i.acz, 23                    ; 2 uses
  %i.adc = icmp samesign ugt i32 %i.ada, 3
  br i1 %i.adc, label %.lr.ph678, label %._crit_edge679

.lr.ph678:                                        ; preds = %bb.u, %.loopexit601
  %.0676 = phi i32 [ %i.afr, %.loopexit601 ], [ %i.ada, %bb.u ]
  %.2675 = phi ptr [ %i.aen, %.loopexit601 ], [ %.1482, %bb.u ] ; 5 uses
  %.17674 = phi i64 [ %.19, %.loopexit601 ], [ %.16, %bb.u ]
  %.17521673 = phi ptr [ %.19523, %.loopexit601 ], [ %.16520, %bb.u ] ; 5 uses
  %.17549672 = phi i32 [ %.19551, %.loopexit601 ], [ %.16548, %bb.u ] ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %.2675, i64 1
  %i.ade = load i8, ptr %.2675, align 1, !tbaa !30
  %i.adf = zext i8 %i.ade to i64                  ; 2 uses
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %.0494, i64 %i.adf
  %i.adh = load i32, ptr %i.adg, align 4, !tbaa !31
  %i.adi = zext i32 %i.adh to i64
  %i.adj = zext nneg i32 %.17549672 to i64
  %i.adk = shl nuw nsw i64 %i.adi, %i.adj
  %i.adl = getelementptr inbounds nuw i8, ptr %i.xw, i64 %i.adf
  %i.adm = load i8, ptr %i.adl, align 1, !tbaa !30
  %i.adn = zext i8 %i.adm to i32
  %i.ado = add nuw nsw i32 %.17549672, %i.adn     ; 2 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %.2675, i64 2
  %i.adq = load i8, ptr %i.add, align 1, !tbaa !30
  %i.adr = zext i8 %i.adq to i64                  ; 2 uses
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %.0494, i64 %i.adr
  %i.adt = load i32, ptr %i.ads, align 4, !tbaa !31
  %i.adu = zext i32 %i.adt to i64
  %i.adv = zext nneg i32 %i.ado to i64
  %i.adw = shl i64 %i.adu, %i.adv
  %i.adx = getelementptr inbounds nuw i8, ptr %i.xw, i64 %i.adr
  %i.ady = load i8, ptr %i.adx, align 1, !tbaa !30
  %i.adz = zext i8 %i.ady to i32
  %i.aea = add nuw nsw i32 %i.ado, %i.adz         ; 2 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %.2675, i64 3
  %i.aec = load i8, ptr %i.adp, align 1, !tbaa !30
  %i.aed = zext i8 %i.aec to i64                  ; 2 uses
  %i.aee = getelementptr inbounds nuw [4 x i8], ptr %.0494, i64 %i.aed
  %i.aef = load i32, ptr %i.aee, align 4, !tbaa !31
  %i.aeg = zext i32 %i.aef to i64
  %i.aeh = zext nneg i32 %i.aea to i64
  %i.aei = shl i64 %i.aeg, %i.aeh
  %i.aej = getelementptr inbounds nuw i8, ptr %i.xw, i64 %i.aed
  %i.aek = load i8, ptr %i.aej, align 1, !tbaa !30
  %i.ael = zext i8 %i.aek to i32
  %i.aem = add nuw nsw i32 %i.aea, %i.ael         ; 2 uses
end_hunk_2
begin_hunk_3_@deflate_flush_block:.preheader619
  %i.ags = zext i8 %i.agr to i32
  %i.agt = add nuw nsw i32 %i.agg, %i.ags         ; 3 uses
  %.not579 = icmp eq i32 %i.aft, 1
  br i1 %.not579, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.agu = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 3
  %i.agv = load i8, ptr %i.agh, align 1, !tbaa !30
  %i.agw = zext i8 %i.agv to i64                  ; 2 uses
  %i.agx = getelementptr inbounds nuw [4 x i8], ptr %.0494, i64 %i.agw
  %i.agy = load i32, ptr %i.agx, align 4, !tbaa !31
  %i.agz = zext i32 %i.agy to i64
  %i.aha = zext nneg i32 %i.agt to i64
  %i.ahb = shl i64 %i.agz, %i.aha
  %i.ahc = or i64 %i.ahb, %i.agp
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.xw, i64 %i.agw
  %i.ahe = load i8, ptr %i.ahd, align 1, !tbaa !30
  %i.ahf = zext i8 %i.ahe to i32
  %i.ahg = add nuw nsw i32 %i.agt, %i.ahf
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.y, %bb.x
  %.20552 = phi i32 [ %i.ahg, %bb.y ], [ %i.agt, %bb.x ], [ %i.agg, %bb.w ] ; 8 uses
  %.20 = phi i64 [ %i.ahc, %bb.y ], [ %i.agp, %bb.x ], [ %i.agc, %bb.w ] ; 5 uses
  %.3 = phi ptr [ %i.agu, %bb.y ], [ %i.agh, %bb.x ], [ %i.afu, %bb.w ] ; 4 uses
  %i.ahh = icmp ult ptr %.17521.lcssa, %i.bm
  br i1 %i.ahh, label %bb.aa, label %.preheader604, !prof !41

.preheader604:                                    ; preds = %bb.z
  %i.ahi = icmp ugt i32 %.20552, 7
  br i1 %i.ahi, label %.lr.ph688.preheader, label %.loopexit605

.lr.ph688.preheader:                              ; preds = %.preheader604
  %i.ahj = add i32 %.20552, -8                    ; 2 uses
  %i.ahk = lshr i32 %i.ahj, 3
  %i.ahl = add nuw nsw i32 %i.ahk, 1
  %xtraiter1066 = and i32 %i.ahl, 7               ; 2 uses
  %lcmp.mod1067.not = icmp eq i32 %xtraiter1066, 0
  br i1 %lcmp.mod1067.not, label %.lr.ph688.prol.loopexit, label %.lr.ph688.prol

.lr.ph688.prol:                                   ; preds = %.lr.ph688.preheader, %.lr.ph688.prol
  %.21687.prol = phi i64 [ %i.ahp, %.lr.ph688.prol ], [ %.20, %.lr.ph688.preheader ] ; 2 uses
  %.20524686.prol = phi ptr [ %i.ahn, %.lr.ph688.prol ], [ %.17521.lcssa, %.lr.ph688.preheader ] ; 2 uses
  %.21553685.prol = phi i32 [ %i.aho, %.lr.ph688.prol ], [ %.20552, %.lr.ph688.preheader ]
  %prol.iter1068 = phi i32 [ %prol.iter1068.next, %.lr.ph688.prol ], [ 0, %.lr.ph688.preheader ]
  %i.ahm = trunc i64 %.21687.prol to i8
  %i.ahn = getelementptr inbounds nuw i8, ptr %.20524686.prol, i64 1 ; 3 uses
  store i8 %i.ahm, ptr %.20524686.prol, align 1, !tbaa !30
  %i.aho = add nsw i32 %.21553685.prol, -8        ; 3 uses
  %i.ahp = lshr i64 %.21687.prol, 8               ; 3 uses
  %prol.iter1068.next = add i32 %prol.iter1068, 1 ; 2 uses
  %prol.iter1068.cmp.not = icmp eq i32 %prol.iter1068.next, %xtraiter1066
  br i1 %prol.iter1068.cmp.not, label %.lr.ph688.prol.loopexit, label %.lr.ph688.prol, !llvm.loop !125

.lr.ph688.prol.loopexit:                          ; preds = %.lr.ph688.prol, %.lr.ph688.preheader
  %.21687.unr = phi i64 [ %.20, %.lr.ph688.preheader ], [ %i.ahp, %.lr.ph688.prol ]
  %.20524686.unr = phi ptr [ %.17521.lcssa, %.lr.ph688.preheader ], [ %i.ahn, %.lr.ph688.prol ]
  %.21553685.unr = phi i32 [ %.20552, %.lr.ph688.preheader ], [ %i.aho, %.lr.ph688.prol ]
  %.lcssa1016.unr = phi ptr [ poison, %.lr.ph688.preheader ], [ %i.ahn, %.lr.ph688.prol ]
  %.lcssa1015.unr = phi i32 [ poison, %.lr.ph688.preheader ], [ %i.aho, %.lr.ph688.prol ]
  %.lcssa1014.unr = phi i64 [ poison, %.lr.ph688.preheader ], [ %i.ahp, %.lr.ph688.prol ]
  %i.ahq = icmp ult i32 %i.ahj, 56
  br i1 %i.ahq, label %.loopexit605, label %.lr.ph688

bb.aa:                                            ; preds = %bb.z
  store i64 %.20, ptr %.17521.lcssa, align 1
  %i.ahr = and i32 %.20552, -8
  %i.ahs = zext nneg i32 %i.ahr to i64
  %i.aht = lshr i64 %.20, %i.ahs
  %i.ahu = lshr i32 %.20552, 3
  %i.ahv = zext nneg i32 %i.ahu to i64
  %i.ahw = getelementptr inbounds nuw i8, ptr %.17521.lcssa, i64 %i.ahv
  %i.ahx = and i32 %.20552, 7
  br label %.loopexit605

.lr.ph688:                                        ; preds = %.lr.ph688.prol.loopexit, %.lr.ph688
  %.21687 = phi i64 [ 0, %.lr.ph688 ], [ %.21687.unr, %.lr.ph688.prol.loopexit ] ; 8 uses
  %.20524686 = phi ptr [ %i.aiu, %.lr.ph688 ], [ %.20524686.unr, %.lr.ph688.prol.loopexit ] ; 9 uses
  %.21553685 = phi i32 [ %i.aiv, %.lr.ph688 ], [ %.21553685.unr, %.lr.ph688.prol.loopexit ]
  %i.ahy = trunc i64 %.21687 to i8
  %i.ahz = getelementptr inbounds nuw i8, ptr %.20524686, i64 1
  store i8 %i.ahy, ptr %.20524686, align 1, !tbaa !30
  %i.aia = lshr i64 %.21687, 8
  %i.aib = trunc i64 %i.aia to i8
  %i.aic = getelementptr inbounds nuw i8, ptr %.20524686, i64 2
  store i8 %i.aib, ptr %i.ahz, align 1, !tbaa !30
  %i.aid = lshr i64 %.21687, 16
  %i.aie = trunc i64 %i.aid to i8
  %i.aif = getelementptr inbounds nuw i8, ptr %.20524686, i64 3
  store i8 %i.aie, ptr %i.aic, align 1, !tbaa !30
  %i.aig = lshr i64 %.21687, 24
  %i.aih = trunc i64 %i.aig to i8
  %i.aii = getelementptr inbounds nuw i8, ptr %.20524686, i64 4
  store i8 %i.aih, ptr %i.aif, align 1, !tbaa !30
  %i.aij = lshr i64 %.21687, 32
  %i.aik = trunc i64 %i.aij to i8
  %i.ail = getelementptr inbounds nuw i8, ptr %.20524686, i64 5
  store i8 %i.aik, ptr %i.aii, align 1, !tbaa !30
  %i.aim = lshr i64 %.21687, 40
  %i.ain = trunc i64 %i.aim to i8
  %i.aio = getelementptr inbounds nuw i8, ptr %.20524686, i64 6
  store i8 %i.ain, ptr %i.ail, align 1, !tbaa !30
  %i.aip = lshr i64 %.21687, 48
  %i.aiq = trunc i64 %i.aip to i8
  %i.air = getelementptr inbounds nuw i8, ptr %.20524686, i64 7
  store i8 %i.aiq, ptr %i.aio, align 1, !tbaa !30
  %i.ais = lshr i64 %.21687, 56
  %i.ait = trunc nuw i64 %i.ais to i8
  %i.aiu = getelementptr inbounds nuw i8, ptr %.20524686, i64 8 ; 2 uses
  store i8 %i.ait, ptr %i.air, align 1, !tbaa !30
  %i.aiv = add nsw i32 %.21553685, -64            ; 3 uses
  %i.aiw = icmp ugt i32 %i.aiv, 7
  br i1 %i.aiw, label %.lr.ph688, label %.loopexit605, !llvm.loop !126

.loopexit605:                                     ; preds = %.lr.ph688.prol.loopexit, %.lr.ph688, %.preheader604, %bb.aa, %._crit_edge679
  %.22554 = phi i32 [ %i.ahx, %bb.aa ], [ %.17549.lcssa, %._crit_edge679 ], [ %.20552, %.preheader604 ], [ %.lcssa1015.unr, %.lr.ph688.prol.loopexit ], [ %i.aiv, %.lr.ph688 ] ; 3 uses
  %.21525 = phi ptr [ %i.ahw, %bb.aa ], [ %.17521.lcssa, %._crit_edge679 ], [ %.17521.lcssa, %.preheader604 ], [ %.lcssa1016.unr, %.lr.ph688.prol.loopexit ], [ %i.aiu, %.lr.ph688 ] ; 6 uses
  %.22 = phi i64 [ %i.aht, %bb.aa ], [ %.17.lcssa, %._crit_edge679 ], [ %.20, %.preheader604 ], [ %.lcssa1014.unr, %.lr.ph688.prol.loopexit ], [ 0, %.lr.ph688 ] ; 2 uses
  %.4 = phi ptr [ %.3, %bb.aa ], [ %.2.lcssa, %._crit_edge679 ], [ %.3, %.preheader604 ], [ %.3, %.lr.ph688 ], [ %.3, %.lr.ph688.prol.loopexit ]
  %i.aix = icmp eq i32 %i.adb, 0
  br i1 %i.aix, label %.loopexit599, label %bb.ab

bb.ab:                                            ; preds = %.loopexit605
  %i.aiy = getelementptr inbounds nuw i8, ptr %.0475, i64 4
  %i.aiz = load i16, ptr %i.aiy, align 4, !tbaa !42
  %i.aja = zext i16 %i.aiz to i32
  %i.ajb = getelementptr inbounds nuw i8, ptr %.0475, i64 6
  %i.ajc = load i16, ptr %i.ajb, align 2, !tbaa !43
  %i.ajd = zext nneg i32 %i.adb to i64            ; 3 uses
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ajd
  %i.ajf = load i32, ptr %i.aje, align 4, !tbaa !30
  %i.ajg = zext i32 %i.ajf to i64
  %i.ajh = zext nneg i32 %.22554 to i64
  %i.aji = shl nuw nsw i64 %i.ajg, %i.ajh
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.xx, i64 %i.ajd
  %i.ajk = load i8, ptr %i.ajj, align 1, !tbaa !30
  %i.ajl = zext i8 %i.ajk to i32
  %i.ajm = add nuw nsw i32 %.22554, %i.ajl        ; 2 uses
  %i.ajn = zext i16 %i.ajc to i64                 ; 4 uses
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr %i.yu, i64 %i.ajn
  %i.ajp = load i32, ptr %i.ajo, align 4, !tbaa !31
  %i.ajq = zext i32 %i.ajp to i64
  %i.ajr = zext nneg i32 %i.ajm to i64
  %i.ajs = shl i64 %i.ajq, %i.ajr
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.yv, i64 %i.ajn
  %i.aju = load i8, ptr %i.ajt, align 1, !tbaa !30
  %i.ajv = zext i8 %i.aju to i32
  %i.ajw = add nuw nsw i32 %i.ajm, %i.ajv         ; 2 uses
  %i.ajx = getelementptr inbounds nuw [4 x i8], ptr @deflate_offset_slot_base, i64 %i.ajn
  %i.ajy = load i32, ptr %i.ajx, align 4, !tbaa !31
  %i.ajz = sub i32 %i.aja, %i.ajy
  %i.aka = zext i32 %i.ajz to i64
  %i.akb = zext nneg i32 %i.ajw to i64
  %i.akc = shl i64 %i.aka, %i.akb
  %i.akd = or i64 %i.aji, %i.ajs
  %i.ake = or i64 %i.akd, %i.akc
  %i.akf = or i64 %i.ake, %.22                    ; 4 uses
  %i.akg = getelementptr inbounds nuw i8, ptr @deflate_extra_offset_bits, i64 %i.ajn
  %i.akh = load i8, ptr %i.akg, align 1, !tbaa !30
  %i.aki = zext i8 %i.akh to i32
  %i.akj = add nuw nsw i32 %i.ajw, %i.aki         ; 6 uses
  %i.akk = icmp ult ptr %.21525, %i.bm
  br i1 %i.akk, label %bb.ac, label %.preheader602, !prof !41

.preheader602:                                    ; preds = %bb.ab
  %i.akl = icmp ugt i32 %i.akj, 7
  br i1 %i.akl, label %.lr.ph695, label %.loopexit603

bb.ac:                                            ; preds = %bb.ab
  store i64 %i.akf, ptr %.21525, align 1
  %i.akm = and i32 %i.akj, -8
  %i.akn = zext nneg i32 %i.akm to i64
  %i.ako = lshr i64 %i.akf, %i.akn
  %i.akp = lshr i32 %i.akj, 3
  %i.akq = zext nneg i32 %i.akp to i64
  %i.akr = getelementptr inbounds nuw i8, ptr %.21525, i64 %i.akq
  %i.aks = and i32 %i.akj, 7
  br label %.loopexit603

.lr.ph695:                                        ; preds = %.preheader602, %.lr.ph695
  %.23694 = phi i64 [ %i.akw, %.lr.ph695 ], [ %i.akf, %.preheader602 ] ; 2 uses
  %.22526693 = phi ptr [ %i.aku, %.lr.ph695 ], [ %.21525, %.preheader602 ] ; 2 uses
  %.23555692 = phi i32 [ %i.akv, %.lr.ph695 ], [ %i.akj, %.preheader602 ]
  %i.akt = trunc i64 %.23694 to i8
  %i.aku = getelementptr inbounds nuw i8, ptr %.22526693, i64 1 ; 2 uses
  store i8 %i.akt, ptr %.22526693, align 1, !tbaa !30
  %i.akv = add nsw i32 %.23555692, -8             ; 3 uses
  %i.akw = lshr i64 %.23694, 8                    ; 2 uses
  %i.akx = icmp ugt i32 %i.akv, 7
  br i1 %i.akx, label %.lr.ph695, label %.loopexit603, !llvm.loop !127

.loopexit603:                                     ; preds = %.lr.ph695, %.preheader602, %bb.ac
  %.24556 = phi i32 [ %i.aks, %bb.ac ], [ %i.akj, %.preheader602 ], [ %i.akv, %.lr.ph695 ]
  %.23527 = phi ptr [ %i.akr, %bb.ac ], [ %.21525, %.preheader602 ], [ %i.aku, %.lr.ph695 ]
  %.24 = phi i64 [ %i.ako, %bb.ac ], [ %i.akf, %.preheader602 ], [ %i.akw, %.lr.ph695 ]
  %i.aky = getelementptr inbounds nuw i8, ptr %.4, i64 %i.ajd
  %i.akz = getelementptr inbounds nuw i8, ptr %.0475, i64 8
  br label %bb.u

.loopexit599:                                     ; preds = %.loopexit605, %.loopexit596
  %.26558 = phi i32 [ %.15547, %.loopexit596 ], [ %.22554, %.loopexit605 ] ; 3 uses
  %.25529 = phi ptr [ %.15519, %.loopexit596 ], [ %.21525, %.loopexit605 ] ; 6 uses
  %.26 = phi i64 [ %.15, %.loopexit596 ], [ %.22, %.loopexit605 ]
  %i.ala = getelementptr inbounds nuw i8, ptr %.0494, i64 1024
  %i.alb = load i32, ptr %i.ala, align 4, !tbaa !31
  %i.alc = zext i32 %i.alb to i64
  %i.ald = zext nneg i32 %.26558 to i64
  %i.ale = shl nuw nsw i64 %i.alc, %i.ald
  %i.alf = or i64 %i.ale, %.26                    ; 5 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %.0494, i64 1536
  %i.alh = load i8, ptr %i.alg, align 4, !tbaa !30
  %i.ali = zext i8 %i.alh to i32                  ; 2 uses
  %i.alj = add nuw nsw i32 %.26558, %i.ali        ; 7 uses
  %i.alk = icmp ult ptr %.25529, %i.bm
  br i1 %i.alk, label %bb.ad, label %.preheader593, !prof !41

.preheader593:                                    ; preds = %.loopexit599
  %i.all = icmp ugt i32 %i.alj, 7
  br i1 %i.all, label %.lr.ph716.preheader, label %.loopexit

.lr.ph716.preheader:                              ; preds = %.preheader593
  %7 = add i32 %.26558, %i.ali
  %i.alm = add i32 %7, -8                         ; 2 uses
  %i.aln = lshr i32 %i.alm, 3
  %i.alo = add nuw nsw i32 %i.aln, 1
  %xtraiter1072 = and i32 %i.alo, 7               ; 2 uses
  %lcmp.mod1073.not = icmp eq i32 %xtraiter1072, 0
  br i1 %lcmp.mod1073.not, label %.lr.ph716.prol.loopexit, label %.lr.ph716.prol

.lr.ph716.prol:                                   ; preds = %.lr.ph716.preheader, %.lr.ph716.prol
  %.27715.prol = phi i64 [ %i.als, %.lr.ph716.prol ], [ %i.alf, %.lr.ph716.preheader ] ; 2 uses
  %.26530714.prol = phi ptr [ %i.alq, %.lr.ph716.prol ], [ %.25529, %.lr.ph716.preheader ] ; 2 uses
  %.27559713.prol = phi i32 [ %i.alr, %.lr.ph716.prol ], [ %i.alj, %.lr.ph716.preheader ]
  %prol.iter1074 = phi i32 [ %prol.iter1074.next, %.lr.ph716.prol ], [ 0, %.lr.ph716.preheader ]
  %i.alp = trunc i64 %.27715.prol to i8
  %i.alq = getelementptr inbounds nuw i8, ptr %.26530714.prol, i64 1 ; 3 uses
  store i8 %i.alp, ptr %.26530714.prol, align 1, !tbaa !30
  %i.alr = add nsw i32 %.27559713.prol, -8        ; 3 uses
  %i.als = lshr i64 %.27715.prol, 8               ; 3 uses
  %prol.iter1074.next = add i32 %prol.iter1074, 1 ; 2 uses
  %prol.iter1074.cmp.not = icmp eq i32 %prol.iter1074.next, %xtraiter1072
  br i1 %prol.iter1074.cmp.not, label %.lr.ph716.prol.loopexit, label %.lr.ph716.prol, !llvm.loop !128

.lr.ph716.prol.loopexit:                          ; preds = %.lr.ph716.prol, %.lr.ph716.preheader
  %.27715.unr = phi i64 [ %i.alf, %.lr.ph716.preheader ], [ %i.als, %.lr.ph716.prol ]
  %.26530714.unr = phi ptr [ %.25529, %.lr.ph716.preheader ], [ %i.alq, %.lr.ph716.prol ]
  %.27559713.unr = phi i32 [ %i.alj, %.lr.ph716.preheader ], [ %i.alr, %.lr.ph716.prol ]
  %.lcssa1000.unr = phi ptr [ poison, %.lr.ph716.preheader ], [ %i.alq, %.lr.ph716.prol ]
  %.lcssa999.unr = phi i32 [ poison, %.lr.ph716.preheader ], [ %i.alr, %.lr.ph716.prol ]
  %.lcssa998.unr = phi i64 [ poison, %.lr.ph716.preheader ], [ %i.als, %.lr.ph716.prol ]
  %i.alt = icmp ult i32 %i.alm, 56
  br i1 %i.alt, label %.loopexit, label %.lr.ph716

bb.ad:                                            ; preds = %.loopexit599
  store i64 %i.alf, ptr %.25529, align 1
  %i.alu = and i32 %i.alj, -8
  %i.alv = zext nneg i32 %i.alu to i64
  %i.alw = lshr i64 %i.alf, %i.alv
  %i.alx = lshr i32 %i.alj, 3
  %i.aly = zext nneg i32 %i.alx to i64
  %i.alz = getelementptr inbounds nuw i8, ptr %.25529, i64 %i.aly
  %i.ama = and i32 %i.alj, 7
  br label %.loopexit

.lr.ph716:                                        ; preds = %.lr.ph716.prol.loopexit, %.lr.ph716
  %.27715 = phi i64 [ 0, %.lr.ph716 ], [ %.27715.unr, %.lr.ph716.prol.loopexit ] ; 8 uses
  %.26530714 = phi ptr [ %i.amx, %.lr.ph716 ], [ %.26530714.unr, %.lr.ph716.prol.loopexit ] ; 9 uses
  %.27559713 = phi i32 [ %i.amy, %.lr.ph716 ], [ %.27559713.unr, %.lr.ph716.prol.loopexit ]
  %i.amb = trunc i64 %.27715 to i8
  %i.amc = getelementptr inbounds nuw i8, ptr %.26530714, i64 1
  store i8 %i.amb, ptr %.26530714, align 1, !tbaa !30
  %i.amd = lshr i64 %.27715, 8
  %i.ame = trunc i64 %i.amd to i8
  %i.amf = getelementptr inbounds nuw i8, ptr %.26530714, i64 2
  store i8 %i.ame, ptr %i.amc, align 1, !tbaa !30
  %i.amg = lshr i64 %.27715, 16
  %i.amh = trunc i64 %i.amg to i8
  %i.ami = getelementptr inbounds nuw i8, ptr %.26530714, i64 3
  store i8 %i.amh, ptr %i.amf, align 1, !tbaa !30
  %i.amj = lshr i64 %.27715, 24
  %i.amk = trunc i64 %i.amj to i8
  %i.aml = getelementptr inbounds nuw i8, ptr %.26530714, i64 4
  store i8 %i.amk, ptr %i.ami, align 1, !tbaa !30
  %i.amm = lshr i64 %.27715, 32
  %i.amn = trunc i64 %i.amm to i8
  %i.amo = getelementptr inbounds nuw i8, ptr %.26530714, i64 5
  store i8 %i.amn, ptr %i.aml, align 1, !tbaa !30
  %i.amp = lshr i64 %.27715, 40
  %i.amq = trunc i64 %i.amp to i8
  %i.amr = getelementptr inbounds nuw i8, ptr %.26530714, i64 6
  store i8 %i.amq, ptr %i.amo, align 1, !tbaa !30
  %i.ams = lshr i64 %.27715, 48
  %i.amt = trunc i64 %i.ams to i8
  %i.amu = getelementptr inbounds nuw i8, ptr %.26530714, i64 7
  store i8 %i.amt, ptr %i.amr, align 1, !tbaa !30
  %i.amv = lshr i64 %.27715, 56
  %i.amw = trunc nuw i64 %i.amv to i8
  %i.amx = getelementptr inbounds nuw i8, ptr %.26530714, i64 8 ; 2 uses
  store i8 %i.amw, ptr %i.amu, align 1, !tbaa !30
  %i.amy = add nsw i32 %.27559713, -64            ; 3 uses
  %i.amz = icmp ugt i32 %i.amy, 7
  br i1 %i.amz, label %.lr.ph716, label %.loopexit, !llvm.loop !129

.loopexit:                                        ; preds = %.lr.ph716.prol.loopexit, %.lr.ph716, %bb.e, %bb.d, %.preheader593, %bb.ad
  %.28560 = phi i32 [ 0, %bb.d ], [ %i.ama, %bb.ad ], [ %i.alj, %.preheader593 ], [ 0, %bb.e ], [ %.lcssa999.unr, %.lr.ph716.prol.loopexit ], [ %i.amy, %.lr.ph716 ]
  %.27531 = phi ptr [ %i.na, %bb.d ], [ %i.alz, %bb.ad ], [ %.25529, %.preheader593 ], [ %i.nl, %bb.e ], [ %.lcssa1000.unr, %.lr.ph716.prol.loopexit ], [ %i.amx, %.lr.ph716 ]
  %.28 = phi i64 [ 0, %bb.d ], [ %i.alw, %bb.ad ], [ %i.alf, %.preheader593 ], [ 0, %bb.e ], [ %.lcssa998.unr, %.lr.ph716.prol.loopexit ], [ 0, %.lr.ph716 ]
  store i64 %.28, ptr %1, align 8, !tbaa !57
  store i32 %.28560, ptr %i.b, align 8, !tbaa !58
  store ptr %.27531, ptr %i.d, align 8, !tbaa !59
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @deflate_make_huffman_code(i32 noundef range(i32 19, 289) %0, i32 noundef range(i32 7, 16) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) unnamed_addr #4 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 10 uses
  %i.b = alloca [288 x i32], align 16             ; 13 uses
  %i.c = alloca [16 x i32], align 16              ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.d = shl nuw nsw i32 %0, 2
  %i.e = zext nneg i32 %i.d to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, i8 0, i64 %i.e, i1 false)
  %i.f = add nsw i32 %0, -1                       ; 4 uses
  %wide.trip.count.i = zext nneg i32 %0 to i64    ; 6 uses
  %i.g = add nsw i64 %wide.trip.count.i, -1       ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %wide.trip.count.i, 510
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.b ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.j = load i32, ptr %i.i, align 4, !tbaa !31
  %..i = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %i.f)
  %i.k = zext nneg i32 %..i to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !31
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !31
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !31
  %..i.1 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.f)
  %i.r = zext nneg i32 %..i.1 to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !31
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !31
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader47.i.preheader.unr-lcssa, label %bb.b, !llvm.loop !131

.preheader47.i.preheader.unr-lcssa:               ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader47.i.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader47.i.preheader.unr-lcssa, %bb.a
  %indvars.iv.i.epil.init = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.1, %.preheader47.i.preheader.unr-lcssa ]
  %lcmp.mod99 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod99)
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.epil.init
  %i.w = load i32, ptr %i.v, align 4, !tbaa !31
  %..i.epil = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.f)
  %i.x = zext nneg i32 %..i.epil to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !31
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !31
  br label %.preheader47.i.preheader

.preheader47.i.preheader:                         ; preds = %.preheader47.i.preheader.unr-lcssa, %.epil.preheader
  %xtraiter100 = and i64 %i.g, 3                  ; 3 uses
  %unroll_iter104 = and i64 %i.g, -4
  br label %.preheader47.i

.preheader47.i:                                   ; preds = %.preheader47.i, %.preheader47.i.preheader
  %indvars.iv64.i = phi i64 [ 1, %.preheader47.i.preheader ], [ %indvars.iv.next65.i.3, %.preheader47.i ] ; 5 uses
  %.03855.i = phi i32 [ 0, %.preheader47.i.preheader ], [ %i.ap, %.preheader47.i ] ; 2 uses
  %niter105 = phi i64 [ 0, %.preheader47.i.preheader ], [ %niter105.next.3, %.preheader47.i ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv64.i ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !31
  store i32 %.03855.i, ptr %i.ab, align 4, !tbaa !31
  %i.ad = add i32 %i.ac, %.03855.i                ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv64.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !31
  store i32 %i.ad, ptr %i.af, align 4, !tbaa !31
  %i.ah = add i32 %i.ag, %i.ad                    ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv64.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !31
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !31
  %i.al = add i32 %i.ak, %i.ah                    ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv64.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !31
  store i32 %i.al, ptr %i.an, align 4, !tbaa !31
  %i.ap = add i32 %i.ao, %i.al                    ; 3 uses
  %indvars.iv.next65.i.3 = add nuw nsw i64 %indvars.iv64.i, 4 ; 2 uses
  %niter105.next.3 = add nuw nsw i64 %niter105, 4 ; 2 uses
  %niter105.ncmp.3 = icmp eq i64 %niter105.next.3, %unroll_iter104
  br i1 %niter105.ncmp.3, label %.preheader.i.preheader.unr-lcssa, label %.preheader47.i, !llvm.loop !132

.preheader.i.preheader.unr-lcssa:                 ; preds = %.preheader47.i
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %.preheader.i.preheader, label %.preheader47.i.epil.preheader

.preheader47.i.epil.preheader:                    ; preds = %.preheader.i.preheader.unr-lcssa
  %lcmp.mod103 = icmp ne i64 %xtraiter100, 0
  tail call void @llvm.assume(i1 %lcmp.mod103)
  br label %.preheader47.i.epil

.preheader47.i.epil:                              ; preds = %.preheader47.i.epil, %.preheader47.i.epil.preheader
end_hunk_3
begin_hunk_4_@do_end_block_check:bb.a
  %i.v = load <2 x i32>, ptr %0, align 4, !tbaa !31
  %i.w = shufflevector <2 x i32> %i.v, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.x = shufflevector <4 x i32> %i.m, <4 x i32> %i.q, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.y = shufflevector <8 x i32> %i.w, <8 x i32> %i.x, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %i.z = insertelement <8 x i32> poison, i32 %i.i, i64 0
  %i.aa = shufflevector <8 x i32> %i.z, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ab = mul <8 x i32> %i.aa, %i.u               ; 2 uses
  %i.ac = insertelement <8 x i32> poison, i32 %i.b, i64 0
  %i.ad = shufflevector <8 x i32> %i.ac, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ae = mul <8 x i32> %i.y, %i.ad               ; 2 uses
  %i.af = icmp ugt <8 x i32> %i.ae, %i.ab
  %i.ag = shufflevector <8 x i1> %i.af, <8 x i1> poison, <8 x i32> <i32 1, i32 0, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ah = shufflevector <8 x i32> %i.ae, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ai = shufflevector <8 x i32> %i.ab, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.aj = sub nuw <8 x i32> %i.ah, %i.ai
  %i.ak = sub nuw <8 x i32> %i.ai, %i.ah
  %i.al = select <8 x i1> %i.ag, <8 x i32> %i.aj, <8 x i32> %i.ak
  %i.am = extractelement <4 x i32> %i.p, i64 2
  %i.an = mul i32 %i.i, %i.am                     ; 3 uses
  %i.ao = extractelement <4 x i32> %i.q, i64 2
  %i.ap = mul i32 %i.ao, %i.b                     ; 3 uses
  %i.aq = icmp ugt i32 %i.ap, %i.an
  %i.ar = sub nuw i32 %i.ap, %i.an
  %i.as = sub nuw i32 %i.an, %i.ap
  %i.at = select i1 %i.aq, i32 %i.ar, i32 %i.as
  %i.au = extractelement <4 x i32> %i.p, i64 3
  %i.av = mul i32 %i.i, %i.au                     ; 3 uses
  %i.aw = extractelement <4 x i32> %i.q, i64 3
  %i.ax = mul i32 %i.aw, %i.b                     ; 3 uses
  %i.ay = icmp ugt i32 %i.ax, %i.av
  %i.az = sub nuw i32 %i.ax, %i.av
  %i.ba = sub nuw i32 %i.av, %i.ax
  %i.bb = select i1 %i.ay, i32 %i.az, i32 %i.ba
  %i.bc = load i32, ptr %i.h, align 4, !tbaa !50  ; 2 uses
  %i.bd = add i32 %i.bc, %i.b                     ; 3 uses
  %i.be = mul i32 %i.bc, 200
  %i.bf = lshr i32 %i.be, 9
  %i.bg = mul i32 %i.bf, %i.b                     ; 3 uses
  %i.bh = icmp ult i32 %1, 10000
  %i.bi = icmp ult i32 %i.bd, 8192
  %or.cond = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader
  %i.bj = zext i32 %i.bg to i64
  %i.bk = sub nuw nsw i32 8192, %i.bd
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = mul nuw nsw i64 %i.bj, %i.bl
  %i.bn = lshr i64 %i.bm, 13
  %i.bo = trunc nuw i64 %i.bn to i32
  %i.bp = add i32 %i.bg, %i.bo
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader
  %.034 = phi i32 [ %i.bp, %bb.b ], [ %i.bg, %.preheader ]
  %i.bq = lshr i32 %1, 12
  %i.br = mul i32 %i.b, %i.bq
  %i.bs = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.al)
  %op.rdx = add i32 %i.bs, %i.at
  %op.rdx80 = add i32 %i.bb, %i.br
  %op.rdx81 = add i32 %op.rdx, %op.rdx80
  %.not42.not = icmp ult i32 %op.rdx81, %.034
  br i1 %.not42.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.pre-phi = phi i32 [ %.pre77, %._crit_edge ], [ %i.bd, %bb.c ]
  %i.bt = phi <4 x i32> [ %i.d, %._crit_edge ], [ %i.l, %bb.c ]
  %i.bu = phi <4 x i32> [ %i.c, %._crit_edge ], [ %i.m, %bb.c ]
  %i.bv = phi <4 x i32> [ %i.f, %._crit_edge ], [ %i.p, %bb.c ]
  %i.bw = phi <4 x i32> [ %i.e, %._crit_edge ], [ %i.q, %bb.c ]
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.by = load <2 x i32>, ptr %0, align 4, !tbaa !31
  %i.bz = load <2 x i32>, ptr %i.bx, align 4, !tbaa !31
  %i.ca = add <2 x i32> %i.bz, %i.by
  store <2 x i32> %i.ca, ptr %i.bx, align 4, !tbaa !31
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cc = add <4 x i32> %i.bt, %i.bu
  store <4 x i32> zeroinitializer, ptr %0, align 4, !tbaa !31
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> %i.cc, ptr %i.cb, align 4, !tbaa !31
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cf = add <4 x i32> %i.bv, %i.bw
  store <4 x i32> zeroinitializer, ptr %i.cd, align 4, !tbaa !31
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.cg, align 4, !tbaa !31
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 36
  store <4 x i32> %i.cf, ptr %i.ce, align 4, !tbaa !31
  store i32 0, ptr %i.ch, align 4, !tbaa !31
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %.pre-phi, ptr %i.a, align 4, !tbaa !55
  store i32 0, ptr %i.ci, align 4, !tbaa !50
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i1 [ false, %bb.d ], [ true, %bb.c ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @deflate_optimize_and_flush_block(ptr noundef initializes((40, 1320)) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr nofree noundef nonnull writeonly captures(none) %7) unnamed_addr #11 {
bb.a:
  %8 = alloca %struct.deflate_sequence, align 4   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9011684
  %i.b = load i32, ptr %i.a, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 23 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1280) %i.c, i8 0, i64 1280, i1 false)
  %.not.i = icmp eq i32 %3, 0                     ; 3 uses
  br i1 %.not.i, label %deflate_choose_all_literals.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %3 to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.d = icmp ult i32 %3, 4
  br i1 %i.d, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967292
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !30
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !31
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !30
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !31
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !30
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !31
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !31
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !30
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !31
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !31
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %deflate_choose_all_literals.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !153

deflate_choose_all_literals.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %deflate_choose_all_literals.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %deflate_choose_all_literals.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %deflate_choose_all_literals.exit.loopexit.unr-lcssa ]
  %lcmp.mod455 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod455)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i.epil
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !30
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !31
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !31
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %deflate_choose_all_literals.exit, label %.lr.ph.i.epil, !llvm.loop !154

deflate_choose_all_literals.exit:                 ; preds = %deflate_choose_all_literals.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  store i32 1, ptr %i.al, align 8, !tbaa !31
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2688 ; 20 uses
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 288, i32 noundef 14, ptr noundef nonnull readonly %i.c, ptr noundef nonnull %i.an, ptr noundef nonnull %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2976 ; 14 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2560 ; 2 uses
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 32, i32 noundef 15, ptr noundef nonnull readonly %i.ao, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq)
  %i.ar = tail call fastcc i32 @deflate_compute_true_cost(ptr noundef nonnull %0) ; 2 uses
  %i.as = add i32 %3, 257                         ; 2 uses
  %i.at = icmp ult i32 %i.as, 305000
  %narrow = select i1 %i.at, i32 %i.as, i32 304999 ; 4 uses
  %.not182 = icmp ugt i32 %3, %narrow
  br i1 %.not182, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %deflate_choose_all_literals.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 6532420 ; 9 uses
  %i.av = zext nneg i32 %3 to i64                 ; 2 uses
  %9 = add nuw nsw i32 %narrow, 1
  %i.aw = add nuw nsw i32 %narrow, 1
  %i.ax = sub nuw i32 %i.aw, %3
  %i.ay = sub nuw i32 %narrow, %3
  %xtraiter456 = and i32 %i.ax, 7                 ; 2 uses
  %lcmp.mod457.not = icmp eq i32 %xtraiter456, 0
  br i1 %lcmp.mod457.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.av, %.lr.ph ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.prol
  store i32 -2147483648, ptr %i.az, align 4, !tbaa !30
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter456
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !155

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.av, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %i.ba = icmp samesign ult i32 %i.ay, 7
  br i1 %i.ba, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 9 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  store i32 -2147483648, ptr %i.bb, align 4, !tbaa !30
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i32 -2147483648, ptr %i.bd, align 4, !tbaa !30
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i32 -2147483648, ptr %i.bf, align 4, !tbaa !30
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store i32 -2147483648, ptr %i.bh, align 4, !tbaa !30
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store i32 -2147483648, ptr %i.bj, align 4, !tbaa !30
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  store i32 -2147483648, ptr %i.bl, align 4, !tbaa !30
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  store i32 -2147483648, ptr %i.bn, align 4, !tbaa !30
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  store i32 -2147483648, ptr %i.bp, align 4, !tbaa !30
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %lftr.wideiv.7 = trunc i64 %indvars.iv.next.7 to i32
  %exitcond.not.7 = icmp eq i32 %9, %lftr.wideiv.7
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph.new, !llvm.loop !156

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %deflate_choose_all_literals.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 9011696
  %i.br = load i32, ptr %i.bq, align 16, !tbaa !30
  %.not84 = icmp ugt i32 %3, %i.br
  br i1 %.not84, label %.thread, label %vector.memcheck

.thread:                                          ; preds = %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.c, i8 0, i64 1024, i1 false)
  br label %.lr.ph.preheader.i.i

vector.memcheck:                                  ; preds = %._crit_edge
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8974608 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8972420 ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2188) %i.bs, ptr noundef nonnull align 4 dereferenceable(2188) %i.bt, i64 2188, i1 false), !tbaa.struct !216
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 4288 ; 6 uses
  %scevgep = getelementptr i8, ptr %0, i64 8973444
  %scevgep200 = getelementptr i8, ptr %0, i64 4544
  %bound0 = icmp ult ptr %i.bt, %scevgep200
  %bound1 = icmp ult ptr %i.bu, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %index ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %wide.load = load <4 x i8>, ptr %i.bv, align 1, !tbaa !30, !alias.scope !217 ; 2 uses
  %wide.load201 = load <4 x i8>, ptr %i.bw, align 1, !tbaa !30, !alias.scope !217 ; 2 uses
  %i.bx = icmp eq <4 x i8> %wide.load, zeroinitializer
  %i.by = icmp eq <4 x i8> %wide.load201, zeroinitializer
  %i.bz = zext <4 x i8> %wide.load to <4 x i32>
  %i.ca = zext <4 x i8> %wide.load201 to <4 x i32>
  %i.cb = shl nuw nsw <4 x i32> %i.bz, splat (i32 4)
  %i.cc = shl nuw nsw <4 x i32> %i.ca, splat (i32 4)
  %i.cd = select <4 x i1> %i.bx, <4 x i32> splat (i32 208), <4 x i32> %i.cb
  %i.ce = select <4 x i1> %i.by, <4 x i32> splat (i32 208), <4 x i32> %i.cc
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %index ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store <4 x i32> %i.cd, ptr %i.cf, align 4, !tbaa !30, !alias.scope !218, !noalias !217
  store <4 x i32> %i.ce, ptr %i.cg, align 4, !tbaa !30, !alias.scope !218, !noalias !217
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ch = icmp eq i64 %index.next, 256
  br i1 %i.ch, label %.preheader40.i, label %vector.body, !llvm.loop !160

.preheader40.i:                                   ; preds = %vector.body, %scalar.ph
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8973444 ; 2 uses
  br label %bb.b

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv.i88 = phi i64 [ %indvars.iv.next.i89.1, %scalar.ph ], [ 0, %vector.memcheck ] ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv.i88
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !30  ; 2 uses
  %.not37.i = icmp eq i8 %i.ck, 0
  %i.cl = zext i8 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 4
  %i.cn = select i1 %.not37.i, i32 208, i32 %i.cm
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.i88
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !30
  %indvars.iv.next.i89 = or disjoint i64 %indvars.iv.i88, 1 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv.next.i89
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !30  ; 2 uses
  %.not37.i.1 = icmp eq i8 %i.cq, 0
  %i.cr = zext i8 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 4
  %i.ct = select i1 %.not37.i.1, i32 208, i32 %i.cs
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.next.i89
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !30
  %indvars.iv.next.i89.1 = add nuw nsw i64 %indvars.iv.i88, 2 ; 2 uses
  %exitcond.not.i90.1 = icmp eq i64 %indvars.iv.next.i89.1, 256
  br i1 %exitcond.not.i90.1, label %.preheader40.i, label %scalar.ph, !llvm.loop !161

.preheader.i:                                     ; preds = %bb.b
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 4576 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8974480 ; 4 uses
  %scevgep203 = getelementptr i8, ptr %0, i64 8974600
  %scevgep204 = getelementptr i8, ptr %0, i64 4606
  %bound0205 = icmp ult ptr %i.cw, %scevgep204
  %bound1206 = icmp ult ptr %i.cv, %scevgep203
  %found.conflict207 = and i1 %bound0205, %bound1206
  br i1 %found.conflict207, label %scalar.ph208.preheader, label %vector.body210

scalar.ph208.preheader:                           ; preds = %vector.body210, %.preheader.i
  %indvars.iv49.i.ph = phi i64 [ 0, %.preheader.i ], [ 24, %vector.body210 ]
  br label %scalar.ph208

vector.body210:                                   ; preds = %.preheader.i
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 4580
  %wide.load212 = load <4 x i8>, ptr %i.cv, align 16, !tbaa !30, !alias.scope !219 ; 2 uses
  %wide.load213 = load <4 x i8>, ptr %i.cx, align 4, !tbaa !30, !alias.scope !219 ; 2 uses
  %i.cy = icmp eq <4 x i8> %wide.load212, zeroinitializer
  %i.cz = icmp eq <4 x i8> %wide.load213, zeroinitializer
  %i.da = select <4 x i1> %i.cy, <4 x i8> splat (i8 10), <4 x i8> %wide.load212
  %i.db = select <4 x i1> %i.cz, <4 x i8> splat (i8 10), <4 x i8> %wide.load213
  %i.dc = zext <4 x i8> %i.da to <4 x i32>
  %i.dd = zext <4 x i8> %i.db to <4 x i32>
  %i.de = add nuw nsw <4 x i32> %i.dd, <i32 1, i32 1, i32 2, i32 2>
  %i.df = shl nuw nsw <4 x i32> %i.dc, splat (i32 4)
  %i.dg = shl nuw nsw <4 x i32> %i.de, splat (i32 4)
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8974496
  store <4 x i32> %i.df, ptr %i.cw, align 16, !tbaa !30, !alias.scope !220, !noalias !219
  store <4 x i32> %i.dg, ptr %i.dh, align 16, !tbaa !30, !alias.scope !220, !noalias !219
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 4584
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 4588
  %wide.load212.1 = load <4 x i8>, ptr %i.di, align 8, !tbaa !30, !alias.scope !219 ; 2 uses
  %wide.load213.1 = load <4 x i8>, ptr %i.dj, align 4, !tbaa !30, !alias.scope !219 ; 2 uses
  %i.dk = icmp eq <4 x i8> %wide.load212.1, zeroinitializer
  %i.dl = icmp eq <4 x i8> %wide.load213.1, zeroinitializer
  %i.dm = select <4 x i1> %i.dk, <4 x i8> splat (i8 10), <4 x i8> %wide.load212.1
  %i.dn = select <4 x i1> %i.dl, <4 x i8> splat (i8 10), <4 x i8> %wide.load213.1
  %i.do = zext <4 x i8> %i.dm to <4 x i32>
  %i.dp = zext <4 x i8> %i.dn to <4 x i32>
  %i.dq = add nuw nsw <4 x i32> %i.do, <i32 3, i32 3, i32 4, i32 4>
  %i.dr = add nuw nsw <4 x i32> %i.dp, <i32 5, i32 5, i32 6, i32 6>
  %i.ds = shl nuw nsw <4 x i32> %i.dq, splat (i32 4)
  %i.dt = shl nuw nsw <4 x i32> %i.dr, splat (i32 4)
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8974512
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8974528
  store <4 x i32> %i.ds, ptr %i.du, align 16, !tbaa !30, !alias.scope !220, !noalias !219
  store <4 x i32> %i.dt, ptr %i.dv, align 16, !tbaa !30, !alias.scope !220, !noalias !219
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 4592
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 4596
  %wide.load212.2 = load <4 x i8>, ptr %i.dw, align 16, !tbaa !30, !alias.scope !219 ; 2 uses
  %wide.load213.2 = load <4 x i8>, ptr %i.dx, align 4, !tbaa !30, !alias.scope !219 ; 2 uses
  %i.dy = icmp eq <4 x i8> %wide.load212.2, zeroinitializer
  %i.dz = icmp eq <4 x i8> %wide.load213.2, zeroinitializer
  %i.ea = select <4 x i1> %i.dy, <4 x i8> splat (i8 10), <4 x i8> %wide.load212.2
  %i.eb = select <4 x i1> %i.dz, <4 x i8> splat (i8 10), <4 x i8> %wide.load213.2
  %i.ec = zext <4 x i8> %i.ea to <4 x i32>
  %i.ed = zext <4 x i8> %i.eb to <4 x i32>
  %i.ee = add nuw nsw <4 x i32> %i.ec, <i32 7, i32 7, i32 8, i32 8>
  %i.ef = add nuw nsw <4 x i32> %i.ed, <i32 9, i32 9, i32 10, i32 10>
  %i.eg = shl nuw nsw <4 x i32> %i.ee, splat (i32 4)
  %i.eh = shl nuw nsw <4 x i32> %i.ef, splat (i32 4)
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8974544
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8974560
  store <4 x i32> %i.eg, ptr %i.ei, align 16, !tbaa !30, !alias.scope !220, !noalias !219
  store <4 x i32> %i.eh, ptr %i.ej, align 16, !tbaa !30, !alias.scope !220, !noalias !219
  br label %scalar.ph208.preheader

bb.b:                                             ; preds = %bb.b, %.preheader40.i
  %indvars.iv45.i = phi i64 [ 3, %.preheader40.i ], [ %indvars.iv.next46.i.1, %bb.b ] ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %indvars.iv45.i
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !30
  %i.em = zext i8 %i.el to i64                    ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 257
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !30  ; 2 uses
  %.not36.i = icmp eq i8 %i.ep, 0
  %narrow39.i = select i1 %.not36.i, i8 13, i8 %i.ep
  %spec.select.i = zext i8 %narrow39.i to i32
  %i.eq = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.em
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !30
  %i.es = zext i8 %i.er to i32
  %i.et = add nuw nsw i32 %spec.select.i, %i.es
  %i.eu = shl nuw nsw i32 %i.et, 4
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv45.i
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !30
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %indvars.iv.next46.i
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !30
  %i.ey = zext i8 %i.ex to i64                    ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 257
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !30  ; 2 uses
  %.not36.i.1 = icmp eq i8 %i.fb, 0
  %narrow39.i.1 = select i1 %.not36.i.1, i8 13, i8 %i.fb
  %spec.select.i.1 = zext i8 %narrow39.i.1 to i32
  %i.fc = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.ey
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !30
  %i.fe = zext i8 %i.fd to i32
  %i.ff = add nuw nsw i32 %spec.select.i.1, %i.fe
  %i.fg = shl nuw nsw i32 %i.ff, 4
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.next46.i
  store i32 %i.fg, ptr %i.fh, align 4, !tbaa !30
  %indvars.iv.next46.i.1 = add nuw nsw i64 %indvars.iv45.i, 2 ; 2 uses
  %exitcond48.not.i.1 = icmp eq i64 %indvars.iv.next46.i.1, 259
  br i1 %exitcond48.not.i.1, label %.preheader.i, label %bb.b, !llvm.loop !165

scalar.ph208:                                     ; preds = %scalar.ph208, %scalar.ph208.preheader
  %indvars.iv49.i = phi i64 [ %indvars.iv49.i.ph, %scalar.ph208.preheader ], [ %indvars.iv.next50.i.1, %scalar.ph208 ] ; 5 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.cv, i64 %indvars.iv49.i
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !30  ; 2 uses
  %.not.i91 = icmp eq i8 %i.fj, 0
  %narrow.i = select i1 %.not.i91, i8 10, i8 %i.fj
  %spec.select38.i = zext i8 %narrow.i to i32
  %i.fk = getelementptr inbounds nuw i8, ptr @deflate_extra_offset_bits, i64 %indvars.iv49.i
  %i.fl = load i8, ptr %i.fk, align 2, !tbaa !30
  %i.fm = zext i8 %i.fl to i32
  %i.fn = add nuw nsw i32 %spec.select38.i, %i.fm
  %i.fo = shl nuw nsw i32 %i.fn, 4
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv49.i
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !30
  %indvars.iv.next50.i = or disjoint i64 %indvars.iv49.i, 1 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.cv, i64 %indvars.iv.next50.i
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !30  ; 2 uses
  %.not.i91.1 = icmp eq i8 %i.fr, 0
  %narrow.i.1 = select i1 %.not.i91.1, i8 10, i8 %i.fr
  %spec.select38.i.1 = zext i8 %narrow.i.1 to i32
end_hunk_4
