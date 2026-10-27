Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/jpeg2000dec?download=true
inline.NumInlined: 106
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 21
begin_hunk_0_@get_siz:bb.a
  %i.da = phi i32 [ %i.bb, %.lr.ph395 ], [ %i.du, %bb.y ] ; 9 uses
  %.0312394 = phi i32 [ 0, %.lr.ph395 ], [ %i.dv, %bb.y ] ; 2 uses
  %i.db = zext nneg i32 %.0312394 to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !46
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %.preheader386, label %bb.y

.preheader386:                                    ; preds = %bb.w
  %i.df = icmp sgt i32 %i.da, 0
  br i1 %i.df, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader386
  %wide.trip.count = zext nneg i32 %i.da to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.da, 8
  br i1 %min.iters.check, label %.lr.ph.preheader513, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %index ; 2 uses
  %i.dh = trunc <4 x i64> %vec.ind to <4 x i32>
  %i.di = add <4 x i32> %i.dh, splat (i32 1)
  %i.dj = trunc <4 x i64> %vec.ind to <4 x i32>
  %i.dk = add <4 x i32> %i.dj, splat (i32 5)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store <4 x i32> %i.di, ptr %i.dg, align 4, !tbaa !46
  store <4 x i32> %i.dk, ptr %i.dl, align 4, !tbaa !46
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !247

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader513

.lr.ph.preheader513:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader513, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader513 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv
  %i.do = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !46
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !248

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.preheader386
  %.1313.lcssa = phi i32 [ 0, %.preheader386 ], [ %i.da, %middle.block ], [ %i.da, %.lr.ph ] ; 2 uses
  %i.dp = and i32 %i.da, 1
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge
  %i.dr = zext nneg i32 %i.da to i64
  %i.ds = getelementptr [4 x i8], ptr %i.cv, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.ds, i64 -4
  store i32 0, ptr %i.dt, align 4, !tbaa !46
  %.pre = load i32, ptr %i.cm, align 4, !tbaa !57
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %._crit_edge
  %i.du = phi i32 [ %.pre, %bb.x ], [ %i.da, %._crit_edge ], [ %i.da, %bb.w ] ; 7 uses
  %.2 = phi i32 [ %.1313.lcssa, %bb.x ], [ %.1313.lcssa, %._crit_edge ], [ %.0312394, %bb.w ]
  %i.dv = add nuw nsw i32 %.2, 1                  ; 2 uses
  %i.dw = icmp slt i32 %i.dv, %i.du
  br i1 %i.dw, label %bb.w, label %.preheader385, !llvm.loop !249

bb.z:                                             ; preds = %bb.z, %.lr.ph399.new
  %indvars.iv435 = phi i64 [ 0, %.lr.ph399.new ], [ %indvars.iv.next436.3, %bb.z ] ; 5 uses
  %.0398 = phi i32 [ 0, %.lr.ph399.new ], [ %i.ep, %bb.z ]
  %niter = phi i64 [ 0, %.lr.ph399.new ], [ %niter.next.3, %bb.z ]
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv435
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !46
  %i.dz = shl nuw i32 1, %i.dy
  %i.ea = or i32 %i.dz, %.0398
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv435
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !46
  %i.ee = shl nuw i32 1, %i.ed
  %i.ef = or i32 %i.ee, %i.ea
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv435
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !46
  %i.ej = shl nuw i32 1, %i.ei
  %i.ek = or i32 %i.ej, %i.ef
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv435
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  %i.en = load i32, ptr %i.em, align 4, !tbaa !46
  %i.eo = shl nuw i32 1, %i.en
  %i.ep = or i32 %i.eo, %i.ek                     ; 3 uses
  %indvars.iv.next436.3 = add nuw nsw i64 %indvars.iv435, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge400.loopexit.unr-lcssa, label %bb.z, !llvm.loop !250

._crit_edge400.loopexit.unr-lcssa:                ; preds = %bb.z
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge400, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge400.loopexit.unr-lcssa, %.lr.ph399
  %indvars.iv435.epil.init = phi i64 [ 0, %.lr.ph399 ], [ %indvars.iv.next436.3, %._crit_edge400.loopexit.unr-lcssa ]
  %.0398.epil.init = phi i32 [ 0, %.lr.ph399 ], [ %i.ep, %._crit_edge400.loopexit.unr-lcssa ]
  %lcmp.mod516 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod516)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader
  %indvars.iv435.epil = phi i64 [ %indvars.iv435.epil.init, %.epil.preheader ], [ %indvars.iv.next436.epil, %bb.aa ] ; 2 uses
  %.0398.epil = phi i32 [ %.0398.epil.init, %.epil.preheader ], [ %i.et, %bb.aa ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.aa ]
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv435.epil
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !46
  %i.es = shl nuw i32 1, %i.er
  %i.et = or i32 %i.es, %.0398.epil               ; 2 uses
  %indvars.iv.next436.epil = add nuw nsw i64 %indvars.iv435.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge400, label %bb.aa, !llvm.loop !251

._crit_edge400:                                   ; preds = %._crit_edge400.loopexit.unr-lcssa, %bb.aa, %.preheader385
  %.0.lcssa = phi i32 [ 0, %.preheader385 ], [ %i.ep, %._crit_edge400.loopexit.unr-lcssa ], [ %i.et, %bb.aa ]
  %i.eu = sext i32 %i.du to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr @constinit, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !46
  %.not345 = icmp eq i32 %.0.lcssa, %i.ew
  br i1 %.not345, label %.preheader384, label %.loopexit383

.preheader384:                                    ; preds = %._crit_edge400
  %i.ex = icmp sgt i32 %i.du, 0
  br i1 %i.ex, label %.lr.ph404, label %._crit_edge405

.lr.ph404:                                        ; preds = %.preheader384
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %.promoted = load ptr, ptr %i.a, align 8, !tbaa !42
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph404, %bb.ad
  %indvars.iv440 = phi i64 [ 0, %.lr.ph404 ], [ %indvars.iv.next441, %bb.ad ] ; 6 uses
  %i.fe = phi ptr [ %.promoted, %.lr.ph404 ], [ %i.fr, %bb.ad ] ; 4 uses
  %.0310403 = phi i32 [ 0, %.lr.ph404 ], [ %i.gh, %bb.ad ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 1 ; 2 uses
  store ptr %i.ff, ptr %i.a, align 8, !tbaa !42
  %i.fg = load i8, ptr %i.fe, align 1, !tbaa !43  ; 2 uses
  %i.fh = and i8 %i.fg, 127
  %i.fi = add nuw i8 %i.fh, 1                     ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ey, i64 %indvars.iv440
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !43
  %i.fk = zext i8 %i.fi to i32
  %i.fl = load i32, ptr %i.ez, align 8, !tbaa !90
  %. = tail call i32 @llvm.smax.i32(i32 %i.fl, i32 %i.fk)
  store i32 %., ptr %i.ez, align 8, !tbaa !90
  %.lobit = lshr i8 %i.fg, 7
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fa, i64 %indvars.iv440
  store i8 %.lobit, ptr %i.fm, align 1, !tbaa !43
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fe, i64 2 ; 2 uses
  store ptr %i.fn, ptr %i.a, align 8, !tbaa !42
  %i.fo = load i8, ptr %i.ff, align 1, !tbaa !43  ; 3 uses
  %i.fp = zext i8 %i.fo to i32                    ; 3 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %indvars.iv440
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !46
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fe, i64 3 ; 2 uses
  store ptr %i.fr, ptr %i.a, align 8, !tbaa !42
  %i.fs = load i8, ptr %i.fn, align 1, !tbaa !43  ; 3 uses
  %i.ft = zext i8 %i.fs to i32                    ; 3 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv440
  store i32 %i.ft, ptr %i.fu, align 4, !tbaa !46
  switch i8 %i.fo, label %bb.ac [
    i8 0, label %bb.ae
    i8 3, label %bb.ae
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.fv = icmp ugt i8 %i.fo, 4
  %i.fw = icmp eq i8 %i.fs, 3
  %i.fx = add i8 %i.fs, -5
  %i.fy = icmp ult i8 %i.fx, -4
  %i.fz = or i1 %i.fw, %i.fy
  %or.cond358 = select i1 %i.fv, i1 true, i1 %i.fz
  br i1 %or.cond358, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv440
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !46 ; 2 uses
  %.not355 = icmp eq i32 %i.gb, 0
  %.pre456 = load i32, ptr %i.cm, align 4, !tbaa !57 ; 2 uses
  %spec.select491 = select i1 %.not355, i32 %.pre456, i32 %i.gb
  %i.gc = lshr i32 %i.ft, 1
  %i.gd = shl i32 %spec.select491, 2
  %i.ge = add i32 %i.gd, -4
  %i.gf = shl nuw nsw i32 %i.fp, 1
  %1 = and i32 %i.gf, 12
  %2 = or disjoint i32 %i.gc, %1
  %i.gg = shl i32 %2, %i.ge
  %i.gh = or i32 %i.gg, %.0310403                 ; 2 uses
  %indvars.iv.next441 = add nuw nsw i64 %indvars.iv440, 1 ; 2 uses
  %i.gi = sext i32 %.pre456 to i64
  %i.gj = icmp slt i64 %indvars.iv.next441, %i.gi
  br i1 %i.gj, label %bb.ab, label %._crit_edge405, !llvm.loop !252

bb.ae:                                            ; preds = %bb.ac, %bb.ab, %bb.ab
  %i.gk = load ptr, ptr %i.p, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.gk, i32 noundef 16, ptr noundef nonnull @.str.44, i32 noundef %i.fp, i32 noundef %i.ft) #10
  br label %.loopexit383

._crit_edge405:                                   ; preds = %bb.ad, %.preheader384
  %.0310.lcssa = phi i32 [ 0, %.preheader384 ], [ %i.gh, %bb.ad ] ; 2 uses
  %i.gl = load i32, ptr %i.v, align 8, !tbaa !77
  %i.gm = load i32, ptr %i.at, align 8, !tbaa !75
  %i.gn = sub nsw i32 %i.gl, %i.gm
  %i.go = load i32, ptr %i.al, align 8, !tbaa !74
  %i.gp = sext i32 %i.go to i64                   ; 2 uses
  %i.gq = sext i32 %i.gn to i64
  %i.gr = add nsw i64 %i.gq, -1
  %i.gs = add nsw i64 %i.gr, %i.gp
  %i.gt = sdiv i64 %i.gs, %i.gp                   ; 3 uses
  %i.gu = trunc i64 %i.gt to i32
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 5 uses
  store i32 %i.gu, ptr %i.gv, align 8, !tbaa !59
  %i.gw = load i32, ptr %i.z, align 4, !tbaa !81
  %i.gx = load i32, ptr %i.ax, align 4, !tbaa !79
  %i.gy = sub nsw i32 %i.gw, %i.gx
  %i.gz = load i32, ptr %i.ap, align 4, !tbaa !78
  %i.ha = sext i32 %i.gz to i64                   ; 2 uses
  %i.hb = sext i32 %i.gy to i64
  %i.hc = add nsw i64 %i.hb, -1
  %i.hd = add nsw i64 %i.hc, %i.ha
  %i.he = sdiv i64 %i.hd, %i.ha                   ; 3 uses
  %i.hf = trunc i64 %i.he to i32
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 1220 ; 5 uses
  store i32 %i.hf, ptr %i.hg, align 4, !tbaa !58
  %i.hh = and i64 %i.gt, 4294967295
  %i.hi = and i64 %i.he, 4294967295
  %i.hj = mul nuw i64 %i.hi, %i.hh
  %i.hk = icmp ugt i64 %i.hj, 534731
  br i1 %i.hk, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %._crit_edge405
  %i.hl = mul i64 %i.he, %i.gt
  %i.hm = and i64 %i.hl, 4294967295               ; 2 uses
  %i.hn = mul nuw nsw i64 %i.hm, 14
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !39
  %i.hq = ptrtoint ptr %i.hp to i64
  %i.hr = sub i64 %i.cp, %i.hq
  %i.hs = shl i64 %i.hr, 32
  %i.ht = ashr exact i64 %i.hs, 32
  %i.hu = icmp sgt i64 %i.hn, %i.ht
  br i1 %i.hu, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af, %._crit_edge405
  store i32 0, ptr %i.hg, align 4, !tbaa !58
  store i32 0, ptr %i.gv, align 8, !tbaa !59
  br label %.loopexit383

bb.ah:                                            ; preds = %bb.af
  %i.hv = tail call noalias ptr @av_calloc(i64 noundef %i.hm, i64 noundef 4016) #10 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 3128 ; 2 uses
  store ptr %i.hv, ptr %i.hw, align 8, !tbaa !48
  %.not346 = icmp eq ptr %i.hv, null
  br i1 %.not346, label %bb.ai, label %.preheader382

.preheader382:                                    ; preds = %bb.ah
  %i.hx = load i32, ptr %i.gv, align 8, !tbaa !59
  %i.hy = load i32, ptr %i.hg, align 4, !tbaa !58
  %i.hz = mul i32 %i.hy, %i.hx
  %.not420 = icmp eq i32 %i.hz, 0
  br i1 %.not420, label %._crit_edge409, label %.lr.ph408

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.hg, align 4, !tbaa !58
  store i32 0, ptr %i.gv, align 8, !tbaa !59
  br label %.loopexit383

bb.aj:                                            ; preds = %.lr.ph408
  %indvars.iv.next444 = add nuw nsw i64 %indvars.iv443, 1 ; 2 uses
  %i.ia = load i32, ptr %i.gv, align 8, !tbaa !59
  %i.ib = load i32, ptr %i.hg, align 4, !tbaa !58
  %i.ic = mul i32 %i.ib, %i.ia
  %i.id = zext i32 %i.ic to i64
  %i.ie = icmp samesign ult i64 %indvars.iv.next444, %i.id
  br i1 %i.ie, label %.lr.ph408, label %._crit_edge409, !llvm.loop !253

.lr.ph408:                                        ; preds = %.preheader382, %bb.aj
  %indvars.iv443 = phi i64 [ %indvars.iv.next444, %bb.aj ], [ 0, %.preheader382 ] ; 2 uses
  %i.if = load ptr, ptr %i.hw, align 8, !tbaa !48
  %i.ig = getelementptr inbounds nuw [4016 x i8], ptr %i.if, i64 %indvars.iv443
  %i.ih = load i32, ptr %i.cm, align 4, !tbaa !57
  %i.ii = sext i32 %i.ih to i64
  %i.ij = mul nsw i64 %i.ii, 408
  %i.ik = tail call noalias ptr @av_mallocz(i64 noundef %i.ij) #10 ; 2 uses
  store ptr %i.ik, ptr %i.ig, align 8, !tbaa !65
  %.not352.not = icmp eq ptr %i.ik, null
  br i1 %.not352.not, label %.loopexit383, label %bb.aj

._crit_edge409:                                   ; preds = %bb.aj, %.preheader382
  %i.il = load i32, ptr %i.v, align 8, !tbaa !77
  %i.im = load i32, ptr %i.ad, align 8, !tbaa !76
  %i.in = sub nsw i32 %i.il, %i.im
  %i.io = load i32, ptr %i.ci, align 8, !tbaa !36
  %i.ip = sext i32 %i.in to i64
  %i.iq = sub nsw i64 0, %i.ip
  %i.ir = zext nneg i32 %i.io to i64              ; 2 uses
  %i.is = ashr i64 %i.iq, %i.ir
  %i.it = load i32, ptr %i.z, align 4, !tbaa !81
  %i.iu = load i32, ptr %i.ah, align 4, !tbaa !80
  %i.iv = sub nsw i32 %i.it, %i.iu
  %i.iw = sext i32 %i.iv to i64
  %i.ix = sub nsw i64 0, %i.iw
  %i.iy = ashr i64 %i.ix, %i.ir
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 9 uses
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !46
  %i.jb = sext i32 %i.ja to i64                   ; 2 uses
  %.neg = mul nsw i64 %i.is, -4294967296
  %i.jc = ashr exact i64 %.neg, 32
  %i.jd = add nsw i64 %i.jc, -1                   ; 4 uses
  %i.je = add nsw i64 %i.jd, %i.jb
  %i.jf = sdiv i64 %i.je, %i.jb
  %i.jg = trunc i64 %i.jf to i32                  ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 9 uses
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !46
  %i.jj = sext i32 %i.ji to i64                   ; 2 uses
  %.neg380 = mul nsw i64 %i.iy, -4294967296
  %i.jk = ashr exact i64 %.neg380, 32
  %i.jl = add nsw i64 %i.jk, -1                   ; 4 uses
  %i.jm = add nsw i64 %i.jl, %i.jj
  %i.jn = sdiv i64 %i.jm, %i.jj
  %i.jo = trunc i64 %i.jn to i32                  ; 3 uses
  %i.jp = load i32, ptr %i.cm, align 4, !tbaa !57 ; 5 uses
  %i.jq = icmp sgt i32 %i.jp, 1
  br i1 %i.jq, label %.lr.ph414.preheader, label %._crit_edge415

.lr.ph414.preheader:                              ; preds = %._crit_edge409
  %wide.trip.count449 = zext nneg i32 %i.jp to i64
  %i.jr = add nsw i64 %wide.trip.count449, -1     ; 3 uses
  %xtraiter517 = and i64 %i.jr, 1
  %i.js = icmp eq i32 %i.jp, 2
  br i1 %i.js, label %.lr.ph414.epil.preheader, label %.lr.ph414.preheader.new

.lr.ph414.preheader.new:                          ; preds = %.lr.ph414.preheader
  %unroll_iter523 = and i64 %i.jr, -2
  br label %.lr.ph414

.lr.ph414:                                        ; preds = %.lr.ph414, %.lr.ph414.preheader.new
  %indvars.iv446 = phi i64 [ 1, %.lr.ph414.preheader.new ], [ %indvars.iv.next447.1, %.lr.ph414 ] ; 4 uses
  %.0306412 = phi i32 [ %i.jo, %.lr.ph414.preheader.new ], [ %i.ks, %.lr.ph414 ]
  %.0307411 = phi i32 [ %i.jg, %.lr.ph414.preheader.new ], [ %spec.select.1, %.lr.ph414 ]
  %niter524 = phi i64 [ 0, %.lr.ph414.preheader.new ], [ %niter524.next.1, %.lr.ph414 ]
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %indvars.iv446
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !46
  %i.jv = sext i32 %i.ju to i64                   ; 2 uses
  %i.jw = add nsw i64 %i.jd, %i.jv
  %i.jx = sdiv i64 %i.jw, %i.jv
  %i.jy = trunc i64 %i.jx to i32
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.0307411, i32 %i.jy)
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %indvars.iv446
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !46
  %i.kb = sext i32 %i.ka to i64                   ; 2 uses
  %i.kc = add nsw i64 %i.jl, %i.kb
  %i.kd = sdiv i64 %i.kc, %i.kb
  %i.ke = trunc i64 %i.kd to i32
  %i.kf = tail call i32 @llvm.smax.i32(i32 %.0306412, i32 %i.ke)
  %indvars.iv.next447 = add nuw nsw i64 %indvars.iv446, 1 ; 2 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %indvars.iv.next447
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !46
  %i.ki = sext i32 %i.kh to i64                   ; 2 uses
  %i.kj = add nsw i64 %i.jd, %i.ki
  %i.kk = sdiv i64 %i.kj, %i.ki
  %i.kl = trunc i64 %i.kk to i32
  %spec.select.1 = tail call i32 @llvm.smax.i32(i32 %spec.select, i32 %i.kl) ; 3 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %indvars.iv.next447
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !46
  %i.ko = sext i32 %i.kn to i64                   ; 2 uses
  %i.kp = add nsw i64 %i.jl, %i.ko
  %i.kq = sdiv i64 %i.kp, %i.ko
  %i.kr = trunc i64 %i.kq to i32
  %i.ks = tail call i32 @llvm.smax.i32(i32 %i.kf, i32 %i.kr) ; 3 uses
  %indvars.iv.next447.1 = add nuw nsw i64 %indvars.iv446, 2 ; 2 uses
  %niter524.next.1 = add nuw i64 %niter524, 2     ; 2 uses
  %niter524.ncmp.1 = icmp eq i64 %niter524.next.1, %unroll_iter523
  br i1 %niter524.ncmp.1, label %._crit_edge415.loopexit.unr-lcssa, label %.lr.ph414, !llvm.loop !254

._crit_edge415.loopexit.unr-lcssa:                ; preds = %.lr.ph414
  %lcmp.mod519.not = icmp eq i64 %xtraiter517, 0
  br i1 %lcmp.mod519.not, label %._crit_edge415, label %.lr.ph414.epil.preheader

.lr.ph414.epil.preheader:                         ; preds = %._crit_edge415.loopexit.unr-lcssa, %.lr.ph414.preheader
  %indvars.iv446.epil.init = phi i64 [ 1, %.lr.ph414.preheader ], [ %indvars.iv.next447.1, %._crit_edge415.loopexit.unr-lcssa ] ; 2 uses
  %.0306412.epil.init = phi i32 [ %i.jo, %.lr.ph414.preheader ], [ %i.ks, %._crit_edge415.loopexit.unr-lcssa ]
  %.0307411.epil.init = phi i32 [ %i.jg, %.lr.ph414.preheader ], [ %spec.select.1, %._crit_edge415.loopexit.unr-lcssa ]
  %lcmp.mod522 = trunc i64 %i.jr to i1
  tail call void @llvm.assume(i1 %lcmp.mod522)
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %indvars.iv446.epil.init
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !46
  %i.kv = sext i32 %i.ku to i64                   ; 2 uses
end_hunk_0
