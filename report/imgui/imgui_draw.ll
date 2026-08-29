Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1479
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 354
begin_hunk_0_@_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij:bb.a
  %i.t = icmp eq i32 %2, 3
  br i1 %i.t, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %i.u = and i32 %2, 2147483646
  %i.v = add nsw i32 %i.u, -4
  br label %bb.g

.unr-lcssa:                                       ; preds = %bb.g
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.c, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph
  %.epil.init = phi ptr [ %.promoted, %.lr.ph ], [ %i.bi, %.unr-lcssa ] ; 4 uses
  %.0124131.epil.init = phi i32 [ 2, %.lr.ph ], [ %i.bj, %.unr-lcssa ]
  %lcmp.mod174 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod174)
  store i16 %i.q, ptr %.epil.init, align 2, !tbaa !240
  %i.w = shl nuw i32 %.0124131.epil.init, 1       ; 2 uses
  %i.x = add i32 %i.s, %i.w
  %i.y = trunc i32 %i.x to i16
  %i.z = getelementptr inbounds nuw i8, ptr %.epil.init, i64 2
  store i16 %i.y, ptr %i.z, align 2, !tbaa !240
  %i.aa = add i32 %i.w, %i.o
  %i.ab = trunc i32 %i.aa to i16
  %i.ac = getelementptr inbounds nuw i8, ptr %.epil.init, i64 4
  store i16 %i.ab, ptr %i.ac, align 2, !tbaa !240
  %i.ad = getelementptr inbounds nuw i8, ptr %.epil.init, i64 6
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa172 = phi ptr [ %i.bi, %.unr-lcssa ], [ %i.ad, %.epil.preheader ]
  store ptr %.lcssa172, ptr %i.r, align 8, !tbaa !105
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !35  ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 76 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !82
  %.not.i = icmp sgt i32 %2, %i.ag
  br i1 %.not.i, label %bb.d, label %.lr.ph134.preheader

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 80 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !28 ; 2 uses
  %.not4.i = icmp eq ptr %i.ai, null
  br i1 %.not4.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.ai)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aj = zext nneg i32 %2 to i64
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ak)
  store ptr %i.al, ptr %i.ah, align 8, !tbaa !28
  store i32 %2, ptr %i.af, align 4, !tbaa !82
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !35
  br label %.lr.ph134.preheader

.lr.ph134.preheader:                              ; preds = %bb.f, %bb.c
  %i.am = phi ptr [ %i.ae, %bb.c ], [ %.pre, %bb.f ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !244 ; 3 uses
  %i.ap = add nsw i32 %2, -1                      ; 2 uses
  %wide.trip.count = zext nneg i32 %2 to i64
  %i.aq = zext nneg i32 %i.ap to i64
  br label %.lr.ph134

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %i.ar = phi ptr [ %.promoted, %.lr.ph.new ], [ %i.bi, %bb.g ] ; 7 uses
  %.0124131 = phi i32 [ 2, %.lr.ph.new ], [ %i.bj, %bb.g ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.g ] ; 2 uses
  store i16 %i.q, ptr %i.ar, align 2, !tbaa !240
  %i.as = shl nuw i32 %.0124131, 1                ; 2 uses
  %i.at = add i32 %i.s, %i.as
  %i.au = trunc i32 %i.at to i16
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  store i16 %i.au, ptr %i.av, align 2, !tbaa !240
  %i.aw = add i32 %i.as, %i.o
  %i.ax = trunc i32 %i.aw to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i16 %i.ax, ptr %i.ay, align 2, !tbaa !240
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 6
  store i16 %i.q, ptr %i.az, align 2, !tbaa !240
  %i.ba = shl nuw i32 %.0124131, 1
  %i.bb = or disjoint i32 %i.ba, 2                ; 2 uses
  %i.bc = add i32 %i.s, %i.bb
  %i.bd = trunc i32 %i.bc to i16
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i16 %i.bd, ptr %i.be, align 2, !tbaa !240
  %i.bf = add i32 %i.bb, %i.o
  %i.bg = trunc i32 %i.bf to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 10
  store i16 %i.bg, ptr %i.bh, align 2, !tbaa !240
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ar, i64 12 ; 3 uses
  %i.bj = add nuw nsw i32 %.0124131, 2            ; 2 uses
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter, %i.v
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.g, !llvm.loop !255

.lr.ph137:                                        ; preds = %bb.i
  %i.bk = fmul float %i.j, 5.000000e-01
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %wide.trip.count153 = zext nneg i32 %2 to i64
  %i.bn = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.j

.lr.ph134:                                        ; preds = %.lr.ph134.preheader, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph134.preheader ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.0123132 = phi i64 [ %i.aq, %.lr.ph134.preheader ], [ %indvars.iv, %bb.i ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0123132
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.br = load <2 x float>, ptr %i.bq, align 4, !tbaa !8
  %i.bs = load <2 x float>, ptr %i.bp, align 4, !tbaa !8
  %i.bt = fsub <2 x float> %i.br, %i.bs           ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.bt, %i.bt
  %i.bu = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bv = extractelement <2 x float> %i.bt, i64 0 ; 2 uses
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.bv, float %i.bu) ; 2 uses
  %i.bx = fcmp ogt float %i.bw, 0.000000e+00
  br i1 %i.bx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph134
  %i.by = insertelement <4 x float> poison, float %i.bw, i64 0
  %i.bz = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.by)
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> poison, <2 x i32> zeroinitializer
  %i.cb = fmul <2 x float> %i.bt, %i.ca
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph134
  %i.cc = phi <2 x float> [ %i.cb, %bb.h ], [ %i.bt, %.lr.ph134 ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.0123132 ; 2 uses
  %i.ce = extractelement <2 x float> %i.cc, i64 1
  store float %i.ce, ptr %i.cd, align 4, !tbaa !234
  %i.cf = extractelement <2 x float> %i.cc, i64 0
  %i.cg = fneg float %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store float %i.cg, ptr %i.ch, align 4, !tbaa !235
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond149.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond149.not, label %.lr.ph137, label %.lr.ph134, !llvm.loop !256

._crit_edge138:                                   ; preds = %bb.l
  %i.ci = and i32 %i.m, 65534
  %i.cj = load i32, ptr %i.n, align 4, !tbaa !75
  %i.ck = add i32 %i.cj, %i.ci
  store i32 %i.ck, ptr %i.n, align 4, !tbaa !75
  br label %bb.p

bb.j:                                             ; preds = %.lr.ph137, %bb.l
  %indvars.iv150 = phi i64 [ 0, %.lr.ph137 ], [ %indvars.iv.next151, %bb.l ] ; 5 uses
  %.0119135 = phi i32 [ %i.ap, %.lr.ph137 ], [ %i.ei, %bb.l ] ; 2 uses
  %i.cl = sext i32 %.0119135 to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv150
  %i.co = load <2 x float>, ptr %i.cm, align 4, !tbaa !8
  %i.cp = load <2 x float>, ptr %i.cn, align 4, !tbaa !8
  %i.cq = fadd <2 x float> %i.co, %i.cp
  %i.cr = fmul <2 x float> %i.cq, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop170 = fmul <2 x float> %i.cr, %i.cr
  %i.cs = extractelement <2 x float> %foldExtExtBinop170, i64 1
  %i.ct = extractelement <2 x float> %i.cr, i64 0 ; 2 uses
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.ct, float %i.cs) ; 2 uses
  %i.cv = fcmp ogt float %i.cu, f0x358637BD
  br i1 %i.cv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cw = fdiv float 1.000000e+00, %i.cu          ; 2 uses
  %i.cx = fcmp ogt float %i.cw, 1.000000e+02
  %spec.store.select = select i1 %i.cx, float 1.000000e+02, float %i.cw
  %i.cy = insertelement <2 x float> poison, float %spec.store.select, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = fmul <2 x float> %i.cr, %i.cz
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.db = phi <2 x float> [ %i.da, %bb.k ], [ %i.cr, %bb.j ]
  %i.dc = fmul <2 x float> %i.bo, %i.db           ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv150 ; 2 uses
  %i.de = load ptr, ptr %i.bl, align 8, !tbaa !239 ; 2 uses
  %i.df = load <2 x float>, ptr %i.dd, align 4, !tbaa !8
  %i.dg = fsub <2 x float> %i.df, %i.dc
  store <2 x float> %i.dg, ptr %i.de, align 4, !tbaa !8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i64 %i.e, ptr %i.dh, align 4
  %i.di = load ptr, ptr %i.bl, align 8, !tbaa !239 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store i32 %3, ptr %i.dj, align 4, !tbaa !241
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 20
  %i.dl = load <2 x float>, ptr %i.dd, align 4, !tbaa !8
  %i.dm = fadd <2 x float> %i.dc, %i.dl
  store <2 x float> %i.dm, ptr %i.dk, align 4, !tbaa !8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 28
  store i64 %i.e, ptr %i.dn, align 4
  %i.do = load ptr, ptr %i.bl, align 8, !tbaa !239 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 36
  store i32 %i.k, ptr %i.dp, align 4, !tbaa !241
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  store ptr %i.dq, ptr %i.bl, align 8, !tbaa !239
  %indvars.iv150.tr = trunc i64 %indvars.iv150 to i32
  %i.dr = shl i32 %indvars.iv150.tr, 1            ; 2 uses
  %i.ds = add i32 %i.dr, %i.o
  %i.dt = trunc i32 %i.ds to i16                  ; 2 uses
  %i.du = load ptr, ptr %i.bm, align 8, !tbaa !105 ; 7 uses
  store i16 %i.dt, ptr %i.du, align 2, !tbaa !240
  %i.dv = shl i32 %.0119135, 1                    ; 2 uses
  %i.dw = add i32 %i.dv, %i.o
  %i.dx = trunc i32 %i.dw to i16
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  store i16 %i.dx, ptr %i.dy, align 2, !tbaa !240
  %i.dz = add i32 %i.dv, %i.p
  %i.ea = trunc i32 %i.dz to i16                  ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  store i16 %i.ea, ptr %i.eb, align 2, !tbaa !240
  %i.ec = getelementptr inbounds nuw i8, ptr %i.du, i64 6
  store i16 %i.ea, ptr %i.ec, align 2, !tbaa !240
  %i.ed = add i32 %i.dr, %i.p
  %i.ee = trunc i32 %i.ed to i16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i16 %i.ee, ptr %i.ef, align 2, !tbaa !240
  %i.eg = getelementptr inbounds nuw i8, ptr %i.du, i64 10
  store i16 %i.dt, ptr %i.eg, align 2, !tbaa !240
  %i.eh = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store ptr %i.eh, ptr %i.bm, align 8, !tbaa !105
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %i.ei = trunc nuw nsw i64 %indvars.iv150 to i32
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count153
  br i1 %exitcond154.not, label %._crit_edge138, label %bb.j, !llvm.loop !257

.lr.ph141:                                        ; preds = %bb.b
  %i.ej = mul i32 %2, 3
  %i.ek = add i32 %i.ej, -6
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %i.ek, i32 noundef %2)
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %wide.trip.count158 = zext nneg i32 %2 to i64   ; 2 uses
  %xtraiter176 = and i64 %wide.trip.count158, 1
  %.pre161 = load ptr, ptr %i.el, align 8, !tbaa !239
  %unroll_iter181 = and i64 %wide.trip.count158, 2147483646
  br label %bb.m

.lr.ph143.unr-lcssa:                              ; preds = %bb.m
  %lcmp.mod179.not = icmp eq i64 %xtraiter176, 0
  br i1 %lcmp.mod179.not, label %.lr.ph143, label %.epil.preheader175

.epil.preheader175:                               ; preds = %.lr.ph143.unr-lcssa
  %lcmp.mod180 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod180)
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next156.1
  %i.en = load i64, ptr %i.em, align 4
  store i64 %i.en, ptr %i.fp, align 4
  %i.eo = load ptr, ptr %i.el, align 8, !tbaa !239
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i64 %i.e, ptr %i.ep, align 4
  %i.eq = load ptr, ptr %i.el, align 8, !tbaa !239 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store i32 %3, ptr %i.er, align 4, !tbaa !241
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 20
  store ptr %i.es, ptr %i.el, align 8, !tbaa !239
  br label %.lr.ph143

.lr.ph143:                                        ; preds = %.lr.ph143.unr-lcssa, %.epil.preheader175
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !75 ; 7 uses
  %i.ev = trunc i32 %i.eu to i16                  ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted145 = load ptr, ptr %i.ew, align 8, !tbaa !105 ; 2 uses
  %i.ex = add nsw i32 %2, -2                      ; 2 uses
  %i.ey = add nsw i32 %2, -3
  %xtraiter185 = and i32 %i.ex, 3                 ; 3 uses
  %i.ez = icmp ult i32 %i.ey, 3
  br i1 %i.ez, label %.epil.preheader184, label %.lr.ph143.new

.lr.ph143.new:                                    ; preds = %.lr.ph143
  %unroll_iter192 = and i32 %i.ex, -4
  %invariant.op = add i32 2, %i.eu
  %invariant.op200 = add i32 3, %i.eu
  br label %bb.o

bb.m:                                             ; preds = %bb.m, %.lr.ph141
  %i.fa = phi ptr [ %.pre161, %.lr.ph141 ], [ %i.fp, %bb.m ]
  %indvars.iv155 = phi i64 [ 0, %.lr.ph141 ], [ %indvars.iv.next156.1, %bb.m ] ; 3 uses
  %niter182 = phi i64 [ 0, %.lr.ph141 ], [ %niter182.next.1, %bb.m ]
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv155
  %i.fc = load i64, ptr %i.fb, align 4
  store i64 %i.fc, ptr %i.fa, align 4
  %i.fd = load ptr, ptr %i.el, align 8, !tbaa !239
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store i64 %i.e, ptr %i.fe, align 4
  %i.ff = load ptr, ptr %i.el, align 8, !tbaa !239 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store i32 %3, ptr %i.fg, align 4, !tbaa !241
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 20 ; 2 uses
  store ptr %i.fh, ptr %i.el, align 8, !tbaa !239
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv155
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load i64, ptr %i.fj, align 4
  store i64 %i.fk, ptr %i.fh, align 4
  %i.fl = load ptr, ptr %i.el, align 8, !tbaa !239
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store i64 %i.e, ptr %i.fm, align 4
  %i.fn = load ptr, ptr %i.el, align 8, !tbaa !239 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store i32 %3, ptr %i.fo, align 4, !tbaa !241
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 20 ; 3 uses
  store ptr %i.fp, ptr %i.el, align 8, !tbaa !239
  %indvars.iv.next156.1 = add nuw nsw i64 %indvars.iv155, 2 ; 2 uses
  %niter182.next.1 = add nuw nsw i64 %niter182, 2 ; 2 uses
  %niter182.ncmp.1 = icmp eq i64 %niter182.next.1, %unroll_iter181
  br i1 %niter182.ncmp.1, label %.lr.ph143.unr-lcssa, label %bb.m, !llvm.loop !258

.unr-lcssa183:                                    ; preds = %bb.o
  %lcmp.mod188.not = icmp eq i32 %xtraiter185, 0
  br i1 %lcmp.mod188.not, label %.epilog-lcssa189, label %.epil.preheader184

.epil.preheader184:                               ; preds = %.unr-lcssa183, %.lr.ph143
  %.epil.init187 = phi ptr [ %.promoted145, %.lr.ph143 ], [ %i.gy, %.unr-lcssa183 ]
  %.0142.epil.init = phi i32 [ 2, %.lr.ph143 ], [ %i.gz, %.unr-lcssa183 ]
  %lcmp.mod191 = icmp ne i32 %xtraiter185, 0
  tail call void @llvm.assume(i1 %lcmp.mod191)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader184
  %i.fq = phi ptr [ %.epil.init187, %.epil.preheader184 ], [ %i.fw, %bb.n ] ; 4 uses
  %.0142.epil = phi i32 [ %.0142.epil.init, %.epil.preheader184 ], [ %i.fx, %bb.n ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader184 ], [ %epil.iter.next, %bb.n ]
  store i16 %i.ev, ptr %i.fq, align 2, !tbaa !240
  %i.fr = add i32 %i.eu, %.0142.epil
  %i.fs = trunc i32 %i.fr to i16                  ; 2 uses
  %i.ft = add i16 %i.fs, -1
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 2
  store i16 %i.ft, ptr %i.fu, align 2, !tbaa !240
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  store i16 %i.fs, ptr %i.fv, align 2, !tbaa !240
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 6 ; 2 uses
  %i.fx = add nuw nsw i32 %.0142.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter185
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa189, label %bb.n, !llvm.loop !259

.epilog-lcssa189:                                 ; preds = %bb.n, %.unr-lcssa183
  %.lcssa = phi ptr [ %i.gy, %.unr-lcssa183 ], [ %i.fw, %bb.n ]
  store ptr %.lcssa, ptr %i.ew, align 8, !tbaa !105
  %i.fy = and i32 %2, 65535
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ga = add i32 %i.eu, %i.fy
  store i32 %i.ga, ptr %i.fz, align 4, !tbaa !75
  br label %bb.p

bb.o:                                             ; preds = %bb.o, %.lr.ph143.new
  %i.gb = phi ptr [ %.promoted145, %.lr.ph143.new ], [ %i.gy, %bb.o ] ; 13 uses
  %.0142 = phi i32 [ 2, %.lr.ph143.new ], [ %i.gz, %bb.o ] ; 5 uses
  %niter193 = phi i32 [ 0, %.lr.ph143.new ], [ %niter193.next.3, %bb.o ]
  store i16 %i.ev, ptr %i.gb, align 2, !tbaa !240
  %i.gc = add i32 %i.eu, %.0142
  %i.gd = trunc i32 %i.gc to i16                  ; 2 uses
  %i.ge = add i16 %i.gd, -1
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 2
  store i16 %i.ge, ptr %i.gf, align 2, !tbaa !240
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  store i16 %i.gd, ptr %i.gg, align 2, !tbaa !240
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gb, i64 6
  %i.gi = or disjoint i32 %.0142, 1
  store i16 %i.ev, ptr %i.gh, align 2, !tbaa !240
  %i.gj = add i32 %i.eu, %i.gi
  %i.gk = trunc i32 %i.gj to i16                  ; 2 uses
  %i.gl = add i16 %i.gk, -1
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store i16 %i.gl, ptr %i.gm, align 2, !tbaa !240
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gb, i64 10
  store i16 %i.gk, ptr %i.gn, align 2, !tbaa !240
  %i.go = getelementptr inbounds nuw i8, ptr %i.gb, i64 12
  store i16 %i.ev, ptr %i.go, align 2, !tbaa !240
  %.reass = add i32 %.0142, %invariant.op
  %i.gp = trunc i32 %.reass to i16                ; 2 uses
  %i.gq = add i16 %i.gp, -1
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gb, i64 14
  store i16 %i.gq, ptr %i.gr, align 2, !tbaa !240
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store i16 %i.gp, ptr %i.gs, align 2, !tbaa !240
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gb, i64 18
  store i16 %i.ev, ptr %i.gt, align 2, !tbaa !240
  %.reass201 = add i32 %.0142, %invariant.op200
  %i.gu = trunc i32 %.reass201 to i16             ; 2 uses
  %i.gv = add i16 %i.gu, -1
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gb, i64 20
  store i16 %i.gv, ptr %i.gw, align 2, !tbaa !240
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gb, i64 22
  store i16 %i.gu, ptr %i.gx, align 2, !tbaa !240
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gb, i64 24 ; 3 uses
  %i.gz = add nuw nsw i32 %.0142, 4               ; 2 uses
  %niter193.next.3 = add i32 %niter193, 4         ; 2 uses
  %niter193.ncmp.3 = icmp eq i32 %niter193.next.3, %unroll_iter192
  br i1 %niter193.ncmp.3, label %.unr-lcssa183, label %bb.o, !llvm.loop !260

bb.p:                                             ; preds = %._crit_edge138, %.epilog-lcssa189, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawList16_PathArcToFastExERK6ImVec2fiii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, float noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #10 align 2 {
bb.a:
end_hunk_0
begin_hunk_1_@_ZN10ImDrawList20AddConcavePolyFilledEPK6ImVec2ij:bb.a
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !35   ; 3 uses
  %i.v = mul i32 %2, 48
  %i.w = ashr exact i32 %i.v, 3                   ; 2 uses
  %i.x = or disjoint i32 %i.w, 1                  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 76 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !82
  %.not.i.not = icmp slt i32 %i.w, %i.z
  br i1 %.not.i.not, label %_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 80 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !28 ; 2 uses
  %.not4.i = icmp eq ptr %i.ab, null
  br i1 %.not4.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.ab)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = sext i32 %i.x to i64
  %i.ad = shl nsw i64 %i.ac, 3
  %i.ae = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ad)
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !28
  store i32 %i.x, ptr %i.y, align 4, !tbaa !82
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !35
  br label %_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit

_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit:    ; preds = %bb.c, %bb.f
  %i.af = phi ptr [ %i.u, %bb.c ], [ %.pre, %bb.f ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !244
  call void @_ZN14ImTriangulator4InitEPK6ImVec2iPv(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1, i32 noundef %2, ptr noundef %i.ah)
  %i.ai = load i32, ptr %4, align 8, !tbaa !296
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.am = insertelement <2 x i32> poison, i32 %i.s, i64 0
  %i.an = shufflevector <2 x i32> %i.am, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  call void @_ZN14ImTriangulator15GetNextTriangleEPj(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull %i.a)
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !105 ; 3 uses
  %i.ap = load <2 x i32>, ptr %i.a, align 8, !tbaa !280
  %i.aq = shl <2 x i32> %i.ap, splat (i32 1)
  %i.ar = add <2 x i32> %i.aq, %i.an
  %i.as = trunc <2 x i32> %i.ar to <2 x i16>
  store <2 x i16> %i.as, ptr %i.ao, align 2, !tbaa !240
  %i.at = load i32, ptr %i.al, align 8, !tbaa !280
  %i.au = shl i32 %i.at, 1
  %i.av = add i32 %i.au, %i.s
  %i.aw = trunc i32 %i.av to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i16 %i.aw, ptr %i.ax, align 2, !tbaa !240
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 6
  store ptr %i.ay, ptr %i.ak, align 8, !tbaa !105
  %i.az = load i32, ptr %4, align 8, !tbaa !296
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %bb.g, label %._crit_edge, !llvm.loop !323

._crit_edge:                                      ; preds = %bb.g, %_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !35  ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 76 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !82
  %.not.i122 = icmp sgt i32 %2, %i.bd
  br i1 %.not.i122, label %bb.h, label %.lr.ph132.preheader

bb.h:                                             ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 80 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !28 ; 2 uses
  %.not4.i123 = icmp eq ptr %i.bf, null
  br i1 %.not4.i123, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.bf)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bg = zext nneg i32 %2 to i64
  %i.bh = shl nuw nsw i64 %i.bg, 3
  %i.bi = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bh)
  store ptr %i.bi, ptr %i.be, align 8, !tbaa !28
  store i32 %2, ptr %i.bc, align 4, !tbaa !82
  %.pre154 = load ptr, ptr %i.d, align 8, !tbaa !35
  br label %.lr.ph132.preheader

.lr.ph132.preheader:                              ; preds = %bb.j, %._crit_edge
  %i.bj = phi ptr [ %i.bb, %._crit_edge ], [ %.pre154, %bb.j ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 80
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !244 ; 3 uses
  %i.bm = add nsw i32 %2, -1                      ; 2 uses
  %wide.trip.count = zext nneg i32 %2 to i64
  %i.bn = zext nneg i32 %i.bm to i64
  br label %.lr.ph132

.lr.ph135:                                        ; preds = %bb.l
  %i.bo = fmul float %i.n, 5.000000e-01
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %wide.trip.count147 = zext nneg i32 %2 to i64
  %i.br = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.m

.lr.ph132:                                        ; preds = %.lr.ph132.preheader, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph132.preheader ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %.0118130 = phi i64 [ %i.bn, %.lr.ph132.preheader ], [ %indvars.iv, %bb.l ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0118130
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.bv = load <2 x float>, ptr %i.bu, align 4, !tbaa !8
  %i.bw = load <2 x float>, ptr %i.bt, align 4, !tbaa !8
  %i.bx = fsub <2 x float> %i.bv, %i.bw           ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.bx, %i.bx
  %i.by = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bz = extractelement <2 x float> %i.bx, i64 0 ; 2 uses
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.bz, float %i.by) ; 2 uses
  %i.cb = fcmp ogt float %i.ca, 0.000000e+00
  br i1 %i.cb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph132
  %i.cc = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.cd = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.cc)
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> poison, <2 x i32> zeroinitializer
  %i.cf = fmul <2 x float> %i.bx, %i.ce
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph132
  %i.cg = phi <2 x float> [ %i.cf, %bb.k ], [ %i.bx, %.lr.ph132 ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.0118130 ; 2 uses
  %i.ci = extractelement <2 x float> %i.cg, i64 1
  store float %i.ci, ptr %i.ch, align 4, !tbaa !234
  %i.cj = extractelement <2 x float> %i.cg, i64 0
  %i.ck = fneg float %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store float %i.ck, ptr %i.cl, align 4, !tbaa !235
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph135, label %.lr.ph132, !llvm.loop !324

._crit_edge136:                                   ; preds = %bb.o
  %i.cm = and i32 %i.q, 65534
  %i.cn = load i32, ptr %i.r, align 4, !tbaa !75
  %i.co = add i32 %i.cn, %i.cm
  store i32 %i.co, ptr %i.r, align 4, !tbaa !75
  br label %bb.u

bb.m:                                             ; preds = %.lr.ph135, %bb.o
  %indvars.iv144 = phi i64 [ 0, %.lr.ph135 ], [ %indvars.iv.next145, %bb.o ] ; 5 uses
  %.0114133 = phi i32 [ %i.bm, %.lr.ph135 ], [ %i.em, %bb.o ] ; 2 uses
  %i.cp = sext i32 %.0114133 to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.cp
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv144
  %i.cs = load <2 x float>, ptr %i.cq, align 4, !tbaa !8
  %i.ct = load <2 x float>, ptr %i.cr, align 4, !tbaa !8
  %i.cu = fadd <2 x float> %i.cs, %i.ct
  %i.cv = fmul <2 x float> %i.cu, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop165 = fmul <2 x float> %i.cv, %i.cv
  %i.cw = extractelement <2 x float> %foldExtExtBinop165, i64 1
  %i.cx = extractelement <2 x float> %i.cv, i64 0 ; 2 uses
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.cx, float %i.cw) ; 2 uses
  %i.cz = fcmp ogt float %i.cy, f0x358637BD
  br i1 %i.cz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.da = fdiv float 1.000000e+00, %i.cy          ; 2 uses
  %i.db = fcmp ogt float %i.da, 1.000000e+02
  %spec.store.select = select i1 %i.db, float 1.000000e+02, float %i.da
  %i.dc = insertelement <2 x float> poison, float %spec.store.select, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.de = fmul <2 x float> %i.cv, %i.dd
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.df = phi <2 x float> [ %i.de, %bb.n ], [ %i.cv, %bb.m ]
  %i.dg = fmul <2 x float> %i.bs, %i.df           ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv144 ; 2 uses
  %i.di = load ptr, ptr %i.bp, align 8, !tbaa !239 ; 2 uses
  %i.dj = load <2 x float>, ptr %i.dh, align 4, !tbaa !8
  %i.dk = fsub <2 x float> %i.dj, %i.dg
  store <2 x float> %i.dk, ptr %i.di, align 4, !tbaa !8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i64 %i.f, ptr %i.dl, align 4
  %i.dm = load ptr, ptr %i.bp, align 8, !tbaa !239 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i32 %3, ptr %i.dn, align 4, !tbaa !241
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 20
  %i.dp = load <2 x float>, ptr %i.dh, align 4, !tbaa !8
  %i.dq = fadd <2 x float> %i.dg, %i.dp
  store <2 x float> %i.dq, ptr %i.do, align 4, !tbaa !8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 28
  store i64 %i.f, ptr %i.dr, align 4
  %i.ds = load ptr, ptr %i.bp, align 8, !tbaa !239 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 36
  store i32 %i.o, ptr %i.dt, align 4, !tbaa !241
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  store ptr %i.du, ptr %i.bp, align 8, !tbaa !239
  %indvars.iv144.tr = trunc i64 %indvars.iv144 to i32
  %i.dv = shl i32 %indvars.iv144.tr, 1            ; 2 uses
  %i.dw = add i32 %i.dv, %i.s
  %i.dx = trunc i32 %i.dw to i16                  ; 2 uses
  %i.dy = load ptr, ptr %i.bq, align 8, !tbaa !105 ; 7 uses
  store i16 %i.dx, ptr %i.dy, align 2, !tbaa !240
  %i.dz = shl i32 %.0114133, 1                    ; 2 uses
  %i.ea = add i32 %i.dz, %i.s
  %i.eb = trunc i32 %i.ea to i16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 2
  store i16 %i.eb, ptr %i.ec, align 2, !tbaa !240
  %i.ed = add i32 %i.dz, %i.t
  %i.ee = trunc i32 %i.ed to i16                  ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  store i16 %i.ee, ptr %i.ef, align 2, !tbaa !240
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dy, i64 6
  store i16 %i.ee, ptr %i.eg, align 2, !tbaa !240
  %i.eh = add i32 %i.dv, %i.t
  %i.ei = trunc i32 %i.eh to i16
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i16 %i.ei, ptr %i.ej, align 2, !tbaa !240
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dy, i64 10
  store i16 %i.dx, ptr %i.ek, align 2, !tbaa !240
  %i.el = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  store ptr %i.el, ptr %i.bq, align 8, !tbaa !105
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %i.em = trunc nuw nsw i64 %indvars.iv144 to i32
  %exitcond148.not = icmp eq i64 %indvars.iv.next145, %wide.trip.count147
  br i1 %exitcond148.not, label %._crit_edge136, label %bb.m, !llvm.loop !325

.lr.ph139:                                        ; preds = %bb.b
  %i.en = mul i32 %2, 3
  %i.eo = add i32 %i.en, -6
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %i.eo, i32 noundef %2)
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %wide.trip.count152 = zext nneg i32 %2 to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count152, 1
  %.pre155 = load ptr, ptr %i.ep, align 8, !tbaa !239
  %unroll_iter = and i64 %wide.trip.count152, 2147483646
  br label %bb.s

._crit_edge140.unr-lcssa:                         ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge140, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge140.unr-lcssa
  %lcmp.mod167 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod167)
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next150.1
  %i.er = load i64, ptr %i.eq, align 4
  store i64 %i.er, ptr %i.gf, align 4
  %i.es = load ptr, ptr %i.ep, align 8, !tbaa !239
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store i64 %i.f, ptr %i.et, align 4
  %i.eu = load ptr, ptr %i.ep, align 8, !tbaa !239 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store i32 %3, ptr %i.ev, align 4, !tbaa !241
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 20
  store ptr %i.ew, ptr %i.ep, align 8, !tbaa !239
  br label %._crit_edge140

._crit_edge140:                                   ; preds = %._crit_edge140.unr-lcssa, %.epil.preheader
  %i.ex = load ptr, ptr %i.d, align 8, !tbaa !35  ; 3 uses
  %i.ey = mul i32 %2, 48
  %i.ez = ashr exact i32 %i.ey, 3                 ; 2 uses
  %i.fa = or disjoint i32 %i.ez, 1                ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 76 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !82
  %.not.i125.not = icmp slt i32 %i.ez, %i.fc
  br i1 %.not.i125.not, label %_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit127, label %bb.p

bb.p:                                             ; preds = %._crit_edge140
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 80 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !28 ; 2 uses
  %.not4.i126 = icmp eq ptr %i.fe, null
  br i1 %.not4.i126, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.fe)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ff = sext i32 %i.fa to i64
  %i.fg = shl nsw i64 %i.ff, 3
  %i.fh = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.fg)
  store ptr %i.fh, ptr %i.fd, align 8, !tbaa !28
  store i32 %i.fa, ptr %i.fb, align 4, !tbaa !82
  %.pre156 = load ptr, ptr %i.d, align 8, !tbaa !35
  br label %_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit127

_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit127: ; preds = %._crit_edge140, %bb.r
  %i.fi = phi ptr [ %i.ex, %._crit_edge140 ], [ %.pre156, %bb.r ]
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 80
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !244
  call void @_ZN14ImTriangulator4InitEPK6ImVec2iPv(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull %1, i32 noundef %2, ptr noundef %i.fk)
  %i.fl = load i32, ptr %4, align 8, !tbaa !296
  %i.fm = icmp sgt i32 %i.fl, 0
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  br i1 %i.fm, label %.lr.ph141, label %_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit127.._crit_edge142_crit_edge

_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit127.._crit_edge142_crit_edge: ; preds = %_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit127
  %.pre157 = load i32, ptr %i.fn, align 4, !tbaa !75
  br label %._crit_edge142

.lr.ph141:                                        ; preds = %_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit127
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.t

bb.s:                                             ; preds = %bb.s, %.lr.ph139
  %i.fq = phi ptr [ %.pre155, %.lr.ph139 ], [ %i.gf, %bb.s ]
  %indvars.iv149 = phi i64 [ 0, %.lr.ph139 ], [ %indvars.iv.next150.1, %bb.s ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph139 ], [ %niter.next.1, %bb.s ]
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv149
  %i.fs = load i64, ptr %i.fr, align 4
  store i64 %i.fs, ptr %i.fq, align 4
  %i.ft = load ptr, ptr %i.ep, align 8, !tbaa !239
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store i64 %i.f, ptr %i.fu, align 4
  %i.fv = load ptr, ptr %i.ep, align 8, !tbaa !239 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  store i32 %3, ptr %i.fw, align 4, !tbaa !241
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 20 ; 2 uses
  store ptr %i.fx, ptr %i.ep, align 8, !tbaa !239
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv149
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load i64, ptr %i.fz, align 4
  store i64 %i.ga, ptr %i.fx, align 4
  %i.gb = load ptr, ptr %i.ep, align 8, !tbaa !239
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store i64 %i.f, ptr %i.gc, align 4
  %i.gd = load ptr, ptr %i.ep, align 8, !tbaa !239 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store i32 %3, ptr %i.ge, align 4, !tbaa !241
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 20 ; 3 uses
  store ptr %i.gf, ptr %i.ep, align 8, !tbaa !239
  %indvars.iv.next150.1 = add nuw nsw i64 %indvars.iv149, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge140.unr-lcssa, label %bb.s, !llvm.loop !326

bb.t:                                             ; preds = %.lr.ph141, %bb.t
  call void @_ZN14ImTriangulator15GetNextTriangleEPj(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull %i.a)
  %i.gg = load i32, ptr %i.fn, align 4, !tbaa !75 ; 3 uses
  %i.gh = load ptr, ptr %i.fo, align 8, !tbaa !105 ; 3 uses
  %i.gi = load <2 x i32>, ptr %i.a, align 8, !tbaa !280
  %i.gj = insertelement <2 x i32> poison, i32 %i.gg, i64 0
  %i.gk = shufflevector <2 x i32> %i.gj, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.gl = add <2 x i32> %i.gi, %i.gk
  %i.gm = trunc <2 x i32> %i.gl to <2 x i16>
  store <2 x i16> %i.gm, ptr %i.gh, align 2, !tbaa !240
  %i.gn = load i32, ptr %i.fp, align 8, !tbaa !280
  %i.go = add i32 %i.gn, %i.gg
  %i.gp = trunc i32 %i.go to i16
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  store i16 %i.gp, ptr %i.gq, align 2, !tbaa !240
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gh, i64 6
  store ptr %i.gr, ptr %i.fo, align 8, !tbaa !105
  %i.gs = load i32, ptr %4, align 8, !tbaa !296
  %i.gt = icmp sgt i32 %i.gs, 0
  br i1 %i.gt, label %bb.t, label %._crit_edge142, !llvm.loop !327

._crit_edge142:                                   ; preds = %bb.t, %_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit127.._crit_edge142_crit_edge
  %i.gu = phi i32 [ %.pre157, %_ZN8ImVectorI6ImVec2E15reserve_discardEi.exit127.._crit_edge142_crit_edge ], [ %i.gg, %bb.t ]
  %i.gv = and i32 %2, 65535
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.gx = add i32 %i.gu, %i.gv
  store i32 %i.gx, ptr %i.gw, align 4, !tbaa !75
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge142, %._crit_edge136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %bb.u
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN18ImDrawListSplitter5SplitEP10ImDrawListi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((4, 8)) %0, ptr nofree noundef readnone captures(none) %1, i32 noundef %2) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  %i.c = icmp slt i32 %i.b, %2
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !113
  %.not.i = icmp sgt i32 %2, %i.e
  br i1 %.not.i, label %bb.c, label %_ZN8ImVectorI13ImDrawChannelE6resizeEi.exit

bb.c:                                             ; preds = %bb.b
  %i.f = sext i32 %2 to i64
  %i.g = shl nsw i64 %i.f, 5
  %i.h = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.g) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !64   ; 2 uses
  %.not6.i = icmp eq ptr %i.j, null
  br i1 %.not6.i, label %_ZN8ImVectorI13ImDrawChannelE7reserveEi.exit.thread, label %bb.d

end_hunk_1
begin_hunk_2_@_ZL33ImGui_ImplStbTrueType_FontSrcInitP11ImFontAtlasP12ImFontConfig:bb.a
  %..i.i22.i331.i.i = select i1 %i.vy, i32 %i.jt, i32 %i.vz ; 2 uses
  store i32 %..i.i22.i331.i.i, ptr %i.jp, align 8, !tbaa !710
  br label %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit338.i.i

_ZL20stbtt__cff_get_indexP10stbtt__buf.exit338.i.i: ; preds = %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.i329.i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i313.i.i
  %i.wa = phi i32 [ %..i.i22.i331.i.i, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.i329.i.i ], [ %i.uk, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i313.i.i ] ; 2 uses
  %i.wb = sub nsw i32 %i.wa, %i.tu                ; 2 uses
  %i.wc = or i32 %i.wb, %i.tu
  %or.cond.not.i.i332.i.i = icmp slt i32 %i.wc, 0
  %i.wd = icmp sgt i32 %i.wa, %i.jt
  %or.cond.i333.i.i = or i1 %i.wd, %or.cond.not.i.i332.i.i ; 2 uses
  %i.we = load ptr, ptr %2, align 8               ; 2 uses
  %i.wf = zext nneg i32 %i.tu to i64
  %i.wg = getelementptr inbounds nuw i8, ptr %i.we, i64 %i.wf
  %i.wh = zext nneg i32 %i.wb to i64
  %i.wi = shl nuw nsw i64 %i.wh, 32
  %.sroa.0.0.i.i334.i.i = select i1 %or.cond.i333.i.i, ptr null, ptr %i.wg
  %.sroa.5.0.i.i335.i.i = select i1 %or.cond.i333.i.i, i64 0, i64 %i.wi
  %i.wj = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store ptr %.sroa.0.0.i.i334.i.i, ptr %i.wj, align 8, !tbaa !525
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store i64 %.sroa.5.0.i.i335.i.i, ptr %.sroa.414.0..sroa_idx.i.i, align 8
  call fastcc void @_ZL20stbtt__dict_get_intsP10stbtt__bufiiPj(ptr noundef %3, i32 noundef 17, i32 noundef 1, ptr noundef %i.b)
  call fastcc void @_ZL20stbtt__dict_get_intsP10stbtt__bufiiPj(ptr noundef %3, i32 noundef 262, i32 noundef 1, ptr noundef %i.a)
  call fastcc void @_ZL20stbtt__dict_get_intsP10stbtt__bufiiPj(ptr noundef %3, i32 noundef 292, i32 noundef 1, ptr noundef %i.c)
  call fastcc void @_ZL20stbtt__dict_get_intsP10stbtt__bufiiPj(ptr noundef %3, i32 noundef 293, i32 noundef 1, ptr noundef %i.d)
  %.sroa.210.0.copyload.i.i = load i64, ptr %i.jp, align 8 ; 2 uses
  %.sroa.08.0.copyload.i.i = load ptr, ptr %3, align 8, !tbaa !525
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.419.0..sroa_idx.i.i, align 8
  %i.wk = tail call fastcc { ptr, i64 } @_ZL16stbtt__get_subrs10stbtt__bufS_(ptr %i.we, i64 %.sroa.210.0.copyload.i.i, ptr %.sroa.08.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i) ; 2 uses
  %i.wl = extractvalue { ptr, i64 } %i.wk, 0
  %i.wm = extractvalue { ptr, i64 } %i.wk, 1
  %i.wn = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store ptr %i.wl, ptr %i.wn, align 8, !tbaa !525
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store i64 %i.wm, ptr %.sroa.412.0..sroa_idx.i.i, align 8
  %i.wo = load i32, ptr %i.a, align 4, !tbaa !280
  %.not121.i.i = icmp ne i32 %i.wo, 2
  %i.wp = load i32, ptr %i.b, align 4             ; 3 uses
  %i.wq = icmp eq i32 %i.wp, 0
  %or.cond.i.i = select i1 %.not121.i.i, i1 true, i1 %i.wq
  br i1 %or.cond.i.i, label %.critedge.i.i, label %bb.do

bb.do:                                            ; preds = %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit338.i.i
  %i.wr = lshr i64 %.sroa.210.0.copyload.i.i, 32
  %i.ws = trunc nuw i64 %i.wr to i32
  %i.wt = load i32, ptr %i.c, align 4, !tbaa !280 ; 3 uses
  %.not122.i.i = icmp eq i32 %i.wt, 0
  br i1 %.not122.i.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.wu = load i32, ptr %i.d, align 4, !tbaa !280 ; 5 uses
  %.not123.i.i = icmp eq i32 %i.wu, 0
  br i1 %.not123.i.i, label %.critedge.i.i, label %_ZL16stbtt__buf_rangePK10stbtt__bufii.exit.i.i

_ZL16stbtt__buf_rangePK10stbtt__bufii.exit.i.i:   ; preds = %bb.dp
  %i.wv = icmp slt i32 %i.wt, 0
  %i.ww = tail call i32 @llvm.smin.i32(i32 %i.wt, i32 %i.jt)
  %..i.i.i = select i1 %i.wv, i32 %i.jt, i32 %i.ww
  store i32 %..i.i.i, ptr %i.jp, align 8, !tbaa !710
  %i.wx = call fastcc { ptr, i64 } @_ZL20stbtt__cff_get_indexP10stbtt__buf(ptr noundef %2) ; 2 uses
  %i.wy = extractvalue { ptr, i64 } %i.wx, 0
  %i.wz = extractvalue { ptr, i64 } %i.wx, 1
  store ptr %i.wy, ptr %i.jl, align 8, !tbaa !525
  store i64 %i.wz, ptr %.sroa.429.0..sroa_idx.i.i, align 8
  %i.xa = load i32, ptr %i.js, align 4, !tbaa !711 ; 3 uses
  %i.xb = sub i32 %i.xa, %i.wu                    ; 2 uses
  %i.xc = or i32 %i.xb, %i.wu
  %or.cond.not.i.i.i = icmp slt i32 %i.xc, 0
  %i.xd = icmp sgt i32 %i.wu, %i.xa
  %or.cond388.i.i = or i1 %i.xd, %or.cond.not.i.i.i ; 2 uses
  %i.xe = load ptr, ptr %2, align 8
  %i.xf = zext nneg i32 %i.wu to i64
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xe, i64 %i.xf
  %i.xh = zext nneg i32 %i.xb to i64
  %i.xi = shl nuw nsw i64 %i.xh, 32
  %.sroa.0.0.i.i.i = select i1 %or.cond388.i.i, ptr null, ptr %i.xg
  %.sroa.5.0.i.i.i = select i1 %or.cond388.i.i, i64 0, i64 %i.xi
  store ptr %.sroa.0.0.i.i.i, ptr %i.jm, align 8, !tbaa !525
  store i64 %.sroa.5.0.i.i.i, ptr %.sroa.427.0..sroa_idx.i.i, align 8
  br label %bb.dq

bb.dq:                                            ; preds = %_ZL16stbtt__buf_rangePK10stbtt__bufii.exit.i.i, %bb.do
  %i.xj = phi i32 [ %i.xa, %_ZL16stbtt__buf_rangePK10stbtt__bufii.exit.i.i ], [ %i.ws, %bb.do ] ; 2 uses
  %i.xk = icmp slt i32 %i.wp, 0
  %i.xl = tail call i32 @llvm.smin.i32(i32 %i.wp, i32 %i.xj)
  %..i342.i.i = select i1 %i.xk, i32 %i.xj, i32 %i.xl
  store i32 %..i342.i.i, ptr %i.jp, align 8, !tbaa !710
  %i.xm = call fastcc { ptr, i64 } @_ZL20stbtt__cff_get_indexP10stbtt__buf(ptr noundef %2) ; 2 uses
  %i.xn = extractvalue { ptr, i64 } %i.xm, 0
  %i.xo = extractvalue { ptr, i64 } %i.xm, 1
  %i.xp = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store ptr %i.xn, ptr %i.xp, align 8, !tbaa !525
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i64 %i.xo, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.bu
  %.val.i343.i.i = load i8, ptr %i.ca, align 1, !tbaa !31
  %.val25.i344.i.i = load i8, ptr %i.cb, align 1, !tbaa !31
  %i.xq = zext i8 %.val.i343.i.i to i32
  %i.xr = shl nuw nsw i32 %i.xq, 8
  %i.xs = zext i8 %.val25.i344.i.i to i32
  %i.xt = or disjoint i32 %i.xr, %i.xs            ; 2 uses
  %.not.i345.i.i = icmp eq i32 %i.xt, 0
  br i1 %.not.i345.i.i, label %_ZL17stbtt__find_tablePhjPKc.exit354.thread.i.i, label %.lr.ph.i346.i.i

.lr.ph.i346.i.i:                                  ; preds = %bb.dr
  %i.xu = add nuw i32 %.1.i.i, 12
  %i.xv = zext i32 %i.xu to i64
  %wide.trip.count.i347.i.i = zext nneg i32 %i.xt to i64
  %invariant.gep.i348.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.xv
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dw, %.lr.ph.i346.i.i
  %indvars.iv.i349.i.i = phi i64 [ 0, %.lr.ph.i346.i.i ], [ %indvars.iv.next.i351.i.i, %bb.dw ] ; 2 uses
  %i.xw = shl nuw nsw i64 %indvars.iv.i349.i.i, 4
  %gep.i350.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i348.i.i, i64 %i.xw ; 5 uses
  %i.xx = load i8, ptr %gep.i350.i.i, align 1, !tbaa !31
  %i.xy = icmp eq i8 %i.xx, 109
  br i1 %i.xy, label %bb.dt, label %bb.dw

bb.dt:                                            ; preds = %bb.ds
  %i.xz = getelementptr inbounds nuw i8, ptr %gep.i350.i.i, i64 1
  %i.ya = load i8, ptr %i.xz, align 1, !tbaa !31
  %i.yb = icmp eq i8 %i.ya, 97
  br i1 %i.yb, label %bb.du, label %bb.dw

bb.du:                                            ; preds = %bb.dt
  %i.yc = getelementptr inbounds nuw i8, ptr %gep.i350.i.i, i64 2
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !31
  %i.ye = icmp eq i8 %i.yd, 120
  br i1 %i.ye, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.yf = getelementptr inbounds nuw i8, ptr %gep.i350.i.i, i64 3
  %i.yg = load i8, ptr %i.yf, align 1, !tbaa !31
  %i.yh = icmp eq i8 %i.yg, 112
  br i1 %i.yh, label %_ZL17stbtt__find_tablePhjPKc.exit354.i.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du, %bb.dt, %bb.ds
  %indvars.iv.next.i351.i.i = add nuw nsw i64 %indvars.iv.i349.i.i, 1 ; 2 uses
  %exitcond.not.i352.i.i = icmp eq i64 %indvars.iv.next.i351.i.i, %wide.trip.count.i347.i.i
  br i1 %exitcond.not.i352.i.i, label %_ZL17stbtt__find_tablePhjPKc.exit354.thread.i.i, label %bb.ds, !llvm.loop !701

_ZL17stbtt__find_tablePhjPKc.exit354.i.i:         ; preds = %bb.dv
  %i.yi = getelementptr inbounds nuw i8, ptr %gep.i350.i.i, i64 8
  %i.yj = load i32, ptr %i.yi, align 1            ; 2 uses
  %.not125.i.i = icmp eq i32 %i.yj, 0
  br i1 %.not125.i.i, label %_ZL17stbtt__find_tablePhjPKc.exit354.thread.i.i, label %bb.dx

bb.dx:                                            ; preds = %_ZL17stbtt__find_tablePhjPKc.exit354.i.i
  %i.yk = tail call i32 @llvm.bswap.i32(i32 %i.yj)
  %i.yl = zext i32 %i.yk to i64
  %i.ym = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.yl ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 4
  %.val134.i.i = load i8, ptr %i.yn, align 1, !tbaa !31
  %i.yo = getelementptr i8, ptr %i.ym, i64 5
  %.val135.i.i = load i8, ptr %i.yo, align 1, !tbaa !31
  %i.yp = zext i8 %.val134.i.i to i32
  %i.yq = shl nuw nsw i32 %i.yp, 8
  %i.yr = zext i8 %.val135.i.i to i32
  %i.ys = or disjoint i32 %i.yq, %i.yr
  br label %_ZL17stbtt__find_tablePhjPKc.exit354.thread.i.i

_ZL17stbtt__find_tablePhjPKc.exit354.thread.i.i:  ; preds = %bb.dw, %bb.dx, %_ZL17stbtt__find_tablePhjPKc.exit354.i.i, %bb.dr
  %.sink.i.i = phi i32 [ %i.ys, %bb.dx ], [ 65535, %_ZL17stbtt__find_tablePhjPKc.exit354.i.i ], [ 65535, %bb.dr ], [ 65535, %bb.dw ]
  %i.yt = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i32 %.sink.i.i, ptr %i.yt, align 4, !tbaa !714
  %i.yu = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  store i32 -1, ptr %i.yu, align 4, !tbaa !715
  %i.yv = zext i32 %.2.i356.i.i to i64
  %i.yw = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.yv ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 2
  %.val132.i.i = load i8, ptr %i.yx, align 1, !tbaa !31
  %i.yy = getelementptr i8, ptr %i.yw, i64 3
  %.val133.i.i = load i8, ptr %i.yy, align 1, !tbaa !31
  %i.yz = zext i8 %.val132.i.i to i32
  %i.za = shl nuw nsw i32 %i.yz, 8
  %i.zb = zext i8 %.val133.i.i to i32
  %i.zc = or disjoint i32 %i.za, %i.zb            ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  store i32 0, ptr %i.zd, align 8, !tbaa !716
  %.not410.i.i = icmp eq i32 %i.zc, 0
  br i1 %.not410.i.i, label %.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZL17stbtt__find_tablePhjPKc.exit354.thread.i.i
  %i.ze = add i32 %.2.i356.i.i, 4
  %wide.trip.count.i.i = zext nneg i32 %i.zc to i64
  br label %bb.dy

bb.dy:                                            ; preds = %bb.ea, %.lr.ph.i.i
  %i.zf = phi i32 [ 0, %.lr.ph.i.i ], [ %i.zz, %bb.ea ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.ea ] ; 2 uses
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.zg = shl i32 %indvars.iv.tr.i.i, 3
  %i.zh = add i32 %i.ze, %i.zg
  %i.zi = zext i32 %i.zh to i64
  %i.zj = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.zi ; 5 uses
  %.val130.i.i = load i8, ptr %i.zj, align 1, !tbaa !31
  %i.zk = getelementptr i8, ptr %i.zj, i64 1
  %.val131.i.i = load i8, ptr %i.zk, align 1, !tbaa !31
  %i.zl = zext i8 %.val130.i.i to i16
  %i.zm = shl nuw i16 %i.zl, 8
  %i.zn = zext i8 %.val131.i.i to i16
  %i.zo = or disjoint i16 %i.zm, %i.zn
  switch i16 %i.zo, label %bb.ea [
    i16 3, label %bb.dz
    i16 0, label %.sink.split.i.i
  ]

bb.dz:                                            ; preds = %bb.dy
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zj, i64 2
  %.val128.i.i = load i8, ptr %i.zp, align 1, !tbaa !31
  %i.zq = getelementptr i8, ptr %i.zj, i64 3
  %.val129.i.i = load i8, ptr %i.zq, align 1, !tbaa !31
  %i.zr = zext i8 %.val128.i.i to i16
  %i.zs = shl nuw i16 %i.zr, 8
  %i.zt = zext i8 %.val129.i.i to i16
  %i.zu = or disjoint i16 %i.zs, %i.zt
  switch i16 %i.zu, label %bb.ea [
    i16 1, label %.sink.split.i.i
    i16 10, label %.sink.split.i.i
  ]

.sink.split.i.i:                                  ; preds = %bb.dz, %bb.dz, %bb.dy
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zj, i64 4
  %i.zw = load i32, ptr %i.zv, align 1
  %i.zx = tail call i32 @llvm.bswap.i32(i32 %i.zw)
  %i.zy = add i32 %i.zx, %.2.i356.i.i             ; 2 uses
  store i32 %i.zy, ptr %i.zd, align 8, !tbaa !716
  br label %bb.ea

bb.ea:                                            ; preds = %.sink.split.i.i, %bb.dz, %bb.dy
  %i.zz = phi i32 [ %i.zf, %bb.dz ], [ %i.zf, %bb.dy ], [ %i.zy, %.sink.split.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.dy, !llvm.loop !717

._crit_edge.i.i:                                  ; preds = %bb.ea
  %i.aaa = icmp eq i32 %i.zz, 0
  br i1 %i.aaa, label %bb.eb, label %bb.ec

.critedge.i.i:                                    ; preds = %bb.ca, %bb.dp, %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit338.i.i, %_ZL17stbtt__find_tablePhjPKc.exit231.i.i, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  br label %bb.eb

bb.eb:                                            ; preds = %.critedge.i.i, %._crit_edge.i.i
  %.not.i31 = icmp eq ptr %i.e, null
  br i1 %.not.i31, label %_Z9IM_DELETEI33ImGui_ImplStbTrueType_FontSrcDataEvPT_.exit32, label %.thread

.thread:                                          ; preds = %_ZL17stbtt__find_tablePhjPKc.exit354.thread.i.i, %_ZL17stbtt__find_tablePhjPKc.exit219.i.i, %bb.bu, %bb.eb
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.e)
  br label %_Z9IM_DELETEI33ImGui_ImplStbTrueType_FontSrcDataEvPT_.exit32

_Z9IM_DELETEI33ImGui_ImplStbTrueType_FontSrcDataEvPT_.exit32: ; preds = %bb.eb, %.thread
  %i.aab = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.34) ; 0 uses
  br label %bb.ej

bb.ec:                                            ; preds = %._crit_edge.i.i
  %i.aac = sext i32 %i.ei to i64
  %i.aad = getelementptr inbounds i8, ptr %i.g, i64 %i.aac ; 2 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 50
  %.val.i.i = load i8, ptr %i.aae, align 1, !tbaa !31
  %i.aaf = getelementptr i8, ptr %i.aad, i64 51
  %.val127.i.i = load i8, ptr %i.aaf, align 1, !tbaa !31
  %i.aag = zext i8 %.val.i.i to i32
  %i.aah = shl nuw nsw i32 %i.aag, 8
  %i.aai = zext i8 %.val127.i.i to i32
  %i.aaj = or disjoint i32 %i.aah, %i.aai
  %i.aak = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  store i32 %i.aaj, ptr %i.aak, align 4, !tbaa !718
  %i.aal = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %i.e, ptr %i.aal, align 8, !tbaa !719
  %i.aam = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !533
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 40
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !418
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !443
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 60
  %i.aas = load float, ptr %i.aar, align 4, !tbaa !529 ; 3 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %1, i64 53
  %i.aau = load i8, ptr %i.aat, align 1, !tbaa !454, !range !403, !noundef !404
  %i.aav = trunc nuw i8 %i.aau to i1              ; 2 uses
  br i1 %i.aav, label %bb.ed, label %bb.ef

bb.ed:                                            ; preds = %bb.ec
  %i.aaw = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.aax = load float, ptr %i.aaw, align 4, !tbaa !529
  %i.aay = fcmp oeq float %i.aax, 0.000000e+00
  br i1 %i.aay, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  store float %i.aas, ptr %i.aaw, align 4, !tbaa !529
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed, %bb.ec
  %i.aaz = sext i32 %.val29 to i64
  %i.aba = getelementptr inbounds i8, ptr %i.g, i64 %i.aaz ; 4 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 4
  %.val6.i = load i8, ptr %i.abb, align 1, !tbaa !31
  %i.abc = getelementptr i8, ptr %i.aba, i64 5
  %.val7.i = load i8, ptr %i.abc, align 1, !tbaa !31
  %i.abd = zext i8 %.val6.i to i16
  %i.abe = shl nuw i16 %i.abd, 8
  %i.abf = zext i8 %.val7.i to i16
  %i.abg = or disjoint i16 %i.abe, %i.abf
  %i.abh = sext i16 %i.abg to i32
  %i.abi = getelementptr inbounds nuw i8, ptr %i.aba, i64 6
  %.val.i = load i8, ptr %i.abi, align 1, !tbaa !31
  %i.abj = getelementptr i8, ptr %i.aba, i64 7
  %.val5.i = load i8, ptr %i.abj, align 1, !tbaa !31
  %i.abk = zext i8 %.val.i to i16
  %i.abl = shl nuw i16 %i.abk, 8
  %i.abm = zext i8 %.val5.i to i16
  %i.abn = or disjoint i16 %i.abl, %i.abm
  %i.abo = sext i16 %i.abn to i32
  %i.abp = sub nsw i32 %i.abh, %i.abo
  %i.abq = sitofp i32 %i.abp to float
  %i.abr = fdiv float 1.000000e+00, %i.abq        ; 3 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  br i1 %i.aav, label %bb.eg, label %bb.ei

bb.eg:                                            ; preds = %bb.ef
  %i.abt = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.abu = load float, ptr %i.abt, align 4, !tbaa !529 ; 2 uses
  %i.abv = fcmp une float %i.abu, 0.000000e+00
  %i.abw = fcmp une float %i.aas, 0.000000e+00
  %or.cond = select i1 %i.abv, i1 %i.abw, i1 false
  br i1 %or.cond, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.abx = fdiv float %i.abu, %i.aas
  %i.aby = fmul float %i.abr, %i.abx
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg, %bb.ef
  %i.abz = phi float [ %i.aby, %bb.eh ], [ %i.abr, %bb.eg ], [ %i.abr, %bb.ef ]
  %i.aca = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.acb = load float, ptr %i.aca, align 4, !tbaa !349
  %i.acc = fmul float %i.acb, %i.abz
  store float %i.acc, ptr %i.abs, align 8, !tbaa !720
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %_Z9IM_DELETEI33ImGui_ImplStbTrueType_FontSrcDataEvPT_.exit32, %_Z9IM_DELETEI33ImGui_ImplStbTrueType_FontSrcDataEvPT_.exit
  %.0 = phi i1 [ false, %_Z9IM_DELETEI33ImGui_ImplStbTrueType_FontSrcDataEvPT_.exit ], [ true, %bb.ei ], [ false, %_Z9IM_DELETEI33ImGui_ImplStbTrueType_FontSrcDataEvPT_.exit32 ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL36ImGui_ImplStbTrueType_FontSrcDestroyP11ImFontAtlasP12ImFontConfig(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1) #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !719  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_Z9IM_DELETEI33ImGui_ImplStbTrueType_FontSrcDataEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.b)
  br label %_Z9IM_DELETEI33ImGui_ImplStbTrueType_FontSrcDataEvPT_.exit

_Z9IM_DELETEI33ImGui_ImplStbTrueType_FontSrcDataEvPT_.exit: ; preds = %bb.a, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !719
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZL42ImGui_ImplStbTrueType_FontSrcContainsGlyphP11ImFontAtlasP12ImFontConfigt(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i16 noundef zeroext %2) #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !719  ; 2 uses
  %i.c = zext i16 %2 to i32
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %.val = load ptr, ptr %i.d, align 8, !tbaa !697
  %i.e = getelementptr i8, ptr %i.b, i64 56
  %.val3 = load i32, ptr %i.e, align 8, !tbaa !716
  %i.f = tail call fastcc noundef i32 @_ZL20stbtt_FindGlyphIndexPK14stbtt_fontinfoi(ptr %.val, i32 %.val3, i32 noundef %i.c)
  %i.g = icmp ne i32 %i.f, 0
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZL35ImGui_ImplStbTrueType_FontBakedInitP11ImFontAtlasP12ImFontConfigP11ImFontBakedPv(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree readnone captures(none) %3) #30 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 53
  %i.b = load i8, ptr %i.a, align 1, !tbaa !454, !range !403, !noundef !404
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144
end_hunk_2
