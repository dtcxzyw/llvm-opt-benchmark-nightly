Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution1d_x86_fma?download=true
inline.NumInlined: 21
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN4ncnn21Convolution1D_x86_fma15create_pipelineERKNS_6OptionE:bb.a
  %i.ds = shl nsw i32 %i.j, 4
  %i.dt = lshr i32 %i.n, 3
  %i.du = lshr i32 %i.n, 2
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
  %i.fr = load ptr, ptr %i.o, align 8, !tbaa !19  ; 9 uses
  %i.fs = mul i32 %i.n, %i.j                      ; 16 uses
  %i.ft = load ptr, ptr %i.p, align 8, !tbaa !19, !noalias !196
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !20, !noalias !196
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !44, !noalias !196
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
  %i.gu = add nuw i32 %i.gt, 8                    ; 4 uses
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
  %i.hf = load ptr, ptr %i.o, align 8, !tbaa !19  ; 5 uses
  %i.hg = mul i32 %i.n, %i.j                      ; 9 uses
  %i.hh = load ptr, ptr %i.p, align 8, !tbaa !19, !noalias !197
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !20, !noalias !197
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !44, !noalias !197
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
  %narrow1834.i = add nuw i32 %i.hy, 4
  %i.hz = zext i32 %narrow1834.i to i64
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
  %i.ij = add nuw i32 %i.ii, 8                    ; 4 uses
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
  %i.iw = add i32 %i.n, -2
  %min.iters.check427 = icmp ult i32 %i.j, 16
  %stride.check = icmp slt i32 %i.ht, 0
  %n.vec429 = and i64 %wide.trip.count1706.i, 2147483640 ; 4 uses
  %i.ix = shl nuw nsw i64 %n.vec429, 5
  %cmp.n444 = icmp eq i64 %n.vec429, %wide.trip.count1706.i
  %min.iters.check357 = icmp ult i32 %i.j, 8
  %n.vec359 = and i64 %wide.trip.count1706.i, 2147483640 ; 4 uses
  %i.iy = shl nuw nsw i64 %n.vec359, 4
  %cmp.n370 = icmp eq i64 %n.vec359, %wide.trip.count1706.i
  %xtraiter = and i64 %wide.trip.count1706.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.iz = add nsw i64 %wide.trip.count1706.i, -1
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
  %i.ja = sext i32 %indvars.iv.i to i64
  %i.jb = shl nsw i64 %i.ja, 2
  %scevgep1618.i = getelementptr i8, ptr %scevgep.i, i64 %i.jb ; 2 uses
  %i.jc = sext i32 %indvars.iv1620.i to i64
  %i.jd = shl nsw i64 %i.jc, 2
  %scevgep1622.i = getelementptr i8, ptr %scevgep.i, i64 %i.jd ; 2 uses
  %i.je = sext i32 %indvars.iv1624.i to i64
  %i.jf = shl nsw i64 %i.je, 2
  %scevgep1626.i = getelementptr i8, ptr %scevgep.i, i64 %i.jf ; 2 uses
  %i.jg = sext i32 %indvars.iv1628.i to i64
  %i.jh = shl nsw i64 %i.jg, 2
  %scevgep1630.i = getelementptr i8, ptr %scevgep.i, i64 %i.jh ; 2 uses
  %i.ji = sext i32 %indvars.iv1632.i to i64
  %i.jj = shl nsw i64 %i.ji, 2
  %scevgep1634.i = getelementptr i8, ptr %scevgep.i, i64 %i.jj ; 2 uses
  %i.jk = sext i32 %indvars.iv1636.i to i64
  %i.jl = shl nsw i64 %i.jk, 2
  %scevgep1638.i = getelementptr i8, ptr %scevgep.i, i64 %i.jl ; 2 uses
  %i.jm = sext i32 %indvars.iv1640.i to i64
  %i.jn = shl nsw i64 %i.jm, 2
  %scevgep1642.i = getelementptr i8, ptr %scevgep.i, i64 %i.jn ; 2 uses
  %i.jo = sext i32 %indvars.iv1644.i to i64
  %i.jp = shl nsw i64 %i.jo, 2
  %scevgep1646.i = getelementptr i8, ptr %scevgep.i, i64 %i.jp ; 2 uses
  %i.jq = trunc i64 %indvars.iv1683.i to i32      ; 8 uses
  %i.jr = mul i32 %i.fs, %i.jq
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.js ; 2 uses
  %i.ju = or disjoint i32 %i.jq, 1
  %i.jv = mul i32 %i.ju, %i.fs
  %i.jw = sext i32 %i.jv to i64
  %i.jx = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.jw ; 2 uses
  %i.jy = or disjoint i32 %i.jq, 2
  %i.jz = mul i32 %i.jy, %i.fs
  %i.ka = sext i32 %i.jz to i64
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.ka ; 2 uses
  %i.kc = or disjoint i32 %i.jq, 3
  %i.kd = mul i32 %i.kc, %i.fs
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.ke ; 2 uses
  %i.kg = or disjoint i32 %i.jq, 4
  %i.kh = mul i32 %i.kg, %i.fs
  %i.ki = sext i32 %i.kh to i64
  %i.kj = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.ki ; 2 uses
  %i.kk = or disjoint i32 %i.jq, 5
  %i.kl = mul i32 %i.kk, %i.fs
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.km ; 2 uses
  %i.ko = or disjoint i32 %i.jq, 6
  %i.kp = mul i32 %i.ko, %i.fs
  %i.kq = sext i32 %i.kp to i64
  %i.kr = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.kq ; 2 uses
  %i.ks = or disjoint i32 %i.jq, 7
  %i.kt = mul i32 %i.ks, %i.fs
  %i.ku = sext i32 %i.kt to i64
  %i.kv = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.ku ; 2 uses
  %i.kw = lshr exact i64 %indvars.iv1683.i, 3
  %.reass.i = mul i64 %factor.op.mul.i, %i.kw
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ft, i64 %.reass.i ; 4 uses
  br i1 %i.r, label %.preheader1107.lr.ph.i, label %.preheader1110.i

.preheader1107.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1005.i
  br i1 %i.fy, label %.preheader1107.us.i, label %.preheader1110.thread.i

.preheader1107.us.i:                              ; preds = %.preheader1107.lr.ph.i, %._crit_edge.us.i
  %.08371132.us.i = phi ptr [ %i.si, %._crit_edge.us.i ], [ %i.jt, %.preheader1107.lr.ph.i ] ; 2 uses
  %.08401131.us.i = phi ptr [ %i.sj, %._crit_edge.us.i ], [ %i.jx, %.preheader1107.lr.ph.i ] ; 2 uses
  %.08481130.us.i = phi ptr [ %i.sk, %._crit_edge.us.i ], [ %i.kb, %.preheader1107.lr.ph.i ] ; 2 uses
  %.08511129.us.i = phi ptr [ %i.sl, %._crit_edge.us.i ], [ %i.kf, %.preheader1107.lr.ph.i ] ; 2 uses
  %.08551128.us.i = phi ptr [ %i.sm, %._crit_edge.us.i ], [ %i.kj, %.preheader1107.lr.ph.i ] ; 2 uses
  %.08581127.us.i = phi ptr [ %i.sn, %._crit_edge.us.i ], [ %i.kn, %.preheader1107.lr.ph.i ] ; 2 uses
  %.08811126.us.i = phi ptr [ %i.so, %._crit_edge.us.i ], [ %i.kr, %.preheader1107.lr.ph.i ] ; 2 uses
  %.08841125.us.i = phi ptr [ %i.sp, %._crit_edge.us.i ], [ %i.kv, %.preheader1107.lr.ph.i ] ; 2 uses
  %.08871124.us.i = phi ptr [ %i.sh, %._crit_edge.us.i ], [ %i.kx, %.preheader1107.lr.ph.i ]
  %.08981123.us.i = phi i32 [ %i.sq, %._crit_edge.us.i ], [ 0, %.preheader1107.lr.ph.i ]
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.preheader1107.us.i
  %indvars.iv1647.i = phi i64 [ 0, %.preheader1107.us.i ], [ %indvars.iv.next1648.i, %bb.ai ] ; 9 uses
  %.18881122.us.i = phi ptr [ %.08871124.us.i, %.preheader1107.us.i ], [ %i.sh, %bb.ai ] ; 65 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %.08371132.us.i, i64 %indvars.iv1647.i ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %.08401131.us.i, i64 %indvars.iv1647.i ; 2 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %.08481130.us.i, i64 %indvars.iv1647.i ; 2 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %.08511129.us.i, i64 %indvars.iv1647.i ; 2 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %.08551128.us.i, i64 %indvars.iv1647.i ; 2 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %.08581127.us.i, i64 %indvars.iv1647.i ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %.08811126.us.i, i64 %indvars.iv1647.i ; 2 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %.08841125.us.i, i64 %indvars.iv1647.i ; 2 uses
  %i.lg = load float, ptr %i.ky, align 4, !tbaa !45
  store float %i.lg, ptr %.18881122.us.i, align 4, !tbaa !45
  %i.lh = load float, ptr %i.kz, align 4, !tbaa !45
  %i.li = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 4
  store float %i.lh, ptr %i.li, align 4, !tbaa !45
  %i.lj = load float, ptr %i.la, align 4, !tbaa !45
  %i.lk = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 8
  store float %i.lj, ptr %i.lk, align 4, !tbaa !45
  %i.ll = load float, ptr %i.lb, align 4, !tbaa !45
  %i.lm = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 12
  store float %i.ll, ptr %i.lm, align 4, !tbaa !45
  %i.ln = load float, ptr %i.lc, align 4, !tbaa !45
  %i.lo = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 16
  store float %i.ln, ptr %i.lo, align 4, !tbaa !45
  %i.lp = load float, ptr %i.ld, align 4, !tbaa !45
  %i.lq = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 20
  store float %i.lp, ptr %i.lq, align 4, !tbaa !45
  %i.lr = load float, ptr %i.le, align 4, !tbaa !45
  %i.ls = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 24
  store float %i.lr, ptr %i.ls, align 4, !tbaa !45
  %i.lt = load float, ptr %i.lf, align 4, !tbaa !45
  %i.lu = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 28
  store float %i.lt, ptr %i.lu, align 4, !tbaa !45
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.fz ; 2 uses
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.fz ; 2 uses
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %i.fz ; 2 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %i.fz ; 2 uses
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %i.fz ; 2 uses
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %i.fz ; 2 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %i.fz ; 2 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %i.fz ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 32
  %i.me = load float, ptr %i.lv, align 4, !tbaa !45
  store float %i.me, ptr %i.md, align 4, !tbaa !45
  %i.mf = load float, ptr %i.lw, align 4, !tbaa !45
  %i.mg = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 36
  store float %i.mf, ptr %i.mg, align 4, !tbaa !45
  %i.mh = load float, ptr %i.lx, align 4, !tbaa !45
  %i.mi = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 40
  store float %i.mh, ptr %i.mi, align 4, !tbaa !45
  %i.mj = load float, ptr %i.ly, align 4, !tbaa !45
  %i.mk = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 44
  store float %i.mj, ptr %i.mk, align 4, !tbaa !45
  %i.ml = load float, ptr %i.lz, align 4, !tbaa !45
  %i.mm = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 48
  store float %i.ml, ptr %i.mm, align 4, !tbaa !45
  %i.mn = load float, ptr %i.ma, align 4, !tbaa !45
  %i.mo = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 52
  store float %i.mn, ptr %i.mo, align 4, !tbaa !45
  %i.mp = load float, ptr %i.mb, align 4, !tbaa !45
  %i.mq = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 56
  store float %i.mp, ptr %i.mq, align 4, !tbaa !45
  %i.mr = load float, ptr %i.mc, align 4, !tbaa !45
  %i.ms = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 60
  store float %i.mr, ptr %i.ms, align 4, !tbaa !45
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %i.fz ; 2 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %i.fz ; 2 uses
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.fz ; 2 uses
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.fz ; 2 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %i.fz ; 2 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.fz ; 2 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %i.fz ; 2 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.fz ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 64
  %i.nc = load float, ptr %i.mt, align 4, !tbaa !45
  store float %i.nc, ptr %i.nb, align 4, !tbaa !45
  %i.nd = load float, ptr %i.mu, align 4, !tbaa !45
  %i.ne = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 68
  store float %i.nd, ptr %i.ne, align 4, !tbaa !45
  %i.nf = load float, ptr %i.mv, align 4, !tbaa !45
  %i.ng = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 72
  store float %i.nf, ptr %i.ng, align 4, !tbaa !45
  %i.nh = load float, ptr %i.mw, align 4, !tbaa !45
  %i.ni = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 76
  store float %i.nh, ptr %i.ni, align 4, !tbaa !45
  %i.nj = load float, ptr %i.mx, align 4, !tbaa !45
  %i.nk = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 80
  store float %i.nj, ptr %i.nk, align 4, !tbaa !45
  %i.nl = load float, ptr %i.my, align 4, !tbaa !45
  %i.nm = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 84
  store float %i.nl, ptr %i.nm, align 4, !tbaa !45
  %i.nn = load float, ptr %i.mz, align 4, !tbaa !45
  %i.no = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 88
  store float %i.nn, ptr %i.no, align 4, !tbaa !45
  %i.np = load float, ptr %i.na, align 4, !tbaa !45
  %i.nq = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 92
end_hunk_0
begin_hunk_1_@_ZN4ncnn21Convolution1D_x86_fma15create_pipelineERKNS_6OptionE:bb.a
  %scevgep299 = getelementptr i8, ptr %.2839.lcssa.i, i64 %i.ha
  %i.zp = insertelement <8 x ptr> poison, ptr %scevgep292, i64 0
  %i.zq = insertelement <8 x ptr> %i.zp, ptr %scevgep293, i64 1
  %i.zr = insertelement <8 x ptr> %i.zq, ptr %scevgep294, i64 2
  %i.zs = insertelement <8 x ptr> %i.zr, ptr %scevgep295, i64 3
  %i.zt = insertelement <8 x ptr> %i.zs, ptr %scevgep296, i64 4
  %i.zu = insertelement <8 x ptr> %i.zt, ptr %scevgep297, i64 5
  %i.zv = insertelement <8 x ptr> %i.zu, ptr %scevgep298, i64 6
  %i.zw = insertelement <8 x ptr> %i.zv, ptr %scevgep299, i64 7
  %i.zx = insertelement <8 x ptr> poison, ptr %.2886.lcssa.i, i64 0
  %i.zy = insertelement <8 x ptr> %i.zx, ptr %.2883.lcssa.i, i64 1
  %i.zz = insertelement <8 x ptr> %i.zy, ptr %.2860.lcssa.i, i64 2
  %i.aaa = insertelement <8 x ptr> %i.zz, ptr %.2857.lcssa.i, i64 3
  %i.aab = insertelement <8 x ptr> %i.aaa, ptr %.2853.lcssa.i, i64 4
  %i.aac = insertelement <8 x ptr> %i.aab, ptr %.2850.lcssa.i, i64 5
  %i.aad = insertelement <8 x ptr> %i.aac, ptr %.2842.lcssa.i, i64 6
  %i.aae = insertelement <8 x ptr> %i.aad, ptr %.2839.lcssa.i, i64 7
  br label %.preheader1104.i

.preheader1104.i:                                 ; preds = %.preheader1104.i.preheader, %._crit_edge.i
  %.98961243.i = phi ptr [ %.lcssa291, %._crit_edge.i ], [ %.6893.lcssa.i, %.preheader1104.i.preheader ] ; 6 uses
  %.39011242.i = phi i32 [ %i.abe, %._crit_edge.i ], [ %.2900.lcssa.i, %.preheader1104.i.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader1104.i
  %scevgep = getelementptr i8, ptr %.98961243.i, i64 %i.gz
  %i.aaf = insertelement <8 x ptr> poison, ptr %.98961243.i, i64 0
  %i.aag = shufflevector <8 x ptr> %i.aaf, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.aah = icmp ult <8 x ptr> %i.aag, %i.zw
  %i.aai = insertelement <8 x ptr> poison, ptr %scevgep, i64 0
  %i.aaj = shufflevector <8 x ptr> %i.aai, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.aak = icmp ult <8 x ptr> %i.aae, %i.aaj
  %i.aal = and <8 x i1> %i.aah, %i.aak
  %i.aam = bitcast <8 x i1> %i.aal to i8
  %.not792 = icmp eq i8 %i.aam, 0
  br i1 %.not792, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.memcheck
  %i.aan = getelementptr i8, ptr %.98961243.i, i64 %i.hb ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.aao = shl i64 %index, 5
  %next.gep = getelementptr i8, ptr %.98961243.i, i64 %i.aao
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %.2839.lcssa.i, i64 %index
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %.2842.lcssa.i, i64 %index
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %.2850.lcssa.i, i64 %index
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %.2853.lcssa.i, i64 %index
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %.2857.lcssa.i, i64 %index
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %.2860.lcssa.i, i64 %index
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %.2883.lcssa.i, i64 %index
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %.2886.lcssa.i, i64 %index
  %wide.load = load <8 x float>, ptr %i.aap, align 4, !tbaa !45, !alias.scope !198
  %wide.load327 = load <8 x float>, ptr %i.aaq, align 4, !tbaa !45, !alias.scope !199
  %wide.load328 = load <8 x float>, ptr %i.aar, align 4, !tbaa !45, !alias.scope !200
  %wide.load329 = load <8 x float>, ptr %i.aas, align 4, !tbaa !45, !alias.scope !201
  %wide.load330 = load <8 x float>, ptr %i.aat, align 4, !tbaa !45, !alias.scope !202
  %wide.load331 = load <8 x float>, ptr %i.aau, align 4, !tbaa !45, !alias.scope !203
  %wide.load332 = load <8 x float>, ptr %i.aav, align 4, !tbaa !45, !alias.scope !204
  %wide.load333 = load <8 x float>, ptr %i.aaw, align 4, !tbaa !45, !alias.scope !205
  %i.aax = shufflevector <8 x float> %wide.load, <8 x float> %wide.load327, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aay = shufflevector <8 x float> %wide.load328, <8 x float> %wide.load329, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aaz = shufflevector <8 x float> %wide.load330, <8 x float> %wide.load331, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aba = shufflevector <8 x float> %wide.load332, <8 x float> %wide.load333, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.abb = shufflevector <16 x float> %i.aax, <16 x float> %i.aay, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.abc = shufflevector <16 x float> %i.aaz, <16 x float> %i.aba, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec = shufflevector <32 x float> %i.abb, <32 x float> %i.abc, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !45, !alias.scope !206, !noalias !207
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.abd = icmp eq i64 %index.next, %n.vec
  br i1 %i.abd, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader1104.i, %middle.block
  %indvars.iv1677.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader1104.i ], [ %n.vec, %middle.block ]
  %.108971241.i.ph = phi ptr [ %.98961243.i, %vector.memcheck ], [ %.98961243.i, %.preheader1104.i ], [ %i.aan, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %.lcssa291 = phi ptr [ %i.aan, %middle.block ], [ %i.acc, %scalar.ph ]
  %i.abe = add nuw nsw i32 %.39011242.i, 1        ; 2 uses
  %exitcond1682.not.i = icmp eq i32 %i.abe, %i.n
  br i1 %exitcond1682.not.i, label %._crit_edge1244.split.i, label %.preheader1104.i, !llvm.loop !92

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv1677.i = phi i64 [ %indvars.iv.next1678.i, %scalar.ph ], [ %indvars.iv1677.i.ph, %scalar.ph.preheader ] ; 9 uses
  %.108971241.i = phi ptr [ %i.acc, %scalar.ph ], [ %.108971241.i.ph, %scalar.ph.preheader ] ; 9 uses
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %.2839.lcssa.i, i64 %indvars.iv1677.i
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %.2842.lcssa.i, i64 %indvars.iv1677.i
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %.2850.lcssa.i, i64 %indvars.iv1677.i
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %.2853.lcssa.i, i64 %indvars.iv1677.i
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %.2857.lcssa.i, i64 %indvars.iv1677.i
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %.2860.lcssa.i, i64 %indvars.iv1677.i
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %.2883.lcssa.i, i64 %indvars.iv1677.i
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %.2886.lcssa.i, i64 %indvars.iv1677.i
  %i.abn = load float, ptr %i.abf, align 4, !tbaa !45
  store float %i.abn, ptr %.108971241.i, align 4, !tbaa !45
  %i.abo = load float, ptr %i.abg, align 4, !tbaa !45
  %i.abp = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 4
  store float %i.abo, ptr %i.abp, align 4, !tbaa !45
  %i.abq = load float, ptr %i.abh, align 4, !tbaa !45
  %i.abr = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 8
  store float %i.abq, ptr %i.abr, align 4, !tbaa !45
  %i.abs = load float, ptr %i.abi, align 4, !tbaa !45
  %i.abt = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 12
  store float %i.abs, ptr %i.abt, align 4, !tbaa !45
  %i.abu = load float, ptr %i.abj, align 4, !tbaa !45
  %i.abv = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 16
  store float %i.abu, ptr %i.abv, align 4, !tbaa !45
  %i.abw = load float, ptr %i.abk, align 4, !tbaa !45
  %i.abx = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 20
  store float %i.abw, ptr %i.abx, align 4, !tbaa !45
  %i.aby = load float, ptr %i.abl, align 4, !tbaa !45
  %i.abz = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 24
  store float %i.aby, ptr %i.abz, align 4, !tbaa !45
  %i.aca = load float, ptr %i.abm, align 4, !tbaa !45
  %i.acb = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 28
  store float %i.aca, ptr %i.acb, align 4, !tbaa !45
  %i.acc = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 32 ; 2 uses
  %indvars.iv.next1678.i = add nuw nsw i64 %indvars.iv1677.i, 1 ; 2 uses
  %exitcond1681.not.i = icmp eq i64 %indvars.iv.next1678.i, %wide.trip.count.i
  br i1 %exitcond1681.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !93

._crit_edge1244.split.i:                          ; preds = %._crit_edge.i, %.preheader1108.i, %.preheader1105.lr.ph.i
  %indvars.iv.next1684.i = add nuw nsw i64 %indvars.iv1683.i, 8 ; 3 uses
  %i.acd = or disjoint i64 %indvars.iv.next1684.i, 7
  %i.ace = icmp samesign ult i64 %i.acd, %i.gw
  %indvars.iv.next.i = add i32 %indvars.iv.i, %i.gm
  %indvars.iv.next1621.i = add i32 %indvars.iv1620.i, %i.gm
  %indvars.iv.next1625.i = add i32 %indvars.iv1624.i, %i.gm
  %indvars.iv.next1629.i = add i32 %indvars.iv1628.i, %i.gm
  %indvars.iv.next1633.i = add i32 %indvars.iv1632.i, %i.gm
  %indvars.iv.next1637.i = add i32 %indvars.iv1636.i, %i.gm
  %indvars.iv.next1641.i = add i32 %indvars.iv1640.i, %i.gm
  %indvars.iv.next1645.i = add i32 %indvars.iv1644.i, %i.gm
  br i1 %i.ace, label %_ZN4ncnn3MatD2Ev.exit1005.i, label %.preheader1103.loopexit.i, !llvm.loop !94

.preheader1095.loopexit.i:                        ; preds = %._crit_edge1337.split.i
  %i.acf = trunc nuw nsw i64 %indvars.iv.next1736.i to i32
  br label %.preheader1095.i

.preheader1095.i:                                 ; preds = %.preheader1095.loopexit.i, %.preheader1103.i
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader1103.i ], [ %i.acf, %.preheader1095.loopexit.i ] ; 4 uses
  %i.acg = or disjoint i32 %.1.lcssa.i, 1         ; 3 uses
  %i.ach = icmp slt i32 %i.acg, %i.m
  br i1 %i.ach, label %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i, label %.preheader1087.i

_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i:                ; preds = %.preheader1095.i
  %i.aci = load ptr, ptr %i.o, align 8, !tbaa !19 ; 3 uses
  %i.acj = mul i32 %i.n, %i.j                     ; 5 uses
  %i.ack = load ptr, ptr %i.p, align 8, !tbaa !19, !noalias !208
  %i.acl = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.acm = load i64, ptr %i.acl, align 8, !tbaa !20, !noalias !208
  %i.acn = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.aco = load i64, ptr %i.acn, align 8, !tbaa !44, !noalias !208
  %factor.op.mul1403.i = mul i64 %i.aco, %i.acm
  %i.acp = icmp sgt i32 %i.n, 7
  %i.acq = icmp sgt i32 %i.j, 0                   ; 3 uses
  %i.acr = sext i32 %i.j to i64                   ; 16 uses
  %i.acs = shl i32 %i.j, 1                        ; 3 uses
  %i.act = zext i32 %i.acs to i64                 ; 7 uses
  %i.acu = mul i32 %i.j, 3
  %i.acv = zext i32 %i.acu to i64                 ; 7 uses
  %i.acw = shl i32 %i.j, 2                        ; 3 uses
  %i.acx = zext nneg i32 %i.acw to i64            ; 2 uses
  %i.acy = mul nuw nsw i32 %i.j, 5
  %i.acz = zext nneg i32 %i.acy to i64            ; 2 uses
  %i.ada = mul nuw nsw i32 %i.j, 6
  %i.adb = zext nneg i32 %i.ada to i64            ; 2 uses
  %i.adc = mul nuw nsw i32 %i.j, 7
  %i.add = zext nneg i32 %i.adc to i64            ; 2 uses
  %i.ade = shl i32 %i.j, 3
  %i.adf = sext i32 %i.ade to i64                 ; 3 uses
  %i.adg = sext i32 %i.acw to i64                 ; 4 uses
  %i.adh = sext i32 %i.acs to i64                 ; 3 uses
  %i.adi = icmp slt i32 %i.j, 1
  %i.adj = add i32 %i.n, -8                       ; 2 uses
  %i.adk = lshr i32 %i.adj, 1
  %i.adl = and i32 %i.adk, 2147483644
  %narrow1835.i = add nuw i32 %i.adl, 4
  %i.adm = zext i32 %narrow1835.i to i64
  %i.adn = mul nsw i64 %i.adm, %i.adf
  %scevgep1740.i = getelementptr i8, ptr %i.aci, i64 %i.adn ; 2 uses
  %i.ado = mul i32 %i.acj, %.1.lcssa.i
  %i.adp = shl i32 %i.acj, 1                      ; 2 uses
  %i.adq = mul i32 %i.acg, %i.acj
  %i.adr = and i32 %i.adj, -8
  %i.ads = add nuw i32 %i.adr, 8                  ; 4 uses
  %i.adt = add i32 %i.n, -4
  %i.adu = zext nneg i32 %.1.lcssa.i to i64
  %i.adv = sext i32 %i.m to i64
  %i.adw = or disjoint i32 %i.ads, 3
  %i.adx = icmp slt i32 %i.adw, %i.n
  %wide.trip.count1751.i = zext i32 %i.j to i64   ; 19 uses
  %i.ady = shl nuw nsw i64 %wide.trip.count1751.i, 3
  %i.adz = shl nuw nsw i64 %wide.trip.count1751.i, 2 ; 5 uses
  %i.aea = shl nuw nsw i64 %wide.trip.count1751.i, 4
  %i.aeb = shl nuw nsw i64 %i.acr, 2              ; 3 uses
  %i.aec = add nuw nsw i64 %i.aeb, %i.adz         ; 2 uses
  %i.aed = shl nsw i64 %i.adh, 2
  %i.aee = add i32 %i.n, -2
  %i.aef = shl nuw nsw i64 %wide.trip.count1751.i, 5
  %i.aeg = shl nuw nsw i64 %i.acv, 2              ; 3 uses
  %i.aeh = shl nuw nsw i64 %wide.trip.count1751.i, 2 ; 5 uses
  %i.aei = add nuw nsw i64 %i.aeh, %i.aeg         ; 2 uses
  %i.aej = shl nsw i64 %i.adg, 2
  %i.aek = add i32 %i.n, -4
  %i.ael = shl nuw nsw i64 %i.act, 2              ; 3 uses
  %i.aem = add nuw nsw i64 %i.aeh, %i.ael         ; 2 uses
  %i.aen = shl nuw nsw i64 %i.acr, 2              ; 3 uses
  %i.aeo = add nuw nsw i64 %i.aen, %i.aeh         ; 2 uses
  %min.iters.check579 = icmp ult i32 %i.j, 16
  %stride.check549 = icmp slt i32 %i.acw, 0
  %n.vec581 = and i64 %wide.trip.count1751.i, 2147483640 ; 4 uses
  %i.aep = shl nuw nsw i64 %n.vec581, 5
  %cmp.n596 = icmp eq i64 %n.vec581, %wide.trip.count1751.i
  %min.iters.check506 = icmp ult i32 %i.j, 8
  %stride.check492 = icmp slt i32 %i.acs, 0
  %n.vec508 = and i64 %wide.trip.count1751.i, 2147483640 ; 4 uses
  %i.aeq = shl nuw nsw i64 %n.vec508, 4
  %cmp.n519 = icmp eq i64 %n.vec508, %wide.trip.count1751.i
  %xtraiter862 = and i64 %wide.trip.count1751.i, 1
  %lcmp.mod863.not = icmp eq i64 %xtraiter862, 0
  %i.aer = add nsw i64 %wide.trip.count1751.i, -1
  %min.iters.check459 = icmp ult i32 %i.j, 6
  %n.vec461 = and i64 %wide.trip.count1751.i, 2147483644 ; 4 uses
  %i.aes = shl nuw nsw i64 %n.vec461, 3
  %cmp.n474 = icmp eq i64 %n.vec461, %wide.trip.count1751.i
  %xtraiter864 = and i64 %wide.trip.count1751.i, 3 ; 2 uses
  %lcmp.mod865.not = icmp eq i64 %xtraiter864, 0
  br label %_ZN4ncnn3MatD2Ev.exit1003.i

_ZN4ncnn3MatD2Ev.exit1004.i:                      ; preds = %._crit_edge1337.split.i, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i
  %indvars.iv1735.i = phi i64 [ %i.il, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i ], [ %indvars.iv.next1736.i, %._crit_edge1337.split.i ] ; 2 uses
  %indvars.iv1733.i = phi i32 [ %i.im, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i ], [ %indvars.iv.next1734.i, %._crit_edge1337.split.i ] ; 2 uses
  %indvars.iv1699.i = phi i32 [ %i.ih, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i ], [ %indvars.iv.next1700.i, %._crit_edge1337.split.i ] ; 2 uses
  %indvars.iv1695.i = phi i32 [ %i.ig, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i ], [ %indvars.iv.next1696.i, %._crit_edge1337.split.i ] ; 2 uses
  %indvars.iv1691.i = phi i32 [ %i.ie, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i ], [ %indvars.iv.next1692.i, %._crit_edge1337.split.i ] ; 2 uses
  %indvars.iv1687.i = phi i32 [ %i.ib, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i ], [ %indvars.iv.next1688.i, %._crit_edge1337.split.i ] ; 2 uses
  %i.aet = sext i32 %indvars.iv1687.i to i64
  %i.aeu = shl nsw i64 %i.aet, 2
  %scevgep1689.i = getelementptr i8, ptr %scevgep1686.i, i64 %i.aeu ; 2 uses
  %i.aev = sext i32 %indvars.iv1691.i to i64
  %i.aew = shl nsw i64 %i.aev, 2
  %scevgep1693.i = getelementptr i8, ptr %scevgep1686.i, i64 %i.aew ; 2 uses
  %i.aex = sext i32 %indvars.iv1695.i to i64
  %i.aey = shl nsw i64 %i.aex, 2
  %scevgep1697.i = getelementptr i8, ptr %scevgep1686.i, i64 %i.aey ; 2 uses
  %i.aez = sext i32 %indvars.iv1699.i to i64
  %i.afa = shl nsw i64 %i.aez, 2
  %scevgep1701.i = getelementptr i8, ptr %scevgep1686.i, i64 %i.afa ; 2 uses
  %i.afb = trunc nuw i64 %indvars.iv1735.i to i32 ; 5 uses
  %i.afc = mul i32 %i.hg, %i.afb
  %i.afd = sext i32 %i.afc to i64
  %i.afe = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.afd ; 2 uses
  %i.aff = add i32 %i.afb, 1
  %i.afg = mul i32 %i.aff, %i.hg
  %i.afh = sext i32 %i.afg to i64
  %i.afi = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.afh ; 2 uses
  %i.afj = add i32 %i.afb, 2
  %i.afk = mul i32 %i.afj, %i.hg
  %i.afl = sext i32 %i.afk to i64
  %i.afm = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.afl ; 2 uses
  %i.afn = mul i32 %indvars.iv1733.i, %i.hg
  %i.afo = sext i32 %i.afn to i64
  %i.afp = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.afo ; 2 uses
  %i.afq = lshr i32 %i.afb, 3
  %i.afr = lshr i32 %i.afb, 2
  %i.afs = and i32 %i.afr, 1
  %i.aft = add nuw nsw i32 %i.afs, %i.afq
  %i.afu = zext nneg i32 %i.aft to i64
  %.reass1341.i = mul i64 %factor.op.mul1340.i, %i.afu
  %i.afv = getelementptr inbounds nuw i8, ptr %i.hh, i64 %.reass1341.i ; 4 uses
  br i1 %i.hm, label %.preheader1099.lr.ph.i, label %.preheader1102.i

.preheader1099.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1004.i
  br i1 %i.hn, label %.preheader1099.us.i, label %.preheader1102.thread.i

.preheader1099.us.i:                              ; preds = %.preheader1099.lr.ph.i, %._crit_edge1255.us.i
  %.09211262.us.i = phi i32 [ %i.ajs, %._crit_edge1255.us.i ], [ 0, %.preheader1099.lr.ph.i ]
  %.09251261.us.i = phi ptr [ %i.ajn, %._crit_edge1255.us.i ], [ %i.afv, %.preheader1099.lr.ph.i ]
  %.09361260.us.i = phi ptr [ %i.ajr, %._crit_edge1255.us.i ], [ %i.afp, %.preheader1099.lr.ph.i ] ; 2 uses
  %.09391259.us.i = phi ptr [ %i.ajq, %._crit_edge1255.us.i ], [ %i.afm, %.preheader1099.lr.ph.i ] ; 2 uses
  %.09421258.us.i = phi ptr [ %i.ajp, %._crit_edge1255.us.i ], [ %i.afi, %.preheader1099.lr.ph.i ] ; 2 uses
  %.09451257.us.i = phi ptr [ %i.ajo, %._crit_edge1255.us.i ], [ %i.afe, %.preheader1099.lr.ph.i ] ; 2 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.preheader1099.us.i
  %indvars.iv1703.i = phi i64 [ 0, %.preheader1099.us.i ], [ %indvars.iv.next1704.i, %bb.al ] ; 5 uses
  %.19261253.us.i = phi ptr [ %.09251261.us.i, %.preheader1099.us.i ], [ %i.ajn, %bb.al ] ; 33 uses
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %.09451257.us.i, i64 %indvars.iv1703.i ; 2 uses
  %i.afx = getelementptr inbounds nuw [4 x i8], ptr %.09421258.us.i, i64 %indvars.iv1703.i ; 2 uses
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %.09391259.us.i, i64 %indvars.iv1703.i ; 2 uses
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %.09361260.us.i, i64 %indvars.iv1703.i ; 2 uses
  %i.aga = load float, ptr %i.afw, align 4, !tbaa !45
  store float %i.aga, ptr %.19261253.us.i, align 4, !tbaa !45
  %i.agb = load float, ptr %i.afx, align 4, !tbaa !45
  %i.agc = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 4
  store float %i.agb, ptr %i.agc, align 4, !tbaa !45
  %i.agd = load float, ptr %i.afy, align 4, !tbaa !45
  %i.age = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 8
  store float %i.agd, ptr %i.age, align 4, !tbaa !45
  %i.agf = load float, ptr %i.afz, align 4, !tbaa !45
  %i.agg = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 12
  store float %i.agf, ptr %i.agg, align 4, !tbaa !45
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %i.afw, i64 %i.ho ; 2 uses
  %i.agi = getelementptr inbounds nuw [4 x i8], ptr %i.afx, i64 %i.ho ; 2 uses
  %i.agj = getelementptr inbounds nuw [4 x i8], ptr %i.afy, i64 %i.ho ; 2 uses
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %i.afz, i64 %i.ho ; 2 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 16
  %i.agm = load float, ptr %i.agh, align 4, !tbaa !45
  store float %i.agm, ptr %i.agl, align 4, !tbaa !45
  %i.agn = load float, ptr %i.agi, align 4, !tbaa !45
  %i.ago = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 20
  store float %i.agn, ptr %i.ago, align 4, !tbaa !45
  %i.agp = load float, ptr %i.agj, align 4, !tbaa !45
  %i.agq = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 24
  store float %i.agp, ptr %i.agq, align 4, !tbaa !45
  %i.agr = load float, ptr %i.agk, align 4, !tbaa !45
  %i.ags = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 28
  store float %i.agr, ptr %i.ags, align 4, !tbaa !45
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %i.agh, i64 %i.ho ; 2 uses
  %i.agu = getelementptr inbounds nuw [4 x i8], ptr %i.agi, i64 %i.ho ; 2 uses
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %i.agj, i64 %i.ho ; 2 uses
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %i.agk, i64 %i.ho ; 2 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 32
  %i.agy = load float, ptr %i.agt, align 4, !tbaa !45
  store float %i.agy, ptr %i.agx, align 4, !tbaa !45
  %i.agz = load float, ptr %i.agu, align 4, !tbaa !45
  %i.aha = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 36
  store float %i.agz, ptr %i.aha, align 4, !tbaa !45
  %i.ahb = load float, ptr %i.agv, align 4, !tbaa !45
  %i.ahc = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 40
  store float %i.ahb, ptr %i.ahc, align 4, !tbaa !45
  %i.ahd = load float, ptr %i.agw, align 4, !tbaa !45
  %i.ahe = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 44
  store float %i.ahd, ptr %i.ahe, align 4, !tbaa !45
  %i.ahf = getelementptr inbounds nuw [4 x i8], ptr %i.agt, i64 %i.ho ; 2 uses
  %i.ahg = getelementptr inbounds nuw [4 x i8], ptr %i.agu, i64 %i.ho ; 2 uses
  %i.ahh = getelementptr inbounds nuw [4 x i8], ptr %i.agv, i64 %i.ho ; 2 uses
  %i.ahi = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %i.ho ; 2 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 48
  %i.ahk = load float, ptr %i.ahf, align 4, !tbaa !45
  store float %i.ahk, ptr %i.ahj, align 4, !tbaa !45
  %i.ahl = load float, ptr %i.ahg, align 4, !tbaa !45
  %i.ahm = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 52
  store float %i.ahl, ptr %i.ahm, align 4, !tbaa !45
  %i.ahn = load float, ptr %i.ahh, align 4, !tbaa !45
  %i.aho = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 56
  store float %i.ahn, ptr %i.aho, align 4, !tbaa !45
  %i.ahp = load float, ptr %i.ahi, align 4, !tbaa !45
  %i.ahq = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 60
  store float %i.ahp, ptr %i.ahq, align 4, !tbaa !45
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %i.ahf, i64 %i.ho ; 2 uses
  %i.ahs = getelementptr inbounds nuw [4 x i8], ptr %i.ahg, i64 %i.ho ; 2 uses
  %i.aht = getelementptr inbounds nuw [4 x i8], ptr %i.ahh, i64 %i.ho ; 2 uses
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr %i.ahi, i64 %i.ho ; 2 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 64
  %i.ahw = load float, ptr %i.ahr, align 4, !tbaa !45
  store float %i.ahw, ptr %i.ahv, align 4, !tbaa !45
  %i.ahx = load float, ptr %i.ahs, align 4, !tbaa !45
  %i.ahy = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 68
  store float %i.ahx, ptr %i.ahy, align 4, !tbaa !45
  %i.ahz = load float, ptr %i.aht, align 4, !tbaa !45
  %i.aia = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 72
  store float %i.ahz, ptr %i.aia, align 4, !tbaa !45
  %i.aib = load float, ptr %i.ahu, align 4, !tbaa !45
  %i.aic = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 76
  store float %i.aib, ptr %i.aic, align 4, !tbaa !45
  %i.aid = getelementptr inbounds nuw [4 x i8], ptr %i.ahr, i64 %i.ho ; 2 uses
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr %i.ahs, i64 %i.ho ; 2 uses
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %i.aht, i64 %i.ho ; 2 uses
  %i.aig = getelementptr inbounds nuw [4 x i8], ptr %i.ahu, i64 %i.ho ; 2 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 80
  %i.aii = load float, ptr %i.aid, align 4, !tbaa !45
  store float %i.aii, ptr %i.aih, align 4, !tbaa !45
  %i.aij = load float, ptr %i.aie, align 4, !tbaa !45
  %i.aik = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 84
  store float %i.aij, ptr %i.aik, align 4, !tbaa !45
  %i.ail = load float, ptr %i.aif, align 4, !tbaa !45
  %i.aim = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 88
  store float %i.ail, ptr %i.aim, align 4, !tbaa !45
  %i.ain = load float, ptr %i.aig, align 4, !tbaa !45
  %i.aio = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 92
  store float %i.ain, ptr %i.aio, align 4, !tbaa !45
  %i.aip = getelementptr inbounds nuw [4 x i8], ptr %i.aid, i64 %i.ho ; 2 uses
  %i.aiq = getelementptr inbounds nuw [4 x i8], ptr %i.aie, i64 %i.ho ; 2 uses
  %i.air = getelementptr inbounds nuw [4 x i8], ptr %i.aif, i64 %i.ho ; 2 uses
  %i.ais = getelementptr inbounds nuw [4 x i8], ptr %i.aig, i64 %i.ho ; 2 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 96
  %i.aiu = load float, ptr %i.aip, align 4, !tbaa !45
  store float %i.aiu, ptr %i.ait, align 4, !tbaa !45
  %i.aiv = load float, ptr %i.aiq, align 4, !tbaa !45
  %i.aiw = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 100
  store float %i.aiv, ptr %i.aiw, align 4, !tbaa !45
  %i.aix = load float, ptr %i.air, align 4, !tbaa !45
  %i.aiy = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 104
  store float %i.aix, ptr %i.aiy, align 4, !tbaa !45
  %i.aiz = load float, ptr %i.ais, align 4, !tbaa !45
  %i.aja = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 108
  store float %i.aiz, ptr %i.aja, align 4, !tbaa !45
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %i.aip, i64 %i.ho
  %i.ajc = getelementptr inbounds nuw [4 x i8], ptr %i.aiq, i64 %i.ho
  %i.ajd = getelementptr inbounds nuw [4 x i8], ptr %i.air, i64 %i.ho
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr %i.ais, i64 %i.ho
  %i.ajf = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 112
  %i.ajg = load float, ptr %i.ajb, align 4, !tbaa !45
  store float %i.ajg, ptr %i.ajf, align 4, !tbaa !45
  %i.ajh = load float, ptr %i.ajc, align 4, !tbaa !45
  %i.aji = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 116
  store float %i.ajh, ptr %i.aji, align 4, !tbaa !45
end_hunk_1
begin_hunk_2_@_ZN4ncnn21Convolution1D_x86_fma15create_pipelineERKNS_6OptionE:bb.a
  %.2944.lcssa.i = phi ptr [ %.1943.lcssa.i, %.preheader1101.i ], [ %i.apc, %._crit_edge1311.us.i ] ; 6 uses
  %.2941.lcssa.i = phi ptr [ %.1940.lcssa.i, %.preheader1101.i ], [ %i.apd, %._crit_edge1311.us.i ] ; 6 uses
  %.2938.lcssa.i = phi ptr [ %.1937.lcssa.i, %.preheader1101.i ], [ %i.ape, %._crit_edge1311.us.i ] ; 6 uses
  %.6931.lcssa.i = phi ptr [ %.3928.lcssa.i, %.preheader1101.i ], [ %.lcssa255, %._crit_edge1311.us.i ]
  %.2923.lcssa.i = phi i32 [ %.1922.lcssa.i, %.preheader1101.i ], [ %i.apf, %._crit_edge1311.us.i ] ; 2 uses
  %i.api = icmp sge i32 %.2923.lcssa.i, %i.n
  %brmerge1467.i = or i1 %i.hv, %i.api
  br i1 %brmerge1467.i, label %._crit_edge1337.split.i, label %.preheader1096.i.preheader

.preheader1096.i.preheader:                       ; preds = %.preheader1100.i
  %scevgep337 = getelementptr i8, ptr %.2938.lcssa.i, i64 %i.ir
  %scevgep338 = getelementptr i8, ptr %.2941.lcssa.i, i64 %i.ir
  %scevgep339 = getelementptr i8, ptr %.2944.lcssa.i, i64 %i.ir
  %scevgep340 = getelementptr i8, ptr %.2947.lcssa.i, i64 %i.ir
  br label %.preheader1096.i

.preheader1096.i:                                 ; preds = %.preheader1096.i.preheader, %._crit_edge1333.i
  %.39241336.i = phi i32 [ %i.aqf, %._crit_edge1333.i ], [ %.2923.lcssa.i, %.preheader1096.i.preheader ]
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
  %i.apj = getelementptr i8, ptr %.99341335.i, i64 %i.iy ; 2 uses
  br label %vector.body360

vector.body360:                                   ; preds = %vector.body360, %vector.ph358
  %index361 = phi i64 [ 0, %vector.ph358 ], [ %index.next368, %vector.body360 ] ; 6 uses
  %i.apk = shl i64 %index361, 4
  %next.gep362 = getelementptr i8, ptr %.99341335.i, i64 %i.apk
  %i.apl = getelementptr inbounds nuw [4 x i8], ptr %.2947.lcssa.i, i64 %index361
  %i.apm = getelementptr inbounds nuw [4 x i8], ptr %.2944.lcssa.i, i64 %index361
  %i.apn = getelementptr inbounds nuw [4 x i8], ptr %.2941.lcssa.i, i64 %index361
  %i.apo = getelementptr inbounds nuw [4 x i8], ptr %.2938.lcssa.i, i64 %index361
  %wide.load363 = load <8 x float>, ptr %i.apl, align 4, !tbaa !45, !alias.scope !219
  %wide.load364 = load <8 x float>, ptr %i.apm, align 4, !tbaa !45, !alias.scope !220
  %wide.load365 = load <8 x float>, ptr %i.apn, align 4, !tbaa !45, !alias.scope !221
  %wide.load366 = load <8 x float>, ptr %i.apo, align 4, !tbaa !45, !alias.scope !222
  %i.app = shufflevector <8 x float> %wide.load363, <8 x float> %wide.load364, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.apq = shufflevector <8 x float> %wide.load365, <8 x float> %wide.load366, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec367 = shufflevector <16 x float> %i.app, <16 x float> %i.apq, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec367, ptr %next.gep362, align 4, !tbaa !45, !alias.scope !223, !noalias !224
  %index.next368 = add nuw i64 %index361, 8       ; 2 uses
  %i.apr = icmp eq i64 %index.next368, %n.vec359
  br i1 %i.apr, label %middle.block369, label %vector.body360, !llvm.loop !120

middle.block369:                                  ; preds = %vector.body360
  br i1 %cmp.n370, label %._crit_edge1333.i, label %scalar.ph356.preheader

scalar.ph356.preheader:                           ; preds = %vector.memcheck335, %.preheader1096.i, %middle.block369
  %indvars.iv1727.i.ph = phi i64 [ 0, %vector.memcheck335 ], [ 0, %.preheader1096.i ], [ %n.vec359, %middle.block369 ] ; 7 uses
  %.109351331.i.ph = phi ptr [ %.99341335.i, %vector.memcheck335 ], [ %.99341335.i, %.preheader1096.i ], [ %i.apj, %middle.block369 ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph356.prol.loopexit, label %scalar.ph356.prol

scalar.ph356.prol:                                ; preds = %scalar.ph356.preheader
  %i.aps = getelementptr inbounds nuw [4 x i8], ptr %.2947.lcssa.i, i64 %indvars.iv1727.i.ph
  %i.apt = getelementptr inbounds nuw [4 x i8], ptr %.2944.lcssa.i, i64 %indvars.iv1727.i.ph
  %i.apu = getelementptr inbounds nuw [4 x i8], ptr %.2941.lcssa.i, i64 %indvars.iv1727.i.ph
  %i.apv = getelementptr inbounds nuw [4 x i8], ptr %.2938.lcssa.i, i64 %indvars.iv1727.i.ph
  %i.apw = load float, ptr %i.aps, align 4, !tbaa !45
  store float %i.apw, ptr %.109351331.i.ph, align 4, !tbaa !45
  %i.apx = load float, ptr %i.apt, align 4, !tbaa !45
  %i.apy = getelementptr inbounds nuw i8, ptr %.109351331.i.ph, i64 4
  store float %i.apx, ptr %i.apy, align 4, !tbaa !45
  %i.apz = load float, ptr %i.apu, align 4, !tbaa !45
  %i.aqa = getelementptr inbounds nuw i8, ptr %.109351331.i.ph, i64 8
  store float %i.apz, ptr %i.aqa, align 4, !tbaa !45
  %i.aqb = load float, ptr %i.apv, align 4, !tbaa !45
  %i.aqc = getelementptr inbounds nuw i8, ptr %.109351331.i.ph, i64 12
  store float %i.aqb, ptr %i.aqc, align 4, !tbaa !45
  %i.aqd = getelementptr inbounds nuw i8, ptr %.109351331.i.ph, i64 16 ; 2 uses
  %indvars.iv.next1728.i.prol = or disjoint i64 %indvars.iv1727.i.ph, 1
  br label %scalar.ph356.prol.loopexit

scalar.ph356.prol.loopexit:                       ; preds = %scalar.ph356.prol, %scalar.ph356.preheader
  %.lcssa831.unr = phi ptr [ poison, %scalar.ph356.preheader ], [ %i.aqd, %scalar.ph356.prol ]
  %indvars.iv1727.i.unr = phi i64 [ %indvars.iv1727.i.ph, %scalar.ph356.preheader ], [ %indvars.iv.next1728.i.prol, %scalar.ph356.prol ]
  %.109351331.i.unr = phi ptr [ %.109351331.i.ph, %scalar.ph356.preheader ], [ %i.aqd, %scalar.ph356.prol ]
  %i.aqe = icmp eq i64 %indvars.iv1727.i.ph, %i.iz
  br i1 %i.aqe, label %._crit_edge1333.i, label %scalar.ph356

._crit_edge1333.i:                                ; preds = %scalar.ph356.prol.loopexit, %scalar.ph356, %middle.block369
  %.lcssa261 = phi ptr [ %i.apj, %middle.block369 ], [ %.lcssa831.unr, %scalar.ph356.prol.loopexit ], [ %i.ard, %scalar.ph356 ]
  %i.aqf = add nuw nsw i32 %.39241336.i, 1        ; 2 uses
  %exitcond1732.not.i = icmp eq i32 %i.aqf, %i.n
  br i1 %exitcond1732.not.i, label %._crit_edge1337.split.i, label %.preheader1096.i, !llvm.loop !121

scalar.ph356:                                     ; preds = %scalar.ph356.prol.loopexit, %scalar.ph356
  %indvars.iv1727.i = phi i64 [ %indvars.iv.next1728.i.1, %scalar.ph356 ], [ %indvars.iv1727.i.unr, %scalar.ph356.prol.loopexit ] ; 6 uses
  %.109351331.i = phi ptr [ %i.ard, %scalar.ph356 ], [ %.109351331.i.unr, %scalar.ph356.prol.loopexit ] ; 9 uses
  %i.aqg = getelementptr inbounds nuw [4 x i8], ptr %.2947.lcssa.i, i64 %indvars.iv1727.i
  %i.aqh = getelementptr inbounds nuw [4 x i8], ptr %.2944.lcssa.i, i64 %indvars.iv1727.i
  %i.aqi = getelementptr inbounds nuw [4 x i8], ptr %.2941.lcssa.i, i64 %indvars.iv1727.i
  %i.aqj = getelementptr inbounds nuw [4 x i8], ptr %.2938.lcssa.i, i64 %indvars.iv1727.i
  %i.aqk = load float, ptr %i.aqg, align 4, !tbaa !45
  store float %i.aqk, ptr %.109351331.i, align 4, !tbaa !45
  %i.aql = load float, ptr %i.aqh, align 4, !tbaa !45
  %i.aqm = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 4
  store float %i.aql, ptr %i.aqm, align 4, !tbaa !45
  %i.aqn = load float, ptr %i.aqi, align 4, !tbaa !45
  %i.aqo = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 8
  store float %i.aqn, ptr %i.aqo, align 4, !tbaa !45
  %i.aqp = load float, ptr %i.aqj, align 4, !tbaa !45
  %i.aqq = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 12
  store float %i.aqp, ptr %i.aqq, align 4, !tbaa !45
  %i.aqr = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 16
  %indvars.iv.next1728.i = add nuw nsw i64 %indvars.iv1727.i, 1 ; 4 uses
  %i.aqs = getelementptr inbounds nuw [4 x i8], ptr %.2947.lcssa.i, i64 %indvars.iv.next1728.i
  %i.aqt = getelementptr inbounds nuw [4 x i8], ptr %.2944.lcssa.i, i64 %indvars.iv.next1728.i
  %i.aqu = getelementptr inbounds nuw [4 x i8], ptr %.2941.lcssa.i, i64 %indvars.iv.next1728.i
  %i.aqv = getelementptr inbounds nuw [4 x i8], ptr %.2938.lcssa.i, i64 %indvars.iv.next1728.i
  %i.aqw = load float, ptr %i.aqs, align 4, !tbaa !45
  store float %i.aqw, ptr %i.aqr, align 4, !tbaa !45
  %i.aqx = load float, ptr %i.aqt, align 4, !tbaa !45
  %i.aqy = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 20
  store float %i.aqx, ptr %i.aqy, align 4, !tbaa !45
  %i.aqz = load float, ptr %i.aqu, align 4, !tbaa !45
  %i.ara = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 24
  store float %i.aqz, ptr %i.ara, align 4, !tbaa !45
  %i.arb = load float, ptr %i.aqv, align 4, !tbaa !45
  %i.arc = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 28
  store float %i.arb, ptr %i.arc, align 4, !tbaa !45
  %i.ard = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 32 ; 2 uses
  %indvars.iv.next1728.i.1 = add nuw nsw i64 %indvars.iv1727.i, 2 ; 2 uses
  %exitcond1731.not.i.1 = icmp eq i64 %indvars.iv.next1728.i.1, %wide.trip.count1706.i
  br i1 %exitcond1731.not.i.1, label %._crit_edge1333.i, label %scalar.ph356, !llvm.loop !122

._crit_edge1337.split.i:                          ; preds = %._crit_edge1333.i, %.preheader1100.i, %.preheader1097.lr.ph.i
  %indvars.iv.next1736.i = add nuw nsw i64 %indvars.iv1735.i, 4 ; 3 uses
  %i.are = icmp slt i64 %indvars.iv.next1736.i, %invariant.op.i
  %indvars.iv.next1688.i = add i32 %indvars.iv1687.i, %i.ic
  %indvars.iv.next1692.i = add i32 %indvars.iv1691.i, %i.ic
  %indvars.iv.next1696.i = add i32 %indvars.iv1695.i, %i.ic
  %indvars.iv.next1700.i = add i32 %indvars.iv1699.i, %i.ic
  %indvars.iv.next1734.i = add i32 %indvars.iv1733.i, 4
  br i1 %i.are, label %_ZN4ncnn3MatD2Ev.exit1004.i, label %.preheader1095.loopexit.i, !llvm.loop !123

.preheader1087.loopexit.i:                        ; preds = %._crit_edge1400.split.i
  %i.arf = trunc nuw nsw i64 %indvars.iv.next1774.i to i32
  br label %.preheader1087.i

.preheader1087.i:                                 ; preds = %.preheader1087.loopexit.i, %.preheader1095.i
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader1095.i ], [ %i.arf, %.preheader1087.loopexit.i ] ; 4 uses
  %i.arg = icmp slt i32 %.2.lcssa.i, %i.m
  br i1 %i.arg, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i, label %_ZN4ncnnL37convolution1d_transform_kernel_packedERKNS_3MatERS0_iii.exit

_ZN4ncnn3MatD2Ev.exit.lr.ph.i:                    ; preds = %.preheader1087.i
  %i.arh = load ptr, ptr %i.o, align 8, !tbaa !19 ; 17 uses
  %i.ari = mul i32 %i.n, %i.j                     ; 3 uses
  %i.arj = load ptr, ptr %i.p, align 8, !tbaa !19, !noalias !225
  %i.ark = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.arl = load i64, ptr %i.ark, align 8, !tbaa !20, !noalias !225
  %i.arm = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.arn = load i64, ptr %i.arm, align 8, !tbaa !44, !noalias !225
  %factor.op.mul1462.i = mul i64 %i.arn, %i.arl
  %i.aro = icmp sgt i32 %i.n, 7
  %i.arp = icmp sgt i32 %i.j, 0                   ; 3 uses
  %i.arq = sext i32 %i.j to i64                   ; 43 uses
  %i.arr = shl i32 %i.j, 3                        ; 2 uses
  %i.ars = sext i32 %i.arr to i64                 ; 3 uses
  %i.art = shl i32 %i.j, 2                        ; 2 uses
  %i.aru = sext i32 %i.art to i64                 ; 3 uses
  %i.arv = shl i32 %i.j, 1                        ; 2 uses
  %i.arw = sext i32 %i.arv to i64                 ; 2 uses
  %i.arx = icmp slt i32 %i.j, 1
  %i.ary = add i32 %i.n, -8                       ; 3 uses
  %i.arz = lshr i32 %i.ary, 1
  %i.asa = and i32 %i.arz, 2147483644
  %narrow1836.i = add nuw i32 %i.asa, 4
  %i.asb = zext i32 %narrow1836.i to i64
  %i.asc = mul nsw i64 %i.asb, %i.ars
  %scevgep1776.i = getelementptr i8, ptr %i.arh, i64 %i.asc
  %i.asd = mul i32 %i.ari, %.2.lcssa.i
  %i.ase = and i32 %i.ary, -8
  %i.asf = add nuw i32 %i.ase, 8                  ; 4 uses
  %i.asg = add i32 %i.n, -4
  %i.ash = sext i32 %.2.lcssa.i to i64
  %wide.trip.count1808.i = sext i32 %i.m to i64
  %i.asi = or disjoint i32 %i.asf, 3
  %i.asj = icmp slt i32 %i.asi, %i.n
  %wide.trip.count1784.i = zext i32 %i.j to i64   ; 27 uses
  %i.ask = shl nuw nsw i64 %wide.trip.count1784.i, 3
  %i.asl = shl nuw nsw i64 %i.arq, 2              ; 2 uses
  %i.asm = shl nuw nsw i64 %wide.trip.count1784.i, 2 ; 2 uses
  %i.asn = shl nsw i64 %i.arw, 2
  %i.aso = add i32 %i.n, -2
  %i.asp = shl nuw nsw i64 %wide.trip.count1784.i, 4
  %i.asq = mul nsw i64 %i.arq, 12                 ; 2 uses
  %i.asr = shl nuw nsw i64 %wide.trip.count1784.i, 2 ; 4 uses
  %i.ass = shl nsw i64 %i.aru, 2
  %i.ast = add i32 %i.n, -4
  %i.asu = shl nsw i64 %i.arq, 3                  ; 2 uses
  %i.asv = shl nuw nsw i64 %i.arq, 2              ; 2 uses
  %i.asw = shl nuw nsw i64 %wide.trip.count1784.i, 5
  %i.asx = mul nsw i64 %i.arq, 28                 ; 2 uses
  %scevgep707 = getelementptr i8, ptr %i.arh, i64 %i.asx
  %i.asy = mul i32 %.2.lcssa.i, %i.j
  %i.asz = mul i32 %i.asy, %i.n
  %i.ata = mul i32 %i.j, %i.n
  %i.atb = lshr i32 %i.ary, 3
  %i.atc = zext nneg i32 %i.atb to i64
  %i.atd = mul nsw i64 %i.atc, %i.ars
  %i.ate = shl nsw i64 %i.atd, 2                  ; 8 uses
  %i.atf = shl nuw nsw i64 %wide.trip.count1784.i, 2 ; 8 uses
  %i.atg = getelementptr i8, ptr %i.arh, i64 %i.ate
  %i.ath = getelementptr i8, ptr %i.atg, i64 %i.asx
  %scevgep709 = getelementptr i8, ptr %i.ath, i64 %i.atf
  %i.ati = mul nsw i64 %i.arq, 24                 ; 2 uses
  %scevgep711 = getelementptr i8, ptr %i.arh, i64 %i.ati
  %i.atj = getelementptr i8, ptr %i.arh, i64 %i.ate
  %i.atk = getelementptr i8, ptr %i.atj, i64 %i.ati
  %scevgep713 = getelementptr i8, ptr %i.atk, i64 %i.atf
  %i.atl = mul nsw i64 %i.arq, 20                 ; 2 uses
  %scevgep715 = getelementptr i8, ptr %i.arh, i64 %i.atl
  %i.atm = getelementptr i8, ptr %i.arh, i64 %i.ate
  %i.atn = getelementptr i8, ptr %i.atm, i64 %i.atl
  %scevgep717 = getelementptr i8, ptr %i.atn, i64 %i.atf
  %i.ato = shl nsw i64 %i.arq, 4                  ; 2 uses
  %scevgep719 = getelementptr i8, ptr %i.arh, i64 %i.ato
  %i.atp = getelementptr i8, ptr %i.arh, i64 %i.ate
  %i.atq = getelementptr i8, ptr %i.atp, i64 %i.ato
  %scevgep721 = getelementptr i8, ptr %i.atq, i64 %i.atf
  %i.atr = mul nsw i64 %i.arq, 12                 ; 2 uses
  %scevgep723 = getelementptr i8, ptr %i.arh, i64 %i.atr
  %i.ats = getelementptr i8, ptr %i.arh, i64 %i.ate
  %i.att = getelementptr i8, ptr %i.ats, i64 %i.atr
  %scevgep725 = getelementptr i8, ptr %i.att, i64 %i.atf
  %i.atu = shl nsw i64 %i.arq, 3                  ; 2 uses
  %scevgep727 = getelementptr i8, ptr %i.arh, i64 %i.atu
  %i.atv = getelementptr i8, ptr %i.arh, i64 %i.ate
  %i.atw = getelementptr i8, ptr %i.atv, i64 %i.atu
  %scevgep729 = getelementptr i8, ptr %i.atw, i64 %i.atf
  %i.atx = shl nuw nsw i64 %i.arq, 2              ; 2 uses
  %scevgep731 = getelementptr i8, ptr %i.arh, i64 %i.atx
  %i.aty = getelementptr i8, ptr %i.arh, i64 %i.ate
  %i.atz = getelementptr i8, ptr %i.aty, i64 %i.atx
  %scevgep733 = getelementptr i8, ptr %i.atz, i64 %i.atf
  %i.aua = getelementptr i8, ptr %i.arh, i64 %i.ate
  %scevgep735 = getelementptr i8, ptr %i.aua, i64 %i.atf
  %min.iters.check770 = icmp ult i32 %i.j, 16
  %stride.check740 = icmp slt i32 %i.arr, 0
  %n.vec772 = and i64 %wide.trip.count1784.i, 2147483640 ; 4 uses
  %i.aub = shl nuw nsw i64 %n.vec772, 5
  %cmp.n787 = icmp eq i64 %n.vec772, %wide.trip.count1784.i
  %min.iters.check689 = icmp ult i32 %i.j, 8
  %stride.check675 = icmp slt i32 %i.art, 0
  %n.vec691 = and i64 %wide.trip.count1784.i, 2147483640 ; 4 uses
  %i.auc = shl nuw nsw i64 %n.vec691, 4
  %cmp.n702 = icmp eq i64 %n.vec691, %wide.trip.count1784.i
  %xtraiter866 = and i64 %wide.trip.count1784.i, 1
  %lcmp.mod867.not = icmp eq i64 %xtraiter866, 0
  %i.aud = add nsw i64 %wide.trip.count1784.i, -1
  %min.iters.check641 = icmp ult i32 %i.j, 8
  %stride.check635 = icmp slt i32 %i.arv, 0
  %n.vec643 = and i64 %wide.trip.count1784.i, 2147483644 ; 4 uses
  %i.aue = shl nuw nsw i64 %n.vec643, 3
  %cmp.n656 = icmp eq i64 %n.vec643, %wide.trip.count1784.i
  %xtraiter869 = and i64 %wide.trip.count1784.i, 3 ; 2 uses
  %lcmp.mod870.not = icmp eq i64 %xtraiter869, 0
  %min.iters.check603 = icmp ult i32 %i.j, 8
  %min.iters.check604 = icmp ult i32 %i.j, 32
  %i.auf = and i64 %wide.trip.count1784.i, 24
  %n.vec606 = and i64 %wide.trip.count1784.i, 2147483616 ; 5 uses
  %i.aug = shl nuw nsw i64 %n.vec606, 2
  %cmp.n616 = icmp eq i64 %n.vec606, %wide.trip.count1784.i
  %min.epilog.iters.check = icmp eq i64 %i.auf, 0
  %n.vec617 = and i64 %wide.trip.count1784.i, 2147483640 ; 4 uses
  %i.auh = shl nuw nsw i64 %n.vec617, 2
  %cmp.n622 = icmp eq i64 %n.vec617, %wide.trip.count1784.i
  %xtraiter872 = and i64 %wide.trip.count1784.i, 7 ; 2 uses
  %lcmp.mod873.not = icmp eq i64 %xtraiter872, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i

_ZN4ncnn3MatD2Ev.exit1003.i:                      ; preds = %._crit_edge1400.split.i, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i
  %indvars.iv1773.i = phi i64 [ %i.adu, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i ], [ %indvars.iv.next1774.i, %._crit_edge1400.split.i ] ; 2 uses
  %indvars.iv1745.i = phi i32 [ %i.adq, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i ], [ %indvars.iv.next1746.i, %._crit_edge1400.split.i ] ; 2 uses
  %indvars.iv1741.i = phi i32 [ %i.ado, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i ], [ %indvars.iv.next1742.i, %._crit_edge1400.split.i ] ; 2 uses
  %i.aui = phi i32 [ %i.acg, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i ], [ %i.bei, %._crit_edge1400.split.i ]
  %i.auj = sext i32 %indvars.iv1741.i to i64
  %i.auk = shl nsw i64 %i.auj, 2
  %scevgep1743.i = getelementptr i8, ptr %scevgep1740.i, i64 %i.auk ; 2 uses
  %i.aul = sext i32 %indvars.iv1745.i to i64
  %i.aum = shl nsw i64 %i.aul, 2
  %scevgep1747.i = getelementptr i8, ptr %scevgep1740.i, i64 %i.aum ; 2 uses
  %i.aun = trunc i64 %indvars.iv1773.i to i32     ; 4 uses
  %i.auo = mul i32 %i.acj, %i.aun
  %i.aup = sext i32 %i.auo to i64
  %i.auq = getelementptr inbounds [4 x i8], ptr %i.aci, i64 %i.aup ; 2 uses
  %i.aur = mul i32 %i.aui, %i.acj
  %i.aus = sext i32 %i.aur to i64
  %i.aut = getelementptr inbounds [4 x i8], ptr %i.aci, i64 %i.aus ; 2 uses
  %i.auu = lshr i32 %i.aun, 3
  %i.auv = lshr i32 %i.aun, 2
  %i.auw = and i32 %i.auv, 1
  %i.aux = add nuw nsw i32 %i.auw, %i.auu
  %i.auy = lshr i32 %i.aun, 1
  %i.auz = and i32 %i.auy, 1
  %i.ava = add nuw nsw i32 %i.aux, %i.auz
  %i.avb = zext nneg i32 %i.ava to i64
  %.reass1404.i = mul i64 %factor.op.mul1403.i, %i.avb
  %i.avc = getelementptr inbounds nuw i8, ptr %i.ack, i64 %.reass1404.i ; 4 uses
  br i1 %i.acp, label %.preheader1091.lr.ph.i, label %.preheader1094.i

.preheader1091.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1003.i
  br i1 %i.acq, label %.preheader1091.us.i, label %.preheader1094.thread.i

.preheader1091.us.i:                              ; preds = %.preheader1091.lr.ph.i, %._crit_edge1344.us.i
  %.08621349.us.i = phi i32 [ %i.axb, %._crit_edge1344.us.i ], [ 0, %.preheader1091.lr.ph.i ]
  %.08661348.us.i = phi ptr [ %i.awy, %._crit_edge1344.us.i ], [ %i.avc, %.preheader1091.lr.ph.i ]
  %.08751347.us.i = phi ptr [ %i.axa, %._crit_edge1344.us.i ], [ %i.aut, %.preheader1091.lr.ph.i ] ; 2 uses
  %.08781346.us.i = phi ptr [ %i.awz, %._crit_edge1344.us.i ], [ %i.auq, %.preheader1091.lr.ph.i ] ; 2 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.preheader1091.us.i
  %indvars.iv1748.i = phi i64 [ 0, %.preheader1091.us.i ], [ %indvars.iv.next1749.i, %bb.an ] ; 3 uses
  %.18671342.us.i = phi ptr [ %.08661348.us.i, %.preheader1091.us.i ], [ %i.awy, %bb.an ] ; 17 uses
  %i.avd = getelementptr inbounds nuw [4 x i8], ptr %.08781346.us.i, i64 %indvars.iv1748.i ; 8 uses
  %i.ave = getelementptr inbounds nuw [4 x i8], ptr %.08751347.us.i, i64 %indvars.iv1748.i ; 8 uses
  %i.avf = load float, ptr %i.avd, align 4, !tbaa !45
  store float %i.avf, ptr %.18671342.us.i, align 4, !tbaa !45
  %i.avg = getelementptr inbounds nuw [4 x i8], ptr %i.avd, i64 %i.acr
  %i.avh = load float, ptr %i.avg, align 4, !tbaa !45
  %i.avi = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 4
  store float %i.avh, ptr %i.avi, align 4, !tbaa !45
  %i.avj = getelementptr inbounds nuw [4 x i8], ptr %i.avd, i64 %i.act
  %i.avk = load float, ptr %i.avj, align 4, !tbaa !45
  %i.avl = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 8
  store float %i.avk, ptr %i.avl, align 4, !tbaa !45
  %i.avm = getelementptr inbounds nuw [4 x i8], ptr %i.avd, i64 %i.acv
  %i.avn = load float, ptr %i.avm, align 4, !tbaa !45
  %i.avo = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 12
  store float %i.avn, ptr %i.avo, align 4, !tbaa !45
  %i.avp = getelementptr inbounds nuw [4 x i8], ptr %i.avd, i64 %i.acx
  %i.avq = load float, ptr %i.avp, align 4, !tbaa !45
  %i.avr = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 16
  store float %i.avq, ptr %i.avr, align 4, !tbaa !45
  %i.avs = getelementptr inbounds nuw [4 x i8], ptr %i.avd, i64 %i.acz
  %i.avt = load float, ptr %i.avs, align 4, !tbaa !45
  %i.avu = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 20
  store float %i.avt, ptr %i.avu, align 4, !tbaa !45
  %i.avv = getelementptr inbounds nuw [4 x i8], ptr %i.avd, i64 %i.adb
  %i.avw = load float, ptr %i.avv, align 4, !tbaa !45
  %i.avx = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 24
  store float %i.avw, ptr %i.avx, align 4, !tbaa !45
  %i.avy = getelementptr inbounds nuw [4 x i8], ptr %i.avd, i64 %i.add
  %i.avz = load float, ptr %i.avy, align 4, !tbaa !45
  %i.awa = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 28
  store float %i.avz, ptr %i.awa, align 4, !tbaa !45
  %i.awb = load float, ptr %i.ave, align 4, !tbaa !45
  %i.awc = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 32
  store float %i.awb, ptr %i.awc, align 4, !tbaa !45
  %i.awd = getelementptr inbounds nuw [4 x i8], ptr %i.ave, i64 %i.acr
  %i.awe = load float, ptr %i.awd, align 4, !tbaa !45
  %i.awf = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 36
  store float %i.awe, ptr %i.awf, align 4, !tbaa !45
  %i.awg = getelementptr inbounds nuw [4 x i8], ptr %i.ave, i64 %i.act
  %i.awh = load float, ptr %i.awg, align 4, !tbaa !45
  %i.awi = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 40
  store float %i.awh, ptr %i.awi, align 4, !tbaa !45
  %i.awj = getelementptr inbounds nuw [4 x i8], ptr %i.ave, i64 %i.acv
  %i.awk = load float, ptr %i.awj, align 4, !tbaa !45
  %i.awl = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 44
  store float %i.awk, ptr %i.awl, align 4, !tbaa !45
  %i.awm = getelementptr inbounds nuw [4 x i8], ptr %i.ave, i64 %i.acx
  %i.awn = load float, ptr %i.awm, align 4, !tbaa !45
  %i.awo = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 48
  store float %i.awn, ptr %i.awo, align 4, !tbaa !45
  %i.awp = getelementptr inbounds nuw [4 x i8], ptr %i.ave, i64 %i.acz
  %i.awq = load float, ptr %i.awp, align 4, !tbaa !45
  %i.awr = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 52
  store float %i.awq, ptr %i.awr, align 4, !tbaa !45
  %i.aws = getelementptr inbounds nuw [4 x i8], ptr %i.ave, i64 %i.adb
  %i.awt = load float, ptr %i.aws, align 4, !tbaa !45
  %i.awu = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 56
  store float %i.awt, ptr %i.awu, align 4, !tbaa !45
  %i.awv = getelementptr inbounds nuw [4 x i8], ptr %i.ave, i64 %i.add
  %i.aww = load float, ptr %i.awv, align 4, !tbaa !45
  %i.awx = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 60
  store float %i.aww, ptr %i.awx, align 4, !tbaa !45
  %i.awy = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 64 ; 3 uses
  %indvars.iv.next1749.i = add nuw nsw i64 %indvars.iv1748.i, 1 ; 2 uses
  %exitcond1752.not.i = icmp eq i64 %indvars.iv.next1749.i, %wide.trip.count1751.i
  br i1 %exitcond1752.not.i, label %._crit_edge1344.us.i, label %bb.an, !llvm.loop !126

._crit_edge1344.us.i:                             ; preds = %bb.an
  %i.awz = getelementptr inbounds nuw [4 x i8], ptr %.08781346.us.i, i64 %i.adf ; 2 uses
  %i.axa = getelementptr inbounds nuw [4 x i8], ptr %.08751347.us.i, i64 %i.adf ; 2 uses
  %i.axb = add nuw nsw i32 %.08621349.us.i, 8     ; 2 uses
  %i.axc = or disjoint i32 %i.axb, 7
  %i.axd = icmp slt i32 %i.axc, %i.n
  br i1 %i.axd, label %.preheader1091.us.i, label %.preheader1094.i, !llvm.loop !127

.preheader1094.i:                                 ; preds = %._crit_edge1344.us.i, %_ZN4ncnn3MatD2Ev.exit1003.i
  %.0878.lcssa.i = phi ptr [ %i.auq, %_ZN4ncnn3MatD2Ev.exit1003.i ], [ %i.awz, %._crit_edge1344.us.i ] ; 11 uses
  %.0875.lcssa.i = phi ptr [ %i.aut, %_ZN4ncnn3MatD2Ev.exit1003.i ], [ %i.axa, %._crit_edge1344.us.i ] ; 11 uses
  %.0866.lcssa.i = phi ptr [ %i.avc, %_ZN4ncnn3MatD2Ev.exit1003.i ], [ %i.awy, %._crit_edge1344.us.i ] ; 3 uses
  %.0862.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1003.i ], [ %i.ads, %._crit_edge1344.us.i ] ; 5 uses
  %i.axe = or disjoint i32 %.0862.lcssa.i, 3
  %i.axf = icmp slt i32 %i.axe, %i.n
  br i1 %i.axf, label %.preheader1090.lr.ph.i, label %.preheader1093.i

.preheader1094.thread.i:                          ; preds = %.preheader1091.lr.ph.i
  br i1 %i.adx, label %.preheader1090.preheader.i, label %.preheader1093.i

.preheader1090.lr.ph.i:                           ; preds = %.preheader1094.i
  br i1 %i.acq, label %.preheader1090.us.i.preheader, label %.preheader1090.preheader.i

.preheader1090.us.i.preheader:                    ; preds = %.preheader1090.lr.ph.i
  %scevgep524 = getelementptr i8, ptr %.0875.lcssa.i, i64 %i.aeg
  %scevgep525 = getelementptr i8, ptr %.0875.lcssa.i, i64 %i.aei
  %i.axg = sub i32 %i.aek, %.0862.lcssa.i
  %i.axh = lshr i32 %i.axg, 2
  %i.axi = zext nneg i32 %i.axh to i64
  %i.axj = mul nsw i64 %i.aej, %i.axi             ; 8 uses
  %scevgep526 = getelementptr i8, ptr %scevgep525, i64 %i.axj
  %scevgep527 = getelementptr i8, ptr %.0875.lcssa.i, i64 %i.ael
  %scevgep528 = getelementptr i8, ptr %.0875.lcssa.i, i64 %i.aem
  %scevgep529 = getelementptr i8, ptr %scevgep528, i64 %i.axj
  %scevgep530 = getelementptr i8, ptr %.0875.lcssa.i, i64 %i.aen
  %scevgep531 = getelementptr i8, ptr %.0875.lcssa.i, i64 %i.aeo
  %scevgep532 = getelementptr i8, ptr %scevgep531, i64 %i.axj
  %scevgep533 = getelementptr i8, ptr %.0875.lcssa.i, i64 %i.aeh
  %scevgep534 = getelementptr i8, ptr %scevgep533, i64 %i.axj
  %scevgep535 = getelementptr i8, ptr %.0878.lcssa.i, i64 %i.aeg
  %scevgep536 = getelementptr i8, ptr %.0878.lcssa.i, i64 %i.aei
  %scevgep537 = getelementptr i8, ptr %scevgep536, i64 %i.axj
  %scevgep538 = getelementptr i8, ptr %.0878.lcssa.i, i64 %i.ael
  %scevgep539 = getelementptr i8, ptr %.0878.lcssa.i, i64 %i.aem
  %scevgep540 = getelementptr i8, ptr %scevgep539, i64 %i.axj
  %scevgep541 = getelementptr i8, ptr %.0878.lcssa.i, i64 %i.aen
  %scevgep542 = getelementptr i8, ptr %.0878.lcssa.i, i64 %i.aeo
  %scevgep543 = getelementptr i8, ptr %scevgep542, i64 %i.axj
  %scevgep544 = getelementptr i8, ptr %.0878.lcssa.i, i64 %i.aeh
end_hunk_2
