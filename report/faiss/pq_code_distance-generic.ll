Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/pq_code_distance-generic?download=true
inline.NumInlined: 58
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5faiss16pq_code_distance17pq_scan_8bit_implILNS_9SIMDLevelE0EEEvmPKfPKhmmPfPlb:bb.a
  br i1 %i.fs, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit67.i, label %bb.o

bb.n:                                             ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i57.i
  %i.ft = fcmp ogt float %i.ev, %i.fd
  br i1 %i.ft, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit67.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i58.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i58.i:        ; preds = %bb.n
  %i.fu = fcmp oeq float %i.ev, %i.fd
  %i.fv = icmp sge i64 %.0139.i, %i.ff
  %i.fw = and i1 %i.fu, %i.fv
  br i1 %i.fw, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit67.i, label %bb.o

bb.o:                                             ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i58.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i64.i
  %.sink71.i59.i = phi float [ %i.fm, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i64.i ], [ %i.fd, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i58.i ]
  %.sink.i60.i = phi i64 [ %i.fp, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i64.i ], [ %i.ff, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i58.i ]
  %.1.i61.i = phi i64 [ %i.ey, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i64.i ], [ %i.ex, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i58.i ] ; 3 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.056.i56.i
  store float %.sink71.i59.i, ptr %i.fx, align 4, !tbaa !12
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.056.i56.i
  store i64 %.sink.i60.i, ptr %i.fy, align 8, !tbaa !51
  %i.fz = shl i64 %.1.i61.i, 1                    ; 3 uses
  %i.ga = or disjoint i64 %i.fz, 1
  %i.gb = icmp ugt i64 %i.fz, %4
  br i1 %i.gb, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit67.i, label %.lr.ph.i55.i, !llvm.loop !30

_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit67.i: ; preds = %bb.o, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i58.i, %bb.n, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i64.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i63.i, %bb.l
  %.0.lcssa.i62.i = phi i64 [ 1, %bb.l ], [ %.056.i56.i, %bb.n ], [ %.056.i56.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i63.i ], [ %.056.i56.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i58.i ], [ %.056.i56.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i64.i ], [ %.1.i61.i, %bb.o ] ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0.lcssa.i62.i
  store float %i.ev, ptr %i.gc, align 4, !tbaa !12
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0.lcssa.i62.i
  store i64 %i.bx, ptr %i.gd, align 8, !tbaa !51
  %.pre157.i = load float, ptr %5, align 4, !tbaa !12
  br label %bb.p

bb.p:                                             ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit67.i, %bb.k
  %i.ge = phi float [ %.pre157.i, %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit67.i ], [ %i.eu, %bb.k ] ; 2 uses
  %i.gf = extractelement <4 x float> %i.dj, i64 2 ; 6 uses
  %i.gg = fcmp ogt float %i.ge, %i.gf
  br i1 %i.gg, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  br i1 %i.d, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit82.i, label %.lr.ph.i70.i

.lr.ph.i70.i:                                     ; preds = %bb.q, %bb.t
  %i.gh = phi i64 [ %i.hk, %bb.t ], [ 3, %bb.q ]
  %i.gi = phi i64 [ %i.hj, %bb.t ], [ 2, %bb.q ]  ; 7 uses
  %.056.i71.i = phi i64 [ %.1.i76.i, %bb.t ], [ 1, %bb.q ] ; 6 uses
  %i.gj = icmp eq i64 %i.gi, %4
  br i1 %i.gj, label %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i80.i, label %bb.r

.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i80.i: ; preds = %.lr.ph.i70.i
  %.pre.i81.i = load float, ptr %.phi.trans.insert.i.i, align 4, !tbaa !12
  br label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i78.i

bb.r:                                             ; preds = %.lr.ph.i70.i
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gi
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !12 ; 4 uses
  %i.gm = getelementptr [4 x i8], ptr %5, i64 %i.gi
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !12 ; 5 uses
  %i.go = getelementptr [8 x i8], ptr %6, i64 %i.gi
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !51 ; 3 uses
  %i.gq = fcmp ogt float %i.gl, %i.gn
  br i1 %i.gq, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i78.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i72.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit.i72.i:          ; preds = %bb.r
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.gi
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !51
  %i.gt = fcmp oeq float %i.gl, %i.gn
  %i.gu = icmp sgt i64 %i.gs, %i.gp
  %i.gv = and i1 %i.gt, %i.gu
  br i1 %i.gv, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i78.i, label %bb.s

_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i78.i:   ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i72.i, %bb.r, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i80.i
  %i.gw = phi float [ %.pre.i81.i, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i80.i ], [ %i.gl, %bb.r ], [ %i.gl, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i72.i ] ; 3 uses
  %i.gx = fcmp ogt float %i.gf, %i.gw
  br i1 %i.gx, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit82.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i79.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i79.i:        ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i78.i
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.gi
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !51 ; 2 uses
  %i.ha = fcmp oeq float %i.gf, %i.gw
  %i.hb = icmp sgt i64 %i.by, %i.gz
  %i.hc = and i1 %i.ha, %i.hb
  br i1 %i.hc, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit82.i, label %bb.t

bb.s:                                             ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i72.i
  %i.hd = fcmp ogt float %i.gf, %i.gn
  br i1 %i.hd, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit82.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i73.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i73.i:        ; preds = %bb.s
  %i.he = fcmp oeq float %i.gf, %i.gn
  %i.hf = icmp sgt i64 %i.by, %i.gp
  %i.hg = and i1 %i.he, %i.hf
  br i1 %i.hg, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit82.i, label %bb.t

bb.t:                                             ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i73.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i79.i
  %.sink71.i74.i = phi float [ %i.gw, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i79.i ], [ %i.gn, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i73.i ]
  %.sink.i75.i = phi i64 [ %i.gz, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i79.i ], [ %i.gp, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i73.i ]
  %.1.i76.i = phi i64 [ %i.gi, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i79.i ], [ %i.gh, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i73.i ] ; 3 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.056.i71.i
  store float %.sink71.i74.i, ptr %i.hh, align 4, !tbaa !12
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.056.i71.i
  store i64 %.sink.i75.i, ptr %i.hi, align 8, !tbaa !51
  %i.hj = shl i64 %.1.i76.i, 1                    ; 3 uses
  %i.hk = or disjoint i64 %i.hj, 1
  %i.hl = icmp ugt i64 %i.hj, %4
  br i1 %i.hl, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit82.i, label %.lr.ph.i70.i, !llvm.loop !30

_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit82.i: ; preds = %bb.t, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i73.i, %bb.s, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i79.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i78.i, %bb.q
  %.0.lcssa.i77.i = phi i64 [ 1, %bb.q ], [ %.056.i71.i, %bb.s ], [ %.056.i71.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i78.i ], [ %.056.i71.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i73.i ], [ %.056.i71.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i79.i ], [ %.1.i76.i, %bb.t ] ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0.lcssa.i77.i
  store float %i.gf, ptr %i.hm, align 4, !tbaa !12
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0.lcssa.i77.i
  store i64 %i.by, ptr %i.hn, align 8, !tbaa !51
  %.pre158.i = load float, ptr %5, align 4, !tbaa !12
  br label %bb.u

bb.u:                                             ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit82.i, %bb.p
  %i.ho = phi float [ %.pre158.i, %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit82.i ], [ %i.ge, %bb.p ]
  %i.hp = extractelement <4 x float> %i.dj, i64 3 ; 6 uses
  %i.hq = fcmp ogt float %i.ho, %i.hp
  br i1 %i.hq, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  br i1 %i.d, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit97.i, label %.lr.ph.i85.i

.lr.ph.i85.i:                                     ; preds = %bb.v, %bb.y
  %i.hr = phi i64 [ %i.iu, %bb.y ], [ 3, %bb.v ]
  %i.hs = phi i64 [ %i.it, %bb.y ], [ 2, %bb.v ]  ; 7 uses
  %.056.i86.i = phi i64 [ %.1.i91.i, %bb.y ], [ 1, %bb.v ] ; 6 uses
  %i.ht = icmp eq i64 %i.hs, %4
  br i1 %i.ht, label %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i95.i, label %bb.w

.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i95.i: ; preds = %.lr.ph.i85.i
  %.pre.i96.i = load float, ptr %.phi.trans.insert.i.i, align 4, !tbaa !12
  br label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i93.i

bb.w:                                             ; preds = %.lr.ph.i85.i
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.hs
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !12 ; 4 uses
  %i.hw = getelementptr [4 x i8], ptr %5, i64 %i.hs
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !12 ; 5 uses
  %i.hy = getelementptr [8 x i8], ptr %6, i64 %i.hs
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !51 ; 3 uses
  %i.ia = fcmp ogt float %i.hv, %i.hx
  br i1 %i.ia, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i93.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i87.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit.i87.i:          ; preds = %bb.w
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.hs
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !51
  %i.id = fcmp oeq float %i.hv, %i.hx
  %i.ie = icmp sgt i64 %i.ic, %i.hz
  %i.if = and i1 %i.id, %i.ie
  br i1 %i.if, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i93.i, label %bb.x

_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i93.i:   ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i87.i, %bb.w, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i95.i
  %i.ig = phi float [ %.pre.i96.i, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i95.i ], [ %i.hv, %bb.w ], [ %i.hv, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i87.i ] ; 3 uses
  %i.ih = fcmp ogt float %i.hp, %i.ig
  br i1 %i.ih, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit97.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i94.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i94.i:        ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i93.i
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.hs
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !51 ; 2 uses
  %i.ik = fcmp oeq float %i.hp, %i.ig
  %i.il = icmp sgt i64 %i.bw, %i.ij
  %i.im = and i1 %i.ik, %i.il
  br i1 %i.im, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit97.i, label %bb.y

bb.x:                                             ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i87.i
  %i.in = fcmp ogt float %i.hp, %i.hx
  br i1 %i.in, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit97.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i88.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i88.i:        ; preds = %bb.x
  %i.io = fcmp oeq float %i.hp, %i.hx
  %i.ip = icmp sgt i64 %i.bw, %i.hz
  %i.iq = and i1 %i.io, %i.ip
  br i1 %i.iq, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit97.i, label %bb.y

bb.y:                                             ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i88.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i94.i
  %.sink71.i89.i = phi float [ %i.ig, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i94.i ], [ %i.hx, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i88.i ]
  %.sink.i90.i = phi i64 [ %i.ij, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i94.i ], [ %i.hz, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i88.i ]
  %.1.i91.i = phi i64 [ %i.hs, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i94.i ], [ %i.hr, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i88.i ] ; 3 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.056.i86.i
  store float %.sink71.i89.i, ptr %i.ir, align 4, !tbaa !12
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.056.i86.i
  store i64 %.sink.i90.i, ptr %i.is, align 8, !tbaa !51
  %i.it = shl i64 %.1.i91.i, 1                    ; 3 uses
  %i.iu = or disjoint i64 %i.it, 1
  %i.iv = icmp ugt i64 %i.it, %4
  br i1 %i.iv, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit97.i, label %.lr.ph.i85.i, !llvm.loop !30

_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit97.i: ; preds = %bb.y, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i88.i, %bb.x, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i94.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i93.i, %bb.v
  %.0.lcssa.i92.i = phi i64 [ 1, %bb.v ], [ %.056.i86.i, %bb.x ], [ %.056.i86.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i93.i ], [ %.056.i86.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i88.i ], [ %.056.i86.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i94.i ], [ %.1.i91.i, %bb.y ] ; 2 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0.lcssa.i92.i
  store float %i.hp, ptr %i.iw, align 4, !tbaa !12
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0.lcssa.i92.i
  store i64 %i.bw, ptr %i.ix, align 8, !tbaa !51
  br label %bb.z

bb.z:                                             ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit97.i, %bb.u
  %i.iy = add nuw i64 %.0139.i, 4                 ; 3 uses
  %i.iz = or disjoint i64 %i.iy, 3
  %i.ja = icmp ult i64 %i.iz, %3
  br i1 %i.ja, label %bb.f, label %.preheader.i, !llvm.loop !31

.lr.ph145.split.i:                                ; preds = %.lr.ph145.split.i.preheader, %bb.ad
  %.1142.i = phi i64 [ %i.lv, %bb.ad ], [ %.0.lcssa.i, %.lr.ph145.split.i.preheader ] ; 5 uses
  br i1 %.not.i.i98.i, label %_ZN5faiss16pq_code_distance33pq_code_distance_8bit_single_implILNS_9SIMDLevelE0EEEfmPKfPKh.exit.i, label %.lr.ph.i.i99.preheader.i

.lr.ph.i.i99.preheader.i:                         ; preds = %.lr.ph145.split.i
  %i.jb = mul i64 %.1142.i, %0
  %i.jc = getelementptr inbounds nuw i8, ptr %2, i64 %i.jb ; 2 uses
  br i1 %i.j, label %.lr.ph.i.i99.i.epil.preheader, label %.lr.ph.i.i99.i

.lr.ph.i.i99.i:                                   ; preds = %.lr.ph.i.i99.preheader.i, %.lr.ph.i.i99.i
  %.01115.i.i.i = phi float [ %i.kd, %.lr.ph.i.i99.i ], [ 0.000000e+00, %.lr.ph.i.i99.preheader.i ]
  %.01214.i.i.i = phi ptr [ %i.ke, %.lr.ph.i.i99.i ], [ %1, %.lr.ph.i.i99.preheader.i ] ; 5 uses
  %.sroa.0.013.i.i.i = phi ptr [ %i.jy, %.lr.ph.i.i99.i ], [ %i.jc, %.lr.ph.i.i99.preheader.i ] ; 5 uses
  %niter295 = phi i64 [ %niter295.next.3, %.lr.ph.i.i99.i ], [ 0, %.lr.ph.i.i99.preheader.i ]
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i.i.i, i64 1
  %i.je = load i8, ptr %.sroa.0.013.i.i.i, align 1, !tbaa !15
  %i.jf = zext i8 %i.je to i64
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %.01214.i.i.i, i64 %i.jf
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !12
  %i.ji = fadd float %.01115.i.i.i, %i.jh
  %i.jj = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 1024
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i.i.i, i64 2
  %i.jl = load i8, ptr %i.jd, align 1, !tbaa !15
  %i.jm = zext i8 %i.jl to i64
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.jm
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !12
  %i.jp = fadd float %i.ji, %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 2048
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i.i.i, i64 3
  %i.js = load i8, ptr %i.jk, align 1, !tbaa !15
  %i.jt = zext i8 %i.js to i64
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.jt
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !12
  %i.jw = fadd float %i.jp, %i.jv
  %i.jx = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 3072
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i.i.i, i64 4 ; 2 uses
  %i.jz = load i8, ptr %i.jr, align 1, !tbaa !15
  %i.ka = zext i8 %i.jz to i64
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.ka
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !12
  %i.kd = fadd float %i.jw, %i.kc                 ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 4096 ; 2 uses
  %niter295.next.3 = add nuw i64 %niter295, 4     ; 2 uses
  %niter295.ncmp.3 = icmp eq i64 %niter295.next.3, %unroll_iter294
  br i1 %niter295.ncmp.3, label %_ZN5faiss16pq_code_distance33pq_code_distance_8bit_single_implILNS_9SIMDLevelE0EEEfmPKfPKh.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i99.i, !llvm.loop !0

_ZN5faiss16pq_code_distance33pq_code_distance_8bit_single_implILNS_9SIMDLevelE0EEEfmPKfPKh.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i99.i
  br i1 %lcmp.mod291.not, label %_ZN5faiss16pq_code_distance33pq_code_distance_8bit_single_implILNS_9SIMDLevelE0EEEfmPKfPKh.exit.i, label %.lr.ph.i.i99.i.epil.preheader

.lr.ph.i.i99.i.epil.preheader:                    ; preds = %_ZN5faiss16pq_code_distance33pq_code_distance_8bit_single_implILNS_9SIMDLevelE0EEEfmPKfPKh.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i99.preheader.i
  %.01115.i.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i.i99.preheader.i ], [ %i.kd, %_ZN5faiss16pq_code_distance33pq_code_distance_8bit_single_implILNS_9SIMDLevelE0EEEfmPKfPKh.exit.i.loopexit.unr-lcssa ]
  %.01214.i.i.i.epil.init = phi ptr [ %1, %.lr.ph.i.i99.preheader.i ], [ %i.ke, %_ZN5faiss16pq_code_distance33pq_code_distance_8bit_single_implILNS_9SIMDLevelE0EEEfmPKfPKh.exit.i.loopexit.unr-lcssa ]
  %.sroa.0.013.i.i.i.epil.init = phi ptr [ %i.jc, %.lr.ph.i.i99.preheader.i ], [ %i.jy, %_ZN5faiss16pq_code_distance33pq_code_distance_8bit_single_implILNS_9SIMDLevelE0EEEfmPKfPKh.exit.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod293)
  br label %.lr.ph.i.i99.i.epil

.lr.ph.i.i99.i.epil:                              ; preds = %.lr.ph.i.i99.i.epil, %.lr.ph.i.i99.i.epil.preheader
  %.01115.i.i.i.epil = phi float [ %i.kk, %.lr.ph.i.i99.i.epil ], [ %.01115.i.i.i.epil.init, %.lr.ph.i.i99.i.epil.preheader ]
  %.01214.i.i.i.epil = phi ptr [ %i.kl, %.lr.ph.i.i99.i.epil ], [ %.01214.i.i.i.epil.init, %.lr.ph.i.i99.i.epil.preheader ] ; 2 uses
  %.sroa.0.013.i.i.i.epil = phi ptr [ %i.kf, %.lr.ph.i.i99.i.epil ], [ %.sroa.0.013.i.i.i.epil.init, %.lr.ph.i.i99.i.epil.preheader ] ; 2 uses
  %epil.iter290 = phi i64 [ %epil.iter290.next, %.lr.ph.i.i99.i.epil ], [ 0, %.lr.ph.i.i99.i.epil.preheader ]
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i.i.i.epil, i64 1
  %i.kg = load i8, ptr %.sroa.0.013.i.i.i.epil, align 1, !tbaa !15
  %i.kh = zext i8 %i.kg to i64
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %.01214.i.i.i.epil, i64 %i.kh
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !12
  %i.kk = fadd float %.01115.i.i.i.epil, %i.kj    ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.epil, i64 1024
  %epil.iter290.next = add i64 %epil.iter290, 1   ; 2 uses
  %epil.iter290.cmp.not = icmp eq i64 %epil.iter290.next, %xtraiter289
  br i1 %epil.iter290.cmp.not, label %_ZN5faiss16pq_code_distance33pq_code_distance_8bit_single_implILNS_9SIMDLevelE0EEEfmPKfPKh.exit.i, label %.lr.ph.i.i99.i.epil, !llvm.loop !32

_ZN5faiss16pq_code_distance33pq_code_distance_8bit_single_implILNS_9SIMDLevelE0EEEfmPKfPKh.exit.i: ; preds = %_ZN5faiss16pq_code_distance33pq_code_distance_8bit_single_implILNS_9SIMDLevelE0EEEfmPKfPKh.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i99.i.epil, %.lr.ph145.split.i
  %.011.lcssa.i.i.i = phi float [ 0.000000e+00, %.lr.ph145.split.i ], [ %i.kd, %_ZN5faiss16pq_code_distance33pq_code_distance_8bit_single_implILNS_9SIMDLevelE0EEEfmPKfPKh.exit.i.loopexit.unr-lcssa ], [ %i.kk, %.lr.ph.i.i99.i.epil ] ; 6 uses
  %i.km = load float, ptr %5, align 4, !tbaa !12
  %i.kn = fcmp ogt float %i.km, %.011.lcssa.i.i.i
  br i1 %i.kn, label %.lr.ph.i103.i, label %bb.ad

.lr.ph.i103.i:                                    ; preds = %_ZN5faiss16pq_code_distance33pq_code_distance_8bit_single_implILNS_9SIMDLevelE0EEEfmPKfPKh.exit.i, %bb.ac
  %i.ko = phi i64 [ %i.lr, %bb.ac ], [ 3, %_ZN5faiss16pq_code_distance33pq_code_distance_8bit_single_implILNS_9SIMDLevelE0EEEfmPKfPKh.exit.i ]
  %i.kp = phi i64 [ %i.lq, %bb.ac ], [ 2, %_ZN5faiss16pq_code_distance33pq_code_distance_8bit_single_implILNS_9SIMDLevelE0EEEfmPKfPKh.exit.i ] ; 7 uses
  %.056.i104.i = phi i64 [ %.1.i109.i, %bb.ac ], [ 1, %_ZN5faiss16pq_code_distance33pq_code_distance_8bit_single_implILNS_9SIMDLevelE0EEEfmPKfPKh.exit.i ] ; 6 uses
  %i.kq = icmp eq i64 %i.kp, %4
  br i1 %i.kq, label %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i113.i, label %bb.aa

.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i113.i: ; preds = %.lr.ph.i103.i
  %.pre.i114.i = load float, ptr %.phi.trans.insert.i102.i, align 4, !tbaa !12
  br label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i111.i

bb.aa:                                            ; preds = %.lr.ph.i103.i
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.kp
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !12 ; 4 uses
  %i.kt = getelementptr [4 x i8], ptr %5, i64 %i.kp
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !12 ; 5 uses
  %i.kv = getelementptr [8 x i8], ptr %6, i64 %i.kp
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !51 ; 3 uses
  %i.kx = fcmp ogt float %i.ks, %i.ku
  br i1 %i.kx, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i111.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i105.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit.i105.i:         ; preds = %bb.aa
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.kp
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !51
  %i.la = fcmp oeq float %i.ks, %i.ku
  %i.lb = icmp sgt i64 %i.kz, %i.kw
  %i.lc = and i1 %i.la, %i.lb
  br i1 %i.lc, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i111.i, label %bb.ab

_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i111.i:  ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i105.i, %bb.aa, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i113.i
  %i.ld = phi float [ %.pre.i114.i, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i113.i ], [ %i.ks, %bb.aa ], [ %i.ks, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i105.i ] ; 3 uses
  %i.le = fcmp ogt float %.011.lcssa.i.i.i, %i.ld
  br i1 %i.le, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit115.loopexit.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i112.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i112.i:       ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i111.i
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.kp
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !51 ; 2 uses
  %i.lh = fcmp oeq float %.011.lcssa.i.i.i, %i.ld
  %i.li = icmp sgt i64 %.1142.i, %i.lg
  %i.lj = and i1 %i.lh, %i.li
  br i1 %i.lj, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit115.loopexit.i, label %bb.ac

bb.ab:                                            ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i105.i
  %i.lk = fcmp ogt float %.011.lcssa.i.i.i, %i.ku
  br i1 %i.lk, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit115.loopexit.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i106.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i106.i:       ; preds = %bb.ab
  %i.ll = fcmp oeq float %.011.lcssa.i.i.i, %i.ku
  %i.lm = icmp sgt i64 %.1142.i, %i.kw
  %i.ln = and i1 %i.ll, %i.lm
  br i1 %i.ln, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit115.loopexit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i106.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i112.i
  %.sink71.i107.i = phi float [ %i.ld, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i112.i ], [ %i.ku, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i106.i ]
  %.sink.i108.i = phi i64 [ %i.lg, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i112.i ], [ %i.kw, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i106.i ]
  %.1.i109.i = phi i64 [ %i.kp, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i112.i ], [ %i.ko, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i106.i ] ; 3 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.056.i104.i
  store float %.sink71.i107.i, ptr %i.lo, align 4, !tbaa !12
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.056.i104.i
  store i64 %.sink.i108.i, ptr %i.lp, align 8, !tbaa !51
  %i.lq = shl i64 %.1.i109.i, 1                   ; 3 uses
  %i.lr = or disjoint i64 %i.lq, 1
  %i.ls = icmp ugt i64 %i.lq, %4
  br i1 %i.ls, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit115.loopexit.i, label %.lr.ph.i103.i, !llvm.loop !30

_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit115.loopexit.i: ; preds = %bb.ac, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i106.i, %bb.ab, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i112.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i111.i
  %.0.lcssa.i110.ph.i = phi i64 [ %.1.i109.i, %bb.ac ], [ %.056.i104.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i112.i ], [ %.056.i104.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i106.i ], [ %.056.i104.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i111.i ], [ %.056.i104.i, %bb.ab ] ; 2 uses
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.0.lcssa.i110.ph.i
  store float %.011.lcssa.i.i.i, ptr %i.lt, align 4, !tbaa !12
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.0.lcssa.i110.ph.i
  store i64 %.1142.i, ptr %i.lu, align 8, !tbaa !51
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit115.loopexit.i, %_ZN5faiss16pq_code_distance33pq_code_distance_8bit_single_implILNS_9SIMDLevelE0EEEfmPKfPKh.exit.i
  %i.lv = add nuw i64 %.1142.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.lv, %3
  br i1 %exitcond.not.i, label %_ZN5faiss16pq_code_distance12_GLOBAL__N_121pq_scan_8bit_at_levelINS_4CMaxIflEEEEvmPKfPKhmmPfPl.exit, label %.lr.ph145.split.i, !llvm.loop !18

bb.ae:                                            ; preds = %bb.a
  br i1 %i.a, label %.lr.ph.i53, label %.preheader.i14

.lr.ph.i53:                                       ; preds = %bb.ae
  %.not.i.i.i54 = icmp eq i64 %0, 0
  %i.lw = getelementptr inbounds i8, ptr %5, i64 -4 ; 13 uses
  %i.lx = getelementptr inbounds i8, ptr %6, i64 -8 ; 16 uses
  %i.ly = icmp ult i64 %4, 2                      ; 4 uses
  %.phi.trans.insert.i.i55 = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %4 ; 4 uses
  br label %bb.ai

.preheader.i14:                                   ; preds = %bb.bc, %bb.ae
  %.0.lcssa.i15 = phi i64 [ 0, %bb.ae ], [ %i.vt, %bb.bc ] ; 7 uses
  %i.lz = icmp ult i64 %.0.lcssa.i15, %3
  br i1 %i.lz, label %.lr.ph145.i16, label %_ZN5faiss16pq_code_distance12_GLOBAL__N_121pq_scan_8bit_at_levelINS_4CMaxIflEEEEvmPKfPKhmmPfPl.exit

.lr.ph145.i16:                                    ; preds = %.preheader.i14
  %.not.i.i98.i17 = icmp eq i64 %0, 0             ; 2 uses
  %i.ma = getelementptr inbounds i8, ptr %5, i64 -4 ; 4 uses
  %i.mb = getelementptr inbounds i8, ptr %6, i64 -8 ; 4 uses
  %i.mc = icmp ult i64 %4, 2
  %.phi.trans.insert.i102.i18 = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %4
  br i1 %i.mc, label %.lr.ph145.split.us.i38, label %.lr.ph145.split.i19.preheader

.lr.ph145.split.i19.preheader:                    ; preds = %.lr.ph145.i16
  %i.md = add i64 %0, -1
  %xtraiter = and i64 %0, 3                       ; 3 uses
  %i.me = icmp ult i64 %i.md, 3
  %unroll_iter = and i64 %0, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod279 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph145.split.i19

.lr.ph145.split.us.i38:                           ; preds = %.lr.ph145.i16
  br i1 %.not.i.i98.i17, label %.lr.ph145.split.us.split.us.i49, label %.lr.ph.i.i99.preheader.us.i39.preheader

.lr.ph.i.i99.preheader.us.i39.preheader:          ; preds = %.lr.ph145.split.us.i38
  %i.mf = add i64 %0, -1
  %xtraiter280 = and i64 %0, 3                    ; 3 uses
  %i.mg = icmp ult i64 %i.mf, 3
end_hunk_0
begin_hunk_1_@_ZN5faiss16pq_code_distance17pq_scan_8bit_implILNS_9SIMDLevelE0EEEvmPKfPKhmmPfPlb:bb.a
  br i1 %i.sn, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit67.i, label %bb.ar

bb.aq:                                            ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i57.i
  %i.so = fcmp olt float %i.rq, %i.ry
  br i1 %i.so, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit67.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i58.i

_ZN5faiss4CMinIflE4cmp2Effll.exit55.i58.i:        ; preds = %bb.aq
  %i.sp = fcmp oeq float %i.rq, %i.ry
  %i.sq = icmp slt i64 %i.os, %i.sa
  %i.sr = and i1 %i.sp, %i.sq
  br i1 %i.sr, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit67.i, label %bb.ar

bb.ar:                                            ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i58.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i64.i
  %.sink71.i59.i92 = phi float [ %i.sh, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i64.i ], [ %i.ry, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i58.i ]
  %.sink.i60.i93 = phi i64 [ %i.sk, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i64.i ], [ %i.sa, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i58.i ]
  %.1.i61.i94 = phi i64 [ %i.rt, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i64.i ], [ %i.rs, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i58.i ] ; 3 uses
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %.056.i56.i91
  store float %.sink71.i59.i92, ptr %i.ss, align 4, !tbaa !12
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %.056.i56.i91
  store i64 %.sink.i60.i93, ptr %i.st, align 8, !tbaa !51
  %i.su = shl i64 %.1.i61.i94, 1                  ; 3 uses
  %i.sv = or disjoint i64 %i.su, 1
  %i.sw = icmp ugt i64 %i.su, %4
  br i1 %i.sw, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit67.i, label %.lr.ph.i55.i90, !llvm.loop !47

_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit67.i: ; preds = %bb.ar, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i58.i, %bb.aq, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i64.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i63.i, %bb.ao
  %.0.lcssa.i62.i95 = phi i64 [ 1, %bb.ao ], [ %.056.i56.i91, %bb.aq ], [ %.056.i56.i91, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i63.i ], [ %.056.i56.i91, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i58.i ], [ %.056.i56.i91, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i64.i ], [ %.1.i61.i94, %bb.ar ] ; 2 uses
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %.0.lcssa.i62.i95
  store float %i.rq, ptr %i.sx, align 4, !tbaa !12
  %i.sy = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %.0.lcssa.i62.i95
  store i64 %i.os, ptr %i.sy, align 8, !tbaa !51
  %.pre157.i96 = load float, ptr %5, align 4, !tbaa !12
  br label %bb.as

bb.as:                                            ; preds = %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit67.i, %bb.an
  %i.sz = phi float [ %.pre157.i96, %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit67.i ], [ %i.rp, %bb.an ] ; 2 uses
  %i.ta = extractelement <4 x float> %i.qe, i64 2 ; 6 uses
  %i.tb = fcmp olt float %i.sz, %i.ta
  br i1 %i.tb, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  br i1 %i.ly, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit82.i, label %.lr.ph.i70.i82

.lr.ph.i70.i82:                                   ; preds = %bb.at, %bb.aw
  %i.tc = phi i64 [ %i.uf, %bb.aw ], [ 3, %bb.at ]
  %i.td = phi i64 [ %i.ue, %bb.aw ], [ 2, %bb.at ] ; 7 uses
  %.056.i71.i83 = phi i64 [ %.1.i76.i86, %bb.aw ], [ 1, %bb.at ] ; 6 uses
  %i.te = icmp eq i64 %i.td, %4
  br i1 %i.te, label %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i80.i, label %bb.au

.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i80.i: ; preds = %.lr.ph.i70.i82
  %.pre.i81.i89 = load float, ptr %.phi.trans.insert.i.i55, align 4, !tbaa !12
  br label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i78.i

bb.au:                                            ; preds = %.lr.ph.i70.i82
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %i.td
  %i.tg = load float, ptr %i.tf, align 4, !tbaa !12 ; 4 uses
  %i.th = getelementptr [4 x i8], ptr %5, i64 %i.td
  %i.ti = load float, ptr %i.th, align 4, !tbaa !12 ; 5 uses
  %i.tj = getelementptr [8 x i8], ptr %6, i64 %i.td
  %i.tk = load i64, ptr %i.tj, align 8, !tbaa !51 ; 3 uses
  %i.tl = fcmp olt float %i.tg, %i.ti
  br i1 %i.tl, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i78.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.i72.i

_ZN5faiss4CMinIflE4cmp2Effll.exit.i72.i:          ; preds = %bb.au
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %i.td
  %i.tn = load i64, ptr %i.tm, align 8, !tbaa !51
  %i.to = fcmp oeq float %i.tg, %i.ti
  %i.tp = icmp slt i64 %i.tn, %i.tk
  %i.tq = and i1 %i.to, %i.tp
  br i1 %i.tq, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i78.i, label %bb.av

_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i78.i:   ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i72.i, %bb.au, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i80.i
  %i.tr = phi float [ %.pre.i81.i89, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i80.i ], [ %i.tg, %bb.au ], [ %i.tg, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i72.i ] ; 3 uses
  %i.ts = fcmp olt float %i.ta, %i.tr
  br i1 %i.ts, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit82.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i79.i

_ZN5faiss4CMinIflE4cmp2Effll.exit54.i79.i:        ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i78.i
  %i.tt = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %i.td
  %i.tu = load i64, ptr %i.tt, align 8, !tbaa !51 ; 2 uses
  %i.tv = fcmp oeq float %i.ta, %i.tr
  %i.tw = icmp slt i64 %i.ot, %i.tu
  %i.tx = and i1 %i.tv, %i.tw
  br i1 %i.tx, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit82.i, label %bb.aw

bb.av:                                            ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i72.i
  %i.ty = fcmp olt float %i.ta, %i.ti
  br i1 %i.ty, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit82.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i73.i

_ZN5faiss4CMinIflE4cmp2Effll.exit55.i73.i:        ; preds = %bb.av
  %i.tz = fcmp oeq float %i.ta, %i.ti
  %i.ua = icmp slt i64 %i.ot, %i.tk
  %i.ub = and i1 %i.tz, %i.ua
  br i1 %i.ub, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit82.i, label %bb.aw

bb.aw:                                            ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i73.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i79.i
  %.sink71.i74.i84 = phi float [ %i.tr, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i79.i ], [ %i.ti, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i73.i ]
  %.sink.i75.i85 = phi i64 [ %i.tu, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i79.i ], [ %i.tk, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i73.i ]
  %.1.i76.i86 = phi i64 [ %i.td, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i79.i ], [ %i.tc, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i73.i ] ; 3 uses
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %.056.i71.i83
  store float %.sink71.i74.i84, ptr %i.uc, align 4, !tbaa !12
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %.056.i71.i83
  store i64 %.sink.i75.i85, ptr %i.ud, align 8, !tbaa !51
  %i.ue = shl i64 %.1.i76.i86, 1                  ; 3 uses
  %i.uf = or disjoint i64 %i.ue, 1
  %i.ug = icmp ugt i64 %i.ue, %4
  br i1 %i.ug, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit82.i, label %.lr.ph.i70.i82, !llvm.loop !47

_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit82.i: ; preds = %bb.aw, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i73.i, %bb.av, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i79.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i78.i, %bb.at
  %.0.lcssa.i77.i87 = phi i64 [ 1, %bb.at ], [ %.056.i71.i83, %bb.av ], [ %.056.i71.i83, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i78.i ], [ %.056.i71.i83, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i73.i ], [ %.056.i71.i83, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i79.i ], [ %.1.i76.i86, %bb.aw ] ; 2 uses
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %.0.lcssa.i77.i87
  store float %i.ta, ptr %i.uh, align 4, !tbaa !12
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %.0.lcssa.i77.i87
  store i64 %i.ot, ptr %i.ui, align 8, !tbaa !51
  %.pre158.i88 = load float, ptr %5, align 4, !tbaa !12
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit82.i, %bb.as
  %i.uj = phi float [ %.pre158.i88, %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit82.i ], [ %i.sz, %bb.as ]
  %i.uk = extractelement <4 x float> %i.qe, i64 3 ; 6 uses
  %i.ul = fcmp olt float %i.uj, %i.uk
  br i1 %i.ul, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.ly, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit97.i, label %.lr.ph.i85.i75

.lr.ph.i85.i75:                                   ; preds = %bb.ay, %bb.bb
  %i.um = phi i64 [ %i.vp, %bb.bb ], [ 3, %bb.ay ]
  %i.un = phi i64 [ %i.vo, %bb.bb ], [ 2, %bb.ay ] ; 7 uses
  %.056.i86.i76 = phi i64 [ %.1.i91.i79, %bb.bb ], [ 1, %bb.ay ] ; 6 uses
  %i.uo = icmp eq i64 %i.un, %4
  br i1 %i.uo, label %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i95.i, label %bb.az

.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i95.i: ; preds = %.lr.ph.i85.i75
  %.pre.i96.i81 = load float, ptr %.phi.trans.insert.i.i55, align 4, !tbaa !12
  br label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i93.i

bb.az:                                            ; preds = %.lr.ph.i85.i75
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %i.un
  %i.uq = load float, ptr %i.up, align 4, !tbaa !12 ; 4 uses
  %i.ur = getelementptr [4 x i8], ptr %5, i64 %i.un
  %i.us = load float, ptr %i.ur, align 4, !tbaa !12 ; 5 uses
  %i.ut = getelementptr [8 x i8], ptr %6, i64 %i.un
  %i.uu = load i64, ptr %i.ut, align 8, !tbaa !51 ; 3 uses
  %i.uv = fcmp olt float %i.uq, %i.us
  br i1 %i.uv, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i93.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.i87.i

_ZN5faiss4CMinIflE4cmp2Effll.exit.i87.i:          ; preds = %bb.az
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %i.un
  %i.ux = load i64, ptr %i.uw, align 8, !tbaa !51
  %i.uy = fcmp oeq float %i.uq, %i.us
  %i.uz = icmp slt i64 %i.ux, %i.uu
  %i.va = and i1 %i.uy, %i.uz
  br i1 %i.va, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i93.i, label %bb.ba

_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i93.i:   ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i87.i, %bb.az, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i95.i
  %i.vb = phi float [ %.pre.i96.i81, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i95.i ], [ %i.uq, %bb.az ], [ %i.uq, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i87.i ] ; 3 uses
  %i.vc = fcmp olt float %i.uk, %i.vb
  br i1 %i.vc, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit97.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i94.i

_ZN5faiss4CMinIflE4cmp2Effll.exit54.i94.i:        ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i93.i
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %i.un
  %i.ve = load i64, ptr %i.vd, align 8, !tbaa !51 ; 2 uses
  %i.vf = fcmp oeq float %i.uk, %i.vb
  %i.vg = icmp slt i64 %i.or, %i.ve
  %i.vh = and i1 %i.vf, %i.vg
  br i1 %i.vh, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit97.i, label %bb.bb

bb.ba:                                            ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i87.i
  %i.vi = fcmp olt float %i.uk, %i.us
  br i1 %i.vi, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit97.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i88.i

_ZN5faiss4CMinIflE4cmp2Effll.exit55.i88.i:        ; preds = %bb.ba
  %i.vj = fcmp oeq float %i.uk, %i.us
  %i.vk = icmp slt i64 %i.or, %i.uu
  %i.vl = and i1 %i.vj, %i.vk
  br i1 %i.vl, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit97.i, label %bb.bb

bb.bb:                                            ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i88.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i94.i
  %.sink71.i89.i77 = phi float [ %i.vb, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i94.i ], [ %i.us, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i88.i ]
  %.sink.i90.i78 = phi i64 [ %i.ve, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i94.i ], [ %i.uu, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i88.i ]
  %.1.i91.i79 = phi i64 [ %i.un, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i94.i ], [ %i.um, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i88.i ] ; 3 uses
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %.056.i86.i76
  store float %.sink71.i89.i77, ptr %i.vm, align 4, !tbaa !12
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %.056.i86.i76
  store i64 %.sink.i90.i78, ptr %i.vn, align 8, !tbaa !51
  %i.vo = shl i64 %.1.i91.i79, 1                  ; 3 uses
  %i.vp = or disjoint i64 %i.vo, 1
  %i.vq = icmp ugt i64 %i.vo, %4
  br i1 %i.vq, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit97.i, label %.lr.ph.i85.i75, !llvm.loop !47

_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit97.i: ; preds = %bb.bb, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i88.i, %bb.ba, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i94.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i93.i, %bb.ay
  %.0.lcssa.i92.i80 = phi i64 [ 1, %bb.ay ], [ %.056.i86.i76, %bb.ba ], [ %.056.i86.i76, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i93.i ], [ %.056.i86.i76, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i88.i ], [ %.056.i86.i76, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i94.i ], [ %.1.i91.i79, %bb.bb ] ; 2 uses
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %.0.lcssa.i92.i80
  store float %i.uk, ptr %i.vr, align 4, !tbaa !12
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %.0.lcssa.i92.i80
  store i64 %i.or, ptr %i.vs, align 8, !tbaa !51
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit97.i, %bb.ax
  %i.vt = add nuw i64 %.0139.i56, 4               ; 3 uses
  %i.vu = or disjoint i64 %i.vt, 3
  %i.vv = icmp ult i64 %i.vu, %3
  br i1 %i.vv, label %bb.ai, label %.preheader.i14, !llvm.loop !48

.lr.ph145.split.i19:                              ; preds = %.lr.ph145.split.i19.preheader, %bb.bg
  %.1142.i20 = phi i64 [ %i.yq, %bb.bg ], [ %.0.lcssa.i15, %.lr.ph145.split.i19.preheader ] ; 5 uses
  br i1 %.not.i.i98.i17, label %_ZN5faiss16pq_code_distance33pq_code_distance_8bit_single_implILNS_9SIMDLevelE0EEEfmPKfPKh.exit.i28, label %.lr.ph.i.i99.preheader.i21

.lr.ph.i.i99.preheader.i21:                       ; preds = %.lr.ph145.split.i19
  %i.vw = mul i64 %.1142.i20, %0
  %i.vx = getelementptr inbounds nuw i8, ptr %2, i64 %i.vw ; 2 uses
  br i1 %i.me, label %.lr.ph.i.i99.i22.epil.preheader, label %.lr.ph.i.i99.i22

.lr.ph.i.i99.i22:                                 ; preds = %.lr.ph.i.i99.preheader.i21, %.lr.ph.i.i99.i22
  %.01115.i.i.i24 = phi float [ %i.wy, %.lr.ph.i.i99.i22 ], [ 0.000000e+00, %.lr.ph.i.i99.preheader.i21 ]
  %.01214.i.i.i25 = phi ptr [ %i.wz, %.lr.ph.i.i99.i22 ], [ %1, %.lr.ph.i.i99.preheader.i21 ] ; 5 uses
  %.sroa.0.013.i.i.i26 = phi ptr [ %i.wt, %.lr.ph.i.i99.i22 ], [ %i.vx, %.lr.ph.i.i99.preheader.i21 ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i99.i22 ], [ 0, %.lr.ph.i.i99.preheader.i21 ]
  %i.vy = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i.i.i26, i64 1
  %i.vz = load i8, ptr %.sroa.0.013.i.i.i26, align 1, !tbaa !15
  %i.wa = zext i8 %i.vz to i64
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %.01214.i.i.i25, i64 %i.wa
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !12
  %i.wd = fadd float %.01115.i.i.i24, %i.wc
  %i.we = getelementptr inbounds nuw i8, ptr %.01214.i.i.i25, i64 1024
  %i.wf = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i.i.i26, i64 2
  %i.wg = load i8, ptr %i.vy, align 1, !tbaa !15
  %i.wh = zext i8 %i.wg to i64
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.we, i64 %i.wh
  %i.wj = load float, ptr %i.wi, align 4, !tbaa !12
  %i.wk = fadd float %i.wd, %i.wj
  %i.wl = getelementptr inbounds nuw i8, ptr %.01214.i.i.i25, i64 2048
  %i.wm = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i.i.i26, i64 3
  %i.wn = load i8, ptr %i.wf, align 1, !tbaa !15
  %i.wo = zext i8 %i.wn to i64
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.wl, i64 %i.wo
  %i.wq = load float, ptr %i.wp, align 4, !tbaa !12
  %i.wr = fadd float %i.wk, %i.wq
  %i.ws = getelementptr inbounds nuw i8, ptr %.01214.i.i.i25, i64 3072
  %i.wt = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i.i.i26, i64 4 ; 2 uses
  %i.wu = load i8, ptr %i.wm, align 1, !tbaa !15
  %i.wv = zext i8 %i.wu to i64
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.ws, i64 %i.wv
  %i.wx = load float, ptr %i.ww, align 4, !tbaa !12
  %i.wy = fadd float %i.wr, %i.wx                 ; 3 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %.01214.i.i.i25, i64 4096 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5faiss16pq_code_distance33pq_code_distance_8bit_single_implILNS_9SIMDLevelE0EEEfmPKfPKh.exit.i28.loopexit.unr-lcssa, label %.lr.ph.i.i99.i22, !llvm.loop !0

_ZN5faiss16pq_code_distance33pq_code_distance_8bit_single_implILNS_9SIMDLevelE0EEEfmPKfPKh.exit.i28.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i99.i22
  br i1 %lcmp.mod.not, label %_ZN5faiss16pq_code_distance33pq_code_distance_8bit_single_implILNS_9SIMDLevelE0EEEfmPKfPKh.exit.i28, label %.lr.ph.i.i99.i22.epil.preheader

.lr.ph.i.i99.i22.epil.preheader:                  ; preds = %_ZN5faiss16pq_code_distance33pq_code_distance_8bit_single_implILNS_9SIMDLevelE0EEEfmPKfPKh.exit.i28.loopexit.unr-lcssa, %.lr.ph.i.i99.preheader.i21
  %.01115.i.i.i24.epil.init = phi float [ 0.000000e+00, %.lr.ph.i.i99.preheader.i21 ], [ %i.wy, %_ZN5faiss16pq_code_distance33pq_code_distance_8bit_single_implILNS_9SIMDLevelE0EEEfmPKfPKh.exit.i28.loopexit.unr-lcssa ]
  %.01214.i.i.i25.epil.init = phi ptr [ %1, %.lr.ph.i.i99.preheader.i21 ], [ %i.wz, %_ZN5faiss16pq_code_distance33pq_code_distance_8bit_single_implILNS_9SIMDLevelE0EEEfmPKfPKh.exit.i28.loopexit.unr-lcssa ]
  %.sroa.0.013.i.i.i26.epil.init = phi ptr [ %i.vx, %.lr.ph.i.i99.preheader.i21 ], [ %i.wt, %_ZN5faiss16pq_code_distance33pq_code_distance_8bit_single_implILNS_9SIMDLevelE0EEEfmPKfPKh.exit.i28.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod279)
  br label %.lr.ph.i.i99.i22.epil

.lr.ph.i.i99.i22.epil:                            ; preds = %.lr.ph.i.i99.i22.epil, %.lr.ph.i.i99.i22.epil.preheader
  %.01115.i.i.i24.epil = phi float [ %i.xf, %.lr.ph.i.i99.i22.epil ], [ %.01115.i.i.i24.epil.init, %.lr.ph.i.i99.i22.epil.preheader ]
  %.01214.i.i.i25.epil = phi ptr [ %i.xg, %.lr.ph.i.i99.i22.epil ], [ %.01214.i.i.i25.epil.init, %.lr.ph.i.i99.i22.epil.preheader ] ; 2 uses
  %.sroa.0.013.i.i.i26.epil = phi ptr [ %i.xa, %.lr.ph.i.i99.i22.epil ], [ %.sroa.0.013.i.i.i26.epil.init, %.lr.ph.i.i99.i22.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i99.i22.epil ], [ 0, %.lr.ph.i.i99.i22.epil.preheader ]
  %i.xa = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i.i.i26.epil, i64 1
  %i.xb = load i8, ptr %.sroa.0.013.i.i.i26.epil, align 1, !tbaa !15
  %i.xc = zext i8 %i.xb to i64
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %.01214.i.i.i25.epil, i64 %i.xc
  %i.xe = load float, ptr %i.xd, align 4, !tbaa !12
  %i.xf = fadd float %.01115.i.i.i24.epil, %i.xe  ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %.01214.i.i.i25.epil, i64 1024
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5faiss16pq_code_distance33pq_code_distance_8bit_single_implILNS_9SIMDLevelE0EEEfmPKfPKh.exit.i28, label %.lr.ph.i.i99.i22.epil, !llvm.loop !49

_ZN5faiss16pq_code_distance33pq_code_distance_8bit_single_implILNS_9SIMDLevelE0EEEfmPKfPKh.exit.i28: ; preds = %_ZN5faiss16pq_code_distance33pq_code_distance_8bit_single_implILNS_9SIMDLevelE0EEEfmPKfPKh.exit.i28.loopexit.unr-lcssa, %.lr.ph.i.i99.i22.epil, %.lr.ph145.split.i19
  %.011.lcssa.i.i.i29 = phi float [ 0.000000e+00, %.lr.ph145.split.i19 ], [ %i.wy, %_ZN5faiss16pq_code_distance33pq_code_distance_8bit_single_implILNS_9SIMDLevelE0EEEfmPKfPKh.exit.i28.loopexit.unr-lcssa ], [ %i.xf, %.lr.ph.i.i99.i22.epil ] ; 6 uses
  %i.xh = load float, ptr %5, align 4, !tbaa !12
  %i.xi = fcmp olt float %i.xh, %.011.lcssa.i.i.i29
  br i1 %i.xi, label %.lr.ph.i103.i31, label %bb.bg

.lr.ph.i103.i31:                                  ; preds = %_ZN5faiss16pq_code_distance33pq_code_distance_8bit_single_implILNS_9SIMDLevelE0EEEfmPKfPKh.exit.i28, %bb.bf
  %i.xj = phi i64 [ %i.ym, %bb.bf ], [ 3, %_ZN5faiss16pq_code_distance33pq_code_distance_8bit_single_implILNS_9SIMDLevelE0EEEfmPKfPKh.exit.i28 ]
  %i.xk = phi i64 [ %i.yl, %bb.bf ], [ 2, %_ZN5faiss16pq_code_distance33pq_code_distance_8bit_single_implILNS_9SIMDLevelE0EEEfmPKfPKh.exit.i28 ] ; 7 uses
  %.056.i104.i32 = phi i64 [ %.1.i109.i35, %bb.bf ], [ 1, %_ZN5faiss16pq_code_distance33pq_code_distance_8bit_single_implILNS_9SIMDLevelE0EEEfmPKfPKh.exit.i28 ] ; 6 uses
  %i.xl = icmp eq i64 %i.xk, %4
  br i1 %i.xl, label %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i113.i, label %bb.bd

.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i113.i: ; preds = %.lr.ph.i103.i31
  %.pre.i114.i37 = load float, ptr %.phi.trans.insert.i102.i18, align 4, !tbaa !12
  br label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i111.i

bb.bd:                                            ; preds = %.lr.ph.i103.i31
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.xk
  %i.xn = load float, ptr %i.xm, align 4, !tbaa !12 ; 4 uses
  %i.xo = getelementptr [4 x i8], ptr %5, i64 %i.xk
  %i.xp = load float, ptr %i.xo, align 4, !tbaa !12 ; 5 uses
  %i.xq = getelementptr [8 x i8], ptr %6, i64 %i.xk
  %i.xr = load i64, ptr %i.xq, align 8, !tbaa !51 ; 3 uses
  %i.xs = fcmp olt float %i.xn, %i.xp
  br i1 %i.xs, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i111.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.i105.i

_ZN5faiss4CMinIflE4cmp2Effll.exit.i105.i:         ; preds = %bb.bd
  %i.xt = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %i.xk
  %i.xu = load i64, ptr %i.xt, align 8, !tbaa !51
  %i.xv = fcmp oeq float %i.xn, %i.xp
  %i.xw = icmp slt i64 %i.xu, %i.xr
  %i.xx = and i1 %i.xv, %i.xw
  br i1 %i.xx, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i111.i, label %bb.be

_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i111.i:  ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i105.i, %bb.bd, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i113.i
  %i.xy = phi float [ %.pre.i114.i37, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i113.i ], [ %i.xn, %bb.bd ], [ %i.xn, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i105.i ] ; 3 uses
  %i.xz = fcmp olt float %.011.lcssa.i.i.i29, %i.xy
  br i1 %i.xz, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit115.loopexit.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i112.i

_ZN5faiss4CMinIflE4cmp2Effll.exit54.i112.i:       ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i111.i
  %i.ya = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %i.xk
  %i.yb = load i64, ptr %i.ya, align 8, !tbaa !51 ; 2 uses
  %i.yc = fcmp oeq float %.011.lcssa.i.i.i29, %i.xy
  %i.yd = icmp slt i64 %.1142.i20, %i.yb
  %i.ye = and i1 %i.yc, %i.yd
  br i1 %i.ye, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit115.loopexit.i, label %bb.bf

bb.be:                                            ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i105.i
  %i.yf = fcmp olt float %.011.lcssa.i.i.i29, %i.xp
  br i1 %i.yf, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit115.loopexit.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i106.i

_ZN5faiss4CMinIflE4cmp2Effll.exit55.i106.i:       ; preds = %bb.be
  %i.yg = fcmp oeq float %.011.lcssa.i.i.i29, %i.xp
  %i.yh = icmp slt i64 %.1142.i20, %i.xr
  %i.yi = and i1 %i.yg, %i.yh
  br i1 %i.yi, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit115.loopexit.i, label %bb.bf

bb.bf:                                            ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i106.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i112.i
  %.sink71.i107.i33 = phi float [ %i.xy, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i112.i ], [ %i.xp, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i106.i ]
  %.sink.i108.i34 = phi i64 [ %i.yb, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i112.i ], [ %i.xr, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i106.i ]
  %.1.i109.i35 = phi i64 [ %i.xk, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i112.i ], [ %i.xj, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i106.i ] ; 3 uses
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %.056.i104.i32
  store float %.sink71.i107.i33, ptr %i.yj, align 4, !tbaa !12
  %i.yk = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %.056.i104.i32
  store i64 %.sink.i108.i34, ptr %i.yk, align 8, !tbaa !51
  %i.yl = shl i64 %.1.i109.i35, 1                 ; 3 uses
  %i.ym = or disjoint i64 %i.yl, 1
  %i.yn = icmp ugt i64 %i.yl, %4
  br i1 %i.yn, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit115.loopexit.i, label %.lr.ph.i103.i31, !llvm.loop !47

_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit115.loopexit.i: ; preds = %bb.bf, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i106.i, %bb.be, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i112.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i111.i
  %.0.lcssa.i110.ph.i36 = phi i64 [ %.1.i109.i35, %bb.bf ], [ %.056.i104.i32, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i112.i ], [ %.056.i104.i32, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i106.i ], [ %.056.i104.i32, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i111.i ], [ %.056.i104.i32, %bb.be ] ; 2 uses
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %.0.lcssa.i110.ph.i36
  store float %.011.lcssa.i.i.i29, ptr %i.yo, align 4, !tbaa !12
  %i.yp = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %.0.lcssa.i110.ph.i36
  store i64 %.1142.i20, ptr %i.yp, align 8, !tbaa !51
  br label %bb.bg

bb.bg:                                            ; preds = %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit115.loopexit.i, %_ZN5faiss16pq_code_distance33pq_code_distance_8bit_single_implILNS_9SIMDLevelE0EEEfmPKfPKh.exit.i28
  %i.yq = add nuw i64 %.1142.i20, 1               ; 2 uses
  %exitcond.not.i30 = icmp eq i64 %i.yq, %3
  br i1 %exitcond.not.i30, label %_ZN5faiss16pq_code_distance12_GLOBAL__N_121pq_scan_8bit_at_levelINS_4CMaxIflEEEEvmPKfPKhmmPfPl.exit, label %.lr.ph145.split.i19, !llvm.loop !35

_ZN5faiss16pq_code_distance12_GLOBAL__N_121pq_scan_8bit_at_levelINS_4CMaxIflEEEEvmPKfPKhmmPfPl.exit: ; preds = %bb.bg, %bb.ah, %_ZN5faiss16pq_code_distance33pq_code_distance_8bit_single_implILNS_9SIMDLevelE0EEEfmPKfPKh.exit.us.us.i50.prol.loopexit, %bb.ag, %bb.ad, %bb.e, %_ZN5faiss16pq_code_distance33pq_code_distance_8bit_single_implILNS_9SIMDLevelE0EEEfmPKfPKh.exit.us.us.i.prol.loopexit, %bb.d, %.lr.ph145.split.us.split.us.i49, %.preheader.i14, %.lr.ph145.split.us.split.us.i, %.preheader.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN5faiss16pq_code_distance12pq_scan_8bitEmPKfPKhmmPfPlb(i64 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6, i1 noundef zeroext %7) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN5faiss16pq_code_distance17pq_scan_8bit_implILNS_9SIMDLevelE0EEEvmPKfPKhmmPfPlb(i64 noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, i1 noundef zeroext %7)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef float @_ZN5faiss16pq_code_distance28pq_code_distance_8bit_singleEmPKfPKh(i64 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %.not.i.i.i.i.i.i = icmp eq i64 %0, 0
  br i1 %.not.i.i.i.i.i.i, label %"_ZN5faiss15with_simd_levelIZNS_16pq_code_distance28pq_code_distance_8bit_singleEmPKfPKhE3$_0EEDaOT_.exit", label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.a
  %xtraiter = and i64 %0, 3                       ; 3 uses
  %i.a = icmp ult i64 %0, 4
  br i1 %i.a, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %0, -4
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.new
  %.01115.i.i.i.i.i.i = phi float [ 0.000000e+00, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.ab, %.lr.ph.i.i.i.i.i.i ]
  %.01214.i.i.i.i.i.i = phi ptr [ %1, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.ac, %.lr.ph.i.i.i.i.i.i ] ; 5 uses
  %.sroa.0.013.i.i.i.i.i.i = phi ptr [ %2, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.w, %.lr.ph.i.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i.i ]
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i.i.i.i.i.i, i64 1
  %i.c = load i8, ptr %.sroa.0.013.i.i.i.i.i.i, align 1, !tbaa !15
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %.01214.i.i.i.i.i.i, i64 %i.d
  %i.f = load float, ptr %i.e, align 4, !tbaa !12
  %i.g = fadd float %.01115.i.i.i.i.i.i, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 1024
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i.i.i.i.i.i, i64 2
  %i.j = load i8, ptr %i.b, align 1, !tbaa !15
end_hunk_1
