Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution1d_x86_fma?download=true
inline.NumInlined: 21
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN4ncnn21Convolution1D_x86_fma15create_pipelineERKNS_6OptionE:bb.a
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
  %2 = add i32 %i.n, -2
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
begin_hunk_1_@_ZN4ncnn21Convolution1D_x86_fma15create_pipelineERKNS_6OptionE:bb.a
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
  %3 = add i32 %i.n, -2
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
  %.1922.lcssa.i = phi i32 [ %.0921.lcssa.i, %.preheader1102.i ], [ %i.ij, %.preheader1102.thread.i ], [ %i.ajz, %.preheader1098.preheader.i ], [ %i.ama, %._crit_edge1283.us.i ] ; 4 uses
  %i.amd = or disjoint i32 %.1922.lcssa.i, 1
  %i.ame = icmp slt i32 %i.amd, %i.n
  br i1 %i.ame, label %.preheader1097.lr.ph.i, label %.preheader1100.i

.preheader1097.lr.ph.i:                           ; preds = %.preheader1101.i
  br i1 %i.hn, label %.preheader1097.us.i.preheader, label %._crit_edge1337.split.i

.preheader1097.us.i.preheader:                    ; preds = %.preheader1097.lr.ph.i
  %scevgep375 = getelementptr i8, ptr %.1937.lcssa.i, i64 %i.it
  %scevgep376 = getelementptr i8, ptr %.1937.lcssa.i, i64 %i.iu
  %i.amf = sub i32 %2, %.1922.lcssa.i
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
  %4 = add i32 %i.n, -2
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
  %.1863.lcssa.i = phi i32 [ %.0862.lcssa.i, %.preheader1094.i ], [ %i.adp, %.preheader1094.thread.i ], [ %i.aya, %.preheader1090.preheader.i ], [ %i.bab, %._crit_edge1360.us.i ] ; 4 uses
  %i.bae = or disjoint i32 %.1863.lcssa.i, 1
  %i.baf = icmp slt i32 %i.bae, %i.n
  br i1 %i.baf, label %.preheader1089.lr.ph.i, label %.preheader1092.i

.preheader1089.lr.ph.i:                           ; preds = %.preheader1093.i
  br i1 %i.acp, label %.preheader1089.us.i.preheader, label %._crit_edge1400.split.i

.preheader1089.us.i.preheader:                    ; preds = %.preheader1089.lr.ph.i
  %scevgep486 = getelementptr i8, ptr %.1876.lcssa.i, i64 %i.ady
  %scevgep487 = getelementptr i8, ptr %.1876.lcssa.i, i64 %i.adz
  %i.bag = sub i32 %3, %.1863.lcssa.i
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
begin_hunk_2_@_ZN4ncnn21Convolution1D_x86_fma15create_pipelineERKNS_6OptionE:bb.a
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
  %.1827.lcssa.i = phi i32 [ %.0826.lcssa.i, %.preheader1086.i ], [ %i.asb, %.preheader1086.thread.i ], [ %i.bif, %.preheader1082.preheader.i ], [ %i.bkc, %._crit_edge1426.us.i ] ; 4 uses
  %i.bkf = or disjoint i32 %.1827.lcssa.i, 1
  %i.bkg = icmp slt i32 %i.bkf, %i.n
  br i1 %i.bkg, label %.preheader1081.lr.ph.i, label %.preheader1084.i

.preheader1081.lr.ph.i:                           ; preds = %.preheader1085.i
  br i1 %i.arl, label %.preheader1081.us.i.preheader, label %._crit_edge1459.split.i

.preheader1081.us.i.preheader:                    ; preds = %.preheader1081.lr.ph.i
  %scevgep646.a = getelementptr i8, ptr %.1835.lcssa.i, i64 %i.ash
  %i.bkh = getelementptr i8, ptr %.1835.lcssa.i, i64 %i.ash
  %scevgep647.a = getelementptr i8, ptr %i.bkh, i64 %i.asi
  %i.bki = sub i32 %4, %.1827.lcssa.i
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
begin_hunk_3_@_ZNK4ncnn21Convolution1D_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a

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
  br label %bb.ba

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
  %i.de = add nsw i32 %i.dd, %i.dc                ; 3 uses
  %i.df = sub nsw i32 %i.cv, %i.de                ; 2 uses
  %i.dg = sdiv i32 %i.df, 4                       ; 2 uses
  %i.dh = icmp sgt i32 %i.df, 3
  br i1 %i.dh, label %.lr.ph1249.i, label %._crit_edge1250.i

.lr.ph1249.i:                                     ; preds = %bb.j
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dj = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not570.i = icmp eq ptr %i.dj, null
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.dm = load i32, ptr %i.d, align 4
  %i.dn = load i32, ptr %i.cp, align 4, !tbaa !249 ; 2 uses
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %.lr.ph1249.split.preheader.i, label %._crit_edge1250.i

.lr.ph1249.split.preheader.i:                     ; preds = %.lr.ph1249.i
  %i.dp = sext i32 %i.de to i64
  %wide.trip.count1668.i = zext nneg i32 %i.dg to i64
  br label %.lr.ph1249.split.i

._crit_edge1250.i:                                ; preds = %._crit_edge.i, %.lr.ph1249.i, %bb.j
  %i.dq = shl nsw i32 %i.dg, 2
  %i.dr = add nsw i32 %i.dq, %i.de                ; 4 uses
  %i.ds = sub nsw i32 %i.cv, %i.dr                ; 2 uses
  %i.dt = sdiv i32 %i.ds, 2                       ; 2 uses
  %i.du = icmp sgt i32 %i.ds, 1
  br i1 %i.du, label %.lr.ph1398.i, label %._crit_edge1399.split.i

.lr.ph1398.i:                                     ; preds = %._crit_edge1250.i
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
  br i1 %i.ee, label %.lr.ph1398.split.i, label %._crit_edge1399.split.i

.lr.ph1398.split.i:                               ; preds = %.lr.ph1398.i
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.en = load ptr, ptr %i.cb, align 8, !tbaa !18, !noalias !268
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !20, !noalias !268
  %i.ep = load i64, ptr %i.el, align 8, !tbaa !49, !noalias !268
  %factor.op.mul1401.i = mul i64 %i.ep, %i.eo
  %i.eq = and i32 %i.dx, -8                       ; 2 uses
  %i.er = sext i32 %i.dr to i64
  %wide.trip.count1706.i = zext nneg i32 %i.dt to i64
  %wide.trip.count1701.i = zext nneg i32 %i.dy to i64
  br label %.lr.ph1390.i

.lr.ph1249.splitthread-pre-split.i:               ; preds = %._crit_edge.i
  %.pr.i = load i32, ptr %i.cp, align 4, !tbaa !249
  br label %.lr.ph1249.split.i

.lr.ph1249.split.i:                               ; preds = %.lr.ph1249.splitthread-pre-split.i, %.lr.ph1249.split.preheader.i
  %i.es = phi i32 [ %.pr.i, %.lr.ph1249.splitthread-pre-split.i ], [ %i.dn, %.lr.ph1249.split.preheader.i ] ; 2 uses
  %indvars.iv1665.i = phi i64 [ %indvars.iv.next1666.i, %.lr.ph1249.splitthread-pre-split.i ], [ 0, %.lr.ph1249.split.preheader.i ] ; 2 uses
  %i.et = load i32, ptr %i.af, align 8, !tbaa !251 ; 7 uses
  %i.eu = load i32, ptr %i.ai, align 8, !tbaa !264
  %i.ev = mul i32 %i.eu, %i.et                    ; 11 uses
  %i.ew = load i32, ptr %i.cr, align 8, !tbaa !251 ; 2 uses
  %i.ex = icmp sgt i32 %i.es, 0
  br i1 %i.ex, label %.lr.ph1242.i, label %._crit_edge.i

.lr.ph1242.i:                                     ; preds = %.lr.ph1249.split.i
  %i.ey = load ptr, ptr %2, align 8, !tbaa !18
  %i.ez = shl nuw nsw i64 %indvars.iv1665.i, 2
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
  %factor.op.mul1243.i = mul i32 %i.fq, %i.et     ; 2 uses
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
  %5 = add i32 %i.ev, -2
  %i.gd = add i32 %i.fu, -1                       ; 2 uses
  %i.ge = zext i32 %i.gd to i64                   ; 2 uses
  %i.gf = shl nuw nsw i64 %i.ge, 5
  %i.gg = shl nuw nsw i64 %i.ge, 4
  %i.gh = sext i32 %i.fq to i64                   ; 2 uses
  %xtraiter = and i32 %i.fu, 1
  %i.gi = icmp eq i32 %i.gd, 0
  %unroll_iter = and i32 %i.fu, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod386 = trunc i32 %i.fu to i1
  %xtraiter388 = and i32 %i.fu, 3                 ; 3 uses
  %i.gj = icmp ult i32 %i.fu, 4
  %unroll_iter392 = and i32 %i.fu, 2147483644
  %lcmp.mod389.not = icmp eq i32 %xtraiter388, 0
  %lcmp.mod391 = icmp ne i32 %xtraiter388, 0
  br label %bb.k

._crit_edge.i:                                    ; preds = %bb.w, %.lr.ph1249.split.i
  %indvars.iv.next1666.i = add nuw nsw i64 %indvars.iv1665.i, 1 ; 2 uses
  %exitcond1669.not.i = icmp eq i64 %indvars.iv.next1666.i, %wide.trip.count1668.i
  br i1 %exitcond1669.not.i, label %._crit_edge1250.i, label %.lr.ph1249.splitthread-pre-split.i, !llvm.loop !271

bb.k:                                             ; preds = %bb.w, %.lr.ph1242.i
  %indvars.iv1661.i = phi i64 [ 0, %.lr.ph1242.i ], [ %indvars.iv.next1662.i, %bb.w ] ; 5 uses
  %.05581240.i = phi ptr [ %i.fi, %.lr.ph1242.i ], [ %.2560.i, %bb.w ] ; 8 uses
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
  br i1 %i.fp, label %.lr.ph1145.i, label %.preheader1097.i

.lr.ph1145.i:                                     ; preds = %_ZN4ncnn3MatD2Ev.exit572.i
  %i.gr = load ptr, ptr %4, align 8, !tbaa !18
  %i.gs = load i32, ptr %i.ah, align 4, !tbaa !249
  %i.gt = sext i32 %i.gs to i64
  %i.gu = load i64, ptr %i.ae, align 8, !tbaa !49
  %factor.op.mul.i = mul i64 %i.gu, %i.gt         ; 2 uses
  %i.gv = trunc nuw nsw i64 %indvars.iv1661.i to i32
  %.reass1244.i = mul i32 %factor.op.mul1243.i, %i.gv
  %i.gw = sext i32 %.reass1244.i to i64
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
  br i1 %i.fr, label %.preheader1093.i.us, label %.loopexit1094.i

.preheader1093.i.us:                              ; preds = %.lr.ph1145.i, %.loopexit1091.i.us
  %.05371144.i.us = phi i32 [ %i.kd, %.loopexit1091.i.us ], [ 0, %.lr.ph1145.i ] ; 2 uses
  %.05411143.i.us = phi ptr [ %.6547.i.us, %.loopexit1091.i.us ], [ %i.gq, %.lr.ph1145.i ] ; 3 uses
  %.19471142.i.us = phi <4 x float> [ %.7953.i.us, %.loopexit1091.i.us ], [ %.0946.i, %.lr.ph1145.i ] ; 2 uses
  %.09671141.i.us = phi <4 x float> [ %.6973.i.us, %.loopexit1091.i.us ], [ zeroinitializer, %.lr.ph1145.i ] ; 2 uses
  %.09811140.i.us = phi <4 x float> [ %.6987.i.us, %.loopexit1091.i.us ], [ zeroinitializer, %.lr.ph1145.i ] ; 2 uses
  %.09931139.i.us = phi <4 x float> [ %.6999.i.us, %.loopexit1091.i.us ], [ zeroinitializer, %.lr.ph1145.i ] ; 2 uses
  br i1 %i.gy, label %.lr.ph.i.us.preheader, label %.loopexit1091.i.us

.lr.ph.i.us.preheader:                            ; preds = %.preheader1093.i.us
  %i.hw = lshr exact i32 %.05371144.i.us, 3
  %i.hx = zext nneg i32 %i.hw to i64
  %.reass.i.us = mul i64 %factor.op.mul.i, %i.hx
  %gep.i.us = getelementptr i8, ptr %invariant.gep.i, i64 %.reass.i.us
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %.lr.ph.i.us
  %.05311105.i.us = phi i32 [ %i.kc, %.lr.ph.i.us ], [ 0, %.lr.ph.i.us.preheader ]
  %.05321104.i.us = phi ptr [ %i.ka, %.lr.ph.i.us ], [ %gep.i.us, %.lr.ph.i.us.preheader ] ; 9 uses
  %.15421103.i.us = phi ptr [ %i.kb, %.lr.ph.i.us ], [ %.05411143.i.us, %.lr.ph.i.us.preheader ] ; 9 uses
  %.29481102.i.us = phi <4 x float> [ %i.jk, %.lr.ph.i.us ], [ %.19471142.i.us, %.lr.ph.i.us.preheader ]
  %.19681101.i.us = phi <4 x float> [ %i.jp, %.lr.ph.i.us ], [ %.09671141.i.us, %.lr.ph.i.us.preheader ]
  %.19821100.i.us = phi <4 x float> [ %i.ju, %.lr.ph.i.us ], [ %.09811140.i.us, %.lr.ph.i.us.preheader ]
  %.19941099.i.us = phi <4 x float> [ %i.jz, %.lr.ph.i.us ], [ %.09931139.i.us, %.lr.ph.i.us.preheader ]
  %i.hy = load <4 x float>, ptr %.15421103.i.us, align 16, !tbaa !273
  %i.hz = getelementptr inbounds nuw i8, ptr %.15421103.i.us, i64 16
  %i.ia = load <4 x float>, ptr %i.hz, align 16, !tbaa !273
  %i.ib = getelementptr inbounds nuw i8, ptr %.15421103.i.us, i64 32
  %i.ic = load <4 x float>, ptr %i.ib, align 16, !tbaa !273
  %i.id = getelementptr inbounds nuw i8, ptr %.15421103.i.us, i64 48
  %i.ie = load <4 x float>, ptr %i.id, align 16, !tbaa !273
  %i.if = getelementptr inbounds nuw i8, ptr %.15421103.i.us, i64 64
  %i.ig = load <4 x float>, ptr %i.if, align 16, !tbaa !273
  %i.ih = getelementptr inbounds nuw i8, ptr %.15421103.i.us, i64 80
  %i.ii = load <4 x float>, ptr %i.ih, align 16, !tbaa !273
  %i.ij = getelementptr inbounds nuw i8, ptr %.15421103.i.us, i64 96
  %i.ik = load <4 x float>, ptr %i.ij, align 16, !tbaa !273
  %i.il = getelementptr inbounds nuw i8, ptr %.15421103.i.us, i64 112
  %i.im = load <4 x float>, ptr %i.il, align 16, !tbaa !273
  %i.in = load float, ptr %.05321104.i.us, align 4, !tbaa !53
  %i.io = insertelement <4 x float> poison, float %i.in, i64 0
  %i.ip = shufflevector <4 x float> %i.io, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hy, <4 x float> nofpclass(nan inf) %i.ip, <4 x float> nofpclass(nan inf) %.29481102.i.us)
  %i.ir = getelementptr inbounds nuw i8, ptr %.05321104.i.us, i64 4
  %i.is = load float, ptr %i.ir, align 4, !tbaa !53
  %i.it = insertelement <4 x float> poison, float %i.is, i64 0
  %i.iu = shufflevector <4 x float> %i.it, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ia, <4 x float> nofpclass(nan inf) %i.iu, <4 x float> nofpclass(nan inf) %.19681101.i.us)
  %i.iw = getelementptr inbounds nuw i8, ptr %.05321104.i.us, i64 8
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !53
  %i.iy = insertelement <4 x float> poison, float %i.ix, i64 0
  %i.iz = shufflevector <4 x float> %i.iy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ja = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ic, <4 x float> nofpclass(nan inf) %i.iz, <4 x float> nofpclass(nan inf) %.19821100.i.us)
  %i.jb = getelementptr inbounds nuw i8, ptr %.05321104.i.us, i64 12
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !53
  %i.jd = insertelement <4 x float> poison, float %i.jc, i64 0
  %i.je = shufflevector <4 x float> %i.jd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ie, <4 x float> nofpclass(nan inf) %i.je, <4 x float> nofpclass(nan inf) %.19941099.i.us)
  %i.jg = getelementptr inbounds nuw i8, ptr %.05321104.i.us, i64 16
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !53
  %i.ji = insertelement <4 x float> poison, float %i.jh, i64 0
  %i.jj = shufflevector <4 x float> %i.ji, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ig, <4 x float> nofpclass(nan inf) %i.jj, <4 x float> nofpclass(nan inf) %i.iq) ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.05321104.i.us, i64 20
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !53
  %i.jn = insertelement <4 x float> poison, float %i.jm, i64 0
  %i.jo = shufflevector <4 x float> %i.jn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ii, <4 x float> nofpclass(nan inf) %i.jo, <4 x float> nofpclass(nan inf) %i.iv) ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.05321104.i.us, i64 24
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !53
  %i.js = insertelement <4 x float> poison, float %i.jr, i64 0
  %i.jt = shufflevector <4 x float> %i.js, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ju = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ik, <4 x float> nofpclass(nan inf) %i.jt, <4 x float> nofpclass(nan inf) %i.ja) ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.05321104.i.us, i64 28
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !53
  %i.jx = insertelement <4 x float> poison, float %i.jw, i64 0
  %i.jy = shufflevector <4 x float> %i.jx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.im, <4 x float> nofpclass(nan inf) %i.jy, <4 x float> nofpclass(nan inf) %i.jf) ; 2 uses
  %i.ka = getelementptr inbounds [4 x i8], ptr %.05321104.i.us, i64 %i.hb
  %i.kb = getelementptr inbounds nuw i8, ptr %.15421103.i.us, i64 128
  %i.kc = add nuw nsw i32 %.05311105.i.us, 1      ; 2 uses
  %exitcond.not.i.us = icmp eq i32 %i.kc, %i.gx
  br i1 %exitcond.not.i.us, label %.loopexit1094.loopexit.i.us, label %.lr.ph.i.us, !llvm.loop !277

.loopexit1094.loopexit.i.us:                      ; preds = %.lr.ph.i.us
  %scevgep.i.us = getelementptr i8, ptr %.05411143.i.us, i64 128
  %scevgep1638.i.us = getelementptr i8, ptr %scevgep.i.us, i64 %i.hv
  br label %.loopexit1091.i.us

.loopexit1091.i.us:                               ; preds = %.loopexit1094.loopexit.i.us, %.preheader1093.i.us
  %.6999.i.us = phi nsz <4 x float> [ %.09931139.i.us, %.preheader1093.i.us ], [ %i.jz, %.loopexit1094.loopexit.i.us ] ; 2 uses
  %.6987.i.us = phi nsz <4 x float> [ %.09811140.i.us, %.preheader1093.i.us ], [ %i.ju, %.loopexit1094.loopexit.i.us ] ; 2 uses
  %.6973.i.us = phi nsz <4 x float> [ %.09671141.i.us, %.preheader1093.i.us ], [ %i.jp, %.loopexit1094.loopexit.i.us ] ; 2 uses
  %.7953.i.us = phi nsz <4 x float> [ %.19471142.i.us, %.preheader1093.i.us ], [ %i.jk, %.loopexit1094.loopexit.i.us ] ; 2 uses
  %.6547.i.us = phi ptr [ %.05411143.i.us, %.preheader1093.i.us ], [ %scevgep1638.i.us, %.loopexit1094.loopexit.i.us ] ; 2 uses
  %i.kd = add nuw nsw i32 %.05371144.i.us, 8      ; 2 uses
  %i.ke = or disjoint i32 %i.kd, 7
  %i.kf = icmp slt i32 %i.ke, %i.ev
  br i1 %i.kf, label %.preheader1093.i.us, label %.preheader1097.i, !llvm.loop !278

.preheader1097.i:                                 ; preds = %.loopexit1091.i, %.loopexit1091.i.us, %_ZN4ncnn3MatD2Ev.exit572.i
  %.0993.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit572.i ], [ %.6999.i.us, %.loopexit1091.i.us ], [ %.6999.i, %.loopexit1091.i ] ; 2 uses
  %.0981.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit572.i ], [ %.6987.i.us, %.loopexit1091.i.us ], [ %.6987.i, %.loopexit1091.i ] ; 2 uses
  %.0967.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit572.i ], [ %.6973.i.us, %.loopexit1091.i.us ], [ %.6973.i, %.loopexit1091.i ] ; 2 uses
  %.1947.lcssa.i = phi <4 x float> [ %.0946.i, %_ZN4ncnn3MatD2Ev.exit572.i ], [ %.7953.i.us, %.loopexit1091.i.us ], [ %.7953.i, %.loopexit1091.i ] ; 2 uses
  %.0541.lcssa.i = phi ptr [ %i.gq, %_ZN4ncnn3MatD2Ev.exit572.i ], [ %.6547.i.us, %.loopexit1091.i.us ], [ %.6547.i, %.loopexit1091.i ] ; 2 uses
  %.0537.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit572.i ], [ %i.gc, %.loopexit1091.i.us ], [ %i.gc, %.loopexit1091.i ] ; 3 uses
  %i.kg = or disjoint i32 %.0537.lcssa.i, 3
  %i.kh = icmp slt i32 %i.kg, %i.ev
  br i1 %i.kh, label %.lr.ph1185.i, label %.preheader1096.i

.lr.ph1185.i:                                     ; preds = %.preheader1097.i
  %i.ki = load ptr, ptr %4, align 8, !tbaa !18
  %i.kj = load i32, ptr %i.ah, align 4, !tbaa !249
  %i.kk = sext i32 %i.kj to i64
  %i.kl = load i64, ptr %i.ae, align 8, !tbaa !49
  %factor.op.mul1192.i = mul i64 %i.kl, %i.kk
  %i.km = trunc nuw nsw i64 %indvars.iv1661.i to i32
  %.reass1246.i = mul i32 %factor.op.mul1243.i, %i.km
  %i.kn = sext i32 %.reass1246.i to i64
  %invariant.gep1194.i = getelementptr [4 x i8], ptr %i.ki, i64 %i.kn
  %i.ko = load i32, ptr %i.a, align 4             ; 4 uses
end_hunk_3
begin_hunk_4_@_ZNK4ncnn21Convolution1D_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.kv = shl nsw i32 %i.kt, 1
  %i.kw = sext i32 %i.kv to i64
  %i.kx = mul nsw i32 %i.kt, 3
  %i.ky = sext i32 %i.kx to i64
  %i.kz = sext i32 %i.kq to i64
  %i.la = add i32 %i.ko, -1
  %i.lb = zext i32 %i.la to i64
  %i.lc = shl nuw nsw i64 %i.lb, 6                ; 2 uses
  br label %bb.n

.loopexit1094.i:                                  ; preds = %.lr.ph1145.i, %.loopexit1091.i
  %.05371144.i = phi i32 [ %i.pq, %.loopexit1091.i ], [ 0, %.lr.ph1145.i ] ; 2 uses
  %.05411143.i = phi ptr [ %.6547.i, %.loopexit1091.i ], [ %i.gq, %.lr.ph1145.i ] ; 7 uses
  %.19471142.i = phi <4 x float> [ %.7953.i, %.loopexit1091.i ], [ %.0946.i, %.lr.ph1145.i ] ; 5 uses
  %.09671141.i = phi <4 x float> [ %.6973.i, %.loopexit1091.i ], [ zeroinitializer, %.lr.ph1145.i ] ; 5 uses
  %.09811140.i = phi <4 x float> [ %.6987.i, %.loopexit1091.i ], [ zeroinitializer, %.lr.ph1145.i ] ; 5 uses
  %.09931139.i = phi <4 x float> [ %.6999.i, %.loopexit1091.i ], [ zeroinitializer, %.lr.ph1145.i ] ; 5 uses
  %i.ld = sdiv i32 %.05371144.i, %i.et
  %i.le = sext i32 %i.ld to i64
  %.reass.i = mul i64 %factor.op.mul.i, %i.le
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %.reass.i ; 3 uses
  br i1 %i.fs, label %bb.m, label %.loopexit1092.i

bb.m:                                             ; preds = %.loopexit1094.i
  br i1 %i.gy, label %.lr.ph1119.preheader.i, label %.loopexit1091.i

.lr.ph1119.preheader.i:                           ; preds = %bb.m
  %i.lf = getelementptr inbounds [4 x i8], ptr %gep.i, i64 %i.hd
  br label %.lr.ph1119.i

.lr.ph1119.i:                                     ; preds = %.lr.ph1119.i, %.lr.ph1119.preheader.i
  %.05291118.i = phi i32 [ %i.nk, %.lr.ph1119.i ], [ 0, %.lr.ph1119.preheader.i ]
  %.05301117.i = phi ptr [ %i.ni, %.lr.ph1119.i ], [ %i.lf, %.lr.ph1119.preheader.i ] ; 5 uses
  %.25341116.i = phi ptr [ %i.nh, %.lr.ph1119.i ], [ %gep.i, %.lr.ph1119.preheader.i ] ; 5 uses
  %.35441115.i = phi ptr [ %i.nj, %.lr.ph1119.i ], [ %.05411143.i, %.lr.ph1119.preheader.i ] ; 9 uses
  %.49501114.i = phi <4 x float> [ %i.mr, %.lr.ph1119.i ], [ %.19471142.i, %.lr.ph1119.preheader.i ]
  %.39701113.i = phi <4 x float> [ %i.mw, %.lr.ph1119.i ], [ %.09671141.i, %.lr.ph1119.preheader.i ]
  %.39841112.i = phi <4 x float> [ %i.nb, %.lr.ph1119.i ], [ %.09811140.i, %.lr.ph1119.preheader.i ]
  %.39961111.i = phi <4 x float> [ %i.ng, %.lr.ph1119.i ], [ %.09931139.i, %.lr.ph1119.preheader.i ]
  %i.lg = load <4 x float>, ptr %.35441115.i, align 16, !tbaa !273
  %i.lh = getelementptr inbounds nuw i8, ptr %.35441115.i, i64 16
  %i.li = load <4 x float>, ptr %i.lh, align 16, !tbaa !273
  %i.lj = getelementptr inbounds nuw i8, ptr %.35441115.i, i64 32
  %i.lk = load <4 x float>, ptr %i.lj, align 16, !tbaa !273
  %i.ll = getelementptr inbounds nuw i8, ptr %.35441115.i, i64 48
  %i.lm = load <4 x float>, ptr %i.ll, align 16, !tbaa !273
  %i.ln = getelementptr inbounds nuw i8, ptr %.35441115.i, i64 64
  %i.lo = load <4 x float>, ptr %i.ln, align 16, !tbaa !273
  %i.lp = getelementptr inbounds nuw i8, ptr %.35441115.i, i64 80
  %i.lq = load <4 x float>, ptr %i.lp, align 16, !tbaa !273
  %i.lr = getelementptr inbounds nuw i8, ptr %.35441115.i, i64 96
  %i.ls = load <4 x float>, ptr %i.lr, align 16, !tbaa !273
  %i.lt = getelementptr inbounds nuw i8, ptr %.35441115.i, i64 112
  %i.lu = load <4 x float>, ptr %i.lt, align 16, !tbaa !273
  %i.lv = load float, ptr %.25341116.i, align 4, !tbaa !53
  %i.lw = insertelement <4 x float> poison, float %i.lv, i64 0
  %i.lx = shufflevector <4 x float> %i.lw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ly = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lg, <4 x float> nofpclass(nan inf) %i.lx, <4 x float> nofpclass(nan inf) %.49501114.i)
  %i.lz = getelementptr inbounds nuw i8, ptr %.25341116.i, i64 4
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !53
  %i.mb = insertelement <4 x float> poison, float %i.ma, i64 0
  %i.mc = shufflevector <4 x float> %i.mb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.md = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.li, <4 x float> nofpclass(nan inf) %i.mc, <4 x float> nofpclass(nan inf) %.39701113.i)
  %i.me = getelementptr inbounds nuw i8, ptr %.25341116.i, i64 8
  %i.mf = load float, ptr %i.me, align 4, !tbaa !53
  %i.mg = insertelement <4 x float> poison, float %i.mf, i64 0
  %i.mh = shufflevector <4 x float> %i.mg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lk, <4 x float> nofpclass(nan inf) %i.mh, <4 x float> nofpclass(nan inf) %.39841112.i)
  %i.mj = getelementptr inbounds nuw i8, ptr %.25341116.i, i64 12
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !53
  %i.ml = insertelement <4 x float> poison, float %i.mk, i64 0
  %i.mm = shufflevector <4 x float> %i.ml, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lm, <4 x float> nofpclass(nan inf) %i.mm, <4 x float> nofpclass(nan inf) %.39961111.i)
  %i.mo = load float, ptr %.05301117.i, align 4, !tbaa !53
  %i.mp = insertelement <4 x float> poison, float %i.mo, i64 0
  %i.mq = shufflevector <4 x float> %i.mp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lo, <4 x float> nofpclass(nan inf) %i.mq, <4 x float> nofpclass(nan inf) %i.ly) ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.05301117.i, i64 4
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !53
  %i.mu = insertelement <4 x float> poison, float %i.mt, i64 0
  %i.mv = shufflevector <4 x float> %i.mu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lq, <4 x float> nofpclass(nan inf) %i.mv, <4 x float> nofpclass(nan inf) %i.md) ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.05301117.i, i64 8
  %i.my = load float, ptr %i.mx, align 4, !tbaa !53
  %i.mz = insertelement <4 x float> poison, float %i.my, i64 0
  %i.na = shufflevector <4 x float> %i.mz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ls, <4 x float> nofpclass(nan inf) %i.na, <4 x float> nofpclass(nan inf) %i.mi) ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.05301117.i, i64 12
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !53
  %i.ne = insertelement <4 x float> poison, float %i.nd, i64 0
  %i.nf = shufflevector <4 x float> %i.ne, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ng = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lu, <4 x float> nofpclass(nan inf) %i.nf, <4 x float> nofpclass(nan inf) %i.mn) ; 2 uses
  %i.nh = getelementptr inbounds [4 x i8], ptr %.25341116.i, i64 %i.hf
  %i.ni = getelementptr inbounds [4 x i8], ptr %.05301117.i, i64 %i.hf
  %i.nj = getelementptr inbounds nuw i8, ptr %.35441115.i, i64 128
  %i.nk = add nuw nsw i32 %.05291118.i, 1         ; 2 uses
  %exitcond1641.not.i = icmp eq i32 %i.nk, %i.gx
  br i1 %exitcond1641.not.i, label %.loopexit1092.loopexit.i, label %.lr.ph1119.i, !llvm.loop !279

.loopexit1092.loopexit.i:                         ; preds = %.lr.ph1119.i
  %scevgep1639.i = getelementptr i8, ptr %.05411143.i, i64 128
  %scevgep1640.i = getelementptr i8, ptr %scevgep1639.i, i64 %i.hv
  br label %.loopexit1091.i

.loopexit1092.i:                                  ; preds = %.loopexit1094.i
  br i1 %i.ft, label %.preheader1090.i, label %.loopexit1091.i

.preheader1090.i:                                 ; preds = %.loopexit1092.i
  br i1 %i.gy, label %.lr.ph1133.i, label %.loopexit1091.i

.lr.ph1133.i:                                     ; preds = %.preheader1090.i, %.lr.ph1133.i
  %.05281132.i = phi i32 [ %i.pp, %.lr.ph1133.i ], [ 0, %.preheader1090.i ]
  %.45361131.i = phi ptr [ %i.pn, %.lr.ph1133.i ], [ %gep.i, %.preheader1090.i ] ; 9 uses
  %.55461130.i = phi ptr [ %i.po, %.lr.ph1133.i ], [ %.05411143.i, %.preheader1090.i ] ; 9 uses
  %.69521129.i = phi <4 x float> [ %i.ox, %.lr.ph1133.i ], [ %.19471142.i, %.preheader1090.i ]
  %.59721128.i = phi <4 x float> [ %i.pc, %.lr.ph1133.i ], [ %.09671141.i, %.preheader1090.i ]
  %.59861127.i = phi <4 x float> [ %i.ph, %.lr.ph1133.i ], [ %.09811140.i, %.preheader1090.i ]
  %.59981126.i = phi <4 x float> [ %i.pm, %.lr.ph1133.i ], [ %.09931139.i, %.preheader1090.i ]
  %i.nl = load <4 x float>, ptr %.55461130.i, align 16, !tbaa !273
  %i.nm = getelementptr inbounds nuw i8, ptr %.55461130.i, i64 16
  %i.nn = load <4 x float>, ptr %i.nm, align 16, !tbaa !273
  %i.no = getelementptr inbounds nuw i8, ptr %.55461130.i, i64 32
  %i.np = load <4 x float>, ptr %i.no, align 16, !tbaa !273
  %i.nq = getelementptr inbounds nuw i8, ptr %.55461130.i, i64 48
  %i.nr = load <4 x float>, ptr %i.nq, align 16, !tbaa !273
  %i.ns = getelementptr inbounds nuw i8, ptr %.55461130.i, i64 64
  %i.nt = load <4 x float>, ptr %i.ns, align 16, !tbaa !273
  %i.nu = getelementptr inbounds nuw i8, ptr %.55461130.i, i64 80
  %i.nv = load <4 x float>, ptr %i.nu, align 16, !tbaa !273
  %i.nw = getelementptr inbounds nuw i8, ptr %.55461130.i, i64 96
  %i.nx = load <4 x float>, ptr %i.nw, align 16, !tbaa !273
  %i.ny = getelementptr inbounds nuw i8, ptr %.55461130.i, i64 112
  %i.nz = load <4 x float>, ptr %i.ny, align 16, !tbaa !273
  %i.oa = load float, ptr %.45361131.i, align 4, !tbaa !53
  %i.ob = insertelement <4 x float> poison, float %i.oa, i64 0
  %i.oc = shufflevector <4 x float> %i.ob, <4 x float> poison, <4 x i32> zeroinitializer
  %i.od = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nl, <4 x float> nofpclass(nan inf) %i.oc, <4 x float> nofpclass(nan inf) %.69521129.i)
  %i.oe = getelementptr inbounds [4 x i8], ptr %.45361131.i, i64 %i.hd
  %i.of = load float, ptr %i.oe, align 4, !tbaa !53
  %i.og = insertelement <4 x float> poison, float %i.of, i64 0
  %i.oh = shufflevector <4 x float> %i.og, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nn, <4 x float> nofpclass(nan inf) %i.oh, <4 x float> nofpclass(nan inf) %.59721128.i)
  %i.oj = getelementptr inbounds [4 x i8], ptr %.45361131.i, i64 %i.hh
  %i.ok = load float, ptr %i.oj, align 4, !tbaa !53
  %i.ol = insertelement <4 x float> poison, float %i.ok, i64 0
  %i.om = shufflevector <4 x float> %i.ol, <4 x float> poison, <4 x i32> zeroinitializer
  %i.on = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.np, <4 x float> nofpclass(nan inf) %i.om, <4 x float> nofpclass(nan inf) %.59861127.i)
  %i.oo = getelementptr inbounds [4 x i8], ptr %.45361131.i, i64 %i.hj
  %i.op = load float, ptr %i.oo, align 4, !tbaa !53
  %i.oq = insertelement <4 x float> poison, float %i.op, i64 0
  %i.or = shufflevector <4 x float> %i.oq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.os = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nr, <4 x float> nofpclass(nan inf) %i.or, <4 x float> nofpclass(nan inf) %.59981126.i)
  %i.ot = getelementptr inbounds [4 x i8], ptr %.45361131.i, i64 %i.hl
  %i.ou = load float, ptr %i.ot, align 4, !tbaa !53
  %i.ov = insertelement <4 x float> poison, float %i.ou, i64 0
  %i.ow = shufflevector <4 x float> %i.ov, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ox = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nt, <4 x float> nofpclass(nan inf) %i.ow, <4 x float> nofpclass(nan inf) %i.od) ; 2 uses
  %i.oy = getelementptr inbounds [4 x i8], ptr %.45361131.i, i64 %i.hn
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !53
  %i.pa = insertelement <4 x float> poison, float %i.oz, i64 0
  %i.pb = shufflevector <4 x float> %i.pa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nv, <4 x float> nofpclass(nan inf) %i.pb, <4 x float> nofpclass(nan inf) %i.oi) ; 2 uses
  %i.pd = getelementptr inbounds [4 x i8], ptr %.45361131.i, i64 %i.hp
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !53
  %i.pf = insertelement <4 x float> poison, float %i.pe, i64 0
  %i.pg = shufflevector <4 x float> %i.pf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ph = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nx, <4 x float> nofpclass(nan inf) %i.pg, <4 x float> nofpclass(nan inf) %i.on) ; 2 uses
  %i.pi = getelementptr inbounds [4 x i8], ptr %.45361131.i, i64 %i.hr
  %i.pj = load float, ptr %i.pi, align 4, !tbaa !53
  %i.pk = insertelement <4 x float> poison, float %i.pj, i64 0
  %i.pl = shufflevector <4 x float> %i.pk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nz, <4 x float> nofpclass(nan inf) %i.pl, <4 x float> nofpclass(nan inf) %i.os) ; 2 uses
  %i.pn = getelementptr inbounds [4 x i8], ptr %.45361131.i, i64 %i.hs
  %i.po = getelementptr inbounds nuw i8, ptr %.55461130.i, i64 128
  %i.pp = add nuw nsw i32 %.05281132.i, 1         ; 2 uses
  %exitcond1644.not.i = icmp eq i32 %i.pp, %i.gx
  br i1 %exitcond1644.not.i, label %.loopexit1091.loopexit.i, label %.lr.ph1133.i, !llvm.loop !280

.loopexit1091.loopexit.i:                         ; preds = %.lr.ph1133.i
  %scevgep1642.i = getelementptr i8, ptr %.05411143.i, i64 128
  %scevgep1643.i = getelementptr i8, ptr %scevgep1642.i, i64 %i.hv
  br label %.loopexit1091.i

.loopexit1091.i:                                  ; preds = %.loopexit1091.loopexit.i, %.preheader1090.i, %.loopexit1092.i, %.loopexit1092.loopexit.i, %bb.m
  %.6999.i = phi nsz <4 x float> [ %.09931139.i, %.loopexit1092.i ], [ %.09931139.i, %.preheader1090.i ], [ %i.pm, %.loopexit1091.loopexit.i ], [ %.09931139.i, %bb.m ], [ %i.ng, %.loopexit1092.loopexit.i ] ; 2 uses
  %.6987.i = phi nsz <4 x float> [ %.09811140.i, %.loopexit1092.i ], [ %.09811140.i, %.preheader1090.i ], [ %i.ph, %.loopexit1091.loopexit.i ], [ %.09811140.i, %bb.m ], [ %i.nb, %.loopexit1092.loopexit.i ] ; 2 uses
  %.6973.i = phi nsz <4 x float> [ %.09671141.i, %.loopexit1092.i ], [ %.09671141.i, %.preheader1090.i ], [ %i.pc, %.loopexit1091.loopexit.i ], [ %.09671141.i, %bb.m ], [ %i.mw, %.loopexit1092.loopexit.i ] ; 2 uses
  %.7953.i = phi nsz <4 x float> [ %.19471142.i, %.loopexit1092.i ], [ %.19471142.i, %.preheader1090.i ], [ %i.ox, %.loopexit1091.loopexit.i ], [ %.19471142.i, %bb.m ], [ %i.mr, %.loopexit1092.loopexit.i ] ; 2 uses
  %.6547.i = phi ptr [ %.05411143.i, %.loopexit1092.i ], [ %.05411143.i, %.preheader1090.i ], [ %scevgep1643.i, %.loopexit1091.loopexit.i ], [ %.05411143.i, %bb.m ], [ %scevgep1640.i, %.loopexit1092.loopexit.i ] ; 2 uses
  %i.pq = add nuw nsw i32 %.05371144.i, 8         ; 2 uses
  %i.pr = or disjoint i32 %i.pq, 7
  %i.ps = icmp slt i32 %i.pr, %i.ev
  br i1 %i.ps, label %.loopexit1094.i, label %.preheader1097.i, !llvm.loop !278

.preheader1096.i:                                 ; preds = %.loopexit1087.i, %.preheader1097.i
  %.71000.lcssa.i = phi <4 x float> [ %.0993.lcssa.i, %.preheader1097.i ], [ %.111004.i, %.loopexit1087.i ]
  %.7988.lcssa.i = phi <4 x float> [ %.0981.lcssa.i, %.preheader1097.i ], [ %.11992.i, %.loopexit1087.i ]
  %.7974.lcssa.i = phi <4 x float> [ %.0967.lcssa.i, %.preheader1097.i ], [ %.11978.i, %.loopexit1087.i ] ; 3 uses
  %.8954.lcssa.i = phi <4 x float> [ %.1947.lcssa.i, %.preheader1097.i ], [ %.12958.i, %.loopexit1087.i ] ; 3 uses
  %.7548.lcssa.i = phi ptr [ %.0541.lcssa.i, %.preheader1097.i ], [ %.11552.i, %.loopexit1087.i ] ; 3 uses
  %.1538.lcssa.i = phi i32 [ %.0537.lcssa.i, %.preheader1097.i ], [ %i.uh, %.loopexit1087.i ] ; 5 uses
  %i.pt = or disjoint i32 %.1538.lcssa.i, 1
  %i.pu = icmp slt i32 %i.pt, %i.ev
  br i1 %i.pu, label %.lr.ph1209.i, label %.preheader1095.i

.lr.ph1209.i:                                     ; preds = %.preheader1096.i
  %i.pv = load ptr, ptr %4, align 8, !tbaa !18
  %i.pw = load i32, ptr %i.ah, align 4, !tbaa !249
  %i.px = sext i32 %i.pw to i64
  %i.py = load i64, ptr %i.ae, align 8, !tbaa !49
  %factor.op.mul1214.i = mul i64 %i.py, %i.px
  %i.pz = mul nsw i64 %indvars.iv1661.i, %i.gh
  %invariant.gep1216.i = getelementptr [4 x i8], ptr %i.pv, i64 %i.pz
  %i.qa = load i32, ptr %i.e, align 4
  %i.qb = sext i32 %i.qa to i64                   ; 3 uses
  %i.qc = load i32, ptr %i.b, align 4
  %i.qd = sext i32 %i.qc to i64                   ; 2 uses
  br i1 %i.fv, label %.lr.ph1201.us.preheader.i, label %.lr.ph1209.split.preheader.i

.lr.ph1209.split.preheader.i:                     ; preds = %.lr.ph1209.i
  %i.qe = add i32 %.1538.lcssa.i, 2
  %reass.sub = sub i32 %5, %.1538.lcssa.i
  %i.qf = and i32 %reass.sub, -2
  %i.qg = add i32 %i.qe, %i.qf
  br label %.preheader1095.i

.lr.ph1201.us.preheader.i:                        ; preds = %.lr.ph1209.i
  %i.qh = zext i32 %.1538.lcssa.i to i64
  br label %.lr.ph1201.us.i

.lr.ph1201.us.i:                                  ; preds = %._crit_edge.us.i, %.lr.ph1201.us.preheader.i
  %indvars.iv.i = phi i64 [ %i.qh, %.lr.ph1201.us.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.us.i ] ; 2 uses
  %.125531207.us.i = phi ptr [ %.7548.lcssa.i, %.lr.ph1201.us.preheader.i ], [ %scevgep1652.i, %._crit_edge.us.i ] ; 3 uses
  %.139591206.us.i = phi <4 x float> [ %.8954.lcssa.i, %.lr.ph1201.us.preheader.i ], [ %.lcssa381.a, %._crit_edge.us.i ] ; 2 uses
  %.129791205.us.i = phi <4 x float> [ %.7974.lcssa.i, %.lr.ph1201.us.preheader.i ], [ %.lcssa380, %._crit_edge.us.i ] ; 2 uses
  %.reass1215.us.i = mul i64 %factor.op.mul1214.i, %indvars.iv.i
  %gep1217.us.i = getelementptr i8, ptr %invariant.gep1216.i, i64 %.reass1215.us.i ; 2 uses
  br i1 %i.gi, label %.epil.preheader, label %.lr.ph1201.us.i.new

.lr.ph1201.us.i.new:                              ; preds = %.lr.ph1201.us.i, %.lr.ph1201.us.i.new
  %.05221199.us.i = phi ptr [ %i.ri, %.lr.ph1201.us.i.new ], [ %gep1217.us.i, %.lr.ph1201.us.i ] ; 3 uses
  %.135541198.us.i = phi ptr [ %i.rj, %.lr.ph1201.us.i.new ], [ %.125531207.us.i, %.lr.ph1201.us.i ] ; 5 uses
  %.149601197.us.i = phi <4 x float> [ %i.rc, %.lr.ph1201.us.i.new ], [ %.139591206.us.i, %.lr.ph1201.us.i ]
  %.139801196.us.i = phi <4 x float> [ %i.rh, %.lr.ph1201.us.i.new ], [ %.129791205.us.i, %.lr.ph1201.us.i ]
  %niter = phi i32 [ %niter.next.1, %.lr.ph1201.us.i.new ], [ 0, %.lr.ph1201.us.i ]
  %i.qi = load <4 x float>, ptr %.135541198.us.i, align 16, !tbaa !273
  %i.qj = getelementptr inbounds nuw i8, ptr %.135541198.us.i, i64 16
  %i.qk = load <4 x float>, ptr %i.qj, align 16, !tbaa !273
  %i.ql = load float, ptr %.05221199.us.i, align 4, !tbaa !53
  %i.qm = insertelement <4 x float> poison, float %i.ql, i64 0
  %i.qn = shufflevector <4 x float> %i.qm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qi, <4 x float> nofpclass(nan inf) %i.qn, <4 x float> nofpclass(nan inf) %.149601197.us.i)
  %i.qp = getelementptr inbounds [4 x i8], ptr %.05221199.us.i, i64 %i.qb
  %i.qq = load float, ptr %i.qp, align 4, !tbaa !53
  %i.qr = insertelement <4 x float> poison, float %i.qq, i64 0
  %i.qs = shufflevector <4 x float> %i.qr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qk, <4 x float> nofpclass(nan inf) %i.qs, <4 x float> nofpclass(nan inf) %.139801196.us.i)
  %i.qu = getelementptr inbounds [4 x i8], ptr %.05221199.us.i, i64 %i.qd ; 3 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %.135541198.us.i, i64 32
  %i.qw = load <4 x float>, ptr %i.qv, align 16, !tbaa !273
  %i.qx = getelementptr inbounds nuw i8, ptr %.135541198.us.i, i64 48
  %i.qy = load <4 x float>, ptr %i.qx, align 16, !tbaa !273
  %i.qz = load float, ptr %i.qu, align 4, !tbaa !53
  %i.ra = insertelement <4 x float> poison, float %i.qz, i64 0
  %i.rb = shufflevector <4 x float> %i.ra, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qw, <4 x float> nofpclass(nan inf) %i.rb, <4 x float> nofpclass(nan inf) %i.qo) ; 3 uses
  %i.rd = getelementptr inbounds [4 x i8], ptr %i.qu, i64 %i.qb
  %i.re = load float, ptr %i.rd, align 4, !tbaa !53
  %i.rf = insertelement <4 x float> poison, float %i.re, i64 0
  %i.rg = shufflevector <4 x float> %i.rf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qy, <4 x float> nofpclass(nan inf) %i.rg, <4 x float> nofpclass(nan inf) %i.qt) ; 3 uses
  %i.ri = getelementptr inbounds [4 x i8], ptr %i.qu, i64 %i.qd ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %.135541198.us.i, i64 64 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph1201.us.i.new, !llvm.loop !281

._crit_edge.us.i.unr-lcssa:                       ; preds = %.lr.ph1201.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph1201.us.i
  %.05221199.us.i.epil.init = phi ptr [ %gep1217.us.i, %.lr.ph1201.us.i ], [ %i.ri, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  %.135541198.us.i.epil.init = phi ptr [ %.125531207.us.i, %.lr.ph1201.us.i ], [ %i.rj, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  %.149601197.us.i.epil.init = phi <4 x float> [ %.139591206.us.i, %.lr.ph1201.us.i ], [ %i.rc, %._crit_edge.us.i.unr-lcssa ]
  %.139801196.us.i.epil.init = phi <4 x float> [ %.129791205.us.i, %.lr.ph1201.us.i ], [ %i.rh, %._crit_edge.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod386)
  %i.rk = load <4 x float>, ptr %.135541198.us.i.epil.init, align 16, !tbaa !273
  %i.rl = getelementptr inbounds nuw i8, ptr %.135541198.us.i.epil.init, i64 16
  %i.rm = load <4 x float>, ptr %i.rl, align 16, !tbaa !273
  %i.rn = load float, ptr %.05221199.us.i.epil.init, align 4, !tbaa !53
  %i.ro = insertelement <4 x float> poison, float %i.rn, i64 0
  %i.rp = shufflevector <4 x float> %i.ro, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rk, <4 x float> nofpclass(nan inf) %i.rp, <4 x float> nofpclass(nan inf) %.149601197.us.i.epil.init)
  %i.rr = getelementptr inbounds [4 x i8], ptr %.05221199.us.i.epil.init, i64 %i.qb
  %i.rs = load float, ptr %i.rr, align 4, !tbaa !53
  %i.rt = insertelement <4 x float> poison, float %i.rs, i64 0
  %i.ru = shufflevector <4 x float> %i.rt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rm, <4 x float> nofpclass(nan inf) %i.ru, <4 x float> nofpclass(nan inf) %.139801196.us.i.epil.init)
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader
  %.lcssa381.a = phi <4 x float> [ %i.rc, %._crit_edge.us.i.unr-lcssa ], [ %i.rq, %.epil.preheader ] ; 2 uses
  %.lcssa380 = phi <4 x float> [ %i.rh, %._crit_edge.us.i.unr-lcssa ], [ %i.rv, %.epil.preheader ] ; 2 uses
  %scevgep1651.i = getelementptr i8, ptr %.125531207.us.i, i64 32
  %scevgep1652.i = getelementptr i8, ptr %scevgep1651.i, i64 %i.gf ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.rw = trunc i64 %indvars.iv.next.i to i32     ; 2 uses
  %i.rx = or i32 %i.rw, 1
  %i.ry = icmp slt i32 %i.rx, %i.ev
  br i1 %i.ry, label %.lr.ph1201.us.i, label %.preheader1095.i, !llvm.loop !282

bb.n:                                             ; preds = %.loopexit1087.i, %.lr.ph1185.i
  %.15381184.i = phi i32 [ %.0537.lcssa.i, %.lr.ph1185.i ], [ %i.uh, %.loopexit1087.i ] ; 2 uses
  %.75481183.i = phi ptr [ %.0541.lcssa.i, %.lr.ph1185.i ], [ %.11552.i, %.loopexit1087.i ] ; 7 uses
  %.89541182.i = phi <4 x float> [ %.1947.lcssa.i, %.lr.ph1185.i ], [ %.12958.i, %.loopexit1087.i ] ; 5 uses
  %.79741181.i = phi <4 x float> [ %.0967.lcssa.i, %.lr.ph1185.i ], [ %.11978.i, %.loopexit1087.i ] ; 5 uses
  %.79881180.i = phi <4 x float> [ %.0981.lcssa.i, %.lr.ph1185.i ], [ %.11992.i, %.loopexit1087.i ] ; 5 uses
  %.710001179.i = phi <4 x float> [ %.0993.lcssa.i, %.lr.ph1185.i ], [ %.111004.i, %.loopexit1087.i ] ; 5 uses
  %i.rz = sdiv i32 %.15381184.i, %i.et
  %i.sa = sext i32 %i.rz to i64
  %.reass1193.i = mul i64 %factor.op.mul1192.i, %i.sa
  %gep1195.i = getelementptr i8, ptr %invariant.gep1194.i, i64 %.reass1193.i ; 2 uses
  br i1 %i.fs, label %.preheader1088.i, label %.loopexit1089.i

.preheader1088.i:                                 ; preds = %bb.n
  br i1 %i.kp, label %.lr.ph1159.i, label %.loopexit1087.i

.lr.ph1159.i:                                     ; preds = %.preheader1088.i, %.lr.ph1159.i
  %.05241158.i = phi i32 [ %i.td, %.lr.ph1159.i ], [ 0, %.preheader1088.i ]
  %.05251157.i = phi ptr [ %i.tb, %.lr.ph1159.i ], [ %gep1195.i, %.preheader1088.i ] ; 5 uses
  %.85491156.i = phi ptr [ %i.tc, %.lr.ph1159.i ], [ %.75481183.i, %.preheader1088.i ] ; 5 uses
  %.99551155.i = phi <4 x float> [ %i.sl, %.lr.ph1159.i ], [ %.89541182.i, %.preheader1088.i ]
  %.89751154.i = phi <4 x float> [ %i.sq, %.lr.ph1159.i ], [ %.79741181.i, %.preheader1088.i ]
  %.89891153.i = phi <4 x float> [ %i.sv, %.lr.ph1159.i ], [ %.79881180.i, %.preheader1088.i ]
  %.810011152.i = phi <4 x float> [ %i.ta, %.lr.ph1159.i ], [ %.710001179.i, %.preheader1088.i ]
  %i.sb = load <4 x float>, ptr %.85491156.i, align 16, !tbaa !273
  %i.sc = getelementptr inbounds nuw i8, ptr %.85491156.i, i64 16
  %i.sd = load <4 x float>, ptr %i.sc, align 16, !tbaa !273
  %i.se = getelementptr inbounds nuw i8, ptr %.85491156.i, i64 32
  %i.sf = load <4 x float>, ptr %i.se, align 16, !tbaa !273
  %i.sg = getelementptr inbounds nuw i8, ptr %.85491156.i, i64 48
  %i.sh = load <4 x float>, ptr %i.sg, align 16, !tbaa !273
  %i.si = load float, ptr %.05251157.i, align 4, !tbaa !53
  %i.sj = insertelement <4 x float> poison, float %i.si, i64 0
  %i.sk = shufflevector <4 x float> %i.sj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sb, <4 x float> nofpclass(nan inf) %i.sk, <4 x float> nofpclass(nan inf) %.99551155.i) ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %.05251157.i, i64 4
  %i.sn = load float, ptr %i.sm, align 4, !tbaa !53
  %i.so = insertelement <4 x float> poison, float %i.sn, i64 0
  %i.sp = shufflevector <4 x float> %i.so, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sd, <4 x float> nofpclass(nan inf) %i.sp, <4 x float> nofpclass(nan inf) %.89751154.i) ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %.05251157.i, i64 8
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !53
  %i.st = insertelement <4 x float> poison, float %i.ss, i64 0
  %i.su = shufflevector <4 x float> %i.st, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sf, <4 x float> nofpclass(nan inf) %i.su, <4 x float> nofpclass(nan inf) %.89891153.i) ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %.05251157.i, i64 12
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !53
  %i.sy = insertelement <4 x float> poison, float %i.sx, i64 0
  %i.sz = shufflevector <4 x float> %i.sy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ta = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sh, <4 x float> nofpclass(nan inf) %i.sz, <4 x float> nofpclass(nan inf) %.810011152.i) ; 2 uses
  %i.tb = getelementptr inbounds [4 x i8], ptr %.05251157.i, i64 %i.ks
  %i.tc = getelementptr inbounds nuw i8, ptr %.85491156.i, i64 64
  %i.td = add nuw nsw i32 %.05241158.i, 1         ; 2 uses
  %exitcond1647.not.i = icmp eq i32 %i.td, %i.ko
  br i1 %exitcond1647.not.i, label %.loopexit1089.loopexit.i, label %.lr.ph1159.i, !llvm.loop !283

.loopexit1089.loopexit.i:                         ; preds = %.lr.ph1159.i
  %scevgep1645.i = getelementptr i8, ptr %.75481183.i, i64 64
  %scevgep1646.i = getelementptr i8, ptr %scevgep1645.i, i64 %i.lc
  br label %.loopexit1087.i

.loopexit1089.i:                                  ; preds = %bb.n
  br i1 %i.ft, label %.preheader1086.i, label %.loopexit1087.i

.preheader1086.i:                                 ; preds = %.loopexit1089.i
  br i1 %i.kp, label %.lr.ph1173.i, label %.loopexit1087.i

.lr.ph1173.i:                                     ; preds = %.preheader1086.i, %.lr.ph1173.i
  %.05231172.i = phi i32 [ %i.ug, %.lr.ph1173.i ], [ 0, %.preheader1086.i ]
  %.25271171.i = phi ptr [ %i.ue, %.lr.ph1173.i ], [ %gep1195.i, %.preheader1086.i ] ; 5 uses
  %.105511170.i = phi ptr [ %i.uf, %.lr.ph1173.i ], [ %.75481183.i, %.preheader1086.i ] ; 5 uses
  %.119571169.i = phi <4 x float> [ %i.to, %.lr.ph1173.i ], [ %.89541182.i, %.preheader1086.i ]
  %.109771168.i = phi <4 x float> [ %i.tt, %.lr.ph1173.i ], [ %.79741181.i, %.preheader1086.i ]
  %.109911167.i = phi <4 x float> [ %i.ty, %.lr.ph1173.i ], [ %.79881180.i, %.preheader1086.i ]
  %.1010031166.i = phi <4 x float> [ %i.ud, %.lr.ph1173.i ], [ %.710001179.i, %.preheader1086.i ]
  %i.te = load <4 x float>, ptr %.105511170.i, align 16, !tbaa !273
  %i.tf = getelementptr inbounds nuw i8, ptr %.105511170.i, i64 16
  %i.tg = load <4 x float>, ptr %i.tf, align 16, !tbaa !273
  %i.th = getelementptr inbounds nuw i8, ptr %.105511170.i, i64 32
  %i.ti = load <4 x float>, ptr %i.th, align 16, !tbaa !273
  %i.tj = getelementptr inbounds nuw i8, ptr %.105511170.i, i64 48
  %i.tk = load <4 x float>, ptr %i.tj, align 16, !tbaa !273
  %i.tl = load float, ptr %.25271171.i, align 4, !tbaa !53
  %i.tm = insertelement <4 x float> poison, float %i.tl, i64 0
  %i.tn = shufflevector <4 x float> %i.tm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.to = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.te, <4 x float> nofpclass(nan inf) %i.tn, <4 x float> nofpclass(nan inf) %.119571169.i) ; 2 uses
  %i.tp = getelementptr inbounds [4 x i8], ptr %.25271171.i, i64 %i.ku
  %i.tq = load float, ptr %i.tp, align 4, !tbaa !53
  %i.tr = insertelement <4 x float> poison, float %i.tq, i64 0
  %i.ts = shufflevector <4 x float> %i.tr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.tg, <4 x float> nofpclass(nan inf) %i.ts, <4 x float> nofpclass(nan inf) %.109771168.i) ; 2 uses
  %i.tu = getelementptr inbounds [4 x i8], ptr %.25271171.i, i64 %i.kw
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !53
  %i.tw = insertelement <4 x float> poison, float %i.tv, i64 0
  %i.tx = shufflevector <4 x float> %i.tw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ty = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ti, <4 x float> nofpclass(nan inf) %i.tx, <4 x float> nofpclass(nan inf) %.109911167.i) ; 2 uses
  %i.tz = getelementptr inbounds [4 x i8], ptr %.25271171.i, i64 %i.ky
  %i.ua = load float, ptr %i.tz, align 4, !tbaa !53
  %i.ub = insertelement <4 x float> poison, float %i.ua, i64 0
  %i.uc = shufflevector <4 x float> %i.ub, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ud = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.tk, <4 x float> nofpclass(nan inf) %i.uc, <4 x float> nofpclass(nan inf) %.1010031166.i) ; 2 uses
  %i.ue = getelementptr inbounds [4 x i8], ptr %.25271171.i, i64 %i.kz
  %i.uf = getelementptr inbounds nuw i8, ptr %.105511170.i, i64 64
  %i.ug = add nuw nsw i32 %.05231172.i, 1         ; 2 uses
  %exitcond1650.not.i = icmp eq i32 %i.ug, %i.ko
  br i1 %exitcond1650.not.i, label %.loopexit1087.loopexit.i, label %.lr.ph1173.i, !llvm.loop !284

.loopexit1087.loopexit.i:                         ; preds = %.lr.ph1173.i
  %scevgep1648.i = getelementptr i8, ptr %.75481183.i, i64 64
  %scevgep1649.i = getelementptr i8, ptr %scevgep1648.i, i64 %i.lc
  br label %.loopexit1087.i

.loopexit1087.i:                                  ; preds = %.loopexit1087.loopexit.i, %.preheader1086.i, %.loopexit1089.i, %.loopexit1089.loopexit.i, %.preheader1088.i
end_hunk_4
begin_hunk_5_@_ZNK4ncnn21Convolution1D_x86_fma13forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
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
  br label %bb.ay

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
  br i1 %i.cr, label %.lr.ph1319.i, label %._crit_edge1320.i

.lr.ph1319.i:                                     ; preds = %bb.h
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.cv = load i32, ptr %i.d, align 4
  %i.cw = load i32, ptr %i.bz, align 4, !tbaa !249 ; 2 uses
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %.lr.ph1319.split.preheader.i, label %._crit_edge1320.i

.lr.ph1319.split.preheader.i:                     ; preds = %.lr.ph1319.i
  %i.cy = sext i32 %i.co to i64
  %wide.trip.count1738.i = zext nneg i32 %i.cq to i64
  br label %.lr.ph1319.split.i

._crit_edge1320.i:                                ; preds = %._crit_edge.i, %.lr.ph1319.i, %bb.h
  %i.cz = shl nsw i32 %i.cq, 2
  %i.da = add nsw i32 %i.cz, %i.co                ; 4 uses
  %i.db = sub nsw i32 %i.cf, %i.da                ; 2 uses
  %i.dc = sdiv i32 %i.db, 2                       ; 2 uses
  %i.dd = icmp sgt i32 %i.db, 1
  br i1 %i.dd, label %.lr.ph1468.i, label %._crit_edge1469.split.i

.lr.ph1468.i:                                     ; preds = %._crit_edge1320.i
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
  br i1 %i.dn, label %.lr.ph1468.split.i, label %._crit_edge1469.split.i

.lr.ph1468.split.i:                               ; preds = %.lr.ph1468.i
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.dw = load ptr, ptr %i.bl, align 8, !tbaa !18, !noalias !390
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !20, !noalias !390
  %i.dy = load i64, ptr %i.du, align 8, !tbaa !49, !noalias !390
  %factor.op.mul1471.i = mul i64 %i.dy, %i.dx
  %i.dz = and i32 %i.dg, -8                       ; 2 uses
  %i.ea = sext i32 %i.da to i64
  %wide.trip.count1776.i = zext nneg i32 %i.dc to i64
  %wide.trip.count1771.i = zext nneg i32 %i.dh to i64
  br label %.lr.ph1460.i

.lr.ph1319.splitthread-pre-split.i:               ; preds = %._crit_edge.i
  %.pr.i = load i32, ptr %i.bz, align 4, !tbaa !249
  br label %.lr.ph1319.split.i

.lr.ph1319.split.i:                               ; preds = %.lr.ph1319.splitthread-pre-split.i, %.lr.ph1319.split.preheader.i
  %i.eb = phi i32 [ %.pr.i, %.lr.ph1319.splitthread-pre-split.i ], [ %i.cw, %.lr.ph1319.split.preheader.i ] ; 2 uses
  %indvars.iv1735.i = phi i64 [ %indvars.iv.next1736.i, %.lr.ph1319.splitthread-pre-split.i ], [ 0, %.lr.ph1319.split.preheader.i ] ; 2 uses
  %i.ec = load i32, ptr %i.r, align 8, !tbaa !251 ; 7 uses
  %i.ed = load i32, ptr %i.u, align 8, !tbaa !264
  %i.ee = mul i32 %i.ed, %i.ec                    ; 11 uses
  %i.ef = load i32, ptr %i.cb, align 8, !tbaa !251 ; 2 uses
  %i.eg = icmp sgt i32 %i.eb, 0
  br i1 %i.eg, label %.lr.ph1312.i, label %._crit_edge.i

.lr.ph1312.i:                                     ; preds = %.lr.ph1319.split.i
  %i.eh = load ptr, ptr %2, align 8, !tbaa !18
  %i.ei = shl nuw nsw i64 %indvars.iv1735.i, 2
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
  %factor.op.mul1313.i = mul i32 %i.ey, %i.ec     ; 2 uses
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
  %5 = add i32 %i.ee, -2
  %i.fl = add i32 %i.fc, -1                       ; 2 uses
  %i.fm = zext i32 %i.fl to i64                   ; 2 uses
  %i.fn = shl nuw nsw i64 %i.fm, 4
  %i.fo = shl nuw nsw i64 %i.fm, 3
  %i.fp = sext i32 %i.ey to i64                   ; 2 uses
  %xtraiter = and i32 %i.fc, 1
  %i.fq = icmp eq i32 %i.fl, 0
  %unroll_iter = and i32 %i.fc, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod372 = trunc i32 %i.fc to i1
  br label %bb.i

._crit_edge.i:                                    ; preds = %bb.u, %.lr.ph1319.split.i
  %indvars.iv.next1736.i = add nuw nsw i64 %indvars.iv1735.i, 1 ; 2 uses
  %exitcond1739.not.i = icmp eq i64 %indvars.iv.next1736.i, %wide.trip.count1738.i
  br i1 %exitcond1739.not.i, label %._crit_edge1320.i, label %.lr.ph1319.splitthread-pre-split.i, !llvm.loop !393

bb.i:                                             ; preds = %bb.u, %.lr.ph1312.i
  %indvars.iv1731.i = phi i64 [ 0, %.lr.ph1312.i ], [ %indvars.iv.next1732.i, %bb.u ] ; 5 uses
  %.05581310.i = phi ptr [ %i.er, %.lr.ph1312.i ], [ %.2560.i, %bb.u ] ; 8 uses
  %i.fr = load ptr, ptr %i.g, align 8, !tbaa !265 ; 2 uses
  %.not570.i = icmp eq ptr %i.fr, null
  br i1 %.not570.i, label %_ZN4ncnn3MatD2Ev.exit572.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.ej
  %i.ft = load <4 x float>, ptr %i.fs, align 1, !tbaa !273
  br label %_ZN4ncnn3MatD2Ev.exit572.i

_ZN4ncnn3MatD2Ev.exit572.i:                       ; preds = %bb.j, %bb.i
  %.01016.i = phi nsz <4 x float> [ zeroinitializer, %bb.i ], [ %i.ft, %bb.j ] ; 3 uses
  %i.fu = load ptr, ptr %i.bl, align 8, !tbaa !18, !noalias !394
  %i.fv = load i64, ptr %i.ct, align 8, !tbaa !20, !noalias !394
  %i.fw = mul i64 %i.fv, %i.ew
  %i.fx = load i64, ptr %i.cu, align 8, !tbaa !49, !noalias !394
  %i.fy = mul i64 %i.fw, %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fy ; 3 uses
  br i1 %i.ex, label %.lr.ph1215.i, label %.preheader1167.i

.lr.ph1215.i:                                     ; preds = %_ZN4ncnn3MatD2Ev.exit572.i
  %i.ga = load ptr, ptr %4, align 8, !tbaa !18
  %i.gb = load i32, ptr %i.t, align 4, !tbaa !249
  %i.gc = sext i32 %i.gb to i64
  %i.gd = load i64, ptr %i.q, align 8, !tbaa !49
  %factor.op.mul.i = mul i64 %i.gd, %i.gc         ; 2 uses
  %i.ge = trunc nuw nsw i64 %indvars.iv1731.i to i32
  %.reass1314.i = mul i32 %factor.op.mul1313.i, %i.ge
  %i.gf = sext i32 %.reass1314.i to i64
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
  br i1 %i.ez, label %.preheader1163.i.us, label %.loopexit1164.i

.preheader1163.i.us:                              ; preds = %.lr.ph1215.i, %.loopexit1161.i.us
  %.05371214.i.us = phi i32 [ %i.lq, %.loopexit1161.i.us ], [ 0, %.lr.ph1215.i ] ; 2 uses
  %.05411213.i.us = phi ptr [ %.6547.i.us, %.loopexit1161.i.us ], [ %i.fz, %.lr.ph1215.i ] ; 3 uses
  %.110171212.i.us = phi <4 x float> [ %.71023.i.us, %.loopexit1161.i.us ], [ %.01016.i, %.lr.ph1215.i ] ; 2 uses
  %.010321211.i.us = phi <4 x float> [ %.61038.i.us, %.loopexit1161.i.us ], [ zeroinitializer, %.lr.ph1215.i ] ; 2 uses
  %.010461210.i.us = phi <4 x float> [ %.61052.i.us, %.loopexit1161.i.us ], [ zeroinitializer, %.lr.ph1215.i ] ; 2 uses
  %.010581209.i.us = phi <4 x float> [ %.61064.i.us, %.loopexit1161.i.us ], [ zeroinitializer, %.lr.ph1215.i ] ; 2 uses
  br i1 %i.gh, label %.lr.ph.i.us.preheader, label %.loopexit1161.i.us

.lr.ph.i.us.preheader:                            ; preds = %.preheader1163.i.us
  %i.hf = lshr exact i32 %.05371214.i.us, 3
  %i.hg = zext nneg i32 %i.hf to i64
  %.reass.i.us = mul i64 %factor.op.mul.i, %i.hg
  %gep.i.us = getelementptr i8, ptr %invariant.gep.i, i64 %.reass.i.us
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %.lr.ph.i.us
  %.05311175.i.us = phi i32 [ %i.lp, %.lr.ph.i.us ], [ 0, %.lr.ph.i.us.preheader ]
  %.05321174.i.us = phi ptr [ %i.ln, %.lr.ph.i.us ], [ %gep.i.us, %.lr.ph.i.us.preheader ] ; 9 uses
  %.15421173.i.us = phi ptr [ %i.lo, %.lr.ph.i.us ], [ %.05411213.i.us, %.lr.ph.i.us.preheader ] ; 9 uses
  %.210181172.i.us = phi <4 x float> [ %i.ko, %.lr.ph.i.us ], [ %.110171212.i.us, %.lr.ph.i.us.preheader ]
  %.110331171.i.us = phi <4 x float> [ %i.kw, %.lr.ph.i.us ], [ %.010321211.i.us, %.lr.ph.i.us.preheader ]
  %.110471170.i.us = phi <4 x float> [ %i.le, %.lr.ph.i.us ], [ %.010461210.i.us, %.lr.ph.i.us.preheader ]
  %.110591169.i.us = phi <4 x float> [ %i.lm, %.lr.ph.i.us ], [ %.010581209.i.us, %.lr.ph.i.us.preheader ]
  %i.hh = load i64, ptr %.15421173.i.us, align 1, !tbaa !273
  %i.hi = insertelement <2 x i64> poison, i64 %i.hh, i64 0
  %i.hj = bitcast <2 x i64> %i.hi to <8 x i16>
  %i.hk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hl = bitcast <8 x i16> %i.hk to <4 x float>
  %i.hm = getelementptr inbounds nuw i8, ptr %.15421173.i.us, i64 8
  %i.hn = load i64, ptr %i.hm, align 1, !tbaa !273
  %i.ho = insertelement <2 x i64> poison, i64 %i.hn, i64 0
  %i.hp = bitcast <2 x i64> %i.ho to <8 x i16>
  %i.hq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hr = bitcast <8 x i16> %i.hq to <4 x float>
  %i.hs = getelementptr inbounds nuw i8, ptr %.15421173.i.us, i64 16
  %i.ht = load i64, ptr %i.hs, align 1, !tbaa !273
  %i.hu = insertelement <2 x i64> poison, i64 %i.ht, i64 0
  %i.hv = bitcast <2 x i64> %i.hu to <8 x i16>
  %i.hw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hx = bitcast <8 x i16> %i.hw to <4 x float>
  %i.hy = getelementptr inbounds nuw i8, ptr %.15421173.i.us, i64 24
  %i.hz = load i64, ptr %i.hy, align 1, !tbaa !273
  %i.ia = insertelement <2 x i64> poison, i64 %i.hz, i64 0
  %i.ib = bitcast <2 x i64> %i.ia to <8 x i16>
  %i.ic = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ib, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.id = bitcast <8 x i16> %i.ic to <4 x float>
  %i.ie = getelementptr inbounds nuw i8, ptr %.15421173.i.us, i64 32
  %i.if = load i64, ptr %i.ie, align 1, !tbaa !273
  %i.ig = insertelement <2 x i64> poison, i64 %i.if, i64 0
  %i.ih = bitcast <2 x i64> %i.ig to <8 x i16>
  %i.ii = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ih, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ij = bitcast <8 x i16> %i.ii to <4 x float>
  %i.ik = getelementptr inbounds nuw i8, ptr %.15421173.i.us, i64 40
  %i.il = load i64, ptr %i.ik, align 1, !tbaa !273
  %i.im = insertelement <2 x i64> poison, i64 %i.il, i64 0
  %i.in = bitcast <2 x i64> %i.im to <8 x i16>
  %i.io = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.in, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ip = bitcast <8 x i16> %i.io to <4 x float>
  %i.iq = getelementptr inbounds nuw i8, ptr %.15421173.i.us, i64 48
  %i.ir = load i64, ptr %i.iq, align 1, !tbaa !273
  %i.is = insertelement <2 x i64> poison, i64 %i.ir, i64 0
  %i.it = bitcast <2 x i64> %i.is to <8 x i16>
  %i.iu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.it, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.iv = bitcast <8 x i16> %i.iu to <4 x float>
  %i.iw = getelementptr inbounds nuw i8, ptr %.15421173.i.us, i64 56
  %i.ix = load i64, ptr %i.iw, align 1, !tbaa !273
  %i.iy = insertelement <2 x i64> poison, i64 %i.ix, i64 0
  %i.iz = bitcast <2 x i64> %i.iy to <8 x i16>
  %i.ja = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.iz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jb = bitcast <8 x i16> %i.ja to <4 x float>
  %i.jc = load i16, ptr %.05321174.i.us, align 2, !tbaa !334
  %i.jd = zext i16 %i.jc to i32
  %i.je = shl nuw i32 %i.jd, 16
  %i.jf = insertelement <4 x i32> poison, i32 %i.je, i64 0
  %i.jg = bitcast <4 x i32> %i.jf to <4 x float>
  %i.jh = shufflevector <4 x float> %i.jg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ji = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hl, <4 x float> nofpclass(nan inf) %i.jh, <4 x float> nofpclass(nan inf) %.210181172.i.us)
  %i.jj = getelementptr inbounds nuw i8, ptr %.05321174.i.us, i64 2
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !334
  %i.jl = zext i16 %i.jk to i32
  %i.jm = shl nuw i32 %i.jl, 16
  %i.jn = insertelement <4 x i32> poison, i32 %i.jm, i64 0
  %i.jo = bitcast <4 x i32> %i.jn to <4 x float>
  %i.jp = shufflevector <4 x float> %i.jo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hr, <4 x float> nofpclass(nan inf) %i.jp, <4 x float> nofpclass(nan inf) %.110331171.i.us)
  %i.jr = getelementptr inbounds nuw i8, ptr %.05321174.i.us, i64 4
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !334
  %i.jt = zext i16 %i.js to i32
  %i.ju = shl nuw i32 %i.jt, 16
  %i.jv = insertelement <4 x i32> poison, i32 %i.ju, i64 0
  %i.jw = bitcast <4 x i32> %i.jv to <4 x float>
  %i.jx = shufflevector <4 x float> %i.jw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hx, <4 x float> nofpclass(nan inf) %i.jx, <4 x float> nofpclass(nan inf) %.110471170.i.us)
  %i.jz = getelementptr inbounds nuw i8, ptr %.05321174.i.us, i64 6
  %i.ka = load i16, ptr %i.jz, align 2, !tbaa !334
  %i.kb = zext i16 %i.ka to i32
  %i.kc = shl nuw i32 %i.kb, 16
  %i.kd = insertelement <4 x i32> poison, i32 %i.kc, i64 0
  %i.ke = bitcast <4 x i32> %i.kd to <4 x float>
  %i.kf = shufflevector <4 x float> %i.ke, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.id, <4 x float> nofpclass(nan inf) %i.kf, <4 x float> nofpclass(nan inf) %.110591169.i.us)
  %i.kh = getelementptr inbounds nuw i8, ptr %.05321174.i.us, i64 8
  %i.ki = load i16, ptr %i.kh, align 2, !tbaa !334
  %i.kj = zext i16 %i.ki to i32
  %i.kk = shl nuw i32 %i.kj, 16
  %i.kl = insertelement <4 x i32> poison, i32 %i.kk, i64 0
  %i.km = bitcast <4 x i32> %i.kl to <4 x float>
  %i.kn = shufflevector <4 x float> %i.km, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ko = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ij, <4 x float> nofpclass(nan inf) %i.kn, <4 x float> nofpclass(nan inf) %i.ji) ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.05321174.i.us, i64 10
  %i.kq = load i16, ptr %i.kp, align 2, !tbaa !334
  %i.kr = zext i16 %i.kq to i32
  %i.ks = shl nuw i32 %i.kr, 16
  %i.kt = insertelement <4 x i32> poison, i32 %i.ks, i64 0
  %i.ku = bitcast <4 x i32> %i.kt to <4 x float>
  %i.kv = shufflevector <4 x float> %i.ku, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ip, <4 x float> nofpclass(nan inf) %i.kv, <4 x float> nofpclass(nan inf) %i.jq) ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.05321174.i.us, i64 12
  %i.ky = load i16, ptr %i.kx, align 2, !tbaa !334
  %i.kz = zext i16 %i.ky to i32
  %i.la = shl nuw i32 %i.kz, 16
  %i.lb = insertelement <4 x i32> poison, i32 %i.la, i64 0
  %i.lc = bitcast <4 x i32> %i.lb to <4 x float>
end_hunk_5
begin_hunk_6_@_ZNK4ncnn21Convolution1D_x86_fma13forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.po = shl nuw i32 %i.pn, 16
  %i.pp = insertelement <4 x i32> poison, i32 %i.po, i64 0
  %i.pq = bitcast <4 x i32> %i.pp to <4 x float>
  %i.pr = shufflevector <4 x float> %i.pq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ps = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.np, <4 x float> nofpclass(nan inf) %i.pr, <4 x float> nofpclass(nan inf) %.310611181.i)
  %i.pt = load i16, ptr %.05301187.i, align 2, !tbaa !334
  %i.pu = zext i16 %i.pt to i32
  %i.pv = shl nuw i32 %i.pu, 16
  %i.pw = insertelement <4 x i32> poison, i32 %i.pv, i64 0
  %i.px = bitcast <4 x i32> %i.pw to <4 x float>
  %i.py = shufflevector <4 x float> %i.px, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nv, <4 x float> nofpclass(nan inf) %i.py, <4 x float> nofpclass(nan inf) %i.ou) ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %.05301187.i, i64 2
  %i.qb = load i16, ptr %i.qa, align 2, !tbaa !334
  %i.qc = zext i16 %i.qb to i32
  %i.qd = shl nuw i32 %i.qc, 16
  %i.qe = insertelement <4 x i32> poison, i32 %i.qd, i64 0
  %i.qf = bitcast <4 x i32> %i.qe to <4 x float>
  %i.qg = shufflevector <4 x float> %i.qf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ob, <4 x float> nofpclass(nan inf) %i.qg, <4 x float> nofpclass(nan inf) %i.pc) ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %.05301187.i, i64 4
  %i.qj = load i16, ptr %i.qi, align 2, !tbaa !334
  %i.qk = zext i16 %i.qj to i32
  %i.ql = shl nuw i32 %i.qk, 16
  %i.qm = insertelement <4 x i32> poison, i32 %i.ql, i64 0
  %i.qn = bitcast <4 x i32> %i.qm to <4 x float>
  %i.qo = shufflevector <4 x float> %i.qn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.oh, <4 x float> nofpclass(nan inf) %i.qo, <4 x float> nofpclass(nan inf) %i.pk) ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.05301187.i, i64 6
  %i.qr = load i16, ptr %i.qq, align 2, !tbaa !334
  %i.qs = zext i16 %i.qr to i32
  %i.qt = shl nuw i32 %i.qs, 16
  %i.qu = insertelement <4 x i32> poison, i32 %i.qt, i64 0
  %i.qv = bitcast <4 x i32> %i.qu to <4 x float>
  %i.qw = shufflevector <4 x float> %i.qv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.on, <4 x float> nofpclass(nan inf) %i.qw, <4 x float> nofpclass(nan inf) %i.ps) ; 2 uses
  %i.qy = getelementptr inbounds [2 x i8], ptr %.25341186.i, i64 %i.go
  %i.qz = getelementptr inbounds [2 x i8], ptr %.05301187.i, i64 %i.go
  %i.ra = getelementptr inbounds nuw i8, ptr %.35441185.i, i64 64
  %i.rb = add nuw nsw i32 %.05291188.i, 1         ; 2 uses
  %exitcond1711.not.i = icmp eq i32 %i.rb, %i.gg
  br i1 %exitcond1711.not.i, label %.loopexit1162.loopexit.i, label %.lr.ph1189.i, !llvm.loop !399

.loopexit1162.loopexit.i:                         ; preds = %.lr.ph1189.i
  %scevgep1709.i = getelementptr i8, ptr %.05411213.i, i64 64
  %scevgep1710.i = getelementptr i8, ptr %scevgep1709.i, i64 %i.he
  br label %.loopexit1161.i

.loopexit1162.i:                                  ; preds = %.loopexit1164.i
  br i1 %i.fb, label %.preheader1160.i, label %.loopexit1161.i

.preheader1160.i:                                 ; preds = %.loopexit1162.i
  br i1 %i.gh, label %.lr.ph1203.i, label %.loopexit1161.i

.lr.ph1203.i:                                     ; preds = %.preheader1160.i, %.lr.ph1203.i
  %.05281202.i = phi i32 [ %i.vk, %.lr.ph1203.i ], [ 0, %.preheader1160.i ]
  %.45361201.i = phi ptr [ %i.vi, %.lr.ph1203.i ], [ %gep.i, %.preheader1160.i ] ; 9 uses
  %.55461200.i = phi ptr [ %i.vj, %.lr.ph1203.i ], [ %.05411213.i, %.preheader1160.i ] ; 9 uses
  %.610221199.i = phi <4 x float> [ %i.uj, %.lr.ph1203.i ], [ %.110171212.i, %.preheader1160.i ]
  %.510371198.i = phi <4 x float> [ %i.ur, %.lr.ph1203.i ], [ %.010321211.i, %.preheader1160.i ]
  %.510511197.i = phi <4 x float> [ %i.uz, %.lr.ph1203.i ], [ %.010461210.i, %.preheader1160.i ]
  %.510631196.i = phi <4 x float> [ %i.vh, %.lr.ph1203.i ], [ %.010581209.i, %.preheader1160.i ]
  %i.rc = load i64, ptr %.55461200.i, align 1, !tbaa !273
  %i.rd = insertelement <2 x i64> poison, i64 %i.rc, i64 0
  %i.re = bitcast <2 x i64> %i.rd to <8 x i16>
  %i.rf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.re, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rg = bitcast <8 x i16> %i.rf to <4 x float>
  %i.rh = getelementptr inbounds nuw i8, ptr %.55461200.i, i64 8
  %i.ri = load i64, ptr %i.rh, align 1, !tbaa !273
  %i.rj = insertelement <2 x i64> poison, i64 %i.ri, i64 0
  %i.rk = bitcast <2 x i64> %i.rj to <8 x i16>
  %i.rl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rm = bitcast <8 x i16> %i.rl to <4 x float>
  %i.rn = getelementptr inbounds nuw i8, ptr %.55461200.i, i64 16
  %i.ro = load i64, ptr %i.rn, align 1, !tbaa !273
  %i.rp = insertelement <2 x i64> poison, i64 %i.ro, i64 0
  %i.rq = bitcast <2 x i64> %i.rp to <8 x i16>
  %i.rr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rs = bitcast <8 x i16> %i.rr to <4 x float>
  %i.rt = getelementptr inbounds nuw i8, ptr %.55461200.i, i64 24
  %i.ru = load i64, ptr %i.rt, align 1, !tbaa !273
  %i.rv = insertelement <2 x i64> poison, i64 %i.ru, i64 0
  %i.rw = bitcast <2 x i64> %i.rv to <8 x i16>
  %i.rx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ry = bitcast <8 x i16> %i.rx to <4 x float>
  %i.rz = getelementptr inbounds nuw i8, ptr %.55461200.i, i64 32
  %i.sa = load i64, ptr %i.rz, align 1, !tbaa !273
  %i.sb = insertelement <2 x i64> poison, i64 %i.sa, i64 0
  %i.sc = bitcast <2 x i64> %i.sb to <8 x i16>
  %i.sd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.se = bitcast <8 x i16> %i.sd to <4 x float>
  %i.sf = getelementptr inbounds nuw i8, ptr %.55461200.i, i64 40
  %i.sg = load i64, ptr %i.sf, align 1, !tbaa !273
  %i.sh = insertelement <2 x i64> poison, i64 %i.sg, i64 0
  %i.si = bitcast <2 x i64> %i.sh to <8 x i16>
  %i.sj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.si, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sk = bitcast <8 x i16> %i.sj to <4 x float>
  %i.sl = getelementptr inbounds nuw i8, ptr %.55461200.i, i64 48
  %i.sm = load i64, ptr %i.sl, align 1, !tbaa !273
  %i.sn = insertelement <2 x i64> poison, i64 %i.sm, i64 0
  %i.so = bitcast <2 x i64> %i.sn to <8 x i16>
  %i.sp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.so, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sq = bitcast <8 x i16> %i.sp to <4 x float>
  %i.sr = getelementptr inbounds nuw i8, ptr %.55461200.i, i64 56
  %i.ss = load i64, ptr %i.sr, align 1, !tbaa !273
  %i.st = insertelement <2 x i64> poison, i64 %i.ss, i64 0
  %i.su = bitcast <2 x i64> %i.st to <8 x i16>
  %i.sv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.su, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sw = bitcast <8 x i16> %i.sv to <4 x float>
  %i.sx = load i16, ptr %.45361201.i, align 2, !tbaa !334
  %i.sy = zext i16 %i.sx to i32
  %i.sz = shl nuw i32 %i.sy, 16
  %i.ta = insertelement <4 x i32> poison, i32 %i.sz, i64 0
  %i.tb = bitcast <4 x i32> %i.ta to <4 x float>
  %i.tc = shufflevector <4 x float> %i.tb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.td = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rg, <4 x float> nofpclass(nan inf) %i.tc, <4 x float> nofpclass(nan inf) %.610221199.i)
  %i.te = getelementptr inbounds [2 x i8], ptr %.45361201.i, i64 %i.gm
  %i.tf = load i16, ptr %i.te, align 2, !tbaa !334
  %i.tg = zext i16 %i.tf to i32
  %i.th = shl nuw i32 %i.tg, 16
  %i.ti = insertelement <4 x i32> poison, i32 %i.th, i64 0
  %i.tj = bitcast <4 x i32> %i.ti to <4 x float>
  %i.tk = shufflevector <4 x float> %i.tj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rm, <4 x float> nofpclass(nan inf) %i.tk, <4 x float> nofpclass(nan inf) %.510371198.i)
  %i.tm = getelementptr inbounds [2 x i8], ptr %.45361201.i, i64 %i.gq
  %i.tn = load i16, ptr %i.tm, align 2, !tbaa !334
  %i.to = zext i16 %i.tn to i32
  %i.tp = shl nuw i32 %i.to, 16
  %i.tq = insertelement <4 x i32> poison, i32 %i.tp, i64 0
  %i.tr = bitcast <4 x i32> %i.tq to <4 x float>
  %i.ts = shufflevector <4 x float> %i.tr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rs, <4 x float> nofpclass(nan inf) %i.ts, <4 x float> nofpclass(nan inf) %.510511197.i)
  %i.tu = getelementptr inbounds [2 x i8], ptr %.45361201.i, i64 %i.gs
  %i.tv = load i16, ptr %i.tu, align 2, !tbaa !334
  %i.tw = zext i16 %i.tv to i32
  %i.tx = shl nuw i32 %i.tw, 16
  %i.ty = insertelement <4 x i32> poison, i32 %i.tx, i64 0
  %i.tz = bitcast <4 x i32> %i.ty to <4 x float>
  %i.ua = shufflevector <4 x float> %i.tz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ub = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ry, <4 x float> nofpclass(nan inf) %i.ua, <4 x float> nofpclass(nan inf) %.510631196.i)
  %i.uc = getelementptr inbounds [2 x i8], ptr %.45361201.i, i64 %i.gu
  %i.ud = load i16, ptr %i.uc, align 2, !tbaa !334
  %i.ue = zext i16 %i.ud to i32
  %i.uf = shl nuw i32 %i.ue, 16
  %i.ug = insertelement <4 x i32> poison, i32 %i.uf, i64 0
  %i.uh = bitcast <4 x i32> %i.ug to <4 x float>
  %i.ui = shufflevector <4 x float> %i.uh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.se, <4 x float> nofpclass(nan inf) %i.ui, <4 x float> nofpclass(nan inf) %i.td) ; 2 uses
  %i.uk = getelementptr inbounds [2 x i8], ptr %.45361201.i, i64 %i.gw
  %i.ul = load i16, ptr %i.uk, align 2, !tbaa !334
  %i.um = zext i16 %i.ul to i32
  %i.un = shl nuw i32 %i.um, 16
  %i.uo = insertelement <4 x i32> poison, i32 %i.un, i64 0
  %i.up = bitcast <4 x i32> %i.uo to <4 x float>
  %i.uq = shufflevector <4 x float> %i.up, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ur = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sk, <4 x float> nofpclass(nan inf) %i.uq, <4 x float> nofpclass(nan inf) %i.tl) ; 2 uses
  %i.us = getelementptr inbounds [2 x i8], ptr %.45361201.i, i64 %i.gy
  %i.ut = load i16, ptr %i.us, align 2, !tbaa !334
  %i.uu = zext i16 %i.ut to i32
  %i.uv = shl nuw i32 %i.uu, 16
  %i.uw = insertelement <4 x i32> poison, i32 %i.uv, i64 0
  %i.ux = bitcast <4 x i32> %i.uw to <4 x float>
  %i.uy = shufflevector <4 x float> %i.ux, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sq, <4 x float> nofpclass(nan inf) %i.uy, <4 x float> nofpclass(nan inf) %i.tt) ; 2 uses
  %i.va = getelementptr inbounds [2 x i8], ptr %.45361201.i, i64 %i.ha
  %i.vb = load i16, ptr %i.va, align 2, !tbaa !334
  %i.vc = zext i16 %i.vb to i32
  %i.vd = shl nuw i32 %i.vc, 16
  %i.ve = insertelement <4 x i32> poison, i32 %i.vd, i64 0
  %i.vf = bitcast <4 x i32> %i.ve to <4 x float>
  %i.vg = shufflevector <4 x float> %i.vf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sw, <4 x float> nofpclass(nan inf) %i.vg, <4 x float> nofpclass(nan inf) %i.ub) ; 2 uses
  %i.vi = getelementptr inbounds [2 x i8], ptr %.45361201.i, i64 %i.hb
  %i.vj = getelementptr inbounds nuw i8, ptr %.55461200.i, i64 64
  %i.vk = add nuw nsw i32 %.05281202.i, 1         ; 2 uses
  %exitcond1714.not.i = icmp eq i32 %i.vk, %i.gg
  br i1 %exitcond1714.not.i, label %.loopexit1161.loopexit.i, label %.lr.ph1203.i, !llvm.loop !400

.loopexit1161.loopexit.i:                         ; preds = %.lr.ph1203.i
  %scevgep1712.i = getelementptr i8, ptr %.05411213.i, i64 64
  %scevgep1713.i = getelementptr i8, ptr %scevgep1712.i, i64 %i.he
  br label %.loopexit1161.i

.loopexit1161.i:                                  ; preds = %.loopexit1161.loopexit.i, %.preheader1160.i, %.loopexit1162.i, %.loopexit1162.loopexit.i, %bb.k
  %.61064.i = phi nsz <4 x float> [ %.010581209.i, %.loopexit1162.i ], [ %.010581209.i, %.preheader1160.i ], [ %i.vh, %.loopexit1161.loopexit.i ], [ %.010581209.i, %bb.k ], [ %i.qx, %.loopexit1162.loopexit.i ] ; 2 uses
  %.61052.i = phi nsz <4 x float> [ %.010461210.i, %.loopexit1162.i ], [ %.010461210.i, %.preheader1160.i ], [ %i.uz, %.loopexit1161.loopexit.i ], [ %.010461210.i, %bb.k ], [ %i.qp, %.loopexit1162.loopexit.i ] ; 2 uses
  %.61038.i = phi nsz <4 x float> [ %.010321211.i, %.loopexit1162.i ], [ %.010321211.i, %.preheader1160.i ], [ %i.ur, %.loopexit1161.loopexit.i ], [ %.010321211.i, %bb.k ], [ %i.qh, %.loopexit1162.loopexit.i ] ; 2 uses
  %.71023.i = phi nsz <4 x float> [ %.110171212.i, %.loopexit1162.i ], [ %.110171212.i, %.preheader1160.i ], [ %i.uj, %.loopexit1161.loopexit.i ], [ %.110171212.i, %bb.k ], [ %i.pz, %.loopexit1162.loopexit.i ] ; 2 uses
  %.6547.i = phi ptr [ %.05411213.i, %.loopexit1162.i ], [ %.05411213.i, %.preheader1160.i ], [ %scevgep1713.i, %.loopexit1161.loopexit.i ], [ %.05411213.i, %bb.k ], [ %scevgep1710.i, %.loopexit1162.loopexit.i ] ; 2 uses
  %i.vl = add nuw nsw i32 %.05371214.i, 8         ; 2 uses
  %i.vm = or disjoint i32 %i.vl, 7
  %i.vn = icmp slt i32 %i.vm, %i.ee
  br i1 %i.vn, label %.loopexit1164.i, label %.preheader1167.i, !llvm.loop !398

.preheader1166.i:                                 ; preds = %.loopexit1157.i, %.preheader1167.i
  %.71065.lcssa.i = phi <4 x float> [ %.01058.lcssa.i, %.preheader1167.i ], [ %.111069.i, %.loopexit1157.i ]
  %.71053.lcssa.i = phi <4 x float> [ %.01046.lcssa.i, %.preheader1167.i ], [ %.111057.i, %.loopexit1157.i ]
  %.71039.lcssa.i = phi <4 x float> [ %.01032.lcssa.i, %.preheader1167.i ], [ %.111043.i, %.loopexit1157.i ] ; 3 uses
  %.81024.lcssa.i = phi <4 x float> [ %.11017.lcssa.i, %.preheader1167.i ], [ %.121028.i, %.loopexit1157.i ] ; 3 uses
  %.7548.lcssa.i = phi ptr [ %.0541.lcssa.i, %.preheader1167.i ], [ %.11552.i, %.loopexit1157.i ] ; 3 uses
  %.1538.lcssa.i = phi i32 [ %.0537.lcssa.i, %.preheader1167.i ], [ %i.abf, %.loopexit1157.i ] ; 5 uses
  %i.vo = or disjoint i32 %.1538.lcssa.i, 1
  %i.vp = icmp slt i32 %i.vo, %i.ee
  br i1 %i.vp, label %.lr.ph1279.i, label %.preheader1165.i

.lr.ph1279.i:                                     ; preds = %.preheader1166.i
  %i.vq = load ptr, ptr %4, align 8, !tbaa !18
  %i.vr = load i32, ptr %i.t, align 4, !tbaa !249
  %i.vs = sext i32 %i.vr to i64
  %i.vt = load i64, ptr %i.q, align 8, !tbaa !49
  %factor.op.mul1284.i = mul i64 %i.vt, %i.vs
  %i.vu = mul nsw i64 %indvars.iv1731.i, %i.fp
  %invariant.gep1286.i = getelementptr [2 x i8], ptr %i.vq, i64 %i.vu
  %i.vv = load i32, ptr %i.e, align 4
  %i.vw = sext i32 %i.vv to i64
  %i.vx = load i32, ptr %i.b, align 4
  %i.vy = sext i32 %i.vx to i64
  br i1 %i.fd, label %.lr.ph1271.us.preheader.i, label %.lr.ph1279.split.preheader.i

.lr.ph1279.split.preheader.i:                     ; preds = %.lr.ph1279.i
  %i.vz = add i32 %.1538.lcssa.i, 2
  %reass.sub = sub i32 %5, %.1538.lcssa.i
  %i.wa = and i32 %reass.sub, -2
  %i.wb = add i32 %i.vz, %i.wa
  br label %.preheader1165.i

.lr.ph1271.us.preheader.i:                        ; preds = %.lr.ph1279.i
  %i.wc = zext i32 %.1538.lcssa.i to i64
  br label %.lr.ph1271.us.i

.lr.ph1271.us.i:                                  ; preds = %._crit_edge.us.i, %.lr.ph1271.us.preheader.i
  %indvars.iv.i = phi i64 [ %i.wc, %.lr.ph1271.us.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.us.i ] ; 2 uses
  %.125531277.us.i = phi ptr [ %.7548.lcssa.i, %.lr.ph1271.us.preheader.i ], [ %scevgep1722.i, %._crit_edge.us.i ] ; 2 uses
  %.1310291276.us.i = phi <4 x float> [ %.81024.lcssa.i, %.lr.ph1271.us.preheader.i ], [ %i.wu, %._crit_edge.us.i ]
  %.1210441275.us.i = phi <4 x float> [ %.71039.lcssa.i, %.lr.ph1271.us.preheader.i ], [ %i.xc, %._crit_edge.us.i ]
  %.reass1285.us.i = mul i64 %factor.op.mul1284.i, %indvars.iv.i
  %gep1287.us.i = getelementptr i8, ptr %invariant.gep1286.i, i64 %.reass1285.us.i
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph1271.us.i
  %.05211270.us.i = phi i32 [ 0, %.lr.ph1271.us.i ], [ %i.xf, %bb.l ]
  %.05221269.us.i = phi ptr [ %gep1287.us.i, %.lr.ph1271.us.i ], [ %i.xd, %bb.l ] ; 3 uses
  %.135541268.us.i = phi ptr [ %.125531277.us.i, %.lr.ph1271.us.i ], [ %i.xe, %bb.l ] ; 3 uses
  %.1410301267.us.i = phi <4 x float> [ %.1310291276.us.i, %.lr.ph1271.us.i ], [ %i.wu, %bb.l ]
  %.1310451266.us.i = phi <4 x float> [ %.1210441275.us.i, %.lr.ph1271.us.i ], [ %i.xc, %bb.l ]
  %i.wd = load i64, ptr %.135541268.us.i, align 1, !tbaa !273
  %i.we = insertelement <2 x i64> poison, i64 %i.wd, i64 0
  %i.wf = bitcast <2 x i64> %i.we to <8 x i16>
  %i.wg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.wf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.wh = bitcast <8 x i16> %i.wg to <4 x float>
  %i.wi = getelementptr inbounds nuw i8, ptr %.135541268.us.i, i64 8
  %i.wj = load i64, ptr %i.wi, align 1, !tbaa !273
  %i.wk = insertelement <2 x i64> poison, i64 %i.wj, i64 0
  %i.wl = bitcast <2 x i64> %i.wk to <8 x i16>
  %i.wm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.wl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.wn = bitcast <8 x i16> %i.wm to <4 x float>
  %i.wo = load i16, ptr %.05221269.us.i, align 2, !tbaa !334
  %i.wp = zext i16 %i.wo to i32
  %i.wq = shl nuw i32 %i.wp, 16
  %i.wr = insertelement <4 x i32> poison, i32 %i.wq, i64 0
  %i.ws = bitcast <4 x i32> %i.wr to <4 x float>
  %i.wt = shufflevector <4 x float> %i.ws, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.wh, <4 x float> nofpclass(nan inf) %i.wt, <4 x float> nofpclass(nan inf) %.1410301267.us.i) ; 3 uses
  %i.wv = getelementptr inbounds [2 x i8], ptr %.05221269.us.i, i64 %i.vw
  %i.ww = load i16, ptr %i.wv, align 2, !tbaa !334
  %i.wx = zext i16 %i.ww to i32
  %i.wy = shl nuw i32 %i.wx, 16
  %i.wz = insertelement <4 x i32> poison, i32 %i.wy, i64 0
  %i.xa = bitcast <4 x i32> %i.wz to <4 x float>
  %i.xb = shufflevector <4 x float> %i.xa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.wn, <4 x float> nofpclass(nan inf) %i.xb, <4 x float> nofpclass(nan inf) %.1310451266.us.i) ; 3 uses
  %i.xd = getelementptr inbounds [2 x i8], ptr %.05221269.us.i, i64 %i.vy
  %i.xe = getelementptr inbounds nuw i8, ptr %.135541268.us.i, i64 16
  %i.xf = add nuw nsw i32 %.05211270.us.i, 1      ; 2 uses
  %exitcond1723.not.i = icmp eq i32 %i.xf, %i.fc
  br i1 %exitcond1723.not.i, label %._crit_edge.us.i, label %bb.l, !llvm.loop !401

._crit_edge.us.i:                                 ; preds = %bb.l
  %scevgep1721.i = getelementptr i8, ptr %.125531277.us.i, i64 16
  %scevgep1722.i = getelementptr i8, ptr %scevgep1721.i, i64 %i.fn ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.xg = trunc i64 %indvars.iv.next.i to i32     ; 2 uses
  %i.xh = or i32 %i.xg, 1
  %i.xi = icmp slt i32 %i.xh, %i.ee
  br i1 %i.xi, label %.lr.ph1271.us.i, label %.preheader1165.i, !llvm.loop !402

bb.m:                                             ; preds = %.loopexit1157.i, %.lr.ph1255.i
  %.15381254.i = phi i32 [ %.0537.lcssa.i, %.lr.ph1255.i ], [ %i.abf, %.loopexit1157.i ] ; 2 uses
  %.75481253.i = phi ptr [ %.0541.lcssa.i, %.lr.ph1255.i ], [ %.11552.i, %.loopexit1157.i ] ; 7 uses
  %.810241252.i = phi <4 x float> [ %.11017.lcssa.i, %.lr.ph1255.i ], [ %.121028.i, %.loopexit1157.i ] ; 5 uses
  %.710391251.i = phi <4 x float> [ %.01032.lcssa.i, %.lr.ph1255.i ], [ %.111043.i, %.loopexit1157.i ] ; 5 uses
  %.710531250.i = phi <4 x float> [ %.01046.lcssa.i, %.lr.ph1255.i ], [ %.111057.i, %.loopexit1157.i ] ; 5 uses
  %.710651249.i = phi <4 x float> [ %.01058.lcssa.i, %.lr.ph1255.i ], [ %.111069.i, %.loopexit1157.i ] ; 5 uses
  %i.xj = sdiv i32 %.15381254.i, %i.ec
  %i.xk = sext i32 %i.xj to i64
  %.reass1263.i = mul i64 %factor.op.mul1262.i, %i.xk
  %gep1265.i = getelementptr i8, ptr %invariant.gep1264.i, i64 %.reass1263.i ; 2 uses
  br i1 %i.fa, label %.preheader1158.i, label %.loopexit1159.i

.preheader1158.i:                                 ; preds = %bb.m
  br i1 %i.mc, label %.lr.ph1229.i, label %.loopexit1157.i

.lr.ph1229.i:                                     ; preds = %.preheader1158.i, %.lr.ph1229.i
  %.05241228.i = phi i32 [ %i.yz, %.lr.ph1229.i ], [ 0, %.preheader1158.i ]
  %.05251227.i = phi ptr [ %i.yx, %.lr.ph1229.i ], [ %gep1265.i, %.preheader1158.i ] ; 2 uses
  %.85491226.i = phi ptr [ %i.yy, %.lr.ph1229.i ], [ %.75481253.i, %.preheader1158.i ] ; 5 uses
  %.910251225.i = phi <4 x float> [ %i.yn, %.lr.ph1229.i ], [ %.810241252.i, %.preheader1158.i ]
  %.810401224.i = phi <4 x float> [ %i.yq, %.lr.ph1229.i ], [ %.710391251.i, %.preheader1158.i ]
  %.810541223.i = phi <4 x float> [ %i.yt, %.lr.ph1229.i ], [ %.710531250.i, %.preheader1158.i ]
  %.810661222.i = phi <4 x float> [ %i.yw, %.lr.ph1229.i ], [ %.710651249.i, %.preheader1158.i ]
  %i.xl = load i64, ptr %.85491226.i, align 1, !tbaa !273
  %i.xm = insertelement <2 x i64> poison, i64 %i.xl, i64 0
  %i.xn = bitcast <2 x i64> %i.xm to <8 x i16>
  %i.xo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.xn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.xp = bitcast <8 x i16> %i.xo to <4 x float>
  %i.xq = getelementptr inbounds nuw i8, ptr %.85491226.i, i64 8
  %i.xr = load i64, ptr %i.xq, align 1, !tbaa !273
  %i.xs = insertelement <2 x i64> poison, i64 %i.xr, i64 0
  %i.xt = bitcast <2 x i64> %i.xs to <8 x i16>
  %i.xu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.xt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.xv = bitcast <8 x i16> %i.xu to <4 x float>
  %i.xw = getelementptr inbounds nuw i8, ptr %.85491226.i, i64 16
  %i.xx = load i64, ptr %i.xw, align 1, !tbaa !273
  %i.xy = insertelement <2 x i64> poison, i64 %i.xx, i64 0
  %i.xz = bitcast <2 x i64> %i.xy to <8 x i16>
  %i.ya = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.xz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.yb = bitcast <8 x i16> %i.ya to <4 x float>
  %i.yc = getelementptr inbounds nuw i8, ptr %.85491226.i, i64 24
  %i.yd = load i64, ptr %i.yc, align 1, !tbaa !273
  %i.ye = insertelement <2 x i64> poison, i64 %i.yd, i64 0
  %i.yf = bitcast <2 x i64> %i.ye to <8 x i16>
  %i.yg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.yf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.yh = bitcast <8 x i16> %i.yg to <4 x float>
  %i.yi = load <4 x i16>, ptr %.05251227.i, align 2, !tbaa !334
  %i.yj = zext <4 x i16> %i.yi to <4 x i32>
  %i.yk = shl nuw <4 x i32> %i.yj, splat (i32 16) ; 4 uses
  %i.yl = bitcast <4 x i32> %i.yk to <4 x float>
  %i.ym = shufflevector <4 x float> %i.yl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xp, <4 x float> nofpclass(nan inf) %i.ym, <4 x float> nofpclass(nan inf) %.910251225.i) ; 2 uses
  %i.yo = bitcast <4 x i32> %i.yk to <4 x float>
  %i.yp = shufflevector <4 x float> %i.yo, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.yq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xv, <4 x float> nofpclass(nan inf) %i.yp, <4 x float> nofpclass(nan inf) %.810401224.i) ; 2 uses
  %i.yr = bitcast <4 x i32> %i.yk to <4 x float>
  %i.ys = shufflevector <4 x float> %i.yr, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.yt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.yb, <4 x float> nofpclass(nan inf) %i.ys, <4 x float> nofpclass(nan inf) %.810541223.i) ; 2 uses
  %i.yu = bitcast <4 x i32> %i.yk to <4 x float>
  %i.yv = shufflevector <4 x float> %i.yu, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.yw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.yh, <4 x float> nofpclass(nan inf) %i.yv, <4 x float> nofpclass(nan inf) %.810661222.i) ; 2 uses
  %i.yx = getelementptr inbounds [2 x i8], ptr %.05251227.i, i64 %i.mf
  %i.yy = getelementptr inbounds nuw i8, ptr %.85491226.i, i64 32
  %i.yz = add nuw nsw i32 %.05241228.i, 1         ; 2 uses
  %exitcond1717.not.i = icmp eq i32 %i.yz, %i.mb
  br i1 %exitcond1717.not.i, label %.loopexit1159.loopexit.i, label %.lr.ph1229.i, !llvm.loop !403

.loopexit1159.loopexit.i:                         ; preds = %.lr.ph1229.i
  %scevgep1715.i = getelementptr i8, ptr %.75481253.i, i64 32
  %scevgep1716.i = getelementptr i8, ptr %scevgep1715.i, i64 %i.mp
  br label %.loopexit1157.i

.loopexit1159.i:                                  ; preds = %bb.m
  br i1 %i.fb, label %.preheader1156.i, label %.loopexit1157.i

.preheader1156.i:                                 ; preds = %.loopexit1159.i
  br i1 %i.mc, label %.lr.ph1243.i, label %.loopexit1157.i

.lr.ph1243.i:                                     ; preds = %.preheader1156.i, %.lr.ph1243.i
  %.05231242.i = phi i32 [ %i.abe, %.lr.ph1243.i ], [ 0, %.preheader1156.i ]
  %.25271241.i = phi ptr [ %i.abc, %.lr.ph1243.i ], [ %gep1265.i, %.preheader1156.i ] ; 5 uses
  %.105511240.i = phi ptr [ %i.abd, %.lr.ph1243.i ], [ %.75481253.i, %.preheader1156.i ] ; 5 uses
  %.1110271239.i = phi <4 x float> [ %i.aad, %.lr.ph1243.i ], [ %.810241252.i, %.preheader1156.i ]
  %.1010421238.i = phi <4 x float> [ %i.aal, %.lr.ph1243.i ], [ %.710391251.i, %.preheader1156.i ]
  %.1010561237.i = phi <4 x float> [ %i.aat, %.lr.ph1243.i ], [ %.710531250.i, %.preheader1156.i ]
  %.1010681236.i = phi <4 x float> [ %i.abb, %.lr.ph1243.i ], [ %.710651249.i, %.preheader1156.i ]
  %i.za = load i64, ptr %.105511240.i, align 1, !tbaa !273
  %i.zb = insertelement <2 x i64> poison, i64 %i.za, i64 0
  %i.zc = bitcast <2 x i64> %i.zb to <8 x i16>
  %i.zd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.zc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ze = bitcast <8 x i16> %i.zd to <4 x float>
  %i.zf = getelementptr inbounds nuw i8, ptr %.105511240.i, i64 8
  %i.zg = load i64, ptr %i.zf, align 1, !tbaa !273
  %i.zh = insertelement <2 x i64> poison, i64 %i.zg, i64 0
  %i.zi = bitcast <2 x i64> %i.zh to <8 x i16>
  %i.zj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.zi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.zk = bitcast <8 x i16> %i.zj to <4 x float>
  %i.zl = getelementptr inbounds nuw i8, ptr %.105511240.i, i64 16
  %i.zm = load i64, ptr %i.zl, align 1, !tbaa !273
  %i.zn = insertelement <2 x i64> poison, i64 %i.zm, i64 0
  %i.zo = bitcast <2 x i64> %i.zn to <8 x i16>
  %i.zp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.zo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.zq = bitcast <8 x i16> %i.zp to <4 x float>
  %i.zr = getelementptr inbounds nuw i8, ptr %.105511240.i, i64 24
  %i.zs = load i64, ptr %i.zr, align 1, !tbaa !273
  %i.zt = insertelement <2 x i64> poison, i64 %i.zs, i64 0
  %i.zu = bitcast <2 x i64> %i.zt to <8 x i16>
  %i.zv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.zu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.zw = bitcast <8 x i16> %i.zv to <4 x float>
  %i.zx = load i16, ptr %.25271241.i, align 2, !tbaa !334
  %i.zy = zext i16 %i.zx to i32
  %i.zz = shl nuw i32 %i.zy, 16
  %i.aaa = insertelement <4 x i32> poison, i32 %i.zz, i64 0
  %i.aab = bitcast <4 x i32> %i.aaa to <4 x float>
  %i.aac = shufflevector <4 x float> %i.aab, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aad = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ze, <4 x float> nofpclass(nan inf) %i.aac, <4 x float> nofpclass(nan inf) %.1110271239.i) ; 2 uses
  %i.aae = getelementptr inbounds [2 x i8], ptr %.25271241.i, i64 %i.mh
  %i.aaf = load i16, ptr %i.aae, align 2, !tbaa !334
  %i.aag = zext i16 %i.aaf to i32
  %i.aah = shl nuw i32 %i.aag, 16
  %i.aai = insertelement <4 x i32> poison, i32 %i.aah, i64 0
  %i.aaj = bitcast <4 x i32> %i.aai to <4 x float>
  %i.aak = shufflevector <4 x float> %i.aaj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aal = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.zk, <4 x float> nofpclass(nan inf) %i.aak, <4 x float> nofpclass(nan inf) %.1010421238.i) ; 2 uses
  %i.aam = getelementptr inbounds [2 x i8], ptr %.25271241.i, i64 %i.mj
  %i.aan = load i16, ptr %i.aam, align 2, !tbaa !334
  %i.aao = zext i16 %i.aan to i32
  %i.aap = shl nuw i32 %i.aao, 16
  %i.aaq = insertelement <4 x i32> poison, i32 %i.aap, i64 0
  %i.aar = bitcast <4 x i32> %i.aaq to <4 x float>
  %i.aas = shufflevector <4 x float> %i.aar, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aat = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.zq, <4 x float> nofpclass(nan inf) %i.aas, <4 x float> nofpclass(nan inf) %.1010561237.i) ; 2 uses
  %i.aau = getelementptr inbounds [2 x i8], ptr %.25271241.i, i64 %i.ml
  %i.aav = load i16, ptr %i.aau, align 2, !tbaa !334
  %i.aaw = zext i16 %i.aav to i32
  %i.aax = shl nuw i32 %i.aaw, 16
  %i.aay = insertelement <4 x i32> poison, i32 %i.aax, i64 0
end_hunk_6
begin_hunk_7_@_ZNK4ncnn21Convolution1D_x86_fma13forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:bb.a

bb.ar:                                            ; preds = %bb.aq
  %i.boc = fmul fast float %i.bnt, %.3462.lcssa.i
  %i.bod = fadd fast float %i.boc, %i.bnv
  %i.boe = fmul fast float %i.bod, %.3462.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit.i:         ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %._crit_edge1575.i
  %.11015.i = phi nsz float [ %.3462.lcssa.i, %._crit_edge1575.i ], [ %i.bmz, %bb.ak ], [ %i.bne, %bb.al ], [ 0.000000e+00, %bb.ap ], [ %spec.select1136.i, %bb.am ], [ %i.bnm, %bb.an ], [ %i.bnr, %bb.ao ], [ %i.boe, %bb.ar ], [ %.3462.lcssa.i, %bb.aq ]
  %i.bof = bitcast float %.11015.i to i32
  %i.bog = lshr i32 %i.bof, 16
  %i.boh = trunc nuw i32 %i.bog to i16
  store i16 %i.boh, ptr %.04651582.i, align 2, !tbaa !334
  %i.boi = getelementptr inbounds nuw i8, ptr %.04651582.i, i64 2
  %indvars.iv.next1807.i = add nuw nsw i64 %indvars.iv1806.i, 1 ; 2 uses
  %exitcond1810.not.i = icmp eq i64 %indvars.iv.next1807.i, %wide.trip.count1809.i
  br i1 %exitcond1810.not.i, label %._crit_edge1586.i, label %bb.af, !llvm.loop !437

_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.exit: ; preds = %._crit_edge1586.i, %._crit_edge1469.split.i, %.lr.ph1593.i
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
  %i.boj = load ptr, ptr %i.p, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %i.boj, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit24, label %bb.as

bb.as:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit32.thread
  %i.bok = atomicrmw add ptr %i.boj, i32 -1 acq_rel, align 4
  %i.bol = icmp eq i32 %i.bok, 1
  br i1 %i.bol, label %bb.at, label %_ZN4ncnn3MatD2Ev.exit24

bb.at:                                            ; preds = %bb.as
  %i.bom = load ptr, ptr %i.s, align 8, !tbaa !17 ; 3 uses
  %.not3.i = icmp eq ptr %i.bom, null
  %i.bon = load ptr, ptr %4, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.boo = load ptr, ptr %i.bom, align 8, !tbaa !9
  %i.bop = getelementptr inbounds nuw i8, ptr %i.boo, i64 24
  %i.boq = load ptr, ptr %i.bop, align 8
  invoke void %i.boq(ptr noundef nonnull align 8 dereferenceable(8) %i.bom, ptr noundef %i.bon)
          to label %_ZN4ncnn3MatD2Ev.exit24 unwind label %bb.ax, !inline_history !19

bb.av:                                            ; preds = %bb.at
  %.not.i30 = icmp eq ptr %i.bon, null
  br i1 %.not.i30, label %_ZN4ncnn3MatD2Ev.exit24, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @free(ptr noundef nonnull %i.bon) #11
  br label %_ZN4ncnn3MatD2Ev.exit24

bb.ax:                                            ; preds = %bb.au
  %i.bor = landingpad { ptr, i32 }
          catch ptr null
  %i.bos = extractvalue { ptr, i32 } %i.bor, 0
  call void @__clang_call_terminate(ptr %i.bos) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit24:                          ; preds = %bb.as, %_ZNK4ncnn3Mat5emptyEv.exit32.thread, %bb.au, %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret i32 %.1

bb.ay:                                            ; preds = %bb.g, %bb.c
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.g ], [ %i.ae, %bb.c ]
  %i.bot = load ptr, ptr %i.p, align 8, !tbaa !11 ; 2 uses
  %.not.i25 = icmp eq ptr %i.bot, null
  br i1 %.not.i25, label %_ZN4ncnn3MatD2Ev.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.bou = atomicrmw add ptr %i.bot, i32 -1 acq_rel, align 4
  %i.bov = icmp eq i32 %i.bou, 1
  br i1 %i.bov, label %bb.ba, label %_ZN4ncnn3MatD2Ev.exit

bb.ba:                                            ; preds = %bb.az
  %i.bow = load ptr, ptr %i.s, align 8, !tbaa !17 ; 3 uses
  %.not3.i26 = icmp eq ptr %i.bow, null
  %i.box = load ptr, ptr %4, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i26, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.boy = load ptr, ptr %i.bow, align 8, !tbaa !9
  %i.boz = getelementptr inbounds nuw i8, ptr %i.boy, i64 24
  %i.bpa = load ptr, ptr %i.boz, align 8
  invoke void %i.bpa(ptr noundef nonnull align 8 dereferenceable(8) %i.bow, ptr noundef %i.box)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.be, !inline_history !19

bb.bc:                                            ; preds = %bb.ba
  %.not.i29 = icmp eq ptr %i.box, null
  br i1 %.not.i29, label %_ZN4ncnn3MatD2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @free(ptr noundef nonnull %i.box) #11
  br label %_ZN4ncnn3MatD2Ev.exit

bb.be:                                            ; preds = %bb.bb
  %i.bpb = landingpad { ptr, i32 }
          catch ptr null
  %i.bpc = extractvalue { ptr, i32 } %i.bpb, 0
  call void @__clang_call_terminate(ptr %i.bpc) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.az, %bb.ay, %bb.bb, %bb.bc, %bb.bd
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
  br i1 %i.f, label %bb.b, label %bb.r

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
  %.not703 = icmp sgt i32 %i.k, %i.j
  br i1 %.not703, label %._crit_edge707, label %.lr.ph706

.lr.ph706:                                        ; preds = %bb.b
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
  br i1 %i.v, label %.lr.ph706.split, label %._crit_edge707

.lr.ph706.splitthread-pre-split:                  ; preds = %._crit_edge
  %i.w = add i32 %.0215704, 1
  %.pr = load i32, ptr %i.n, align 4, !tbaa !249
  br label %.lr.ph706.split

.lr.ph706.split:                                  ; preds = %.lr.ph706, %.lr.ph706.splitthread-pre-split
  %i.x = phi i32 [ %.pr, %.lr.ph706.splitthread-pre-split ], [ %i.u, %.lr.ph706 ] ; 3 uses
  %.0215704 = phi i32 [ %i.w, %.lr.ph706.splitthread-pre-split ], [ %i.k, %.lr.ph706 ] ; 3 uses
  %i.y = load i32, ptr %i.l, align 8, !tbaa !251  ; 8 uses
  %i.z = load i32, ptr %i.m, align 8, !tbaa !264
  %i.aa = mul i32 %i.z, %i.y                      ; 10 uses
  %i.ab = load i32, ptr %i.o, align 8, !tbaa !251 ; 2 uses
  %i.ac = icmp sgt i32 %i.x, 0
  br i1 %i.ac, label %.lr.ph702, label %._crit_edge

.lr.ph702:                                        ; preds = %.lr.ph706.split
  %i.ad = load ptr, ptr %5, align 8, !tbaa !18
  %i.ae = load i32, ptr %3, align 4, !tbaa !254
  %i.af = shl nsw i32 %.0215704, 3
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
  %15 = add i32 %i.aa, -2
  br label %bb.c

._crit_edge:                                      ; preds = %.thread547, %.lr.ph706.split
  %exitcond771.not = icmp eq i32 %.0215704, %i.j
  br i1 %exitcond771.not, label %._crit_edge707, label %.lr.ph706.splitthread-pre-split, !llvm.loop !438

bb.c:                                             ; preds = %.lr.ph702, %.thread547
  %.0210701 = phi i32 [ 0, %.lr.ph702 ], [ %i.yv, %.thread547 ] ; 5 uses
  %.0211700 = phi ptr [ %i.an, %.lr.ph702 ], [ %.3214, %.thread547 ] ; 15 uses
  %i.aw = load ptr, ptr %6, align 8, !tbaa !265   ; 2 uses
  %.not217 = icmp eq ptr %i.aw, null
  br i1 %.not217, label %_ZN4ncnn3MatD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ao
  %i.ay = load <8 x float>, ptr %i.ax, align 1, !tbaa !273
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.d, %bb.c
  %.0530 = phi nsz <8 x float> [ zeroinitializer, %bb.c ], [ %i.ay, %bb.d ] ; 2 uses
  %i.az = load ptr, ptr %7, align 8, !tbaa !18, !noalias !439
  %i.ba = load i64, ptr %i.q, align 8, !tbaa !20, !noalias !439
  %i.bb = mul i64 %i.ba, %i.aq
  %i.bc = load i64, ptr %i.r, align 8, !tbaa !49, !noalias !439
  %i.bd = mul i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bd ; 2 uses
  br i1 %i.ar, label %.lr.ph605, label %.preheader558

.lr.ph605:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit
  %i.bf = load ptr, ptr %4, align 8, !tbaa !18
  %i.bg = load i32, ptr %i.s, align 4, !tbaa !249
  %i.bh = sext i32 %i.bg to i64
  %i.bi = load i64, ptr %i.t, align 8, !tbaa !49
  %factor.op.mul = mul i64 %i.bi, %i.bh
  %i.bj = load i32, ptr %8, align 4, !tbaa !254
  %i.bk = mul i32 %.0210701, %i.y
  %i.bl = mul i32 %i.bk, %i.bj
  %i.bm = sext i32 %i.bl to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.bf, i64 %i.bm
  br label %bb.e

.preheader558:                                    ; preds = %.loopexit552, %_ZN4ncnn3MatD2Ev.exit
  %.1531.lcssa = phi <8 x float> [ %.0530, %_ZN4ncnn3MatD2Ev.exit ], [ %.7537, %.loopexit552 ] ; 2 uses
  %.0516.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit ], [ %.6522, %.loopexit552 ] ; 2 uses
  %.0504.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit ], [ %.6510, %.loopexit552 ] ; 2 uses
  %.0492.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit ], [ %.6498, %.loopexit552 ] ; 2 uses
  %.0205.lcssa = phi ptr [ %i.be, %_ZN4ncnn3MatD2Ev.exit ], [ %.6, %.loopexit552 ] ; 2 uses
  %.0201.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit ], [ %i.av, %.loopexit552 ] ; 3 uses
  %i.bn = or disjoint i32 %.0201.lcssa, 3
  %i.bo = icmp slt i32 %i.bn, %i.aa
  br i1 %i.bo, label %.lr.ph645, label %.preheader557

.lr.ph645:                                        ; preds = %.preheader558
  %i.bp = load ptr, ptr %4, align 8, !tbaa !18
  %i.bq = load i32, ptr %i.s, align 4, !tbaa !249
  %i.br = sext i32 %i.bq to i64
  %i.bs = load i64, ptr %i.t, align 8, !tbaa !49
  %factor.op.mul652 = mul i64 %i.bs, %i.br
  %i.bt = load i32, ptr %8, align 4, !tbaa !254
  %i.bu = mul i32 %.0210701, %i.y
  %i.bv = mul i32 %i.bu, %i.bt
  %i.bw = sext i32 %i.bv to i64
  %invariant.gep654 = getelementptr [4 x i8], ptr %i.bp, i64 %i.bw
  br label %bb.j

bb.e:                                             ; preds = %.lr.ph605, %.loopexit552
  %.0201604 = phi i32 [ 0, %.lr.ph605 ], [ %i.kc, %.loopexit552 ] ; 2 uses
  %.0205603 = phi ptr [ %i.be, %.lr.ph605 ], [ %.6, %.loopexit552 ] ; 10 uses
  %.0492602 = phi <8 x float> [ zeroinitializer, %.lr.ph605 ], [ %.6498, %.loopexit552 ] ; 7 uses
  %.0504601 = phi <8 x float> [ zeroinitializer, %.lr.ph605 ], [ %.6510, %.loopexit552 ] ; 7 uses
  %.0516600 = phi <8 x float> [ zeroinitializer, %.lr.ph605 ], [ %.6522, %.loopexit552 ] ; 7 uses
  %.1531599 = phi <8 x float> [ %.0530, %.lr.ph605 ], [ %.7537, %.loopexit552 ] ; 7 uses
  %i.bx = sdiv i32 %.0201604, %i.y
  %i.by = sext i32 %i.bx to i64
  %.reass = mul i64 %factor.op.mul, %i.by
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.reass ; 4 uses
  br i1 %i.as, label %.preheader554, label %.loopexit555

.preheader554:                                    ; preds = %bb.e
  %i.bz = load i32, ptr %9, align 4, !tbaa !254   ; 3 uses
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %.lr.ph, label %.loopexit552

.lr.ph:                                           ; preds = %.preheader554
  %i.cb = load i32, ptr %10, align 4, !tbaa !254
  %i.cc = shl nsw i32 %i.cb, 3
  %i.cd = sext i32 %i.cc to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.0197565 = phi i32 [ 0, %.lr.ph ], [ %i.ei, %bb.f ]
  %.0198564 = phi ptr [ %gep, %.lr.ph ], [ %i.eg, %bb.f ] ; 9 uses
  %.1206563 = phi ptr [ %.0205603, %.lr.ph ], [ %i.eh, %bb.f ] ; 9 uses
  %.1493562 = phi <8 x float> [ %.0492602, %.lr.ph ], [ %i.ef, %bb.f ]
  %.1505561 = phi <8 x float> [ %.0504601, %.lr.ph ], [ %i.ea, %bb.f ]
  %.1517560 = phi <8 x float> [ %.0516600, %.lr.ph ], [ %i.dv, %bb.f ]
  %.2532559 = phi <8 x float> [ %.1531599, %.lr.ph ], [ %i.dq, %bb.f ]
  %i.ce = load <8 x float>, ptr %.1206563, align 32, !tbaa !273
  %i.cf = getelementptr inbounds nuw i8, ptr %.1206563, i64 32
  %i.cg = load <8 x float>, ptr %i.cf, align 32, !tbaa !273
  %i.ch = getelementptr inbounds nuw i8, ptr %.1206563, i64 64
  %i.ci = load <8 x float>, ptr %i.ch, align 32, !tbaa !273
  %i.cj = getelementptr inbounds nuw i8, ptr %.1206563, i64 96
  %i.ck = load <8 x float>, ptr %i.cj, align 32, !tbaa !273
  %i.cl = getelementptr inbounds nuw i8, ptr %.1206563, i64 128
  %i.cm = load <8 x float>, ptr %i.cl, align 32, !tbaa !273
  %i.cn = getelementptr inbounds nuw i8, ptr %.1206563, i64 160
  %i.co = load <8 x float>, ptr %i.cn, align 32, !tbaa !273
  %i.cp = getelementptr inbounds nuw i8, ptr %.1206563, i64 192
  %i.cq = load <8 x float>, ptr %i.cp, align 32, !tbaa !273
  %i.cr = getelementptr inbounds nuw i8, ptr %.1206563, i64 224
  %i.cs = load <8 x float>, ptr %i.cr, align 32, !tbaa !273
  %i.ct = load float, ptr %.0198564, align 4, !tbaa !53
  %i.cu = insertelement <8 x float> poison, float %i.ct, i64 0
  %i.cv = shufflevector <8 x float> %i.cu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ce, <8 x float> nofpclass(nan inf) %i.cv, <8 x float> nofpclass(nan inf) %.2532559)
  %i.cx = getelementptr inbounds nuw i8, ptr %.0198564, i64 4
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !53
  %i.cz = insertelement <8 x float> poison, float %i.cy, i64 0
  %i.da = shufflevector <8 x float> %i.cz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.db = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cg, <8 x float> nofpclass(nan inf) %i.da, <8 x float> nofpclass(nan inf) %.1517560)
  %i.dc = getelementptr inbounds nuw i8, ptr %.0198564, i64 8
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !53
  %i.de = insertelement <8 x float> poison, float %i.dd, i64 0
  %i.df = shufflevector <8 x float> %i.de, <8 x float> poison, <8 x i32> zeroinitializer
  %i.dg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ci, <8 x float> nofpclass(nan inf) %i.df, <8 x float> nofpclass(nan inf) %.1505561)
  %i.dh = getelementptr inbounds nuw i8, ptr %.0198564, i64 12
  %i.di = load float, ptr %i.dh, align 4, !tbaa !53
  %i.dj = insertelement <8 x float> poison, float %i.di, i64 0
  %i.dk = shufflevector <8 x float> %i.dj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.dl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ck, <8 x float> nofpclass(nan inf) %i.dk, <8 x float> nofpclass(nan inf) %.1493562)
  %i.dm = getelementptr inbounds nuw i8, ptr %.0198564, i64 16
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !53
  %i.do = insertelement <8 x float> poison, float %i.dn, i64 0
  %i.dp = shufflevector <8 x float> %i.do, <8 x float> poison, <8 x i32> zeroinitializer
  %i.dq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cm, <8 x float> nofpclass(nan inf) %i.dp, <8 x float> nofpclass(nan inf) %i.cw) ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.0198564, i64 20
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !53
  %i.dt = insertelement <8 x float> poison, float %i.ds, i64 0
  %i.du = shufflevector <8 x float> %i.dt, <8 x float> poison, <8 x i32> zeroinitializer
  %i.dv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.co, <8 x float> nofpclass(nan inf) %i.du, <8 x float> nofpclass(nan inf) %i.db) ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.0198564, i64 24
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !53
  %i.dy = insertelement <8 x float> poison, float %i.dx, i64 0
  %i.dz = shufflevector <8 x float> %i.dy, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ea = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cq, <8 x float> nofpclass(nan inf) %i.dz, <8 x float> nofpclass(nan inf) %i.dg) ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.0198564, i64 28
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !53
  %i.ed = insertelement <8 x float> poison, float %i.ec, i64 0
  %i.ee = shufflevector <8 x float> %i.ed, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ef = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cs, <8 x float> nofpclass(nan inf) %i.ee, <8 x float> nofpclass(nan inf) %i.dl) ; 2 uses
  %i.eg = getelementptr inbounds [4 x i8], ptr %.0198564, i64 %i.cd
  %i.eh = getelementptr inbounds nuw i8, ptr %.1206563, i64 256
  %i.ei = add nuw nsw i32 %.0197565, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ei, %i.bz
  br i1 %exitcond.not, label %.loopexit555.loopexit, label %bb.f, !llvm.loop !442

.loopexit555.loopexit:                            ; preds = %bb.f
  %scevgep = getelementptr i8, ptr %.0205603, i64 256
  %i.ej = add nsw i32 %i.bz, -1
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = shl nuw nsw i64 %i.ek, 8
  %scevgep747 = getelementptr i8, ptr %scevgep, i64 %i.el
  br label %.loopexit552

.loopexit555:                                     ; preds = %bb.e
  br i1 %i.at, label %bb.g, label %.loopexit553

bb.g:                                             ; preds = %.loopexit555
  %i.em = load i32, ptr %9, align 4, !tbaa !254   ; 3 uses
  %i.en = icmp sgt i32 %i.em, 0
  br i1 %i.en, label %.lr.ph579, label %.loopexit552

.lr.ph579:                                        ; preds = %bb.g
  %i.eo = load i32, ptr %11, align 4, !tbaa !254
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [4 x i8], ptr %gep, i64 %i.ep
  %i.er = load i32, ptr %10, align 4, !tbaa !254
  %i.es = shl nsw i32 %i.er, 2
  %i.et = sext i32 %i.es to i64                   ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph579, %bb.h
  %.0195578 = phi i32 [ 0, %.lr.ph579 ], [ %i.gy, %bb.h ]
  %.0196577 = phi ptr [ %i.eq, %.lr.ph579 ], [ %i.gw, %bb.h ] ; 5 uses
  %.2200576 = phi ptr [ %gep, %.lr.ph579 ], [ %i.gv, %bb.h ] ; 5 uses
  %.3208575 = phi ptr [ %.0205603, %.lr.ph579 ], [ %i.gx, %bb.h ] ; 9 uses
  %.3495574 = phi <8 x float> [ %.0492602, %.lr.ph579 ], [ %i.gu, %bb.h ]
  %.3507573 = phi <8 x float> [ %.0504601, %.lr.ph579 ], [ %i.gp, %bb.h ]
  %.3519572 = phi <8 x float> [ %.0516600, %.lr.ph579 ], [ %i.gk, %bb.h ]
  %.4534571 = phi <8 x float> [ %.1531599, %.lr.ph579 ], [ %i.gf, %bb.h ]
  %i.eu = load <8 x float>, ptr %.3208575, align 32, !tbaa !273
  %i.ev = getelementptr inbounds nuw i8, ptr %.3208575, i64 32
  %i.ew = load <8 x float>, ptr %i.ev, align 32, !tbaa !273
  %i.ex = getelementptr inbounds nuw i8, ptr %.3208575, i64 64
  %i.ey = load <8 x float>, ptr %i.ex, align 32, !tbaa !273
  %i.ez = getelementptr inbounds nuw i8, ptr %.3208575, i64 96
  %i.fa = load <8 x float>, ptr %i.ez, align 32, !tbaa !273
  %i.fb = getelementptr inbounds nuw i8, ptr %.3208575, i64 128
  %i.fc = load <8 x float>, ptr %i.fb, align 32, !tbaa !273
  %i.fd = getelementptr inbounds nuw i8, ptr %.3208575, i64 160
  %i.fe = load <8 x float>, ptr %i.fd, align 32, !tbaa !273
  %i.ff = getelementptr inbounds nuw i8, ptr %.3208575, i64 192
  %i.fg = load <8 x float>, ptr %i.ff, align 32, !tbaa !273
  %i.fh = getelementptr inbounds nuw i8, ptr %.3208575, i64 224
  %i.fi = load <8 x float>, ptr %i.fh, align 32, !tbaa !273
  %i.fj = load float, ptr %.2200576, align 4, !tbaa !53
  %i.fk = insertelement <8 x float> poison, float %i.fj, i64 0
  %i.fl = shufflevector <8 x float> %i.fk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eu, <8 x float> nofpclass(nan inf) %i.fl, <8 x float> nofpclass(nan inf) %.4534571)
  %i.fn = getelementptr inbounds nuw i8, ptr %.2200576, i64 4
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !53
  %i.fp = insertelement <8 x float> poison, float %i.fo, i64 0
  %i.fq = shufflevector <8 x float> %i.fp, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ew, <8 x float> nofpclass(nan inf) %i.fq, <8 x float> nofpclass(nan inf) %.3519572)
  %i.fs = getelementptr inbounds nuw i8, ptr %.2200576, i64 8
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !53
  %i.fu = insertelement <8 x float> poison, float %i.ft, i64 0
  %i.fv = shufflevector <8 x float> %i.fu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ey, <8 x float> nofpclass(nan inf) %i.fv, <8 x float> nofpclass(nan inf) %.3507573)
  %i.fx = getelementptr inbounds nuw i8, ptr %.2200576, i64 12
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !53
  %i.fz = insertelement <8 x float> poison, float %i.fy, i64 0
  %i.ga = shufflevector <8 x float> %i.fz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fa, <8 x float> nofpclass(nan inf) %i.ga, <8 x float> nofpclass(nan inf) %.3495574)
  %i.gc = load float, ptr %.0196577, align 4, !tbaa !53
  %i.gd = insertelement <8 x float> poison, float %i.gc, i64 0
  %i.ge = shufflevector <8 x float> %i.gd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fc, <8 x float> nofpclass(nan inf) %i.ge, <8 x float> nofpclass(nan inf) %i.fm) ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.0196577, i64 4
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !53
  %i.gi = insertelement <8 x float> poison, float %i.gh, i64 0
  %i.gj = shufflevector <8 x float> %i.gi, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fe, <8 x float> nofpclass(nan inf) %i.gj, <8 x float> nofpclass(nan inf) %i.fr) ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.0196577, i64 8
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !53
  %i.gn = insertelement <8 x float> poison, float %i.gm, i64 0
  %i.go = shufflevector <8 x float> %i.gn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fg, <8 x float> nofpclass(nan inf) %i.go, <8 x float> nofpclass(nan inf) %i.fw) ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.0196577, i64 12
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !53
  %i.gs = insertelement <8 x float> poison, float %i.gr, i64 0
  %i.gt = shufflevector <8 x float> %i.gs, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fi, <8 x float> nofpclass(nan inf) %i.gt, <8 x float> nofpclass(nan inf) %i.gb) ; 2 uses
  %i.gv = getelementptr inbounds [4 x i8], ptr %.2200576, i64 %i.et
  %i.gw = getelementptr inbounds [4 x i8], ptr %.0196577, i64 %i.et
  %i.gx = getelementptr inbounds nuw i8, ptr %.3208575, i64 256
  %i.gy = add nuw nsw i32 %.0195578, 1            ; 2 uses
  %exitcond750.not = icmp eq i32 %i.gy, %i.em
  br i1 %exitcond750.not, label %.loopexit553.loopexit, label %bb.h, !llvm.loop !443

.loopexit553.loopexit:                            ; preds = %bb.h
  %scevgep748 = getelementptr i8, ptr %.0205603, i64 256
  %i.gz = add nsw i32 %i.em, -1
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = shl nuw nsw i64 %i.ha, 8
  %scevgep749 = getelementptr i8, ptr %scevgep748, i64 %i.hb
  br label %.loopexit552

.loopexit553:                                     ; preds = %.loopexit555
  br i1 %i.au, label %.preheader551, label %.loopexit552

.preheader551:                                    ; preds = %.loopexit553
  %i.hc = load i32, ptr %9, align 4, !tbaa !254   ; 3 uses
  %i.hd = icmp sgt i32 %i.hc, 0
  br i1 %i.hd, label %.lr.ph593, label %.loopexit552

.lr.ph593:                                        ; preds = %.preheader551
  %i.he = load i32, ptr %11, align 4, !tbaa !254  ; 7 uses
  %i.hf = sext i32 %i.he to i64
  %i.hg = shl nsw i32 %i.he, 1
  %i.hh = sext i32 %i.hg to i64
  %i.hi = mul nsw i32 %i.he, 3
  %i.hj = sext i32 %i.hi to i64
  %i.hk = shl nsw i32 %i.he, 2
  %i.hl = sext i32 %i.hk to i64
  %i.hm = mul nsw i32 %i.he, 5
  %i.hn = sext i32 %i.hm to i64
  %i.ho = mul nsw i32 %i.he, 6
  %i.hp = sext i32 %i.ho to i64
  %i.hq = mul nsw i32 %i.he, 7
  %i.hr = sext i32 %i.hq to i64
  %i.hs = load i32, ptr %10, align 4, !tbaa !254
  %i.ht = sext i32 %i.hs to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph593, %bb.i
  %.0194592 = phi i32 [ 0, %.lr.ph593 ], [ %i.jy, %bb.i ]
  %.4591 = phi ptr [ %gep, %.lr.ph593 ], [ %i.jw, %bb.i ] ; 9 uses
  %.5590 = phi ptr [ %.0205603, %.lr.ph593 ], [ %i.jx, %bb.i ] ; 9 uses
  %.5497589 = phi <8 x float> [ %.0492602, %.lr.ph593 ], [ %i.jv, %bb.i ]
  %.5509588 = phi <8 x float> [ %.0504601, %.lr.ph593 ], [ %i.jq, %bb.i ]
  %.5521587 = phi <8 x float> [ %.0516600, %.lr.ph593 ], [ %i.jl, %bb.i ]
  %.6536586 = phi <8 x float> [ %.1531599, %.lr.ph593 ], [ %i.jg, %bb.i ]
  %i.hu = load <8 x float>, ptr %.5590, align 32, !tbaa !273
  %i.hv = getelementptr inbounds nuw i8, ptr %.5590, i64 32
  %i.hw = load <8 x float>, ptr %i.hv, align 32, !tbaa !273
  %i.hx = getelementptr inbounds nuw i8, ptr %.5590, i64 64
  %i.hy = load <8 x float>, ptr %i.hx, align 32, !tbaa !273
  %i.hz = getelementptr inbounds nuw i8, ptr %.5590, i64 96
  %i.ia = load <8 x float>, ptr %i.hz, align 32, !tbaa !273
  %i.ib = getelementptr inbounds nuw i8, ptr %.5590, i64 128
  %i.ic = load <8 x float>, ptr %i.ib, align 32, !tbaa !273
  %i.id = getelementptr inbounds nuw i8, ptr %.5590, i64 160
  %i.ie = load <8 x float>, ptr %i.id, align 32, !tbaa !273
  %i.if = getelementptr inbounds nuw i8, ptr %.5590, i64 192
  %i.ig = load <8 x float>, ptr %i.if, align 32, !tbaa !273
  %i.ih = getelementptr inbounds nuw i8, ptr %.5590, i64 224
  %i.ii = load <8 x float>, ptr %i.ih, align 32, !tbaa !273
  %i.ij = load float, ptr %.4591, align 4, !tbaa !53
  %i.ik = insertelement <8 x float> poison, float %i.ij, i64 0
  %i.il = shufflevector <8 x float> %i.ik, <8 x float> poison, <8 x i32> zeroinitializer
  %i.im = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hu, <8 x float> nofpclass(nan inf) %i.il, <8 x float> nofpclass(nan inf) %.6536586)
  %i.in = getelementptr inbounds [4 x i8], ptr %.4591, i64 %i.hf
  %i.io = load float, ptr %i.in, align 4, !tbaa !53
  %i.ip = insertelement <8 x float> poison, float %i.io, i64 0
  %i.iq = shufflevector <8 x float> %i.ip, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ir = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hw, <8 x float> nofpclass(nan inf) %i.iq, <8 x float> nofpclass(nan inf) %.5521587)
  %i.is = getelementptr inbounds [4 x i8], ptr %.4591, i64 %i.hh
  %i.it = load float, ptr %i.is, align 4, !tbaa !53
  %i.iu = insertelement <8 x float> poison, float %i.it, i64 0
  %i.iv = shufflevector <8 x float> %i.iu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.iw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hy, <8 x float> nofpclass(nan inf) %i.iv, <8 x float> nofpclass(nan inf) %.5509588)
  %i.ix = getelementptr inbounds [4 x i8], ptr %.4591, i64 %i.hj
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !53
  %i.iz = insertelement <8 x float> poison, float %i.iy, i64 0
  %i.ja = shufflevector <8 x float> %i.iz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ia, <8 x float> nofpclass(nan inf) %i.ja, <8 x float> nofpclass(nan inf) %.5497589)
  %i.jc = getelementptr inbounds [4 x i8], ptr %.4591, i64 %i.hl
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !53
  %i.je = insertelement <8 x float> poison, float %i.jd, i64 0
  %i.jf = shufflevector <8 x float> %i.je, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ic, <8 x float> nofpclass(nan inf) %i.jf, <8 x float> nofpclass(nan inf) %i.im) ; 2 uses
  %i.jh = getelementptr inbounds [4 x i8], ptr %.4591, i64 %i.hn
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !53
  %i.jj = insertelement <8 x float> poison, float %i.ji, i64 0
  %i.jk = shufflevector <8 x float> %i.jj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ie, <8 x float> nofpclass(nan inf) %i.jk, <8 x float> nofpclass(nan inf) %i.ir) ; 2 uses
  %i.jm = getelementptr inbounds [4 x i8], ptr %.4591, i64 %i.hp
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !53
  %i.jo = insertelement <8 x float> poison, float %i.jn, i64 0
  %i.jp = shufflevector <8 x float> %i.jo, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ig, <8 x float> nofpclass(nan inf) %i.jp, <8 x float> nofpclass(nan inf) %i.iw) ; 2 uses
  %i.jr = getelementptr inbounds [4 x i8], ptr %.4591, i64 %i.hr
  %i.js = load float, ptr %i.jr, align 4, !tbaa !53
  %i.jt = insertelement <8 x float> poison, float %i.js, i64 0
  %i.ju = shufflevector <8 x float> %i.jt, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ii, <8 x float> nofpclass(nan inf) %i.ju, <8 x float> nofpclass(nan inf) %i.jb) ; 2 uses
  %i.jw = getelementptr inbounds [4 x i8], ptr %.4591, i64 %i.ht
  %i.jx = getelementptr inbounds nuw i8, ptr %.5590, i64 256
  %i.jy = add nuw nsw i32 %.0194592, 1            ; 2 uses
  %exitcond753.not = icmp eq i32 %i.jy, %i.hc
  br i1 %exitcond753.not, label %.loopexit552.loopexit, label %bb.i, !llvm.loop !444

.loopexit552.loopexit:                            ; preds = %bb.i
  %scevgep751 = getelementptr i8, ptr %.0205603, i64 256
  %i.jz = add nsw i32 %i.hc, -1
  %i.ka = zext nneg i32 %i.jz to i64
  %i.kb = shl nuw nsw i64 %i.ka, 8
  %scevgep752 = getelementptr i8, ptr %scevgep751, i64 %i.kb
  br label %.loopexit552

.loopexit552:                                     ; preds = %.preheader554, %.loopexit555.loopexit, %bb.g, %.loopexit553.loopexit, %.loopexit552.loopexit, %.preheader551, %.loopexit553
  %.7537 = phi nsz <8 x float> [ %.1531599, %.loopexit553 ], [ %.1531599, %.preheader551 ], [ %i.jg, %.loopexit552.loopexit ], [ %.1531599, %bb.g ], [ %i.gf, %.loopexit553.loopexit ], [ %i.dq, %.loopexit555.loopexit ], [ %.1531599, %.preheader554 ] ; 2 uses
  %.6522 = phi nsz <8 x float> [ %.0516600, %.loopexit553 ], [ %.0516600, %.preheader551 ], [ %i.jl, %.loopexit552.loopexit ], [ %.0516600, %bb.g ], [ %i.gk, %.loopexit553.loopexit ], [ %i.dv, %.loopexit555.loopexit ], [ %.0516600, %.preheader554 ] ; 2 uses
  %.6510 = phi nsz <8 x float> [ %.0504601, %.loopexit553 ], [ %.0504601, %.preheader551 ], [ %i.jq, %.loopexit552.loopexit ], [ %.0504601, %bb.g ], [ %i.gp, %.loopexit553.loopexit ], [ %i.ea, %.loopexit555.loopexit ], [ %.0504601, %.preheader554 ] ; 2 uses
  %.6498 = phi nsz <8 x float> [ %.0492602, %.loopexit553 ], [ %.0492602, %.preheader551 ], [ %i.jv, %.loopexit552.loopexit ], [ %.0492602, %bb.g ], [ %i.gu, %.loopexit553.loopexit ], [ %i.ef, %.loopexit555.loopexit ], [ %.0492602, %.preheader554 ] ; 2 uses
  %.6 = phi ptr [ %.0205603, %.loopexit553 ], [ %.0205603, %.preheader551 ], [ %scevgep752, %.loopexit552.loopexit ], [ %.0205603, %bb.g ], [ %scevgep749, %.loopexit553.loopexit ], [ %scevgep747, %.loopexit555.loopexit ], [ %.0205603, %.preheader554 ] ; 2 uses
  %i.kc = add nuw nsw i32 %.0201604, 8            ; 2 uses
  %i.kd = or disjoint i32 %i.kc, 7
  %i.ke = icmp slt i32 %i.kd, %i.aa
  br i1 %i.ke, label %bb.e, label %.preheader558, !llvm.loop !445

.preheader557:                                    ; preds = %.loopexit, %.preheader558
  %.8538.lcssa = phi <8 x float> [ %.1531.lcssa, %.preheader558 ], [ %.12542, %.loopexit ] ; 3 uses
  %.7523.lcssa = phi <8 x float> [ %.0516.lcssa, %.preheader558 ], [ %.11527, %.loopexit ] ; 3 uses
  %.7511.lcssa = phi <8 x float> [ %.0504.lcssa, %.preheader558 ], [ %.11515, %.loopexit ]
  %.7499.lcssa = phi <8 x float> [ %.0492.lcssa, %.preheader558 ], [ %.11503, %.loopexit ]
  %.7.lcssa = phi ptr [ %.0205.lcssa, %.preheader558 ], [ %.11, %.loopexit ] ; 3 uses
  %.1202.lcssa = phi i32 [ %.0201.lcssa, %.preheader558 ], [ %i.px, %.loopexit ] ; 5 uses
  %i.kf = or disjoint i32 %.1202.lcssa, 1
  %i.kg = icmp slt i32 %i.kf, %i.aa
  br i1 %i.kg, label %.lr.ph669, label %.preheader556

.lr.ph669:                                        ; preds = %.preheader557
  %i.kh = load ptr, ptr %4, align 8, !tbaa !18
  %i.ki = load i32, ptr %i.s, align 4, !tbaa !249
  %i.kj = sext i32 %i.ki to i64
  %i.kk = load i64, ptr %i.t, align 8, !tbaa !49
  %factor.op.mul674 = mul i64 %i.kk, %i.kj
  %i.kl = load i32, ptr %8, align 4, !tbaa !254
  %i.km = mul nsw i32 %i.kl, %.0210701
  %i.kn = sext i32 %i.km to i64
  %invariant.gep676 = getelementptr [4 x i8], ptr %i.kh, i64 %i.kn
  %i.ko = load i32, ptr %9, align 4, !tbaa !254   ; 6 uses
  %i.kp = icmp sgt i32 %i.ko, 0
  br i1 %i.kp, label %.lr.ph669.split.us, label %.lr.ph669.split.preheader

.lr.ph669.split.preheader:                        ; preds = %.lr.ph669
  %i.kq = add i32 %.1202.lcssa, 2
  %i.kr = sub i32 %15, %.1202.lcssa
  %i.ks = and i32 %i.kr, -2
  %i.kt = add i32 %i.kq, %i.ks
  br label %.preheader556

.lr.ph669.split.us:                               ; preds = %.lr.ph669
  %i.ku = load i32, ptr %11, align 4, !tbaa !254
  %i.kv = sext i32 %i.ku to i64                   ; 3 uses
  %i.kw = load i32, ptr %10, align 4, !tbaa !254
  %i.kx = sext i32 %i.kw to i64                   ; 2 uses
  %i.ky = add nsw i32 %i.ko, -1
  %i.kz = zext nneg i32 %i.ky to i64
  %i.la = shl nuw nsw i64 %i.kz, 6
  %i.lb = zext i32 %.1202.lcssa to i64
  %xtraiter = and i32 %i.ko, 1
  %i.lc = icmp eq i32 %i.ko, 1
  %unroll_iter = and i32 %i.ko, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod877 = trunc i32 %i.ko to i1
  br label %.lr.ph661.us

.lr.ph661.us:                                     ; preds = %._crit_edge.us, %.lr.ph669.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.us ], [ %i.lb, %.lr.ph669.split.us ] ; 2 uses
  %.12667.us = phi ptr [ %scevgep761, %._crit_edge.us ], [ %.7.lcssa, %.lr.ph669.split.us ] ; 3 uses
  %.12528666.us = phi <8 x float> [ %.lcssa872, %._crit_edge.us ], [ %.7523.lcssa, %.lr.ph669.split.us ] ; 2 uses
  %.13543665.us = phi <8 x float> [ %.lcssa873, %._crit_edge.us ], [ %.8538.lcssa, %.lr.ph669.split.us ] ; 2 uses
  %.reass675.us = mul i64 %factor.op.mul674, %indvars.iv
  %gep677.us = getelementptr i8, ptr %invariant.gep676, i64 %.reass675.us ; 2 uses
  br i1 %i.lc, label %.epil.preheader, label %.lr.ph661.us.new

.lr.ph661.us.new:                                 ; preds = %.lr.ph661.us, %.lr.ph661.us.new
  %.0190659.us = phi ptr [ %i.md, %.lr.ph661.us.new ], [ %gep677.us, %.lr.ph661.us ] ; 3 uses
  %.13658.us = phi ptr [ %i.me, %.lr.ph661.us.new ], [ %.12667.us, %.lr.ph661.us ] ; 5 uses
  %.13529657.us = phi <8 x float> [ %i.mc, %.lr.ph661.us.new ], [ %.12528666.us, %.lr.ph661.us ]
  %.14544656.us = phi <8 x float> [ %i.lx, %.lr.ph661.us.new ], [ %.13543665.us, %.lr.ph661.us ]
  %niter = phi i32 [ %niter.next.1, %.lr.ph661.us.new ], [ 0, %.lr.ph661.us ]
  %i.ld = load <8 x float>, ptr %.13658.us, align 32, !tbaa !273
  %i.le = getelementptr inbounds nuw i8, ptr %.13658.us, i64 32
  %i.lf = load <8 x float>, ptr %i.le, align 32, !tbaa !273
  %i.lg = load float, ptr %.0190659.us, align 4, !tbaa !53
  %i.lh = insertelement <8 x float> poison, float %i.lg, i64 0
  %i.li = shufflevector <8 x float> %i.lh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.lj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ld, <8 x float> nofpclass(nan inf) %i.li, <8 x float> nofpclass(nan inf) %.14544656.us)
  %i.lk = getelementptr inbounds [4 x i8], ptr %.0190659.us, i64 %i.kv
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !53
  %i.lm = insertelement <8 x float> poison, float %i.ll, i64 0
  %i.ln = shufflevector <8 x float> %i.lm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.lo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lf, <8 x float> nofpclass(nan inf) %i.ln, <8 x float> nofpclass(nan inf) %.13529657.us)
  %i.lp = getelementptr inbounds [4 x i8], ptr %.0190659.us, i64 %i.kx ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.13658.us, i64 64
  %i.lr = load <8 x float>, ptr %i.lq, align 32, !tbaa !273
  %i.ls = getelementptr inbounds nuw i8, ptr %.13658.us, i64 96
  %i.lt = load <8 x float>, ptr %i.ls, align 32, !tbaa !273
  %i.lu = load float, ptr %i.lp, align 4, !tbaa !53
  %i.lv = insertelement <8 x float> poison, float %i.lu, i64 0
  %i.lw = shufflevector <8 x float> %i.lv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.lx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lr, <8 x float> nofpclass(nan inf) %i.lw, <8 x float> nofpclass(nan inf) %i.lj) ; 3 uses
  %i.ly = getelementptr inbounds [4 x i8], ptr %i.lp, i64 %i.kv
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !53
  %i.ma = insertelement <8 x float> poison, float %i.lz, i64 0
  %i.mb = shufflevector <8 x float> %i.ma, <8 x float> poison, <8 x i32> zeroinitializer
  %i.mc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lt, <8 x float> nofpclass(nan inf) %i.mb, <8 x float> nofpclass(nan inf) %i.lo) ; 3 uses
  %i.md = getelementptr inbounds [4 x i8], ptr %i.lp, i64 %i.kx ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.13658.us, i64 128 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.lr.ph661.us.new, !llvm.loop !446

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph661.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph661.us
  %.0190659.us.epil.init = phi ptr [ %gep677.us, %.lr.ph661.us ], [ %i.md, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.13658.us.epil.init = phi ptr [ %.12667.us, %.lr.ph661.us ], [ %i.me, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.13529657.us.epil.init = phi <8 x float> [ %.12528666.us, %.lr.ph661.us ], [ %i.mc, %._crit_edge.us.unr-lcssa ]
  %.14544656.us.epil.init = phi <8 x float> [ %.13543665.us, %.lr.ph661.us ], [ %i.lx, %._crit_edge.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod877)
  %i.mf = load <8 x float>, ptr %.13658.us.epil.init, align 32, !tbaa !273
  %i.mg = getelementptr inbounds nuw i8, ptr %.13658.us.epil.init, i64 32
  %i.mh = load <8 x float>, ptr %i.mg, align 32, !tbaa !273
  %i.mi = load float, ptr %.0190659.us.epil.init, align 4, !tbaa !53
  %i.mj = insertelement <8 x float> poison, float %i.mi, i64 0
  %i.mk = shufflevector <8 x float> %i.mj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ml = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mf, <8 x float> nofpclass(nan inf) %i.mk, <8 x float> nofpclass(nan inf) %.14544656.us.epil.init)
  %i.mm = getelementptr inbounds [4 x i8], ptr %.0190659.us.epil.init, i64 %i.kv
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !53
  %i.mo = insertelement <8 x float> poison, float %i.mn, i64 0
  %i.mp = shufflevector <8 x float> %i.mo, <8 x float> poison, <8 x i32> zeroinitializer
  %i.mq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mh, <8 x float> nofpclass(nan inf) %i.mp, <8 x float> nofpclass(nan inf) %.13529657.us.epil.init)
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.lcssa873 = phi <8 x float> [ %i.lx, %._crit_edge.us.unr-lcssa ], [ %i.ml, %.epil.preheader ] ; 2 uses
  %.lcssa872 = phi <8 x float> [ %i.mc, %._crit_edge.us.unr-lcssa ], [ %i.mq, %.epil.preheader ] ; 2 uses
  %scevgep760 = getelementptr i8, ptr %.12667.us, i64 64
  %scevgep761 = getelementptr i8, ptr %scevgep760, i64 %i.la ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.mr = trunc i64 %indvars.iv.next to i32
  %i.ms = or i32 %i.mr, 1
  %i.mt = icmp slt i32 %i.ms, %i.aa
  br i1 %i.mt, label %.lr.ph661.us, label %.preheader556.loopexit, !llvm.loop !447

bb.j:                                             ; preds = %.lr.ph645, %.loopexit
  %.1202644 = phi i32 [ %.0201.lcssa, %.lr.ph645 ], [ %i.px, %.loopexit ] ; 2 uses
  %.7643 = phi ptr [ %.0205.lcssa, %.lr.ph645 ], [ %.11, %.loopexit ] ; 7 uses
  %.7499642 = phi <8 x float> [ %.0492.lcssa, %.lr.ph645 ], [ %.11503, %.loopexit ] ; 5 uses
  %.7511641 = phi <8 x float> [ %.0504.lcssa, %.lr.ph645 ], [ %.11515, %.loopexit ] ; 5 uses
  %.7523640 = phi <8 x float> [ %.0516.lcssa, %.lr.ph645 ], [ %.11527, %.loopexit ] ; 5 uses
  %.8538639 = phi <8 x float> [ %.1531.lcssa, %.lr.ph645 ], [ %.12542, %.loopexit ] ; 5 uses
  %i.mu = sdiv i32 %.1202644, %i.y
  %i.mv = sext i32 %i.mu to i64
  %.reass653 = mul i64 %factor.op.mul652, %i.mv
  %gep655 = getelementptr i8, ptr %invariant.gep654, i64 %.reass653 ; 2 uses
  br i1 %i.at, label %.preheader549, label %.loopexit550

.preheader549:                                    ; preds = %bb.j
  %i.mw = load i32, ptr %9, align 4, !tbaa !254   ; 3 uses
  %i.mx = icmp sgt i32 %i.mw, 0
  br i1 %i.mx, label %.lr.ph619, label %.loopexit

.lr.ph619:                                        ; preds = %.preheader549
  %i.my = load i32, ptr %10, align 4, !tbaa !254
  %i.mz = shl nsw i32 %i.my, 2
  %i.na = sext i32 %i.mz to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph619, %bb.k
  %.0192618 = phi i32 [ 0, %.lr.ph619 ], [ %i.od, %bb.k ]
  %.0193617 = phi ptr [ %gep655, %.lr.ph619 ], [ %i.ob, %bb.k ] ; 5 uses
  %.8616 = phi ptr [ %.7643, %.lr.ph619 ], [ %i.oc, %bb.k ] ; 5 uses
  %.8500615 = phi <8 x float> [ %.7499642, %.lr.ph619 ], [ %i.oa, %bb.k ]
  %.8512614 = phi <8 x float> [ %.7511641, %.lr.ph619 ], [ %i.nv, %bb.k ]
  %.8524613 = phi <8 x float> [ %.7523640, %.lr.ph619 ], [ %i.nq, %bb.k ]
  %.9539612 = phi <8 x float> [ %.8538639, %.lr.ph619 ], [ %i.nl, %bb.k ]
  %i.nb = load <8 x float>, ptr %.8616, align 32, !tbaa !273
  %i.nc = getelementptr inbounds nuw i8, ptr %.8616, i64 32
  %i.nd = load <8 x float>, ptr %i.nc, align 32, !tbaa !273
  %i.ne = getelementptr inbounds nuw i8, ptr %.8616, i64 64
  %i.nf = load <8 x float>, ptr %i.ne, align 32, !tbaa !273
  %i.ng = getelementptr inbounds nuw i8, ptr %.8616, i64 96
  %i.nh = load <8 x float>, ptr %i.ng, align 32, !tbaa !273
  %i.ni = load float, ptr %.0193617, align 4, !tbaa !53
  %i.nj = insertelement <8 x float> poison, float %i.ni, i64 0
  %i.nk = shufflevector <8 x float> %i.nj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nb, <8 x float> nofpclass(nan inf) %i.nk, <8 x float> nofpclass(nan inf) %.9539612) ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.0193617, i64 4
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !53
  %i.no = insertelement <8 x float> poison, float %i.nn, i64 0
  %i.np = shufflevector <8 x float> %i.no, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nd, <8 x float> nofpclass(nan inf) %i.np, <8 x float> nofpclass(nan inf) %.8524613) ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.0193617, i64 8
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !53
  %i.nt = insertelement <8 x float> poison, float %i.ns, i64 0
  %i.nu = shufflevector <8 x float> %i.nt, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nf, <8 x float> nofpclass(nan inf) %i.nu, <8 x float> nofpclass(nan inf) %.8512614) ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.0193617, i64 12
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !53
  %i.ny = insertelement <8 x float> poison, float %i.nx, i64 0
  %i.nz = shufflevector <8 x float> %i.ny, <8 x float> poison, <8 x i32> zeroinitializer
  %i.oa = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nh, <8 x float> nofpclass(nan inf) %i.nz, <8 x float> nofpclass(nan inf) %.8500615) ; 2 uses
  %i.ob = getelementptr inbounds [4 x i8], ptr %.0193617, i64 %i.na
  %i.oc = getelementptr inbounds nuw i8, ptr %.8616, i64 128
  %i.od = add nuw nsw i32 %.0192618, 1            ; 2 uses
  %exitcond756.not = icmp eq i32 %i.od, %i.mw
  br i1 %exitcond756.not, label %.loopexit550.loopexit, label %bb.k, !llvm.loop !448

.loopexit550.loopexit:                            ; preds = %bb.k
  %scevgep754 = getelementptr i8, ptr %.7643, i64 128
  %i.oe = add nsw i32 %i.mw, -1
  %i.of = zext nneg i32 %i.oe to i64
  %i.og = shl nuw nsw i64 %i.of, 7
  %scevgep755 = getelementptr i8, ptr %scevgep754, i64 %i.og
  br label %.loopexit

.loopexit550:                                     ; preds = %bb.j
  br i1 %i.au, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.loopexit550
  %i.oh = load i32, ptr %9, align 4, !tbaa !254   ; 3 uses
  %i.oi = icmp sgt i32 %i.oh, 0
  br i1 %i.oi, label %.lr.ph633, label %.loopexit

.lr.ph633:                                        ; preds = %.preheader
  %i.oj = load i32, ptr %11, align 4, !tbaa !254  ; 3 uses
  %i.ok = sext i32 %i.oj to i64
  %i.ol = shl nsw i32 %i.oj, 1
  %i.om = sext i32 %i.ol to i64
  %i.on = mul nsw i32 %i.oj, 3
  %i.oo = sext i32 %i.on to i64
  %i.op = load i32, ptr %10, align 4, !tbaa !254
  %i.oq = sext i32 %i.op to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph633, %bb.l
  %.0191632 = phi i32 [ 0, %.lr.ph633 ], [ %i.pt, %bb.l ]
  %.2631 = phi ptr [ %gep655, %.lr.ph633 ], [ %i.pr, %bb.l ] ; 5 uses
  %.10630 = phi ptr [ %.7643, %.lr.ph633 ], [ %i.ps, %bb.l ] ; 5 uses
  %.10502629 = phi <8 x float> [ %.7499642, %.lr.ph633 ], [ %i.pq, %bb.l ]
  %.10514628 = phi <8 x float> [ %.7511641, %.lr.ph633 ], [ %i.pl, %bb.l ]
  %.10526627 = phi <8 x float> [ %.7523640, %.lr.ph633 ], [ %i.pg, %bb.l ]
  %.11541626 = phi <8 x float> [ %.8538639, %.lr.ph633 ], [ %i.pb, %bb.l ]
end_hunk_7
begin_hunk_8_@_ZN4ncnnL20convolution1d_packedERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.yf = mul nsw i32 %i.xz, 3
  %i.yg = sext i32 %i.yf to i64
  %i.yh = getelementptr inbounds [4 x i8], ptr %.0211700, i64 %i.yg
  store float %.sroa.0.12.vec.extract, ptr %i.yh, align 4, !tbaa !53
  %.sroa.0.16.vec.extract = extractelement <8 x float> %.0.i, i64 4
  %i.yi = shl nsw i32 %i.xz, 2
  %i.yj = sext i32 %i.yi to i64
  %i.yk = getelementptr inbounds [4 x i8], ptr %.0211700, i64 %i.yj
  store float %.sroa.0.16.vec.extract, ptr %i.yk, align 4, !tbaa !53
  %.sroa.0.20.vec.extract = extractelement <8 x float> %.0.i, i64 5
  %i.yl = mul nsw i32 %i.xz, 5
  %i.ym = sext i32 %i.yl to i64
  %i.yn = getelementptr inbounds [4 x i8], ptr %.0211700, i64 %i.ym
  store float %.sroa.0.20.vec.extract, ptr %i.yn, align 4, !tbaa !53
  %.sroa.0.24.vec.extract = extractelement <8 x float> %.0.i, i64 6
  %i.yo = mul nsw i32 %i.xz, 6
  %i.yp = sext i32 %i.yo to i64
  %i.yq = getelementptr inbounds [4 x i8], ptr %.0211700, i64 %i.yp
  store float %.sroa.0.24.vec.extract, ptr %i.yq, align 4, !tbaa !53
  %.sroa.0.28.vec.extract = extractelement <8 x float> %.0.i, i64 7
  %i.yr = mul nsw i32 %i.xz, 7
  %i.ys = sext i32 %i.yr to i64
  %i.yt = getelementptr inbounds [4 x i8], ptr %.0211700, i64 %i.ys
  store float %.sroa.0.28.vec.extract, ptr %i.yt, align 4, !tbaa !53
  %i.yu = getelementptr inbounds nuw i8, ptr %.0211700, i64 4
  br label %.thread547

.thread547:                                       ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit, %bb.p, %.thread, %bb.q
  %.3214 = phi ptr [ %i.yu, %bb.q ], [ %.0211700, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ], [ %i.xs, %.thread ], [ %i.xy, %bb.p ]
  %i.yv = add nuw nsw i32 %.0210701, 1            ; 2 uses
  %exitcond770.not = icmp eq i32 %i.yv, %i.x
  br i1 %exitcond770.not, label %._crit_edge, label %bb.c, !llvm.loop !454

._crit_edge707:                                   ; preds = %._crit_edge, %.lr.ph706, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge707, %bb.a
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
declare !callback !455 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.round.ps.256(<8 x float>, i32 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #12

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
  %.not781 = icmp sgt i32 %i.k, %i.j
  br i1 %.not781, label %._crit_edge785, label %.lr.ph784

.lr.ph784:                                        ; preds = %bb.b
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
  br i1 %i.v, label %.lr.ph784.split, label %._crit_edge785

.lr.ph784.splitthread-pre-split:                  ; preds = %._crit_edge
  %i.w = add i32 %.0215782, 1
  %.pr = load i32, ptr %i.n, align 4, !tbaa !249
  br label %.lr.ph784.split

.lr.ph784.split:                                  ; preds = %.lr.ph784, %.lr.ph784.splitthread-pre-split
  %i.x = phi i32 [ %.pr, %.lr.ph784.splitthread-pre-split ], [ %i.u, %.lr.ph784 ] ; 3 uses
  %.0215782 = phi i32 [ %i.w, %.lr.ph784.splitthread-pre-split ], [ %i.k, %.lr.ph784 ] ; 3 uses
  %i.y = load i32, ptr %i.l, align 8, !tbaa !251  ; 8 uses
  %i.z = load i32, ptr %i.m, align 8, !tbaa !264
  %i.aa = mul i32 %i.z, %i.y                      ; 10 uses
  %i.ab = load i32, ptr %i.o, align 8, !tbaa !251 ; 2 uses
  %i.ac = icmp sgt i32 %i.x, 0
  br i1 %i.ac, label %.lr.ph780, label %._crit_edge

.lr.ph780:                                        ; preds = %.lr.ph784.split
  %i.ad = load ptr, ptr %5, align 8, !tbaa !18
  %i.ae = load i32, ptr %3, align 4, !tbaa !254
  %i.af = shl nsw i32 %.0215782, 3
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
  %15 = add i32 %i.aa, -2
  br label %bb.c

._crit_edge:                                      ; preds = %.thread625, %.lr.ph784.split
  %exitcond849.not = icmp eq i32 %.0215782, %i.j
  br i1 %exitcond849.not, label %._crit_edge785, label %.lr.ph784.splitthread-pre-split, !llvm.loop !457

bb.c:                                             ; preds = %.lr.ph780, %.thread625
  %.0210779 = phi i32 [ 0, %.lr.ph780 ], [ %i.agl, %.thread625 ] ; 5 uses
  %.0211778 = phi ptr [ %i.an, %.lr.ph780 ], [ %.3214, %.thread625 ] ; 15 uses
  %i.aw = load ptr, ptr %6, align 8, !tbaa !265   ; 2 uses
  %.not217 = icmp eq ptr %i.aw, null
  br i1 %.not217, label %_ZN4ncnn3MatD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ao
  %i.ay = load <8 x float>, ptr %i.ax, align 1, !tbaa !273
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.d, %bb.c
  %.0608 = phi nsz <8 x float> [ zeroinitializer, %bb.c ], [ %i.ay, %bb.d ] ; 2 uses
  %i.az = load ptr, ptr %7, align 8, !tbaa !18, !noalias !458
  %i.ba = load i64, ptr %i.q, align 8, !tbaa !20, !noalias !458
  %i.bb = mul i64 %i.ba, %i.aq
  %i.bc = load i64, ptr %i.r, align 8, !tbaa !49, !noalias !458
  %i.bd = mul i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bd ; 2 uses
  br i1 %i.ar, label %.lr.ph683, label %.preheader636

.lr.ph683:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit
  %i.bf = load ptr, ptr %4, align 8, !tbaa !18
  %i.bg = load i32, ptr %i.s, align 4, !tbaa !249
  %i.bh = sext i32 %i.bg to i64
  %i.bi = load i64, ptr %i.t, align 8, !tbaa !49
  %factor.op.mul = mul i64 %i.bi, %i.bh
  %i.bj = load i32, ptr %8, align 4, !tbaa !254
  %i.bk = mul i32 %.0210779, %i.y
  %i.bl = mul i32 %i.bk, %i.bj
  %i.bm = sext i32 %i.bl to i64
  %invariant.gep = getelementptr [2 x i8], ptr %i.bf, i64 %i.bm
  br label %bb.e

.preheader636:                                    ; preds = %.loopexit630, %_ZN4ncnn3MatD2Ev.exit
  %.1609.lcssa = phi <8 x float> [ %.0608, %_ZN4ncnn3MatD2Ev.exit ], [ %.7615, %.loopexit630 ] ; 2 uses
  %.0594.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit ], [ %.6600, %.loopexit630 ] ; 2 uses
  %.0582.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit ], [ %.6588, %.loopexit630 ] ; 2 uses
  %.0570.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit ], [ %.6576, %.loopexit630 ] ; 2 uses
  %.0205.lcssa = phi ptr [ %i.be, %_ZN4ncnn3MatD2Ev.exit ], [ %.6, %.loopexit630 ] ; 2 uses
  %.0201.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit ], [ %i.av, %.loopexit630 ] ; 3 uses
  %i.bn = or disjoint i32 %.0201.lcssa, 3
  %i.bo = icmp slt i32 %i.bn, %i.aa
  br i1 %i.bo, label %.lr.ph723, label %.preheader635

.lr.ph723:                                        ; preds = %.preheader636
  %i.bp = load ptr, ptr %4, align 8, !tbaa !18
  %i.bq = load i32, ptr %i.s, align 4, !tbaa !249
  %i.br = sext i32 %i.bq to i64
  %i.bs = load i64, ptr %i.t, align 8, !tbaa !49
  %factor.op.mul730 = mul i64 %i.bs, %i.br
  %i.bt = load i32, ptr %8, align 4, !tbaa !254
  %i.bu = mul i32 %.0210779, %i.y
  %i.bv = mul i32 %i.bu, %i.bt
  %i.bw = sext i32 %i.bv to i64
  %invariant.gep732 = getelementptr [2 x i8], ptr %i.bp, i64 %i.bw
  br label %bb.k

bb.e:                                             ; preds = %.lr.ph683, %.loopexit630
  %.0201682 = phi i32 [ 0, %.lr.ph683 ], [ %i.qo, %.loopexit630 ] ; 2 uses
  %.0205681 = phi ptr [ %i.be, %.lr.ph683 ], [ %.6, %.loopexit630 ] ; 10 uses
  %.0570680 = phi <8 x float> [ zeroinitializer, %.lr.ph683 ], [ %.6576, %.loopexit630 ] ; 7 uses
  %.0582679 = phi <8 x float> [ zeroinitializer, %.lr.ph683 ], [ %.6588, %.loopexit630 ] ; 7 uses
  %.0594678 = phi <8 x float> [ zeroinitializer, %.lr.ph683 ], [ %.6600, %.loopexit630 ] ; 7 uses
  %.1609677 = phi <8 x float> [ %.0608, %.lr.ph683 ], [ %.7615, %.loopexit630 ] ; 7 uses
  %i.bx = sdiv i32 %.0201682, %i.y
  %i.by = sext i32 %i.bx to i64
  %.reass = mul i64 %factor.op.mul, %i.by
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.reass ; 4 uses
  br i1 %i.as, label %.preheader632, label %.loopexit633

.preheader632:                                    ; preds = %bb.e
  %i.bz = load i32, ptr %9, align 4, !tbaa !254   ; 3 uses
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %.lr.ph, label %.loopexit630

.lr.ph:                                           ; preds = %.preheader632
  %i.cb = load i32, ptr %10, align 4, !tbaa !254
  %i.cc = shl nsw i32 %i.cb, 3
  %i.cd = sext i32 %i.cc to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.0197643 = phi i32 [ 0, %.lr.ph ], [ %i.gm, %bb.f ]
  %.0198642 = phi ptr [ %gep, %.lr.ph ], [ %i.gk, %bb.f ] ; 9 uses
  %.1206641 = phi ptr [ %.0205681, %.lr.ph ], [ %i.gl, %bb.f ] ; 9 uses
  %.1571640 = phi <8 x float> [ %.0570680, %.lr.ph ], [ %i.gj, %bb.f ]
  %.1583639 = phi <8 x float> [ %.0582679, %.lr.ph ], [ %i.gb, %bb.f ]
  %.1595638 = phi <8 x float> [ %.0594678, %.lr.ph ], [ %i.ft, %bb.f ]
  %.2610637 = phi <8 x float> [ %.1609677, %.lr.ph ], [ %i.fl, %bb.f ]
  %i.ce = load <8 x i16>, ptr %.1206641, align 16, !tbaa !273 ; 2 uses
  %i.cf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ce, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cg = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ce, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ch = shufflevector <8 x i16> %i.cf, <8 x i16> %i.cg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ci = bitcast <16 x i16> %i.ch to <8 x float>
  %i.cj = getelementptr inbounds nuw i8, ptr %.1206641, i64 16
  %i.ck = load <8 x i16>, ptr %i.cj, align 16, !tbaa !273 ; 2 uses
  %i.cl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ck, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cm = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ck, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cn = shufflevector <8 x i16> %i.cl, <8 x i16> %i.cm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.co = bitcast <16 x i16> %i.cn to <8 x float>
  %i.cp = getelementptr inbounds nuw i8, ptr %.1206641, i64 32
  %i.cq = load <8 x i16>, ptr %i.cp, align 16, !tbaa !273 ; 2 uses
  %i.cr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cs = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.cq, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ct = shufflevector <8 x i16> %i.cr, <8 x i16> %i.cs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cu = bitcast <16 x i16> %i.ct to <8 x float>
  %i.cv = getelementptr inbounds nuw i8, ptr %.1206641, i64 48
  %i.cw = load <8 x i16>, ptr %i.cv, align 16, !tbaa !273 ; 2 uses
  %i.cx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cy = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.cw, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cz = shufflevector <8 x i16> %i.cx, <8 x i16> %i.cy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.da = bitcast <16 x i16> %i.cz to <8 x float>
  %i.db = getelementptr inbounds nuw i8, ptr %.1206641, i64 64
  %i.dc = load <8 x i16>, ptr %i.db, align 16, !tbaa !273 ; 2 uses
  %i.dd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.de = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.dc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.df = shufflevector <8 x i16> %i.dd, <8 x i16> %i.de, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dg = bitcast <16 x i16> %i.df to <8 x float>
  %i.dh = getelementptr inbounds nuw i8, ptr %.1206641, i64 80
  %i.di = load <8 x i16>, ptr %i.dh, align 16, !tbaa !273 ; 2 uses
  %i.dj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.di, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dk = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.di, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.dl = shufflevector <8 x i16> %i.dj, <8 x i16> %i.dk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dm = bitcast <16 x i16> %i.dl to <8 x float>
  %i.dn = getelementptr inbounds nuw i8, ptr %.1206641, i64 96
  %i.do = load <8 x i16>, ptr %i.dn, align 16, !tbaa !273 ; 2 uses
  %i.dp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.do, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dq = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.do, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.dr = shufflevector <8 x i16> %i.dp, <8 x i16> %i.dq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ds = bitcast <16 x i16> %i.dr to <8 x float>
  %i.dt = getelementptr inbounds nuw i8, ptr %.1206641, i64 112
  %i.du = load <8 x i16>, ptr %i.dt, align 16, !tbaa !273 ; 2 uses
  %i.dv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.du, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dw = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.du, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.dx = shufflevector <8 x i16> %i.dv, <8 x i16> %i.dw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dy = bitcast <16 x i16> %i.dx to <8 x float>
  %i.dz = load i16, ptr %.0198642, align 2, !tbaa !334
  %i.ea = zext i16 %i.dz to i32
  %i.eb = shl nuw i32 %i.ea, 16
  %i.ec = insertelement <8 x i32> poison, i32 %i.eb, i64 0
  %i.ed = bitcast <8 x i32> %i.ec to <8 x float>
  %i.ee = shufflevector <8 x float> %i.ed, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ef = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ci, <8 x float> nofpclass(nan inf) %i.ee, <8 x float> nofpclass(nan inf) %.2610637)
  %i.eg = getelementptr inbounds nuw i8, ptr %.0198642, i64 2
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !334
  %i.ei = zext i16 %i.eh to i32
  %i.ej = shl nuw i32 %i.ei, 16
  %i.ek = insertelement <8 x i32> poison, i32 %i.ej, i64 0
  %i.el = bitcast <8 x i32> %i.ek to <8 x float>
  %i.em = shufflevector <8 x float> %i.el, <8 x float> poison, <8 x i32> zeroinitializer
  %i.en = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.co, <8 x float> nofpclass(nan inf) %i.em, <8 x float> nofpclass(nan inf) %.1595638)
  %i.eo = getelementptr inbounds nuw i8, ptr %.0198642, i64 4
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !334
  %i.eq = zext i16 %i.ep to i32
  %i.er = shl nuw i32 %i.eq, 16
  %i.es = insertelement <8 x i32> poison, i32 %i.er, i64 0
  %i.et = bitcast <8 x i32> %i.es to <8 x float>
  %i.eu = shufflevector <8 x float> %i.et, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ev = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cu, <8 x float> nofpclass(nan inf) %i.eu, <8 x float> nofpclass(nan inf) %.1583639)
  %i.ew = getelementptr inbounds nuw i8, ptr %.0198642, i64 6
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !334
  %i.ey = zext i16 %i.ex to i32
  %i.ez = shl nuw i32 %i.ey, 16
  %i.fa = insertelement <8 x i32> poison, i32 %i.ez, i64 0
  %i.fb = bitcast <8 x i32> %i.fa to <8 x float>
  %i.fc = shufflevector <8 x float> %i.fb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.da, <8 x float> nofpclass(nan inf) %i.fc, <8 x float> nofpclass(nan inf) %.1571640)
  %i.fe = getelementptr inbounds nuw i8, ptr %.0198642, i64 8
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !334
  %i.fg = zext i16 %i.ff to i32
  %i.fh = shl nuw i32 %i.fg, 16
  %i.fi = insertelement <8 x i32> poison, i32 %i.fh, i64 0
  %i.fj = bitcast <8 x i32> %i.fi to <8 x float>
  %i.fk = shufflevector <8 x float> %i.fj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dg, <8 x float> nofpclass(nan inf) %i.fk, <8 x float> nofpclass(nan inf) %i.ef) ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.0198642, i64 10
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !334
  %i.fo = zext i16 %i.fn to i32
  %i.fp = shl nuw i32 %i.fo, 16
  %i.fq = insertelement <8 x i32> poison, i32 %i.fp, i64 0
  %i.fr = bitcast <8 x i32> %i.fq to <8 x float>
  %i.fs = shufflevector <8 x float> %i.fr, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ft = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dm, <8 x float> nofpclass(nan inf) %i.fs, <8 x float> nofpclass(nan inf) %i.en) ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.0198642, i64 12
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !334
  %i.fw = zext i16 %i.fv to i32
  %i.fx = shl nuw i32 %i.fw, 16
  %i.fy = insertelement <8 x i32> poison, i32 %i.fx, i64 0
  %i.fz = bitcast <8 x i32> %i.fy to <8 x float>
  %i.ga = shufflevector <8 x float> %i.fz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ds, <8 x float> nofpclass(nan inf) %i.ga, <8 x float> nofpclass(nan inf) %i.ev) ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.0198642, i64 14
end_hunk_8
begin_hunk_9_@_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.ku = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.im, <8 x float> nofpclass(nan inf) %i.kt, <8 x float> nofpclass(nan inf) %i.jp) ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.0196655, i64 6
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !334
  %i.kx = zext i16 %i.kw to i32
  %i.ky = shl nuw i32 %i.kx, 16
  %i.kz = insertelement <8 x i32> poison, i32 %i.ky, i64 0
  %i.la = bitcast <8 x i32> %i.kz to <8 x float>
  %i.lb = shufflevector <8 x float> %i.la, <8 x float> poison, <8 x i32> zeroinitializer
  %i.lc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.is, <8 x float> nofpclass(nan inf) %i.lb, <8 x float> nofpclass(nan inf) %i.jx) ; 2 uses
  %i.ld = getelementptr inbounds [2 x i8], ptr %.2200654, i64 %i.gx
  %i.le = getelementptr inbounds [2 x i8], ptr %.0196655, i64 %i.gx
  %i.lf = getelementptr inbounds nuw i8, ptr %.3208653, i64 128
  %i.lg = add nuw nsw i32 %.0195656, 1            ; 2 uses
  %exitcond828.not = icmp eq i32 %i.lg, %i.gq
  br i1 %exitcond828.not, label %.loopexit631.loopexit, label %bb.h, !llvm.loop !462

.loopexit631.loopexit:                            ; preds = %bb.h
  %scevgep826 = getelementptr i8, ptr %.0205681, i64 128
  %i.lh = add nsw i32 %i.gq, -1
  %i.li = zext nneg i32 %i.lh to i64
  %i.lj = shl nuw nsw i64 %i.li, 7
  %scevgep827 = getelementptr i8, ptr %scevgep826, i64 %i.lj
  br label %.loopexit630

.loopexit631:                                     ; preds = %.loopexit633
  br i1 %i.au, label %.preheader629, label %.loopexit630

.preheader629:                                    ; preds = %.loopexit631
  %i.lk = load i32, ptr %9, align 4, !tbaa !254   ; 3 uses
  %i.ll = icmp sgt i32 %i.lk, 0
  br i1 %i.ll, label %.lr.ph671, label %.loopexit630

.lr.ph671:                                        ; preds = %.preheader629
  %i.lm = load i32, ptr %11, align 4, !tbaa !254  ; 7 uses
  %i.ln = sext i32 %i.lm to i64
  %i.lo = shl nsw i32 %i.lm, 1
  %i.lp = sext i32 %i.lo to i64
  %i.lq = mul nsw i32 %i.lm, 3
  %i.lr = sext i32 %i.lq to i64
  %i.ls = shl nsw i32 %i.lm, 2
  %i.lt = sext i32 %i.ls to i64
  %i.lu = mul nsw i32 %i.lm, 5
  %i.lv = sext i32 %i.lu to i64
  %i.lw = mul nsw i32 %i.lm, 6
  %i.lx = sext i32 %i.lw to i64
  %i.ly = mul nsw i32 %i.lm, 7
  %i.lz = sext i32 %i.ly to i64
  %i.ma = load i32, ptr %10, align 4, !tbaa !254
  %i.mb = sext i32 %i.ma to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph671, %bb.i
  %.0194670 = phi i32 [ 0, %.lr.ph671 ], [ %i.qk, %bb.i ]
  %.4669 = phi ptr [ %gep, %.lr.ph671 ], [ %i.qi, %bb.i ] ; 9 uses
  %.5668 = phi ptr [ %.0205681, %.lr.ph671 ], [ %i.qj, %bb.i ] ; 9 uses
  %.5575667 = phi <8 x float> [ %.0570680, %.lr.ph671 ], [ %i.qh, %bb.i ]
  %.5587666 = phi <8 x float> [ %.0582679, %.lr.ph671 ], [ %i.pz, %bb.i ]
  %.5599665 = phi <8 x float> [ %.0594678, %.lr.ph671 ], [ %i.pr, %bb.i ]
  %.6614664 = phi <8 x float> [ %.1609677, %.lr.ph671 ], [ %i.pj, %bb.i ]
  %i.mc = load <8 x i16>, ptr %.5668, align 16, !tbaa !273 ; 2 uses
  %i.md = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.me = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.mc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.mf = shufflevector <8 x i16> %i.md, <8 x i16> %i.me, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mg = bitcast <16 x i16> %i.mf to <8 x float>
  %i.mh = getelementptr inbounds nuw i8, ptr %.5668, i64 16
  %i.mi = load <8 x i16>, ptr %i.mh, align 16, !tbaa !273 ; 2 uses
  %i.mj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mk = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.mi, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ml = shufflevector <8 x i16> %i.mj, <8 x i16> %i.mk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mm = bitcast <16 x i16> %i.ml to <8 x float>
  %i.mn = getelementptr inbounds nuw i8, ptr %.5668, i64 32
  %i.mo = load <8 x i16>, ptr %i.mn, align 16, !tbaa !273 ; 2 uses
  %i.mp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mq = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.mo, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.mr = shufflevector <8 x i16> %i.mp, <8 x i16> %i.mq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ms = bitcast <16 x i16> %i.mr to <8 x float>
  %i.mt = getelementptr inbounds nuw i8, ptr %.5668, i64 48
  %i.mu = load <8 x i16>, ptr %i.mt, align 16, !tbaa !273 ; 2 uses
  %i.mv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mw = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.mu, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.mx = shufflevector <8 x i16> %i.mv, <8 x i16> %i.mw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.my = bitcast <16 x i16> %i.mx to <8 x float>
  %i.mz = getelementptr inbounds nuw i8, ptr %.5668, i64 64
  %i.na = load <8 x i16>, ptr %i.mz, align 16, !tbaa !273 ; 2 uses
  %i.nb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.na, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nc = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.na, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.nd = shufflevector <8 x i16> %i.nb, <8 x i16> %i.nc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ne = bitcast <16 x i16> %i.nd to <8 x float>
  %i.nf = getelementptr inbounds nuw i8, ptr %.5668, i64 80
  %i.ng = load <8 x i16>, ptr %i.nf, align 16, !tbaa !273 ; 2 uses
  %i.nh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ng, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ni = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ng, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.nj = shufflevector <8 x i16> %i.nh, <8 x i16> %i.ni, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nk = bitcast <16 x i16> %i.nj to <8 x float>
  %i.nl = getelementptr inbounds nuw i8, ptr %.5668, i64 96
  %i.nm = load <8 x i16>, ptr %i.nl, align 16, !tbaa !273 ; 2 uses
  %i.nn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.no = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.nm, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.np = shufflevector <8 x i16> %i.nn, <8 x i16> %i.no, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nq = bitcast <16 x i16> %i.np to <8 x float>
  %i.nr = getelementptr inbounds nuw i8, ptr %.5668, i64 112
  %i.ns = load <8 x i16>, ptr %i.nr, align 16, !tbaa !273 ; 2 uses
  %i.nt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ns, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nu = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ns, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.nv = shufflevector <8 x i16> %i.nt, <8 x i16> %i.nu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nw = bitcast <16 x i16> %i.nv to <8 x float>
  %i.nx = load i16, ptr %.4669, align 2, !tbaa !334
  %i.ny = zext i16 %i.nx to i32
  %i.nz = shl nuw i32 %i.ny, 16
  %i.oa = insertelement <8 x i32> poison, i32 %i.nz, i64 0
  %i.ob = bitcast <8 x i32> %i.oa to <8 x float>
  %i.oc = shufflevector <8 x float> %i.ob, <8 x float> poison, <8 x i32> zeroinitializer
  %i.od = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mg, <8 x float> nofpclass(nan inf) %i.oc, <8 x float> nofpclass(nan inf) %.6614664)
  %i.oe = getelementptr inbounds [2 x i8], ptr %.4669, i64 %i.ln
  %i.of = load i16, ptr %i.oe, align 2, !tbaa !334
  %i.og = zext i16 %i.of to i32
  %i.oh = shl nuw i32 %i.og, 16
  %i.oi = insertelement <8 x i32> poison, i32 %i.oh, i64 0
  %i.oj = bitcast <8 x i32> %i.oi to <8 x float>
  %i.ok = shufflevector <8 x float> %i.oj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ol = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mm, <8 x float> nofpclass(nan inf) %i.ok, <8 x float> nofpclass(nan inf) %.5599665)
  %i.om = getelementptr inbounds [2 x i8], ptr %.4669, i64 %i.lp
  %i.on = load i16, ptr %i.om, align 2, !tbaa !334
  %i.oo = zext i16 %i.on to i32
  %i.op = shl nuw i32 %i.oo, 16
  %i.oq = insertelement <8 x i32> poison, i32 %i.op, i64 0
  %i.or = bitcast <8 x i32> %i.oq to <8 x float>
  %i.os = shufflevector <8 x float> %i.or, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ot = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ms, <8 x float> nofpclass(nan inf) %i.os, <8 x float> nofpclass(nan inf) %.5587666)
  %i.ou = getelementptr inbounds [2 x i8], ptr %.4669, i64 %i.lr
  %i.ov = load i16, ptr %i.ou, align 2, !tbaa !334
  %i.ow = zext i16 %i.ov to i32
  %i.ox = shl nuw i32 %i.ow, 16
  %i.oy = insertelement <8 x i32> poison, i32 %i.ox, i64 0
  %i.oz = bitcast <8 x i32> %i.oy to <8 x float>
  %i.pa = shufflevector <8 x float> %i.oz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.pb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.my, <8 x float> nofpclass(nan inf) %i.pa, <8 x float> nofpclass(nan inf) %.5575667)
  %i.pc = getelementptr inbounds [2 x i8], ptr %.4669, i64 %i.lt
  %i.pd = load i16, ptr %i.pc, align 2, !tbaa !334
  %i.pe = zext i16 %i.pd to i32
  %i.pf = shl nuw i32 %i.pe, 16
  %i.pg = insertelement <8 x i32> poison, i32 %i.pf, i64 0
  %i.ph = bitcast <8 x i32> %i.pg to <8 x float>
  %i.pi = shufflevector <8 x float> %i.ph, <8 x float> poison, <8 x i32> zeroinitializer
  %i.pj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ne, <8 x float> nofpclass(nan inf) %i.pi, <8 x float> nofpclass(nan inf) %i.od) ; 2 uses
  %i.pk = getelementptr inbounds [2 x i8], ptr %.4669, i64 %i.lv
  %i.pl = load i16, ptr %i.pk, align 2, !tbaa !334
  %i.pm = zext i16 %i.pl to i32
  %i.pn = shl nuw i32 %i.pm, 16
  %i.po = insertelement <8 x i32> poison, i32 %i.pn, i64 0
  %i.pp = bitcast <8 x i32> %i.po to <8 x float>
  %i.pq = shufflevector <8 x float> %i.pp, <8 x float> poison, <8 x i32> zeroinitializer
  %i.pr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nk, <8 x float> nofpclass(nan inf) %i.pq, <8 x float> nofpclass(nan inf) %i.ol) ; 2 uses
  %i.ps = getelementptr inbounds [2 x i8], ptr %.4669, i64 %i.lx
  %i.pt = load i16, ptr %i.ps, align 2, !tbaa !334
  %i.pu = zext i16 %i.pt to i32
  %i.pv = shl nuw i32 %i.pu, 16
  %i.pw = insertelement <8 x i32> poison, i32 %i.pv, i64 0
  %i.px = bitcast <8 x i32> %i.pw to <8 x float>
  %i.py = shufflevector <8 x float> %i.px, <8 x float> poison, <8 x i32> zeroinitializer
  %i.pz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nq, <8 x float> nofpclass(nan inf) %i.py, <8 x float> nofpclass(nan inf) %i.ot) ; 2 uses
  %i.qa = getelementptr inbounds [2 x i8], ptr %.4669, i64 %i.lz
  %i.qb = load i16, ptr %i.qa, align 2, !tbaa !334
  %i.qc = zext i16 %i.qb to i32
  %i.qd = shl nuw i32 %i.qc, 16
  %i.qe = insertelement <8 x i32> poison, i32 %i.qd, i64 0
  %i.qf = bitcast <8 x i32> %i.qe to <8 x float>
  %i.qg = shufflevector <8 x float> %i.qf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nw, <8 x float> nofpclass(nan inf) %i.qg, <8 x float> nofpclass(nan inf) %i.pb) ; 2 uses
  %i.qi = getelementptr inbounds [2 x i8], ptr %.4669, i64 %i.mb
  %i.qj = getelementptr inbounds nuw i8, ptr %.5668, i64 128
  %i.qk = add nuw nsw i32 %.0194670, 1            ; 2 uses
  %exitcond831.not = icmp eq i32 %i.qk, %i.lk
  br i1 %exitcond831.not, label %.loopexit630.loopexit, label %bb.i, !llvm.loop !463

.loopexit630.loopexit:                            ; preds = %bb.i
  %scevgep829 = getelementptr i8, ptr %.0205681, i64 128
  %i.ql = add nsw i32 %i.lk, -1
  %i.qm = zext nneg i32 %i.ql to i64
  %i.qn = shl nuw nsw i64 %i.qm, 7
  %scevgep830 = getelementptr i8, ptr %scevgep829, i64 %i.qn
  br label %.loopexit630

.loopexit630:                                     ; preds = %.preheader632, %.loopexit633.loopexit, %bb.g, %.loopexit631.loopexit, %.loopexit630.loopexit, %.preheader629, %.loopexit631
  %.7615 = phi nsz <8 x float> [ %.1609677, %.loopexit631 ], [ %.1609677, %.preheader629 ], [ %i.pj, %.loopexit630.loopexit ], [ %.1609677, %bb.g ], [ %i.ke, %.loopexit631.loopexit ], [ %i.fl, %.loopexit633.loopexit ], [ %.1609677, %.preheader632 ] ; 2 uses
  %.6600 = phi nsz <8 x float> [ %.0594678, %.loopexit631 ], [ %.0594678, %.preheader629 ], [ %i.pr, %.loopexit630.loopexit ], [ %.0594678, %bb.g ], [ %i.km, %.loopexit631.loopexit ], [ %i.ft, %.loopexit633.loopexit ], [ %.0594678, %.preheader632 ] ; 2 uses
  %.6588 = phi nsz <8 x float> [ %.0582679, %.loopexit631 ], [ %.0582679, %.preheader629 ], [ %i.pz, %.loopexit630.loopexit ], [ %.0582679, %bb.g ], [ %i.ku, %.loopexit631.loopexit ], [ %i.gb, %.loopexit633.loopexit ], [ %.0582679, %.preheader632 ] ; 2 uses
  %.6576 = phi nsz <8 x float> [ %.0570680, %.loopexit631 ], [ %.0570680, %.preheader629 ], [ %i.qh, %.loopexit630.loopexit ], [ %.0570680, %bb.g ], [ %i.lc, %.loopexit631.loopexit ], [ %i.gj, %.loopexit633.loopexit ], [ %.0570680, %.preheader632 ] ; 2 uses
  %.6 = phi ptr [ %.0205681, %.loopexit631 ], [ %.0205681, %.preheader629 ], [ %scevgep830, %.loopexit630.loopexit ], [ %.0205681, %bb.g ], [ %scevgep827, %.loopexit631.loopexit ], [ %scevgep825, %.loopexit633.loopexit ], [ %.0205681, %.preheader632 ] ; 2 uses
  %i.qo = add nuw nsw i32 %.0201682, 8            ; 2 uses
  %i.qp = or disjoint i32 %i.qo, 7
  %i.qq = icmp slt i32 %i.qp, %i.aa
  br i1 %i.qq, label %bb.e, label %.preheader636, !llvm.loop !464

.preheader635:                                    ; preds = %.loopexit, %.preheader636
  %.8616.lcssa = phi <8 x float> [ %.1609.lcssa, %.preheader636 ], [ %.12620, %.loopexit ] ; 3 uses
  %.7601.lcssa = phi <8 x float> [ %.0594.lcssa, %.preheader636 ], [ %.11605, %.loopexit ] ; 3 uses
  %.7589.lcssa = phi <8 x float> [ %.0582.lcssa, %.preheader636 ], [ %.11593, %.loopexit ]
  %.7577.lcssa = phi <8 x float> [ %.0570.lcssa, %.preheader636 ], [ %.11581, %.loopexit ]
  %.7.lcssa = phi ptr [ %.0205.lcssa, %.preheader636 ], [ %.11, %.loopexit ] ; 3 uses
  %.1202.lcssa = phi i32 [ %.0201.lcssa, %.preheader636 ], [ %i.xl, %.loopexit ] ; 5 uses
  %i.qr = or disjoint i32 %.1202.lcssa, 1
  %i.qs = icmp slt i32 %i.qr, %i.aa
  br i1 %i.qs, label %.lr.ph747, label %.preheader634

.lr.ph747:                                        ; preds = %.preheader635
  %i.qt = load ptr, ptr %4, align 8, !tbaa !18
  %i.qu = load i32, ptr %i.s, align 4, !tbaa !249
  %i.qv = sext i32 %i.qu to i64
  %i.qw = load i64, ptr %i.t, align 8, !tbaa !49
  %factor.op.mul752 = mul i64 %i.qw, %i.qv
  %i.qx = load i32, ptr %8, align 4, !tbaa !254
  %i.qy = mul nsw i32 %i.qx, %.0210779
  %i.qz = sext i32 %i.qy to i64
  %invariant.gep754 = getelementptr [2 x i8], ptr %i.qt, i64 %i.qz
  %i.ra = load i32, ptr %9, align 4, !tbaa !254   ; 3 uses
  %i.rb = icmp sgt i32 %i.ra, 0
  br i1 %i.rb, label %.lr.ph747.split.us, label %.lr.ph747.split.preheader

.lr.ph747.split.preheader:                        ; preds = %.lr.ph747
  %i.rc = add i32 %.1202.lcssa, 2
  %i.rd = sub i32 %15, %.1202.lcssa
  %i.re = and i32 %i.rd, -2
  %i.rf = add i32 %i.rc, %i.re
  br label %.preheader634

.lr.ph747.split.us:                               ; preds = %.lr.ph747
  %i.rg = load i32, ptr %11, align 4, !tbaa !254
  %i.rh = sext i32 %i.rg to i64
  %i.ri = load i32, ptr %10, align 4, !tbaa !254
  %i.rj = sext i32 %i.ri to i64
  %i.rk = add nsw i32 %i.ra, -1
  %i.rl = zext nneg i32 %i.rk to i64
  %i.rm = shl nuw nsw i64 %i.rl, 5
  %i.rn = zext i32 %.1202.lcssa to i64
  br label %.lr.ph739.us

.lr.ph739.us:                                     ; preds = %._crit_edge.us, %.lr.ph747.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.us ], [ %i.rn, %.lr.ph747.split.us ] ; 2 uses
  %.12745.us = phi ptr [ %scevgep839, %._crit_edge.us ], [ %.7.lcssa, %.lr.ph747.split.us ] ; 2 uses
  %.12606744.us = phi <8 x float> [ %i.sn, %._crit_edge.us ], [ %.7601.lcssa, %.lr.ph747.split.us ]
  %.13621743.us = phi <8 x float> [ %i.sf, %._crit_edge.us ], [ %.8616.lcssa, %.lr.ph747.split.us ]
  %.reass753.us = mul i64 %factor.op.mul752, %indvars.iv
  %gep755.us = getelementptr i8, ptr %invariant.gep754, i64 %.reass753.us
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph739.us, %bb.j
  %.0189738.us = phi i32 [ 0, %.lr.ph739.us ], [ %i.sq, %bb.j ]
  %.0190737.us = phi ptr [ %gep755.us, %.lr.ph739.us ], [ %i.so, %bb.j ] ; 3 uses
  %.13736.us = phi ptr [ %.12745.us, %.lr.ph739.us ], [ %i.sp, %bb.j ] ; 3 uses
  %.13607735.us = phi <8 x float> [ %.12606744.us, %.lr.ph739.us ], [ %i.sn, %bb.j ]
  %.14622734.us = phi <8 x float> [ %.13621743.us, %.lr.ph739.us ], [ %i.sf, %bb.j ]
  %i.ro = load <8 x i16>, ptr %.13736.us, align 16, !tbaa !273 ; 2 uses
  %i.rp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ro, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rq = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ro, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.rr = shufflevector <8 x i16> %i.rp, <8 x i16> %i.rq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rs = bitcast <16 x i16> %i.rr to <8 x float>
  %i.rt = getelementptr inbounds nuw i8, ptr %.13736.us, i64 16
  %i.ru = load <8 x i16>, ptr %i.rt, align 16, !tbaa !273 ; 2 uses
  %i.rv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ru, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rw = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ru, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.rx = shufflevector <8 x i16> %i.rv, <8 x i16> %i.rw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ry = bitcast <16 x i16> %i.rx to <8 x float>
  %i.rz = load i16, ptr %.0190737.us, align 2, !tbaa !334
  %i.sa = zext i16 %i.rz to i32
  %i.sb = shl nuw i32 %i.sa, 16
  %i.sc = insertelement <8 x i32> poison, i32 %i.sb, i64 0
  %i.sd = bitcast <8 x i32> %i.sc to <8 x float>
  %i.se = shufflevector <8 x float> %i.sd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.sf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rs, <8 x float> nofpclass(nan inf) %i.se, <8 x float> nofpclass(nan inf) %.14622734.us) ; 3 uses
  %i.sg = getelementptr inbounds [2 x i8], ptr %.0190737.us, i64 %i.rh
  %i.sh = load i16, ptr %i.sg, align 2, !tbaa !334
  %i.si = zext i16 %i.sh to i32
  %i.sj = shl nuw i32 %i.si, 16
  %i.sk = insertelement <8 x i32> poison, i32 %i.sj, i64 0
  %i.sl = bitcast <8 x i32> %i.sk to <8 x float>
  %i.sm = shufflevector <8 x float> %i.sl, <8 x float> poison, <8 x i32> zeroinitializer
  %i.sn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ry, <8 x float> nofpclass(nan inf) %i.sm, <8 x float> nofpclass(nan inf) %.13607735.us) ; 3 uses
  %i.so = getelementptr inbounds [2 x i8], ptr %.0190737.us, i64 %i.rj
  %i.sp = getelementptr inbounds nuw i8, ptr %.13736.us, i64 32
  %i.sq = add nuw nsw i32 %.0189738.us, 1         ; 2 uses
  %exitcond840.not = icmp eq i32 %i.sq, %i.ra
  br i1 %exitcond840.not, label %._crit_edge.us, label %bb.j, !llvm.loop !465

._crit_edge.us:                                   ; preds = %bb.j
  %scevgep838 = getelementptr i8, ptr %.12745.us, i64 32
  %scevgep839 = getelementptr i8, ptr %scevgep838, i64 %i.rm ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.sr = trunc i64 %indvars.iv.next to i32
  %i.ss = or i32 %i.sr, 1
  %i.st = icmp slt i32 %i.ss, %i.aa
  br i1 %i.st, label %.lr.ph739.us, label %.preheader634.loopexit, !llvm.loop !466

bb.k:                                             ; preds = %.lr.ph723, %.loopexit
  %.1202722 = phi i32 [ %.0201.lcssa, %.lr.ph723 ], [ %i.xl, %.loopexit ] ; 2 uses
  %.7721 = phi ptr [ %.0205.lcssa, %.lr.ph723 ], [ %.11, %.loopexit ] ; 7 uses
  %.7577720 = phi <8 x float> [ %.0570.lcssa, %.lr.ph723 ], [ %.11581, %.loopexit ] ; 5 uses
  %.7589719 = phi <8 x float> [ %.0582.lcssa, %.lr.ph723 ], [ %.11593, %.loopexit ] ; 5 uses
  %.7601718 = phi <8 x float> [ %.0594.lcssa, %.lr.ph723 ], [ %.11605, %.loopexit ] ; 5 uses
  %.8616717 = phi <8 x float> [ %.1609.lcssa, %.lr.ph723 ], [ %.12620, %.loopexit ] ; 5 uses
  %i.su = sdiv i32 %.1202722, %i.y
  %i.sv = sext i32 %i.su to i64
  %.reass731 = mul i64 %factor.op.mul730, %i.sv
  %gep733 = getelementptr i8, ptr %invariant.gep732, i64 %.reass731 ; 2 uses
  br i1 %i.at, label %.preheader627, label %.loopexit628

.preheader627:                                    ; preds = %bb.k
  %i.sw = load i32, ptr %9, align 4, !tbaa !254   ; 3 uses
  %i.sx = icmp sgt i32 %i.sw, 0
  br i1 %i.sx, label %.lr.ph697, label %.loopexit

.lr.ph697:                                        ; preds = %.preheader627
  %i.sy = load i32, ptr %10, align 4, !tbaa !254
  %i.sz = shl nsw i32 %i.sy, 2
  %i.ta = sext i32 %i.sz to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph697, %bb.l
  %.0192696 = phi i32 [ 0, %.lr.ph697 ], [ %i.up, %bb.l ]
  %.0193695 = phi ptr [ %gep733, %.lr.ph697 ], [ %i.un, %bb.l ] ; 2 uses
  %.8694 = phi ptr [ %.7721, %.lr.ph697 ], [ %i.uo, %bb.l ] ; 5 uses
  %.8578693 = phi <8 x float> [ %.7577720, %.lr.ph697 ], [ %i.um, %bb.l ]
  %.8590692 = phi <8 x float> [ %.7589719, %.lr.ph697 ], [ %i.uj, %bb.l ]
  %.8602691 = phi <8 x float> [ %.7601718, %.lr.ph697 ], [ %i.ug, %bb.l ]
  %.9617690 = phi <8 x float> [ %.8616717, %.lr.ph697 ], [ %i.ud, %bb.l ]
  %i.tb = load <8 x i16>, ptr %.8694, align 16, !tbaa !273 ; 2 uses
  %i.tc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.tb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.td = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.tb, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.te = shufflevector <8 x i16> %i.tc, <8 x i16> %i.td, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.tf = bitcast <16 x i16> %i.te to <8 x float>
  %i.tg = getelementptr inbounds nuw i8, ptr %.8694, i64 16
  %i.th = load <8 x i16>, ptr %i.tg, align 16, !tbaa !273 ; 2 uses
  %i.ti = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.th, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.tj = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.th, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.tk = shufflevector <8 x i16> %i.ti, <8 x i16> %i.tj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.tl = bitcast <16 x i16> %i.tk to <8 x float>
  %i.tm = getelementptr inbounds nuw i8, ptr %.8694, i64 32
  %i.tn = load <8 x i16>, ptr %i.tm, align 16, !tbaa !273 ; 2 uses
  %i.to = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.tn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.tp = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.tn, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.tq = shufflevector <8 x i16> %i.to, <8 x i16> %i.tp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.tr = bitcast <16 x i16> %i.tq to <8 x float>
  %i.ts = getelementptr inbounds nuw i8, ptr %.8694, i64 48
  %i.tt = load <8 x i16>, ptr %i.ts, align 16, !tbaa !273 ; 2 uses
  %i.tu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.tt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.tv = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.tt, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.tw = shufflevector <8 x i16> %i.tu, <8 x i16> %i.tv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.tx = bitcast <16 x i16> %i.tw to <8 x float>
  %i.ty = load <4 x i16>, ptr %.0193695, align 2, !tbaa !334
  %i.tz = zext <4 x i16> %i.ty to <4 x i32>
  %i.ua = shl nuw <4 x i32> %i.tz, splat (i32 16) ; 4 uses
  %i.ub = bitcast <4 x i32> %i.ua to <4 x float>
  %i.uc = shufflevector <4 x float> %i.ub, <4 x float> poison, <8 x i32> zeroinitializer
  %i.ud = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.tf, <8 x float> nofpclass(nan inf) %i.uc, <8 x float> nofpclass(nan inf) %.9617690) ; 2 uses
  %i.ue = bitcast <4 x i32> %i.ua to <4 x float>
  %i.uf = shufflevector <4 x float> %i.ue, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ug = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.tl, <8 x float> nofpclass(nan inf) %i.uf, <8 x float> nofpclass(nan inf) %.8602691) ; 2 uses
  %i.uh = bitcast <4 x i32> %i.ua to <4 x float>
  %i.ui = shufflevector <4 x float> %i.uh, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.uj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.tr, <8 x float> nofpclass(nan inf) %i.ui, <8 x float> nofpclass(nan inf) %.8590692) ; 2 uses
  %i.uk = bitcast <4 x i32> %i.ua to <4 x float>
  %i.ul = shufflevector <4 x float> %i.uk, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.um = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.tx, <8 x float> nofpclass(nan inf) %i.ul, <8 x float> nofpclass(nan inf) %.8578693) ; 2 uses
  %i.un = getelementptr inbounds [2 x i8], ptr %.0193695, i64 %i.ta
  %i.uo = getelementptr inbounds nuw i8, ptr %.8694, i64 64
  %i.up = add nuw nsw i32 %.0192696, 1            ; 2 uses
  %exitcond834.not = icmp eq i32 %i.up, %i.sw
  br i1 %exitcond834.not, label %.loopexit628.loopexit, label %bb.l, !llvm.loop !467

.loopexit628.loopexit:                            ; preds = %bb.l
  %scevgep832 = getelementptr i8, ptr %.7721, i64 64
  %i.uq = add nsw i32 %i.sw, -1
  %i.ur = zext nneg i32 %i.uq to i64
  %i.us = shl nuw nsw i64 %i.ur, 6
  %scevgep833 = getelementptr i8, ptr %scevgep832, i64 %i.us
  br label %.loopexit

.loopexit628:                                     ; preds = %bb.k
  br i1 %i.au, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.loopexit628
  %i.ut = load i32, ptr %9, align 4, !tbaa !254   ; 3 uses
  %i.uu = icmp sgt i32 %i.ut, 0
  br i1 %i.uu, label %.lr.ph711, label %.loopexit

.lr.ph711:                                        ; preds = %.preheader
  %i.uv = load i32, ptr %11, align 4, !tbaa !254  ; 3 uses
  %i.uw = sext i32 %i.uv to i64
  %i.ux = shl nsw i32 %i.uv, 1
  %i.uy = sext i32 %i.ux to i64
  %i.uz = mul nsw i32 %i.uv, 3
  %i.va = sext i32 %i.uz to i64
  %i.vb = load i32, ptr %10, align 4, !tbaa !254
  %i.vc = sext i32 %i.vb to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph711, %bb.m
  %.0191710 = phi i32 [ 0, %.lr.ph711 ], [ %i.xh, %bb.m ]
  %.2709 = phi ptr [ %gep733, %.lr.ph711 ], [ %i.xf, %bb.m ] ; 5 uses
  %.10708 = phi ptr [ %.7721, %.lr.ph711 ], [ %i.xg, %bb.m ] ; 5 uses
  %.10580707 = phi <8 x float> [ %.7577720, %.lr.ph711 ], [ %i.xe, %bb.m ]
  %.10592706 = phi <8 x float> [ %.7589719, %.lr.ph711 ], [ %i.ww, %bb.m ]
  %.10604705 = phi <8 x float> [ %.7601718, %.lr.ph711 ], [ %i.wo, %bb.m ]
  %.11619704 = phi <8 x float> [ %.8616717, %.lr.ph711 ], [ %i.wg, %bb.m ]
  %i.vd = load <8 x i16>, ptr %.10708, align 16, !tbaa !273 ; 2 uses
  %i.ve = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.vd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.vf = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.vd, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.vg = shufflevector <8 x i16> %i.ve, <8 x i16> %i.vf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.vh = bitcast <16 x i16> %i.vg to <8 x float>
  %i.vi = getelementptr inbounds nuw i8, ptr %.10708, i64 16
  %i.vj = load <8 x i16>, ptr %i.vi, align 16, !tbaa !273 ; 2 uses
  %i.vk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.vj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.vl = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.vj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.vm = shufflevector <8 x i16> %i.vk, <8 x i16> %i.vl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.vn = bitcast <16 x i16> %i.vm to <8 x float>
  %i.vo = getelementptr inbounds nuw i8, ptr %.10708, i64 32
  %i.vp = load <8 x i16>, ptr %i.vo, align 16, !tbaa !273 ; 2 uses
  %i.vq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.vp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.vr = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.vp, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.vs = shufflevector <8 x i16> %i.vq, <8 x i16> %i.vr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.vt = bitcast <16 x i16> %i.vs to <8 x float>
  %i.vu = getelementptr inbounds nuw i8, ptr %.10708, i64 48
end_hunk_9
begin_hunk_10_@_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.abg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.abf, <8 x float> nofpclass(nan inf) %i.abc, <8 x float> splat (float f0x3D2AA9C1))
  %i.abh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.abg, <8 x float> nofpclass(nan inf) %i.abc, <8 x float> splat (float f0x3E2AAAAA))
  %i.abi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.abh, <8 x float> nofpclass(nan inf) %i.abc, <8 x float> splat (float 5.000000e-01))
  %i.abj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.abi, <8 x float> nofpclass(nan inf) %i.abd, <8 x float> nofpclass(nan inf) %i.abc)
  %i.abk = fadd fast <8 x float> %i.abj, splat (float 1.000000e+00)
  %i.abl = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aaz)
  %i.abm = shl <8 x i32> %i.abl, splat (i32 23)
  %i.abn = add <8 x i32> %i.abm, splat (i32 1065353216)
  %i.abo = bitcast <8 x i32> %i.abn to <8 x float>
  %i.abp = fmul fast <8 x float> %i.abk, %i.abo
  %i.abq = fadd fast <8 x float> %i.abp, splat (float 1.000000e+00) ; 2 uses
  %i.abr = fcmp fast ole <8 x float> %i.abq, zeroinitializer
  %i.abs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.abq, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.abt = bitcast <8 x float> %i.abs to <8 x i32>
  %i.abu = bitcast <8 x float> %i.abs to <8 x i32>
  %i.abv = and <8 x i32> %i.abu, splat (i32 -2139095041)
  %i.abw = or disjoint <8 x i32> %i.abv, splat (i32 1056964608)
  %i.abx = bitcast <8 x i32> %i.abw to <8 x float> ; 3 uses
  %i.aby = lshr <8 x i32> %i.abt, splat (i32 23)
  %i.abz = add nsw <8 x i32> %i.aby, splat (i32 -127)
  %i.aca = sitofp fast <8 x i32> %i.abz to <8 x float> ; 2 uses
  %i.acb = fadd fast <8 x float> %i.aca, splat (float 1.000000e+00)
  %i.acc = fcmp fast olt <8 x float> %i.abx, splat (float f0x3F3504F3) ; 2 uses
  %i.acd = select <8 x i1> %i.acc, <8 x float> %i.abx, <8 x float> zeroinitializer
  %i.ace = fadd fast <8 x float> %i.abx, splat (float -1.000000e+00)
  %i.acf = select fast <8 x i1> %i.acc, <8 x float> %i.aca, <8 x float> %i.acb ; 2 uses
  %i.acg = fadd fast <8 x float> %i.ace, %i.acd   ; 12 uses
  %i.ach = fmul fast <8 x float> %i.acg, %i.acg   ; 2 uses
  %i.aci = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acg, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.acj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aci, <8 x float> nofpclass(nan inf) %i.acg, <8 x float> splat (float f0x3DEF251A))
  %i.ack = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acj, <8 x float> nofpclass(nan inf) %i.acg, <8 x float> splat (float f0xBDFE5D4F))
  %i.acl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ack, <8 x float> nofpclass(nan inf) %i.acg, <8 x float> splat (float f0x3E11E9BF))
  %i.acm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acl, <8 x float> nofpclass(nan inf) %i.acg, <8 x float> splat (float f0xBE2AAE50))
  %i.acn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acm, <8 x float> nofpclass(nan inf) %i.acg, <8 x float> splat (float f0x3E4CCEAC))
  %i.aco = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acn, <8 x float> nofpclass(nan inf) %i.acg, <8 x float> splat (float f0xBE7FFFFC))
  %i.acp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aco, <8 x float> nofpclass(nan inf) %i.acg, <8 x float> splat (float f0x3EAAAAAA))
  %i.acq = fmul fast <8 x float> %i.ach, %i.acg
  %i.acr = fmul fast <8 x float> %i.acq, %i.acp
  %i.acs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acf, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.acr)
  %i.act = fneg fast <8 x float> %i.ach
  %i.acu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.act, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.acs)
  %i.acv = fadd fast <8 x float> %i.acu, %i.acg
  %i.acw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acf, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.acv)
  %.neg = fmul fast <8 x float> %i.acw, splat (float -2.000000e+00)
  %i.acx = select fast <8 x i1> %i.abr, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg
  %i.acy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.acx, <8 x float> splat (float f0x42B0C0A5))
  %i.acz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.acy, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ada = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acz, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.adb = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ada, i32 1) ; 2 uses
  %i.adc = fcmp fast ogt <8 x float> %i.adb, %i.ada
  %i.add = select <8 x i1> %i.adc, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ade = fsub fast <8 x float> %i.adb, %i.add   ; 2 uses
  %i.adf = fneg fast <8 x float> %i.ade           ; 2 uses
  %i.adg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.adf, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.acz)
  %i.adh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.adf, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.adg) ; 8 uses
  %i.adi = fmul fast <8 x float> %i.adh, %i.adh
  %i.adj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adh, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.adk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adj, <8 x float> nofpclass(nan inf) %i.adh, <8 x float> splat (float f0x3C088908))
  %i.adl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adk, <8 x float> nofpclass(nan inf) %i.adh, <8 x float> splat (float f0x3D2AA9C1))
  %i.adm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adl, <8 x float> nofpclass(nan inf) %i.adh, <8 x float> splat (float f0x3E2AAAAA))
  %i.adn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adm, <8 x float> nofpclass(nan inf) %i.adh, <8 x float> splat (float 5.000000e-01))
  %i.ado = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adn, <8 x float> nofpclass(nan inf) %i.adi, <8 x float> nofpclass(nan inf) %i.adh)
  %i.adp = fadd fast <8 x float> %i.ado, splat (float 1.000000e+00)
  %i.adq = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ade)
  %i.adr = shl <8 x i32> %i.adq, splat (i32 23)
  %i.ads = add <8 x i32> %i.adr, splat (i32 1065353216)
  %i.adt = bitcast <8 x i32> %i.ads to <8 x float>
  %i.adu = fmul fast <8 x float> %i.adp, %i.adt
  %i.adv = fadd fast <8 x float> %i.adu, splat (float 1.000000e+00)
  %i.adw = fdiv fast <8 x float> splat (float 1.000000e+00), %i.adv
  %i.adx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adw, <8 x float> splat (float 2.000000e+00), <8 x float> splat (float -1.000000e+00))
  %i.ady = fmul fast <8 x float> %i.adx, %i.yy
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc222:                                        ; preds = %._crit_edge770
  %i.adz = load ptr, ptr %13, align 8, !tbaa !18  ; 2 uses
  %i.aea = load float, ptr %i.adz, align 4, !tbaa !53
  %i.aeb = insertelement <8 x float> poison, float %i.aea, i64 0
  %i.aec = shufflevector <8 x float> %i.aeb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aed = getelementptr inbounds nuw i8, ptr %i.adz, i64 4
  %i.aee = load float, ptr %i.aed, align 4, !tbaa !53
  %i.aef = insertelement <8 x float> poison, float %i.aee, i64 0
  %i.aeg = shufflevector <8 x float> %i.aef, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aeh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.yy, <8 x float> nofpclass(nan inf) %i.aec, <8 x float> nofpclass(nan inf) %i.aeg)
  %i.aei = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aeh, <8 x float> zeroinitializer)
  %i.aej = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aei, <8 x float> splat (float 1.000000e+00))
  %i.aek = fmul fast <8 x float> %i.aej, %i.yy
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit:      ; preds = %.noexc222, %.noexc221, %.noexc220, %bb.p, %.noexc219, %bb.o, %._crit_edge770
  %.0.i = phi nsz <8 x float> [ %i.aek, %.noexc222 ], [ %i.za, %bb.o ], [ %i.zi, %.noexc219 ], [ %i.zs, %bb.p ], [ %i.aas, %.noexc220 ], [ %i.ady, %.noexc221 ], [ %i.yy, %._crit_edge770 ] ; 4 uses
  switch i32 %i.ab, label %.thread625 [
    i32 8, label %.thread
    i32 4, label %bb.q
    i32 1, label %bb.r
  ]

.thread:                                          ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.ael = bitcast <8 x float> %.0.i to <8 x i32> ; 2 uses
  %i.aem = shufflevector <8 x i32> %i.ael, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aen = shufflevector <8 x i32> %i.ael, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.aeo = lshr <4 x i32> %i.aem, splat (i32 16)
  %i.aep = lshr <4 x i32> %i.aen, splat (i32 16)
  %i.aeq = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.aeo, <4 x i32> %i.aep)
  store <8 x i16> %i.aeq, ptr %.0211778, align 16, !tbaa !273
  %i.aer = getelementptr inbounds nuw i8, ptr %.0211778, i64 16
  br label %.thread625

bb.q:                                             ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.aes = bitcast <8 x float> %.0.i to <8 x i32>
  %i.aet = shufflevector <8 x i32> %i.aes, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aeu = lshr <4 x i32> %i.aet, splat (i32 16)
  %i.aev = bitcast <8 x float> %.0.i to <8 x i32>
  %i.aew = shufflevector <8 x i32> %i.aev, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.aex = lshr <4 x i32> %i.aew, splat (i32 16)
  %i.aey = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.aeu, <4 x i32> %i.aex)
  %i.aez = bitcast <8 x i16> %i.aey to <2 x i64>  ; 2 uses
  %i.afa = extractelement <2 x i64> %i.aez, i64 0
  store i64 %i.afa, ptr %.0211778, align 1, !tbaa !273
  %i.afb = load i32, ptr %14, align 4, !tbaa !254
  %i.afc = sext i32 %i.afb to i64
  %i.afd = getelementptr inbounds [2 x i8], ptr %.0211778, i64 %i.afc
  %i.afe = extractelement <2 x i64> %i.aez, i64 1
  store i64 %i.afe, ptr %i.afd, align 1, !tbaa !273
  %i.aff = getelementptr inbounds nuw i8, ptr %.0211778, i64 8
  br label %.thread625

bb.r:                                             ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.afg = bitcast <8 x float> %.0.i to <16 x i16> ; 8 uses
  %i.afh = extractelement <16 x i16> %i.afg, i64 1
  store i16 %i.afh, ptr %.0211778, align 2, !tbaa !334
  %i.afi = extractelement <16 x i16> %i.afg, i64 3
  %i.afj = load i32, ptr %14, align 4, !tbaa !254 ; 7 uses
  %i.afk = sext i32 %i.afj to i64
  %i.afl = getelementptr inbounds [2 x i8], ptr %.0211778, i64 %i.afk
  store i16 %i.afi, ptr %i.afl, align 2, !tbaa !334
  %i.afm = extractelement <16 x i16> %i.afg, i64 5
  %i.afn = shl nsw i32 %i.afj, 1
  %i.afo = sext i32 %i.afn to i64
  %i.afp = getelementptr inbounds [2 x i8], ptr %.0211778, i64 %i.afo
  store i16 %i.afm, ptr %i.afp, align 2, !tbaa !334
  %i.afq = extractelement <16 x i16> %i.afg, i64 7
  %i.afr = mul nsw i32 %i.afj, 3
  %i.afs = sext i32 %i.afr to i64
  %i.aft = getelementptr inbounds [2 x i8], ptr %.0211778, i64 %i.afs
  store i16 %i.afq, ptr %i.aft, align 2, !tbaa !334
  %i.afu = extractelement <16 x i16> %i.afg, i64 9
  %i.afv = shl nsw i32 %i.afj, 2
  %i.afw = sext i32 %i.afv to i64
  %i.afx = getelementptr inbounds [2 x i8], ptr %.0211778, i64 %i.afw
  store i16 %i.afu, ptr %i.afx, align 2, !tbaa !334
  %i.afy = extractelement <16 x i16> %i.afg, i64 11
  %i.afz = mul nsw i32 %i.afj, 5
  %i.aga = sext i32 %i.afz to i64
  %i.agb = getelementptr inbounds [2 x i8], ptr %.0211778, i64 %i.aga
  store i16 %i.afy, ptr %i.agb, align 2, !tbaa !334
  %i.agc = extractelement <16 x i16> %i.afg, i64 13
  %i.agd = mul nsw i32 %i.afj, 6
  %i.age = sext i32 %i.agd to i64
  %i.agf = getelementptr inbounds [2 x i8], ptr %.0211778, i64 %i.age
  store i16 %i.agc, ptr %i.agf, align 2, !tbaa !334
  %i.agg = extractelement <16 x i16> %i.afg, i64 15
  %i.agh = mul nsw i32 %i.afj, 7
  %i.agi = sext i32 %i.agh to i64
  %i.agj = getelementptr inbounds [2 x i8], ptr %.0211778, i64 %i.agi
  store i16 %i.agg, ptr %i.agj, align 2, !tbaa !334
  %i.agk = getelementptr inbounds nuw i8, ptr %.0211778, i64 2
  br label %.thread625

.thread625:                                       ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit, %bb.q, %.thread, %bb.r
  %.3214 = phi ptr [ %i.agk, %bb.r ], [ %.0211778, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ], [ %i.aer, %.thread ], [ %i.aff, %bb.q ]
  %i.agl = add nuw nsw i32 %.0210779, 1           ; 2 uses
  %exitcond848.not = icmp eq i32 %i.agl, %i.x
  br i1 %exitcond848.not, label %._crit_edge, label %bb.c, !llvm.loop !472

._crit_edge785:                                   ; preds = %._crit_edge, %.lr.ph784, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge785, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32>, <4 x i32>) #13

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp.v2f32(<2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.log.v2f32(<2 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.tanh.v2f32(<2 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
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
!21 = !{ptr @_ZN4ncnn21Convolution1D_x86_fmaD2Ev}
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
end_hunk_10
