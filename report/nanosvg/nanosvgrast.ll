Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanosvg/original/nanosvgrast?download=true
inline.NumInlined: 431
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 14
begin_hunk_0_@nsvgRasterize:bb.a
nsvg__addPathPoint.exit.i:                        ; preds = %bb.k, %bb.j
  %i.cv = getelementptr inbounds nuw i8, ptr %.04869.i, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !61
  %i.cx = icmp sgt i32 %i.cw, 1
  br i1 %i.cx, label %.lr.ph.i121, label %._crit_edge.i

.lr.ph.i121:                                      ; preds = %nsvg__addPathPoint.exit.i, %.lr.ph.i121
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i121 ], [ 0, %nsvg__addPathPoint.exit.i ] ; 2 uses
  %i.cy = load ptr, ptr %.04869.i, align 8, !tbaa !62
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 3
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx.i ; 2 uses
  %i.da = load <4 x float>, ptr %i.cz, align 4, !tbaa !30
  %i.db = fmul <4 x float> %i.bg, %i.da           ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dd = load <4 x float>, ptr %i.dc, align 4, !tbaa !30
  %i.de = fmul <4 x float> %i.bg, %i.dd           ; 4 uses
  %i.df = extractelement <4 x float> %i.db, i64 0
  %i.dg = extractelement <4 x float> %i.db, i64 1
  %i.dh = extractelement <4 x float> %i.db, i64 2
  %i.di = extractelement <4 x float> %i.db, i64 3
  %i.dj = extractelement <4 x float> %i.de, i64 0
  %i.dk = extractelement <4 x float> %i.de, i64 1
  %i.dl = extractelement <4 x float> %i.de, i64 2
  %i.dm = extractelement <4 x float> %i.de, i64 3
  tail call fastcc void @nsvg__flattenCubicBez(ptr noundef nonnull %0, float noundef %i.df, float noundef %i.dg, float noundef %i.dh, float noundef %i.di, float noundef %i.dj, float noundef %i.dk, float noundef %i.dl, float noundef %i.dm, i32 noundef 0, i32 noundef 0)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.dn = load i32, ptr %i.cv, align 8, !tbaa !61
  %i.do = add nsw i32 %i.dn, -1
  %i.dp = trunc nuw i64 %indvars.iv.next.i to i32
  %i.dq = icmp sgt i32 %i.do, %i.dp
  br i1 %i.dq, label %.lr.ph.i121, label %._crit_edge.i, !llvm.loop !192

._crit_edge.i:                                    ; preds = %.lr.ph.i121, %nsvg__addPathPoint.exit.i
  %i.dr = load ptr, ptr %.04869.i, align 8, !tbaa !62
  %i.ds = load <2 x float>, ptr %i.dr, align 4, !tbaa !30
  %i.dt = fmul <2 x float> %i.be, %i.ds           ; 3 uses
  %i.du = load i32, ptr %i.ao, align 8, !tbaa !112 ; 5 uses
  %i.dv = icmp sgt i32 %i.du, 0
  br i1 %i.dv, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i
  %i.dw = load ptr, ptr %i.aq, align 8, !tbaa !98
  %i.dx = zext nneg i32 %i.du to i64
  %i.dy = getelementptr [32 x i8], ptr %i.dw, i64 %i.dx ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 -32
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !116
  %i.eb = getelementptr i8, ptr %i.dy, i64 -28
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !117
  %i.ed = load float, ptr %i.ar, align 4, !tbaa !118 ; 2 uses
  %i.ee = extractelement <2 x float> %i.dt, i64 0
  %i.ef = fsub float %i.ee, %i.ea                 ; 2 uses
  %i.eg = extractelement <2 x float> %i.dt, i64 1
  %i.eh = fsub float %i.eg, %i.ec                 ; 2 uses
  %i.ei = fmul float %i.eh, %i.eh
  %i.ej = tail call float @llvm.fmuladd.f32(float %i.ef, float %i.ef, float %i.ei)
  %i.ek = fmul float %i.ed, %i.ed
  %i.el = fcmp uge float %i.ej, %i.ek
  br i1 %i.el, label %bb.m, label %.lr.ph65.preheader.i

bb.m:                                             ; preds = %bb.l, %._crit_edge.i
  %i.em = load i32, ptr %i.ap, align 4, !tbaa !113 ; 3 uses
  %.not29.i50.i = icmp slt i32 %i.du, %i.em
  br i1 %.not29.i50.i, label %._crit_edge.i54.i, label %bb.n

._crit_edge.i54.i:                                ; preds = %bb.m
  %.pre.i56.i = load ptr, ptr %i.aq, align 8, !tbaa !98
  br label %._crit_edge30.i52.i

bb.n:                                             ; preds = %bb.m
  %i.en = icmp sgt i32 %i.em, 0
  %i.eo = shl nuw nsw i32 %i.em, 1
  %spec.select.i51.i = select i1 %i.en, i32 %i.eo, i32 64 ; 2 uses
  store i32 %spec.select.i51.i, ptr %i.ap, align 4, !tbaa !113
  %i.ep = load ptr, ptr %i.aq, align 8, !tbaa !98
  %i.eq = zext nneg i32 %spec.select.i51.i to i64
  %i.er = shl nuw nsw i64 %i.eq, 5
  %i.es = tail call ptr @realloc(ptr noundef %i.ep, i64 noundef %i.er) #32 ; 3 uses
  store ptr %i.es, ptr %i.aq, align 8, !tbaa !98
  %i.et = icmp eq ptr %i.es, null
  %.pre.i = load i32, ptr %i.ao, align 8, !tbaa !112 ; 2 uses
  br i1 %i.et, label %nsvg__addPathPoint.exit57.i, label %._crit_edge30.i52.i

._crit_edge30.i52.i:                              ; preds = %bb.n, %._crit_edge.i54.i
  %i.eu = phi i32 [ %i.du, %._crit_edge.i54.i ], [ %.pre.i, %bb.n ] ; 2 uses
  %i.ev = phi ptr [ %.pre.i56.i, %._crit_edge.i54.i ], [ %i.es, %bb.n ]
  %i.ew = sext i32 %i.eu to i64
  %i.ex = getelementptr inbounds [32 x i8], ptr %i.ev, i64 %i.ew ; 2 uses
  store <2 x float> %i.dt, ptr %i.ex, align 4, !tbaa !30
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 28
  store i8 0, ptr %i.ey, align 4, !tbaa !115
  %i.ez = add nsw i32 %i.eu, 1                    ; 2 uses
  store i32 %i.ez, ptr %i.ao, align 8, !tbaa !112
  br label %nsvg__addPathPoint.exit57.i

nsvg__addPathPoint.exit57.i:                      ; preds = %._crit_edge30.i52.i, %bb.n
  %i.fa = phi i32 [ %i.ez, %._crit_edge30.i52.i ], [ %.pre.i, %bb.n ] ; 2 uses
  %i.fb = icmp sgt i32 %i.fa, 0
  br i1 %i.fb, label %.lr.ph65.preheader.i, label %._crit_edge66.i

.lr.ph65.preheader.i:                             ; preds = %nsvg__addPathPoint.exit57.i, %bb.l
  %i.fc = phi i32 [ %i.fa, %nsvg__addPathPoint.exit57.i ], [ %i.du, %bb.l ]
  %i.fd = add nsw i32 %i.fc, -1
  %i.fe = zext nneg i32 %i.fd to i64
  br label %.lr.ph65.i

.lr.ph65.i:                                       ; preds = %nsvg__addEdge.exit.i, %.lr.ph65.preheader.i
  %indvars.iv74.i = phi i64 [ 0, %.lr.ph65.preheader.i ], [ %indvars.iv.next75.i, %nsvg__addEdge.exit.i ] ; 3 uses
  %.04963.i = phi i64 [ %i.fe, %.lr.ph65.preheader.i ], [ %indvars.iv74.i, %nsvg__addEdge.exit.i ]
  %i.ff = load ptr, ptr %i.aq, align 8, !tbaa !98 ; 2 uses
  %i.fg = getelementptr inbounds nuw [32 x i8], ptr %i.ff, i64 %.04963.i ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fi = getelementptr inbounds nuw [32 x i8], ptr %i.ff, i64 %indvars.iv74.i ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.fk = load <2 x float>, ptr %i.fg, align 4, !tbaa !30 ; 2 uses
  %i.fl = load float, ptr %i.fh, align 4, !tbaa !117 ; 2 uses
  %i.fm = load <2 x float>, ptr %i.fi, align 4, !tbaa !30 ; 2 uses
  %i.fn = load float, ptr %i.fj, align 4, !tbaa !117 ; 2 uses
  %i.fo = fcmp oeq float %i.fl, %i.fn
  br i1 %i.fo, label %nsvg__addEdge.exit.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph65.i
  %i.fp = load i32, ptr %i.an, align 8, !tbaa !111 ; 2 uses
  %i.fq = load i32, ptr %i.av, align 4, !tbaa !119 ; 3 uses
  %.not.i.i = icmp slt i32 %i.fp, %i.fq
  br i1 %.not.i.i, label %._crit_edge.i59.i, label %bb.p

._crit_edge.i59.i:                                ; preds = %bb.o
  %.pre.i61.i = load ptr, ptr %i.au, align 8, !tbaa !97
  br label %.sink.split.i.i

bb.p:                                             ; preds = %bb.o
  %i.fr = icmp sgt i32 %i.fq, 0
  %i.fs = shl nuw nsw i32 %i.fq, 1
  %spec.select.i58.i = select i1 %i.fr, i32 %i.fs, i32 64 ; 2 uses
  store i32 %spec.select.i58.i, ptr %i.av, align 4, !tbaa !119
  %i.ft = load ptr, ptr %i.au, align 8, !tbaa !97
  %i.fu = zext nneg i32 %spec.select.i58.i to i64
  %i.fv = shl nuw nsw i64 %i.fu, 5
  %i.fw = tail call ptr @realloc(ptr noundef %i.ft, i64 noundef %i.fv) #32 ; 3 uses
  store ptr %i.fw, ptr %i.au, align 8, !tbaa !97
  %i.fx = icmp eq ptr %i.fw, null
  br i1 %i.fx, label %nsvg__addEdge.exit.i, label %._crit_edge36.i.i

._crit_edge36.i.i:                                ; preds = %bb.p
  %.pre37.i.i = load i32, ptr %i.an, align 8, !tbaa !111
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %._crit_edge36.i.i, %._crit_edge.i59.i
  %i.fy = phi i32 [ %i.fp, %._crit_edge.i59.i ], [ %.pre37.i.i, %._crit_edge36.i.i ] ; 2 uses
  %i.fz = phi ptr [ %.pre.i61.i, %._crit_edge.i59.i ], [ %i.fw, %._crit_edge36.i.i ]
  %i.ga = sext i32 %i.fy to i64
  %i.gb = getelementptr inbounds [32 x i8], ptr %i.fz, i64 %i.ga ; 2 uses
  %i.gc = add nsw i32 %i.fy, 1
  store i32 %i.gc, ptr %i.an, align 8, !tbaa !111
  %i.gd = fcmp olt float %i.fl, %i.fn             ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %.49.i.i = select i1 %i.gd, i32 1, i32 -1
  %i.gf = insertelement <4 x i1> poison, i1 %i.gd, i64 0
  %i.gg = shufflevector <4 x i1> %i.gf, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.gh = shufflevector <2 x float> %i.fk, <2 x float> %i.fm, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gi = shufflevector <2 x float> %i.fm, <2 x float> %i.fk, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gj = select <4 x i1> %i.gg, <4 x float> %i.gh, <4 x float> %i.gi
  store <4 x float> %i.gj, ptr %i.gb, align 8, !tbaa !30
  store i32 %.49.i.i, ptr %i.ge, align 8, !tbaa !121
  br label %nsvg__addEdge.exit.i

nsvg__addEdge.exit.i:                             ; preds = %.sink.split.i.i, %bb.p, %.lr.ph65.i
  %indvars.iv.next75.i = add nuw nsw i64 %indvars.iv74.i, 1 ; 2 uses
  %i.gk = load i32, ptr %i.ao, align 8, !tbaa !112
  %i.gl = sext i32 %i.gk to i64
  %i.gm = icmp slt i64 %indvars.iv.next75.i, %i.gl
  br i1 %i.gm, label %.lr.ph65.i, label %._crit_edge66.i, !llvm.loop !193

._crit_edge66.i:                                  ; preds = %nsvg__addEdge.exit.i, %nsvg__addPathPoint.exit57.i
  %i.gn = getelementptr inbounds nuw i8, ptr %.04869.i, i64 32
  %.048.i = load ptr, ptr %i.gn, align 8, !tbaa !59 ; 2 uses
  %.not.i120 = icmp eq ptr %.048.i, null
  br i1 %.not.i120, label %nsvg__flattenShape.exit, label %.lr.ph71.i, !llvm.loop !194

nsvg__flattenShape.exit:                          ; preds = %._crit_edge66.i
  %.pre235 = load i32, ptr %i.an, align 8, !tbaa !111 ; 6 uses
  %i.go = icmp sgt i32 %.pre235, 0
  br i1 %i.go, label %.lr.ph203, label %._crit_edge204

.lr.ph203:                                        ; preds = %nsvg__flattenShape.exit
  %i.gp = load ptr, ptr %i.au, align 8, !tbaa !97 ; 3 uses
  %wide.trip.count232 = zext nneg i32 %.pre235 to i64 ; 2 uses
  %xtraiter367 = and i64 %wide.trip.count232, 1
  %i.gq = icmp eq i32 %.pre235, 1
  br i1 %i.gq, label %.epil.preheader366, label %.lr.ph203.new

.lr.ph203.new:                                    ; preds = %.lr.ph203
  %unroll_iter371 = and i64 %wide.trip.count232, 2147483646
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph203.new
  %indvars.iv229 = phi i64 [ 0, %.lr.ph203.new ], [ %indvars.iv.next230.1, %bb.q ] ; 3 uses
  %niter372 = phi i64 [ 0, %.lr.ph203.new ], [ %niter372.next.1, %bb.q ]
  %i.gr = getelementptr inbounds nuw [32 x i8], ptr %i.gp, i64 %indvars.iv229 ; 2 uses
  %i.gs = load <4 x float>, ptr %i.gr, align 8, !tbaa !30
  %i.gt = fadd <4 x float> %i.bj, %i.gs
  %i.gu = fmul <4 x float> %i.gt, <float 1.000000e+00, float 5.000000e+00, float 1.000000e+00, float 5.000000e+00>
  store <4 x float> %i.gu, ptr %i.gr, align 8, !tbaa !30
  %i.gv = getelementptr inbounds nuw [32 x i8], ptr %i.gp, i64 %indvars.iv229
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 32 ; 2 uses
  %i.gx = load <4 x float>, ptr %i.gw, align 8, !tbaa !30
  %i.gy = fadd <4 x float> %i.bj, %i.gx
  %i.gz = fmul <4 x float> %i.gy, <float 1.000000e+00, float 5.000000e+00, float 1.000000e+00, float 5.000000e+00>
  store <4 x float> %i.gz, ptr %i.gw, align 8, !tbaa !30
  %indvars.iv.next230.1 = add nuw nsw i64 %indvars.iv229, 2 ; 2 uses
  %niter372.next.1 = add i64 %niter372, 2         ; 2 uses
  %niter372.ncmp.1 = icmp eq i64 %niter372.next.1, %unroll_iter371
  br i1 %niter372.ncmp.1, label %._crit_edge204.thread298.loopexit.unr-lcssa, label %bb.q, !llvm.loop !195

._crit_edge204:                                   ; preds = %nsvg__flattenShape.exit
  %.not117 = icmp eq i32 %.pre235, 0
  br i1 %.not117, label %._crit_edge204.thread, label %._crit_edge204.thread298

._crit_edge204.thread298.loopexit.unr-lcssa:      ; preds = %bb.q
  %lcmp.mod369.not = icmp eq i64 %xtraiter367, 0
  br i1 %lcmp.mod369.not, label %._crit_edge204.thread298, label %.epil.preheader366

.epil.preheader366:                               ; preds = %._crit_edge204.thread298.loopexit.unr-lcssa, %.lr.ph203
  %indvars.iv229.epil.init = phi i64 [ 0, %.lr.ph203 ], [ %indvars.iv.next230.1, %._crit_edge204.thread298.loopexit.unr-lcssa ]
  %lcmp.mod370 = trunc i32 %.pre235 to i1
  tail call void @llvm.assume(i1 %lcmp.mod370)
  %i.ha = getelementptr inbounds nuw [32 x i8], ptr %i.gp, i64 %indvars.iv229.epil.init ; 2 uses
  %i.hb = load <4 x float>, ptr %i.ha, align 8, !tbaa !30
  %i.hc = fadd <4 x float> %i.bj, %i.hb
  %i.hd = fmul <4 x float> %i.hc, <float 1.000000e+00, float 5.000000e+00, float 1.000000e+00, float 5.000000e+00>
  store <4 x float> %i.hd, ptr %i.ha, align 8, !tbaa !30
  br label %._crit_edge204.thread298

._crit_edge204.thread298:                         ; preds = %.epil.preheader366, %._crit_edge204.thread298.loopexit.unr-lcssa, %._crit_edge204
  %i.he = load ptr, ptr %i.au, align 8, !tbaa !97
  %i.hf = sext i32 %.pre235 to i64
  tail call void @qsort(ptr noundef %i.he, i64 noundef %i.hf, i64 noundef 32, ptr noundef nonnull @nsvg__cmpEdge) #30
  br label %._crit_edge204.thread

._crit_edge204.thread:                            ; preds = %nsvg__resetPool.exit, %._crit_edge204, %._crit_edge204.thread298
  %i.hg = load float, ptr %i.bx, align 8, !tbaa !122
  call fastcc void @nsvg__initPaint(ptr noundef %10, ptr noundef %i.by, float noundef %i.hg)
  %i.hh = load i8, ptr %i.bz, align 4, !tbaa !123
  br label %.thread.sink.split

bb.r:                                             ; preds = %bb.g
  %i.hi = load i8, ptr %i.bo, align 8, !tbaa !44
  %.not118 = icmp eq i8 %i.hi, 0
  br i1 %.not118, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hj = load float, ptr %i.bp, align 4, !tbaa !213
  %i.hk = fmul float %4, %i.hj                    ; 3 uses
  %i.hl = fcmp ogt float %i.hk, f0x3C23D70A
  br i1 %i.hl, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %.06.i122 = load ptr, ptr %i.ak, align 8, !tbaa !212 ; 3 uses
  %.not7.i123 = icmp eq ptr %.06.i122, null
  br i1 %.not7.i123, label %nsvg__resetPool.exit129, label %.lr.ph.i124

.lr.ph.i124:                                      ; preds = %bb.t, %.lr.ph.i124
  %.08.i125 = phi ptr [ %.0.i126, %.lr.ph.i124 ], [ %.06.i122, %bb.t ] ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.08.i125, i64 1024
  store i32 0, ptr %i.hm, align 8, !tbaa !108
  %i.hn = getelementptr inbounds nuw i8, ptr %.08.i125, i64 1032
  %.0.i126 = load ptr, ptr %i.hn, align 8, !tbaa !212 ; 2 uses
  %.not.i127 = icmp eq ptr %.0.i126, null
  br i1 %.not.i127, label %nsvg__resetPool.exit129, label %.lr.ph.i124, !llvm.loop !191

nsvg__resetPool.exit129:                          ; preds = %.lr.ph.i124, %bb.t
  store ptr %.06.i122, ptr %i.al, align 8, !tbaa !109
  store ptr null, ptr %i.am, align 8, !tbaa !110
  store i32 0, ptr %i.an, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i)
  %i.ho = load float, ptr %i.bq, align 8, !tbaa !124 ; 6 uses
  %i.hp = load i8, ptr %i.br, align 1, !tbaa !125
  %i.hq = sext i8 %i.hp to i32                    ; 3 uses
  %i.hr = load i8, ptr %i.bs, align 2, !tbaa !126
  %i.hs = sext i8 %i.hr to i32                    ; 2 uses
  %.0166307.i = load ptr, ptr %i.bt, align 8, !tbaa !59 ; 2 uses
  %.not308.i = icmp eq ptr %.0166307.i, null
  br i1 %.not308.i, label %._crit_edge207.thread, label %.lr.ph311.i

._crit_edge207.thread:                            ; preds = %nsvg__resetPool.exit129
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i)
  br label %bb.bm

.lr.ph311.i:                                      ; preds = %nsvg__resetPool.exit129
  %i.ht = add nsw i32 %i.hq, -1
  %i.hu = icmp ult i32 %i.ht, 2                   ; 3 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.bk, %.lr.ph311.i
  %.0166309.i = phi ptr [ %.0166307.i, %.lr.ph311.i ], [ %.0166.i, %bb.bk ] ; 5 uses
  store i32 0, ptr %i.ao, align 8, !tbaa !112
  %i.hv = load ptr, ptr %.0166309.i, align 8, !tbaa !62
  %i.hw = load <2 x float>, ptr %i.hv, align 4, !tbaa !30
  %i.hx = fmul <2 x float> %i.ax, %i.hw
  %i.hy = load i32, ptr %i.ap, align 4, !tbaa !113
  %.not29.i.i130 = icmp sgt i32 %i.hy, 0
  br i1 %.not29.i.i130, label %._crit_edge.i.i143, label %bb.v

._crit_edge.i.i143:                               ; preds = %bb.u
  %.pre.i.i144 = load ptr, ptr %i.aq, align 8, !tbaa !98
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 64, ptr %i.ap, align 4, !tbaa !113
  %i.hz = load ptr, ptr %i.aq, align 8, !tbaa !98
  %i.ia = tail call dereferenceable_or_null(2048) ptr @realloc(ptr noundef %i.hz, i64 noundef 2048) #32 ; 3 uses
  store ptr %i.ia, ptr %i.aq, align 8, !tbaa !98
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %nsvg__addPathPoint.exit.i133, label %._crit_edge30.i.i131

._crit_edge30.i.i131:                             ; preds = %bb.v
  %.pre31.i.i132 = load i32, ptr %i.ao, align 8, !tbaa !112
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge30.i.i131, %._crit_edge.i.i143
  %i.ic = phi i32 [ 0, %._crit_edge.i.i143 ], [ %.pre31.i.i132, %._crit_edge30.i.i131 ] ; 2 uses
  %i.id = phi ptr [ %.pre.i.i144, %._crit_edge.i.i143 ], [ %i.ia, %._crit_edge30.i.i131 ]
  %i.ie = sext i32 %i.ic to i64
  %i.if = getelementptr inbounds [32 x i8], ptr %i.id, i64 %i.ie ; 2 uses
  store <2 x float> %i.hx, ptr %i.if, align 4, !tbaa !30
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 28
  store i8 1, ptr %i.ig, align 4, !tbaa !115
  %i.ih = add nsw i32 %i.ic, 1
  store i32 %i.ih, ptr %i.ao, align 8, !tbaa !112
  br label %nsvg__addPathPoint.exit.i133

nsvg__addPathPoint.exit.i133:                     ; preds = %bb.w, %bb.v
  %i.ii = getelementptr inbounds nuw i8, ptr %.0166309.i, i64 8 ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !61
  %i.ik = icmp sgt i32 %i.ij, 1
  br i1 %i.ik, label %.lr.ph.i139, label %._crit_edge.i134

.lr.ph.i139:                                      ; preds = %nsvg__addPathPoint.exit.i133, %.lr.ph.i139
  %indvars.iv.i140 = phi i64 [ %indvars.iv.next.i142, %.lr.ph.i139 ], [ 0, %nsvg__addPathPoint.exit.i133 ] ; 2 uses
  %i.il = load ptr, ptr %.0166309.i, align 8, !tbaa !62
  %.idx.i141 = shl nuw nsw i64 %indvars.iv.i140, 3
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 %.idx.i141 ; 2 uses
  %i.in = load <4 x float>, ptr %i.im, align 4, !tbaa !30
  %i.io = fmul <4 x float> %i.az, %i.in           ; 4 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %i.iq = load <4 x float>, ptr %i.ip, align 4, !tbaa !30
  %i.ir = fmul <4 x float> %i.az, %i.iq           ; 4 uses
  %i.is = extractelement <4 x float> %i.io, i64 0
  %i.it = extractelement <4 x float> %i.io, i64 1
  %i.iu = extractelement <4 x float> %i.io, i64 2
  %i.iv = extractelement <4 x float> %i.io, i64 3
  %i.iw = extractelement <4 x float> %i.ir, i64 0
  %i.ix = extractelement <4 x float> %i.ir, i64 1
  %i.iy = extractelement <4 x float> %i.ir, i64 2
  %i.iz = extractelement <4 x float> %i.ir, i64 3
  tail call fastcc void @nsvg__flattenCubicBez(ptr noundef nonnull %0, float noundef %i.is, float noundef %i.it, float noundef %i.iu, float noundef %i.iv, float noundef %i.iw, float noundef %i.ix, float noundef %i.iy, float noundef %i.iz, i32 noundef 0, i32 noundef 1)
  %indvars.iv.next.i142 = add nuw nsw i64 %indvars.iv.i140, 3 ; 2 uses
  %i.ja = load i32, ptr %i.ii, align 8, !tbaa !61
  %i.jb = add nsw i32 %i.ja, -1
  %i.jc = trunc nuw i64 %indvars.iv.next.i142 to i32
  %i.jd = icmp sgt i32 %i.jb, %i.jc
  br i1 %i.jd, label %.lr.ph.i139, label %._crit_edge.i134, !llvm.loop !196

._crit_edge.i134:                                 ; preds = %.lr.ph.i139, %nsvg__addPathPoint.exit.i133
  %i.je = load i32, ptr %i.ao, align 8, !tbaa !112 ; 6 uses
  %i.jf = icmp slt i32 %i.je, 2
  br i1 %i.jf, label %bb.bk, label %bb.x

bb.x:                                             ; preds = %._crit_edge.i134
  %i.jg = getelementptr inbounds nuw i8, ptr %.0166309.i, i64 12
  %i.jh = load i8, ptr %i.jg, align 4, !tbaa !88  ; 2 uses
  %i.ji = load ptr, ptr %i.aq, align 8, !tbaa !98 ; 12 uses
  %i.jj = zext nneg i32 %i.je to i64              ; 2 uses
  %i.jk = getelementptr [32 x i8], ptr %i.ji, i64 %i.jj ; 2 uses
  %i.jl = getelementptr i8, ptr %i.jk, i64 -32
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !116
  %i.jn = getelementptr i8, ptr %i.jk, i64 -28
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !117
  %i.jp = load float, ptr %i.ji, align 4, !tbaa !116
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !117
  %i.js = load float, ptr %i.ar, align 4, !tbaa !118 ; 2 uses
  %i.jt = fsub float %i.jp, %i.jm                 ; 2 uses
  %i.ju = fsub float %i.jr, %i.jo                 ; 2 uses
  %i.jv = fmul float %i.ju, %i.ju
  %i.jw = tail call float @llvm.fmuladd.f32(float %i.jt, float %i.jt, float %i.jv)
  %i.jx = fmul float %i.js, %i.js
  %i.jy = fcmp uge float %i.jw, %i.jx
  br i1 %i.jy, label %bb.y, label %.thread.i

bb.y:                                             ; preds = %bb.x
  %i.jz = sext i8 %i.jh to i32
  %i.ka = load i8, ptr %i.bu, align 4, !tbaa !65
  %i.kb = icmp sgt i8 %i.ka, 0
  br i1 %i.kb, label %bb.z, label %.lr.ph.preheader.i158

.thread.i:                                        ; preds = %bb.x
  %i.kc = add nsw i32 %i.je, -1                   ; 4 uses
  store i32 %i.kc, ptr %i.ao, align 8, !tbaa !112
  %i.kd = load i8, ptr %i.bu, align 4, !tbaa !65
  %i.ke = icmp sgt i8 %i.kd, 0
  br i1 %i.ke, label %.thread273.i, label %.thread.i..lr.ph.preheader.i158_crit_edge

.thread.i..lr.ph.preheader.i158_crit_edge:        ; preds = %.thread.i
  %.pre236 = zext nneg i32 %i.kc to i64
  br label %.lr.ph.preheader.i158

bb.z:                                             ; preds = %bb.y
  %.not179.i = icmp eq i8 %i.jh, 0
  br i1 %.not179.i, label %bb.ab, label %.thread273.i

.thread273.i:                                     ; preds = %bb.z, %.thread.i
  %i.kf = phi i32 [ %i.je, %bb.z ], [ %i.kc, %.thread.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 4 dereferenceable(32) %i.ji, i64 32, i1 false)
  %i.kg = load i32, ptr %i.ap, align 4, !tbaa !113 ; 3 uses
  %.not.i.i136 = icmp slt i32 %i.kf, %i.kg
  br i1 %.not.i.i136, label %._crit_edge.i187.i, label %bb.aa

bb.aa:                                            ; preds = %.thread273.i
  %i.kh = icmp sgt i32 %i.kg, 0
  %i.ki = shl nuw nsw i32 %i.kg, 1
  %spec.select.i186.i = select i1 %i.kh, i32 %i.ki, i32 64 ; 2 uses
  store i32 %spec.select.i186.i, ptr %i.ap, align 4, !tbaa !113
  %i.kj = zext nneg i32 %spec.select.i186.i to i64
  %i.kk = shl nuw nsw i64 %i.kj, 5
  %i.kl = tail call ptr @realloc(ptr noundef nonnull %i.ji, i64 noundef %i.kk) #32 ; 3 uses
  store ptr %i.kl, ptr %i.aq, align 8, !tbaa !98
  %i.km = icmp eq ptr %i.kl, null
  %.pre.pre.i = load i32, ptr %i.ao, align 8, !tbaa !112 ; 2 uses
  br i1 %i.km, label %nsvg__appendPathPoint.exit.i, label %._crit_edge.i187.i
end_hunk_0
begin_hunk_1_@nsvgRasterize:bb.a
bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %i.yf = getelementptr inbounds nuw i8, ptr %.16.i178, i64 32
  %i.yg = add nuw nsw i32 %.0644.i179, 1          ; 2 uses
  %exitcond10.not.i182 = icmp eq i32 %i.yg, %i.uw
  br i1 %exitcond10.not.i182, label %.sink.split.i, label %.lr.ph7.split.i177, !llvm.loop !200

.lr.ph.preheader.i158:                            ; preds = %.thread.i..lr.ph.preheader.i158_crit_edge, %bb.y
  %.pre-phi = phi i64 [ %.pre236, %.thread.i..lr.ph.preheader.i158_crit_edge ], [ %i.jj, %bb.y ]
  %.val181.i = phi i32 [ %i.kc, %.thread.i..lr.ph.preheader.i158_crit_edge ], [ %i.je, %bb.y ] ; 5 uses
  %.0167272.i = phi i32 [ 1, %.thread.i..lr.ph.preheader.i158_crit_edge ], [ %i.jz, %bb.y ] ; 2 uses
  %i.yh = getelementptr [32 x i8], ptr %i.ji, i64 %.pre-phi ; 3 uses
  %i.yi = getelementptr i8, ptr %i.yh, i64 -32
  br label %.lr.ph.i159

.preheader.i161:                                  ; preds = %.lr.ph.i159
  %.phi.trans.insert14.i = getelementptr i8, ptr %i.yh, i64 -20
  %.phi.trans.insert16.i = getelementptr i8, ptr %i.yh, i64 -24
  %.pre15.i = load float, ptr %.phi.trans.insert14.i, align 4, !tbaa !127 ; 2 uses
  %.pre17.i = load float, ptr %.phi.trans.insert16.i, align 4, !tbaa !128 ; 2 uses
  br i1 %i.hu, label %.lr.ph7.split.us.i, label %.lr.ph7.split.i

.lr.ph7.split.us.i:                               ; preds = %.preheader.i161, %bb.be
  %i.yj = phi float [ %i.yp, %bb.be ], [ %.pre17.i, %.preheader.i161 ] ; 2 uses
  %i.yk = phi float [ %i.yo, %bb.be ], [ %.pre15.i, %.preheader.i161 ] ; 2 uses
  %.16.us.i = phi ptr [ %i.zo, %bb.be ], [ %i.ji, %.preheader.i161 ] ; 5 uses
  %.0644.us.i = phi i32 [ %i.zp, %bb.be ], [ 0, %.preheader.i161 ]
  %i.yl = getelementptr inbounds nuw i8, ptr %.16.us.i, i64 12
  %i.ym = getelementptr inbounds nuw i8, ptr %.16.us.i, i64 8
  %i.yn = getelementptr inbounds nuw i8, ptr %.16.us.i, i64 20
  %i.yo = load float, ptr %i.yl, align 4, !tbaa !127 ; 3 uses
  %i.yp = load float, ptr %i.ym, align 4, !tbaa !128 ; 3 uses
  %i.yq = fneg float %i.yp
  %i.yr = fadd float %i.yk, %i.yo
  %i.ys = fsub float %i.yq, %i.yj
  %i.yt = insertelement <2 x float> poison, float %i.yr, i64 0
  %i.yu = insertelement <2 x float> %i.yt, float %i.ys, i64 1
  %i.yv = fmul <2 x float> %i.yu, splat (float 5.000000e-01) ; 5 uses
  %i.yw = extractelement <2 x float> %i.yv, i64 0 ; 2 uses
  %foldExtExtBinop330 = fmul <2 x float> %i.yv, %i.yv
  %i.yx = extractelement <2 x float> %foldExtExtBinop330, i64 1
  %i.yy = tail call float @llvm.fmuladd.f32(float %i.yw, float %i.yw, float %i.yx) ; 2 uses
  %i.yz = fcmp ogt float %i.yy, f0x358637BD
  br i1 %i.yz, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.lr.ph7.split.us.i
  %i.za = fdiv float 1.000000e+00, %i.yy          ; 2 uses
  %i.zb = fcmp ogt float %i.za, 6.000000e+02
  %spec.store.select.us.i = select i1 %i.zb, float 6.000000e+02, float %i.za
  %i.zc = insertelement <2 x float> poison, float %spec.store.select.us.i, i64 0
  %i.zd = shufflevector <2 x float> %i.zc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ze = fmul <2 x float> %i.yv, %i.zd
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.lr.ph7.split.us.i
  %storemerge337 = phi <2 x float> [ %i.ze, %bb.bd ], [ %i.yv, %.lr.ph7.split.us.i ]
  store <2 x float> %storemerge337, ptr %i.yn, align 4, !tbaa !30
  %i.zf = getelementptr inbounds nuw i8, ptr %.16.us.i, i64 28 ; 2 uses
  %i.zg = load i8, ptr %i.zf, align 4, !tbaa !115
  %i.zh = and i8 %i.zg, 1                         ; 3 uses
  %i.zi = fneg float %i.yo
  %i.zj = fmul float %i.yj, %i.zi
  %i.zk = tail call float @llvm.fmuladd.f32(float %i.yp, float %i.yk, float %i.zj)
  %i.zl = fcmp ogt float %i.zk, 0.000000e+00
  %i.zm = or disjoint i8 %i.zh, 4
  %spec.select.us.i = select i1 %i.zl, i8 %i.zm, i8 %i.zh
  %i.zn = shl nuw nsw i8 %i.zh, 1
  %spec.select23.i = or disjoint i8 %spec.select.us.i, %i.zn
  store i8 %spec.select23.i, ptr %i.zf, align 4, !tbaa !115
  %i.zo = getelementptr inbounds nuw i8, ptr %.16.us.i, i64 32
  %i.zp = add nuw nsw i32 %.0644.us.i, 1          ; 2 uses
  %exitcond11.not.i = icmp eq i32 %i.zp, %.val181.i
  br i1 %exitcond11.not.i, label %.sink.split.i, label %.lr.ph7.split.us.i, !llvm.loop !200

.lr.ph.i159:                                      ; preds = %.lr.ph.i159, %.lr.ph.preheader.i158
  %.03.i = phi i32 [ %i.aae, %.lr.ph.i159 ], [ 0, %.lr.ph.preheader.i158 ]
  %.0612.i = phi ptr [ %i.aad, %.lr.ph.i159 ], [ %i.ji, %.lr.ph.preheader.i158 ] ; 3 uses
  %.0621.i = phi ptr [ %.0612.i, %.lr.ph.i159 ], [ %i.yi, %.lr.ph.preheader.i158 ] ; 3 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %.0621.i, i64 8
  %i.zr = load <2 x float>, ptr %.0612.i, align 4, !tbaa !30
  %i.zs = load <2 x float>, ptr %.0621.i, align 4, !tbaa !30
  %i.zt = fsub <2 x float> %i.zr, %i.zs           ; 5 uses
  %i.zu = extractelement <2 x float> %i.zt, i64 0 ; 2 uses
  %foldExtExtBinop332 = fmul <2 x float> %i.zt, %i.zt
  %i.zv = extractelement <2 x float> %foldExtExtBinop332, i64 1
  %i.zw = tail call float @llvm.fmuladd.f32(float %i.zu, float %i.zu, float %i.zv)
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.zw) ; 3 uses
  %i.zx = fcmp ogt float %sqrt.i.i, f0x358637BD
  %i.zy = fdiv nnan float 1.000000e+00, %sqrt.i.i
  %i.zz = insertelement <2 x float> poison, float %i.zy, i64 0
  %i.aaa = shufflevector <2 x float> %i.zz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aab = fmul <2 x float> %i.zt, %i.aaa
  %storemerge = select i1 %i.zx, <2 x float> %i.aab, <2 x float> %i.zt
  store <2 x float> %storemerge, ptr %i.zq, align 4, !tbaa !30
  %i.aac = getelementptr inbounds nuw i8, ptr %.0621.i, i64 16
  store float %sqrt.i.i, ptr %i.aac, align 4, !tbaa !219
  %i.aad = getelementptr inbounds nuw i8, ptr %.0612.i, i64 32
  %i.aae = add nuw nsw i32 %.03.i, 1              ; 2 uses
  %exitcond.not.i160 = icmp eq i32 %i.aae, %.val181.i
  br i1 %exitcond.not.i160, label %.preheader.i161, label %.lr.ph.i159, !llvm.loop !201

.lr.ph7.split.i:                                  ; preds = %.preheader.i161, %bb.bj
  %i.aaf = phi float [ %i.aal, %bb.bj ], [ %.pre17.i, %.preheader.i161 ] ; 2 uses
  %i.aag = phi float [ %i.aak, %bb.bj ], [ %.pre15.i, %.preheader.i161 ] ; 2 uses
  %.16.i = phi ptr [ %i.abn, %bb.bj ], [ %i.ji, %.preheader.i161 ] ; 5 uses
  %.0644.i = phi i32 [ %i.abo, %bb.bj ], [ 0, %.preheader.i161 ]
  %i.aah = getelementptr inbounds nuw i8, ptr %.16.i, i64 12
  %i.aai = getelementptr inbounds nuw i8, ptr %.16.i, i64 8
  %i.aaj = getelementptr inbounds nuw i8, ptr %.16.i, i64 20
  %i.aak = load float, ptr %i.aah, align 4, !tbaa !127 ; 3 uses
  %i.aal = load float, ptr %i.aai, align 4, !tbaa !128 ; 3 uses
  %i.aam = fneg float %i.aal
  %i.aan = fadd float %i.aag, %i.aak
  %i.aao = fsub float %i.aam, %i.aaf
  %i.aap = insertelement <2 x float> poison, float %i.aan, i64 0
  %i.aaq = insertelement <2 x float> %i.aap, float %i.aao, i64 1
  %i.aar = fmul <2 x float> %i.aaq, splat (float 5.000000e-01) ; 5 uses
  %i.aas = extractelement <2 x float> %i.aar, i64 0 ; 2 uses
  %foldExtExtBinop334 = fmul <2 x float> %i.aar, %i.aar
  %i.aat = extractelement <2 x float> %foldExtExtBinop334, i64 1
  %i.aau = tail call float @llvm.fmuladd.f32(float %i.aas, float %i.aas, float %i.aat) ; 3 uses
  %i.aav = fcmp ogt float %i.aau, f0x358637BD
  br i1 %i.aav, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.lr.ph7.split.i
  %i.aaw = fdiv float 1.000000e+00, %i.aau        ; 2 uses
  %i.aax = fcmp ogt float %i.aaw, 6.000000e+02
  %spec.store.select.i = select i1 %i.aax, float 6.000000e+02, float %i.aaw
  %i.aay = insertelement <2 x float> poison, float %spec.store.select.i, i64 0
  %i.aaz = shufflevector <2 x float> %i.aay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aba = fmul <2 x float> %i.aar, %i.aaz
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.lr.ph7.split.i
  %storemerge336 = phi <2 x float> [ %i.aba, %bb.bf ], [ %i.aar, %.lr.ph7.split.i ]
  store <2 x float> %storemerge336, ptr %i.aaj, align 4, !tbaa !30
  %i.abb = getelementptr inbounds nuw i8, ptr %.16.i, i64 28 ; 3 uses
  %i.abc = load i8, ptr %i.abb, align 4, !tbaa !115
  %i.abd = and i8 %i.abc, 1                       ; 3 uses
  %i.abe = fneg float %i.aak
  %i.abf = fmul float %i.aaf, %i.abe
  %i.abg = tail call float @llvm.fmuladd.f32(float %i.aal, float %i.aag, float %i.abf)
  %i.abh = fcmp ogt float %i.abg, 0.000000e+00
  %i.abi = or disjoint i8 %i.abd, 4
  %spec.select.i = select i1 %i.abh, i8 %i.abi, i8 %i.abd ; 2 uses
  store i8 %spec.select.i, ptr %i.abb, align 4, !tbaa !115
  %.not.i162 = icmp eq i8 %i.abd, 0
  br i1 %.not.i162, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.abj = fmul float %i.ho, %i.aau
  %i.abk = fmul float %i.ho, %i.abj
  %i.abl = fcmp olt float %i.abk, 1.000000e+00
  br i1 %i.abl, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.abm = or disjoint i8 %spec.select.i, 2
  store i8 %i.abm, ptr %i.abb, align 4, !tbaa !115
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg
  %i.abn = getelementptr inbounds nuw i8, ptr %.16.i, i64 32
  %i.abo = add nuw nsw i32 %.0644.i, 1            ; 2 uses
  %exitcond10.not.i = icmp eq i32 %i.abo, %.val181.i
  br i1 %exitcond10.not.i, label %.sink.split.i, label %.lr.ph7.split.i, !llvm.loop !200

.sink.split.i:                                    ; preds = %bb.bj, %bb.be, %bb.bc, %bb.ax
  %i.abp = phi i32 [ %i.uw, %bb.ax ], [ %.val181.i, %bb.be ], [ %i.uw, %bb.bc ], [ %.val181.i, %bb.bj ]
  %i.abq = phi ptr [ %.val182.i, %bb.ax ], [ %i.ji, %bb.be ], [ %.val182.i, %bb.bc ], [ %i.ji, %bb.bj ]
  %.sink359.i = phi i32 [ 0, %bb.ax ], [ %.0167272.i, %bb.be ], [ 0, %bb.bc ], [ %.0167272.i, %bb.bj ]
  tail call fastcc void @nsvg__expandStroke(ptr noundef nonnull %0, ptr noundef %i.abq, i32 noundef %i.abp, i32 noundef %.sink359.i, i32 noundef %i.hq, i32 noundef %i.hs, float noundef %i.hk)
  br label %bb.bk

bb.bk:                                            ; preds = %.sink.split.i, %._crit_edge305.i, %._crit_edge.i134
  %i.abr = getelementptr inbounds nuw i8, ptr %.0166309.i, i64 32
  %.0166.i = load ptr, ptr %i.abr, align 8, !tbaa !59 ; 2 uses
  %.not.i135 = icmp eq ptr %.0166.i, null
  br i1 %.not.i135, label %nsvg__flattenShapeStroke.exit, label %bb.u, !llvm.loop !203

nsvg__flattenShapeStroke.exit:                    ; preds = %bb.bk
  %.pre = load i32, ptr %i.an, align 8, !tbaa !111 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i)
  %i.abs = icmp sgt i32 %.pre, 0
  br i1 %i.abs, label %.lr.ph206, label %._crit_edge207

.lr.ph206:                                        ; preds = %nsvg__flattenShapeStroke.exit
  %i.abt = load ptr, ptr %i.au, align 8, !tbaa !97 ; 3 uses
  %wide.trip.count227 = zext nneg i32 %.pre to i64 ; 2 uses
  %xtraiter360 = and i64 %wide.trip.count227, 1
  %i.abu = icmp eq i32 %.pre, 1
  br i1 %i.abu, label %.epil.preheader359, label %.lr.ph206.new

.lr.ph206.new:                                    ; preds = %.lr.ph206
  %unroll_iter364 = and i64 %wide.trip.count227, 2147483646
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %.lr.ph206.new
  %indvars.iv224 = phi i64 [ 0, %.lr.ph206.new ], [ %indvars.iv.next225.1, %bb.bl ] ; 3 uses
  %niter365 = phi i64 [ 0, %.lr.ph206.new ], [ %niter365.next.1, %bb.bl ]
  %i.abv = getelementptr inbounds nuw [32 x i8], ptr %i.abt, i64 %indvars.iv224 ; 2 uses
  %i.abw = load <4 x float>, ptr %i.abv, align 8, !tbaa !30
  %i.abx = fadd <4 x float> %i.bc, %i.abw
  %i.aby = fmul <4 x float> %i.abx, <float 1.000000e+00, float 5.000000e+00, float 1.000000e+00, float 5.000000e+00>
  store <4 x float> %i.aby, ptr %i.abv, align 8, !tbaa !30
  %i.abz = getelementptr inbounds nuw [32 x i8], ptr %i.abt, i64 %indvars.iv224
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 32 ; 2 uses
  %i.acb = load <4 x float>, ptr %i.aca, align 8, !tbaa !30
  %i.acc = fadd <4 x float> %i.bc, %i.acb
  %i.acd = fmul <4 x float> %i.acc, <float 1.000000e+00, float 5.000000e+00, float 1.000000e+00, float 5.000000e+00>
  store <4 x float> %i.acd, ptr %i.aca, align 8, !tbaa !30
  %indvars.iv.next225.1 = add nuw nsw i64 %indvars.iv224, 2 ; 2 uses
  %niter365.next.1 = add i64 %niter365, 2         ; 2 uses
  %niter365.ncmp.1 = icmp eq i64 %niter365.next.1, %unroll_iter364
  br i1 %niter365.ncmp.1, label %._crit_edge207.thread301.loopexit.unr-lcssa, label %bb.bl, !llvm.loop !204

._crit_edge207:                                   ; preds = %nsvg__flattenShapeStroke.exit
  %.not119 = icmp eq i32 %.pre, 0
  br i1 %.not119, label %bb.bm, label %._crit_edge207.thread301

._crit_edge207.thread301.loopexit.unr-lcssa:      ; preds = %bb.bl
  %lcmp.mod362.not = icmp eq i64 %xtraiter360, 0
  br i1 %lcmp.mod362.not, label %._crit_edge207.thread301, label %.epil.preheader359

.epil.preheader359:                               ; preds = %._crit_edge207.thread301.loopexit.unr-lcssa, %.lr.ph206
  %indvars.iv224.epil.init = phi i64 [ 0, %.lr.ph206 ], [ %indvars.iv.next225.1, %._crit_edge207.thread301.loopexit.unr-lcssa ]
  %lcmp.mod363 = trunc i32 %.pre to i1
  tail call void @llvm.assume(i1 %lcmp.mod363)
  %i.ace = getelementptr inbounds nuw [32 x i8], ptr %i.abt, i64 %indvars.iv224.epil.init ; 2 uses
  %i.acf = load <4 x float>, ptr %i.ace, align 8, !tbaa !30
  %i.acg = fadd <4 x float> %i.bc, %i.acf
  %i.ach = fmul <4 x float> %i.acg, <float 1.000000e+00, float 5.000000e+00, float 1.000000e+00, float 5.000000e+00>
  store <4 x float> %i.ach, ptr %i.ace, align 8, !tbaa !30
  br label %._crit_edge207.thread301

._crit_edge207.thread301:                         ; preds = %.epil.preheader359, %._crit_edge207.thread301.loopexit.unr-lcssa, %._crit_edge207
  %i.aci = load ptr, ptr %i.au, align 8, !tbaa !97
  %i.acj = sext i32 %.pre to i64
  tail call void @qsort(ptr noundef %i.aci, i64 noundef %i.acj, i64 noundef 32, ptr noundef nonnull @nsvg__cmpEdge) #30
  br label %bb.bm

bb.bm:                                            ; preds = %._crit_edge207.thread, %._crit_edge207.thread301, %._crit_edge207
  %i.ack = load float, ptr %i.bx, align 8, !tbaa !122
  call fastcc void @nsvg__initPaint(ptr noundef %10, ptr noundef %i.bo, float noundef %i.ack)
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.bm, %._crit_edge204.thread
  %.sink = phi i8 [ %i.hh, %._crit_edge204.thread ], [ 0, %bb.bm ]
  call fastcc void @nsvg__rasterizeSortedEdges(ptr noundef nonnull %0, float noundef %2, float noundef %3, float noundef %4, ptr noundef %10, i8 noundef signext %.sink)
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.h, %bb.g, %bb.r, %bb.s
  %i.acl = add nuw nsw i32 %.0209, 1              ; 2 uses
  %exitcond234.not = icmp eq i32 %i.acl, 3
  br i1 %exitcond234.not, label %.loopexit, label %bb.g, !llvm.loop !205

.loopexit:                                        ; preds = %.thread, %bb.f
  %i.acm = getelementptr inbounds nuw i8, ptr %.0110212, i64 328
  %.0110 = load ptr, ptr %i.acm, align 8, !tbaa !40 ; 2 uses
  %.not = icmp eq ptr %.0110, null
  br i1 %.not, label %._crit_edge215, label %bb.f, !llvm.loop !206

._crit_edge215:                                   ; preds = %.loopexit, %._crit_edge
  %i.acn = icmp sgt i32 %6, 0                     ; 2 uses
  %or.cond.i145 = and i1 %i.acn, %i.m
  br i1 %or.cond.i145, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge215
  %i.aco = sext i32 %8 to i64
  %wide.trip.count.i151 = zext nneg i32 %7 to i64
  br label %.lr.ph.i152

.preheader.i:                                     ; preds = %._crit_edge.i155, %._crit_edge215
  br i1 %i.m, label %.lr.ph153.i, label %nsvg__unpremultiplyAlpha.exit

.lr.ph153.i:                                      ; preds = %.preheader.i
  %i.acp = sub i32 3, %8
  %i.acq = sext i32 %i.acp to i64                 ; 3 uses
  %i.acr = sub nsw i32 0, %8
  %i.acs = sext i32 %i.acr to i64                 ; 3 uses
  %i.act = sub i32 1, %8
  %i.acu = sext i32 %i.act to i64                 ; 3 uses
  %i.acv = sub i32 2, %8
  %i.acw = sext i32 %i.acv to i64                 ; 3 uses
  %i.acx = sext i32 %8 to i64                     ; 4 uses
  br i1 %i.acn, label %.lr.ph150.preheader.i, label %nsvg__unpremultiplyAlpha.exit

.lr.ph150.preheader.i:                            ; preds = %.lr.ph153.i
  %i.acy = zext nneg i32 %7 to i64                ; 2 uses
  %.not201.i = icmp eq i32 %6, 1                  ; 2 uses
  %i.acz = icmp samesign ugt i32 %6, 2
  %exitcond157.peel184.not.i = icmp eq i32 %6, 2
  br label %.lr.ph150.i

.lr.ph.i152:                                      ; preds = %._crit_edge.i155, %.lr.ph.preheader.i
  %indvars.iv.i153 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i156, %._crit_edge.i155 ] ; 2 uses
  %i.ada = mul nsw i64 %indvars.iv.i153, %i.aco
  %i.adb = getelementptr inbounds i8, ptr %5, i64 %i.ada
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bp, %.lr.ph.i152
  %.0104141.i = phi ptr [ %i.adb, %.lr.ph.i152 ], [ %i.adu, %bb.bp ] ; 6 uses
  %.0107140.i = phi i32 [ 0, %.lr.ph.i152 ], [ %i.adv, %bb.bp ]
  %i.adc = getelementptr inbounds nuw i8, ptr %.0104141.i, i64 3
  %i.add = load i8, ptr %i.adc, align 1, !tbaa !16 ; 2 uses
  %.not115.i = icmp eq i8 %i.add, 0
  br i1 %.not115.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ade = getelementptr inbounds nuw i8, ptr %.0104141.i, i64 2
  %i.adf = getelementptr inbounds nuw i8, ptr %.0104141.i, i64 1 ; 2 uses
  %i.adg = load i8, ptr %.0104141.i, align 1, !tbaa !16
  %i.adh = zext i8 %i.adg to i16
  %.lhs.trunc.i = mul nuw i16 %i.adh, 255
  %.rhs.trunc.i = zext i8 %i.add to i16           ; 2 uses
  %i.adi = udiv i16 %.lhs.trunc.i, %.rhs.trunc.i
  %i.adj = trunc i16 %i.adi to i8
  store i8 %i.adj, ptr %.0104141.i, align 1, !tbaa !16
  %i.adk = load <2 x i8>, ptr %i.adf, align 1, !tbaa !16
  %i.adl = zext <2 x i8> %i.adk to <2 x i16>
  %i.adm = mul nuw <2 x i16> %i.adl, splat (i16 255)
  %i.adn = insertelement <2 x i16> poison, i16 %.rhs.trunc.i, i64 0
  %i.ado = shufflevector <2 x i16> %i.adn, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.adp = udiv <2 x i16> %i.adm, %i.ado          ; 2 uses
  %i.adq = bitcast <2 x i16> %i.adp to <4 x i8>
  %i.adr = extractelement <4 x i8> %i.adq, i64 0
  store i8 %i.adr, ptr %i.adf, align 1, !tbaa !16
  %i.ads = bitcast <2 x i16> %i.adp to <4 x i8>
  %i.adt = extractelement <4 x i8> %i.ads, i64 2
  store i8 %i.adt, ptr %i.ade, align 1, !tbaa !16
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.adu = getelementptr inbounds nuw i8, ptr %.0104141.i, i64 4
  %i.adv = add nuw nsw i32 %.0107140.i, 1         ; 2 uses
  %exitcond.not.i154 = icmp eq i32 %i.adv, %6
  br i1 %exitcond.not.i154, label %._crit_edge.i155, label %bb.bn, !llvm.loop !207

._crit_edge.i155:                                 ; preds = %bb.bp
  %indvars.iv.next.i156 = add nuw nsw i64 %indvars.iv.i153, 1 ; 2 uses
  %exitcond156.not.i = icmp eq i64 %indvars.iv.next.i156, %wide.trip.count.i151
  br i1 %exitcond156.not.i, label %.preheader.i, label %.lr.ph.i152, !llvm.loop !208

.lr.ph150.i:                                      ; preds = %._crit_edge151.i, %.lr.ph150.preheader.i
  %indvars.iv186.i = phi i64 [ 0, %.lr.ph150.preheader.i ], [ %indvars.iv.next187.i, %._crit_edge151.i ] ; 3 uses
  %i.adw = mul nsw i64 %indvars.iv186.i, %i.acx
  %i.adx = getelementptr inbounds i8, ptr %5, i64 %i.adw ; 22 uses
  %i.ady = icmp samesign ugt i64 %indvars.iv186.i, 1 ; 3 uses
  %indvars.iv.next187.i = add nuw nsw i64 %indvars.iv186.i, 1 ; 3 uses
  %i.adz = icmp samesign ult i64 %indvars.iv.next187.i, %i.acy ; 3 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adx, i64 3
  %i.aeb = load i8, ptr %i.aea, align 1, !tbaa !16
  %i.aec = icmp eq i8 %i.aeb, 0
  br i1 %i.aec, label %bb.bq, label %bb.ca

bb.bq:                                            ; preds = %.lr.ph150.i
  br i1 %.not201.i, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.aed = getelementptr inbounds nuw i8, ptr %i.adx, i64 7
  %i.aee = load i8, ptr %i.aed, align 1, !tbaa !16
  %.not112.peel.i = icmp eq i8 %i.aee, 0
  br i1 %.not112.peel.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.aef = getelementptr inbounds nuw i8, ptr %i.adx, i64 4
  %i.aeg = load i8, ptr %i.aef, align 1, !tbaa !16
  %i.aeh = zext i8 %i.aeg to i16
  %i.aei = getelementptr inbounds nuw i8, ptr %i.adx, i64 5
  %i.aej = load i8, ptr %i.aei, align 1, !tbaa !16
  %i.aek = zext i8 %i.aej to i16
  %i.ael = getelementptr inbounds nuw i8, ptr %i.adx, i64 6
  %i.aem = load i8, ptr %i.ael, align 1, !tbaa !16
  %i.aen = zext i8 %i.aem to i16
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bq
  %.1100.peel.i = phi i16 [ %i.aeh, %bb.bs ], [ 0, %bb.br ], [ 0, %bb.bq ] ; 3 uses
  %.196.peel.i = phi i16 [ %i.aek, %bb.bs ], [ 0, %bb.br ], [ 0, %bb.bq ] ; 3 uses
  %.192.peel.i = phi i16 [ %i.aen, %bb.bs ], [ 0, %bb.br ], [ 0, %bb.bq ] ; 3 uses
  %.1.peel.i = phi i32 [ 1, %bb.bs ], [ 0, %bb.br ], [ 0, %bb.bq ] ; 3 uses
  br i1 %i.ady, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.aeo = getelementptr inbounds i8, ptr %i.adx, i64 %i.acq
  %i.aep = load i8, ptr %i.aeo, align 1, !tbaa !16
  %.not113.peel.i = icmp eq i8 %i.aep, 0
  br i1 %.not113.peel.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.aeq = getelementptr inbounds i8, ptr %i.adx, i64 %i.acs
  %i.aer = load i8, ptr %i.aeq, align 1, !tbaa !16
  %i.aes = zext i8 %i.aer to i16
  %i.aet = add nuw nsw i16 %.1100.peel.i, %i.aes
  %i.aeu = getelementptr inbounds i8, ptr %i.adx, i64 %i.acu
  %i.aev = load i8, ptr %i.aeu, align 1, !tbaa !16
  %i.aew = zext i8 %i.aev to i16
  %i.aex = add nuw nsw i16 %.196.peel.i, %i.aew
  %i.aey = getelementptr inbounds i8, ptr %i.adx, i64 %i.acw
  %i.aez = load i8, ptr %i.aey, align 1, !tbaa !16
  %i.afa = zext i8 %i.aez to i16
  %i.afb = add nuw nsw i16 %.192.peel.i, %i.afa
  %i.afc = add nuw nsw i32 %.1.peel.i, 1
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %bb.bt
  %.2101.peel.i = phi i16 [ %i.aet, %bb.bv ], [ %.1100.peel.i, %bb.bu ], [ %.1100.peel.i, %bb.bt ] ; 2 uses
  %.297.peel.i = phi i16 [ %i.aex, %bb.bv ], [ %.196.peel.i, %bb.bu ], [ %.196.peel.i, %bb.bt ] ; 2 uses
  %.293.peel.i = phi i16 [ %i.afb, %bb.bv ], [ %.192.peel.i, %bb.bu ], [ %.192.peel.i, %bb.bt ] ; 2 uses
  %.2.peel.i = phi i32 [ %i.afc, %bb.bv ], [ %.1.peel.i, %bb.bu ], [ %.1.peel.i, %bb.bt ] ; 3 uses
  br i1 %i.adz, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.afd = getelementptr i8, ptr %i.adx, i64 %i.acx ; 4 uses
  %i.afe = getelementptr i8, ptr %i.afd, i64 3
  %i.aff = load i8, ptr %i.afe, align 1, !tbaa !16
  %.not114.peel.i = icmp eq i8 %i.aff, 0
  br i1 %.not114.peel.i, label %bb.by, label %.thread.peel.i

.thread.peel.i:                                   ; preds = %bb.bx
  %i.afg = load i8, ptr %i.afd, align 1, !tbaa !16
  %i.afh = zext i8 %i.afg to i16
  %i.afi = add nuw nsw i16 %.2101.peel.i, %i.afh
  %i.afj = getelementptr i8, ptr %i.afd, i64 1
  %i.afk = load i8, ptr %i.afj, align 1, !tbaa !16
  %i.afl = zext i8 %i.afk to i16
  %i.afm = add nuw nsw i16 %.297.peel.i, %i.afl
  %i.afn = getelementptr i8, ptr %i.afd, i64 2
  %i.afo = load i8, ptr %i.afn, align 1, !tbaa !16
  %i.afp = zext i8 %i.afo to i16
  %i.afq = add nuw nsw i16 %.293.peel.i, %i.afp
  %i.afr = add nuw nsw i32 %.2.peel.i, 1
  br label %bb.bz
end_hunk_1
