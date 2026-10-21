Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/huf_decompress?download=true
inline.NumInlined: 720
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 38
begin_hunk_0_@HUF_readDTableX2_wksp:bb.a
  %indvars.iv.next162.1 = add nuw nsw i64 %indvars.iv161, 2 ; 2 uses
  %niter246.next.1 = add i64 %niter246, 2         ; 2 uses
  %niter246.ncmp.1 = icmp eq i64 %niter246.next.1, %unroll_iter245
  br i1 %niter246.ncmp.1, label %._crit_edge122.loopexit.unr-lcssa, label %bb.g, !llvm.loop !46

._crit_edge122.loopexit.unr-lcssa:                ; preds = %bb.g
  %lcmp.mod243.not = icmp eq i64 %xtraiter241, 0
  br i1 %lcmp.mod243.not, label %._crit_edge122, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge122.loopexit.unr-lcssa, %.lr.ph121
  %indvars.iv161.epil.init = phi i64 [ 0, %.lr.ph121 ], [ %indvars.iv.next162.1, %._crit_edge122.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod244 = trunc i32 %i.ay to i1
  call void @llvm.assume(i1 %lcmp.mod244)
  %i.bt = getelementptr i8, ptr %i.j, i64 %indvars.iv161.epil.init
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr [4 x i8], ptr %i.g, i64 %i.bv ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4            ; 2 uses
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr %i.bw, align 4
  %i.bz = trunc i64 %indvars.iv161.epil.init to i8
  %i.ca = zext i32 %i.bx to i64
  %i.cb = getelementptr i8, ptr %i.az, i64 %i.ca
  store i8 %i.bz, ptr %i.cb, align 1
  br label %._crit_edge122

._crit_edge122:                                   ; preds = %.epil.preheader, %._crit_edge122.loopexit.unr-lcssa, %._crit_edge
  store i32 0, ptr %i.g, align 4
  %i.cc = xor i32 %i.n, -1
  %i.cd = add nsw i32 %spec.store.select, %i.cc   ; 2 uses
  br i1 %i.y, label %.lr.ph126.preheader, label %HUF_fillDTableX2.exit

.lr.ph126.preheader:                              ; preds = %._crit_edge122
  %wide.trip.count170 = zext i32 %indvars.iv159 to i64 ; 2 uses
  %i.ce = add nsw i64 %wide.trip.count170, -1     ; 5 uses
  %i.cf = add nsw i64 %wide.trip.count170, -2     ; 2 uses
  %xtraiter247 = and i64 %i.ce, 1
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %.lr.ph126.epil.preheader, label %.lr.ph126.preheader.new

.lr.ph126.preheader.new:                          ; preds = %.lr.ph126.preheader
  %unroll_iter251 = and i64 %i.ce, -2
  br label %.lr.ph126

.lr.ph126:                                        ; preds = %.lr.ph126, %.lr.ph126.preheader.new
  %indvars.iv166 = phi i64 [ 1, %.lr.ph126.preheader.new ], [ %indvars.iv.next167.1, %.lr.ph126 ] ; 5 uses
  %.091123 = phi i32 [ 0, %.lr.ph126.preheader.new ], [ %i.ct, %.lr.ph126 ] ; 2 uses
  %niter252 = phi i64 [ 0, %.lr.ph126.preheader.new ], [ %niter252.next.1, %.lr.ph126 ]
  %i.ch = getelementptr [4 x i8], ptr %i.h, i64 %indvars.iv166
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = trunc nuw i64 %indvars.iv166 to i32
  %i.ck = add i32 %i.cd, %i.cj
  %i.cl = shl i32 %i.ci, %i.ck
  %i.cm = add i32 %i.cl, %.091123                 ; 2 uses
  %i.cn = getelementptr [4 x i8], ptr %3, i64 %indvars.iv166
  store i32 %.091123, ptr %i.cn, align 4
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 3 uses
  %i.co = getelementptr [4 x i8], ptr %i.h, i64 %indvars.iv.next167
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = trunc nuw i64 %indvars.iv.next167 to i32
  %i.cr = add i32 %i.cd, %i.cq
  %i.cs = shl i32 %i.cp, %i.cr
  %i.ct = add i32 %i.cs, %i.cm                    ; 2 uses
  %i.cu = getelementptr [4 x i8], ptr %3, i64 %indvars.iv.next167
  store i32 %i.cm, ptr %i.cu, align 4
  %indvars.iv.next167.1 = add nuw nsw i64 %indvars.iv166, 2 ; 2 uses
  %niter252.next.1 = add nuw i64 %niter252, 2     ; 2 uses
  %niter252.ncmp.1 = icmp eq i64 %niter252.next.1, %unroll_iter251
  br i1 %niter252.ncmp.1, label %._crit_edge127.unr-lcssa, label %.lr.ph126, !llvm.loop !47

._crit_edge127.unr-lcssa:                         ; preds = %.lr.ph126
  %lcmp.mod249.not = icmp eq i64 %xtraiter247, 0
  br i1 %lcmp.mod249.not, label %._crit_edge127, label %.lr.ph126.epil.preheader

.lr.ph126.epil.preheader:                         ; preds = %._crit_edge127.unr-lcssa, %.lr.ph126.preheader
  %indvars.iv166.epil.init = phi i64 [ 1, %.lr.ph126.preheader ], [ %indvars.iv.next167.1, %._crit_edge127.unr-lcssa ]
  %.091123.epil.init = phi i32 [ 0, %.lr.ph126.preheader ], [ %i.ct, %._crit_edge127.unr-lcssa ]
  %lcmp.mod250 = trunc i64 %i.ce to i1
  call void @llvm.assume(i1 %lcmp.mod250)
  %i.cv = getelementptr [4 x i8], ptr %3, i64 %indvars.iv166.epil.init
  store i32 %.091123.epil.init, ptr %i.cv, align 4
  br label %._crit_edge127

._crit_edge127:                                   ; preds = %._crit_edge127.unr-lcssa, %.lr.ph126.epil.preheader
  %i.cw = sub i32 %i.p, %.092                     ; 3 uses
  %i.cx = add nuw nsw i32 %spec.store.select, 1
  %i.cy = sub i32 %i.cx, %i.cw
  %i.cz = icmp ult i32 %i.cw, %i.cy
  br i1 %i.cz, label %.lr.ph130.preheader, label %._crit_edge135.split

.lr.ph130.preheader:                              ; preds = %._crit_edge127
  %i.da = zext i32 %indvars.iv178 to i64
  %i.db = add i32 %spec.store.select, %indvars.iv183
  %xtraiter254 = and i64 %i.ce, 3                 ; 3 uses
  %i.dc = icmp ult i64 %i.cf, 3
  %unroll_iter258 = and i64 %i.ce, -4
  %lcmp.mod256.not = icmp eq i64 %xtraiter254, 0
  %lcmp.mod257 = icmp ne i64 %xtraiter254, 0
  br label %.lr.ph130

.lr.ph130:                                        ; preds = %.lr.ph130.preheader, %._crit_edge131
  %indvars.iv180 = phi i64 [ %i.da, %.lr.ph130.preheader ], [ %indvars.iv.next181, %._crit_edge131 ] ; 3 uses
  %i.dd = getelementptr [52 x i8], ptr %3, i64 %indvars.iv180 ; 5 uses
  %i.de = trunc nuw i64 %indvars.iv180 to i32     ; 5 uses
  br i1 %i.dc, label %.epil.preheader253, label %.lr.ph130.new

.lr.ph130.new:                                    ; preds = %.lr.ph130, %.lr.ph130.new
  %indvars.iv172 = phi i64 [ %indvars.iv.next173.3, %.lr.ph130.new ], [ 1, %.lr.ph130 ] ; 6 uses
  %niter259 = phi i64 [ %niter259.next.3, %.lr.ph130.new ], [ 0, %.lr.ph130 ]
  %i.df = getelementptr [4 x i8], ptr %3, i64 %indvars.iv172
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = lshr i32 %i.dg, %i.de
  %i.di = getelementptr [4 x i8], ptr %i.dd, i64 %indvars.iv172
  store i32 %i.dh, ptr %i.di, align 4
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %i.dj = getelementptr [4 x i8], ptr %3, i64 %indvars.iv.next173
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = lshr i32 %i.dk, %i.de
  %i.dm = getelementptr [4 x i8], ptr %i.dd, i64 %indvars.iv.next173
  store i32 %i.dl, ptr %i.dm, align 4
  %indvars.iv.next173.1 = add nuw nsw i64 %indvars.iv172, 2 ; 2 uses
  %i.dn = getelementptr [4 x i8], ptr %3, i64 %indvars.iv.next173.1
  %i.do = load i32, ptr %i.dn, align 4
  %i.dp = lshr i32 %i.do, %i.de
  %i.dq = getelementptr [4 x i8], ptr %i.dd, i64 %indvars.iv.next173.1
  store i32 %i.dp, ptr %i.dq, align 4
  %indvars.iv.next173.2 = add nuw nsw i64 %indvars.iv172, 3 ; 2 uses
  %i.dr = getelementptr [4 x i8], ptr %3, i64 %indvars.iv.next173.2
  %i.ds = load i32, ptr %i.dr, align 4
  %i.dt = lshr i32 %i.ds, %i.de
  %i.du = getelementptr [4 x i8], ptr %i.dd, i64 %indvars.iv.next173.2
  store i32 %i.dt, ptr %i.du, align 4
  %indvars.iv.next173.3 = add nuw nsw i64 %indvars.iv172, 4 ; 2 uses
  %niter259.next.3 = add nuw i64 %niter259, 4     ; 2 uses
  %niter259.ncmp.3 = icmp eq i64 %niter259.next.3, %unroll_iter258
  br i1 %niter259.ncmp.3, label %._crit_edge131.unr-lcssa, label %.lr.ph130.new, !llvm.loop !48

._crit_edge131.unr-lcssa:                         ; preds = %.lr.ph130.new
  br i1 %lcmp.mod256.not, label %._crit_edge131, label %.epil.preheader253

.epil.preheader253:                               ; preds = %._crit_edge131.unr-lcssa, %.lr.ph130
  %indvars.iv172.epil.init = phi i64 [ 1, %.lr.ph130 ], [ %indvars.iv.next173.3, %._crit_edge131.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod257)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader253
  %indvars.iv172.epil = phi i64 [ %indvars.iv172.epil.init, %.epil.preheader253 ], [ %indvars.iv.next173.epil, %bb.h ] ; 3 uses
  %epil.iter255 = phi i64 [ 0, %.epil.preheader253 ], [ %epil.iter255.next, %bb.h ]
  %i.dv = getelementptr [4 x i8], ptr %3, i64 %indvars.iv172.epil
  %i.dw = load i32, ptr %i.dv, align 4
  %i.dx = lshr i32 %i.dw, %i.de
  %i.dy = getelementptr [4 x i8], ptr %i.dd, i64 %indvars.iv172.epil
  store i32 %i.dx, ptr %i.dy, align 4
  %indvars.iv.next173.epil = add nuw nsw i64 %indvars.iv172.epil, 1
  %epil.iter255.next = add i64 %epil.iter255, 1   ; 2 uses
  %epil.iter255.cmp.not = icmp eq i64 %epil.iter255.next, %xtraiter254
  br i1 %epil.iter255.cmp.not, label %._crit_edge131, label %bb.h, !llvm.loop !49

._crit_edge131:                                   ; preds = %bb.h, %._crit_edge131.unr-lcssa
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next181 to i32
  %exitcond185.not = icmp eq i32 %i.db, %lftr.wideiv
  br i1 %exitcond185.not, label %._crit_edge135.split, label %.lr.ph130, !llvm.loop !50

._crit_edge135.split:                             ; preds = %._crit_edge131, %._crit_edge127
  %i.dz = getelementptr i8, ptr %3, i64 736       ; 12 uses
  %i.ea = sub nsw i32 %i.p, %spec.store.select
  %i.eb = icmp sgt i32 %i.x, 1
  br i1 %i.eb, label %.lr.ph79.i, label %HUF_fillDTableX2.exit

.lr.ph79.i:                                       ; preds = %._crit_edge135.split, %.loopexit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.loopexit.i ], [ 1, %._crit_edge135.split ] ; 4 uses
  %i.ec = getelementptr [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.ed = load i32, ptr %i.ec, align 4            ; 15 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.ee = getelementptr [4 x i8], ptr %i.f, i64 %indvars.iv.next.i
  %i.ef = load i32, ptr %i.ee, align 4            ; 11 uses
  %i.eg = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.eh = sub i32 %i.p, %i.eg                     ; 10 uses
  %i.ei = sub i32 %spec.store.select, %i.eh       ; 3 uses
  %.not.i = icmp ult i32 %i.ei, %i.cw
  %i.ej = getelementptr [4 x i8], ptr %3, i64 %indvars.iv.i
  %i.ek = load i32, ptr %i.ej, align 4            ; 9 uses
  br i1 %.not.i, label %bb.n, label %bb.i

bb.i:                                             ; preds = %.lr.ph79.i
  %i.el = and i32 %i.ei, 31
  %i.em = shl nuw i32 1, %i.el                    ; 4 uses
  %.not5664.i = icmp eq i32 %i.ed, %i.ef
  br i1 %.not5664.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.en = add i32 %i.eh, %i.ea                    ; 2 uses
  %spec.store.select.i = call i32 @llvm.smax.i32(i32 %i.en, i32 1) ; 2 uses
  %i.eo = zext i32 %i.eh to i64
  %i.ep = getelementptr [52 x i8], ptr %3, i64 %i.eo ; 2 uses
  %i.eq = icmp sgt i32 %i.en, 1                   ; 2 uses
  %i.er = shl i32 %i.eh, 16
  %i.es = add i32 %i.er, 16777216                 ; 8 uses
  %i.et = zext nneg i32 %spec.store.select.i to i64 ; 2 uses
  %i.eu = getelementptr [4 x i8], ptr %i.ep, i64 %i.et ; 2 uses
  %i.ev = icmp slt i32 %spec.store.select.i, %i.x
  %i.ew = add i32 %i.eh, %i.p
  br i1 %i.ev, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %HUF_fillDTableX2Level2.exit.loopexit.us.i
  %.066.us.i = phi i32 [ %i.nv, %HUF_fillDTableX2Level2.exit.loopexit.us.i ], [ %i.ed, %.lr.ph.i ] ; 2 uses
  %.05265.us.i = phi i32 [ %i.nu, %HUF_fillDTableX2Level2.exit.loopexit.us.i ], [ %i.ek, %.lr.ph.i ] ; 2 uses
  %i.ex = sext i32 %.05265.us.i to i64
  %i.ey = getelementptr [4 x i8], ptr %i.d, i64 %i.ex ; 9 uses
  %i.ez = sext i32 %.066.us.i to i64
  %i.fa = getelementptr i8, ptr %i.dz, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = zext i8 %i.fb to i32                    ; 2 uses
  br i1 %i.eq, label %bb.j, label %.loopexit.i.us.i

bb.j:                                             ; preds = %.lr.ph.split.us.i
  %i.fd = or disjoint i32 %i.es, %i.fc
  %i.fe = zext i32 %i.fd to i64
  %i.ff = mul nuw i64 %i.fe, 4294967297           ; 23 uses
  %i.fg = load i32, ptr %i.eu, align 4            ; 3 uses
  switch i32 %i.em, label %.preheader.i.us.i [
    i32 2, label %bb.l
    i32 4, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  store i64 %i.ff, ptr %i.ey, align 2
  %i.fh = getelementptr i8, ptr %i.ey, i64 8
  store i64 %i.ff, ptr %i.fh, align 2
  br label %.loopexit.i.us.i

bb.l:                                             ; preds = %bb.j
  store i64 %i.ff, ptr %i.ey, align 2
  br label %.loopexit.i.us.i

.preheader.i.us.i:                                ; preds = %bb.j
  %i.fi = icmp sgt i32 %i.fg, 0
  br i1 %i.fi, label %.lr.ph.preheader.i.us.i, label %.loopexit.i.us.i

.lr.ph.preheader.i.us.i:                          ; preds = %.preheader.i.us.i
  %i.fj = zext nneg i32 %i.fg to i64
  %i.fk = add nsw i64 %i.fj, -1
  %i.fl = lshr i64 %i.fk, 3
  %i.fm = add nuw nsw i64 %i.fl, 1                ; 2 uses
  %xtraiter270 = and i64 %i.fm, 3                 ; 3 uses
  %i.fn = icmp ult i32 %i.fg, 25
  br i1 %i.fn, label %.lr.ph.i.us.i.epil.preheader, label %.lr.ph.preheader.i.us.i.new

.lr.ph.preheader.i.us.i.new:                      ; preds = %.lr.ph.preheader.i.us.i
  %unroll_iter274 = and i64 %i.fm, 4611686018427387900
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i.us.i, %.lr.ph.preheader.i.us.i.new
  %indvars.iv.i.us.i = phi i64 [ 0, %.lr.ph.preheader.i.us.i.new ], [ %indvars.iv.next.i.us.i.3, %.lr.ph.i.us.i ] ; 5 uses
  %niter275 = phi i64 [ 0, %.lr.ph.preheader.i.us.i.new ], [ %niter275.next.3, %.lr.ph.i.us.i ]
  %i.fo = getelementptr [4 x i8], ptr %i.ey, i64 %indvars.iv.i.us.i ; 4 uses
  store i64 %i.ff, ptr %i.fo, align 2
  %i.fp = getelementptr i8, ptr %i.fo, i64 8
  store i64 %i.ff, ptr %i.fp, align 2
  %i.fq = getelementptr i8, ptr %i.fo, i64 16
  store i64 %i.ff, ptr %i.fq, align 2
  %i.fr = getelementptr i8, ptr %i.fo, i64 24
  store i64 %i.ff, ptr %i.fr, align 2
  %i.fs = getelementptr [4 x i8], ptr %i.ey, i64 %indvars.iv.i.us.i ; 4 uses
  %i.ft = getelementptr i8, ptr %i.fs, i64 32
  store i64 %i.ff, ptr %i.ft, align 2
  %i.fu = getelementptr i8, ptr %i.fs, i64 40
  store i64 %i.ff, ptr %i.fu, align 2
  %i.fv = getelementptr i8, ptr %i.fs, i64 48
  store i64 %i.ff, ptr %i.fv, align 2
  %i.fw = getelementptr i8, ptr %i.fs, i64 56
  store i64 %i.ff, ptr %i.fw, align 2
  %i.fx = getelementptr [4 x i8], ptr %i.ey, i64 %indvars.iv.i.us.i ; 4 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 64
  store i64 %i.ff, ptr %i.fy, align 2
  %i.fz = getelementptr i8, ptr %i.fx, i64 72
  store i64 %i.ff, ptr %i.fz, align 2
  %i.ga = getelementptr i8, ptr %i.fx, i64 80
  store i64 %i.ff, ptr %i.ga, align 2
  %i.gb = getelementptr i8, ptr %i.fx, i64 88
  store i64 %i.ff, ptr %i.gb, align 2
  %i.gc = getelementptr [4 x i8], ptr %i.ey, i64 %indvars.iv.i.us.i ; 4 uses
  %i.gd = getelementptr i8, ptr %i.gc, i64 96
  store i64 %i.ff, ptr %i.gd, align 2
  %i.ge = getelementptr i8, ptr %i.gc, i64 104
  store i64 %i.ff, ptr %i.ge, align 2
  %i.gf = getelementptr i8, ptr %i.gc, i64 112
  store i64 %i.ff, ptr %i.gf, align 2
  %i.gg = getelementptr i8, ptr %i.gc, i64 120
  store i64 %i.ff, ptr %i.gg, align 2
  %indvars.iv.next.i.us.i.3 = add nuw nsw i64 %indvars.iv.i.us.i, 32 ; 2 uses
  %niter275.next.3 = add i64 %niter275, 4         ; 2 uses
  %niter275.ncmp.3.not = icmp eq i64 %niter275.next.3, %unroll_iter274
  br i1 %niter275.ncmp.3.not, label %.loopexit.i.us.i.loopexit.unr-lcssa, label %.lr.ph.i.us.i, !llvm.loop !51

.loopexit.i.us.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.i.us.i
  %lcmp.mod272.not = icmp eq i64 %xtraiter270, 0
  br i1 %lcmp.mod272.not, label %.loopexit.i.us.i, label %.lr.ph.i.us.i.epil.preheader

.lr.ph.i.us.i.epil.preheader:                     ; preds = %.loopexit.i.us.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.us.i
  %indvars.iv.i.us.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.us.i ], [ %indvars.iv.next.i.us.i.3, %.loopexit.i.us.i.loopexit.unr-lcssa ]
  %lcmp.mod273 = icmp ne i64 %xtraiter270, 0
  call void @llvm.assume(i1 %lcmp.mod273)
  br label %.lr.ph.i.us.i.epil

.lr.ph.i.us.i.epil:                               ; preds = %.lr.ph.i.us.i.epil, %.lr.ph.i.us.i.epil.preheader
  %indvars.iv.i.us.i.epil = phi i64 [ %indvars.iv.i.us.i.epil.init, %.lr.ph.i.us.i.epil.preheader ], [ %indvars.iv.next.i.us.i.epil, %.lr.ph.i.us.i.epil ] ; 2 uses
  %epil.iter271 = phi i64 [ 0, %.lr.ph.i.us.i.epil.preheader ], [ %epil.iter271.next, %.lr.ph.i.us.i.epil ]
  %i.gh = getelementptr [4 x i8], ptr %i.ey, i64 %indvars.iv.i.us.i.epil ; 4 uses
  store i64 %i.ff, ptr %i.gh, align 2
  %i.gi = getelementptr i8, ptr %i.gh, i64 8
  store i64 %i.ff, ptr %i.gi, align 2
  %i.gj = getelementptr i8, ptr %i.gh, i64 16
  store i64 %i.ff, ptr %i.gj, align 2
  %i.gk = getelementptr i8, ptr %i.gh, i64 24
  store i64 %i.ff, ptr %i.gk, align 2
  %indvars.iv.next.i.us.i.epil = add nuw nsw i64 %indvars.iv.i.us.i.epil, 8
  %epil.iter271.next = add i64 %epil.iter271, 1   ; 2 uses
  %epil.iter271.cmp.not = icmp eq i64 %epil.iter271.next, %xtraiter270
  br i1 %epil.iter271.cmp.not, label %.loopexit.i.us.i, label %.lr.ph.i.us.i.epil, !llvm.loop !52

.loopexit.i.us.i:                                 ; preds = %.loopexit.i.us.i.loopexit.unr-lcssa, %.lr.ph.i.us.i.epil, %.preheader.i.us.i, %bb.l, %bb.k, %.lr.ph.split.us.i
  %invariant.op140 = or disjoint i32 %i.fc, 33554432 ; 5 uses
  br label %bb.m

bb.m:                                             ; preds = %HUF_fillDTableX2ForWeight.exit.us.i, %.loopexit.i.us.i
  %indvars.iv55.i.us.i = phi i64 [ %i.et, %.loopexit.i.us.i ], [ %indvars.iv.next56.i.us.i, %HUF_fillDTableX2ForWeight.exit.us.i ] ; 4 uses
  %i.gl = getelementptr [4 x i8], ptr %i.f, i64 %indvars.iv55.i.us.i
  %i.gm = load i32, ptr %i.gl, align 4            ; 2 uses
  %indvars.iv.next56.i.us.i = add nuw nsw i64 %indvars.iv55.i.us.i, 1 ; 3 uses
  %i.gn = getelementptr [4 x i8], ptr %i.f, i64 %indvars.iv.next56.i.us.i
  %i.go = load i32, ptr %i.gn, align 4            ; 2 uses
  %i.gp = trunc nuw nsw i64 %indvars.iv55.i.us.i to i32
  %i.gq = sub i32 %i.ew, %i.gp                    ; 6 uses
  %i.gr = getelementptr [4 x i8], ptr %i.ep, i64 %indvars.iv55.i.us.i
  %i.gs = load i32, ptr %i.gr, align 4
  %i.gt = zext i32 %i.gs to i64
  %i.gu = getelementptr [4 x i8], ptr %i.ey, i64 %i.gt ; 13 uses
  %i.gv = sext i32 %i.gm to i64                   ; 9 uses
  %i.gw = getelementptr i8, ptr %i.dz, i64 %i.gv  ; 10 uses
  %i.gx = sext i32 %i.go to i64                   ; 9 uses
  %i.gy = getelementptr i8, ptr %i.dz, i64 %i.gx  ; 5 uses
  %i.gz = sub i32 %spec.store.select, %i.gq
  %i.ha = and i32 %i.gz, 31                       ; 2 uses
  %i.hb = shl nuw i32 1, %i.ha
  %.not82116.i.us.i = icmp eq i32 %i.gm, %i.go    ; 5 uses
  switch i32 %i.ha, label %.preheader.i59.us.i [
    i32 0, label %.preheader84.i.us.i
    i32 1, label %.preheader86.i.us.i
    i32 2, label %.preheader88.i.us.i
    i32 3, label %.preheader90.i.us.i
  ]

.preheader90.i.us.i:                              ; preds = %bb.m
  br i1 %.not82116.i.us.i, label %HUF_fillDTableX2ForWeight.exit.us.i, label %.lr.ph.i57.us.i

.lr.ph.i57.us.i:                                  ; preds = %.preheader90.i.us.i
  %i.hc = shl i32 %i.gq, 16
  %invariant.op.reass = add i32 %i.hc, %invariant.op140 ; 3 uses
  %i.hd = sub nsw i64 %i.gx, %i.gv
  %xtraiter276 = and i64 %i.hd, 1
  %lcmp.mod277.not = icmp eq i64 %xtraiter276, 0
  br i1 %lcmp.mod277.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i57.us.i
  %i.he = load i8, ptr %i.gw, align 1
  %i.hf = zext i8 %i.he to i32
  %i.hg = shl nuw nsw i32 %i.hf, 8
  %.reass.reass.i.us.reass.i.reass.prol = or disjoint i32 %i.hg, %invariant.op.reass
  %i.hh = zext i32 %.reass.reass.i.us.reass.i.reass.prol to i64
  %i.hi = mul nuw i64 %i.hh, 4294967297           ; 4 uses
  store i64 %i.hi, ptr %i.gu, align 2
  %i.hj = getelementptr i8, ptr %i.gu, i64 8
  store i64 %i.hi, ptr %i.hj, align 2
  %i.hk = getelementptr i8, ptr %i.gu, i64 16
  store i64 %i.hi, ptr %i.hk, align 2
  %i.hl = getelementptr i8, ptr %i.gu, i64 24
  store i64 %i.hi, ptr %i.hl, align 2
  %i.hm = getelementptr i8, ptr %i.gu, i64 32
  %i.hn = getelementptr i8, ptr %i.gw, i64 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i57.us.i
  %.394.i.us.i.unr = phi ptr [ %i.gu, %.lr.ph.i57.us.i ], [ %i.hm, %.prol.loopexit.unr-lcssa ]
  %.37793.i.us.i.unr = phi ptr [ %i.gw, %.lr.ph.i57.us.i ], [ %i.hn, %.prol.loopexit.unr-lcssa ]
  %i.ho = add nsw i64 %i.gx, -1
  %i.hp = icmp eq i64 %i.ho, %i.gv
  br i1 %i.hp, label %HUF_fillDTableX2ForWeight.exit.us.i, label %.lr.ph.i57.us.i.new

.lr.ph.i57.us.i.new:                              ; preds = %.prol.loopexit, %.lr.ph.i57.us.i.new
  %.394.i.us.i = phi ptr [ %i.ii, %.lr.ph.i57.us.i.new ], [ %.394.i.us.i.unr, %.prol.loopexit ] ; 9 uses
  %.37793.i.us.i = phi ptr [ %i.ij, %.lr.ph.i57.us.i.new ], [ %.37793.i.us.i.unr, %.prol.loopexit ] ; 3 uses
  %i.hq = load i8, ptr %.37793.i.us.i, align 1
  %i.hr = zext i8 %i.hq to i32
  %i.hs = shl nuw nsw i32 %i.hr, 8
  %.reass.reass.i.us.reass.i.reass = or disjoint i32 %i.hs, %invariant.op.reass
  %i.ht = zext i32 %.reass.reass.i.us.reass.i.reass to i64
  %i.hu = mul nuw i64 %i.ht, 4294967297           ; 4 uses
  store i64 %i.hu, ptr %.394.i.us.i, align 2
  %i.hv = getelementptr i8, ptr %.394.i.us.i, i64 8
end_hunk_0
begin_hunk_1_@HUF_readDTableX2_wksp:bb.a
  %i.ks = load i8, ptr %i.kr, align 1
  %i.kt = zext i8 %i.ks to i32
  %i.ku = shl nuw nsw i32 %i.kt, 8
  %.reass106.reass.i.us.reass.i.reass.1 = or disjoint i32 %i.ku, %invariant.op137.reass ; 2 uses
  store i32 %.reass106.reass.i.us.reass.i.reass.1, ptr %i.kq, align 2
  %i.kv = getelementptr i8, ptr %.1103.i.us.i, i64 12
  store i32 %.reass106.reass.i.us.reass.i.reass.1, ptr %i.kv, align 2
  %i.kw = getelementptr i8, ptr %.1103.i.us.i, i64 16
  %i.kx = getelementptr i8, ptr %.175102.i.us.i, i64 2
  %i.ky = load i8, ptr %i.kx, align 1
  %i.kz = zext i8 %i.ky to i32
  %i.la = shl nuw nsw i32 %i.kz, 8
  %.reass106.reass.i.us.reass.i.reass.2 = or disjoint i32 %i.la, %invariant.op137.reass ; 2 uses
  store i32 %.reass106.reass.i.us.reass.i.reass.2, ptr %i.kw, align 2
  %i.lb = getelementptr i8, ptr %.1103.i.us.i, i64 20
  store i32 %.reass106.reass.i.us.reass.i.reass.2, ptr %i.lb, align 2
  %i.lc = getelementptr i8, ptr %.1103.i.us.i, i64 24
  %i.ld = getelementptr i8, ptr %.175102.i.us.i, i64 3
  %i.le = load i8, ptr %i.ld, align 1
  %i.lf = zext i8 %i.le to i32
  %i.lg = shl nuw nsw i32 %i.lf, 8
  %.reass106.reass.i.us.reass.i.reass.3 = or disjoint i32 %i.lg, %invariant.op137.reass ; 2 uses
  store i32 %.reass106.reass.i.us.reass.i.reass.3, ptr %i.lc, align 2
  %i.lh = getelementptr i8, ptr %.1103.i.us.i, i64 28
  store i32 %.reass106.reass.i.us.reass.i.reass.3, ptr %i.lh, align 2
  %i.li = getelementptr i8, ptr %.1103.i.us.i, i64 32
  %i.lj = getelementptr i8, ptr %.175102.i.us.i, i64 4 ; 2 uses
  %.not80.i.us.i.3 = icmp eq ptr %i.lj, %i.gy
  br i1 %.not80.i.us.i.3, label %HUF_fillDTableX2ForWeight.exit.us.i, label %.lr.ph104.i.us.i.new, !llvm.loop !57

.preheader84.i.us.i:                              ; preds = %bb.m
  br i1 %.not82116.i.us.i, label %HUF_fillDTableX2ForWeight.exit.us.i, label %.lr.ph110.i.us.i

.lr.ph110.i.us.i:                                 ; preds = %.preheader84.i.us.i
  %i.lk = shl i32 %i.gq, 16
  %invariant.op138.reass = add i32 %i.lk, %invariant.op140 ; 5 uses
  %i.ll = sub nsw i64 %i.gx, %i.gv
  %xtraiter289 = and i64 %i.ll, 3                 ; 2 uses
  %lcmp.mod290.not = icmp eq i64 %xtraiter289, 0
  br i1 %lcmp.mod290.not, label %.prol.loopexit288, label %.prol.preheader287

.prol.preheader287:                               ; preds = %.lr.ph110.i.us.i, %.prol.preheader287
  %.0109.i.us.i.prol = phi ptr [ %i.lp, %.prol.preheader287 ], [ %i.gu, %.lr.ph110.i.us.i ] ; 2 uses
  %.074108.i.us.i.prol = phi ptr [ %i.lq, %.prol.preheader287 ], [ %i.gw, %.lr.ph110.i.us.i ] ; 2 uses
  %prol.iter291 = phi i64 [ %prol.iter291.next, %.prol.preheader287 ], [ 0, %.lr.ph110.i.us.i ]
  %i.lm = load i8, ptr %.074108.i.us.i.prol, align 1
  %i.ln = zext i8 %i.lm to i32
  %i.lo = shl nuw nsw i32 %i.ln, 8
  %.reass112.reass.i.us.reass.i.reass.prol = or disjoint i32 %i.lo, %invariant.op138.reass
  %i.lp = getelementptr i8, ptr %.0109.i.us.i.prol, i64 4 ; 2 uses
  store i32 %.reass112.reass.i.us.reass.i.reass.prol, ptr %.0109.i.us.i.prol, align 2
  %i.lq = getelementptr i8, ptr %.074108.i.us.i.prol, i64 1 ; 2 uses
  %prol.iter291.next = add i64 %prol.iter291, 1   ; 2 uses
  %prol.iter291.cmp.not = icmp eq i64 %prol.iter291.next, %xtraiter289
  br i1 %prol.iter291.cmp.not, label %.prol.loopexit288, label %.prol.preheader287, !llvm.loop !58

.prol.loopexit288:                                ; preds = %.prol.preheader287, %.lr.ph110.i.us.i
  %.0109.i.us.i.unr = phi ptr [ %i.gu, %.lr.ph110.i.us.i ], [ %i.lp, %.prol.preheader287 ]
  %.074108.i.us.i.unr = phi ptr [ %i.gw, %.lr.ph110.i.us.i ], [ %i.lq, %.prol.preheader287 ]
  %i.lr = sub nsw i64 %i.gv, %i.gx
  %i.ls = icmp ugt i64 %i.lr, -4
  br i1 %i.ls, label %HUF_fillDTableX2ForWeight.exit.us.i, label %.lr.ph110.i.us.i.new

.lr.ph110.i.us.i.new:                             ; preds = %.prol.loopexit288, %.lr.ph110.i.us.i.new
  %.0109.i.us.i = phi ptr [ %i.ml, %.lr.ph110.i.us.i.new ], [ %.0109.i.us.i.unr, %.prol.loopexit288 ] ; 5 uses
  %.074108.i.us.i = phi ptr [ %i.mm, %.lr.ph110.i.us.i.new ], [ %.074108.i.us.i.unr, %.prol.loopexit288 ] ; 5 uses
  %i.lt = load i8, ptr %.074108.i.us.i, align 1
  %i.lu = zext i8 %i.lt to i32
  %i.lv = shl nuw nsw i32 %i.lu, 8
  %.reass112.reass.i.us.reass.i.reass = or disjoint i32 %i.lv, %invariant.op138.reass
  %i.lw = getelementptr i8, ptr %.0109.i.us.i, i64 4
  store i32 %.reass112.reass.i.us.reass.i.reass, ptr %.0109.i.us.i, align 2
  %i.lx = getelementptr i8, ptr %.074108.i.us.i, i64 1
  %i.ly = load i8, ptr %i.lx, align 1
  %i.lz = zext i8 %i.ly to i32
  %i.ma = shl nuw nsw i32 %i.lz, 8
  %.reass112.reass.i.us.reass.i.reass.1 = or disjoint i32 %i.ma, %invariant.op138.reass
  %i.mb = getelementptr i8, ptr %.0109.i.us.i, i64 8
  store i32 %.reass112.reass.i.us.reass.i.reass.1, ptr %i.lw, align 2
  %i.mc = getelementptr i8, ptr %.074108.i.us.i, i64 2
  %i.md = load i8, ptr %i.mc, align 1
  %i.me = zext i8 %i.md to i32
  %i.mf = shl nuw nsw i32 %i.me, 8
  %.reass112.reass.i.us.reass.i.reass.2 = or disjoint i32 %i.mf, %invariant.op138.reass
  %i.mg = getelementptr i8, ptr %.0109.i.us.i, i64 12
  store i32 %.reass112.reass.i.us.reass.i.reass.2, ptr %i.mb, align 2
  %i.mh = getelementptr i8, ptr %.074108.i.us.i, i64 3
  %i.mi = load i8, ptr %i.mh, align 1
  %i.mj = zext i8 %i.mi to i32
  %i.mk = shl nuw nsw i32 %i.mj, 8
  %.reass112.reass.i.us.reass.i.reass.3 = or disjoint i32 %i.mk, %invariant.op138.reass
  %i.ml = getelementptr i8, ptr %.0109.i.us.i, i64 16
  store i32 %.reass112.reass.i.us.reass.i.reass.3, ptr %i.mg, align 2
  %i.mm = getelementptr i8, ptr %.074108.i.us.i, i64 4 ; 2 uses
  %.not81.i.us.i.3 = icmp eq ptr %i.mm, %i.gy
  br i1 %.not81.i.us.i.3, label %HUF_fillDTableX2ForWeight.exit.us.i, label %.lr.ph110.i.us.i.new, !llvm.loop !59

.preheader.i59.us.i:                              ; preds = %bb.m
  br i1 %.not82116.i.us.i, label %HUF_fillDTableX2ForWeight.exit.us.i, label %.lr.ph119.i.us.i

.lr.ph119.i.us.i:                                 ; preds = %.preheader.i59.us.i
  %i.mn = shl i32 %i.gq, 16
  %i.mo = zext i32 %i.hb to i64
  %.idx.i.us.i = shl nuw nsw i64 %i.mo, 2         ; 2 uses
  %invariant.op139.reass = add i32 %i.mn, %invariant.op140
  %i.mp = add nsw i64 %.idx.i.us.i, -32           ; 2 uses
  %i.mq = lshr i64 %i.mp, 5
  %i.mr = add nuw nsw i64 %i.mq, 1
  %xtraiter292 = and i64 %i.mr, 3                 ; 2 uses
  %lcmp.mod293.not = icmp eq i64 %xtraiter292, 0
  %i.ms = icmp ult i64 %i.mp, 96
  br label %.lr.ph115.preheader.i.us.i

.lr.ph115.preheader.i.us.i:                       ; preds = %._crit_edge.i.us.i, %.lr.ph119.i.us.i
  %.4118.i.us.i = phi ptr [ %i.gu, %.lr.ph119.i.us.i ], [ %i.my, %._crit_edge.i.us.i ] ; 3 uses
  %.478117.i.us.i = phi ptr [ %i.gw, %.lr.ph119.i.us.i ], [ %i.nt, %._crit_edge.i.us.i ] ; 2 uses
  %i.mt = load i8, ptr %.478117.i.us.i, align 1
  %i.mu = zext i8 %i.mt to i32
  %i.mv = shl nuw nsw i32 %i.mu, 8
  %.reass.i.reass = or disjoint i32 %i.mv, %invariant.op139.reass
  %i.mw = zext i32 %.reass.i.reass to i64
  %i.mx = mul nuw i64 %i.mw, 4294967297           ; 20 uses
  %i.my = getelementptr i8, ptr %.4118.i.us.i, i64 %.idx.i.us.i ; 2 uses
  br i1 %lcmp.mod293.not, label %.lr.ph115.i.us.i.prol.loopexit, label %.lr.ph115.i.us.i.prol

.lr.ph115.i.us.i.prol:                            ; preds = %.lr.ph115.preheader.i.us.i, %.lr.ph115.i.us.i.prol
  %.5114.i.us.i.prol = phi ptr [ %i.nc, %.lr.ph115.i.us.i.prol ], [ %.4118.i.us.i, %.lr.ph115.preheader.i.us.i ] ; 5 uses
  %prol.iter294 = phi i64 [ %prol.iter294.next, %.lr.ph115.i.us.i.prol ], [ 0, %.lr.ph115.preheader.i.us.i ]
  store i64 %i.mx, ptr %.5114.i.us.i.prol, align 2
  %i.mz = getelementptr i8, ptr %.5114.i.us.i.prol, i64 8
  store i64 %i.mx, ptr %i.mz, align 2
  %i.na = getelementptr i8, ptr %.5114.i.us.i.prol, i64 16
  store i64 %i.mx, ptr %i.na, align 2
  %i.nb = getelementptr i8, ptr %.5114.i.us.i.prol, i64 24
  store i64 %i.mx, ptr %i.nb, align 2
  %i.nc = getelementptr i8, ptr %.5114.i.us.i.prol, i64 32 ; 2 uses
  %prol.iter294.next = add i64 %prol.iter294, 1   ; 2 uses
  %prol.iter294.cmp.not = icmp eq i64 %prol.iter294.next, %xtraiter292
  br i1 %prol.iter294.cmp.not, label %.lr.ph115.i.us.i.prol.loopexit, label %.lr.ph115.i.us.i.prol, !llvm.loop !60

.lr.ph115.i.us.i.prol.loopexit:                   ; preds = %.lr.ph115.i.us.i.prol, %.lr.ph115.preheader.i.us.i
  %.5114.i.us.i.unr = phi ptr [ %.4118.i.us.i, %.lr.ph115.preheader.i.us.i ], [ %i.nc, %.lr.ph115.i.us.i.prol ]
  br i1 %i.ms, label %._crit_edge.i.us.i, label %.lr.ph115.i.us.i

.lr.ph115.i.us.i:                                 ; preds = %.lr.ph115.i.us.i.prol.loopexit, %.lr.ph115.i.us.i
  %.5114.i.us.i = phi ptr [ %i.ns, %.lr.ph115.i.us.i ], [ %.5114.i.us.i.unr, %.lr.ph115.i.us.i.prol.loopexit ] ; 17 uses
  store i64 %i.mx, ptr %.5114.i.us.i, align 2
  %i.nd = getelementptr i8, ptr %.5114.i.us.i, i64 8
  store i64 %i.mx, ptr %i.nd, align 2
  %i.ne = getelementptr i8, ptr %.5114.i.us.i, i64 16
  store i64 %i.mx, ptr %i.ne, align 2
  %i.nf = getelementptr i8, ptr %.5114.i.us.i, i64 24
  store i64 %i.mx, ptr %i.nf, align 2
  %i.ng = getelementptr i8, ptr %.5114.i.us.i, i64 32
  store i64 %i.mx, ptr %i.ng, align 2
  %i.nh = getelementptr i8, ptr %.5114.i.us.i, i64 40
  store i64 %i.mx, ptr %i.nh, align 2
  %i.ni = getelementptr i8, ptr %.5114.i.us.i, i64 48
  store i64 %i.mx, ptr %i.ni, align 2
  %i.nj = getelementptr i8, ptr %.5114.i.us.i, i64 56
  store i64 %i.mx, ptr %i.nj, align 2
  %i.nk = getelementptr i8, ptr %.5114.i.us.i, i64 64
  store i64 %i.mx, ptr %i.nk, align 2
  %i.nl = getelementptr i8, ptr %.5114.i.us.i, i64 72
  store i64 %i.mx, ptr %i.nl, align 2
  %i.nm = getelementptr i8, ptr %.5114.i.us.i, i64 80
  store i64 %i.mx, ptr %i.nm, align 2
  %i.nn = getelementptr i8, ptr %.5114.i.us.i, i64 88
  store i64 %i.mx, ptr %i.nn, align 2
  %i.no = getelementptr i8, ptr %.5114.i.us.i, i64 96
  store i64 %i.mx, ptr %i.no, align 2
  %i.np = getelementptr i8, ptr %.5114.i.us.i, i64 104
  store i64 %i.mx, ptr %i.np, align 2
  %i.nq = getelementptr i8, ptr %.5114.i.us.i, i64 112
  store i64 %i.mx, ptr %i.nq, align 2
  %i.nr = getelementptr i8, ptr %.5114.i.us.i, i64 120
  store i64 %i.mx, ptr %i.nr, align 2
  %i.ns = getelementptr i8, ptr %.5114.i.us.i, i64 128 ; 2 uses
  %.not83.i.us.i.3 = icmp eq ptr %i.ns, %i.my
  br i1 %.not83.i.us.i.3, label %._crit_edge.i.us.i, label %.lr.ph115.i.us.i, !llvm.loop !61

._crit_edge.i.us.i:                               ; preds = %.lr.ph115.i.us.i, %.lr.ph115.i.us.i.prol.loopexit
  %i.nt = getelementptr i8, ptr %.478117.i.us.i, i64 1 ; 2 uses
  %.not82.i.us.i = icmp eq ptr %i.nt, %i.gy
  br i1 %.not82.i.us.i, label %HUF_fillDTableX2ForWeight.exit.us.i, label %.lr.ph115.preheader.i.us.i, !llvm.loop !62

HUF_fillDTableX2ForWeight.exit.us.i:              ; preds = %.prol.loopexit, %.lr.ph.i57.us.i.new, %.prol.loopexit279, %.lr.ph98.i.us.i.new, %.prol.loopexit283, %.lr.ph104.i.us.i.new, %.prol.loopexit288, %.lr.ph110.i.us.i.new, %._crit_edge.i.us.i, %.preheader.i59.us.i, %.preheader84.i.us.i, %.preheader86.i.us.i, %.preheader88.i.us.i, %.preheader90.i.us.i
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next56.i.us.i, %i.aw
  br i1 %exitcond.not.i.us.i, label %HUF_fillDTableX2Level2.exit.loopexit.us.i, label %bb.m, !llvm.loop !63

HUF_fillDTableX2Level2.exit.loopexit.us.i:        ; preds = %HUF_fillDTableX2ForWeight.exit.us.i
  %i.nu = add i32 %.05265.us.i, %i.em
  %i.nv = add i32 %.066.us.i, 1                   ; 2 uses
  %.not56.us.i = icmp eq i32 %i.nv, %i.ef
  br i1 %.not56.us.i, label %.loopexit.i, label %.lr.ph.split.us.i, !llvm.loop !64

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  br i1 %i.eq, label %.lr.ph.split.split.i, label %.loopexit.i

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i
  switch i32 %i.em, label %.preheader.i.i [
    i32 2, label %.loopexit.i.us69.i.preheader
    i32 4, label %.loopexit.i.us76.i.preheader
  ]

.loopexit.i.us76.i.preheader:                     ; preds = %.lr.ph.split.split.i
  %i.nw = sub i32 %i.ef, %i.ed
  %.neg = add i32 %i.ed, 1
  %xtraiter260 = and i32 %i.nw, 1
  %lcmp.mod261.not = icmp eq i32 %xtraiter260, 0
  br i1 %lcmp.mod261.not, label %.loopexit.i.us76.i.prol.loopexit, label %.loopexit.i.us76.i.prol

.loopexit.i.us76.i.prol:                          ; preds = %.loopexit.i.us76.i.preheader
  %i.nx = sext i32 %i.ek to i64
  %i.ny = getelementptr [4 x i8], ptr %i.d, i64 %i.nx ; 2 uses
  %i.nz = sext i32 %i.ed to i64
  %i.oa = getelementptr i8, ptr %i.dz, i64 %i.nz
  %i.ob = load i8, ptr %i.oa, align 1
  %i.oc = zext i8 %i.ob to i32
  %i.od = or disjoint i32 %i.es, %i.oc
  %i.oe = zext i32 %i.od to i64
  %i.of = mul nuw i64 %i.oe, 4294967297           ; 2 uses
  store i64 %i.of, ptr %i.ny, align 2
  %i.og = getelementptr i8, ptr %i.ny, i64 8
  store i64 %i.of, ptr %i.og, align 2
  %i.oh = add i32 %i.ek, 4
  %i.oi = add i32 %i.ed, 1
  br label %.loopexit.i.us76.i.prol.loopexit

.loopexit.i.us76.i.prol.loopexit:                 ; preds = %.loopexit.i.us76.i.prol, %.loopexit.i.us76.i.preheader
  %.066.us74.i.unr = phi i32 [ %i.ed, %.loopexit.i.us76.i.preheader ], [ %i.oi, %.loopexit.i.us76.i.prol ]
  %.05265.us75.i.unr = phi i32 [ %i.ek, %.loopexit.i.us76.i.preheader ], [ %i.oh, %.loopexit.i.us76.i.prol ]
  %i.oj = icmp eq i32 %i.ef, %.neg
  br i1 %i.oj, label %.loopexit.i, label %.loopexit.i.us76.i

.loopexit.i.us69.i.preheader:                     ; preds = %.lr.ph.split.split.i
  %i.ok = sub i32 %i.ef, %i.ed
  %.neg310 = add i32 %i.ed, 1
  %xtraiter262 = and i32 %i.ok, 1
  %lcmp.mod263.not = icmp eq i32 %xtraiter262, 0
  br i1 %lcmp.mod263.not, label %.loopexit.i.us69.i.prol.loopexit, label %.loopexit.i.us69.i.prol

.loopexit.i.us69.i.prol:                          ; preds = %.loopexit.i.us69.i.preheader
  %i.ol = sext i32 %i.ek to i64
  %i.om = getelementptr [4 x i8], ptr %i.d, i64 %i.ol
  %i.on = sext i32 %i.ed to i64
  %i.oo = getelementptr i8, ptr %i.dz, i64 %i.on
  %i.op = load i8, ptr %i.oo, align 1
  %i.oq = zext i8 %i.op to i32
  %i.or = or disjoint i32 %i.es, %i.oq
  %i.os = zext i32 %i.or to i64
  %i.ot = mul nuw i64 %i.os, 4294967297
  store i64 %i.ot, ptr %i.om, align 2
  %i.ou = add i32 %i.ek, 2
  %i.ov = add i32 %i.ed, 1
  br label %.loopexit.i.us69.i.prol.loopexit

.loopexit.i.us69.i.prol.loopexit:                 ; preds = %.loopexit.i.us69.i.prol, %.loopexit.i.us69.i.preheader
  %.066.us67.i.unr = phi i32 [ %i.ed, %.loopexit.i.us69.i.preheader ], [ %i.ov, %.loopexit.i.us69.i.prol ]
  %.05265.us68.i.unr = phi i32 [ %i.ek, %.loopexit.i.us69.i.preheader ], [ %i.ou, %.loopexit.i.us69.i.prol ]
  %i.ow = icmp eq i32 %i.ef, %.neg310
  br i1 %i.ow, label %.loopexit.i, label %.loopexit.i.us69.i

.loopexit.i.us69.i:                               ; preds = %.loopexit.i.us69.i.prol.loopexit, %.loopexit.i.us69.i
  %.066.us67.i = phi i32 [ %i.ps, %.loopexit.i.us69.i ], [ %.066.us67.i.unr, %.loopexit.i.us69.i.prol.loopexit ] ; 3 uses
  %.05265.us68.i = phi i32 [ %i.pr, %.loopexit.i.us69.i ], [ %.05265.us68.i.unr, %.loopexit.i.us69.i.prol.loopexit ] ; 3 uses
  %i.ox = sext i32 %.05265.us68.i to i64
  %i.oy = getelementptr [4 x i8], ptr %i.d, i64 %i.ox
  %i.oz = sext i32 %.066.us67.i to i64
  %i.pa = getelementptr i8, ptr %i.dz, i64 %i.oz
  %i.pb = load i8, ptr %i.pa, align 1
  %i.pc = zext i8 %i.pb to i32
  %i.pd = or disjoint i32 %i.es, %i.pc
  %i.pe = zext i32 %i.pd to i64
  %i.pf = mul nuw i64 %i.pe, 4294967297
  store i64 %i.pf, ptr %i.oy, align 2
  %i.pg = add i32 %.05265.us68.i, 2
  %i.ph = add i32 %.066.us67.i, 1
  %i.pi = sext i32 %i.pg to i64
  %i.pj = getelementptr [4 x i8], ptr %i.d, i64 %i.pi
  %i.pk = sext i32 %i.ph to i64
  %i.pl = getelementptr i8, ptr %i.dz, i64 %i.pk
  %i.pm = load i8, ptr %i.pl, align 1
  %i.pn = zext i8 %i.pm to i32
  %i.po = or disjoint i32 %i.es, %i.pn
  %i.pp = zext i32 %i.po to i64
  %i.pq = mul nuw i64 %i.pp, 4294967297
  store i64 %i.pq, ptr %i.pj, align 2
  %i.pr = add i32 %.05265.us68.i, 4
  %i.ps = add i32 %.066.us67.i, 2                 ; 2 uses
  %.not56.us70.i.1 = icmp eq i32 %i.ps, %i.ef
  br i1 %.not56.us70.i.1, label %.loopexit.i, label %.loopexit.i.us69.i, !llvm.loop !64

.loopexit.i.us76.i:                               ; preds = %.loopexit.i.us76.i.prol.loopexit, %.loopexit.i.us76.i
  %.066.us74.i = phi i32 [ %i.qq, %.loopexit.i.us76.i ], [ %.066.us74.i.unr, %.loopexit.i.us76.i.prol.loopexit ] ; 3 uses
  %.05265.us75.i = phi i32 [ %i.qp, %.loopexit.i.us76.i ], [ %.05265.us75.i.unr, %.loopexit.i.us76.i.prol.loopexit ] ; 3 uses
  %i.pt = sext i32 %.05265.us75.i to i64
  %i.pu = getelementptr [4 x i8], ptr %i.d, i64 %i.pt ; 2 uses
  %i.pv = sext i32 %.066.us74.i to i64
  %i.pw = getelementptr i8, ptr %i.dz, i64 %i.pv
  %i.px = load i8, ptr %i.pw, align 1
  %i.py = zext i8 %i.px to i32
  %i.pz = or disjoint i32 %i.es, %i.py
  %i.qa = zext i32 %i.pz to i64
  %i.qb = mul nuw i64 %i.qa, 4294967297           ; 2 uses
  store i64 %i.qb, ptr %i.pu, align 2
  %i.qc = getelementptr i8, ptr %i.pu, i64 8
  store i64 %i.qb, ptr %i.qc, align 2
  %i.qd = add i32 %.05265.us75.i, 4
  %i.qe = add i32 %.066.us74.i, 1
  %i.qf = sext i32 %i.qd to i64
  %i.qg = getelementptr [4 x i8], ptr %i.d, i64 %i.qf ; 2 uses
  %i.qh = sext i32 %i.qe to i64
  %i.qi = getelementptr i8, ptr %i.dz, i64 %i.qh
  %i.qj = load i8, ptr %i.qi, align 1
  %i.qk = zext i8 %i.qj to i32
  %i.ql = or disjoint i32 %i.es, %i.qk
  %i.qm = zext i32 %i.ql to i64
  %i.qn = mul nuw i64 %i.qm, 4294967297           ; 2 uses
  store i64 %i.qn, ptr %i.qg, align 2
  %i.qo = getelementptr i8, ptr %i.qg, i64 8
  store i64 %i.qn, ptr %i.qo, align 2
  %i.qp = add i32 %.05265.us75.i, 8
  %i.qq = add i32 %.066.us74.i, 2                 ; 2 uses
  %.not56.us77.i.1 = icmp eq i32 %i.qq, %i.ef
  br i1 %.not56.us77.i.1, label %.loopexit.i, label %.loopexit.i.us76.i, !llvm.loop !64

.preheader.i.i:                                   ; preds = %.lr.ph.split.split.i, %.loopexit.i.i
  %.066.i = phi i32 [ %i.se, %.loopexit.i.i ], [ %i.ed, %.lr.ph.split.split.i ] ; 2 uses
  %.05265.i = phi i32 [ %i.sd, %.loopexit.i.i ], [ %i.ek, %.lr.ph.split.split.i ] ; 2 uses
  %i.qr = sext i32 %.05265.i to i64
  %i.qs = getelementptr [4 x i8], ptr %i.d, i64 %i.qr ; 5 uses
  %i.qt = sext i32 %.066.i to i64
  %i.qu = getelementptr i8, ptr %i.dz, i64 %i.qt
  %i.qv = load i8, ptr %i.qu, align 1
  %i.qw = zext i8 %i.qv to i32
  %i.qx = or disjoint i32 %i.es, %i.qw
  %i.qy = zext i32 %i.qx to i64
  %i.qz = mul nuw i64 %i.qy, 4294967297           ; 20 uses
  %6 = load i32, ptr %i.eu, align 4               ; 3 uses
  %i.ra = icmp sgt i32 %6, 0
  br i1 %i.ra, label %.lr.ph.preheader.i.i, label %.loopexit.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %i.rb = zext nneg i32 %6 to i64
  %i.rc = add nsw i64 %i.rb, -1
  %i.rd = lshr i64 %i.rc, 3
  %i.re = add nuw nsw i64 %i.rd, 1                ; 2 uses
  %xtraiter264 = and i64 %i.re, 3                 ; 3 uses
  %i.rf = icmp ult i32 %6, 25
  br i1 %i.rf, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter268 = and i64 %i.re, 4611686018427387900
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ] ; 5 uses
  %niter269 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter269.next.3, %.lr.ph.i.i ]
  %i.rg = getelementptr [4 x i8], ptr %i.qs, i64 %indvars.iv.i.i ; 4 uses
  store i64 %i.qz, ptr %i.rg, align 2
  %i.rh = getelementptr i8, ptr %i.rg, i64 8
  store i64 %i.qz, ptr %i.rh, align 2
  %i.ri = getelementptr i8, ptr %i.rg, i64 16
  store i64 %i.qz, ptr %i.ri, align 2
  %i.rj = getelementptr i8, ptr %i.rg, i64 24
  store i64 %i.qz, ptr %i.rj, align 2
  %i.rk = getelementptr [4 x i8], ptr %i.qs, i64 %indvars.iv.i.i ; 4 uses
  %i.rl = getelementptr i8, ptr %i.rk, i64 32
  store i64 %i.qz, ptr %i.rl, align 2
  %i.rm = getelementptr i8, ptr %i.rk, i64 40
  store i64 %i.qz, ptr %i.rm, align 2
  %i.rn = getelementptr i8, ptr %i.rk, i64 48
  store i64 %i.qz, ptr %i.rn, align 2
  %i.ro = getelementptr i8, ptr %i.rk, i64 56
  store i64 %i.qz, ptr %i.ro, align 2
  %i.rp = getelementptr [4 x i8], ptr %i.qs, i64 %indvars.iv.i.i ; 4 uses
  %i.rq = getelementptr i8, ptr %i.rp, i64 64
  store i64 %i.qz, ptr %i.rq, align 2
  %i.rr = getelementptr i8, ptr %i.rp, i64 72
  store i64 %i.qz, ptr %i.rr, align 2
  %i.rs = getelementptr i8, ptr %i.rp, i64 80
  store i64 %i.qz, ptr %i.rs, align 2
  %i.rt = getelementptr i8, ptr %i.rp, i64 88
  store i64 %i.qz, ptr %i.rt, align 2
  %i.ru = getelementptr [4 x i8], ptr %i.qs, i64 %indvars.iv.i.i ; 4 uses
  %i.rv = getelementptr i8, ptr %i.ru, i64 96
  store i64 %i.qz, ptr %i.rv, align 2
  %i.rw = getelementptr i8, ptr %i.ru, i64 104
  store i64 %i.qz, ptr %i.rw, align 2
  %i.rx = getelementptr i8, ptr %i.ru, i64 112
  store i64 %i.qz, ptr %i.rx, align 2
  %i.ry = getelementptr i8, ptr %i.ru, i64 120
  store i64 %i.qz, ptr %i.ry, align 2
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 32 ; 2 uses
  %niter269.next.3 = add i64 %niter269, 4         ; 2 uses
  %niter269.ncmp.3.not = icmp eq i64 %niter269.next.3, %unroll_iter268
  br i1 %niter269.ncmp.3.not, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !51

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i
  %lcmp.mod266.not = icmp eq i64 %xtraiter264, 0
  br i1 %lcmp.mod266.not, label %.loopexit.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.3, %.loopexit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod267 = icmp ne i64 %xtraiter264, 0
  call void @llvm.assume(i1 %lcmp.mod267)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ] ; 2 uses
  %epil.iter265 = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter265.next, %.lr.ph.i.i.epil ]
  %i.rz = getelementptr [4 x i8], ptr %i.qs, i64 %indvars.iv.i.i.epil ; 4 uses
  store i64 %i.qz, ptr %i.rz, align 2
  %i.sa = getelementptr i8, ptr %i.rz, i64 8
  store i64 %i.qz, ptr %i.sa, align 2
  %i.sb = getelementptr i8, ptr %i.rz, i64 16
  store i64 %i.qz, ptr %i.sb, align 2
  %i.sc = getelementptr i8, ptr %i.rz, i64 24
  store i64 %i.qz, ptr %i.sc, align 2
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 8
  %epil.iter265.next = add i64 %epil.iter265, 1   ; 2 uses
  %epil.iter265.cmp.not = icmp eq i64 %epil.iter265.next, %xtraiter264
  br i1 %epil.iter265.cmp.not, label %.loopexit.i.i, label %.lr.ph.i.i.epil, !llvm.loop !65

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %.preheader.i.i
  %i.sd = add i32 %.05265.i, %i.em
  %i.se = add i32 %.066.i, 1                      ; 2 uses
  %.not56.i = icmp eq i32 %i.se, %i.ef
  br i1 %.not56.i, label %.loopexit.i, label %.preheader.i.i, !llvm.loop !64

bb.n:                                             ; preds = %.lr.ph79.i
  %i.sf = zext i32 %i.ek to i64
  %i.sg = getelementptr [4 x i8], ptr %i.d, i64 %i.sf ; 13 uses
  %i.sh = sext i32 %i.ed to i64                   ; 9 uses
  %i.si = getelementptr i8, ptr %i.dz, i64 %i.sh  ; 10 uses
  %i.sj = sext i32 %i.ef to i64                   ; 9 uses
  %i.sk = getelementptr i8, ptr %i.dz, i64 %i.sj  ; 5 uses
  %i.sl = and i32 %i.ei, 31                       ; 2 uses
  %i.sm = shl nuw i32 1, %i.sl
  %.not82116.i = icmp eq i32 %i.ed, %i.ef         ; 5 uses
  switch i32 %i.sl, label %.preheader.i [
    i32 0, label %.preheader84.i
    i32 1, label %.preheader86.i
    i32 2, label %.preheader88.i
    i32 3, label %.preheader90.i
  ]

.preheader90.i:                                   ; preds = %bb.n
  br i1 %.not82116.i, label %.loopexit.i, label %.lr.ph.i99

.lr.ph.i99:                                       ; preds = %.preheader90.i
  %i.sn = shl i32 %i.eh, 16
  %i.so = add i32 %i.sn, 16777216                 ; 3 uses
  %i.sp = sub nsw i64 %i.sj, %i.sh
  %xtraiter295 = and i64 %i.sp, 1
  %lcmp.mod296.not = icmp eq i64 %xtraiter295, 0
  br i1 %lcmp.mod296.not, label %.lr.ph.split.us.i100.prol.loopexit, label %.lr.ph.split.us.i100.prol

.lr.ph.split.us.i100.prol:                        ; preds = %.lr.ph.i99
  %i.sq = load i8, ptr %i.si, align 1
  %i.sr = zext i8 %i.sq to i32
  %i.ss = or disjoint i32 %i.so, %i.sr
  %i.st = zext i32 %i.ss to i64
  %i.su = mul nuw i64 %i.st, 4294967297           ; 4 uses
  store i64 %i.su, ptr %i.sg, align 2
  %i.sv = getelementptr i8, ptr %i.sg, i64 8
  store i64 %i.su, ptr %i.sv, align 2
  %i.sw = getelementptr i8, ptr %i.sg, i64 16
  store i64 %i.su, ptr %i.sw, align 2
  %i.sx = getelementptr i8, ptr %i.sg, i64 24
  store i64 %i.su, ptr %i.sx, align 2
  %i.sy = getelementptr i8, ptr %i.sg, i64 32
  %i.sz = getelementptr i8, ptr %i.si, i64 1
  br label %.lr.ph.split.us.i100.prol.loopexit

.lr.ph.split.us.i100.prol.loopexit:               ; preds = %.lr.ph.split.us.i100.prol, %.lr.ph.i99
  %.394.us.i.unr = phi ptr [ %i.sg, %.lr.ph.i99 ], [ %i.sy, %.lr.ph.split.us.i100.prol ]
  %.37793.us.i.unr = phi ptr [ %i.si, %.lr.ph.i99 ], [ %i.sz, %.lr.ph.split.us.i100.prol ]
  %i.ta = add nsw i64 %i.sj, -1
  %i.tb = icmp eq i64 %i.ta, %i.sh
  br i1 %i.tb, label %.loopexit.i, label %.lr.ph.split.us.i100

.lr.ph.split.us.i100:                             ; preds = %.lr.ph.split.us.i100.prol.loopexit, %.lr.ph.split.us.i100
  %.394.us.i = phi ptr [ %i.tu, %.lr.ph.split.us.i100 ], [ %.394.us.i.unr, %.lr.ph.split.us.i100.prol.loopexit ] ; 9 uses
  %.37793.us.i = phi ptr [ %i.tv, %.lr.ph.split.us.i100 ], [ %.37793.us.i.unr, %.lr.ph.split.us.i100.prol.loopexit ] ; 3 uses
  %i.tc = load i8, ptr %.37793.us.i, align 1
  %i.td = zext i8 %i.tc to i32
  %i.te = or disjoint i32 %i.so, %i.td
  %i.tf = zext i32 %i.te to i64
  %i.tg = mul nuw i64 %i.tf, 4294967297           ; 4 uses
  store i64 %i.tg, ptr %.394.us.i, align 2
  %i.th = getelementptr i8, ptr %.394.us.i, i64 8
  store i64 %i.tg, ptr %i.th, align 2
  %i.ti = getelementptr i8, ptr %.394.us.i, i64 16
  store i64 %i.tg, ptr %i.ti, align 2
  %i.tj = getelementptr i8, ptr %.394.us.i, i64 24
  store i64 %i.tg, ptr %i.tj, align 2
  %i.tk = getelementptr i8, ptr %.394.us.i, i64 32
  %i.tl = getelementptr i8, ptr %.37793.us.i, i64 1
  %i.tm = load i8, ptr %i.tl, align 1
  %i.tn = zext i8 %i.tm to i32
  %i.to = or disjoint i32 %i.so, %i.tn
  %i.tp = zext i32 %i.to to i64
  %i.tq = mul nuw i64 %i.tp, 4294967297           ; 4 uses
  store i64 %i.tq, ptr %i.tk, align 2
  %i.tr = getelementptr i8, ptr %.394.us.i, i64 40
  store i64 %i.tq, ptr %i.tr, align 2
  %i.ts = getelementptr i8, ptr %.394.us.i, i64 48
  store i64 %i.tq, ptr %i.ts, align 2
  %i.tt = getelementptr i8, ptr %.394.us.i, i64 56
  store i64 %i.tq, ptr %i.tt, align 2
  %i.tu = getelementptr i8, ptr %.394.us.i, i64 64
  %i.tv = getelementptr i8, ptr %.37793.us.i, i64 2 ; 2 uses
  %.not.us.i.1 = icmp eq ptr %i.tv, %i.sk
  br i1 %.not.us.i.1, label %.loopexit.i, label %.lr.ph.split.us.i100, !llvm.loop !53

.preheader88.i:                                   ; preds = %bb.n
  br i1 %.not82116.i, label %.loopexit.i, label %.lr.ph98.i

.lr.ph98.i:                                       ; preds = %.preheader88.i
  %i.tw = shl i32 %i.eh, 16
  %i.tx = add i32 %i.tw, 16777216                 ; 5 uses
  %i.ty = sub nsw i64 %i.sj, %i.sh
  %xtraiter298 = and i64 %i.ty, 3                 ; 2 uses
  %lcmp.mod299.not = icmp eq i64 %xtraiter298, 0
  br i1 %lcmp.mod299.not, label %.lr.ph98.split.us.i.prol.loopexit, label %.lr.ph98.split.us.i.prol

.lr.ph98.split.us.i.prol:                         ; preds = %.lr.ph98.i, %.lr.ph98.split.us.i.prol
  %.297.us.i.prol = phi ptr [ %i.uf, %.lr.ph98.split.us.i.prol ], [ %i.sg, %.lr.ph98.i ] ; 3 uses
  %.27696.us.i.prol = phi ptr [ %i.ug, %.lr.ph98.split.us.i.prol ], [ %i.si, %.lr.ph98.i ] ; 2 uses
  %prol.iter300 = phi i64 [ %prol.iter300.next, %.lr.ph98.split.us.i.prol ], [ 0, %.lr.ph98.i ]
  %i.tz = load i8, ptr %.27696.us.i.prol, align 1
  %i.ua = zext i8 %i.tz to i32
  %i.ub = or disjoint i32 %i.tx, %i.ua
  %i.uc = zext i32 %i.ub to i64
  %i.ud = mul nuw i64 %i.uc, 4294967297           ; 2 uses
  store i64 %i.ud, ptr %.297.us.i.prol, align 2
  %i.ue = getelementptr i8, ptr %.297.us.i.prol, i64 8
  store i64 %i.ud, ptr %i.ue, align 2
  %i.uf = getelementptr i8, ptr %.297.us.i.prol, i64 16 ; 2 uses
  %i.ug = getelementptr i8, ptr %.27696.us.i.prol, i64 1 ; 2 uses
  %prol.iter300.next = add i64 %prol.iter300, 1   ; 2 uses
  %prol.iter300.cmp.not = icmp eq i64 %prol.iter300.next, %xtraiter298
  br i1 %prol.iter300.cmp.not, label %.lr.ph98.split.us.i.prol.loopexit, label %.lr.ph98.split.us.i.prol, !llvm.loop !66

.lr.ph98.split.us.i.prol.loopexit:                ; preds = %.lr.ph98.split.us.i.prol, %.lr.ph98.i
  %.297.us.i.unr = phi ptr [ %i.sg, %.lr.ph98.i ], [ %i.uf, %.lr.ph98.split.us.i.prol ]
  %.27696.us.i.unr = phi ptr [ %i.si, %.lr.ph98.i ], [ %i.ug, %.lr.ph98.split.us.i.prol ]
  %i.uh = sub nsw i64 %i.sh, %i.sj
  %i.ui = icmp ugt i64 %i.uh, -4
  br i1 %i.ui, label %.loopexit.i, label %.lr.ph98.split.us.i

.lr.ph98.split.us.i:                              ; preds = %.lr.ph98.split.us.i.prol.loopexit, %.lr.ph98.split.us.i
  %.297.us.i = phi ptr [ %i.vn, %.lr.ph98.split.us.i ], [ %.297.us.i.unr, %.lr.ph98.split.us.i.prol.loopexit ] ; 9 uses
  %.27696.us.i = phi ptr [ %i.vo, %.lr.ph98.split.us.i ], [ %.27696.us.i.unr, %.lr.ph98.split.us.i.prol.loopexit ] ; 5 uses
  %i.uj = load i8, ptr %.27696.us.i, align 1
  %i.uk = zext i8 %i.uj to i32
  %i.ul = or disjoint i32 %i.tx, %i.uk
  %i.um = zext i32 %i.ul to i64
  %i.un = mul nuw i64 %i.um, 4294967297           ; 2 uses
  store i64 %i.un, ptr %.297.us.i, align 2
  %i.uo = getelementptr i8, ptr %.297.us.i, i64 8
  store i64 %i.un, ptr %i.uo, align 2
  %i.up = getelementptr i8, ptr %.297.us.i, i64 16
  %i.uq = getelementptr i8, ptr %.27696.us.i, i64 1
  %i.ur = load i8, ptr %i.uq, align 1
  %i.us = zext i8 %i.ur to i32
  %i.ut = or disjoint i32 %i.tx, %i.us
  %i.uu = zext i32 %i.ut to i64
  %i.uv = mul nuw i64 %i.uu, 4294967297           ; 2 uses
  store i64 %i.uv, ptr %i.up, align 2
  %i.uw = getelementptr i8, ptr %.297.us.i, i64 24
  store i64 %i.uv, ptr %i.uw, align 2
  %i.ux = getelementptr i8, ptr %.297.us.i, i64 32
  %i.uy = getelementptr i8, ptr %.27696.us.i, i64 2
  %i.uz = load i8, ptr %i.uy, align 1
  %i.va = zext i8 %i.uz to i32
  %i.vb = or disjoint i32 %i.tx, %i.va
  %i.vc = zext i32 %i.vb to i64
  %i.vd = mul nuw i64 %i.vc, 4294967297           ; 2 uses
  store i64 %i.vd, ptr %i.ux, align 2
  %i.ve = getelementptr i8, ptr %.297.us.i, i64 40
  store i64 %i.vd, ptr %i.ve, align 2
  %i.vf = getelementptr i8, ptr %.297.us.i, i64 48
  %i.vg = getelementptr i8, ptr %.27696.us.i, i64 3
  %i.vh = load i8, ptr %i.vg, align 1
  %i.vi = zext i8 %i.vh to i32
  %i.vj = or disjoint i32 %i.tx, %i.vi
  %i.vk = zext i32 %i.vj to i64
  %i.vl = mul nuw i64 %i.vk, 4294967297           ; 2 uses
  store i64 %i.vl, ptr %i.vf, align 2
  %i.vm = getelementptr i8, ptr %.297.us.i, i64 56
  store i64 %i.vl, ptr %i.vm, align 2
  %i.vn = getelementptr i8, ptr %.297.us.i, i64 64
  %i.vo = getelementptr i8, ptr %.27696.us.i, i64 4 ; 2 uses
  %.not79.us.i.3 = icmp eq ptr %i.vo, %i.sk
  br i1 %.not79.us.i.3, label %.loopexit.i, label %.lr.ph98.split.us.i, !llvm.loop !55

.preheader86.i:                                   ; preds = %bb.n
  br i1 %.not82116.i, label %.loopexit.i, label %.lr.ph104.i

.lr.ph104.i:                                      ; preds = %.preheader86.i
  %i.vp = shl i32 %i.eh, 16
  %i.vq = add i32 %i.vp, 16777216                 ; 5 uses
  %i.vr = sub nsw i64 %i.sj, %i.sh
  %xtraiter301 = and i64 %i.vr, 3                 ; 2 uses
  %lcmp.mod302.not = icmp eq i64 %xtraiter301, 0
  br i1 %lcmp.mod302.not, label %.lr.ph104.split.us.i.prol.loopexit, label %.lr.ph104.split.us.i.prol

.lr.ph104.split.us.i.prol:                        ; preds = %.lr.ph104.i, %.lr.ph104.split.us.i.prol
  %.1103.us.i.prol = phi ptr [ %i.vw, %.lr.ph104.split.us.i.prol ], [ %i.sg, %.lr.ph104.i ] ; 3 uses
  %.175102.us.i.prol = phi ptr [ %i.vx, %.lr.ph104.split.us.i.prol ], [ %i.si, %.lr.ph104.i ] ; 2 uses
  %prol.iter303 = phi i64 [ %prol.iter303.next, %.lr.ph104.split.us.i.prol ], [ 0, %.lr.ph104.i ]
  %i.vs = load i8, ptr %.175102.us.i.prol, align 1
  %i.vt = zext i8 %i.vs to i32
  %i.vu = or disjoint i32 %i.vq, %i.vt            ; 2 uses
  store i32 %i.vu, ptr %.1103.us.i.prol, align 2
  %i.vv = getelementptr i8, ptr %.1103.us.i.prol, i64 4
  store i32 %i.vu, ptr %i.vv, align 2
  %i.vw = getelementptr i8, ptr %.1103.us.i.prol, i64 8 ; 2 uses
  %i.vx = getelementptr i8, ptr %.175102.us.i.prol, i64 1 ; 2 uses
  %prol.iter303.next = add i64 %prol.iter303, 1   ; 2 uses
  %prol.iter303.cmp.not = icmp eq i64 %prol.iter303.next, %xtraiter301
  br i1 %prol.iter303.cmp.not, label %.lr.ph104.split.us.i.prol.loopexit, label %.lr.ph104.split.us.i.prol, !llvm.loop !67

end_hunk_1
