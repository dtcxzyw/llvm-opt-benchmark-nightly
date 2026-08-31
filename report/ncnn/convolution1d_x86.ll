Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution1d_x86?download=true
inline.NumInlined: 21
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN4ncnn17Convolution1D_x8615create_pipelineERKNS_6OptionE:bb.a

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef i32 @_ZN4ncnn17Convolution1D_x8621create_pipeline_bf16sERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(544) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  br label %bb.ab

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.h = load i32, ptr %i.g, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.j = load i32, ptr %i.i, align 4, !tbaa !44   ; 51 uses
  %i.k = sdiv i32 %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.m = load i32, ptr %i.l, align 8, !tbaa !45   ; 23 uses
  %i.n = sdiv i32 %i.k, %i.m                      ; 61 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 12 uses
  %i.q = icmp sgt i32 %i.m, 3
  br i1 %i.q, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.r = icmp sgt i32 %i.n, 3                     ; 2 uses
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = shl nsw i32 %i.j, 4
  %i.t = lshr i32 %i.n, 2
  %i.u = lshr i32 %i.n, 1
  %i.v = and i32 %i.u, 1
  %i.w = and i32 %i.n, 1
  %i.x = add nuw nsw i32 %i.w, %i.t
  %i.y = add nuw nsw i32 %i.x, %i.v
  %i.z = lshr i32 %i.m, 2
  %i.aa = lshr i32 %i.m, 1
  %i.ab = and i32 %i.aa, 1
  %i.ac = and i32 %i.m, 1
  %i.ad = add nuw nsw i32 %i.ac, %i.z
  %i.ae = add nuw nsw i32 %i.ad, %i.ab
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.s, i32 noundef %i.y, i32 noundef %i.ae, i64 noundef 4, ptr noundef null)
  br label %_ZN4ncnn3MatD2Ev.exit420.lr.ph.i

bb.g:                                             ; preds = %bb.e
  %i.af = icmp sgt i32 %i.n, 1
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = shl nsw i32 %i.j, 3
  %i.ah = and i32 %i.n, 1
  %i.ai = add nuw nsw i32 %i.ah, 1
  %i.aj = lshr i32 %i.m, 2
  %i.ak = lshr i32 %i.m, 1
  %i.al = and i32 %i.ak, 1
  %i.am = and i32 %i.m, 1
  %i.an = add nuw nsw i32 %i.am, %i.aj
  %i.ao = add nuw nsw i32 %i.an, %i.al
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.ag, i32 noundef %i.ai, i32 noundef %i.ao, i64 noundef 4, ptr noundef null)
  br label %_ZN4ncnn3MatD2Ev.exit420.lr.ph.i

bb.i:                                             ; preds = %bb.g
  %i.ap = shl nsw i32 %i.j, 2
  %i.aq = lshr i32 %i.m, 2
  %i.ar = lshr i32 %i.m, 1
  %i.as = and i32 %i.ar, 1
  %i.at = and i32 %i.m, 1
  %i.au = add nuw nsw i32 %i.at, %i.aq
  %i.av = add nuw nsw i32 %i.au, %i.as
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.ap, i32 noundef %i.n, i32 noundef %i.av, i64 noundef 4, ptr noundef null)
  br label %_ZN4ncnn3MatD2Ev.exit420.lr.ph.i

bb.j:                                             ; preds = %bb.d
  %i.aw = icmp sgt i32 %i.m, 1
  %i.ax = icmp sgt i32 %i.n, 3                    ; 2 uses
  br i1 %i.aw, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ay = shl nsw i32 %i.j, 3
  %i.az = lshr i32 %i.n, 2
  %i.ba = lshr i32 %i.n, 1
  %i.bb = and i32 %i.ba, 1
  %i.bc = and i32 %i.n, 1
  %i.bd = add nuw nsw i32 %i.bc, %i.az
  %i.be = add nuw nsw i32 %i.bd, %i.bb
  %i.bf = and i32 %i.m, 1
  %i.bg = add nuw nsw i32 %i.bf, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.ay, i32 noundef %i.be, i32 noundef %i.bg, i64 noundef 4, ptr noundef null)
  br label %.preheader483.i

bb.m:                                             ; preds = %bb.k
  %i.bh = icmp sgt i32 %i.n, 1
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bi = shl nsw i32 %i.j, 2
  %i.bj = and i32 %i.n, 1
  %i.bk = add nuw nsw i32 %i.bj, 1
  %i.bl = and i32 %i.m, 1
  %i.bm = add nuw nsw i32 %i.bl, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.bi, i32 noundef %i.bk, i32 noundef %i.bm, i64 noundef 4, ptr noundef null)
  br label %.preheader483.i

bb.o:                                             ; preds = %bb.m
  %i.bn = shl nsw i32 %i.j, 1
  %i.bo = and i32 %i.m, 1
  %i.bp = add nuw nsw i32 %i.bo, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.bn, i32 noundef %i.n, i32 noundef %i.bp, i64 noundef 4, ptr noundef null)
  br label %.preheader483.i

bb.p:                                             ; preds = %bb.j
  br i1 %i.ax, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bq = shl nsw i32 %i.j, 2
  %i.br = lshr i32 %i.n, 2
  %i.bs = lshr i32 %i.n, 1
  %i.bt = and i32 %i.bs, 1
  %i.bu = and i32 %i.n, 1
  %i.bv = add nuw nsw i32 %i.bu, %i.br
  %i.bw = add nuw nsw i32 %i.bv, %i.bt
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.bq, i32 noundef %i.bw, i32 noundef %i.m, i64 noundef 4, ptr noundef null)
  br label %.preheader483.i

bb.r:                                             ; preds = %bb.p
  %i.bx = icmp sgt i32 %i.n, 1
  br i1 %i.bx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.by = shl nsw i32 %i.j, 1
  %i.bz = and i32 %i.n, 1
  %i.ca = add nuw nsw i32 %i.bz, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.by, i32 noundef %i.ca, i32 noundef %i.m, i64 noundef 4, ptr noundef null)
  br label %.preheader483.i

bb.t:                                             ; preds = %bb.r
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.j, i32 noundef %i.n, i32 noundef %i.m, i64 noundef 4, ptr noundef null)
  br label %.preheader483.i

_ZN4ncnn3MatD2Ev.exit420.lr.ph.i:                 ; preds = %bb.i, %bb.h, %bb.f
  %i.cb = load ptr, ptr %i.o, align 8, !tbaa !18  ; 4 uses
  %i.cc = mul i32 %i.n, %i.j                      ; 4 uses
  %i.cd = load ptr, ptr %i.p, align 8, !tbaa !18, !noalias !46
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !20, !noalias !46
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !49, !noalias !46
  %factor.op.mul.i = mul i64 %i.ch, %i.cf
  %i.ci = icmp sgt i32 %i.j, 0                    ; 2 uses
  %i.cj = sext i32 %i.j to i64                    ; 21 uses
  %i.ck = shl i32 %i.j, 2
  %i.cl = sext i32 %i.ck to i64                   ; 4 uses
  %i.cm = shl i32 %i.j, 1                         ; 2 uses
  %i.cn = sext i32 %i.cm to i64                   ; 5 uses
  %i.co = icmp slt i32 %i.j, 1
  %i.cp = and i32 %i.n, -4
  %i.cq = zext nneg i32 %i.m to i64
  %wide.trip.count.i = zext i32 %i.j to i64       ; 12 uses
  %i.cr = shl nuw nsw i64 %wide.trip.count.i, 4
  %i.cs = shl nuw nsw i64 %wide.trip.count.i, 2   ; 9 uses
  %i.ct = shl nuw nsw i64 %wide.trip.count.i, 5
  %i.cu = shl nuw nsw i64 %i.cj, 2                ; 5 uses
  %i.cv = add nuw nsw i64 %i.cu, %i.cs            ; 4 uses
  %i.cw = shl nsw i64 %i.cn, 2
  %i.cx = add i32 %i.n, -2
  %min.iters.check208 = icmp ult i32 %i.j, 20
  %stride.check175 = icmp slt i32 %i.cm, 0
  %n.vec210 = and i64 %wide.trip.count.i, 2147483644 ; 4 uses
  %i.cy = shl nuw nsw i64 %n.vec210, 5
  %cmp.n225 = icmp eq i64 %n.vec210, %wide.trip.count.i
  %min.iters.check = icmp ult i32 %i.j, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 4 uses
  %i.cz = shl nuw nsw i64 %n.vec, 4
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.da = add nsw i64 %wide.trip.count.i, -1
  br label %_ZN4ncnn3MatD2Ev.exit420.i

.preheader483.loopexit.i:                         ; preds = %._crit_edge546.split.i
  %i.db = trunc nuw nsw i64 %indvars.iv.next734.i to i32
  br label %.preheader483.i

.preheader483.i:                                  ; preds = %.preheader483.loopexit.i, %bb.t, %bb.s, %bb.q, %bb.o, %bb.n, %bb.l
  %.0.lcssa.i = phi i32 [ %i.db, %.preheader483.loopexit.i ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.l ], [ 0, %bb.s ], [ 0, %bb.t ], [ 0, %bb.q ] ; 5 uses
  %i.dc = or disjoint i32 %.0.lcssa.i, 1          ; 2 uses
  %i.dd = icmp slt i32 %i.dc, %i.m
  br i1 %i.dd, label %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i, label %.preheader477.i

_ZN4ncnn3MatD2Ev.exit419.lr.ph.i:                 ; preds = %.preheader483.i
  %i.de = load ptr, ptr %i.o, align 8, !tbaa !18  ; 16 uses
  %i.df = mul i32 %i.n, %i.j                      ; 2 uses
  %i.dg = load ptr, ptr %i.p, align 8, !tbaa !18, !noalias !50
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !20, !noalias !50
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !49, !noalias !50
  %factor.op.mul594.i = mul i64 %i.dk, %i.di
  %i.dl = icmp sgt i32 %i.n, 3
  %i.dm = icmp sgt i32 %i.j, 0                    ; 2 uses
  %i.dn = sext i32 %i.j to i64                    ; 14 uses
  %i.do = shl i32 %i.j, 1                         ; 2 uses
  %2 = sext i32 %i.do to i64                      ; 8 uses
  %i.dp = mul i32 %i.j, 3
  %3 = sext i32 %i.dp to i64                      ; 5 uses
  %i.dq = shl i32 %i.j, 2                         ; 2 uses
  %i.dr = sext i32 %i.dq to i64                   ; 3 uses
  %i.ds = icmp slt i32 %i.j, 1
  %i.dt = and i32 %i.n, -4
  %i.du = zext i32 %.0.lcssa.i to i64
  %i.dv = add i32 %.0.lcssa.i, 1
  %i.dw = sext i32 %i.m to i64
  %wide.trip.count747.i = zext i32 %i.j to i64    ; 18 uses
  %invariant.op.i = add nsw i64 %i.dw, -1
  %i.dx = shl nuw nsw i64 %wide.trip.count747.i, 3
  %i.dy = shl nuw nsw i64 %wide.trip.count747.i, 2 ; 5 uses
  %i.dz = shl nuw nsw i64 %wide.trip.count747.i, 4
  %i.ea = shl nuw nsw i64 %i.dn, 2                ; 3 uses
  %i.eb = add nuw nsw i64 %i.ea, %i.dy            ; 2 uses
  %i.ec = shl nsw i64 %2, 2
  %i.ed = add i32 %i.n, -2
  %i.ee = shl nuw nsw i64 %wide.trip.count747.i, 5
  %i.ef = shl nuw nsw i64 %3, 2                   ; 3 uses
  %scevgep308 = getelementptr i8, ptr %i.de, i64 %i.ef
  %i.eg = mul i32 %i.j, %i.n
  %i.eh = mul i32 %i.eg, %i.dc
  %i.ei = mul i32 %i.j, %i.n
  %i.ej = shl i32 %i.ei, 1
  %i.ek = add i32 %i.n, -4
  %i.el = lshr i32 %i.ek, 2
  %i.em = zext nneg i32 %i.el to i64
  %i.en = mul nsw i64 %i.em, %i.dr
  %i.eo = shl i64 %i.en, 2                        ; 4 uses
  %4 = add i64 %i.eo, %i.ef
  %5 = shl nuw nsw i64 %wide.trip.count747.i, 2   ; 4 uses
  %i.ep = add i64 %4, %5                          ; 2 uses
  %scevgep310 = getelementptr i8, ptr %i.de, i64 %i.ep
  %i.eq = shl nuw nsw i64 %2, 2                   ; 3 uses
  %scevgep312 = getelementptr i8, ptr %i.de, i64 %i.eq
  %6 = add i64 %i.eo, %i.eq
  %i.er = add i64 %6, %5                          ; 2 uses
  %scevgep314 = getelementptr i8, ptr %i.de, i64 %i.er
  %i.es = shl nuw nsw i64 %i.dn, 2                ; 3 uses
  %scevgep316 = getelementptr i8, ptr %i.de, i64 %i.es
  %i.et = add i64 %i.eo, %i.es
  %i.eu = add i64 %i.et, %5                       ; 2 uses
  %scevgep318 = getelementptr i8, ptr %i.de, i64 %i.eu
  %i.ev = add i64 %i.eo, %5                       ; 2 uses
  %scevgep320 = getelementptr i8, ptr %i.de, i64 %i.ev
  %scevgep322 = getelementptr i8, ptr %i.de, i64 %i.ef
  %i.ew = mul i32 %.0.lcssa.i, %i.j
  %i.ex = mul i32 %i.ew, %i.n
  %scevgep324 = getelementptr i8, ptr %i.de, i64 %i.ep
  %scevgep326 = getelementptr i8, ptr %i.de, i64 %i.eq
  %scevgep328 = getelementptr i8, ptr %i.de, i64 %i.er
  %scevgep330 = getelementptr i8, ptr %i.de, i64 %i.es
  %scevgep332 = getelementptr i8, ptr %i.de, i64 %i.eu
  %scevgep334 = getelementptr i8, ptr %i.de, i64 %i.ev
  %min.iters.check376 = icmp ult i32 %i.j, 20
  %stride.check343 = icmp slt i32 %i.dq, 0
  %n.vec378 = and i64 %wide.trip.count747.i, 2147483644 ; 4 uses
  %i.ey = shl nuw nsw i64 %n.vec378, 5
  %cmp.n393 = icmp eq i64 %n.vec378, %wide.trip.count747.i
  %min.iters.check290 = icmp ult i32 %i.j, 12
  %stride.check277 = icmp slt i32 %i.do, 0
  %n.vec292 = and i64 %wide.trip.count747.i, 2147483644 ; 4 uses
  %i.ez = shl nuw nsw i64 %n.vec292, 4
  %cmp.n303 = icmp eq i64 %n.vec292, %wide.trip.count747.i
  %xtraiter592 = and i64 %wide.trip.count747.i, 1
  %lcmp.mod593.not = icmp eq i64 %xtraiter592, 0
  %i.fa = add nsw i64 %wide.trip.count747.i, -1
  %min.iters.check240 = icmp ult i32 %i.j, 6
  %n.vec242 = and i64 %wide.trip.count747.i, 2147483644 ; 4 uses
  %i.fb = shl nuw nsw i64 %n.vec242, 3
  %cmp.n255 = icmp eq i64 %n.vec242, %wide.trip.count747.i
  %xtraiter594 = and i64 %wide.trip.count747.i, 3 ; 2 uses
  %lcmp.mod595.not = icmp eq i64 %xtraiter594, 0
  br label %_ZN4ncnn3MatD2Ev.exit419.i

_ZN4ncnn3MatD2Ev.exit420.i:                       ; preds = %._crit_edge546.split.i, %_ZN4ncnn3MatD2Ev.exit420.lr.ph.i
  %indvars.iv733.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit420.lr.ph.i ], [ %indvars.iv.next734.i, %._crit_edge546.split.i ] ; 3 uses
  %i.fc = trunc i64 %indvars.iv733.i to i32       ; 4 uses
  %i.fd = mul i32 %i.cc, %i.fc
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.fe ; 3 uses
  %i.fg = or disjoint i32 %i.fc, 1
  %i.fh = mul i32 %i.fg, %i.cc
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.fi ; 3 uses
  %i.fk = or disjoint i32 %i.fc, 2
  %i.fl = mul i32 %i.fk, %i.cc
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.fm ; 3 uses
  %i.fo = or disjoint i32 %i.fc, 3
  %i.fp = mul i32 %i.fo, %i.cc
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.fq ; 3 uses
  %i.fs = lshr exact i64 %indvars.iv733.i, 2
  %.reass.i = mul i64 %factor.op.mul.i, %i.fs
  %i.ft = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.reass.i ; 2 uses
  %i.fu = insertelement <4 x ptr> poison, ptr %i.fr, i64 0
  %i.fv = insertelement <4 x ptr> %i.fu, ptr %i.fn, i64 1
  %i.fw = insertelement <4 x ptr> %i.fv, ptr %i.fj, i64 2
  %i.fx = insertelement <4 x ptr> %i.fw, ptr %i.ff, i64 3
  br i1 %i.r, label %.preheader486.lr.ph.i, label %.preheader488.i

.preheader486.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit420.i
  br i1 %i.ci, label %.preheader486.us.i, label %._crit_edge546.split.i

.preheader486.us.i:                               ; preds = %.preheader486.lr.ph.i, %._crit_edge.us.i
  %.0349502.us.i = phi ptr [ %i.hu, %._crit_edge.us.i ], [ %i.ff, %.preheader486.lr.ph.i ] ; 2 uses
  %.0351501.us.i = phi ptr [ %i.hv, %._crit_edge.us.i ], [ %i.fj, %.preheader486.lr.ph.i ] ; 2 uses
  %.0358500.us.i = phi ptr [ %i.hw, %._crit_edge.us.i ], [ %i.fn, %.preheader486.lr.ph.i ] ; 2 uses
  %.0360499.us.i = phi ptr [ %i.hx, %._crit_edge.us.i ], [ %i.fr, %.preheader486.lr.ph.i ] ; 2 uses
  %.0377498.us.i = phi ptr [ %i.ht, %._crit_edge.us.i ], [ %i.ft, %.preheader486.lr.ph.i ]
  %.0385497.us.i = phi i32 [ %i.hy, %._crit_edge.us.i ], [ 0, %.preheader486.lr.ph.i ]
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.preheader486.us.i
  %indvars.iv715.i = phi i64 [ 0, %.preheader486.us.i ], [ %indvars.iv.next716.i, %bb.u ] ; 5 uses
  %.1378496.us.i = phi ptr [ %.0377498.us.i, %.preheader486.us.i ], [ %i.ht, %bb.u ] ; 17 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.0349502.us.i, i64 %indvars.iv715.i ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.0351501.us.i, i64 %indvars.iv715.i ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.0358500.us.i, i64 %indvars.iv715.i ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.0360499.us.i, i64 %indvars.iv715.i ; 2 uses
  %i.gc = load float, ptr %i.fy, align 4, !tbaa !53
  store float %i.gc, ptr %.1378496.us.i, align 4, !tbaa !53
  %i.gd = load float, ptr %i.fz, align 4, !tbaa !53
  %i.ge = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 4
  store float %i.gd, ptr %i.ge, align 4, !tbaa !53
  %i.gf = load float, ptr %i.ga, align 4, !tbaa !53
  %i.gg = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 8
  store float %i.gf, ptr %i.gg, align 4, !tbaa !53
  %i.gh = load float, ptr %i.gb, align 4, !tbaa !53
  %i.gi = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 12
  store float %i.gh, ptr %i.gi, align 4, !tbaa !53
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.cj ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.cj ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.cj ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.cj ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 16
  %i.go = load float, ptr %i.gj, align 4, !tbaa !53
  store float %i.go, ptr %i.gn, align 4, !tbaa !53
  %i.gp = load float, ptr %i.gk, align 4, !tbaa !53
  %i.gq = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 20
  store float %i.gp, ptr %i.gq, align 4, !tbaa !53
  %i.gr = load float, ptr %i.gl, align 4, !tbaa !53
  %i.gs = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 24
  store float %i.gr, ptr %i.gs, align 4, !tbaa !53
  %i.gt = load float, ptr %i.gm, align 4, !tbaa !53
  %i.gu = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 28
  store float %i.gt, ptr %i.gu, align 4, !tbaa !53
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.cj ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.cj ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.cj ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.cj ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 32
  %i.ha = load float, ptr %i.gv, align 4, !tbaa !53
  store float %i.ha, ptr %i.gz, align 4, !tbaa !53
  %i.hb = load float, ptr %i.gw, align 4, !tbaa !53
  %i.hc = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 36
  store float %i.hb, ptr %i.hc, align 4, !tbaa !53
  %i.hd = load float, ptr %i.gx, align 4, !tbaa !53
  %i.he = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 40
  store float %i.hd, ptr %i.he, align 4, !tbaa !53
  %i.hf = load float, ptr %i.gy, align 4, !tbaa !53
  %i.hg = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 44
  store float %i.hf, ptr %i.hg, align 4, !tbaa !53
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.cj
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.cj
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.cj
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.cj
  %i.hl = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 48
  %i.hm = load float, ptr %i.hh, align 4, !tbaa !53
  store float %i.hm, ptr %i.hl, align 4, !tbaa !53
  %i.hn = load float, ptr %i.hi, align 4, !tbaa !53
  %i.ho = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 52
  store float %i.hn, ptr %i.ho, align 4, !tbaa !53
  %i.hp = load float, ptr %i.hj, align 4, !tbaa !53
  %i.hq = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 56
  store float %i.hp, ptr %i.hq, align 4, !tbaa !53
  %i.hr = load float, ptr %i.hk, align 4, !tbaa !53
  %i.hs = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 60
  store float %i.hr, ptr %i.hs, align 4, !tbaa !53
  %i.ht = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 64 ; 3 uses
  %indvars.iv.next716.i = add nuw nsw i64 %indvars.iv715.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next716.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.u, !llvm.loop !54

._crit_edge.us.i:                                 ; preds = %bb.u
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %.0349502.us.i, i64 %i.cl ; 3 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %.0351501.us.i, i64 %i.cl ; 3 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %.0358500.us.i, i64 %i.cl ; 3 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.0360499.us.i, i64 %i.cl ; 3 uses
  %i.hy = add nuw nsw i32 %.0385497.us.i, 4       ; 2 uses
  %i.hz = or disjoint i32 %i.hy, 3
  %i.ia = icmp slt i32 %i.hz, %i.n
  br i1 %i.ia, label %.preheader486.us.i, label %.preheader488.i.loopexit, !llvm.loop !56

.preheader488.i.loopexit:                         ; preds = %._crit_edge.us.i
  %i.ib = insertelement <4 x ptr> poison, ptr %i.hx, i64 0
  %i.ic = insertelement <4 x ptr> %i.ib, ptr %i.hw, i64 1
  %i.id = insertelement <4 x ptr> %i.ic, ptr %i.hv, i64 2
  %i.ie = insertelement <4 x ptr> %i.id, ptr %i.hu, i64 3
  br label %.preheader488.i

.preheader488.i:                                  ; preds = %.preheader488.i.loopexit, %_ZN4ncnn3MatD2Ev.exit420.i
  %.0385.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit420.i ], [ %i.cp, %.preheader488.i.loopexit ] ; 4 uses
  %.0377.lcssa.i = phi ptr [ %i.ft, %_ZN4ncnn3MatD2Ev.exit420.i ], [ %i.ht, %.preheader488.i.loopexit ] ; 2 uses
  %.0360.lcssa.i = phi ptr [ %i.fr, %_ZN4ncnn3MatD2Ev.exit420.i ], [ %i.hx, %.preheader488.i.loopexit ] ; 5 uses
  %.0358.lcssa.i = phi ptr [ %i.fn, %_ZN4ncnn3MatD2Ev.exit420.i ], [ %i.hw, %.preheader488.i.loopexit ] ; 5 uses
  %.0351.lcssa.i = phi ptr [ %i.fj, %_ZN4ncnn3MatD2Ev.exit420.i ], [ %i.hv, %.preheader488.i.loopexit ] ; 5 uses
  %.0349.lcssa.i = phi ptr [ %i.ff, %_ZN4ncnn3MatD2Ev.exit420.i ], [ %i.hu, %.preheader488.i.loopexit ] ; 5 uses
  %i.if = phi <4 x ptr> [ %i.fx, %_ZN4ncnn3MatD2Ev.exit420.i ], [ %i.ie, %.preheader488.i.loopexit ]
  %i.ig = or disjoint i32 %.0385.lcssa.i, 1
  %i.ih = icmp slt i32 %i.ig, %i.n
  br i1 %i.ih, label %.preheader485.lr.ph.i, label %.preheader487.i

.preheader485.lr.ph.i:                            ; preds = %.preheader488.i
  br i1 %i.ci, label %.preheader485.us.i.preheader, label %._crit_edge546.split.i

.preheader485.us.i.preheader:                     ; preds = %.preheader485.lr.ph.i
  %scevgep149 = getelementptr i8, ptr %.0360.lcssa.i, i64 %i.cu
  %scevgep150 = getelementptr i8, ptr %.0360.lcssa.i, i64 %i.cv
  %i.ii = sub i32 %i.cx, %.0385.lcssa.i
  %i.ij = lshr i32 %i.ii, 1
  %i.ik = zext nneg i32 %i.ij to i64
  %i.il = mul i64 %i.cw, %i.ik                    ; 8 uses
  %scevgep151 = getelementptr i8, ptr %scevgep150, i64 %i.il
  %scevgep152 = getelementptr i8, ptr %.0358.lcssa.i, i64 %i.cu
  %scevgep153 = getelementptr i8, ptr %.0358.lcssa.i, i64 %i.cv
  %scevgep154 = getelementptr i8, ptr %scevgep153, i64 %i.il
  %scevgep155 = getelementptr i8, ptr %.0351.lcssa.i, i64 %i.cu
  %scevgep156 = getelementptr i8, ptr %.0351.lcssa.i, i64 %i.cv
  %scevgep157 = getelementptr i8, ptr %scevgep156, i64 %i.il
  %scevgep158 = getelementptr i8, ptr %.0349.lcssa.i, i64 %i.cu
  %scevgep159 = getelementptr i8, ptr %.0349.lcssa.i, i64 %i.cv
  %scevgep160 = getelementptr i8, ptr %scevgep159, i64 %i.il
  %scevgep161 = getelementptr i8, ptr %.0360.lcssa.i, i64 %i.cs
  %scevgep162 = getelementptr i8, ptr %scevgep161, i64 %i.il
  %scevgep163 = getelementptr i8, ptr %.0358.lcssa.i, i64 %i.cs
end_hunk_0
begin_hunk_1_@_ZN4ncnn17Convolution1D_x8615create_pipelineERKNS_6OptionE:bb.a
  %i.kt = load float, ptr %i.kn, align 4, !tbaa !53
  %i.ku = getelementptr inbounds nuw i8, ptr %.4381521.us.i, i64 24
  store float %i.kt, ptr %i.ku, align 4, !tbaa !53
  %i.kv = load float, ptr %i.ko, align 4, !tbaa !53
  %i.kw = getelementptr inbounds nuw i8, ptr %.4381521.us.i, i64 28
  store float %i.kv, ptr %i.kw, align 4, !tbaa !53
  %i.kx = getelementptr inbounds nuw i8, ptr %.4381521.us.i, i64 32 ; 2 uses
  %indvars.iv.next723.i = add nuw nsw i64 %indvars.iv722.i, 1 ; 2 uses
  %exitcond726.not.i = icmp eq i64 %indvars.iv.next723.i, %wide.trip.count.i
  br i1 %exitcond726.not.i, label %._crit_edge.us534.i, label %scalar.ph207, !llvm.loop !80

._crit_edge.us534.i:                              ; preds = %scalar.ph207, %middle.block224
  %.lcssa121 = phi ptr [ %i.jj, %middle.block224 ], [ %i.kx, %scalar.ph207 ] ; 2 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %.1350527.us.i, i64 %i.cn ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %.1352526.us.i, i64 %i.cn ; 2 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %.1359525.us.i, i64 %i.cn ; 2 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %.1361524.us.i, i64 %i.cn ; 2 uses
  %i.lc = add nuw nsw i32 %.1386522.us.i, 2       ; 3 uses
  %i.ld = or disjoint i32 %i.lc, 1
  %i.le = icmp slt i32 %i.ld, %i.n
  br i1 %i.le, label %.preheader485.us.i, label %.preheader487.i, !llvm.loop !81

.preheader487.i:                                  ; preds = %._crit_edge.us534.i, %.preheader488.i
  %.1386.lcssa.i = phi i32 [ %.0385.lcssa.i, %.preheader488.i ], [ %i.lc, %._crit_edge.us534.i ] ; 2 uses
  %.3380.lcssa.i = phi ptr [ %.0377.lcssa.i, %.preheader488.i ], [ %.lcssa121, %._crit_edge.us534.i ]
  %.1361.lcssa.i = phi ptr [ %.0360.lcssa.i, %.preheader488.i ], [ %i.lb, %._crit_edge.us534.i ] ; 6 uses
  %.1359.lcssa.i = phi ptr [ %.0358.lcssa.i, %.preheader488.i ], [ %i.la, %._crit_edge.us534.i ] ; 6 uses
  %.1352.lcssa.i = phi ptr [ %.0351.lcssa.i, %.preheader488.i ], [ %i.kz, %._crit_edge.us534.i ] ; 6 uses
  %.1350.lcssa.i = phi ptr [ %.0349.lcssa.i, %.preheader488.i ], [ %i.ky, %._crit_edge.us534.i ] ; 6 uses
  %i.lf = icmp sge i32 %.1386.lcssa.i, %i.n
  %brmerge.i = or i1 %i.co, %i.lf
  br i1 %brmerge.i, label %._crit_edge546.split.i, label %.preheader484.i.preheader

.preheader484.i.preheader:                        ; preds = %.preheader487.i
  %scevgep128 = getelementptr i8, ptr %.1361.lcssa.i, i64 %i.cs
  %scevgep129 = getelementptr i8, ptr %.1359.lcssa.i, i64 %i.cs
  %scevgep130 = getelementptr i8, ptr %.1352.lcssa.i, i64 %i.cs
  %scevgep131 = getelementptr i8, ptr %.1350.lcssa.i, i64 %i.cs
  %i.lg = insertelement <4 x ptr> poison, ptr %scevgep128, i64 0
  %i.lh = insertelement <4 x ptr> %i.lg, ptr %scevgep129, i64 1
  %i.li = insertelement <4 x ptr> %i.lh, ptr %scevgep130, i64 2
  %i.lj = insertelement <4 x ptr> %i.li, ptr %scevgep131, i64 3
  %i.lk = insertelement <4 x ptr> poison, ptr %.1361.lcssa.i, i64 0
  %i.ll = insertelement <4 x ptr> %i.lk, ptr %.1359.lcssa.i, i64 1
  %i.lm = insertelement <4 x ptr> %i.ll, ptr %.1352.lcssa.i, i64 2
  %i.ln = insertelement <4 x ptr> %i.lm, ptr %.1350.lcssa.i, i64 3
  br label %.preheader484.i

.preheader484.i:                                  ; preds = %.preheader484.i.preheader, %._crit_edge.i
  %.6383545.i = phi ptr [ %.lcssa127, %._crit_edge.i ], [ %.3380.lcssa.i, %.preheader484.i.preheader ] ; 6 uses
  %.2387544.i = phi i32 [ %i.ms, %._crit_edge.i ], [ %.1386.lcssa.i, %.preheader484.i.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader484.i
  %scevgep = getelementptr i8, ptr %.6383545.i, i64 %i.cr
  %i.lo = insertelement <4 x ptr> poison, ptr %.6383545.i, i64 0
  %i.lp = shufflevector <4 x ptr> %i.lo, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.lq = icmp ult <4 x ptr> %i.lp, %i.lj
  %i.lr = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.ls = shufflevector <4 x ptr> %i.lr, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.lt = icmp ult <4 x ptr> %i.ln, %i.ls
  %i.lu = and <4 x i1> %i.lq, %i.lt
  %i.lv = bitcast <4 x i1> %i.lu to i4
  %.not560 = icmp eq i4 %i.lv, 0
  br i1 %.not560, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.memcheck
  %i.lw = getelementptr i8, ptr %.6383545.i, i64 %i.cz ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.lx = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %.6383545.i, i64 %i.lx
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %.1350.lcssa.i, i64 %index
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %.1352.lcssa.i, i64 %index
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %.1359.lcssa.i, i64 %index
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %.1361.lcssa.i, i64 %index
  %wide.load = load <4 x float>, ptr %i.ly, align 4, !tbaa !53, !alias.scope !82
  %wide.load143 = load <4 x float>, ptr %i.lz, align 4, !tbaa !53, !alias.scope !85
  %wide.load144 = load <4 x float>, ptr %i.ma, align 4, !tbaa !53, !alias.scope !87
  %wide.load145 = load <4 x float>, ptr %i.mb, align 4, !tbaa !53, !alias.scope !89
  %i.mc = shufflevector <4 x float> %wide.load, <4 x float> %wide.load143, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.md = shufflevector <4 x float> %wide.load144, <4 x float> %wide.load145, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.mc, <8 x float> %i.md, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !53, !alias.scope !91, !noalias !93
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.me = icmp eq i64 %index.next, %n.vec
  br i1 %i.me, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader484.i, %middle.block
  %indvars.iv727.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader484.i ], [ %n.vec, %middle.block ] ; 7 uses
  %.7384543.i.ph = phi ptr [ %.6383545.i, %vector.memcheck ], [ %.6383545.i, %.preheader484.i ], [ %i.lw, %middle.block ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %.1350.lcssa.i, i64 %indvars.iv727.i.ph
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %.1352.lcssa.i, i64 %indvars.iv727.i.ph
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %.1359.lcssa.i, i64 %indvars.iv727.i.ph
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %.1361.lcssa.i, i64 %indvars.iv727.i.ph
  %i.mj = load float, ptr %i.mf, align 4, !tbaa !53
  store float %i.mj, ptr %.7384543.i.ph, align 4, !tbaa !53
  %i.mk = load float, ptr %i.mg, align 4, !tbaa !53
  %i.ml = getelementptr inbounds nuw i8, ptr %.7384543.i.ph, i64 4
  store float %i.mk, ptr %i.ml, align 4, !tbaa !53
  %i.mm = load float, ptr %i.mh, align 4, !tbaa !53
  %i.mn = getelementptr inbounds nuw i8, ptr %.7384543.i.ph, i64 8
  store float %i.mm, ptr %i.mn, align 4, !tbaa !53
  %i.mo = load float, ptr %i.mi, align 4, !tbaa !53
  %i.mp = getelementptr inbounds nuw i8, ptr %.7384543.i.ph, i64 12
  store float %i.mo, ptr %i.mp, align 4, !tbaa !53
  %i.mq = getelementptr inbounds nuw i8, ptr %.7384543.i.ph, i64 16 ; 2 uses
  %indvars.iv.next728.i.prol = or disjoint i64 %indvars.iv727.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa591.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.mq, %scalar.ph.prol ]
  %indvars.iv727.i.unr = phi i64 [ %indvars.iv727.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next728.i.prol, %scalar.ph.prol ]
  %.7384543.i.unr = phi ptr [ %.7384543.i.ph, %scalar.ph.preheader ], [ %i.mq, %scalar.ph.prol ]
  %i.mr = icmp eq i64 %indvars.iv727.i.ph, %i.da
  br i1 %i.mr, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa127 = phi ptr [ %i.lw, %middle.block ], [ %.lcssa591.unr, %scalar.ph.prol.loopexit ], [ %i.nq, %scalar.ph ]
  %i.ms = add nuw nsw i32 %.2387544.i, 1          ; 2 uses
  %exitcond732.not.i = icmp eq i32 %i.ms, %i.n
  br i1 %exitcond732.not.i, label %._crit_edge546.split.i, label %.preheader484.i, !llvm.loop !95

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv727.i = phi i64 [ %indvars.iv.next728.i.1, %scalar.ph ], [ %indvars.iv727.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.7384543.i = phi ptr [ %i.nq, %scalar.ph ], [ %.7384543.i.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %.1350.lcssa.i, i64 %indvars.iv727.i
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %.1352.lcssa.i, i64 %indvars.iv727.i
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %.1359.lcssa.i, i64 %indvars.iv727.i
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %.1361.lcssa.i, i64 %indvars.iv727.i
  %i.mx = load float, ptr %i.mt, align 4, !tbaa !53
  store float %i.mx, ptr %.7384543.i, align 4, !tbaa !53
  %i.my = load float, ptr %i.mu, align 4, !tbaa !53
  %i.mz = getelementptr inbounds nuw i8, ptr %.7384543.i, i64 4
  store float %i.my, ptr %i.mz, align 4, !tbaa !53
  %i.na = load float, ptr %i.mv, align 4, !tbaa !53
  %i.nb = getelementptr inbounds nuw i8, ptr %.7384543.i, i64 8
  store float %i.na, ptr %i.nb, align 4, !tbaa !53
  %i.nc = load float, ptr %i.mw, align 4, !tbaa !53
  %i.nd = getelementptr inbounds nuw i8, ptr %.7384543.i, i64 12
  store float %i.nc, ptr %i.nd, align 4, !tbaa !53
  %i.ne = getelementptr inbounds nuw i8, ptr %.7384543.i, i64 16
  %indvars.iv.next728.i = add nuw nsw i64 %indvars.iv727.i, 1 ; 4 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %.1350.lcssa.i, i64 %indvars.iv.next728.i
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %.1352.lcssa.i, i64 %indvars.iv.next728.i
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %.1359.lcssa.i, i64 %indvars.iv.next728.i
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %.1361.lcssa.i, i64 %indvars.iv.next728.i
  %i.nj = load float, ptr %i.nf, align 4, !tbaa !53
  store float %i.nj, ptr %i.ne, align 4, !tbaa !53
  %i.nk = load float, ptr %i.ng, align 4, !tbaa !53
  %i.nl = getelementptr inbounds nuw i8, ptr %.7384543.i, i64 20
  store float %i.nk, ptr %i.nl, align 4, !tbaa !53
  %i.nm = load float, ptr %i.nh, align 4, !tbaa !53
  %i.nn = getelementptr inbounds nuw i8, ptr %.7384543.i, i64 24
  store float %i.nm, ptr %i.nn, align 4, !tbaa !53
  %i.no = load float, ptr %i.ni, align 4, !tbaa !53
  %i.np = getelementptr inbounds nuw i8, ptr %.7384543.i, i64 28
  store float %i.no, ptr %i.np, align 4, !tbaa !53
  %i.nq = getelementptr inbounds nuw i8, ptr %.7384543.i, i64 32 ; 2 uses
  %indvars.iv.next728.i.1 = add nuw nsw i64 %indvars.iv727.i, 2 ; 2 uses
  %exitcond731.not.i.1 = icmp eq i64 %indvars.iv.next728.i.1, %wide.trip.count.i
  br i1 %exitcond731.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !96

._crit_edge546.split.i:                           ; preds = %._crit_edge.i, %.preheader487.i, %.preheader485.lr.ph.i, %.preheader486.lr.ph.i
  %indvars.iv.next734.i = add nuw nsw i64 %indvars.iv733.i, 4 ; 3 uses
  %i.nr = or disjoint i64 %indvars.iv.next734.i, 3
  %i.ns = icmp samesign ult i64 %i.nr, %i.cq
  br i1 %i.ns, label %_ZN4ncnn3MatD2Ev.exit420.i, label %.preheader483.loopexit.i, !llvm.loop !97

.preheader477.loopexit.i:                         ; preds = %._crit_edge591.split.i
  %i.nt = trunc nuw nsw i64 %indvars.iv.next765.i to i32
  br label %.preheader477.i

.preheader477.i:                                  ; preds = %.preheader477.loopexit.i, %.preheader483.i
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader483.i ], [ %i.nt, %.preheader477.loopexit.i ] ; 7 uses
  %i.nu = icmp slt i32 %.1.lcssa.i, %i.m
  br i1 %i.nu, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i, label %_ZN4ncnnL37convolution1d_transform_kernel_packedERKNS_3MatERS0_iii.exit

_ZN4ncnn3MatD2Ev.exit.lr.ph.i:                    ; preds = %.preheader477.i
  %i.nv = load ptr, ptr %i.o, align 8, !tbaa !18  ; 15 uses
  %i.nw = mul i32 %i.n, %i.j                      ; 2 uses
  %i.nx = load ptr, ptr %i.p, align 8, !tbaa !18, !noalias !98 ; 4 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.nz = load i64, ptr %i.ny, align 8, !tbaa !20, !noalias !98 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !49, !noalias !98 ; 2 uses
  %factor.op.mul637.i = mul i64 %i.ob, %i.nz      ; 2 uses
  %i.oc = icmp sgt i32 %i.n, 3
  %i.od = icmp sgt i32 %i.j, 0                    ; 2 uses
  %i.oe = sext i32 %i.j to i64                    ; 29 uses
  %i.of = shl i32 %i.j, 2                         ; 2 uses
  %i.og = sext i32 %i.of to i64                   ; 4 uses
  %i.oh = shl i32 %i.j, 1
  %i.oi = sext i32 %i.oh to i64                   ; 3 uses
  %i.oj = icmp slt i32 %i.j, 1                    ; 2 uses
  %i.ok = and i32 %i.n, -4                        ; 4 uses
  %i.ol = zext i32 %.1.lcssa.i to i64             ; 2 uses
  %wide.trip.count794.i = zext i32 %i.m to i64    ; 2 uses
  %wide.trip.count777.i = zext i32 %i.j to i64    ; 31 uses
  br i1 %i.oc, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split.us, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split

_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split.us:           ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph.i
  %i.om = or disjoint i32 %i.ok, 1
  %i.on = icmp slt i32 %i.om, %i.n
  br i1 %i.od, label %_ZN4ncnn3MatD2Ev.exit.i.us.preheader, label %_ZN4ncnnL37convolution1d_transform_kernel_packedERKNS_3MatERS0_iii.exit

_ZN4ncnn3MatD2Ev.exit.i.us.preheader:             ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split.us
  %i.oo = shl nuw nsw i64 %wide.trip.count777.i, 3
  %i.op = shl nuw nsw i64 %i.oe, 2                ; 2 uses
  %i.oq = shl nsw i64 %i.og, 2                    ; 3 uses
  %i.or = mul i32 %.1.lcssa.i, %i.j
  %i.os = mul i32 %i.or, %i.n
  %i.ot = mul i32 %i.j, %i.n
  %i.ou = shl nsw i64 %i.og, 2
  %i.ov = add nsw i32 %i.n, -2
  %i.ow = sub i32 %i.ov, %i.ok
  %i.ox = lshr i32 %i.ow, 1
  %i.oy = zext nneg i32 %i.ox to i64
  %i.oz = mul nsw i64 %i.oy, %i.oi
  %i.pa = shl i64 %i.oz, 2                        ; 2 uses
  %i.pb = shl nuw nsw i64 %wide.trip.count777.i, 2 ; 2 uses
  %i.pc = shl nuw nsw i64 %wide.trip.count777.i, 4
  %i.pd = mul nuw nsw i64 %i.oe, 12               ; 2 uses
  %scevgep506 = getelementptr i8, ptr %i.nv, i64 %i.pd
  %i.pe = mul i32 %.1.lcssa.i, %i.j
  %i.pf = mul i32 %i.pe, %i.n
  %i.pg = mul i32 %i.j, %i.n
  %i.ph = add nsw i32 %i.n, -4
  %i.pi = lshr i32 %i.ph, 2
  %i.pj = zext nneg i32 %i.pi to i64
  %i.pk = mul nsw i64 %i.pj, %i.og
  %i.pl = shl i64 %i.pk, 2                        ; 4 uses
  %i.pm = shl nuw nsw i64 %wide.trip.count777.i, 2 ; 4 uses
  %i.pn = getelementptr i8, ptr %i.nv, i64 %i.pl
  %i.po = getelementptr i8, ptr %i.pn, i64 %i.pd
  %scevgep508 = getelementptr i8, ptr %i.po, i64 %i.pm
  %i.pp = shl nuw nsw i64 %i.oe, 3                ; 2 uses
  %scevgep510 = getelementptr i8, ptr %i.nv, i64 %i.pp
  %i.pq = getelementptr i8, ptr %i.nv, i64 %i.pl
  %i.pr = getelementptr i8, ptr %i.pq, i64 %i.pp
  %scevgep512 = getelementptr i8, ptr %i.pr, i64 %i.pm
  %i.ps = shl nuw nsw i64 %i.oe, 2                ; 2 uses
  %scevgep514 = getelementptr i8, ptr %i.nv, i64 %i.ps
  %i.pt = getelementptr i8, ptr %i.nv, i64 %i.pl
  %i.pu = getelementptr i8, ptr %i.pt, i64 %i.ps
  %scevgep516 = getelementptr i8, ptr %i.pu, i64 %i.pm
  %i.pv = getelementptr i8, ptr %i.nv, i64 %i.pl
  %scevgep518 = getelementptr i8, ptr %i.pv, i64 %i.pm
  %min.iters.check540 = icmp ult i32 %i.j, 12
  %stride.check527 = icmp slt i32 %i.of, 0
  %n.vec542 = and i64 %wide.trip.count777.i, 2147483644 ; 4 uses
  %i.pw = shl nuw nsw i64 %n.vec542, 4
  %cmp.n553 = icmp eq i64 %n.vec542, %wide.trip.count777.i
  %xtraiter602 = and i64 %wide.trip.count777.i, 1
  %lcmp.mod603.not = icmp eq i64 %xtraiter602, 0
  %i.px = add nsw i64 %wide.trip.count777.i, -1
  %invariant.gep = getelementptr i8, ptr %i.nv, i64 %i.op
  %invariant.gep644 = getelementptr i8, ptr %invariant.gep, i64 %i.oq
  %invariant.gep646 = getelementptr i8, ptr %i.nv, i64 %i.pa
  %invariant.gep647 = getelementptr i8, ptr %invariant.gep646, i64 %i.op
  %invariant.gep649 = getelementptr i8, ptr %invariant.gep647, i64 %i.oq
  %invariant.gep650 = getelementptr i8, ptr %invariant.gep649, i64 %i.pb
  %invariant.gep652 = getelementptr i8, ptr %i.nv, i64 %i.pa
  %invariant.gep653 = getelementptr i8, ptr %invariant.gep652, i64 %i.oq
  %invariant.gep655 = getelementptr i8, ptr %invariant.gep653, i64 %i.pb
  %min.iters.check486 = icmp ult i32 %i.j, 6
  %n.vec488 = and i64 %wide.trip.count777.i, 2147483644 ; 4 uses
  %i.py = shl nuw nsw i64 %n.vec488, 3
  %cmp.n501 = icmp eq i64 %n.vec488, %wide.trip.count777.i
  %xtraiter605 = and i64 %wide.trip.count777.i, 3 ; 2 uses
  %lcmp.mod606.not = icmp eq i64 %xtraiter605, 0
  %min.iters.check456 = icmp ult i32 %i.j, 8
  %n.vec458 = and i64 %wide.trip.count777.i, 2147483640 ; 4 uses
  %i.pz = shl nuw nsw i64 %n.vec458, 2
  %cmp.n466 = icmp eq i64 %n.vec458, %wide.trip.count777.i
  %xtraiter608 = and i64 %wide.trip.count777.i, 7 ; 2 uses
  %lcmp.mod609.not = icmp eq i64 %xtraiter608, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i.us

_ZN4ncnn3MatD2Ev.exit.i.us:                       ; preds = %_ZN4ncnn3MatD2Ev.exit.i.us.preheader, %._crit_edge634.split.i.us
  %indvar471 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit.i.us.preheader ], [ %indvar.next472, %._crit_edge634.split.i.us ] ; 3 uses
  %indvars.iv791.i.us = phi i64 [ %i.ol, %_ZN4ncnn3MatD2Ev.exit.i.us.preheader ], [ %indvars.iv.next792.i.us, %._crit_edge634.split.i.us ] ; 2 uses
  %i.qa = mul i32 %i.pg, %indvar471
  %i.qb = add i32 %i.pf, %i.qa
  %i.qc = sext i32 %i.qb to i64
  %i.qd = shl nsw i64 %i.qc, 2                    ; 7 uses
  %scevgep507.a = getelementptr i8, ptr %scevgep506, i64 %i.qd
  %scevgep509 = getelementptr i8, ptr %scevgep508, i64 %i.qd
  %scevgep511 = getelementptr i8, ptr %scevgep510, i64 %i.qd
  %scevgep513 = getelementptr i8, ptr %scevgep512, i64 %i.qd
  %scevgep515 = getelementptr i8, ptr %scevgep514, i64 %i.qd
  %scevgep517 = getelementptr i8, ptr %scevgep516, i64 %i.qd
  %scevgep519 = getelementptr i8, ptr %scevgep518, i64 %i.qd
  %i.qe = mul i32 %i.ot, %indvar471
  %i.qf = add i32 %i.os, %i.qe
  %i.qg = sext i32 %i.qf to i64
  %i.qh = shl nsw i64 %i.qg, 2                    ; 3 uses
  %i.qi = trunc i64 %indvars.iv791.i.us to i32    ; 4 uses
  %i.qj = mul i32 %i.nw, %i.qi
  %i.qk = sext i32 %i.qj to i64
  %i.ql = getelementptr [4 x i8], ptr %i.nv, i64 %i.qk ; 2 uses
  %i.qm = lshr i32 %i.qi, 2
  %i.qn = lshr i32 %i.qi, 1
  %i.qo = and i32 %i.qn, 1
  %i.qp = and i32 %i.qi, 1
  %i.qq = add nuw nsw i32 %i.qp, %i.qm
  %i.qr = add nuw nsw i32 %i.qq, %i.qo
  %i.qs = zext nneg i32 %i.qr to i64
  %.reass638.i.us = mul i64 %factor.op.mul637.i, %i.qs
  %i.qt = getelementptr inbounds nuw i8, ptr %i.nx, i64 %.reass638.i.us
  %i.qu = insertelement <4 x ptr> poison, ptr %scevgep513, i64 0
  %i.qv = insertelement <4 x ptr> %i.qu, ptr %scevgep509, i64 1
  %i.qw = insertelement <4 x ptr> %i.qv, ptr %scevgep517, i64 2
  %i.qx = insertelement <4 x ptr> %i.qw, ptr %scevgep519, i64 3
  %i.qy = insertelement <4 x ptr> poison, ptr %scevgep511, i64 0
  %i.qz = insertelement <4 x ptr> %i.qy, ptr %scevgep507.a, i64 1
  %i.ra = insertelement <4 x ptr> %i.qz, ptr %scevgep515, i64 2
  %i.rb = insertelement <4 x ptr> %i.ra, ptr %i.ql, i64 3
  br label %.preheader474.us.i.us

.preheader474.us.i.us:                            ; preds = %_ZN4ncnn3MatD2Ev.exit.i.us, %._crit_edge601.us.i.us
  %indvar473 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit.i.us ], [ %indvar.next474, %._crit_edge601.us.i.us ] ; 2 uses
  %.0341605.us.i.us = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit.i.us ], [ %i.th, %._crit_edge601.us.i.us ]
  %.0344604.us.i.us = phi ptr [ %i.qt, %_ZN4ncnn3MatD2Ev.exit.i.us ], [ %.lcssa, %._crit_edge601.us.i.us ] ; 6 uses
  %.0347603.us.i.us = phi ptr [ %i.ql, %_ZN4ncnn3MatD2Ev.exit.i.us ], [ %i.tg, %._crit_edge601.us.i.us ] ; 5 uses
  br i1 %min.iters.check540, label %scalar.ph539.preheader, label %vector.memcheck504

vector.memcheck504:                               ; preds = %.preheader474.us.i.us
  %scevgep505 = getelementptr i8, ptr %.0344604.us.i.us, i64 %i.pc
  %i.rc = insertelement <4 x ptr> poison, ptr %.0344604.us.i.us, i64 0
  %i.rd = shufflevector <4 x ptr> %i.rc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.re = icmp ult <4 x ptr> %i.rd, %i.qx
  %i.rf = insertelement <4 x ptr> poison, ptr %scevgep505, i64 0
  %i.rg = shufflevector <4 x ptr> %i.rf, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.rh = icmp ult <4 x ptr> %i.rb, %i.rg
  %i.ri = and <4 x i1> %i.re, %i.rh
  %i.rj = bitcast <4 x i1> %i.ri to i4
  %i.rk = icmp ne i4 %i.rj, 0
  %op.rdx = or i1 %i.rk, %stride.check527
  br i1 %op.rdx, label %scalar.ph539.preheader, label %vector.ph541

vector.ph541:                                     ; preds = %vector.memcheck504
  %i.rl = getelementptr i8, ptr %.0344604.us.i.us, i64 %i.pw ; 2 uses
  br label %vector.body543

vector.body543:                                   ; preds = %vector.body543, %vector.ph541
  %index544 = phi i64 [ 0, %vector.ph541 ], [ %index.next551, %vector.body543 ] ; 3 uses
  %i.rm = shl i64 %index544, 4
  %next.gep545 = getelementptr i8, ptr %.0344604.us.i.us, i64 %i.rm
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %.0347603.us.i.us, i64 %index544 ; 2 uses
  %wide.load546 = load <4 x float>, ptr %i.rn, align 4, !tbaa !53, !alias.scope !101
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.rn, i64 %i.oe ; 2 uses
  %wide.load547 = load <4 x float>, ptr %i.ro, align 4, !tbaa !53, !alias.scope !104
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.ro, i64 %i.oe ; 2 uses
  %wide.load548 = load <4 x float>, ptr %i.rp, align 4, !tbaa !53, !alias.scope !106
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.rp, i64 %i.oe
  %wide.load549 = load <4 x float>, ptr %i.rq, align 4, !tbaa !53, !alias.scope !108
  %i.rr = shufflevector <4 x float> %wide.load546, <4 x float> %wide.load547, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.rs = shufflevector <4 x float> %wide.load548, <4 x float> %wide.load549, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec550 = shufflevector <8 x float> %i.rr, <8 x float> %i.rs, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec550, ptr %next.gep545, align 4, !tbaa !53, !alias.scope !110, !noalias !112
  %index.next551 = add nuw i64 %index544, 4       ; 2 uses
  %i.rt = icmp eq i64 %index.next551, %n.vec542
  br i1 %i.rt, label %middle.block552, label %vector.body543, !llvm.loop !113

middle.block552:                                  ; preds = %vector.body543
  br i1 %cmp.n553, label %._crit_edge601.us.i.us, label %scalar.ph539.preheader

scalar.ph539.preheader:                           ; preds = %vector.memcheck504, %.preheader474.us.i.us, %middle.block552
  %indvars.iv774.i.us.ph = phi i64 [ 0, %vector.memcheck504 ], [ 0, %.preheader474.us.i.us ], [ %n.vec542, %middle.block552 ] ; 4 uses
  %.1345599.us.i.us.ph = phi ptr [ %.0344604.us.i.us, %vector.memcheck504 ], [ %.0344604.us.i.us, %.preheader474.us.i.us ], [ %i.rl, %middle.block552 ] ; 6 uses
  br i1 %lcmp.mod603.not, label %scalar.ph539.prol.loopexit, label %scalar.ph539.prol

scalar.ph539.prol:                                ; preds = %scalar.ph539.preheader
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %.0347603.us.i.us, i64 %indvars.iv774.i.us.ph ; 2 uses
  %i.rv = load float, ptr %i.ru, align 4, !tbaa !53
  store float %i.rv, ptr %.1345599.us.i.us.ph, align 4, !tbaa !53
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %i.oe ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us.ph, i64 4
  %i.ry = load float, ptr %i.rw, align 4, !tbaa !53
  store float %i.ry, ptr %i.rx, align 4, !tbaa !53
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %i.oe ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us.ph, i64 8
  %i.sb = load float, ptr %i.rz, align 4, !tbaa !53
  store float %i.sb, ptr %i.sa, align 4, !tbaa !53
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %i.oe
  %i.sd = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us.ph, i64 12
  %i.se = load float, ptr %i.sc, align 4, !tbaa !53
  store float %i.se, ptr %i.sd, align 4, !tbaa !53
  %i.sf = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us.ph, i64 16 ; 2 uses
  %indvars.iv.next775.i.us.prol = or disjoint i64 %indvars.iv774.i.us.ph, 1
  br label %scalar.ph539.prol.loopexit

scalar.ph539.prol.loopexit:                       ; preds = %scalar.ph539.prol, %scalar.ph539.preheader
  %.lcssa561.unr = phi ptr [ poison, %scalar.ph539.preheader ], [ %i.sf, %scalar.ph539.prol ]
  %indvars.iv774.i.us.unr = phi i64 [ %indvars.iv774.i.us.ph, %scalar.ph539.preheader ], [ %indvars.iv.next775.i.us.prol, %scalar.ph539.prol ]
  %.1345599.us.i.us.unr = phi ptr [ %.1345599.us.i.us.ph, %scalar.ph539.preheader ], [ %i.sf, %scalar.ph539.prol ]
  %i.sg = icmp eq i64 %indvars.iv774.i.us.ph, %i.px
  br i1 %i.sg, label %._crit_edge601.us.i.us, label %scalar.ph539

scalar.ph539:                                     ; preds = %scalar.ph539.prol.loopexit, %scalar.ph539
  %indvars.iv774.i.us = phi i64 [ %indvars.iv.next775.i.us.1, %scalar.ph539 ], [ %indvars.iv774.i.us.unr, %scalar.ph539.prol.loopexit ] ; 3 uses
  %.1345599.us.i.us = phi ptr [ %i.tf, %scalar.ph539 ], [ %.1345599.us.i.us.unr, %scalar.ph539.prol.loopexit ] ; 9 uses
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %.0347603.us.i.us, i64 %indvars.iv774.i.us ; 2 uses
  %i.si = load float, ptr %i.sh, align 4, !tbaa !53
  store float %i.si, ptr %.1345599.us.i.us, align 4, !tbaa !53
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.sh, i64 %i.oe ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us, i64 4
  %i.sl = load float, ptr %i.sj, align 4, !tbaa !53
  store float %i.sl, ptr %i.sk, align 4, !tbaa !53
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %i.oe ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us, i64 8
  %i.so = load float, ptr %i.sm, align 4, !tbaa !53
  store float %i.so, ptr %i.sn, align 4, !tbaa !53
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %i.oe
  %i.sq = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us, i64 12
  %i.sr = load float, ptr %i.sp, align 4, !tbaa !53
  store float %i.sr, ptr %i.sq, align 4, !tbaa !53
  %i.ss = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us, i64 16
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %.0347603.us.i.us, i64 %indvars.iv774.i.us
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 4 ; 2 uses
  %i.sv = load float, ptr %i.su, align 4, !tbaa !53
  store float %i.sv, ptr %i.ss, align 4, !tbaa !53
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.su, i64 %i.oe ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us, i64 20
  %i.sy = load float, ptr %i.sw, align 4, !tbaa !53
  store float %i.sy, ptr %i.sx, align 4, !tbaa !53
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %i.oe ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us, i64 24
  %i.tb = load float, ptr %i.sz, align 4, !tbaa !53
  store float %i.tb, ptr %i.ta, align 4, !tbaa !53
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.sz, i64 %i.oe
  %i.td = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us, i64 28
  %i.te = load float, ptr %i.tc, align 4, !tbaa !53
  store float %i.te, ptr %i.td, align 4, !tbaa !53
  %i.tf = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us, i64 32 ; 2 uses
  %indvars.iv.next775.i.us.1 = add nuw nsw i64 %indvars.iv774.i.us, 2 ; 2 uses
  %exitcond778.not.i.us.1 = icmp eq i64 %indvars.iv.next775.i.us.1, %wide.trip.count777.i
  br i1 %exitcond778.not.i.us.1, label %._crit_edge601.us.i.us, label %scalar.ph539, !llvm.loop !114

._crit_edge601.us.i.us:                           ; preds = %scalar.ph539.prol.loopexit, %scalar.ph539, %middle.block552
  %.lcssa = phi ptr [ %i.rl, %middle.block552 ], [ %.lcssa561.unr, %scalar.ph539.prol.loopexit ], [ %i.tf, %scalar.ph539 ] ; 3 uses
  %i.tg = getelementptr [4 x i8], ptr %.0347603.us.i.us, i64 %i.og ; 4 uses
  %i.th = add nuw nsw i32 %.0341605.us.i.us, 4    ; 2 uses
  %i.ti = or disjoint i32 %i.th, 3
  %i.tj = icmp slt i32 %i.ti, %i.n
  %indvar.next474 = add i64 %indvar473, 1
  br i1 %i.tj, label %.preheader474.us.i.us, label %.preheader476.i.loopexit.us, !llvm.loop !115

.preheader473.us.i.us:                            ; preds = %.preheader473.us.i.us.preheader, %._crit_edge617.us.i.us
  %.1342621.us.i.us = phi i32 [ %i.vc, %._crit_edge617.us.i.us ], [ %i.ok, %.preheader473.us.i.us.preheader ]
  %.3620.us.i.us = phi ptr [ %.lcssa102, %._crit_edge617.us.i.us ], [ %.lcssa, %.preheader473.us.i.us.preheader ] ; 8 uses
  %.1348619.us.i.us = phi ptr [ %i.vb, %._crit_edge617.us.i.us ], [ %i.tg, %.preheader473.us.i.us.preheader ] ; 7 uses
  br i1 %min.iters.check486, label %scalar.ph485.preheader, label %vector.memcheck469

vector.memcheck469:                               ; preds = %.preheader473.us.i.us
  %scevgep470 = getelementptr i8, ptr %.3620.us.i.us, i64 %i.oo ; 2 uses
  %bound0478 = icmp ult ptr %.3620.us.i.us, %scevgep476
  %bound1479 = icmp ult ptr %scevgep475, %scevgep470
  %found.conflict480 = and i1 %bound0478, %bound1479
  %bound0481 = icmp ult ptr %.3620.us.i.us, %scevgep477
  %bound1482 = icmp ult ptr %i.tg, %scevgep470
  %found.conflict483 = and i1 %bound0481, %bound1482
  %conflict.rdx484 = or i1 %found.conflict480, %found.conflict483
  br i1 %conflict.rdx484, label %scalar.ph485.preheader, label %vector.ph487

vector.ph487:                                     ; preds = %vector.memcheck469
  %i.tk = getelementptr i8, ptr %.3620.us.i.us, i64 %i.py ; 2 uses
  br label %vector.body489

vector.body489:                                   ; preds = %vector.body489, %vector.ph487
  %index490 = phi i64 [ 0, %vector.ph487 ], [ %index.next499, %vector.body489 ] ; 3 uses
  %i.tl = shl i64 %index490, 3                    ; 2 uses
  %next.gep491 = getelementptr i8, ptr %.3620.us.i.us, i64 %i.tl
  %i.tm = getelementptr i8, ptr %.3620.us.i.us, i64 %i.tl
  %next.gep492 = getelementptr i8, ptr %i.tm, i64 16
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %index490 ; 3 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  %wide.load493 = load <2 x float>, ptr %i.tn, align 4, !tbaa !53, !alias.scope !116
  %wide.load494 = load <2 x float>, ptr %i.to, align 4, !tbaa !53, !alias.scope !116
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.tn, i64 %i.oe ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 8
  %wide.load495 = load <2 x float>, ptr %i.tp, align 4, !tbaa !53, !alias.scope !119
  %wide.load496 = load <2 x float>, ptr %i.tq, align 4, !tbaa !53, !alias.scope !119
  %interleaved.vec497 = shufflevector <2 x float> %wide.load493, <2 x float> %wide.load495, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec497, ptr %next.gep491, align 4, !tbaa !53, !alias.scope !121, !noalias !123
  %interleaved.vec498 = shufflevector <2 x float> %wide.load494, <2 x float> %wide.load496, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec498, ptr %next.gep492, align 4, !tbaa !53, !alias.scope !121, !noalias !123
  %index.next499 = add nuw i64 %index490, 4       ; 2 uses
  %i.tr = icmp eq i64 %index.next499, %n.vec488
  br i1 %i.tr, label %middle.block500, label %vector.body489, !llvm.loop !124

middle.block500:                                  ; preds = %vector.body489
  br i1 %cmp.n501, label %._crit_edge617.us.i.us, label %scalar.ph485.preheader

scalar.ph485.preheader:                           ; preds = %vector.memcheck469, %.preheader473.us.i.us, %middle.block500
  %indvars.iv780.i.us.ph = phi i64 [ 0, %vector.memcheck469 ], [ 0, %.preheader473.us.i.us ], [ %n.vec488, %middle.block500 ] ; 3 uses
  %.4615.us.i.us.ph = phi ptr [ %.3620.us.i.us, %vector.memcheck469 ], [ %.3620.us.i.us, %.preheader473.us.i.us ], [ %i.tk, %middle.block500 ] ; 2 uses
  br i1 %lcmp.mod606.not, label %scalar.ph485.prol.loopexit, label %scalar.ph485.prol

scalar.ph485.prol:                                ; preds = %scalar.ph485.preheader, %scalar.ph485.prol
  %indvars.iv780.i.us.prol = phi i64 [ %indvars.iv.next781.i.us.prol, %scalar.ph485.prol ], [ %indvars.iv780.i.us.ph, %scalar.ph485.preheader ] ; 2 uses
  %.4615.us.i.us.prol = phi ptr [ %i.tx, %scalar.ph485.prol ], [ %.4615.us.i.us.ph, %scalar.ph485.preheader ] ; 3 uses
  %prol.iter607 = phi i64 [ %prol.iter607.next, %scalar.ph485.prol ], [ 0, %scalar.ph485.preheader ]
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %indvars.iv780.i.us.prol ; 2 uses
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !53
  store float %i.tt, ptr %.4615.us.i.us.prol, align 4, !tbaa !53
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.ts, i64 %i.oe
  %i.tv = getelementptr inbounds nuw i8, ptr %.4615.us.i.us.prol, i64 4
  %i.tw = load float, ptr %i.tu, align 4, !tbaa !53
  store float %i.tw, ptr %i.tv, align 4, !tbaa !53
  %i.tx = getelementptr inbounds nuw i8, ptr %.4615.us.i.us.prol, i64 8 ; 3 uses
  %indvars.iv.next781.i.us.prol = add nuw nsw i64 %indvars.iv780.i.us.prol, 1 ; 2 uses
  %prol.iter607.next = add i64 %prol.iter607, 1   ; 2 uses
  %prol.iter607.cmp.not = icmp eq i64 %prol.iter607.next, %xtraiter605
  br i1 %prol.iter607.cmp.not, label %scalar.ph485.prol.loopexit, label %scalar.ph485.prol, !llvm.loop !125

scalar.ph485.prol.loopexit:                       ; preds = %scalar.ph485.prol, %scalar.ph485.preheader
  %.lcssa563.unr = phi ptr [ poison, %scalar.ph485.preheader ], [ %i.tx, %scalar.ph485.prol ]
  %indvars.iv780.i.us.unr = phi i64 [ %indvars.iv780.i.us.ph, %scalar.ph485.preheader ], [ %indvars.iv.next781.i.us.prol, %scalar.ph485.prol ]
  %.4615.us.i.us.unr = phi ptr [ %.4615.us.i.us.ph, %scalar.ph485.preheader ], [ %i.tx, %scalar.ph485.prol ]
  %i.ty = sub nsw i64 %indvars.iv780.i.us.ph, %wide.trip.count777.i
  %i.tz = icmp ugt i64 %i.ty, -4
  br i1 %i.tz, label %._crit_edge617.us.i.us, label %scalar.ph485

scalar.ph485:                                     ; preds = %scalar.ph485.prol.loopexit, %scalar.ph485
  %indvars.iv780.i.us = phi i64 [ %indvars.iv.next781.i.us.3, %scalar.ph485 ], [ %indvars.iv780.i.us.unr, %scalar.ph485.prol.loopexit ] ; 5 uses
  %.4615.us.i.us = phi ptr [ %i.va, %scalar.ph485 ], [ %.4615.us.i.us.unr, %scalar.ph485.prol.loopexit ] ; 9 uses
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %indvars.iv780.i.us ; 2 uses
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !53
  store float %i.ub, ptr %.4615.us.i.us, align 4, !tbaa !53
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.ua, i64 %i.oe
  %i.ud = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 4
  %i.ue = load float, ptr %i.uc, align 4, !tbaa !53
  store float %i.ue, ptr %i.ud, align 4, !tbaa !53
  %i.uf = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 8
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %indvars.iv780.i.us
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 4 ; 2 uses
  %i.ui = load float, ptr %i.uh, align 4, !tbaa !53
  store float %i.ui, ptr %i.uf, align 4, !tbaa !53
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %i.oe
  %i.uk = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 12
  %i.ul = load float, ptr %i.uj, align 4, !tbaa !53
  store float %i.ul, ptr %i.uk, align 4, !tbaa !53
  %i.um = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 16
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %indvars.iv780.i.us
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 8 ; 2 uses
  %i.up = load float, ptr %i.uo, align 4, !tbaa !53
  store float %i.up, ptr %i.um, align 4, !tbaa !53
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.uo, i64 %i.oe
  %i.ur = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 20
  %i.us = load float, ptr %i.uq, align 4, !tbaa !53
  store float %i.us, ptr %i.ur, align 4, !tbaa !53
  %i.ut = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 24
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %indvars.iv780.i.us
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 12 ; 2 uses
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !53
  store float %i.uw, ptr %i.ut, align 4, !tbaa !53
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.uv, i64 %i.oe
  %i.uy = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 28
  %i.uz = load float, ptr %i.ux, align 4, !tbaa !53
  store float %i.uz, ptr %i.uy, align 4, !tbaa !53
  %i.va = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 32 ; 2 uses
  %indvars.iv.next781.i.us.3 = add nuw nsw i64 %indvars.iv780.i.us, 4 ; 2 uses
  %exitcond784.not.i.us.3 = icmp eq i64 %indvars.iv.next781.i.us.3, %wide.trip.count777.i
  br i1 %exitcond784.not.i.us.3, label %._crit_edge617.us.i.us, label %scalar.ph485, !llvm.loop !127

._crit_edge617.us.i.us:                           ; preds = %scalar.ph485.prol.loopexit, %scalar.ph485, %middle.block500
  %.lcssa102 = phi ptr [ %i.tk, %middle.block500 ], [ %.lcssa563.unr, %scalar.ph485.prol.loopexit ], [ %i.va, %scalar.ph485 ] ; 2 uses
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %i.oi ; 2 uses
  %i.vc = add nuw nsw i32 %.1342621.us.i.us, 2    ; 3 uses
  %i.vd = or disjoint i32 %i.vc, 1
  %i.ve = icmp slt i32 %i.vd, %i.n
  br i1 %i.ve, label %.preheader473.us.i.us, label %.preheader475.i.us, !llvm.loop !128

.preheader475.i.us:                               ; preds = %._crit_edge617.us.i.us, %.preheader476.i.loopexit.us
  %.1348.lcssa.i.us = phi ptr [ %i.tg, %.preheader476.i.loopexit.us ], [ %i.vb, %._crit_edge617.us.i.us ] ; 11 uses
  %.3.lcssa.i.us = phi ptr [ %.lcssa, %.preheader476.i.loopexit.us ], [ %.lcssa102, %._crit_edge617.us.i.us ]
  %.1342.lcssa.i.us = phi i32 [ %i.ok, %.preheader476.i.loopexit.us ], [ %i.vc, %._crit_edge617.us.i.us ] ; 2 uses
  %i.vf = icmp sge i32 %.1342.lcssa.i.us, %i.n
  %brmerge645.i.us = or i1 %i.oj, %i.vf
  br i1 %brmerge645.i.us, label %._crit_edge634.split.i.us, label %.preheader.i.us.preheader

.preheader.i.us.preheader:                        ; preds = %.preheader475.i.us
  %.1348.lcssa.i.us452 = ptrtoaddr ptr %.1348.lcssa.i.us to i64
  br label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader.i.us.preheader, %._crit_edge630.i.us
  %.2343633.i.us = phi i32 [ %i.wx, %._crit_edge630.i.us ], [ %.1342.lcssa.i.us, %.preheader.i.us.preheader ]
  %.6632.i.us = phi ptr [ %.lcssa105, %._crit_edge630.i.us ], [ %.3.lcssa.i.us, %.preheader.i.us.preheader ] ; 4 uses
  %.6632.i.us453 = ptrtoaddr ptr %.6632.i.us to i64
  %i.vg = sub i64 %.1348.lcssa.i.us452, %.6632.i.us453
  %diff.check454 = icmp ugt i64 %i.vg, -32
  %or.cond = select i1 %min.iters.check456, i1 true, i1 %diff.check454
  br i1 %or.cond, label %scalar.ph455.preheader, label %vector.ph457

vector.ph457:                                     ; preds = %.preheader.i.us
  %i.vh = getelementptr i8, ptr %.6632.i.us, i64 %i.pz ; 2 uses
  br label %vector.body459

vector.body459:                                   ; preds = %vector.body459, %vector.ph457
  %index460 = phi i64 [ 0, %vector.ph457 ], [ %index.next464, %vector.body459 ] ; 3 uses
  %i.vi = shl i64 %index460, 2
  %next.gep461 = getelementptr i8, ptr %.6632.i.us, i64 %i.vi ; 2 uses
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %index460 ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 16
  %wide.load462 = load <4 x float>, ptr %i.vj, align 4, !tbaa !53
  %wide.load463 = load <4 x float>, ptr %i.vk, align 4, !tbaa !53
  %i.vl = getelementptr i8, ptr %next.gep461, i64 16
  store <4 x float> %wide.load462, ptr %next.gep461, align 4, !tbaa !53
  store <4 x float> %wide.load463, ptr %i.vl, align 4, !tbaa !53
  %index.next464 = add nuw i64 %index460, 8       ; 2 uses
  %i.vm = icmp eq i64 %index.next464, %n.vec458
  br i1 %i.vm, label %middle.block465, label %vector.body459, !llvm.loop !129

middle.block465:                                  ; preds = %vector.body459
  br i1 %cmp.n466, label %._crit_edge630.i.us, label %scalar.ph455.preheader

scalar.ph455.preheader:                           ; preds = %.preheader.i.us, %middle.block465
  %indvars.iv785.i.us.ph = phi i64 [ 0, %.preheader.i.us ], [ %n.vec458, %middle.block465 ] ; 3 uses
  %.7628.i.us.ph = phi ptr [ %.6632.i.us, %.preheader.i.us ], [ %i.vh, %middle.block465 ] ; 2 uses
  br i1 %lcmp.mod609.not, label %scalar.ph455.prol.loopexit, label %scalar.ph455.prol

scalar.ph455.prol:                                ; preds = %scalar.ph455.preheader, %scalar.ph455.prol
  %indvars.iv785.i.us.prol = phi i64 [ %indvars.iv.next786.i.us.prol, %scalar.ph455.prol ], [ %indvars.iv785.i.us.ph, %scalar.ph455.preheader ] ; 2 uses
  %.7628.i.us.prol = phi ptr [ %i.vp, %scalar.ph455.prol ], [ %.7628.i.us.ph, %scalar.ph455.preheader ] ; 2 uses
  %prol.iter610 = phi i64 [ %prol.iter610.next, %scalar.ph455.prol ], [ 0, %scalar.ph455.preheader ]
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us.prol
  %i.vo = load float, ptr %i.vn, align 4, !tbaa !53
  store float %i.vo, ptr %.7628.i.us.prol, align 4, !tbaa !53
  %i.vp = getelementptr inbounds nuw i8, ptr %.7628.i.us.prol, i64 4 ; 3 uses
  %indvars.iv.next786.i.us.prol = add nuw nsw i64 %indvars.iv785.i.us.prol, 1 ; 2 uses
  %prol.iter610.next = add i64 %prol.iter610, 1   ; 2 uses
  %prol.iter610.cmp.not = icmp eq i64 %prol.iter610.next, %xtraiter608
  br i1 %prol.iter610.cmp.not, label %scalar.ph455.prol.loopexit, label %scalar.ph455.prol, !llvm.loop !130

scalar.ph455.prol.loopexit:                       ; preds = %scalar.ph455.prol, %scalar.ph455.preheader
  %.lcssa566.unr = phi ptr [ poison, %scalar.ph455.preheader ], [ %i.vp, %scalar.ph455.prol ]
  %indvars.iv785.i.us.unr = phi i64 [ %indvars.iv785.i.us.ph, %scalar.ph455.preheader ], [ %indvars.iv.next786.i.us.prol, %scalar.ph455.prol ]
  %.7628.i.us.unr = phi ptr [ %.7628.i.us.ph, %scalar.ph455.preheader ], [ %i.vp, %scalar.ph455.prol ]
  %i.vq = sub nsw i64 %indvars.iv785.i.us.ph, %wide.trip.count777.i
  %i.vr = icmp ugt i64 %i.vq, -8
  br i1 %i.vr, label %._crit_edge630.i.us, label %scalar.ph455

scalar.ph455:                                     ; preds = %scalar.ph455.prol.loopexit, %scalar.ph455
  %indvars.iv785.i.us = phi i64 [ %indvars.iv.next786.i.us.7, %scalar.ph455 ], [ %indvars.iv785.i.us.unr, %scalar.ph455.prol.loopexit ] ; 9 uses
  %.7628.i.us = phi ptr [ %i.ww, %scalar.ph455 ], [ %.7628.i.us.unr, %scalar.ph455.prol.loopexit ] ; 9 uses
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.vt = load float, ptr %i.vs, align 4, !tbaa !53
  store float %i.vt, ptr %.7628.i.us, align 4, !tbaa !53
  %i.vu = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 4
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 4
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !53
  store float %i.vx, ptr %i.vu, align 4, !tbaa !53
  %i.vy = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 8
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 8
  %i.wb = load float, ptr %i.wa, align 4, !tbaa !53
  store float %i.wb, ptr %i.vy, align 4, !tbaa !53
  %i.wc = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 12
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 12
  %i.wf = load float, ptr %i.we, align 4, !tbaa !53
end_hunk_1
begin_hunk_2_@_ZN4ncnn17Convolution1D_x8615create_pipelineERKNS_6OptionE:bb.a
  br label %.preheader473.us.i.us

_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split:              ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph.i
  %i.wz = icmp sgt i32 %i.n, 1
  %i.xa = and i32 %i.n, -2
  %i.xb = mul i64 %i.ob, %i.nz
  %i.xc = shl nuw nsw i64 %wide.trip.count777.i, 3
  %scevgep417 = getelementptr i8, ptr %i.nx, i64 %i.xc
  %i.xd = shl nuw nsw i64 %i.oe, 2                ; 2 uses
  %scevgep419 = getelementptr i8, ptr %i.nv, i64 %i.xd
  %i.xe = mul i32 %.1.lcssa.i, %i.j
  %i.xf = mul i32 %i.xe, %i.n
  %i.xg = mul i32 %i.j, %i.n
  %i.xh = shl nuw nsw i64 %wide.trip.count777.i, 2 ; 2 uses
  %i.xi = getelementptr i8, ptr %i.nv, i64 %i.xd
  %scevgep421 = getelementptr i8, ptr %i.xi, i64 %i.xh
  %scevgep423 = getelementptr i8, ptr %i.nv, i64 %i.xh
  %min.iters.check433 = icmp ult i32 %i.j, 6
  %n.vec435 = and i64 %wide.trip.count777.i, 2147483644 ; 4 uses
  %i.xj = shl nuw nsw i64 %n.vec435, 3
  %cmp.n448 = icmp eq i64 %n.vec435, %wide.trip.count777.i
  %xtraiter596 = and i64 %wide.trip.count777.i, 3 ; 2 uses
  %lcmp.mod597.not = icmp eq i64 %xtraiter596, 0
  %min.iters.check400 = icmp ult i32 %i.j, 8
  %n.vec402 = and i64 %wide.trip.count777.i, 2147483640 ; 4 uses
  %i.xk = shl nuw nsw i64 %n.vec402, 2
  %cmp.n410 = icmp eq i64 %n.vec402, %wide.trip.count777.i
  %xtraiter599 = and i64 %wide.trip.count777.i, 7 ; 2 uses
  %lcmp.mod600.not = icmp eq i64 %xtraiter599, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i

_ZN4ncnn3MatD2Ev.exit419.i:                       ; preds = %._crit_edge591.split.i, %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i
  %indvar = phi i32 [ %indvar.next, %._crit_edge591.split.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i ] ; 2 uses
  %indvars.iv764.i = phi i64 [ %indvars.iv.next765.i, %._crit_edge591.split.i ], [ %i.du, %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i ] ; 2 uses
  %indvars.iv762.i = phi i32 [ %indvars.iv.next763.i, %._crit_edge591.split.i ], [ %i.dv, %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i ] ; 2 uses
  %i.xl = mul i32 %i.ej, %indvar                  ; 2 uses
  %i.xm = add i32 %i.eh, %i.xl
  %i.xn = sext i32 %i.xm to i64
  %i.xo = shl nsw i64 %i.xn, 2                    ; 7 uses
  %scevgep309 = getelementptr i8, ptr %scevgep308, i64 %i.xo
  %scevgep311 = getelementptr i8, ptr %scevgep310, i64 %i.xo
  %scevgep313 = getelementptr i8, ptr %scevgep312, i64 %i.xo
  %scevgep315 = getelementptr i8, ptr %scevgep314, i64 %i.xo
  %scevgep317 = getelementptr i8, ptr %scevgep316, i64 %i.xo
  %scevgep319 = getelementptr i8, ptr %scevgep318, i64 %i.xo
  %scevgep321 = getelementptr i8, ptr %scevgep320, i64 %i.xo
  %i.xp = add i32 %i.ex, %i.xl
  %i.xq = sext i32 %i.xp to i64
  %i.xr = shl nsw i64 %i.xq, 2                    ; 7 uses
  %scevgep323 = getelementptr i8, ptr %scevgep322, i64 %i.xr
  %scevgep325 = getelementptr i8, ptr %scevgep324, i64 %i.xr
  %scevgep327 = getelementptr i8, ptr %scevgep326, i64 %i.xr
  %scevgep329 = getelementptr i8, ptr %scevgep328, i64 %i.xr
  %scevgep331 = getelementptr i8, ptr %scevgep330, i64 %i.xr
  %scevgep333 = getelementptr i8, ptr %scevgep332, i64 %i.xr
  %scevgep335 = getelementptr i8, ptr %scevgep334, i64 %i.xr
  %i.xs = trunc i64 %indvars.iv764.i to i32       ; 3 uses
  %i.xt = mul i32 %i.df, %i.xs
  %i.xu = sext i32 %i.xt to i64
  %i.xv = getelementptr [4 x i8], ptr %i.de, i64 %i.xu ; 3 uses
  %i.xw = mul i32 %indvars.iv762.i, %i.df
  %i.xx = sext i32 %i.xw to i64
  %i.xy = getelementptr [4 x i8], ptr %i.de, i64 %i.xx ; 3 uses
  %i.xz = lshr i32 %i.xs, 2
  %i.ya = lshr i32 %i.xs, 1
  %i.yb = and i32 %i.ya, 1
  %i.yc = add nuw nsw i32 %i.yb, %i.xz
  %i.yd = zext nneg i32 %i.yc to i64
  %.reass595.i = mul i64 %factor.op.mul594.i, %i.yd
  %i.ye = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.reass595.i ; 2 uses
  br i1 %i.dl, label %.preheader480.lr.ph.i, label %.preheader482.i

.preheader480.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit419.i
  br i1 %i.dm, label %.preheader480.us.i.preheader, label %._crit_edge591.split.i

.preheader480.us.i.preheader:                     ; preds = %.preheader480.lr.ph.i
  %i.yf = insertelement <8 x ptr> poison, ptr %scevgep315, i64 0
  %i.yg = insertelement <8 x ptr> %i.yf, ptr %scevgep311, i64 1
  %i.yh = insertelement <8 x ptr> %i.yg, ptr %scevgep319, i64 2
  %i.yi = insertelement <8 x ptr> %i.yh, ptr %scevgep321, i64 3
  %i.yj = insertelement <8 x ptr> %i.yi, ptr %scevgep325, i64 4
  %i.yk = insertelement <8 x ptr> %i.yj, ptr %scevgep329, i64 5
  %i.yl = insertelement <8 x ptr> %i.yk, ptr %scevgep333, i64 6
  %i.ym = insertelement <8 x ptr> %i.yl, ptr %scevgep335, i64 7
  %i.yn = insertelement <8 x ptr> poison, ptr %scevgep313, i64 0
  %i.yo = insertelement <8 x ptr> %i.yn, ptr %scevgep309, i64 1
  %i.yp = insertelement <8 x ptr> %i.yo, ptr %scevgep317, i64 2
  %i.yq = insertelement <8 x ptr> %i.yp, ptr %i.xy, i64 3
  %i.yr = insertelement <8 x ptr> %i.yq, ptr %scevgep323, i64 4
  %i.ys = insertelement <8 x ptr> %i.yr, ptr %scevgep327, i64 5
  %i.yt = insertelement <8 x ptr> %i.ys, ptr %scevgep331, i64 6
  %i.yu = insertelement <8 x ptr> %i.yt, ptr %i.xv, i64 7
  br label %.preheader480.us.i

.preheader480.us.i:                               ; preds = %.preheader480.us.i.preheader, %._crit_edge551.us.i
  %.0363556.us.i = phi i32 [ %i.aav, %._crit_edge551.us.i ], [ 0, %.preheader480.us.i.preheader ]
  %.0366555.us.i = phi ptr [ %.lcssa108, %._crit_edge551.us.i ], [ %i.ye, %.preheader480.us.i.preheader ] ; 6 uses
  %.0373554.us.i = phi ptr [ %i.aau, %._crit_edge551.us.i ], [ %i.xy, %.preheader480.us.i.preheader ] ; 3 uses
  %.0375553.us.i = phi ptr [ %i.aat, %._crit_edge551.us.i ], [ %i.xv, %.preheader480.us.i.preheader ] ; 3 uses
  br i1 %min.iters.check376, label %scalar.ph375.preheader, label %vector.memcheck306

vector.memcheck306:                               ; preds = %.preheader480.us.i
  %scevgep307 = getelementptr i8, ptr %.0366555.us.i, i64 %i.ee
  %i.yv = insertelement <8 x ptr> poison, ptr %.0366555.us.i, i64 0
  %i.yw = shufflevector <8 x ptr> %i.yv, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.yx = icmp ult <8 x ptr> %i.yw, %i.ym
  %i.yy = insertelement <8 x ptr> poison, ptr %scevgep307, i64 0
  %i.yz = shufflevector <8 x ptr> %i.yy, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.za = icmp ult <8 x ptr> %i.yu, %i.yz
  %i.zb = and <8 x i1> %i.yx, %i.za
  %i.zc = bitcast <8 x i1> %i.zb to i8
  %i.zd = icmp ne i8 %i.zc, 0
  %op.rdx558 = or i1 %i.zd, %stride.check343
  br i1 %op.rdx558, label %scalar.ph375.preheader, label %vector.ph377

vector.ph377:                                     ; preds = %vector.memcheck306
  %i.ze = getelementptr i8, ptr %.0366555.us.i, i64 %i.ey ; 2 uses
  br label %vector.body379

vector.body379:                                   ; preds = %vector.body379, %vector.ph377
  %index380 = phi i64 [ 0, %vector.ph377 ], [ %index.next391, %vector.body379 ] ; 4 uses
  %i.zf = shl i64 %index380, 5
  %next.gep381 = getelementptr i8, ptr %.0366555.us.i, i64 %i.zf
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %.0375553.us.i, i64 %index380 ; 4 uses
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %.0373554.us.i, i64 %index380 ; 4 uses
  %wide.load382 = load <4 x float>, ptr %i.zg, align 4, !tbaa !53, !alias.scope !134
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %i.zg, i64 %i.dn
  %wide.load383 = load <4 x float>, ptr %i.zi, align 4, !tbaa !53, !alias.scope !137
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.zg, i64 %2
  %wide.load384 = load <4 x float>, ptr %i.zj, align 4, !tbaa !53, !alias.scope !139
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %i.zg, i64 %3
  %wide.load385 = load <4 x float>, ptr %i.zk, align 4, !tbaa !53, !alias.scope !141
  %wide.load386 = load <4 x float>, ptr %i.zh, align 4, !tbaa !53, !alias.scope !143
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.zh, i64 %i.dn
  %wide.load387 = load <4 x float>, ptr %i.zl, align 4, !tbaa !53, !alias.scope !145
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %i.zh, i64 %2
  %wide.load388 = load <4 x float>, ptr %i.zm, align 4, !tbaa !53, !alias.scope !147
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %i.zh, i64 %3
  %wide.load389 = load <4 x float>, ptr %i.zn, align 4, !tbaa !53, !alias.scope !149
  %i.zo = shufflevector <4 x float> %wide.load382, <4 x float> %wide.load383, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.zp = shufflevector <4 x float> %wide.load384, <4 x float> %wide.load385, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.zq = shufflevector <4 x float> %wide.load386, <4 x float> %wide.load387, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.zr = shufflevector <4 x float> %wide.load388, <4 x float> %wide.load389, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.zs = shufflevector <8 x float> %i.zo, <8 x float> %i.zp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zt = shufflevector <8 x float> %i.zq, <8 x float> %i.zr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec390 = shufflevector <16 x float> %i.zs, <16 x float> %i.zt, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec390, ptr %next.gep381, align 4, !tbaa !53, !alias.scope !151, !noalias !153
  %index.next391 = add nuw i64 %index380, 4       ; 2 uses
  %i.zu = icmp eq i64 %index.next391, %n.vec378
  br i1 %i.zu, label %middle.block392, label %vector.body379, !llvm.loop !154

middle.block392:                                  ; preds = %vector.body379
  br i1 %cmp.n393, label %._crit_edge551.us.i, label %scalar.ph375.preheader

scalar.ph375.preheader:                           ; preds = %vector.memcheck306, %.preheader480.us.i, %middle.block392
  %indvars.iv744.i.ph = phi i64 [ 0, %vector.memcheck306 ], [ 0, %.preheader480.us.i ], [ %n.vec378, %middle.block392 ]
  %.1367549.us.i.ph = phi ptr [ %.0366555.us.i, %vector.memcheck306 ], [ %.0366555.us.i, %.preheader480.us.i ], [ %i.ze, %middle.block392 ]
  br label %scalar.ph375

scalar.ph375:                                     ; preds = %scalar.ph375.preheader, %scalar.ph375
  %indvars.iv744.i = phi i64 [ %indvars.iv.next745.i, %scalar.ph375 ], [ %indvars.iv744.i.ph, %scalar.ph375.preheader ] ; 3 uses
  %.1367549.us.i = phi ptr [ %i.aas, %scalar.ph375 ], [ %.1367549.us.i.ph, %scalar.ph375.preheader ] ; 9 uses
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %.0375553.us.i, i64 %indvars.iv744.i ; 4 uses
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %.0373554.us.i, i64 %indvars.iv744.i ; 4 uses
  %i.zx = load float, ptr %i.zv, align 4, !tbaa !53
  store float %i.zx, ptr %.1367549.us.i, align 4, !tbaa !53
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.zv, i64 %i.dn
  %i.zz = load float, ptr %i.zy, align 4, !tbaa !53
  %i.aaa = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 4
  store float %i.zz, ptr %i.aaa, align 4, !tbaa !53
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.zv, i64 %2
  %i.aac = load float, ptr %i.aab, align 4, !tbaa !53
  %i.aad = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 8
  store float %i.aac, ptr %i.aad, align 4, !tbaa !53
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.zv, i64 %3
  %i.aaf = load float, ptr %i.aae, align 4, !tbaa !53
  %i.aag = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 12
  store float %i.aaf, ptr %i.aag, align 4, !tbaa !53
  %i.aah = load float, ptr %i.zw, align 4, !tbaa !53
  %i.aai = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 16
  store float %i.aah, ptr %i.aai, align 4, !tbaa !53
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %i.dn
  %i.aak = load float, ptr %i.aaj, align 4, !tbaa !53
  %i.aal = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 20
  store float %i.aak, ptr %i.aal, align 4, !tbaa !53
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %2
  %i.aan = load float, ptr %i.aam, align 4, !tbaa !53
  %i.aao = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 24
  store float %i.aan, ptr %i.aao, align 4, !tbaa !53
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %3
  %i.aaq = load float, ptr %i.aap, align 4, !tbaa !53
  %i.aar = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 28
  store float %i.aaq, ptr %i.aar, align 4, !tbaa !53
  %i.aas = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 32 ; 2 uses
  %indvars.iv.next745.i = add nuw nsw i64 %indvars.iv744.i, 1 ; 2 uses
  %exitcond748.not.i = icmp eq i64 %indvars.iv.next745.i, %wide.trip.count747.i
  br i1 %exitcond748.not.i, label %._crit_edge551.us.i, label %scalar.ph375, !llvm.loop !155

._crit_edge551.us.i:                              ; preds = %scalar.ph375, %middle.block392
  %.lcssa108 = phi ptr [ %i.ze, %middle.block392 ], [ %i.aas, %scalar.ph375 ] ; 2 uses
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %.0375553.us.i, i64 %i.dr ; 2 uses
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %.0373554.us.i, i64 %i.dr ; 2 uses
  %i.aav = add nuw nsw i32 %.0363556.us.i, 4      ; 2 uses
  %i.aaw = or disjoint i32 %i.aav, 3
  %i.aax = icmp slt i32 %i.aaw, %i.n
  br i1 %i.aax, label %.preheader480.us.i, label %.preheader482.i, !llvm.loop !156

.preheader482.i:                                  ; preds = %._crit_edge551.us.i, %_ZN4ncnn3MatD2Ev.exit419.i
  %.0375.lcssa.i = phi ptr [ %i.xv, %_ZN4ncnn3MatD2Ev.exit419.i ], [ %i.aat, %._crit_edge551.us.i ] ; 6 uses
  %.0373.lcssa.i = phi ptr [ %i.xy, %_ZN4ncnn3MatD2Ev.exit419.i ], [ %i.aau, %._crit_edge551.us.i ] ; 6 uses
  %.0366.lcssa.i = phi ptr [ %i.ye, %_ZN4ncnn3MatD2Ev.exit419.i ], [ %.lcssa108, %._crit_edge551.us.i ] ; 2 uses
  %.0363.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit419.i ], [ %i.dt, %._crit_edge551.us.i ] ; 4 uses
  %i.aay = or disjoint i32 %.0363.lcssa.i, 1
  %i.aaz = icmp slt i32 %i.aay, %i.n
  br i1 %i.aaz, label %.preheader479.lr.ph.i, label %.preheader481.i

.preheader479.lr.ph.i:                            ; preds = %.preheader482.i
  br i1 %i.dm, label %.preheader479.us.i.preheader, label %._crit_edge591.split.i

.preheader479.us.i.preheader:                     ; preds = %.preheader479.lr.ph.i
  %scevgep260 = getelementptr i8, ptr %.0373.lcssa.i, i64 %i.ea
  %scevgep261 = getelementptr i8, ptr %.0373.lcssa.i, i64 %i.eb
  %i.aba = sub i32 %i.ed, %.0363.lcssa.i
  %i.abb = lshr i32 %i.aba, 1
  %i.abc = zext nneg i32 %i.abb to i64
  %i.abd = mul i64 %i.ec, %i.abc                  ; 4 uses
  %scevgep262 = getelementptr i8, ptr %scevgep261, i64 %i.abd
  %scevgep263 = getelementptr i8, ptr %.0375.lcssa.i, i64 %i.ea
  %scevgep264 = getelementptr i8, ptr %.0375.lcssa.i, i64 %i.eb
  %scevgep265 = getelementptr i8, ptr %scevgep264, i64 %i.abd
  %scevgep266 = getelementptr i8, ptr %.0373.lcssa.i, i64 %i.dy
  %scevgep267 = getelementptr i8, ptr %scevgep266, i64 %i.abd
  %scevgep268 = getelementptr i8, ptr %.0375.lcssa.i, i64 %i.dy
  %scevgep269 = getelementptr i8, ptr %scevgep268, i64 %i.abd
  %i.abe = insertelement <4 x ptr> poison, ptr %scevgep265, i64 0
  %i.abf = insertelement <4 x ptr> %i.abe, ptr %scevgep262, i64 1
  %i.abg = insertelement <4 x ptr> %i.abf, ptr %scevgep267, i64 2
  %i.abh = insertelement <4 x ptr> %i.abg, ptr %scevgep269, i64 3
  %i.abi = insertelement <4 x ptr> poison, ptr %scevgep263, i64 0
  %i.abj = insertelement <4 x ptr> %i.abi, ptr %scevgep260, i64 1
  %i.abk = insertelement <4 x ptr> %i.abj, ptr %.0373.lcssa.i, i64 2
  %i.abl = insertelement <4 x ptr> %i.abk, ptr %.0375.lcssa.i, i64 3
  br label %.preheader479.us.i

.preheader479.us.i:                               ; preds = %.preheader479.us.i.preheader, %._crit_edge571.us.i
  %.1364576.us.i = phi i32 [ %i.adr, %._crit_edge571.us.i ], [ %.0363.lcssa.i, %.preheader479.us.i.preheader ]
  %.2368575.us.i = phi ptr [ %.lcssa111, %._crit_edge571.us.i ], [ %.0366.lcssa.i, %.preheader479.us.i.preheader ] ; 6 uses
  %.1374574.us.i = phi ptr [ %i.adq, %._crit_edge571.us.i ], [ %.0373.lcssa.i, %.preheader479.us.i.preheader ] ; 5 uses
  %.1376573.us.i = phi ptr [ %i.adp, %._crit_edge571.us.i ], [ %.0375.lcssa.i, %.preheader479.us.i.preheader ] ; 5 uses
  br i1 %min.iters.check290, label %scalar.ph289.preheader, label %vector.memcheck258

vector.memcheck258:                               ; preds = %.preheader479.us.i
  %scevgep259 = getelementptr i8, ptr %.2368575.us.i, i64 %i.dz
  %i.abm = insertelement <4 x ptr> poison, ptr %.2368575.us.i, i64 0
  %i.abn = shufflevector <4 x ptr> %i.abm, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.abo = icmp ult <4 x ptr> %i.abn, %i.abh
  %i.abp = insertelement <4 x ptr> poison, ptr %scevgep259, i64 0
  %i.abq = shufflevector <4 x ptr> %i.abp, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.abr = icmp ult <4 x ptr> %i.abl, %i.abq
  %i.abs = and <4 x i1> %i.abo, %i.abr
  %i.abt = bitcast <4 x i1> %i.abs to i4
  %i.abu = icmp ne i4 %i.abt, 0
  %op.rdx557 = or i1 %i.abu, %stride.check277
  br i1 %op.rdx557, label %scalar.ph289.preheader, label %vector.ph291

vector.ph291:                                     ; preds = %vector.memcheck258
  %i.abv = getelementptr i8, ptr %.2368575.us.i, i64 %i.ez ; 2 uses
  br label %vector.body293

vector.body293:                                   ; preds = %vector.body293, %vector.ph291
  %index294 = phi i64 [ 0, %vector.ph291 ], [ %index.next301, %vector.body293 ] ; 4 uses
  %i.abw = shl i64 %index294, 4
  %next.gep295 = getelementptr i8, ptr %.2368575.us.i, i64 %i.abw
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr %.1376573.us.i, i64 %index294 ; 2 uses
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %.1374574.us.i, i64 %index294 ; 2 uses
  %wide.load296 = load <4 x float>, ptr %i.abx, align 4, !tbaa !53, !alias.scope !157
  %wide.load297 = load <4 x float>, ptr %i.aby, align 4, !tbaa !53, !alias.scope !160
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %i.abx, i64 %i.dn
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %i.aby, i64 %i.dn
  %wide.load298 = load <4 x float>, ptr %i.abz, align 4, !tbaa !53, !alias.scope !162
  %wide.load299 = load <4 x float>, ptr %i.aca, align 4, !tbaa !53, !alias.scope !164
  %i.acb = shufflevector <4 x float> %wide.load296, <4 x float> %wide.load297, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.acc = shufflevector <4 x float> %wide.load298, <4 x float> %wide.load299, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec300 = shufflevector <8 x float> %i.acb, <8 x float> %i.acc, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec300, ptr %next.gep295, align 4, !tbaa !53, !alias.scope !166, !noalias !168
  %index.next301 = add nuw i64 %index294, 4       ; 2 uses
  %i.acd = icmp eq i64 %index.next301, %n.vec292
  br i1 %i.acd, label %middle.block302, label %vector.body293, !llvm.loop !169

middle.block302:                                  ; preds = %vector.body293
  br i1 %cmp.n303, label %._crit_edge571.us.i, label %scalar.ph289.preheader

scalar.ph289.preheader:                           ; preds = %vector.memcheck258, %.preheader479.us.i, %middle.block302
  %indvars.iv751.i.ph = phi i64 [ 0, %vector.memcheck258 ], [ 0, %.preheader479.us.i ], [ %n.vec292, %middle.block302 ] ; 5 uses
  %.3369569.us.i.ph = phi ptr [ %.2368575.us.i, %vector.memcheck258 ], [ %.2368575.us.i, %.preheader479.us.i ], [ %i.abv, %middle.block302 ] ; 6 uses
  br i1 %lcmp.mod593.not, label %scalar.ph289.prol.loopexit, label %scalar.ph289.prol

scalar.ph289.prol:                                ; preds = %scalar.ph289.preheader
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %.1376573.us.i, i64 %indvars.iv751.i.ph ; 2 uses
  %i.acf = getelementptr inbounds nuw [4 x i8], ptr %.1374574.us.i, i64 %indvars.iv751.i.ph ; 2 uses
  %i.acg = load float, ptr %i.ace, align 4, !tbaa !53
  store float %i.acg, ptr %.3369569.us.i.ph, align 4, !tbaa !53
  %i.ach = load float, ptr %i.acf, align 4, !tbaa !53
  %i.aci = getelementptr inbounds nuw i8, ptr %.3369569.us.i.ph, i64 4
  store float %i.ach, ptr %i.aci, align 4, !tbaa !53
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr %i.ace, i64 %i.dn
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr %i.acf, i64 %i.dn
  %i.acl = getelementptr inbounds nuw i8, ptr %.3369569.us.i.ph, i64 8
  %i.acm = load float, ptr %i.acj, align 4, !tbaa !53
  store float %i.acm, ptr %i.acl, align 4, !tbaa !53
  %i.acn = load float, ptr %i.ack, align 4, !tbaa !53
  %i.aco = getelementptr inbounds nuw i8, ptr %.3369569.us.i.ph, i64 12
  store float %i.acn, ptr %i.aco, align 4, !tbaa !53
  %i.acp = getelementptr inbounds nuw i8, ptr %.3369569.us.i.ph, i64 16 ; 2 uses
  %indvars.iv.next752.i.prol = or disjoint i64 %indvars.iv751.i.ph, 1
  br label %scalar.ph289.prol.loopexit

scalar.ph289.prol.loopexit:                       ; preds = %scalar.ph289.prol, %scalar.ph289.preheader
  %.lcssa574.unr = phi ptr [ poison, %scalar.ph289.preheader ], [ %i.acp, %scalar.ph289.prol ]
  %indvars.iv751.i.unr = phi i64 [ %indvars.iv751.i.ph, %scalar.ph289.preheader ], [ %indvars.iv.next752.i.prol, %scalar.ph289.prol ]
  %.3369569.us.i.unr = phi ptr [ %.3369569.us.i.ph, %scalar.ph289.preheader ], [ %i.acp, %scalar.ph289.prol ]
  %i.acq = icmp eq i64 %indvars.iv751.i.ph, %i.fa
  br i1 %i.acq, label %._crit_edge571.us.i, label %scalar.ph289

scalar.ph289:                                     ; preds = %scalar.ph289.prol.loopexit, %scalar.ph289
  %indvars.iv751.i = phi i64 [ %indvars.iv.next752.i.1, %scalar.ph289 ], [ %indvars.iv751.i.unr, %scalar.ph289.prol.loopexit ] ; 4 uses
  %.3369569.us.i = phi ptr [ %i.ado, %scalar.ph289 ], [ %.3369569.us.i.unr, %scalar.ph289.prol.loopexit ] ; 9 uses
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %.1376573.us.i, i64 %indvars.iv751.i ; 2 uses
  %i.acs = getelementptr inbounds nuw [4 x i8], ptr %.1374574.us.i, i64 %indvars.iv751.i ; 2 uses
  %i.act = load float, ptr %i.acr, align 4, !tbaa !53
  store float %i.act, ptr %.3369569.us.i, align 4, !tbaa !53
  %i.acu = load float, ptr %i.acs, align 4, !tbaa !53
  %i.acv = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 4
  store float %i.acu, ptr %i.acv, align 4, !tbaa !53
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %i.acr, i64 %i.dn
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %i.acs, i64 %i.dn
  %i.acy = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 8
  %i.acz = load float, ptr %i.acw, align 4, !tbaa !53
  store float %i.acz, ptr %i.acy, align 4, !tbaa !53
  %i.ada = load float, ptr %i.acx, align 4, !tbaa !53
  %i.adb = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 12
  store float %i.ada, ptr %i.adb, align 4, !tbaa !53
  %i.adc = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 16
  %indvars.iv.next752.i = add nuw nsw i64 %indvars.iv751.i, 1 ; 2 uses
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %.1376573.us.i, i64 %indvars.iv.next752.i ; 2 uses
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %.1374574.us.i, i64 %indvars.iv.next752.i ; 2 uses
  %i.adf = load float, ptr %i.add, align 4, !tbaa !53
  store float %i.adf, ptr %i.adc, align 4, !tbaa !53
  %i.adg = load float, ptr %i.ade, align 4, !tbaa !53
  %i.adh = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 20
  store float %i.adg, ptr %i.adh, align 4, !tbaa !53
  %i.adi = getelementptr inbounds nuw [4 x i8], ptr %i.add, i64 %i.dn
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %i.ade, i64 %i.dn
  %i.adk = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 24
  %i.adl = load float, ptr %i.adi, align 4, !tbaa !53
  store float %i.adl, ptr %i.adk, align 4, !tbaa !53
  %i.adm = load float, ptr %i.adj, align 4, !tbaa !53
  %i.adn = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 28
  store float %i.adm, ptr %i.adn, align 4, !tbaa !53
  %i.ado = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 32 ; 2 uses
  %indvars.iv.next752.i.1 = add nuw nsw i64 %indvars.iv751.i, 2 ; 2 uses
  %exitcond755.not.i.1 = icmp eq i64 %indvars.iv.next752.i.1, %wide.trip.count747.i
  br i1 %exitcond755.not.i.1, label %._crit_edge571.us.i, label %scalar.ph289, !llvm.loop !170

._crit_edge571.us.i:                              ; preds = %scalar.ph289.prol.loopexit, %scalar.ph289, %middle.block302
  %.lcssa111 = phi ptr [ %i.abv, %middle.block302 ], [ %.lcssa574.unr, %scalar.ph289.prol.loopexit ], [ %i.ado, %scalar.ph289 ] ; 2 uses
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %.1376573.us.i, i64 %2 ; 2 uses
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %.1374574.us.i, i64 %2 ; 2 uses
  %i.adr = add nuw nsw i32 %.1364576.us.i, 2      ; 3 uses
  %i.ads = or disjoint i32 %i.adr, 1
  %i.adt = icmp slt i32 %i.ads, %i.n
  br i1 %i.adt, label %.preheader479.us.i, label %.preheader481.i, !llvm.loop !171

.preheader481.i:                                  ; preds = %._crit_edge571.us.i, %.preheader482.i
  %.1376.lcssa.i = phi ptr [ %.0375.lcssa.i, %.preheader482.i ], [ %i.adp, %._crit_edge571.us.i ] ; 8 uses
  %.1374.lcssa.i = phi ptr [ %.0373.lcssa.i, %.preheader482.i ], [ %i.adq, %._crit_edge571.us.i ] ; 8 uses
  %.2368.lcssa.i = phi ptr [ %.0366.lcssa.i, %.preheader482.i ], [ %.lcssa111, %._crit_edge571.us.i ]
  %.1364.lcssa.i = phi i32 [ %.0363.lcssa.i, %.preheader482.i ], [ %i.adr, %._crit_edge571.us.i ] ; 2 uses
  %i.adu = icmp sge i32 %.1364.lcssa.i, %i.n
  %brmerge642.i = or i1 %i.ds, %i.adu
  br i1 %brmerge642.i, label %._crit_edge591.split.i, label %.preheader478.i.preheader

.preheader478.i.preheader:                        ; preds = %.preheader481.i
  %scevgep230 = getelementptr i8, ptr %.1374.lcssa.i, i64 %i.dy
  %scevgep231 = getelementptr i8, ptr %.1376.lcssa.i, i64 %i.dy
  br label %.preheader478.i

.preheader478.i:                                  ; preds = %.preheader478.i.preheader, %._crit_edge587.i
  %.2365590.i = phi i32 [ %i.ael, %._crit_edge587.i ], [ %.1364.lcssa.i, %.preheader478.i.preheader ]
  %.5371589.i = phi ptr [ %.lcssa115, %._crit_edge587.i ], [ %.2368.lcssa.i, %.preheader478.i.preheader ] ; 8 uses
  br i1 %min.iters.check240, label %scalar.ph239.preheader, label %vector.memcheck228

vector.memcheck228:                               ; preds = %.preheader478.i
  %scevgep229 = getelementptr i8, ptr %.5371589.i, i64 %i.dx ; 2 uses
  %bound0232 = icmp ult ptr %.5371589.i, %scevgep230
  %bound1233 = icmp ult ptr %.1374.lcssa.i, %scevgep229
  %found.conflict234 = and i1 %bound0232, %bound1233
  %bound0235 = icmp ult ptr %.5371589.i, %scevgep231
  %bound1236 = icmp ult ptr %.1376.lcssa.i, %scevgep229
  %found.conflict237 = and i1 %bound0235, %bound1236
  %conflict.rdx238 = or i1 %found.conflict234, %found.conflict237
  br i1 %conflict.rdx238, label %scalar.ph239.preheader, label %vector.ph241

vector.ph241:                                     ; preds = %vector.memcheck228
  %i.adv = getelementptr i8, ptr %.5371589.i, i64 %i.fb ; 2 uses
  br label %vector.body243

vector.body243:                                   ; preds = %vector.body243, %vector.ph241
  %index244 = phi i64 [ 0, %vector.ph241 ], [ %index.next253, %vector.body243 ] ; 4 uses
  %i.adw = shl i64 %index244, 3                   ; 2 uses
  %next.gep245 = getelementptr i8, ptr %.5371589.i, i64 %i.adw
  %i.adx = getelementptr i8, ptr %.5371589.i, i64 %i.adw
  %next.gep246 = getelementptr i8, ptr %i.adx, i64 16
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %.1376.lcssa.i, i64 %index244 ; 2 uses
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %.1374.lcssa.i, i64 %index244 ; 2 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %i.ady, i64 8
  %wide.load247 = load <2 x float>, ptr %i.ady, align 4, !tbaa !53, !alias.scope !172
  %wide.load248 = load <2 x float>, ptr %i.aea, align 4, !tbaa !53, !alias.scope !172
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adz, i64 8
  %wide.load249 = load <2 x float>, ptr %i.adz, align 4, !tbaa !53, !alias.scope !175
  %wide.load250 = load <2 x float>, ptr %i.aeb, align 4, !tbaa !53, !alias.scope !175
  %interleaved.vec251 = shufflevector <2 x float> %wide.load247, <2 x float> %wide.load249, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec251, ptr %next.gep245, align 4, !tbaa !53, !alias.scope !177, !noalias !179
  %interleaved.vec252 = shufflevector <2 x float> %wide.load248, <2 x float> %wide.load250, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec252, ptr %next.gep246, align 4, !tbaa !53, !alias.scope !177, !noalias !179
  %index.next253 = add nuw i64 %index244, 4       ; 2 uses
  %i.aec = icmp eq i64 %index.next253, %n.vec242
  br i1 %i.aec, label %middle.block254, label %vector.body243, !llvm.loop !180

middle.block254:                                  ; preds = %vector.body243
  br i1 %cmp.n255, label %._crit_edge587.i, label %scalar.ph239.preheader

scalar.ph239.preheader:                           ; preds = %vector.memcheck228, %.preheader478.i, %middle.block254
  %indvars.iv756.i.ph = phi i64 [ 0, %vector.memcheck228 ], [ 0, %.preheader478.i ], [ %n.vec242, %middle.block254 ] ; 3 uses
  %.6372585.i.ph = phi ptr [ %.5371589.i, %vector.memcheck228 ], [ %.5371589.i, %.preheader478.i ], [ %i.adv, %middle.block254 ] ; 2 uses
  br i1 %lcmp.mod595.not, label %scalar.ph239.prol.loopexit, label %scalar.ph239.prol

scalar.ph239.prol:                                ; preds = %scalar.ph239.preheader, %scalar.ph239.prol
  %indvars.iv756.i.prol = phi i64 [ %indvars.iv.next757.i.prol, %scalar.ph239.prol ], [ %indvars.iv756.i.ph, %scalar.ph239.preheader ] ; 3 uses
  %.6372585.i.prol = phi ptr [ %i.aei, %scalar.ph239.prol ], [ %.6372585.i.ph, %scalar.ph239.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph239.prol ], [ 0, %scalar.ph239.preheader ]
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %.1376.lcssa.i, i64 %indvars.iv756.i.prol
  %i.aee = getelementptr inbounds nuw [4 x i8], ptr %.1374.lcssa.i, i64 %indvars.iv756.i.prol
  %i.aef = load float, ptr %i.aed, align 4, !tbaa !53
  store float %i.aef, ptr %.6372585.i.prol, align 4, !tbaa !53
  %i.aeg = load float, ptr %i.aee, align 4, !tbaa !53
  %i.aeh = getelementptr inbounds nuw i8, ptr %.6372585.i.prol, i64 4
  store float %i.aeg, ptr %i.aeh, align 4, !tbaa !53
  %i.aei = getelementptr inbounds nuw i8, ptr %.6372585.i.prol, i64 8 ; 3 uses
  %indvars.iv.next757.i.prol = add nuw nsw i64 %indvars.iv756.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter594
  br i1 %prol.iter.cmp.not, label %scalar.ph239.prol.loopexit, label %scalar.ph239.prol, !llvm.loop !181

scalar.ph239.prol.loopexit:                       ; preds = %scalar.ph239.prol, %scalar.ph239.preheader
  %.lcssa578.unr = phi ptr [ poison, %scalar.ph239.preheader ], [ %i.aei, %scalar.ph239.prol ]
  %indvars.iv756.i.unr = phi i64 [ %indvars.iv756.i.ph, %scalar.ph239.preheader ], [ %indvars.iv.next757.i.prol, %scalar.ph239.prol ]
  %.6372585.i.unr = phi ptr [ %.6372585.i.ph, %scalar.ph239.preheader ], [ %i.aei, %scalar.ph239.prol ]
  %i.aej = sub nsw i64 %indvars.iv756.i.ph, %wide.trip.count747.i
  %i.aek = icmp ugt i64 %i.aej, -4
  br i1 %i.aek, label %._crit_edge587.i, label %scalar.ph239

._crit_edge587.i:                                 ; preds = %scalar.ph239.prol.loopexit, %scalar.ph239, %middle.block254
  %.lcssa115 = phi ptr [ %i.adv, %middle.block254 ], [ %.lcssa578.unr, %scalar.ph239.prol.loopexit ], [ %i.afj, %scalar.ph239 ]
  %i.ael = add nuw nsw i32 %.2365590.i, 1         ; 2 uses
  %exitcond761.not.i = icmp eq i32 %i.ael, %i.n
  br i1 %exitcond761.not.i, label %._crit_edge591.split.i, label %.preheader478.i, !llvm.loop !182

scalar.ph239:                                     ; preds = %scalar.ph239.prol.loopexit, %scalar.ph239
  %indvars.iv756.i = phi i64 [ %indvars.iv.next757.i.3, %scalar.ph239 ], [ %indvars.iv756.i.unr, %scalar.ph239.prol.loopexit ] ; 6 uses
  %.6372585.i = phi ptr [ %i.afj, %scalar.ph239 ], [ %.6372585.i.unr, %scalar.ph239.prol.loopexit ] ; 9 uses
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %.1376.lcssa.i, i64 %indvars.iv756.i
  %i.aen = getelementptr inbounds nuw [4 x i8], ptr %.1374.lcssa.i, i64 %indvars.iv756.i
  %i.aeo = load float, ptr %i.aem, align 4, !tbaa !53
  store float %i.aeo, ptr %.6372585.i, align 4, !tbaa !53
  %i.aep = load float, ptr %i.aen, align 4, !tbaa !53
  %i.aeq = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 4
  store float %i.aep, ptr %i.aeq, align 4, !tbaa !53
  %i.aer = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 8
  %indvars.iv.next757.i = add nuw nsw i64 %indvars.iv756.i, 1 ; 2 uses
  %i.aes = getelementptr inbounds nuw [4 x i8], ptr %.1376.lcssa.i, i64 %indvars.iv.next757.i
  %i.aet = getelementptr inbounds nuw [4 x i8], ptr %.1374.lcssa.i, i64 %indvars.iv.next757.i
  %i.aeu = load float, ptr %i.aes, align 4, !tbaa !53
  store float %i.aeu, ptr %i.aer, align 4, !tbaa !53
  %i.aev = load float, ptr %i.aet, align 4, !tbaa !53
  %i.aew = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 12
  store float %i.aev, ptr %i.aew, align 4, !tbaa !53
  %i.aex = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 16
  %indvars.iv.next757.i.1 = add nuw nsw i64 %indvars.iv756.i, 2 ; 2 uses
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %.1376.lcssa.i, i64 %indvars.iv.next757.i.1
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %.1374.lcssa.i, i64 %indvars.iv.next757.i.1
  %i.afa = load float, ptr %i.aey, align 4, !tbaa !53
  store float %i.afa, ptr %i.aex, align 4, !tbaa !53
  %i.afb = load float, ptr %i.aez, align 4, !tbaa !53
  %i.afc = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 20
  store float %i.afb, ptr %i.afc, align 4, !tbaa !53
  %i.afd = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 24
  %indvars.iv.next757.i.2 = add nuw nsw i64 %indvars.iv756.i, 3 ; 2 uses
  %i.afe = getelementptr inbounds nuw [4 x i8], ptr %.1376.lcssa.i, i64 %indvars.iv.next757.i.2
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %.1374.lcssa.i, i64 %indvars.iv.next757.i.2
  %i.afg = load float, ptr %i.afe, align 4, !tbaa !53
  store float %i.afg, ptr %i.afd, align 4, !tbaa !53
  %i.afh = load float, ptr %i.aff, align 4, !tbaa !53
  %i.afi = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 28
  store float %i.afh, ptr %i.afi, align 4, !tbaa !53
  %i.afj = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 32 ; 2 uses
  %indvars.iv.next757.i.3 = add nuw nsw i64 %indvars.iv756.i, 4 ; 2 uses
  %exitcond760.not.i.3 = icmp eq i64 %indvars.iv.next757.i.3, %wide.trip.count747.i
  br i1 %exitcond760.not.i.3, label %._crit_edge587.i, label %scalar.ph239, !llvm.loop !183

._crit_edge591.split.i:                           ; preds = %._crit_edge587.i, %.preheader481.i, %.preheader479.lr.ph.i, %.preheader480.lr.ph.i
  %indvars.iv.next765.i = add nuw nsw i64 %indvars.iv764.i, 2 ; 3 uses
  %i.afk = icmp slt i64 %indvars.iv.next765.i, %invariant.op.i
  %indvars.iv.next763.i = add i32 %indvars.iv762.i, 2
  %indvar.next = add i32 %indvar, 1
  br i1 %i.afk, label %_ZN4ncnn3MatD2Ev.exit419.i, label %.preheader477.loopexit.i, !llvm.loop !184

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %._crit_edge634.split.i, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split
  %indvar414 = phi i32 [ %indvar.next415, %._crit_edge634.split.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split ] ; 4 uses
  %indvars.iv791.i = phi i64 [ %indvars.iv.next792.i, %._crit_edge634.split.i ], [ %i.ol, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split ] ; 2 uses
  %i.afl = add i32 %.1.lcssa.i, %indvar414        ; 2 uses
  %i.afm = lshr i32 %i.afl, 2
  %i.afn = sub i32 %.1.lcssa.i, %indvar414
  %i.afo = and i32 %i.afn, 1
  %i.afp = add nuw nsw i32 %i.afm, %i.afo
  %i.afq = lshr i32 %i.afl, 1
  %.lobit = and i32 %i.afq, 1
  %i.afr = add nuw i32 %i.afp, %.lobit
  %i.afs = zext nneg i32 %i.afr to i64
  %i.aft = mul i64 %i.xb, %i.afs                  ; 2 uses
  %scevgep416 = getelementptr i8, ptr %i.nx, i64 %i.aft ; 2 uses
  %scevgep418 = getelementptr i8, ptr %scevgep417, i64 %i.aft ; 2 uses
  %i.afu = mul i32 %i.xg, %indvar414
  %i.afv = add i32 %i.xf, %i.afu
  %i.afw = sext i32 %i.afv to i64
  %i.afx = shl nsw i64 %i.afw, 2                  ; 3 uses
  %scevgep420 = getelementptr i8, ptr %scevgep419, i64 %i.afx
  %scevgep422 = getelementptr i8, ptr %scevgep421, i64 %i.afx
  %scevgep424 = getelementptr i8, ptr %scevgep423, i64 %i.afx
  %i.afy = trunc i64 %indvars.iv791.i to i32      ; 4 uses
  %i.afz = mul i32 %i.nw, %i.afy
  %i.aga = sext i32 %i.afz to i64
  %i.agb = getelementptr [4 x i8], ptr %i.nv, i64 %i.aga ; 9 uses
  %i.agc = lshr i32 %i.afy, 2
  %i.agd = lshr i32 %i.afy, 1
  %i.age = and i32 %i.agd, 1
  %i.agf = and i32 %i.afy, 1
  %i.agg = add nuw nsw i32 %i.agf, %i.agc
  %i.agh = add nuw nsw i32 %i.agg, %i.age
  %i.agi = zext nneg i32 %i.agh to i64
  %.reass638.i = mul i64 %factor.op.mul637.i, %i.agi
  %i.agj = getelementptr inbounds nuw i8, ptr %i.nx, i64 %.reass638.i ; 6 uses
  br i1 %i.wz, label %.preheader473.lr.ph.i, label %.preheader475.i

.preheader473.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit.i
  br i1 %i.od, label %.preheader473.us.i.preheader, label %._crit_edge634.split.i

.preheader473.us.i.preheader:                     ; preds = %.preheader473.lr.ph.i
  br i1 %min.iters.check433, label %.preheader473.us.i.preheader567, label %vector.memcheck413

vector.memcheck413:                               ; preds = %.preheader473.us.i.preheader
  %bound0425 = icmp ult ptr %scevgep416, %scevgep422
  %bound1426 = icmp ult ptr %scevgep420, %scevgep418
  %found.conflict427 = and i1 %bound0425, %bound1426
  %bound0428 = icmp ult ptr %scevgep416, %scevgep424
  %bound1429 = icmp ult ptr %i.agb, %scevgep418
  %found.conflict430 = and i1 %bound0428, %bound1429
  %conflict.rdx431 = or i1 %found.conflict427, %found.conflict430
end_hunk_2
begin_hunk_3_@_ZN4ncnn5LayerD2Ev

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #11 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn17Convolution1D_x8621create_pipeline_bf16sERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(544) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load i32, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.d = load i32, ptr %i.c, align 4, !tbaa !44   ; 43 uses
  %i.e = sdiv i32 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.g = load i32, ptr %i.f, align 8, !tbaa !45   ; 23 uses
  %i.h = sdiv i32 %i.e, %i.g                      ; 47 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 12 uses
  %i.k = icmp sgt i32 %i.g, 3
  br i1 %i.k, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.l = icmp sgt i32 %i.h, 3                     ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = shl nsw i32 %i.d, 4
  %i.n = lshr i32 %i.h, 2
  %i.o = lshr i32 %i.h, 1
  %i.p = and i32 %i.o, 1
  %i.q = and i32 %i.h, 1
  %i.r = add nuw nsw i32 %i.q, %i.n
  %i.s = add nuw nsw i32 %i.r, %i.p
  %i.t = lshr i32 %i.g, 2
  %i.u = lshr i32 %i.g, 1
  %i.v = and i32 %i.u, 1
  %i.w = and i32 %i.g, 1
  %i.x = add nuw nsw i32 %i.w, %i.t
  %i.y = add nuw nsw i32 %i.x, %i.v
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.m, i32 noundef %i.s, i32 noundef %i.y, i64 noundef 2, ptr noundef null)
  br label %_ZN4ncnn3MatD2Ev.exit420.lr.ph.i

bb.d:                                             ; preds = %bb.b
  %i.z = icmp sgt i32 %i.h, 1
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = shl nsw i32 %i.d, 3
  %i.ab = and i32 %i.h, 1
  %i.ac = add nuw nsw i32 %i.ab, 1
  %i.ad = lshr i32 %i.g, 2
  %i.ae = lshr i32 %i.g, 1
  %i.af = and i32 %i.ae, 1
  %i.ag = and i32 %i.g, 1
  %i.ah = add nuw nsw i32 %i.ag, %i.ad
  %i.ai = add nuw nsw i32 %i.ah, %i.af
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.aa, i32 noundef %i.ac, i32 noundef %i.ai, i64 noundef 2, ptr noundef null)
  br label %_ZN4ncnn3MatD2Ev.exit420.lr.ph.i

bb.f:                                             ; preds = %bb.d
  %i.aj = shl nsw i32 %i.d, 2
  %i.ak = lshr i32 %i.g, 2
  %i.al = lshr i32 %i.g, 1
  %i.am = and i32 %i.al, 1
  %i.an = and i32 %i.g, 1
  %i.ao = add nuw nsw i32 %i.an, %i.ak
  %i.ap = add nuw nsw i32 %i.ao, %i.am
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.aj, i32 noundef %i.h, i32 noundef %i.ap, i64 noundef 2, ptr noundef null)
  br label %_ZN4ncnn3MatD2Ev.exit420.lr.ph.i

bb.g:                                             ; preds = %bb.a
  %i.aq = icmp sgt i32 %i.g, 1
  %i.ar = icmp sgt i32 %i.h, 3                    ; 2 uses
  br i1 %i.aq, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.as = shl nsw i32 %i.d, 3
  %i.at = lshr i32 %i.h, 2
  %i.au = lshr i32 %i.h, 1
  %i.av = and i32 %i.au, 1
  %i.aw = and i32 %i.h, 1
  %i.ax = add nuw nsw i32 %i.aw, %i.at
  %i.ay = add nuw nsw i32 %i.ax, %i.av
  %i.az = and i32 %i.g, 1
  %i.ba = add nuw nsw i32 %i.az, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.as, i32 noundef %i.ay, i32 noundef %i.ba, i64 noundef 2, ptr noundef null)
  br label %.preheader483.i

bb.j:                                             ; preds = %bb.h
  %i.bb = icmp sgt i32 %i.h, 1
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bc = shl nsw i32 %i.d, 2
  %i.bd = and i32 %i.h, 1
  %i.be = add nuw nsw i32 %i.bd, 1
  %i.bf = and i32 %i.g, 1
  %i.bg = add nuw nsw i32 %i.bf, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.bc, i32 noundef %i.be, i32 noundef %i.bg, i64 noundef 2, ptr noundef null)
  br label %.preheader483.i

bb.l:                                             ; preds = %bb.j
  %i.bh = shl nsw i32 %i.d, 1
  %i.bi = and i32 %i.g, 1
  %i.bj = add nuw nsw i32 %i.bi, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.bh, i32 noundef %i.h, i32 noundef %i.bj, i64 noundef 2, ptr noundef null)
  br label %.preheader483.i

bb.m:                                             ; preds = %bb.g
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bk = shl nsw i32 %i.d, 2
  %i.bl = lshr i32 %i.h, 2
  %i.bm = lshr i32 %i.h, 1
  %i.bn = and i32 %i.bm, 1
  %i.bo = and i32 %i.h, 1
  %i.bp = add nuw nsw i32 %i.bo, %i.bl
  %i.bq = add nuw nsw i32 %i.bp, %i.bn
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.bk, i32 noundef %i.bq, i32 noundef %i.g, i64 noundef 2, ptr noundef null)
  br label %.preheader483.i

bb.o:                                             ; preds = %bb.m
  %i.br = icmp sgt i32 %i.h, 1
  br i1 %i.br, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bs = shl nsw i32 %i.d, 1
  %i.bt = and i32 %i.h, 1
  %i.bu = add nuw nsw i32 %i.bt, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.bs, i32 noundef %i.bu, i32 noundef %i.g, i64 noundef 2, ptr noundef null)
  br label %.preheader483.i

bb.q:                                             ; preds = %bb.o
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.d, i32 noundef %i.h, i32 noundef %i.g, i64 noundef 2, ptr noundef null)
  br label %.preheader483.i

_ZN4ncnn3MatD2Ev.exit420.lr.ph.i:                 ; preds = %bb.f, %bb.e, %bb.c
  %i.bv = load ptr, ptr %i.i, align 8, !tbaa !18  ; 4 uses
  %i.bw = mul i32 %i.h, %i.d                      ; 4 uses
  %i.bx = load ptr, ptr %i.j, align 8, !tbaa !18, !noalias !250
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !20, !noalias !250
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !49, !noalias !250
  %factor.op.mul.i = mul i64 %i.cb, %i.bz
  %i.cc = icmp sgt i32 %i.d, 0                    ; 2 uses
  %i.cd = sext i32 %i.d to i64                    ; 16 uses
  %i.ce = shl i32 %i.d, 2
  %i.cf = sext i32 %i.ce to i64                   ; 4 uses
  %i.cg = shl i32 %i.d, 1
  %i.ch = sext i32 %i.cg to i64                   ; 4 uses
  %i.ci = icmp slt i32 %i.d, 1
  %i.cj = and i32 %i.h, -4
  %i.ck = zext nneg i32 %i.g to i64
  %wide.trip.count.i = zext i32 %i.d to i64       ; 4 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.cl = icmp eq i32 %i.d, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod215 = trunc i32 %i.d to i1
  br label %_ZN4ncnn3MatD2Ev.exit420.i

.preheader483.loopexit.i:                         ; preds = %._crit_edge546.split.i
  %i.cm = trunc nuw nsw i64 %indvars.iv.next734.i to i32
  br label %.preheader483.i

.preheader483.i:                                  ; preds = %.preheader483.loopexit.i, %bb.q, %bb.p, %bb.n, %bb.l, %bb.k, %bb.i
  %.0.lcssa.i = phi i32 [ %i.cm, %.preheader483.loopexit.i ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.i ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.n ] ; 4 uses
  %i.cn = or disjoint i32 %.0.lcssa.i, 1
  %i.co = icmp slt i32 %i.cn, %i.g
  br i1 %i.co, label %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i, label %.preheader477.i

_ZN4ncnn3MatD2Ev.exit419.lr.ph.i:                 ; preds = %.preheader483.i
  %i.cp = load ptr, ptr %i.i, align 8, !tbaa !18  ; 2 uses
  %i.cq = mul i32 %i.h, %i.d                      ; 2 uses
  %i.cr = load ptr, ptr %i.j, align 8, !tbaa !18, !noalias !253
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !20, !noalias !253
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !49, !noalias !253
  %factor.op.mul594.i = mul i64 %i.cv, %i.ct
  %i.cw = icmp sgt i32 %i.h, 3
  %i.cx = icmp sgt i32 %i.d, 0                    ; 2 uses
  %i.cy = sext i32 %i.d to i64                    ; 8 uses
  %i.cz = shl i32 %i.d, 1
  %2 = sext i32 %i.cz to i64                      ; 4 uses
  %i.da = mul nsw i32 %i.d, 3
  %3 = sext i32 %i.da to i64                      ; 2 uses
  %i.db = shl i32 %i.d, 2
  %i.dc = sext i32 %i.db to i64                   ; 2 uses
  %i.dd = icmp slt i32 %i.d, 1
  %i.de = and i32 %i.h, -4
  %i.df = zext nneg i32 %.0.lcssa.i to i64
  %i.dg = add i32 %.0.lcssa.i, 1
  %i.dh = sext i32 %i.g to i64
  %wide.trip.count747.i = zext i32 %i.d to i64    ; 6 uses
  %invariant.op.i = add nsw i64 %i.dh, -1
  %xtraiter217 = and i64 %wide.trip.count747.i, 1
  %i.di = icmp eq i32 %i.d, 1
  %unroll_iter221 = and i64 %wide.trip.count747.i, 2147483646
  %lcmp.mod218.not = icmp eq i64 %xtraiter217, 0
  %lcmp.mod220 = trunc i32 %i.d to i1
  %min.iters.check = icmp ult i32 %i.d, 4
  %n.vec = and i64 %wide.trip.count747.i, 2147483644 ; 4 uses
  %i.dj = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count747.i
  br label %_ZN4ncnn3MatD2Ev.exit419.i

_ZN4ncnn3MatD2Ev.exit420.i:                       ; preds = %._crit_edge546.split.i, %_ZN4ncnn3MatD2Ev.exit420.lr.ph.i
  %indvars.iv733.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit420.lr.ph.i ], [ %indvars.iv.next734.i, %._crit_edge546.split.i ] ; 3 uses
  %i.dk = trunc i64 %indvars.iv733.i to i32       ; 4 uses
  %i.dl = mul i32 %i.bw, %i.dk
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.dm ; 2 uses
  %i.do = or disjoint i32 %i.dk, 1
  %i.dp = mul i32 %i.do, %i.bw
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.dq ; 2 uses
  %i.ds = or disjoint i32 %i.dk, 2
  %i.dt = mul i32 %i.ds, %i.bw
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.du ; 2 uses
  %i.dw = or disjoint i32 %i.dk, 3
  %i.dx = mul i32 %i.dw, %i.bw
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.dy ; 2 uses
  %i.ea = lshr exact i64 %indvars.iv733.i, 2
  %.reass.i = mul i64 %factor.op.mul.i, %i.ea
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.reass.i ; 2 uses
  br i1 %i.l, label %.preheader486.lr.ph.i, label %.preheader488.i

.preheader486.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit420.i
  br i1 %i.cc, label %.preheader486.us.i, label %._crit_edge546.split.i

.preheader486.us.i:                               ; preds = %.preheader486.lr.ph.i, %._crit_edge.us.i
  %.0349502.us.i = phi ptr [ %i.he, %._crit_edge.us.i ], [ %i.dn, %.preheader486.lr.ph.i ] ; 2 uses
  %.0351501.us.i = phi ptr [ %i.hf, %._crit_edge.us.i ], [ %i.dr, %.preheader486.lr.ph.i ] ; 2 uses
  %.0358500.us.i = phi ptr [ %i.hg, %._crit_edge.us.i ], [ %i.dv, %.preheader486.lr.ph.i ] ; 2 uses
  %.0360499.us.i = phi ptr [ %i.hh, %._crit_edge.us.i ], [ %i.dz, %.preheader486.lr.ph.i ] ; 2 uses
  %.0377498.us.i = phi ptr [ %i.hd, %._crit_edge.us.i ], [ %i.eb, %.preheader486.lr.ph.i ]
  %.0385497.us.i = phi i32 [ %i.hi, %._crit_edge.us.i ], [ 0, %.preheader486.lr.ph.i ]
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.preheader486.us.i
  %indvars.iv715.i = phi i64 [ 0, %.preheader486.us.i ], [ %indvars.iv.next716.i, %bb.r ] ; 5 uses
  %.1378496.us.i = phi ptr [ %.0377498.us.i, %.preheader486.us.i ], [ %i.hd, %bb.r ] ; 17 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.0349502.us.i, i64 %indvars.iv715.i ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.0351501.us.i, i64 %indvars.iv715.i ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.0358500.us.i, i64 %indvars.iv715.i ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.0360499.us.i, i64 %indvars.iv715.i ; 2 uses
  %i.eg = load i32, ptr %i.ec, align 4, !tbaa !53
  %i.eh = lshr i32 %i.eg, 16
  %i.ei = trunc nuw i32 %i.eh to i16
  store i16 %i.ei, ptr %.1378496.us.i, align 2, !tbaa !256
  %i.ej = load i32, ptr %i.ed, align 4, !tbaa !53
  %i.ek = lshr i32 %i.ej, 16
  %i.el = trunc nuw i32 %i.ek to i16
  %i.em = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 2
  store i16 %i.el, ptr %i.em, align 2, !tbaa !256
  %i.en = load i32, ptr %i.ee, align 4, !tbaa !53
  %i.eo = lshr i32 %i.en, 16
  %i.ep = trunc nuw i32 %i.eo to i16
  %i.eq = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 4
  store i16 %i.ep, ptr %i.eq, align 2, !tbaa !256
  %i.er = load i32, ptr %i.ef, align 4, !tbaa !53
  %i.es = lshr i32 %i.er, 16
  %i.et = trunc nuw i32 %i.es to i16
  %i.eu = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 6
  store i16 %i.et, ptr %i.eu, align 2, !tbaa !256
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.cd ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.cd ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.cd ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.cd ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 8
  %i.fa = load i32, ptr %i.ev, align 4, !tbaa !53
  %i.fb = lshr i32 %i.fa, 16
  %i.fc = trunc nuw i32 %i.fb to i16
  store i16 %i.fc, ptr %i.ez, align 2, !tbaa !256
  %i.fd = load i32, ptr %i.ew, align 4, !tbaa !53
  %i.fe = lshr i32 %i.fd, 16
  %i.ff = trunc nuw i32 %i.fe to i16
  %i.fg = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 10
  store i16 %i.ff, ptr %i.fg, align 2, !tbaa !256
  %i.fh = load i32, ptr %i.ex, align 4, !tbaa !53
  %i.fi = lshr i32 %i.fh, 16
  %i.fj = trunc nuw i32 %i.fi to i16
  %i.fk = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 12
  store i16 %i.fj, ptr %i.fk, align 2, !tbaa !256
  %i.fl = load i32, ptr %i.ey, align 4, !tbaa !53
  %i.fm = lshr i32 %i.fl, 16
  %i.fn = trunc nuw i32 %i.fm to i16
  %i.fo = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 14
  store i16 %i.fn, ptr %i.fo, align 2, !tbaa !256
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.cd ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.cd ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.cd ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.cd ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 16
  %i.fu = load i32, ptr %i.fp, align 4, !tbaa !53
  %i.fv = lshr i32 %i.fu, 16
  %i.fw = trunc nuw i32 %i.fv to i16
  store i16 %i.fw, ptr %i.ft, align 2, !tbaa !256
  %i.fx = load i32, ptr %i.fq, align 4, !tbaa !53
  %i.fy = lshr i32 %i.fx, 16
  %i.fz = trunc nuw i32 %i.fy to i16
  %i.ga = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 18
  store i16 %i.fz, ptr %i.ga, align 2, !tbaa !256
  %i.gb = load i32, ptr %i.fr, align 4, !tbaa !53
  %i.gc = lshr i32 %i.gb, 16
  %i.gd = trunc nuw i32 %i.gc to i16
  %i.ge = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 20
  store i16 %i.gd, ptr %i.ge, align 2, !tbaa !256
  %i.gf = load i32, ptr %i.fs, align 4, !tbaa !53
  %i.gg = lshr i32 %i.gf, 16
  %i.gh = trunc nuw i32 %i.gg to i16
  %i.gi = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 22
  store i16 %i.gh, ptr %i.gi, align 2, !tbaa !256
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.cd
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.cd
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.cd
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.cd
  %i.gn = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 24
  %i.go = load i32, ptr %i.gj, align 4, !tbaa !53
  %i.gp = lshr i32 %i.go, 16
  %i.gq = trunc nuw i32 %i.gp to i16
  store i16 %i.gq, ptr %i.gn, align 2, !tbaa !256
  %i.gr = load i32, ptr %i.gk, align 4, !tbaa !53
  %i.gs = lshr i32 %i.gr, 16
  %i.gt = trunc nuw i32 %i.gs to i16
  %i.gu = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 26
  store i16 %i.gt, ptr %i.gu, align 2, !tbaa !256
  %i.gv = load i32, ptr %i.gl, align 4, !tbaa !53
  %i.gw = lshr i32 %i.gv, 16
  %i.gx = trunc nuw i32 %i.gw to i16
  %i.gy = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 28
  store i16 %i.gx, ptr %i.gy, align 2, !tbaa !256
  %i.gz = load i32, ptr %i.gm, align 4, !tbaa !53
  %i.ha = lshr i32 %i.gz, 16
  %i.hb = trunc nuw i32 %i.ha to i16
  %i.hc = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 30
  store i16 %i.hb, ptr %i.hc, align 2, !tbaa !256
  %i.hd = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 32 ; 3 uses
  %indvars.iv.next716.i = add nuw nsw i64 %indvars.iv715.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next716.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.r, !llvm.loop !258

._crit_edge.us.i:                                 ; preds = %bb.r
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.0349502.us.i, i64 %i.cf ; 2 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %.0351501.us.i, i64 %i.cf ; 2 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %.0358500.us.i, i64 %i.cf ; 2 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.0360499.us.i, i64 %i.cf ; 2 uses
  %i.hi = add nuw nsw i32 %.0385497.us.i, 4       ; 2 uses
  %i.hj = or disjoint i32 %i.hi, 3
  %i.hk = icmp slt i32 %i.hj, %i.h
  br i1 %i.hk, label %.preheader486.us.i, label %.preheader488.i, !llvm.loop !259

.preheader488.i:                                  ; preds = %._crit_edge.us.i, %_ZN4ncnn3MatD2Ev.exit420.i
  %.0385.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit420.i ], [ %i.cj, %._crit_edge.us.i ] ; 3 uses
  %.0377.lcssa.i = phi ptr [ %i.eb, %_ZN4ncnn3MatD2Ev.exit420.i ], [ %i.hd, %._crit_edge.us.i ] ; 2 uses
  %.0360.lcssa.i = phi ptr [ %i.dz, %_ZN4ncnn3MatD2Ev.exit420.i ], [ %i.hh, %._crit_edge.us.i ] ; 2 uses
  %.0358.lcssa.i = phi ptr [ %i.dv, %_ZN4ncnn3MatD2Ev.exit420.i ], [ %i.hg, %._crit_edge.us.i ] ; 2 uses
  %.0351.lcssa.i = phi ptr [ %i.dr, %_ZN4ncnn3MatD2Ev.exit420.i ], [ %i.hf, %._crit_edge.us.i ] ; 2 uses
  %.0349.lcssa.i = phi ptr [ %i.dn, %_ZN4ncnn3MatD2Ev.exit420.i ], [ %i.he, %._crit_edge.us.i ] ; 2 uses
  %i.hl = or disjoint i32 %.0385.lcssa.i, 1
  %i.hm = icmp slt i32 %i.hl, %i.h
  br i1 %i.hm, label %.preheader485.lr.ph.i, label %.preheader487.i

.preheader485.lr.ph.i:                            ; preds = %.preheader488.i
  br i1 %i.cc, label %.preheader485.us.i, label %._crit_edge546.split.i

.preheader485.us.i:                               ; preds = %.preheader485.lr.ph.i, %._crit_edge.us534.i
  %.1350527.us.i = phi ptr [ %i.jb, %._crit_edge.us534.i ], [ %.0349.lcssa.i, %.preheader485.lr.ph.i ] ; 2 uses
  %.1352526.us.i = phi ptr [ %i.jc, %._crit_edge.us534.i ], [ %.0351.lcssa.i, %.preheader485.lr.ph.i ] ; 2 uses
  %.1359525.us.i = phi ptr [ %i.jd, %._crit_edge.us534.i ], [ %.0358.lcssa.i, %.preheader485.lr.ph.i ] ; 2 uses
  %.1361524.us.i = phi ptr [ %i.je, %._crit_edge.us534.i ], [ %.0360.lcssa.i, %.preheader485.lr.ph.i ] ; 2 uses
  %.3380523.us.i = phi ptr [ %i.ja, %._crit_edge.us534.i ], [ %.0377.lcssa.i, %.preheader485.lr.ph.i ]
  %.1386522.us.i = phi i32 [ %i.jf, %._crit_edge.us534.i ], [ %.0385.lcssa.i, %.preheader485.lr.ph.i ]
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.preheader485.us.i
  %indvars.iv722.i = phi i64 [ 0, %.preheader485.us.i ], [ %indvars.iv.next723.i, %bb.s ] ; 5 uses
  %.4381521.us.i = phi ptr [ %.3380523.us.i, %.preheader485.us.i ], [ %i.ja, %bb.s ] ; 9 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %.1350527.us.i, i64 %indvars.iv722.i ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.1352526.us.i, i64 %indvars.iv722.i ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %.1359525.us.i, i64 %indvars.iv722.i ; 2 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %.1361524.us.i, i64 %indvars.iv722.i ; 2 uses
  %i.hr = load i32, ptr %i.hn, align 4, !tbaa !53
  %i.hs = lshr i32 %i.hr, 16
  %i.ht = trunc nuw i32 %i.hs to i16
  store i16 %i.ht, ptr %.4381521.us.i, align 2, !tbaa !256
end_hunk_3
begin_hunk_4_@_ZN4ncnn17Convolution1D_x8621create_pipeline_bf16sERKNS_6OptionE:bb.a
  %indvars.iv780.i.us.ph = phi i64 [ 0, %.preheader473.us.i.us ], [ %n.vec173, %middle.block181 ]
  %.4615.us.i.us.ph = phi ptr [ %.3620.us.i.us, %.preheader473.us.i.us ], [ %i.pr, %middle.block181 ]
  br label %scalar.ph170

scalar.ph170:                                     ; preds = %scalar.ph170.preheader, %scalar.ph170
  %indvars.iv780.i.us = phi i64 [ %indvars.iv.next781.i.us, %scalar.ph170 ], [ %indvars.iv780.i.us.ph, %scalar.ph170.preheader ] ; 2 uses
  %.4615.us.i.us = phi ptr [ %i.qh, %scalar.ph170 ], [ %.4615.us.i.us.ph, %scalar.ph170.preheader ] ; 3 uses
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %indvars.iv780.i.us ; 2 uses
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !53
  %i.qa = lshr i32 %i.pz, 16
  %i.qb = trunc nuw i32 %i.qa to i16
  store i16 %i.qb, ptr %.4615.us.i.us, align 2, !tbaa !256
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %i.mf
  %i.qd = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 2
  %i.qe = load i32, ptr %i.qc, align 4, !tbaa !53
  %i.qf = lshr i32 %i.qe, 16
  %i.qg = trunc nuw i32 %i.qf to i16
  store i16 %i.qg, ptr %i.qd, align 2, !tbaa !256
  %i.qh = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 4 ; 2 uses
  %indvars.iv.next781.i.us = add nuw nsw i64 %indvars.iv780.i.us, 1 ; 2 uses
  %exitcond784.not.i.us = icmp eq i64 %indvars.iv.next781.i.us, %wide.trip.count777.i
  br i1 %exitcond784.not.i.us, label %._crit_edge617.us.i.us, label %scalar.ph170, !llvm.loop !271

._crit_edge617.us.i.us:                           ; preds = %scalar.ph170, %middle.block181
  %.lcssa99 = phi ptr [ %i.pr, %middle.block181 ], [ %i.qh, %scalar.ph170 ] ; 2 uses
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %i.mj ; 2 uses
  %i.qj = add nuw nsw i32 %.1342621.us.i.us, 2    ; 3 uses
  %i.qk = or disjoint i32 %i.qj, 1
  %i.ql = icmp slt i32 %i.qk, %i.h
  br i1 %i.ql, label %.preheader473.us.i.us, label %.preheader475.i.us, !llvm.loop !272

.preheader475.i.us:                               ; preds = %._crit_edge617.us.i.us, %.preheader476.i.loopexit.us
  %.1348.lcssa.i.us = phi ptr [ %i.pn, %.preheader476.i.loopexit.us ], [ %i.qi, %._crit_edge617.us.i.us ] ; 2 uses
  %.3.lcssa.i.us = phi ptr [ %.lcssa, %.preheader476.i.loopexit.us ], [ %.lcssa99, %._crit_edge617.us.i.us ]
  %.1342.lcssa.i.us = phi i32 [ %i.ml, %.preheader476.i.loopexit.us ], [ %i.qj, %._crit_edge617.us.i.us ] ; 2 uses
  %i.qm = icmp sge i32 %.1342.lcssa.i.us, %i.h
  %brmerge645.i.us = or i1 %i.mk, %i.qm
  br i1 %brmerge645.i.us, label %._crit_edge634.split.i.us, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader475.i.us, %._crit_edge630.i.us
  %.2343633.i.us = phi i32 [ %i.rc, %._crit_edge630.i.us ], [ %.1342.lcssa.i.us, %.preheader475.i.us ]
  %.6632.i.us = phi ptr [ %.lcssa102, %._crit_edge630.i.us ], [ %.3.lcssa.i.us, %.preheader475.i.us ] ; 3 uses
  br i1 %min.iters.check157, label %scalar.ph156.preheader, label %vector.ph158

vector.ph158:                                     ; preds = %.preheader.i.us
  %i.qn = getelementptr i8, ptr %.6632.i.us, i64 %i.mr ; 2 uses
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph158
  %index161 = phi i64 [ 0, %vector.ph158 ], [ %index.next165, %vector.body160 ] ; 3 uses
  %i.qo = shl i64 %index161, 1
  %next.gep162 = getelementptr i8, ptr %.6632.i.us, i64 %i.qo ; 2 uses
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %index161 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  %wide.load163 = load <4 x i32>, ptr %i.qp, align 4, !tbaa !53
  %wide.load164 = load <4 x i32>, ptr %i.qq, align 4, !tbaa !53
  %i.qr = lshr <4 x i32> %wide.load163, splat (i32 16)
  %i.qs = lshr <4 x i32> %wide.load164, splat (i32 16)
  %i.qt = trunc nuw <4 x i32> %i.qr to <4 x i16>
  %i.qu = trunc nuw <4 x i32> %i.qs to <4 x i16>
  %i.qv = getelementptr i8, ptr %next.gep162, i64 8
  store <4 x i16> %i.qt, ptr %next.gep162, align 2, !tbaa !256
  store <4 x i16> %i.qu, ptr %i.qv, align 2, !tbaa !256
  %index.next165 = add nuw i64 %index161, 8       ; 2 uses
  %i.qw = icmp eq i64 %index.next165, %n.vec159
  br i1 %i.qw, label %middle.block166, label %vector.body160, !llvm.loop !273

middle.block166:                                  ; preds = %vector.body160
  br i1 %cmp.n167, label %._crit_edge630.i.us, label %scalar.ph156.preheader

scalar.ph156.preheader:                           ; preds = %.preheader.i.us, %middle.block166
  %indvars.iv785.i.us.ph = phi i64 [ 0, %.preheader.i.us ], [ %n.vec159, %middle.block166 ]
  %.7628.i.us.ph = phi ptr [ %.6632.i.us, %.preheader.i.us ], [ %i.qn, %middle.block166 ]
  br label %scalar.ph156

scalar.ph156:                                     ; preds = %scalar.ph156.preheader, %scalar.ph156
  %indvars.iv785.i.us = phi i64 [ %indvars.iv.next786.i.us, %scalar.ph156 ], [ %indvars.iv785.i.us.ph, %scalar.ph156.preheader ] ; 2 uses
  %.7628.i.us = phi ptr [ %i.rb, %scalar.ph156 ], [ %.7628.i.us.ph, %scalar.ph156.preheader ] ; 2 uses
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !53
  %i.qz = lshr i32 %i.qy, 16
  %i.ra = trunc nuw i32 %i.qz to i16
  store i16 %i.ra, ptr %.7628.i.us, align 2, !tbaa !256
  %i.rb = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 2 ; 2 uses
  %indvars.iv.next786.i.us = add nuw nsw i64 %indvars.iv785.i.us, 1 ; 2 uses
  %exitcond789.not.i.us = icmp eq i64 %indvars.iv.next786.i.us, %wide.trip.count777.i
  br i1 %exitcond789.not.i.us, label %._crit_edge630.i.us, label %scalar.ph156, !llvm.loop !274

._crit_edge630.i.us:                              ; preds = %scalar.ph156, %middle.block166
  %.lcssa102 = phi ptr [ %i.qn, %middle.block166 ], [ %i.rb, %scalar.ph156 ]
  %i.rc = add nuw nsw i32 %.2343633.i.us, 1       ; 2 uses
  %exitcond790.not.i.us = icmp eq i32 %i.rc, %i.h
  br i1 %exitcond790.not.i.us, label %._crit_edge634.split.i.us, label %.preheader.i.us, !llvm.loop !275

._crit_edge634.split.i.us:                        ; preds = %._crit_edge630.i.us, %.preheader475.i.us
  %indvars.iv.next792.i.us = add nuw nsw i64 %indvars.iv791.i.us, 1 ; 2 uses
  %exitcond795.not.i.us = icmp eq i64 %indvars.iv.next792.i.us, %wide.trip.count794.i
  br i1 %exitcond795.not.i.us, label %_ZN4ncnnL43convolution1d_transform_kernel_packed_bf16sERKNS_3MatERS0_iii.exit, label %_ZN4ncnn3MatD2Ev.exit.i.us, !llvm.loop !276

.preheader476.i.loopexit.us:                      ; preds = %._crit_edge601.us.i.us
  br i1 %i.mo, label %.preheader473.us.i.us, label %.preheader475.i.us

_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split:              ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph.i
  %i.rd = icmp sgt i32 %i.h, 1
  %i.re = and i32 %i.h, -2
  %min.iters.check142 = icmp ult i32 %i.d, 4
  %n.vec144 = and i64 %wide.trip.count777.i, 2147483644 ; 4 uses
  %i.rf = shl nuw nsw i64 %n.vec144, 2
  %cmp.n153 = icmp eq i64 %n.vec144, %wide.trip.count777.i
  %min.iters.check128 = icmp ult i32 %i.d, 8
  %n.vec130 = and i64 %wide.trip.count777.i, 2147483640 ; 4 uses
  %i.rg = shl nuw nsw i64 %n.vec130, 1
  %cmp.n138 = icmp eq i64 %n.vec130, %wide.trip.count777.i
  br label %_ZN4ncnn3MatD2Ev.exit.i

_ZN4ncnn3MatD2Ev.exit419.i:                       ; preds = %._crit_edge591.split.i, %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i
  %indvars.iv764.i = phi i64 [ %i.df, %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i ], [ %indvars.iv.next765.i, %._crit_edge591.split.i ] ; 2 uses
  %indvars.iv762.i = phi i32 [ %i.dg, %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i ], [ %indvars.iv.next763.i, %._crit_edge591.split.i ] ; 2 uses
  %i.rh = trunc nuw i64 %indvars.iv764.i to i32   ; 3 uses
  %i.ri = mul i32 %i.cq, %i.rh
  %i.rj = sext i32 %i.ri to i64
  %i.rk = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.rj ; 2 uses
  %i.rl = mul i32 %indvars.iv762.i, %i.cq
  %i.rm = sext i32 %i.rl to i64
  %i.rn = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.rm ; 2 uses
  %i.ro = lshr i32 %i.rh, 2
  %i.rp = lshr i32 %i.rh, 1
  %i.rq = and i32 %i.rp, 1
  %i.rr = add nuw nsw i32 %i.rq, %i.ro
  %i.rs = zext nneg i32 %i.rr to i64
  %.reass595.i = mul i64 %factor.op.mul594.i, %i.rs
  %i.rt = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.reass595.i ; 2 uses
  br i1 %i.cw, label %.preheader480.lr.ph.i, label %.preheader482.i

.preheader480.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit419.i
  br i1 %i.cx, label %.preheader480.us.i, label %._crit_edge591.split.i

.preheader480.us.i:                               ; preds = %.preheader480.lr.ph.i, %._crit_edge551.us.i
  %.0363556.us.i = phi i32 [ %i.tk, %._crit_edge551.us.i ], [ 0, %.preheader480.lr.ph.i ]
  %.0366555.us.i = phi ptr [ %i.th, %._crit_edge551.us.i ], [ %i.rt, %.preheader480.lr.ph.i ]
  %.0373554.us.i = phi ptr [ %i.tj, %._crit_edge551.us.i ], [ %i.rn, %.preheader480.lr.ph.i ] ; 2 uses
  %.0375553.us.i = phi ptr [ %i.ti, %._crit_edge551.us.i ], [ %i.rk, %.preheader480.lr.ph.i ] ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.preheader480.us.i
  %indvars.iv744.i = phi i64 [ 0, %.preheader480.us.i ], [ %indvars.iv.next745.i, %bb.t ] ; 3 uses
  %.1367549.us.i = phi ptr [ %.0366555.us.i, %.preheader480.us.i ], [ %i.th, %bb.t ] ; 9 uses
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %.0375553.us.i, i64 %indvars.iv744.i ; 4 uses
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %.0373554.us.i, i64 %indvars.iv744.i ; 4 uses
  %i.rw = load i32, ptr %i.ru, align 4, !tbaa !53
  %i.rx = lshr i32 %i.rw, 16
  %i.ry = trunc nuw i32 %i.rx to i16
  store i16 %i.ry, ptr %.1367549.us.i, align 2, !tbaa !256
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %i.cy
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !53
  %i.sb = lshr i32 %i.sa, 16
  %i.sc = trunc nuw i32 %i.sb to i16
  %i.sd = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 2
  store i16 %i.sc, ptr %i.sd, align 2, !tbaa !256
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %2
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !53
  %i.sg = lshr i32 %i.sf, 16
  %i.sh = trunc nuw i32 %i.sg to i16
  %i.si = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 4
  store i16 %i.sh, ptr %i.si, align 2, !tbaa !256
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %3
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !53
  %i.sl = lshr i32 %i.sk, 16
  %i.sm = trunc nuw i32 %i.sl to i16
  %i.sn = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 6
  store i16 %i.sm, ptr %i.sn, align 2, !tbaa !256
  %i.so = load i32, ptr %i.rv, align 4, !tbaa !53
  %i.sp = lshr i32 %i.so, 16
  %i.sq = trunc nuw i32 %i.sp to i16
  %i.sr = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 8
  store i16 %i.sq, ptr %i.sr, align 2, !tbaa !256
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %i.cy
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !53
  %i.su = lshr i32 %i.st, 16
  %i.sv = trunc nuw i32 %i.su to i16
  %i.sw = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 10
  store i16 %i.sv, ptr %i.sw, align 2, !tbaa !256
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %2
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !53
  %i.sz = lshr i32 %i.sy, 16
  %i.ta = trunc nuw i32 %i.sz to i16
  %i.tb = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 12
  store i16 %i.ta, ptr %i.tb, align 2, !tbaa !256
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %3
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !53
  %i.te = lshr i32 %i.td, 16
  %i.tf = trunc nuw i32 %i.te to i16
  %i.tg = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 14
  store i16 %i.tf, ptr %i.tg, align 2, !tbaa !256
  %i.th = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 16 ; 3 uses
  %indvars.iv.next745.i = add nuw nsw i64 %indvars.iv744.i, 1 ; 2 uses
  %exitcond748.not.i = icmp eq i64 %indvars.iv.next745.i, %wide.trip.count747.i
  br i1 %exitcond748.not.i, label %._crit_edge551.us.i, label %bb.t, !llvm.loop !277

._crit_edge551.us.i:                              ; preds = %bb.t
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %.0375553.us.i, i64 %i.dc ; 2 uses
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %.0373554.us.i, i64 %i.dc ; 2 uses
  %i.tk = add nuw nsw i32 %.0363556.us.i, 4       ; 2 uses
  %i.tl = or disjoint i32 %i.tk, 3
  %i.tm = icmp slt i32 %i.tl, %i.h
  br i1 %i.tm, label %.preheader480.us.i, label %.preheader482.i, !llvm.loop !278

.preheader482.i:                                  ; preds = %._crit_edge551.us.i, %_ZN4ncnn3MatD2Ev.exit419.i
  %.0375.lcssa.i = phi ptr [ %i.rk, %_ZN4ncnn3MatD2Ev.exit419.i ], [ %i.ti, %._crit_edge551.us.i ] ; 2 uses
  %.0373.lcssa.i = phi ptr [ %i.rn, %_ZN4ncnn3MatD2Ev.exit419.i ], [ %i.tj, %._crit_edge551.us.i ] ; 2 uses
  %.0366.lcssa.i = phi ptr [ %i.rt, %_ZN4ncnn3MatD2Ev.exit419.i ], [ %i.th, %._crit_edge551.us.i ] ; 2 uses
  %.0363.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit419.i ], [ %i.de, %._crit_edge551.us.i ] ; 3 uses
  %i.tn = or disjoint i32 %.0363.lcssa.i, 1
  %i.to = icmp slt i32 %i.tn, %i.h
  br i1 %i.to, label %.preheader479.lr.ph.i, label %.preheader481.i

.preheader479.lr.ph.i:                            ; preds = %.preheader482.i
  br i1 %i.cx, label %.preheader479.us.i, label %._crit_edge591.split.i

.preheader479.us.i:                               ; preds = %.preheader479.lr.ph.i, %._crit_edge571.us.i
  %.1364576.us.i = phi i32 [ %i.vz, %._crit_edge571.us.i ], [ %.0363.lcssa.i, %.preheader479.lr.ph.i ]
  %.2368575.us.i = phi ptr [ %.lcssa197, %._crit_edge571.us.i ], [ %.0366.lcssa.i, %.preheader479.lr.ph.i ] ; 2 uses
  %.1374574.us.i = phi ptr [ %i.vy, %._crit_edge571.us.i ], [ %.0373.lcssa.i, %.preheader479.lr.ph.i ] ; 4 uses
  %.1376573.us.i = phi ptr [ %i.vx, %._crit_edge571.us.i ], [ %.0375.lcssa.i, %.preheader479.lr.ph.i ] ; 4 uses
  br i1 %i.di, label %.epil.preheader216, label %.preheader479.us.i.new

.preheader479.us.i.new:                           ; preds = %.preheader479.us.i, %.preheader479.us.i.new
  %indvars.iv751.i = phi i64 [ %indvars.iv.next752.i.1, %.preheader479.us.i.new ], [ 0, %.preheader479.us.i ] ; 4 uses
  %.3369569.us.i = phi ptr [ %i.vc, %.preheader479.us.i.new ], [ %.2368575.us.i, %.preheader479.us.i ] ; 9 uses
  %niter222 = phi i64 [ %niter222.next.1, %.preheader479.us.i.new ], [ 0, %.preheader479.us.i ]
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %.1376573.us.i, i64 %indvars.iv751.i ; 2 uses
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %.1374574.us.i, i64 %indvars.iv751.i ; 2 uses
  %i.tr = load i32, ptr %i.tp, align 4, !tbaa !53
  %i.ts = lshr i32 %i.tr, 16
  %i.tt = trunc nuw i32 %i.ts to i16
  store i16 %i.tt, ptr %.3369569.us.i, align 2, !tbaa !256
  %i.tu = load i32, ptr %i.tq, align 4, !tbaa !53
  %i.tv = lshr i32 %i.tu, 16
  %i.tw = trunc nuw i32 %i.tv to i16
  %i.tx = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 2
  store i16 %i.tw, ptr %i.tx, align 2, !tbaa !256
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.tp, i64 %i.cy
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %i.cy
  %i.ua = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 4
  %i.ub = load i32, ptr %i.ty, align 4, !tbaa !53
  %i.uc = lshr i32 %i.ub, 16
  %i.ud = trunc nuw i32 %i.uc to i16
  store i16 %i.ud, ptr %i.ua, align 2, !tbaa !256
  %i.ue = load i32, ptr %i.tz, align 4, !tbaa !53
  %i.uf = lshr i32 %i.ue, 16
  %i.ug = trunc nuw i32 %i.uf to i16
  %i.uh = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 6
  store i16 %i.ug, ptr %i.uh, align 2, !tbaa !256
  %i.ui = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 8
  %indvars.iv.next752.i = or disjoint i64 %indvars.iv751.i, 1 ; 2 uses
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %.1376573.us.i, i64 %indvars.iv.next752.i ; 2 uses
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %.1374574.us.i, i64 %indvars.iv.next752.i ; 2 uses
  %i.ul = load i32, ptr %i.uj, align 4, !tbaa !53
  %i.um = lshr i32 %i.ul, 16
  %i.un = trunc nuw i32 %i.um to i16
  store i16 %i.un, ptr %i.ui, align 2, !tbaa !256
  %i.uo = load i32, ptr %i.uk, align 4, !tbaa !53
  %i.up = lshr i32 %i.uo, 16
  %i.uq = trunc nuw i32 %i.up to i16
  %i.ur = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 10
  store i16 %i.uq, ptr %i.ur, align 2, !tbaa !256
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %i.cy
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.uk, i64 %i.cy
  %i.uu = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 12
  %i.uv = load i32, ptr %i.us, align 4, !tbaa !53
  %i.uw = lshr i32 %i.uv, 16
  %i.ux = trunc nuw i32 %i.uw to i16
  store i16 %i.ux, ptr %i.uu, align 2, !tbaa !256
  %i.uy = load i32, ptr %i.ut, align 4, !tbaa !53
  %i.uz = lshr i32 %i.uy, 16
  %i.va = trunc nuw i32 %i.uz to i16
  %i.vb = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 14
  store i16 %i.va, ptr %i.vb, align 2, !tbaa !256
  %i.vc = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 16 ; 3 uses
  %indvars.iv.next752.i.1 = add nuw nsw i64 %indvars.iv751.i, 2 ; 2 uses
  %niter222.next.1 = add i64 %niter222, 2         ; 2 uses
  %niter222.ncmp.1 = icmp eq i64 %niter222.next.1, %unroll_iter221
  br i1 %niter222.ncmp.1, label %._crit_edge571.us.i.unr-lcssa, label %.preheader479.us.i.new, !llvm.loop !279

._crit_edge571.us.i.unr-lcssa:                    ; preds = %.preheader479.us.i.new
  br i1 %lcmp.mod218.not, label %._crit_edge571.us.i, label %.epil.preheader216

.epil.preheader216:                               ; preds = %._crit_edge571.us.i.unr-lcssa, %.preheader479.us.i
  %indvars.iv751.i.epil.init = phi i64 [ 0, %.preheader479.us.i ], [ %indvars.iv.next752.i.1, %._crit_edge571.us.i.unr-lcssa ] ; 2 uses
  %.3369569.us.i.epil.init = phi ptr [ %.2368575.us.i, %.preheader479.us.i ], [ %i.vc, %._crit_edge571.us.i.unr-lcssa ] ; 5 uses
  tail call void @llvm.assume(i1 %lcmp.mod220)
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %.1376573.us.i, i64 %indvars.iv751.i.epil.init ; 2 uses
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %.1374574.us.i, i64 %indvars.iv751.i.epil.init ; 2 uses
  %i.vf = load i32, ptr %i.vd, align 4, !tbaa !53
  %i.vg = lshr i32 %i.vf, 16
  %i.vh = trunc nuw i32 %i.vg to i16
  store i16 %i.vh, ptr %.3369569.us.i.epil.init, align 2, !tbaa !256
  %i.vi = load i32, ptr %i.ve, align 4, !tbaa !53
  %i.vj = lshr i32 %i.vi, 16
  %i.vk = trunc nuw i32 %i.vj to i16
  %i.vl = getelementptr inbounds nuw i8, ptr %.3369569.us.i.epil.init, i64 2
  store i16 %i.vk, ptr %i.vl, align 2, !tbaa !256
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.vd, i64 %i.cy
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.ve, i64 %i.cy
  %i.vo = getelementptr inbounds nuw i8, ptr %.3369569.us.i.epil.init, i64 4
  %i.vp = load i32, ptr %i.vm, align 4, !tbaa !53
  %i.vq = lshr i32 %i.vp, 16
  %i.vr = trunc nuw i32 %i.vq to i16
  store i16 %i.vr, ptr %i.vo, align 2, !tbaa !256
  %i.vs = load i32, ptr %i.vn, align 4, !tbaa !53
  %i.vt = lshr i32 %i.vs, 16
  %i.vu = trunc nuw i32 %i.vt to i16
  %i.vv = getelementptr inbounds nuw i8, ptr %.3369569.us.i.epil.init, i64 6
  store i16 %i.vu, ptr %i.vv, align 2, !tbaa !256
  %i.vw = getelementptr inbounds nuw i8, ptr %.3369569.us.i.epil.init, i64 8
  br label %._crit_edge571.us.i

._crit_edge571.us.i:                              ; preds = %._crit_edge571.us.i.unr-lcssa, %.epil.preheader216
  %.lcssa197 = phi ptr [ %i.vc, %._crit_edge571.us.i.unr-lcssa ], [ %i.vw, %.epil.preheader216 ] ; 2 uses
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %.1376573.us.i, i64 %2 ; 2 uses
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %.1374574.us.i, i64 %2 ; 2 uses
  %i.vz = add nuw nsw i32 %.1364576.us.i, 2       ; 3 uses
  %i.wa = or disjoint i32 %i.vz, 1
  %i.wb = icmp slt i32 %i.wa, %i.h
  br i1 %i.wb, label %.preheader479.us.i, label %.preheader481.i, !llvm.loop !280

.preheader481.i:                                  ; preds = %._crit_edge571.us.i, %.preheader482.i
  %.1376.lcssa.i = phi ptr [ %.0375.lcssa.i, %.preheader482.i ], [ %i.vx, %._crit_edge571.us.i ] ; 2 uses
  %.1374.lcssa.i = phi ptr [ %.0373.lcssa.i, %.preheader482.i ], [ %i.vy, %._crit_edge571.us.i ] ; 2 uses
  %.2368.lcssa.i = phi ptr [ %.0366.lcssa.i, %.preheader482.i ], [ %.lcssa197, %._crit_edge571.us.i ]
  %.1364.lcssa.i = phi i32 [ %.0363.lcssa.i, %.preheader482.i ], [ %i.vz, %._crit_edge571.us.i ] ; 2 uses
  %i.wc = icmp sge i32 %.1364.lcssa.i, %i.h
  %brmerge642.i = or i1 %i.dd, %i.wc
  br i1 %brmerge642.i, label %._crit_edge591.split.i, label %.preheader478.i

.preheader478.i:                                  ; preds = %.preheader481.i, %._crit_edge587.i
  %.2365590.i = phi i32 [ %i.wk, %._crit_edge587.i ], [ %.1364.lcssa.i, %.preheader481.i ]
  %.5371589.i = phi ptr [ %.lcssa112, %._crit_edge587.i ], [ %.2368.lcssa.i, %.preheader481.i ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader478.i
  %i.wd = getelementptr i8, ptr %.5371589.i, i64 %i.dj ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.we = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.5371589.i, i64 %i.we
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %.1376.lcssa.i, i64 %index
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %.1374.lcssa.i, i64 %index
  %wide.load = load <4 x i32>, ptr %i.wf, align 4, !tbaa !53
  %wide.load125 = load <4 x i32>, ptr %i.wg, align 4, !tbaa !53
  %i.wh = shufflevector <4 x i32> %wide.load, <4 x i32> %wide.load125, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.wi = lshr <8 x i32> %i.wh, splat (i32 16)
  %interleaved.vec = trunc nuw <8 x i32> %i.wi to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %next.gep, align 2, !tbaa !256
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.wj = icmp eq i64 %index.next, %n.vec
  br i1 %i.wj, label %middle.block, label %vector.body, !llvm.loop !281

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge587.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader478.i, %middle.block
  %indvars.iv756.i.ph = phi i64 [ 0, %.preheader478.i ], [ %n.vec, %middle.block ]
  %.6372585.i.ph = phi ptr [ %.5371589.i, %.preheader478.i ], [ %i.wd, %middle.block ]
  br label %scalar.ph

._crit_edge587.i:                                 ; preds = %scalar.ph, %middle.block
  %.lcssa112 = phi ptr [ %i.wd, %middle.block ], [ %i.wu, %scalar.ph ]
  %i.wk = add nuw nsw i32 %.2365590.i, 1          ; 2 uses
  %exitcond761.not.i = icmp eq i32 %i.wk, %i.h
  br i1 %exitcond761.not.i, label %._crit_edge591.split.i, label %.preheader478.i, !llvm.loop !282

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv756.i = phi i64 [ %indvars.iv.next757.i, %scalar.ph ], [ %indvars.iv756.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.6372585.i = phi ptr [ %i.wu, %scalar.ph ], [ %.6372585.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %.1376.lcssa.i, i64 %indvars.iv756.i
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %.1374.lcssa.i, i64 %indvars.iv756.i
  %i.wn = load i32, ptr %i.wl, align 4, !tbaa !53
  %i.wo = lshr i32 %i.wn, 16
  %i.wp = trunc nuw i32 %i.wo to i16
  store i16 %i.wp, ptr %.6372585.i, align 2, !tbaa !256
  %i.wq = load i32, ptr %i.wm, align 4, !tbaa !53
  %i.wr = lshr i32 %i.wq, 16
  %i.ws = trunc nuw i32 %i.wr to i16
  %i.wt = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 2
  store i16 %i.ws, ptr %i.wt, align 2, !tbaa !256
  %i.wu = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 4 ; 2 uses
  %indvars.iv.next757.i = add nuw nsw i64 %indvars.iv756.i, 1 ; 2 uses
  %exitcond760.not.i = icmp eq i64 %indvars.iv.next757.i, %wide.trip.count747.i
  br i1 %exitcond760.not.i, label %._crit_edge587.i, label %scalar.ph, !llvm.loop !283

._crit_edge591.split.i:                           ; preds = %._crit_edge587.i, %.preheader481.i, %.preheader479.lr.ph.i, %.preheader480.lr.ph.i
  %indvars.iv.next765.i = add nuw nsw i64 %indvars.iv764.i, 2 ; 3 uses
  %i.wv = icmp slt i64 %indvars.iv.next765.i, %invariant.op.i
  %indvars.iv.next763.i = add i32 %indvars.iv762.i, 2
  br i1 %i.wv, label %_ZN4ncnn3MatD2Ev.exit419.i, label %.preheader477.loopexit.i, !llvm.loop !284

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %._crit_edge634.split.i, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split
  %indvars.iv791.i = phi i64 [ %i.mm, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split ], [ %indvars.iv.next792.i, %._crit_edge634.split.i ] ; 2 uses
  %i.ww = trunc nuw nsw i64 %indvars.iv791.i to i32 ; 4 uses
  %i.wx = mul i32 %i.lx, %i.ww
  %i.wy = sext i32 %i.wx to i64
  %i.wz = getelementptr inbounds [4 x i8], ptr %i.lw, i64 %i.wy ; 4 uses
  %i.xa = lshr i32 %i.ww, 2
  %i.xb = lshr i32 %i.ww, 1
  %i.xc = and i32 %i.xb, 1
  %i.xd = and i32 %i.ww, 1
  %i.xe = add nuw nsw i32 %i.xd, %i.xa
  %i.xf = add nuw nsw i32 %i.xe, %i.xc
  %i.xg = zext nneg i32 %i.xf to i64
  %.reass638.i = mul i64 %factor.op.mul637.i, %i.xg
  %i.xh = getelementptr inbounds nuw i8, ptr %i.ly, i64 %.reass638.i ; 4 uses
  br i1 %i.rd, label %.preheader473.lr.ph.i, label %.preheader475.i

.preheader473.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit.i
  br i1 %i.me, label %.preheader473.us.i.preheader, label %._crit_edge634.split.i

.preheader473.us.i.preheader:                     ; preds = %.preheader473.lr.ph.i
  br i1 %min.iters.check142, label %.preheader473.us.i.preheader190, label %vector.ph143

vector.ph143:                                     ; preds = %.preheader473.us.i.preheader
  %i.xi = getelementptr i8, ptr %i.xh, i64 %i.rf  ; 2 uses
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph143
  %index146 = phi i64 [ 0, %vector.ph143 ], [ %index.next151, %vector.body145 ] ; 3 uses
  %i.xj = shl i64 %index146, 2
  %next.gep147 = getelementptr i8, ptr %i.xh, i64 %i.xj
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.wz, i64 %index146 ; 2 uses
  %wide.load148 = load <4 x i32>, ptr %i.xk, align 4, !tbaa !53
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.xk, i64 %i.mf
  %wide.load149 = load <4 x i32>, ptr %i.xl, align 4, !tbaa !53
  %i.xm = shufflevector <4 x i32> %wide.load148, <4 x i32> %wide.load149, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.xn = lshr <8 x i32> %i.xm, splat (i32 16)
  %interleaved.vec150 = trunc nuw <8 x i32> %i.xn to <8 x i16>
  store <8 x i16> %interleaved.vec150, ptr %next.gep147, align 2, !tbaa !256
  %index.next151 = add nuw i64 %index146, 4       ; 2 uses
  %i.xo = icmp eq i64 %index.next151, %n.vec144
  br i1 %i.xo, label %middle.block152, label %vector.body145, !llvm.loop !285

middle.block152:                                  ; preds = %vector.body145
  br i1 %cmp.n153, label %.preheader475.i.loopexit, label %.preheader473.us.i.preheader190

.preheader473.us.i.preheader190:                  ; preds = %.preheader473.us.i.preheader, %middle.block152
  %indvars.iv780.i.ph = phi i64 [ 0, %.preheader473.us.i.preheader ], [ %n.vec144, %middle.block152 ]
  %.4615.us.i.ph = phi ptr [ %i.xh, %.preheader473.us.i.preheader ], [ %i.xi, %middle.block152 ]
  br label %.preheader473.us.i

.preheader473.us.i:                               ; preds = %.preheader473.us.i.preheader190, %.preheader473.us.i
  %indvars.iv780.i = phi i64 [ %indvars.iv.next781.i, %.preheader473.us.i ], [ %indvars.iv780.i.ph, %.preheader473.us.i.preheader190 ] ; 2 uses
  %.4615.us.i = phi ptr [ %i.xy, %.preheader473.us.i ], [ %.4615.us.i.ph, %.preheader473.us.i.preheader190 ] ; 3 uses
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.wz, i64 %indvars.iv780.i ; 2 uses
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !53
  %i.xr = lshr i32 %i.xq, 16
  %i.xs = trunc nuw i32 %i.xr to i16
  store i16 %i.xs, ptr %.4615.us.i, align 2, !tbaa !256
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.xp, i64 %i.mf
  %i.xu = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 2
  %i.xv = load i32, ptr %i.xt, align 4, !tbaa !53
  %i.xw = lshr i32 %i.xv, 16
  %i.xx = trunc nuw i32 %i.xw to i16
  store i16 %i.xx, ptr %i.xu, align 2, !tbaa !256
  %i.xy = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 4 ; 2 uses
  %indvars.iv.next781.i = add nuw nsw i64 %indvars.iv780.i, 1 ; 2 uses
  %exitcond784.not.i = icmp eq i64 %indvars.iv.next781.i, %wide.trip.count777.i
  br i1 %exitcond784.not.i, label %.preheader475.i.loopexit, label %.preheader473.us.i, !llvm.loop !286

.preheader475.i.loopexit:                         ; preds = %.preheader473.us.i, %middle.block152
  %.lcssa103 = phi ptr [ %i.xi, %middle.block152 ], [ %i.xy, %.preheader473.us.i ]
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.wz, i64 %i.mj
  br label %.preheader475.i

.preheader475.i:                                  ; preds = %.preheader475.i.loopexit, %_ZN4ncnn3MatD2Ev.exit.i
  %.1348.lcssa.i = phi ptr [ %i.wz, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.xz, %.preheader475.i.loopexit ] ; 2 uses
  %.3.lcssa.i = phi ptr [ %i.xh, %_ZN4ncnn3MatD2Ev.exit.i ], [ %.lcssa103, %.preheader475.i.loopexit ]
  %.1342.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.re, %.preheader475.i.loopexit ] ; 2 uses
  %i.ya = icmp sge i32 %.1342.lcssa.i, %i.h
  %brmerge645.i = or i1 %i.mk, %i.ya
  br i1 %brmerge645.i, label %._crit_edge634.split.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader475.i, %._crit_edge630.i
  %.2343633.i = phi i32 [ %i.yl, %._crit_edge630.i ], [ %.1342.lcssa.i, %.preheader475.i ]
  %.6632.i = phi ptr [ %.lcssa104, %._crit_edge630.i ], [ %.3.lcssa.i, %.preheader475.i ] ; 3 uses
  br i1 %min.iters.check128, label %scalar.ph127.preheader, label %vector.ph129

vector.ph129:                                     ; preds = %.preheader.i
  %i.yb = getelementptr i8, ptr %.6632.i, i64 %i.rg ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph129
  %index132 = phi i64 [ 0, %vector.ph129 ], [ %index.next136, %vector.body131 ] ; 3 uses
  %i.yc = shl i64 %index132, 1
  %next.gep133 = getelementptr i8, ptr %.6632.i, i64 %i.yc ; 2 uses
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i, i64 %index132 ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 16
  %wide.load134 = load <4 x i32>, ptr %i.yd, align 4, !tbaa !53
  %wide.load135 = load <4 x i32>, ptr %i.ye, align 4, !tbaa !53
  %i.yf = lshr <4 x i32> %wide.load134, splat (i32 16)
  %i.yg = lshr <4 x i32> %wide.load135, splat (i32 16)
  %i.yh = trunc nuw <4 x i32> %i.yf to <4 x i16>
  %i.yi = trunc nuw <4 x i32> %i.yg to <4 x i16>
  %i.yj = getelementptr i8, ptr %next.gep133, i64 8
  store <4 x i16> %i.yh, ptr %next.gep133, align 2, !tbaa !256
  store <4 x i16> %i.yi, ptr %i.yj, align 2, !tbaa !256
  %index.next136 = add nuw i64 %index132, 8       ; 2 uses
  %i.yk = icmp eq i64 %index.next136, %n.vec130
  br i1 %i.yk, label %middle.block137, label %vector.body131, !llvm.loop !287

middle.block137:                                  ; preds = %vector.body131
  br i1 %cmp.n138, label %._crit_edge630.i, label %scalar.ph127.preheader

scalar.ph127.preheader:                           ; preds = %.preheader.i, %middle.block137
  %indvars.iv785.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec130, %middle.block137 ]
  %.7628.i.ph = phi ptr [ %.6632.i, %.preheader.i ], [ %i.yb, %middle.block137 ]
  br label %scalar.ph127

._crit_edge630.i:                                 ; preds = %scalar.ph127, %middle.block137
  %.lcssa104 = phi ptr [ %i.yb, %middle.block137 ], [ %i.yq, %scalar.ph127 ]
  %i.yl = add nuw nsw i32 %.2343633.i, 1          ; 2 uses
end_hunk_4
