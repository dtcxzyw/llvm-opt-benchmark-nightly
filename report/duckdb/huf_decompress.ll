Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/huf_decompress?download=true
inline.NumInlined: 722
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN11duckdb_zstd21HUF_readDTableX2_wkspEPjPKvmPvmi:bb.a
  %.090122 = phi i32 [ 0, %.lr.ph125.preheader.new ], [ %i.ct, %.lr.ph125 ] ; 2 uses
  %niter359 = phi i64 [ 0, %.lr.ph125.preheader.new ], [ %niter359.next.1, %.lr.ph125 ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv165
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !14
  %i.cj = trunc nuw i64 %indvars.iv165 to i32
  %i.ck = add i32 %i.ce, %i.cj
  %i.cl = shl i32 %i.ci, %i.ck
  %i.cm = add i32 %i.cl, %.090122                 ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv165
  store i32 %.090122, ptr %i.cn, align 4, !tbaa !14
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next166
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !14
  %i.cq = trunc nuw i64 %indvars.iv.next166 to i32
  %i.cr = add i32 %i.ce, %i.cq
  %i.cs = shl i32 %i.cp, %i.cr
  %i.ct = add i32 %i.cs, %i.cm                    ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next166
  store i32 %i.cm, ptr %i.cu, align 4, !tbaa !14
  %indvars.iv.next166.1 = add nuw nsw i64 %indvars.iv165, 2 ; 2 uses
  %niter359.next.1 = add nuw i64 %niter359, 2     ; 2 uses
  %niter359.ncmp.1 = icmp eq i64 %niter359.next.1, %unroll_iter358
  br i1 %niter359.ncmp.1, label %._crit_edge126.unr-lcssa, label %.lr.ph125, !llvm.loop !83

._crit_edge126.unr-lcssa:                         ; preds = %.lr.ph125
  %lcmp.mod356.not = icmp eq i64 %xtraiter354, 0
  br i1 %lcmp.mod356.not, label %._crit_edge126, label %.lr.ph125.epil.preheader

.lr.ph125.epil.preheader:                         ; preds = %._crit_edge126.unr-lcssa, %.lr.ph125.preheader
  %indvars.iv165.epil.init = phi i64 [ 1, %.lr.ph125.preheader ], [ %indvars.iv.next166.1, %._crit_edge126.unr-lcssa ]
  %.090122.epil.init = phi i32 [ 0, %.lr.ph125.preheader ], [ %i.ct, %._crit_edge126.unr-lcssa ]
  %lcmp.mod357 = trunc i64 %i.cf to i1
  call void @llvm.assume(i1 %lcmp.mod357)
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv165.epil.init
  store i32 %.090122.epil.init, ptr %i.cv, align 4, !tbaa !14
  br label %._crit_edge126

._crit_edge126:                                   ; preds = %._crit_edge126.unr-lcssa, %.lr.ph125.epil.preheader
  %i.cw = sub i32 %i.q, %.091                     ; 3 uses
  %i.cx = add nuw nsw i32 %spec.store.select, 1
  %i.cy = sub i32 %i.cx, %i.cw
  %i.cz = icmp ult i32 %i.cw, %i.cy
  br i1 %i.cz, label %.lr.ph129.preheader, label %._crit_edge134.split

.lr.ph129.preheader:                              ; preds = %._crit_edge126
  %i.da = zext i32 %indvars.iv177 to i64          ; 2 uses
  %i.db = add i32 %spec.store.select, %indvars.iv182
  %wide.trip.count175 = zext i32 %indvars.iv158 to i64
  %i.dc = add nsw i64 %wide.trip.count169, -1     ; 3 uses
  %min.iters.check = icmp ult i64 %i.dc, 8
  %n.vec = and i64 %i.dc, -8                      ; 3 uses
  %i.dd = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.dc, %n.vec
  br label %.lr.ph129

.lr.ph129:                                        ; preds = %.lr.ph129.preheader, %._crit_edge130
  %indvar = phi i64 [ 0, %.lr.ph129.preheader ], [ %indvar.next, %._crit_edge130 ] ; 2 uses
  %indvars.iv179 = phi i64 [ %i.da, %.lr.ph129.preheader ], [ %indvars.iv.next180, %._crit_edge130 ] ; 3 uses
  %i.de = getelementptr inbounds nuw [52 x i8], ptr %3, i64 %indvars.iv179 ; 6 uses
  %i.df = trunc nuw i64 %indvars.iv179 to i32     ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph129
  %i.dg = add i64 %indvar, %i.da
  %i.dh = mul nuw i64 %i.dg, 52
  %i.di = add i64 %i.dh, -1
  %diff.check = icmp ult i64 %i.di, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.df, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dj = or disjoint i64 %index, 1               ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dj ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load = load <4 x i32>, ptr %i.dk, align 4, !tbaa !14
  %wide.load224 = load <4 x i32>, ptr %i.dl, align 4, !tbaa !14
  %i.dm = lshr <4 x i32> %wide.load, %broadcast.splat
  %i.dn = lshr <4 x i32> %wide.load224, %broadcast.splat
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dj ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store <4 x i32> %i.dm, ptr %i.do, align 4, !tbaa !14
  store <4 x i32> %i.dn, ptr %i.dp, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge130, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph129, %middle.block
  %indvars.iv171.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph129 ], [ %i.dd, %middle.block ] ; 4 uses
  %i.dr = sub nsw i64 %wide.trip.count169, %indvars.iv171.ph
  %xtraiter360 = and i64 %i.dr, 3                 ; 2 uses
  %lcmp.mod361.not = icmp eq i64 %xtraiter360, 0
  br i1 %lcmp.mod361.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv171.prol = phi i64 [ %indvars.iv.next172.prol, %scalar.ph.prol ], [ %indvars.iv171.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv171.prol
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !14
  %i.du = lshr i32 %i.dt, %i.df
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv171.prol
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !14
  %indvars.iv.next172.prol = add nuw nsw i64 %indvars.iv171.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter360
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !85

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv171.unr = phi i64 [ %indvars.iv171.ph, %scalar.ph.preheader ], [ %indvars.iv.next172.prol, %scalar.ph.prol ]
  %i.dw = sub nsw i64 %indvars.iv171.ph, %wide.trip.count169
  %i.dx = icmp ugt i64 %i.dw, -4
  br i1 %i.dx, label %._crit_edge130, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv171 = phi i64 [ %indvars.iv.next172.3, %scalar.ph ], [ %indvars.iv171.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv171
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !14
  %i.ea = lshr i32 %i.dz, %i.df
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv171
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !14
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next172
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !14
  %i.ee = lshr i32 %i.ed, %i.df
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next172
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !14
  %indvars.iv.next172.1 = add nuw nsw i64 %indvars.iv171, 2 ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next172.1
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !14
  %i.ei = lshr i32 %i.eh, %i.df
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next172.1
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !14
  %indvars.iv.next172.2 = add nuw nsw i64 %indvars.iv171, 3 ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next172.2
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !14
  %i.em = lshr i32 %i.el, %i.df
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next172.2
  store i32 %i.em, ptr %i.en, align 4, !tbaa !14
  %indvars.iv.next172.3 = add nuw nsw i64 %indvars.iv171, 4 ; 2 uses
  %exitcond176.not.3 = icmp eq i64 %indvars.iv.next172.3, %wide.trip.count175
  br i1 %exitcond176.not.3, label %._crit_edge130, label %scalar.ph, !llvm.loop !86

._crit_edge130:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next180 to i32
  %exitcond184.not = icmp eq i32 %i.db, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond184.not, label %._crit_edge134.split, label %.lr.ph129, !llvm.loop !87

._crit_edge134.split:                             ; preds = %._crit_edge130, %._crit_edge126
  %i.eo = getelementptr i8, ptr %3, i64 736       ; 15 uses
  %i.ep = sub nsw i32 %i.q, %spec.store.select
  %.not76.i = icmp slt i32 %.091, 1
  br i1 %.not76.i, label %_ZN11duckdb_zstdL16HUF_fillDTableX2EPNS_10HUF_DEltX2EjPKNS_14sortedSymbol_tEPKjPA13_jjj.exit, label %.lr.ph78.i.preheader

.lr.ph78.i.preheader:                             ; preds = %._crit_edge134.split
  %scevgep = getelementptr i8, ptr %0, i64 20
  %scevgep255 = getelementptr i8, ptr %3, i64 737
  %i.eq = add i64 %i.a, 735
  %i.er = add i64 %i.a, 735
  %i.es = add i64 %i.a, 735
  br label %.lr.ph78.i

.lr.ph78.i:                                       ; preds = %.lr.ph78.i.preheader, %.loopexit.i
  %indvars.iv96.i = phi i64 [ %indvars.iv.next97.i, %.loopexit.i ], [ 1, %.lr.ph78.i.preheader ] ; 4 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv96.i
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !14 ; 8 uses
  %indvars.iv.next97.i = add nuw nsw i64 %indvars.iv96.i, 1 ; 3 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next97.i
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !14 ; 13 uses
  %i.ex = trunc nuw nsw i64 %indvars.iv96.i to i32
  %i.ey = sub i32 %i.q, %i.ex                     ; 10 uses
  %i.ez = sub i32 %spec.store.select, %i.ey       ; 3 uses
  %.not56.i = icmp ult i32 %i.ez, %i.cw
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv96.i
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !14 ; 14 uses
  br i1 %.not56.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %.lr.ph78.i
  %i.fc = and i32 %i.ez, 31
  %i.fd = shl nuw i32 1, %i.fc                    ; 4 uses
  %.not5766.i = icmp eq i32 %i.eu, %i.ew
  br i1 %.not5766.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.fe = add i32 %i.ey, %i.ep                    ; 3 uses
  %spec.store.select.i = call i32 @llvm.smax.i32(i32 %i.fe, i32 1)
  %i.ff = zext i32 %i.ey to i64
  %i.fg = getelementptr inbounds nuw [52 x i8], ptr %3, i64 %i.ff ; 2 uses
  %i.fh = icmp sgt i32 %i.fe, 1
  %i.fi = shl i32 %i.ey, 16
  %i.fj = add i32 %i.fi, 16777216                 ; 9 uses
  %i.fk = zext nneg i32 %spec.store.select.i to i64 ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.fk ; 2 uses
  %.not61.i = icmp sgt i32 %i.fe, %.091
  %i.fm = add i32 %i.ey, %i.q
  %i.fn = sext i32 %i.eu to i64                   ; 12 uses
  br i1 %.not61.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  switch i32 %i.fd, label %.preheader.i.us.i [
    i32 2, label %.loopexit.i.us.us.i.preheader
    i32 4, label %.loopexit.i.us.us74.i.preheader
  ]

.loopexit.i.us.us.i.preheader:                    ; preds = %.lr.ph.split.us.i
  %i.fo = sub i32 %i.ew, %i.eu
  %.neg415 = add i32 %i.eu, 1
  %xtraiter390 = and i32 %i.fo, 1
  %lcmp.mod391.not = icmp eq i32 %xtraiter390, 0
  br i1 %lcmp.mod391.not, label %.loopexit.i.us.us.i.prol.loopexit, label %.loopexit.i.us.us.i.prol

.loopexit.i.us.us.i.prol:                         ; preds = %.loopexit.i.us.us.i.preheader
  %i.fp = sext i32 %i.fb to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.fp
  %i.fr = getelementptr inbounds i8, ptr %i.eo, i64 %i.fn
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !129
  %i.ft = zext i8 %i.fs to i32
  %i.fu = or disjoint i32 %i.fj, %i.ft
  %i.fv = zext i32 %i.fu to i64
  %i.fw = mul nuw i64 %i.fv, 4294967297
  store i64 %i.fw, ptr %i.fq, align 2
  %i.fx = add i32 %i.fb, 2
  %indvars.iv.next91.i.prol = add nsw i64 %i.fn, 1
  br label %.loopexit.i.us.us.i.prol.loopexit

.loopexit.i.us.us.i.prol.loopexit:                ; preds = %.loopexit.i.us.us.i.prol, %.loopexit.i.us.us.i.preheader
  %indvars.iv90.i.unr = phi i64 [ %i.fn, %.loopexit.i.us.us.i.preheader ], [ %indvars.iv.next91.i.prol, %.loopexit.i.us.us.i.prol ]
  %.05267.us.us.i.unr = phi i32 [ %i.fb, %.loopexit.i.us.us.i.preheader ], [ %i.fx, %.loopexit.i.us.us.i.prol ]
  %i.fy = icmp eq i32 %i.ew, %.neg415
  br i1 %i.fy, label %.loopexit.i, label %.loopexit.i.us.us.i

.loopexit.i.us.us74.i.preheader:                  ; preds = %.lr.ph.split.us.i
  %i.fz = xor i32 %i.eu, -1
  %i.ga = add i32 %i.ew, %i.fz                    ; 2 uses
  %i.gb = zext i32 %i.ga to i64                   ; 3 uses
  %i.gc = add nuw nsw i64 %i.gb, 1                ; 2 uses
  %min.iters.check257 = icmp ult i32 %i.ga, 31
  br i1 %min.iters.check257, label %.loopexit.i.us.us74.i.preheader343, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.loopexit.i.us.us74.i.preheader
  %i.gd = xor i32 %i.eu, -1
  %i.ge = add i32 %i.ew, %i.gd                    ; 2 uses
  %mul.result = shl i32 %i.ge, 2
  %mul.overflow = icmp ugt i32 %i.ge, 1073741823
  %i.gf = add i32 %i.fb, %mul.result
  %i.gg = icmp slt i32 %i.gf, %i.fb
  %i.gh = or i1 %i.gg, %mul.overflow
  br i1 %i.gh, label %.loopexit.i.us.us74.i.preheader343, label %vector.memcheck258

vector.memcheck258:                               ; preds = %vector.scevcheck
  %i.gi = getelementptr i8, ptr %i.eo, i64 %i.fn
  %i.gj = getelementptr i8, ptr %scevgep255, i64 %i.fn
  %i.gk = getelementptr i8, ptr %i.gj, i64 %i.gb
  %i.gl = sext i32 %i.fb to i64
  %i.gm = shl nsw i64 %i.gl, 2                    ; 2 uses
  %i.gn = getelementptr i8, ptr %i.e, i64 %i.gm
  %i.go = shl nuw nsw i64 %i.gb, 4
  %i.gp = getelementptr i8, ptr %scevgep, i64 %i.go
  %i.gq = getelementptr i8, ptr %i.gp, i64 %i.gm
  %bound0259 = icmp ult ptr %i.gi, %i.gq
  %bound1260 = icmp ult ptr %i.gn, %i.gk
  %found.conflict261 = and i1 %bound0259, %bound1260
  br i1 %found.conflict261, label %.loopexit.i.us.us74.i.preheader343, label %vector.ph262

vector.ph262:                                     ; preds = %vector.memcheck258
  %n.vec263 = and i64 %i.gc, 8589934590           ; 4 uses
  %i.gr = add nsw i64 %n.vec263, %i.fn
  %i.gs = trunc i64 %n.vec263 to i32
  %i.gt = shl i32 %i.gs, 2
  %i.gu = add i32 %i.fb, %i.gt
  %broadcast.splatinsert264 = insertelement <2 x i32> poison, i32 %i.fj, i64 0
  %broadcast.splat265 = shufflevector <2 x i32> %broadcast.splatinsert264, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body266

vector.body266:                                   ; preds = %vector.body266, %vector.ph262
  %index267 = phi i64 [ 0, %vector.ph262 ], [ %index.next272, %vector.body266 ] ; 3 uses
  %i.gv = add i64 %index267, %i.fn                ; 2 uses
  %i.gw = trunc i64 %index267 to i32
  %i.gx = shl i32 %i.gw, 2
  %i.gy = add i32 %i.fb, %i.gx                    ; 2 uses
  %i.gz = add i32 %i.gy, 4
  %i.ha = sext i32 %i.gy to i64
  %i.hb = sext i32 %i.gz to i64
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ha
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.hb
  %i.he = getelementptr inbounds i8, ptr %i.eo, i64 %i.gv
  %i.hf = getelementptr i8, ptr %i.eo, i64 %i.gv
  %i.hg = getelementptr i8, ptr %i.hf, i64 1
  %i.hh = load i8, ptr %i.he, align 1, !tbaa !129, !alias.scope !130, !noalias !131
  %broadcast.splatinsert268 = insertelement <2 x i8> poison, i8 %i.hh, i64 0
  %broadcast.splat269 = shufflevector <2 x i8> %broadcast.splatinsert268, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.hi = load i8, ptr %i.hg, align 1, !tbaa !129, !alias.scope !130, !noalias !131
  %broadcast.splatinsert270 = insertelement <2 x i8> poison, i8 %i.hi, i64 0
  %broadcast.splat271 = shufflevector <2 x i8> %broadcast.splatinsert270, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.hj = zext <2 x i8> %broadcast.splat269 to <2 x i32>
  %i.hk = zext <2 x i8> %broadcast.splat271 to <2 x i32>
  %i.hl = or disjoint <2 x i32> %broadcast.splat265, %i.hj
  %i.hm = or disjoint <2 x i32> %broadcast.splat265, %i.hk
  %i.hn = zext <2 x i32> %i.hl to <2 x i64>
  %i.ho = zext <2 x i32> %i.hm to <2 x i64>
  %i.hp = mul nuw <2 x i64> %i.hn, splat (i64 4294967297)
  %i.hq = mul nuw <2 x i64> %i.ho, splat (i64 4294967297)
  store <2 x i64> %i.hp, ptr %i.hc, align 2, !alias.scope !131
  store <2 x i64> %i.hq, ptr %i.hd, align 2, !alias.scope !131
  %index.next272 = add nuw i64 %index267, 2       ; 2 uses
  %i.hr = icmp eq i64 %index.next272, %n.vec263
  br i1 %i.hr, label %middle.block273, label %vector.body266, !llvm.loop !91

middle.block273:                                  ; preds = %vector.body266
  %cmp.n274 = icmp eq i64 %i.gc, %n.vec263
  br i1 %cmp.n274, label %.loopexit.i, label %.loopexit.i.us.us74.i.preheader343

.loopexit.i.us.us74.i.preheader343:               ; preds = %vector.memcheck258, %vector.scevcheck, %.loopexit.i.us.us74.i.preheader, %middle.block273
  %indvars.iv87.i.ph = phi i64 [ %i.fn, %vector.memcheck258 ], [ %i.fn, %vector.scevcheck ], [ %i.fn, %.loopexit.i.us.us74.i.preheader ], [ %i.gr, %middle.block273 ] ; 4 uses
  %.05267.us.us73.i.ph = phi i32 [ %i.fb, %vector.memcheck258 ], [ %i.fb, %vector.scevcheck ], [ %i.fb, %.loopexit.i.us.us74.i.preheader ], [ %i.gu, %middle.block273 ] ; 3 uses
  %i.hs = trunc i64 %indvars.iv87.i.ph to i32     ; 2 uses
  %i.ht = sub i32 %i.ew, %i.hs
  %.neg = add i32 %i.hs, 1
  %xtraiter387 = and i32 %i.ht, 1
  %lcmp.mod388.not = icmp eq i32 %xtraiter387, 0
  br i1 %lcmp.mod388.not, label %.loopexit.i.us.us74.i.prol.loopexit, label %.loopexit.i.us.us74.i.prol

.loopexit.i.us.us74.i.prol:                       ; preds = %.loopexit.i.us.us74.i.preheader343
  %i.hu = sext i32 %.05267.us.us73.i.ph to i64
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.hu ; 2 uses
  %i.hw = getelementptr inbounds i8, ptr %i.eo, i64 %indvars.iv87.i.ph
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !129
  %i.hy = zext i8 %i.hx to i32
  %i.hz = or disjoint i32 %i.fj, %i.hy
  %i.ia = zext i32 %i.hz to i64
  %i.ib = mul nuw i64 %i.ia, 4294967297           ; 2 uses
  store i64 %i.ib, ptr %i.hv, align 2
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store i64 %i.ib, ptr %i.ic, align 2
  %i.id = add i32 %.05267.us.us73.i.ph, 4
  %indvars.iv.next88.i.prol = add nsw i64 %indvars.iv87.i.ph, 1
  br label %.loopexit.i.us.us74.i.prol.loopexit

.loopexit.i.us.us74.i.prol.loopexit:              ; preds = %.loopexit.i.us.us74.i.prol, %.loopexit.i.us.us74.i.preheader343
  %indvars.iv87.i.unr = phi i64 [ %indvars.iv87.i.ph, %.loopexit.i.us.us74.i.preheader343 ], [ %indvars.iv.next88.i.prol, %.loopexit.i.us.us74.i.prol ]
  %.05267.us.us73.i.unr = phi i32 [ %.05267.us.us73.i.ph, %.loopexit.i.us.us74.i.preheader343 ], [ %i.id, %.loopexit.i.us.us74.i.prol ]
  %i.ie = icmp eq i32 %i.ew, %.neg
  br i1 %i.ie, label %.loopexit.i, label %.loopexit.i.us.us74.i

.loopexit.i.us.us.i:                              ; preds = %.loopexit.i.us.us.i.prol.loopexit, %.loopexit.i.us.us.i
  %indvars.iv90.i = phi i64 [ %indvars.iv.next91.i.1, %.loopexit.i.us.us.i ], [ %indvars.iv90.i.unr, %.loopexit.i.us.us.i.prol.loopexit ] ; 3 uses
  %.05267.us.us.i = phi i32 [ %i.ix, %.loopexit.i.us.us.i ], [ %.05267.us.us.i.unr, %.loopexit.i.us.us.i.prol.loopexit ] ; 3 uses
  %i.if = sext i32 %.05267.us.us.i to i64
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.if
  %i.ih = getelementptr inbounds i8, ptr %i.eo, i64 %indvars.iv90.i
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !129
  %i.ij = zext i8 %i.ii to i32
  %i.ik = or disjoint i32 %i.fj, %i.ij
  %i.il = zext i32 %i.ik to i64
  %i.im = mul nuw i64 %i.il, 4294967297
  store i64 %i.im, ptr %i.ig, align 2
  %i.in = add i32 %.05267.us.us.i, 2
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.io
  %i.iq = getelementptr i8, ptr %i.eo, i64 %indvars.iv90.i
  %i.ir = getelementptr i8, ptr %i.iq, i64 1
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !129
  %i.it = zext i8 %i.is to i32
  %i.iu = or disjoint i32 %i.fj, %i.it
  %i.iv = zext i32 %i.iu to i64
  %i.iw = mul nuw i64 %i.iv, 4294967297
  store i64 %i.iw, ptr %i.ip, align 2
  %i.ix = add i32 %.05267.us.us.i, 4
  %indvars.iv.next91.i.1 = add nsw i64 %indvars.iv90.i, 2 ; 2 uses
  %i.iy = trunc nsw i64 %indvars.iv.next91.i.1 to i32
  %.not57.us.us.i.1 = icmp eq i32 %i.ew, %i.iy
  br i1 %.not57.us.us.i.1, label %.loopexit.i, label %.loopexit.i.us.us.i, !llvm.loop !92

.loopexit.i.us.us74.i:                            ; preds = %.loopexit.i.us.us74.i.prol.loopexit, %.loopexit.i.us.us74.i
  %indvars.iv87.i = phi i64 [ %indvars.iv.next88.i.1, %.loopexit.i.us.us74.i ], [ %indvars.iv87.i.unr, %.loopexit.i.us.us74.i.prol.loopexit ] ; 3 uses
  %.05267.us.us73.i = phi i32 [ %i.jt, %.loopexit.i.us.us74.i ], [ %.05267.us.us73.i.unr, %.loopexit.i.us.us74.i.prol.loopexit ] ; 3 uses
  %i.iz = sext i32 %.05267.us.us73.i to i64
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.iz ; 2 uses
  %i.jb = getelementptr inbounds i8, ptr %i.eo, i64 %indvars.iv87.i
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !129
  %i.jd = zext i8 %i.jc to i32
  %i.je = or disjoint i32 %i.fj, %i.jd
  %i.jf = zext i32 %i.je to i64
  %i.jg = mul nuw i64 %i.jf, 4294967297           ; 2 uses
  store i64 %i.jg, ptr %i.ja, align 2
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  store i64 %i.jg, ptr %i.jh, align 2
  %i.ji = add i32 %.05267.us.us73.i, 4
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.jj ; 2 uses
  %i.jl = getelementptr i8, ptr %i.eo, i64 %indvars.iv87.i
  %i.jm = getelementptr i8, ptr %i.jl, i64 1
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !129
  %i.jo = zext i8 %i.jn to i32
  %i.jp = or disjoint i32 %i.fj, %i.jo
  %i.jq = zext i32 %i.jp to i64
  %i.jr = mul nuw i64 %i.jq, 4294967297           ; 2 uses
  store i64 %i.jr, ptr %i.jk, align 2
  %i.js = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  store i64 %i.jr, ptr %i.js, align 2
  %i.jt = add i32 %.05267.us.us73.i, 8
  %indvars.iv.next88.i.1 = add nsw i64 %indvars.iv87.i, 2 ; 2 uses
  %i.ju = trunc nsw i64 %indvars.iv.next88.i.1 to i32
  %.not57.us.us75.i.1 = icmp eq i32 %i.ew, %i.ju
  br i1 %.not57.us.us75.i.1, label %.loopexit.i, label %.loopexit.i.us.us74.i, !llvm.loop !93

.preheader.i.us.i:                                ; preds = %.lr.ph.split.us.i, %.loopexit.i.us.i
  %indvars.iv93.i = phi i64 [ %indvars.iv.next94.i, %.loopexit.i.us.i ], [ %i.fn, %.lr.ph.split.us.i ] ; 2 uses
  %.05267.us.i = phi i32 [ %i.lb, %.loopexit.i.us.i ], [ %i.fb, %.lr.ph.split.us.i ] ; 2 uses
  %i.jv = sext i32 %.05267.us.i to i64
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.jv ; 9 uses
  %6 = load i32, ptr %i.fl, align 4, !tbaa !14    ; 3 uses
  %i.jx = icmp sgt i32 %6, 0
  br i1 %i.jx, label %.lr.ph.preheader.i.us.i, label %.loopexit.i.us.i

.lr.ph.preheader.i.us.i:                          ; preds = %.preheader.i.us.i
  %i.jy = getelementptr inbounds i8, ptr %i.eo, i64 %indvars.iv93.i
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !129
  %i.ka = zext i8 %i.jz to i32
  %i.kb = or disjoint i32 %i.fj, %i.ka
  %i.kc = zext i32 %i.kb to i64
  %i.kd = mul nuw i64 %i.kc, 4294967297
  %i.ke = zext nneg i32 %6 to i64
  %i.kf = insertelement <4 x i64> poison, i64 %i.kd, i64 0
  %i.kg = shufflevector <4 x i64> %i.kf, <4 x i64> poison, <4 x i32> zeroinitializer ; 9 uses
  %i.kh = add nsw i64 %i.ke, -1
  %i.ki = lshr i64 %i.kh, 3
  %i.kj = add nuw nsw i64 %i.ki, 1                ; 2 uses
  %xtraiter393 = and i64 %i.kj, 7                 ; 3 uses
  %i.kk = icmp ult i32 %6, 57
  br i1 %i.kk, label %.lr.ph.i.us.i.epil.preheader, label %.lr.ph.preheader.i.us.i.new

.lr.ph.preheader.i.us.i.new:                      ; preds = %.lr.ph.preheader.i.us.i
  %unroll_iter397 = and i64 %i.kj, 4611686018427387896
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i.us.i, %.lr.ph.preheader.i.us.i.new
  %indvars.iv.i.us.i = phi i64 [ 0, %.lr.ph.preheader.i.us.i.new ], [ %indvars.iv.next.i.us.i.7, %.lr.ph.i.us.i ] ; 9 uses
  %niter398 = phi i64 [ 0, %.lr.ph.preheader.i.us.i.new ], [ %niter398.next.7, %.lr.ph.i.us.i ]
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv.i.us.i
  store <4 x i64> %i.kg, ptr %i.kl, align 2
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv.i.us.i
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 32
  store <4 x i64> %i.kg, ptr %i.kn, align 2
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv.i.us.i
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 64
  store <4 x i64> %i.kg, ptr %i.kp, align 2
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv.i.us.i
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 96
  store <4 x i64> %i.kg, ptr %i.kr, align 2
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv.i.us.i
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 128
  store <4 x i64> %i.kg, ptr %i.kt, align 2
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv.i.us.i
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 160
  store <4 x i64> %i.kg, ptr %i.kv, align 2
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv.i.us.i
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 192
  store <4 x i64> %i.kg, ptr %i.kx, align 2
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv.i.us.i
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 224
  store <4 x i64> %i.kg, ptr %i.kz, align 2
  %indvars.iv.next.i.us.i.7 = add nuw nsw i64 %indvars.iv.i.us.i, 64 ; 2 uses
  %niter398.next.7 = add nuw nsw i64 %niter398, 8 ; 2 uses
  %niter398.ncmp.7.not = icmp eq i64 %niter398.next.7, %unroll_iter397
  br i1 %niter398.ncmp.7.not, label %.loopexit.i.us.i.loopexit.unr-lcssa, label %.lr.ph.i.us.i, !llvm.loop !94

.loopexit.i.us.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.i.us.i
  %lcmp.mod395.not = icmp eq i64 %xtraiter393, 0
  br i1 %lcmp.mod395.not, label %.loopexit.i.us.i, label %.lr.ph.i.us.i.epil.preheader

.lr.ph.i.us.i.epil.preheader:                     ; preds = %.loopexit.i.us.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.us.i
  %indvars.iv.i.us.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.us.i ], [ %indvars.iv.next.i.us.i.7, %.loopexit.i.us.i.loopexit.unr-lcssa ]
  %lcmp.mod396 = icmp ne i64 %xtraiter393, 0
  call void @llvm.assume(i1 %lcmp.mod396)
  br label %.lr.ph.i.us.i.epil

.lr.ph.i.us.i.epil:                               ; preds = %.lr.ph.i.us.i.epil, %.lr.ph.i.us.i.epil.preheader
  %indvars.iv.i.us.i.epil = phi i64 [ %indvars.iv.i.us.i.epil.init, %.lr.ph.i.us.i.epil.preheader ], [ %indvars.iv.next.i.us.i.epil, %.lr.ph.i.us.i.epil ] ; 2 uses
  %epil.iter394 = phi i64 [ 0, %.lr.ph.i.us.i.epil.preheader ], [ %epil.iter394.next, %.lr.ph.i.us.i.epil ]
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv.i.us.i.epil
  store <4 x i64> %i.kg, ptr %i.la, align 2
  %indvars.iv.next.i.us.i.epil = add nuw nsw i64 %indvars.iv.i.us.i.epil, 8
  %epil.iter394.next = add i64 %epil.iter394, 1   ; 2 uses
  %epil.iter394.cmp.not = icmp eq i64 %epil.iter394.next, %xtraiter393
  br i1 %epil.iter394.cmp.not, label %.loopexit.i.us.i, label %.lr.ph.i.us.i.epil, !llvm.loop !95

.loopexit.i.us.i:                                 ; preds = %.loopexit.i.us.i.loopexit.unr-lcssa, %.lr.ph.i.us.i.epil, %.preheader.i.us.i
  %i.lb = add i32 %.05267.us.i, %i.fd
  %indvars.iv.next94.i = add nsw i64 %indvars.iv93.i, 1 ; 2 uses
  %i.lc = trunc nsw i64 %indvars.iv.next94.i to i32
  %.not57.us.i = icmp eq i32 %i.ew, %i.lc
  br i1 %.not57.us.i, label %.loopexit.i, label %.preheader.i.us.i, !llvm.loop !92

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZN11duckdb_zstdL22HUF_fillDTableX2Level2EPNS_10HUF_DEltX2EjjPKjiiPKNS_14sortedSymbol_tES3_jt.exit.loopexit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN11duckdb_zstdL22HUF_fillDTableX2Level2EPNS_10HUF_DEltX2EjjPKjiiPKNS_14sortedSymbol_tES3_jt.exit.loopexit.i ], [ %i.fn, %.lr.ph.i ] ; 2 uses
  %.05267.i = phi i32 [ %i.vd, %_ZN11duckdb_zstdL22HUF_fillDTableX2Level2EPNS_10HUF_DEltX2EjjPKjiiPKNS_14sortedSymbol_tES3_jt.exit.loopexit.i ], [ %i.fb, %.lr.ph.i ] ; 2 uses
  %i.ld = sext i32 %.05267.i to i64               ; 3 uses
  %i.le = getelementptr [4 x i8], ptr %i.e, i64 %i.ld ; 13 uses
  %i.lf = getelementptr inbounds i8, ptr %i.eo, i64 %indvars.iv.i
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !129
  %i.lh = zext i8 %i.lg to i32                    ; 2 uses
  br i1 %i.fh, label %bb.i, label %.loopexit.i.i

bb.i:                                             ; preds = %.lr.ph.split.i
  %i.li = or disjoint i32 %i.fj, %i.lh
  %i.lj = zext i32 %i.li to i64
  %i.lk = mul nuw i64 %i.lj, 4294967297           ; 4 uses
  %i.ll = load i32, ptr %i.fl, align 4, !tbaa !14 ; 3 uses
  switch i32 %i.fd, label %.preheader.i.i [
    i32 2, label %bb.j
    i32 4, label %bb.k
  ]

.preheader.i.i:                                   ; preds = %bb.i
  %i.lm = icmp sgt i32 %i.ll, 0
  br i1 %i.lm, label %.lr.ph.preheader.i.i, label %.loopexit.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %i.ln = zext nneg i32 %i.ll to i64
  %i.lo = insertelement <4 x i64> poison, i64 %i.lk, i64 0
  %i.lp = shufflevector <4 x i64> %i.lo, <4 x i64> poison, <4 x i32> zeroinitializer ; 9 uses
  %i.lq = add nsw i64 %i.ln, -1
  %i.lr = lshr i64 %i.lq, 3
  %i.ls = add nuw nsw i64 %i.lr, 1                ; 2 uses
  %xtraiter362 = and i64 %i.ls, 7                 ; 3 uses
  %i.lt = icmp ult i32 %i.ll, 57
  br i1 %i.lt, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter366 = and i64 %i.ls, 4611686018427387896
  br label %.lr.ph.i.i

bb.j:                                             ; preds = %bb.i
  store i64 %i.lk, ptr %i.le, align 2
  br label %.loopexit.i.i

bb.k:                                             ; preds = %bb.i
  store i64 %i.lk, ptr %i.le, align 2
  %i.lu = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  store i64 %i.lk, ptr %i.lu, align 2
  br label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.7, %.lr.ph.i.i ] ; 9 uses
  %niter367 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter367.next.7, %.lr.ph.i.i ]
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv.i.i
  store <4 x i64> %i.lp, ptr %i.lv, align 2
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv.i.i
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 32
  store <4 x i64> %i.lp, ptr %i.lx, align 2
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv.i.i
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 64
  store <4 x i64> %i.lp, ptr %i.lz, align 2
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv.i.i
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 96
  store <4 x i64> %i.lp, ptr %i.mb, align 2
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv.i.i
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 128
  store <4 x i64> %i.lp, ptr %i.md, align 2
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv.i.i
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 160
  store <4 x i64> %i.lp, ptr %i.mf, align 2
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv.i.i
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 192
  store <4 x i64> %i.lp, ptr %i.mh, align 2
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv.i.i
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 224
  store <4 x i64> %i.lp, ptr %i.mj, align 2
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 64 ; 2 uses
  %niter367.next.7 = add nuw nsw i64 %niter367, 8 ; 2 uses
  %niter367.ncmp.7.not = icmp eq i64 %niter367.next.7, %unroll_iter366
  br i1 %niter367.ncmp.7.not, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !94

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i
  %lcmp.mod364.not = icmp eq i64 %xtraiter362, 0
  br i1 %lcmp.mod364.not, label %.loopexit.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.7, %.loopexit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod365 = icmp ne i64 %xtraiter362, 0
  call void @llvm.assume(i1 %lcmp.mod365)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ] ; 2 uses
  %epil.iter363 = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter363.next, %.lr.ph.i.i.epil ]
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv.i.i.epil
  store <4 x i64> %i.lp, ptr %i.mk, align 2
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 8
  %epil.iter363.next = add i64 %epil.iter363, 1   ; 2 uses
  %epil.iter363.cmp.not = icmp eq i64 %epil.iter363.next, %xtraiter362
  br i1 %epil.iter363.cmp.not, label %.loopexit.i.i, label %.lr.ph.i.i.epil, !llvm.loop !96

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.k, %bb.j, %.preheader.i.i, %.lr.ph.split.i
  %invariant.op139 = or disjoint i32 %i.lh, 33554432 ; 5 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, %.loopexit.i.i
  %indvars.iv55.i.i = phi i64 [ %i.fk, %.loopexit.i.i ], [ %indvars.iv.next56.i.i, %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i ] ; 4 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv55.i.i
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !14 ; 2 uses
  %indvars.iv.next56.i.i = add nuw nsw i64 %indvars.iv55.i.i, 1 ; 3 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next56.i.i
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !14 ; 2 uses
  %i.mp = trunc nuw nsw i64 %indvars.iv55.i.i to i32
  %i.mq = sub i32 %i.fm, %i.mp                    ; 6 uses
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv55.i.i
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !14
  %i.mt = zext i32 %i.ms to i64                   ; 3 uses
  %i.mu = getelementptr [4 x i8], ptr %i.le, i64 %i.mt ; 20 uses
  %i.mv = sext i32 %i.mm to i64                   ; 9 uses
  %i.mw = getelementptr i8, ptr %i.eo, i64 %i.mv  ; 16 uses
  %i.mx = sext i32 %i.mo to i64                   ; 13 uses
  %i.my = getelementptr i8, ptr %i.eo, i64 %i.mx  ; 7 uses
  %i.mz = sub i32 %spec.store.select, %i.mq
  %i.na = and i32 %i.mz, 31                       ; 2 uses
  %i.nb = shl nuw i32 1, %i.na
  %.not82116.i.i = icmp eq i32 %i.mm, %i.mo       ; 5 uses
  switch i32 %i.na, label %.preheader.i60.i [
    i32 0, label %.preheader84.i.i
    i32 1, label %.preheader86.i.i
    i32 2, label %.preheader88.i.i
    i32 3, label %.preheader90.i.i
  ]

.preheader90.i.i:                                 ; preds = %bb.l
  br i1 %.not82116.i.i, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %.lr.ph.i58.i

.lr.ph.i58.i:                                     ; preds = %.preheader90.i.i
  %i.nc = shl i32 %i.mq, 16
  %invariant.op.reass = add i32 %i.nc, %invariant.op139 ; 3 uses
  %i.nd = sub nsw i64 %i.mx, %i.mv
  %xtraiter368 = and i64 %i.nd, 1
  %lcmp.mod369.not = icmp eq i64 %xtraiter368, 0
  br i1 %lcmp.mod369.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i58.i
  %i.ne = load i8, ptr %i.mw, align 1, !tbaa !129
  %i.nf = zext i8 %i.ne to i32
  %i.ng = shl nuw nsw i32 %i.nf, 8
  %.reass.reass.i.reass.i.reass.prol = or disjoint i32 %i.ng, %invariant.op.reass
  %i.nh = zext i32 %.reass.reass.i.reass.i.reass.prol to i64
  %i.ni = mul nuw i64 %i.nh, 4294967297           ; 4 uses
  store i64 %i.ni, ptr %i.mu, align 2
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  store i64 %i.ni, ptr %i.nj, align 2
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  store i64 %i.ni, ptr %i.nk, align 2
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mu, i64 24
  store i64 %i.ni, ptr %i.nl, align 2
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mu, i64 32
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mw, i64 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i58.i
  %.394.i.i.unr = phi ptr [ %i.mu, %.lr.ph.i58.i ], [ %i.nm, %.prol.loopexit.unr-lcssa ]
  %.37793.i.i.unr = phi ptr [ %i.mw, %.lr.ph.i58.i ], [ %i.nn, %.prol.loopexit.unr-lcssa ]
  %i.no = add nsw i64 %i.mx, -1
  %i.np = icmp eq i64 %i.no, %i.mv
  br i1 %i.np, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %.lr.ph.i58.i.new

.preheader88.i.i:                                 ; preds = %bb.l
  br i1 %.not82116.i.i, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %.lr.ph98.i.i

.lr.ph98.i.i:                                     ; preds = %.preheader88.i.i
  %i.nq = shl i32 %i.mq, 16
  %invariant.op135.reass = add i32 %i.nq, %invariant.op139 ; 5 uses
  %i.nr = sub nsw i64 %i.mx, %i.mv
  %xtraiter373 = and i64 %i.nr, 3                 ; 2 uses
  %lcmp.mod374.not = icmp eq i64 %xtraiter373, 0
  br i1 %lcmp.mod374.not, label %.prol.loopexit372, label %.prol.preheader371

.prol.preheader371:                               ; preds = %.lr.ph98.i.i, %.prol.preheader371
  %.297.i.i.prol = phi ptr [ %i.ny, %.prol.preheader371 ], [ %i.mu, %.lr.ph98.i.i ] ; 3 uses
  %.27696.i.i.prol = phi ptr [ %i.nz, %.prol.preheader371 ], [ %i.mw, %.lr.ph98.i.i ] ; 2 uses
  %prol.iter375 = phi i64 [ %prol.iter375.next, %.prol.preheader371 ], [ 0, %.lr.ph98.i.i ]
  %i.ns = load i8, ptr %.27696.i.i.prol, align 1, !tbaa !129
  %i.nt = zext i8 %i.ns to i32
  %i.nu = shl nuw nsw i32 %i.nt, 8
  %.reass100.reass.i.reass.i.reass.prol = or disjoint i32 %i.nu, %invariant.op135.reass
  %i.nv = zext i32 %.reass100.reass.i.reass.i.reass.prol to i64
  %i.nw = mul nuw i64 %i.nv, 4294967297           ; 2 uses
  store i64 %i.nw, ptr %.297.i.i.prol, align 2
  %i.nx = getelementptr inbounds nuw i8, ptr %.297.i.i.prol, i64 8
  store i64 %i.nw, ptr %i.nx, align 2
  %i.ny = getelementptr inbounds nuw i8, ptr %.297.i.i.prol, i64 16 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.27696.i.i.prol, i64 1 ; 2 uses
end_hunk_0
