Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dxtory?download=true
inline.NumInlined: 53
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 15
begin_hunk_0_@decode_frame:bb.a
  %i.eb = getelementptr i8, ptr %i.cd, i64 34
  %i.ec = getelementptr i8, ptr %i.ce, i64 40
  %i.ed = getelementptr i8, ptr %i.cf, i64 46
  %i.ee = load i8, ptr %i.dw, align 2, !tbaa !17, !alias.scope !72
  %i.ef = load i8, ptr %i.dx, align 2, !tbaa !17, !alias.scope !72
  %i.eg = load i8, ptr %i.dy, align 2, !tbaa !17, !alias.scope !72
  %i.eh = load i8, ptr %i.dz, align 2, !tbaa !17, !alias.scope !72
  %i.ei = load i8, ptr %i.ea, align 2, !tbaa !17, !alias.scope !72
  %i.ej = load i8, ptr %i.eb, align 2, !tbaa !17, !alias.scope !72
  %i.ek = load i8, ptr %i.ec, align 2, !tbaa !17, !alias.scope !72
  %i.el = load i8, ptr %i.ed, align 2, !tbaa !17, !alias.scope !72
  %i.em = insertelement <8 x i8> poison, i8 %i.ee, i64 0
  %i.en = insertelement <8 x i8> %i.em, i8 %i.ef, i64 1
  %i.eo = insertelement <8 x i8> %i.en, i8 %i.eg, i64 2
  %i.ep = insertelement <8 x i8> %i.eo, i8 %i.eh, i64 3
  %i.eq = insertelement <8 x i8> %i.ep, i8 %i.ei, i64 4
  %i.er = insertelement <8 x i8> %i.eq, i8 %i.ej, i64 5
  %i.es = insertelement <8 x i8> %i.er, i8 %i.ek, i64 6
  %i.et = insertelement <8 x i8> %i.es, i8 %i.el, i64 7
  %i.eu = xor <8 x i8> %i.et, splat (i8 -128)
  %i.ev = getelementptr inbounds nuw i8, ptr %.092111.us.i, i64 %index
  store <8 x i8> %i.eu, ptr %i.ev, align 1, !tbaa !17, !alias.scope !77, !noalias !78
  %i.ew = getelementptr inbounds nuw i8, ptr %next.gep, i64 5
  %i.ex = getelementptr i8, ptr %i.bz, i64 11
  %i.ey = getelementptr i8, ptr %i.ca, i64 17
  %i.ez = getelementptr i8, ptr %i.cb, i64 23
  %i.fa = getelementptr i8, ptr %i.cc, i64 29
  %i.fb = getelementptr i8, ptr %i.cd, i64 35
  %i.fc = getelementptr i8, ptr %i.ce, i64 41
  %i.fd = getelementptr i8, ptr %i.cf, i64 47
  %i.fe = load i8, ptr %i.ew, align 1, !tbaa !17, !alias.scope !72
  %i.ff = load i8, ptr %i.ex, align 1, !tbaa !17, !alias.scope !72
  %i.fg = load i8, ptr %i.ey, align 1, !tbaa !17, !alias.scope !72
  %i.fh = load i8, ptr %i.ez, align 1, !tbaa !17, !alias.scope !72
  %i.fi = load i8, ptr %i.fa, align 1, !tbaa !17, !alias.scope !72
  %i.fj = load i8, ptr %i.fb, align 1, !tbaa !17, !alias.scope !72
  %i.fk = load i8, ptr %i.fc, align 1, !tbaa !17, !alias.scope !72
  %i.fl = load i8, ptr %i.fd, align 1, !tbaa !17, !alias.scope !72
  %i.fm = insertelement <8 x i8> poison, i8 %i.fe, i64 0
  %i.fn = insertelement <8 x i8> %i.fm, i8 %i.ff, i64 1
  %i.fo = insertelement <8 x i8> %i.fn, i8 %i.fg, i64 2
  %i.fp = insertelement <8 x i8> %i.fo, i8 %i.fh, i64 3
  %i.fq = insertelement <8 x i8> %i.fp, i8 %i.fi, i64 4
  %i.fr = insertelement <8 x i8> %i.fq, i8 %i.fj, i64 5
  %i.fs = insertelement <8 x i8> %i.fr, i8 %i.fk, i64 6
  %i.ft = insertelement <8 x i8> %i.fs, i8 %i.fl, i64 7
  %i.fu = xor <8 x i8> %i.ft, splat (i8 -128)
  %i.fv = getelementptr inbounds nuw i8, ptr %.0112.us.i, i64 %index
  store <8 x i8> %i.fu, ptr %i.fv, align 1, !tbaa !17, !alias.scope !79, !noalias !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fw = icmp eq i64 %index.next, %n.vec
  br i1 %i.fw, label %scalar.ph.preheader, label %vector.body, !llvm.loop !54

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.preheader104.us.i
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader104.us.i ], [ %i.bt, %vector.body ]
  %.199105.us.i.ph = phi ptr [ %.098107.us.i, %vector.memcheck ], [ %.098107.us.i, %.preheader104.us.i ], [ %i.bw, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 4 uses
  %.199105.us.i = phi ptr [ %i.gl, %scalar.ph ], [ %.199105.us.i.ph, %scalar.ph.preheader ] ; 9 uses
  %i.fx = load i16, ptr %.199105.us.i, align 2, !tbaa !17
  %i.fy = getelementptr inbounds nuw i8, ptr %.094109.us.i, i64 %indvars.iv.i
  store i16 %i.fx, ptr %i.fy, align 2, !tbaa !17
  %i.fz = getelementptr inbounds nuw i8, ptr %.199105.us.i, i64 2
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !17
  %i.gb = getelementptr inbounds nuw i8, ptr %.093110.us.i, i64 %indvars.iv.i
  store i16 %i.ga, ptr %i.gb, align 2, !tbaa !17
  %i.gc = getelementptr inbounds nuw i8, ptr %.199105.us.i, i64 4
  %i.gd = load i8, ptr %i.gc, align 2, !tbaa !17
  %i.ge = xor i8 %i.gd, -128
  %i.gf = lshr exact i64 %indvars.iv.i, 1         ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.092111.us.i, i64 %i.gf
  store i8 %i.ge, ptr %i.gg, align 1, !tbaa !17
  %i.gh = getelementptr inbounds nuw i8, ptr %.199105.us.i, i64 5
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !17
  %i.gj = xor i8 %i.gi, -128
  %i.gk = getelementptr inbounds nuw i8, ptr %.0112.us.i, i64 %i.gf
  store i8 %i.gj, ptr %i.gk, align 1, !tbaa !17
  %i.gl = getelementptr inbounds nuw i8, ptr %.199105.us.i, i64 6 ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.gm = icmp samesign ult i64 %indvars.iv.next.i, %i.bg
  br i1 %i.gm, label %scalar.ph, label %._crit_edge.us.i, !llvm.loop !55

bb.j:                                             ; preds = %._crit_edge.us.i
  %i.gn = load i8, ptr %i.gl, align 1, !tbaa !17
  %i.go = getelementptr inbounds nuw i8, ptr %.094109.us.i, i64 %i.bc
  store i8 %i.gn, ptr %i.go, align 1, !tbaa !17
  %i.gp = getelementptr inbounds nuw i8, ptr %.199105.us.i, i64 7
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !17
  %i.gr = getelementptr inbounds nuw i8, ptr %.093110.us.i, i64 %i.bc
  store i8 %i.gq, ptr %i.gr, align 1, !tbaa !17
  %i.gs = getelementptr inbounds nuw i8, ptr %.199105.us.i, i64 8
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !17
  %i.gu = xor i8 %i.gt, -128
  %i.gv = getelementptr inbounds i8, ptr %.092111.us.i, i64 %i.bd
  store i8 %i.gu, ptr %i.gv, align 1, !tbaa !17
  %i.gw = getelementptr inbounds nuw i8, ptr %.199105.us.i, i64 9
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !17
  %i.gy = xor i8 %i.gx, -128
  %i.gz = getelementptr inbounds i8, ptr %.0112.us.i, i64 %i.bd
  store i8 %i.gy, ptr %i.gz, align 1, !tbaa !17
  %i.ha = getelementptr inbounds nuw i8, ptr %.199105.us.i, i64 10
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.us.i, %bb.j
  %.2.us.i = phi ptr [ %i.ha, %bb.j ], [ %i.gl, %._crit_edge.us.i ] ; 2 uses
  %i.hb = load i32, ptr %i.as, align 8, !tbaa !35
  %i.hc = shl nsw i32 %i.hb, 1
  %i.hd = sext i32 %i.hc to i64                   ; 2 uses
  %i.he = getelementptr inbounds i8, ptr %.094109.us.i, i64 %i.hd ; 2 uses
  %i.hf = getelementptr inbounds i8, ptr %.093110.us.i, i64 %i.hd
  %i.hg = load i32, ptr %i.be, align 4, !tbaa !35
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds i8, ptr %.092111.us.i, i64 %i.hh ; 2 uses
  %i.hj = load i32, ptr %i.bf, align 8, !tbaa !35
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds i8, ptr %.0112.us.i, i64 %i.hk ; 2 uses
  %i.hm = add nuw nsw i32 %.096108.us.i, 2        ; 2 uses
  %i.hn = icmp slt i32 %i.hm, %i.aj
  br i1 %i.hn, label %.preheader104.us.i, label %._crit_edge113.i, !llvm.loop !56

._crit_edge.us.i:                                 ; preds = %scalar.ph
  br i1 %.not103.i, label %bb.k, label %bb.j

.preheader104.lr.ph.split.i:                      ; preds = %.preheader104.lr.ph.i
  br i1 %.not103.i, label %.preheader104.lr.ph.split.split.us.i, label %.preheader104.i

.preheader104.lr.ph.split.split.us.i:             ; preds = %.preheader104.lr.ph.split.i
  %i.ho = shl i32 %i.at, 1
  %i.hp = sext i32 %i.ho to i64
  %i.hq = load i32, ptr %i.be, align 4, !tbaa !35
  %i.hr = sext i32 %i.hq to i64
  %i.hs = load i32, ptr %i.bf, align 8, !tbaa !35
  %i.ht = sext i32 %i.hs to i64
  %i.hu = add nsw i32 %i.ai, -2
  %i.hv = lshr i32 %i.hu, 1
  %narrow.i = add nuw nsw i32 %i.hv, 1
  %i.hw = zext nneg i32 %narrow.i to i64          ; 3 uses
  %i.hx = mul nsw i64 %i.hp, %i.hw
  %scevgep.i = getelementptr i8, ptr %i.ar, i64 %i.hx
  %i.hy = mul nsw i64 %i.hr, %i.hw
  %scevgep154.i = getelementptr i8, ptr %i.ax, i64 %i.hy
  %i.hz = mul nsw i64 %i.ht, %i.hw
  %scevgep155.i = getelementptr i8, ptr %i.az, i64 %i.hz
  br label %._crit_edge113.i

.preheader104.i:                                  ; preds = %.preheader104.lr.ph.split.i, %.preheader104.i
  %.0112.i = phi ptr [ %i.iy, %.preheader104.i ], [ %i.az, %.preheader104.lr.ph.split.i ] ; 2 uses
  %.092111.i = phi ptr [ %i.iv, %.preheader104.i ], [ %i.ax, %.preheader104.lr.ph.split.i ] ; 2 uses
  %.093110.i = phi ptr [ %i.is, %.preheader104.i ], [ %i.av, %.preheader104.lr.ph.split.i ] ; 2 uses
  %.094109.i = phi ptr [ %i.ir, %.preheader104.i ], [ %i.ar, %.preheader104.lr.ph.split.i ] ; 2 uses
  %.096108.i = phi i32 [ %i.iz, %.preheader104.i ], [ 0, %.preheader104.lr.ph.split.i ]
  %.098107.i = phi ptr [ %i.in, %.preheader104.i ], [ %i.o, %.preheader104.lr.ph.split.i ] ; 5 uses
  %i.ia = load i8, ptr %.098107.i, align 1, !tbaa !17
  %i.ib = getelementptr inbounds i8, ptr %.094109.i, i64 %i.bc
  store i8 %i.ia, ptr %i.ib, align 1, !tbaa !17
  %i.ic = getelementptr inbounds nuw i8, ptr %.098107.i, i64 1
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !17
  %i.ie = getelementptr inbounds i8, ptr %.093110.i, i64 %i.bc
  store i8 %i.id, ptr %i.ie, align 1, !tbaa !17
  %i.if = getelementptr inbounds nuw i8, ptr %.098107.i, i64 2
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !17
  %i.ih = xor i8 %i.ig, -128
  %i.ii = getelementptr inbounds i8, ptr %.092111.i, i64 %i.bd
  store i8 %i.ih, ptr %i.ii, align 1, !tbaa !17
  %i.ij = getelementptr inbounds nuw i8, ptr %.098107.i, i64 3
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !17
  %i.il = xor i8 %i.ik, -128
  %i.im = getelementptr inbounds i8, ptr %.0112.i, i64 %i.bd
  store i8 %i.il, ptr %i.im, align 1, !tbaa !17
  %i.in = getelementptr inbounds nuw i8, ptr %.098107.i, i64 4 ; 2 uses
  %i.io = load i32, ptr %i.as, align 8, !tbaa !35
  %i.ip = shl nsw i32 %i.io, 1
  %i.iq = sext i32 %i.ip to i64                   ; 2 uses
  %i.ir = getelementptr inbounds i8, ptr %.094109.i, i64 %i.iq ; 2 uses
  %i.is = getelementptr inbounds i8, ptr %.093110.i, i64 %i.iq
  %i.it = load i32, ptr %i.be, align 4, !tbaa !35
  %i.iu = sext i32 %i.it to i64
  %i.iv = getelementptr inbounds i8, ptr %.092111.i, i64 %i.iu ; 2 uses
  %i.iw = load i32, ptr %i.bf, align 8, !tbaa !35
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds i8, ptr %.0112.i, i64 %i.ix ; 2 uses
  %i.iz = add nuw nsw i32 %.096108.i, 2           ; 2 uses
  %i.ja = icmp slt i32 %i.iz, %i.aj
  br i1 %i.ja, label %.preheader104.i, label %._crit_edge113.i, !llvm.loop !56

._crit_edge113.i:                                 ; preds = %.preheader104.i, %bb.k, %.preheader104.lr.ph.split.split.us.i, %bb.i
  %.098.lcssa.i = phi ptr [ %i.o, %bb.i ], [ %i.o, %.preheader104.lr.ph.split.split.us.i ], [ %.2.us.i, %bb.k ], [ %i.in, %.preheader104.i ] ; 16 uses
  %.094.lcssa.i = phi ptr [ %i.ar, %bb.i ], [ %scevgep.i, %.preheader104.lr.ph.split.split.us.i ], [ %i.he, %bb.k ], [ %i.ir, %.preheader104.i ] ; 7 uses
  %.092.lcssa.i = phi ptr [ %i.ax, %bb.i ], [ %scevgep154.i, %.preheader104.lr.ph.split.split.us.i ], [ %i.hi, %bb.k ], [ %i.iv, %.preheader104.i ] ; 7 uses
  %.0.lcssa.i = phi ptr [ %i.az, %bb.i ], [ %scevgep155.i, %.preheader104.lr.ph.split.split.us.i ], [ %i.hl, %bb.k ], [ %i.iy, %.preheader104.i ] ; 7 uses
  %.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.i, label %dxtory_decode_v1_420.exit.thread90.sink.split, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge113.i
  %i.jb = icmp sgt i32 %i.ak, 1
  br i1 %i.jb, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.jc = zext nneg i32 %i.al to i64              ; 2 uses
  %i.jd = add nsw i64 %i.jc, -1                   ; 4 uses
  %i.je = lshr i64 %i.jd, 1
  %i.jf = add nuw i64 %i.je, 1                    ; 2 uses
  %min.iters.check317 = icmp ult i64 %i.jd, 64
  br i1 %min.iters.check317, label %.lr.ph.i.preheader, label %vector.memcheck288

vector.memcheck288:                               ; preds = %.lr.ph.preheader.i
  %i.jg = and i64 %i.jd, -2
  %i.jh = getelementptr i8, ptr %.094.lcssa.i, i64 %i.jg
  %scevgep289 = getelementptr i8, ptr %i.jh, i64 2 ; 3 uses
  %i.ji = lshr i64 %i.jd, 1                       ; 2 uses
  %i.jj = add nuw i64 %i.ji, 1                    ; 2 uses
  %scevgep290 = getelementptr i8, ptr %.092.lcssa.i, i64 %i.jj ; 3 uses
  %scevgep291 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.jj ; 3 uses
  %i.jk = shl i64 %i.ji, 2
  %i.jl = getelementptr i8, ptr %.098.lcssa.i, i64 %i.jk
  %scevgep292 = getelementptr i8, ptr %i.jl, i64 2 ; 3 uses
  %bound0293 = icmp ult ptr %.094.lcssa.i, %scevgep290
  %bound1294 = icmp ult ptr %.092.lcssa.i, %scevgep289
  %found.conflict295 = and i1 %bound0293, %bound1294
  %bound0296 = icmp ult ptr %.094.lcssa.i, %scevgep291
  %bound1297 = icmp ult ptr %.0.lcssa.i, %scevgep289
  %found.conflict298 = and i1 %bound0296, %bound1297
  %conflict.rdx299 = or i1 %found.conflict295, %found.conflict298
  %bound0300 = icmp ult ptr %.094.lcssa.i, %scevgep292
  %bound1301 = icmp ult ptr %.098.lcssa.i, %scevgep289
  %found.conflict302 = and i1 %bound0300, %bound1301
  %conflict.rdx303 = or i1 %conflict.rdx299, %found.conflict302
  %bound0304 = icmp ult ptr %.092.lcssa.i, %scevgep291
  %bound1305 = icmp ult ptr %.0.lcssa.i, %scevgep290
  %found.conflict306 = and i1 %bound0304, %bound1305
  %conflict.rdx307 = or i1 %conflict.rdx303, %found.conflict306
  %bound0308 = icmp ult ptr %.092.lcssa.i, %scevgep292
  %bound1309 = icmp ult ptr %.098.lcssa.i, %scevgep290
  %found.conflict310 = and i1 %bound0308, %bound1309
  %conflict.rdx311 = or i1 %conflict.rdx307, %found.conflict310
  %bound0312 = icmp ult ptr %.0.lcssa.i, %scevgep292
  %bound1313 = icmp ult ptr %.098.lcssa.i, %scevgep291
  %found.conflict314 = and i1 %bound0312, %bound1313
  %conflict.rdx315 = or i1 %conflict.rdx311, %found.conflict314
  br i1 %conflict.rdx315, label %.lr.ph.i.preheader, label %vector.ph318

vector.ph318:                                     ; preds = %vector.memcheck288
  %i.jm = and i64 %i.jf, 7                        ; 2 uses
  %i.jn = icmp eq i64 %i.jm, 0
  %i.jo = select i1 %i.jn, i64 8, i64 %i.jm
  %n.vec319 = sub i64 %i.jf, %i.jo                ; 3 uses
  %i.jp = shl i64 %n.vec319, 1
  %i.jq = shl i64 %n.vec319, 2
  %i.jr = getelementptr i8, ptr %.098.lcssa.i, i64 %i.jq
  br label %vector.body320

vector.body320:                                   ; preds = %vector.body320, %vector.ph318
  %index321 = phi i64 [ 0, %vector.ph318 ], [ %index.next330, %vector.body320 ] ; 5 uses
  %i.js = shl nuw i64 %index321, 1
  %i.jt = shl i64 %index321, 2                    ; 8 uses
  %next.gep322 = getelementptr i8, ptr %.098.lcssa.i, i64 %i.jt ; 3 uses
  %i.ju = getelementptr i8, ptr %.098.lcssa.i, i64 %i.jt ; 2 uses
  %next.gep323 = getelementptr i8, ptr %i.ju, i64 4 ; 2 uses
  %i.jv = getelementptr i8, ptr %.098.lcssa.i, i64 %i.jt ; 2 uses
  %next.gep324 = getelementptr i8, ptr %i.jv, i64 8 ; 2 uses
  %i.jw = getelementptr i8, ptr %.098.lcssa.i, i64 %i.jt ; 2 uses
  %next.gep325 = getelementptr i8, ptr %i.jw, i64 12 ; 2 uses
  %i.jx = getelementptr i8, ptr %.098.lcssa.i, i64 %i.jt ; 2 uses
  %next.gep326 = getelementptr i8, ptr %i.jx, i64 16 ; 2 uses
  %i.jy = getelementptr i8, ptr %.098.lcssa.i, i64 %i.jt ; 2 uses
  %next.gep327 = getelementptr i8, ptr %i.jy, i64 20 ; 2 uses
  %i.jz = getelementptr i8, ptr %.098.lcssa.i, i64 %i.jt ; 2 uses
  %next.gep328 = getelementptr i8, ptr %i.jz, i64 24 ; 2 uses
  %i.ka = getelementptr i8, ptr %.098.lcssa.i, i64 %i.jt ; 2 uses
  %next.gep329 = getelementptr i8, ptr %i.ka, i64 28 ; 2 uses
  %i.kb = load i16, ptr %next.gep322, align 1, !tbaa !17, !alias.scope !82
  %i.kc = load i16, ptr %next.gep323, align 1, !tbaa !17, !alias.scope !82
  %i.kd = load i16, ptr %next.gep324, align 1, !tbaa !17, !alias.scope !82
  %i.ke = load i16, ptr %next.gep325, align 1, !tbaa !17, !alias.scope !82
  %i.kf = load i16, ptr %next.gep326, align 1, !tbaa !17, !alias.scope !82
  %i.kg = load i16, ptr %next.gep327, align 1, !tbaa !17, !alias.scope !82
  %i.kh = load i16, ptr %next.gep328, align 1, !tbaa !17, !alias.scope !82
  %i.ki = load i16, ptr %next.gep329, align 1, !tbaa !17, !alias.scope !82
  %i.kj = insertelement <8 x i16> poison, i16 %i.kb, i64 0
  %i.kk = insertelement <8 x i16> %i.kj, i16 %i.kc, i64 1
  %i.kl = insertelement <8 x i16> %i.kk, i16 %i.kd, i64 2
  %i.km = insertelement <8 x i16> %i.kl, i16 %i.ke, i64 3
  %i.kn = insertelement <8 x i16> %i.km, i16 %i.kf, i64 4
  %i.ko = insertelement <8 x i16> %i.kn, i16 %i.kg, i64 5
  %i.kp = insertelement <8 x i16> %i.ko, i16 %i.kh, i64 6
  %i.kq = insertelement <8 x i16> %i.kp, i16 %i.ki, i64 7
  %i.kr = getelementptr inbounds nuw i8, ptr %.094.lcssa.i, i64 %i.js
  store <8 x i16> %i.kq, ptr %i.kr, align 1, !tbaa !17, !alias.scope !83, !noalias !84
  %i.ks = load i8, ptr %next.gep322, align 1, !tbaa !17, !alias.scope !82
  %i.kt = load i8, ptr %next.gep323, align 1, !tbaa !17, !alias.scope !82
  %i.ku = load i8, ptr %next.gep324, align 1, !tbaa !17, !alias.scope !82
  %i.kv = load i8, ptr %next.gep325, align 1, !tbaa !17, !alias.scope !82
  %i.kw = load i8, ptr %next.gep326, align 1, !tbaa !17, !alias.scope !82
  %i.kx = load i8, ptr %next.gep327, align 1, !tbaa !17, !alias.scope !82
  %i.ky = load i8, ptr %next.gep328, align 1, !tbaa !17, !alias.scope !82
  %i.kz = load i8, ptr %next.gep329, align 1, !tbaa !17, !alias.scope !82
  %i.la = insertelement <8 x i8> poison, i8 %i.ks, i64 0
  %i.lb = insertelement <8 x i8> %i.la, i8 %i.kt, i64 1
  %i.lc = insertelement <8 x i8> %i.lb, i8 %i.ku, i64 2
  %i.ld = insertelement <8 x i8> %i.lc, i8 %i.kv, i64 3
  %i.le = insertelement <8 x i8> %i.ld, i8 %i.kw, i64 4
  %i.lf = insertelement <8 x i8> %i.le, i8 %i.kx, i64 5
  %i.lg = insertelement <8 x i8> %i.lf, i8 %i.ky, i64 6
  %i.lh = insertelement <8 x i8> %i.lg, i8 %i.kz, i64 7
  %i.li = xor <8 x i8> %i.lh, splat (i8 -128)
  %i.lj = getelementptr inbounds nuw i8, ptr %.092.lcssa.i, i64 %index321
  store <8 x i8> %i.li, ptr %i.lj, align 1, !tbaa !17, !alias.scope !85, !noalias !86
  %i.lk = getelementptr inbounds nuw i8, ptr %next.gep322, i64 1
  %i.ll = getelementptr i8, ptr %i.ju, i64 5
  %i.lm = getelementptr i8, ptr %i.jv, i64 9
  %i.ln = getelementptr i8, ptr %i.jw, i64 13
  %i.lo = getelementptr i8, ptr %i.jx, i64 17
  %i.lp = getelementptr i8, ptr %i.jy, i64 21
  %i.lq = getelementptr i8, ptr %i.jz, i64 25
  %i.lr = getelementptr i8, ptr %i.ka, i64 29
  %i.ls = load i8, ptr %i.lk, align 1, !tbaa !17, !alias.scope !82
  %i.lt = load i8, ptr %i.ll, align 1, !tbaa !17, !alias.scope !82
  %i.lu = load i8, ptr %i.lm, align 1, !tbaa !17, !alias.scope !82
  %i.lv = load i8, ptr %i.ln, align 1, !tbaa !17, !alias.scope !82
  %i.lw = load i8, ptr %i.lo, align 1, !tbaa !17, !alias.scope !82
  %i.lx = load i8, ptr %i.lp, align 1, !tbaa !17, !alias.scope !82
  %i.ly = load i8, ptr %i.lq, align 1, !tbaa !17, !alias.scope !82
  %i.lz = load i8, ptr %i.lr, align 1, !tbaa !17, !alias.scope !82
  %i.ma = insertelement <8 x i8> poison, i8 %i.ls, i64 0
  %i.mb = insertelement <8 x i8> %i.ma, i8 %i.lt, i64 1
  %i.mc = insertelement <8 x i8> %i.mb, i8 %i.lu, i64 2
  %i.md = insertelement <8 x i8> %i.mc, i8 %i.lv, i64 3
  %i.me = insertelement <8 x i8> %i.md, i8 %i.lw, i64 4
  %i.mf = insertelement <8 x i8> %i.me, i8 %i.lx, i64 5
  %i.mg = insertelement <8 x i8> %i.mf, i8 %i.ly, i64 6
  %i.mh = insertelement <8 x i8> %i.mg, i8 %i.lz, i64 7
  %i.mi = xor <8 x i8> %i.mh, splat (i8 -128)
  %i.mj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 %index321
  store <8 x i8> %i.mi, ptr %i.mj, align 1, !tbaa !17, !alias.scope !87, !noalias !82
  %index.next330 = add nuw i64 %index321, 8       ; 2 uses
  %i.mk = icmp eq i64 %index.next330, %n.vec319
  br i1 %i.mk, label %.lr.ph.i.preheader, label %vector.body320, !llvm.loop !62

.lr.ph.i.preheader:                               ; preds = %vector.body320, %vector.memcheck288, %.lr.ph.preheader.i
  %indvars.iv157.i.ph = phi i64 [ 0, %vector.memcheck288 ], [ 0, %.lr.ph.preheader.i ], [ %i.jp, %vector.body320 ]
  %.3137.i.ph = phi ptr [ %.098.lcssa.i, %vector.memcheck288 ], [ %.098.lcssa.i, %.lr.ph.preheader.i ], [ %i.jr, %vector.body320 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv157.i = phi i64 [ %indvars.iv.next158.i, %.lr.ph.i ], [ %indvars.iv157.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.3137.i = phi ptr [ %i.mv, %.lr.ph.i ], [ %.3137.i.ph, %.lr.ph.i.preheader ] ; 4 uses
  %i.ml = load i16, ptr %.3137.i, align 1, !tbaa !17
  %i.mm = getelementptr inbounds nuw i8, ptr %.094.lcssa.i, i64 %indvars.iv157.i
  store i16 %i.ml, ptr %i.mm, align 1, !tbaa !17
  %i.mn = load i8, ptr %.3137.i, align 1, !tbaa !17
  %i.mo = xor i8 %i.mn, -128
  %i.mp = lshr exact i64 %indvars.iv157.i, 1      ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.092.lcssa.i, i64 %i.mp
  store i8 %i.mo, ptr %i.mq, align 1, !tbaa !17
  %i.mr = getelementptr inbounds nuw i8, ptr %.3137.i, i64 1
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !17
  %i.mt = xor i8 %i.ms, -128
  %i.mu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 %i.mp
  store i8 %i.mt, ptr %i.mu, align 1, !tbaa !17
  %i.mv = getelementptr inbounds nuw i8, ptr %.3137.i, i64 4 ; 2 uses
  %indvars.iv.next158.i = add nuw nsw i64 %indvars.iv157.i, 2 ; 3 uses
  %i.mw = icmp samesign ult i64 %indvars.iv.next158.i, %i.jc
  br i1 %i.mw, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !63

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.3.lcssa.i = phi ptr [ %.098.lcssa.i, %.preheader.i ], [ %i.mv, %.lr.ph.i ] ; 3 uses
  %.1.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next158.i, %.lr.ph.i ]
  %.not102.i = icmp eq i32 %i.am, 0
  br i1 %.not102.i, label %dxtory_decode_v1_420.exit.thread90.sink.split, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i
  %i.mx = load i8, ptr %.3.lcssa.i, align 1, !tbaa !17
  %i.my = getelementptr inbounds nuw i8, ptr %.094.lcssa.i, i64 %.1.lcssa.i
  store i8 %i.mx, ptr %i.my, align 1, !tbaa !17
  %i.mz = getelementptr inbounds nuw i8, ptr %.3.lcssa.i, i64 1
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !17
  %i.nb = xor i8 %i.na, -128
  %i.nc = sext i32 %i.aq to i64                   ; 2 uses
  %i.nd = getelementptr inbounds i8, ptr %.092.lcssa.i, i64 %i.nc
  store i8 %i.nb, ptr %i.nd, align 1, !tbaa !17
  %i.ne = getelementptr inbounds nuw i8, ptr %.3.lcssa.i, i64 2
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !17
  %i.ng = xor i8 %i.nf, -128
  %i.nh = getelementptr inbounds i8, ptr %.0.lcssa.i, i64 %i.nc
  store i8 %i.ng, ptr %i.nh, align 1, !tbaa !17
  br label %dxtory_decode_v1_420.exit.thread90.sink.split

bb.m:                                             ; preds = %bb.c, %bb.c
  %i.ni = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.nj = add nsw i32 %i.d, -16
  %i.nk = tail call fastcc range(i32 -2147483648, 1) i32 @dxtory_decode_v2(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.ni, i32 noundef range(i32 -2147483648, 2147483632) %i.nj, ptr noundef nonnull @dx2_decode_slice_420, ptr noundef nonnull @default_setup_lru, i32 noundef 0, i32 noundef range(i32 0, 2) %.lobit)
  br label %dxtory_decode_v1_420.exit

bb.n:                                             ; preds = %bb.c, %bb.c
  %i.nl = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.nm = add nsw i32 %i.d, -16
  %i.nn = zext nneg i32 %i.nm to i64
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.np = load i32, ptr %i.no, align 8, !tbaa !31 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !32 ; 2 uses
  %i.ns = mul nsw i32 %i.nr, %i.np
  %i.nt = sext i32 %i.ns to i64
  %i.nu = add nsw i32 %i.np, 3
  %i.nv = ashr i32 %i.nu, 1
  %i.nw = and i32 %i.nv, -2
  %i.nx = add nsw i32 %i.nr, 3
  %i.ny = ashr i32 %i.nx, 2
  %i.nz = mul nsw i32 %i.nw, %i.ny
  %i.oa = sext i32 %i.nz to i64
end_hunk_0
