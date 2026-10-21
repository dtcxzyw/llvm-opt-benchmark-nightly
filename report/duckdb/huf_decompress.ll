Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/huf_decompress?download=true
inline.NumInlined: 722
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN11duckdb_zstd21HUF_readDTableX2_wkspEPjPKvmPvmi:bb.a
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
  %niter346.next.1 = add nuw i64 %niter346, 2     ; 2 uses
  %niter346.ncmp.1 = icmp eq i64 %niter346.next.1, %unroll_iter345
  br i1 %niter346.ncmp.1, label %._crit_edge126.unr-lcssa, label %.lr.ph125, !llvm.loop !80

._crit_edge126.unr-lcssa:                         ; preds = %.lr.ph125
  %lcmp.mod343.not = icmp eq i64 %xtraiter341, 0
  br i1 %lcmp.mod343.not, label %._crit_edge126, label %.lr.ph125.epil.preheader

.lr.ph125.epil.preheader:                         ; preds = %._crit_edge126.unr-lcssa, %.lr.ph125.preheader
  %indvars.iv165.epil.init = phi i64 [ 1, %.lr.ph125.preheader ], [ %indvars.iv.next166.1, %._crit_edge126.unr-lcssa ]
  %.090122.epil.init = phi i32 [ 0, %.lr.ph125.preheader ], [ %i.ct, %._crit_edge126.unr-lcssa ]
  %lcmp.mod344 = trunc i64 %i.cf to i1
  call void @llvm.assume(i1 %lcmp.mod344)
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
  %i.dh = mul i64 %i.dg, 52
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
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge130, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph129, %middle.block
  %indvars.iv171.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph129 ], [ %i.dd, %middle.block ] ; 4 uses
  %i.dr = sub nsw i64 %wide.trip.count169, %indvars.iv171.ph
  %xtraiter347 = and i64 %i.dr, 3                 ; 2 uses
  %lcmp.mod348.not = icmp eq i64 %xtraiter347, 0
  br i1 %lcmp.mod348.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

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
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter347
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !82

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
  br i1 %exitcond176.not.3, label %._crit_edge130, label %scalar.ph, !llvm.loop !83

._crit_edge130:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next180 to i32
  %exitcond184.not = icmp eq i32 %i.db, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond184.not, label %._crit_edge134.split, label %.lr.ph129, !llvm.loop !84

._crit_edge134.split:                             ; preds = %._crit_edge130, %._crit_edge126
  %i.eo = getelementptr i8, ptr %3, i64 736       ; 14 uses
  %i.ep = sub nsw i32 %i.q, %spec.store.select
  %.not76.i = icmp slt i32 %.091, 1
  br i1 %.not76.i, label %_ZN11duckdb_zstdL16HUF_fillDTableX2EPNS_10HUF_DEltX2EjPKNS_14sortedSymbol_tEPKjPA13_jjj.exit, label %.lr.ph78.i.preheader

.lr.ph78.i.preheader:                             ; preds = %._crit_edge134.split
  %scevgep = getelementptr i8, ptr %0, i64 4
  %scevgep244 = getelementptr i8, ptr %3, i64 736
  %scevgep246.a = getelementptr i8, ptr %3, i64 737
  %scevgep248.a = getelementptr i8, ptr %0, i64 4
  %scevgep250.a = getelementptr i8, ptr %0, i64 20
  %scevgep273 = getelementptr i8, ptr %0, i64 4
  %scevgep296 = getelementptr i8, ptr %0, i64 4
  %i.eq = add i64 %i.a, 735
  %i.er = add i64 %i.a, 735
  %i.es = add i64 %i.a, 735
  br label %.lr.ph78.i

.lr.ph78.i:                                       ; preds = %.lr.ph78.i.preheader, %.loopexit.i
  %indvars.iv96.i = phi i64 [ %indvars.iv.next97.i, %.loopexit.i ], [ 1, %.lr.ph78.i.preheader ] ; 4 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv96.i
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !14 ; 9 uses
  %indvars.iv.next97.i = add nuw nsw i64 %indvars.iv96.i, 1 ; 3 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next97.i
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !14 ; 14 uses
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
  %.neg402 = add i32 %i.eu, 1
  %xtraiter377 = and i32 %i.fo, 1
  %lcmp.mod378.not = icmp eq i32 %xtraiter377, 0
  br i1 %lcmp.mod378.not, label %.loopexit.i.us.us.i.prol.loopexit, label %.loopexit.i.us.us.i.prol

.loopexit.i.us.us.i.prol:                         ; preds = %.loopexit.i.us.us.i.preheader
  %i.fp = sext i32 %i.fb to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.fp
  %i.fr = getelementptr inbounds i8, ptr %i.eo, i64 %i.fn
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !125
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
  %i.fy = icmp eq i32 %i.ew, %.neg402
  br i1 %i.fy, label %.loopexit.i, label %.loopexit.i.us.us.i

.loopexit.i.us.us74.i.preheader:                  ; preds = %.lr.ph.split.us.i
  %i.fz = xor i32 %i.eu, -1
  %i.ga = add i32 %i.ew, %i.fz                    ; 2 uses
  %i.gb = zext i32 %i.ga to i64
  %i.gc = add nuw nsw i64 %i.gb, 1                ; 2 uses
  %min.iters.check256 = icmp ult i32 %i.ga, 31
  br i1 %min.iters.check256, label %.loopexit.i.us.us74.i.preheader330, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.loopexit.i.us.us74.i.preheader
  %i.gd = xor i32 %i.eu, -1
  %i.ge = add i32 %i.ew, %i.gd                    ; 2 uses
  %mul.result = shl i32 %i.ge, 2
  %mul.overflow = icmp ugt i32 %i.ge, 1073741823
  %i.gf = add i32 %i.fb, %mul.result
  %i.gg = icmp slt i32 %i.gf, %i.fb
  %i.gh = or i1 %i.gg, %mul.overflow
  br i1 %i.gh, label %.loopexit.i.us.us74.i.preheader330, label %vector.memcheck243

vector.memcheck243:                               ; preds = %vector.scevcheck
  %scevgep245 = getelementptr i8, ptr %scevgep244, i64 %i.fn
  %i.gi = xor i32 %i.eu, -1
  %i.gj = add i32 %i.ew, %i.gi
  %i.gk = zext i32 %i.gj to i64                   ; 2 uses
  %i.gl = getelementptr i8, ptr %scevgep246.a, i64 %i.fn
  %scevgep247 = getelementptr i8, ptr %i.gl, i64 %i.gk
  %i.gm = sext i32 %i.fb to i64
  %i.gn = shl nsw i64 %i.gm, 2                    ; 2 uses
  %scevgep249 = getelementptr i8, ptr %scevgep248.a, i64 %i.gn
  %i.go = shl nuw nsw i64 %i.gk, 4
  %i.gp = getelementptr i8, ptr %scevgep250.a, i64 %i.go
  %scevgep251 = getelementptr i8, ptr %i.gp, i64 %i.gn
  %bound0252 = icmp ult ptr %scevgep245, %scevgep251
  %bound1253 = icmp ult ptr %scevgep249, %scevgep247
  %found.conflict254 = and i1 %bound0252, %bound1253
  br i1 %found.conflict254, label %.loopexit.i.us.us74.i.preheader330, label %vector.ph257

vector.ph257:                                     ; preds = %vector.memcheck243
  %n.vec258 = and i64 %i.gc, 8589934590           ; 4 uses
  %i.gq = add nsw i64 %n.vec258, %i.fn
  %i.gr = trunc i64 %n.vec258 to i32
  %i.gs = shl i32 %i.gr, 2
  %i.gt = add i32 %i.fb, %i.gs
  %broadcast.splatinsert259 = insertelement <2 x i32> poison, i32 %i.fj, i64 0
  %broadcast.splat260 = shufflevector <2 x i32> %broadcast.splatinsert259, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body261

vector.body261:                                   ; preds = %vector.body261, %vector.ph257
  %index262 = phi i64 [ 0, %vector.ph257 ], [ %index.next267, %vector.body261 ] ; 3 uses
  %i.gu = add i64 %index262, %i.fn                ; 2 uses
  %i.gv = trunc i64 %index262 to i32
  %i.gw = shl i32 %i.gv, 2
  %i.gx = add i32 %i.fb, %i.gw                    ; 2 uses
  %i.gy = add i32 %i.gx, 4
  %i.gz = sext i32 %i.gx to i64
  %i.ha = sext i32 %i.gy to i64
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.gz
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ha
  %i.hd = getelementptr inbounds i8, ptr %i.eo, i64 %i.gu
  %i.he = getelementptr i8, ptr %i.eo, i64 %i.gu
  %i.hf = getelementptr i8, ptr %i.he, i64 1
  %i.hg = load i8, ptr %i.hd, align 1, !tbaa !125, !alias.scope !126, !noalias !127
  %broadcast.splatinsert263 = insertelement <2 x i8> poison, i8 %i.hg, i64 0
  %broadcast.splat264 = shufflevector <2 x i8> %broadcast.splatinsert263, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.hh = load i8, ptr %i.hf, align 1, !tbaa !125, !alias.scope !126, !noalias !127
  %broadcast.splatinsert265 = insertelement <2 x i8> poison, i8 %i.hh, i64 0
  %broadcast.splat266 = shufflevector <2 x i8> %broadcast.splatinsert265, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.hi = zext <2 x i8> %broadcast.splat264 to <2 x i32>
  %i.hj = zext <2 x i8> %broadcast.splat266 to <2 x i32>
  %i.hk = or disjoint <2 x i32> %broadcast.splat260, %i.hi
  %i.hl = or disjoint <2 x i32> %broadcast.splat260, %i.hj
  %i.hm = zext <2 x i32> %i.hk to <2 x i64>
  %i.hn = zext <2 x i32> %i.hl to <2 x i64>
  %i.ho = mul nuw <2 x i64> %i.hm, splat (i64 4294967297)
  %i.hp = mul nuw <2 x i64> %i.hn, splat (i64 4294967297)
  store <2 x i64> %i.ho, ptr %i.hb, align 2, !alias.scope !127
  store <2 x i64> %i.hp, ptr %i.hc, align 2, !alias.scope !127
  %index.next267 = add nuw i64 %index262, 2       ; 2 uses
  %i.hq = icmp eq i64 %index.next267, %n.vec258
  br i1 %i.hq, label %middle.block268, label %vector.body261, !llvm.loop !88

middle.block268:                                  ; preds = %vector.body261
  %cmp.n269 = icmp eq i64 %i.gc, %n.vec258
  br i1 %cmp.n269, label %.loopexit.i, label %.loopexit.i.us.us74.i.preheader330

.loopexit.i.us.us74.i.preheader330:               ; preds = %vector.memcheck243, %vector.scevcheck, %.loopexit.i.us.us74.i.preheader, %middle.block268
  %indvars.iv87.i.ph = phi i64 [ %i.fn, %vector.memcheck243 ], [ %i.fn, %vector.scevcheck ], [ %i.fn, %.loopexit.i.us.us74.i.preheader ], [ %i.gq, %middle.block268 ] ; 4 uses
  %.05267.us.us73.i.ph = phi i32 [ %i.fb, %vector.memcheck243 ], [ %i.fb, %vector.scevcheck ], [ %i.fb, %.loopexit.i.us.us74.i.preheader ], [ %i.gt, %middle.block268 ] ; 3 uses
  %i.hr = trunc i64 %indvars.iv87.i.ph to i32     ; 2 uses
  %i.hs = sub i32 %i.ew, %i.hr
  %.neg = add i32 %i.hr, 1
  %xtraiter374 = and i32 %i.hs, 1
  %lcmp.mod375.not = icmp eq i32 %xtraiter374, 0
  br i1 %lcmp.mod375.not, label %.loopexit.i.us.us74.i.prol.loopexit, label %.loopexit.i.us.us74.i.prol

.loopexit.i.us.us74.i.prol:                       ; preds = %.loopexit.i.us.us74.i.preheader330
  %i.ht = sext i32 %.05267.us.us73.i.ph to i64
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ht ; 2 uses
  %i.hv = getelementptr inbounds i8, ptr %i.eo, i64 %indvars.iv87.i.ph
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !125
  %i.hx = zext i8 %i.hw to i32
  %i.hy = or disjoint i32 %i.fj, %i.hx
  %i.hz = zext i32 %i.hy to i64
  %i.ia = mul nuw i64 %i.hz, 4294967297           ; 2 uses
  store i64 %i.ia, ptr %i.hu, align 2
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  store i64 %i.ia, ptr %i.ib, align 2
  %i.ic = add i32 %.05267.us.us73.i.ph, 4
  %indvars.iv.next88.i.prol = add nsw i64 %indvars.iv87.i.ph, 1
  br label %.loopexit.i.us.us74.i.prol.loopexit

.loopexit.i.us.us74.i.prol.loopexit:              ; preds = %.loopexit.i.us.us74.i.prol, %.loopexit.i.us.us74.i.preheader330
  %indvars.iv87.i.unr = phi i64 [ %indvars.iv87.i.ph, %.loopexit.i.us.us74.i.preheader330 ], [ %indvars.iv.next88.i.prol, %.loopexit.i.us.us74.i.prol ]
  %.05267.us.us73.i.unr = phi i32 [ %.05267.us.us73.i.ph, %.loopexit.i.us.us74.i.preheader330 ], [ %i.ic, %.loopexit.i.us.us74.i.prol ]
  %i.id = icmp eq i32 %i.ew, %.neg
  br i1 %i.id, label %.loopexit.i, label %.loopexit.i.us.us74.i

.loopexit.i.us.us.i:                              ; preds = %.loopexit.i.us.us.i.prol.loopexit, %.loopexit.i.us.us.i
  %indvars.iv90.i = phi i64 [ %indvars.iv.next91.i.1, %.loopexit.i.us.us.i ], [ %indvars.iv90.i.unr, %.loopexit.i.us.us.i.prol.loopexit ] ; 3 uses
  %.05267.us.us.i = phi i32 [ %i.iw, %.loopexit.i.us.us.i ], [ %.05267.us.us.i.unr, %.loopexit.i.us.us.i.prol.loopexit ] ; 3 uses
  %i.ie = sext i32 %.05267.us.us.i to i64
  %i.if = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ie
  %i.ig = getelementptr inbounds i8, ptr %i.eo, i64 %indvars.iv90.i
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !125
  %i.ii = zext i8 %i.ih to i32
  %i.ij = or disjoint i32 %i.fj, %i.ii
  %i.ik = zext i32 %i.ij to i64
  %i.il = mul nuw i64 %i.ik, 4294967297
  store i64 %i.il, ptr %i.if, align 2
  %i.im = add i32 %.05267.us.us.i, 2
  %i.in = sext i32 %i.im to i64
  %i.io = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.in
  %i.ip = getelementptr i8, ptr %i.eo, i64 %indvars.iv90.i
  %i.iq = getelementptr i8, ptr %i.ip, i64 1
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !125
  %i.is = zext i8 %i.ir to i32
  %i.it = or disjoint i32 %i.fj, %i.is
  %i.iu = zext i32 %i.it to i64
  %i.iv = mul nuw i64 %i.iu, 4294967297
  store i64 %i.iv, ptr %i.io, align 2
  %i.iw = add i32 %.05267.us.us.i, 4
  %indvars.iv.next91.i.1 = add nsw i64 %indvars.iv90.i, 2 ; 2 uses
  %i.ix = trunc nsw i64 %indvars.iv.next91.i.1 to i32
  %.not57.us.us.i.1 = icmp eq i32 %i.ew, %i.ix
  br i1 %.not57.us.us.i.1, label %.loopexit.i, label %.loopexit.i.us.us.i, !llvm.loop !89

.loopexit.i.us.us74.i:                            ; preds = %.loopexit.i.us.us74.i.prol.loopexit, %.loopexit.i.us.us74.i
  %indvars.iv87.i = phi i64 [ %indvars.iv.next88.i.1, %.loopexit.i.us.us74.i ], [ %indvars.iv87.i.unr, %.loopexit.i.us.us74.i.prol.loopexit ] ; 3 uses
  %.05267.us.us73.i = phi i32 [ %i.js, %.loopexit.i.us.us74.i ], [ %.05267.us.us73.i.unr, %.loopexit.i.us.us74.i.prol.loopexit ] ; 3 uses
  %i.iy = sext i32 %.05267.us.us73.i to i64
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.iy ; 2 uses
  %i.ja = getelementptr inbounds i8, ptr %i.eo, i64 %indvars.iv87.i
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !125
  %i.jc = zext i8 %i.jb to i32
  %i.jd = or disjoint i32 %i.fj, %i.jc
  %i.je = zext i32 %i.jd to i64
  %i.jf = mul nuw i64 %i.je, 4294967297           ; 2 uses
  store i64 %i.jf, ptr %i.iz, align 2
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  store i64 %i.jf, ptr %i.jg, align 2
  %i.jh = add i32 %.05267.us.us73.i, 4
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ji ; 2 uses
  %i.jk = getelementptr i8, ptr %i.eo, i64 %indvars.iv87.i
  %i.jl = getelementptr i8, ptr %i.jk, i64 1
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !125
  %i.jn = zext i8 %i.jm to i32
  %i.jo = or disjoint i32 %i.fj, %i.jn
  %i.jp = zext i32 %i.jo to i64
  %i.jq = mul nuw i64 %i.jp, 4294967297           ; 2 uses
  store i64 %i.jq, ptr %i.jj, align 2
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store i64 %i.jq, ptr %i.jr, align 2
  %i.js = add i32 %.05267.us.us73.i, 8
  %indvars.iv.next88.i.1 = add nsw i64 %indvars.iv87.i, 2 ; 2 uses
  %i.jt = trunc nsw i64 %indvars.iv.next88.i.1 to i32
  %.not57.us.us75.i.1 = icmp eq i32 %i.ew, %i.jt
  br i1 %.not57.us.us75.i.1, label %.loopexit.i, label %.loopexit.i.us.us74.i, !llvm.loop !90

.preheader.i.us.i:                                ; preds = %.lr.ph.split.us.i, %.loopexit.i.us.i
  %indvars.iv93.i = phi i64 [ %indvars.iv.next94.i, %.loopexit.i.us.i ], [ %i.fn, %.lr.ph.split.us.i ] ; 2 uses
  %.05267.us.i = phi i32 [ %i.la, %.loopexit.i.us.i ], [ %i.fb, %.lr.ph.split.us.i ] ; 2 uses
  %i.ju = sext i32 %.05267.us.i to i64
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ju ; 9 uses
  %6 = load i32, ptr %i.fl, align 4, !tbaa !14    ; 3 uses
  %i.jw = icmp sgt i32 %6, 0
  br i1 %i.jw, label %.lr.ph.preheader.i.us.i, label %.loopexit.i.us.i

.lr.ph.preheader.i.us.i:                          ; preds = %.preheader.i.us.i
  %i.jx = getelementptr inbounds i8, ptr %i.eo, i64 %indvars.iv93.i
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !125
  %i.jz = zext i8 %i.jy to i32
  %i.ka = or disjoint i32 %i.fj, %i.jz
  %i.kb = zext i32 %i.ka to i64
  %i.kc = mul nuw i64 %i.kb, 4294967297
  %i.kd = zext nneg i32 %6 to i64
  %i.ke = insertelement <4 x i64> poison, i64 %i.kc, i64 0
  %i.kf = shufflevector <4 x i64> %i.ke, <4 x i64> poison, <4 x i32> zeroinitializer ; 9 uses
  %i.kg = add nsw i64 %i.kd, -1
  %i.kh = lshr i64 %i.kg, 3
  %i.ki = add nuw nsw i64 %i.kh, 1                ; 2 uses
  %xtraiter380 = and i64 %i.ki, 7                 ; 3 uses
  %i.kj = icmp ult i32 %6, 57
  br i1 %i.kj, label %.lr.ph.i.us.i.epil.preheader, label %.lr.ph.preheader.i.us.i.new

.lr.ph.preheader.i.us.i.new:                      ; preds = %.lr.ph.preheader.i.us.i
  %unroll_iter384 = and i64 %i.ki, 4611686018427387896
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i.us.i, %.lr.ph.preheader.i.us.i.new
  %indvars.iv.i.us.i = phi i64 [ 0, %.lr.ph.preheader.i.us.i.new ], [ %indvars.iv.next.i.us.i.7, %.lr.ph.i.us.i ] ; 9 uses
  %niter385 = phi i64 [ 0, %.lr.ph.preheader.i.us.i.new ], [ %niter385.next.7, %.lr.ph.i.us.i ]
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %indvars.iv.i.us.i
  store <4 x i64> %i.kf, ptr %i.kk, align 2
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %indvars.iv.i.us.i
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 32
  store <4 x i64> %i.kf, ptr %i.km, align 2
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %indvars.iv.i.us.i
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 64
  store <4 x i64> %i.kf, ptr %i.ko, align 2
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %indvars.iv.i.us.i
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 96
  store <4 x i64> %i.kf, ptr %i.kq, align 2
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %indvars.iv.i.us.i
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 128
  store <4 x i64> %i.kf, ptr %i.ks, align 2
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %indvars.iv.i.us.i
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 160
  store <4 x i64> %i.kf, ptr %i.ku, align 2
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %indvars.iv.i.us.i
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 192
  store <4 x i64> %i.kf, ptr %i.kw, align 2
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %indvars.iv.i.us.i
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 224
  store <4 x i64> %i.kf, ptr %i.ky, align 2
  %indvars.iv.next.i.us.i.7 = add nuw nsw i64 %indvars.iv.i.us.i, 64 ; 2 uses
  %niter385.next.7 = add nuw nsw i64 %niter385, 8 ; 2 uses
  %niter385.ncmp.7.not = icmp eq i64 %niter385.next.7, %unroll_iter384
  br i1 %niter385.ncmp.7.not, label %.loopexit.i.us.i.loopexit.unr-lcssa, label %.lr.ph.i.us.i, !llvm.loop !91

.loopexit.i.us.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.i.us.i
  %lcmp.mod382.not = icmp eq i64 %xtraiter380, 0
  br i1 %lcmp.mod382.not, label %.loopexit.i.us.i, label %.lr.ph.i.us.i.epil.preheader

.lr.ph.i.us.i.epil.preheader:                     ; preds = %.loopexit.i.us.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.us.i
  %indvars.iv.i.us.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.us.i ], [ %indvars.iv.next.i.us.i.7, %.loopexit.i.us.i.loopexit.unr-lcssa ]
  %lcmp.mod383 = icmp ne i64 %xtraiter380, 0
  call void @llvm.assume(i1 %lcmp.mod383)
  br label %.lr.ph.i.us.i.epil

.lr.ph.i.us.i.epil:                               ; preds = %.lr.ph.i.us.i.epil, %.lr.ph.i.us.i.epil.preheader
  %indvars.iv.i.us.i.epil = phi i64 [ %indvars.iv.i.us.i.epil.init, %.lr.ph.i.us.i.epil.preheader ], [ %indvars.iv.next.i.us.i.epil, %.lr.ph.i.us.i.epil ] ; 2 uses
  %epil.iter381 = phi i64 [ 0, %.lr.ph.i.us.i.epil.preheader ], [ %epil.iter381.next, %.lr.ph.i.us.i.epil ]
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %indvars.iv.i.us.i.epil
  store <4 x i64> %i.kf, ptr %i.kz, align 2
  %indvars.iv.next.i.us.i.epil = add nuw nsw i64 %indvars.iv.i.us.i.epil, 8
  %epil.iter381.next = add i64 %epil.iter381, 1   ; 2 uses
  %epil.iter381.cmp.not = icmp eq i64 %epil.iter381.next, %xtraiter380
  br i1 %epil.iter381.cmp.not, label %.loopexit.i.us.i, label %.lr.ph.i.us.i.epil, !llvm.loop !92

.loopexit.i.us.i:                                 ; preds = %.loopexit.i.us.i.loopexit.unr-lcssa, %.lr.ph.i.us.i.epil, %.preheader.i.us.i
  %i.la = add i32 %.05267.us.i, %i.fd
  %indvars.iv.next94.i = add nsw i64 %indvars.iv93.i, 1 ; 2 uses
  %i.lb = trunc nsw i64 %indvars.iv.next94.i to i32
  %.not57.us.i = icmp eq i32 %i.ew, %i.lb
  br i1 %.not57.us.i, label %.loopexit.i, label %.preheader.i.us.i, !llvm.loop !89

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZN11duckdb_zstdL22HUF_fillDTableX2Level2EPNS_10HUF_DEltX2EjjPKjiiPKNS_14sortedSymbol_tES3_jt.exit.loopexit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN11duckdb_zstdL22HUF_fillDTableX2Level2EPNS_10HUF_DEltX2EjjPKjiiPKNS_14sortedSymbol_tES3_jt.exit.loopexit.i ], [ %i.fn, %.lr.ph.i ] ; 2 uses
  %.05267.i = phi i32 [ %i.va, %_ZN11duckdb_zstdL22HUF_fillDTableX2Level2EPNS_10HUF_DEltX2EjjPKjiiPKNS_14sortedSymbol_tES3_jt.exit.loopexit.i ], [ %i.fb, %.lr.ph.i ] ; 2 uses
  %i.lc = sext i32 %.05267.i to i64               ; 3 uses
  %i.ld = getelementptr [4 x i8], ptr %i.e, i64 %i.lc ; 13 uses
  %i.le = getelementptr inbounds i8, ptr %i.eo, i64 %indvars.iv.i
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !125
  %i.lg = zext i8 %i.lf to i32                    ; 2 uses
  br i1 %i.fh, label %bb.i, label %.loopexit.i.i

bb.i:                                             ; preds = %.lr.ph.split.i
  %i.lh = or disjoint i32 %i.fj, %i.lg
  %i.li = zext i32 %i.lh to i64
  %i.lj = mul nuw i64 %i.li, 4294967297           ; 4 uses
  %i.lk = load i32, ptr %i.fl, align 4, !tbaa !14 ; 3 uses
  switch i32 %i.fd, label %.preheader.i.i [
    i32 2, label %bb.j
    i32 4, label %bb.k
  ]

.preheader.i.i:                                   ; preds = %bb.i
  %i.ll = icmp sgt i32 %i.lk, 0
  br i1 %i.ll, label %.lr.ph.preheader.i.i, label %.loopexit.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %i.lm = zext nneg i32 %i.lk to i64
  %i.ln = insertelement <4 x i64> poison, i64 %i.lj, i64 0
  %i.lo = shufflevector <4 x i64> %i.ln, <4 x i64> poison, <4 x i32> zeroinitializer ; 9 uses
  %i.lp = add nsw i64 %i.lm, -1
  %i.lq = lshr i64 %i.lp, 3
  %i.lr = add nuw nsw i64 %i.lq, 1                ; 2 uses
  %xtraiter349 = and i64 %i.lr, 7                 ; 3 uses
  %i.ls = icmp ult i32 %i.lk, 57
  br i1 %i.ls, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter353 = and i64 %i.lr, 4611686018427387896
  br label %.lr.ph.i.i

bb.j:                                             ; preds = %bb.i
  store i64 %i.lj, ptr %i.ld, align 2
  br label %.loopexit.i.i

bb.k:                                             ; preds = %bb.i
  store i64 %i.lj, ptr %i.ld, align 2
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  store i64 %i.lj, ptr %i.lt, align 2
  br label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.7, %.lr.ph.i.i ] ; 9 uses
  %niter354 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter354.next.7, %.lr.ph.i.i ]
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %indvars.iv.i.i
  store <4 x i64> %i.lo, ptr %i.lu, align 2
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %indvars.iv.i.i
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 32
  store <4 x i64> %i.lo, ptr %i.lw, align 2
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %indvars.iv.i.i
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 64
  store <4 x i64> %i.lo, ptr %i.ly, align 2
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %indvars.iv.i.i
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 96
  store <4 x i64> %i.lo, ptr %i.ma, align 2
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %indvars.iv.i.i
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 128
  store <4 x i64> %i.lo, ptr %i.mc, align 2
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %indvars.iv.i.i
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 160
  store <4 x i64> %i.lo, ptr %i.me, align 2
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %indvars.iv.i.i
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 192
  store <4 x i64> %i.lo, ptr %i.mg, align 2
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %indvars.iv.i.i
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 224
  store <4 x i64> %i.lo, ptr %i.mi, align 2
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 64 ; 2 uses
  %niter354.next.7 = add nuw nsw i64 %niter354, 8 ; 2 uses
  %niter354.ncmp.7.not = icmp eq i64 %niter354.next.7, %unroll_iter353
  br i1 %niter354.ncmp.7.not, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !91

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i
  %lcmp.mod351.not = icmp eq i64 %xtraiter349, 0
  br i1 %lcmp.mod351.not, label %.loopexit.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.7, %.loopexit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod352 = icmp ne i64 %xtraiter349, 0
  call void @llvm.assume(i1 %lcmp.mod352)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ] ; 2 uses
  %epil.iter350 = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter350.next, %.lr.ph.i.i.epil ]
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %indvars.iv.i.i.epil
  store <4 x i64> %i.lo, ptr %i.mj, align 2
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 8
  %epil.iter350.next = add i64 %epil.iter350, 1   ; 2 uses
  %epil.iter350.cmp.not = icmp eq i64 %epil.iter350.next, %xtraiter349
  br i1 %epil.iter350.cmp.not, label %.loopexit.i.i, label %.lr.ph.i.i.epil, !llvm.loop !93

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.k, %bb.j, %.preheader.i.i, %.lr.ph.split.i
  %invariant.op139 = or disjoint i32 %i.lg, 33554432 ; 5 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, %.loopexit.i.i
  %indvars.iv55.i.i = phi i64 [ %i.fk, %.loopexit.i.i ], [ %indvars.iv.next56.i.i, %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i ] ; 4 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv55.i.i
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !14 ; 2 uses
  %indvars.iv.next56.i.i = add nuw nsw i64 %indvars.iv55.i.i, 1 ; 3 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next56.i.i
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !14 ; 2 uses
  %i.mo = trunc nuw nsw i64 %indvars.iv55.i.i to i32
  %i.mp = sub i32 %i.fm, %i.mo                    ; 6 uses
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv55.i.i
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !14
  %i.ms = zext i32 %i.mr to i64                   ; 3 uses
  %i.mt = getelementptr [4 x i8], ptr %i.ld, i64 %i.ms ; 20 uses
  %i.mu = sext i32 %i.ml to i64                   ; 9 uses
  %i.mv = getelementptr i8, ptr %i.eo, i64 %i.mu  ; 16 uses
  %i.mw = sext i32 %i.mn to i64                   ; 13 uses
  %i.mx = getelementptr i8, ptr %i.eo, i64 %i.mw  ; 7 uses
  %i.my = sub i32 %spec.store.select, %i.mp
  %i.mz = and i32 %i.my, 31                       ; 2 uses
  %i.na = shl nuw i32 1, %i.mz
  %.not82116.i.i = icmp eq i32 %i.ml, %i.mn       ; 5 uses
  switch i32 %i.mz, label %.preheader.i60.i [
    i32 0, label %.preheader84.i.i
    i32 1, label %.preheader86.i.i
    i32 2, label %.preheader88.i.i
    i32 3, label %.preheader90.i.i
  ]

.preheader90.i.i:                                 ; preds = %bb.l
  br i1 %.not82116.i.i, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %.lr.ph.i58.i

.lr.ph.i58.i:                                     ; preds = %.preheader90.i.i
  %i.nb = shl i32 %i.mp, 16
  %invariant.op.reass = add i32 %i.nb, %invariant.op139 ; 3 uses
  %i.nc = sub nsw i64 %i.mw, %i.mu
  %xtraiter355 = and i64 %i.nc, 1
  %lcmp.mod356.not = icmp eq i64 %xtraiter355, 0
  br i1 %lcmp.mod356.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i58.i
  %i.nd = load i8, ptr %i.mv, align 1, !tbaa !125
  %i.ne = zext i8 %i.nd to i32
  %i.nf = shl nuw nsw i32 %i.ne, 8
  %.reass.reass.i.reass.i.reass.prol = or disjoint i32 %i.nf, %invariant.op.reass
  %i.ng = zext i32 %.reass.reass.i.reass.i.reass.prol to i64
  %i.nh = mul nuw i64 %i.ng, 4294967297           ; 4 uses
  store i64 %i.nh, ptr %i.mt, align 2
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  store i64 %i.nh, ptr %i.ni, align 2
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  store i64 %i.nh, ptr %i.nj, align 2
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mt, i64 24
  store i64 %i.nh, ptr %i.nk, align 2
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mt, i64 32
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mv, i64 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i58.i
  %.394.i.i.unr = phi ptr [ %i.mt, %.lr.ph.i58.i ], [ %i.nl, %.prol.loopexit.unr-lcssa ]
  %.37793.i.i.unr = phi ptr [ %i.mv, %.lr.ph.i58.i ], [ %i.nm, %.prol.loopexit.unr-lcssa ]
  %i.nn = add nsw i64 %i.mw, -1
  %i.no = icmp eq i64 %i.nn, %i.mu
  br i1 %i.no, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %.lr.ph.i58.i.new

.preheader88.i.i:                                 ; preds = %bb.l
  br i1 %.not82116.i.i, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %.lr.ph98.i.i

.lr.ph98.i.i:                                     ; preds = %.preheader88.i.i
  %i.np = shl i32 %i.mp, 16
  %invariant.op135.reass = add i32 %i.np, %invariant.op139 ; 5 uses
  %i.nq = sub nsw i64 %i.mw, %i.mu
  %xtraiter360 = and i64 %i.nq, 3                 ; 2 uses
  %lcmp.mod361.not = icmp eq i64 %xtraiter360, 0
  br i1 %lcmp.mod361.not, label %.prol.loopexit359, label %.prol.preheader358

.prol.preheader358:                               ; preds = %.lr.ph98.i.i, %.prol.preheader358
  %.297.i.i.prol = phi ptr [ %i.nx, %.prol.preheader358 ], [ %i.mt, %.lr.ph98.i.i ] ; 3 uses
  %.27696.i.i.prol = phi ptr [ %i.ny, %.prol.preheader358 ], [ %i.mv, %.lr.ph98.i.i ] ; 2 uses
  %prol.iter362 = phi i64 [ %prol.iter362.next, %.prol.preheader358 ], [ 0, %.lr.ph98.i.i ]
  %i.nr = load i8, ptr %.27696.i.i.prol, align 1, !tbaa !125
  %i.ns = zext i8 %i.nr to i32
  %i.nt = shl nuw nsw i32 %i.ns, 8
  %.reass100.reass.i.reass.i.reass.prol = or disjoint i32 %i.nt, %invariant.op135.reass
  %i.nu = zext i32 %.reass100.reass.i.reass.i.reass.prol to i64
  %i.nv = mul nuw i64 %i.nu, 4294967297           ; 2 uses
  store i64 %i.nv, ptr %.297.i.i.prol, align 2
  %i.nw = getelementptr inbounds nuw i8, ptr %.297.i.i.prol, i64 8
  store i64 %i.nv, ptr %i.nw, align 2
  %i.nx = getelementptr inbounds nuw i8, ptr %.297.i.i.prol, i64 16 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.27696.i.i.prol, i64 1 ; 2 uses
end_hunk_0
