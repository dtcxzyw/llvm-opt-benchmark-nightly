Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/svq1dec?download=true
inline.NumInlined: 51
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@svq1_decode_block_intra:bb.a
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.cu
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.cv, i8 0, i64 %i.cm, i1 false)
  %indvars.iv.next285.3 = or disjoint i64 %indvars.iv284, 4
  %i.cw = mul nsw i64 %indvars.iv.next285.3, %.sext
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.cw
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.cx, i8 0, i64 %i.cm, i1 false)
  %indvars.iv.next285.4 = or disjoint i64 %indvars.iv284, 5
  %i.cy = mul nsw i64 %indvars.iv.next285.4, %.sext
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.cy
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.cz, i8 0, i64 %i.cm, i1 false)
  %indvars.iv.next285.5 = or disjoint i64 %indvars.iv284, 6
  %i.da = mul nsw i64 %indvars.iv.next285.5, %.sext
  %i.db = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.da
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.db, i8 0, i64 %i.cm, i1 false)
  %indvars.iv.next285.6 = or disjoint i64 %indvars.iv284, 7
  %i.dc = mul nsw i64 %indvars.iv.next285.6, %.sext
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.dc
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.dd, i8 0, i64 %i.cm, i1 false)
  %indvars.iv.next285.7 = add nuw nsw i64 %indvars.iv284, 8 ; 2 uses
  %niter333.next.7 = add i64 %niter333, 8         ; 2 uses
  %niter333.ncmp.7 = icmp eq i64 %niter333.next.7, %unroll_iter332
  br i1 %niter333.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !87

bb.g:                                             ; preds = %get_vlc2.exit135
  %i.de = icmp sgt i32 %.167.i132, 1
  %i.df = icmp ugt i32 %.3, 3
  %or.cond = and i1 %i.df, %i.de
  br i1 %or.cond, label %bb.t, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dg = icmp sgt i32 %.167.i132, 0
  br i1 %i.dg, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 209) #9
  tail call void @abort() #10
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.dh = lshr i32 %i.cj, 3
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 1, !tbaa !41
  %i.dl = tail call i32 @llvm.bswap.i32(i32 %i.dk)
  %i.dm = and i32 %i.cj, 7
  %i.dn = shl i32 %i.dl, %i.dm
  %i.do = lshr i32 %i.dn, 24
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr @svq1_intra_mean, i64 %i.dp ; 2 uses
  %i.dr = load i16, ptr %i.dq, align 4, !tbaa !41
  %i.ds = sext i16 %i.dr to i32                   ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !41 ; 2 uses
  %i.dv = sext i16 %i.du to i32                   ; 3 uses
  %i.dw = icmp slt i16 %i.du, 0
  br i1 %i.dw, label %bb.k, label %get_vlc2.exit

bb.k:                                             ; preds = %bb.j
  %i.dx = add i32 %i.cj, 8
  %i.dy = tail call i32 @llvm.umin.i32(i32 %i.ax, i32 %i.dx) ; 4 uses
  %i.dz = lshr i32 %i.dy, 3
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 1, !tbaa !41
  %i.ed = tail call i32 @llvm.bswap.i32(i32 %i.ec)
  %i.ee = and i32 %i.dy, 7
  %i.ef = shl i32 %i.ed, %i.ee
  %i.eg = add nsw i32 %i.dv, 32
  %i.eh = lshr i32 %i.ef, %i.eg
  %i.ei = add i32 %i.eh, %i.ds
  %i.ej = zext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr @svq1_intra_mean, i64 %i.ej ; 2 uses
  %i.el = load i16, ptr %i.ek, align 4, !tbaa !41
  %i.em = sext i16 %i.el to i32                   ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 2
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !41 ; 2 uses
  %i.ep = sext i16 %i.eo to i32                   ; 2 uses
  %i.eq = icmp slt i16 %i.eo, 0
  br i1 %i.eq, label %bb.l, label %get_vlc2.exit

bb.l:                                             ; preds = %bb.k
  %i.er = sub i32 %i.dy, %i.dv
  %i.es = tail call i32 @llvm.umin.i32(i32 %i.ax, i32 %i.er) ; 3 uses
  %i.et = lshr i32 %i.es, 3
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 1, !tbaa !41
  %i.ex = tail call i32 @llvm.bswap.i32(i32 %i.ew)
  %i.ey = and i32 %i.es, 7
  %i.ez = shl i32 %i.ex, %i.ey
  %i.fa = add nsw i32 %i.ep, 32
  %i.fb = lshr i32 %i.ez, %i.fa
  %i.fc = add i32 %i.fb, %i.em
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr @svq1_intra_mean, i64 %i.fd ; 2 uses
  %i.ff = load i16, ptr %i.fe, align 4, !tbaa !41
  %i.fg = sext i16 %i.ff to i32
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !41
  %i.fj = sext i16 %i.fi to i32
  br label %get_vlc2.exit

get_vlc2.exit:                                    ; preds = %bb.j, %bb.k, %bb.l
  %.167.i = phi i32 [ %i.ds, %bb.j ], [ %i.fg, %bb.l ], [ %i.em, %bb.k ] ; 2 uses
  %.165.i = phi i32 [ %i.cj, %bb.j ], [ %i.es, %bb.l ], [ %i.dy, %bb.k ]
  %.1.i = phi i32 [ %i.dv, %bb.j ], [ %i.fj, %bb.l ], [ %i.ep, %bb.k ]
  %i.fk = add i32 %.1.i, %.165.i
  %i.fl = tail call i32 @llvm.umin.i32(i32 %i.ax, i32 %i.fk) ; 4 uses
  store i32 %i.fl, ptr %i.c, align 8, !tbaa !40
  %i.fm = icmp eq i32 %i.ck, 0
  br i1 %i.fm, label %.preheader138, label %.lr.ph162

.preheader138:                                    ; preds = %get_vlc2.exit
  %i.fn = trunc i32 %.167.i to i8                 ; 9 uses
  %i.fo = zext i32 %i.ap to i64                   ; 9 uses
  %wide.trip.count282 = zext i32 %i.as to i64     ; 2 uses
  %xtraiter322 = and i64 %wide.trip.count282, 7   ; 3 uses
  %i.fp = icmp ult i32 %i.aq, 6
  br i1 %i.fp, label %.epil.preheader321, label %.preheader138.new

.preheader138.new:                                ; preds = %.preheader138
  %unroll_iter325 = and i64 %wide.trip.count282, 4294967288
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader138.new
  %indvars.iv279 = phi i64 [ 0, %.preheader138.new ], [ %indvars.iv.next280.7, %bb.m ] ; 9 uses
  %niter326 = phi i64 [ 0, %.preheader138.new ], [ %niter326.next.7, %bb.m ]
  %i.fq = mul nsw i64 %indvars.iv279, %.sext
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.fq
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fr, i8 %i.fn, i64 %i.fo, i1 false)
  %indvars.iv.next280 = or disjoint i64 %indvars.iv279, 1
  %i.fs = mul nsw i64 %indvars.iv.next280, %.sext
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.fs
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ft, i8 %i.fn, i64 %i.fo, i1 false)
  %indvars.iv.next280.1 = or disjoint i64 %indvars.iv279, 2
  %i.fu = mul nsw i64 %indvars.iv.next280.1, %.sext
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.fu
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fv, i8 %i.fn, i64 %i.fo, i1 false)
  %indvars.iv.next280.2 = or disjoint i64 %indvars.iv279, 3
  %i.fw = mul nsw i64 %indvars.iv.next280.2, %.sext
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.fw
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fx, i8 %i.fn, i64 %i.fo, i1 false)
  %indvars.iv.next280.3 = or disjoint i64 %indvars.iv279, 4
  %i.fy = mul nsw i64 %indvars.iv.next280.3, %.sext
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.fy
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fz, i8 %i.fn, i64 %i.fo, i1 false)
  %indvars.iv.next280.4 = or disjoint i64 %indvars.iv279, 5
  %i.ga = mul nsw i64 %indvars.iv.next280.4, %.sext
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ga
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.gb, i8 %i.fn, i64 %i.fo, i1 false)
  %indvars.iv.next280.5 = or disjoint i64 %indvars.iv279, 6
  %i.gc = mul nsw i64 %indvars.iv.next280.5, %.sext
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.gc
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.gd, i8 %i.fn, i64 %i.fo, i1 false)
  %indvars.iv.next280.6 = or disjoint i64 %indvars.iv279, 7
  %i.ge = mul nsw i64 %indvars.iv.next280.6, %.sext
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.gf, i8 %i.fn, i64 %i.fo, i1 false)
  %indvars.iv.next280.7 = add nuw nsw i64 %indvars.iv279, 8 ; 2 uses
  %niter326.next.7 = add i64 %niter326, 8         ; 2 uses
  %niter326.ncmp.7 = icmp eq i64 %niter326.next.7, %unroll_iter325
  br i1 %niter326.ncmp.7, label %.loopexit.loopexit313.unr-lcssa, label %bb.m, !llvm.loop !88

.lr.ph162:                                        ; preds = %get_vlc2.exit
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr @ff_svq1_intra_codebooks, i64 %i.at
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !43
  %i.gi = shl nuw nsw i32 %i.ck, 2                ; 2 uses
  %i.gj = lshr i32 %i.fl, 3
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 1, !tbaa !41
  %i.gn = tail call i32 @llvm.bswap.i32(i32 %i.gm)
  %i.go = and i32 %i.fl, 7
  %i.gp = shl i32 %i.gn, %i.go
  %i.gq = sub nsw i32 32, %i.gi
  %i.gr = lshr i32 %i.gp, %i.gq                   ; 2 uses
  %i.gs = add i32 %i.fl, %i.gi
  %i.gt = tail call i32 @llvm.umin.i32(i32 %i.ax, i32 %i.gs)
  store i32 %i.gt, ptr %i.c, align 8, !tbaa !40
  %i.gu = add i32 %.3, 1                          ; 2 uses
  %wide.trip.count = zext i32 %i.ck to i64        ; 5 uses
  %min.iters.check = icmp ult i32 %.167.i132, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph162
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.gr, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert307 = insertelement <4 x i32> poison, i32 %i.gu, i64 0
  %broadcast.splat308 = shufflevector <4 x i32> %broadcast.splatinsert307, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert309 = insertelement <4 x i32> poison, i32 %i.ck, i64 0
  %broadcast.splat310 = shufflevector <4 x i32> %broadcast.splatinsert309, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind311 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next312, %vector.body ] ; 2 uses
  %i.gv = xor <4 x i32> %vec.ind, splat (i32 -1)
  %i.gw = add nsw <4 x i32> %broadcast.splat310, %i.gv
  %i.gx = shl nuw nsw <4 x i32> %i.gw, splat (i32 2)
  %i.gy = lshr <4 x i32> %broadcast.splat, %i.gx
  %i.gz = and <4 x i32> %i.gy, splat (i32 15)
  %i.ha = shl nuw nsw <4 x i32> %vec.ind311, splat (i32 4)
  %i.hb = or disjoint <4 x i32> %i.gz, %i.ha
  %i.hc = shl <4 x i32> %i.hb, %broadcast.splat308
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index
  store <4 x i32> %i.hc, ptr %i.hd, align 16, !tbaa !35
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %vec.ind.next312 = add <4 x i32> %vec.ind311, splat (i32 4)
  %i.he = icmp eq i64 %index.next, %n.vec
  br i1 %i.he, label %middle.block, label %vector.body, !llvm.loop !89

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge163, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph162, %middle.block
  %indvars.iv236.ph = phi i64 [ 0, %.lr.ph162 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv236 = phi i64 [ %indvars.iv.next237, %scalar.ph ], [ %indvars.iv236.ph, %scalar.ph.preheader ] ; 4 uses
  %i.hf = trunc nuw nsw i64 %indvars.iv236 to i32
  %i.hg = xor i32 %i.hf, -1
  %i.hh = add nsw i32 %i.ck, %i.hg
  %i.hi = shl nuw nsw i32 %i.hh, 2
  %i.hj = lshr i32 %i.gr, %i.hi
  %i.hk = and i32 %i.hj, 15
  %indvars.iv236.tr = trunc nuw nsw i64 %indvars.iv236 to i32
  %i.hl = shl nuw nsw i32 %indvars.iv236.tr, 4
  %i.hm = or disjoint i32 %i.hk, %i.hl
  %i.hn = shl i32 %i.hm, %i.gu
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv236
  store i32 %i.hn, ptr %i.ho, align 4, !tbaa !35
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next237, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge163, label %scalar.ph, !llvm.loop !90

._crit_edge163:                                   ; preds = %scalar.ph, %middle.block
  %i.hp = shl nuw nsw i32 %i.ck, 7
  %i.hq = sub nsw i32 %.167.i, %i.hp
  %i.hr = mul i32 %i.hq, 65537                    ; 4 uses
  %i.hs = lshr i32 %i.ap, 2                       ; 2 uses
  %.not217 = icmp eq i32 %i.hs, 0
  br i1 %.not217, label %.loopexit, label %.preheader136.us.preheader

.preheader136.us.preheader:                       ; preds = %._crit_edge163
  %wide.trip.count248 = zext nneg i32 %i.hs to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ht = icmp eq i32 %i.ck, 1
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod320 = trunc i32 %i.ck to i1
  br label %.preheader136.us

.preheader136.us:                                 ; preds = %.preheader136.us.preheader, %._crit_edge173.split.us.us
  %.2106194.us = phi i32 [ %i.kf, %._crit_edge173.split.us.us ], [ 0, %.preheader136.us.preheader ]
  %.0118193.us = phi ptr [ %i.jr, %._crit_edge173.split.us.us ], [ %i.gh, %.preheader136.us.preheader ]
  %.0120189.us = phi ptr [ %i.ke, %._crit_edge173.split.us.us ], [ %i.am, %.preheader136.us.preheader ] ; 2 uses
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %bb.q, %.preheader136.us
  %indvars.iv245 = phi i64 [ %indvars.iv.next246, %bb.q ], [ 0, %.preheader136.us ] ; 2 uses
  %.1119171.us.us = phi ptr [ %i.jr, %bb.q ], [ %.0118193.us, %.preheader136.us ] ; 4 uses
  br i1 %i.ht, label %.epil.preheader, label %.preheader.us.us.new

.preheader.us.us.new:                             ; preds = %.preheader.us.us, %.preheader.us.us.new
  %indvars.iv239 = phi i64 [ %indvars.iv.next240.1, %.preheader.us.us.new ], [ 0, %.preheader.us.us ] ; 3 uses
  %.0166.us.us = phi i32 [ %i.iq, %.preheader.us.us.new ], [ %i.hr, %.preheader.us.us ]
  %.0100165.us.us = phi i32 [ %i.io, %.preheader.us.us.new ], [ %i.hr, %.preheader.us.us ]
  %niter = phi i64 [ %niter.next.1, %.preheader.us.us.new ], [ 0, %.preheader.us.us ]
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv239
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !35
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds [4 x i8], ptr %.1119171.us.us, i64 %i.hw
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !35
  %i.hz = xor i32 %i.hy, -2139062144              ; 2 uses
  %i.ia = lshr i32 %i.hz, 8
  %i.ib = and i32 %i.ia, 16711935
  %i.ic = add i32 %i.ib, %.0100165.us.us
  %i.id = and i32 %i.hz, 16711935
  %i.ie = add i32 %i.id, %.0166.us.us
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv239
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !35
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds [4 x i8], ptr %.1119171.us.us, i64 %i.ii
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !35
  %i.il = xor i32 %i.ik, -2139062144              ; 2 uses
  %i.im = lshr i32 %i.il, 8
  %i.in = and i32 %i.im, 16711935
  %i.io = add i32 %i.in, %i.ic                    ; 3 uses
  %i.ip = and i32 %i.il, 16711935
  %i.iq = add i32 %i.ip, %i.ie                    ; 3 uses
  %indvars.iv.next240.1 = add nuw nsw i64 %indvars.iv239, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge168.us.us.unr-lcssa, label %.preheader.us.us.new, !llvm.loop !91

bb.n:                                             ; preds = %._crit_edge168.us.us
  %i.ir = lshr i32 %.lcssa316, 15
  %i.is = and i32 %i.ir, 65537
  %i.it = add nuw nsw i32 %i.is, 16711935
  %i.iu = add i32 %.lcssa316, 32512
  %i.iv = sub i32 -2130738945, %.lcssa316
  %i.iw = lshr i32 %i.iv, 15
  %i.ix = and i32 %i.iw, 65537
  %i.iy = add nuw nsw i32 %i.ix, 16711935
  %i.iz = or i32 %i.iy, %i.iu
  %i.ja = and i32 %i.it, 16711935
  %i.jb = and i32 %i.ja, %i.iz
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge168.us.us, %bb.n
  %.1101.us.us = phi i32 [ %i.jb, %bb.n ], [ %.lcssa316, %._crit_edge168.us.us ]
  %i.jc = and i32 %.lcssa315, -16711936
  %.not131.us.us = icmp eq i32 %i.jc, 0
  br i1 %.not131.us.us, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.jd = lshr i32 %.lcssa315, 15
  %i.je = and i32 %i.jd, 65537
  %i.jf = add nuw nsw i32 %i.je, 16711935
  %i.jg = add i32 %.lcssa315, 32512
  %i.jh = sub i32 -2130738945, %.lcssa315
  %i.ji = lshr i32 %i.jh, 15
  %i.jj = and i32 %i.ji, 65537
  %i.jk = add nuw nsw i32 %i.jj, 16711935
  %i.jl = or i32 %i.jk, %i.jg
  %i.jm = and i32 %i.jf, 16711935
  %i.jn = and i32 %i.jm, %i.jl
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1.us.us = phi i32 [ %i.jn, %bb.p ], [ %.lcssa315, %bb.o ]
  %i.jo = shl nuw i32 %.1101.us.us, 8
  %i.jp = or i32 %.1.us.us, %i.jo
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %.0120189.us, i64 %indvars.iv245
  store i32 %i.jp, ptr %i.jq, align 4, !tbaa !35
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.1119171.us.us, i64 4 ; 2 uses
  %exitcond249.not = icmp eq i64 %indvars.iv.next246, %wide.trip.count248
  br i1 %exitcond249.not, label %._crit_edge173.split.us.us, label %.preheader.us.us, !llvm.loop !92

._crit_edge168.us.us.unr-lcssa:                   ; preds = %.preheader.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge168.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge168.us.us.unr-lcssa, %.preheader.us.us
  %indvars.iv239.epil.init = phi i64 [ 0, %.preheader.us.us ], [ %indvars.iv.next240.1, %._crit_edge168.us.us.unr-lcssa ]
  %.0166.us.us.epil.init = phi i32 [ %i.hr, %.preheader.us.us ], [ %i.iq, %._crit_edge168.us.us.unr-lcssa ]
  %.0100165.us.us.epil.init = phi i32 [ %i.hr, %.preheader.us.us ], [ %i.io, %._crit_edge168.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod320)
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv239.epil.init
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !35
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [4 x i8], ptr %.1119171.us.us, i64 %i.ju
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !35
  %i.jx = xor i32 %i.jw, -2139062144              ; 2 uses
  %i.jy = lshr i32 %i.jx, 8
  %i.jz = and i32 %i.jy, 16711935
  %i.ka = add i32 %i.jz, %.0100165.us.us.epil.init
  %i.kb = and i32 %i.jx, 16711935
  %i.kc = add i32 %i.kb, %.0166.us.us.epil.init
  br label %._crit_edge168.us.us

._crit_edge168.us.us:                             ; preds = %._crit_edge168.us.us.unr-lcssa, %.epil.preheader
  %.lcssa316 = phi i32 [ %i.io, %._crit_edge168.us.us.unr-lcssa ], [ %i.ka, %.epil.preheader ] ; 5 uses
  %.lcssa315 = phi i32 [ %i.iq, %._crit_edge168.us.us.unr-lcssa ], [ %i.kc, %.epil.preheader ] ; 5 uses
  %i.kd = and i32 %.lcssa316, -16711936
  %.not130.us.us = icmp eq i32 %i.kd, 0
  br i1 %.not130.us.us, label %bb.o, label %bb.n

._crit_edge173.split.us.us:                       ; preds = %bb.q
  %i.ke = getelementptr inbounds [4 x i8], ptr %.0120189.us, i64 %.sext
  %i.kf = add nuw i32 %.2106194.us, 1             ; 2 uses
  %exitcond250.not = icmp eq i32 %i.kf, %i.as
  br i1 %exitcond250.not, label %.loopexit, label %.preheader136.us, !llvm.loop !93

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod330.not = icmp eq i64 %xtraiter328, 0
  br i1 %lcmp.mod330.not, label %.loopexit, label %.epil.preheader327

.epil.preheader327:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader137
  %indvars.iv284.epil.init = phi i64 [ 0, %.preheader137 ], [ %indvars.iv.next285.7, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod331 = icmp ne i64 %xtraiter328, 0
  tail call void @llvm.assume(i1 %lcmp.mod331)
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.epil.preheader327
  %indvars.iv284.epil = phi i64 [ %indvars.iv284.epil.init, %.epil.preheader327 ], [ %indvars.iv.next285.epil, %bb.r ] ; 2 uses
  %epil.iter329 = phi i64 [ 0, %.epil.preheader327 ], [ %epil.iter329.next, %bb.r ]
  %i.kg = mul nsw i64 %indvars.iv284.epil, %.sext
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.kg
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.kh, i8 0, i64 %i.cm, i1 false)
  %indvars.iv.next285.epil = add nuw nsw i64 %indvars.iv284.epil, 1
  %epil.iter329.next = add i64 %epil.iter329, 1   ; 2 uses
  %epil.iter329.cmp.not = icmp eq i64 %epil.iter329.next, %xtraiter328
  br i1 %epil.iter329.cmp.not, label %.loopexit, label %bb.r, !llvm.loop !94

.loopexit.loopexit313.unr-lcssa:                  ; preds = %bb.m
  %lcmp.mod323.not = icmp eq i64 %xtraiter322, 0
  br i1 %lcmp.mod323.not, label %.loopexit, label %.epil.preheader321

.epil.preheader321:                               ; preds = %.loopexit.loopexit313.unr-lcssa, %.preheader138
  %indvars.iv279.epil.init = phi i64 [ 0, %.preheader138 ], [ %indvars.iv.next280.7, %.loopexit.loopexit313.unr-lcssa ]
  %lcmp.mod324 = icmp ne i64 %xtraiter322, 0
  tail call void @llvm.assume(i1 %lcmp.mod324)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader321
  %indvars.iv279.epil = phi i64 [ %indvars.iv279.epil.init, %.epil.preheader321 ], [ %indvars.iv.next280.epil, %bb.s ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader321 ], [ %epil.iter.next, %bb.s ]
  %i.ki = mul nsw i64 %indvars.iv279.epil, %.sext
  %i.kj = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ki
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.kj, i8 %i.fn, i64 %i.fo, i1 false)
  %indvars.iv.next280.epil = add nuw nsw i64 %indvars.iv279.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter322
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.s, !llvm.loop !95

.loopexit:                                        ; preds = %._crit_edge173.split.us.us, %.loopexit.loopexit313.unr-lcssa, %bb.s, %.loopexit.loopexit.unr-lcssa, %bb.r, %._crit_edge163
  %i.kk = add nsw i32 %.1117.lcssa, 1             ; 2 uses
  %i.kl = icmp slt i32 %i.kk, %.1109.lcssa
  br i1 %i.kl, label %.preheader141, label %bb.t, !llvm.loop !96

bb.t:                                             ; preds = %.loopexit, %bb.g
end_hunk_0
begin_hunk_1_@svq1_decode_block_non_intra:bb.a
  %i.aq = sdiv i32 %i.ap, 2                       ; 2 uses
  %i.ar = shl nuw i32 1, %i.aq                    ; 2 uses
  %i.as = add nsw i32 %.3, 3
  %i.at = sdiv i32 %i.as, 2
  %i.au = shl nuw i32 1, %i.at                    ; 2 uses
  %i.av = sext i32 %.3 to i64                     ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr @svq1_inter_multistage, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !49 ; 2 uses
  %i.ay = load i32, ptr %i.c, align 8, !tbaa !40  ; 4 uses
  %i.az = load i32, ptr %i.d, align 8, !tbaa !39  ; 6 uses
  %i.ba = lshr i32 %i.ay, 3
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 1, !tbaa !41
  %i.be = tail call i32 @llvm.bswap.i32(i32 %i.bd)
  %i.bf = and i32 %i.ay, 7
  %i.bg = shl i32 %i.be, %i.bf
  %i.bh = lshr i32 %i.bg, 29
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bi ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !41
  %i.bl = sext i16 %i.bk to i32                   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !41 ; 2 uses
  %i.bo = sext i16 %i.bn to i32                   ; 2 uses
  %i.bp = icmp slt i16 %i.bn, 0
  br i1 %i.bp, label %bb.e, label %get_vlc2.exit129

bb.e:                                             ; preds = %._crit_edge
  %i.bq = add i32 %i.ay, 3
  %i.br = tail call i32 @llvm.umin.i32(i32 %i.az, i32 %i.bq) ; 3 uses
  %i.bs = lshr i32 %i.br, 3
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 1, !tbaa !41
  %i.bw = tail call i32 @llvm.bswap.i32(i32 %i.bv)
  %i.bx = and i32 %i.br, 7
  %i.by = shl i32 %i.bw, %i.bx
  %i.bz = add nsw i32 %i.bo, 32
  %i.ca = lshr i32 %i.by, %i.bz
  %i.cb = add i32 %i.ca, %i.bl
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.cc ; 2 uses
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !41
  %i.cf = sext i16 %i.ce to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !41
  %i.ci = sext i16 %i.ch to i32
  br label %get_vlc2.exit129

get_vlc2.exit129:                                 ; preds = %._crit_edge, %bb.e
  %.167.i126 = phi i32 [ %i.bl, %._crit_edge ], [ %i.cf, %bb.e ] ; 6 uses
  %.165.i127 = phi i32 [ %i.ay, %._crit_edge ], [ %i.br, %bb.e ]
  %.1.i128 = phi i32 [ %i.bo, %._crit_edge ], [ %i.ci, %bb.e ]
  %i.cj = add i32 %.1.i128, %.165.i127
  %i.ck = tail call i32 @llvm.umin.i32(i32 %i.az, i32 %i.cj) ; 5 uses
  store i32 %i.ck, ptr %i.c, align 8, !tbaa !40
  %i.cl = add nsw i32 %.167.i126, -1              ; 6 uses
  %i.cm = icmp eq i32 %.167.i126, 0
  br i1 %i.cm, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %get_vlc2.exit129
  %i.cn = icmp sgt i32 %.167.i126, 1              ; 3 uses
  %i.co = icmp sgt i32 %.3, 3
  %or.cond = and i1 %i.co, %i.cn
  br i1 %or.cond, label %bb.w, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cp = icmp sgt i32 %.167.i126, 0
  br i1 %i.cp, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 273) #9
  tail call void @abort() #10
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.cq = lshr i32 %i.ck, 3
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 1, !tbaa !41
  %i.cu = tail call i32 @llvm.bswap.i32(i32 %i.ct)
  %i.cv = and i32 %i.ck, 7
  %i.cw = shl i32 %i.cu, %i.cv
  %i.cx = lshr i32 %i.cw, 23
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr @svq1_inter_mean, i64 %i.cy ; 2 uses
  %i.da = load i16, ptr %i.cz, align 4, !tbaa !41
  %i.db = sext i16 %i.da to i32                   ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !41 ; 2 uses
  %i.de = sext i16 %i.dd to i32                   ; 3 uses
  %i.df = icmp slt i16 %i.dd, 0
  br i1 %i.df, label %bb.j, label %get_vlc2.exit

bb.j:                                             ; preds = %bb.i
  %i.dg = add i32 %i.ck, 9
  %i.dh = tail call i32 @llvm.umin.i32(i32 %i.az, i32 %i.dg) ; 4 uses
  %i.di = lshr i32 %i.dh, 3
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 1, !tbaa !41
  %i.dm = tail call i32 @llvm.bswap.i32(i32 %i.dl)
  %i.dn = and i32 %i.dh, 7
  %i.do = shl i32 %i.dm, %i.dn
  %i.dp = add nsw i32 %i.de, 32
  %i.dq = lshr i32 %i.do, %i.dp
  %i.dr = add i32 %i.dq, %i.db
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr @svq1_inter_mean, i64 %i.ds ; 2 uses
  %i.du = load i16, ptr %i.dt, align 4, !tbaa !41
  %i.dv = sext i16 %i.du to i32                   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 2
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !41 ; 2 uses
  %i.dy = sext i16 %i.dx to i32                   ; 2 uses
  %i.dz = icmp slt i16 %i.dx, 0
  br i1 %i.dz, label %bb.k, label %get_vlc2.exit

bb.k:                                             ; preds = %bb.j
  %i.ea = sub i32 %i.dh, %i.de
  %i.eb = tail call i32 @llvm.umin.i32(i32 %i.az, i32 %i.ea) ; 3 uses
  %i.ec = lshr i32 %i.eb, 3
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 1, !tbaa !41
  %i.eg = tail call i32 @llvm.bswap.i32(i32 %i.ef)
  %i.eh = and i32 %i.eb, 7
  %i.ei = shl i32 %i.eg, %i.eh
  %i.ej = add nsw i32 %i.dy, 32
  %i.ek = lshr i32 %i.ei, %i.ej
  %i.el = add i32 %i.ek, %i.dv
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr @svq1_inter_mean, i64 %i.em ; 2 uses
  %i.eo = load i16, ptr %i.en, align 4, !tbaa !41
  %i.ep = sext i16 %i.eo to i32
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !41
  %i.es = sext i16 %i.er to i32
  br label %get_vlc2.exit

get_vlc2.exit:                                    ; preds = %bb.i, %bb.j, %bb.k
  %.167.i = phi i32 [ %i.db, %bb.i ], [ %i.ep, %bb.k ], [ %i.dv, %bb.j ]
  %.165.i = phi i32 [ %i.ck, %bb.i ], [ %i.eb, %bb.k ], [ %i.dh, %bb.j ]
  %.1.i = phi i32 [ %i.de, %bb.i ], [ %i.es, %bb.k ], [ %i.dy, %bb.j ]
  %i.et = add i32 %.1.i, %.165.i
  %i.eu = tail call i32 @llvm.umin.i32(i32 %i.az, i32 %i.et) ; 4 uses
  store i32 %i.eu, ptr %i.c, align 8, !tbaa !40
  %i.ev = add nsw i32 %.167.i, -256               ; 4 uses
  br i1 %.not122, label %bb.n, label %bb.l

bb.l:                                             ; preds = %get_vlc2.exit
  %i.ew = icmp eq i32 %i.ev, -128
  br i1 %i.ew, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ex = icmp eq i32 %i.ev, 128
  %spec.store.select = select i1 %i.ex, i32 -128, i32 %i.ev
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %get_vlc2.exit
  %.098 = phi i32 [ %i.ev, %get_vlc2.exit ], [ %spec.store.select, %bb.m ], [ 128, %bb.l ]
  %i.ey = getelementptr inbounds [8 x i8], ptr @ff_svq1_inter_codebooks, i64 %i.av
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !43
  br i1 %i.cn, label %.lr.ph150, label %._crit_edge151

.lr.ph150:                                        ; preds = %bb.n
  %i.fa = shl nuw nsw i32 %i.cl, 2                ; 2 uses
  %i.fb = lshr i32 %i.eu, 3
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 1, !tbaa !41
  %i.ff = tail call i32 @llvm.bswap.i32(i32 %i.fe)
  %i.fg = and i32 %i.eu, 7
  %i.fh = shl i32 %i.ff, %i.fg
  %i.fi = sub nsw i32 32, %i.fa
  %i.fj = lshr i32 %i.fh, %i.fi                   ; 2 uses
  %i.fk = add i32 %i.eu, %i.fa
  %i.fl = tail call i32 @llvm.umin.i32(i32 %i.az, i32 %i.fk)
  store i32 %i.fl, ptr %i.c, align 8, !tbaa !40
  %i.fm = add nsw i32 %.3, 1                      ; 2 uses
  %wide.trip.count = zext nneg i32 %i.cl to i64   ; 3 uses
  %min.iters.check240 = icmp ult i32 %.167.i126, 5
  br i1 %min.iters.check240, label %scalar.ph239.preheader, label %vector.ph241

vector.ph241:                                     ; preds = %.lr.ph150
  %n.vec242 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert243 = insertelement <4 x i32> poison, i32 %i.fj, i64 0
  %broadcast.splat244 = shufflevector <4 x i32> %broadcast.splatinsert243, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert245 = insertelement <4 x i32> poison, i32 %i.fm, i64 0
  %broadcast.splat246 = shufflevector <4 x i32> %broadcast.splatinsert245, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert247 = insertelement <4 x i32> poison, i32 %i.cl, i64 0
  %broadcast.splat248 = shufflevector <4 x i32> %broadcast.splatinsert247, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body249

vector.body249:                                   ; preds = %vector.body249, %vector.ph241
  %index250 = phi i64 [ 0, %vector.ph241 ], [ %index.next252, %vector.body249 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph241 ], [ %vec.ind.next, %vector.body249 ] ; 2 uses
  %vec.ind251 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph241 ], [ %vec.ind.next253, %vector.body249 ] ; 2 uses
  %i.fn = xor <4 x i32> %vec.ind, splat (i32 -1)
  %i.fo = add nsw <4 x i32> %broadcast.splat248, %i.fn
  %i.fp = shl nuw nsw <4 x i32> %i.fo, splat (i32 2)
  %i.fq = lshr <4 x i32> %broadcast.splat244, %i.fp
  %i.fr = and <4 x i32> %i.fq, splat (i32 15)
  %i.fs = shl nuw nsw <4 x i32> %vec.ind251, splat (i32 4)
  %i.ft = or disjoint <4 x i32> %i.fr, %i.fs
  %i.fu = shl <4 x i32> %i.ft, %broadcast.splat246
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index250
  store <4 x i32> %i.fu, ptr %i.fv, align 16, !tbaa !35
  %index.next252 = add nuw i64 %index250, 4       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %vec.ind.next253 = add <4 x i32> %vec.ind251, splat (i32 4)
  %i.fw = icmp eq i64 %index.next252, %n.vec242
  br i1 %i.fw, label %middle.block254, label %vector.body249, !llvm.loop !99

middle.block254:                                  ; preds = %vector.body249
  %cmp.n255 = icmp eq i64 %n.vec242, %wide.trip.count
  br i1 %cmp.n255, label %._crit_edge151, label %scalar.ph239.preheader

scalar.ph239.preheader:                           ; preds = %.lr.ph150, %middle.block254
  %indvars.iv186.ph = phi i64 [ 0, %.lr.ph150 ], [ %n.vec242, %middle.block254 ]
  br label %scalar.ph239

scalar.ph239:                                     ; preds = %scalar.ph239.preheader, %scalar.ph239
  %indvars.iv186 = phi i64 [ %indvars.iv.next187, %scalar.ph239 ], [ %indvars.iv186.ph, %scalar.ph239.preheader ] ; 4 uses
  %i.fx = trunc nuw nsw i64 %indvars.iv186 to i32
  %i.fy = xor i32 %i.fx, -1
  %i.fz = add nsw i32 %i.cl, %i.fy
  %i.ga = shl nuw nsw i32 %i.fz, 2
  %i.gb = lshr i32 %i.fj, %i.ga
  %i.gc = and i32 %i.gb, 15
  %indvars.iv186.tr = trunc nuw nsw i64 %indvars.iv186 to i32
  %i.gd = shl nuw nsw i32 %indvars.iv186.tr, 4
  %i.ge = or disjoint i32 %i.gc, %i.gd
  %i.gf = shl i32 %i.ge, %i.fm
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv186
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !35
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge151, label %scalar.ph239, !llvm.loop !100

._crit_edge151:                                   ; preds = %scalar.ph239, %middle.block254, %bb.n
  %i.gh = shl nuw nsw i32 %i.cl, 7
  %i.gi = sub nsw i32 %.098, %i.gh
  %i.gj = mul i32 %i.gi, 65537                    ; 5 uses
  %.off = add i32 %.3, -59
  %.not177 = icmp ult i32 %.off, 2
  br i1 %.not177, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %._crit_edge151
  %i.gk = sdiv i32 %i.ar, 4                       ; 2 uses
  %i.gl = icmp sgt i32 %i.ar, 3
  br i1 %i.gl, label %.preheader.lr.ph.split, label %.loopexit

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  br i1 %i.cn, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split
  %i.gm = tail call i32 @llvm.umax.i32(i32 %i.cl, i32 1) ; 2 uses
  %smax203 = tail call i32 @llvm.smax.i32(i32 %i.au, i32 1)
  %wide.trip.count201 = zext nneg i32 %i.gk to i64
  %wide.trip.count195 = zext nneg i32 %i.gm to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count195, 1
  %i.gn = icmp eq i32 %.167.i126, 2
  %unroll_iter = and i64 %wide.trip.count195, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod264 = trunc i32 %i.gm to i1
  br label %.preheader.us

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %smax211 = tail call i32 @llvm.smax.i32(i32 %i.au, i32 1)
  %wide.trip.count209 = zext nneg i32 %i.gk to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.aq, 4
  %n.vec = and i64 %wide.trip.count209, 536870908 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.gj, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count209
  br label %.preheader

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge163.split.us.us
  %.096168.us = phi i32 [ %i.jf, %._crit_edge163.split.us.us ], [ 0, %.preheader.us.preheader ]
  %.0109167.us = phi ptr [ %i.ir, %._crit_edge163.split.us.us ], [ %i.ez, %.preheader.us.preheader ]
  %.0112165.us = phi ptr [ %i.je, %._crit_edge163.split.us.us ], [ %i.ao, %.preheader.us.preheader ] ; 2 uses
  br label %.lr.ph156.us.us

.lr.ph156.us.us:                                  ; preds = %bb.r, %.preheader.us
  %indvars.iv197 = phi i64 [ %indvars.iv.next198, %bb.r ], [ 0, %.preheader.us ] ; 2 uses
  %.1110160.us.us = phi ptr [ %i.ir, %bb.r ], [ %.0109167.us, %.preheader.us ] ; 4 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.0112165.us, i64 %indvars.iv197 ; 2 uses
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !35 ; 2 uses
  %i.gq = lshr i32 %i.gp, 8
  %i.gr = and i32 %i.gq, 16711935
  %i.gs = add i32 %i.gr, %i.gj                    ; 2 uses
  %i.gt = and i32 %i.gp, 16711935
  %i.gu = add i32 %i.gt, %i.gj                    ; 2 uses
  br i1 %i.gn, label %.epil.preheader, label %.lr.ph156.us.us.new

.lr.ph156.us.us.new:                              ; preds = %.lr.ph156.us.us, %.lr.ph156.us.us.new
  %indvars.iv190 = phi i64 [ %indvars.iv.next191.1, %.lr.ph156.us.us.new ], [ 0, %.lr.ph156.us.us ] ; 3 uses
  %.0154.us.us = phi i32 [ %i.hr, %.lr.ph156.us.us.new ], [ %i.gu, %.lr.ph156.us.us ]
  %.092153.us.us = phi i32 [ %i.hp, %.lr.ph156.us.us.new ], [ %i.gs, %.lr.ph156.us.us ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph156.us.us.new ], [ 0, %.lr.ph156.us.us ]
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv190
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !35
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %.1110160.us.us, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !35
  %i.ha = xor i32 %i.gz, -2139062144              ; 2 uses
  %i.hb = lshr i32 %i.ha, 8
  %i.hc = and i32 %i.hb, 16711935
  %i.hd = add i32 %i.hc, %.092153.us.us
  %i.he = and i32 %i.ha, 16711935
  %i.hf = add i32 %i.he, %.0154.us.us
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv190
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !35
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds [4 x i8], ptr %.1110160.us.us, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !35
  %i.hm = xor i32 %i.hl, -2139062144              ; 2 uses
  %i.hn = lshr i32 %i.hm, 8
  %i.ho = and i32 %i.hn, 16711935
  %i.hp = add i32 %i.ho, %i.hd                    ; 3 uses
  %i.hq = and i32 %i.hm, 16711935
  %i.hr = add i32 %i.hq, %i.hf                    ; 3 uses
  %indvars.iv.next191.1 = add nuw nsw i64 %indvars.iv190, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge157.us.us.unr-lcssa, label %.lr.ph156.us.us.new, !llvm.loop !101

bb.o:                                             ; preds = %._crit_edge157.us.us
  %i.hs = lshr i32 %.lcssa260, 15
  %i.ht = and i32 %i.hs, 65537
  %i.hu = add nuw nsw i32 %i.ht, 16711935
  %i.hv = add i32 %.lcssa260, 32512
  %i.hw = sub i32 -2130738945, %.lcssa260
  %i.hx = lshr i32 %i.hw, 15
  %i.hy = and i32 %i.hx, 65537
  %i.hz = add nuw nsw i32 %i.hy, 16711935
  %i.ia = or i32 %i.hz, %i.hv
  %i.ib = and i32 %i.hu, 16711935
  %i.ic = and i32 %i.ib, %i.ia
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge157.us.us, %bb.o
  %.193.us.us = phi i32 [ %i.ic, %bb.o ], [ %.lcssa260, %._crit_edge157.us.us ]
  %i.id = and i32 %.lcssa259, -16711936
  %.not124.us.us = icmp eq i32 %i.id, 0
  br i1 %.not124.us.us, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ie = lshr i32 %.lcssa259, 15
  %i.if = and i32 %i.ie, 65537
  %i.ig = add nuw nsw i32 %i.if, 16711935
  %i.ih = add i32 %.lcssa259, 32512
  %i.ii = sub i32 -2130738945, %.lcssa259
  %i.ij = lshr i32 %i.ii, 15
  %i.ik = and i32 %i.ij, 65537
  %i.il = add nuw nsw i32 %i.ik, 16711935
  %i.im = or i32 %i.il, %i.ih
  %i.in = and i32 %i.ig, 16711935
  %i.io = and i32 %i.in, %i.im
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.1.us.us = phi i32 [ %i.io, %bb.q ], [ %.lcssa259, %bb.p ]
  %i.ip = shl nuw i32 %.193.us.us, 8
  %i.iq = or i32 %.1.us.us, %i.ip
  store i32 %i.iq, ptr %i.go, align 4, !tbaa !35
  %i.ir = getelementptr inbounds nuw i8, ptr %.1110160.us.us, i64 4 ; 2 uses
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1 ; 2 uses
  %exitcond202.not = icmp eq i64 %indvars.iv.next198, %wide.trip.count201
  br i1 %exitcond202.not, label %._crit_edge163.split.us.us, label %.lr.ph156.us.us, !llvm.loop !102

._crit_edge157.us.us.unr-lcssa:                   ; preds = %.lr.ph156.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge157.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge157.us.us.unr-lcssa, %.lr.ph156.us.us
  %indvars.iv190.epil.init = phi i64 [ 0, %.lr.ph156.us.us ], [ %indvars.iv.next191.1, %._crit_edge157.us.us.unr-lcssa ]
  %.0154.us.us.epil.init = phi i32 [ %i.gu, %.lr.ph156.us.us ], [ %i.hr, %._crit_edge157.us.us.unr-lcssa ]
  %.092153.us.us.epil.init = phi i32 [ %i.gs, %.lr.ph156.us.us ], [ %i.hp, %._crit_edge157.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod264)
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv190.epil.init
  %i.it = load i32, ptr %i.is, align 4, !tbaa !35
  %i.iu = sext i32 %i.it to i64
  %i.iv = getelementptr inbounds [4 x i8], ptr %.1110160.us.us, i64 %i.iu
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !35
  %i.ix = xor i32 %i.iw, -2139062144              ; 2 uses
  %i.iy = lshr i32 %i.ix, 8
  %i.iz = and i32 %i.iy, 16711935
  %i.ja = add i32 %i.iz, %.092153.us.us.epil.init
  %i.jb = and i32 %i.ix, 16711935
  %i.jc = add i32 %i.jb, %.0154.us.us.epil.init
  br label %._crit_edge157.us.us

._crit_edge157.us.us:                             ; preds = %._crit_edge157.us.us.unr-lcssa, %.epil.preheader
  %.lcssa260 = phi i32 [ %i.hp, %._crit_edge157.us.us.unr-lcssa ], [ %i.ja, %.epil.preheader ] ; 5 uses
  %.lcssa259 = phi i32 [ %i.hr, %._crit_edge157.us.us.unr-lcssa ], [ %i.jc, %.epil.preheader ] ; 5 uses
  %i.jd = and i32 %.lcssa260, -16711936
  %.not123.us.us = icmp eq i32 %i.jd, 0
  br i1 %.not123.us.us, label %bb.p, label %bb.o

._crit_edge163.split.us.us:                       ; preds = %bb.r
  %i.je = getelementptr inbounds [4 x i8], ptr %.0112165.us, i64 %.sext
  %i.jf = add nuw nsw i32 %.096168.us, 1          ; 2 uses
  %exitcond204.not = icmp eq i32 %i.jf, %smax203
  br i1 %exitcond204.not, label %.loopexit, label %.preheader.us, !llvm.loop !103

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge163.split
  %.096168 = phi i32 [ %i.lx, %._crit_edge163.split ], [ 0, %.preheader.preheader ]
  %.0112165 = phi ptr [ %i.lw, %._crit_edge163.split ], [ %i.ao, %.preheader.preheader ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 2 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %.0112165, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.jg, align 4, !tbaa !35 ; 2 uses
  %i.jh = lshr <4 x i32> %wide.load, splat (i32 8)
  %i.ji = and <4 x i32> %i.jh, splat (i32 16711935)
  %i.jj = add <4 x i32> %i.ji, %broadcast.splat   ; 5 uses
  %i.jk = and <4 x i32> %wide.load, splat (i32 16711935)
  %i.jl = add <4 x i32> %i.jk, %broadcast.splat   ; 5 uses
  %i.jm = and <4 x i32> %i.jj, splat (i32 -16711936)
  %i.jn = icmp eq <4 x i32> %i.jm, zeroinitializer
  %i.jo = lshr <4 x i32> %i.jj, splat (i32 15)
  %i.jp = and <4 x i32> %i.jo, splat (i32 65537)
  %i.jq = add nuw nsw <4 x i32> %i.jp, splat (i32 16711935)
  %i.jr = add <4 x i32> %i.jj, splat (i32 32512)
  %i.js = sub <4 x i32> splat (i32 -2130738945), %i.jj
end_hunk_1
