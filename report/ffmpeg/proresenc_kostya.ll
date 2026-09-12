Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/proresenc_kostya?download=true
inline.NumInlined: 40
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@find_quant_thread:bb.a
  %i.lo = icmp eq i32 %i.lj, 8
  %i.lp = select i1 %i.lo, i32 4, i32 7           ; 3 uses
  %i.lq = add nsw i32 %i.lp, -1
  %i.lr = shl nuw nsw i32 1, %i.lq                ; 4 uses
  %i.ls = sub nsw i32 %i.ln, %i.lk
  %i.lt = and i32 %i.ls, %i.lk                    ; 3 uses
  %i.lu = shl nuw i32 1, %i.lj                    ; 3 uses
  %i.lv = sub nsw i32 %i.lu, %i.lr                ; 2 uses
  %.not.i.i.i = icmp slt i32 %i.lt, %i.lv
  %i.lw = select i1 %.not.i.i.i, i32 0, i32 %i.lu ; 2 uses
  %spec.select.i.i.i = sub nsw i32 %i.lt, %i.lw   ; 2 uses
  %i.lx = sub nsw i32 0, %i.lr                    ; 2 uses
  %i.ly = icmp slt i32 %spec.select.i.i.i, %i.lx
  %i.lz = icmp sgt i32 %spec.select.i.i.i, %i.lr
  %i.ma = icmp eq i32 %i.lt, %i.lw
  %i.mb = or i1 %i.ma, %i.ly
  %i.mc = or i1 %i.lz, %i.mb
  %.020.in.i.i.i = select i1 %i.mc, i32 %i.lj, i32 %i.lp
  %.020.i.i.i = add nsw i32 %.020.in.i.i.i, 1
  br label %.outer.i.i

.outer.i.i:                                       ; preds = %.thread.i.i, %bb.k
  %.034.ph.i.i = phi i32 [ %i.mf, %.thread.i.i ], [ %i.ln, %bb.k ] ; 2 uses
  %.033.ph.i.i = phi i64 [ %indvars.iv.next.i.i, %.thread.i.i ], [ 1, %bb.k ]
  %.0.ph.i.i = phi i32 [ %i.mq, %.thread.i.i ], [ %.020.i.i.i, %bb.k ] ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.outer.i.i
  %indvars.iv.i.i = phi i64 [ %.033.ph.i.i, %.outer.i.i ], [ %indvars.iv.next.i.i, %bb.m ] ; 2 uses
  %.031.i.i = phi i32 [ 0, %.outer.i.i ], [ %i.ms, %bb.m ] ; 4 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 4 uses
  %i.md = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv.i.i
  %i.me = load i16, ptr %i.md, align 2, !tbaa !81
  %i.mf = sext i16 %i.me to i32                   ; 3 uses
  %.not.i.i = icmp eq i32 %.034.ph.i.i, %i.mf
  br i1 %.not.i.i, label %bb.m, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.l
  %i.mg = trunc nuw i64 %indvars.iv.next.i.i to i32
  %.not38.i.i = icmp eq i32 %.031.i.i, 0
  %.inv.i.i = icmp samesign ugt i32 %.031.i.i, 15
  %..i.i = select i1 %.inv.i.i, i32 15, i32 4
  %.sink.i.i = select i1 %.not38.i.i, i32 1, i32 %..i.i
  %i.mh = sub nsw i32 %i.mf, %.034.ph.i.i
  %i.mi = and i32 %i.mh, %i.lk                    ; 3 uses
  %.not.i41.i.i = icmp slt i32 %i.mi, %i.lv
  %i.mj = select i1 %.not.i41.i.i, i32 0, i32 %i.lu ; 2 uses
  %spec.select.i42.i.i = sub nsw i32 %i.mi, %i.mj ; 2 uses
  %i.mk = icmp slt i32 %spec.select.i42.i.i, %i.lx
  %i.ml = icmp sgt i32 %spec.select.i42.i.i, %i.lr
  %i.mm = icmp eq i32 %i.mi, %i.mj
  %i.mn = or i1 %i.mm, %i.mk
  %i.mo = or i1 %i.ml, %i.mn
  %.020.in.i43.i.i = select i1 %i.mo, i32 %i.lj, i32 %i.lp
  %.020.i44.i.i = add i32 %.0.ph.i.i, 1
  %i.mp = add i32 %.020.i44.i.i, %.sink.i.i
  %i.mq = add i32 %i.mp, %.020.in.i43.i.i         ; 2 uses
  %i.mr = icmp sgt i32 %i.ll, %i.mg
  br i1 %i.mr, label %.outer.i.i, label %estimate_alpha_plane.exit.i, !llvm.loop !173

bb.m:                                             ; preds = %bb.l
  %i.ms = add nuw nsw i32 %.031.i.i, 1
  %i.mt = trunc nuw i64 %indvars.iv.next.i.i to i32
  %i.mu = icmp sgt i32 %i.ll, %i.mt
  br i1 %i.mu, label %bb.l, label %bb.n, !llvm.loop !173

bb.n:                                             ; preds = %bb.m
  %i.mv = icmp samesign ult i32 %.031.i.i, 15
  br i1 %i.mv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.mw = add nsw i32 %.0.ph.i.i, 4
  br label %estimate_alpha_plane.exit.i

bb.p:                                             ; preds = %bb.n
  %i.mx = add nsw i32 %.0.ph.i.i, 15
  br label %estimate_alpha_plane.exit.i

estimate_alpha_plane.exit.i:                      ; preds = %.thread.i.i, %bb.p, %bb.o, %._crit_edge.i
  %.0.i = phi i32 [ 0, %._crit_edge.i ], [ %i.mw, %bb.o ], [ %i.mx, %bb.p ], [ %i.mq, %.thread.i.i ] ; 2 uses
  %.not253277.i = icmp sgt i32 %i.az, %i.bb
  br i1 %.not253277.i, label %estimate_alpha_plane.exit.i.._crit_edge280.i_crit_edge, label %.lr.ph279.i

estimate_alpha_plane.exit.i.._crit_edge280.i_crit_edge: ; preds = %estimate_alpha_plane.exit.i
  %.pre = add nsw i32 %i.bb, 1
  br label %._crit_edge280.i

.lr.ph279.i:                                      ; preds = %estimate_alpha_plane.exit.i
  %i.my = getelementptr inbounds nuw i8, ptr %i.av, i64 16912
  %i.mz = icmp ne i32 %i.lj, 0
  %.neg258.i = sext i1 %i.mz to i32
  %i.na = add i32 %.lcssa266.i, %.neg258.i        ; 2 uses
  %i.nb = icmp sgt i32 %i.na, 1
  %i.nc = getelementptr inbounds nuw i8, ptr %i.av, i64 18960
  %i.nd = sext i32 %i.az to i64
  %i.ne = add i32 %i.bb, 1                        ; 2 uses
  %wide.trip.count346.i = zext nneg i32 %i.na to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %.lr.ph279.i
  %indvars.iv348.i = phi i64 [ %i.nd, %.lr.ph279.i ], [ %indvars.iv.next349.i, %bb.t ] ; 5 uses
  store i32 0, ptr %i.b, align 4, !tbaa !55
  %i.nf = getelementptr inbounds [128 x i8], ptr %i.my, i64 %indvars.iv348.i
  %i.ng = call fastcc i32 @estimate_slice_plane(ptr noundef %i.av, ptr noundef %i.b, i32 noundef 0, i32 noundef %.134, i32 noundef 4, ptr noundef nonnull %i.nf, ptr noundef %i.j)
  %i.nh = add nsw i32 %i.ng, %.0.i                ; 2 uses
  br i1 %i.nb, label %.lr.ph274.i, label %._crit_edge275.i

.lr.ph274.i:                                      ; preds = %bb.q
  %i.ni = getelementptr inbounds [128 x i8], ptr %i.nc, i64 %indvars.iv348.i
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph274.i
  %indvars.iv343.i = phi i64 [ 1, %.lr.ph274.i ], [ %indvars.iv.next344.i, %bb.r ] ; 3 uses
  %.1272.i = phi i32 [ %i.nh, %.lr.ph274.i ], [ %i.nn, %bb.r ]
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv343.i
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !55
  %i.nl = trunc nuw nsw i64 %indvars.iv343.i to i32
  %i.nm = call fastcc i32 @estimate_slice_plane(ptr noundef nonnull %i.av, ptr noundef %i.b, i32 noundef %i.nl, i32 noundef %.134, i32 noundef %i.nk, ptr noundef nonnull %i.ni, ptr noundef %i.j)
  %i.nn = add nsw i32 %i.nm, %.1272.i             ; 2 uses
  %indvars.iv.next344.i = add nuw nsw i64 %indvars.iv343.i, 1 ; 2 uses
  %exitcond347.not.i = icmp eq i64 %indvars.iv.next344.i, %wide.trip.count346.i
  br i1 %exitcond347.not.i, label %._crit_edge275.i, label %bb.r, !llvm.loop !174

._crit_edge275.i:                                 ; preds = %bb.r, %bb.q
  %.1.lcssa.i = phi i32 [ %i.nh, %bb.q ], [ %i.nn, %bb.r ] ; 3 uses
  %i.no = icmp sgt i32 %.1.lcssa.i, 520000
  br i1 %i.no, label %bb.s, label %._crit_edge275._crit_edge.i

._crit_edge275._crit_edge.i:                      ; preds = %._crit_edge275.i
  %.pre390.i = load i32, ptr %i.b, align 4, !tbaa !55
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge275.i
  store i32 1073741823, ptr %i.b, align 4, !tbaa !55
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge275._crit_edge.i
  %i.np = phi i32 [ %.pre390.i, %._crit_edge275._crit_edge.i ], [ 1073741823, %bb.s ] ; 2 uses
  %i.nq = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv348.i
  store i32 %.1.lcssa.i, ptr %i.nq, align 4, !tbaa !55
  %i.nr = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv348.i
  store i32 %i.np, ptr %i.nr, align 4, !tbaa !55
  %indvars.iv.next349.i = add nsw i64 %indvars.iv348.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next349.i to i32
  %exitcond351.not.i = icmp eq i32 %i.ne, %lftr.wideiv.i
  br i1 %exitcond351.not.i, label %._crit_edge280.i, label %bb.q, !llvm.loop !175

._crit_edge280.i:                                 ; preds = %bb.t, %estimate_alpha_plane.exit.i.._crit_edge280.i_crit_edge
  %.pre-phi = phi i32 [ %.pre, %estimate_alpha_plane.exit.i.._crit_edge280.i_crit_edge ], [ %i.ne, %bb.t ] ; 3 uses
  %i.ns = phi i32 [ undef, %estimate_alpha_plane.exit.i.._crit_edge280.i_crit_edge ], [ %i.np, %bb.t ]
  %.0231.lcssa.i = phi i32 [ undef, %estimate_alpha_plane.exit.i.._crit_edge280.i_crit_edge ], [ %.1.lcssa.i, %bb.t ]
  %i.nt = sext i32 %i.bb to i64                   ; 4 uses
  %i.nu = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.nt
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !55 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.av, i64 21360
  %i.nx = load i32, ptr %i.nw, align 16, !tbaa !190 ; 2 uses
  %i.ny = mul nsw i32 %i.nx, %.134                ; 2 uses
  %.not254.i = icmp sgt i32 %i.nv, %i.ny
  br i1 %.not254.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge280.i
  %i.nz = sext i32 %.pre-phi to i64               ; 2 uses
  %i.oa = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.nz
  store i32 %i.nv, ptr %i.oa, align 4, !tbaa !55
  %i.ob = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.nt
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !55
  %i.od = add nsw i32 %i.oc, 1
  br label %bb.z

bb.v:                                             ; preds = %._crit_edge280.i
  %i.oe = icmp slt i32 %i.bb, 127
  br i1 %i.oe, label %.lr.ph291.i, label %._crit_edge292.i

.lr.ph291.i:                                      ; preds = %bb.v
  %i.of = getelementptr inbounds nuw i8, ptr %i.av, i64 21264
  %i.og = getelementptr inbounds nuw i8, ptr %i.av, i64 21272
  %i.oh = getelementptr inbounds nuw i8, ptr %i.av, i64 16912
  %i.oi = getelementptr inbounds nuw i8, ptr %i.av, i64 18960
  %i.oj = icmp ne i32 %i.lj, 0
  %.neg.i = sext i1 %i.oj to i32
  %i.ok = add i32 %.lcssa266.i, %.neg.i           ; 2 uses
  %i.ol = icmp sgt i32 %i.ok, 1
  %i.om = add nsw i64 %i.nt, 1
  %wide.trip.count359.i = zext nneg i32 %i.ok to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.y, %.lr.ph291.i
  %indvars.iv361.i = phi i64 [ %i.om, %.lr.ph291.i ], [ %indvars.iv.next362.i, %bb.y ] ; 6 uses
  store i32 0, ptr %i.b, align 4, !tbaa !55
  %i.on = icmp slt i64 %indvars.iv361.i, 16
  br i1 %i.on, label %bb.x, label %vector.memcheck

bb.x:                                             ; preds = %bb.w
  %i.oo = getelementptr inbounds [128 x i8], ptr %i.oh, i64 %indvars.iv361.i
  %i.op = getelementptr inbounds [128 x i8], ptr %i.oi, i64 %indvars.iv361.i
  br label %.loopexit.i

vector.memcheck:                                  ; preds = %bb.w
  %i.oq = load ptr, ptr %i.of, align 16, !tbaa !70 ; 12 uses
  %i.or = load ptr, ptr %i.og, align 8, !tbaa !71 ; 12 uses
  %i.os = trunc nsw i64 %indvars.iv361.i to i32   ; 5 uses
  %scevgep155 = getelementptr i8, ptr %i.oq, i64 64
  %scevgep156 = getelementptr i8, ptr %i.or, i64 64
  %bound0 = icmp ult ptr %i.y, %scevgep155
  %bound1 = icmp ult ptr %i.oq, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0157 = icmp ult ptr %i.y, %scevgep156
  %bound1158 = icmp ult ptr %i.or, %scevgep
  %found.conflict159 = and i1 %bound0157, %bound1158
  %conflict.rdx = or i1 %found.conflict, %found.conflict159
  br i1 %conflict.rdx, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.os, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 16 uses
  %wide.load = load <8 x i8>, ptr %i.oq, align 1, !tbaa !60, !alias.scope !191
  %i.ot = zext <8 x i8> %wide.load to <8 x i32>
  %i.ou = mul nuw nsw <8 x i32> %broadcast.splat, %i.ot
  %i.ov = trunc nuw nsw <8 x i32> %i.ou to <8 x i16>
  store <8 x i16> %i.ov, ptr %i.y, align 2, !tbaa !81, !alias.scope !192, !noalias !193
  %wide.load160 = load <8 x i8>, ptr %i.or, align 1, !tbaa !60, !alias.scope !194
  %i.ow = zext <8 x i8> %wide.load160 to <8 x i32>
  %i.ox = mul nuw nsw <8 x i32> %broadcast.splat, %i.ow
  %i.oy = trunc nuw nsw <8 x i32> %i.ox to <8 x i16>
  store <8 x i16> %i.oy, ptr %i.z, align 2, !tbaa !81, !alias.scope !192, !noalias !193
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  %wide.load.1 = load <8 x i8>, ptr %i.oz, align 1, !tbaa !60, !alias.scope !191
  %i.pa = zext <8 x i8> %wide.load.1 to <8 x i32>
  %i.pb = mul nuw nsw <8 x i32> %broadcast.splat, %i.pa
  %i.pc = trunc nuw nsw <8 x i32> %i.pb to <8 x i16>
  store <8 x i16> %i.pc, ptr %i.ac, align 2, !tbaa !81, !alias.scope !192, !noalias !193
  %i.pd = getelementptr inbounds nuw i8, ptr %i.or, i64 8
  %wide.load160.1 = load <8 x i8>, ptr %i.pd, align 1, !tbaa !60, !alias.scope !194
  %i.pe = zext <8 x i8> %wide.load160.1 to <8 x i32>
  %i.pf = mul nuw nsw <8 x i32> %broadcast.splat, %i.pe
  %i.pg = trunc nuw nsw <8 x i32> %i.pf to <8 x i16>
  store <8 x i16> %i.pg, ptr %i.ad, align 2, !tbaa !81, !alias.scope !192, !noalias !193
  %i.ph = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  %wide.load.2 = load <8 x i8>, ptr %i.ph, align 1, !tbaa !60, !alias.scope !191
  %i.pi = zext <8 x i8> %wide.load.2 to <8 x i32>
  %i.pj = mul nuw nsw <8 x i32> %broadcast.splat, %i.pi
  %i.pk = trunc nuw nsw <8 x i32> %i.pj to <8 x i16>
  store <8 x i16> %i.pk, ptr %i.ae, align 2, !tbaa !81, !alias.scope !192, !noalias !193
  %i.pl = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  %wide.load160.2 = load <8 x i8>, ptr %i.pl, align 1, !tbaa !60, !alias.scope !194
  %i.pm = zext <8 x i8> %wide.load160.2 to <8 x i32>
  %i.pn = mul nuw nsw <8 x i32> %broadcast.splat, %i.pm
  %i.po = trunc nuw nsw <8 x i32> %i.pn to <8 x i16>
  store <8 x i16> %i.po, ptr %i.af, align 2, !tbaa !81, !alias.scope !192, !noalias !193
  %i.pp = getelementptr inbounds nuw i8, ptr %i.oq, i64 24
  %wide.load.3 = load <8 x i8>, ptr %i.pp, align 1, !tbaa !60, !alias.scope !191
  %i.pq = zext <8 x i8> %wide.load.3 to <8 x i32>
  %i.pr = mul nuw nsw <8 x i32> %broadcast.splat, %i.pq
  %i.ps = trunc nuw nsw <8 x i32> %i.pr to <8 x i16>
  store <8 x i16> %i.ps, ptr %i.ag, align 2, !tbaa !81, !alias.scope !192, !noalias !193
  %i.pt = getelementptr inbounds nuw i8, ptr %i.or, i64 24
  %wide.load160.3 = load <8 x i8>, ptr %i.pt, align 1, !tbaa !60, !alias.scope !194
  %i.pu = zext <8 x i8> %wide.load160.3 to <8 x i32>
  %i.pv = mul nuw nsw <8 x i32> %broadcast.splat, %i.pu
  %i.pw = trunc nuw nsw <8 x i32> %i.pv to <8 x i16>
  store <8 x i16> %i.pw, ptr %i.ah, align 2, !tbaa !81, !alias.scope !192, !noalias !193
  %i.px = getelementptr inbounds nuw i8, ptr %i.oq, i64 32
  %wide.load.4 = load <8 x i8>, ptr %i.px, align 1, !tbaa !60, !alias.scope !191
  %i.py = zext <8 x i8> %wide.load.4 to <8 x i32>
  %i.pz = mul nuw nsw <8 x i32> %broadcast.splat, %i.py
  %i.qa = trunc nuw nsw <8 x i32> %i.pz to <8 x i16>
  store <8 x i16> %i.qa, ptr %i.ai, align 2, !tbaa !81, !alias.scope !192, !noalias !193
  %i.qb = getelementptr inbounds nuw i8, ptr %i.or, i64 32
  %wide.load160.4 = load <8 x i8>, ptr %i.qb, align 1, !tbaa !60, !alias.scope !194
  %i.qc = zext <8 x i8> %wide.load160.4 to <8 x i32>
  %i.qd = mul nuw nsw <8 x i32> %broadcast.splat, %i.qc
  %i.qe = trunc nuw nsw <8 x i32> %i.qd to <8 x i16>
  store <8 x i16> %i.qe, ptr %i.aj, align 2, !tbaa !81, !alias.scope !192, !noalias !193
  %i.qf = getelementptr inbounds nuw i8, ptr %i.oq, i64 40
  %wide.load.5 = load <8 x i8>, ptr %i.qf, align 1, !tbaa !60, !alias.scope !191
  %i.qg = zext <8 x i8> %wide.load.5 to <8 x i32>
  %i.qh = mul nuw nsw <8 x i32> %broadcast.splat, %i.qg
  %i.qi = trunc nuw nsw <8 x i32> %i.qh to <8 x i16>
  store <8 x i16> %i.qi, ptr %i.ak, align 2, !tbaa !81, !alias.scope !192, !noalias !193
  %i.qj = getelementptr inbounds nuw i8, ptr %i.or, i64 40
  %wide.load160.5 = load <8 x i8>, ptr %i.qj, align 1, !tbaa !60, !alias.scope !194
  %i.qk = zext <8 x i8> %wide.load160.5 to <8 x i32>
  %i.ql = mul nuw nsw <8 x i32> %broadcast.splat, %i.qk
  %i.qm = trunc nuw nsw <8 x i32> %i.ql to <8 x i16>
  store <8 x i16> %i.qm, ptr %i.al, align 2, !tbaa !81, !alias.scope !192, !noalias !193
  %i.qn = getelementptr inbounds nuw i8, ptr %i.oq, i64 48
  %wide.load.6 = load <8 x i8>, ptr %i.qn, align 1, !tbaa !60, !alias.scope !191
  %i.qo = zext <8 x i8> %wide.load.6 to <8 x i32>
  %i.qp = mul nuw nsw <8 x i32> %broadcast.splat, %i.qo
  %i.qq = trunc nuw nsw <8 x i32> %i.qp to <8 x i16>
  store <8 x i16> %i.qq, ptr %i.am, align 2, !tbaa !81, !alias.scope !192, !noalias !193
  %i.qr = getelementptr inbounds nuw i8, ptr %i.or, i64 48
  %wide.load160.6 = load <8 x i8>, ptr %i.qr, align 1, !tbaa !60, !alias.scope !194
  %i.qs = zext <8 x i8> %wide.load160.6 to <8 x i32>
  %i.qt = mul nuw nsw <8 x i32> %broadcast.splat, %i.qs
  %i.qu = trunc nuw nsw <8 x i32> %i.qt to <8 x i16>
  store <8 x i16> %i.qu, ptr %i.an, align 2, !tbaa !81, !alias.scope !192, !noalias !193
  %i.qv = getelementptr inbounds nuw i8, ptr %i.oq, i64 56
  %wide.load.7 = load <8 x i8>, ptr %i.qv, align 1, !tbaa !60, !alias.scope !191
  %i.qw = zext <8 x i8> %wide.load.7 to <8 x i32>
  %i.qx = mul nuw nsw <8 x i32> %broadcast.splat, %i.qw
  %i.qy = trunc nuw nsw <8 x i32> %i.qx to <8 x i16>
  store <8 x i16> %i.qy, ptr %i.ao, align 2, !tbaa !81, !alias.scope !192, !noalias !193
  %i.qz = getelementptr inbounds nuw i8, ptr %i.or, i64 56
  %wide.load160.7 = load <8 x i8>, ptr %i.qz, align 1, !tbaa !60, !alias.scope !194
  %i.ra = zext <8 x i8> %wide.load160.7 to <8 x i32>
  %i.rb = mul nuw nsw <8 x i32> %broadcast.splat, %i.ra
  %i.rc = trunc nuw nsw <8 x i32> %i.rb to <8 x i16>
  store <8 x i16> %i.rc, ptr %i.ap, align 2, !tbaa !81, !alias.scope !192, !noalias !193
  br label %.loopexit.i

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv352.i = phi i64 [ %indvars.iv.next353.i.1, %scalar.ph ], [ 0, %vector.memcheck ] ; 6 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.oq, i64 %indvars.iv352.i
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !60
  %i.rf = zext i8 %i.re to i32
  %i.rg = mul nuw nsw i32 %i.rf, %i.os
  %i.rh = trunc nuw nsw i32 %i.rg to i16
  %i.ri = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv352.i
  store i16 %i.rh, ptr %i.ri, align 2, !tbaa !81
  %i.rj = getelementptr inbounds nuw i8, ptr %i.or, i64 %indvars.iv352.i
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !60
  %i.rl = zext i8 %i.rk to i32
  %i.rm = mul nuw nsw i32 %i.rl, %i.os
  %i.rn = trunc nuw nsw i32 %i.rm to i16
  %i.ro = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %indvars.iv352.i
  store i16 %i.rn, ptr %i.ro, align 2, !tbaa !81
  %indvars.iv.next353.i = or disjoint i64 %indvars.iv352.i, 1 ; 4 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.oq, i64 %indvars.iv.next353.i
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !60
  %i.rr = zext i8 %i.rq to i32
  %i.rs = mul nuw nsw i32 %i.rr, %i.os
  %i.rt = trunc nuw nsw i32 %i.rs to i16
  %i.ru = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv.next353.i
  store i16 %i.rt, ptr %i.ru, align 2, !tbaa !81
  %i.rv = getelementptr inbounds nuw i8, ptr %i.or, i64 %indvars.iv.next353.i
  %i.rw = load i8, ptr %i.rv, align 1, !tbaa !60
  %i.rx = zext i8 %i.rw to i32
  %i.ry = mul nuw nsw i32 %i.rx, %i.os
  %i.rz = trunc nuw nsw i32 %i.ry to i16
  %i.sa = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %indvars.iv.next353.i
  store i16 %i.rz, ptr %i.sa, align 2, !tbaa !81
  %indvars.iv.next353.i.1 = add nuw nsw i64 %indvars.iv352.i, 2 ; 2 uses
  %exitcond355.not.i.1 = icmp eq i64 %indvars.iv.next353.i.1, 64
  br i1 %exitcond355.not.i.1, label %.loopexit.i, label %scalar.ph, !llvm.loop !180

.loopexit.i:                                      ; preds = %scalar.ph, %vector.body, %bb.x
  %.0228.i = phi ptr [ %i.oo, %bb.x ], [ %i.y, %vector.body ], [ %i.y, %scalar.ph ]
  %.0227.i = phi ptr [ %i.op, %bb.x ], [ %i.z, %vector.body ], [ %i.z, %scalar.ph ]
  %i.sb = call fastcc i32 @estimate_slice_plane(ptr noundef %i.av, ptr noundef %i.b, i32 noundef 0, i32 noundef %.134, i32 noundef 4, ptr noundef nonnull %.0228.i, ptr noundef %i.j)
  %i.sc = add nsw i32 %i.sb, %.0.i                ; 2 uses
  br i1 %i.ol, label %.lr.ph286.i, label %._crit_edge287.i

.lr.ph286.i:                                      ; preds = %.loopexit.i, %.lr.ph286.i
  %indvars.iv356.i = phi i64 [ %indvars.iv.next357.i, %.lr.ph286.i ], [ 1, %.loopexit.i ] ; 3 uses
  %.3284.i = phi i32 [ %i.sh, %.lr.ph286.i ], [ %i.sc, %.loopexit.i ]
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv356.i
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !55
  %i.sf = trunc nuw nsw i64 %indvars.iv356.i to i32
  %i.sg = call fastcc i32 @estimate_slice_plane(ptr noundef %i.av, ptr noundef %i.b, i32 noundef %i.sf, i32 noundef %.134, i32 noundef %i.se, ptr noundef nonnull %.0227.i, ptr noundef %i.j)
  %i.sh = add nsw i32 %i.sg, %.3284.i             ; 2 uses
  %indvars.iv.next357.i = add nuw nsw i64 %indvars.iv356.i, 1 ; 2 uses
  %exitcond360.not.i = icmp eq i64 %indvars.iv.next357.i, %wide.trip.count359.i
  br i1 %exitcond360.not.i, label %._crit_edge287.i, label %.lr.ph286.i, !llvm.loop !181

._crit_edge287.i:                                 ; preds = %.lr.ph286.i, %.loopexit.i
  %.3.lcssa.i = phi i32 [ %i.sc, %.loopexit.i ], [ %i.sh, %.lr.ph286.i ] ; 2 uses
  %.not255.i = icmp sgt i32 %.3.lcssa.i, %i.ny
  br i1 %.not255.i, label %bb.y, label %._crit_edge292.loopexit.split.loop.exit.i

bb.y:                                             ; preds = %._crit_edge287.i
  %indvars.iv.next362.i = add nsw i64 %indvars.iv361.i, 1 ; 2 uses
  %i.si = and i64 %indvars.iv.next362.i, 4294967295
  %exitcond365.not.i = icmp eq i64 %i.si, 128
  br i1 %exitcond365.not.i, label %._crit_edge292.loopexit.i, label %bb.w, !llvm.loop !182

._crit_edge292.loopexit.split.loop.exit.i:        ; preds = %._crit_edge287.i
  %i.sj = trunc nsw i64 %indvars.iv361.i to i32
  br label %._crit_edge292.loopexit.i

._crit_edge292.loopexit.i:                        ; preds = %bb.y, %._crit_edge292.loopexit.split.loop.exit.i
  %.2241.lcssa.ph.i = phi i32 [ %i.sj, %._crit_edge292.loopexit.split.loop.exit.i ], [ 128, %bb.y ]
  %.pre391.i = load i32, ptr %i.b, align 4, !tbaa !55
  br label %._crit_edge292.i

._crit_edge292.i:                                 ; preds = %._crit_edge292.loopexit.i, %bb.v
  %i.sk = phi i32 [ %i.ns, %bb.v ], [ %.pre391.i, %._crit_edge292.loopexit.i ]
  %.2241.lcssa.i = phi i32 [ %.pre-phi, %bb.v ], [ %.2241.lcssa.ph.i, %._crit_edge292.loopexit.i ]
  %.4.i = phi i32 [ %.0231.lcssa.i, %bb.v ], [ %.3.lcssa.i, %._crit_edge292.loopexit.i ]
  %i.sl = sext i32 %.pre-phi to i64               ; 2 uses
  %i.sm = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.sl
  store i32 %.4.i, ptr %i.sm, align 4, !tbaa !55
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge292.i, %bb.u
  %.sink422.i = phi i64 [ %i.sl, %._crit_edge292.i ], [ %i.nz, %bb.u ]
  %.sink.i = phi i32 [ %i.sk, %._crit_edge292.i ], [ %i.od, %bb.u ]
  %.0229.i = phi i32 [ %.2241.lcssa.i, %._crit_edge292.i ], [ %i.bb, %bb.u ]
  %i.sn = getelementptr inbounds [4 x i8], ptr %i.d, i64 %.sink422.i
  store i32 %.sink.i, ptr %i.sn, align 4, !tbaa !55
  %i.so = load ptr, ptr %i.w, align 16, !tbaa !52 ; 7 uses
end_hunk_0
begin_hunk_1_@encode_slice_plane:bb.a
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i, %encode_dcs.exit
  %indvars.iv49.i = phi i64 [ 1, %encode_dcs.exit ], [ %indvars.iv.next50.i, %._crit_edge.i ] ; 2 uses
  %.047.i = phi i32 [ 0, %encode_dcs.exit ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.02946.i = phi i32 [ 2, %encode_dcs.exit ], [ %.130.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.03245.i = phi i32 [ 4, %encode_dcs.exit ], [ %.133.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %indvars.iv49.i ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !60  ; 2 uses
  %i.ak = zext i8 %i.aj to i32
  %i.al = icmp sgt i32 %i.ae, %i.ak
  br i1 %i.al, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.am = zext i8 %i.aj to i64
  br label %.lr.ph.i11

.lr.ph.i11:                                       ; preds = %bb.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.am, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.i ] ; 2 uses
  %.141.i = phi i32 [ %.047.i, %.lr.ph.preheader.i ], [ %.2.i, %bb.i ] ; 3 uses
  %.13040.i = phi i32 [ %.02946.i, %.lr.ph.preheader.i ], [ %.231.i, %bb.i ] ; 2 uses
  %.13339.i = phi i32 [ %.03245.i, %.lr.ph.preheader.i ], [ %.234.i, %bb.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.i
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !81
  %i.ap = sext i16 %i.ao to i32
  %i.aq = load i8, ptr %i.ai, align 1, !tbaa !60
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !81
  %i.au = sext i16 %i.at to i32
  %i.av = sdiv i32 %i.ap, %i.au                   ; 3 uses
  %.not.i = icmp eq i32 %i.av, 0
  br i1 %.not.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i11
  %i.aw = tail call i32 @llvm.abs.i32(i32 %i.av, i1 true) ; 2 uses
  %i.ax = sext i32 %.13339.i to i64
  %i.ay = getelementptr inbounds i8, ptr @ff_prores_run_to_cb, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !60
  %i.ba = zext i8 %i.az to i32
  tail call fastcc void @encode_vlc_codeword(ptr noundef nonnull %1, i32 noundef %i.ba, i32 noundef %.141.i)
  %i.bb = zext nneg i32 %.13040.i to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @ff_prores_level_to_cb, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !60
  %i.be = zext i8 %i.bd to i32
  %i.bf = add nsw i32 %i.aw, -1
  tail call fastcc void @encode_vlc_codeword(ptr noundef nonnull %1, i32 noundef %i.be, i32 noundef %i.bf)
  %i.bg = lshr i32 %i.av, 31                      ; 4 uses
  %i.bh = load i32, ptr %1, align 8, !tbaa !79    ; 2 uses
  %i.bi = load i32, ptr %i.af, align 4, !tbaa !78 ; 4 uses
  %i.bj = icmp sgt i32 %i.bi, 1
  br i1 %i.bj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bk = shl i32 %i.bh, 1
  %i.bl = or disjoint i32 %i.bk, %i.bg
  br label %put_sbits.exit.i

bb.e:                                             ; preds = %bb.c
  %i.bm = load ptr, ptr %i.ag, align 8, !tbaa !76
  %i.bn = load ptr, ptr %i.ah, align 8, !tbaa !77 ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = icmp ugt i64 %i.bq, 3
  br i1 %i.br, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bs = shl i32 %i.bh, %i.bi
  %i.bt = sub nsw i32 1, %i.bi
  %i.bu = lshr i32 %i.bg, %i.bt
  %i.bv = or i32 %i.bu, %i.bs
  %i.bw = tail call i32 @llvm.bswap.i32(i32 %i.bv)
  store i32 %i.bw, ptr %i.bn, align 1, !tbaa !60
  %i.bx = load ptr, ptr %i.ah, align 8, !tbaa !77
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store ptr %i.by, ptr %i.ah, align 8, !tbaa !77
  br label %put_sbits.exit.i

bb.g:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.26) #13
  br label %put_sbits.exit.i

put_sbits.exit.i:                                 ; preds = %bb.g, %bb.f, %bb.d
  %.sink.i = phi i32 [ -1, %bb.d ], [ 31, %bb.g ], [ 31, %bb.f ]
  %.026.i.i.i.i = phi i32 [ %i.bl, %bb.d ], [ %i.bg, %bb.g ], [ %i.bg, %bb.f ]
  %i.bz = add nsw i32 %.sink.i, %i.bi
  store i32 %.026.i.i.i.i, ptr %1, align 8, !tbaa !79
  store i32 %i.bz, ptr %i.af, align 4, !tbaa !78
  %i.ca = tail call i32 @llvm.smin.i32(i32 %.141.i, i32 15)
  %i.cb = tail call i32 @llvm.umin.i32(i32 %i.aw, i32 9)
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.i11
  %i.cc = add nsw i32 %.141.i, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %put_sbits.exit.i
  %.234.i = phi i32 [ %i.ca, %put_sbits.exit.i ], [ %.13339.i, %bb.h ] ; 2 uses
  %.231.i = phi i32 [ %i.cb, %put_sbits.exit.i ], [ %.13040.i, %bb.h ] ; 2 uses
  %.2.i = phi i32 [ 0, %put_sbits.exit.i ], [ %i.cc, %bb.h ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 64 ; 2 uses
  %i.cd = icmp samesign ult i64 %indvars.iv.next.i, %sext.i
  br i1 %i.cd, label %.lr.ph.i11, label %._crit_edge.i, !llvm.loop !204

._crit_edge.i:                                    ; preds = %bb.i, %bb.b
  %.133.lcssa.i = phi i32 [ %.03245.i, %bb.b ], [ %.234.i, %bb.i ]
  %.130.lcssa.i = phi i32 [ %.02946.i, %bb.b ], [ %.231.i, %bb.i ]
  %.1.lcssa.i = phi i32 [ %.047.i, %bb.b ], [ %.2.i, %bb.i ]
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %exitcond.not.i10 = icmp eq i64 %indvars.iv.next50.i, 64
  br i1 %exitcond.not.i10, label %encode_acs.exit, label %bb.b, !llvm.loop !205

encode_acs.exit:                                  ; preds = %._crit_edge.i
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @encode_vlc_codeword(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 256) %1, i32 noundef %2) unnamed_addr #7 {
bb.a:
  %i.a = and i32 %1, 3
  %i.b = add nuw nsw i32 %i.a, 1                  ; 2 uses
  %i.c = lshr i32 %1, 5                           ; 9 uses
  %i.d = shl nuw nsw i32 %i.b, %i.c               ; 2 uses
  %.not = icmp ult i32 %2, %i.d
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i32 %1, 2
  %i.f = and i32 %i.e, 7                          ; 2 uses
  %.neg.neg51 = shl nuw nsw i32 1, %i.f
  %.neg46 = sub nuw i32 %2, %i.d
  %i.g = add i32 %.neg46, %.neg.neg51             ; 6 uses
  %.not.i = icmp ult i32 %i.g, 65536              ; 2 uses
  %i.h = lshr i32 %i.g, 16
  %spec.select.i = select i1 %.not.i, i32 %i.g, i32 %i.h ; 3 uses
  %spec.select12.i = select i1 %.not.i, i32 0, i32 16 ; 2 uses
  %.not11.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.i = lshr i32 %spec.select.i, 8
  %i.j = or disjoint i32 %spec.select12.i, 8
  %.110.i = select i1 %.not11.i, i32 %spec.select.i, i32 %i.i
  %.1.i = select i1 %.not11.i, i32 %spec.select12.i, i32 %i.j
  %i.k = zext nneg i32 %.110.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !60
  %i.n = zext i8 %i.m to i32
  %i.o = add nuw nsw i32 %.1.i, %i.n              ; 3 uses
  %i.p = sub nsw i32 %i.o, %i.f
  %i.q = add nsw i32 %i.p, %i.b                   ; 3 uses
  %i.r = load i32, ptr %0, align 8, !tbaa !79     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !78   ; 4 uses
  %i.u = icmp slt i32 %i.q, %i.t
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = shl i32 %i.r, %i.q
  br label %put_bits.exit

bb.d:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !76
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !77   ; 2 uses
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = icmp ugt i64 %i.ac, 3
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = shl i32 %i.r, %i.t
  %i.af = tail call i32 @llvm.bswap.i32(i32 %i.ae)
  store i32 %i.af, ptr %i.z, align 1, !tbaa !60
  %i.ag = load ptr, ptr %i.y, align 8, !tbaa !77
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store ptr %i.ah, ptr %i.y, align 8, !tbaa !77
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.26) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %reass.sub.i = add nsw i32 %i.t, 32
  br label %put_bits.exit

put_bits.exit:                                    ; preds = %bb.c, %bb.g
  %.026.i.i = phi i32 [ %i.v, %bb.c ], [ 0, %bb.g ] ; 3 uses
  %.pn = phi i32 [ %i.t, %bb.c ], [ %reass.sub.i, %bb.g ]
  %.0.i.i = sub i32 %.pn, %i.q                    ; 6 uses
  store i32 %.026.i.i, ptr %0, align 8, !tbaa !79
  store i32 %.0.i.i, ptr %i.s, align 4, !tbaa !78
  %i.ai = add nuw nsw i32 %i.o, 1                 ; 4 uses
  %i.aj = icmp slt i32 %i.ai, %.0.i.i
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %put_bits.exit
  %i.ak = shl i32 %.026.i.i, %i.ai
  %i.al = or i32 %i.ak, %i.g
  %i.am = sub nsw i32 %.0.i.i, %i.ai
  br label %put_bits.exit35

bb.i:                                             ; preds = %put_bits.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !76
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !77 ; 2 uses
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = icmp ugt i64 %i.at, 3
  br i1 %i.au, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.av = shl i32 %.026.i.i, %.0.i.i
  %i.aw = sub nsw i32 %i.ai, %.0.i.i
  %i.ax = lshr i32 %i.g, %i.aw
  %i.ay = or i32 %i.ax, %i.av
  %i.az = tail call i32 @llvm.bswap.i32(i32 %i.ay)
  store i32 %i.az, ptr %i.aq, align 1, !tbaa !60
  %i.ba = load ptr, ptr %i.ap, align 8, !tbaa !77
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store ptr %i.bb, ptr %i.ap, align 8, !tbaa !77
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.26) #13
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %reass.sub = sub i32 %.0.i.i, %i.o
  %i.bc = add i32 %reass.sub, 31
  br label %put_bits.exit35

put_bits.exit35:                                  ; preds = %bb.h, %bb.l
  %.026.i.i33 = phi i32 [ %i.al, %bb.h ], [ %i.g, %bb.l ]
  %.0.i.i34 = phi i32 [ %i.am, %bb.h ], [ %i.bc, %bb.l ]
  store i32 %.026.i.i33, ptr %0, align 8, !tbaa !79
  store i32 %.0.i.i34, ptr %i.s, align 4, !tbaa !78
  br label %bb.ad

bb.m:                                             ; preds = %bb.a
  %i.bd = lshr i32 %2, %i.c                       ; 5 uses
  %.not30 = icmp eq i32 %i.bd, 0
  %.pre = load i32, ptr %0, align 8, !tbaa !79    ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.pre54 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !78 ; 5 uses
  br i1 %.not30, label %._crit_edge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = icmp slt i32 %i.bd, %.pre54
  br i1 %i.be, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bf = shl i32 %.pre, %i.bd
  %i.bg = sub nsw i32 %.pre54, %i.bd
  br label %put_bits.exit39

bb.p:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !76
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !77 ; 2 uses
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = icmp ugt i64 %i.bn, 3
  br i1 %i.bo, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bp = shl i32 %.pre, %.pre54
  %i.bq = tail call i32 @llvm.bswap.i32(i32 %i.bp)
  store i32 %i.bq, ptr %i.bk, align 1, !tbaa !60
  %i.br = load ptr, ptr %i.bj, align 8, !tbaa !77
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store ptr %i.bs, ptr %i.bj, align 8, !tbaa !77
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.26) #13
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %reass.sub52 = sub i32 %.pre54, %i.bd
  %i.bt = add i32 %reass.sub52, 32
  br label %put_bits.exit39

put_bits.exit39:                                  ; preds = %bb.o, %bb.s
  %.026.i.i37 = phi i32 [ %i.bf, %bb.o ], [ 0, %bb.s ] ; 2 uses
  %.0.i.i38 = phi i32 [ %i.bg, %bb.o ], [ %i.bt, %bb.s ] ; 2 uses
  store i32 %.026.i.i37, ptr %0, align 8, !tbaa !79
  store i32 %.0.i.i38, ptr %.phi.trans.insert, align 4, !tbaa !78
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.m, %put_bits.exit39
  %i.bu = phi i32 [ %.0.i.i38, %put_bits.exit39 ], [ %.pre54, %bb.m ] ; 4 uses
  %i.bv = phi i32 [ %.026.i.i37, %put_bits.exit39 ], [ %.pre, %bb.m ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bx = icmp sgt i32 %i.bu, 1
  br i1 %i.bx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge
  %i.by = shl i32 %i.bv, 1
  %i.bz = or disjoint i32 %i.by, 1
  br label %put_bits.exit43

bb.u:                                             ; preds = %._crit_edge
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !76
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !77 ; 2 uses
  %i.ce = ptrtoint ptr %i.cb to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = icmp ugt i64 %i.cg, 3
  br i1 %i.ch, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ci = shl i32 %i.bv, %i.bu
  %i.cj = icmp eq i32 %i.bu, 1
  %i.ck = zext i1 %i.cj to i32
  %i.cl = or i32 %i.ci, %i.ck
  %i.cm = tail call i32 @llvm.bswap.i32(i32 %i.cl)
  store i32 %i.cm, ptr %i.cd, align 1, !tbaa !60
  %i.cn = load ptr, ptr %i.cc, align 8, !tbaa !77
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  store ptr %i.co, ptr %i.cc, align 8, !tbaa !77
  br label %put_bits.exit43

bb.w:                                             ; preds = %bb.u
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.26) #13
  br label %put_bits.exit43

put_bits.exit43:                                  ; preds = %bb.v, %bb.w, %bb.t
  %.sink = phi i32 [ -1, %bb.t ], [ 31, %bb.w ], [ 31, %bb.v ]
  %.026.i.i41 = phi i32 [ %i.bz, %bb.t ], [ 1, %bb.w ], [ 1, %bb.v ] ; 3 uses
  %i.cp = add nsw i32 %i.bu, %.sink               ; 6 uses
  store i32 %.026.i.i41, ptr %0, align 8, !tbaa !79
  store i32 %i.cp, ptr %i.bw, align 4, !tbaa !78
  %.not31 = icmp eq i32 %i.c, 0
  br i1 %.not31, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %put_bits.exit43
  %notmask.i.i = shl nsw i32 -1, %i.c
  %i.cq = xor i32 %notmask.i.i, -1
  %i.cr = and i32 %2, %i.cq                       ; 3 uses
  %i.cs = icmp slt i32 %i.c, %i.cp
  br i1 %i.cs, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ct = shl i32 %.026.i.i41, %i.c
  %i.cu = or i32 %i.ct, %i.cr
  %i.cv = sub nuw nsw i32 %i.cp, %i.c
  br label %put_sbits.exit

bb.z:                                             ; preds = %bb.x
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !76
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !77 ; 2 uses
  %i.da = ptrtoint ptr %i.cx to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = icmp ugt i64 %i.dc, 3
  br i1 %i.dd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.de = shl i32 %.026.i.i41, %i.cp
  %i.df = sub nsw i32 %i.c, %i.cp
  %i.dg = lshr i32 %i.cr, %i.df
  %i.dh = or i32 %i.dg, %i.de
  %i.di = tail call i32 @llvm.bswap.i32(i32 %i.dh)
  store i32 %i.di, ptr %i.cz, align 1, !tbaa !60
  %i.dj = load ptr, ptr %i.cy, align 8, !tbaa !77
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  store ptr %i.dk, ptr %i.cy, align 8, !tbaa !77
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.26) #13
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %reass.sub53 = sub nsw i32 %i.cp, %i.c
  %i.dl = add nsw i32 %reass.sub53, 32
  br label %put_sbits.exit

put_sbits.exit:                                   ; preds = %bb.y, %bb.ac
  %.026.i.i.i = phi i32 [ %i.cu, %bb.y ], [ %i.cr, %bb.ac ]
  %.0.i.i.i = phi i32 [ %i.cv, %bb.y ], [ %i.dl, %bb.ac ]
  store i32 %.026.i.i.i, ptr %0, align 8, !tbaa !79
  store i32 %.0.i.i.i, ptr %i.bw, align 4, !tbaa !78
  br label %bb.ad

bb.ad:                                            ; preds = %put_bits.exit43, %put_sbits.exit, %put_bits.exit35
  ret void
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @put_alpha_diff(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 65536) %1, i32 noundef range(i32 -2147483648, 2147483647) %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %3, 8                        ; 2 uses
  %i.b = select i1 %i.a, i32 3, i32 6             ; 5 uses
  %i.c = shl nuw nsw i32 1, %i.b                  ; 3 uses
  %i.d = sub nsw i32 %1, %2
  %notmask.i = shl nsw i32 -1, %3
  %i.e = xor i32 %notmask.i, -1
  %i.f = and i32 %i.d, %i.e                       ; 2 uses
  %i.g = shl nuw i32 1, %3                        ; 2 uses
  %i.h = sub nsw i32 %i.g, %i.c
  %.not = icmp slt i32 %i.f, %i.h
  %i.i = select i1 %.not, i32 0, i32 %i.g
  %spec.select = sub nsw i32 %i.f, %i.i           ; 8 uses
  %i.j = sub nsw i32 0, %i.c
  %i.k = icmp slt i32 %spec.select, %i.j
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp sle i32 %spec.select, %i.c
  %i.m = icmp ne i32 %spec.select, 0
  %or.cond = and i1 %i.l, %i.m
  br i1 %or.cond, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = load i32, ptr %0, align 8, !tbaa !79     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !78   ; 4 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = shl i32 %i.n, 1
  %i.s = or disjoint i32 %i.r, 1
  br label %put_bits.exit

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !76
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !77   ; 2 uses
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = icmp ugt i64 %i.z, 3
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = shl i32 %i.n, %i.p
  %i.ac = icmp eq i32 %i.p, 1
  %i.ad = zext i1 %i.ac to i32
  %i.ae = or i32 %i.ab, %i.ad
  %i.af = tail call i32 @llvm.bswap.i32(i32 %i.ae)
  store i32 %i.af, ptr %i.w, align 1, !tbaa !60
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !77
end_hunk_1
