Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution1d_x86_avx?download=true
inline.NumInlined: 21
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN4ncnn21Convolution1D_x86_avx15create_pipelineERKNS_6OptionE:bb.a
  %i.dv = and i32 %i.du, 1
  %i.dw = lshr i32 %i.n, 1
  %i.dx = and i32 %i.dw, 1
  %i.dy = and i32 %i.n, 1
  %i.dz = add nuw nsw i32 %i.dy, %i.dt
  %i.ea = add nuw nsw i32 %i.dz, %i.dv
  %i.eb = add nuw nsw i32 %i.ea, %i.dx
  %i.ec = and i32 %i.m, 1
  %i.ed = add nuw nsw i32 %i.ec, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.ds, i32 noundef %i.eb, i32 noundef %i.ed, i64 noundef 4, ptr noundef null)
  br label %.preheader1103.i

bb.w:                                             ; preds = %bb.u
  %i.ee = icmp sgt i32 %i.n, 3
  br i1 %i.ee, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ef = shl nsw i32 %i.j, 3
  %i.eg = lshr i32 %i.n, 1
  %i.eh = and i32 %i.eg, 1
  %i.ei = and i32 %i.n, 1
  %i.ej = add nuw nsw i32 %i.ei, 1
  %i.ek = add nuw nsw i32 %i.ej, %i.eh
  %i.el = and i32 %i.m, 1
  %i.em = add nuw nsw i32 %i.el, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.ef, i32 noundef %i.ek, i32 noundef %i.em, i64 noundef 4, ptr noundef null)
  br label %.preheader1103.i

bb.y:                                             ; preds = %bb.w
  %i.en = icmp sgt i32 %i.n, 1
  br i1 %i.en, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.eo = shl nsw i32 %i.j, 2
  %i.ep = and i32 %i.n, 1
  %i.eq = add nuw nsw i32 %i.ep, 1
  %i.er = and i32 %i.m, 1
  %i.es = add nuw nsw i32 %i.er, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.eo, i32 noundef %i.eq, i32 noundef %i.es, i64 noundef 4, ptr noundef null)
  br label %.preheader1103.i

bb.aa:                                            ; preds = %bb.y
  %i.et = shl nsw i32 %i.j, 1
  %i.eu = and i32 %i.m, 1
  %i.ev = add nuw nsw i32 %i.eu, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.et, i32 noundef %i.n, i32 noundef %i.ev, i64 noundef 4, ptr noundef null)
  br label %.preheader1103.i

bb.ab:                                            ; preds = %bb.t
  br i1 %i.dr, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ew = shl nsw i32 %i.j, 3
  %i.ex = lshr i32 %i.n, 3
  %i.ey = lshr i32 %i.n, 2
  %i.ez = and i32 %i.ey, 1
  %i.fa = lshr i32 %i.n, 1
  %i.fb = and i32 %i.fa, 1
  %i.fc = and i32 %i.n, 1
  %i.fd = add nuw nsw i32 %i.fc, %i.ex
  %i.fe = add nuw nsw i32 %i.fd, %i.ez
  %i.ff = add nuw nsw i32 %i.fe, %i.fb
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.ew, i32 noundef %i.ff, i32 noundef %i.m, i64 noundef 4, ptr noundef null)
  br label %.preheader1103.i

bb.ad:                                            ; preds = %bb.ab
  %i.fg = icmp sgt i32 %i.n, 3
  br i1 %i.fg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fh = shl nsw i32 %i.j, 2
  %i.fi = lshr i32 %i.n, 1
  %i.fj = and i32 %i.fi, 1
  %i.fk = and i32 %i.n, 1
  %i.fl = add nuw nsw i32 %i.fk, 1
  %i.fm = add nuw nsw i32 %i.fl, %i.fj
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.fh, i32 noundef %i.fm, i32 noundef %i.m, i64 noundef 4, ptr noundef null)
  br label %.preheader1103.i

bb.af:                                            ; preds = %bb.ad
  %i.fn = icmp sgt i32 %i.n, 1
  br i1 %i.fn, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fo = shl nsw i32 %i.j, 1
  %i.fp = and i32 %i.n, 1
  %i.fq = add nuw nsw i32 %i.fp, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.fo, i32 noundef %i.fq, i32 noundef %i.m, i64 noundef 4, ptr noundef null)
  br label %.preheader1103.i

bb.ah:                                            ; preds = %bb.af
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.j, i32 noundef %i.n, i32 noundef %i.m, i64 noundef 4, ptr noundef null)
  br label %.preheader1103.i

_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i:                ; preds = %bb.k, %bb.j, %bb.h, %bb.f
  %i.fr = load ptr, ptr %i.o, align 8, !tbaa !18  ; 9 uses
  %i.fs = mul i32 %i.n, %i.j                      ; 16 uses
  %i.ft = load ptr, ptr %i.p, align 8, !tbaa !18, !noalias !46
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !20, !noalias !46
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !49, !noalias !46
  %factor.op.mul.i = mul i64 %i.fx, %i.fv
  %i.fy = icmp sgt i32 %i.j, 0                    ; 3 uses
  %i.fz = sext i32 %i.j to i64                    ; 88 uses
  %i.ga = shl i32 %i.j, 3
  %i.gb = sext i32 %i.ga to i64                   ; 9 uses
  %i.gc = shl i32 %i.j, 2
  %i.gd = sext i32 %i.gc to i64                   ; 9 uses
  %i.ge = shl i32 %i.j, 1
  %i.gf = sext i32 %i.ge to i64                   ; 8 uses
  %i.gg = icmp slt i32 %i.j, 1
  %i.gh = add i32 %i.n, -8                        ; 2 uses
  %i.gi = lshr i32 %i.gh, 1
  %i.gj = and i32 %i.gi, 2147483644
  %narrow.i = add nuw i32 %i.gj, 4
  %i.gk = zext i32 %narrow.i to i64
  %i.gl = mul nsw i64 %i.gk, %i.gb
  %scevgep.i = getelementptr i8, ptr %i.fr, i64 %i.gl ; 8 uses
  %i.gm = shl i32 %i.fs, 3                        ; 8 uses
  %i.gn = shl i32 %i.fs, 1
  %i.go = mul i32 %i.fs, 3
  %i.gp = shl i32 %i.fs, 2
  %i.gq = mul i32 %i.fs, 5
  %i.gr = mul i32 %i.fs, 6
  %i.gs = mul i32 %i.fs, 7
  %i.gt = and i32 %i.gh, -8
  %i.gu = add i32 %i.gt, 8                        ; 4 uses
  %i.gv = add i32 %i.n, -4
  %i.gw = zext nneg i32 %i.m to i64
  %i.gx = or disjoint i32 %i.gu, 3
  %i.gy = icmp slt i32 %i.gx, %i.n
  %wide.trip.count.i = zext i32 %i.j to i64       ; 8 uses
  %i.gz = shl nuw nsw i64 %wide.trip.count.i, 5
  %i.ha = shl nuw nsw i64 %wide.trip.count.i, 2   ; 8 uses
  %min.iters.check = icmp ult i32 %i.j, 16
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 4 uses
  %i.hb = shl nuw nsw i64 %n.vec, 5
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %_ZN4ncnn3MatD2Ev.exit1005.i

.preheader1103.loopexit.i:                        ; preds = %._crit_edge1244.split.i
  %i.hc = trunc nuw nsw i64 %indvars.iv.next1684.i to i32
  br label %.preheader1103.i

.preheader1103.i:                                 ; preds = %.preheader1103.loopexit.i, %bb.ah, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.z, %bb.x, %bb.v, %bb.s, %bb.r, %bb.p, %bb.n
  %.0.lcssa.i = phi i32 [ %i.hc, %.preheader1103.loopexit.i ], [ 0, %bb.p ], [ 0, %bb.s ], [ 0, %bb.r ], [ 0, %bb.n ], [ 0, %bb.ac ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ 0, %bb.ae ], [ 0, %bb.v ], [ 0, %bb.z ], [ 0, %bb.aa ], [ 0, %bb.x ] ; 7 uses
  %i.hd = or disjoint i32 %.0.lcssa.i, 3          ; 2 uses
  %i.he = icmp slt i32 %i.hd, %i.m
  br i1 %i.he, label %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i, label %.preheader1095.i

_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i:                ; preds = %.preheader1103.i
  %i.hf = load ptr, ptr %i.o, align 8, !tbaa !18  ; 5 uses
  %i.hg = mul i32 %i.n, %i.j                      ; 9 uses
  %i.hh = load ptr, ptr %i.p, align 8, !tbaa !18, !noalias !50
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !20, !noalias !50
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !49, !noalias !50
  %factor.op.mul1340.i = mul i64 %i.hl, %i.hj
  %i.hm = icmp sgt i32 %i.n, 7
  %i.hn = icmp sgt i32 %i.j, 0                    ; 3 uses
  %i.ho = sext i32 %i.j to i64                    ; 49 uses
  %i.hp = shl i32 %i.j, 3
  %i.hq = sext i32 %i.hp to i64                   ; 5 uses
  %i.hr = shl i32 %i.j, 2
  %i.hs = sext i32 %i.hr to i64                   ; 5 uses
  %i.ht = shl i32 %i.j, 1                         ; 2 uses
  %i.hu = sext i32 %i.ht to i64                   ; 5 uses
  %i.hv = icmp slt i32 %i.j, 1
  %i.hw = add i32 %i.n, -8                        ; 2 uses
  %i.hx = lshr i32 %i.hw, 1
  %i.hy = and i32 %i.hx, 2147483644
  %narrow1837.i = add nuw i32 %i.hy, 4
  %i.hz = zext i32 %narrow1837.i to i64
  %i.ia = mul nsw i64 %i.hz, %i.hq
  %scevgep1686.i = getelementptr i8, ptr %i.hf, i64 %i.ia ; 4 uses
  %i.ib = mul i32 %i.hg, %.0.lcssa.i
  %i.ic = shl i32 %i.hg, 2                        ; 4 uses
  %i.id = add nuw nsw i32 %.0.lcssa.i, 1
  %i.ie = mul i32 %i.id, %i.hg
  %i.if = add nuw nsw i32 %.0.lcssa.i, 2
  %i.ig = mul i32 %i.if, %i.hg
  %i.ih = mul i32 %i.hd, %i.hg
  %i.ii = and i32 %i.hw, -8
  %i.ij = add i32 %i.ii, 8                        ; 4 uses
  %i.ik = add i32 %i.n, -4
  %i.il = zext nneg i32 %.0.lcssa.i to i64
  %i.im = add i32 %.0.lcssa.i, 3
  %i.in = sext i32 %i.m to i64
  %i.io = or disjoint i32 %i.ij, 3
  %i.ip = icmp slt i32 %i.io, %i.n
  %wide.trip.count1706.i = zext i32 %i.j to i64   ; 13 uses
  %invariant.op.i = add nsw i64 %i.in, -3
  %i.iq = shl nuw nsw i64 %wide.trip.count1706.i, 4
  %i.ir = shl nuw nsw i64 %wide.trip.count1706.i, 2 ; 9 uses
  %i.is = shl nuw nsw i64 %wide.trip.count1706.i, 5
  %i.it = shl nuw nsw i64 %i.ho, 2                ; 5 uses
  %i.iu = add nuw nsw i64 %i.it, %i.ir            ; 4 uses
  %i.iv = shl nsw i64 %i.hu, 2
  %min.iters.check434 = icmp ult i32 %i.j, 16
  %stride.check401 = icmp slt i32 %i.ht, 0
  %n.vec436 = and i64 %wide.trip.count1706.i, 2147483640 ; 4 uses
  %i.iw = shl nuw nsw i64 %n.vec436, 5
  %cmp.n451 = icmp eq i64 %n.vec436, %wide.trip.count1706.i
  %min.iters.check357 = icmp ult i32 %i.j, 8
  %n.vec359 = and i64 %wide.trip.count1706.i, 2147483640 ; 4 uses
  %i.ix = shl nuw nsw i64 %n.vec359, 4
  %cmp.n370 = icmp eq i64 %n.vec359, %wide.trip.count1706.i
  %xtraiter = and i64 %wide.trip.count1706.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.iy = add nsw i64 %wide.trip.count1706.i, -1
  br label %_ZN4ncnn3MatD2Ev.exit1004.i

_ZN4ncnn3MatD2Ev.exit1005.i:                      ; preds = %._crit_edge1244.split.i, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i
  %indvars.iv1683.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1684.i, %._crit_edge1244.split.i ] ; 3 uses
  %indvars.iv1644.i = phi i32 [ %i.gs, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1645.i, %._crit_edge1244.split.i ] ; 2 uses
  %indvars.iv1640.i = phi i32 [ %i.gr, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1641.i, %._crit_edge1244.split.i ] ; 2 uses
  %indvars.iv1636.i = phi i32 [ %i.gq, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1637.i, %._crit_edge1244.split.i ] ; 2 uses
  %indvars.iv1632.i = phi i32 [ %i.gp, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1633.i, %._crit_edge1244.split.i ] ; 2 uses
  %indvars.iv1628.i = phi i32 [ %i.go, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1629.i, %._crit_edge1244.split.i ] ; 2 uses
  %indvars.iv1624.i = phi i32 [ %i.gn, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1625.i, %._crit_edge1244.split.i ] ; 2 uses
  %indvars.iv1620.i = phi i32 [ %i.fs, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1621.i, %._crit_edge1244.split.i ] ; 2 uses
  %indvars.iv.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next.i, %._crit_edge1244.split.i ] ; 2 uses
  %i.iz = sext i32 %indvars.iv.i to i64
  %i.ja = shl nsw i64 %i.iz, 2
  %scevgep1618.i = getelementptr i8, ptr %scevgep.i, i64 %i.ja ; 2 uses
  %i.jb = sext i32 %indvars.iv1620.i to i64
  %i.jc = shl nsw i64 %i.jb, 2
  %scevgep1622.i = getelementptr i8, ptr %scevgep.i, i64 %i.jc ; 2 uses
  %i.jd = sext i32 %indvars.iv1624.i to i64
  %i.je = shl nsw i64 %i.jd, 2
  %scevgep1626.i = getelementptr i8, ptr %scevgep.i, i64 %i.je ; 2 uses
  %i.jf = sext i32 %indvars.iv1628.i to i64
  %i.jg = shl nsw i64 %i.jf, 2
  %scevgep1630.i = getelementptr i8, ptr %scevgep.i, i64 %i.jg ; 2 uses
  %i.jh = sext i32 %indvars.iv1632.i to i64
  %i.ji = shl nsw i64 %i.jh, 2
  %scevgep1634.i = getelementptr i8, ptr %scevgep.i, i64 %i.ji ; 2 uses
  %i.jj = sext i32 %indvars.iv1636.i to i64
  %i.jk = shl nsw i64 %i.jj, 2
  %scevgep1638.i = getelementptr i8, ptr %scevgep.i, i64 %i.jk ; 2 uses
  %i.jl = sext i32 %indvars.iv1640.i to i64
  %i.jm = shl nsw i64 %i.jl, 2
  %scevgep1642.i = getelementptr i8, ptr %scevgep.i, i64 %i.jm ; 2 uses
  %i.jn = sext i32 %indvars.iv1644.i to i64
  %i.jo = shl nsw i64 %i.jn, 2
  %scevgep1646.i = getelementptr i8, ptr %scevgep.i, i64 %i.jo ; 2 uses
  %i.jp = trunc i64 %indvars.iv1683.i to i32      ; 8 uses
  %i.jq = mul i32 %i.fs, %i.jp
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.jr ; 2 uses
  %i.jt = or disjoint i32 %i.jp, 1
  %i.ju = mul i32 %i.jt, %i.fs
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.jv ; 2 uses
  %i.jx = or disjoint i32 %i.jp, 2
  %i.jy = mul i32 %i.jx, %i.fs
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.jz ; 2 uses
  %i.kb = or disjoint i32 %i.jp, 3
  %i.kc = mul i32 %i.kb, %i.fs
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.kd ; 2 uses
  %i.kf = or disjoint i32 %i.jp, 4
  %i.kg = mul i32 %i.kf, %i.fs
  %i.kh = sext i32 %i.kg to i64
  %i.ki = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.kh ; 2 uses
  %i.kj = or disjoint i32 %i.jp, 5
  %i.kk = mul i32 %i.kj, %i.fs
  %i.kl = sext i32 %i.kk to i64
  %i.km = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.kl ; 2 uses
  %i.kn = or disjoint i32 %i.jp, 6
  %i.ko = mul i32 %i.kn, %i.fs
  %i.kp = sext i32 %i.ko to i64
  %i.kq = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.kp ; 2 uses
  %i.kr = or disjoint i32 %i.jp, 7
  %i.ks = mul i32 %i.kr, %i.fs
  %i.kt = sext i32 %i.ks to i64
  %i.ku = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.kt ; 2 uses
  %i.kv = lshr exact i64 %indvars.iv1683.i, 3
  %.reass.i = mul i64 %factor.op.mul.i, %i.kv
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ft, i64 %.reass.i ; 4 uses
  br i1 %i.r, label %.preheader1107.lr.ph.i, label %.preheader1110.i

.preheader1107.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1005.i
  br i1 %i.fy, label %.preheader1107.us.i, label %.preheader1110.thread.i

.preheader1107.us.i:                              ; preds = %.preheader1107.lr.ph.i, %._crit_edge.us.i
  %.08371132.us.i = phi ptr [ %i.sh, %._crit_edge.us.i ], [ %i.js, %.preheader1107.lr.ph.i ] ; 2 uses
  %.08401131.us.i = phi ptr [ %i.si, %._crit_edge.us.i ], [ %i.jw, %.preheader1107.lr.ph.i ] ; 2 uses
  %.08481130.us.i = phi ptr [ %i.sj, %._crit_edge.us.i ], [ %i.ka, %.preheader1107.lr.ph.i ] ; 2 uses
  %.08511129.us.i = phi ptr [ %i.sk, %._crit_edge.us.i ], [ %i.ke, %.preheader1107.lr.ph.i ] ; 2 uses
  %.08551128.us.i = phi ptr [ %i.sl, %._crit_edge.us.i ], [ %i.ki, %.preheader1107.lr.ph.i ] ; 2 uses
  %.08581127.us.i = phi ptr [ %i.sm, %._crit_edge.us.i ], [ %i.km, %.preheader1107.lr.ph.i ] ; 2 uses
  %.08811126.us.i = phi ptr [ %i.sn, %._crit_edge.us.i ], [ %i.kq, %.preheader1107.lr.ph.i ] ; 2 uses
  %.08841125.us.i = phi ptr [ %i.so, %._crit_edge.us.i ], [ %i.ku, %.preheader1107.lr.ph.i ] ; 2 uses
  %.08871124.us.i = phi ptr [ %i.sg, %._crit_edge.us.i ], [ %i.kw, %.preheader1107.lr.ph.i ]
  %.08981123.us.i = phi i32 [ %i.sp, %._crit_edge.us.i ], [ 0, %.preheader1107.lr.ph.i ]
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.preheader1107.us.i
  %indvars.iv1647.i = phi i64 [ 0, %.preheader1107.us.i ], [ %indvars.iv.next1648.i, %bb.ai ] ; 9 uses
  %.18881122.us.i = phi ptr [ %.08871124.us.i, %.preheader1107.us.i ], [ %i.sg, %bb.ai ] ; 65 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %.08371132.us.i, i64 %indvars.iv1647.i ; 2 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %.08401131.us.i, i64 %indvars.iv1647.i ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %.08481130.us.i, i64 %indvars.iv1647.i ; 2 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %.08511129.us.i, i64 %indvars.iv1647.i ; 2 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %.08551128.us.i, i64 %indvars.iv1647.i ; 2 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %.08581127.us.i, i64 %indvars.iv1647.i ; 2 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %.08811126.us.i, i64 %indvars.iv1647.i ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %.08841125.us.i, i64 %indvars.iv1647.i ; 2 uses
  %i.lf = load float, ptr %i.kx, align 4, !tbaa !53
  store float %i.lf, ptr %.18881122.us.i, align 4, !tbaa !53
  %i.lg = load float, ptr %i.ky, align 4, !tbaa !53
  %i.lh = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 4
  store float %i.lg, ptr %i.lh, align 4, !tbaa !53
  %i.li = load float, ptr %i.kz, align 4, !tbaa !53
  %i.lj = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 8
  store float %i.li, ptr %i.lj, align 4, !tbaa !53
  %i.lk = load float, ptr %i.la, align 4, !tbaa !53
  %i.ll = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 12
  store float %i.lk, ptr %i.ll, align 4, !tbaa !53
  %i.lm = load float, ptr %i.lb, align 4, !tbaa !53
  %i.ln = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 16
  store float %i.lm, ptr %i.ln, align 4, !tbaa !53
  %i.lo = load float, ptr %i.lc, align 4, !tbaa !53
  %i.lp = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 20
  store float %i.lo, ptr %i.lp, align 4, !tbaa !53
  %i.lq = load float, ptr %i.ld, align 4, !tbaa !53
  %i.lr = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 24
  store float %i.lq, ptr %i.lr, align 4, !tbaa !53
  %i.ls = load float, ptr %i.le, align 4, !tbaa !53
  %i.lt = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 28
  store float %i.ls, ptr %i.lt, align 4, !tbaa !53
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %i.fz ; 2 uses
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.fz ; 2 uses
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.fz ; 2 uses
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %i.fz ; 2 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %i.fz ; 2 uses
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %i.fz ; 2 uses
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %i.fz ; 2 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %i.fz ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 32
  %i.md = load float, ptr %i.lu, align 4, !tbaa !53
  store float %i.md, ptr %i.mc, align 4, !tbaa !53
  %i.me = load float, ptr %i.lv, align 4, !tbaa !53
  %i.mf = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 36
  store float %i.me, ptr %i.mf, align 4, !tbaa !53
  %i.mg = load float, ptr %i.lw, align 4, !tbaa !53
  %i.mh = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 40
  store float %i.mg, ptr %i.mh, align 4, !tbaa !53
  %i.mi = load float, ptr %i.lx, align 4, !tbaa !53
  %i.mj = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 44
  store float %i.mi, ptr %i.mj, align 4, !tbaa !53
  %i.mk = load float, ptr %i.ly, align 4, !tbaa !53
  %i.ml = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 48
  store float %i.mk, ptr %i.ml, align 4, !tbaa !53
  %i.mm = load float, ptr %i.lz, align 4, !tbaa !53
  %i.mn = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 52
  store float %i.mm, ptr %i.mn, align 4, !tbaa !53
  %i.mo = load float, ptr %i.ma, align 4, !tbaa !53
  %i.mp = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 56
  store float %i.mo, ptr %i.mp, align 4, !tbaa !53
  %i.mq = load float, ptr %i.mb, align 4, !tbaa !53
  %i.mr = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 60
  store float %i.mq, ptr %i.mr, align 4, !tbaa !53
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %i.fz ; 2 uses
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %i.fz ; 2 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %i.fz ; 2 uses
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.fz ; 2 uses
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.fz ; 2 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %i.fz ; 2 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.fz ; 2 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %i.fz ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 64
  %i.nb = load float, ptr %i.ms, align 4, !tbaa !53
  store float %i.nb, ptr %i.na, align 4, !tbaa !53
  %i.nc = load float, ptr %i.mt, align 4, !tbaa !53
  %i.nd = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 68
  store float %i.nc, ptr %i.nd, align 4, !tbaa !53
  %i.ne = load float, ptr %i.mu, align 4, !tbaa !53
  %i.nf = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 72
  store float %i.ne, ptr %i.nf, align 4, !tbaa !53
  %i.ng = load float, ptr %i.mv, align 4, !tbaa !53
  %i.nh = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 76
  store float %i.ng, ptr %i.nh, align 4, !tbaa !53
  %i.ni = load float, ptr %i.mw, align 4, !tbaa !53
  %i.nj = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 80
  store float %i.ni, ptr %i.nj, align 4, !tbaa !53
  %i.nk = load float, ptr %i.mx, align 4, !tbaa !53
  %i.nl = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 84
  store float %i.nk, ptr %i.nl, align 4, !tbaa !53
  %i.nm = load float, ptr %i.my, align 4, !tbaa !53
  %i.nn = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 88
  store float %i.nm, ptr %i.nn, align 4, !tbaa !53
  %i.no = load float, ptr %i.mz, align 4, !tbaa !53
  %i.np = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 92
  store float %i.no, ptr %i.np, align 4, !tbaa !53
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %i.fz ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnn21Convolution1D_x86_avx15create_pipelineERKNS_6OptionE:bb.a
  %i.zo = insertelement <8 x ptr> poison, ptr %scevgep292, i64 0
  %i.zp = insertelement <8 x ptr> %i.zo, ptr %scevgep293, i64 1
  %i.zq = insertelement <8 x ptr> %i.zp, ptr %scevgep294, i64 2
  %i.zr = insertelement <8 x ptr> %i.zq, ptr %scevgep295, i64 3
  %i.zs = insertelement <8 x ptr> %i.zr, ptr %scevgep296, i64 4
  %i.zt = insertelement <8 x ptr> %i.zs, ptr %scevgep297, i64 5
  %i.zu = insertelement <8 x ptr> %i.zt, ptr %scevgep298, i64 6
  %i.zv = insertelement <8 x ptr> %i.zu, ptr %scevgep299, i64 7
  %i.zw = insertelement <8 x ptr> poison, ptr %.2886.lcssa.i, i64 0
  %i.zx = insertelement <8 x ptr> %i.zw, ptr %.2883.lcssa.i, i64 1
  %i.zy = insertelement <8 x ptr> %i.zx, ptr %.2860.lcssa.i, i64 2
  %i.zz = insertelement <8 x ptr> %i.zy, ptr %.2857.lcssa.i, i64 3
  %i.aaa = insertelement <8 x ptr> %i.zz, ptr %.2853.lcssa.i, i64 4
  %i.aab = insertelement <8 x ptr> %i.aaa, ptr %.2850.lcssa.i, i64 5
  %i.aac = insertelement <8 x ptr> %i.aab, ptr %.2842.lcssa.i, i64 6
  %i.aad = insertelement <8 x ptr> %i.aac, ptr %.2839.lcssa.i, i64 7
  br label %.preheader1104.i

.preheader1104.i:                                 ; preds = %.preheader1104.i.preheader, %._crit_edge.i
  %.98961243.i = phi ptr [ %.lcssa291, %._crit_edge.i ], [ %.6893.lcssa.i, %.preheader1104.i.preheader ] ; 6 uses
  %.39011242.i = phi i32 [ %i.abd, %._crit_edge.i ], [ %.2900.lcssa.i, %.preheader1104.i.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader1104.i
  %scevgep = getelementptr i8, ptr %.98961243.i, i64 %i.gz
  %i.aae = insertelement <8 x ptr> poison, ptr %.98961243.i, i64 0
  %i.aaf = shufflevector <8 x ptr> %i.aae, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.aag = icmp ult <8 x ptr> %i.aaf, %i.zv
  %i.aah = insertelement <8 x ptr> poison, ptr %scevgep, i64 0
  %i.aai = shufflevector <8 x ptr> %i.aah, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.aaj = icmp ult <8 x ptr> %i.aad, %i.aai
  %i.aak = and <8 x i1> %i.aag, %i.aaj
  %i.aal = bitcast <8 x i1> %i.aak to i8
  %.not817 = icmp eq i8 %i.aal, 0
  br i1 %.not817, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.memcheck
  %i.aam = getelementptr i8, ptr %.98961243.i, i64 %i.hb ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.aan = shl i64 %index, 5
  %next.gep = getelementptr i8, ptr %.98961243.i, i64 %i.aan
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %.2839.lcssa.i, i64 %index
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %.2842.lcssa.i, i64 %index
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %.2850.lcssa.i, i64 %index
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %.2853.lcssa.i, i64 %index
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %.2857.lcssa.i, i64 %index
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %.2860.lcssa.i, i64 %index
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %.2883.lcssa.i, i64 %index
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %.2886.lcssa.i, i64 %index
  %wide.load = load <8 x float>, ptr %i.aao, align 4, !tbaa !53, !alias.scope !61
  %wide.load327 = load <8 x float>, ptr %i.aap, align 4, !tbaa !53, !alias.scope !64
  %wide.load328 = load <8 x float>, ptr %i.aaq, align 4, !tbaa !53, !alias.scope !66
  %wide.load329 = load <8 x float>, ptr %i.aar, align 4, !tbaa !53, !alias.scope !68
  %wide.load330 = load <8 x float>, ptr %i.aas, align 4, !tbaa !53, !alias.scope !70
  %wide.load331 = load <8 x float>, ptr %i.aat, align 4, !tbaa !53, !alias.scope !72
  %wide.load332 = load <8 x float>, ptr %i.aau, align 4, !tbaa !53, !alias.scope !74
  %wide.load333 = load <8 x float>, ptr %i.aav, align 4, !tbaa !53, !alias.scope !76
  %i.aaw = shufflevector <8 x float> %wide.load, <8 x float> %wide.load327, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aax = shufflevector <8 x float> %wide.load328, <8 x float> %wide.load329, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aay = shufflevector <8 x float> %wide.load330, <8 x float> %wide.load331, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aaz = shufflevector <8 x float> %wide.load332, <8 x float> %wide.load333, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aba = shufflevector <16 x float> %i.aaw, <16 x float> %i.aax, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.abb = shufflevector <16 x float> %i.aay, <16 x float> %i.aaz, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec = shufflevector <32 x float> %i.aba, <32 x float> %i.abb, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !53, !alias.scope !78, !noalias !80
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.abc = icmp eq i64 %index.next, %n.vec
  br i1 %i.abc, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader1104.i, %middle.block
  %indvars.iv1677.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader1104.i ], [ %n.vec, %middle.block ]
  %.108971241.i.ph = phi ptr [ %.98961243.i, %vector.memcheck ], [ %.98961243.i, %.preheader1104.i ], [ %i.aam, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %.lcssa291 = phi ptr [ %i.aam, %middle.block ], [ %i.acb, %scalar.ph ]
  %i.abd = add nuw nsw i32 %.39011242.i, 1        ; 2 uses
  %exitcond1682.not.i = icmp eq i32 %i.abd, %i.n
  br i1 %exitcond1682.not.i, label %._crit_edge1244.split.i, label %.preheader1104.i, !llvm.loop !84

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv1677.i = phi i64 [ %indvars.iv.next1678.i, %scalar.ph ], [ %indvars.iv1677.i.ph, %scalar.ph.preheader ] ; 9 uses
  %.108971241.i = phi ptr [ %i.acb, %scalar.ph ], [ %.108971241.i.ph, %scalar.ph.preheader ] ; 9 uses
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %.2839.lcssa.i, i64 %indvars.iv1677.i
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %.2842.lcssa.i, i64 %indvars.iv1677.i
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %.2850.lcssa.i, i64 %indvars.iv1677.i
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %.2853.lcssa.i, i64 %indvars.iv1677.i
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %.2857.lcssa.i, i64 %indvars.iv1677.i
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %.2860.lcssa.i, i64 %indvars.iv1677.i
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %.2883.lcssa.i, i64 %indvars.iv1677.i
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %.2886.lcssa.i, i64 %indvars.iv1677.i
  %i.abm = load float, ptr %i.abe, align 4, !tbaa !53
  store float %i.abm, ptr %.108971241.i, align 4, !tbaa !53
  %i.abn = load float, ptr %i.abf, align 4, !tbaa !53
  %i.abo = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 4
  store float %i.abn, ptr %i.abo, align 4, !tbaa !53
  %i.abp = load float, ptr %i.abg, align 4, !tbaa !53
  %i.abq = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 8
  store float %i.abp, ptr %i.abq, align 4, !tbaa !53
  %i.abr = load float, ptr %i.abh, align 4, !tbaa !53
  %i.abs = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 12
  store float %i.abr, ptr %i.abs, align 4, !tbaa !53
  %i.abt = load float, ptr %i.abi, align 4, !tbaa !53
  %i.abu = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 16
  store float %i.abt, ptr %i.abu, align 4, !tbaa !53
  %i.abv = load float, ptr %i.abj, align 4, !tbaa !53
  %i.abw = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 20
  store float %i.abv, ptr %i.abw, align 4, !tbaa !53
  %i.abx = load float, ptr %i.abk, align 4, !tbaa !53
  %i.aby = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 24
  store float %i.abx, ptr %i.aby, align 4, !tbaa !53
  %i.abz = load float, ptr %i.abl, align 4, !tbaa !53
  %i.aca = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 28
  store float %i.abz, ptr %i.aca, align 4, !tbaa !53
  %i.acb = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 32 ; 2 uses
  %indvars.iv.next1678.i = add nuw nsw i64 %indvars.iv1677.i, 1 ; 2 uses
  %exitcond1681.not.i = icmp eq i64 %indvars.iv.next1678.i, %wide.trip.count.i
  br i1 %exitcond1681.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !85

._crit_edge1244.split.i:                          ; preds = %._crit_edge.i, %.preheader1108.i, %.preheader1105.lr.ph.i
  %indvars.iv.next1684.i = add nuw nsw i64 %indvars.iv1683.i, 8 ; 3 uses
  %i.acc = or disjoint i64 %indvars.iv.next1684.i, 7
  %i.acd = icmp samesign ult i64 %i.acc, %i.gw
  %indvars.iv.next.i = add i32 %indvars.iv.i, %i.gm
  %indvars.iv.next1621.i = add i32 %indvars.iv1620.i, %i.gm
  %indvars.iv.next1625.i = add i32 %indvars.iv1624.i, %i.gm
  %indvars.iv.next1629.i = add i32 %indvars.iv1628.i, %i.gm
  %indvars.iv.next1633.i = add i32 %indvars.iv1632.i, %i.gm
  %indvars.iv.next1637.i = add i32 %indvars.iv1636.i, %i.gm
  %indvars.iv.next1641.i = add i32 %indvars.iv1640.i, %i.gm
  %indvars.iv.next1645.i = add i32 %indvars.iv1644.i, %i.gm
  br i1 %i.acd, label %_ZN4ncnn3MatD2Ev.exit1005.i, label %.preheader1103.loopexit.i, !llvm.loop !86

.preheader1095.loopexit.i:                        ; preds = %._crit_edge1337.split.i
  %i.ace = trunc nuw nsw i64 %indvars.iv.next1737.i to i32
  br label %.preheader1095.i

.preheader1095.i:                                 ; preds = %.preheader1095.loopexit.i, %.preheader1103.i
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader1103.i ], [ %i.ace, %.preheader1095.loopexit.i ] ; 4 uses
  %i.acf = or disjoint i32 %.1.lcssa.i, 1         ; 3 uses
  %i.acg = icmp slt i32 %i.acf, %i.m
  br i1 %i.acg, label %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i, label %.preheader1087.i

_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i:                ; preds = %.preheader1095.i
  %i.ach = load ptr, ptr %i.o, align 8, !tbaa !18 ; 3 uses
  %i.aci = mul i32 %i.n, %i.j                     ; 5 uses
  %i.acj = load ptr, ptr %i.p, align 8, !tbaa !18, !noalias !87
  %i.ack = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.acl = load i64, ptr %i.ack, align 8, !tbaa !20, !noalias !87
  %i.acm = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.acn = load i64, ptr %i.acm, align 8, !tbaa !49, !noalias !87
  %factor.op.mul1403.i = mul i64 %i.acn, %i.acl
  %i.aco = icmp sgt i32 %i.n, 7
  %i.acp = icmp sgt i32 %i.j, 0                   ; 3 uses
  %i.acq = sext i32 %i.j to i64                   ; 16 uses
  %i.acr = shl i32 %i.j, 1                        ; 2 uses
  %i.acs = sext i32 %i.acr to i64                 ; 10 uses
  %i.act = mul i32 %i.j, 3
  %i.acu = sext i32 %i.act to i64                 ; 7 uses
  %i.acv = shl i32 %i.j, 2                        ; 2 uses
  %i.acw = sext i32 %i.acv to i64                 ; 6 uses
  %i.acx = mul nsw i32 %i.j, 5
  %i.acy = sext i32 %i.acx to i64                 ; 2 uses
  %i.acz = mul nsw i32 %i.j, 6
  %i.ada = sext i32 %i.acz to i64                 ; 2 uses
  %i.adb = mul nsw i32 %i.j, 7
  %i.adc = sext i32 %i.adb to i64                 ; 2 uses
  %i.add = shl i32 %i.j, 3
  %i.ade = sext i32 %i.add to i64                 ; 3 uses
  %i.adf = icmp slt i32 %i.j, 1
  %i.adg = add i32 %i.n, -8                       ; 2 uses
  %i.adh = lshr i32 %i.adg, 1
  %i.adi = and i32 %i.adh, 2147483644
  %narrow1838.i = add nuw i32 %i.adi, 4
  %i.adj = zext i32 %narrow1838.i to i64
  %i.adk = mul nsw i64 %i.adj, %i.ade
  %scevgep1741.i = getelementptr i8, ptr %i.ach, i64 %i.adk ; 2 uses
  %i.adl = mul i32 %i.aci, %.1.lcssa.i
  %i.adm = shl i32 %i.aci, 1                      ; 2 uses
  %i.adn = mul i32 %i.acf, %i.aci
  %i.ado = and i32 %i.adg, -8
  %i.adp = add i32 %i.ado, 8                      ; 4 uses
  %i.adq = add i32 %i.n, -4
  %i.adr = zext nneg i32 %.1.lcssa.i to i64
  %i.ads = sext i32 %i.m to i64
  %i.adt = or disjoint i32 %i.adp, 3
  %i.adu = icmp slt i32 %i.adt, %i.n
  %wide.trip.count1752.i = zext i32 %i.j to i64   ; 19 uses
  %i.adv = shl nuw nsw i64 %wide.trip.count1752.i, 3
  %i.adw = shl nuw nsw i64 %wide.trip.count1752.i, 2 ; 5 uses
  %i.adx = shl nuw nsw i64 %wide.trip.count1752.i, 4
  %i.ady = shl nuw nsw i64 %i.acq, 2              ; 3 uses
  %i.adz = add nuw nsw i64 %i.ady, %i.adw         ; 2 uses
  %i.aea = shl nsw i64 %i.acs, 2
  %i.aeb = shl nuw nsw i64 %wide.trip.count1752.i, 5
  %i.aec = shl nuw nsw i64 %i.acu, 2              ; 3 uses
  %i.aed = shl nuw nsw i64 %wide.trip.count1752.i, 2 ; 5 uses
  %i.aee = add nuw nsw i64 %i.aec, %i.aed         ; 2 uses
  %i.aef = shl nsw i64 %i.acw, 2
  %i.aeg = add i32 %i.n, -4
  %i.aeh = shl nuw nsw i64 %i.acs, 2              ; 3 uses
  %i.aei = add nuw nsw i64 %i.aeh, %i.aed         ; 2 uses
  %i.aej = shl nuw nsw i64 %i.acq, 2              ; 3 uses
  %i.aek = add nuw nsw i64 %i.aej, %i.aed         ; 2 uses
  %min.iters.check597 = icmp ult i32 %i.j, 16
  %stride.check564 = icmp slt i32 %i.acv, 0
  %n.vec599 = and i64 %wide.trip.count1752.i, 2147483640 ; 4 uses
  %i.ael = shl nuw nsw i64 %n.vec599, 5
  %cmp.n614 = icmp eq i64 %n.vec599, %wide.trip.count1752.i
  %min.iters.check517 = icmp ult i32 %i.j, 16
  %stride.check504 = icmp slt i32 %i.acr, 0
  %n.vec519 = and i64 %wide.trip.count1752.i, 2147483640 ; 4 uses
  %i.aem = shl nuw nsw i64 %n.vec519, 4
  %cmp.n530 = icmp eq i64 %n.vec519, %wide.trip.count1752.i
  %xtraiter887.a = and i64 %wide.trip.count1752.i, 1
  %lcmp.mod888.not.a = icmp eq i64 %xtraiter887.a, 0
  %i.aen = add nsw i64 %wide.trip.count1752.i, -1
  %min.iters.check466 = icmp ult i32 %i.j, 6
  %n.vec468 = and i64 %wide.trip.count1752.i, 2147483644 ; 4 uses
  %i.aeo = shl nuw nsw i64 %n.vec468, 3
  %cmp.n481 = icmp eq i64 %n.vec468, %wide.trip.count1752.i
  %xtraiter889.a = and i64 %wide.trip.count1752.i, 3 ; 2 uses
  %lcmp.mod890.not.a = icmp eq i64 %xtraiter889.a, 0
  br label %_ZN4ncnn3MatD2Ev.exit1003.i

_ZN4ncnn3MatD2Ev.exit1004.i:                      ; preds = %._crit_edge1337.split.i, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i
  %indvars.iv1736.i = phi i64 [ %i.il, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i ], [ %indvars.iv.next1737.i, %._crit_edge1337.split.i ] ; 2 uses
  %indvars.iv1734.i = phi i32 [ %i.im, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i ], [ %indvars.iv.next1735.i, %._crit_edge1337.split.i ] ; 2 uses
  %indvars.iv1699.i = phi i32 [ %i.ih, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i ], [ %indvars.iv.next1700.i, %._crit_edge1337.split.i ] ; 2 uses
  %indvars.iv1695.i = phi i32 [ %i.ig, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i ], [ %indvars.iv.next1696.i, %._crit_edge1337.split.i ] ; 2 uses
  %indvars.iv1691.i = phi i32 [ %i.ie, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i ], [ %indvars.iv.next1692.i, %._crit_edge1337.split.i ] ; 2 uses
  %indvars.iv1687.i = phi i32 [ %i.ib, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i ], [ %indvars.iv.next1688.i, %._crit_edge1337.split.i ] ; 2 uses
  %i.aep = sext i32 %indvars.iv1687.i to i64
  %i.aeq = shl nsw i64 %i.aep, 2
  %scevgep1689.i = getelementptr i8, ptr %scevgep1686.i, i64 %i.aeq ; 2 uses
  %i.aer = sext i32 %indvars.iv1691.i to i64
  %i.aes = shl nsw i64 %i.aer, 2
  %scevgep1693.i = getelementptr i8, ptr %scevgep1686.i, i64 %i.aes ; 2 uses
  %i.aet = sext i32 %indvars.iv1695.i to i64
  %i.aeu = shl nsw i64 %i.aet, 2
  %scevgep1697.i = getelementptr i8, ptr %scevgep1686.i, i64 %i.aeu ; 2 uses
  %i.aev = sext i32 %indvars.iv1699.i to i64
  %i.aew = shl nsw i64 %i.aev, 2
  %scevgep1701.i = getelementptr i8, ptr %scevgep1686.i, i64 %i.aew ; 2 uses
  %i.aex = trunc nuw i64 %indvars.iv1736.i to i32 ; 5 uses
  %i.aey = mul i32 %i.hg, %i.aex
  %i.aez = sext i32 %i.aey to i64
  %i.afa = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.aez ; 2 uses
  %i.afb = add i32 %i.aex, 1
  %i.afc = mul i32 %i.afb, %i.hg
  %i.afd = sext i32 %i.afc to i64
  %i.afe = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.afd ; 2 uses
  %i.aff = add i32 %i.aex, 2
  %i.afg = mul i32 %i.aff, %i.hg
  %i.afh = sext i32 %i.afg to i64
  %i.afi = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.afh ; 2 uses
  %i.afj = mul i32 %indvars.iv1734.i, %i.hg
  %i.afk = sext i32 %i.afj to i64
  %i.afl = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.afk ; 2 uses
  %i.afm = lshr i32 %i.aex, 3
  %i.afn = lshr i32 %i.aex, 2
  %i.afo = and i32 %i.afn, 1
  %i.afp = add nuw nsw i32 %i.afo, %i.afm
  %i.afq = zext nneg i32 %i.afp to i64
  %.reass1341.i = mul i64 %factor.op.mul1340.i, %i.afq
  %i.afr = getelementptr inbounds nuw i8, ptr %i.hh, i64 %.reass1341.i ; 4 uses
  br i1 %i.hm, label %.preheader1099.lr.ph.i, label %.preheader1102.i

.preheader1099.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1004.i
  br i1 %i.hn, label %.preheader1099.us.i, label %.preheader1102.thread.i

.preheader1099.us.i:                              ; preds = %.preheader1099.lr.ph.i, %._crit_edge1255.us.i
  %.09211262.us.i = phi i32 [ %i.ajo, %._crit_edge1255.us.i ], [ 0, %.preheader1099.lr.ph.i ]
  %.09251261.us.i = phi ptr [ %i.ajj, %._crit_edge1255.us.i ], [ %i.afr, %.preheader1099.lr.ph.i ]
  %.09361260.us.i = phi ptr [ %i.ajn, %._crit_edge1255.us.i ], [ %i.afl, %.preheader1099.lr.ph.i ] ; 2 uses
  %.09391259.us.i = phi ptr [ %i.ajm, %._crit_edge1255.us.i ], [ %i.afi, %.preheader1099.lr.ph.i ] ; 2 uses
  %.09421258.us.i = phi ptr [ %i.ajl, %._crit_edge1255.us.i ], [ %i.afe, %.preheader1099.lr.ph.i ] ; 2 uses
  %.09451257.us.i = phi ptr [ %i.ajk, %._crit_edge1255.us.i ], [ %i.afa, %.preheader1099.lr.ph.i ] ; 2 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.preheader1099.us.i
  %indvars.iv1703.i = phi i64 [ 0, %.preheader1099.us.i ], [ %indvars.iv.next1704.i, %bb.al ] ; 5 uses
  %.19261253.us.i = phi ptr [ %.09251261.us.i, %.preheader1099.us.i ], [ %i.ajj, %bb.al ] ; 33 uses
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %.09451257.us.i, i64 %indvars.iv1703.i ; 2 uses
  %i.aft = getelementptr inbounds nuw [4 x i8], ptr %.09421258.us.i, i64 %indvars.iv1703.i ; 2 uses
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %.09391259.us.i, i64 %indvars.iv1703.i ; 2 uses
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %.09361260.us.i, i64 %indvars.iv1703.i ; 2 uses
  %i.afw = load float, ptr %i.afs, align 4, !tbaa !53
  store float %i.afw, ptr %.19261253.us.i, align 4, !tbaa !53
  %i.afx = load float, ptr %i.aft, align 4, !tbaa !53
  %i.afy = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 4
  store float %i.afx, ptr %i.afy, align 4, !tbaa !53
  %i.afz = load float, ptr %i.afu, align 4, !tbaa !53
  %i.aga = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 8
  store float %i.afz, ptr %i.aga, align 4, !tbaa !53
  %i.agb = load float, ptr %i.afv, align 4, !tbaa !53
  %i.agc = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 12
  store float %i.agb, ptr %i.agc, align 4, !tbaa !53
  %i.agd = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %i.ho ; 2 uses
  %i.age = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.ho ; 2 uses
  %i.agf = getelementptr inbounds nuw [4 x i8], ptr %i.afu, i64 %i.ho ; 2 uses
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %i.afv, i64 %i.ho ; 2 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 16
  %i.agi = load float, ptr %i.agd, align 4, !tbaa !53
  store float %i.agi, ptr %i.agh, align 4, !tbaa !53
  %i.agj = load float, ptr %i.age, align 4, !tbaa !53
  %i.agk = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 20
  store float %i.agj, ptr %i.agk, align 4, !tbaa !53
  %i.agl = load float, ptr %i.agf, align 4, !tbaa !53
  %i.agm = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 24
  store float %i.agl, ptr %i.agm, align 4, !tbaa !53
  %i.agn = load float, ptr %i.agg, align 4, !tbaa !53
  %i.ago = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 28
  store float %i.agn, ptr %i.ago, align 4, !tbaa !53
  %i.agp = getelementptr inbounds nuw [4 x i8], ptr %i.agd, i64 %i.ho ; 2 uses
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %i.age, i64 %i.ho ; 2 uses
  %i.agr = getelementptr inbounds nuw [4 x i8], ptr %i.agf, i64 %i.ho ; 2 uses
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr %i.agg, i64 %i.ho ; 2 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 32
  %i.agu = load float, ptr %i.agp, align 4, !tbaa !53
  store float %i.agu, ptr %i.agt, align 4, !tbaa !53
  %i.agv = load float, ptr %i.agq, align 4, !tbaa !53
  %i.agw = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 36
  store float %i.agv, ptr %i.agw, align 4, !tbaa !53
  %i.agx = load float, ptr %i.agr, align 4, !tbaa !53
  %i.agy = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 40
  store float %i.agx, ptr %i.agy, align 4, !tbaa !53
  %i.agz = load float, ptr %i.ags, align 4, !tbaa !53
  %i.aha = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 44
  store float %i.agz, ptr %i.aha, align 4, !tbaa !53
  %i.ahb = getelementptr inbounds nuw [4 x i8], ptr %i.agp, i64 %i.ho ; 2 uses
  %i.ahc = getelementptr inbounds nuw [4 x i8], ptr %i.agq, i64 %i.ho ; 2 uses
  %i.ahd = getelementptr inbounds nuw [4 x i8], ptr %i.agr, i64 %i.ho ; 2 uses
  %i.ahe = getelementptr inbounds nuw [4 x i8], ptr %i.ags, i64 %i.ho ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 48
  %i.ahg = load float, ptr %i.ahb, align 4, !tbaa !53
  store float %i.ahg, ptr %i.ahf, align 4, !tbaa !53
  %i.ahh = load float, ptr %i.ahc, align 4, !tbaa !53
  %i.ahi = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 52
  store float %i.ahh, ptr %i.ahi, align 4, !tbaa !53
  %i.ahj = load float, ptr %i.ahd, align 4, !tbaa !53
  %i.ahk = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 56
  store float %i.ahj, ptr %i.ahk, align 4, !tbaa !53
  %i.ahl = load float, ptr %i.ahe, align 4, !tbaa !53
  %i.ahm = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 60
  store float %i.ahl, ptr %i.ahm, align 4, !tbaa !53
  %i.ahn = getelementptr inbounds nuw [4 x i8], ptr %i.ahb, i64 %i.ho ; 2 uses
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %i.ho ; 2 uses
  %i.ahp = getelementptr inbounds nuw [4 x i8], ptr %i.ahd, i64 %i.ho ; 2 uses
  %i.ahq = getelementptr inbounds nuw [4 x i8], ptr %i.ahe, i64 %i.ho ; 2 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 64
  %i.ahs = load float, ptr %i.ahn, align 4, !tbaa !53
  store float %i.ahs, ptr %i.ahr, align 4, !tbaa !53
  %i.aht = load float, ptr %i.aho, align 4, !tbaa !53
  %i.ahu = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 68
  store float %i.aht, ptr %i.ahu, align 4, !tbaa !53
  %i.ahv = load float, ptr %i.ahp, align 4, !tbaa !53
  %i.ahw = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 72
  store float %i.ahv, ptr %i.ahw, align 4, !tbaa !53
  %i.ahx = load float, ptr %i.ahq, align 4, !tbaa !53
  %i.ahy = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 76
  store float %i.ahx, ptr %i.ahy, align 4, !tbaa !53
  %i.ahz = getelementptr inbounds nuw [4 x i8], ptr %i.ahn, i64 %i.ho ; 2 uses
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %i.ho ; 2 uses
  %i.aib = getelementptr inbounds nuw [4 x i8], ptr %i.ahp, i64 %i.ho ; 2 uses
  %i.aic = getelementptr inbounds nuw [4 x i8], ptr %i.ahq, i64 %i.ho ; 2 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 80
  %i.aie = load float, ptr %i.ahz, align 4, !tbaa !53
  store float %i.aie, ptr %i.aid, align 4, !tbaa !53
  %i.aif = load float, ptr %i.aia, align 4, !tbaa !53
  %i.aig = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 84
  store float %i.aif, ptr %i.aig, align 4, !tbaa !53
  %i.aih = load float, ptr %i.aib, align 4, !tbaa !53
  %i.aii = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 88
  store float %i.aih, ptr %i.aii, align 4, !tbaa !53
  %i.aij = load float, ptr %i.aic, align 4, !tbaa !53
  %i.aik = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 92
  store float %i.aij, ptr %i.aik, align 4, !tbaa !53
  %i.ail = getelementptr inbounds nuw [4 x i8], ptr %i.ahz, i64 %i.ho ; 2 uses
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr %i.aia, i64 %i.ho ; 2 uses
  %i.ain = getelementptr inbounds nuw [4 x i8], ptr %i.aib, i64 %i.ho ; 2 uses
  %i.aio = getelementptr inbounds nuw [4 x i8], ptr %i.aic, i64 %i.ho ; 2 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 96
  %i.aiq = load float, ptr %i.ail, align 4, !tbaa !53
  store float %i.aiq, ptr %i.aip, align 4, !tbaa !53
  %i.air = load float, ptr %i.aim, align 4, !tbaa !53
  %i.ais = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 100
  store float %i.air, ptr %i.ais, align 4, !tbaa !53
  %i.ait = load float, ptr %i.ain, align 4, !tbaa !53
  %i.aiu = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 104
  store float %i.ait, ptr %i.aiu, align 4, !tbaa !53
  %i.aiv = load float, ptr %i.aio, align 4, !tbaa !53
  %i.aiw = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 108
  store float %i.aiv, ptr %i.aiw, align 4, !tbaa !53
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %i.ail, i64 %i.ho
  %i.aiy = getelementptr inbounds nuw [4 x i8], ptr %i.aim, i64 %i.ho
  %i.aiz = getelementptr inbounds nuw [4 x i8], ptr %i.ain, i64 %i.ho
  %i.aja = getelementptr inbounds nuw [4 x i8], ptr %i.aio, i64 %i.ho
  %i.ajb = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 112
  %i.ajc = load float, ptr %i.aix, align 4, !tbaa !53
  store float %i.ajc, ptr %i.ajb, align 4, !tbaa !53
  %i.ajd = load float, ptr %i.aiy, align 4, !tbaa !53
  %i.aje = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 116
  store float %i.ajd, ptr %i.aje, align 4, !tbaa !53
  %i.ajf = load float, ptr %i.aiz, align 4, !tbaa !53
  %i.ajg = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 120
  store float %i.ajf, ptr %i.ajg, align 4, !tbaa !53
  %i.ajh = load float, ptr %i.aja, align 4, !tbaa !53
  %i.aji = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 124
  store float %i.ajh, ptr %i.aji, align 4, !tbaa !53
  %i.ajj = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 128 ; 3 uses
  %indvars.iv.next1704.i = add nuw nsw i64 %indvars.iv1703.i, 1 ; 2 uses
  %exitcond1707.not.i = icmp eq i64 %indvars.iv.next1704.i, %wide.trip.count1706.i
  br i1 %exitcond1707.not.i, label %._crit_edge1255.us.i, label %bb.al, !llvm.loop !90

._crit_edge1255.us.i:                             ; preds = %bb.al
  %i.ajk = getelementptr inbounds nuw [4 x i8], ptr %.09451257.us.i, i64 %i.hq ; 2 uses
  %i.ajl = getelementptr inbounds nuw [4 x i8], ptr %.09421258.us.i, i64 %i.hq ; 2 uses
  %i.ajm = getelementptr inbounds nuw [4 x i8], ptr %.09391259.us.i, i64 %i.hq ; 2 uses
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %.09361260.us.i, i64 %i.hq ; 2 uses
  %i.ajo = add nuw nsw i32 %.09211262.us.i, 8     ; 2 uses
  %i.ajp = or disjoint i32 %i.ajo, 7
  %i.ajq = icmp slt i32 %i.ajp, %i.n
  br i1 %i.ajq, label %.preheader1099.us.i, label %.preheader1102.i, !llvm.loop !91

.preheader1102.i:                                 ; preds = %._crit_edge1255.us.i, %_ZN4ncnn3MatD2Ev.exit1004.i
  %.0945.lcssa.i = phi ptr [ %i.afa, %_ZN4ncnn3MatD2Ev.exit1004.i ], [ %i.ajk, %._crit_edge1255.us.i ] ; 3 uses
  %.0942.lcssa.i = phi ptr [ %i.afe, %_ZN4ncnn3MatD2Ev.exit1004.i ], [ %i.ajl, %._crit_edge1255.us.i ] ; 3 uses
  %.0939.lcssa.i = phi ptr [ %i.afi, %_ZN4ncnn3MatD2Ev.exit1004.i ], [ %i.ajm, %._crit_edge1255.us.i ] ; 3 uses
  %.0936.lcssa.i = phi ptr [ %i.afl, %_ZN4ncnn3MatD2Ev.exit1004.i ], [ %i.ajn, %._crit_edge1255.us.i ] ; 3 uses
  %.0925.lcssa.i = phi ptr [ %i.afr, %_ZN4ncnn3MatD2Ev.exit1004.i ], [ %i.ajj, %._crit_edge1255.us.i ] ; 3 uses
  %.0921.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1004.i ], [ %i.ij, %._crit_edge1255.us.i ] ; 4 uses
  %i.ajr = or disjoint i32 %.0921.lcssa.i, 3
  %i.ajs = icmp slt i32 %i.ajr, %i.n
  br i1 %i.ajs, label %.preheader1098.lr.ph.i, label %.preheader1101.i

.preheader1102.thread.i:                          ; preds = %.preheader1099.lr.ph.i
  br i1 %i.ip, label %.preheader1098.preheader.i, label %.preheader1101.i

.preheader1098.lr.ph.i:                           ; preds = %.preheader1102.i
  br i1 %i.hn, label %.preheader1098.us.i, label %.preheader1098.preheader.i

.preheader1098.preheader.i:                       ; preds = %.preheader1098.lr.ph.i, %.preheader1102.thread.i
  %.0945.lcssa18971914.i = phi ptr [ %.0945.lcssa.i, %.preheader1098.lr.ph.i ], [ %scevgep1689.i, %.preheader1102.thread.i ]
  %.0942.lcssa18981913.i = phi ptr [ %.0942.lcssa.i, %.preheader1098.lr.ph.i ], [ %scevgep1693.i, %.preheader1102.thread.i ]
  %.0939.lcssa18991912.i = phi ptr [ %.0939.lcssa.i, %.preheader1098.lr.ph.i ], [ %scevgep1697.i, %.preheader1102.thread.i ]
  %.0936.lcssa19001911.i = phi ptr [ %.0936.lcssa.i, %.preheader1098.lr.ph.i ], [ %scevgep1701.i, %.preheader1102.thread.i ]
  %.0925.lcssa19011910.i = phi ptr [ %.0925.lcssa.i, %.preheader1098.lr.ph.i ], [ %i.afr, %.preheader1102.thread.i ]
  %.0921.lcssa19021909.i = phi i32 [ %.0921.lcssa.i, %.preheader1098.lr.ph.i ], [ %i.ij, %.preheader1102.thread.i ] ; 2 uses
  %i.ajt = sub i32 %i.ik, %.0921.lcssa19021909.i
  %i.aju = and i32 %i.ajt, -4                     ; 2 uses
  %i.ajv = zext i32 %i.aju to i64
  %i.ajw = add nuw nsw i64 %i.ajv, 4
  %i.ajx = mul nsw i64 %i.ajw, %i.hs              ; 4 uses
  %scevgep1708.i = getelementptr i8, ptr %.0945.lcssa18971914.i, i64 %i.ajx
  %scevgep1709.i = getelementptr i8, ptr %.0942.lcssa18981913.i, i64 %i.ajx
  %scevgep1710.i = getelementptr i8, ptr %.0939.lcssa18991912.i, i64 %i.ajx
  %scevgep1711.i = getelementptr i8, ptr %.0936.lcssa19001911.i, i64 %i.ajx
  %i.ajy = add i32 %.0921.lcssa19021909.i, 4
  %i.ajz = add i32 %i.ajy, %i.aju
  br label %.preheader1101.i

.preheader1098.us.i:                              ; preds = %.preheader1098.lr.ph.i, %._crit_edge1283.us.i
  %.19221290.us.i = phi i32 [ %i.ama, %._crit_edge1283.us.i ], [ %.0921.lcssa.i, %.preheader1098.lr.ph.i ]
  %.39281289.us.i = phi ptr [ %i.alv, %._crit_edge1283.us.i ], [ %.0925.lcssa.i, %.preheader1098.lr.ph.i ]
  %.19371288.us.i = phi ptr [ %i.alz, %._crit_edge1283.us.i ], [ %.0936.lcssa.i, %.preheader1098.lr.ph.i ] ; 2 uses
  %.19401287.us.i = phi ptr [ %i.aly, %._crit_edge1283.us.i ], [ %.0939.lcssa.i, %.preheader1098.lr.ph.i ] ; 2 uses
  %.19431286.us.i = phi ptr [ %i.alx, %._crit_edge1283.us.i ], [ %.0942.lcssa.i, %.preheader1098.lr.ph.i ] ; 2 uses
  %.19461285.us.i = phi ptr [ %i.alw, %._crit_edge1283.us.i ], [ %.0945.lcssa.i, %.preheader1098.lr.ph.i ] ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.preheader1098.us.i
  %indvars.iv1713.i = phi i64 [ 0, %.preheader1098.us.i ], [ %indvars.iv.next1714.i, %bb.am ] ; 5 uses
  %.49291281.us.i = phi ptr [ %.39281289.us.i, %.preheader1098.us.i ], [ %i.alv, %bb.am ] ; 17 uses
  %i.aka = getelementptr inbounds nuw [4 x i8], ptr %.19461285.us.i, i64 %indvars.iv1713.i ; 2 uses
  %i.akb = getelementptr inbounds nuw [4 x i8], ptr %.19431286.us.i, i64 %indvars.iv1713.i ; 2 uses
  %i.akc = getelementptr inbounds nuw [4 x i8], ptr %.19401287.us.i, i64 %indvars.iv1713.i ; 2 uses
  %i.akd = getelementptr inbounds nuw [4 x i8], ptr %.19371288.us.i, i64 %indvars.iv1713.i ; 2 uses
  %i.ake = load float, ptr %i.aka, align 4, !tbaa !53
  store float %i.ake, ptr %.49291281.us.i, align 4, !tbaa !53
  %i.akf = load float, ptr %i.akb, align 4, !tbaa !53
  %i.akg = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 4
  store float %i.akf, ptr %i.akg, align 4, !tbaa !53
  %i.akh = load float, ptr %i.akc, align 4, !tbaa !53
  %i.aki = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 8
  store float %i.akh, ptr %i.aki, align 4, !tbaa !53
  %i.akj = load float, ptr %i.akd, align 4, !tbaa !53
  %i.akk = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 12
  store float %i.akj, ptr %i.akk, align 4, !tbaa !53
  %i.akl = getelementptr inbounds nuw [4 x i8], ptr %i.aka, i64 %i.ho ; 2 uses
  %i.akm = getelementptr inbounds nuw [4 x i8], ptr %i.akb, i64 %i.ho ; 2 uses
  %i.akn = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.ho ; 2 uses
  %i.ako = getelementptr inbounds nuw [4 x i8], ptr %i.akd, i64 %i.ho ; 2 uses
  %i.akp = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 16
  %i.akq = load float, ptr %i.akl, align 4, !tbaa !53
  store float %i.akq, ptr %i.akp, align 4, !tbaa !53
  %i.akr = load float, ptr %i.akm, align 4, !tbaa !53
  %i.aks = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 20
  store float %i.akr, ptr %i.aks, align 4, !tbaa !53
  %i.akt = load float, ptr %i.akn, align 4, !tbaa !53
  %i.aku = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 24
  store float %i.akt, ptr %i.aku, align 4, !tbaa !53
  %i.akv = load float, ptr %i.ako, align 4, !tbaa !53
  %i.akw = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 28
  store float %i.akv, ptr %i.akw, align 4, !tbaa !53
  %i.akx = getelementptr inbounds nuw [4 x i8], ptr %i.akl, i64 %i.ho ; 2 uses
  %i.aky = getelementptr inbounds nuw [4 x i8], ptr %i.akm, i64 %i.ho ; 2 uses
  %i.akz = getelementptr inbounds nuw [4 x i8], ptr %i.akn, i64 %i.ho ; 2 uses
  %i.ala = getelementptr inbounds nuw [4 x i8], ptr %i.ako, i64 %i.ho ; 2 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 32
  %i.alc = load float, ptr %i.akx, align 4, !tbaa !53
  store float %i.alc, ptr %i.alb, align 4, !tbaa !53
  %i.ald = load float, ptr %i.aky, align 4, !tbaa !53
  %i.ale = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 36
  store float %i.ald, ptr %i.ale, align 4, !tbaa !53
  %i.alf = load float, ptr %i.akz, align 4, !tbaa !53
  %i.alg = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 40
  store float %i.alf, ptr %i.alg, align 4, !tbaa !53
  %i.alh = load float, ptr %i.ala, align 4, !tbaa !53
  %i.ali = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 44
  store float %i.alh, ptr %i.ali, align 4, !tbaa !53
  %i.alj = getelementptr inbounds nuw [4 x i8], ptr %i.akx, i64 %i.ho
  %i.alk = getelementptr inbounds nuw [4 x i8], ptr %i.aky, i64 %i.ho
  %i.all = getelementptr inbounds nuw [4 x i8], ptr %i.akz, i64 %i.ho
  %i.alm = getelementptr inbounds nuw [4 x i8], ptr %i.ala, i64 %i.ho
  %i.aln = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 48
  %i.alo = load float, ptr %i.alj, align 4, !tbaa !53
  store float %i.alo, ptr %i.aln, align 4, !tbaa !53
  %i.alp = load float, ptr %i.alk, align 4, !tbaa !53
  %i.alq = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 52
  store float %i.alp, ptr %i.alq, align 4, !tbaa !53
  %i.alr = load float, ptr %i.all, align 4, !tbaa !53
  %i.als = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 56
  store float %i.alr, ptr %i.als, align 4, !tbaa !53
  %i.alt = load float, ptr %i.alm, align 4, !tbaa !53
  %i.alu = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 60
  store float %i.alt, ptr %i.alu, align 4, !tbaa !53
  %i.alv = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 64 ; 3 uses
  %indvars.iv.next1714.i = add nuw nsw i64 %indvars.iv1713.i, 1 ; 2 uses
  %exitcond1717.not.i = icmp eq i64 %indvars.iv.next1714.i, %wide.trip.count1706.i
  br i1 %exitcond1717.not.i, label %._crit_edge1283.us.i, label %bb.am, !llvm.loop !92

._crit_edge1283.us.i:                             ; preds = %bb.am
  %i.alw = getelementptr inbounds nuw [4 x i8], ptr %.19461285.us.i, i64 %i.hs ; 2 uses
  %i.alx = getelementptr inbounds nuw [4 x i8], ptr %.19431286.us.i, i64 %i.hs ; 2 uses
  %i.aly = getelementptr inbounds nuw [4 x i8], ptr %.19401287.us.i, i64 %i.hs ; 2 uses
  %i.alz = getelementptr inbounds nuw [4 x i8], ptr %.19371288.us.i, i64 %i.hs ; 2 uses
  %i.ama = add nuw nsw i32 %.19221290.us.i, 4     ; 3 uses
  %i.amb = or disjoint i32 %i.ama, 3
  %i.amc = icmp slt i32 %i.amb, %i.n
  br i1 %i.amc, label %.preheader1098.us.i, label %.preheader1101.i, !llvm.loop !93

.preheader1101.i:                                 ; preds = %._crit_edge1283.us.i, %.preheader1098.preheader.i, %.preheader1102.thread.i, %.preheader1102.i
  %.1946.lcssa.i = phi ptr [ %.0945.lcssa.i, %.preheader1102.i ], [ %scevgep1689.i, %.preheader1102.thread.i ], [ %scevgep1708.i, %.preheader1098.preheader.i ], [ %i.alw, %._crit_edge1283.us.i ] ; 6 uses
  %.1943.lcssa.i = phi ptr [ %.0942.lcssa.i, %.preheader1102.i ], [ %scevgep1693.i, %.preheader1102.thread.i ], [ %scevgep1709.i, %.preheader1098.preheader.i ], [ %i.alx, %._crit_edge1283.us.i ] ; 6 uses
  %.1940.lcssa.i = phi ptr [ %.0939.lcssa.i, %.preheader1102.i ], [ %scevgep1697.i, %.preheader1102.thread.i ], [ %scevgep1710.i, %.preheader1098.preheader.i ], [ %i.aly, %._crit_edge1283.us.i ] ; 6 uses
  %.1937.lcssa.i = phi ptr [ %.0936.lcssa.i, %.preheader1102.i ], [ %scevgep1701.i, %.preheader1102.thread.i ], [ %scevgep1711.i, %.preheader1098.preheader.i ], [ %i.alz, %._crit_edge1283.us.i ] ; 6 uses
  %.3928.lcssa.i = phi ptr [ %.0925.lcssa.i, %.preheader1102.i ], [ %i.afr, %.preheader1102.thread.i ], [ %.0925.lcssa19011910.i, %.preheader1098.preheader.i ], [ %i.alv, %._crit_edge1283.us.i ] ; 2 uses
  %.1922.lcssa.i = phi i32 [ %.0921.lcssa.i, %.preheader1102.i ], [ %i.ij, %.preheader1102.thread.i ], [ %i.ajz, %.preheader1098.preheader.i ], [ %i.ama, %._crit_edge1283.us.i ] ; 5 uses
  %i.amd = or disjoint i32 %.1922.lcssa.i, 1
  %i.ame = icmp slt i32 %i.amd, %i.n
  br i1 %i.ame, label %.preheader1097.lr.ph.i, label %.preheader1100.i

.preheader1097.lr.ph.i:                           ; preds = %.preheader1101.i
  br i1 %i.hn, label %.preheader1097.us.i.preheader, label %._crit_edge1337.split.i

.preheader1097.us.i.preheader:                    ; preds = %.preheader1097.lr.ph.i
  %scevgep375 = getelementptr i8, ptr %.1937.lcssa.i, i64 %i.it
  %scevgep376 = getelementptr i8, ptr %.1937.lcssa.i, i64 %i.iu
  %2 = add i32 %.1922.lcssa.i, 3
  %smax = tail call i32 @llvm.smax.i32(i32 %i.n, i32 %2)
  %3 = add i32 %smax, -2
  %i.amf = sub i32 %3, %.1922.lcssa.i
  %i.amg = lshr i32 %i.amf, 1
  %i.amh = zext nneg i32 %i.amg to i64
  %i.ami = mul i64 %i.iv, %i.amh                  ; 8 uses
  %scevgep377 = getelementptr i8, ptr %scevgep376, i64 %i.ami
  %scevgep378 = getelementptr i8, ptr %.1940.lcssa.i, i64 %i.it
  %scevgep379 = getelementptr i8, ptr %.1940.lcssa.i, i64 %i.iu
  %scevgep380 = getelementptr i8, ptr %scevgep379, i64 %i.ami
  %scevgep381 = getelementptr i8, ptr %.1943.lcssa.i, i64 %i.it
  %scevgep382 = getelementptr i8, ptr %.1943.lcssa.i, i64 %i.iu
  %scevgep383 = getelementptr i8, ptr %scevgep382, i64 %i.ami
  %scevgep384 = getelementptr i8, ptr %.1946.lcssa.i, i64 %i.it
  %scevgep385 = getelementptr i8, ptr %.1946.lcssa.i, i64 %i.iu
  %scevgep386 = getelementptr i8, ptr %scevgep385, i64 %i.ami
  %scevgep387 = getelementptr i8, ptr %.1937.lcssa.i, i64 %i.ir
  %scevgep388 = getelementptr i8, ptr %scevgep387, i64 %i.ami
  %scevgep389 = getelementptr i8, ptr %.1940.lcssa.i, i64 %i.ir
  %scevgep390 = getelementptr i8, ptr %scevgep389, i64 %i.ami
  %scevgep391 = getelementptr i8, ptr %.1943.lcssa.i, i64 %i.ir
  %scevgep392 = getelementptr i8, ptr %scevgep391, i64 %i.ami
  %scevgep393 = getelementptr i8, ptr %.1946.lcssa.i, i64 %i.ir
  %scevgep394 = getelementptr i8, ptr %scevgep393, i64 %i.ami
  %i.amj = insertelement <8 x ptr> poison, ptr %scevgep380, i64 0
  %i.amk = insertelement <8 x ptr> %i.amj, ptr %scevgep377, i64 1
  %i.aml = insertelement <8 x ptr> %i.amk, ptr %scevgep383, i64 2
  %i.amm = insertelement <8 x ptr> %i.aml, ptr %scevgep386, i64 3
  %i.amn = insertelement <8 x ptr> %i.amm, ptr %scevgep388, i64 4
  %i.amo = insertelement <8 x ptr> %i.amn, ptr %scevgep390, i64 5
  %i.amp = insertelement <8 x ptr> %i.amo, ptr %scevgep392, i64 6
  %i.amq = insertelement <8 x ptr> %i.amp, ptr %scevgep394, i64 7
  %i.amr = insertelement <8 x ptr> poison, ptr %scevgep378, i64 0
  %i.ams = insertelement <8 x ptr> %i.amr, ptr %scevgep375, i64 1
  %i.amt = insertelement <8 x ptr> %i.ams, ptr %scevgep381, i64 2
  %i.amu = insertelement <8 x ptr> %i.amt, ptr %scevgep384, i64 3
  %i.amv = insertelement <8 x ptr> %i.amu, ptr %.1937.lcssa.i, i64 4
  %i.amw = insertelement <8 x ptr> %i.amv, ptr %.1940.lcssa.i, i64 5
  %i.amx = insertelement <8 x ptr> %i.amw, ptr %.1943.lcssa.i, i64 6
  %i.amy = insertelement <8 x ptr> %i.amx, ptr %.1946.lcssa.i, i64 7
  br label %.preheader1097.us.i

.preheader1097.us.i:                              ; preds = %.preheader1097.us.i.preheader, %._crit_edge1311.us.i
  %.29231318.us.i = phi i32 [ %i.apb, %._crit_edge1311.us.i ], [ %.1922.lcssa.i, %.preheader1097.us.i.preheader ]
  %.69311317.us.i = phi ptr [ %.lcssa255, %._crit_edge1311.us.i ], [ %.3928.lcssa.i, %.preheader1097.us.i.preheader ] ; 6 uses
  %.29381316.us.i = phi ptr [ %i.apa, %._crit_edge1311.us.i ], [ %.1937.lcssa.i, %.preheader1097.us.i.preheader ] ; 3 uses
  %.29411315.us.i = phi ptr [ %i.aoz, %._crit_edge1311.us.i ], [ %.1940.lcssa.i, %.preheader1097.us.i.preheader ] ; 3 uses
  %.29441314.us.i = phi ptr [ %i.aoy, %._crit_edge1311.us.i ], [ %.1943.lcssa.i, %.preheader1097.us.i.preheader ] ; 3 uses
  %.29471313.us.i = phi ptr [ %i.aox, %._crit_edge1311.us.i ], [ %.1946.lcssa.i, %.preheader1097.us.i.preheader ] ; 3 uses
  br i1 %min.iters.check434, label %scalar.ph433.preheader, label %vector.memcheck373

vector.memcheck373:                               ; preds = %.preheader1097.us.i
  %scevgep374 = getelementptr i8, ptr %.69311317.us.i, i64 %i.is
  %i.amz = insertelement <8 x ptr> poison, ptr %.69311317.us.i, i64 0
  %i.ana = shufflevector <8 x ptr> %i.amz, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.anb = icmp ult <8 x ptr> %i.ana, %i.amq
  %i.anc = insertelement <8 x ptr> poison, ptr %scevgep374, i64 0
  %i.and = shufflevector <8 x ptr> %i.anc, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.ane = icmp ult <8 x ptr> %i.amy, %i.and
  %i.anf = and <8 x i1> %i.anb, %i.ane
  %i.ang = bitcast <8 x i1> %i.anf to i8
  %i.anh = icmp ne i8 %i.ang, 0
  %op.rdx816 = or i1 %i.anh, %stride.check401
  br i1 %op.rdx816, label %scalar.ph433.preheader, label %vector.ph435

vector.ph435:                                     ; preds = %vector.memcheck373
  %i.ani = getelementptr i8, ptr %.69311317.us.i, i64 %i.iw ; 2 uses
  br label %vector.body437

vector.body437:                                   ; preds = %vector.body437, %vector.ph435
  %index438 = phi i64 [ 0, %vector.ph435 ], [ %index.next449, %vector.body437 ] ; 6 uses
  %i.anj = shl i64 %index438, 5
  %next.gep439 = getelementptr i8, ptr %.69311317.us.i, i64 %i.anj
  %i.ank = getelementptr inbounds nuw [4 x i8], ptr %.29471313.us.i, i64 %index438 ; 2 uses
  %i.anl = getelementptr inbounds nuw [4 x i8], ptr %.29441314.us.i, i64 %index438 ; 2 uses
  %i.anm = getelementptr inbounds nuw [4 x i8], ptr %.29411315.us.i, i64 %index438 ; 2 uses
  %i.ann = getelementptr inbounds nuw [4 x i8], ptr %.29381316.us.i, i64 %index438 ; 2 uses
  %wide.load440 = load <8 x float>, ptr %i.ank, align 4, !tbaa !53, !alias.scope !94
  %wide.load441 = load <8 x float>, ptr %i.anl, align 4, !tbaa !53, !alias.scope !97
  %wide.load442 = load <8 x float>, ptr %i.anm, align 4, !tbaa !53, !alias.scope !99
  %wide.load443 = load <8 x float>, ptr %i.ann, align 4, !tbaa !53, !alias.scope !101
  %i.ano = getelementptr inbounds nuw [4 x i8], ptr %i.ank, i64 %i.ho
  %i.anp = getelementptr inbounds nuw [4 x i8], ptr %i.anl, i64 %i.ho
  %i.anq = getelementptr inbounds nuw [4 x i8], ptr %i.anm, i64 %i.ho
  %i.anr = getelementptr inbounds nuw [4 x i8], ptr %i.ann, i64 %i.ho
  %wide.load444 = load <8 x float>, ptr %i.ano, align 4, !tbaa !53, !alias.scope !103
  %wide.load445 = load <8 x float>, ptr %i.anp, align 4, !tbaa !53, !alias.scope !105
  %wide.load446 = load <8 x float>, ptr %i.anq, align 4, !tbaa !53, !alias.scope !107
  %wide.load447 = load <8 x float>, ptr %i.anr, align 4, !tbaa !53, !alias.scope !109
  %i.ans = shufflevector <8 x float> %wide.load440, <8 x float> %wide.load441, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ant = shufflevector <8 x float> %wide.load442, <8 x float> %wide.load443, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.anu = shufflevector <8 x float> %wide.load444, <8 x float> %wide.load445, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.anv = shufflevector <8 x float> %wide.load446, <8 x float> %wide.load447, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.anw = shufflevector <16 x float> %i.ans, <16 x float> %i.ant, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.anx = shufflevector <16 x float> %i.anu, <16 x float> %i.anv, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec448 = shufflevector <32 x float> %i.anw, <32 x float> %i.anx, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x float> %interleaved.vec448, ptr %next.gep439, align 4, !tbaa !53, !alias.scope !111, !noalias !113
  %index.next449 = add nuw i64 %index438, 8       ; 2 uses
  %i.any = icmp eq i64 %index.next449, %n.vec436
  br i1 %i.any, label %middle.block450, label %vector.body437, !llvm.loop !114

middle.block450:                                  ; preds = %vector.body437
  br i1 %cmp.n451, label %._crit_edge1311.us.i, label %scalar.ph433.preheader

scalar.ph433.preheader:                           ; preds = %vector.memcheck373, %.preheader1097.us.i, %middle.block450
  %indvars.iv1723.i.ph = phi i64 [ 0, %vector.memcheck373 ], [ 0, %.preheader1097.us.i ], [ %n.vec436, %middle.block450 ]
  %.79321309.us.i.ph = phi ptr [ %.69311317.us.i, %vector.memcheck373 ], [ %.69311317.us.i, %.preheader1097.us.i ], [ %i.ani, %middle.block450 ]
  br label %scalar.ph433

scalar.ph433:                                     ; preds = %scalar.ph433.preheader, %scalar.ph433
  %indvars.iv1723.i = phi i64 [ %indvars.iv.next1724.i, %scalar.ph433 ], [ %indvars.iv1723.i.ph, %scalar.ph433.preheader ] ; 5 uses
  %.79321309.us.i = phi ptr [ %i.aow, %scalar.ph433 ], [ %.79321309.us.i.ph, %scalar.ph433.preheader ] ; 9 uses
  %i.anz = getelementptr inbounds nuw [4 x i8], ptr %.29471313.us.i, i64 %indvars.iv1723.i ; 2 uses
  %i.aoa = getelementptr inbounds nuw [4 x i8], ptr %.29441314.us.i, i64 %indvars.iv1723.i ; 2 uses
  %i.aob = getelementptr inbounds nuw [4 x i8], ptr %.29411315.us.i, i64 %indvars.iv1723.i ; 2 uses
  %i.aoc = getelementptr inbounds nuw [4 x i8], ptr %.29381316.us.i, i64 %indvars.iv1723.i ; 2 uses
  %i.aod = load float, ptr %i.anz, align 4, !tbaa !53
  store float %i.aod, ptr %.79321309.us.i, align 4, !tbaa !53
  %i.aoe = load float, ptr %i.aoa, align 4, !tbaa !53
  %i.aof = getelementptr inbounds nuw i8, ptr %.79321309.us.i, i64 4
  store float %i.aoe, ptr %i.aof, align 4, !tbaa !53
  %i.aog = load float, ptr %i.aob, align 4, !tbaa !53
  %i.aoh = getelementptr inbounds nuw i8, ptr %.79321309.us.i, i64 8
  store float %i.aog, ptr %i.aoh, align 4, !tbaa !53
  %i.aoi = load float, ptr %i.aoc, align 4, !tbaa !53
  %i.aoj = getelementptr inbounds nuw i8, ptr %.79321309.us.i, i64 12
  store float %i.aoi, ptr %i.aoj, align 4, !tbaa !53
  %i.aok = getelementptr inbounds nuw [4 x i8], ptr %i.anz, i64 %i.ho
  %i.aol = getelementptr inbounds nuw [4 x i8], ptr %i.aoa, i64 %i.ho
  %i.aom = getelementptr inbounds nuw [4 x i8], ptr %i.aob, i64 %i.ho
  %i.aon = getelementptr inbounds nuw [4 x i8], ptr %i.aoc, i64 %i.ho
  %i.aoo = getelementptr inbounds nuw i8, ptr %.79321309.us.i, i64 16
  %i.aop = load float, ptr %i.aok, align 4, !tbaa !53
  store float %i.aop, ptr %i.aoo, align 4, !tbaa !53
  %i.aoq = load float, ptr %i.aol, align 4, !tbaa !53
  %i.aor = getelementptr inbounds nuw i8, ptr %.79321309.us.i, i64 20
  store float %i.aoq, ptr %i.aor, align 4, !tbaa !53
  %i.aos = load float, ptr %i.aom, align 4, !tbaa !53
  %i.aot = getelementptr inbounds nuw i8, ptr %.79321309.us.i, i64 24
  store float %i.aos, ptr %i.aot, align 4, !tbaa !53
  %i.aou = load float, ptr %i.aon, align 4, !tbaa !53
  %i.aov = getelementptr inbounds nuw i8, ptr %.79321309.us.i, i64 28
  store float %i.aou, ptr %i.aov, align 4, !tbaa !53
  %i.aow = getelementptr inbounds nuw i8, ptr %.79321309.us.i, i64 32 ; 2 uses
  %indvars.iv.next1724.i = add nuw nsw i64 %indvars.iv1723.i, 1 ; 2 uses
  %exitcond1727.not.i = icmp eq i64 %indvars.iv.next1724.i, %wide.trip.count1706.i
  br i1 %exitcond1727.not.i, label %._crit_edge1311.us.i, label %scalar.ph433, !llvm.loop !115

._crit_edge1311.us.i:                             ; preds = %scalar.ph433, %middle.block450
  %.lcssa255 = phi ptr [ %i.ani, %middle.block450 ], [ %i.aow, %scalar.ph433 ] ; 2 uses
  %i.aox = getelementptr inbounds nuw [4 x i8], ptr %.29471313.us.i, i64 %i.hu ; 2 uses
  %i.aoy = getelementptr inbounds nuw [4 x i8], ptr %.29441314.us.i, i64 %i.hu ; 2 uses
  %i.aoz = getelementptr inbounds nuw [4 x i8], ptr %.29411315.us.i, i64 %i.hu ; 2 uses
  %i.apa = getelementptr inbounds nuw [4 x i8], ptr %.29381316.us.i, i64 %i.hu ; 2 uses
  %i.apb = add nuw nsw i32 %.29231318.us.i, 2     ; 3 uses
  %i.apc = or disjoint i32 %i.apb, 1
  %i.apd = icmp slt i32 %i.apc, %i.n
  br i1 %i.apd, label %.preheader1097.us.i, label %.preheader1100.i, !llvm.loop !116

.preheader1100.i:                                 ; preds = %._crit_edge1311.us.i, %.preheader1101.i
  %.2947.lcssa.i = phi ptr [ %.1946.lcssa.i, %.preheader1101.i ], [ %i.aox, %._crit_edge1311.us.i ] ; 6 uses
  %.2944.lcssa.i = phi ptr [ %.1943.lcssa.i, %.preheader1101.i ], [ %i.aoy, %._crit_edge1311.us.i ] ; 6 uses
  %.2941.lcssa.i = phi ptr [ %.1940.lcssa.i, %.preheader1101.i ], [ %i.aoz, %._crit_edge1311.us.i ] ; 6 uses
  %.2938.lcssa.i = phi ptr [ %.1937.lcssa.i, %.preheader1101.i ], [ %i.apa, %._crit_edge1311.us.i ] ; 6 uses
  %.6931.lcssa.i = phi ptr [ %.3928.lcssa.i, %.preheader1101.i ], [ %.lcssa255, %._crit_edge1311.us.i ]
  %.2923.lcssa.i = phi i32 [ %.1922.lcssa.i, %.preheader1101.i ], [ %i.apb, %._crit_edge1311.us.i ] ; 2 uses
  %i.ape = icmp sge i32 %.2923.lcssa.i, %i.n
  %brmerge1467.i = or i1 %i.hv, %i.ape
  br i1 %brmerge1467.i, label %._crit_edge1337.split.i, label %.preheader1096.i.preheader

.preheader1096.i.preheader:                       ; preds = %.preheader1100.i
  %scevgep337 = getelementptr i8, ptr %.2938.lcssa.i, i64 %i.ir
  %scevgep338 = getelementptr i8, ptr %.2941.lcssa.i, i64 %i.ir
  %scevgep339 = getelementptr i8, ptr %.2944.lcssa.i, i64 %i.ir
  %scevgep340 = getelementptr i8, ptr %.2947.lcssa.i, i64 %i.ir
  br label %.preheader1096.i

.preheader1096.i:                                 ; preds = %.preheader1096.i.preheader, %._crit_edge1333.i
  %.39241336.i = phi i32 [ %i.aqb, %._crit_edge1333.i ], [ %.2923.lcssa.i, %.preheader1096.i.preheader ]
  %.99341335.i = phi ptr [ %.lcssa261, %._crit_edge1333.i ], [ %.6931.lcssa.i, %.preheader1096.i.preheader ] ; 9 uses
  br i1 %min.iters.check357, label %scalar.ph356.preheader, label %vector.memcheck335

vector.memcheck335:                               ; preds = %.preheader1096.i
  %scevgep336 = getelementptr i8, ptr %.99341335.i, i64 %i.iq ; 4 uses
  %bound0341 = icmp ult ptr %.99341335.i, %scevgep337
  %bound1342 = icmp ult ptr %.2938.lcssa.i, %scevgep336
  %found.conflict343 = and i1 %bound0341, %bound1342
  %bound0344 = icmp ult ptr %.99341335.i, %scevgep338
  %bound1345 = icmp ult ptr %.2941.lcssa.i, %scevgep336
  %found.conflict346 = and i1 %bound0344, %bound1345
  %conflict.rdx347 = or i1 %found.conflict343, %found.conflict346
  %bound0348 = icmp ult ptr %.99341335.i, %scevgep339
  %bound1349 = icmp ult ptr %.2944.lcssa.i, %scevgep336
  %found.conflict350 = and i1 %bound0348, %bound1349
  %conflict.rdx351 = or i1 %conflict.rdx347, %found.conflict350
  %bound0352 = icmp ult ptr %.99341335.i, %scevgep340
  %bound1353 = icmp ult ptr %.2947.lcssa.i, %scevgep336
  %found.conflict354 = and i1 %bound0352, %bound1353
  %conflict.rdx355 = or i1 %conflict.rdx351, %found.conflict354
  br i1 %conflict.rdx355, label %scalar.ph356.preheader, label %vector.ph358

vector.ph358:                                     ; preds = %vector.memcheck335
  %i.apf = getelementptr i8, ptr %.99341335.i, i64 %i.ix ; 2 uses
  br label %vector.body360

vector.body360:                                   ; preds = %vector.body360, %vector.ph358
  %index361 = phi i64 [ 0, %vector.ph358 ], [ %index.next368, %vector.body360 ] ; 6 uses
  %i.apg = shl i64 %index361, 4
  %next.gep362 = getelementptr i8, ptr %.99341335.i, i64 %i.apg
  %i.aph = getelementptr inbounds nuw [4 x i8], ptr %.2947.lcssa.i, i64 %index361
  %i.api = getelementptr inbounds nuw [4 x i8], ptr %.2944.lcssa.i, i64 %index361
  %i.apj = getelementptr inbounds nuw [4 x i8], ptr %.2941.lcssa.i, i64 %index361
  %i.apk = getelementptr inbounds nuw [4 x i8], ptr %.2938.lcssa.i, i64 %index361
  %wide.load363 = load <8 x float>, ptr %i.aph, align 4, !tbaa !53, !alias.scope !117
  %wide.load364 = load <8 x float>, ptr %i.api, align 4, !tbaa !53, !alias.scope !120
  %wide.load365 = load <8 x float>, ptr %i.apj, align 4, !tbaa !53, !alias.scope !122
  %wide.load366 = load <8 x float>, ptr %i.apk, align 4, !tbaa !53, !alias.scope !124
  %i.apl = shufflevector <8 x float> %wide.load363, <8 x float> %wide.load364, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.apm = shufflevector <8 x float> %wide.load365, <8 x float> %wide.load366, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec367 = shufflevector <16 x float> %i.apl, <16 x float> %i.apm, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec367, ptr %next.gep362, align 4, !tbaa !53, !alias.scope !126, !noalias !128
  %index.next368 = add nuw i64 %index361, 8       ; 2 uses
  %i.apn = icmp eq i64 %index.next368, %n.vec359
  br i1 %i.apn, label %middle.block369, label %vector.body360, !llvm.loop !129

middle.block369:                                  ; preds = %vector.body360
  br i1 %cmp.n370, label %._crit_edge1333.i, label %scalar.ph356.preheader

scalar.ph356.preheader:                           ; preds = %vector.memcheck335, %.preheader1096.i, %middle.block369
  %indvars.iv1728.i.ph = phi i64 [ 0, %vector.memcheck335 ], [ 0, %.preheader1096.i ], [ %n.vec359, %middle.block369 ] ; 7 uses
  %.109351331.i.ph = phi ptr [ %.99341335.i, %vector.memcheck335 ], [ %.99341335.i, %.preheader1096.i ], [ %i.apf, %middle.block369 ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph356.prol.loopexit, label %scalar.ph356.prol

scalar.ph356.prol:                                ; preds = %scalar.ph356.preheader
  %i.apo = getelementptr inbounds nuw [4 x i8], ptr %.2947.lcssa.i, i64 %indvars.iv1728.i.ph
  %i.app = getelementptr inbounds nuw [4 x i8], ptr %.2944.lcssa.i, i64 %indvars.iv1728.i.ph
  %i.apq = getelementptr inbounds nuw [4 x i8], ptr %.2941.lcssa.i, i64 %indvars.iv1728.i.ph
  %i.apr = getelementptr inbounds nuw [4 x i8], ptr %.2938.lcssa.i, i64 %indvars.iv1728.i.ph
  %i.aps = load float, ptr %i.apo, align 4, !tbaa !53
  store float %i.aps, ptr %.109351331.i.ph, align 4, !tbaa !53
  %i.apt = load float, ptr %i.app, align 4, !tbaa !53
  %i.apu = getelementptr inbounds nuw i8, ptr %.109351331.i.ph, i64 4
  store float %i.apt, ptr %i.apu, align 4, !tbaa !53
  %i.apv = load float, ptr %i.apq, align 4, !tbaa !53
  %i.apw = getelementptr inbounds nuw i8, ptr %.109351331.i.ph, i64 8
  store float %i.apv, ptr %i.apw, align 4, !tbaa !53
  %i.apx = load float, ptr %i.apr, align 4, !tbaa !53
  %i.apy = getelementptr inbounds nuw i8, ptr %.109351331.i.ph, i64 12
  store float %i.apx, ptr %i.apy, align 4, !tbaa !53
  %i.apz = getelementptr inbounds nuw i8, ptr %.109351331.i.ph, i64 16 ; 2 uses
  %indvars.iv.next1729.i.prol = or disjoint i64 %indvars.iv1728.i.ph, 1
  br label %scalar.ph356.prol.loopexit

scalar.ph356.prol.loopexit:                       ; preds = %scalar.ph356.prol, %scalar.ph356.preheader
  %.lcssa856.unr = phi ptr [ poison, %scalar.ph356.preheader ], [ %i.apz, %scalar.ph356.prol ]
  %indvars.iv1728.i.unr = phi i64 [ %indvars.iv1728.i.ph, %scalar.ph356.preheader ], [ %indvars.iv.next1729.i.prol, %scalar.ph356.prol ]
  %.109351331.i.unr = phi ptr [ %.109351331.i.ph, %scalar.ph356.preheader ], [ %i.apz, %scalar.ph356.prol ]
  %i.aqa = icmp eq i64 %indvars.iv1728.i.ph, %i.iy
  br i1 %i.aqa, label %._crit_edge1333.i, label %scalar.ph356

._crit_edge1333.i:                                ; preds = %scalar.ph356.prol.loopexit, %scalar.ph356, %middle.block369
  %.lcssa261 = phi ptr [ %i.apf, %middle.block369 ], [ %.lcssa856.unr, %scalar.ph356.prol.loopexit ], [ %i.aqz, %scalar.ph356 ]
  %i.aqb = add nuw nsw i32 %.39241336.i, 1        ; 2 uses
  %exitcond1733.not.i = icmp eq i32 %i.aqb, %i.n
  br i1 %exitcond1733.not.i, label %._crit_edge1337.split.i, label %.preheader1096.i, !llvm.loop !130

scalar.ph356:                                     ; preds = %scalar.ph356.prol.loopexit, %scalar.ph356
  %indvars.iv1728.i = phi i64 [ %indvars.iv.next1729.i.1, %scalar.ph356 ], [ %indvars.iv1728.i.unr, %scalar.ph356.prol.loopexit ] ; 6 uses
  %.109351331.i = phi ptr [ %i.aqz, %scalar.ph356 ], [ %.109351331.i.unr, %scalar.ph356.prol.loopexit ] ; 9 uses
  %i.aqc = getelementptr inbounds nuw [4 x i8], ptr %.2947.lcssa.i, i64 %indvars.iv1728.i
  %i.aqd = getelementptr inbounds nuw [4 x i8], ptr %.2944.lcssa.i, i64 %indvars.iv1728.i
  %i.aqe = getelementptr inbounds nuw [4 x i8], ptr %.2941.lcssa.i, i64 %indvars.iv1728.i
  %i.aqf = getelementptr inbounds nuw [4 x i8], ptr %.2938.lcssa.i, i64 %indvars.iv1728.i
  %i.aqg = load float, ptr %i.aqc, align 4, !tbaa !53
  store float %i.aqg, ptr %.109351331.i, align 4, !tbaa !53
  %i.aqh = load float, ptr %i.aqd, align 4, !tbaa !53
  %i.aqi = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 4
  store float %i.aqh, ptr %i.aqi, align 4, !tbaa !53
  %i.aqj = load float, ptr %i.aqe, align 4, !tbaa !53
  %i.aqk = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 8
  store float %i.aqj, ptr %i.aqk, align 4, !tbaa !53
  %i.aql = load float, ptr %i.aqf, align 4, !tbaa !53
  %i.aqm = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 12
  store float %i.aql, ptr %i.aqm, align 4, !tbaa !53
  %i.aqn = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 16
  %indvars.iv.next1729.i = add nuw nsw i64 %indvars.iv1728.i, 1 ; 4 uses
  %i.aqo = getelementptr inbounds nuw [4 x i8], ptr %.2947.lcssa.i, i64 %indvars.iv.next1729.i
  %i.aqp = getelementptr inbounds nuw [4 x i8], ptr %.2944.lcssa.i, i64 %indvars.iv.next1729.i
  %i.aqq = getelementptr inbounds nuw [4 x i8], ptr %.2941.lcssa.i, i64 %indvars.iv.next1729.i
  %i.aqr = getelementptr inbounds nuw [4 x i8], ptr %.2938.lcssa.i, i64 %indvars.iv.next1729.i
  %i.aqs = load float, ptr %i.aqo, align 4, !tbaa !53
  store float %i.aqs, ptr %i.aqn, align 4, !tbaa !53
  %i.aqt = load float, ptr %i.aqp, align 4, !tbaa !53
  %i.aqu = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 20
  store float %i.aqt, ptr %i.aqu, align 4, !tbaa !53
  %i.aqv = load float, ptr %i.aqq, align 4, !tbaa !53
  %i.aqw = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 24
  store float %i.aqv, ptr %i.aqw, align 4, !tbaa !53
  %i.aqx = load float, ptr %i.aqr, align 4, !tbaa !53
  %i.aqy = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 28
  store float %i.aqx, ptr %i.aqy, align 4, !tbaa !53
  %i.aqz = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 32 ; 2 uses
  %indvars.iv.next1729.i.1 = add nuw nsw i64 %indvars.iv1728.i, 2 ; 2 uses
  %exitcond1732.not.i.1 = icmp eq i64 %indvars.iv.next1729.i.1, %wide.trip.count1706.i
  br i1 %exitcond1732.not.i.1, label %._crit_edge1333.i, label %scalar.ph356, !llvm.loop !131

._crit_edge1337.split.i:                          ; preds = %._crit_edge1333.i, %.preheader1100.i, %.preheader1097.lr.ph.i
  %indvars.iv.next1737.i = add nuw nsw i64 %indvars.iv1736.i, 4 ; 3 uses
  %i.ara = icmp slt i64 %indvars.iv.next1737.i, %invariant.op.i
  %indvars.iv.next1688.i = add i32 %indvars.iv1687.i, %i.ic
  %indvars.iv.next1692.i = add i32 %indvars.iv1691.i, %i.ic
  %indvars.iv.next1696.i = add i32 %indvars.iv1695.i, %i.ic
  %indvars.iv.next1700.i = add i32 %indvars.iv1699.i, %i.ic
  %indvars.iv.next1735.i = add i32 %indvars.iv1734.i, 4
  br i1 %i.ara, label %_ZN4ncnn3MatD2Ev.exit1004.i, label %.preheader1095.loopexit.i, !llvm.loop !132

.preheader1087.loopexit.i:                        ; preds = %._crit_edge1400.split.i
  %i.arb = trunc nsw i64 %indvars.iv.next1776.i to i32
  br label %.preheader1087.i

.preheader1087.i:                                 ; preds = %.preheader1087.loopexit.i, %.preheader1095.i
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader1095.i ], [ %i.arb, %.preheader1087.loopexit.i ] ; 4 uses
  %i.arc = icmp slt i32 %.2.lcssa.i, %i.m
  br i1 %i.arc, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i, label %_ZN4ncnnL37convolution1d_transform_kernel_packedERKNS_3MatERS0_iii.exit

_ZN4ncnn3MatD2Ev.exit.lr.ph.i:                    ; preds = %.preheader1087.i
  %i.ard = load ptr, ptr %i.o, align 8, !tbaa !18 ; 17 uses
  %i.are = mul i32 %i.n, %i.j                     ; 3 uses
  %i.arf = load ptr, ptr %i.p, align 8, !tbaa !18, !noalias !133
  %i.arg = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.arh = load i64, ptr %i.arg, align 8, !tbaa !20, !noalias !133
  %i.ari = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.arj = load i64, ptr %i.ari, align 8, !tbaa !49, !noalias !133
  %factor.op.mul1462.i = mul i64 %i.arj, %i.arh
  %i.ark = icmp sgt i32 %i.n, 7
  %i.arl = icmp sgt i32 %i.j, 0                   ; 3 uses
  %i.arm = sext i32 %i.j to i64                   ; 43 uses
  %i.arn = shl i32 %i.j, 3                        ; 2 uses
  %i.aro = sext i32 %i.arn to i64                 ; 3 uses
  %i.arp = shl i32 %i.j, 2
  %i.arq = sext i32 %i.arp to i64                 ; 3 uses
  %i.arr = shl i32 %i.j, 1
  %i.ars = sext i32 %i.arr to i64                 ; 2 uses
  %i.art = icmp slt i32 %i.j, 1
  %i.aru = add i32 %i.n, -8                       ; 3 uses
  %i.arv = lshr i32 %i.aru, 1
  %i.arw = and i32 %i.arv, 2147483644
  %narrow1839.i = add nuw i32 %i.arw, 4
  %i.arx = zext i32 %narrow1839.i to i64
  %i.ary = mul nsw i64 %i.arx, %i.aro
  %scevgep1778.i = getelementptr i8, ptr %i.ard, i64 %i.ary
  %i.arz = mul i32 %i.are, %.2.lcssa.i
  %i.asa = and i32 %i.aru, -8
  %i.asb = add i32 %i.asa, 8                      ; 4 uses
  %i.asc = add i32 %i.n, -4
  %i.asd = sext i32 %.2.lcssa.i to i64
  %wide.trip.count1811.i = sext i32 %i.m to i64
  %i.ase = or disjoint i32 %i.asb, 3
  %i.asf = icmp slt i32 %i.ase, %i.n
  %wide.trip.count1786.i = zext i32 %i.j to i64   ; 26 uses
  %i.asg = shl nuw nsw i64 %wide.trip.count1786.i, 3
  %i.ash = shl nuw nsw i64 %i.arm, 2              ; 2 uses
  %i.asi = shl nuw nsw i64 %wide.trip.count1786.i, 2 ; 6 uses
  %i.asj = shl nsw i64 %i.ars, 2
  %i.ask = shl nuw nsw i64 %wide.trip.count1786.i, 4
  %i.asl = mul nsw i64 %i.arm, 12                 ; 2 uses
  %i.asm = shl nsw i64 %i.arq, 2
  %i.asn = add i32 %i.n, -4
  %i.aso = shl nsw i64 %i.arm, 3                  ; 2 uses
  %i.asp = shl nuw nsw i64 %i.arm, 2              ; 2 uses
  %i.asq = shl nuw nsw i64 %wide.trip.count1786.i, 5
  %i.asr = mul nsw i64 %i.arm, 28                 ; 2 uses
  %scevgep725.a = getelementptr i8, ptr %i.ard, i64 %i.asr
  %i.ass = mul i32 %.2.lcssa.i, %i.j
  %i.ast = mul i32 %i.ass, %i.n
  %i.asu = mul i32 %i.j, %i.n
  %i.asv = lshr i32 %i.aru, 3
  %i.asw = zext nneg i32 %i.asv to i64
  %i.asx = mul nsw i64 %i.asw, %i.aro
  %i.asy = shl nsw i64 %i.asx, 2                  ; 8 uses
  %i.asz = shl nuw nsw i64 %wide.trip.count1786.i, 2 ; 8 uses
  %i.ata = getelementptr i8, ptr %i.ard, i64 %i.asy
  %i.atb = getelementptr i8, ptr %i.ata, i64 %i.asr
  %scevgep727.a = getelementptr i8, ptr %i.atb, i64 %i.asz
  %i.atc = mul nsw i64 %i.arm, 24                 ; 2 uses
  %scevgep729.a = getelementptr i8, ptr %i.ard, i64 %i.atc
  %i.atd = getelementptr i8, ptr %i.ard, i64 %i.asy
  %i.ate = getelementptr i8, ptr %i.atd, i64 %i.atc
  %scevgep731.a = getelementptr i8, ptr %i.ate, i64 %i.asz
  %i.atf = mul nsw i64 %i.arm, 20                 ; 2 uses
  %scevgep733.a = getelementptr i8, ptr %i.ard, i64 %i.atf
  %i.atg = getelementptr i8, ptr %i.ard, i64 %i.asy
  %i.ath = getelementptr i8, ptr %i.atg, i64 %i.atf
  %scevgep735.a = getelementptr i8, ptr %i.ath, i64 %i.asz
  %i.ati = shl nsw i64 %i.arm, 4                  ; 2 uses
  %scevgep737.a = getelementptr i8, ptr %i.ard, i64 %i.ati
  %i.atj = getelementptr i8, ptr %i.ard, i64 %i.asy
  %i.atk = getelementptr i8, ptr %i.atj, i64 %i.ati
  %scevgep739.a = getelementptr i8, ptr %i.atk, i64 %i.asz
  %i.atl = mul nsw i64 %i.arm, 12                 ; 2 uses
  %scevgep741.a = getelementptr i8, ptr %i.ard, i64 %i.atl
  %i.atm = getelementptr i8, ptr %i.ard, i64 %i.asy
  %i.atn = getelementptr i8, ptr %i.atm, i64 %i.atl
  %scevgep743.a = getelementptr i8, ptr %i.atn, i64 %i.asz
  %i.ato = shl nsw i64 %i.arm, 3                  ; 2 uses
  %scevgep745.a = getelementptr i8, ptr %i.ard, i64 %i.ato
  %i.atp = getelementptr i8, ptr %i.ard, i64 %i.asy
  %i.atq = getelementptr i8, ptr %i.atp, i64 %i.ato
  %scevgep747.a = getelementptr i8, ptr %i.atq, i64 %i.asz
  %i.atr = shl nuw nsw i64 %i.arm, 2              ; 2 uses
  %scevgep749.a = getelementptr i8, ptr %i.ard, i64 %i.atr
  %i.ats = getelementptr i8, ptr %i.ard, i64 %i.asy
  %i.att = getelementptr i8, ptr %i.ats, i64 %i.atr
  %scevgep751.a = getelementptr i8, ptr %i.att, i64 %i.asz
  %i.atu = getelementptr i8, ptr %i.ard, i64 %i.asy
  %scevgep753 = getelementptr i8, ptr %i.atu, i64 %i.asz
  %min.iters.check795 = icmp ult i32 %i.j, 16
  %stride.check762 = icmp slt i32 %i.arn, 0
  %n.vec797 = and i64 %wide.trip.count1786.i, 2147483640 ; 4 uses
  %i.atv = shl nuw nsw i64 %n.vec797, 5
  %cmp.n812 = icmp eq i64 %n.vec797, %wide.trip.count1786.i
  %min.iters.check707 = icmp ult i32 %i.j, 8
  %n.vec709 = and i64 %wide.trip.count1786.i, 2147483640 ; 4 uses
  %i.atw = shl nuw nsw i64 %n.vec709, 4
  %cmp.n720 = icmp eq i64 %n.vec709, %wide.trip.count1786.i
  %xtraiter891 = and i64 %wide.trip.count1786.i, 1
  %lcmp.mod892.not = icmp eq i64 %xtraiter891, 0
  %i.atx = add nsw i64 %wide.trip.count1786.i, -1
  %min.iters.check660 = icmp ult i32 %i.j, 6
  %n.vec662 = and i64 %wide.trip.count1786.i, 2147483644 ; 4 uses
  %i.aty = shl nuw nsw i64 %n.vec662, 3
  %cmp.n675 = icmp eq i64 %n.vec662, %wide.trip.count1786.i
  %xtraiter894 = and i64 %wide.trip.count1786.i, 3 ; 2 uses
  %lcmp.mod895.not = icmp eq i64 %xtraiter894, 0
  %min.iters.check621.a = icmp ult i32 %i.j, 8
  %min.iters.check622 = icmp ult i32 %i.j, 32
  %i.atz = and i64 %wide.trip.count1786.i, 24
  %n.vec624 = and i64 %wide.trip.count1786.i, 2147483616 ; 5 uses
  %i.aua = shl nuw nsw i64 %n.vec624, 2
  %cmp.n634 = icmp eq i64 %n.vec624, %wide.trip.count1786.i
  %min.epilog.iters.check = icmp eq i64 %i.atz, 0
  %n.vec636 = and i64 %wide.trip.count1786.i, 2147483640 ; 4 uses
  %i.aub = shl nuw nsw i64 %n.vec636, 2
  %cmp.n641 = icmp eq i64 %n.vec636, %wide.trip.count1786.i
  %xtraiter897 = and i64 %wide.trip.count1786.i, 7 ; 2 uses
  %lcmp.mod898.not = icmp eq i64 %xtraiter897, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i

_ZN4ncnn3MatD2Ev.exit1003.i:                      ; preds = %._crit_edge1400.split.i, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i
  %indvars.iv1775.i = phi i64 [ %i.adr, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i ], [ %indvars.iv.next1776.i, %._crit_edge1400.split.i ] ; 2 uses
  %indvars.iv1746.i = phi i32 [ %i.adn, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i ], [ %indvars.iv.next1747.i, %._crit_edge1400.split.i ] ; 2 uses
  %indvars.iv1742.i = phi i32 [ %i.adl, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i ], [ %indvars.iv.next1743.i, %._crit_edge1400.split.i ] ; 2 uses
  %i.auc = phi i32 [ %i.acf, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i ], [ %i.bec, %._crit_edge1400.split.i ]
  %i.aud = sext i32 %indvars.iv1742.i to i64
  %i.aue = shl nsw i64 %i.aud, 2
  %scevgep1744.i = getelementptr i8, ptr %scevgep1741.i, i64 %i.aue ; 2 uses
  %i.auf = sext i32 %indvars.iv1746.i to i64
  %i.aug = shl nsw i64 %i.auf, 2
  %scevgep1748.i = getelementptr i8, ptr %scevgep1741.i, i64 %i.aug ; 2 uses
  %i.auh = trunc i64 %indvars.iv1775.i to i32     ; 4 uses
  %i.aui = mul i32 %i.aci, %i.auh
  %i.auj = sext i32 %i.aui to i64
  %i.auk = getelementptr inbounds [4 x i8], ptr %i.ach, i64 %i.auj ; 2 uses
  %i.aul = mul i32 %i.auc, %i.aci
  %i.aum = sext i32 %i.aul to i64
  %i.aun = getelementptr inbounds [4 x i8], ptr %i.ach, i64 %i.aum ; 2 uses
  %i.auo = lshr i32 %i.auh, 3
  %i.aup = lshr i32 %i.auh, 2
  %i.auq = and i32 %i.aup, 1
  %i.aur = add nuw nsw i32 %i.auq, %i.auo
  %i.aus = lshr i32 %i.auh, 1
  %i.aut = and i32 %i.aus, 1
  %i.auu = add nuw nsw i32 %i.aur, %i.aut
  %i.auv = zext nneg i32 %i.auu to i64
  %.reass1404.i = mul i64 %factor.op.mul1403.i, %i.auv
  %i.auw = getelementptr inbounds nuw i8, ptr %i.acj, i64 %.reass1404.i ; 4 uses
  br i1 %i.aco, label %.preheader1091.lr.ph.i, label %.preheader1094.i

.preheader1091.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1003.i
  br i1 %i.acp, label %.preheader1091.us.i, label %.preheader1094.thread.i

.preheader1091.us.i:                              ; preds = %.preheader1091.lr.ph.i, %._crit_edge1344.us.i
  %.08621349.us.i = phi i32 [ %i.awv, %._crit_edge1344.us.i ], [ 0, %.preheader1091.lr.ph.i ]
  %.08661348.us.i = phi ptr [ %i.aws, %._crit_edge1344.us.i ], [ %i.auw, %.preheader1091.lr.ph.i ]
  %.08751347.us.i = phi ptr [ %i.awu, %._crit_edge1344.us.i ], [ %i.aun, %.preheader1091.lr.ph.i ] ; 2 uses
  %.08781346.us.i = phi ptr [ %i.awt, %._crit_edge1344.us.i ], [ %i.auk, %.preheader1091.lr.ph.i ] ; 2 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.preheader1091.us.i
  %indvars.iv1749.i = phi i64 [ 0, %.preheader1091.us.i ], [ %indvars.iv.next1750.i, %bb.an ] ; 3 uses
  %.18671342.us.i = phi ptr [ %.08661348.us.i, %.preheader1091.us.i ], [ %i.aws, %bb.an ] ; 17 uses
  %i.aux = getelementptr inbounds nuw [4 x i8], ptr %.08781346.us.i, i64 %indvars.iv1749.i ; 8 uses
  %i.auy = getelementptr inbounds nuw [4 x i8], ptr %.08751347.us.i, i64 %indvars.iv1749.i ; 8 uses
  %i.auz = load float, ptr %i.aux, align 4, !tbaa !53
  store float %i.auz, ptr %.18671342.us.i, align 4, !tbaa !53
  %i.ava = getelementptr inbounds nuw [4 x i8], ptr %i.aux, i64 %i.acq
  %i.avb = load float, ptr %i.ava, align 4, !tbaa !53
  %i.avc = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 4
  store float %i.avb, ptr %i.avc, align 4, !tbaa !53
  %i.avd = getelementptr inbounds nuw [4 x i8], ptr %i.aux, i64 %i.acs
  %i.ave = load float, ptr %i.avd, align 4, !tbaa !53
  %i.avf = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 8
  store float %i.ave, ptr %i.avf, align 4, !tbaa !53
  %i.avg = getelementptr inbounds nuw [4 x i8], ptr %i.aux, i64 %i.acu
  %i.avh = load float, ptr %i.avg, align 4, !tbaa !53
  %i.avi = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 12
  store float %i.avh, ptr %i.avi, align 4, !tbaa !53
  %i.avj = getelementptr inbounds nuw [4 x i8], ptr %i.aux, i64 %i.acw
  %i.avk = load float, ptr %i.avj, align 4, !tbaa !53
  %i.avl = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 16
  store float %i.avk, ptr %i.avl, align 4, !tbaa !53
  %i.avm = getelementptr inbounds nuw [4 x i8], ptr %i.aux, i64 %i.acy
  %i.avn = load float, ptr %i.avm, align 4, !tbaa !53
  %i.avo = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 20
  store float %i.avn, ptr %i.avo, align 4, !tbaa !53
  %i.avp = getelementptr inbounds nuw [4 x i8], ptr %i.aux, i64 %i.ada
  %i.avq = load float, ptr %i.avp, align 4, !tbaa !53
  %i.avr = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 24
  store float %i.avq, ptr %i.avr, align 4, !tbaa !53
  %i.avs = getelementptr inbounds nuw [4 x i8], ptr %i.aux, i64 %i.adc
  %i.avt = load float, ptr %i.avs, align 4, !tbaa !53
  %i.avu = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 28
  store float %i.avt, ptr %i.avu, align 4, !tbaa !53
  %i.avv = load float, ptr %i.auy, align 4, !tbaa !53
  %i.avw = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 32
  store float %i.avv, ptr %i.avw, align 4, !tbaa !53
  %i.avx = getelementptr inbounds nuw [4 x i8], ptr %i.auy, i64 %i.acq
  %i.avy = load float, ptr %i.avx, align 4, !tbaa !53
  %i.avz = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 36
  store float %i.avy, ptr %i.avz, align 4, !tbaa !53
  %i.awa = getelementptr inbounds nuw [4 x i8], ptr %i.auy, i64 %i.acs
  %i.awb = load float, ptr %i.awa, align 4, !tbaa !53
  %i.awc = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 40
  store float %i.awb, ptr %i.awc, align 4, !tbaa !53
  %i.awd = getelementptr inbounds nuw [4 x i8], ptr %i.auy, i64 %i.acu
  %i.awe = load float, ptr %i.awd, align 4, !tbaa !53
  %i.awf = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 44
  store float %i.awe, ptr %i.awf, align 4, !tbaa !53
  %i.awg = getelementptr inbounds nuw [4 x i8], ptr %i.auy, i64 %i.acw
  %i.awh = load float, ptr %i.awg, align 4, !tbaa !53
  %i.awi = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 48
  store float %i.awh, ptr %i.awi, align 4, !tbaa !53
  %i.awj = getelementptr inbounds nuw [4 x i8], ptr %i.auy, i64 %i.acy
  %i.awk = load float, ptr %i.awj, align 4, !tbaa !53
  %i.awl = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 52
  store float %i.awk, ptr %i.awl, align 4, !tbaa !53
  %i.awm = getelementptr inbounds nuw [4 x i8], ptr %i.auy, i64 %i.ada
  %i.awn = load float, ptr %i.awm, align 4, !tbaa !53
  %i.awo = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 56
  store float %i.awn, ptr %i.awo, align 4, !tbaa !53
  %i.awp = getelementptr inbounds nuw [4 x i8], ptr %i.auy, i64 %i.adc
  %i.awq = load float, ptr %i.awp, align 4, !tbaa !53
  %i.awr = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 60
  store float %i.awq, ptr %i.awr, align 4, !tbaa !53
  %i.aws = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 64 ; 3 uses
  %indvars.iv.next1750.i = add nuw nsw i64 %indvars.iv1749.i, 1 ; 2 uses
  %exitcond1753.not.i = icmp eq i64 %indvars.iv.next1750.i, %wide.trip.count1752.i
  br i1 %exitcond1753.not.i, label %._crit_edge1344.us.i, label %bb.an, !llvm.loop !136

._crit_edge1344.us.i:                             ; preds = %bb.an
  %i.awt = getelementptr inbounds nuw [4 x i8], ptr %.08781346.us.i, i64 %i.ade ; 2 uses
  %i.awu = getelementptr inbounds nuw [4 x i8], ptr %.08751347.us.i, i64 %i.ade ; 2 uses
  %i.awv = add nuw nsw i32 %.08621349.us.i, 8     ; 2 uses
  %i.aww = or disjoint i32 %i.awv, 7
  %i.awx = icmp slt i32 %i.aww, %i.n
  br i1 %i.awx, label %.preheader1091.us.i, label %.preheader1094.i, !llvm.loop !137

.preheader1094.i:                                 ; preds = %._crit_edge1344.us.i, %_ZN4ncnn3MatD2Ev.exit1003.i
  %.0878.lcssa.i = phi ptr [ %i.auk, %_ZN4ncnn3MatD2Ev.exit1003.i ], [ %i.awt, %._crit_edge1344.us.i ] ; 11 uses
  %.0875.lcssa.i = phi ptr [ %i.aun, %_ZN4ncnn3MatD2Ev.exit1003.i ], [ %i.awu, %._crit_edge1344.us.i ] ; 11 uses
  %.0866.lcssa.i = phi ptr [ %i.auw, %_ZN4ncnn3MatD2Ev.exit1003.i ], [ %i.aws, %._crit_edge1344.us.i ] ; 3 uses
  %.0862.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1003.i ], [ %i.adp, %._crit_edge1344.us.i ] ; 5 uses
  %i.awy = or disjoint i32 %.0862.lcssa.i, 3
  %i.awz = icmp slt i32 %i.awy, %i.n
  br i1 %i.awz, label %.preheader1090.lr.ph.i, label %.preheader1093.i

.preheader1094.thread.i:                          ; preds = %.preheader1091.lr.ph.i
  br i1 %i.adu, label %.preheader1090.preheader.i, label %.preheader1093.i

.preheader1090.lr.ph.i:                           ; preds = %.preheader1094.i
  br i1 %i.acp, label %.preheader1090.us.i.preheader, label %.preheader1090.preheader.i

.preheader1090.us.i.preheader:                    ; preds = %.preheader1090.lr.ph.i
  %scevgep535.a = getelementptr i8, ptr %.0875.lcssa.i, i64 %i.aec
  %scevgep536.a = getelementptr i8, ptr %.0875.lcssa.i, i64 %i.aee
  %i.axa = sub i32 %i.aeg, %.0862.lcssa.i
  %i.axb = lshr i32 %i.axa, 2
  %i.axc = zext nneg i32 %i.axb to i64
  %i.axd = mul nsw i64 %i.aef, %i.axc             ; 8 uses
  %scevgep537.a = getelementptr i8, ptr %scevgep536.a, i64 %i.axd
  %scevgep538.a = getelementptr i8, ptr %.0875.lcssa.i, i64 %i.aeh
  %scevgep539.a = getelementptr i8, ptr %.0875.lcssa.i, i64 %i.aei
  %scevgep540.a = getelementptr i8, ptr %scevgep539.a, i64 %i.axd
  %scevgep541.a = getelementptr i8, ptr %.0875.lcssa.i, i64 %i.aej
  %scevgep542.a = getelementptr i8, ptr %.0875.lcssa.i, i64 %i.aek
  %scevgep543.a = getelementptr i8, ptr %scevgep542.a, i64 %i.axd
  %scevgep544.a = getelementptr i8, ptr %.0875.lcssa.i, i64 %i.aed
  %scevgep545.a = getelementptr i8, ptr %scevgep544.a, i64 %i.axd
  %scevgep546.a = getelementptr i8, ptr %.0878.lcssa.i, i64 %i.aec
  %scevgep547.a = getelementptr i8, ptr %.0878.lcssa.i, i64 %i.aee
  %scevgep548.a = getelementptr i8, ptr %scevgep547.a, i64 %i.axd
  %scevgep549.a = getelementptr i8, ptr %.0878.lcssa.i, i64 %i.aeh
  %scevgep550.a = getelementptr i8, ptr %.0878.lcssa.i, i64 %i.aei
  %scevgep551.a = getelementptr i8, ptr %scevgep550.a, i64 %i.axd
  %scevgep552.a = getelementptr i8, ptr %.0878.lcssa.i, i64 %i.aej
  %scevgep553.a = getelementptr i8, ptr %.0878.lcssa.i, i64 %i.aek
  %scevgep554.a = getelementptr i8, ptr %scevgep553.a, i64 %i.axd
  %scevgep555.a = getelementptr i8, ptr %.0878.lcssa.i, i64 %i.aed
  %scevgep556 = getelementptr i8, ptr %scevgep555.a, i64 %i.axd
  %i.axe = insertelement <8 x ptr> poison, ptr %scevgep540.a, i64 0
  %i.axf = insertelement <8 x ptr> %i.axe, ptr %scevgep537.a, i64 1
  %i.axg = insertelement <8 x ptr> %i.axf, ptr %scevgep543.a, i64 2
  %i.axh = insertelement <8 x ptr> %i.axg, ptr %scevgep545.a, i64 3
  %i.axi = insertelement <8 x ptr> %i.axh, ptr %scevgep548.a, i64 4
  %i.axj = insertelement <8 x ptr> %i.axi, ptr %scevgep551.a, i64 5
  %i.axk = insertelement <8 x ptr> %i.axj, ptr %scevgep554.a, i64 6
  %i.axl = insertelement <8 x ptr> %i.axk, ptr %scevgep556, i64 7
  %i.axm = insertelement <8 x ptr> poison, ptr %scevgep538.a, i64 0
  %i.axn = insertelement <8 x ptr> %i.axm, ptr %scevgep535.a, i64 1
  %i.axo = insertelement <8 x ptr> %i.axn, ptr %scevgep541.a, i64 2
  %i.axp = insertelement <8 x ptr> %i.axo, ptr %.0875.lcssa.i, i64 3
  %i.axq = insertelement <8 x ptr> %i.axp, ptr %scevgep546.a, i64 4
  %i.axr = insertelement <8 x ptr> %i.axq, ptr %scevgep549.a, i64 5
  %i.axs = insertelement <8 x ptr> %i.axr, ptr %scevgep552.a, i64 6
  %i.axt = insertelement <8 x ptr> %i.axs, ptr %.0878.lcssa.i, i64 7
  br label %.preheader1090.us.i

.preheader1090.preheader.i:                       ; preds = %.preheader1090.lr.ph.i, %.preheader1094.thread.i
  %.0878.lcssa19261937.i = phi ptr [ %.0878.lcssa.i, %.preheader1090.lr.ph.i ], [ %scevgep1744.i, %.preheader1094.thread.i ]
  %.0875.lcssa19271936.i = phi ptr [ %.0875.lcssa.i, %.preheader1090.lr.ph.i ], [ %scevgep1748.i, %.preheader1094.thread.i ]
  %.0866.lcssa19281935.i = phi ptr [ %.0866.lcssa.i, %.preheader1090.lr.ph.i ], [ %i.auw, %.preheader1094.thread.i ]
  %.0862.lcssa19291934.i = phi i32 [ %.0862.lcssa.i, %.preheader1090.lr.ph.i ], [ %i.adp, %.preheader1094.thread.i ] ; 2 uses
  %i.axu = sub i32 %i.adq, %.0862.lcssa19291934.i
  %i.axv = and i32 %i.axu, -4                     ; 2 uses
  %i.axw = zext i32 %i.axv to i64
  %i.axx = add nuw nsw i64 %i.axw, 4
  %i.axy = mul nsw i64 %i.axx, %i.acw             ; 2 uses
  %scevgep1754.i.a = getelementptr i8, ptr %.0878.lcssa19261937.i, i64 %i.axy
  %scevgep1755.i = getelementptr i8, ptr %.0875.lcssa19271936.i, i64 %i.axy
  %i.axz = add i32 %.0862.lcssa19291934.i, 4
  %i.aya = add i32 %i.axz, %i.axv
  br label %.preheader1093.i

.preheader1090.us.i:                              ; preds = %.preheader1090.us.i.preheader, %._crit_edge1360.us.i
  %.18631365.us.i = phi i32 [ %i.bab, %._crit_edge1360.us.i ], [ %.0862.lcssa.i, %.preheader1090.us.i.preheader ]
  %.28681364.us.i = phi ptr [ %.lcssa235, %._crit_edge1360.us.i ], [ %.0866.lcssa.i, %.preheader1090.us.i.preheader ] ; 6 uses
  %.18761363.us.i = phi ptr [ %i.baa, %._crit_edge1360.us.i ], [ %.0875.lcssa.i, %.preheader1090.us.i.preheader ] ; 3 uses
  %.18791362.us.i = phi ptr [ %i.azz, %._crit_edge1360.us.i ], [ %.0878.lcssa.i, %.preheader1090.us.i.preheader ] ; 3 uses
  br i1 %min.iters.check597, label %scalar.ph596.preheader, label %vector.memcheck533

vector.memcheck533:                               ; preds = %.preheader1090.us.i
  %scevgep534 = getelementptr i8, ptr %.28681364.us.i, i64 %i.aeb
  %i.ayb = insertelement <8 x ptr> poison, ptr %.28681364.us.i, i64 0
  %i.ayc = shufflevector <8 x ptr> %i.ayb, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.ayd = icmp ult <8 x ptr> %i.ayc, %i.axl
  %i.aye = insertelement <8 x ptr> poison, ptr %scevgep534, i64 0
  %i.ayf = shufflevector <8 x ptr> %i.aye, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.ayg = icmp ult <8 x ptr> %i.axt, %i.ayf
  %i.ayh = and <8 x i1> %i.ayd, %i.ayg
  %i.ayi = bitcast <8 x i1> %i.ayh to i8
  %i.ayj = icmp ne i8 %i.ayi, 0
  %op.rdx815 = or i1 %i.ayj, %stride.check564
  br i1 %op.rdx815, label %scalar.ph596.preheader, label %vector.ph598

vector.ph598:                                     ; preds = %vector.memcheck533
  %i.ayk = getelementptr i8, ptr %.28681364.us.i, i64 %i.ael ; 2 uses
  br label %vector.body600

vector.body600:                                   ; preds = %vector.body600, %vector.ph598
  %index601 = phi i64 [ 0, %vector.ph598 ], [ %index.next612, %vector.body600 ] ; 4 uses
  %i.ayl = shl i64 %index601, 5
  %next.gep602 = getelementptr i8, ptr %.28681364.us.i, i64 %i.ayl
  %i.aym = getelementptr inbounds nuw [4 x i8], ptr %.18791362.us.i, i64 %index601 ; 4 uses
  %i.ayn = getelementptr inbounds nuw [4 x i8], ptr %.18761363.us.i, i64 %index601 ; 4 uses
  %wide.load603.a = load <8 x float>, ptr %i.aym, align 4, !tbaa !53, !alias.scope !138
  %i.ayo = getelementptr inbounds nuw [4 x i8], ptr %i.aym, i64 %i.acq
  %wide.load604.a = load <8 x float>, ptr %i.ayo, align 4, !tbaa !53, !alias.scope !141
  %i.ayp = getelementptr inbounds nuw [4 x i8], ptr %i.aym, i64 %i.acs
  %wide.load605.a = load <8 x float>, ptr %i.ayp, align 4, !tbaa !53, !alias.scope !143
  %i.ayq = getelementptr inbounds nuw [4 x i8], ptr %i.aym, i64 %i.acu
  %wide.load606.a = load <8 x float>, ptr %i.ayq, align 4, !tbaa !53, !alias.scope !145
  %wide.load607.a = load <8 x float>, ptr %i.ayn, align 4, !tbaa !53, !alias.scope !147
  %i.ayr = getelementptr inbounds nuw [4 x i8], ptr %i.ayn, i64 %i.acq
  %wide.load608.a = load <8 x float>, ptr %i.ayr, align 4, !tbaa !53, !alias.scope !149
  %i.ays = getelementptr inbounds nuw [4 x i8], ptr %i.ayn, i64 %i.acs
  %wide.load609.a = load <8 x float>, ptr %i.ays, align 4, !tbaa !53, !alias.scope !151
  %i.ayt = getelementptr inbounds nuw [4 x i8], ptr %i.ayn, i64 %i.acu
  %wide.load610 = load <8 x float>, ptr %i.ayt, align 4, !tbaa !53, !alias.scope !153
  %i.ayu = shufflevector <8 x float> %wide.load603.a, <8 x float> %wide.load604.a, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ayv = shufflevector <8 x float> %wide.load605.a, <8 x float> %wide.load606.a, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ayw = shufflevector <8 x float> %wide.load607.a, <8 x float> %wide.load608.a, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ayx = shufflevector <8 x float> %wide.load609.a, <8 x float> %wide.load610, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ayy = shufflevector <16 x float> %i.ayu, <16 x float> %i.ayv, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ayz = shufflevector <16 x float> %i.ayw, <16 x float> %i.ayx, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec611 = shufflevector <32 x float> %i.ayy, <32 x float> %i.ayz, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x float> %interleaved.vec611, ptr %next.gep602, align 4, !tbaa !53, !alias.scope !155, !noalias !157
  %index.next612 = add nuw i64 %index601, 8       ; 2 uses
  %i.aza = icmp eq i64 %index.next612, %n.vec599
  br i1 %i.aza, label %middle.block613, label %vector.body600, !llvm.loop !158

middle.block613:                                  ; preds = %vector.body600
  br i1 %cmp.n614, label %._crit_edge1360.us.i, label %scalar.ph596.preheader

scalar.ph596.preheader:                           ; preds = %vector.memcheck533, %.preheader1090.us.i, %middle.block613
  %indvars.iv1756.i.ph = phi i64 [ 0, %vector.memcheck533 ], [ 0, %.preheader1090.us.i ], [ %n.vec599, %middle.block613 ]
  %.38691358.us.i.ph = phi ptr [ %.28681364.us.i, %vector.memcheck533 ], [ %.28681364.us.i, %.preheader1090.us.i ], [ %i.ayk, %middle.block613 ]
  br label %scalar.ph596

scalar.ph596:                                     ; preds = %scalar.ph596.preheader, %scalar.ph596
  %indvars.iv1756.i = phi i64 [ %indvars.iv.next1757.i, %scalar.ph596 ], [ %indvars.iv1756.i.ph, %scalar.ph596.preheader ] ; 3 uses
  %.38691358.us.i = phi ptr [ %i.azy, %scalar.ph596 ], [ %.38691358.us.i.ph, %scalar.ph596.preheader ] ; 9 uses
  %i.azb = getelementptr inbounds nuw [4 x i8], ptr %.18791362.us.i, i64 %indvars.iv1756.i ; 4 uses
  %i.azc = getelementptr inbounds nuw [4 x i8], ptr %.18761363.us.i, i64 %indvars.iv1756.i ; 4 uses
  %i.azd = load float, ptr %i.azb, align 4, !tbaa !53
  store float %i.azd, ptr %.38691358.us.i, align 4, !tbaa !53
  %i.aze = getelementptr inbounds nuw [4 x i8], ptr %i.azb, i64 %i.acq
  %i.azf = load float, ptr %i.aze, align 4, !tbaa !53
  %i.azg = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 4
  store float %i.azf, ptr %i.azg, align 4, !tbaa !53
  %i.azh = getelementptr inbounds nuw [4 x i8], ptr %i.azb, i64 %i.acs
  %i.azi = load float, ptr %i.azh, align 4, !tbaa !53
  %i.azj = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 8
  store float %i.azi, ptr %i.azj, align 4, !tbaa !53
  %i.azk = getelementptr inbounds nuw [4 x i8], ptr %i.azb, i64 %i.acu
  %i.azl = load float, ptr %i.azk, align 4, !tbaa !53
  %i.azm = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 12
  store float %i.azl, ptr %i.azm, align 4, !tbaa !53
  %i.azn = load float, ptr %i.azc, align 4, !tbaa !53
  %i.azo = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 16
  store float %i.azn, ptr %i.azo, align 4, !tbaa !53
  %i.azp = getelementptr inbounds nuw [4 x i8], ptr %i.azc, i64 %i.acq
  %i.azq = load float, ptr %i.azp, align 4, !tbaa !53
  %i.azr = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 20
  store float %i.azq, ptr %i.azr, align 4, !tbaa !53
  %i.azs = getelementptr inbounds nuw [4 x i8], ptr %i.azc, i64 %i.acs
  %i.azt = load float, ptr %i.azs, align 4, !tbaa !53
  %i.azu = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 24
  store float %i.azt, ptr %i.azu, align 4, !tbaa !53
  %i.azv = getelementptr inbounds nuw [4 x i8], ptr %i.azc, i64 %i.acu
  %i.azw = load float, ptr %i.azv, align 4, !tbaa !53
  %i.azx = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 28
  store float %i.azw, ptr %i.azx, align 4, !tbaa !53
  %i.azy = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 32 ; 2 uses
  %indvars.iv.next1757.i = add nuw nsw i64 %indvars.iv1756.i, 1 ; 2 uses
  %exitcond1760.not.i = icmp eq i64 %indvars.iv.next1757.i, %wide.trip.count1752.i
  br i1 %exitcond1760.not.i, label %._crit_edge1360.us.i, label %scalar.ph596, !llvm.loop !159

._crit_edge1360.us.i:                             ; preds = %scalar.ph596, %middle.block613
  %.lcssa235 = phi ptr [ %i.ayk, %middle.block613 ], [ %i.azy, %scalar.ph596 ] ; 2 uses
  %i.azz = getelementptr inbounds nuw [4 x i8], ptr %.18791362.us.i, i64 %i.acw ; 2 uses
  %i.baa = getelementptr inbounds nuw [4 x i8], ptr %.18761363.us.i, i64 %i.acw ; 2 uses
  %i.bab = add nuw nsw i32 %.18631365.us.i, 4     ; 3 uses
  %i.bac = or disjoint i32 %i.bab, 3
  %i.bad = icmp slt i32 %i.bac, %i.n
  br i1 %i.bad, label %.preheader1090.us.i, label %.preheader1093.i, !llvm.loop !160

.preheader1093.i:                                 ; preds = %._crit_edge1360.us.i, %.preheader1090.preheader.i, %.preheader1094.thread.i, %.preheader1094.i
  %.1879.lcssa.i = phi ptr [ %.0878.lcssa.i, %.preheader1094.i ], [ %scevgep1744.i, %.preheader1094.thread.i ], [ %scevgep1754.i.a, %.preheader1090.preheader.i ], [ %i.azz, %._crit_edge1360.us.i ] ; 6 uses
  %.1876.lcssa.i = phi ptr [ %.0875.lcssa.i, %.preheader1094.i ], [ %scevgep1748.i, %.preheader1094.thread.i ], [ %scevgep1755.i, %.preheader1090.preheader.i ], [ %i.baa, %._crit_edge1360.us.i ] ; 6 uses
  %.2868.lcssa.i = phi ptr [ %.0866.lcssa.i, %.preheader1094.i ], [ %i.auw, %.preheader1094.thread.i ], [ %.0866.lcssa19281935.i, %.preheader1090.preheader.i ], [ %.lcssa235, %._crit_edge1360.us.i ] ; 2 uses
  %.1863.lcssa.i = phi i32 [ %.0862.lcssa.i, %.preheader1094.i ], [ %i.adp, %.preheader1094.thread.i ], [ %i.aya, %.preheader1090.preheader.i ], [ %i.bab, %._crit_edge1360.us.i ] ; 5 uses
  %i.bae = or disjoint i32 %.1863.lcssa.i, 1
  %i.baf = icmp slt i32 %i.bae, %i.n
  br i1 %i.baf, label %.preheader1089.lr.ph.i, label %.preheader1092.i

.preheader1089.lr.ph.i:                           ; preds = %.preheader1093.i
  br i1 %i.acp, label %.preheader1089.us.i.preheader, label %._crit_edge1400.split.i

.preheader1089.us.i.preheader:                    ; preds = %.preheader1089.lr.ph.i
  %scevgep486 = getelementptr i8, ptr %.1876.lcssa.i, i64 %i.ady
  %scevgep487 = getelementptr i8, ptr %.1876.lcssa.i, i64 %i.adz
  %4 = add i32 %.1863.lcssa.i, 3
  %smax488 = tail call i32 @llvm.smax.i32(i32 %i.n, i32 %4)
  %5 = add i32 %smax488, -2
  %i.bag = sub i32 %5, %.1863.lcssa.i
  %i.bah = lshr i32 %i.bag, 1
  %i.bai = zext nneg i32 %i.bah to i64
  %i.baj = mul i64 %i.aea, %i.bai                 ; 4 uses
  %scevgep489.a = getelementptr i8, ptr %scevgep487, i64 %i.baj
  %scevgep490.a = getelementptr i8, ptr %.1879.lcssa.i, i64 %i.ady
  %scevgep491.a = getelementptr i8, ptr %.1879.lcssa.i, i64 %i.adz
  %scevgep492.a = getelementptr i8, ptr %scevgep491.a, i64 %i.baj
  %scevgep493.a = getelementptr i8, ptr %.1876.lcssa.i, i64 %i.adw
  %scevgep494.a = getelementptr i8, ptr %scevgep493.a, i64 %i.baj
  %scevgep495.a = getelementptr i8, ptr %.1879.lcssa.i, i64 %i.adw
  %scevgep496 = getelementptr i8, ptr %scevgep495.a, i64 %i.baj
  br label %.preheader1089.us.i

.preheader1089.us.i:                              ; preds = %.preheader1089.us.i.preheader, %._crit_edge1380.us.i
  %.28641385.us.i = phi i32 [ %i.bch, %._crit_edge1380.us.i ], [ %.1863.lcssa.i, %.preheader1089.us.i.preheader ]
  %.48701384.us.i = phi ptr [ %.lcssa239, %._crit_edge1380.us.i ], [ %.2868.lcssa.i, %.preheader1089.us.i.preheader ] ; 9 uses
  %.28771383.us.i = phi ptr [ %i.bcg, %._crit_edge1380.us.i ], [ %.1876.lcssa.i, %.preheader1089.us.i.preheader ] ; 5 uses
  %.28801382.us.i = phi ptr [ %i.bcf, %._crit_edge1380.us.i ], [ %.1879.lcssa.i, %.preheader1089.us.i.preheader ] ; 5 uses
  br i1 %min.iters.check517, label %scalar.ph516.preheader, label %vector.memcheck484

vector.memcheck484:                               ; preds = %.preheader1089.us.i
  %scevgep485 = getelementptr i8, ptr %.48701384.us.i, i64 %i.adx ; 4 uses
  %bound0497 = icmp ult ptr %.48701384.us.i, %scevgep489.a
  %bound1498 = icmp ult ptr %scevgep486, %scevgep485
  %found.conflict499 = and i1 %bound0497, %bound1498
  %bound0501 = icmp ult ptr %.48701384.us.i, %scevgep492.a
  %bound1502 = icmp ult ptr %scevgep490.a, %scevgep485
  %found.conflict503 = and i1 %bound0501, %bound1502
  %i.bak = or i1 %found.conflict503, %stride.check504
  %conflict.rdx505 = or i1 %found.conflict499, %i.bak
  %bound0506 = icmp ult ptr %.48701384.us.i, %scevgep494.a
  %bound1507 = icmp ult ptr %.1876.lcssa.i, %scevgep485
  %found.conflict508 = and i1 %bound0506, %bound1507
  %conflict.rdx510 = or i1 %found.conflict508, %conflict.rdx505
  %bound0511 = icmp ult ptr %.48701384.us.i, %scevgep496
  %bound1512 = icmp ult ptr %.1879.lcssa.i, %scevgep485
  %found.conflict513 = and i1 %bound0511, %bound1512
  %conflict.rdx515 = or i1 %found.conflict513, %conflict.rdx510
  br i1 %conflict.rdx515, label %scalar.ph516.preheader, label %vector.ph518

vector.ph518:                                     ; preds = %vector.memcheck484
  %i.bal = getelementptr i8, ptr %.48701384.us.i, i64 %i.aem ; 2 uses
  br label %vector.body520

vector.body520:                                   ; preds = %vector.body520, %vector.ph518
  %index521 = phi i64 [ 0, %vector.ph518 ], [ %index.next528, %vector.body520 ] ; 4 uses
  %i.bam = shl i64 %index521, 4
  %next.gep522 = getelementptr i8, ptr %.48701384.us.i, i64 %i.bam
  %i.ban = getelementptr inbounds nuw [4 x i8], ptr %.28801382.us.i, i64 %index521 ; 2 uses
  %i.bao = getelementptr inbounds nuw [4 x i8], ptr %.28771383.us.i, i64 %index521 ; 2 uses
  %wide.load523.a = load <8 x float>, ptr %i.ban, align 4, !tbaa !53, !alias.scope !161
  %wide.load524.a = load <8 x float>, ptr %i.bao, align 4, !tbaa !53, !alias.scope !164
  %i.bap = getelementptr inbounds nuw [4 x i8], ptr %i.ban, i64 %i.acq
  %i.baq = getelementptr inbounds nuw [4 x i8], ptr %i.bao, i64 %i.acq
  %wide.load525.a = load <8 x float>, ptr %i.bap, align 4, !tbaa !53, !alias.scope !166
  %wide.load526 = load <8 x float>, ptr %i.baq, align 4, !tbaa !53, !alias.scope !168
  %i.bar = shufflevector <8 x float> %wide.load523.a, <8 x float> %wide.load524.a, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bas = shufflevector <8 x float> %wide.load525.a, <8 x float> %wide.load526, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec527 = shufflevector <16 x float> %i.bar, <16 x float> %i.bas, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec527, ptr %next.gep522, align 4, !tbaa !53, !alias.scope !170, !noalias !172
  %index.next528 = add nuw i64 %index521, 8       ; 2 uses
  %i.bat = icmp eq i64 %index.next528, %n.vec519
  br i1 %i.bat, label %middle.block529, label %vector.body520, !llvm.loop !173

middle.block529:                                  ; preds = %vector.body520
  br i1 %cmp.n530, label %._crit_edge1380.us.i, label %scalar.ph516.preheader

scalar.ph516.preheader:                           ; preds = %vector.memcheck484, %.preheader1089.us.i, %middle.block529
  %indvars.iv1764.i.ph = phi i64 [ 0, %vector.memcheck484 ], [ 0, %.preheader1089.us.i ], [ %n.vec519, %middle.block529 ] ; 5 uses
  %.58711378.us.i.ph = phi ptr [ %.48701384.us.i, %vector.memcheck484 ], [ %.48701384.us.i, %.preheader1089.us.i ], [ %i.bal, %middle.block529 ] ; 6 uses
  br i1 %lcmp.mod888.not.a, label %scalar.ph516.prol.loopexit, label %scalar.ph516.prol

scalar.ph516.prol:                                ; preds = %scalar.ph516.preheader
  %i.bau = getelementptr inbounds nuw [4 x i8], ptr %.28801382.us.i, i64 %indvars.iv1764.i.ph ; 2 uses
  %i.bav = getelementptr inbounds nuw [4 x i8], ptr %.28771383.us.i, i64 %indvars.iv1764.i.ph ; 2 uses
  %i.baw = load float, ptr %i.bau, align 4, !tbaa !53
  store float %i.baw, ptr %.58711378.us.i.ph, align 4, !tbaa !53
  %i.bax = load float, ptr %i.bav, align 4, !tbaa !53
  %i.bay = getelementptr inbounds nuw i8, ptr %.58711378.us.i.ph, i64 4
  store float %i.bax, ptr %i.bay, align 4, !tbaa !53
  %i.baz = getelementptr inbounds nuw [4 x i8], ptr %i.bau, i64 %i.acq
  %i.bba = getelementptr inbounds nuw [4 x i8], ptr %i.bav, i64 %i.acq
  %i.bbb = getelementptr inbounds nuw i8, ptr %.58711378.us.i.ph, i64 8
  %i.bbc = load float, ptr %i.baz, align 4, !tbaa !53
  store float %i.bbc, ptr %i.bbb, align 4, !tbaa !53
  %i.bbd = load float, ptr %i.bba, align 4, !tbaa !53
  %i.bbe = getelementptr inbounds nuw i8, ptr %.58711378.us.i.ph, i64 12
  store float %i.bbd, ptr %i.bbe, align 4, !tbaa !53
  %i.bbf = getelementptr inbounds nuw i8, ptr %.58711378.us.i.ph, i64 16 ; 2 uses
  %indvars.iv.next1765.i.prol = or disjoint i64 %indvars.iv1764.i.ph, 1
  br label %scalar.ph516.prol.loopexit

scalar.ph516.prol.loopexit:                       ; preds = %scalar.ph516.prol, %scalar.ph516.preheader
  %.lcssa834.unr = phi ptr [ poison, %scalar.ph516.preheader ], [ %i.bbf, %scalar.ph516.prol ]
  %indvars.iv1764.i.unr = phi i64 [ %indvars.iv1764.i.ph, %scalar.ph516.preheader ], [ %indvars.iv.next1765.i.prol, %scalar.ph516.prol ]
  %.58711378.us.i.unr = phi ptr [ %.58711378.us.i.ph, %scalar.ph516.preheader ], [ %i.bbf, %scalar.ph516.prol ]
  %i.bbg = icmp eq i64 %indvars.iv1764.i.ph, %i.aen
  br i1 %i.bbg, label %._crit_edge1380.us.i, label %scalar.ph516

scalar.ph516:                                     ; preds = %scalar.ph516.prol.loopexit, %scalar.ph516
  %indvars.iv1764.i = phi i64 [ %indvars.iv.next1765.i.1, %scalar.ph516 ], [ %indvars.iv1764.i.unr, %scalar.ph516.prol.loopexit ] ; 4 uses
  %.58711378.us.i = phi ptr [ %i.bce, %scalar.ph516 ], [ %.58711378.us.i.unr, %scalar.ph516.prol.loopexit ] ; 9 uses
  %i.bbh = getelementptr inbounds nuw [4 x i8], ptr %.28801382.us.i, i64 %indvars.iv1764.i ; 2 uses
  %i.bbi = getelementptr inbounds nuw [4 x i8], ptr %.28771383.us.i, i64 %indvars.iv1764.i ; 2 uses
  %i.bbj = load float, ptr %i.bbh, align 4, !tbaa !53
  store float %i.bbj, ptr %.58711378.us.i, align 4, !tbaa !53
  %i.bbk = load float, ptr %i.bbi, align 4, !tbaa !53
  %i.bbl = getelementptr inbounds nuw i8, ptr %.58711378.us.i, i64 4
  store float %i.bbk, ptr %i.bbl, align 4, !tbaa !53
  %i.bbm = getelementptr inbounds nuw [4 x i8], ptr %i.bbh, i64 %i.acq
  %i.bbn = getelementptr inbounds nuw [4 x i8], ptr %i.bbi, i64 %i.acq
  %i.bbo = getelementptr inbounds nuw i8, ptr %.58711378.us.i, i64 8
  %i.bbp = load float, ptr %i.bbm, align 4, !tbaa !53
  store float %i.bbp, ptr %i.bbo, align 4, !tbaa !53
  %i.bbq = load float, ptr %i.bbn, align 4, !tbaa !53
  %i.bbr = getelementptr inbounds nuw i8, ptr %.58711378.us.i, i64 12
  store float %i.bbq, ptr %i.bbr, align 4, !tbaa !53
  %i.bbs = getelementptr inbounds nuw i8, ptr %.58711378.us.i, i64 16
  %indvars.iv.next1765.i = add nuw nsw i64 %indvars.iv1764.i, 1 ; 2 uses
  %i.bbt = getelementptr inbounds nuw [4 x i8], ptr %.28801382.us.i, i64 %indvars.iv.next1765.i ; 2 uses
  %i.bbu = getelementptr inbounds nuw [4 x i8], ptr %.28771383.us.i, i64 %indvars.iv.next1765.i ; 2 uses
  %i.bbv = load float, ptr %i.bbt, align 4, !tbaa !53
  store float %i.bbv, ptr %i.bbs, align 4, !tbaa !53
  %i.bbw = load float, ptr %i.bbu, align 4, !tbaa !53
  %i.bbx = getelementptr inbounds nuw i8, ptr %.58711378.us.i, i64 20
  store float %i.bbw, ptr %i.bbx, align 4, !tbaa !53
  %i.bby = getelementptr inbounds nuw [4 x i8], ptr %i.bbt, i64 %i.acq
  %i.bbz = getelementptr inbounds nuw [4 x i8], ptr %i.bbu, i64 %i.acq
  %i.bca = getelementptr inbounds nuw i8, ptr %.58711378.us.i, i64 24
  %i.bcb = load float, ptr %i.bby, align 4, !tbaa !53
  store float %i.bcb, ptr %i.bca, align 4, !tbaa !53
  %i.bcc = load float, ptr %i.bbz, align 4, !tbaa !53
  %i.bcd = getelementptr inbounds nuw i8, ptr %.58711378.us.i, i64 28
  store float %i.bcc, ptr %i.bcd, align 4, !tbaa !53
  %i.bce = getelementptr inbounds nuw i8, ptr %.58711378.us.i, i64 32 ; 2 uses
  %indvars.iv.next1765.i.1 = add nuw nsw i64 %indvars.iv1764.i, 2 ; 2 uses
  %exitcond1768.not.i.1 = icmp eq i64 %indvars.iv.next1765.i.1, %wide.trip.count1752.i
  br i1 %exitcond1768.not.i.1, label %._crit_edge1380.us.i, label %scalar.ph516, !llvm.loop !174

._crit_edge1380.us.i:                             ; preds = %scalar.ph516.prol.loopexit, %scalar.ph516, %middle.block529
  %.lcssa239 = phi ptr [ %i.bal, %middle.block529 ], [ %.lcssa834.unr, %scalar.ph516.prol.loopexit ], [ %i.bce, %scalar.ph516 ] ; 2 uses
  %i.bcf = getelementptr inbounds nuw [4 x i8], ptr %.28801382.us.i, i64 %i.acs ; 2 uses
  %i.bcg = getelementptr inbounds nuw [4 x i8], ptr %.28771383.us.i, i64 %i.acs ; 2 uses
  %i.bch = add nuw nsw i32 %.28641385.us.i, 2     ; 3 uses
  %i.bci = or disjoint i32 %i.bch, 1
  %i.bcj = icmp slt i32 %i.bci, %i.n
  br i1 %i.bcj, label %.preheader1089.us.i, label %.preheader1092.i, !llvm.loop !175

.preheader1092.i:                                 ; preds = %._crit_edge1380.us.i, %.preheader1093.i
  %.2880.lcssa.i = phi ptr [ %.1879.lcssa.i, %.preheader1093.i ], [ %i.bcf, %._crit_edge1380.us.i ] ; 8 uses
  %.2877.lcssa.i = phi ptr [ %.1876.lcssa.i, %.preheader1093.i ], [ %i.bcg, %._crit_edge1380.us.i ] ; 8 uses
  %.4870.lcssa.i = phi ptr [ %.2868.lcssa.i, %.preheader1093.i ], [ %.lcssa239, %._crit_edge1380.us.i ]
  %.2864.lcssa.i = phi i32 [ %.1863.lcssa.i, %.preheader1093.i ], [ %i.bch, %._crit_edge1380.us.i ] ; 2 uses
  %i.bck = icmp sge i32 %.2864.lcssa.i, %i.n
  %brmerge1470.i = or i1 %i.adf, %i.bck
  br i1 %brmerge1470.i, label %._crit_edge1400.split.i, label %.preheader1088.i.preheader

.preheader1088.i.preheader:                       ; preds = %.preheader1092.i
  %scevgep456 = getelementptr i8, ptr %.2877.lcssa.i, i64 %i.adw
  %scevgep457 = getelementptr i8, ptr %.2880.lcssa.i, i64 %i.adw
  br label %.preheader1088.i

.preheader1088.i:                                 ; preds = %.preheader1088.i.preheader, %._crit_edge1396.i
  %.38651399.i = phi i32 [ %i.bdb, %._crit_edge1396.i ], [ %.2864.lcssa.i, %.preheader1088.i.preheader ]
  %.78731398.i = phi ptr [ %.lcssa243, %._crit_edge1396.i ], [ %.4870.lcssa.i, %.preheader1088.i.preheader ] ; 8 uses
  br i1 %min.iters.check466, label %scalar.ph465.preheader, label %vector.memcheck454

vector.memcheck454:                               ; preds = %.preheader1088.i
  %scevgep455 = getelementptr i8, ptr %.78731398.i, i64 %i.adv ; 2 uses
  %bound0458 = icmp ult ptr %.78731398.i, %scevgep456
  %bound1459 = icmp ult ptr %.2877.lcssa.i, %scevgep455
  %found.conflict460 = and i1 %bound0458, %bound1459
  %bound0461 = icmp ult ptr %.78731398.i, %scevgep457
  %bound1462 = icmp ult ptr %.2880.lcssa.i, %scevgep455
  %found.conflict463 = and i1 %bound0461, %bound1462
  %conflict.rdx464 = or i1 %found.conflict460, %found.conflict463
  br i1 %conflict.rdx464, label %scalar.ph465.preheader, label %vector.ph467

vector.ph467:                                     ; preds = %vector.memcheck454
  %i.bcl = getelementptr i8, ptr %.78731398.i, i64 %i.aeo ; 2 uses
  br label %vector.body469

vector.body469:                                   ; preds = %vector.body469, %vector.ph467
  %index470 = phi i64 [ 0, %vector.ph467 ], [ %index.next479, %vector.body469 ] ; 4 uses
  %i.bcm = shl i64 %index470, 3                   ; 2 uses
  %next.gep471 = getelementptr i8, ptr %.78731398.i, i64 %i.bcm
  %i.bcn = getelementptr i8, ptr %.78731398.i, i64 %i.bcm
  %next.gep472 = getelementptr i8, ptr %i.bcn, i64 16
  %i.bco = getelementptr inbounds nuw [4 x i8], ptr %.2880.lcssa.i, i64 %index470 ; 2 uses
  %i.bcp = getelementptr inbounds nuw [4 x i8], ptr %.2877.lcssa.i, i64 %index470 ; 2 uses
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.bco, i64 8
  %wide.load473 = load <2 x float>, ptr %i.bco, align 4, !tbaa !53, !alias.scope !176
  %wide.load474 = load <2 x float>, ptr %i.bcq, align 4, !tbaa !53, !alias.scope !176
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bcp, i64 8
  %wide.load475 = load <2 x float>, ptr %i.bcp, align 4, !tbaa !53, !alias.scope !179
  %wide.load476 = load <2 x float>, ptr %i.bcr, align 4, !tbaa !53, !alias.scope !179
  %interleaved.vec477 = shufflevector <2 x float> %wide.load473, <2 x float> %wide.load475, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec477, ptr %next.gep471, align 4, !tbaa !53, !alias.scope !181, !noalias !183
  %interleaved.vec478 = shufflevector <2 x float> %wide.load474, <2 x float> %wide.load476, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec478, ptr %next.gep472, align 4, !tbaa !53, !alias.scope !181, !noalias !183
end_hunk_1
begin_hunk_2_@_ZN4ncnn21Convolution1D_x86_avx15create_pipelineERKNS_6OptionE:bb.a
  %i.bhj = getelementptr inbounds nuw i8, ptr %.18311408.us.i, i64 28
  %i.bhk = load float, ptr %i.bhi, align 4, !tbaa !53
  store float %i.bhk, ptr %i.bhj, align 4, !tbaa !53
  %i.bhl = getelementptr inbounds nuw i8, ptr %.18311408.us.i, i64 32 ; 2 uses
  %indvars.iv.next1784.i = add nuw nsw i64 %indvars.iv1783.i, 1 ; 2 uses
  %exitcond1787.not.i = icmp eq i64 %indvars.iv.next1784.i, %wide.trip.count1786.i
  br i1 %exitcond1787.not.i, label %._crit_edge1410.us.i, label %scalar.ph794, !llvm.loop !211

._crit_edge1410.us.i:                             ; preds = %scalar.ph794, %middle.block811
  %.lcssa = phi ptr [ %i.bfx, %middle.block811 ], [ %i.bhl, %scalar.ph794 ] ; 2 uses
  %i.bhm = getelementptr inbounds nuw [4 x i8], ptr %.08341412.us.i, i64 %i.aro ; 2 uses
  %i.bhn = add nuw nsw i32 %.08261414.us.i, 8     ; 2 uses
  %i.bho = or disjoint i32 %i.bhn, 7
  %i.bhp = icmp slt i32 %i.bho, %i.n
  br i1 %i.bhp, label %.preheader1083.us.i, label %.preheader1086.i, !llvm.loop !212

.preheader1086.i:                                 ; preds = %._crit_edge1410.us.i, %_ZN4ncnn3MatD2Ev.exit.i
  %.0834.lcssa.i = phi ptr [ %i.bem, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.bhm, %._crit_edge1410.us.i ] ; 11 uses
  %.0830.lcssa.i = phi ptr [ %i.bex, %_ZN4ncnn3MatD2Ev.exit.i ], [ %.lcssa, %._crit_edge1410.us.i ] ; 3 uses
  %.0826.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.asb, %._crit_edge1410.us.i ] ; 5 uses
  %i.bhq = or disjoint i32 %.0826.lcssa.i, 3
  %i.bhr = icmp slt i32 %i.bhq, %i.n
  br i1 %i.bhr, label %.preheader1082.lr.ph.i, label %.preheader1085.i

.preheader1086.thread.i:                          ; preds = %.preheader1083.lr.ph.i
  br i1 %i.asf, label %.preheader1082.preheader.i, label %.preheader1085.i

.preheader1082.lr.ph.i:                           ; preds = %.preheader1086.i
  br i1 %i.arl, label %.preheader1082.us.i.preheader, label %.preheader1082.preheader.i

.preheader1082.us.i.preheader:                    ; preds = %.preheader1082.lr.ph.i
  %scevgep680.a = getelementptr i8, ptr %.0834.lcssa.i, i64 %i.asl
  %i.bhs = getelementptr i8, ptr %.0834.lcssa.i, i64 %i.asl
  %scevgep681.a = getelementptr i8, ptr %i.bhs, i64 %i.asi
  %i.bht = sub i32 %i.asn, %.0826.lcssa.i
  %i.bhu = lshr i32 %i.bht, 2
  %i.bhv = zext nneg i32 %i.bhu to i64
  %i.bhw = mul nsw i64 %i.asm, %i.bhv             ; 4 uses
  %scevgep682.a = getelementptr i8, ptr %scevgep681.a, i64 %i.bhw
  %scevgep683.a = getelementptr i8, ptr %.0834.lcssa.i, i64 %i.aso
  %i.bhx = getelementptr i8, ptr %.0834.lcssa.i, i64 %i.aso
  %scevgep684.a = getelementptr i8, ptr %i.bhx, i64 %i.asi
  %scevgep685.a = getelementptr i8, ptr %scevgep684.a, i64 %i.bhw
  %scevgep686.a = getelementptr i8, ptr %.0834.lcssa.i, i64 %i.asp
  %i.bhy = getelementptr i8, ptr %.0834.lcssa.i, i64 %i.asp
  %scevgep687.a = getelementptr i8, ptr %i.bhy, i64 %i.asi
  %scevgep688.a = getelementptr i8, ptr %scevgep687.a, i64 %i.bhw
  %scevgep689 = getelementptr i8, ptr %.0834.lcssa.i, i64 %i.asi
  %scevgep690 = getelementptr i8, ptr %scevgep689, i64 %i.bhw
  br label %.preheader1082.us.i

.preheader1082.preheader.i:                       ; preds = %.preheader1082.lr.ph.i, %.preheader1086.thread.i
  %.0834.lcssa19461954.i = phi ptr [ %.0834.lcssa.i, %.preheader1082.lr.ph.i ], [ %scevgep1781.i, %.preheader1086.thread.i ]
  %.0830.lcssa19471953.i = phi ptr [ %.0830.lcssa.i, %.preheader1082.lr.ph.i ], [ %i.bex, %.preheader1086.thread.i ]
  %.0826.lcssa19481952.i = phi i32 [ %.0826.lcssa.i, %.preheader1082.lr.ph.i ], [ %i.asb, %.preheader1086.thread.i ] ; 2 uses
  %i.bhz = sub i32 %i.asc, %.0826.lcssa19481952.i
  %i.bia = and i32 %i.bhz, -4                     ; 2 uses
  %i.bib = zext i32 %i.bia to i64
  %i.bic = add nuw nsw i64 %i.bib, 4
  %i.bid = mul nsw i64 %i.bic, %i.arq
  %scevgep1788.i = getelementptr i8, ptr %.0834.lcssa19461954.i, i64 %i.bid
  %i.bie = add i32 %.0826.lcssa19481952.i, 4
  %i.bif = add i32 %i.bie, %i.bia
  br label %.preheader1085.i

.preheader1082.us.i:                              ; preds = %.preheader1082.us.i.preheader, %._crit_edge1426.us.i
  %.18271430.us.i = phi i32 [ %i.bkc, %._crit_edge1426.us.i ], [ %.0826.lcssa.i, %.preheader1082.us.i.preheader ]
  %.38331429.us.i = phi ptr [ %.lcssa225, %._crit_edge1426.us.i ], [ %.0830.lcssa.i, %.preheader1082.us.i.preheader ] ; 9 uses
  %.18351428.us.i = phi ptr [ %i.bkb, %._crit_edge1426.us.i ], [ %.0834.lcssa.i, %.preheader1082.us.i.preheader ] ; 5 uses
  br i1 %min.iters.check707, label %scalar.ph706.preheader, label %vector.memcheck678

vector.memcheck678:                               ; preds = %.preheader1082.us.i
  %scevgep679 = getelementptr i8, ptr %.38331429.us.i, i64 %i.ask ; 4 uses
  %bound0691 = icmp ult ptr %.38331429.us.i, %scevgep682.a
  %bound1692 = icmp ult ptr %scevgep680.a, %scevgep679
  %found.conflict693 = and i1 %bound0691, %bound1692
  %bound0694 = icmp ult ptr %.38331429.us.i, %scevgep685.a
  %bound1695 = icmp ult ptr %scevgep683.a, %scevgep679
  %found.conflict696 = and i1 %bound0694, %bound1695
  %conflict.rdx697 = or i1 %found.conflict693, %found.conflict696
  %bound0698 = icmp ult ptr %.38331429.us.i, %scevgep688.a
  %bound1699 = icmp ult ptr %scevgep686.a, %scevgep679
  %found.conflict700 = and i1 %bound0698, %bound1699
  %conflict.rdx701 = or i1 %conflict.rdx697, %found.conflict700
  %bound0702 = icmp ult ptr %.38331429.us.i, %scevgep690
  %bound1703 = icmp ult ptr %.0834.lcssa.i, %scevgep679
  %found.conflict704 = and i1 %bound0702, %bound1703
  %conflict.rdx705 = or i1 %conflict.rdx701, %found.conflict704
  br i1 %conflict.rdx705, label %scalar.ph706.preheader, label %vector.ph708

vector.ph708:                                     ; preds = %vector.memcheck678
  %i.big = getelementptr i8, ptr %.38331429.us.i, i64 %i.atw ; 2 uses
  br label %vector.body710

vector.body710:                                   ; preds = %vector.body710, %vector.ph708
  %index711 = phi i64 [ 0, %vector.ph708 ], [ %index.next718, %vector.body710 ] ; 3 uses
  %i.bih = shl i64 %index711, 4
  %next.gep712 = getelementptr i8, ptr %.38331429.us.i, i64 %i.bih
  %i.bii = getelementptr inbounds nuw [4 x i8], ptr %.18351428.us.i, i64 %index711 ; 2 uses
  %wide.load713.a = load <8 x float>, ptr %i.bii, align 4, !tbaa !53, !alias.scope !213
  %i.bij = getelementptr inbounds nuw [4 x i8], ptr %i.bii, i64 %i.arm ; 2 uses
  %wide.load714.a = load <8 x float>, ptr %i.bij, align 4, !tbaa !53, !alias.scope !216
  %i.bik = getelementptr inbounds nuw [4 x i8], ptr %i.bij, i64 %i.arm ; 2 uses
  %wide.load715 = load <8 x float>, ptr %i.bik, align 4, !tbaa !53, !alias.scope !218
  %i.bil = getelementptr inbounds nuw [4 x i8], ptr %i.bik, i64 %i.arm
  %wide.load716 = load <8 x float>, ptr %i.bil, align 4, !tbaa !53, !alias.scope !220
  %i.bim = shufflevector <8 x float> %wide.load713.a, <8 x float> %wide.load714.a, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bin = shufflevector <8 x float> %wide.load715, <8 x float> %wide.load716, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec717 = shufflevector <16 x float> %i.bim, <16 x float> %i.bin, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec717, ptr %next.gep712, align 4, !tbaa !53, !alias.scope !222, !noalias !224
  %index.next718 = add nuw i64 %index711, 8       ; 2 uses
  %i.bio = icmp eq i64 %index.next718, %n.vec709
  br i1 %i.bio, label %middle.block719, label %vector.body710, !llvm.loop !225

middle.block719:                                  ; preds = %vector.body710
  br i1 %cmp.n720, label %._crit_edge1426.us.i, label %scalar.ph706.preheader

scalar.ph706.preheader:                           ; preds = %vector.memcheck678, %.preheader1082.us.i, %middle.block719
  %indvars.iv1790.i.ph = phi i64 [ 0, %vector.memcheck678 ], [ 0, %.preheader1082.us.i ], [ %n.vec709, %middle.block719 ] ; 4 uses
  %.41424.us.i.ph = phi ptr [ %.38331429.us.i, %vector.memcheck678 ], [ %.38331429.us.i, %.preheader1082.us.i ], [ %i.big, %middle.block719 ] ; 6 uses
  br i1 %lcmp.mod892.not, label %scalar.ph706.prol.loopexit, label %scalar.ph706.prol

scalar.ph706.prol:                                ; preds = %scalar.ph706.preheader
  %i.bip = getelementptr inbounds nuw [4 x i8], ptr %.18351428.us.i, i64 %indvars.iv1790.i.ph ; 2 uses
  %i.biq = load float, ptr %i.bip, align 4, !tbaa !53
  store float %i.biq, ptr %.41424.us.i.ph, align 4, !tbaa !53
  %i.bir = getelementptr inbounds nuw [4 x i8], ptr %i.bip, i64 %i.arm ; 2 uses
  %i.bis = getelementptr inbounds nuw i8, ptr %.41424.us.i.ph, i64 4
  %i.bit = load float, ptr %i.bir, align 4, !tbaa !53
  store float %i.bit, ptr %i.bis, align 4, !tbaa !53
  %i.biu = getelementptr inbounds nuw [4 x i8], ptr %i.bir, i64 %i.arm ; 2 uses
  %i.biv = getelementptr inbounds nuw i8, ptr %.41424.us.i.ph, i64 8
  %i.biw = load float, ptr %i.biu, align 4, !tbaa !53
  store float %i.biw, ptr %i.biv, align 4, !tbaa !53
  %i.bix = getelementptr inbounds nuw [4 x i8], ptr %i.biu, i64 %i.arm
  %i.biy = getelementptr inbounds nuw i8, ptr %.41424.us.i.ph, i64 12
  %i.biz = load float, ptr %i.bix, align 4, !tbaa !53
  store float %i.biz, ptr %i.biy, align 4, !tbaa !53
  %i.bja = getelementptr inbounds nuw i8, ptr %.41424.us.i.ph, i64 16 ; 2 uses
  %indvars.iv.next1791.i.prol = or disjoint i64 %indvars.iv1790.i.ph, 1
  br label %scalar.ph706.prol.loopexit

scalar.ph706.prol.loopexit:                       ; preds = %scalar.ph706.prol, %scalar.ph706.preheader
  %.lcssa820.unr = phi ptr [ poison, %scalar.ph706.preheader ], [ %i.bja, %scalar.ph706.prol ]
  %indvars.iv1790.i.unr = phi i64 [ %indvars.iv1790.i.ph, %scalar.ph706.preheader ], [ %indvars.iv.next1791.i.prol, %scalar.ph706.prol ]
  %.41424.us.i.unr = phi ptr [ %.41424.us.i.ph, %scalar.ph706.preheader ], [ %i.bja, %scalar.ph706.prol ]
  %i.bjb = icmp eq i64 %indvars.iv1790.i.ph, %i.atx
  br i1 %i.bjb, label %._crit_edge1426.us.i, label %scalar.ph706

scalar.ph706:                                     ; preds = %scalar.ph706.prol.loopexit, %scalar.ph706
  %indvars.iv1790.i = phi i64 [ %indvars.iv.next1791.i.1, %scalar.ph706 ], [ %indvars.iv1790.i.unr, %scalar.ph706.prol.loopexit ] ; 3 uses
  %.41424.us.i = phi ptr [ %i.bka, %scalar.ph706 ], [ %.41424.us.i.unr, %scalar.ph706.prol.loopexit ] ; 9 uses
  %i.bjc = getelementptr inbounds nuw [4 x i8], ptr %.18351428.us.i, i64 %indvars.iv1790.i ; 2 uses
  %i.bjd = load float, ptr %i.bjc, align 4, !tbaa !53
  store float %i.bjd, ptr %.41424.us.i, align 4, !tbaa !53
  %i.bje = getelementptr inbounds nuw [4 x i8], ptr %i.bjc, i64 %i.arm ; 2 uses
  %i.bjf = getelementptr inbounds nuw i8, ptr %.41424.us.i, i64 4
  %i.bjg = load float, ptr %i.bje, align 4, !tbaa !53
  store float %i.bjg, ptr %i.bjf, align 4, !tbaa !53
  %i.bjh = getelementptr inbounds nuw [4 x i8], ptr %i.bje, i64 %i.arm ; 2 uses
  %i.bji = getelementptr inbounds nuw i8, ptr %.41424.us.i, i64 8
  %i.bjj = load float, ptr %i.bjh, align 4, !tbaa !53
  store float %i.bjj, ptr %i.bji, align 4, !tbaa !53
  %i.bjk = getelementptr inbounds nuw [4 x i8], ptr %i.bjh, i64 %i.arm
  %i.bjl = getelementptr inbounds nuw i8, ptr %.41424.us.i, i64 12
  %i.bjm = load float, ptr %i.bjk, align 4, !tbaa !53
  store float %i.bjm, ptr %i.bjl, align 4, !tbaa !53
  %i.bjn = getelementptr inbounds nuw i8, ptr %.41424.us.i, i64 16
  %i.bjo = getelementptr inbounds nuw [4 x i8], ptr %.18351428.us.i, i64 %indvars.iv1790.i
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bjo, i64 4 ; 2 uses
  %i.bjq = load float, ptr %i.bjp, align 4, !tbaa !53
  store float %i.bjq, ptr %i.bjn, align 4, !tbaa !53
  %i.bjr = getelementptr inbounds nuw [4 x i8], ptr %i.bjp, i64 %i.arm ; 2 uses
  %i.bjs = getelementptr inbounds nuw i8, ptr %.41424.us.i, i64 20
  %i.bjt = load float, ptr %i.bjr, align 4, !tbaa !53
  store float %i.bjt, ptr %i.bjs, align 4, !tbaa !53
  %i.bju = getelementptr inbounds nuw [4 x i8], ptr %i.bjr, i64 %i.arm ; 2 uses
  %i.bjv = getelementptr inbounds nuw i8, ptr %.41424.us.i, i64 24
  %i.bjw = load float, ptr %i.bju, align 4, !tbaa !53
  store float %i.bjw, ptr %i.bjv, align 4, !tbaa !53
  %i.bjx = getelementptr inbounds nuw [4 x i8], ptr %i.bju, i64 %i.arm
  %i.bjy = getelementptr inbounds nuw i8, ptr %.41424.us.i, i64 28
  %i.bjz = load float, ptr %i.bjx, align 4, !tbaa !53
  store float %i.bjz, ptr %i.bjy, align 4, !tbaa !53
  %i.bka = getelementptr inbounds nuw i8, ptr %.41424.us.i, i64 32 ; 2 uses
  %indvars.iv.next1791.i.1 = add nuw nsw i64 %indvars.iv1790.i, 2 ; 2 uses
  %exitcond1794.not.i.1 = icmp eq i64 %indvars.iv.next1791.i.1, %wide.trip.count1786.i
  br i1 %exitcond1794.not.i.1, label %._crit_edge1426.us.i, label %scalar.ph706, !llvm.loop !226

._crit_edge1426.us.i:                             ; preds = %scalar.ph706.prol.loopexit, %scalar.ph706, %middle.block719
  %.lcssa225 = phi ptr [ %i.big, %middle.block719 ], [ %.lcssa820.unr, %scalar.ph706.prol.loopexit ], [ %i.bka, %scalar.ph706 ] ; 2 uses
  %i.bkb = getelementptr inbounds nuw [4 x i8], ptr %.18351428.us.i, i64 %i.arq ; 2 uses
  %i.bkc = add nuw nsw i32 %.18271430.us.i, 4     ; 3 uses
  %i.bkd = or disjoint i32 %i.bkc, 3
  %i.bke = icmp slt i32 %i.bkd, %i.n
  br i1 %i.bke, label %.preheader1082.us.i, label %.preheader1085.i, !llvm.loop !227

.preheader1085.i:                                 ; preds = %._crit_edge1426.us.i, %.preheader1082.preheader.i, %.preheader1086.thread.i, %.preheader1086.i
  %.1835.lcssa.i = phi ptr [ %.0834.lcssa.i, %.preheader1086.i ], [ %scevgep1781.i, %.preheader1086.thread.i ], [ %scevgep1788.i, %.preheader1082.preheader.i ], [ %i.bkb, %._crit_edge1426.us.i ] ; 6 uses
  %.3833.lcssa.i = phi ptr [ %.0830.lcssa.i, %.preheader1086.i ], [ %i.bex, %.preheader1086.thread.i ], [ %.0830.lcssa19471953.i, %.preheader1082.preheader.i ], [ %.lcssa225, %._crit_edge1426.us.i ] ; 2 uses
  %.1827.lcssa.i = phi i32 [ %.0826.lcssa.i, %.preheader1086.i ], [ %i.asb, %.preheader1086.thread.i ], [ %i.bif, %.preheader1082.preheader.i ], [ %i.bkc, %._crit_edge1426.us.i ] ; 5 uses
  %i.bkf = or disjoint i32 %.1827.lcssa.i, 1
  %i.bkg = icmp slt i32 %i.bkf, %i.n
  br i1 %i.bkg, label %.preheader1081.lr.ph.i, label %.preheader1084.i

.preheader1081.lr.ph.i:                           ; preds = %.preheader1085.i
  br i1 %i.arl, label %.preheader1081.us.i.preheader, label %._crit_edge1459.split.i

.preheader1081.us.i.preheader:                    ; preds = %.preheader1081.lr.ph.i
  %scevgep646.a = getelementptr i8, ptr %.1835.lcssa.i, i64 %i.ash
  %i.bkh = getelementptr i8, ptr %.1835.lcssa.i, i64 %i.ash
  %scevgep647.a = getelementptr i8, ptr %i.bkh, i64 %i.asi
  %6 = add i32 %.1827.lcssa.i, 3
  %smax648 = tail call i32 @llvm.smax.i32(i32 %i.n, i32 %6)
  %7 = add i32 %smax648, -2
  %i.bki = sub i32 %7, %.1827.lcssa.i
  %i.bkj = lshr i32 %i.bki, 1
  %i.bkk = zext nneg i32 %i.bkj to i64
  %i.bkl = mul i64 %i.asj, %i.bkk                 ; 2 uses
  %scevgep649.a = getelementptr i8, ptr %scevgep647.a, i64 %i.bkl
  %scevgep650 = getelementptr i8, ptr %.1835.lcssa.i, i64 %i.asi
  %scevgep651 = getelementptr i8, ptr %scevgep650, i64 %i.bkl
  br label %.preheader1081.us.i

.preheader1081.us.i:                              ; preds = %.preheader1081.us.i.preheader, %._crit_edge1442.us.i
  %.28281446.us.i = phi i32 [ %i.bme, %._crit_edge1442.us.i ], [ %.1827.lcssa.i, %.preheader1081.us.i.preheader ]
  %.61445.us.i = phi ptr [ %.lcssa228, %._crit_edge1442.us.i ], [ %.3833.lcssa.i, %.preheader1081.us.i.preheader ] ; 8 uses
  %.28361444.us.i = phi ptr [ %i.bmd, %._crit_edge1442.us.i ], [ %.1835.lcssa.i, %.preheader1081.us.i.preheader ] ; 7 uses
  br i1 %min.iters.check660, label %scalar.ph659.preheader, label %vector.memcheck644

vector.memcheck644:                               ; preds = %.preheader1081.us.i
  %scevgep645 = getelementptr i8, ptr %.61445.us.i, i64 %i.asg ; 2 uses
  %bound0652 = icmp ult ptr %.61445.us.i, %scevgep649.a
  %bound1653 = icmp ult ptr %scevgep646.a, %scevgep645
  %found.conflict654 = and i1 %bound0652, %bound1653
  %bound0655 = icmp ult ptr %.61445.us.i, %scevgep651
  %bound1656 = icmp ult ptr %.1835.lcssa.i, %scevgep645
  %found.conflict657 = and i1 %bound0655, %bound1656
  %conflict.rdx658 = or i1 %found.conflict654, %found.conflict657
  br i1 %conflict.rdx658, label %scalar.ph659.preheader, label %vector.ph661

vector.ph661:                                     ; preds = %vector.memcheck644
  %i.bkm = getelementptr i8, ptr %.61445.us.i, i64 %i.aty ; 2 uses
  br label %vector.body663

vector.body663:                                   ; preds = %vector.body663, %vector.ph661
  %index664 = phi i64 [ 0, %vector.ph661 ], [ %index.next673, %vector.body663 ] ; 3 uses
  %i.bkn = shl i64 %index664, 3                   ; 2 uses
  %next.gep665 = getelementptr i8, ptr %.61445.us.i, i64 %i.bkn
  %i.bko = getelementptr i8, ptr %.61445.us.i, i64 %i.bkn
  %next.gep666 = getelementptr i8, ptr %i.bko, i64 16
  %i.bkp = getelementptr inbounds nuw [4 x i8], ptr %.28361444.us.i, i64 %index664 ; 3 uses
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.bkp, i64 8
  %wide.load667.a = load <2 x float>, ptr %i.bkp, align 4, !tbaa !53, !alias.scope !228
  %wide.load668.a = load <2 x float>, ptr %i.bkq, align 4, !tbaa !53, !alias.scope !228
  %i.bkr = getelementptr inbounds nuw [4 x i8], ptr %i.bkp, i64 %i.arm ; 2 uses
  %i.bks = getelementptr inbounds nuw i8, ptr %i.bkr, i64 8
  %wide.load669 = load <2 x float>, ptr %i.bkr, align 4, !tbaa !53, !alias.scope !231
  %wide.load670 = load <2 x float>, ptr %i.bks, align 4, !tbaa !53, !alias.scope !231
  %interleaved.vec671 = shufflevector <2 x float> %wide.load667.a, <2 x float> %wide.load669, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec671, ptr %next.gep665, align 4, !tbaa !53, !alias.scope !233, !noalias !235
  %interleaved.vec672 = shufflevector <2 x float> %wide.load668.a, <2 x float> %wide.load670, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec672, ptr %next.gep666, align 4, !tbaa !53, !alias.scope !233, !noalias !235
  %index.next673 = add nuw i64 %index664, 4       ; 2 uses
  %i.bkt = icmp eq i64 %index.next673, %n.vec662
  br i1 %i.bkt, label %middle.block674, label %vector.body663, !llvm.loop !236

middle.block674:                                  ; preds = %vector.body663
  br i1 %cmp.n675, label %._crit_edge1442.us.i, label %scalar.ph659.preheader

scalar.ph659.preheader:                           ; preds = %vector.memcheck644, %.preheader1081.us.i, %middle.block674
  %indvars.iv1797.i.ph = phi i64 [ 0, %vector.memcheck644 ], [ 0, %.preheader1081.us.i ], [ %n.vec662, %middle.block674 ] ; 3 uses
  %.71440.us.i.ph = phi ptr [ %.61445.us.i, %vector.memcheck644 ], [ %.61445.us.i, %.preheader1081.us.i ], [ %i.bkm, %middle.block674 ] ; 2 uses
  br i1 %lcmp.mod895.not, label %scalar.ph659.prol.loopexit, label %scalar.ph659.prol

scalar.ph659.prol:                                ; preds = %scalar.ph659.preheader, %scalar.ph659.prol
  %indvars.iv1797.i.prol = phi i64 [ %indvars.iv.next1798.i.prol, %scalar.ph659.prol ], [ %indvars.iv1797.i.ph, %scalar.ph659.preheader ] ; 2 uses
  %.71440.us.i.prol = phi ptr [ %i.bkz, %scalar.ph659.prol ], [ %.71440.us.i.ph, %scalar.ph659.preheader ] ; 3 uses
  %prol.iter896 = phi i64 [ %prol.iter896.next, %scalar.ph659.prol ], [ 0, %scalar.ph659.preheader ]
  %i.bku = getelementptr inbounds nuw [4 x i8], ptr %.28361444.us.i, i64 %indvars.iv1797.i.prol ; 2 uses
  %i.bkv = load float, ptr %i.bku, align 4, !tbaa !53
  store float %i.bkv, ptr %.71440.us.i.prol, align 4, !tbaa !53
  %i.bkw = getelementptr inbounds nuw [4 x i8], ptr %i.bku, i64 %i.arm
  %i.bkx = getelementptr inbounds nuw i8, ptr %.71440.us.i.prol, i64 4
  %i.bky = load float, ptr %i.bkw, align 4, !tbaa !53
  store float %i.bky, ptr %i.bkx, align 4, !tbaa !53
  %i.bkz = getelementptr inbounds nuw i8, ptr %.71440.us.i.prol, i64 8 ; 3 uses
  %indvars.iv.next1798.i.prol = add nuw nsw i64 %indvars.iv1797.i.prol, 1 ; 2 uses
  %prol.iter896.next = add i64 %prol.iter896, 1   ; 2 uses
  %prol.iter896.cmp.not = icmp eq i64 %prol.iter896.next, %xtraiter894
  br i1 %prol.iter896.cmp.not, label %scalar.ph659.prol.loopexit, label %scalar.ph659.prol, !llvm.loop !237

scalar.ph659.prol.loopexit:                       ; preds = %scalar.ph659.prol, %scalar.ph659.preheader
  %.lcssa823.unr = phi ptr [ poison, %scalar.ph659.preheader ], [ %i.bkz, %scalar.ph659.prol ]
  %indvars.iv1797.i.unr = phi i64 [ %indvars.iv1797.i.ph, %scalar.ph659.preheader ], [ %indvars.iv.next1798.i.prol, %scalar.ph659.prol ]
  %.71440.us.i.unr = phi ptr [ %.71440.us.i.ph, %scalar.ph659.preheader ], [ %i.bkz, %scalar.ph659.prol ]
  %i.bla = sub nsw i64 %indvars.iv1797.i.ph, %wide.trip.count1786.i
  %i.blb = icmp ugt i64 %i.bla, -4
  br i1 %i.blb, label %._crit_edge1442.us.i, label %scalar.ph659

scalar.ph659:                                     ; preds = %scalar.ph659.prol.loopexit, %scalar.ph659
  %indvars.iv1797.i = phi i64 [ %indvars.iv.next1798.i.3, %scalar.ph659 ], [ %indvars.iv1797.i.unr, %scalar.ph659.prol.loopexit ] ; 5 uses
  %.71440.us.i = phi ptr [ %i.bmc, %scalar.ph659 ], [ %.71440.us.i.unr, %scalar.ph659.prol.loopexit ] ; 9 uses
  %i.blc = getelementptr inbounds nuw [4 x i8], ptr %.28361444.us.i, i64 %indvars.iv1797.i ; 2 uses
  %i.bld = load float, ptr %i.blc, align 4, !tbaa !53
  store float %i.bld, ptr %.71440.us.i, align 4, !tbaa !53
  %i.ble = getelementptr inbounds nuw [4 x i8], ptr %i.blc, i64 %i.arm
  %i.blf = getelementptr inbounds nuw i8, ptr %.71440.us.i, i64 4
  %i.blg = load float, ptr %i.ble, align 4, !tbaa !53
  store float %i.blg, ptr %i.blf, align 4, !tbaa !53
  %i.blh = getelementptr inbounds nuw i8, ptr %.71440.us.i, i64 8
  %i.bli = getelementptr inbounds nuw [4 x i8], ptr %.28361444.us.i, i64 %indvars.iv1797.i
  %i.blj = getelementptr inbounds nuw i8, ptr %i.bli, i64 4 ; 2 uses
  %i.blk = load float, ptr %i.blj, align 4, !tbaa !53
  store float %i.blk, ptr %i.blh, align 4, !tbaa !53
  %i.bll = getelementptr inbounds nuw [4 x i8], ptr %i.blj, i64 %i.arm
  %i.blm = getelementptr inbounds nuw i8, ptr %.71440.us.i, i64 12
  %i.bln = load float, ptr %i.bll, align 4, !tbaa !53
  store float %i.bln, ptr %i.blm, align 4, !tbaa !53
  %i.blo = getelementptr inbounds nuw i8, ptr %.71440.us.i, i64 16
  %i.blp = getelementptr inbounds nuw [4 x i8], ptr %.28361444.us.i, i64 %indvars.iv1797.i
  %i.blq = getelementptr inbounds nuw i8, ptr %i.blp, i64 8 ; 2 uses
  %i.blr = load float, ptr %i.blq, align 4, !tbaa !53
  store float %i.blr, ptr %i.blo, align 4, !tbaa !53
  %i.bls = getelementptr inbounds nuw [4 x i8], ptr %i.blq, i64 %i.arm
  %i.blt = getelementptr inbounds nuw i8, ptr %.71440.us.i, i64 20
  %i.blu = load float, ptr %i.bls, align 4, !tbaa !53
  store float %i.blu, ptr %i.blt, align 4, !tbaa !53
  %i.blv = getelementptr inbounds nuw i8, ptr %.71440.us.i, i64 24
  %i.blw = getelementptr inbounds nuw [4 x i8], ptr %.28361444.us.i, i64 %indvars.iv1797.i
  %i.blx = getelementptr inbounds nuw i8, ptr %i.blw, i64 12 ; 2 uses
  %i.bly = load float, ptr %i.blx, align 4, !tbaa !53
  store float %i.bly, ptr %i.blv, align 4, !tbaa !53
  %i.blz = getelementptr inbounds nuw [4 x i8], ptr %i.blx, i64 %i.arm
  %i.bma = getelementptr inbounds nuw i8, ptr %.71440.us.i, i64 28
  %i.bmb = load float, ptr %i.blz, align 4, !tbaa !53
  store float %i.bmb, ptr %i.bma, align 4, !tbaa !53
  %i.bmc = getelementptr inbounds nuw i8, ptr %.71440.us.i, i64 32 ; 2 uses
  %indvars.iv.next1798.i.3 = add nuw nsw i64 %indvars.iv1797.i, 4 ; 2 uses
  %exitcond1801.not.i.3 = icmp eq i64 %indvars.iv.next1798.i.3, %wide.trip.count1786.i
  br i1 %exitcond1801.not.i.3, label %._crit_edge1442.us.i, label %scalar.ph659, !llvm.loop !238

._crit_edge1442.us.i:                             ; preds = %scalar.ph659.prol.loopexit, %scalar.ph659, %middle.block674
  %.lcssa228 = phi ptr [ %i.bkm, %middle.block674 ], [ %.lcssa823.unr, %scalar.ph659.prol.loopexit ], [ %i.bmc, %scalar.ph659 ] ; 2 uses
  %i.bmd = getelementptr inbounds nuw [4 x i8], ptr %.28361444.us.i, i64 %i.ars ; 2 uses
  %i.bme = add nuw nsw i32 %.28281446.us.i, 2     ; 3 uses
  %i.bmf = or disjoint i32 %i.bme, 1
  %i.bmg = icmp slt i32 %i.bmf, %i.n
  br i1 %i.bmg, label %.preheader1081.us.i, label %.preheader1084.i, !llvm.loop !239

.preheader1084.i:                                 ; preds = %._crit_edge1442.us.i, %.preheader1085.i
  %.2836.lcssa.i = phi ptr [ %.1835.lcssa.i, %.preheader1085.i ], [ %i.bmd, %._crit_edge1442.us.i ] ; 12 uses
  %.6.lcssa.i = phi ptr [ %.3833.lcssa.i, %.preheader1085.i ], [ %.lcssa228, %._crit_edge1442.us.i ]
  %.2828.lcssa.i = phi i32 [ %.1827.lcssa.i, %.preheader1085.i ], [ %i.bme, %._crit_edge1442.us.i ] ; 2 uses
  %i.bmh = icmp sge i32 %.2828.lcssa.i, %i.n
  %brmerge1473.i = or i1 %i.art, %i.bmh
  br i1 %brmerge1473.i, label %._crit_edge1459.split.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader1084.i
  %.2836.lcssa.i618 = ptrtoaddr ptr %.2836.lcssa.i to i64
  br label %iter.check

iter.check:                                       ; preds = %.preheader.i.preheader, %._crit_edge1455.i
  %.38291458.i = phi i32 [ %i.bnc, %._crit_edge1455.i ], [ %.2828.lcssa.i, %.preheader.i.preheader ]
  %.91457.i = phi ptr [ %.lcssa231, %._crit_edge1455.i ], [ %.6.lcssa.i, %.preheader.i.preheader ] ; 6 uses
  %.91457.i619 = ptrtoaddr ptr %.91457.i to i64
  %i.bmi = sub i64 %.2836.lcssa.i618, %.91457.i619
  %diff.check = icmp ugt i64 %i.bmi, -128
  %or.cond = select i1 %min.iters.check621.a, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check622, label %vec.epilog.ph, label %vector.ph623

vector.ph623:                                     ; preds = %vector.main.loop.iter.check
  %i.bmj = getelementptr i8, ptr %.91457.i, i64 %i.aua ; 2 uses
  br label %vector.body625

vector.body625:                                   ; preds = %vector.body625, %vector.ph623
  %index626 = phi i64 [ 0, %vector.ph623 ], [ %index.next632, %vector.body625 ] ; 3 uses
  %i.bmk = shl i64 %index626, 2
  %next.gep627 = getelementptr i8, ptr %.91457.i, i64 %i.bmk ; 4 uses
  %i.bml = getelementptr inbounds nuw [4 x i8], ptr %.2836.lcssa.i, i64 %index626 ; 4 uses
  %i.bmm = getelementptr inbounds nuw i8, ptr %i.bml, i64 32
  %i.bmn = getelementptr inbounds nuw i8, ptr %i.bml, i64 64
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bml, i64 96
  %wide.load628.a = load <8 x float>, ptr %i.bml, align 4, !tbaa !53
  %wide.load629.a = load <8 x float>, ptr %i.bmm, align 4, !tbaa !53
  %wide.load630.a = load <8 x float>, ptr %i.bmn, align 4, !tbaa !53
  %wide.load631 = load <8 x float>, ptr %i.bmo, align 4, !tbaa !53
  %i.bmp = getelementptr i8, ptr %next.gep627, i64 32
  %i.bmq = getelementptr i8, ptr %next.gep627, i64 64
  %i.bmr = getelementptr i8, ptr %next.gep627, i64 96
  store <8 x float> %wide.load628.a, ptr %next.gep627, align 4, !tbaa !53
  store <8 x float> %wide.load629.a, ptr %i.bmp, align 4, !tbaa !53
  store <8 x float> %wide.load630.a, ptr %i.bmq, align 4, !tbaa !53
  store <8 x float> %wide.load631, ptr %i.bmr, align 4, !tbaa !53
  %index.next632 = add nuw i64 %index626, 32      ; 2 uses
  %i.bms = icmp eq i64 %index.next632, %n.vec624
  br i1 %i.bms, label %middle.block633, label %vector.body625, !llvm.loop !240

middle.block633:                                  ; preds = %vector.body625
  br i1 %cmp.n634, label %._crit_edge1455.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block633
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !241

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec624, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.bmt = getelementptr i8, ptr %.91457.i, i64 %i.aub ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index637 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next640, %vec.epilog.vector.body ] ; 3 uses
  %i.bmu = shl i64 %index637, 2
  %next.gep638 = getelementptr i8, ptr %.91457.i, i64 %i.bmu
end_hunk_2
begin_hunk_3_@_ZNK4ncnn21Convolution1D_x86_avx7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
._crit_edge:                                      ; preds = %bb.f, %bb.g
  %.0 = phi i32 [ %i.be, %bb.g ], [ 1, %bb.f ]    ; 3 uses
  %i.bf = sext i32 %i.u to i64
  %i.bg = udiv i64 %i.w, %i.bf
  %i.bh = zext nneg i32 %.0 to i64
  %i.bi = mul i64 %i.bg, %i.bh
  %i.bj = add i32 %i.at, %.neg
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !257
  %i.bm = sdiv i32 %i.bj, %i.bl
  %i.bn = add nsw i32 %i.bm, 1
  %i.bo = sdiv i32 %i.ay, %.0
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !263
  invoke void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.bn, i32 noundef %i.bo, i64 noundef %i.bi, i32 noundef %.0, ptr noundef %i.bq)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.br = load ptr, ptr %2, align 8, !tbaa !18
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_ZNK4ncnn3Mat5emptyEv.exit42.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !20
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !250
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul i64 %i.bu, %i.bx
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %_ZNK4ncnn3Mat5emptyEv.exit42.thread, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.j:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.cd = load i32, ptr %i.z, align 4, !tbaa !44
  %i.ce = load i32, ptr %i.x, align 8, !tbaa !256
  %i.cf = load i32, ptr %i.bk, align 4, !tbaa !257
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !261
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.cj = call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %i.cd, ptr %i.a, align 4, !tbaa !254
  store i32 %i.ce, ptr %i.b, align 4, !tbaa !254
  store i32 %i.cf, ptr %i.c, align 4, !tbaa !254
  store i32 %i.ch, ptr %i.d, align 4, !tbaa !254
  %i.ck = load i32, ptr %i.af, align 8, !tbaa !251 ; 9 uses
  %i.cl = load i32, ptr %i.ai, align 8, !tbaa !264
  %i.cm = mul i32 %i.cl, %i.ck                    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.cn = load i32, ptr %i.ah, align 4, !tbaa !249
  %i.co = mul nsw i32 %i.cn, %i.ck
  store i32 %i.co, ptr %i.e, align 4, !tbaa !254
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 5 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !249 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !251 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !264
  %i.cv = mul nsw i32 %i.cu, %i.cs                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  %i.cw = mul nsw i32 %i.cs, %i.cq
  store i32 %i.cw, ptr %i.f, align 4, !tbaa !254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  %i.cx = load ptr, ptr %i.cc, align 8, !tbaa !18
  store ptr %i.cx, ptr %i.g, align 8, !tbaa !265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #11
  store i32 0, ptr %i.i, align 4, !tbaa !254
  %i.cy = sdiv i32 %i.cv, 8
  store i32 %i.cy, ptr %i.h, align 4, !tbaa !254
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !267
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.cj, i32 %i.da)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 13, ptr nonnull @_ZN4ncnnL20convolution1d_packedERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.omp_outlined, ptr nonnull %i.h, ptr nonnull %i.i, ptr nonnull align 8 dereferenceable(72) %4, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.g, ptr nonnull align 8 dereferenceable(72) %i.cb, ptr nonnull %i.c, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull align 8 dereferenceable(72) %i.ci, ptr nonnull %i.f)
  %i.db = load i32, ptr %i.h, align 4, !tbaa !254
  %i.dc = shl nsw i32 %i.db, 3
  %i.dd = load i32, ptr %i.i, align 4, !tbaa !254
  %i.de = add nsw i32 %i.dd, %i.dc                ; 4 uses
  store i32 %i.de, ptr %i.i, align 4, !tbaa !254
  %i.df = sub nsw i32 %i.cv, %i.de                ; 2 uses
  %i.dg = sdiv i32 %i.df, 4                       ; 2 uses
  %i.dh = icmp sgt i32 %i.df, 3
  br i1 %i.dh, label %.lr.ph1247.i, label %._crit_edge1248.i

.lr.ph1247.i:                                     ; preds = %bb.j
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dj = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not570.i = icmp eq ptr %i.dj, null
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.dm = load i32, ptr %i.d, align 4
  %i.dn = load i32, ptr %i.cp, align 4, !tbaa !249 ; 2 uses
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %.lr.ph1247.split.preheader.i, label %._crit_edge1248.i

.lr.ph1247.split.preheader.i:                     ; preds = %.lr.ph1247.i
  %i.dp = sext i32 %i.de to i64
  %wide.trip.count1666.i = zext nneg i32 %i.dg to i64
  br label %.lr.ph1247.split.i

._crit_edge1248.i:                                ; preds = %._crit_edge.i, %.lr.ph1247.i, %bb.j
  %i.dq = shl nsw i32 %i.dg, 2
  %i.dr = add nsw i32 %i.dq, %i.de                ; 4 uses
  %i.ds = sub nsw i32 %i.cv, %i.dr                ; 2 uses
  %i.dt = sdiv i32 %i.ds, 2                       ; 2 uses
  %i.du = icmp sgt i32 %i.ds, 1
  br i1 %i.du, label %.lr.ph1396.i, label %._crit_edge1397.split.i

.lr.ph1396.i:                                     ; preds = %._crit_edge1248.i
  %i.dv = load i32, ptr %i.af, align 8, !tbaa !251 ; 7 uses
  %i.dw = load i32, ptr %i.ai, align 8, !tbaa !264
  %i.dx = mul i32 %i.dw, %i.dv                    ; 10 uses
  %i.dy = load i32, ptr %i.cp, align 4, !tbaa !249 ; 3 uses
  %i.dz = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.ea = sext i32 %i.dy to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !49
  %i.ed = mul i64 %i.ec, %i.ea                    ; 2 uses
  %i.ee = icmp sgt i32 %i.dy, 0
  %i.ef = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not569.i = icmp eq ptr %i.ef, null
  %i.eg = icmp sgt i32 %i.dx, 7
  %i.eh = icmp eq i32 %i.dv, 8
  %i.ei = icmp eq i32 %i.dv, 4                    ; 2 uses
  %i.ej = icmp ne i32 %i.dv, 1                    ; 2 uses
  %i.ek = load i32, ptr %i.d, align 4
  br i1 %i.ee, label %.lr.ph1396.split.i, label %._crit_edge1397.split.i

.lr.ph1396.split.i:                               ; preds = %.lr.ph1396.i
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.en = load ptr, ptr %i.cb, align 8, !tbaa !18, !noalias !268
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !20, !noalias !268
  %i.ep = load i64, ptr %i.el, align 8, !tbaa !49, !noalias !268
  %factor.op.mul1399.i = mul i64 %i.ep, %i.eo
  %i.eq = and i32 %i.dx, -8                       ; 2 uses
  %i.er = sext i32 %i.dr to i64
  %wide.trip.count1704.i = zext nneg i32 %i.dt to i64
  %wide.trip.count1699.i = zext nneg i32 %i.dy to i64
  br label %.lr.ph1388.i

.lr.ph1247.splitthread-pre-split.i:               ; preds = %._crit_edge.i
  %.pr.i = load i32, ptr %i.cp, align 4, !tbaa !249
  br label %.lr.ph1247.split.i

.lr.ph1247.split.i:                               ; preds = %.lr.ph1247.splitthread-pre-split.i, %.lr.ph1247.split.preheader.i
  %i.es = phi i32 [ %.pr.i, %.lr.ph1247.splitthread-pre-split.i ], [ %i.dn, %.lr.ph1247.split.preheader.i ] ; 2 uses
  %indvars.iv1663.i = phi i64 [ %indvars.iv.next1664.i, %.lr.ph1247.splitthread-pre-split.i ], [ 0, %.lr.ph1247.split.preheader.i ] ; 2 uses
  %i.et = load i32, ptr %i.af, align 8, !tbaa !251 ; 7 uses
  %i.eu = load i32, ptr %i.ai, align 8, !tbaa !264
  %i.ev = mul i32 %i.eu, %i.et                    ; 11 uses
  %i.ew = load i32, ptr %i.cr, align 8, !tbaa !251 ; 2 uses
  %i.ex = icmp sgt i32 %i.es, 0
  br i1 %i.ex, label %.lr.ph1240.i, label %._crit_edge.i

.lr.ph1240.i:                                     ; preds = %.lr.ph1247.split.i
  %i.ey = load ptr, ptr %2, align 8, !tbaa !18
  %i.ez = shl nuw nsw i64 %indvars.iv1663.i, 2
  %i.fa = add nsw i64 %i.ez, %i.dp                ; 2 uses
  %i.fb = trunc nsw i64 %i.fa to i32              ; 3 uses
  %i.fc = sdiv i32 %i.fb, %i.ew
  %i.fd = sext i32 %i.fc to i64
  %i.fe = zext nneg i32 %i.es to i64              ; 2 uses
  %i.ff = mul nsw i64 %i.fd, %i.fe
  %i.fg = load i64, ptr %i.di, align 8, !tbaa !49
  %i.fh = mul i64 %i.ff, %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.fh
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.fa
  %i.fk = sdiv i32 %i.fb, 8
  %i.fl = srem i32 %i.fb, 8
  %.lhs.trunc.i = trunc nsw i32 %i.fl to i8
  %i.fm = sdiv i8 %.lhs.trunc.i, 4
  %.sext.i = sext i8 %i.fm to i32
  %i.fn = add nsw i32 %i.fk, %.sext.i
  %i.fo = sext i32 %i.fn to i64
  %i.fp = icmp sgt i32 %i.ev, 7
  %i.fq = load i32, ptr %i.c, align 4             ; 2 uses
  %factor.op.mul1241.i = mul i32 %i.fq, %i.et     ; 2 uses
  %i.fr = icmp eq i32 %i.et, 8
  %i.fs = icmp eq i32 %i.et, 4                    ; 2 uses
  %i.ft = icmp eq i32 %i.et, 1                    ; 2 uses
  %i.fu = load i32, ptr %i.a, align 4             ; 8 uses
  %i.fv = icmp sgt i32 %i.fu, 0                   ; 2 uses
  %i.fw = load i32, ptr %i.f, align 4             ; 3 uses
  %i.fx = sext i32 %i.fw to i64
  %i.fy = shl nsw i32 %i.fw, 1
  %i.fz = sext i32 %i.fy to i64
  %i.ga = mul nsw i32 %i.fw, 3
  %i.gb = sext i32 %i.ga to i64
  %i.gc = and i32 %i.ev, -8                       ; 2 uses
  %i.gd = add i32 %i.fu, -1                       ; 2 uses
  %i.ge = zext i32 %i.gd to i64                   ; 2 uses
  %i.gf = shl nuw nsw i64 %i.ge, 5
  %i.gg = shl nuw nsw i64 %i.ge, 4
  %i.gh = sext i32 %i.fq to i64                   ; 2 uses
  %xtraiter = and i32 %i.fu, 1
  %i.gi = icmp eq i32 %i.gd, 0
  %unroll_iter = and i32 %i.fu, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod388 = trunc i32 %i.fu to i1
  %xtraiter390 = and i32 %i.fu, 3                 ; 3 uses
  %i.gj = icmp ult i32 %i.fu, 4
  %unroll_iter394 = and i32 %i.fu, 2147483644
  %lcmp.mod391.not = icmp eq i32 %xtraiter390, 0
  %lcmp.mod393 = icmp ne i32 %xtraiter390, 0
  br label %bb.k

._crit_edge.i:                                    ; preds = %bb.w, %.lr.ph1247.split.i
  %indvars.iv.next1664.i = add nuw nsw i64 %indvars.iv1663.i, 1 ; 2 uses
  %exitcond1667.not.i = icmp eq i64 %indvars.iv.next1664.i, %wide.trip.count1666.i
  br i1 %exitcond1667.not.i, label %._crit_edge1248.i, label %.lr.ph1247.splitthread-pre-split.i, !llvm.loop !271

bb.k:                                             ; preds = %bb.w, %.lr.ph1240.i
  %indvars.iv1659.i = phi i64 [ 0, %.lr.ph1240.i ], [ %indvars.iv.next1660.i, %bb.w ] ; 5 uses
  %.05581238.i = phi ptr [ %i.fi, %.lr.ph1240.i ], [ %.2560.i, %bb.w ] ; 8 uses
  br i1 %.not570.i, label %_ZN4ncnn3MatD2Ev.exit572.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gk = load <4 x float>, ptr %i.fj, align 1, !tbaa !273
  br label %_ZN4ncnn3MatD2Ev.exit572.i

_ZN4ncnn3MatD2Ev.exit572.i:                       ; preds = %bb.l, %bb.k
  %.0946.i = phi nsz <4 x float> [ zeroinitializer, %bb.k ], [ %i.gk, %bb.l ] ; 3 uses
  %i.gl = load ptr, ptr %i.cb, align 8, !tbaa !18, !noalias !274
  %i.gm = load i64, ptr %i.dk, align 8, !tbaa !20, !noalias !274
  %i.gn = mul i64 %i.gm, %i.fo
  %i.go = load i64, ptr %i.dl, align 8, !tbaa !49, !noalias !274
  %i.gp = mul i64 %i.gn, %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gp ; 3 uses
  br i1 %i.fp, label %.lr.ph1143.i, label %.preheader1095.i

.lr.ph1143.i:                                     ; preds = %_ZN4ncnn3MatD2Ev.exit572.i
  %i.gr = load ptr, ptr %4, align 8, !tbaa !18
  %i.gs = load i32, ptr %i.ah, align 4, !tbaa !249
  %i.gt = sext i32 %i.gs to i64
  %i.gu = load i64, ptr %i.ae, align 8, !tbaa !49
  %factor.op.mul.i = mul i64 %i.gu, %i.gt         ; 2 uses
  %i.gv = trunc nuw nsw i64 %indvars.iv1659.i to i32
  %.reass1242.i = mul i32 %factor.op.mul1241.i, %i.gv
  %i.gw = sext i32 %.reass1242.i to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.gr, i64 %i.gw ; 2 uses
  %i.gx = load i32, ptr %i.a, align 4             ; 5 uses
  %i.gy = icmp sgt i32 %i.gx, 0                   ; 3 uses
  %i.gz = load i32, ptr %i.b, align 4             ; 3 uses
  %i.ha = shl nsw i32 %i.gz, 3
  %i.hb = sext i32 %i.ha to i64
  %i.hc = load i32, ptr %i.e, align 4             ; 7 uses
  %i.hd = sext i32 %i.hc to i64                   ; 2 uses
  %i.he = shl nsw i32 %i.gz, 2
  %i.hf = sext i32 %i.he to i64                   ; 2 uses
  %i.hg = shl nsw i32 %i.hc, 1
  %i.hh = sext i32 %i.hg to i64
  %i.hi = mul nsw i32 %i.hc, 3
  %i.hj = sext i32 %i.hi to i64
  %i.hk = shl nsw i32 %i.hc, 2
  %i.hl = sext i32 %i.hk to i64
  %i.hm = mul nsw i32 %i.hc, 5
  %i.hn = sext i32 %i.hm to i64
  %i.ho = mul nsw i32 %i.hc, 6
  %i.hp = sext i32 %i.ho to i64
  %i.hq = mul nsw i32 %i.hc, 7
  %i.hr = sext i32 %i.hq to i64
  %i.hs = sext i32 %i.gz to i64
  %i.ht = add i32 %i.gx, -1
  %i.hu = zext i32 %i.ht to i64
  %i.hv = shl nuw nsw i64 %i.hu, 7                ; 3 uses
  br i1 %i.fr, label %.preheader1091.i.us, label %.loopexit1092.i

.preheader1091.i.us:                              ; preds = %.lr.ph1143.i, %.loopexit1089.i.us
  %.05371142.i.us = phi i32 [ %i.kl, %.loopexit1089.i.us ], [ 0, %.lr.ph1143.i ] ; 2 uses
  %.05411141.i.us = phi ptr [ %.6547.i.us, %.loopexit1089.i.us ], [ %i.gq, %.lr.ph1143.i ] ; 3 uses
  %.19471140.i.us = phi <4 x float> [ %.7953.i.us, %.loopexit1089.i.us ], [ %.0946.i, %.lr.ph1143.i ] ; 2 uses
  %.09671139.i.us = phi <4 x float> [ %.6973.i.us, %.loopexit1089.i.us ], [ zeroinitializer, %.lr.ph1143.i ] ; 2 uses
  %.09811138.i.us = phi <4 x float> [ %.6987.i.us, %.loopexit1089.i.us ], [ zeroinitializer, %.lr.ph1143.i ] ; 2 uses
  %.09931137.i.us = phi <4 x float> [ %.6999.i.us, %.loopexit1089.i.us ], [ zeroinitializer, %.lr.ph1143.i ] ; 2 uses
  br i1 %i.gy, label %.lr.ph.i.us.preheader, label %.loopexit1089.i.us

.lr.ph.i.us.preheader:                            ; preds = %.preheader1091.i.us
  %i.hw = lshr exact i32 %.05371142.i.us, 3
  %i.hx = zext nneg i32 %i.hw to i64
  %.reass.i.us = mul i64 %factor.op.mul.i, %i.hx
  %gep.i.us = getelementptr i8, ptr %invariant.gep.i, i64 %.reass.i.us
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %.lr.ph.i.us
  %.05311103.i.us = phi i32 [ %i.kk, %.lr.ph.i.us ], [ 0, %.lr.ph.i.us.preheader ]
  %.05321102.i.us = phi ptr [ %i.ki, %.lr.ph.i.us ], [ %gep.i.us, %.lr.ph.i.us.preheader ] ; 9 uses
  %.15421101.i.us = phi ptr [ %i.kj, %.lr.ph.i.us ], [ %.05411141.i.us, %.lr.ph.i.us.preheader ] ; 9 uses
  %.29481100.i.us = phi <4 x float> [ %i.jp, %.lr.ph.i.us ], [ %.19471140.i.us, %.lr.ph.i.us.preheader ]
  %.19681099.i.us = phi <4 x float> [ %i.jv, %.lr.ph.i.us ], [ %.09671139.i.us, %.lr.ph.i.us.preheader ]
  %.19821098.i.us = phi <4 x float> [ %i.kb, %.lr.ph.i.us ], [ %.09811138.i.us, %.lr.ph.i.us.preheader ]
  %.19941097.i.us = phi <4 x float> [ %i.kh, %.lr.ph.i.us ], [ %.09931137.i.us, %.lr.ph.i.us.preheader ]
  %i.hy = load <4 x float>, ptr %.15421101.i.us, align 16, !tbaa !273
  %i.hz = getelementptr inbounds nuw i8, ptr %.15421101.i.us, i64 16
  %i.ia = load <4 x float>, ptr %i.hz, align 16, !tbaa !273
  %i.ib = getelementptr inbounds nuw i8, ptr %.15421101.i.us, i64 32
  %i.ic = load <4 x float>, ptr %i.ib, align 16, !tbaa !273
  %i.id = getelementptr inbounds nuw i8, ptr %.15421101.i.us, i64 48
  %i.ie = load <4 x float>, ptr %i.id, align 16, !tbaa !273
  %i.if = getelementptr inbounds nuw i8, ptr %.15421101.i.us, i64 64
  %i.ig = load <4 x float>, ptr %i.if, align 16, !tbaa !273
  %i.ih = getelementptr inbounds nuw i8, ptr %.15421101.i.us, i64 80
  %i.ii = load <4 x float>, ptr %i.ih, align 16, !tbaa !273
  %i.ij = getelementptr inbounds nuw i8, ptr %.15421101.i.us, i64 96
  %i.ik = load <4 x float>, ptr %i.ij, align 16, !tbaa !273
  %i.il = getelementptr inbounds nuw i8, ptr %.15421101.i.us, i64 112
  %i.im = load <4 x float>, ptr %i.il, align 16, !tbaa !273
  %i.in = load float, ptr %.05321102.i.us, align 4, !tbaa !53
  %i.io = insertelement <4 x float> poison, float %i.in, i64 0
  %i.ip = shufflevector <4 x float> %i.io, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iq = fmul fast <4 x float> %i.ip, %i.hy
  %i.ir = fadd fast <4 x float> %.29481100.i.us, %i.iq
  %i.is = getelementptr inbounds nuw i8, ptr %.05321102.i.us, i64 4
  %i.it = load float, ptr %i.is, align 4, !tbaa !53
  %i.iu = insertelement <4 x float> poison, float %i.it, i64 0
  %i.iv = shufflevector <4 x float> %i.iu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iw = fmul fast <4 x float> %i.iv, %i.ia
  %i.ix = fadd fast <4 x float> %.19681099.i.us, %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %.05321102.i.us, i64 8
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !53
  %i.ja = insertelement <4 x float> poison, float %i.iz, i64 0
  %i.jb = shufflevector <4 x float> %i.ja, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jc = fmul fast <4 x float> %i.jb, %i.ic
  %i.jd = fadd fast <4 x float> %.19821098.i.us, %i.jc
  %i.je = getelementptr inbounds nuw i8, ptr %.05321102.i.us, i64 12
  %i.jf = load float, ptr %i.je, align 4, !tbaa !53
  %i.jg = insertelement <4 x float> poison, float %i.jf, i64 0
  %i.jh = shufflevector <4 x float> %i.jg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ji = fmul fast <4 x float> %i.jh, %i.ie
  %i.jj = fadd fast <4 x float> %.19941097.i.us, %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %.05321102.i.us, i64 16
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !53
  %i.jm = insertelement <4 x float> poison, float %i.jl, i64 0
  %i.jn = shufflevector <4 x float> %i.jm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jo = fmul fast <4 x float> %i.jn, %i.ig
  %i.jp = fadd fast <4 x float> %i.jo, %i.ir      ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.05321102.i.us, i64 20
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !53
  %i.js = insertelement <4 x float> poison, float %i.jr, i64 0
  %i.jt = shufflevector <4 x float> %i.js, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ju = fmul fast <4 x float> %i.jt, %i.ii
  %i.jv = fadd fast <4 x float> %i.ju, %i.ix      ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.05321102.i.us, i64 24
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !53
  %i.jy = insertelement <4 x float> poison, float %i.jx, i64 0
  %i.jz = shufflevector <4 x float> %i.jy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ka = fmul fast <4 x float> %i.jz, %i.ik
  %i.kb = fadd fast <4 x float> %i.ka, %i.jd      ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.05321102.i.us, i64 28
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !53
  %i.ke = insertelement <4 x float> poison, float %i.kd, i64 0
  %i.kf = shufflevector <4 x float> %i.ke, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kg = fmul fast <4 x float> %i.kf, %i.im
  %i.kh = fadd fast <4 x float> %i.kg, %i.jj      ; 2 uses
  %i.ki = getelementptr inbounds [4 x i8], ptr %.05321102.i.us, i64 %i.hb
  %i.kj = getelementptr inbounds nuw i8, ptr %.15421101.i.us, i64 128
  %i.kk = add nuw nsw i32 %.05311103.i.us, 1      ; 2 uses
  %exitcond.not.i.us = icmp eq i32 %i.kk, %i.gx
  br i1 %exitcond.not.i.us, label %.loopexit1092.loopexit.i.us, label %.lr.ph.i.us, !llvm.loop !277

.loopexit1092.loopexit.i.us:                      ; preds = %.lr.ph.i.us
  %scevgep.i.us = getelementptr i8, ptr %.05411141.i.us, i64 128
  %scevgep1636.i.us = getelementptr i8, ptr %scevgep.i.us, i64 %i.hv
  br label %.loopexit1089.i.us

.loopexit1089.i.us:                               ; preds = %.loopexit1092.loopexit.i.us, %.preheader1091.i.us
  %.6999.i.us = phi nsz <4 x float> [ %.09931137.i.us, %.preheader1091.i.us ], [ %i.kh, %.loopexit1092.loopexit.i.us ] ; 2 uses
  %.6987.i.us = phi nsz <4 x float> [ %.09811138.i.us, %.preheader1091.i.us ], [ %i.kb, %.loopexit1092.loopexit.i.us ] ; 2 uses
  %.6973.i.us = phi nsz <4 x float> [ %.09671139.i.us, %.preheader1091.i.us ], [ %i.jv, %.loopexit1092.loopexit.i.us ] ; 2 uses
  %.7953.i.us = phi nsz <4 x float> [ %.19471140.i.us, %.preheader1091.i.us ], [ %i.jp, %.loopexit1092.loopexit.i.us ] ; 2 uses
  %.6547.i.us = phi ptr [ %.05411141.i.us, %.preheader1091.i.us ], [ %scevgep1636.i.us, %.loopexit1092.loopexit.i.us ] ; 2 uses
  %i.kl = add nuw nsw i32 %.05371142.i.us, 8      ; 2 uses
  %i.km = or disjoint i32 %i.kl, 7
  %i.kn = icmp slt i32 %i.km, %i.ev
  br i1 %i.kn, label %.preheader1091.i.us, label %.preheader1095.i, !llvm.loop !278

.preheader1095.i:                                 ; preds = %.loopexit1089.i, %.loopexit1089.i.us, %_ZN4ncnn3MatD2Ev.exit572.i
  %.0993.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit572.i ], [ %.6999.i.us, %.loopexit1089.i.us ], [ %.6999.i, %.loopexit1089.i ] ; 2 uses
  %.0981.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit572.i ], [ %.6987.i.us, %.loopexit1089.i.us ], [ %.6987.i, %.loopexit1089.i ] ; 2 uses
  %.0967.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit572.i ], [ %.6973.i.us, %.loopexit1089.i.us ], [ %.6973.i, %.loopexit1089.i ] ; 2 uses
  %.1947.lcssa.i = phi <4 x float> [ %.0946.i, %_ZN4ncnn3MatD2Ev.exit572.i ], [ %.7953.i.us, %.loopexit1089.i.us ], [ %.7953.i, %.loopexit1089.i ] ; 2 uses
  %.0541.lcssa.i = phi ptr [ %i.gq, %_ZN4ncnn3MatD2Ev.exit572.i ], [ %.6547.i.us, %.loopexit1089.i.us ], [ %.6547.i, %.loopexit1089.i ] ; 2 uses
  %.0537.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit572.i ], [ %i.gc, %.loopexit1089.i.us ], [ %i.gc, %.loopexit1089.i ] ; 3 uses
  %i.ko = or disjoint i32 %.0537.lcssa.i, 3
  %i.kp = icmp slt i32 %i.ko, %i.ev
  br i1 %i.kp, label %.lr.ph1183.i, label %.preheader1094.i

.lr.ph1183.i:                                     ; preds = %.preheader1095.i
  %i.kq = load ptr, ptr %4, align 8, !tbaa !18
  %i.kr = load i32, ptr %i.ah, align 4, !tbaa !249
end_hunk_3
begin_hunk_4_@_ZNK4ncnn21Convolution1D_x86_avx7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %.09931137.i = phi <4 x float> [ %.6999.i, %.loopexit1089.i ], [ zeroinitializer, %.lr.ph1143.i ] ; 5 uses
  %i.ll = sdiv i32 %.05371142.i, %i.et
  %i.lm = sext i32 %i.ll to i64
  %.reass.i = mul i64 %factor.op.mul.i, %i.lm
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %.reass.i ; 3 uses
  br i1 %i.fs, label %bb.m, label %.loopexit1090.i

bb.m:                                             ; preds = %.loopexit1092.i
  br i1 %i.gy, label %.lr.ph1117.preheader.i, label %.loopexit1089.i

.lr.ph1117.preheader.i:                           ; preds = %bb.m
  %i.ln = getelementptr inbounds [4 x i8], ptr %gep.i, i64 %i.hd
  br label %.lr.ph1117.i

.lr.ph1117.i:                                     ; preds = %.lr.ph1117.i, %.lr.ph1117.preheader.i
  %.05291116.i = phi i32 [ %i.oa, %.lr.ph1117.i ], [ 0, %.lr.ph1117.preheader.i ]
  %.05301115.i = phi ptr [ %i.ny, %.lr.ph1117.i ], [ %i.ln, %.lr.ph1117.preheader.i ] ; 5 uses
  %.25341114.i = phi ptr [ %i.nx, %.lr.ph1117.i ], [ %gep.i, %.lr.ph1117.preheader.i ] ; 5 uses
  %.35441113.i = phi ptr [ %i.nz, %.lr.ph1117.i ], [ %.05411141.i, %.lr.ph1117.preheader.i ] ; 9 uses
  %.49501112.i = phi <4 x float> [ %i.ne, %.lr.ph1117.i ], [ %.19471140.i, %.lr.ph1117.preheader.i ]
  %.39701111.i = phi <4 x float> [ %i.nk, %.lr.ph1117.i ], [ %.09671139.i, %.lr.ph1117.preheader.i ]
  %.39841110.i = phi <4 x float> [ %i.nq, %.lr.ph1117.i ], [ %.09811138.i, %.lr.ph1117.preheader.i ]
  %.39961109.i = phi <4 x float> [ %i.nw, %.lr.ph1117.i ], [ %.09931137.i, %.lr.ph1117.preheader.i ]
  %i.lo = load <4 x float>, ptr %.35441113.i, align 16, !tbaa !273
  %i.lp = getelementptr inbounds nuw i8, ptr %.35441113.i, i64 16
  %i.lq = load <4 x float>, ptr %i.lp, align 16, !tbaa !273
  %i.lr = getelementptr inbounds nuw i8, ptr %.35441113.i, i64 32
  %i.ls = load <4 x float>, ptr %i.lr, align 16, !tbaa !273
  %i.lt = getelementptr inbounds nuw i8, ptr %.35441113.i, i64 48
  %i.lu = load <4 x float>, ptr %i.lt, align 16, !tbaa !273
  %i.lv = getelementptr inbounds nuw i8, ptr %.35441113.i, i64 64
  %i.lw = load <4 x float>, ptr %i.lv, align 16, !tbaa !273
  %i.lx = getelementptr inbounds nuw i8, ptr %.35441113.i, i64 80
  %i.ly = load <4 x float>, ptr %i.lx, align 16, !tbaa !273
  %i.lz = getelementptr inbounds nuw i8, ptr %.35441113.i, i64 96
  %i.ma = load <4 x float>, ptr %i.lz, align 16, !tbaa !273
  %i.mb = getelementptr inbounds nuw i8, ptr %.35441113.i, i64 112
  %i.mc = load <4 x float>, ptr %i.mb, align 16, !tbaa !273
  %i.md = load float, ptr %.25341114.i, align 4, !tbaa !53
  %i.me = insertelement <4 x float> poison, float %i.md, i64 0
  %i.mf = shufflevector <4 x float> %i.me, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mg = fmul fast <4 x float> %i.mf, %i.lo
  %i.mh = fadd fast <4 x float> %.49501112.i, %i.mg
  %i.mi = getelementptr inbounds nuw i8, ptr %.25341114.i, i64 4
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !53
  %i.mk = insertelement <4 x float> poison, float %i.mj, i64 0
  %i.ml = shufflevector <4 x float> %i.mk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mm = fmul fast <4 x float> %i.ml, %i.lq
  %i.mn = fadd fast <4 x float> %.39701111.i, %i.mm
  %i.mo = getelementptr inbounds nuw i8, ptr %.25341114.i, i64 8
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !53
  %i.mq = insertelement <4 x float> poison, float %i.mp, i64 0
  %i.mr = shufflevector <4 x float> %i.mq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ms = fmul fast <4 x float> %i.mr, %i.ls
  %i.mt = fadd fast <4 x float> %.39841110.i, %i.ms
  %i.mu = getelementptr inbounds nuw i8, ptr %.25341114.i, i64 12
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !53
  %i.mw = insertelement <4 x float> poison, float %i.mv, i64 0
  %i.mx = shufflevector <4 x float> %i.mw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.my = fmul fast <4 x float> %i.mx, %i.lu
  %i.mz = fadd fast <4 x float> %.39961109.i, %i.my
  %i.na = load float, ptr %.05301115.i, align 4, !tbaa !53
  %i.nb = insertelement <4 x float> poison, float %i.na, i64 0
  %i.nc = shufflevector <4 x float> %i.nb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nd = fmul fast <4 x float> %i.nc, %i.lw
  %i.ne = fadd fast <4 x float> %i.nd, %i.mh      ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.05301115.i, i64 4
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !53
  %i.nh = insertelement <4 x float> poison, float %i.ng, i64 0
  %i.ni = shufflevector <4 x float> %i.nh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nj = fmul fast <4 x float> %i.ni, %i.ly
  %i.nk = fadd fast <4 x float> %i.nj, %i.mn      ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %.05301115.i, i64 8
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !53
  %i.nn = insertelement <4 x float> poison, float %i.nm, i64 0
  %i.no = shufflevector <4 x float> %i.nn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.np = fmul fast <4 x float> %i.no, %i.ma
  %i.nq = fadd fast <4 x float> %i.np, %i.mt      ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.05301115.i, i64 12
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !53
  %i.nt = insertelement <4 x float> poison, float %i.ns, i64 0
  %i.nu = shufflevector <4 x float> %i.nt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nv = fmul fast <4 x float> %i.nu, %i.mc
  %i.nw = fadd fast <4 x float> %i.nv, %i.mz      ; 2 uses
  %i.nx = getelementptr inbounds [4 x i8], ptr %.25341114.i, i64 %i.hf
  %i.ny = getelementptr inbounds [4 x i8], ptr %.05301115.i, i64 %i.hf
  %i.nz = getelementptr inbounds nuw i8, ptr %.35441113.i, i64 128
  %i.oa = add nuw nsw i32 %.05291116.i, 1         ; 2 uses
  %exitcond1639.not.i = icmp eq i32 %i.oa, %i.gx
  br i1 %exitcond1639.not.i, label %.loopexit1090.loopexit.i, label %.lr.ph1117.i, !llvm.loop !279

.loopexit1090.loopexit.i:                         ; preds = %.lr.ph1117.i
  %scevgep1637.i = getelementptr i8, ptr %.05411141.i, i64 128
  %scevgep1638.i = getelementptr i8, ptr %scevgep1637.i, i64 %i.hv
  br label %.loopexit1089.i

.loopexit1090.i:                                  ; preds = %.loopexit1092.i
  br i1 %i.ft, label %.preheader1088.i, label %.loopexit1089.i

.preheader1088.i:                                 ; preds = %.loopexit1090.i
  br i1 %i.gy, label %.lr.ph1131.i, label %.loopexit1089.i

.lr.ph1131.i:                                     ; preds = %.preheader1088.i, %.lr.ph1131.i
  %.05281130.i = phi i32 [ %i.qn, %.lr.ph1131.i ], [ 0, %.preheader1088.i ]
  %.45361129.i = phi ptr [ %i.ql, %.lr.ph1131.i ], [ %gep.i, %.preheader1088.i ] ; 9 uses
  %.55461128.i = phi ptr [ %i.qm, %.lr.ph1131.i ], [ %.05411141.i, %.preheader1088.i ] ; 9 uses
  %.69521127.i = phi <4 x float> [ %i.ps, %.lr.ph1131.i ], [ %.19471140.i, %.preheader1088.i ]
  %.59721126.i = phi <4 x float> [ %i.py, %.lr.ph1131.i ], [ %.09671139.i, %.preheader1088.i ]
  %.59861125.i = phi <4 x float> [ %i.qe, %.lr.ph1131.i ], [ %.09811138.i, %.preheader1088.i ]
  %.59981124.i = phi <4 x float> [ %i.qk, %.lr.ph1131.i ], [ %.09931137.i, %.preheader1088.i ]
  %i.ob = load <4 x float>, ptr %.55461128.i, align 16, !tbaa !273
  %i.oc = getelementptr inbounds nuw i8, ptr %.55461128.i, i64 16
  %i.od = load <4 x float>, ptr %i.oc, align 16, !tbaa !273
  %i.oe = getelementptr inbounds nuw i8, ptr %.55461128.i, i64 32
  %i.of = load <4 x float>, ptr %i.oe, align 16, !tbaa !273
  %i.og = getelementptr inbounds nuw i8, ptr %.55461128.i, i64 48
  %i.oh = load <4 x float>, ptr %i.og, align 16, !tbaa !273
  %i.oi = getelementptr inbounds nuw i8, ptr %.55461128.i, i64 64
  %i.oj = load <4 x float>, ptr %i.oi, align 16, !tbaa !273
  %i.ok = getelementptr inbounds nuw i8, ptr %.55461128.i, i64 80
  %i.ol = load <4 x float>, ptr %i.ok, align 16, !tbaa !273
  %i.om = getelementptr inbounds nuw i8, ptr %.55461128.i, i64 96
  %i.on = load <4 x float>, ptr %i.om, align 16, !tbaa !273
  %i.oo = getelementptr inbounds nuw i8, ptr %.55461128.i, i64 112
  %i.op = load <4 x float>, ptr %i.oo, align 16, !tbaa !273
  %i.oq = load float, ptr %.45361129.i, align 4, !tbaa !53
  %i.or = insertelement <4 x float> poison, float %i.oq, i64 0
  %i.os = shufflevector <4 x float> %i.or, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ot = fmul fast <4 x float> %i.os, %i.ob
  %i.ou = fadd fast <4 x float> %.69521127.i, %i.ot
  %i.ov = getelementptr inbounds [4 x i8], ptr %.45361129.i, i64 %i.hd
  %i.ow = load float, ptr %i.ov, align 4, !tbaa !53
  %i.ox = insertelement <4 x float> poison, float %i.ow, i64 0
  %i.oy = shufflevector <4 x float> %i.ox, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oz = fmul fast <4 x float> %i.oy, %i.od
  %i.pa = fadd fast <4 x float> %.59721126.i, %i.oz
  %i.pb = getelementptr inbounds [4 x i8], ptr %.45361129.i, i64 %i.hh
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !53
  %i.pd = insertelement <4 x float> poison, float %i.pc, i64 0
  %i.pe = shufflevector <4 x float> %i.pd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pf = fmul fast <4 x float> %i.pe, %i.of
  %i.pg = fadd fast <4 x float> %.59861125.i, %i.pf
  %i.ph = getelementptr inbounds [4 x i8], ptr %.45361129.i, i64 %i.hj
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !53
  %i.pj = insertelement <4 x float> poison, float %i.pi, i64 0
  %i.pk = shufflevector <4 x float> %i.pj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pl = fmul fast <4 x float> %i.pk, %i.oh
  %i.pm = fadd fast <4 x float> %.59981124.i, %i.pl
  %i.pn = getelementptr inbounds [4 x i8], ptr %.45361129.i, i64 %i.hl
  %i.po = load float, ptr %i.pn, align 4, !tbaa !53
  %i.pp = insertelement <4 x float> poison, float %i.po, i64 0
  %i.pq = shufflevector <4 x float> %i.pp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pr = fmul fast <4 x float> %i.pq, %i.oj
  %i.ps = fadd fast <4 x float> %i.pr, %i.ou      ; 2 uses
  %i.pt = getelementptr inbounds [4 x i8], ptr %.45361129.i, i64 %i.hn
  %i.pu = load float, ptr %i.pt, align 4, !tbaa !53
  %i.pv = insertelement <4 x float> poison, float %i.pu, i64 0
  %i.pw = shufflevector <4 x float> %i.pv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.px = fmul fast <4 x float> %i.pw, %i.ol
  %i.py = fadd fast <4 x float> %i.px, %i.pa      ; 2 uses
  %i.pz = getelementptr inbounds [4 x i8], ptr %.45361129.i, i64 %i.hp
  %i.qa = load float, ptr %i.pz, align 4, !tbaa !53
  %i.qb = insertelement <4 x float> poison, float %i.qa, i64 0
  %i.qc = shufflevector <4 x float> %i.qb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qd = fmul fast <4 x float> %i.qc, %i.on
  %i.qe = fadd fast <4 x float> %i.qd, %i.pg      ; 2 uses
  %i.qf = getelementptr inbounds [4 x i8], ptr %.45361129.i, i64 %i.hr
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !53
  %i.qh = insertelement <4 x float> poison, float %i.qg, i64 0
  %i.qi = shufflevector <4 x float> %i.qh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qj = fmul fast <4 x float> %i.qi, %i.op
  %i.qk = fadd fast <4 x float> %i.qj, %i.pm      ; 2 uses
  %i.ql = getelementptr inbounds [4 x i8], ptr %.45361129.i, i64 %i.hs
  %i.qm = getelementptr inbounds nuw i8, ptr %.55461128.i, i64 128
  %i.qn = add nuw nsw i32 %.05281130.i, 1         ; 2 uses
  %exitcond1642.not.i = icmp eq i32 %i.qn, %i.gx
  br i1 %exitcond1642.not.i, label %.loopexit1089.loopexit.i, label %.lr.ph1131.i, !llvm.loop !280

.loopexit1089.loopexit.i:                         ; preds = %.lr.ph1131.i
  %scevgep1640.i = getelementptr i8, ptr %.05411141.i, i64 128
  %scevgep1641.i = getelementptr i8, ptr %scevgep1640.i, i64 %i.hv
  br label %.loopexit1089.i

.loopexit1089.i:                                  ; preds = %.loopexit1089.loopexit.i, %.preheader1088.i, %.loopexit1090.i, %.loopexit1090.loopexit.i, %bb.m
  %.6999.i = phi nsz <4 x float> [ %.09931137.i, %.loopexit1090.i ], [ %.09931137.i, %.preheader1088.i ], [ %i.qk, %.loopexit1089.loopexit.i ], [ %.09931137.i, %bb.m ], [ %i.nw, %.loopexit1090.loopexit.i ] ; 2 uses
  %.6987.i = phi nsz <4 x float> [ %.09811138.i, %.loopexit1090.i ], [ %.09811138.i, %.preheader1088.i ], [ %i.qe, %.loopexit1089.loopexit.i ], [ %.09811138.i, %bb.m ], [ %i.nq, %.loopexit1090.loopexit.i ] ; 2 uses
  %.6973.i = phi nsz <4 x float> [ %.09671139.i, %.loopexit1090.i ], [ %.09671139.i, %.preheader1088.i ], [ %i.py, %.loopexit1089.loopexit.i ], [ %.09671139.i, %bb.m ], [ %i.nk, %.loopexit1090.loopexit.i ] ; 2 uses
  %.7953.i = phi nsz <4 x float> [ %.19471140.i, %.loopexit1090.i ], [ %.19471140.i, %.preheader1088.i ], [ %i.ps, %.loopexit1089.loopexit.i ], [ %.19471140.i, %bb.m ], [ %i.ne, %.loopexit1090.loopexit.i ] ; 2 uses
  %.6547.i = phi ptr [ %.05411141.i, %.loopexit1090.i ], [ %.05411141.i, %.preheader1088.i ], [ %scevgep1641.i, %.loopexit1089.loopexit.i ], [ %.05411141.i, %bb.m ], [ %scevgep1638.i, %.loopexit1090.loopexit.i ] ; 2 uses
  %i.qo = add nuw nsw i32 %.05371142.i, 8         ; 2 uses
  %i.qp = or disjoint i32 %i.qo, 7
  %i.qq = icmp slt i32 %i.qp, %i.ev
  br i1 %i.qq, label %.loopexit1092.i, label %.preheader1095.i, !llvm.loop !278

.preheader1094.i:                                 ; preds = %.loopexit1085.i, %.preheader1095.i
  %.71000.lcssa.i = phi <4 x float> [ %.0993.lcssa.i, %.preheader1095.i ], [ %.111004.i, %.loopexit1085.i ]
  %.7988.lcssa.i = phi <4 x float> [ %.0981.lcssa.i, %.preheader1095.i ], [ %.11992.i, %.loopexit1085.i ]
  %.7974.lcssa.i = phi <4 x float> [ %.0967.lcssa.i, %.preheader1095.i ], [ %.11978.i, %.loopexit1085.i ] ; 3 uses
  %.8954.lcssa.i = phi <4 x float> [ %.1947.lcssa.i, %.preheader1095.i ], [ %.12958.i, %.loopexit1085.i ] ; 3 uses
  %.7548.lcssa.i = phi ptr [ %.0541.lcssa.i, %.preheader1095.i ], [ %.11552.i, %.loopexit1085.i ] ; 3 uses
  %.1538.lcssa.i = phi i32 [ %.0537.lcssa.i, %.preheader1095.i ], [ %i.vt, %.loopexit1085.i ] ; 6 uses
  %i.qr = or disjoint i32 %.1538.lcssa.i, 1
  %i.qs = icmp slt i32 %i.qr, %i.ev
  br i1 %i.qs, label %.lr.ph1207.i, label %.preheader1093.i

.lr.ph1207.i:                                     ; preds = %.preheader1094.i
  %i.qt = load ptr, ptr %4, align 8, !tbaa !18
  %i.qu = load i32, ptr %i.ah, align 4, !tbaa !249
  %i.qv = sext i32 %i.qu to i64
  %i.qw = load i64, ptr %i.ae, align 8, !tbaa !49
  %factor.op.mul1212.i = mul i64 %i.qw, %i.qv
  %i.qx = mul nsw i64 %indvars.iv1659.i, %i.gh
  %invariant.gep1214.i = getelementptr [4 x i8], ptr %i.qt, i64 %i.qx
  %i.qy = load i32, ptr %i.e, align 4
  %i.qz = sext i32 %i.qy to i64                   ; 3 uses
  %i.ra = load i32, ptr %i.b, align 4
  %i.rb = sext i32 %i.ra to i64                   ; 2 uses
  br i1 %i.fv, label %.lr.ph1199.us.preheader.i, label %.lr.ph1207.split.preheader.i

.lr.ph1207.split.preheader.i:                     ; preds = %.lr.ph1207.i
  %i.rc = add i32 %.1538.lcssa.i, 3
  %smax.i = call i32 @llvm.smax.i32(i32 %i.ev, i32 %i.rc)
  %reass.sub = sub i32 %smax.i, %.1538.lcssa.i
  %i.rd = and i32 %reass.sub, -2
  %i.re = add i32 %.1538.lcssa.i, %i.rd
  br label %.preheader1093.i

.lr.ph1199.us.preheader.i:                        ; preds = %.lr.ph1207.i
  %i.rf = zext i32 %.1538.lcssa.i to i64
  br label %.lr.ph1199.us.i

.lr.ph1199.us.i:                                  ; preds = %._crit_edge.us.i, %.lr.ph1199.us.preheader.i
  %indvars.iv.i = phi i64 [ %i.rf, %.lr.ph1199.us.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.us.i ] ; 2 uses
  %.125531205.us.i = phi ptr [ %.7548.lcssa.i, %.lr.ph1199.us.preheader.i ], [ %scevgep1650.i, %._crit_edge.us.i ] ; 3 uses
  %.139591204.us.i = phi <4 x float> [ %.8954.lcssa.i, %.lr.ph1199.us.preheader.i ], [ %.lcssa383.a, %._crit_edge.us.i ] ; 2 uses
  %.129791203.us.i = phi <4 x float> [ %.7974.lcssa.i, %.lr.ph1199.us.preheader.i ], [ %.lcssa382, %._crit_edge.us.i ] ; 2 uses
  %.reass1213.us.i = mul i64 %factor.op.mul1212.i, %indvars.iv.i
  %gep1215.us.i = getelementptr i8, ptr %invariant.gep1214.i, i64 %.reass1213.us.i ; 2 uses
  br i1 %i.gi, label %.epil.preheader, label %.lr.ph1199.us.i.new

.lr.ph1199.us.i.new:                              ; preds = %.lr.ph1199.us.i, %.lr.ph1199.us.i.new
  %.05221197.us.i = phi ptr [ %i.sk, %.lr.ph1199.us.i.new ], [ %gep1215.us.i, %.lr.ph1199.us.i ] ; 3 uses
  %.135541196.us.i = phi ptr [ %i.sl, %.lr.ph1199.us.i.new ], [ %.125531205.us.i, %.lr.ph1199.us.i ] ; 5 uses
  %.149601195.us.i = phi <4 x float> [ %i.sd, %.lr.ph1199.us.i.new ], [ %.139591204.us.i, %.lr.ph1199.us.i ]
  %.139801194.us.i = phi <4 x float> [ %i.sj, %.lr.ph1199.us.i.new ], [ %.129791203.us.i, %.lr.ph1199.us.i ]
  %niter = phi i32 [ %niter.next.1, %.lr.ph1199.us.i.new ], [ 0, %.lr.ph1199.us.i ]
  %i.rg = load <4 x float>, ptr %.135541196.us.i, align 16, !tbaa !273
  %i.rh = getelementptr inbounds nuw i8, ptr %.135541196.us.i, i64 16
  %i.ri = load <4 x float>, ptr %i.rh, align 16, !tbaa !273
  %i.rj = load float, ptr %.05221197.us.i, align 4, !tbaa !53
  %i.rk = insertelement <4 x float> poison, float %i.rj, i64 0
  %i.rl = shufflevector <4 x float> %i.rk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rm = fmul fast <4 x float> %i.rl, %i.rg
  %i.rn = fadd fast <4 x float> %i.rm, %.149601195.us.i
  %i.ro = getelementptr inbounds [4 x i8], ptr %.05221197.us.i, i64 %i.qz
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !53
  %i.rq = insertelement <4 x float> poison, float %i.rp, i64 0
  %i.rr = shufflevector <4 x float> %i.rq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rs = fmul fast <4 x float> %i.rr, %i.ri
  %i.rt = fadd fast <4 x float> %i.rs, %.139801194.us.i
  %i.ru = getelementptr inbounds [4 x i8], ptr %.05221197.us.i, i64 %i.rb ; 3 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %.135541196.us.i, i64 32
  %i.rw = load <4 x float>, ptr %i.rv, align 16, !tbaa !273
  %i.rx = getelementptr inbounds nuw i8, ptr %.135541196.us.i, i64 48
  %i.ry = load <4 x float>, ptr %i.rx, align 16, !tbaa !273
  %i.rz = load float, ptr %i.ru, align 4, !tbaa !53
  %i.sa = insertelement <4 x float> poison, float %i.rz, i64 0
  %i.sb = shufflevector <4 x float> %i.sa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sc = fmul fast <4 x float> %i.sb, %i.rw
  %i.sd = fadd fast <4 x float> %i.sc, %i.rn      ; 3 uses
  %i.se = getelementptr inbounds [4 x i8], ptr %i.ru, i64 %i.qz
  %i.sf = load float, ptr %i.se, align 4, !tbaa !53
  %i.sg = insertelement <4 x float> poison, float %i.sf, i64 0
  %i.sh = shufflevector <4 x float> %i.sg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.si = fmul fast <4 x float> %i.sh, %i.ry
  %i.sj = fadd fast <4 x float> %i.si, %i.rt      ; 3 uses
  %i.sk = getelementptr inbounds [4 x i8], ptr %i.ru, i64 %i.rb ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %.135541196.us.i, i64 64 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph1199.us.i.new, !llvm.loop !281

._crit_edge.us.i.unr-lcssa:                       ; preds = %.lr.ph1199.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph1199.us.i
  %.05221197.us.i.epil.init = phi ptr [ %gep1215.us.i, %.lr.ph1199.us.i ], [ %i.sk, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  %.135541196.us.i.epil.init = phi ptr [ %.125531205.us.i, %.lr.ph1199.us.i ], [ %i.sl, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  %.149601195.us.i.epil.init = phi <4 x float> [ %.139591204.us.i, %.lr.ph1199.us.i ], [ %i.sd, %._crit_edge.us.i.unr-lcssa ]
  %.139801194.us.i.epil.init = phi <4 x float> [ %.129791203.us.i, %.lr.ph1199.us.i ], [ %i.sj, %._crit_edge.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod388)
  %i.sm = load <4 x float>, ptr %.135541196.us.i.epil.init, align 16, !tbaa !273
  %i.sn = getelementptr inbounds nuw i8, ptr %.135541196.us.i.epil.init, i64 16
  %i.so = load <4 x float>, ptr %i.sn, align 16, !tbaa !273
  %i.sp = load float, ptr %.05221197.us.i.epil.init, align 4, !tbaa !53
  %i.sq = insertelement <4 x float> poison, float %i.sp, i64 0
  %i.sr = shufflevector <4 x float> %i.sq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ss = fmul fast <4 x float> %i.sr, %i.sm
  %i.st = fadd fast <4 x float> %i.ss, %.149601195.us.i.epil.init
  %i.su = getelementptr inbounds [4 x i8], ptr %.05221197.us.i.epil.init, i64 %i.qz
  %i.sv = load float, ptr %i.su, align 4, !tbaa !53
  %i.sw = insertelement <4 x float> poison, float %i.sv, i64 0
  %i.sx = shufflevector <4 x float> %i.sw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sy = fmul fast <4 x float> %i.sx, %i.so
  %i.sz = fadd fast <4 x float> %i.sy, %.139801194.us.i.epil.init
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader
  %.lcssa383.a = phi <4 x float> [ %i.sd, %._crit_edge.us.i.unr-lcssa ], [ %i.st, %.epil.preheader ] ; 2 uses
  %.lcssa382 = phi <4 x float> [ %i.sj, %._crit_edge.us.i.unr-lcssa ], [ %i.sz, %.epil.preheader ] ; 2 uses
  %scevgep1649.i = getelementptr i8, ptr %.125531205.us.i, i64 32
  %scevgep1650.i = getelementptr i8, ptr %scevgep1649.i, i64 %i.gf ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.ta = trunc i64 %indvars.iv.next.i to i32     ; 2 uses
  %i.tb = or i32 %i.ta, 1
  %i.tc = icmp slt i32 %i.tb, %i.ev
  br i1 %i.tc, label %.lr.ph1199.us.i, label %.preheader1093.i, !llvm.loop !282

bb.n:                                             ; preds = %.loopexit1085.i, %.lr.ph1183.i
  %.15381182.i = phi i32 [ %.0537.lcssa.i, %.lr.ph1183.i ], [ %i.vt, %.loopexit1085.i ] ; 2 uses
  %.75481181.i = phi ptr [ %.0541.lcssa.i, %.lr.ph1183.i ], [ %.11552.i, %.loopexit1085.i ] ; 7 uses
  %.89541180.i = phi <4 x float> [ %.1947.lcssa.i, %.lr.ph1183.i ], [ %.12958.i, %.loopexit1085.i ] ; 5 uses
  %.79741179.i = phi <4 x float> [ %.0967.lcssa.i, %.lr.ph1183.i ], [ %.11978.i, %.loopexit1085.i ] ; 5 uses
  %.79881178.i = phi <4 x float> [ %.0981.lcssa.i, %.lr.ph1183.i ], [ %.11992.i, %.loopexit1085.i ] ; 5 uses
  %.710001177.i = phi <4 x float> [ %.0993.lcssa.i, %.lr.ph1183.i ], [ %.111004.i, %.loopexit1085.i ] ; 5 uses
  %i.td = sdiv i32 %.15381182.i, %i.et
  %i.te = sext i32 %i.td to i64
  %.reass1191.i = mul i64 %factor.op.mul1190.i, %i.te
  %gep1193.i = getelementptr i8, ptr %invariant.gep1192.i, i64 %.reass1191.i ; 2 uses
  br i1 %i.fs, label %.preheader1086.i, label %.loopexit1087.i

.preheader1086.i:                                 ; preds = %bb.n
  br i1 %i.kx, label %.lr.ph1157.i, label %.loopexit1085.i

.lr.ph1157.i:                                     ; preds = %.preheader1086.i, %.lr.ph1157.i
  %.05241156.i = phi i32 [ %i.ul, %.lr.ph1157.i ], [ 0, %.preheader1086.i ]
  %.05251155.i = phi ptr [ %i.uj, %.lr.ph1157.i ], [ %gep1193.i, %.preheader1086.i ] ; 5 uses
  %.85491154.i = phi ptr [ %i.uk, %.lr.ph1157.i ], [ %.75481181.i, %.preheader1086.i ] ; 5 uses
  %.99551153.i = phi <4 x float> [ %i.tq, %.lr.ph1157.i ], [ %.89541180.i, %.preheader1086.i ]
  %.89751152.i = phi <4 x float> [ %i.tw, %.lr.ph1157.i ], [ %.79741179.i, %.preheader1086.i ]
  %.89891151.i = phi <4 x float> [ %i.uc, %.lr.ph1157.i ], [ %.79881178.i, %.preheader1086.i ]
  %.810011150.i = phi <4 x float> [ %i.ui, %.lr.ph1157.i ], [ %.710001177.i, %.preheader1086.i ]
  %i.tf = load <4 x float>, ptr %.85491154.i, align 16, !tbaa !273
  %i.tg = getelementptr inbounds nuw i8, ptr %.85491154.i, i64 16
  %i.th = load <4 x float>, ptr %i.tg, align 16, !tbaa !273
  %i.ti = getelementptr inbounds nuw i8, ptr %.85491154.i, i64 32
  %i.tj = load <4 x float>, ptr %i.ti, align 16, !tbaa !273
  %i.tk = getelementptr inbounds nuw i8, ptr %.85491154.i, i64 48
  %i.tl = load <4 x float>, ptr %i.tk, align 16, !tbaa !273
  %i.tm = load float, ptr %.05251155.i, align 4, !tbaa !53
  %i.tn = insertelement <4 x float> poison, float %i.tm, i64 0
  %i.to = shufflevector <4 x float> %i.tn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tp = fmul fast <4 x float> %i.to, %i.tf
  %i.tq = fadd fast <4 x float> %i.tp, %.99551153.i ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.05251155.i, i64 4
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !53
  %i.tt = insertelement <4 x float> poison, float %i.ts, i64 0
  %i.tu = shufflevector <4 x float> %i.tt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tv = fmul fast <4 x float> %i.tu, %i.th
  %i.tw = fadd fast <4 x float> %i.tv, %.89751152.i ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %.05251155.i, i64 8
  %i.ty = load float, ptr %i.tx, align 4, !tbaa !53
  %i.tz = insertelement <4 x float> poison, float %i.ty, i64 0
  %i.ua = shufflevector <4 x float> %i.tz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ub = fmul fast <4 x float> %i.ua, %i.tj
  %i.uc = fadd fast <4 x float> %i.ub, %.89891151.i ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %.05251155.i, i64 12
  %i.ue = load float, ptr %i.ud, align 4, !tbaa !53
  %i.uf = insertelement <4 x float> poison, float %i.ue, i64 0
  %i.ug = shufflevector <4 x float> %i.uf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uh = fmul fast <4 x float> %i.ug, %i.tl
  %i.ui = fadd fast <4 x float> %i.uh, %.810011150.i ; 2 uses
  %i.uj = getelementptr inbounds [4 x i8], ptr %.05251155.i, i64 %i.la
  %i.uk = getelementptr inbounds nuw i8, ptr %.85491154.i, i64 64
  %i.ul = add nuw nsw i32 %.05241156.i, 1         ; 2 uses
  %exitcond1645.not.i = icmp eq i32 %i.ul, %i.kw
  br i1 %exitcond1645.not.i, label %.loopexit1087.loopexit.i, label %.lr.ph1157.i, !llvm.loop !283

.loopexit1087.loopexit.i:                         ; preds = %.lr.ph1157.i
  %scevgep1643.i = getelementptr i8, ptr %.75481181.i, i64 64
  %scevgep1644.i = getelementptr i8, ptr %scevgep1643.i, i64 %i.lk
  br label %.loopexit1085.i

.loopexit1087.i:                                  ; preds = %bb.n
  br i1 %i.ft, label %.preheader1084.i, label %.loopexit1085.i

.preheader1084.i:                                 ; preds = %.loopexit1087.i
  br i1 %i.kx, label %.lr.ph1171.i, label %.loopexit1085.i

.lr.ph1171.i:                                     ; preds = %.preheader1084.i, %.lr.ph1171.i
  %.05231170.i = phi i32 [ %i.vs, %.lr.ph1171.i ], [ 0, %.preheader1084.i ]
  %.25271169.i = phi ptr [ %i.vq, %.lr.ph1171.i ], [ %gep1193.i, %.preheader1084.i ] ; 5 uses
  %.105511168.i = phi ptr [ %i.vr, %.lr.ph1171.i ], [ %.75481181.i, %.preheader1084.i ] ; 5 uses
  %.119571167.i = phi <4 x float> [ %i.ux, %.lr.ph1171.i ], [ %.89541180.i, %.preheader1084.i ]
  %.109771166.i = phi <4 x float> [ %i.vd, %.lr.ph1171.i ], [ %.79741179.i, %.preheader1084.i ]
  %.109911165.i = phi <4 x float> [ %i.vj, %.lr.ph1171.i ], [ %.79881178.i, %.preheader1084.i ]
  %.1010031164.i = phi <4 x float> [ %i.vp, %.lr.ph1171.i ], [ %.710001177.i, %.preheader1084.i ]
  %i.um = load <4 x float>, ptr %.105511168.i, align 16, !tbaa !273
  %i.un = getelementptr inbounds nuw i8, ptr %.105511168.i, i64 16
  %i.uo = load <4 x float>, ptr %i.un, align 16, !tbaa !273
  %i.up = getelementptr inbounds nuw i8, ptr %.105511168.i, i64 32
  %i.uq = load <4 x float>, ptr %i.up, align 16, !tbaa !273
  %i.ur = getelementptr inbounds nuw i8, ptr %.105511168.i, i64 48
  %i.us = load <4 x float>, ptr %i.ur, align 16, !tbaa !273
  %i.ut = load float, ptr %.25271169.i, align 4, !tbaa !53
  %i.uu = insertelement <4 x float> poison, float %i.ut, i64 0
  %i.uv = shufflevector <4 x float> %i.uu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uw = fmul fast <4 x float> %i.uv, %i.um
  %i.ux = fadd fast <4 x float> %i.uw, %.119571167.i ; 2 uses
  %i.uy = getelementptr inbounds [4 x i8], ptr %.25271169.i, i64 %i.lc
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !53
  %i.va = insertelement <4 x float> poison, float %i.uz, i64 0
  %i.vb = shufflevector <4 x float> %i.va, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vc = fmul fast <4 x float> %i.vb, %i.uo
  %i.vd = fadd fast <4 x float> %i.vc, %.109771166.i ; 2 uses
  %i.ve = getelementptr inbounds [4 x i8], ptr %.25271169.i, i64 %i.le
  %i.vf = load float, ptr %i.ve, align 4, !tbaa !53
  %i.vg = insertelement <4 x float> poison, float %i.vf, i64 0
  %i.vh = shufflevector <4 x float> %i.vg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vi = fmul fast <4 x float> %i.vh, %i.uq
  %i.vj = fadd fast <4 x float> %i.vi, %.109911165.i ; 2 uses
  %i.vk = getelementptr inbounds [4 x i8], ptr %.25271169.i, i64 %i.lg
  %i.vl = load float, ptr %i.vk, align 4, !tbaa !53
  %i.vm = insertelement <4 x float> poison, float %i.vl, i64 0
  %i.vn = shufflevector <4 x float> %i.vm, <4 x float> poison, <4 x i32> zeroinitializer
end_hunk_4
begin_hunk_5_@_ZNK4ncnn21Convolution1D_x86_avx13forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.ao = icmp eq i32 %i.an, 0
  %i.ap = select i1 %i.ao, i32 4, i32 1
  %i.aq = select i1 %i.am, i32 8, i32 %i.ap
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.e
  %.0 = phi i32 [ %i.aq, %bb.e ], [ 1, %bb.d ]    ; 3 uses
  %i.ar = shl nuw nsw i32 %.0, 1
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = add i32 %i.af, %.neg
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !257
  %i.aw = sdiv i32 %i.at, %i.av
  %i.ax = add nsw i32 %i.aw, 1
  %i.ay = sdiv i32 %i.ak, %.0
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !263
  invoke void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.ax, i32 noundef %i.ay, i64 noundef %i.as, i32 noundef %.0, ptr noundef %i.ba)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.bb = load ptr, ptr %2, align 8, !tbaa !18
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %_ZNK4ncnn3Mat5emptyEv.exit32.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !20
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !250
  %i.bh = sext i32 %i.bg to i64
  %i.bi = mul i64 %i.be, %i.bh
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %_ZNK4ncnn3Mat5emptyEv.exit32.thread, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.h:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.bn = load i32, ptr %i.l, align 4, !tbaa !44
  %i.bo = load i32, ptr %i.j, align 8, !tbaa !256
  %i.bp = load i32, ptr %i.au, align 4, !tbaa !257
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !261
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bt = call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %i.bn, ptr %i.a, align 4, !tbaa !254
  store i32 %i.bo, ptr %i.b, align 4, !tbaa !254
  store i32 %i.bp, ptr %i.c, align 4, !tbaa !254
  store i32 %i.br, ptr %i.d, align 4, !tbaa !254
  %i.bu = load i32, ptr %i.r, align 8, !tbaa !251 ; 9 uses
  %i.bv = load i32, ptr %i.u, align 8, !tbaa !264
  %i.bw = mul i32 %i.bv, %i.bu                    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.bx = load i32, ptr %i.t, align 4, !tbaa !249
  %i.by = mul nsw i32 %i.bx, %i.bu
  store i32 %i.by, ptr %i.e, align 4, !tbaa !254
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 5 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !249 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !251 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !264
  %i.cf = mul nsw i32 %i.ce, %i.cc                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  %i.cg = mul nsw i32 %i.cc, %i.ca
  store i32 %i.cg, ptr %i.f, align 4, !tbaa !254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  %i.ch = load ptr, ptr %i.bm, align 8, !tbaa !18
  store ptr %i.ch, ptr %i.g, align 8, !tbaa !265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #11
  store i32 0, ptr %i.i, align 4, !tbaa !254
  %i.ci = sdiv i32 %i.cf, 8
  store i32 %i.ci, ptr %i.h, align 4, !tbaa !254
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !267
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.bt, i32 %i.ck)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 13, ptr nonnull @_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.omp_outlined, ptr nonnull %i.h, ptr nonnull %i.i, ptr nonnull align 8 dereferenceable(72) %4, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.g, ptr nonnull align 8 dereferenceable(72) %i.bl, ptr nonnull %i.c, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull align 8 dereferenceable(72) %i.bs, ptr nonnull %i.f)
  %i.cl = load i32, ptr %i.h, align 4, !tbaa !254
  %i.cm = shl nsw i32 %i.cl, 3
  %i.cn = load i32, ptr %i.i, align 4, !tbaa !254
  %i.co = add nsw i32 %i.cn, %i.cm                ; 4 uses
  store i32 %i.co, ptr %i.i, align 4, !tbaa !254
  %i.cp = sub nsw i32 %i.cf, %i.co                ; 2 uses
  %i.cq = sdiv i32 %i.cp, 4                       ; 2 uses
  %i.cr = icmp sgt i32 %i.cp, 3
  br i1 %i.cr, label %.lr.ph1317.i, label %._crit_edge1318.i

.lr.ph1317.i:                                     ; preds = %bb.h
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.cv = load i32, ptr %i.d, align 4
  %i.cw = load i32, ptr %i.bz, align 4, !tbaa !249 ; 2 uses
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %.lr.ph1317.split.preheader.i, label %._crit_edge1318.i

.lr.ph1317.split.preheader.i:                     ; preds = %.lr.ph1317.i
  %i.cy = sext i32 %i.co to i64
  %wide.trip.count1736.i = zext nneg i32 %i.cq to i64
  br label %.lr.ph1317.split.i

._crit_edge1318.i:                                ; preds = %._crit_edge.i, %.lr.ph1317.i, %bb.h
  %i.cz = shl nsw i32 %i.cq, 2
  %i.da = add nsw i32 %i.cz, %i.co                ; 4 uses
  %i.db = sub nsw i32 %i.cf, %i.da                ; 2 uses
  %i.dc = sdiv i32 %i.db, 2                       ; 2 uses
  %i.dd = icmp sgt i32 %i.db, 1
  br i1 %i.dd, label %.lr.ph1466.i, label %._crit_edge1467.split.i

.lr.ph1466.i:                                     ; preds = %._crit_edge1318.i
  %i.de = load i32, ptr %i.r, align 8, !tbaa !251 ; 7 uses
  %i.df = load i32, ptr %i.u, align 8, !tbaa !264
  %i.dg = mul i32 %i.df, %i.de                    ; 10 uses
  %i.dh = load i32, ptr %i.bz, align 4, !tbaa !249 ; 3 uses
  %i.di = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.dj = sext i32 %i.dh to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !49
  %i.dm = mul i64 %i.dl, %i.dj                    ; 2 uses
  %i.dn = icmp sgt i32 %i.dh, 0
  %i.do = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not569.i = icmp eq ptr %i.do, null
  %i.dp = icmp sgt i32 %i.dg, 7
  %i.dq = icmp eq i32 %i.de, 8
  %i.dr = icmp eq i32 %i.de, 4                    ; 2 uses
  %i.ds = icmp ne i32 %i.de, 1                    ; 2 uses
  %i.dt = load i32, ptr %i.d, align 4
  br i1 %i.dn, label %.lr.ph1466.split.i, label %._crit_edge1467.split.i

.lr.ph1466.split.i:                               ; preds = %.lr.ph1466.i
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.dw = load ptr, ptr %i.bl, align 8, !tbaa !18, !noalias !387
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !20, !noalias !387
  %i.dy = load i64, ptr %i.du, align 8, !tbaa !49, !noalias !387
  %factor.op.mul1469.i = mul i64 %i.dy, %i.dx
  %i.dz = and i32 %i.dg, -8                       ; 2 uses
  %i.ea = sext i32 %i.da to i64
  %wide.trip.count1774.i = zext nneg i32 %i.dc to i64
  %wide.trip.count1769.i = zext nneg i32 %i.dh to i64
  br label %.lr.ph1458.i

.lr.ph1317.splitthread-pre-split.i:               ; preds = %._crit_edge.i
  %.pr.i = load i32, ptr %i.bz, align 4, !tbaa !249
  br label %.lr.ph1317.split.i

.lr.ph1317.split.i:                               ; preds = %.lr.ph1317.splitthread-pre-split.i, %.lr.ph1317.split.preheader.i
  %i.eb = phi i32 [ %.pr.i, %.lr.ph1317.splitthread-pre-split.i ], [ %i.cw, %.lr.ph1317.split.preheader.i ] ; 2 uses
  %indvars.iv1733.i = phi i64 [ %indvars.iv.next1734.i, %.lr.ph1317.splitthread-pre-split.i ], [ 0, %.lr.ph1317.split.preheader.i ] ; 2 uses
  %i.ec = load i32, ptr %i.r, align 8, !tbaa !251 ; 7 uses
  %i.ed = load i32, ptr %i.u, align 8, !tbaa !264
  %i.ee = mul i32 %i.ed, %i.ec                    ; 11 uses
  %i.ef = load i32, ptr %i.cb, align 8, !tbaa !251 ; 2 uses
  %i.eg = icmp sgt i32 %i.eb, 0
  br i1 %i.eg, label %.lr.ph1310.i, label %._crit_edge.i

.lr.ph1310.i:                                     ; preds = %.lr.ph1317.split.i
  %i.eh = load ptr, ptr %2, align 8, !tbaa !18
  %i.ei = shl nuw nsw i64 %indvars.iv1733.i, 2
  %i.ej = add nsw i64 %i.ei, %i.cy                ; 2 uses
  %i.ek = trunc nsw i64 %i.ej to i32              ; 3 uses
  %i.el = sdiv i32 %i.ek, %i.ef
  %i.em = sext i32 %i.el to i64
  %i.en = zext nneg i32 %i.eb to i64              ; 2 uses
  %i.eo = mul nsw i64 %i.em, %i.en
  %i.ep = load i64, ptr %i.cs, align 8, !tbaa !49
  %i.eq = mul i64 %i.eo, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.eq
  %i.es = sdiv i32 %i.ek, 8
  %i.et = srem i32 %i.ek, 8
  %.lhs.trunc.i = trunc nsw i32 %i.et to i8
  %i.eu = sdiv i8 %.lhs.trunc.i, 4
  %.sext.i = sext i8 %i.eu to i32
  %i.ev = add nsw i32 %i.es, %.sext.i
  %i.ew = sext i32 %i.ev to i64
  %i.ex = icmp sgt i32 %i.ee, 7
  %i.ey = load i32, ptr %i.c, align 4             ; 2 uses
  %factor.op.mul1311.i = mul i32 %i.ey, %i.ec     ; 2 uses
  %i.ez = icmp eq i32 %i.ec, 8
  %i.fa = icmp eq i32 %i.ec, 4                    ; 2 uses
  %i.fb = icmp eq i32 %i.ec, 1                    ; 2 uses
  %i.fc = load i32, ptr %i.a, align 4             ; 6 uses
  %i.fd = icmp sgt i32 %i.fc, 0                   ; 2 uses
  %i.fe = load i32, ptr %i.f, align 4             ; 3 uses
  %i.ff = sext i32 %i.fe to i64
  %i.fg = shl nsw i32 %i.fe, 1
  %i.fh = sext i32 %i.fg to i64
  %i.fi = mul nsw i32 %i.fe, 3
  %i.fj = sext i32 %i.fi to i64
  %i.fk = and i32 %i.ee, -8                       ; 2 uses
  %i.fl = add i32 %i.fc, -1                       ; 2 uses
  %i.fm = zext i32 %i.fl to i64                   ; 2 uses
  %i.fn = shl nuw nsw i64 %i.fm, 4
  %i.fo = shl nuw nsw i64 %i.fm, 3
  %i.fp = sext i32 %i.ey to i64                   ; 2 uses
  %xtraiter = and i32 %i.fc, 1
  %i.fq = icmp eq i32 %i.fl, 0
  %unroll_iter = and i32 %i.fc, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod374 = trunc i32 %i.fc to i1
  br label %bb.i

._crit_edge.i:                                    ; preds = %bb.u, %.lr.ph1317.split.i
  %indvars.iv.next1734.i = add nuw nsw i64 %indvars.iv1733.i, 1 ; 2 uses
  %exitcond1737.not.i = icmp eq i64 %indvars.iv.next1734.i, %wide.trip.count1736.i
  br i1 %exitcond1737.not.i, label %._crit_edge1318.i, label %.lr.ph1317.splitthread-pre-split.i, !llvm.loop !390

bb.i:                                             ; preds = %bb.u, %.lr.ph1310.i
  %indvars.iv1729.i = phi i64 [ 0, %.lr.ph1310.i ], [ %indvars.iv.next1730.i, %bb.u ] ; 5 uses
  %.05581308.i = phi ptr [ %i.er, %.lr.ph1310.i ], [ %.2560.i, %bb.u ] ; 8 uses
  %i.fr = load ptr, ptr %i.g, align 8, !tbaa !265 ; 2 uses
  %.not570.i = icmp eq ptr %i.fr, null
  br i1 %.not570.i, label %_ZN4ncnn3MatD2Ev.exit572.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.ej
  %i.ft = load <4 x float>, ptr %i.fs, align 1, !tbaa !273
  br label %_ZN4ncnn3MatD2Ev.exit572.i

_ZN4ncnn3MatD2Ev.exit572.i:                       ; preds = %bb.j, %bb.i
  %.01016.i = phi nsz <4 x float> [ zeroinitializer, %bb.i ], [ %i.ft, %bb.j ] ; 3 uses
  %i.fu = load ptr, ptr %i.bl, align 8, !tbaa !18, !noalias !391
  %i.fv = load i64, ptr %i.ct, align 8, !tbaa !20, !noalias !391
  %i.fw = mul i64 %i.fv, %i.ew
  %i.fx = load i64, ptr %i.cu, align 8, !tbaa !49, !noalias !391
  %i.fy = mul i64 %i.fw, %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fy ; 3 uses
  br i1 %i.ex, label %.lr.ph1213.i, label %.preheader1165.i

.lr.ph1213.i:                                     ; preds = %_ZN4ncnn3MatD2Ev.exit572.i
  %i.ga = load ptr, ptr %4, align 8, !tbaa !18
  %i.gb = load i32, ptr %i.t, align 4, !tbaa !249
  %i.gc = sext i32 %i.gb to i64
  %i.gd = load i64, ptr %i.q, align 8, !tbaa !49
  %factor.op.mul.i = mul i64 %i.gd, %i.gc         ; 2 uses
  %i.ge = trunc nuw nsw i64 %indvars.iv1729.i to i32
  %.reass1312.i = mul i32 %factor.op.mul1311.i, %i.ge
  %i.gf = sext i32 %.reass1312.i to i64
  %invariant.gep.i = getelementptr [2 x i8], ptr %i.ga, i64 %i.gf ; 2 uses
  %i.gg = load i32, ptr %i.a, align 4             ; 5 uses
  %i.gh = icmp sgt i32 %i.gg, 0                   ; 3 uses
  %i.gi = load i32, ptr %i.b, align 4             ; 3 uses
  %i.gj = shl nsw i32 %i.gi, 3
  %i.gk = sext i32 %i.gj to i64
  %i.gl = load i32, ptr %i.e, align 4             ; 7 uses
  %i.gm = sext i32 %i.gl to i64                   ; 2 uses
  %i.gn = shl nsw i32 %i.gi, 2
  %i.go = sext i32 %i.gn to i64                   ; 2 uses
  %i.gp = shl nsw i32 %i.gl, 1
  %i.gq = sext i32 %i.gp to i64
  %i.gr = mul nsw i32 %i.gl, 3
  %i.gs = sext i32 %i.gr to i64
  %i.gt = shl nsw i32 %i.gl, 2
  %i.gu = sext i32 %i.gt to i64
  %i.gv = mul nsw i32 %i.gl, 5
  %i.gw = sext i32 %i.gv to i64
  %i.gx = mul nsw i32 %i.gl, 6
  %i.gy = sext i32 %i.gx to i64
  %i.gz = mul nsw i32 %i.gl, 7
  %i.ha = sext i32 %i.gz to i64
  %i.hb = sext i32 %i.gi to i64
  %i.hc = add i32 %i.gg, -1
  %i.hd = zext i32 %i.hc to i64
  %i.he = shl nuw nsw i64 %i.hd, 6                ; 3 uses
  br i1 %i.ez, label %.preheader1161.i.us, label %.loopexit1162.i

.preheader1161.i.us:                              ; preds = %.lr.ph1213.i, %.loopexit1159.i.us
  %.05371212.i.us = phi i32 [ %i.ly, %.loopexit1159.i.us ], [ 0, %.lr.ph1213.i ] ; 2 uses
  %.05411211.i.us = phi ptr [ %.6547.i.us, %.loopexit1159.i.us ], [ %i.fz, %.lr.ph1213.i ] ; 3 uses
  %.110171210.i.us = phi <4 x float> [ %.71023.i.us, %.loopexit1159.i.us ], [ %.01016.i, %.lr.ph1213.i ] ; 2 uses
  %.010321209.i.us = phi <4 x float> [ %.61038.i.us, %.loopexit1159.i.us ], [ zeroinitializer, %.lr.ph1213.i ] ; 2 uses
  %.010461208.i.us = phi <4 x float> [ %.61052.i.us, %.loopexit1159.i.us ], [ zeroinitializer, %.lr.ph1213.i ] ; 2 uses
  %.010581207.i.us = phi <4 x float> [ %.61064.i.us, %.loopexit1159.i.us ], [ zeroinitializer, %.lr.ph1213.i ] ; 2 uses
  br i1 %i.gh, label %.lr.ph.i.us.preheader, label %.loopexit1159.i.us

.lr.ph.i.us.preheader:                            ; preds = %.preheader1161.i.us
  %i.hf = lshr exact i32 %.05371212.i.us, 3
  %i.hg = zext nneg i32 %i.hf to i64
  %.reass.i.us = mul i64 %factor.op.mul.i, %i.hg
  %gep.i.us = getelementptr i8, ptr %invariant.gep.i, i64 %.reass.i.us
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %.lr.ph.i.us
  %.05311173.i.us = phi i32 [ %i.lx, %.lr.ph.i.us ], [ 0, %.lr.ph.i.us.preheader ]
  %.05321172.i.us = phi ptr [ %i.lv, %.lr.ph.i.us ], [ %gep.i.us, %.lr.ph.i.us.preheader ] ; 9 uses
  %.15421171.i.us = phi ptr [ %i.lw, %.lr.ph.i.us ], [ %.05411211.i.us, %.lr.ph.i.us.preheader ] ; 9 uses
  %.210181170.i.us = phi <4 x float> [ %i.kt, %.lr.ph.i.us ], [ %.110171210.i.us, %.lr.ph.i.us.preheader ]
  %.110331169.i.us = phi <4 x float> [ %i.lc, %.lr.ph.i.us ], [ %.010321209.i.us, %.lr.ph.i.us.preheader ]
  %.110471168.i.us = phi <4 x float> [ %i.ll, %.lr.ph.i.us ], [ %.010461208.i.us, %.lr.ph.i.us.preheader ]
  %.110591167.i.us = phi <4 x float> [ %i.lu, %.lr.ph.i.us ], [ %.010581207.i.us, %.lr.ph.i.us.preheader ]
  %i.hh = load i64, ptr %.15421171.i.us, align 1, !tbaa !273
  %i.hi = insertelement <2 x i64> poison, i64 %i.hh, i64 0
  %i.hj = bitcast <2 x i64> %i.hi to <8 x i16>
  %i.hk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hl = bitcast <8 x i16> %i.hk to <4 x float>
  %i.hm = getelementptr inbounds nuw i8, ptr %.15421171.i.us, i64 8
  %i.hn = load i64, ptr %i.hm, align 1, !tbaa !273
  %i.ho = insertelement <2 x i64> poison, i64 %i.hn, i64 0
  %i.hp = bitcast <2 x i64> %i.ho to <8 x i16>
  %i.hq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hr = bitcast <8 x i16> %i.hq to <4 x float>
  %i.hs = getelementptr inbounds nuw i8, ptr %.15421171.i.us, i64 16
  %i.ht = load i64, ptr %i.hs, align 1, !tbaa !273
  %i.hu = insertelement <2 x i64> poison, i64 %i.ht, i64 0
  %i.hv = bitcast <2 x i64> %i.hu to <8 x i16>
  %i.hw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hx = bitcast <8 x i16> %i.hw to <4 x float>
  %i.hy = getelementptr inbounds nuw i8, ptr %.15421171.i.us, i64 24
  %i.hz = load i64, ptr %i.hy, align 1, !tbaa !273
  %i.ia = insertelement <2 x i64> poison, i64 %i.hz, i64 0
  %i.ib = bitcast <2 x i64> %i.ia to <8 x i16>
  %i.ic = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ib, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.id = bitcast <8 x i16> %i.ic to <4 x float>
  %i.ie = getelementptr inbounds nuw i8, ptr %.15421171.i.us, i64 32
  %i.if = load i64, ptr %i.ie, align 1, !tbaa !273
  %i.ig = insertelement <2 x i64> poison, i64 %i.if, i64 0
  %i.ih = bitcast <2 x i64> %i.ig to <8 x i16>
  %i.ii = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ih, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ij = bitcast <8 x i16> %i.ii to <4 x float>
  %i.ik = getelementptr inbounds nuw i8, ptr %.15421171.i.us, i64 40
  %i.il = load i64, ptr %i.ik, align 1, !tbaa !273
  %i.im = insertelement <2 x i64> poison, i64 %i.il, i64 0
  %i.in = bitcast <2 x i64> %i.im to <8 x i16>
  %i.io = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.in, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ip = bitcast <8 x i16> %i.io to <4 x float>
  %i.iq = getelementptr inbounds nuw i8, ptr %.15421171.i.us, i64 48
  %i.ir = load i64, ptr %i.iq, align 1, !tbaa !273
  %i.is = insertelement <2 x i64> poison, i64 %i.ir, i64 0
  %i.it = bitcast <2 x i64> %i.is to <8 x i16>
  %i.iu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.it, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.iv = bitcast <8 x i16> %i.iu to <4 x float>
  %i.iw = getelementptr inbounds nuw i8, ptr %.15421171.i.us, i64 56
  %i.ix = load i64, ptr %i.iw, align 1, !tbaa !273
  %i.iy = insertelement <2 x i64> poison, i64 %i.ix, i64 0
  %i.iz = bitcast <2 x i64> %i.iy to <8 x i16>
  %i.ja = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.iz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jb = bitcast <8 x i16> %i.ja to <4 x float>
  %i.jc = load i16, ptr %.05321172.i.us, align 2, !tbaa !331
  %i.jd = zext i16 %i.jc to i32
  %i.je = shl nuw i32 %i.jd, 16
  %i.jf = insertelement <4 x i32> poison, i32 %i.je, i64 0
  %i.jg = bitcast <4 x i32> %i.jf to <4 x float>
  %i.jh = shufflevector <4 x float> %i.jg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ji = fmul fast <4 x float> %i.jh, %i.hl
  %i.jj = fadd fast <4 x float> %.210181170.i.us, %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %.05321172.i.us, i64 2
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !331
  %i.jm = zext i16 %i.jl to i32
  %i.jn = shl nuw i32 %i.jm, 16
  %i.jo = insertelement <4 x i32> poison, i32 %i.jn, i64 0
  %i.jp = bitcast <4 x i32> %i.jo to <4 x float>
  %i.jq = shufflevector <4 x float> %i.jp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jr = fmul fast <4 x float> %i.jq, %i.hr
  %i.js = fadd fast <4 x float> %.110331169.i.us, %i.jr
  %i.jt = getelementptr inbounds nuw i8, ptr %.05321172.i.us, i64 4
  %i.ju = load i16, ptr %i.jt, align 2, !tbaa !331
  %i.jv = zext i16 %i.ju to i32
  %i.jw = shl nuw i32 %i.jv, 16
  %i.jx = insertelement <4 x i32> poison, i32 %i.jw, i64 0
  %i.jy = bitcast <4 x i32> %i.jx to <4 x float>
  %i.jz = shufflevector <4 x float> %i.jy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ka = fmul fast <4 x float> %i.jz, %i.hx
  %i.kb = fadd fast <4 x float> %.110471168.i.us, %i.ka
  %i.kc = getelementptr inbounds nuw i8, ptr %.05321172.i.us, i64 6
  %i.kd = load i16, ptr %i.kc, align 2, !tbaa !331
  %i.ke = zext i16 %i.kd to i32
  %i.kf = shl nuw i32 %i.ke, 16
  %i.kg = insertelement <4 x i32> poison, i32 %i.kf, i64 0
  %i.kh = bitcast <4 x i32> %i.kg to <4 x float>
  %i.ki = shufflevector <4 x float> %i.kh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kj = fmul fast <4 x float> %i.ki, %i.id
  %i.kk = fadd fast <4 x float> %.110591167.i.us, %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %.05321172.i.us, i64 8
  %i.km = load i16, ptr %i.kl, align 2, !tbaa !331
  %i.kn = zext i16 %i.km to i32
  %i.ko = shl nuw i32 %i.kn, 16
  %i.kp = insertelement <4 x i32> poison, i32 %i.ko, i64 0
  %i.kq = bitcast <4 x i32> %i.kp to <4 x float>
  %i.kr = shufflevector <4 x float> %i.kq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ks = fmul fast <4 x float> %i.kr, %i.ij
  %i.kt = fadd fast <4 x float> %i.ks, %i.jj      ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.05321172.i.us, i64 10
  %i.kv = load i16, ptr %i.ku, align 2, !tbaa !331
  %i.kw = zext i16 %i.kv to i32
  %i.kx = shl nuw i32 %i.kw, 16
  %i.ky = insertelement <4 x i32> poison, i32 %i.kx, i64 0
  %i.kz = bitcast <4 x i32> %i.ky to <4 x float>
  %i.la = shufflevector <4 x float> %i.kz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lb = fmul fast <4 x float> %i.la, %i.ip
  %i.lc = fadd fast <4 x float> %i.lb, %i.js      ; 2 uses
end_hunk_5
begin_hunk_6_@_ZNK4ncnn21Convolution1D_x86_avx13forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.qm = fadd fast <4 x float> %i.ql, %i.pd      ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %.05301185.i, i64 2
  %i.qo = load i16, ptr %i.qn, align 2, !tbaa !331
  %i.qp = zext i16 %i.qo to i32
  %i.qq = shl nuw i32 %i.qp, 16
  %i.qr = insertelement <4 x i32> poison, i32 %i.qq, i64 0
  %i.qs = bitcast <4 x i32> %i.qr to <4 x float>
  %i.qt = shufflevector <4 x float> %i.qs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qu = fmul fast <4 x float> %i.qt, %i.oj
  %i.qv = fadd fast <4 x float> %i.qu, %i.pm      ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.05301185.i, i64 4
  %i.qx = load i16, ptr %i.qw, align 2, !tbaa !331
  %i.qy = zext i16 %i.qx to i32
  %i.qz = shl nuw i32 %i.qy, 16
  %i.ra = insertelement <4 x i32> poison, i32 %i.qz, i64 0
  %i.rb = bitcast <4 x i32> %i.ra to <4 x float>
  %i.rc = shufflevector <4 x float> %i.rb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rd = fmul fast <4 x float> %i.rc, %i.op
  %i.re = fadd fast <4 x float> %i.rd, %i.pv      ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.05301185.i, i64 6
  %i.rg = load i16, ptr %i.rf, align 2, !tbaa !331
  %i.rh = zext i16 %i.rg to i32
  %i.ri = shl nuw i32 %i.rh, 16
  %i.rj = insertelement <4 x i32> poison, i32 %i.ri, i64 0
  %i.rk = bitcast <4 x i32> %i.rj to <4 x float>
  %i.rl = shufflevector <4 x float> %i.rk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rm = fmul fast <4 x float> %i.rl, %i.ov
  %i.rn = fadd fast <4 x float> %i.rm, %i.qe      ; 2 uses
  %i.ro = getelementptr inbounds [2 x i8], ptr %.25341184.i, i64 %i.go
  %i.rp = getelementptr inbounds [2 x i8], ptr %.05301185.i, i64 %i.go
  %i.rq = getelementptr inbounds nuw i8, ptr %.35441183.i, i64 64
  %i.rr = add nuw nsw i32 %.05291186.i, 1         ; 2 uses
  %exitcond1709.not.i = icmp eq i32 %i.rr, %i.gg
  br i1 %exitcond1709.not.i, label %.loopexit1160.loopexit.i, label %.lr.ph1187.i, !llvm.loop !396

.loopexit1160.loopexit.i:                         ; preds = %.lr.ph1187.i
  %scevgep1707.i = getelementptr i8, ptr %.05411211.i, i64 64
  %scevgep1708.i = getelementptr i8, ptr %scevgep1707.i, i64 %i.he
  br label %.loopexit1159.i

.loopexit1160.i:                                  ; preds = %.loopexit1162.i
  br i1 %i.fb, label %.preheader1158.i, label %.loopexit1159.i

.preheader1158.i:                                 ; preds = %.loopexit1160.i
  br i1 %i.gh, label %.lr.ph1201.i, label %.loopexit1159.i

.lr.ph1201.i:                                     ; preds = %.preheader1158.i, %.lr.ph1201.i
  %.05281200.i = phi i32 [ %i.wi, %.lr.ph1201.i ], [ 0, %.preheader1158.i ]
  %.45361199.i = phi ptr [ %i.wg, %.lr.ph1201.i ], [ %gep.i, %.preheader1158.i ] ; 9 uses
  %.55461198.i = phi ptr [ %i.wh, %.lr.ph1201.i ], [ %.05411211.i, %.preheader1158.i ] ; 9 uses
  %.610221197.i = phi <4 x float> [ %i.ve, %.lr.ph1201.i ], [ %.110171210.i, %.preheader1158.i ]
  %.510371196.i = phi <4 x float> [ %i.vn, %.lr.ph1201.i ], [ %.010321209.i, %.preheader1158.i ]
  %.510511195.i = phi <4 x float> [ %i.vw, %.lr.ph1201.i ], [ %.010461208.i, %.preheader1158.i ]
  %.510631194.i = phi <4 x float> [ %i.wf, %.lr.ph1201.i ], [ %.010581207.i, %.preheader1158.i ]
  %i.rs = load i64, ptr %.55461198.i, align 1, !tbaa !273
  %i.rt = insertelement <2 x i64> poison, i64 %i.rs, i64 0
  %i.ru = bitcast <2 x i64> %i.rt to <8 x i16>
  %i.rv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ru, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rw = bitcast <8 x i16> %i.rv to <4 x float>
  %i.rx = getelementptr inbounds nuw i8, ptr %.55461198.i, i64 8
  %i.ry = load i64, ptr %i.rx, align 1, !tbaa !273
  %i.rz = insertelement <2 x i64> poison, i64 %i.ry, i64 0
  %i.sa = bitcast <2 x i64> %i.rz to <8 x i16>
  %i.sb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sc = bitcast <8 x i16> %i.sb to <4 x float>
  %i.sd = getelementptr inbounds nuw i8, ptr %.55461198.i, i64 16
  %i.se = load i64, ptr %i.sd, align 1, !tbaa !273
  %i.sf = insertelement <2 x i64> poison, i64 %i.se, i64 0
  %i.sg = bitcast <2 x i64> %i.sf to <8 x i16>
  %i.sh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.si = bitcast <8 x i16> %i.sh to <4 x float>
  %i.sj = getelementptr inbounds nuw i8, ptr %.55461198.i, i64 24
  %i.sk = load i64, ptr %i.sj, align 1, !tbaa !273
  %i.sl = insertelement <2 x i64> poison, i64 %i.sk, i64 0
  %i.sm = bitcast <2 x i64> %i.sl to <8 x i16>
  %i.sn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.so = bitcast <8 x i16> %i.sn to <4 x float>
  %i.sp = getelementptr inbounds nuw i8, ptr %.55461198.i, i64 32
  %i.sq = load i64, ptr %i.sp, align 1, !tbaa !273
  %i.sr = insertelement <2 x i64> poison, i64 %i.sq, i64 0
  %i.ss = bitcast <2 x i64> %i.sr to <8 x i16>
  %i.st = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ss, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.su = bitcast <8 x i16> %i.st to <4 x float>
  %i.sv = getelementptr inbounds nuw i8, ptr %.55461198.i, i64 40
  %i.sw = load i64, ptr %i.sv, align 1, !tbaa !273
  %i.sx = insertelement <2 x i64> poison, i64 %i.sw, i64 0
  %i.sy = bitcast <2 x i64> %i.sx to <8 x i16>
  %i.sz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ta = bitcast <8 x i16> %i.sz to <4 x float>
  %i.tb = getelementptr inbounds nuw i8, ptr %.55461198.i, i64 48
  %i.tc = load i64, ptr %i.tb, align 1, !tbaa !273
  %i.td = insertelement <2 x i64> poison, i64 %i.tc, i64 0
  %i.te = bitcast <2 x i64> %i.td to <8 x i16>
  %i.tf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.te, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.tg = bitcast <8 x i16> %i.tf to <4 x float>
  %i.th = getelementptr inbounds nuw i8, ptr %.55461198.i, i64 56
  %i.ti = load i64, ptr %i.th, align 1, !tbaa !273
  %i.tj = insertelement <2 x i64> poison, i64 %i.ti, i64 0
  %i.tk = bitcast <2 x i64> %i.tj to <8 x i16>
  %i.tl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.tk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.tm = bitcast <8 x i16> %i.tl to <4 x float>
  %i.tn = load i16, ptr %.45361199.i, align 2, !tbaa !331
  %i.to = zext i16 %i.tn to i32
  %i.tp = shl nuw i32 %i.to, 16
  %i.tq = insertelement <4 x i32> poison, i32 %i.tp, i64 0
  %i.tr = bitcast <4 x i32> %i.tq to <4 x float>
  %i.ts = shufflevector <4 x float> %i.tr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tt = fmul fast <4 x float> %i.ts, %i.rw
  %i.tu = fadd fast <4 x float> %.610221197.i, %i.tt
  %i.tv = getelementptr inbounds [2 x i8], ptr %.45361199.i, i64 %i.gm
  %i.tw = load i16, ptr %i.tv, align 2, !tbaa !331
  %i.tx = zext i16 %i.tw to i32
  %i.ty = shl nuw i32 %i.tx, 16
  %i.tz = insertelement <4 x i32> poison, i32 %i.ty, i64 0
  %i.ua = bitcast <4 x i32> %i.tz to <4 x float>
  %i.ub = shufflevector <4 x float> %i.ua, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uc = fmul fast <4 x float> %i.ub, %i.sc
  %i.ud = fadd fast <4 x float> %.510371196.i, %i.uc
  %i.ue = getelementptr inbounds [2 x i8], ptr %.45361199.i, i64 %i.gq
  %i.uf = load i16, ptr %i.ue, align 2, !tbaa !331
  %i.ug = zext i16 %i.uf to i32
  %i.uh = shl nuw i32 %i.ug, 16
  %i.ui = insertelement <4 x i32> poison, i32 %i.uh, i64 0
  %i.uj = bitcast <4 x i32> %i.ui to <4 x float>
  %i.uk = shufflevector <4 x float> %i.uj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ul = fmul fast <4 x float> %i.uk, %i.si
  %i.um = fadd fast <4 x float> %.510511195.i, %i.ul
  %i.un = getelementptr inbounds [2 x i8], ptr %.45361199.i, i64 %i.gs
  %i.uo = load i16, ptr %i.un, align 2, !tbaa !331
  %i.up = zext i16 %i.uo to i32
  %i.uq = shl nuw i32 %i.up, 16
  %i.ur = insertelement <4 x i32> poison, i32 %i.uq, i64 0
  %i.us = bitcast <4 x i32> %i.ur to <4 x float>
  %i.ut = shufflevector <4 x float> %i.us, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uu = fmul fast <4 x float> %i.ut, %i.so
  %i.uv = fadd fast <4 x float> %.510631194.i, %i.uu
  %i.uw = getelementptr inbounds [2 x i8], ptr %.45361199.i, i64 %i.gu
  %i.ux = load i16, ptr %i.uw, align 2, !tbaa !331
  %i.uy = zext i16 %i.ux to i32
  %i.uz = shl nuw i32 %i.uy, 16
  %i.va = insertelement <4 x i32> poison, i32 %i.uz, i64 0
  %i.vb = bitcast <4 x i32> %i.va to <4 x float>
  %i.vc = shufflevector <4 x float> %i.vb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vd = fmul fast <4 x float> %i.vc, %i.su
  %i.ve = fadd fast <4 x float> %i.vd, %i.tu      ; 2 uses
  %i.vf = getelementptr inbounds [2 x i8], ptr %.45361199.i, i64 %i.gw
  %i.vg = load i16, ptr %i.vf, align 2, !tbaa !331
  %i.vh = zext i16 %i.vg to i32
  %i.vi = shl nuw i32 %i.vh, 16
  %i.vj = insertelement <4 x i32> poison, i32 %i.vi, i64 0
  %i.vk = bitcast <4 x i32> %i.vj to <4 x float>
  %i.vl = shufflevector <4 x float> %i.vk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vm = fmul fast <4 x float> %i.vl, %i.ta
  %i.vn = fadd fast <4 x float> %i.vm, %i.ud      ; 2 uses
  %i.vo = getelementptr inbounds [2 x i8], ptr %.45361199.i, i64 %i.gy
  %i.vp = load i16, ptr %i.vo, align 2, !tbaa !331
  %i.vq = zext i16 %i.vp to i32
  %i.vr = shl nuw i32 %i.vq, 16
  %i.vs = insertelement <4 x i32> poison, i32 %i.vr, i64 0
  %i.vt = bitcast <4 x i32> %i.vs to <4 x float>
  %i.vu = shufflevector <4 x float> %i.vt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vv = fmul fast <4 x float> %i.vu, %i.tg
  %i.vw = fadd fast <4 x float> %i.vv, %i.um      ; 2 uses
  %i.vx = getelementptr inbounds [2 x i8], ptr %.45361199.i, i64 %i.ha
  %i.vy = load i16, ptr %i.vx, align 2, !tbaa !331
  %i.vz = zext i16 %i.vy to i32
  %i.wa = shl nuw i32 %i.vz, 16
  %i.wb = insertelement <4 x i32> poison, i32 %i.wa, i64 0
  %i.wc = bitcast <4 x i32> %i.wb to <4 x float>
  %i.wd = shufflevector <4 x float> %i.wc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.we = fmul fast <4 x float> %i.wd, %i.tm
  %i.wf = fadd fast <4 x float> %i.we, %i.uv      ; 2 uses
  %i.wg = getelementptr inbounds [2 x i8], ptr %.45361199.i, i64 %i.hb
  %i.wh = getelementptr inbounds nuw i8, ptr %.55461198.i, i64 64
  %i.wi = add nuw nsw i32 %.05281200.i, 1         ; 2 uses
  %exitcond1712.not.i = icmp eq i32 %i.wi, %i.gg
  br i1 %exitcond1712.not.i, label %.loopexit1159.loopexit.i, label %.lr.ph1201.i, !llvm.loop !397

.loopexit1159.loopexit.i:                         ; preds = %.lr.ph1201.i
  %scevgep1710.i = getelementptr i8, ptr %.05411211.i, i64 64
  %scevgep1711.i = getelementptr i8, ptr %scevgep1710.i, i64 %i.he
  br label %.loopexit1159.i

.loopexit1159.i:                                  ; preds = %.loopexit1159.loopexit.i, %.preheader1158.i, %.loopexit1160.i, %.loopexit1160.loopexit.i, %bb.k
  %.61064.i = phi nsz <4 x float> [ %.010581207.i, %.loopexit1160.i ], [ %.010581207.i, %.preheader1158.i ], [ %i.wf, %.loopexit1159.loopexit.i ], [ %.010581207.i, %bb.k ], [ %i.rn, %.loopexit1160.loopexit.i ] ; 2 uses
  %.61052.i = phi nsz <4 x float> [ %.010461208.i, %.loopexit1160.i ], [ %.010461208.i, %.preheader1158.i ], [ %i.vw, %.loopexit1159.loopexit.i ], [ %.010461208.i, %bb.k ], [ %i.re, %.loopexit1160.loopexit.i ] ; 2 uses
  %.61038.i = phi nsz <4 x float> [ %.010321209.i, %.loopexit1160.i ], [ %.010321209.i, %.preheader1158.i ], [ %i.vn, %.loopexit1159.loopexit.i ], [ %.010321209.i, %bb.k ], [ %i.qv, %.loopexit1160.loopexit.i ] ; 2 uses
  %.71023.i = phi nsz <4 x float> [ %.110171210.i, %.loopexit1160.i ], [ %.110171210.i, %.preheader1158.i ], [ %i.ve, %.loopexit1159.loopexit.i ], [ %.110171210.i, %bb.k ], [ %i.qm, %.loopexit1160.loopexit.i ] ; 2 uses
  %.6547.i = phi ptr [ %.05411211.i, %.loopexit1160.i ], [ %.05411211.i, %.preheader1158.i ], [ %scevgep1711.i, %.loopexit1159.loopexit.i ], [ %.05411211.i, %bb.k ], [ %scevgep1708.i, %.loopexit1160.loopexit.i ] ; 2 uses
  %i.wj = add nuw nsw i32 %.05371212.i, 8         ; 2 uses
  %i.wk = or disjoint i32 %i.wj, 7
  %i.wl = icmp slt i32 %i.wk, %i.ee
  br i1 %i.wl, label %.loopexit1162.i, label %.preheader1165.i, !llvm.loop !395

.preheader1164.i:                                 ; preds = %.loopexit1155.i, %.preheader1165.i
  %.71065.lcssa.i = phi <4 x float> [ %.01058.lcssa.i, %.preheader1165.i ], [ %.111069.i, %.loopexit1155.i ]
  %.71053.lcssa.i = phi <4 x float> [ %.01046.lcssa.i, %.preheader1165.i ], [ %.111057.i, %.loopexit1155.i ]
  %.71039.lcssa.i = phi <4 x float> [ %.01032.lcssa.i, %.preheader1165.i ], [ %.111043.i, %.loopexit1155.i ] ; 3 uses
  %.81024.lcssa.i = phi <4 x float> [ %.11017.lcssa.i, %.preheader1165.i ], [ %.121028.i, %.loopexit1155.i ] ; 3 uses
  %.7548.lcssa.i = phi ptr [ %.0541.lcssa.i, %.preheader1165.i ], [ %.11552.i, %.loopexit1155.i ] ; 3 uses
  %.1538.lcssa.i = phi i32 [ %.0537.lcssa.i, %.preheader1165.i ], [ %i.acn, %.loopexit1155.i ] ; 6 uses
  %i.wm = or disjoint i32 %.1538.lcssa.i, 1
  %i.wn = icmp slt i32 %i.wm, %i.ee
  br i1 %i.wn, label %.lr.ph1277.i, label %.preheader1163.i

.lr.ph1277.i:                                     ; preds = %.preheader1164.i
  %i.wo = load ptr, ptr %4, align 8, !tbaa !18
  %i.wp = load i32, ptr %i.t, align 4, !tbaa !249
  %i.wq = sext i32 %i.wp to i64
  %i.wr = load i64, ptr %i.q, align 8, !tbaa !49
  %factor.op.mul1282.i = mul i64 %i.wr, %i.wq
  %i.ws = mul nsw i64 %indvars.iv1729.i, %i.fp
  %invariant.gep1284.i = getelementptr [2 x i8], ptr %i.wo, i64 %i.ws
  %i.wt = load i32, ptr %i.e, align 4
  %i.wu = sext i32 %i.wt to i64
  %i.wv = load i32, ptr %i.b, align 4
  %i.ww = sext i32 %i.wv to i64
  br i1 %i.fd, label %.lr.ph1269.us.preheader.i, label %.lr.ph1277.split.preheader.i

.lr.ph1277.split.preheader.i:                     ; preds = %.lr.ph1277.i
  %i.wx = add i32 %.1538.lcssa.i, 3
  %smax.i = call i32 @llvm.smax.i32(i32 %i.ee, i32 %i.wx)
  %reass.sub = sub i32 %smax.i, %.1538.lcssa.i
  %i.wy = and i32 %reass.sub, -2
  %i.wz = add i32 %.1538.lcssa.i, %i.wy
  br label %.preheader1163.i

.lr.ph1269.us.preheader.i:                        ; preds = %.lr.ph1277.i
  %i.xa = zext i32 %.1538.lcssa.i to i64
  br label %.lr.ph1269.us.i

.lr.ph1269.us.i:                                  ; preds = %._crit_edge.us.i, %.lr.ph1269.us.preheader.i
  %indvars.iv.i = phi i64 [ %i.xa, %.lr.ph1269.us.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.us.i ] ; 2 uses
  %.125531275.us.i = phi ptr [ %.7548.lcssa.i, %.lr.ph1269.us.preheader.i ], [ %scevgep1720.i, %._crit_edge.us.i ] ; 2 uses
  %.1310291274.us.i = phi <4 x float> [ %.81024.lcssa.i, %.lr.ph1269.us.preheader.i ], [ %i.xt, %._crit_edge.us.i ]
  %.1210441273.us.i = phi <4 x float> [ %.71039.lcssa.i, %.lr.ph1269.us.preheader.i ], [ %i.yc, %._crit_edge.us.i ]
  %.reass1283.us.i = mul i64 %factor.op.mul1282.i, %indvars.iv.i
  %gep1285.us.i = getelementptr i8, ptr %invariant.gep1284.i, i64 %.reass1283.us.i
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph1269.us.i
  %.05211268.us.i = phi i32 [ 0, %.lr.ph1269.us.i ], [ %i.yf, %bb.l ]
  %.05221267.us.i = phi ptr [ %gep1285.us.i, %.lr.ph1269.us.i ], [ %i.yd, %bb.l ] ; 3 uses
  %.135541266.us.i = phi ptr [ %.125531275.us.i, %.lr.ph1269.us.i ], [ %i.ye, %bb.l ] ; 3 uses
  %.1410301265.us.i = phi <4 x float> [ %.1310291274.us.i, %.lr.ph1269.us.i ], [ %i.xt, %bb.l ]
  %.1310451264.us.i = phi <4 x float> [ %.1210441273.us.i, %.lr.ph1269.us.i ], [ %i.yc, %bb.l ]
  %i.xb = load i64, ptr %.135541266.us.i, align 1, !tbaa !273
  %i.xc = insertelement <2 x i64> poison, i64 %i.xb, i64 0
  %i.xd = bitcast <2 x i64> %i.xc to <8 x i16>
  %i.xe = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.xd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.xf = bitcast <8 x i16> %i.xe to <4 x float>
  %i.xg = getelementptr inbounds nuw i8, ptr %.135541266.us.i, i64 8
  %i.xh = load i64, ptr %i.xg, align 1, !tbaa !273
  %i.xi = insertelement <2 x i64> poison, i64 %i.xh, i64 0
  %i.xj = bitcast <2 x i64> %i.xi to <8 x i16>
  %i.xk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.xj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.xl = bitcast <8 x i16> %i.xk to <4 x float>
  %i.xm = load i16, ptr %.05221267.us.i, align 2, !tbaa !331
  %i.xn = zext i16 %i.xm to i32
  %i.xo = shl nuw i32 %i.xn, 16
  %i.xp = insertelement <4 x i32> poison, i32 %i.xo, i64 0
  %i.xq = bitcast <4 x i32> %i.xp to <4 x float>
  %i.xr = shufflevector <4 x float> %i.xq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xs = fmul fast <4 x float> %i.xr, %i.xf
  %i.xt = fadd fast <4 x float> %i.xs, %.1410301265.us.i ; 3 uses
  %i.xu = getelementptr inbounds [2 x i8], ptr %.05221267.us.i, i64 %i.wu
  %i.xv = load i16, ptr %i.xu, align 2, !tbaa !331
  %i.xw = zext i16 %i.xv to i32
  %i.xx = shl nuw i32 %i.xw, 16
  %i.xy = insertelement <4 x i32> poison, i32 %i.xx, i64 0
  %i.xz = bitcast <4 x i32> %i.xy to <4 x float>
  %i.ya = shufflevector <4 x float> %i.xz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yb = fmul fast <4 x float> %i.ya, %i.xl
  %i.yc = fadd fast <4 x float> %i.yb, %.1310451264.us.i ; 3 uses
  %i.yd = getelementptr inbounds [2 x i8], ptr %.05221267.us.i, i64 %i.ww
  %i.ye = getelementptr inbounds nuw i8, ptr %.135541266.us.i, i64 16
  %i.yf = add nuw nsw i32 %.05211268.us.i, 1      ; 2 uses
  %exitcond1721.not.i = icmp eq i32 %i.yf, %i.fc
  br i1 %exitcond1721.not.i, label %._crit_edge.us.i, label %bb.l, !llvm.loop !398

._crit_edge.us.i:                                 ; preds = %bb.l
  %scevgep1719.i = getelementptr i8, ptr %.125531275.us.i, i64 16
  %scevgep1720.i = getelementptr i8, ptr %scevgep1719.i, i64 %i.fn ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.yg = trunc i64 %indvars.iv.next.i to i32     ; 2 uses
  %i.yh = or i32 %i.yg, 1
  %i.yi = icmp slt i32 %i.yh, %i.ee
  br i1 %i.yi, label %.lr.ph1269.us.i, label %.preheader1163.i, !llvm.loop !399

bb.m:                                             ; preds = %.loopexit1155.i, %.lr.ph1253.i
  %.15381252.i = phi i32 [ %.0537.lcssa.i, %.lr.ph1253.i ], [ %i.acn, %.loopexit1155.i ] ; 2 uses
  %.75481251.i = phi ptr [ %.0541.lcssa.i, %.lr.ph1253.i ], [ %.11552.i, %.loopexit1155.i ] ; 7 uses
  %.810241250.i = phi <4 x float> [ %.11017.lcssa.i, %.lr.ph1253.i ], [ %.121028.i, %.loopexit1155.i ] ; 5 uses
  %.710391249.i = phi <4 x float> [ %.01032.lcssa.i, %.lr.ph1253.i ], [ %.111043.i, %.loopexit1155.i ] ; 5 uses
  %.710531248.i = phi <4 x float> [ %.01046.lcssa.i, %.lr.ph1253.i ], [ %.111057.i, %.loopexit1155.i ] ; 5 uses
  %.710651247.i = phi <4 x float> [ %.01058.lcssa.i, %.lr.ph1253.i ], [ %.111069.i, %.loopexit1155.i ] ; 5 uses
  %i.yj = sdiv i32 %.15381252.i, %i.ec
  %i.yk = sext i32 %i.yj to i64
  %.reass1261.i = mul i64 %factor.op.mul1260.i, %i.yk
  %gep1263.i = getelementptr i8, ptr %invariant.gep1262.i, i64 %.reass1261.i ; 2 uses
  br i1 %i.fa, label %.preheader1156.i, label %.loopexit1157.i

.preheader1156.i:                                 ; preds = %bb.m
  br i1 %i.mk, label %.lr.ph1227.i, label %.loopexit1155.i

.lr.ph1227.i:                                     ; preds = %.preheader1156.i, %.lr.ph1227.i
  %.05241226.i = phi i32 [ %i.aad, %.lr.ph1227.i ], [ 0, %.preheader1156.i ]
  %.05251225.i = phi ptr [ %i.aab, %.lr.ph1227.i ], [ %gep1263.i, %.preheader1156.i ] ; 2 uses
  %.85491224.i = phi ptr [ %i.aac, %.lr.ph1227.i ], [ %.75481251.i, %.preheader1156.i ] ; 5 uses
  %.910251223.i = phi <4 x float> [ %i.zo, %.lr.ph1227.i ], [ %.810241250.i, %.preheader1156.i ]
  %.810401222.i = phi <4 x float> [ %i.zs, %.lr.ph1227.i ], [ %.710391249.i, %.preheader1156.i ]
  %.810541221.i = phi <4 x float> [ %i.zw, %.lr.ph1227.i ], [ %.710531248.i, %.preheader1156.i ]
  %.810661220.i = phi <4 x float> [ %i.aaa, %.lr.ph1227.i ], [ %.710651247.i, %.preheader1156.i ]
  %i.yl = load i64, ptr %.85491224.i, align 1, !tbaa !273
  %i.ym = insertelement <2 x i64> poison, i64 %i.yl, i64 0
  %i.yn = bitcast <2 x i64> %i.ym to <8 x i16>
  %i.yo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.yn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.yp = bitcast <8 x i16> %i.yo to <4 x float>
  %i.yq = getelementptr inbounds nuw i8, ptr %.85491224.i, i64 8
  %i.yr = load i64, ptr %i.yq, align 1, !tbaa !273
  %i.ys = insertelement <2 x i64> poison, i64 %i.yr, i64 0
  %i.yt = bitcast <2 x i64> %i.ys to <8 x i16>
  %i.yu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.yt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.yv = bitcast <8 x i16> %i.yu to <4 x float>
  %i.yw = getelementptr inbounds nuw i8, ptr %.85491224.i, i64 16
  %i.yx = load i64, ptr %i.yw, align 1, !tbaa !273
  %i.yy = insertelement <2 x i64> poison, i64 %i.yx, i64 0
  %i.yz = bitcast <2 x i64> %i.yy to <8 x i16>
  %i.za = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.yz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.zb = bitcast <8 x i16> %i.za to <4 x float>
  %i.zc = getelementptr inbounds nuw i8, ptr %.85491224.i, i64 24
  %i.zd = load i64, ptr %i.zc, align 1, !tbaa !273
  %i.ze = insertelement <2 x i64> poison, i64 %i.zd, i64 0
  %i.zf = bitcast <2 x i64> %i.ze to <8 x i16>
  %i.zg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.zf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.zh = bitcast <8 x i16> %i.zg to <4 x float>
  %i.zi = load <4 x i16>, ptr %.05251225.i, align 2, !tbaa !331
  %i.zj = zext <4 x i16> %i.zi to <4 x i32>
  %i.zk = shl nuw <4 x i32> %i.zj, splat (i32 16) ; 4 uses
  %i.zl = bitcast <4 x i32> %i.zk to <4 x float>
  %i.zm = shufflevector <4 x float> %i.zl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zn = fmul fast <4 x float> %i.zm, %i.yp
  %i.zo = fadd fast <4 x float> %i.zn, %.910251223.i ; 2 uses
  %i.zp = bitcast <4 x i32> %i.zk to <4 x float>
  %i.zq = shufflevector <4 x float> %i.zp, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.zr = fmul fast <4 x float> %i.zq, %i.yv
  %i.zs = fadd fast <4 x float> %i.zr, %.810401222.i ; 2 uses
  %i.zt = bitcast <4 x i32> %i.zk to <4 x float>
  %i.zu = shufflevector <4 x float> %i.zt, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.zv = fmul fast <4 x float> %i.zu, %i.zb
  %i.zw = fadd fast <4 x float> %i.zv, %.810541221.i ; 2 uses
  %i.zx = bitcast <4 x i32> %i.zk to <4 x float>
  %i.zy = shufflevector <4 x float> %i.zx, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.zz = fmul fast <4 x float> %i.zy, %i.zh
  %i.aaa = fadd fast <4 x float> %i.zz, %.810661220.i ; 2 uses
  %i.aab = getelementptr inbounds [2 x i8], ptr %.05251225.i, i64 %i.mn
  %i.aac = getelementptr inbounds nuw i8, ptr %.85491224.i, i64 32
  %i.aad = add nuw nsw i32 %.05241226.i, 1        ; 2 uses
  %exitcond1715.not.i = icmp eq i32 %i.aad, %i.mj
  br i1 %exitcond1715.not.i, label %.loopexit1157.loopexit.i, label %.lr.ph1227.i, !llvm.loop !400

.loopexit1157.loopexit.i:                         ; preds = %.lr.ph1227.i
  %scevgep1713.i = getelementptr i8, ptr %.75481251.i, i64 32
  %scevgep1714.i = getelementptr i8, ptr %scevgep1713.i, i64 %i.mx
  br label %.loopexit1155.i

.loopexit1157.i:                                  ; preds = %bb.m
  br i1 %i.fb, label %.preheader1154.i, label %.loopexit1155.i

.preheader1154.i:                                 ; preds = %.loopexit1157.i
  br i1 %i.mk, label %.lr.ph1241.i, label %.loopexit1155.i

.lr.ph1241.i:                                     ; preds = %.preheader1154.i, %.lr.ph1241.i
  %.05231240.i = phi i32 [ %i.acm, %.lr.ph1241.i ], [ 0, %.preheader1154.i ]
  %.25271239.i = phi ptr [ %i.ack, %.lr.ph1241.i ], [ %gep1263.i, %.preheader1154.i ] ; 5 uses
  %.105511238.i = phi ptr [ %i.acl, %.lr.ph1241.i ], [ %.75481251.i, %.preheader1154.i ] ; 5 uses
  %.1110271237.i = phi <4 x float> [ %i.abi, %.lr.ph1241.i ], [ %.810241250.i, %.preheader1154.i ]
  %.1010421236.i = phi <4 x float> [ %i.abr, %.lr.ph1241.i ], [ %.710391249.i, %.preheader1154.i ]
  %.1010561235.i = phi <4 x float> [ %i.aca, %.lr.ph1241.i ], [ %.710531248.i, %.preheader1154.i ]
  %.1010681234.i = phi <4 x float> [ %i.acj, %.lr.ph1241.i ], [ %.710651247.i, %.preheader1154.i ]
  %i.aae = load i64, ptr %.105511238.i, align 1, !tbaa !273
  %i.aaf = insertelement <2 x i64> poison, i64 %i.aae, i64 0
  %i.aag = bitcast <2 x i64> %i.aaf to <8 x i16>
  %i.aah = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aag, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aai = bitcast <8 x i16> %i.aah to <4 x float>
  %i.aaj = getelementptr inbounds nuw i8, ptr %.105511238.i, i64 8
  %i.aak = load i64, ptr %i.aaj, align 1, !tbaa !273
  %i.aal = insertelement <2 x i64> poison, i64 %i.aak, i64 0
  %i.aam = bitcast <2 x i64> %i.aal to <8 x i16>
  %i.aan = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aam, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aao = bitcast <8 x i16> %i.aan to <4 x float>
  %i.aap = getelementptr inbounds nuw i8, ptr %.105511238.i, i64 16
  %i.aaq = load i64, ptr %i.aap, align 1, !tbaa !273
  %i.aar = insertelement <2 x i64> poison, i64 %i.aaq, i64 0
  %i.aas = bitcast <2 x i64> %i.aar to <8 x i16>
  %i.aat = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aas, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aau = bitcast <8 x i16> %i.aat to <4 x float>
  %i.aav = getelementptr inbounds nuw i8, ptr %.105511238.i, i64 24
  %i.aaw = load i64, ptr %i.aav, align 1, !tbaa !273
  %i.aax = insertelement <2 x i64> poison, i64 %i.aaw, i64 0
  %i.aay = bitcast <2 x i64> %i.aax to <8 x i16>
  %i.aaz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aay, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aba = bitcast <8 x i16> %i.aaz to <4 x float>
  %i.abb = load i16, ptr %.25271239.i, align 2, !tbaa !331
  %i.abc = zext i16 %i.abb to i32
  %i.abd = shl nuw i32 %i.abc, 16
  %i.abe = insertelement <4 x i32> poison, i32 %i.abd, i64 0
  %i.abf = bitcast <4 x i32> %i.abe to <4 x float>
  %i.abg = shufflevector <4 x float> %i.abf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.abh = fmul fast <4 x float> %i.abg, %i.aai
  %i.abi = fadd fast <4 x float> %i.abh, %.1110271237.i ; 2 uses
  %i.abj = getelementptr inbounds [2 x i8], ptr %.25271239.i, i64 %i.mp
  %i.abk = load i16, ptr %i.abj, align 2, !tbaa !331
  %i.abl = zext i16 %i.abk to i32
  %i.abm = shl nuw i32 %i.abl, 16
  %i.abn = insertelement <4 x i32> poison, i32 %i.abm, i64 0
  %i.abo = bitcast <4 x i32> %i.abn to <4 x float>
  %i.abp = shufflevector <4 x float> %i.abo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.abq = fmul fast <4 x float> %i.abp, %i.aao
  %i.abr = fadd fast <4 x float> %i.abq, %.1010421236.i ; 2 uses
  %i.abs = getelementptr inbounds [2 x i8], ptr %.25271239.i, i64 %i.mr
  %i.abt = load i16, ptr %i.abs, align 2, !tbaa !331
  %i.abu = zext i16 %i.abt to i32
  %i.abv = shl nuw i32 %i.abu, 16
  %i.abw = insertelement <4 x i32> poison, i32 %i.abv, i64 0
end_hunk_6
begin_hunk_7_@_ZNK4ncnn21Convolution1D_x86_avx13forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:bb.a

bb.as:                                            ; preds = %bb.ar
  %i.bsl = fmul fast float %i.bsc, %.3462.lcssa.i
  %i.bsm = fadd fast float %i.bsl, %i.bse
  %i.bsn = fmul fast float %i.bsm, %.3462.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit.i:         ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %._crit_edge1573.i
  %.11015.i = phi nsz float [ %.3462.lcssa.i, %._crit_edge1573.i ], [ %i.brh, %bb.ak ], [ %i.brm, %bb.al ], [ %i.brq, %bb.an ], [ %.01014.i, %bb.am ], [ %i.brv, %bb.ao ], [ %i.bsa, %bb.ap ], [ %i.bsn, %bb.as ], [ %.3462.lcssa.i, %bb.ar ], [ 0.000000e+00, %bb.aq ]
  %i.bso = bitcast float %.11015.i to i32
  %i.bsp = lshr i32 %i.bso, 16
  %i.bsq = trunc nuw i32 %i.bsp to i16
  store i16 %i.bsq, ptr %.04651580.i, align 2, !tbaa !331
  %i.bsr = getelementptr inbounds nuw i8, ptr %.04651580.i, i64 2
  %indvars.iv.next1805.i = add nuw nsw i64 %indvars.iv1804.i, 1 ; 2 uses
  %exitcond1808.not.i = icmp eq i64 %indvars.iv.next1805.i, %wide.trip.count1807.i
  br i1 %exitcond1808.not.i, label %._crit_edge1584.i, label %bb.ag, !llvm.loop !434

_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.exit: ; preds = %._crit_edge1584.i, %._crit_edge1467.split.i, %.lr.ph1591.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_ZNK4ncnn3Mat5emptyEv.exit32.thread

_ZNK4ncnn3Mat5emptyEv.exit32.thread:              ; preds = %bb.f, %bb.b, %_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.exit, %_ZNK4ncnn3Mat5emptyEv.exit, %_ZNK4ncnn3Mat5emptyEv.exit32
  %.1 = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit32 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ 0, %_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.exit ], [ -100, %bb.b ], [ -100, %bb.f ]
  %i.bss = load ptr, ptr %i.p, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %i.bss, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit24, label %bb.at

bb.at:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit32.thread
  %i.bst = atomicrmw add ptr %i.bss, i32 -1 acq_rel, align 4
  %i.bsu = icmp eq i32 %i.bst, 1
  br i1 %i.bsu, label %bb.au, label %_ZN4ncnn3MatD2Ev.exit24

bb.au:                                            ; preds = %bb.at
  %i.bsv = load ptr, ptr %i.s, align 8, !tbaa !17 ; 3 uses
  %.not3.i = icmp eq ptr %i.bsv, null
  %i.bsw = load ptr, ptr %4, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.bsx = load ptr, ptr %i.bsv, align 8, !tbaa !9
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.bsx, i64 24
  %i.bsz = load ptr, ptr %i.bsy, align 8
  invoke void %i.bsz(ptr noundef nonnull align 8 dereferenceable(8) %i.bsv, ptr noundef %i.bsw)
          to label %_ZN4ncnn3MatD2Ev.exit24 unwind label %bb.ay, !inline_history !19

bb.aw:                                            ; preds = %bb.au
  %.not.i30 = icmp eq ptr %i.bsw, null
  br i1 %.not.i30, label %_ZN4ncnn3MatD2Ev.exit24, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @free(ptr noundef nonnull %i.bsw) #11
  br label %_ZN4ncnn3MatD2Ev.exit24

bb.ay:                                            ; preds = %bb.av
  %i.bta = landingpad { ptr, i32 }
          catch ptr null
  %i.btb = extractvalue { ptr, i32 } %i.bta, 0
  call void @__clang_call_terminate(ptr %i.btb) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit24:                          ; preds = %bb.at, %_ZNK4ncnn3Mat5emptyEv.exit32.thread, %bb.av, %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret i32 %.1

bb.az:                                            ; preds = %bb.g, %bb.c
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.g ], [ %i.ae, %bb.c ]
  %i.btc = load ptr, ptr %i.p, align 8, !tbaa !11 ; 2 uses
  %.not.i25 = icmp eq ptr %i.btc, null
  br i1 %.not.i25, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.btd = atomicrmw add ptr %i.btc, i32 -1 acq_rel, align 4
  %i.bte = icmp eq i32 %i.btd, 1
  br i1 %i.bte, label %bb.bb, label %_ZN4ncnn3MatD2Ev.exit

bb.bb:                                            ; preds = %bb.ba
  %i.btf = load ptr, ptr %i.s, align 8, !tbaa !17 ; 3 uses
  %.not3.i26 = icmp eq ptr %i.btf, null
  %i.btg = load ptr, ptr %4, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i26, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.bth = load ptr, ptr %i.btf, align 8, !tbaa !9
  %i.bti = getelementptr inbounds nuw i8, ptr %i.bth, i64 24
  %i.btj = load ptr, ptr %i.bti, align 8
  invoke void %i.btj(ptr noundef nonnull align 8 dereferenceable(8) %i.btf, ptr noundef %i.btg)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.bf, !inline_history !19

bb.bd:                                            ; preds = %bb.bb
  %.not.i29 = icmp eq ptr %i.btg, null
  br i1 %.not.i29, label %_ZN4ncnn3MatD2Ev.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @free(ptr noundef nonnull %i.btg) #11
  br label %_ZN4ncnn3MatD2Ev.exit

bb.bf:                                            ; preds = %bb.bc
  %i.btk = landingpad { ptr, i32 }
          catch ptr null
  %i.btl = extractvalue { ptr, i32 } %i.btk, 0
  call void @__clang_call_terminate(ptr %i.btl) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.ba, %bb.az, %bb.bc, %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  resume { ptr, i32 } %.pn
}

declare void @_ZNK4ncnn13Convolution1D12make_paddingERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(472), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL20convolution1d_packedERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !254    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 %i.g, ptr %i.b, align 4, !tbaa !254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i32 1, ptr %i.c, align 4, !tbaa !254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i32 0, ptr %i.d, align 4, !tbaa !254
  %i.h = load i32, ptr %0, align 4, !tbaa !254    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !254
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !254
  %i.k = load i32, ptr %i.a, align 4, !tbaa !254  ; 2 uses
  %.not704 = icmp sgt i32 %i.k, %i.j
  br i1 %.not704, label %._crit_edge708, label %.lr.ph707

.lr.ph707:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.u = load i32, ptr %i.n, align 4, !tbaa !249  ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph707.split, label %._crit_edge708

.lr.ph707.splitthread-pre-split:                  ; preds = %._crit_edge
  %i.w = add i32 %.0215705, 1
  %.pr = load i32, ptr %i.n, align 4, !tbaa !249
  br label %.lr.ph707.split

.lr.ph707.split:                                  ; preds = %.lr.ph707, %.lr.ph707.splitthread-pre-split
  %i.x = phi i32 [ %.pr, %.lr.ph707.splitthread-pre-split ], [ %i.u, %.lr.ph707 ] ; 3 uses
  %.0215705 = phi i32 [ %i.w, %.lr.ph707.splitthread-pre-split ], [ %i.k, %.lr.ph707 ] ; 3 uses
  %i.y = load i32, ptr %i.l, align 8, !tbaa !251  ; 8 uses
  %i.z = load i32, ptr %i.m, align 8, !tbaa !264
  %i.aa = mul i32 %i.z, %i.y                      ; 10 uses
  %i.ab = load i32, ptr %i.o, align 8, !tbaa !251 ; 2 uses
  %i.ac = icmp sgt i32 %i.x, 0
  br i1 %i.ac, label %.lr.ph703, label %._crit_edge

.lr.ph703:                                        ; preds = %.lr.ph707.split
  %i.ad = load ptr, ptr %5, align 8, !tbaa !18
  %i.ae = load i32, ptr %3, align 4, !tbaa !254
  %i.af = shl nsw i32 %.0215705, 3
  %i.ag = add nsw i32 %i.ae, %i.af                ; 3 uses
  %i.ah = sdiv i32 %i.ag, %i.ab
  %i.ai = sext i32 %i.ah to i64
  %i.aj = zext nneg i32 %i.x to i64
  %i.ak = mul nsw i64 %i.ai, %i.aj
  %i.al = load i64, ptr %i.p, align 8, !tbaa !49
  %i.am = mul i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.am
  %i.ao = sext i32 %i.ag to i64
  %i.ap = sdiv i32 %i.ag, 8
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp sgt i32 %i.aa, 7
  %i.as = icmp eq i32 %i.y, 8
  %i.at = icmp eq i32 %i.y, 4                     ; 2 uses
  %i.au = icmp eq i32 %i.y, 1                     ; 2 uses
  %i.av = and i32 %i.aa, -8
  br label %bb.c

._crit_edge:                                      ; preds = %.thread547, %.lr.ph707.split
  %exitcond772.not = icmp eq i32 %.0215705, %i.j
  br i1 %exitcond772.not, label %._crit_edge708, label %.lr.ph707.splitthread-pre-split, !llvm.loop !435

bb.c:                                             ; preds = %.lr.ph703, %.thread547
  %.0210702 = phi i32 [ 0, %.lr.ph703 ], [ %i.aat, %.thread547 ] ; 5 uses
  %.0211701 = phi ptr [ %i.an, %.lr.ph703 ], [ %.3214, %.thread547 ] ; 15 uses
  %i.aw = load ptr, ptr %6, align 8, !tbaa !265   ; 2 uses
  %.not217 = icmp eq ptr %i.aw, null
  br i1 %.not217, label %_ZN4ncnn3MatD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ao
  %i.ay = load <8 x float>, ptr %i.ax, align 1, !tbaa !273
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.d, %bb.c
  %.0530 = phi nsz <8 x float> [ zeroinitializer, %bb.c ], [ %i.ay, %bb.d ] ; 2 uses
  %i.az = load ptr, ptr %7, align 8, !tbaa !18, !noalias !436
  %i.ba = load i64, ptr %i.q, align 8, !tbaa !20, !noalias !436
  %i.bb = mul i64 %i.ba, %i.aq
  %i.bc = load i64, ptr %i.r, align 8, !tbaa !49, !noalias !436
  %i.bd = mul i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bd ; 2 uses
  br i1 %i.ar, label %.lr.ph606, label %.preheader559

.lr.ph606:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit
  %i.bf = load ptr, ptr %4, align 8, !tbaa !18
  %i.bg = load i32, ptr %i.s, align 4, !tbaa !249
  %i.bh = sext i32 %i.bg to i64
  %i.bi = load i64, ptr %i.t, align 8, !tbaa !49
  %factor.op.mul = mul i64 %i.bi, %i.bh
  %i.bj = load i32, ptr %8, align 4, !tbaa !254
  %i.bk = mul i32 %.0210702, %i.y
  %i.bl = mul i32 %i.bk, %i.bj
  %i.bm = sext i32 %i.bl to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.bf, i64 %i.bm
  br label %bb.e

.preheader559:                                    ; preds = %.loopexit553, %_ZN4ncnn3MatD2Ev.exit
  %.1531.lcssa = phi <8 x float> [ %.0530, %_ZN4ncnn3MatD2Ev.exit ], [ %.7537, %.loopexit553 ] ; 2 uses
  %.0516.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit ], [ %.6522, %.loopexit553 ] ; 2 uses
  %.0504.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit ], [ %.6510, %.loopexit553 ] ; 2 uses
  %.0492.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit ], [ %.6498, %.loopexit553 ] ; 2 uses
  %.0205.lcssa = phi ptr [ %i.be, %_ZN4ncnn3MatD2Ev.exit ], [ %.6, %.loopexit553 ] ; 2 uses
  %.0201.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit ], [ %i.av, %.loopexit553 ] ; 3 uses
  %i.bn = or disjoint i32 %.0201.lcssa, 3
  %i.bo = icmp slt i32 %i.bn, %i.aa
  br i1 %i.bo, label %.lr.ph646, label %.preheader558

.lr.ph646:                                        ; preds = %.preheader559
  %i.bp = load ptr, ptr %4, align 8, !tbaa !18
  %i.bq = load i32, ptr %i.s, align 4, !tbaa !249
  %i.br = sext i32 %i.bq to i64
  %i.bs = load i64, ptr %i.t, align 8, !tbaa !49
  %factor.op.mul653 = mul i64 %i.bs, %i.br
  %i.bt = load i32, ptr %8, align 4, !tbaa !254
  %i.bu = mul i32 %.0210702, %i.y
  %i.bv = mul i32 %i.bu, %i.bt
  %i.bw = sext i32 %i.bv to i64
  %invariant.gep655 = getelementptr [4 x i8], ptr %i.bp, i64 %i.bw
  br label %bb.j

bb.e:                                             ; preds = %.lr.ph606, %.loopexit553
  %.0201605 = phi i32 [ 0, %.lr.ph606 ], [ %i.la, %.loopexit553 ] ; 2 uses
  %.0205604 = phi ptr [ %i.be, %.lr.ph606 ], [ %.6, %.loopexit553 ] ; 10 uses
  %.0492603 = phi <8 x float> [ zeroinitializer, %.lr.ph606 ], [ %.6498, %.loopexit553 ] ; 7 uses
  %.0504602 = phi <8 x float> [ zeroinitializer, %.lr.ph606 ], [ %.6510, %.loopexit553 ] ; 7 uses
  %.0516601 = phi <8 x float> [ zeroinitializer, %.lr.ph606 ], [ %.6522, %.loopexit553 ] ; 7 uses
  %.1531600 = phi <8 x float> [ %.0530, %.lr.ph606 ], [ %.7537, %.loopexit553 ] ; 7 uses
  %i.bx = sdiv i32 %.0201605, %i.y
  %i.by = sext i32 %i.bx to i64
  %.reass = mul i64 %factor.op.mul, %i.by
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.reass ; 4 uses
  br i1 %i.as, label %.preheader555, label %.loopexit556

.preheader555:                                    ; preds = %bb.e
  %i.bz = load i32, ptr %9, align 4, !tbaa !254   ; 3 uses
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %.lr.ph, label %.loopexit553

.lr.ph:                                           ; preds = %.preheader555
  %i.cb = load i32, ptr %10, align 4, !tbaa !254
  %i.cc = shl nsw i32 %i.cb, 3
  %i.cd = sext i32 %i.cc to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.0197566 = phi i32 [ 0, %.lr.ph ], [ %i.eq, %bb.f ]
  %.0198565 = phi ptr [ %gep, %.lr.ph ], [ %i.eo, %bb.f ] ; 9 uses
  %.1206564 = phi ptr [ %.0205604, %.lr.ph ], [ %i.ep, %bb.f ] ; 9 uses
  %.1493563 = phi <8 x float> [ %.0492603, %.lr.ph ], [ %i.en, %bb.f ]
  %.1505562 = phi <8 x float> [ %.0504602, %.lr.ph ], [ %i.eh, %bb.f ]
  %.1517561 = phi <8 x float> [ %.0516601, %.lr.ph ], [ %i.eb, %bb.f ]
  %.2532560 = phi <8 x float> [ %.1531600, %.lr.ph ], [ %i.dv, %bb.f ]
  %i.ce = load <8 x float>, ptr %.1206564, align 32, !tbaa !273
  %i.cf = getelementptr inbounds nuw i8, ptr %.1206564, i64 32
  %i.cg = load <8 x float>, ptr %i.cf, align 32, !tbaa !273
  %i.ch = getelementptr inbounds nuw i8, ptr %.1206564, i64 64
  %i.ci = load <8 x float>, ptr %i.ch, align 32, !tbaa !273
  %i.cj = getelementptr inbounds nuw i8, ptr %.1206564, i64 96
  %i.ck = load <8 x float>, ptr %i.cj, align 32, !tbaa !273
  %i.cl = getelementptr inbounds nuw i8, ptr %.1206564, i64 128
  %i.cm = load <8 x float>, ptr %i.cl, align 32, !tbaa !273
  %i.cn = getelementptr inbounds nuw i8, ptr %.1206564, i64 160
  %i.co = load <8 x float>, ptr %i.cn, align 32, !tbaa !273
  %i.cp = getelementptr inbounds nuw i8, ptr %.1206564, i64 192
  %i.cq = load <8 x float>, ptr %i.cp, align 32, !tbaa !273
  %i.cr = getelementptr inbounds nuw i8, ptr %.1206564, i64 224
  %i.cs = load <8 x float>, ptr %i.cr, align 32, !tbaa !273
  %i.ct = load float, ptr %.0198565, align 4, !tbaa !53
  %i.cu = insertelement <8 x float> poison, float %i.ct, i64 0
  %i.cv = shufflevector <8 x float> %i.cu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cw = fmul fast <8 x float> %i.cv, %i.ce
  %i.cx = fadd fast <8 x float> %.2532560, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %.0198565, i64 4
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !53
  %i.da = insertelement <8 x float> poison, float %i.cz, i64 0
  %i.db = shufflevector <8 x float> %i.da, <8 x float> poison, <8 x i32> zeroinitializer
  %i.dc = fmul fast <8 x float> %i.db, %i.cg
  %i.dd = fadd fast <8 x float> %.1517561, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %.0198565, i64 8
  %i.df = load float, ptr %i.de, align 4, !tbaa !53
  %i.dg = insertelement <8 x float> poison, float %i.df, i64 0
  %i.dh = shufflevector <8 x float> %i.dg, <8 x float> poison, <8 x i32> zeroinitializer
  %i.di = fmul fast <8 x float> %i.dh, %i.ci
  %i.dj = fadd fast <8 x float> %.1505562, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %.0198565, i64 12
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !53
  %i.dm = insertelement <8 x float> poison, float %i.dl, i64 0
  %i.dn = shufflevector <8 x float> %i.dm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.do = fmul fast <8 x float> %i.dn, %i.ck
  %i.dp = fadd fast <8 x float> %.1493563, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %.0198565, i64 16
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !53
  %i.ds = insertelement <8 x float> poison, float %i.dr, i64 0
  %i.dt = shufflevector <8 x float> %i.ds, <8 x float> poison, <8 x i32> zeroinitializer
  %i.du = fmul fast <8 x float> %i.dt, %i.cm
  %i.dv = fadd fast <8 x float> %i.du, %i.cx      ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.0198565, i64 20
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !53
  %i.dy = insertelement <8 x float> poison, float %i.dx, i64 0
  %i.dz = shufflevector <8 x float> %i.dy, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ea = fmul fast <8 x float> %i.dz, %i.co
  %i.eb = fadd fast <8 x float> %i.ea, %i.dd      ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.0198565, i64 24
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !53
  %i.ee = insertelement <8 x float> poison, float %i.ed, i64 0
  %i.ef = shufflevector <8 x float> %i.ee, <8 x float> poison, <8 x i32> zeroinitializer
  %i.eg = fmul fast <8 x float> %i.ef, %i.cq
  %i.eh = fadd fast <8 x float> %i.eg, %i.dj      ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.0198565, i64 28
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !53
  %i.ek = insertelement <8 x float> poison, float %i.ej, i64 0
  %i.el = shufflevector <8 x float> %i.ek, <8 x float> poison, <8 x i32> zeroinitializer
  %i.em = fmul fast <8 x float> %i.el, %i.cs
  %i.en = fadd fast <8 x float> %i.em, %i.dp      ; 2 uses
  %i.eo = getelementptr inbounds [4 x i8], ptr %.0198565, i64 %i.cd
  %i.ep = getelementptr inbounds nuw i8, ptr %.1206564, i64 256
  %i.eq = add nuw nsw i32 %.0197566, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.eq, %i.bz
  br i1 %exitcond.not, label %.loopexit556.loopexit, label %bb.f, !llvm.loop !439

.loopexit556.loopexit:                            ; preds = %bb.f
  %scevgep = getelementptr i8, ptr %.0205604, i64 256
  %i.er = add nsw i32 %i.bz, -1
  %i.es = zext nneg i32 %i.er to i64
  %i.et = shl nuw nsw i64 %i.es, 8
  %scevgep748 = getelementptr i8, ptr %scevgep, i64 %i.et
  br label %.loopexit553

.loopexit556:                                     ; preds = %bb.e
  br i1 %i.at, label %bb.g, label %.loopexit554

bb.g:                                             ; preds = %.loopexit556
  %i.eu = load i32, ptr %9, align 4, !tbaa !254   ; 3 uses
  %i.ev = icmp sgt i32 %i.eu, 0
  br i1 %i.ev, label %.lr.ph580, label %.loopexit553

.lr.ph580:                                        ; preds = %bb.g
  %i.ew = load i32, ptr %11, align 4, !tbaa !254
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %gep, i64 %i.ex
  %i.ez = load i32, ptr %10, align 4, !tbaa !254
  %i.fa = shl nsw i32 %i.ez, 2
  %i.fb = sext i32 %i.fa to i64                   ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph580, %bb.h
  %.0195579 = phi i32 [ 0, %.lr.ph580 ], [ %i.ho, %bb.h ]
  %.0196578 = phi ptr [ %i.ey, %.lr.ph580 ], [ %i.hm, %bb.h ] ; 5 uses
  %.2200577 = phi ptr [ %gep, %.lr.ph580 ], [ %i.hl, %bb.h ] ; 5 uses
  %.3208576 = phi ptr [ %.0205604, %.lr.ph580 ], [ %i.hn, %bb.h ] ; 9 uses
  %.3495575 = phi <8 x float> [ %.0492603, %.lr.ph580 ], [ %i.hk, %bb.h ]
  %.3507574 = phi <8 x float> [ %.0504602, %.lr.ph580 ], [ %i.he, %bb.h ]
  %.3519573 = phi <8 x float> [ %.0516601, %.lr.ph580 ], [ %i.gy, %bb.h ]
  %.4534572 = phi <8 x float> [ %.1531600, %.lr.ph580 ], [ %i.gs, %bb.h ]
  %i.fc = load <8 x float>, ptr %.3208576, align 32, !tbaa !273
end_hunk_7
begin_hunk_8_@_ZN4ncnnL20convolution1d_packedERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.fg = load <8 x float>, ptr %i.ff, align 32, !tbaa !273
  %i.fh = getelementptr inbounds nuw i8, ptr %.3208576, i64 96
  %i.fi = load <8 x float>, ptr %i.fh, align 32, !tbaa !273
  %i.fj = getelementptr inbounds nuw i8, ptr %.3208576, i64 128
  %i.fk = load <8 x float>, ptr %i.fj, align 32, !tbaa !273
  %i.fl = getelementptr inbounds nuw i8, ptr %.3208576, i64 160
  %i.fm = load <8 x float>, ptr %i.fl, align 32, !tbaa !273
  %i.fn = getelementptr inbounds nuw i8, ptr %.3208576, i64 192
  %i.fo = load <8 x float>, ptr %i.fn, align 32, !tbaa !273
  %i.fp = getelementptr inbounds nuw i8, ptr %.3208576, i64 224
  %i.fq = load <8 x float>, ptr %i.fp, align 32, !tbaa !273
  %i.fr = load float, ptr %.2200577, align 4, !tbaa !53
  %i.fs = insertelement <8 x float> poison, float %i.fr, i64 0
  %i.ft = shufflevector <8 x float> %i.fs, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fu = fmul fast <8 x float> %i.ft, %i.fc
  %i.fv = fadd fast <8 x float> %.4534572, %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %.2200577, i64 4
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !53
  %i.fy = insertelement <8 x float> poison, float %i.fx, i64 0
  %i.fz = shufflevector <8 x float> %i.fy, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ga = fmul fast <8 x float> %i.fz, %i.fe
  %i.gb = fadd fast <8 x float> %.3519573, %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %.2200577, i64 8
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !53
  %i.ge = insertelement <8 x float> poison, float %i.gd, i64 0
  %i.gf = shufflevector <8 x float> %i.ge, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gg = fmul fast <8 x float> %i.gf, %i.fg
  %i.gh = fadd fast <8 x float> %.3507574, %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %.2200577, i64 12
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !53
  %i.gk = insertelement <8 x float> poison, float %i.gj, i64 0
  %i.gl = shufflevector <8 x float> %i.gk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gm = fmul fast <8 x float> %i.gl, %i.fi
  %i.gn = fadd fast <8 x float> %.3495575, %i.gm
  %i.go = load float, ptr %.0196578, align 4, !tbaa !53
  %i.gp = insertelement <8 x float> poison, float %i.go, i64 0
  %i.gq = shufflevector <8 x float> %i.gp, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gr = fmul fast <8 x float> %i.gq, %i.fk
  %i.gs = fadd fast <8 x float> %i.gr, %i.fv      ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.0196578, i64 4
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !53
  %i.gv = insertelement <8 x float> poison, float %i.gu, i64 0
  %i.gw = shufflevector <8 x float> %i.gv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gx = fmul fast <8 x float> %i.gw, %i.fm
  %i.gy = fadd fast <8 x float> %i.gx, %i.gb      ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.0196578, i64 8
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !53
  %i.hb = insertelement <8 x float> poison, float %i.ha, i64 0
  %i.hc = shufflevector <8 x float> %i.hb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hd = fmul fast <8 x float> %i.hc, %i.fo
  %i.he = fadd fast <8 x float> %i.hd, %i.gh      ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.0196578, i64 12
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !53
  %i.hh = insertelement <8 x float> poison, float %i.hg, i64 0
  %i.hi = shufflevector <8 x float> %i.hh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hj = fmul fast <8 x float> %i.hi, %i.fq
  %i.hk = fadd fast <8 x float> %i.hj, %i.gn      ; 2 uses
  %i.hl = getelementptr inbounds [4 x i8], ptr %.2200577, i64 %i.fb
  %i.hm = getelementptr inbounds [4 x i8], ptr %.0196578, i64 %i.fb
  %i.hn = getelementptr inbounds nuw i8, ptr %.3208576, i64 256
  %i.ho = add nuw nsw i32 %.0195579, 1            ; 2 uses
  %exitcond751.not = icmp eq i32 %i.ho, %i.eu
  br i1 %exitcond751.not, label %.loopexit554.loopexit, label %bb.h, !llvm.loop !440

.loopexit554.loopexit:                            ; preds = %bb.h
  %scevgep749 = getelementptr i8, ptr %.0205604, i64 256
  %i.hp = add nsw i32 %i.eu, -1
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = shl nuw nsw i64 %i.hq, 8
  %scevgep750 = getelementptr i8, ptr %scevgep749, i64 %i.hr
  br label %.loopexit553

.loopexit554:                                     ; preds = %.loopexit556
  br i1 %i.au, label %.preheader552, label %.loopexit553

.preheader552:                                    ; preds = %.loopexit554
  %i.hs = load i32, ptr %9, align 4, !tbaa !254   ; 3 uses
  %i.ht = icmp sgt i32 %i.hs, 0
  br i1 %i.ht, label %.lr.ph594, label %.loopexit553

.lr.ph594:                                        ; preds = %.preheader552
  %i.hu = load i32, ptr %11, align 4, !tbaa !254  ; 7 uses
  %i.hv = sext i32 %i.hu to i64
  %i.hw = shl nsw i32 %i.hu, 1
  %i.hx = sext i32 %i.hw to i64
  %i.hy = mul nsw i32 %i.hu, 3
  %i.hz = sext i32 %i.hy to i64
  %i.ia = shl nsw i32 %i.hu, 2
  %i.ib = sext i32 %i.ia to i64
  %i.ic = mul nsw i32 %i.hu, 5
  %i.id = sext i32 %i.ic to i64
  %i.ie = mul nsw i32 %i.hu, 6
  %i.if = sext i32 %i.ie to i64
  %i.ig = mul nsw i32 %i.hu, 7
  %i.ih = sext i32 %i.ig to i64
  %i.ii = load i32, ptr %10, align 4, !tbaa !254
  %i.ij = sext i32 %i.ii to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph594, %bb.i
  %.0194593 = phi i32 [ 0, %.lr.ph594 ], [ %i.kw, %bb.i ]
  %.4592 = phi ptr [ %gep, %.lr.ph594 ], [ %i.ku, %bb.i ] ; 9 uses
  %.5591 = phi ptr [ %.0205604, %.lr.ph594 ], [ %i.kv, %bb.i ] ; 9 uses
  %.5497590 = phi <8 x float> [ %.0492603, %.lr.ph594 ], [ %i.kt, %bb.i ]
  %.5509589 = phi <8 x float> [ %.0504602, %.lr.ph594 ], [ %i.kn, %bb.i ]
  %.5521588 = phi <8 x float> [ %.0516601, %.lr.ph594 ], [ %i.kh, %bb.i ]
  %.6536587 = phi <8 x float> [ %.1531600, %.lr.ph594 ], [ %i.kb, %bb.i ]
  %i.ik = load <8 x float>, ptr %.5591, align 32, !tbaa !273
  %i.il = getelementptr inbounds nuw i8, ptr %.5591, i64 32
  %i.im = load <8 x float>, ptr %i.il, align 32, !tbaa !273
  %i.in = getelementptr inbounds nuw i8, ptr %.5591, i64 64
  %i.io = load <8 x float>, ptr %i.in, align 32, !tbaa !273
  %i.ip = getelementptr inbounds nuw i8, ptr %.5591, i64 96
  %i.iq = load <8 x float>, ptr %i.ip, align 32, !tbaa !273
  %i.ir = getelementptr inbounds nuw i8, ptr %.5591, i64 128
  %i.is = load <8 x float>, ptr %i.ir, align 32, !tbaa !273
  %i.it = getelementptr inbounds nuw i8, ptr %.5591, i64 160
  %i.iu = load <8 x float>, ptr %i.it, align 32, !tbaa !273
  %i.iv = getelementptr inbounds nuw i8, ptr %.5591, i64 192
  %i.iw = load <8 x float>, ptr %i.iv, align 32, !tbaa !273
  %i.ix = getelementptr inbounds nuw i8, ptr %.5591, i64 224
  %i.iy = load <8 x float>, ptr %i.ix, align 32, !tbaa !273
  %i.iz = load float, ptr %.4592, align 4, !tbaa !53
  %i.ja = insertelement <8 x float> poison, float %i.iz, i64 0
  %i.jb = shufflevector <8 x float> %i.ja, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jc = fmul fast <8 x float> %i.jb, %i.ik
  %i.jd = fadd fast <8 x float> %.6536587, %i.jc
  %i.je = getelementptr inbounds [4 x i8], ptr %.4592, i64 %i.hv
  %i.jf = load float, ptr %i.je, align 4, !tbaa !53
  %i.jg = insertelement <8 x float> poison, float %i.jf, i64 0
  %i.jh = shufflevector <8 x float> %i.jg, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ji = fmul fast <8 x float> %i.jh, %i.im
  %i.jj = fadd fast <8 x float> %.5521588, %i.ji
  %i.jk = getelementptr inbounds [4 x i8], ptr %.4592, i64 %i.hx
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !53
  %i.jm = insertelement <8 x float> poison, float %i.jl, i64 0
  %i.jn = shufflevector <8 x float> %i.jm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jo = fmul fast <8 x float> %i.jn, %i.io
  %i.jp = fadd fast <8 x float> %.5509589, %i.jo
  %i.jq = getelementptr inbounds [4 x i8], ptr %.4592, i64 %i.hz
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !53
  %i.js = insertelement <8 x float> poison, float %i.jr, i64 0
  %i.jt = shufflevector <8 x float> %i.js, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ju = fmul fast <8 x float> %i.jt, %i.iq
  %i.jv = fadd fast <8 x float> %.5497590, %i.ju
  %i.jw = getelementptr inbounds [4 x i8], ptr %.4592, i64 %i.ib
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !53
  %i.jy = insertelement <8 x float> poison, float %i.jx, i64 0
  %i.jz = shufflevector <8 x float> %i.jy, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ka = fmul fast <8 x float> %i.jz, %i.is
  %i.kb = fadd fast <8 x float> %i.ka, %i.jd      ; 2 uses
  %i.kc = getelementptr inbounds [4 x i8], ptr %.4592, i64 %i.id
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !53
  %i.ke = insertelement <8 x float> poison, float %i.kd, i64 0
  %i.kf = shufflevector <8 x float> %i.ke, <8 x float> poison, <8 x i32> zeroinitializer
  %i.kg = fmul fast <8 x float> %i.kf, %i.iu
  %i.kh = fadd fast <8 x float> %i.kg, %i.jj      ; 2 uses
  %i.ki = getelementptr inbounds [4 x i8], ptr %.4592, i64 %i.if
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !53
  %i.kk = insertelement <8 x float> poison, float %i.kj, i64 0
  %i.kl = shufflevector <8 x float> %i.kk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.km = fmul fast <8 x float> %i.kl, %i.iw
  %i.kn = fadd fast <8 x float> %i.km, %i.jp      ; 2 uses
  %i.ko = getelementptr inbounds [4 x i8], ptr %.4592, i64 %i.ih
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !53
  %i.kq = insertelement <8 x float> poison, float %i.kp, i64 0
  %i.kr = shufflevector <8 x float> %i.kq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ks = fmul fast <8 x float> %i.kr, %i.iy
  %i.kt = fadd fast <8 x float> %i.ks, %i.jv      ; 2 uses
  %i.ku = getelementptr inbounds [4 x i8], ptr %.4592, i64 %i.ij
  %i.kv = getelementptr inbounds nuw i8, ptr %.5591, i64 256
  %i.kw = add nuw nsw i32 %.0194593, 1            ; 2 uses
  %exitcond754.not = icmp eq i32 %i.kw, %i.hs
  br i1 %exitcond754.not, label %.loopexit553.loopexit, label %bb.i, !llvm.loop !441

.loopexit553.loopexit:                            ; preds = %bb.i
  %scevgep752 = getelementptr i8, ptr %.0205604, i64 256
  %i.kx = add nsw i32 %i.hs, -1
  %i.ky = zext nneg i32 %i.kx to i64
  %i.kz = shl nuw nsw i64 %i.ky, 8
  %scevgep753 = getelementptr i8, ptr %scevgep752, i64 %i.kz
  br label %.loopexit553

.loopexit553:                                     ; preds = %.preheader555, %.loopexit556.loopexit, %bb.g, %.loopexit554.loopexit, %.loopexit553.loopexit, %.preheader552, %.loopexit554
  %.7537 = phi nsz <8 x float> [ %.1531600, %.loopexit554 ], [ %.1531600, %.preheader552 ], [ %i.kb, %.loopexit553.loopexit ], [ %.1531600, %bb.g ], [ %i.gs, %.loopexit554.loopexit ], [ %i.dv, %.loopexit556.loopexit ], [ %.1531600, %.preheader555 ] ; 2 uses
  %.6522 = phi nsz <8 x float> [ %.0516601, %.loopexit554 ], [ %.0516601, %.preheader552 ], [ %i.kh, %.loopexit553.loopexit ], [ %.0516601, %bb.g ], [ %i.gy, %.loopexit554.loopexit ], [ %i.eb, %.loopexit556.loopexit ], [ %.0516601, %.preheader555 ] ; 2 uses
  %.6510 = phi nsz <8 x float> [ %.0504602, %.loopexit554 ], [ %.0504602, %.preheader552 ], [ %i.kn, %.loopexit553.loopexit ], [ %.0504602, %bb.g ], [ %i.he, %.loopexit554.loopexit ], [ %i.eh, %.loopexit556.loopexit ], [ %.0504602, %.preheader555 ] ; 2 uses
  %.6498 = phi nsz <8 x float> [ %.0492603, %.loopexit554 ], [ %.0492603, %.preheader552 ], [ %i.kt, %.loopexit553.loopexit ], [ %.0492603, %bb.g ], [ %i.hk, %.loopexit554.loopexit ], [ %i.en, %.loopexit556.loopexit ], [ %.0492603, %.preheader555 ] ; 2 uses
  %.6 = phi ptr [ %.0205604, %.loopexit554 ], [ %.0205604, %.preheader552 ], [ %scevgep753, %.loopexit553.loopexit ], [ %.0205604, %bb.g ], [ %scevgep750, %.loopexit554.loopexit ], [ %scevgep748, %.loopexit556.loopexit ], [ %.0205604, %.preheader555 ] ; 2 uses
  %i.la = add nuw nsw i32 %.0201605, 8            ; 2 uses
  %i.lb = or disjoint i32 %i.la, 7
  %i.lc = icmp slt i32 %i.lb, %i.aa
  br i1 %i.lc, label %bb.e, label %.preheader559, !llvm.loop !442

.preheader558:                                    ; preds = %.loopexit, %.preheader559
  %.8538.lcssa = phi <8 x float> [ %.1531.lcssa, %.preheader559 ], [ %.12542, %.loopexit ] ; 3 uses
  %.7523.lcssa = phi <8 x float> [ %.0516.lcssa, %.preheader559 ], [ %.11527, %.loopexit ] ; 3 uses
  %.7511.lcssa = phi <8 x float> [ %.0504.lcssa, %.preheader559 ], [ %.11515, %.loopexit ]
  %.7499.lcssa = phi <8 x float> [ %.0492.lcssa, %.preheader559 ], [ %.11503, %.loopexit ]
  %.7.lcssa = phi ptr [ %.0205.lcssa, %.preheader559 ], [ %.11, %.loopexit ] ; 3 uses
  %.1202.lcssa = phi i32 [ %.0201.lcssa, %.preheader559 ], [ %i.rj, %.loopexit ] ; 6 uses
  %i.ld = or disjoint i32 %.1202.lcssa, 1
  %i.le = icmp slt i32 %i.ld, %i.aa
  br i1 %i.le, label %.lr.ph670, label %.preheader557

.lr.ph670:                                        ; preds = %.preheader558
  %i.lf = load ptr, ptr %4, align 8, !tbaa !18
  %i.lg = load i32, ptr %i.s, align 4, !tbaa !249
  %i.lh = sext i32 %i.lg to i64
  %i.li = load i64, ptr %i.t, align 8, !tbaa !49
  %factor.op.mul675 = mul i64 %i.li, %i.lh
  %i.lj = load i32, ptr %8, align 4, !tbaa !254
  %i.lk = mul nsw i32 %i.lj, %.0210702
  %i.ll = sext i32 %i.lk to i64
  %invariant.gep677 = getelementptr [4 x i8], ptr %i.lf, i64 %i.ll
  %i.lm = load i32, ptr %9, align 4, !tbaa !254   ; 6 uses
  %i.ln = icmp sgt i32 %i.lm, 0
  br i1 %i.ln, label %.lr.ph670.split.us, label %.lr.ph670.split.preheader

.lr.ph670.split.preheader:                        ; preds = %.lr.ph670
  %i.lo = add i32 %.1202.lcssa, 2
  %15 = add i32 %.1202.lcssa, 3
  %smax = call i32 @llvm.smax.i32(i32 %i.aa, i32 %15)
  %16 = add i32 %smax, -2
  %i.lp = sub i32 %16, %.1202.lcssa
  %i.lq = and i32 %i.lp, -2
  %i.lr = add i32 %i.lo, %i.lq
  br label %.preheader557

.lr.ph670.split.us:                               ; preds = %.lr.ph670
  %i.ls = load i32, ptr %11, align 4, !tbaa !254
  %i.lt = sext i32 %i.ls to i64                   ; 3 uses
  %i.lu = load i32, ptr %10, align 4, !tbaa !254
  %i.lv = sext i32 %i.lu to i64                   ; 2 uses
  %i.lw = add nsw i32 %i.lm, -1
  %i.lx = zext nneg i32 %i.lw to i64
  %i.ly = shl nuw nsw i64 %i.lx, 6
  %i.lz = zext i32 %.1202.lcssa to i64
  %xtraiter = and i32 %i.lm, 1
  %i.ma = icmp eq i32 %i.lm, 1
  %unroll_iter = and i32 %i.lm, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod878 = trunc i32 %i.lm to i1
  br label %.lr.ph662.us

.lr.ph662.us:                                     ; preds = %._crit_edge.us, %.lr.ph670.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.us ], [ %i.lz, %.lr.ph670.split.us ] ; 2 uses
  %.12668.us = phi ptr [ %scevgep762, %._crit_edge.us ], [ %.7.lcssa, %.lr.ph670.split.us ] ; 3 uses
  %.12528667.us = phi <8 x float> [ %.lcssa873, %._crit_edge.us ], [ %.7523.lcssa, %.lr.ph670.split.us ] ; 2 uses
  %.13543666.us = phi <8 x float> [ %.lcssa874, %._crit_edge.us ], [ %.8538.lcssa, %.lr.ph670.split.us ] ; 2 uses
  %.reass676.us = mul i64 %factor.op.mul675, %indvars.iv
  %gep678.us = getelementptr i8, ptr %invariant.gep677, i64 %.reass676.us ; 2 uses
  br i1 %i.ma, label %.epil.preheader, label %.lr.ph662.us.new

.lr.ph662.us.new:                                 ; preds = %.lr.ph662.us, %.lr.ph662.us.new
  %.0190660.us = phi ptr [ %i.nf, %.lr.ph662.us.new ], [ %gep678.us, %.lr.ph662.us ] ; 3 uses
  %.13659.us = phi ptr [ %i.ng, %.lr.ph662.us.new ], [ %.12668.us, %.lr.ph662.us ] ; 5 uses
  %.13529658.us = phi <8 x float> [ %i.ne, %.lr.ph662.us.new ], [ %.12528667.us, %.lr.ph662.us ]
  %.14544657.us = phi <8 x float> [ %i.my, %.lr.ph662.us.new ], [ %.13543666.us, %.lr.ph662.us ]
  %niter = phi i32 [ %niter.next.1, %.lr.ph662.us.new ], [ 0, %.lr.ph662.us ]
  %i.mb = load <8 x float>, ptr %.13659.us, align 32, !tbaa !273
  %i.mc = getelementptr inbounds nuw i8, ptr %.13659.us, i64 32
  %i.md = load <8 x float>, ptr %i.mc, align 32, !tbaa !273
  %i.me = load float, ptr %.0190660.us, align 4, !tbaa !53
  %i.mf = insertelement <8 x float> poison, float %i.me, i64 0
  %i.mg = shufflevector <8 x float> %i.mf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.mh = fmul fast <8 x float> %i.mg, %i.mb
  %i.mi = fadd fast <8 x float> %i.mh, %.14544657.us
  %i.mj = getelementptr inbounds [4 x i8], ptr %.0190660.us, i64 %i.lt
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !53
  %i.ml = insertelement <8 x float> poison, float %i.mk, i64 0
  %i.mm = shufflevector <8 x float> %i.ml, <8 x float> poison, <8 x i32> zeroinitializer
  %i.mn = fmul fast <8 x float> %i.mm, %i.md
  %i.mo = fadd fast <8 x float> %i.mn, %.13529658.us
  %i.mp = getelementptr inbounds [4 x i8], ptr %.0190660.us, i64 %i.lv ; 3 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.13659.us, i64 64
  %i.mr = load <8 x float>, ptr %i.mq, align 32, !tbaa !273
  %i.ms = getelementptr inbounds nuw i8, ptr %.13659.us, i64 96
  %i.mt = load <8 x float>, ptr %i.ms, align 32, !tbaa !273
  %i.mu = load float, ptr %i.mp, align 4, !tbaa !53
  %i.mv = insertelement <8 x float> poison, float %i.mu, i64 0
  %i.mw = shufflevector <8 x float> %i.mv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.mx = fmul fast <8 x float> %i.mw, %i.mr
  %i.my = fadd fast <8 x float> %i.mx, %i.mi      ; 3 uses
  %i.mz = getelementptr inbounds [4 x i8], ptr %i.mp, i64 %i.lt
  %i.na = load float, ptr %i.mz, align 4, !tbaa !53
  %i.nb = insertelement <8 x float> poison, float %i.na, i64 0
  %i.nc = shufflevector <8 x float> %i.nb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nd = fmul fast <8 x float> %i.nc, %i.mt
  %i.ne = fadd fast <8 x float> %i.nd, %i.mo      ; 3 uses
  %i.nf = getelementptr inbounds [4 x i8], ptr %i.mp, i64 %i.lv ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.13659.us, i64 128 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.lr.ph662.us.new, !llvm.loop !443

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph662.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph662.us
  %.0190660.us.epil.init = phi ptr [ %gep678.us, %.lr.ph662.us ], [ %i.nf, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.13659.us.epil.init = phi ptr [ %.12668.us, %.lr.ph662.us ], [ %i.ng, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.13529658.us.epil.init = phi <8 x float> [ %.12528667.us, %.lr.ph662.us ], [ %i.ne, %._crit_edge.us.unr-lcssa ]
  %.14544657.us.epil.init = phi <8 x float> [ %.13543666.us, %.lr.ph662.us ], [ %i.my, %._crit_edge.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod878)
  %i.nh = load <8 x float>, ptr %.13659.us.epil.init, align 32, !tbaa !273
  %i.ni = getelementptr inbounds nuw i8, ptr %.13659.us.epil.init, i64 32
  %i.nj = load <8 x float>, ptr %i.ni, align 32, !tbaa !273
  %i.nk = load float, ptr %.0190660.us.epil.init, align 4, !tbaa !53
  %i.nl = insertelement <8 x float> poison, float %i.nk, i64 0
  %i.nm = shufflevector <8 x float> %i.nl, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nn = fmul fast <8 x float> %i.nm, %i.nh
  %i.no = fadd fast <8 x float> %i.nn, %.14544657.us.epil.init
  %i.np = getelementptr inbounds [4 x i8], ptr %.0190660.us.epil.init, i64 %i.lt
  %i.nq = load float, ptr %i.np, align 4, !tbaa !53
  %i.nr = insertelement <8 x float> poison, float %i.nq, i64 0
  %i.ns = shufflevector <8 x float> %i.nr, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nt = fmul fast <8 x float> %i.ns, %i.nj
  %i.nu = fadd fast <8 x float> %i.nt, %.13529658.us.epil.init
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.lcssa874 = phi <8 x float> [ %i.my, %._crit_edge.us.unr-lcssa ], [ %i.no, %.epil.preheader ] ; 2 uses
  %.lcssa873 = phi <8 x float> [ %i.ne, %._crit_edge.us.unr-lcssa ], [ %i.nu, %.epil.preheader ] ; 2 uses
  %scevgep761 = getelementptr i8, ptr %.12668.us, i64 64
  %scevgep762 = getelementptr i8, ptr %scevgep761, i64 %i.ly ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.nv = trunc i64 %indvars.iv.next to i32
  %i.nw = or i32 %i.nv, 1
  %i.nx = icmp slt i32 %i.nw, %i.aa
  br i1 %i.nx, label %.lr.ph662.us, label %.preheader557.loopexit, !llvm.loop !444

bb.j:                                             ; preds = %.lr.ph646, %.loopexit
  %.1202645 = phi i32 [ %.0201.lcssa, %.lr.ph646 ], [ %i.rj, %.loopexit ] ; 2 uses
  %.7644 = phi ptr [ %.0205.lcssa, %.lr.ph646 ], [ %.11, %.loopexit ] ; 7 uses
  %.7499643 = phi <8 x float> [ %.0492.lcssa, %.lr.ph646 ], [ %.11503, %.loopexit ] ; 5 uses
  %.7511642 = phi <8 x float> [ %.0504.lcssa, %.lr.ph646 ], [ %.11515, %.loopexit ] ; 5 uses
  %.7523641 = phi <8 x float> [ %.0516.lcssa, %.lr.ph646 ], [ %.11527, %.loopexit ] ; 5 uses
  %.8538640 = phi <8 x float> [ %.1531.lcssa, %.lr.ph646 ], [ %.12542, %.loopexit ] ; 5 uses
  %i.ny = sdiv i32 %.1202645, %i.y
  %i.nz = sext i32 %i.ny to i64
  %.reass654 = mul i64 %factor.op.mul653, %i.nz
  %gep656 = getelementptr i8, ptr %invariant.gep655, i64 %.reass654 ; 2 uses
  br i1 %i.at, label %.preheader550, label %.loopexit551

.preheader550:                                    ; preds = %bb.j
  %i.oa = load i32, ptr %9, align 4, !tbaa !254   ; 3 uses
  %i.ob = icmp sgt i32 %i.oa, 0
  br i1 %i.ob, label %.lr.ph620, label %.loopexit

.lr.ph620:                                        ; preds = %.preheader550
  %i.oc = load i32, ptr %10, align 4, !tbaa !254
  %i.od = shl nsw i32 %i.oc, 2
  %i.oe = sext i32 %i.od to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph620, %bb.k
  %.0192619 = phi i32 [ 0, %.lr.ph620 ], [ %i.pl, %bb.k ]
  %.0193618 = phi ptr [ %gep656, %.lr.ph620 ], [ %i.pj, %bb.k ] ; 5 uses
  %.8617 = phi ptr [ %.7644, %.lr.ph620 ], [ %i.pk, %bb.k ] ; 5 uses
  %.8500616 = phi <8 x float> [ %.7499643, %.lr.ph620 ], [ %i.pi, %bb.k ]
  %.8512615 = phi <8 x float> [ %.7511642, %.lr.ph620 ], [ %i.pc, %bb.k ]
  %.8524614 = phi <8 x float> [ %.7523641, %.lr.ph620 ], [ %i.ow, %bb.k ]
  %.9539613 = phi <8 x float> [ %.8538640, %.lr.ph620 ], [ %i.oq, %bb.k ]
  %i.of = load <8 x float>, ptr %.8617, align 32, !tbaa !273
  %i.og = getelementptr inbounds nuw i8, ptr %.8617, i64 32
  %i.oh = load <8 x float>, ptr %i.og, align 32, !tbaa !273
  %i.oi = getelementptr inbounds nuw i8, ptr %.8617, i64 64
  %i.oj = load <8 x float>, ptr %i.oi, align 32, !tbaa !273
  %i.ok = getelementptr inbounds nuw i8, ptr %.8617, i64 96
  %i.ol = load <8 x float>, ptr %i.ok, align 32, !tbaa !273
  %i.om = load float, ptr %.0193618, align 4, !tbaa !53
  %i.on = insertelement <8 x float> poison, float %i.om, i64 0
  %i.oo = shufflevector <8 x float> %i.on, <8 x float> poison, <8 x i32> zeroinitializer
  %i.op = fmul fast <8 x float> %i.oo, %i.of
  %i.oq = fadd fast <8 x float> %i.op, %.9539613  ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.0193618, i64 4
  %i.os = load float, ptr %i.or, align 4, !tbaa !53
  %i.ot = insertelement <8 x float> poison, float %i.os, i64 0
  %i.ou = shufflevector <8 x float> %i.ot, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ov = fmul fast <8 x float> %i.ou, %i.oh
  %i.ow = fadd fast <8 x float> %i.ov, %.8524614  ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.0193618, i64 8
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !53
  %i.oz = insertelement <8 x float> poison, float %i.oy, i64 0
  %i.pa = shufflevector <8 x float> %i.oz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.pb = fmul fast <8 x float> %i.pa, %i.oj
  %i.pc = fadd fast <8 x float> %i.pb, %.8512615  ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.0193618, i64 12
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !53
  %i.pf = insertelement <8 x float> poison, float %i.pe, i64 0
  %i.pg = shufflevector <8 x float> %i.pf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ph = fmul fast <8 x float> %i.pg, %i.ol
  %i.pi = fadd fast <8 x float> %i.ph, %.8500616  ; 2 uses
  %i.pj = getelementptr inbounds [4 x i8], ptr %.0193618, i64 %i.oe
  %i.pk = getelementptr inbounds nuw i8, ptr %.8617, i64 128
  %i.pl = add nuw nsw i32 %.0192619, 1            ; 2 uses
  %exitcond757.not = icmp eq i32 %i.pl, %i.oa
  br i1 %exitcond757.not, label %.loopexit551.loopexit, label %bb.k, !llvm.loop !445

.loopexit551.loopexit:                            ; preds = %bb.k
  %scevgep755 = getelementptr i8, ptr %.7644, i64 128
  %i.pm = add nsw i32 %i.oa, -1
  %i.pn = zext nneg i32 %i.pm to i64
  %i.po = shl nuw nsw i64 %i.pn, 7
  %scevgep756 = getelementptr i8, ptr %scevgep755, i64 %i.po
  br label %.loopexit

.loopexit551:                                     ; preds = %bb.j
  br i1 %i.au, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.loopexit551
  %i.pp = load i32, ptr %9, align 4, !tbaa !254   ; 3 uses
  %i.pq = icmp sgt i32 %i.pp, 0
  br i1 %i.pq, label %.lr.ph634, label %.loopexit

.lr.ph634:                                        ; preds = %.preheader
  %i.pr = load i32, ptr %11, align 4, !tbaa !254  ; 3 uses
  %i.ps = sext i32 %i.pr to i64
  %i.pt = shl nsw i32 %i.pr, 1
  %i.pu = sext i32 %i.pt to i64
  %i.pv = mul nsw i32 %i.pr, 3
  %i.pw = sext i32 %i.pv to i64
  %i.px = load i32, ptr %10, align 4, !tbaa !254
  %i.py = sext i32 %i.px to i64
end_hunk_8
begin_hunk_9_@_ZN4ncnnL20convolution1d_packedERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %.sroa.0.8.vec.extract = extractelement <8 x float> %.0.i, i64 2
  %i.aaa = shl nsw i32 %i.zx, 1
  %i.aab = sext i32 %i.aaa to i64
  %i.aac = getelementptr inbounds [4 x i8], ptr %.0211701, i64 %i.aab
  store float %.sroa.0.8.vec.extract, ptr %i.aac, align 4, !tbaa !53
  %.sroa.0.12.vec.extract = extractelement <8 x float> %.0.i, i64 3
  %i.aad = mul nsw i32 %i.zx, 3
  %i.aae = sext i32 %i.aad to i64
  %i.aaf = getelementptr inbounds [4 x i8], ptr %.0211701, i64 %i.aae
  store float %.sroa.0.12.vec.extract, ptr %i.aaf, align 4, !tbaa !53
  %.sroa.0.16.vec.extract = extractelement <8 x float> %.0.i, i64 4
  %i.aag = shl nsw i32 %i.zx, 2
  %i.aah = sext i32 %i.aag to i64
  %i.aai = getelementptr inbounds [4 x i8], ptr %.0211701, i64 %i.aah
  store float %.sroa.0.16.vec.extract, ptr %i.aai, align 4, !tbaa !53
  %.sroa.0.20.vec.extract = extractelement <8 x float> %.0.i, i64 5
  %i.aaj = mul nsw i32 %i.zx, 5
  %i.aak = sext i32 %i.aaj to i64
  %i.aal = getelementptr inbounds [4 x i8], ptr %.0211701, i64 %i.aak
  store float %.sroa.0.20.vec.extract, ptr %i.aal, align 4, !tbaa !53
  %.sroa.0.24.vec.extract = extractelement <8 x float> %.0.i, i64 6
  %i.aam = mul nsw i32 %i.zx, 6
  %i.aan = sext i32 %i.aam to i64
  %i.aao = getelementptr inbounds [4 x i8], ptr %.0211701, i64 %i.aan
  store float %.sroa.0.24.vec.extract, ptr %i.aao, align 4, !tbaa !53
  %.sroa.0.28.vec.extract = extractelement <8 x float> %.0.i, i64 7
  %i.aap = mul nsw i32 %i.zx, 7
  %i.aaq = sext i32 %i.aap to i64
  %i.aar = getelementptr inbounds [4 x i8], ptr %.0211701, i64 %i.aaq
  store float %.sroa.0.28.vec.extract, ptr %i.aar, align 4, !tbaa !53
  %i.aas = getelementptr inbounds nuw i8, ptr %.0211701, i64 4
  br label %.thread547

.thread547:                                       ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit, %bb.o, %.thread, %bb.p
  %.3214 = phi ptr [ %i.aas, %bb.p ], [ %.0211701, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ], [ %i.zq, %.thread ], [ %i.zw, %bb.o ]
  %i.aat = add nuw nsw i32 %.0210702, 1           ; 2 uses
  %exitcond771.not = icmp eq i32 %i.aat, %i.x
  br i1 %exitcond771.not, label %._crit_edge, label %bb.c, !llvm.loop !450

._crit_edge708:                                   ; preds = %._crit_edge, %.lr.ph707, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge708, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare !callback !451 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.round.ps.256(<8 x float>, i32 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #14

declare void @_ZN4ncnn7flattenERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn24cast_bfloat16_to_float32ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn9ParamDict3setEif(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, float noundef nofpclass(nan inf)) local_unnamed_addr #1

declare void @_ZN4ncnn9ParamDict3setEiRKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

declare void @_ZN4ncnn20ModelBinFromMatArrayC1EPKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4ncnn20ModelBinFromMatArrayD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !254    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 %i.g, ptr %i.b, align 4, !tbaa !254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i32 1, ptr %i.c, align 4, !tbaa !254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i32 0, ptr %i.d, align 4, !tbaa !254
  %i.h = load i32, ptr %0, align 4, !tbaa !254    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !254
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !254
  %i.k = load i32, ptr %i.a, align 4, !tbaa !254  ; 2 uses
  %.not782 = icmp sgt i32 %i.k, %i.j
  br i1 %.not782, label %._crit_edge786, label %.lr.ph785

.lr.ph785:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.u = load i32, ptr %i.n, align 4, !tbaa !249  ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph785.split, label %._crit_edge786

.lr.ph785.splitthread-pre-split:                  ; preds = %._crit_edge
  %i.w = add i32 %.0215783, 1
  %.pr = load i32, ptr %i.n, align 4, !tbaa !249
  br label %.lr.ph785.split

.lr.ph785.split:                                  ; preds = %.lr.ph785, %.lr.ph785.splitthread-pre-split
  %i.x = phi i32 [ %.pr, %.lr.ph785.splitthread-pre-split ], [ %i.u, %.lr.ph785 ] ; 3 uses
  %.0215783 = phi i32 [ %i.w, %.lr.ph785.splitthread-pre-split ], [ %i.k, %.lr.ph785 ] ; 3 uses
  %i.y = load i32, ptr %i.l, align 8, !tbaa !251  ; 8 uses
  %i.z = load i32, ptr %i.m, align 8, !tbaa !264
  %i.aa = mul i32 %i.z, %i.y                      ; 10 uses
  %i.ab = load i32, ptr %i.o, align 8, !tbaa !251 ; 2 uses
  %i.ac = icmp sgt i32 %i.x, 0
  br i1 %i.ac, label %.lr.ph781, label %._crit_edge

.lr.ph781:                                        ; preds = %.lr.ph785.split
  %i.ad = load ptr, ptr %5, align 8, !tbaa !18
  %i.ae = load i32, ptr %3, align 4, !tbaa !254
  %i.af = shl nsw i32 %.0215783, 3
  %i.ag = add nsw i32 %i.ae, %i.af                ; 3 uses
  %i.ah = sdiv i32 %i.ag, %i.ab
  %i.ai = sext i32 %i.ah to i64
  %i.aj = zext nneg i32 %i.x to i64
  %i.ak = mul nsw i64 %i.ai, %i.aj
  %i.al = load i64, ptr %i.p, align 8, !tbaa !49
  %i.am = mul i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.am
  %i.ao = sext i32 %i.ag to i64
  %i.ap = sdiv i32 %i.ag, 8
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp sgt i32 %i.aa, 7
  %i.as = icmp eq i32 %i.y, 8
  %i.at = icmp eq i32 %i.y, 4                     ; 2 uses
  %i.au = icmp eq i32 %i.y, 1                     ; 2 uses
  %i.av = and i32 %i.aa, -8
  br label %bb.c

._crit_edge:                                      ; preds = %.thread625, %.lr.ph785.split
  %exitcond850.not = icmp eq i32 %.0215783, %i.j
  br i1 %exitcond850.not, label %._crit_edge786, label %.lr.ph785.splitthread-pre-split, !llvm.loop !453

bb.c:                                             ; preds = %.lr.ph781, %.thread625
  %.0210780 = phi i32 [ 0, %.lr.ph781 ], [ %i.ait, %.thread625 ] ; 5 uses
  %.0211779 = phi ptr [ %i.an, %.lr.ph781 ], [ %.3214, %.thread625 ] ; 15 uses
  %i.aw = load ptr, ptr %6, align 8, !tbaa !265   ; 2 uses
  %.not217 = icmp eq ptr %i.aw, null
  br i1 %.not217, label %_ZN4ncnn3MatD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ao
  %i.ay = load <8 x float>, ptr %i.ax, align 1, !tbaa !273
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.d, %bb.c
  %.0608 = phi nsz <8 x float> [ zeroinitializer, %bb.c ], [ %i.ay, %bb.d ] ; 2 uses
  %i.az = load ptr, ptr %7, align 8, !tbaa !18, !noalias !454
  %i.ba = load i64, ptr %i.q, align 8, !tbaa !20, !noalias !454
  %i.bb = mul i64 %i.ba, %i.aq
  %i.bc = load i64, ptr %i.r, align 8, !tbaa !49, !noalias !454
  %i.bd = mul i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bd ; 2 uses
  br i1 %i.ar, label %.lr.ph684, label %.preheader637

.lr.ph684:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit
  %i.bf = load ptr, ptr %4, align 8, !tbaa !18
  %i.bg = load i32, ptr %i.s, align 4, !tbaa !249
  %i.bh = sext i32 %i.bg to i64
  %i.bi = load i64, ptr %i.t, align 8, !tbaa !49
  %factor.op.mul = mul i64 %i.bi, %i.bh
  %i.bj = load i32, ptr %8, align 4, !tbaa !254
  %i.bk = mul i32 %.0210780, %i.y
  %i.bl = mul i32 %i.bk, %i.bj
  %i.bm = sext i32 %i.bl to i64
  %invariant.gep = getelementptr [2 x i8], ptr %i.bf, i64 %i.bm
  br label %bb.e

.preheader637:                                    ; preds = %.loopexit631, %_ZN4ncnn3MatD2Ev.exit
  %.1609.lcssa = phi <8 x float> [ %.0608, %_ZN4ncnn3MatD2Ev.exit ], [ %.7615, %.loopexit631 ] ; 2 uses
  %.0594.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit ], [ %.6600, %.loopexit631 ] ; 2 uses
  %.0582.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit ], [ %.6588, %.loopexit631 ] ; 2 uses
  %.0570.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit ], [ %.6576, %.loopexit631 ] ; 2 uses
  %.0205.lcssa = phi ptr [ %i.be, %_ZN4ncnn3MatD2Ev.exit ], [ %.6, %.loopexit631 ] ; 2 uses
  %.0201.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit ], [ %i.av, %.loopexit631 ] ; 3 uses
  %i.bn = or disjoint i32 %.0201.lcssa, 3
  %i.bo = icmp slt i32 %i.bn, %i.aa
  br i1 %i.bo, label %.lr.ph724, label %.preheader636

.lr.ph724:                                        ; preds = %.preheader637
  %i.bp = load ptr, ptr %4, align 8, !tbaa !18
  %i.bq = load i32, ptr %i.s, align 4, !tbaa !249
  %i.br = sext i32 %i.bq to i64
  %i.bs = load i64, ptr %i.t, align 8, !tbaa !49
  %factor.op.mul731 = mul i64 %i.bs, %i.br
  %i.bt = load i32, ptr %8, align 4, !tbaa !254
  %i.bu = mul i32 %.0210780, %i.y
  %i.bv = mul i32 %i.bu, %i.bt
  %i.bw = sext i32 %i.bv to i64
  %invariant.gep733 = getelementptr [2 x i8], ptr %i.bp, i64 %i.bw
  br label %bb.k

bb.e:                                             ; preds = %.lr.ph684, %.loopexit631
  %.0201683 = phi i32 [ 0, %.lr.ph684 ], [ %i.rm, %.loopexit631 ] ; 2 uses
  %.0205682 = phi ptr [ %i.be, %.lr.ph684 ], [ %.6, %.loopexit631 ] ; 10 uses
  %.0570681 = phi <8 x float> [ zeroinitializer, %.lr.ph684 ], [ %.6576, %.loopexit631 ] ; 7 uses
  %.0582680 = phi <8 x float> [ zeroinitializer, %.lr.ph684 ], [ %.6588, %.loopexit631 ] ; 7 uses
  %.0594679 = phi <8 x float> [ zeroinitializer, %.lr.ph684 ], [ %.6600, %.loopexit631 ] ; 7 uses
  %.1609678 = phi <8 x float> [ %.0608, %.lr.ph684 ], [ %.7615, %.loopexit631 ] ; 7 uses
  %i.bx = sdiv i32 %.0201683, %i.y
  %i.by = sext i32 %i.bx to i64
  %.reass = mul i64 %factor.op.mul, %i.by
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.reass ; 4 uses
  br i1 %i.as, label %.preheader633, label %.loopexit634

.preheader633:                                    ; preds = %bb.e
  %i.bz = load i32, ptr %9, align 4, !tbaa !254   ; 3 uses
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %.lr.ph, label %.loopexit631

.lr.ph:                                           ; preds = %.preheader633
  %i.cb = load i32, ptr %10, align 4, !tbaa !254
  %i.cc = shl nsw i32 %i.cb, 3
  %i.cd = sext i32 %i.cc to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.0197644 = phi i32 [ 0, %.lr.ph ], [ %i.gu, %bb.f ]
  %.0198643 = phi ptr [ %gep, %.lr.ph ], [ %i.gs, %bb.f ] ; 9 uses
  %.1206642 = phi ptr [ %.0205682, %.lr.ph ], [ %i.gt, %bb.f ] ; 9 uses
  %.1571641 = phi <8 x float> [ %.0570681, %.lr.ph ], [ %i.gr, %bb.f ]
  %.1583640 = phi <8 x float> [ %.0582680, %.lr.ph ], [ %i.gi, %bb.f ]
  %.1595639 = phi <8 x float> [ %.0594679, %.lr.ph ], [ %i.fz, %bb.f ]
  %.2610638 = phi <8 x float> [ %.1609678, %.lr.ph ], [ %i.fq, %bb.f ]
  %i.ce = load <8 x i16>, ptr %.1206642, align 16, !tbaa !273 ; 2 uses
  %i.cf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ce, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cg = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ce, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ch = shufflevector <8 x i16> %i.cf, <8 x i16> %i.cg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ci = bitcast <16 x i16> %i.ch to <8 x float>
  %i.cj = getelementptr inbounds nuw i8, ptr %.1206642, i64 16
  %i.ck = load <8 x i16>, ptr %i.cj, align 16, !tbaa !273 ; 2 uses
  %i.cl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ck, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cm = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ck, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cn = shufflevector <8 x i16> %i.cl, <8 x i16> %i.cm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.co = bitcast <16 x i16> %i.cn to <8 x float>
  %i.cp = getelementptr inbounds nuw i8, ptr %.1206642, i64 32
  %i.cq = load <8 x i16>, ptr %i.cp, align 16, !tbaa !273 ; 2 uses
  %i.cr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cs = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.cq, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ct = shufflevector <8 x i16> %i.cr, <8 x i16> %i.cs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cu = bitcast <16 x i16> %i.ct to <8 x float>
  %i.cv = getelementptr inbounds nuw i8, ptr %.1206642, i64 48
  %i.cw = load <8 x i16>, ptr %i.cv, align 16, !tbaa !273 ; 2 uses
  %i.cx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cy = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.cw, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cz = shufflevector <8 x i16> %i.cx, <8 x i16> %i.cy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.da = bitcast <16 x i16> %i.cz to <8 x float>
  %i.db = getelementptr inbounds nuw i8, ptr %.1206642, i64 64
  %i.dc = load <8 x i16>, ptr %i.db, align 16, !tbaa !273 ; 2 uses
  %i.dd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.de = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.dc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.df = shufflevector <8 x i16> %i.dd, <8 x i16> %i.de, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dg = bitcast <16 x i16> %i.df to <8 x float>
  %i.dh = getelementptr inbounds nuw i8, ptr %.1206642, i64 80
  %i.di = load <8 x i16>, ptr %i.dh, align 16, !tbaa !273 ; 2 uses
  %i.dj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.di, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dk = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.di, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.dl = shufflevector <8 x i16> %i.dj, <8 x i16> %i.dk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dm = bitcast <16 x i16> %i.dl to <8 x float>
  %i.dn = getelementptr inbounds nuw i8, ptr %.1206642, i64 96
  %i.do = load <8 x i16>, ptr %i.dn, align 16, !tbaa !273 ; 2 uses
  %i.dp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.do, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dq = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.do, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.dr = shufflevector <8 x i16> %i.dp, <8 x i16> %i.dq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ds = bitcast <16 x i16> %i.dr to <8 x float>
  %i.dt = getelementptr inbounds nuw i8, ptr %.1206642, i64 112
  %i.du = load <8 x i16>, ptr %i.dt, align 16, !tbaa !273 ; 2 uses
  %i.dv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.du, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dw = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.du, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.dx = shufflevector <8 x i16> %i.dv, <8 x i16> %i.dw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dy = bitcast <16 x i16> %i.dx to <8 x float>
  %i.dz = load i16, ptr %.0198643, align 2, !tbaa !331
  %i.ea = zext i16 %i.dz to i32
  %i.eb = shl nuw i32 %i.ea, 16
  %i.ec = insertelement <8 x i32> poison, i32 %i.eb, i64 0
  %i.ed = bitcast <8 x i32> %i.ec to <8 x float>
  %i.ee = shufflevector <8 x float> %i.ed, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ef = fmul fast <8 x float> %i.ee, %i.ci
  %i.eg = fadd fast <8 x float> %.2610638, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %.0198643, i64 2
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !331
  %i.ej = zext i16 %i.ei to i32
  %i.ek = shl nuw i32 %i.ej, 16
  %i.el = insertelement <8 x i32> poison, i32 %i.ek, i64 0
  %i.em = bitcast <8 x i32> %i.el to <8 x float>
  %i.en = shufflevector <8 x float> %i.em, <8 x float> poison, <8 x i32> zeroinitializer
  %i.eo = fmul fast <8 x float> %i.en, %i.co
  %i.ep = fadd fast <8 x float> %.1595639, %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %.0198643, i64 4
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !331
  %i.es = zext i16 %i.er to i32
  %i.et = shl nuw i32 %i.es, 16
  %i.eu = insertelement <8 x i32> poison, i32 %i.et, i64 0
  %i.ev = bitcast <8 x i32> %i.eu to <8 x float>
  %i.ew = shufflevector <8 x float> %i.ev, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ex = fmul fast <8 x float> %i.ew, %i.cu
  %i.ey = fadd fast <8 x float> %.1583640, %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %.0198643, i64 6
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !331
  %i.fb = zext i16 %i.fa to i32
  %i.fc = shl nuw i32 %i.fb, 16
  %i.fd = insertelement <8 x i32> poison, i32 %i.fc, i64 0
  %i.fe = bitcast <8 x i32> %i.fd to <8 x float>
  %i.ff = shufflevector <8 x float> %i.fe, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fg = fmul fast <8 x float> %i.ff, %i.da
  %i.fh = fadd fast <8 x float> %.1571641, %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %.0198643, i64 8
  %i.fj = load i16, ptr %i.fi, align 2, !tbaa !331
  %i.fk = zext i16 %i.fj to i32
  %i.fl = shl nuw i32 %i.fk, 16
  %i.fm = insertelement <8 x i32> poison, i32 %i.fl, i64 0
  %i.fn = bitcast <8 x i32> %i.fm to <8 x float>
  %i.fo = shufflevector <8 x float> %i.fn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fp = fmul fast <8 x float> %i.fo, %i.dg
  %i.fq = fadd fast <8 x float> %i.fp, %i.eg      ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.0198643, i64 10
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !331
  %i.ft = zext i16 %i.fs to i32
  %i.fu = shl nuw i32 %i.ft, 16
  %i.fv = insertelement <8 x i32> poison, i32 %i.fu, i64 0
  %i.fw = bitcast <8 x i32> %i.fv to <8 x float>
  %i.fx = shufflevector <8 x float> %i.fw, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fy = fmul fast <8 x float> %i.fx, %i.dm
  %i.fz = fadd fast <8 x float> %i.fy, %i.ep      ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.0198643, i64 12
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !331
  %i.gc = zext i16 %i.gb to i32
end_hunk_9
begin_hunk_10_@_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.ls = fadd fast <8 x float> %i.lr, %i.kj      ; 2 uses
  %i.lt = getelementptr inbounds [2 x i8], ptr %.2200655, i64 %i.hf
  %i.lu = getelementptr inbounds [2 x i8], ptr %.0196656, i64 %i.hf
  %i.lv = getelementptr inbounds nuw i8, ptr %.3208654, i64 128
  %i.lw = add nuw nsw i32 %.0195657, 1            ; 2 uses
  %exitcond829.not = icmp eq i32 %i.lw, %i.gy
  br i1 %exitcond829.not, label %.loopexit632.loopexit, label %bb.h, !llvm.loop !458

.loopexit632.loopexit:                            ; preds = %bb.h
  %scevgep827 = getelementptr i8, ptr %.0205682, i64 128
  %i.lx = add nsw i32 %i.gy, -1
  %i.ly = zext nneg i32 %i.lx to i64
  %i.lz = shl nuw nsw i64 %i.ly, 7
  %scevgep828 = getelementptr i8, ptr %scevgep827, i64 %i.lz
  br label %.loopexit631

.loopexit632:                                     ; preds = %.loopexit634
  br i1 %i.au, label %.preheader630, label %.loopexit631

.preheader630:                                    ; preds = %.loopexit632
  %i.ma = load i32, ptr %9, align 4, !tbaa !254   ; 3 uses
  %i.mb = icmp sgt i32 %i.ma, 0
  br i1 %i.mb, label %.lr.ph672, label %.loopexit631

.lr.ph672:                                        ; preds = %.preheader630
  %i.mc = load i32, ptr %11, align 4, !tbaa !254  ; 7 uses
  %i.md = sext i32 %i.mc to i64
  %i.me = shl nsw i32 %i.mc, 1
  %i.mf = sext i32 %i.me to i64
  %i.mg = mul nsw i32 %i.mc, 3
  %i.mh = sext i32 %i.mg to i64
  %i.mi = shl nsw i32 %i.mc, 2
  %i.mj = sext i32 %i.mi to i64
  %i.mk = mul nsw i32 %i.mc, 5
  %i.ml = sext i32 %i.mk to i64
  %i.mm = mul nsw i32 %i.mc, 6
  %i.mn = sext i32 %i.mm to i64
  %i.mo = mul nsw i32 %i.mc, 7
  %i.mp = sext i32 %i.mo to i64
  %i.mq = load i32, ptr %10, align 4, !tbaa !254
  %i.mr = sext i32 %i.mq to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph672, %bb.i
  %.0194671 = phi i32 [ 0, %.lr.ph672 ], [ %i.ri, %bb.i ]
  %.4670 = phi ptr [ %gep, %.lr.ph672 ], [ %i.rg, %bb.i ] ; 9 uses
  %.5669 = phi ptr [ %.0205682, %.lr.ph672 ], [ %i.rh, %bb.i ] ; 9 uses
  %.5575668 = phi <8 x float> [ %.0570681, %.lr.ph672 ], [ %i.rf, %bb.i ]
  %.5587667 = phi <8 x float> [ %.0582680, %.lr.ph672 ], [ %i.qw, %bb.i ]
  %.5599666 = phi <8 x float> [ %.0594679, %.lr.ph672 ], [ %i.qn, %bb.i ]
  %.6614665 = phi <8 x float> [ %.1609678, %.lr.ph672 ], [ %i.qe, %bb.i ]
  %i.ms = load <8 x i16>, ptr %.5669, align 16, !tbaa !273 ; 2 uses
  %i.mt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ms, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mu = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ms, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.mv = shufflevector <8 x i16> %i.mt, <8 x i16> %i.mu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mw = bitcast <16 x i16> %i.mv to <8 x float>
  %i.mx = getelementptr inbounds nuw i8, ptr %.5669, i64 16
  %i.my = load <8 x i16>, ptr %i.mx, align 16, !tbaa !273 ; 2 uses
  %i.mz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.my, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.na = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.my, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.nb = shufflevector <8 x i16> %i.mz, <8 x i16> %i.na, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nc = bitcast <16 x i16> %i.nb to <8 x float>
  %i.nd = getelementptr inbounds nuw i8, ptr %.5669, i64 32
  %i.ne = load <8 x i16>, ptr %i.nd, align 16, !tbaa !273 ; 2 uses
  %i.nf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ne, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ng = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ne, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.nh = shufflevector <8 x i16> %i.nf, <8 x i16> %i.ng, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ni = bitcast <16 x i16> %i.nh to <8 x float>
  %i.nj = getelementptr inbounds nuw i8, ptr %.5669, i64 48
  %i.nk = load <8 x i16>, ptr %i.nj, align 16, !tbaa !273 ; 2 uses
  %i.nl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nm = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.nk, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.nn = shufflevector <8 x i16> %i.nl, <8 x i16> %i.nm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.no = bitcast <16 x i16> %i.nn to <8 x float>
  %i.np = getelementptr inbounds nuw i8, ptr %.5669, i64 64
  %i.nq = load <8 x i16>, ptr %i.np, align 16, !tbaa !273 ; 2 uses
  %i.nr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ns = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.nq, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.nt = shufflevector <8 x i16> %i.nr, <8 x i16> %i.ns, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nu = bitcast <16 x i16> %i.nt to <8 x float>
  %i.nv = getelementptr inbounds nuw i8, ptr %.5669, i64 80
  %i.nw = load <8 x i16>, ptr %i.nv, align 16, !tbaa !273 ; 2 uses
  %i.nx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ny = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.nw, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.nz = shufflevector <8 x i16> %i.nx, <8 x i16> %i.ny, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.oa = bitcast <16 x i16> %i.nz to <8 x float>
  %i.ob = getelementptr inbounds nuw i8, ptr %.5669, i64 96
  %i.oc = load <8 x i16>, ptr %i.ob, align 16, !tbaa !273 ; 2 uses
  %i.od = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.oc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.oe = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.oc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.of = shufflevector <8 x i16> %i.od, <8 x i16> %i.oe, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.og = bitcast <16 x i16> %i.of to <8 x float>
  %i.oh = getelementptr inbounds nuw i8, ptr %.5669, i64 112
  %i.oi = load <8 x i16>, ptr %i.oh, align 16, !tbaa !273 ; 2 uses
  %i.oj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.oi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ok = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.oi, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ol = shufflevector <8 x i16> %i.oj, <8 x i16> %i.ok, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.om = bitcast <16 x i16> %i.ol to <8 x float>
  %i.on = load i16, ptr %.4670, align 2, !tbaa !331
  %i.oo = zext i16 %i.on to i32
  %i.op = shl nuw i32 %i.oo, 16
  %i.oq = insertelement <8 x i32> poison, i32 %i.op, i64 0
  %i.or = bitcast <8 x i32> %i.oq to <8 x float>
  %i.os = shufflevector <8 x float> %i.or, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ot = fmul fast <8 x float> %i.os, %i.mw
  %i.ou = fadd fast <8 x float> %.6614665, %i.ot
  %i.ov = getelementptr inbounds [2 x i8], ptr %.4670, i64 %i.md
  %i.ow = load i16, ptr %i.ov, align 2, !tbaa !331
  %i.ox = zext i16 %i.ow to i32
  %i.oy = shl nuw i32 %i.ox, 16
  %i.oz = insertelement <8 x i32> poison, i32 %i.oy, i64 0
  %i.pa = bitcast <8 x i32> %i.oz to <8 x float>
  %i.pb = shufflevector <8 x float> %i.pa, <8 x float> poison, <8 x i32> zeroinitializer
  %i.pc = fmul fast <8 x float> %i.pb, %i.nc
  %i.pd = fadd fast <8 x float> %.5599666, %i.pc
  %i.pe = getelementptr inbounds [2 x i8], ptr %.4670, i64 %i.mf
  %i.pf = load i16, ptr %i.pe, align 2, !tbaa !331
  %i.pg = zext i16 %i.pf to i32
  %i.ph = shl nuw i32 %i.pg, 16
  %i.pi = insertelement <8 x i32> poison, i32 %i.ph, i64 0
  %i.pj = bitcast <8 x i32> %i.pi to <8 x float>
  %i.pk = shufflevector <8 x float> %i.pj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.pl = fmul fast <8 x float> %i.pk, %i.ni
  %i.pm = fadd fast <8 x float> %.5587667, %i.pl
  %i.pn = getelementptr inbounds [2 x i8], ptr %.4670, i64 %i.mh
  %i.po = load i16, ptr %i.pn, align 2, !tbaa !331
  %i.pp = zext i16 %i.po to i32
  %i.pq = shl nuw i32 %i.pp, 16
  %i.pr = insertelement <8 x i32> poison, i32 %i.pq, i64 0
  %i.ps = bitcast <8 x i32> %i.pr to <8 x float>
  %i.pt = shufflevector <8 x float> %i.ps, <8 x float> poison, <8 x i32> zeroinitializer
  %i.pu = fmul fast <8 x float> %i.pt, %i.no
  %i.pv = fadd fast <8 x float> %.5575668, %i.pu
  %i.pw = getelementptr inbounds [2 x i8], ptr %.4670, i64 %i.mj
  %i.px = load i16, ptr %i.pw, align 2, !tbaa !331
  %i.py = zext i16 %i.px to i32
  %i.pz = shl nuw i32 %i.py, 16
  %i.qa = insertelement <8 x i32> poison, i32 %i.pz, i64 0
  %i.qb = bitcast <8 x i32> %i.qa to <8 x float>
  %i.qc = shufflevector <8 x float> %i.qb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qd = fmul fast <8 x float> %i.qc, %i.nu
  %i.qe = fadd fast <8 x float> %i.qd, %i.ou      ; 2 uses
  %i.qf = getelementptr inbounds [2 x i8], ptr %.4670, i64 %i.ml
  %i.qg = load i16, ptr %i.qf, align 2, !tbaa !331
  %i.qh = zext i16 %i.qg to i32
  %i.qi = shl nuw i32 %i.qh, 16
  %i.qj = insertelement <8 x i32> poison, i32 %i.qi, i64 0
  %i.qk = bitcast <8 x i32> %i.qj to <8 x float>
  %i.ql = shufflevector <8 x float> %i.qk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qm = fmul fast <8 x float> %i.ql, %i.oa
  %i.qn = fadd fast <8 x float> %i.qm, %i.pd      ; 2 uses
  %i.qo = getelementptr inbounds [2 x i8], ptr %.4670, i64 %i.mn
  %i.qp = load i16, ptr %i.qo, align 2, !tbaa !331
  %i.qq = zext i16 %i.qp to i32
  %i.qr = shl nuw i32 %i.qq, 16
  %i.qs = insertelement <8 x i32> poison, i32 %i.qr, i64 0
  %i.qt = bitcast <8 x i32> %i.qs to <8 x float>
  %i.qu = shufflevector <8 x float> %i.qt, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qv = fmul fast <8 x float> %i.qu, %i.og
  %i.qw = fadd fast <8 x float> %i.qv, %i.pm      ; 2 uses
  %i.qx = getelementptr inbounds [2 x i8], ptr %.4670, i64 %i.mp
  %i.qy = load i16, ptr %i.qx, align 2, !tbaa !331
  %i.qz = zext i16 %i.qy to i32
  %i.ra = shl nuw i32 %i.qz, 16
  %i.rb = insertelement <8 x i32> poison, i32 %i.ra, i64 0
  %i.rc = bitcast <8 x i32> %i.rb to <8 x float>
  %i.rd = shufflevector <8 x float> %i.rc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.re = fmul fast <8 x float> %i.rd, %i.om
  %i.rf = fadd fast <8 x float> %i.re, %i.pv      ; 2 uses
  %i.rg = getelementptr inbounds [2 x i8], ptr %.4670, i64 %i.mr
  %i.rh = getelementptr inbounds nuw i8, ptr %.5669, i64 128
  %i.ri = add nuw nsw i32 %.0194671, 1            ; 2 uses
  %exitcond832.not = icmp eq i32 %i.ri, %i.ma
  br i1 %exitcond832.not, label %.loopexit631.loopexit, label %bb.i, !llvm.loop !459

.loopexit631.loopexit:                            ; preds = %bb.i
  %scevgep830 = getelementptr i8, ptr %.0205682, i64 128
  %i.rj = add nsw i32 %i.ma, -1
  %i.rk = zext nneg i32 %i.rj to i64
  %i.rl = shl nuw nsw i64 %i.rk, 7
  %scevgep831 = getelementptr i8, ptr %scevgep830, i64 %i.rl
  br label %.loopexit631

.loopexit631:                                     ; preds = %.preheader633, %.loopexit634.loopexit, %bb.g, %.loopexit632.loopexit, %.loopexit631.loopexit, %.preheader630, %.loopexit632
  %.7615 = phi nsz <8 x float> [ %.1609678, %.loopexit632 ], [ %.1609678, %.preheader630 ], [ %i.qe, %.loopexit631.loopexit ], [ %.1609678, %bb.g ], [ %i.kr, %.loopexit632.loopexit ], [ %i.fq, %.loopexit634.loopexit ], [ %.1609678, %.preheader633 ] ; 2 uses
  %.6600 = phi nsz <8 x float> [ %.0594679, %.loopexit632 ], [ %.0594679, %.preheader630 ], [ %i.qn, %.loopexit631.loopexit ], [ %.0594679, %bb.g ], [ %i.la, %.loopexit632.loopexit ], [ %i.fz, %.loopexit634.loopexit ], [ %.0594679, %.preheader633 ] ; 2 uses
  %.6588 = phi nsz <8 x float> [ %.0582680, %.loopexit632 ], [ %.0582680, %.preheader630 ], [ %i.qw, %.loopexit631.loopexit ], [ %.0582680, %bb.g ], [ %i.lj, %.loopexit632.loopexit ], [ %i.gi, %.loopexit634.loopexit ], [ %.0582680, %.preheader633 ] ; 2 uses
  %.6576 = phi nsz <8 x float> [ %.0570681, %.loopexit632 ], [ %.0570681, %.preheader630 ], [ %i.rf, %.loopexit631.loopexit ], [ %.0570681, %bb.g ], [ %i.ls, %.loopexit632.loopexit ], [ %i.gr, %.loopexit634.loopexit ], [ %.0570681, %.preheader633 ] ; 2 uses
  %.6 = phi ptr [ %.0205682, %.loopexit632 ], [ %.0205682, %.preheader630 ], [ %scevgep831, %.loopexit631.loopexit ], [ %.0205682, %bb.g ], [ %scevgep828, %.loopexit632.loopexit ], [ %scevgep826, %.loopexit634.loopexit ], [ %.0205682, %.preheader633 ] ; 2 uses
  %i.rm = add nuw nsw i32 %.0201683, 8            ; 2 uses
  %i.rn = or disjoint i32 %i.rm, 7
  %i.ro = icmp slt i32 %i.rn, %i.aa
  br i1 %i.ro, label %bb.e, label %.preheader637, !llvm.loop !460

.preheader636:                                    ; preds = %.loopexit, %.preheader637
  %.8616.lcssa = phi <8 x float> [ %.1609.lcssa, %.preheader637 ], [ %.12620, %.loopexit ] ; 3 uses
  %.7601.lcssa = phi <8 x float> [ %.0594.lcssa, %.preheader637 ], [ %.11605, %.loopexit ] ; 3 uses
  %.7589.lcssa = phi <8 x float> [ %.0582.lcssa, %.preheader637 ], [ %.11593, %.loopexit ]
  %.7577.lcssa = phi <8 x float> [ %.0570.lcssa, %.preheader637 ], [ %.11581, %.loopexit ]
  %.7.lcssa = phi ptr [ %.0205.lcssa, %.preheader637 ], [ %.11, %.loopexit ] ; 3 uses
  %.1202.lcssa = phi i32 [ %.0201.lcssa, %.preheader637 ], [ %i.yt, %.loopexit ] ; 6 uses
  %i.rp = or disjoint i32 %.1202.lcssa, 1
  %i.rq = icmp slt i32 %i.rp, %i.aa
  br i1 %i.rq, label %.lr.ph748, label %.preheader635

.lr.ph748:                                        ; preds = %.preheader636
  %i.rr = load ptr, ptr %4, align 8, !tbaa !18
  %i.rs = load i32, ptr %i.s, align 4, !tbaa !249
  %i.rt = sext i32 %i.rs to i64
  %i.ru = load i64, ptr %i.t, align 8, !tbaa !49
  %factor.op.mul753 = mul i64 %i.ru, %i.rt
  %i.rv = load i32, ptr %8, align 4, !tbaa !254
  %i.rw = mul nsw i32 %i.rv, %.0210780
  %i.rx = sext i32 %i.rw to i64
  %invariant.gep755 = getelementptr [2 x i8], ptr %i.rr, i64 %i.rx
  %i.ry = load i32, ptr %9, align 4, !tbaa !254   ; 3 uses
  %i.rz = icmp sgt i32 %i.ry, 0
  br i1 %i.rz, label %.lr.ph748.split.us, label %.lr.ph748.split.preheader

.lr.ph748.split.preheader:                        ; preds = %.lr.ph748
  %i.sa = add i32 %.1202.lcssa, 2
  %15 = add i32 %.1202.lcssa, 3
  %smax = call i32 @llvm.smax.i32(i32 %i.aa, i32 %15)
  %16 = add i32 %smax, -2
  %i.sb = sub i32 %16, %.1202.lcssa
  %i.sc = and i32 %i.sb, -2
  %i.sd = add i32 %i.sa, %i.sc
  br label %.preheader635

.lr.ph748.split.us:                               ; preds = %.lr.ph748
  %i.se = load i32, ptr %11, align 4, !tbaa !254
  %i.sf = sext i32 %i.se to i64
  %i.sg = load i32, ptr %10, align 4, !tbaa !254
  %i.sh = sext i32 %i.sg to i64
  %i.si = add nsw i32 %i.ry, -1
  %i.sj = zext nneg i32 %i.si to i64
  %i.sk = shl nuw nsw i64 %i.sj, 5
  %i.sl = zext i32 %.1202.lcssa to i64
  br label %.lr.ph740.us

.lr.ph740.us:                                     ; preds = %._crit_edge.us, %.lr.ph748.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.us ], [ %i.sl, %.lr.ph748.split.us ] ; 2 uses
  %.12746.us = phi ptr [ %scevgep840, %._crit_edge.us ], [ %.7.lcssa, %.lr.ph748.split.us ] ; 2 uses
  %.12606745.us = phi <8 x float> [ %i.tn, %._crit_edge.us ], [ %.7601.lcssa, %.lr.ph748.split.us ]
  %.13621744.us = phi <8 x float> [ %i.te, %._crit_edge.us ], [ %.8616.lcssa, %.lr.ph748.split.us ]
  %.reass754.us = mul i64 %factor.op.mul753, %indvars.iv
  %gep756.us = getelementptr i8, ptr %invariant.gep755, i64 %.reass754.us
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph740.us, %bb.j
  %.0189739.us = phi i32 [ 0, %.lr.ph740.us ], [ %i.tq, %bb.j ]
  %.0190738.us = phi ptr [ %gep756.us, %.lr.ph740.us ], [ %i.to, %bb.j ] ; 3 uses
  %.13737.us = phi ptr [ %.12746.us, %.lr.ph740.us ], [ %i.tp, %bb.j ] ; 3 uses
  %.13607736.us = phi <8 x float> [ %.12606745.us, %.lr.ph740.us ], [ %i.tn, %bb.j ]
  %.14622735.us = phi <8 x float> [ %.13621744.us, %.lr.ph740.us ], [ %i.te, %bb.j ]
  %i.sm = load <8 x i16>, ptr %.13737.us, align 16, !tbaa !273 ; 2 uses
  %i.sn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.so = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.sm, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.sp = shufflevector <8 x i16> %i.sn, <8 x i16> %i.so, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.sq = bitcast <16 x i16> %i.sp to <8 x float>
  %i.sr = getelementptr inbounds nuw i8, ptr %.13737.us, i64 16
  %i.ss = load <8 x i16>, ptr %i.sr, align 16, !tbaa !273 ; 2 uses
  %i.st = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ss, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.su = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ss, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.sv = shufflevector <8 x i16> %i.st, <8 x i16> %i.su, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.sw = bitcast <16 x i16> %i.sv to <8 x float>
  %i.sx = load i16, ptr %.0190738.us, align 2, !tbaa !331
  %i.sy = zext i16 %i.sx to i32
  %i.sz = shl nuw i32 %i.sy, 16
  %i.ta = insertelement <8 x i32> poison, i32 %i.sz, i64 0
  %i.tb = bitcast <8 x i32> %i.ta to <8 x float>
  %i.tc = shufflevector <8 x float> %i.tb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.td = fmul fast <8 x float> %i.tc, %i.sq
  %i.te = fadd fast <8 x float> %i.td, %.14622735.us ; 3 uses
  %i.tf = getelementptr inbounds [2 x i8], ptr %.0190738.us, i64 %i.sf
  %i.tg = load i16, ptr %i.tf, align 2, !tbaa !331
  %i.th = zext i16 %i.tg to i32
  %i.ti = shl nuw i32 %i.th, 16
  %i.tj = insertelement <8 x i32> poison, i32 %i.ti, i64 0
  %i.tk = bitcast <8 x i32> %i.tj to <8 x float>
  %i.tl = shufflevector <8 x float> %i.tk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.tm = fmul fast <8 x float> %i.tl, %i.sw
  %i.tn = fadd fast <8 x float> %i.tm, %.13607736.us ; 3 uses
  %i.to = getelementptr inbounds [2 x i8], ptr %.0190738.us, i64 %i.sh
  %i.tp = getelementptr inbounds nuw i8, ptr %.13737.us, i64 32
  %i.tq = add nuw nsw i32 %.0189739.us, 1         ; 2 uses
  %exitcond841.not = icmp eq i32 %i.tq, %i.ry
  br i1 %exitcond841.not, label %._crit_edge.us, label %bb.j, !llvm.loop !461

._crit_edge.us:                                   ; preds = %bb.j
  %scevgep839 = getelementptr i8, ptr %.12746.us, i64 32
  %scevgep840 = getelementptr i8, ptr %scevgep839, i64 %i.sk ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.tr = trunc i64 %indvars.iv.next to i32
  %i.ts = or i32 %i.tr, 1
  %i.tt = icmp slt i32 %i.ts, %i.aa
  br i1 %i.tt, label %.lr.ph740.us, label %.preheader635.loopexit, !llvm.loop !462

bb.k:                                             ; preds = %.lr.ph724, %.loopexit
  %.1202723 = phi i32 [ %.0201.lcssa, %.lr.ph724 ], [ %i.yt, %.loopexit ] ; 2 uses
  %.7722 = phi ptr [ %.0205.lcssa, %.lr.ph724 ], [ %.11, %.loopexit ] ; 7 uses
  %.7577721 = phi <8 x float> [ %.0570.lcssa, %.lr.ph724 ], [ %.11581, %.loopexit ] ; 5 uses
  %.7589720 = phi <8 x float> [ %.0582.lcssa, %.lr.ph724 ], [ %.11593, %.loopexit ] ; 5 uses
  %.7601719 = phi <8 x float> [ %.0594.lcssa, %.lr.ph724 ], [ %.11605, %.loopexit ] ; 5 uses
  %.8616718 = phi <8 x float> [ %.1609.lcssa, %.lr.ph724 ], [ %.12620, %.loopexit ] ; 5 uses
  %i.tu = sdiv i32 %.1202723, %i.y
  %i.tv = sext i32 %i.tu to i64
  %.reass732 = mul i64 %factor.op.mul731, %i.tv
  %gep734 = getelementptr i8, ptr %invariant.gep733, i64 %.reass732 ; 2 uses
  br i1 %i.at, label %.preheader628, label %.loopexit629

.preheader628:                                    ; preds = %bb.k
  %i.tw = load i32, ptr %9, align 4, !tbaa !254   ; 3 uses
  %i.tx = icmp sgt i32 %i.tw, 0
  br i1 %i.tx, label %.lr.ph698, label %.loopexit

.lr.ph698:                                        ; preds = %.preheader628
  %i.ty = load i32, ptr %10, align 4, !tbaa !254
  %i.tz = shl nsw i32 %i.ty, 2
  %i.ua = sext i32 %i.tz to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph698, %bb.l
  %.0192697 = phi i32 [ 0, %.lr.ph698 ], [ %i.vt, %bb.l ]
  %.0193696 = phi ptr [ %gep734, %.lr.ph698 ], [ %i.vr, %bb.l ] ; 2 uses
  %.8695 = phi ptr [ %.7722, %.lr.ph698 ], [ %i.vs, %bb.l ] ; 5 uses
  %.8578694 = phi <8 x float> [ %.7577721, %.lr.ph698 ], [ %i.vq, %bb.l ]
  %.8590693 = phi <8 x float> [ %.7589720, %.lr.ph698 ], [ %i.vm, %bb.l ]
  %.8602692 = phi <8 x float> [ %.7601719, %.lr.ph698 ], [ %i.vi, %bb.l ]
  %.9617691 = phi <8 x float> [ %.8616718, %.lr.ph698 ], [ %i.ve, %bb.l ]
  %i.ub = load <8 x i16>, ptr %.8695, align 16, !tbaa !273 ; 2 uses
  %i.uc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ub, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ud = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ub, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ue = shufflevector <8 x i16> %i.uc, <8 x i16> %i.ud, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.uf = bitcast <16 x i16> %i.ue to <8 x float>
  %i.ug = getelementptr inbounds nuw i8, ptr %.8695, i64 16
  %i.uh = load <8 x i16>, ptr %i.ug, align 16, !tbaa !273 ; 2 uses
  %i.ui = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.uh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.uj = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.uh, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.uk = shufflevector <8 x i16> %i.ui, <8 x i16> %i.uj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ul = bitcast <16 x i16> %i.uk to <8 x float>
  %i.um = getelementptr inbounds nuw i8, ptr %.8695, i64 32
  %i.un = load <8 x i16>, ptr %i.um, align 16, !tbaa !273 ; 2 uses
  %i.uo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.un, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.up = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.un, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.uq = shufflevector <8 x i16> %i.uo, <8 x i16> %i.up, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ur = bitcast <16 x i16> %i.uq to <8 x float>
  %i.us = getelementptr inbounds nuw i8, ptr %.8695, i64 48
  %i.ut = load <8 x i16>, ptr %i.us, align 16, !tbaa !273 ; 2 uses
  %i.uu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ut, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.uv = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ut, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.uw = shufflevector <8 x i16> %i.uu, <8 x i16> %i.uv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ux = bitcast <16 x i16> %i.uw to <8 x float>
  %i.uy = load <4 x i16>, ptr %.0193696, align 2, !tbaa !331
  %i.uz = zext <4 x i16> %i.uy to <4 x i32>
  %i.va = shl nuw <4 x i32> %i.uz, splat (i32 16) ; 4 uses
  %i.vb = bitcast <4 x i32> %i.va to <4 x float>
  %i.vc = shufflevector <4 x float> %i.vb, <4 x float> poison, <8 x i32> zeroinitializer
  %i.vd = fmul fast <8 x float> %i.vc, %i.uf
  %i.ve = fadd fast <8 x float> %i.vd, %.9617691  ; 2 uses
  %i.vf = bitcast <4 x i32> %i.va to <4 x float>
  %i.vg = shufflevector <4 x float> %i.vf, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.vh = fmul fast <8 x float> %i.vg, %i.ul
  %i.vi = fadd fast <8 x float> %i.vh, %.8602692  ; 2 uses
  %i.vj = bitcast <4 x i32> %i.va to <4 x float>
  %i.vk = shufflevector <4 x float> %i.vj, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.vl = fmul fast <8 x float> %i.vk, %i.ur
  %i.vm = fadd fast <8 x float> %i.vl, %.8590693  ; 2 uses
  %i.vn = bitcast <4 x i32> %i.va to <4 x float>
  %i.vo = shufflevector <4 x float> %i.vn, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.vp = fmul fast <8 x float> %i.vo, %i.ux
  %i.vq = fadd fast <8 x float> %i.vp, %.8578694  ; 2 uses
  %i.vr = getelementptr inbounds [2 x i8], ptr %.0193696, i64 %i.ua
  %i.vs = getelementptr inbounds nuw i8, ptr %.8695, i64 64
  %i.vt = add nuw nsw i32 %.0192697, 1            ; 2 uses
  %exitcond835.not = icmp eq i32 %i.vt, %i.tw
  br i1 %exitcond835.not, label %.loopexit629.loopexit, label %bb.l, !llvm.loop !463

.loopexit629.loopexit:                            ; preds = %bb.l
  %scevgep833 = getelementptr i8, ptr %.7722, i64 64
  %i.vu = add nsw i32 %i.tw, -1
  %i.vv = zext nneg i32 %i.vu to i64
  %i.vw = shl nuw nsw i64 %i.vv, 6
  %scevgep834 = getelementptr i8, ptr %scevgep833, i64 %i.vw
  br label %.loopexit

.loopexit629:                                     ; preds = %bb.k
  br i1 %i.au, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.loopexit629
  %i.vx = load i32, ptr %9, align 4, !tbaa !254   ; 3 uses
  %i.vy = icmp sgt i32 %i.vx, 0
  br i1 %i.vy, label %.lr.ph712, label %.loopexit

.lr.ph712:                                        ; preds = %.preheader
  %i.vz = load i32, ptr %11, align 4, !tbaa !254  ; 3 uses
  %i.wa = sext i32 %i.vz to i64
  %i.wb = shl nsw i32 %i.vz, 1
  %i.wc = sext i32 %i.wb to i64
  %i.wd = mul nsw i32 %i.vz, 3
  %i.we = sext i32 %i.wd to i64
  %i.wf = load i32, ptr %10, align 4, !tbaa !254
  %i.wg = sext i32 %i.wf to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph712, %bb.m
  %.0191711 = phi i32 [ 0, %.lr.ph712 ], [ %i.yp, %bb.m ]
  %.2710 = phi ptr [ %gep734, %.lr.ph712 ], [ %i.yn, %bb.m ] ; 5 uses
  %.10709 = phi ptr [ %.7722, %.lr.ph712 ], [ %i.yo, %bb.m ] ; 5 uses
  %.10580708 = phi <8 x float> [ %.7577721, %.lr.ph712 ], [ %i.ym, %bb.m ]
  %.10592707 = phi <8 x float> [ %.7589720, %.lr.ph712 ], [ %i.yd, %bb.m ]
  %.10604706 = phi <8 x float> [ %.7601719, %.lr.ph712 ], [ %i.xu, %bb.m ]
  %.11619705 = phi <8 x float> [ %.8616718, %.lr.ph712 ], [ %i.xl, %bb.m ]
  %i.wh = load <8 x i16>, ptr %.10709, align 16, !tbaa !273 ; 2 uses
  %i.wi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.wh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.wj = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.wh, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.wk = shufflevector <8 x i16> %i.wi, <8 x i16> %i.wj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.wl = bitcast <16 x i16> %i.wk to <8 x float>
  %i.wm = getelementptr inbounds nuw i8, ptr %.10709, i64 16
  %i.wn = load <8 x i16>, ptr %i.wm, align 16, !tbaa !273 ; 2 uses
  %i.wo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.wn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.wp = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.wn, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.wq = shufflevector <8 x i16> %i.wo, <8 x i16> %i.wp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.wr = bitcast <16 x i16> %i.wq to <8 x float>
  %i.ws = getelementptr inbounds nuw i8, ptr %.10709, i64 32
end_hunk_10
begin_hunk_11_@_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.adq = and <8 x i32> %i.adp, splat (i32 -2139095041)
  %i.adr = or disjoint <8 x i32> %i.adq, splat (i32 1056964608)
  %i.ads = bitcast <8 x i32> %i.adr to <8 x float> ; 3 uses
  %i.adt = lshr <8 x i32> %i.ado, splat (i32 23)
  %i.adu = add nsw <8 x i32> %i.adt, splat (i32 -127)
  %i.adv = sitofp fast <8 x i32> %i.adu to <8 x float> ; 2 uses
  %i.adw = fadd fast <8 x float> %i.adv, splat (float 1.000000e+00)
  %i.adx = fcmp fast olt <8 x float> %i.ads, splat (float f0x3F3504F3) ; 2 uses
  %i.ady = select <8 x i1> %i.adx, <8 x float> %i.ads, <8 x float> zeroinitializer
  %i.adz = fadd fast <8 x float> %i.ads, splat (float -1.000000e+00)
  %i.aea = select fast <8 x i1> %i.adx, <8 x float> %i.adv, <8 x float> %i.adw
  %i.aeb = fadd fast <8 x float> %i.adz, %i.ady   ; 12 uses
  %i.aec = fmul fast <8 x float> %i.aeb, %i.aeb   ; 2 uses
  %i.aed = fmul fast <8 x float> %i.aeb, splat (float f0x3D9021BB)
  %i.aee = fadd fast <8 x float> %i.aed, splat (float f0xBDEBD1B8)
  %i.aef = fmul fast <8 x float> %i.aee, %i.aeb
  %i.aeg = fadd fast <8 x float> %i.aef, splat (float f0x3DEF251A)
  %i.aeh = fmul fast <8 x float> %i.aeg, %i.aeb
  %i.aei = fadd fast <8 x float> %i.aeh, splat (float f0xBDFE5D4F)
  %i.aej = fmul fast <8 x float> %i.aei, %i.aeb
  %i.aek = fadd fast <8 x float> %i.aej, splat (float f0x3E11E9BF)
  %i.ael = fmul fast <8 x float> %i.aek, %i.aeb
  %i.aem = fadd fast <8 x float> %i.ael, splat (float f0xBE2AAE50)
  %i.aen = fmul fast <8 x float> %i.aem, %i.aeb
  %i.aeo = fadd fast <8 x float> %i.aen, splat (float f0x3E4CCEAC)
  %i.aep = fmul fast <8 x float> %i.aeo, %i.aeb
  %i.aeq = fadd fast <8 x float> %i.aep, splat (float f0xBE7FFFFC)
  %i.aer = fmul fast <8 x float> %i.aeq, %i.aeb
  %i.aes = fadd fast <8 x float> %i.aer, splat (float f0x3EAAAAAA)
  %i.aet = fmul fast <8 x float> %i.aec, %i.aeb
  %i.aeu = fmul fast <8 x float> %i.aet, %i.aes
  %.neg627 = fmul fast <8 x float> %i.aec, splat (float -5.000000e-01)
  %reass.mul = fmul fast <8 x float> %i.aea, splat (float f0x3F317218)
  %i.aev = fadd fast <8 x float> %i.aeb, %.neg627
  %i.aew = fadd fast <8 x float> %i.aeu, %i.aev
  %i.aex = fadd fast <8 x float> %i.aew, %reass.mul
  %.neg = fmul fast <8 x float> %i.aex, splat (float -2.000000e+00)
  %i.aey = select fast <8 x i1> %i.adm, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg
  %i.aez = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aey, <8 x float> splat (float f0x42B0C0A5))
  %i.afa = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aez, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.afb = fmul fast <8 x float> %i.afa, splat (float f0x3FB8AA3B)
  %i.afc = fadd fast <8 x float> %i.afb, splat (float 5.000000e-01) ; 2 uses
  %i.afd = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.afc, i32 1) ; 2 uses
  %i.afe = fcmp fast ogt <8 x float> %i.afd, %i.afc
  %i.aff = select <8 x i1> %i.afe, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.afg = fsub fast <8 x float> %i.afd, %i.aff   ; 2 uses
  %i.afh = fmul fast <8 x float> %i.afg, splat (float f0x3F317218)
  %i.afi = fsub fast <8 x float> %i.afa, %i.afh   ; 8 uses
  %i.afj = fmul fast <8 x float> %i.afi, %i.afi
  %i.afk = fmul fast <8 x float> %i.afi, splat (float f0x39506967)
  %i.afl = fadd fast <8 x float> %i.afk, splat (float f0x3AB743CE)
  %i.afm = fmul fast <8 x float> %i.afl, %i.afi
  %i.afn = fadd fast <8 x float> %i.afm, splat (float f0x3C088908)
  %i.afo = fmul fast <8 x float> %i.afn, %i.afi
  %i.afp = fadd fast <8 x float> %i.afo, splat (float f0x3D2AA9C1)
  %i.afq = fmul fast <8 x float> %i.afp, %i.afi
  %i.afr = fadd fast <8 x float> %i.afq, splat (float f0x3E2AAAAA)
  %i.afs = fmul fast <8 x float> %i.afr, %i.afi
  %i.aft = fadd fast <8 x float> %i.afs, splat (float 5.000000e-01)
  %i.afu = fmul fast <8 x float> %i.afj, %i.aft
  %i.afv = fadd fast <8 x float> %i.afi, %i.afu
  %i.afw = fadd fast <8 x float> %i.afv, splat (float 1.000000e+00)
  %i.afx = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.afg)
  %i.afy = shl <8 x i32> %i.afx, splat (i32 23)
  %i.afz = add <8 x i32> %i.afy, splat (i32 1065353216)
  %i.aga = bitcast <8 x i32> %i.afz to <8 x float>
  %i.agb = fmul fast <8 x float> %i.afw, %i.aga
  %i.agc = fadd fast <8 x float> %i.agb, splat (float 1.000000e+00)
  %i.agd = fdiv fast <8 x float> splat (float 2.000000e+00), %i.agc
  %i.age = fadd fast <8 x float> %i.agd, splat (float -1.000000e+00)
  %i.agf = fmul fast <8 x float> %i.age, %i.aah
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc222:                                        ; preds = %._crit_edge771
  %i.agg = load ptr, ptr %13, align 8, !tbaa !18  ; 2 uses
  %i.agh = load float, ptr %i.agg, align 4, !tbaa !53
  %i.agi = insertelement <8 x float> poison, float %i.agh, i64 0
  %i.agj = shufflevector <8 x float> %i.agi, <8 x float> poison, <8 x i32> zeroinitializer
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agg, i64 4
  %i.agl = load float, ptr %i.agk, align 4, !tbaa !53
  %i.agm = insertelement <8 x float> poison, float %i.agl, i64 0
  %i.agn = shufflevector <8 x float> %i.agm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ago = fmul fast <8 x float> %i.agj, %i.aah
  %i.agp = fadd fast <8 x float> %i.ago, %i.agn
  %i.agq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.agp, <8 x float> zeroinitializer)
  %i.agr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.agq, <8 x float> splat (float 1.000000e+00))
  %i.ags = fmul fast <8 x float> %i.agr, %i.aah
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit:      ; preds = %.noexc222, %.noexc221, %.noexc220, %bb.p, %.noexc219, %bb.o, %._crit_edge771
  %.0.i = phi nsz <8 x float> [ %i.ags, %.noexc222 ], [ %i.aaj, %bb.o ], [ %i.aar, %.noexc219 ], [ %i.abb, %bb.p ], [ %i.ach, %.noexc220 ], [ %i.agf, %.noexc221 ], [ %i.aah, %._crit_edge771 ] ; 4 uses
  switch i32 %i.ab, label %.thread625 [
    i32 8, label %.thread
    i32 4, label %bb.q
    i32 1, label %bb.r
  ]

.thread:                                          ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.agt = bitcast <8 x float> %.0.i to <8 x i32> ; 2 uses
  %i.agu = shufflevector <8 x i32> %i.agt, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.agv = shufflevector <8 x i32> %i.agt, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.agw = lshr <4 x i32> %i.agu, splat (i32 16)
  %i.agx = lshr <4 x i32> %i.agv, splat (i32 16)
  %i.agy = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.agw, <4 x i32> %i.agx)
  store <8 x i16> %i.agy, ptr %.0211779, align 16, !tbaa !273
  %i.agz = getelementptr inbounds nuw i8, ptr %.0211779, i64 16
  br label %.thread625

bb.q:                                             ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.aha = bitcast <8 x float> %.0.i to <8 x i32>
  %i.ahb = shufflevector <8 x i32> %i.aha, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ahc = lshr <4 x i32> %i.ahb, splat (i32 16)
  %i.ahd = bitcast <8 x float> %.0.i to <8 x i32>
  %i.ahe = shufflevector <8 x i32> %i.ahd, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ahf = lshr <4 x i32> %i.ahe, splat (i32 16)
  %i.ahg = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ahc, <4 x i32> %i.ahf)
  %i.ahh = bitcast <8 x i16> %i.ahg to <2 x i64>  ; 2 uses
  %i.ahi = extractelement <2 x i64> %i.ahh, i64 0
  store i64 %i.ahi, ptr %.0211779, align 1, !tbaa !273
  %i.ahj = load i32, ptr %14, align 4, !tbaa !254
  %i.ahk = sext i32 %i.ahj to i64
  %i.ahl = getelementptr inbounds [2 x i8], ptr %.0211779, i64 %i.ahk
  %i.ahm = extractelement <2 x i64> %i.ahh, i64 1
  store i64 %i.ahm, ptr %i.ahl, align 1, !tbaa !273
  %i.ahn = getelementptr inbounds nuw i8, ptr %.0211779, i64 8
  br label %.thread625

bb.r:                                             ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.aho = bitcast <8 x float> %.0.i to <16 x i16> ; 8 uses
  %i.ahp = extractelement <16 x i16> %i.aho, i64 1
  store i16 %i.ahp, ptr %.0211779, align 2, !tbaa !331
  %i.ahq = extractelement <16 x i16> %i.aho, i64 3
  %i.ahr = load i32, ptr %14, align 4, !tbaa !254 ; 7 uses
  %i.ahs = sext i32 %i.ahr to i64
  %i.aht = getelementptr inbounds [2 x i8], ptr %.0211779, i64 %i.ahs
  store i16 %i.ahq, ptr %i.aht, align 2, !tbaa !331
  %i.ahu = extractelement <16 x i16> %i.aho, i64 5
  %i.ahv = shl nsw i32 %i.ahr, 1
  %i.ahw = sext i32 %i.ahv to i64
  %i.ahx = getelementptr inbounds [2 x i8], ptr %.0211779, i64 %i.ahw
  store i16 %i.ahu, ptr %i.ahx, align 2, !tbaa !331
  %i.ahy = extractelement <16 x i16> %i.aho, i64 7
  %i.ahz = mul nsw i32 %i.ahr, 3
  %i.aia = sext i32 %i.ahz to i64
  %i.aib = getelementptr inbounds [2 x i8], ptr %.0211779, i64 %i.aia
  store i16 %i.ahy, ptr %i.aib, align 2, !tbaa !331
  %i.aic = extractelement <16 x i16> %i.aho, i64 9
  %i.aid = shl nsw i32 %i.ahr, 2
  %i.aie = sext i32 %i.aid to i64
  %i.aif = getelementptr inbounds [2 x i8], ptr %.0211779, i64 %i.aie
  store i16 %i.aic, ptr %i.aif, align 2, !tbaa !331
  %i.aig = extractelement <16 x i16> %i.aho, i64 11
  %i.aih = mul nsw i32 %i.ahr, 5
  %i.aii = sext i32 %i.aih to i64
  %i.aij = getelementptr inbounds [2 x i8], ptr %.0211779, i64 %i.aii
  store i16 %i.aig, ptr %i.aij, align 2, !tbaa !331
  %i.aik = extractelement <16 x i16> %i.aho, i64 13
  %i.ail = mul nsw i32 %i.ahr, 6
  %i.aim = sext i32 %i.ail to i64
  %i.ain = getelementptr inbounds [2 x i8], ptr %.0211779, i64 %i.aim
  store i16 %i.aik, ptr %i.ain, align 2, !tbaa !331
  %i.aio = extractelement <16 x i16> %i.aho, i64 15
  %i.aip = mul nsw i32 %i.ahr, 7
  %i.aiq = sext i32 %i.aip to i64
  %i.air = getelementptr inbounds [2 x i8], ptr %.0211779, i64 %i.aiq
  store i16 %i.aio, ptr %i.air, align 2, !tbaa !331
  %i.ais = getelementptr inbounds nuw i8, ptr %.0211779, i64 2
  br label %.thread625

.thread625:                                       ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit, %bb.q, %.thread, %bb.r
  %.3214 = phi ptr [ %i.ais, %bb.r ], [ %.0211779, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ], [ %i.agz, %.thread ], [ %i.ahn, %bb.q ]
  %i.ait = add nuw nsw i32 %.0210780, 1           ; 2 uses
  %exitcond849.not = icmp eq i32 %i.ait, %i.x
  br i1 %exitcond849.not, label %._crit_edge, label %bb.c, !llvm.loop !468

._crit_edge786:                                   ; preds = %._crit_edge, %.lr.ph785, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge786, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32>, <4 x i32>) #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp.v2f32(<2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.log.v2f32(<2 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.tanh.v2f32(<2 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !14, i64 8}
!12 = !{!"_ZTSN4ncnn3MatE", !13, i64 0, !14, i64 8, !15, i64 16, !6, i64 24, !16, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !15, i64 64}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 int", !13, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 _ZTSN4ncnn9AllocatorE", !13, i64 0}
!17 = !{!12, !16, i64 32}
!18 = !{!12, !13, i64 0}
!19 = distinct !{null}
!20 = !{!12, !15, i64 64}
!21 = !{ptr @_ZN4ncnn21Convolution1D_x86_avxD2Ev}
!22 = !{!23, !6, i64 320}
!23 = !{!"_ZTSN4ncnn13Convolution1DE", !24, i64 0, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !38, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !12, i64 248, !6, i64 320, !12, i64 328, !12, i64 400}
!24 = !{!"_ZTSN4ncnn5LayerE", !25, i64 8, !25, i64 9, !25, i64 10, !25, i64 11, !25, i64 12, !25, i64 13, !25, i64 14, !25, i64 15, !25, i64 16, !25, i64 17, !25, i64 18, !25, i64 19, !25, i64 20, !25, i64 21, !25, i64 22, !25, i64 23, !25, i64 24, !25, i64 25, !25, i64 26, !25, i64 27, !6, i64 28, !13, i64 32, !6, i64 40, !26, i64 48, !26, i64 80, !29, i64 112, !29, i64 136, !33, i64 160, !33, i64 184}
!25 = !{!"bool", !7, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !27, i64 0, !15, i64 8, !7, i64 16}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !28, i64 0}
!28 = !{!"p1 omnipotent char", !13, i64 0}
!29 = !{!"_ZTSSt6vectorIiSaIiEE", !30, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!33 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !34, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!37 = !{!"p1 _ZTSN4ncnn3MatE", !13, i64 0}
!38 = !{!"float", !7, i64 0}
!39 = !{!40, !25, i64 32}
!40 = !{!"_ZTSN4ncnn6OptionE", !25, i64 0, !25, i64 1, !25, i64 2, !25, i64 3, !6, i64 4, !16, i64 8, !16, i64 16, !6, i64 24, !25, i64 28, !25, i64 29, !25, i64 30, !25, i64 31, !25, i64 32, !25, i64 33, !25, i64 34, !25, i64 35, !25, i64 36, !25, i64 37, !25, i64 38, !25, i64 39, !6, i64 40, !25, i64 44, !25, i64 45, !25, i64 46, !25, i64 47, !7, i64 48, !25, i64 49, !25, i64 50, !25, i64 51, !25, i64 52, !25, i64 53, !25, i64 54, !25, i64 55, !25, i64 56, !25, i64 57, !25, i64 58, !25, i64 59, !25, i64 60, !25, i64 61, !25, i64 62, !25, i64 63}
!41 = !{i8 0, i8 2}
!42 = !{}
!43 = !{!23, !6, i64 240}
!44 = !{!23, !6, i64 212}
!45 = !{!23, !6, i64 208}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!48 = distinct !{!48, !"_ZN4ncnn3Mat7channelEi"}
!49 = !{!12, !15, i64 16}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!52 = distinct !{!52, !"_ZN4ncnn3Mat7channelEi"}
!53 = !{!38, !38, i64 0}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = distinct !{!56, !55}
!57 = distinct !{!57, !55}
!58 = distinct !{!58, !55}
!59 = distinct !{!59, !55}
!60 = distinct !{!60, !55}
!61 = !{!62}
!62 = distinct !{!62, !63}
!63 = distinct !{!63, !"LVerDomain"}
!64 = !{!65}
!65 = distinct !{!65, !63}
!66 = !{!67}
!67 = distinct !{!67, !63}
!68 = !{!69}
!69 = distinct !{!69, !63}
!70 = !{!71}
!71 = distinct !{!71, !63}
!72 = !{!73}
!73 = distinct !{!73, !63}
!74 = !{!75}
!75 = distinct !{!75, !63}
!76 = !{!77}
!77 = distinct !{!77, !63}
!78 = !{!79}
!79 = distinct !{!79, !63}
!80 = !{!77, !75, !73, !71, !69, !67, !65, !62}
!81 = distinct !{!81, !55, !82, !83}
!82 = !{!"llvm.loop.isvectorized", i32 1}
!83 = !{!"llvm.loop.unroll.runtime.disable"}
!84 = distinct !{!84, !55}
!85 = distinct !{!85, !55, !82}
!86 = distinct !{!86, !55}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!89 = distinct !{!89, !"_ZN4ncnn3Mat7channelEi"}
!90 = distinct !{!90, !55}
!91 = distinct !{!91, !55}
!92 = distinct !{!92, !55}
!93 = distinct !{!93, !55}
!94 = !{!95}
!95 = distinct !{!95, !96}
!96 = distinct !{!96, !"LVerDomain"}
!97 = !{!98}
!98 = distinct !{!98, !96}
!99 = !{!100}
!100 = distinct !{!100, !96}
!101 = !{!102}
!102 = distinct !{!102, !96}
!103 = !{!104}
!104 = distinct !{!104, !96}
!105 = !{!106}
!106 = distinct !{!106, !96}
!107 = !{!108}
!108 = distinct !{!108, !96}
!109 = !{!110}
!110 = distinct !{!110, !96}
!111 = !{!112}
!112 = distinct !{!112, !96}
!113 = !{!110, !108, !106, !104, !102, !100, !98, !95}
!114 = distinct !{!114, !55, !82, !83}
!115 = distinct !{!115, !55, !82}
!116 = distinct !{!116, !55}
!117 = !{!118}
!118 = distinct !{!118, !119}
!119 = distinct !{!119, !"LVerDomain"}
!120 = !{!121}
!121 = distinct !{!121, !119}
!122 = !{!123}
!123 = distinct !{!123, !119}
!124 = !{!125}
!125 = distinct !{!125, !119}
!126 = !{!127}
!127 = distinct !{!127, !119}
!128 = !{!125, !123, !121, !118}
!129 = distinct !{!129, !55, !82, !83}
!130 = distinct !{!130, !55}
!131 = distinct !{!131, !55, !82}
!132 = distinct !{!132, !55}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!135 = distinct !{!135, !"_ZN4ncnn3Mat7channelEi"}
!136 = distinct !{!136, !55}
!137 = distinct !{!137, !55}
!138 = !{!139}
!139 = distinct !{!139, !140}
!140 = distinct !{!140, !"LVerDomain"}
!141 = !{!142}
!142 = distinct !{!142, !140}
!143 = !{!144}
!144 = distinct !{!144, !140}
!145 = !{!146}
!146 = distinct !{!146, !140}
!147 = !{!148}
!148 = distinct !{!148, !140}
!149 = !{!150}
!150 = distinct !{!150, !140}
!151 = !{!152}
end_hunk_11
