Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1479
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 354
begin_hunk_0_@_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %5, 512
  %.not446 = icmp eq i32 %i.c, 0                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.f = load i64, ptr %i.e, align 8              ; 11 uses
  %i.g = add nsw i32 %2, -1                       ; 4 uses
  %i.h = select i1 %.not446, i32 %i.g, i32 %2     ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.j = load float, ptr %i.i, align 8, !tbaa !88 ; 8 uses
  %i.k = fcmp ogt float %4, %i.j                  ; 5 uses
  %i.l = and i32 %5, -2147483633
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str) ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i32, ptr %i.o, align 8, !tbaa !74   ; 2 uses
  %i.q = and i32 %i.p, 1
  %.not447 = icmp eq i32 %i.q, 0
  br i1 %.not447, label %.lr.ph561, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = and i32 %3, 16777215                     ; 4 uses
  %i.s = fcmp oge float %4, 1.000000e+00
  %i.t = select i1 %i.s, float %4, float 1.000000e+00 ; 6 uses
  %i.u = fptosi float %i.t to i32                 ; 3 uses
  %i.v = sitofp i32 %i.u to float
  %i.w = fsub float %i.t, %i.v
  %i.x = and i32 %i.p, 2
  %i.y = icmp eq i32 %i.x, 0
  %i.z = icmp sgt i32 %i.u, 31
  %or.cond.not456 = select i1 %i.y, i1 true, i1 %i.z
  %i.aa = fcmp ugt float %i.w, f0x3727C5AC
  %or.cond3.not453 = select i1 %or.cond.not456, i1 true, i1 %i.aa
  %i.ab = fcmp une float %i.j, 1.000000e+00
  %.not451 = select i1 %or.cond3.not453, i1 true, i1 %i.ab ; 8 uses
  %.v = select i1 %i.k, i32 18, i32 12
  %.v533 = select i1 %.not451, i32 %.v, i32 6
  %i.ac = mul nsw i32 %.v533, %i.h
  br i1 %.not451, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = shl nuw nsw i32 %2, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ae = shl nsw i32 %2, 2
  %i.af = mul nuw nsw i32 %2, 3
  %i.ag = select i1 %i.k, i32 %i.ae, i32 %i.af
  %i.ah = select i1 %i.k, i32 5, i32 3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not449 = phi i32 [ 3, %bb.f ], [ %i.ah, %bb.g ]
  %i.ai = phi i32 [ %i.ad, %bb.f ], [ %i.ag, %bb.g ] ; 2 uses
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %i.ac, i32 noundef %i.ai)
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !35  ; 3 uses
  %i.ak = mul nuw nsw i32 %.not449, %2            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 76 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !82
  %.not.i = icmp sgt i32 %i.ak, %i.am
  br i1 %.not.i, label %bb.i, label %.lr.ph.preheader

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 80 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !28 ; 2 uses
  %.not4.i = icmp eq ptr %i.ao, null
  br i1 %.not4.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.ao)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ap = zext nneg i32 %i.ak to i64
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %i.ar = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.aq)
  store ptr %i.ar, ptr %i.an, align 8, !tbaa !28
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !82
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !35
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.k, %bb.h
  %i.as = phi ptr [ %i.aj, %bb.h ], [ %.pre, %bb.k ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !244 ; 11 uses
  %i.av = zext nneg i32 %2 to i64                 ; 7 uses
  %i.aw = getelementptr [8 x i8], ptr %i.au, i64 %i.av ; 15 uses
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.m
  br i1 %.not446, label %bb.n, label %.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ax = icmp eq i64 %indvars.iv.next, %i.av
  %i.ay = select i1 %i.ax, i64 0, i64 %indvars.iv.next
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ay
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.bb = load <2 x float>, ptr %i.az, align 4, !tbaa !8
  %i.bc = load <2 x float>, ptr %i.ba, align 4, !tbaa !8
  %i.bd = fsub <2 x float> %i.bb, %i.bc           ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.bd, %i.bd
  %i.be = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bf = extractelement <2 x float> %i.bd, i64 0 ; 2 uses
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.bf, float %i.be) ; 2 uses
  %i.bh = fcmp ogt float %i.bg, 0.000000e+00
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %i.bi = insertelement <4 x float> poison, float %i.bg, i64 0
  %i.bj = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.bi)
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bl = fmul <2 x float> %i.bd, %i.bk
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph
  %i.bm = phi <2 x float> [ %i.bl, %bb.l ], [ %i.bd, %.lr.ph ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv ; 2 uses
  %i.bo = extractelement <2 x float> %i.bm, i64 1
  store float %i.bo, ptr %i.bn, align 4, !tbaa !234
  %i.bp = extractelement <2 x float> %i.bm, i64 0
  %i.bq = fneg float %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store float %i.bq, ptr %i.br, align 4, !tbaa !235
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !245

bb.n:                                             ; preds = %._crit_edge
  %i.bs = getelementptr i8, ptr %i.aw, i64 -16
  %i.bt = zext nneg i32 %i.g to i64               ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bt ; 7 uses
  %i.bv = load i64, ptr %i.bs, align 4
  store i64 %i.bv, ptr %i.bu, align 4
  %or.cond5 = select i1 %.not451, i1 %i.k, i1 false
  br i1 %or.cond5, label %bb.u, label %bb.o

.thread:                                          ; preds = %._crit_edge
  %or.cond5530 = select i1 %.not451, i1 %i.k, i1 false
  br i1 %or.cond5530, label %.thread532, label %.thread531

.thread532:                                       ; preds = %.thread
  %i.bw = fsub float %i.t, %i.j
  %i.bx = fmul float %i.bw, 5.000000e-01
  br label %.lr.ph556

.thread531:                                       ; preds = %.thread
  %i.by = tail call float @llvm.fmuladd.f32(float %i.t, float 5.000000e-01, float 1.000000e+00)
  %i.bz = select i1 %.not451, float %i.j, float %i.by
  br label %.lr.ph546

bb.o:                                             ; preds = %bb.n
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.t, float 5.000000e-01, float 1.000000e+00)
  %i.cb = select i1 %.not451, float %i.j, float %i.ca ; 2 uses
  %i.cc = load <2 x float>, ptr %i.au, align 4, !tbaa !8
  %i.cd = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.cf = fmul <2 x float> %i.ce, %i.cc
  %i.cg = load <2 x float>, ptr %1, align 4, !tbaa !8
  %i.ch = fadd <2 x float> %i.cf, %i.cg
  store <2 x float> %i.ch, ptr %i.aw, align 4
  %i.ci = load <2 x float>, ptr %i.au, align 4, !tbaa !8
  %i.cj = fmul <2 x float> %i.ce, %i.ci
  %i.ck = load <2 x float>, ptr %1, align 4, !tbaa !8
  %i.cl = fsub <2 x float> %i.ck, %i.cj
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store <2 x float> %i.cl, ptr %i.cm, align 4
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bt ; 2 uses
  %i.co = load <2 x float>, ptr %i.bu, align 4, !tbaa !8
  %i.cp = fmul <2 x float> %i.ce, %i.co
  %i.cq = load <2 x float>, ptr %i.cn, align 4, !tbaa !8
  %i.cr = fadd <2 x float> %i.cp, %i.cq
  %i.cs = shl nuw nsw i32 %i.g, 1
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ct ; 2 uses
  store <2 x float> %i.cr, ptr %i.cu, align 4
  %i.cv = load <2 x float>, ptr %i.bu, align 4, !tbaa !8
  %i.cw = fmul <2 x float> %i.ce, %i.cv
  %i.cx = load <2 x float>, ptr %i.cn, align 4, !tbaa !8
  %i.cy = fsub <2 x float> %i.cx, %i.cw
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store <2 x float> %i.cy, ptr %i.cz, align 4
  br label %.lr.ph546

.lr.ph546:                                        ; preds = %bb.o, %.thread531
  %i.da = phi float [ %i.bz, %.thread531 ], [ %i.cb, %bb.o ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !75 ; 2 uses
  %i.dd = select i1 %.not451, i32 3, i32 2
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %wide.trip.count568 = zext nneg i32 %i.h to i64 ; 2 uses
  %i.df = insertelement <2 x float> poison, float %i.da, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  %.promoted628 = load ptr, ptr %i.de, align 8, !tbaa !105
  br label %.backedge

.lr.ph552:                                        ; preds = %bb.r
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %.pre596 = load ptr, ptr %i.dh, align 8, !tbaa !239
  br label %bb.t

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph546
  %6 = phi ptr [ %.promoted628, %.lr.ph546 ], [ %7, %.backedge.backedge ] ; 13 uses
  %indvars.iv565 = phi i64 [ 0, %.lr.ph546 ], [ %indvars.iv.next566, %.backedge.backedge ] ; 2 uses
  %.0433543 = phi i32 [ %i.dc, %.lr.ph546 ], [ %i.dm, %.backedge.backedge ] ; 3 uses
  %indvars.iv.next566 = add nuw nsw i64 %indvars.iv565, 1 ; 5 uses
  %i.di = icmp eq i64 %indvars.iv.next566, %i.av  ; 2 uses
  %i.dj = trunc nuw nsw i64 %indvars.iv.next566 to i32
  %i.dk = select i1 %i.di, i32 0, i32 %i.dj       ; 2 uses
  %i.dl = add i32 %.0433543, %i.dd
  %i.dm = select i1 %i.di, i32 %i.dc, i32 %i.dl   ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv565
  %i.do = zext nneg i32 %i.dk to i64              ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.do
  %i.dq = load <2 x float>, ptr %i.dn, align 4, !tbaa !8
  %i.dr = load <2 x float>, ptr %i.dp, align 4, !tbaa !8
  %i.ds = fadd <2 x float> %i.dq, %i.dr
  %i.dt = fmul <2 x float> %i.ds, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop620 = fmul <2 x float> %i.dt, %i.dt
  %i.du = extractelement <2 x float> %foldExtExtBinop620, i64 1
  %i.dv = extractelement <2 x float> %i.dt, i64 0 ; 2 uses
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.dv, float %i.dv, float %i.du) ; 2 uses
  %i.dx = fcmp ogt float %i.dw, f0x358637BD
  br i1 %i.dx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.backedge
  %i.dy = fdiv float 1.000000e+00, %i.dw          ; 2 uses
  %i.dz = fcmp ogt float %i.dy, 1.000000e+02
  %.0429 = select i1 %i.dz, float 1.000000e+02, float %i.dy
  %i.ea = insertelement <2 x float> poison, float %.0429, i64 0
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ec = fmul <2 x float> %i.dt, %i.eb
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.backedge
  %i.ed = phi <2 x float> [ %i.ec, %bb.p ], [ %i.dt, %.backedge ]
  %i.ee = fmul <2 x float> %i.dg, %i.ed           ; 2 uses
  %i.ef = shl nuw nsw i32 %i.dk, 1
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.eg ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.do ; 2 uses
  %i.ej = load <2 x float>, ptr %i.ei, align 4, !tbaa !8
  %i.ek = fadd <2 x float> %i.ee, %i.ej
  store <2 x float> %i.ek, ptr %i.eh, align 4, !tbaa !8
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.em = load <2 x float>, ptr %i.ei, align 4, !tbaa !8
  %i.en = fsub <2 x float> %i.em, %i.ee
  store <2 x float> %i.en, ptr %i.el, align 4, !tbaa !8
  %i.eo = trunc i32 %i.dm to i16                  ; 4 uses
  store i16 %i.eo, ptr %6, align 2, !tbaa !240
  %i.ep = trunc i32 %.0433543 to i16              ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 %i.ep, ptr %i.eq, align 2, !tbaa !240
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br i1 %.not451, label %bb.r, label %.thread612

bb.r:                                             ; preds = %bb.q
  %i.et = trunc i32 %i.dm to i16
  %i.eu = insertelement <2 x i16> poison, i16 %i.et, i64 0
  %i.ev = trunc i32 %.0433543 to i16
  %i.ew = insertelement <2 x i16> %i.eu, i16 %i.ev, i64 1
  %i.ex = shufflevector <2 x i16> %i.ew, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ey = add i16 %i.ep, 2                        ; 2 uses
  store i16 %i.ey, ptr %i.er, align 2, !tbaa !240
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 6
  store i16 %i.ey, ptr %i.ez, align 2, !tbaa !240
  %i.fa = add <4 x i16> %i.ex, <i16 2, i16 0, i16 1, i16 1> ; 2 uses
  store <4 x i16> %i.fa, ptr %i.es, align 2, !tbaa !240
  %i.fb = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i16 %i.ep, ptr %i.fb, align 2, !tbaa !240
  %i.fc = getelementptr inbounds nuw i8, ptr %6, i64 18
  store i16 %i.ep, ptr %i.fc, align 2, !tbaa !240
  %i.fd = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i16 %i.eo, ptr %i.fd, align 2, !tbaa !240
  %i.fe = getelementptr inbounds nuw i8, ptr %6, i64 22
  %i.ff = extractelement <4 x i16> %i.fa, i64 2
  store i16 %i.ff, ptr %i.fe, align 2, !tbaa !240
  %i.fg = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr %i.fg, ptr %i.de, align 8, !tbaa !105
  %exitcond569.not = icmp eq i64 %indvars.iv.next566, %wide.trip.count568
  br i1 %exitcond569.not, label %.lr.ph552, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.r, %.thread612
  %7 = phi ptr [ %i.fg, %bb.r ], [ %i.fl, %.thread612 ]
  br label %.backedge, !llvm.loop !246

.thread612:                                       ; preds = %bb.q
  %i.fh = getelementptr inbounds nuw i8, ptr %6, i64 10
  %i.fi = add i16 %i.ep, 1                        ; 2 uses
  store i16 %i.fi, ptr %i.er, align 2, !tbaa !240
  %i.fj = add i16 %i.eo, 1
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 6
  store i16 %i.fj, ptr %i.fk, align 2, !tbaa !240
  store i16 %i.fi, ptr %i.es, align 2, !tbaa !240
  store i16 %i.eo, ptr %i.fh, align 2, !tbaa !240
  %i.fl = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store ptr %i.fl, ptr %i.de, align 8, !tbaa !105
  %exitcond569.not614 = icmp eq i64 %indvars.iv.next566, %wide.trip.count568
  br i1 %exitcond569.not614, label %.lr.ph550, label %.backedge.backedge

.lr.ph550:                                        ; preds = %.thread612
  %i.fm = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !247
  %i.fp = sext i32 %i.u to i64
  %i.fq = getelementptr inbounds [16 x i8], ptr %i.fo, i64 %i.fp ; 2 uses
  %i.fr = load <2 x i32>, ptr %i.fq, align 4, !tbaa !8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load <2 x i32>, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !8
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %.pre595 = load ptr, ptr %i.ft, align 8, !tbaa !239
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph550, %bb.s
  %i.fu = phi ptr [ %.pre595, %.lr.ph550 ], [ %i.gi, %bb.s ]
  %indvars.iv570 = phi i64 [ 0, %.lr.ph550 ], [ %indvars.iv.next571, %bb.s ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv570, 4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 4
  store i64 %i.fw, ptr %i.fu, align 4
  %i.fx = load ptr, ptr %i.ft, align 8, !tbaa !239
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store <2 x i32> %i.fr, ptr %i.fy, align 4
  %i.fz = load ptr, ptr %i.ft, align 8, !tbaa !239 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store i32 %3, ptr %i.ga, align 4, !tbaa !241
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 20
  %i.gd = load i64, ptr %i.gb, align 4
  store i64 %i.gd, ptr %i.gc, align 4
  %i.ge = load ptr, ptr %i.ft, align 8, !tbaa !239
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 28
  store <2 x i32> %i.fs, ptr %i.gf, align 4
  %i.gg = load ptr, ptr %i.ft, align 8, !tbaa !239 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 36
  store i32 %3, ptr %i.gh, align 4, !tbaa !241
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 40 ; 2 uses
  store ptr %i.gi, ptr %i.ft, align 8, !tbaa !239
  %indvars.iv.next571 = add nuw nsw i64 %indvars.iv570, 1 ; 2 uses
  %exitcond574.not = icmp eq i64 %indvars.iv.next571, %i.av
  br i1 %exitcond574.not, label %.loopexit538, label %bb.s, !llvm.loop !248

bb.t:                                             ; preds = %.lr.ph552, %bb.t
  %i.gj = phi ptr [ %.pre596, %.lr.ph552 ], [ %i.he, %bb.t ]
  %indvars.iv575 = phi i64 [ 0, %.lr.ph552 ], [ %indvars.iv.next576, %bb.t ] ; 3 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv575
  %i.gl = load i64, ptr %i.gk, align 4
  store i64 %i.gl, ptr %i.gj, align 4
  %i.gm = load ptr, ptr %i.dh, align 8, !tbaa !239
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  store i64 %i.f, ptr %i.gn, align 4
  %i.go = load ptr, ptr %i.dh, align 8, !tbaa !239 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  store i32 %3, ptr %i.gp, align 4, !tbaa !241
  %.idx610 = shl nuw nsw i64 %indvars.iv575, 4
  %i.gq = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx610 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 20
  %i.gs = load i64, ptr %i.gq, align 4
  store i64 %i.gs, ptr %i.gr, align 4
  %i.gt = load ptr, ptr %i.dh, align 8, !tbaa !239
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 28
  store i64 %i.f, ptr %i.gu, align 4
  %i.gv = load ptr, ptr %i.dh, align 8, !tbaa !239 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 36
  store i32 %i.r, ptr %i.gw, align 4, !tbaa !241
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 40
  %i.gz = load i64, ptr %i.gx, align 4
  store i64 %i.gz, ptr %i.gy, align 4
  %i.ha = load ptr, ptr %i.dh, align 8, !tbaa !239
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 48
  store i64 %i.f, ptr %i.hb, align 4
  %i.hc = load ptr, ptr %i.dh, align 8, !tbaa !239 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 56
  store i32 %i.r, ptr %i.hd, align 4, !tbaa !241
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 60 ; 2 uses
  store ptr %i.he, ptr %i.dh, align 8, !tbaa !239
  %indvars.iv.next576 = add nuw nsw i64 %indvars.iv575, 1 ; 2 uses
  %exitcond579.not = icmp eq i64 %indvars.iv.next576, %i.av
  br i1 %exitcond579.not, label %.loopexit538, label %bb.t, !llvm.loop !249

bb.u:                                             ; preds = %bb.n
  %i.hf = fsub float %i.t, %i.j
  %i.hg = fmul float %i.hf, 5.000000e-01          ; 3 uses
  %i.hh = fadd float %i.j, %i.hg
  %i.hi = load <2 x float>, ptr %i.au, align 4, !tbaa !8
  %i.hj = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.hk = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.hl = fmul <2 x float> %i.hk, %i.hi
  %i.hm = load <2 x float>, ptr %1, align 4, !tbaa !8
  %i.hn = fadd <2 x float> %i.hl, %i.hm
  store <2 x float> %i.hn, ptr %i.aw, align 4
  %i.ho = load <2 x float>, ptr %i.au, align 4, !tbaa !8 ; 2 uses
  %i.hp = insertelement <2 x float> poison, float %i.hg, i64 0
  %i.hq = shufflevector <2 x float> %i.hp, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.hr = fmul <2 x float> %i.hq, %i.ho           ; 2 uses
  %i.hs = load <2 x float>, ptr %1, align 4, !tbaa !8
  %i.ht = fadd <2 x float> %i.hr, %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store <2 x float> %i.ht, ptr %i.hu, align 4
  %i.hv = load <2 x float>, ptr %1, align 4, !tbaa !8
  %i.hw = fsub <2 x float> %i.hv, %i.hr
  %i.hx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <2 x float> %i.hw, ptr %i.hx, align 4
  %i.hy = fmul <2 x float> %i.hk, %i.ho
  %i.hz = load <2 x float>, ptr %1, align 4, !tbaa !8
  %i.ia = fsub <2 x float> %i.hz, %i.hy
  %i.ib = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store <2 x float> %i.ia, ptr %i.ib, align 4
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bt ; 4 uses
  %i.id = load <2 x float>, ptr %i.bu, align 4, !tbaa !8
  %i.ie = fmul <2 x float> %i.hk, %i.id
  %i.if = load <2 x float>, ptr %i.ic, align 4, !tbaa !8
  %i.ig = fadd <2 x float> %i.ie, %i.if
  %i.ih = shl nsw i32 %i.g, 2                     ; 2 uses
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ii
  store <2 x float> %i.ig, ptr %i.ij, align 4
  %i.ik = load <2 x float>, ptr %i.bu, align 4, !tbaa !8
  %i.il = fmul <2 x float> %i.hq, %i.ik
  %i.im = load <2 x float>, ptr %i.ic, align 4, !tbaa !8
  %i.in = fadd <2 x float> %i.il, %i.im
  %i.io = zext nneg i32 %i.ih to i64
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.io ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  store <2 x float> %i.in, ptr %i.iq, align 4
  %i.ir = load <2 x float>, ptr %i.bu, align 4, !tbaa !8
  %i.is = fmul <2 x float> %i.hq, %i.ir
  %i.it = load <2 x float>, ptr %i.ic, align 4, !tbaa !8
  %i.iu = fsub <2 x float> %i.it, %i.is
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  store <2 x float> %i.iu, ptr %i.iv, align 4
  %i.iw = load <2 x float>, ptr %i.bu, align 4, !tbaa !8
  %i.ix = fmul <2 x float> %i.hk, %i.iw
  %i.iy = load <2 x float>, ptr %i.ic, align 4, !tbaa !8
  %i.iz = fsub <2 x float> %i.iy, %i.ix
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ip, i64 24
  store <2 x float> %i.iz, ptr %i.ja, align 4
  br label %.lr.ph556

.lr.ph556:                                        ; preds = %bb.u, %.thread532
  %i.jb = phi float [ %i.bx, %.thread532 ], [ %i.hg, %bb.u ] ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !75 ; 2 uses
  %i.je = fadd float %i.j, %i.jb
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted = load ptr, ptr %i.jf, align 8, !tbaa !105
  %wide.trip.count583 = zext nneg i32 %i.h to i64
  %i.jg = insertelement <2 x float> poison, float %i.je, i64 0
  %i.jh = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ji = insertelement <2 x float> poison, float %i.jb, i64 0
  %i.jj = shufflevector <2 x float> %i.ji, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.v

.lr.ph558:                                        ; preds = %bb.x
  store ptr %i.lv, ptr %i.jf, align 8, !tbaa !105
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %.pre597 = load ptr, ptr %i.jk, align 8, !tbaa !239
  br label %bb.y

bb.v:                                             ; preds = %.lr.ph556, %bb.x
  %indvars.iv580 = phi i64 [ 0, %.lr.ph556 ], [ %indvars.iv.next581, %bb.x ] ; 2 uses
  %i.jl = phi ptr [ %.promoted, %.lr.ph556 ], [ %i.lv, %bb.x ] ; 9 uses
  %.0425553 = phi i32 [ %i.jd, %.lr.ph556 ], [ %spec.select, %bb.x ] ; 3 uses
  %indvars.iv.next581 = add nuw nsw i64 %indvars.iv580, 1 ; 4 uses
  %i.jm = icmp eq i64 %indvars.iv.next581, %i.av  ; 2 uses
  %i.jn = trunc nuw nsw i64 %indvars.iv.next581 to i32
  %i.jo = select i1 %i.jm, i32 0, i32 %i.jn       ; 2 uses
  %i.jp = add i32 %.0425553, 4
  %spec.select = select i1 %i.jm, i32 %i.jd, i32 %i.jp ; 3 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv580
  %i.jr = zext nneg i32 %i.jo to i64              ; 2 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.jr
  %i.jt = load <2 x float>, ptr %i.jq, align 4, !tbaa !8
  %i.ju = load <2 x float>, ptr %i.js, align 4, !tbaa !8
  %i.jv = fadd <2 x float> %i.jt, %i.ju
  %i.jw = fmul <2 x float> %i.jv, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop622 = fmul <2 x float> %i.jw, %i.jw
  %i.jx = extractelement <2 x float> %foldExtExtBinop622, i64 1
  %i.jy = extractelement <2 x float> %i.jw, i64 0 ; 2 uses
  %i.jz = tail call float @llvm.fmuladd.f32(float %i.jy, float %i.jy, float %i.jx) ; 2 uses
  %i.ka = fcmp ogt float %i.jz, f0x358637BD
  br i1 %i.ka, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.kb = fdiv float 1.000000e+00, %i.jz          ; 2 uses
  %i.kc = fcmp ogt float %i.kb, 1.000000e+02
  %.0421 = select i1 %i.kc, float 1.000000e+02, float %i.kb
  %i.kd = insertelement <2 x float> poison, float %.0421, i64 0
  %i.ke = shufflevector <2 x float> %i.kd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kf = fmul <2 x float> %i.jw, %i.ke
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.kg = phi <2 x float> [ %i.kf, %bb.w ], [ %i.jw, %bb.v ] ; 2 uses
  %i.kh = fmul <2 x float> %i.jh, %i.kg           ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN10ImDrawList15AddImageRoundedE12ImTextureRefRK6ImVec2S3_S3_S3_jfi:bb.a
  %i.dv = icmp ult ptr %i.du, %i.cs
  br i1 %i.dv, label %_Z7ImClampRK6ImVec2S1_S1_.exit.i31, label %_ZN5ImGui18ShadeVertsLinearUVEP10ImDrawListiiRK6ImVec2S4_S4_S4_b.exit37, !llvm.loop !294

_ZN5ImGui18ShadeVertsLinearUVEP10ImDrawListiiRK6ImVec2S4_S4_S4_b.exit37: ; preds = %_Z7ImClampRK6ImVec2S1_S1_.exit.i31, %.critedge, %_ZN10ImDrawList10PopTextureEv.exit, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui18ShadeVertsLinearUVEP10ImDrawListiiRK6ImVec2S4_S4_S4_b(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %6, i1 noundef zeroext %7) local_unnamed_addr #19 {
bb.a:
  %i.a = load <2 x float>, ptr %4, align 4, !tbaa !8
  %i.b = load <2 x float>, ptr %3, align 4, !tbaa !8
  %i.c = fsub <2 x float> %i.a, %i.b              ; 2 uses
  %i.d = load <2 x float>, ptr %6, align 4, !tbaa !8 ; 5 uses
  %i.e = load <2 x float>, ptr %5, align 4, !tbaa !8 ; 5 uses
  %i.f = fsub <2 x float> %i.d, %i.e
  %i.g = fcmp une <2 x float> %i.c, zeroinitializer
  %i.h = fdiv <2 x float> %i.f, %i.c
  %i.i = select <2 x i1> %i.g, <2 x float> %i.h, <2 x float> zeroinitializer ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !238  ; 2 uses
  %i.l = sext i32 %1 to i64
  %i.m = getelementptr inbounds [20 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = sext i32 %2 to i64
  %i.o = getelementptr inbounds [20 x i8], ptr %i.k, i64 %i.n ; 2 uses
  br i1 %7, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.p = icmp slt i32 %1, %2
  br i1 %i.p, label %.lr.ph, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.q = fcmp olt <2 x float> %i.e, %i.d
  %i.r = select <2 x i1> %i.q, <2 x float> %i.e, <2 x float> %i.d ; 2 uses
  %i.s = fcmp oge <2 x float> %i.e, %i.d
  %i.t = select <2 x i1> %i.s, <2 x float> %i.e, <2 x float> %i.d ; 2 uses
  %i.u = icmp slt i32 %1, %2
  br i1 %i.u, label %_Z7ImClampRK6ImVec2S1_S1_.exit, label %.loopexit

_Z7ImClampRK6ImVec2S1_S1_.exit:                   ; preds = %bb.b, %_Z7ImClampRK6ImVec2S1_S1_.exit
  %.03774 = phi ptr [ %i.ag, %_Z7ImClampRK6ImVec2S1_S1_.exit ], [ %i.m, %bb.b ] ; 3 uses
  %i.v = load <2 x float>, ptr %.03774, align 4, !tbaa !8
  %i.w = load <2 x float>, ptr %3, align 4, !tbaa !8
  %i.x = fsub <2 x float> %i.v, %i.w
  %i.y = fmul <2 x float> %i.i, %i.x
  %i.z = load <2 x float>, ptr %5, align 4, !tbaa !8
  %i.aa = fadd <2 x float> %i.z, %i.y             ; 3 uses
  %i.ab = fcmp olt <2 x float> %i.aa, %i.r
  %i.ac = fcmp ogt <2 x float> %i.aa, %i.t
  %i.ad = select <2 x i1> %i.ac, <2 x float> %i.t, <2 x float> %i.aa
  %i.ae = select <2 x i1> %i.ab, <2 x float> %i.r, <2 x float> %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %.03774, i64 8
  store <2 x float> %i.ae, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.03774, i64 20 ; 2 uses
  %i.ah = icmp ult ptr %i.ag, %i.o
  br i1 %i.ah, label %_Z7ImClampRK6ImVec2S1_S1_.exit, label %.loopexit, !llvm.loop !294

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.073 = phi ptr [ %i.ap, %.lr.ph ], [ %i.m, %.preheader ] ; 3 uses
  %i.ai = load <2 x float>, ptr %.073, align 4, !tbaa !8
  %i.aj = load <2 x float>, ptr %3, align 4, !tbaa !8
  %i.ak = fsub <2 x float> %i.ai, %i.aj
  %i.al = fmul <2 x float> %i.i, %i.ak
  %i.am = load <2 x float>, ptr %5, align 4, !tbaa !8
  %i.an = fadd <2 x float> %i.am, %i.al
  %i.ao = getelementptr inbounds nuw i8, ptr %.073, i64 8
  store <2 x float> %i.an, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %.073, i64 20 ; 2 uses
  %i.aq = icmp ult ptr %i.ap, %i.o
  br i1 %i.aq, label %.lr.ph, label %.loopexit, !llvm.loop !295

.loopexit:                                        ; preds = %.lr.ph, %_Z7ImClampRK6ImVec2S1_S1_.exit, %.preheader, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN14ImTriangulator4InitEPK6ImVec2iPv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) initializes((0, 4), (8, 24), (32, 40)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = tail call i32 @llvm.smax.i32(i32 %2, i32 2)
  %i.b = add nsw i32 %i.a, -2                     ; 2 uses
  store i32 %i.b, ptr %0, align 8, !tbaa !296
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store ptr %3, ptr %i.c, align 8, !tbaa !301
  %i.d = sext i32 %2 to i64                       ; 4 uses
  %i.e = getelementptr inbounds [32 x i8], ptr %3, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !302
  %i.g = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !303
  %i.i = icmp sgt i32 %2, 0
  br i1 %i.i, label %.lr.ph.i, label %_ZN14ImTriangulator10BuildNodesEPK6ImVec2i.exit.thread

_ZN14ImTriangulator10BuildNodesEPK6ImVec2i.exit.thread: ; preds = %bb.a
  %i.j = getelementptr [32 x i8], ptr %3, i64 %i.d ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -32
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.k, ptr %i.l, align 8, !tbaa !304
  %i.m = getelementptr i8, ptr %i.j, i64 -16
  store ptr %3, ptr %i.m, align 8, !tbaa !307
  br label %.lr.ph.i7

.lr.ph.i:                                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %2 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.n = icmp eq i32 %2, 1
  br i1 %i.n, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %i.o = phi ptr [ %3, %.lr.ph.i.new ], [ %i.ah, %bb.b ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %indvars.iv.i ; 3 uses
  store i32 0, ptr %i.p, align 8, !tbaa !308
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.r, ptr %i.q, align 4, !tbaa !309
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = load i64, ptr %i.s, align 4
  store i64 %i.u, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !301  ; 2 uses
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %indvars.iv.i ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.x, ptr %i.y, align 8, !tbaa !307
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 -32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !304
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 4 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %indvars.iv.next.i ; 3 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !308
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = trunc nuw nsw i64 %indvars.iv.next.i to i32
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !309
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ag = load i64, ptr %i.ae, align 4
  store i64 %i.ag, ptr %i.af, align 8
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !301 ; 4 uses
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %indvars.iv.next.i ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !307
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 -32
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.al, ptr %i.am, align 8, !tbaa !304
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN14ImTriangulator10BuildNodesEPK6ImVec2i.exit.unr-lcssa, label %bb.b, !llvm.loop !310

_ZN14ImTriangulator10BuildNodesEPK6ImVec2i.exit.unr-lcssa: ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN14ImTriangulator10BuildNodesEPK6ImVec2i.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN14ImTriangulator10BuildNodesEPK6ImVec2i.exit.unr-lcssa, %.lr.ph.i
  %.epil.init = phi ptr [ %3, %.lr.ph.i ], [ %i.ah, %_ZN14ImTriangulator10BuildNodesEPK6ImVec2i.exit.unr-lcssa ]
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %_ZN14ImTriangulator10BuildNodesEPK6ImVec2i.exit.unr-lcssa ] ; 4 uses
  %lcmp.mod12 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %.epil.init, i64 %indvars.iv.i.epil.init ; 3 uses
  store i32 0, ptr %i.an, align 8, !tbaa !308
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = trunc nuw nsw i64 %indvars.iv.i.epil.init to i32
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !309
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i.epil.init
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.as = load i64, ptr %i.aq, align 4
  store i64 %i.as, ptr %i.ar, align 8
  %i.at = load ptr, ptr %i.c, align 8, !tbaa !301 ; 2 uses
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.at, i64 %indvars.iv.i.epil.init ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !307
  %i.ax = getelementptr inbounds i8, ptr %i.au, i64 -32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !304
  br label %_ZN14ImTriangulator10BuildNodesEPK6ImVec2i.exit

_ZN14ImTriangulator10BuildNodesEPK6ImVec2i.exit:  ; preds = %_ZN14ImTriangulator10BuildNodesEPK6ImVec2i.exit.unr-lcssa, %.epil.preheader
  %.lcssa = phi ptr [ %i.ah, %_ZN14ImTriangulator10BuildNodesEPK6ImVec2i.exit.unr-lcssa ], [ %i.at, %.epil.preheader ] ; 3 uses
  %.pre = load i32, ptr %0, align 8, !tbaa !296   ; 2 uses
  %i.az = getelementptr [32 x i8], ptr %.lcssa, i64 %i.d ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -32
  %i.bb = getelementptr inbounds nuw i8, ptr %.lcssa, i64 24
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !304
  %i.bc = getelementptr i8, ptr %i.az, i64 -16
  store ptr %.lcssa, ptr %i.bc, align 8, !tbaa !307
  %i.bd = icmp sgt i32 %.pre, -1
  br i1 %i.bd, label %.lr.ph.i7, label %_ZN14ImTriangulator9BuildEarsEv.exit

.lr.ph.i7:                                        ; preds = %_ZN14ImTriangulator10BuildNodesEPK6ImVec2i.exit.thread, %_ZN14ImTriangulator10BuildNodesEPK6ImVec2i.exit
  %i.be = phi i32 [ %i.b, %_ZN14ImTriangulator10BuildNodesEPK6ImVec2i.exit.thread ], [ %.pre, %_ZN14ImTriangulator10BuildNodesEPK6ImVec2i.exit ] ; 2 uses
  %i.bf = load ptr, ptr %i.h, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.promoted.i = load i32, ptr %i.bg, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i7
  %4 = phi i32 [ %.promoted.i, %.lr.ph.i7 ], [ %5, %bb.e ] ; 3 uses
  %.0811.in.i = phi ptr [ %i.c, %.lr.ph.i7 ], [ %i.bl, %bb.e ]
  %.010.i = phi i32 [ %i.be, %.lr.ph.i7 ], [ %i.ci, %bb.e ] ; 2 uses
  %.0811.i = load ptr, ptr %.0811.in.i, align 8, !tbaa !311 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0811.i, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !304 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.0811.i, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.0811.i, i64 16 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !307 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load float, ptr %i.bk, align 8, !tbaa !234 ; 2 uses
  %i.bp = load float, ptr %i.bj, align 4, !tbaa !234
  %i.bq = fsub float %i.bo, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bs = load float, ptr %i.br, align 4, !tbaa !235
  %i.bt = getelementptr inbounds nuw i8, ptr %.0811.i, i64 12
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !235 ; 2 uses
  %i.bv = fsub float %i.bs, %i.bu
  %i.bw = load float, ptr %i.bn, align 4, !tbaa !234
  %i.bx = fsub float %i.bw, %i.bo
  %i.by = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.bz = load float, ptr %i.by, align 4, !tbaa !235
  %i.ca = fsub float %i.bu, %i.bz
  %i.cb = fneg float %i.ca
  %i.cc = fmul float %i.bx, %i.cb
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.bv, float %i.cc)
  %i.ce = fcmp ogt float %i.cd, 0.000000e+00
  br i1 %i.ce, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 2, ptr %.0811.i, align 8, !tbaa !308
  %i.cf = add nsw i32 %4, 1                       ; 2 uses
  store i32 %i.cf, ptr %i.bg, align 8, !tbaa !312
  %i.cg = sext i32 %4 to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.cg
  store ptr %.0811.i, ptr %i.ch, align 8, !tbaa !311
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %5 = phi i32 [ %4, %bb.c ], [ %i.cf, %bb.d ]
  %i.ci = add nsw i32 %.010.i, -1
  %i.cj = icmp sgt i32 %.010.i, 0
  br i1 %i.cj, label %bb.c, label %.lr.ph.i8, !llvm.loop !313

.lr.ph.i8:                                        ; preds = %bb.e
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNK14ImTriangulator5IsEarEiiiRK6ImVec2S2_S2_.exit.i, %.lr.ph.i8
  %.01216.in.i = phi ptr [ %i.c, %.lr.ph.i8 ], [ %i.dp, %_ZNK14ImTriangulator5IsEarEiiiRK6ImVec2S2_S2_.exit.i ]
  %.015.i = phi i32 [ %i.be, %.lr.ph.i8 ], [ %i.do, %_ZNK14ImTriangulator5IsEarEiiiRK6ImVec2S2_S2_.exit.i ] ; 2 uses
  %.01216.i = load ptr, ptr %.01216.in.i, align 8, !tbaa !311 ; 8 uses
  %i.cl = load i32, ptr %.01216.i, align 8, !tbaa !308
  %.not.i = icmp eq i32 %i.cl, 0
  br i1 %.not.i, label %bb.g, label %_ZNK14ImTriangulator5IsEarEiiiRK6ImVec2S2_S2_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.cm = getelementptr inbounds nuw i8, ptr %.01216.i, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !304 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !309
  %i.cq = getelementptr inbounds nuw i8, ptr %.01216.i, i64 4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !309
  %i.cs = getelementptr inbounds nuw i8, ptr %.01216.i, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !307 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !309
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %.01216.i, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cz = load ptr, ptr %i.h, align 8, !tbaa !303 ; 2 uses
  %i.da = load i32, ptr %i.bg, align 8, !tbaa !314 ; 2 uses
  %i.db = sext i32 %i.da to i64
  %.idx.i.i = shl nsw i64 %i.db, 3
  %i.dc = getelementptr inbounds i8, ptr %i.cz, i64 %.idx.i.i
  %.not2428.i.i = icmp slt i32 %i.da, 1
  br i1 %.not2428.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.critedge.i.i
  %.01829.i.i = phi ptr [ %i.di, %.critedge.i.i ], [ %i.cz, %bb.g ] ; 2 uses
  %i.dd = load ptr, ptr %.01829.i.i, align 8, !tbaa !311 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !309 ; 3 uses
  %.not.i.i = icmp eq i32 %i.df, %i.cp
  %.not22.i.i = icmp eq i32 %i.df, %i.cr
  %or.cond.i.i = or i1 %.not.i.i, %.not22.i.i
  %.not23.i.i = icmp eq i32 %i.df, %i.cv
  %or.cond25.i.i = or i1 %.not23.i.i, %or.cond.i.i
  br i1 %or.cond25.i.i, label %.critedge.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dh = tail call noundef zeroext i1 @_Z23ImTriangleContainsPointRK6ImVec2S1_S1_S1_(ptr noundef nonnull align 4 dereferenceable(8) %i.cw, ptr noundef nonnull align 4 dereferenceable(8) %i.cx, ptr noundef nonnull align 4 dereferenceable(8) %i.cy, ptr noundef nonnull align 4 dereferenceable(8) %i.dg)
  br i1 %i.dh, label %_ZNK14ImTriangulator5IsEarEiiiRK6ImVec2S2_S2_.exit.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.h, %.lr.ph.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %.01829.i.i, i64 8 ; 2 uses
  %.not24.not.i.i = icmp ult ptr %i.di, %i.dc
  br i1 %.not24.not.i.i, label %.lr.ph.i.i, label %.loopexit.i, !llvm.loop !315

.loopexit.i:                                      ; preds = %.critedge.i.i, %bb.g
  store i32 1, ptr %.01216.i, align 8, !tbaa !308
  %i.dj = load ptr, ptr %i.f, align 8, !tbaa !316
  %i.dk = load i32, ptr %i.ck, align 8, !tbaa !312 ; 2 uses
  %i.dl = add nsw i32 %i.dk, 1
  store i32 %i.dl, ptr %i.ck, align 8, !tbaa !312
  %i.dm = sext i32 %i.dk to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.dm
  store ptr %.01216.i, ptr %i.dn, align 8, !tbaa !311
  br label %_ZNK14ImTriangulator5IsEarEiiiRK6ImVec2S2_S2_.exit.i

_ZNK14ImTriangulator5IsEarEiiiRK6ImVec2S2_S2_.exit.i: ; preds = %bb.h, %.loopexit.i, %bb.f
  %i.do = add nsw i32 %.015.i, -1
  %i.dp = getelementptr inbounds nuw i8, ptr %.01216.i, i64 16
  %i.dq = icmp sgt i32 %.015.i, 0
  br i1 %i.dq, label %bb.f, label %_ZN14ImTriangulator9BuildEarsEv.exit, !llvm.loop !317

_ZN14ImTriangulator9BuildEarsEv.exit:             ; preds = %_ZNK14ImTriangulator5IsEarEiiiRK6ImVec2S2_S2_.exit.i, %_ZN14ImTriangulator10BuildNodesEPK6ImVec2i.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN14ImTriangulator10BuildNodesEPK6ImVec2i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #20 align 2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  br i1 %i.a, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre18 = load ptr, ptr %i.b, align 8, !tbaa !301
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !301 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.c = icmp eq i32 %2, 1
  br i1 %i.c, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi ptr [ %.pre, %.lr.ph ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod20 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod20)
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %.epil.init, i64 %indvars.iv.epil.init ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !308
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  store i32 %i.f, ptr %i.e, align 4, !tbaa !309
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i64, ptr %i.g, align 4
  store i64 %i.i, ptr %i.h, align 8
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !301  ; 2 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %indvars.iv.epil.init ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !307
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 -32
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.n, ptr %i.o, align 8, !tbaa !304
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.._crit_edge_crit_edge
  %i.p = phi ptr [ %.pre18, %.._crit_edge_crit_edge ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ], [ %i.j, %.epil.preheader ] ; 3 uses
  %i.q = sext i32 %2 to i64
  %i.r = getelementptr [32 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -32
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.s, ptr %i.t, align 8, !tbaa !304
  %i.u = getelementptr i8, ptr %i.r, i64 -16
  store ptr %i.p, ptr %i.u, align 8, !tbaa !307
  ret void

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %i.v = phi ptr [ %.pre, %.lr.ph.new ], [ %i.ao, %bb.b ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %indvars.iv ; 3 uses
  store i32 0, ptr %i.w, align 8, !tbaa !308
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.y, ptr %i.x, align 4, !tbaa !309
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load i64, ptr %i.z, align 4
  store i64 %i.ab, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !301 ; 2 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !307
  %i.ag = getelementptr inbounds i8, ptr %i.ad, i64 -32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !304
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 4 uses
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv.next ; 3 uses
  store i32 0, ptr %i.ai, align 8, !tbaa !308
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !309
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.an = load i64, ptr %i.al, align 4
  store i64 %i.an, ptr %i.am, align 8
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !301 ; 4 uses
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.ao, i64 %indvars.iv.next ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !307
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 -32
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %i.as, ptr %i.at, align 8, !tbaa !304
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !310
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN14ImTriangulator13BuildReflexesEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !296    ; 2 uses
  %i.b = icmp sgt i32 %i.a, -1
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.promoted = load i32, ptr %i.f, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %1 = phi i32 [ %.promoted, %.lr.ph ], [ %2, %bb.d ] ; 3 uses
  %.0811.in = phi ptr [ %i.c, %.lr.ph ], [ %i.k, %bb.d ]
  %.010 = phi i32 [ %i.a, %.lr.ph ], [ %i.ah, %bb.d ] ; 2 uses
  %.0811 = load ptr, ptr %.0811.in, align 8, !tbaa !311 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0811, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !304  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %.0811, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %.0811, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !307  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load float, ptr %i.j, align 8, !tbaa !234 ; 2 uses
  %i.o = load float, ptr %i.i, align 4, !tbaa !234
  %i.p = fsub float %i.n, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.r = load float, ptr %i.q, align 4, !tbaa !235
  %i.s = getelementptr inbounds nuw i8, ptr %.0811, i64 12
  %i.t = load float, ptr %i.s, align 4, !tbaa !235 ; 2 uses
  %i.u = fsub float %i.r, %i.t
  %i.v = load float, ptr %i.m, align 4, !tbaa !234
  %i.w = fsub float %i.v, %i.n
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.y = load float, ptr %i.x, align 4, !tbaa !235
  %i.z = fsub float %i.t, %i.y
  %i.aa = fneg float %i.z
  %i.ab = fmul float %i.w, %i.aa
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.p, float %i.u, float %i.ab)
  %i.ad = fcmp ogt float %i.ac, 0.000000e+00
  br i1 %i.ad, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %.0811, align 8, !tbaa !308
  %i.ae = add nsw i32 %1, 1                       ; 2 uses
  store i32 %i.ae, ptr %i.f, align 8, !tbaa !312
  %i.af = sext i32 %1 to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.af
  store ptr %.0811, ptr %i.ag, align 8, !tbaa !311
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %2 = phi i32 [ %1, %bb.b ], [ %i.ae, %bb.c ]
  %i.ah = add nsw i32 %.010, -1
  %i.ai = icmp sgt i32 %.010, 0
  br i1 %i.ai, label %bb.b, label %._crit_edge, !llvm.loop !313
}

; Function Attrs: mustprogress uwtable
define void @_ZN14ImTriangulator9BuildEarsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !296    ; 2 uses
  %i.b = icmp sgt i32 %i.a, -1
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK14ImTriangulator5IsEarEiiiRK6ImVec2S2_S2_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNK14ImTriangulator5IsEarEiiiRK6ImVec2S2_S2_.exit
  %.01216.in = phi ptr [ %i.c, %.lr.ph ], [ %i.al, %_ZNK14ImTriangulator5IsEarEiiiRK6ImVec2S2_S2_.exit ]
  %.015 = phi i32 [ %i.a, %.lr.ph ], [ %i.ak, %_ZNK14ImTriangulator5IsEarEiiiRK6ImVec2S2_S2_.exit ] ; 2 uses
  %.01216 = load ptr, ptr %.01216.in, align 8, !tbaa !311 ; 8 uses
  %i.h = load i32, ptr %.01216, align 8, !tbaa !308
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %_ZNK14ImTriangulator5IsEarEiiiRK6ImVec2S2_S2_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.01216, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !304  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !309
  %i.m = getelementptr inbounds nuw i8, ptr %.01216, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !309
  %i.o = getelementptr inbounds nuw i8, ptr %.01216, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !307  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !309
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.01216, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !303  ; 2 uses
  %i.w = load i32, ptr %i.e, align 8, !tbaa !314  ; 2 uses
  %i.x = sext i32 %i.w to i64
  %.idx.i = shl nsw i64 %i.x, 3
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 %.idx.i
  %.not2428.i = icmp slt i32 %i.w, 1
  br i1 %.not2428.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.critedge.i
  %.01829.i = phi ptr [ %i.ae, %.critedge.i ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = load ptr, ptr %.01829.i, align 8, !tbaa !311 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !309 ; 3 uses
  %.not.i = icmp eq i32 %i.ab, %i.l
  %.not22.i = icmp eq i32 %i.ab, %i.n
  %or.cond.i = or i1 %.not.i, %.not22.i
  %.not23.i = icmp eq i32 %i.ab, %i.r
  %or.cond25.i = or i1 %.not23.i, %or.cond.i
  br i1 %or.cond25.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = tail call noundef zeroext i1 @_Z23ImTriangleContainsPointRK6ImVec2S1_S1_S1_(ptr noundef nonnull align 4 dereferenceable(8) %i.s, ptr noundef nonnull align 4 dereferenceable(8) %i.t, ptr noundef nonnull align 4 dereferenceable(8) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %i.ac)
  br i1 %i.ad, label %_ZNK14ImTriangulator5IsEarEiiiRK6ImVec2S2_S2_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %.lr.ph.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.01829.i, i64 8 ; 2 uses
  %.not24.not.i = icmp ult ptr %i.ae, %i.y
  br i1 %.not24.not.i, label %.lr.ph.i, label %.loopexit, !llvm.loop !315

.loopexit:                                        ; preds = %.critedge.i, %bb.c
  store i32 1, ptr %.01216, align 8, !tbaa !308
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !316
  %i.ag = load i32, ptr %i.g, align 8, !tbaa !312 ; 2 uses
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.g, align 8, !tbaa !312
  %i.ai = sext i32 %i.ag to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ai
  store ptr %.01216, ptr %i.aj, align 8, !tbaa !311
  br label %_ZNK14ImTriangulator5IsEarEiiiRK6ImVec2S2_S2_.exit

_ZNK14ImTriangulator5IsEarEiiiRK6ImVec2S2_S2_.exit: ; preds = %bb.d, %bb.b, %.loopexit
  %i.ak = add nsw i32 %.015, -1
  %i.al = getelementptr inbounds nuw i8, ptr %.01216, i64 16
  %i.am = icmp sgt i32 %.015, 0
  br i1 %i.am, label %bb.b, label %._crit_edge, !llvm.loop !317
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK14ImTriangulator5IsEarEiiiRK6ImVec2S2_S2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %6) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !303  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !314  ; 2 uses
  %i.e = sext i32 %i.d to i64
  %.idx = shl nsw i64 %i.e, 3
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %.idx
  %.not2428 = icmp slt i32 %i.d, 1
  br i1 %.not2428, label %.critedge27, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.critedge
  %.01829 = phi ptr [ %i.l, %.critedge ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %.01829, align 8, !tbaa !311 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !309  ; 3 uses
  %.not = icmp eq i32 %i.i, %1
  %.not22 = icmp eq i32 %i.i, %2
  %or.cond = or i1 %.not, %.not22
  %.not23 = icmp eq i32 %i.i, %3
  %or.cond25 = or i1 %.not23, %or.cond
  br i1 %or.cond25, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = tail call noundef zeroext i1 @_Z23ImTriangleContainsPointRK6ImVec2S1_S1_S1_(ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %i.j)
  br i1 %i.k, label %.critedge27, label %.critedge

.critedge:                                        ; preds = %bb.b, %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.01829, i64 8 ; 2 uses
  %.not24.not = icmp ult ptr %i.l, %i.f
  br i1 %.not24.not, label %.lr.ph, label %.critedge27, !llvm.loop !315

.critedge27:                                      ; preds = %bb.b, %.critedge, %bb.a
  %.not24.lcssa = phi i1 [ true, %bb.a ], [ true, %.critedge ], [ false, %bb.b ]
  ret i1 %.not24.lcssa
}

; Function Attrs: mustprogress uwtable
define void @_ZN14ImTriangulator15GetNextTriangleEPj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !318  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !301  ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !307  ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !307
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.f, ptr %i.i, align 8, !tbaa !304
  %.not17.i = icmp eq ptr %i.h, %i.f
  br i1 %.not17.i, label %_ZN14ImTriangulator12FlipNodeListEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.019.i = phi ptr [ %i.k, %.lr.ph.i ], [ %i.h, %bb.b ] ; 6 uses
  %.01618.i = phi ptr [ %.019.i, %.lr.ph.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.019.i, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !307  ; 2 uses
  store ptr %.01618.i, ptr %i.j, align 8, !tbaa !307
  %i.l = getelementptr inbounds nuw i8, ptr %.01618.i, i64 24
  store ptr %.019.i, ptr %i.l, align 8, !tbaa !304
  store ptr %.019.i, ptr %i.g, align 8, !tbaa !307
  %i.m = getelementptr inbounds nuw i8, ptr %.019.i, i64 24
  store ptr %i.f, ptr %i.m, align 8, !tbaa !304
  %.not.i = icmp eq ptr %i.k, %i.f
  br i1 %.not.i, label %_ZN14ImTriangulator12FlipNodeListEv.exit, label %.lr.ph.i, !llvm.loop !319

_ZN14ImTriangulator12FlipNodeListEv.exit:         ; preds = %.lr.ph.i, %bb.b
  %.016.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %.019.i, %.lr.ph.i ]
  store ptr %.016.lcssa.i, ptr %i.e, align 8, !tbaa !301
  %i.n = load i32, ptr %0, align 8, !tbaa !296    ; 7 uses
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN14ImTriangulator12FlipNodeListEv.exit
  %i.p = add nuw i32 %i.n, 1
  %xtraiter = and i32 %i.p, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.020.prol = phi i32 [ %i.q, %.lr.ph.prol ], [ %i.n, %.lr.ph.preheader ]
  %.015.in19.prol = phi ptr [ %i.r, %.lr.ph.prol ], [ %i.e, %.lr.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %.015.prol = load ptr, ptr %.015.in19.prol, align 8, !tbaa !311 ; 2 uses
  store i32 0, ptr %.015.prol, align 8, !tbaa !308
  %i.q = add nsw i32 %.020.prol, -1               ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.015.prol, i64 16 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !320

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.020.unr = phi i32 [ %i.n, %.lr.ph.preheader ], [ %i.q, %.lr.ph.prol ]
  %.015.in19.unr = phi ptr [ %i.e, %.lr.ph.preheader ], [ %i.r, %.lr.ph.prol ]
  %i.s = icmp ult i32 %i.n, 7
  br i1 %i.s, label %.lr.ph.i16, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN14ImTriangulator12FlipNodeListEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.t, align 8, !tbaa !314
  br label %_ZN14ImTriangulator9BuildEarsEv.exit

.lr.ph.i16:                                       ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i32 0, ptr %i.u, align 8, !tbaa !314
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i16
  %i.x = phi i32 [ 0, %.lr.ph.i16 ], [ %i.az, %bb.e ] ; 3 uses
  %.0811.in.i = phi ptr [ %i.e, %.lr.ph.i16 ], [ %i.ac, %bb.e ]
  %.010.i = phi i32 [ %i.n, %.lr.ph.i16 ], [ %i.ba, %bb.e ] ; 2 uses
  %.0811.i = load ptr, ptr %.0811.in.i, align 8, !tbaa !311 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0811.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !304  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.0811.i, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.0811.i, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !307 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load float, ptr %i.ab, align 8, !tbaa !234 ; 2 uses
  %i.ag = load float, ptr %i.aa, align 4, !tbaa !234
  %i.ah = fsub float %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !235
  %i.ak = getelementptr inbounds nuw i8, ptr %.0811.i, i64 12
  %i.al = load float, ptr %i.ak, align 4, !tbaa !235 ; 2 uses
  %i.am = fsub float %i.aj, %i.al
  %i.an = load float, ptr %i.ae, align 4, !tbaa !234
  %i.ao = fsub float %i.an, %i.af
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !235
  %i.ar = fsub float %i.al, %i.aq
  %i.as = fneg float %i.ar
  %i.at = fmul float %i.ao, %i.as
  %i.au = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.am, float %i.at)
  %i.av = fcmp ogt float %i.au, 0.000000e+00
  br i1 %i.av, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 2, ptr %.0811.i, align 8, !tbaa !308
  %i.aw = add nsw i32 %i.x, 1                     ; 2 uses
  store i32 %i.aw, ptr %i.u, align 8, !tbaa !312
  %i.ax = sext i32 %i.x to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ax
  store ptr %.0811.i, ptr %i.ay, align 8, !tbaa !311
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.az = phi i32 [ %i.x, %bb.c ], [ %i.aw, %bb.d ]
  %i.ba = add nsw i32 %.010.i, -1
  %i.bb = icmp sgt i32 %.010.i, 0
  br i1 %i.bb, label %bb.c, label %.lr.ph.i17, !llvm.loop !313

.lr.ph.i17:                                       ; preds = %bb.e, %_ZNK14ImTriangulator5IsEarEiiiRK6ImVec2S2_S2_.exit.i
  %.01216.in.i = phi ptr [ %i.cg, %_ZNK14ImTriangulator5IsEarEiiiRK6ImVec2S2_S2_.exit.i ], [ %i.e, %bb.e ]
  %.015.i = phi i32 [ %i.cf, %_ZNK14ImTriangulator5IsEarEiiiRK6ImVec2S2_S2_.exit.i ], [ %i.n, %bb.e ] ; 2 uses
  %.01216.i = load ptr, ptr %.01216.in.i, align 8, !tbaa !311 ; 8 uses
  %i.bc = load i32, ptr %.01216.i, align 8, !tbaa !308
  %.not.i18 = icmp eq i32 %i.bc, 0
  br i1 %.not.i18, label %bb.f, label %_ZNK14ImTriangulator5IsEarEiiiRK6ImVec2S2_S2_.exit.i

bb.f:                                             ; preds = %.lr.ph.i17
  %i.bd = getelementptr inbounds nuw i8, ptr %.01216.i, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !304 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !309
  %i.bh = getelementptr inbounds nuw i8, ptr %.01216.i, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !309
  %i.bj = getelementptr inbounds nuw i8, ptr %.01216.i, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !307 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !309
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.01216.i, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bq = load ptr, ptr %i.v, align 8, !tbaa !303 ; 2 uses
  %i.br = load i32, ptr %i.u, align 8, !tbaa !314 ; 2 uses
  %i.bs = sext i32 %i.br to i64
  %.idx.i.i = shl nsw i64 %i.bs, 3
  %i.bt = getelementptr inbounds i8, ptr %i.bq, i64 %.idx.i.i
  %.not2428.i.i = icmp slt i32 %i.br, 1
  br i1 %.not2428.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.critedge.i.i
  %.01829.i.i = phi ptr [ %i.bz, %.critedge.i.i ], [ %i.bq, %bb.f ] ; 2 uses
  %i.bu = load ptr, ptr %.01829.i.i, align 8, !tbaa !311 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !309 ; 3 uses
  %.not.i.i = icmp eq i32 %i.bw, %i.bg
  %.not22.i.i = icmp eq i32 %i.bw, %i.bi
  %or.cond.i.i = or i1 %.not.i.i, %.not22.i.i
  %.not23.i.i = icmp eq i32 %i.bw, %i.bm
  %or.cond25.i.i = or i1 %.not23.i.i, %or.cond.i.i
  br i1 %or.cond25.i.i, label %.critedge.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.by = tail call noundef zeroext i1 @_Z23ImTriangleContainsPointRK6ImVec2S1_S1_S1_(ptr noundef nonnull align 4 dereferenceable(8) %i.bn, ptr noundef nonnull align 4 dereferenceable(8) %i.bo, ptr noundef nonnull align 4 dereferenceable(8) %i.bp, ptr noundef nonnull align 4 dereferenceable(8) %i.bx)
  br i1 %i.by, label %_ZNK14ImTriangulator5IsEarEiiiRK6ImVec2S2_S2_.exit.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.g, %.lr.ph.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.01829.i.i, i64 8 ; 2 uses
  %.not24.not.i.i = icmp ult ptr %i.bz, %i.bt
  br i1 %.not24.not.i.i, label %.lr.ph.i.i, label %.loopexit.i, !llvm.loop !315

.loopexit.i:                                      ; preds = %.critedge.i.i, %bb.f
  store i32 1, ptr %.01216.i, align 8, !tbaa !308
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !316
  %i.cb = load i32, ptr %i.b, align 8, !tbaa !312 ; 2 uses
  %i.cc = add nsw i32 %i.cb, 1
  store i32 %i.cc, ptr %i.b, align 8, !tbaa !312
  %i.cd = sext i32 %i.cb to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.cd
  store ptr %.01216.i, ptr %i.ce, align 8, !tbaa !311
  br label %_ZNK14ImTriangulator5IsEarEiiiRK6ImVec2S2_S2_.exit.i

_ZNK14ImTriangulator5IsEarEiiiRK6ImVec2S2_S2_.exit.i: ; preds = %bb.g, %.loopexit.i, %.lr.ph.i17
  %i.cf = add nsw i32 %.015.i, -1
  %i.cg = getelementptr inbounds nuw i8, ptr %.01216.i, i64 16
  %i.ch = icmp sgt i32 %.015.i, 0
  br i1 %i.ch, label %.lr.ph.i17, label %_ZN14ImTriangulator9BuildEarsEv.exit, !llvm.loop !317

_ZN14ImTriangulator9BuildEarsEv.exit:             ; preds = %_ZNK14ImTriangulator5IsEarEiiiRK6ImVec2S2_S2_.exit.i, %._crit_edge
  %i.ci = load i32, ptr %i.b, align 8, !tbaa !318 ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.h, label %bb.i

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.020 = phi i32 [ %i.cr, %.lr.ph ], [ %.020.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.015.in19 = phi ptr [ %i.cs, %.lr.ph ], [ %.015.in19.unr, %.lr.ph.prol.loopexit ]
  %.015 = load ptr, ptr %.015.in19, align 8, !tbaa !311 ; 2 uses
  store i32 0, ptr %.015, align 8, !tbaa !308
  %i.ck = getelementptr inbounds nuw i8, ptr %.015, i64 16
  %.015.1 = load ptr, ptr %i.ck, align 8, !tbaa !311 ; 2 uses
  store i32 0, ptr %.015.1, align 8, !tbaa !308
  %i.cl = getelementptr inbounds nuw i8, ptr %.015.1, i64 16
  %.015.2 = load ptr, ptr %i.cl, align 8, !tbaa !311 ; 2 uses
  store i32 0, ptr %.015.2, align 8, !tbaa !308
  %i.cm = getelementptr inbounds nuw i8, ptr %.015.2, i64 16
  %.015.3 = load ptr, ptr %i.cm, align 8, !tbaa !311 ; 2 uses
  store i32 0, ptr %.015.3, align 8, !tbaa !308
  %i.cn = getelementptr inbounds nuw i8, ptr %.015.3, i64 16
  %.015.4 = load ptr, ptr %i.cn, align 8, !tbaa !311 ; 2 uses
  store i32 0, ptr %.015.4, align 8, !tbaa !308
  %i.co = getelementptr inbounds nuw i8, ptr %.015.4, i64 16
  %.015.5 = load ptr, ptr %i.co, align 8, !tbaa !311 ; 2 uses
  store i32 0, ptr %.015.5, align 8, !tbaa !308
  %i.cp = getelementptr inbounds nuw i8, ptr %.015.5, i64 16
  %.015.6 = load ptr, ptr %i.cp, align 8, !tbaa !311 ; 2 uses
  store i32 0, ptr %.015.6, align 8, !tbaa !308
  %i.cq = getelementptr inbounds nuw i8, ptr %.015.6, i64 16
  %.015.7 = load ptr, ptr %i.cq, align 8, !tbaa !311 ; 2 uses
  store i32 0, ptr %.015.7, align 8, !tbaa !308
  %i.cr = add nsw i32 %.020, -8
  %i.cs = getelementptr inbounds nuw i8, ptr %.015.7, i64 16
  %.not.7 = icmp eq i32 %.020, 7
  br i1 %.not.7, label %.lr.ph.i16, label %.lr.ph, !llvm.loop !321

bb.h:                                             ; preds = %_ZN14ImTriangulator9BuildEarsEv.exit
  %i.ct = load ptr, ptr %i.e, align 8, !tbaa !301
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !302
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !311
  br label %bb.i

bb.i:                                             ; preds = %_ZN14ImTriangulator9BuildEarsEv.exit, %bb.h, %bb.a
  %i.cv = phi i32 [ %i.ci, %_ZN14ImTriangulator9BuildEarsEv.exit ], [ 1, %bb.h ], [ %i.c, %bb.a ]
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !302
  %i.cx = add nsw i32 %i.cv, -1                   ; 2 uses
  store i32 %i.cx, ptr %i.b, align 8, !tbaa !318
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !311 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !304 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !309
  store i32 %i.de, ptr %1, align 4, !tbaa !280
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !309
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !280
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !307 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !309
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !280
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  store ptr %i.dc, ptr %i.dn, align 8, !tbaa !304
  %i.do = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store ptr %i.dj, ptr %i.do, align 8, !tbaa !307
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !301
  %i.dr = icmp eq ptr %i.da, %i.dq
  br i1 %i.dr, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr %i.dj, ptr %i.dp, align 8, !tbaa !301
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void @_ZN14ImTriangulator14ReclassifyNodeEP18ImTriangulatorNode(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.dc)
  %i.ds = load ptr, ptr %i.di, align 8, !tbaa !307
  tail call void @_ZN14ImTriangulator14ReclassifyNodeEP18ImTriangulatorNode(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.ds)
  %i.dt = load i32, ptr %0, align 8, !tbaa !296
  %i.du = add nsw i32 %i.dt, -1
  store i32 %i.du, ptr %0, align 8, !tbaa !296
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN14ImTriangulator12FlipNodeListEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !301  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !307  ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !307
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.b, ptr %i.e, align 8, !tbaa !304
  %.not17 = icmp eq ptr %i.d, %i.b
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.019 = phi ptr [ %i.g, %.lr.ph ], [ %i.d, %bb.a ] ; 6 uses
  %.01618 = phi ptr [ %.019, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.019, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !307  ; 2 uses
  store ptr %.01618, ptr %i.f, align 8, !tbaa !307
  %i.h = getelementptr inbounds nuw i8, ptr %.01618, i64 24
  store ptr %.019, ptr %i.h, align 8, !tbaa !304
  store ptr %.019, ptr %i.c, align 8, !tbaa !307
  %i.i = getelementptr inbounds nuw i8, ptr %.019, i64 24
  store ptr %i.b, ptr %i.i, align 8, !tbaa !304
  %.not = icmp eq ptr %i.g, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !319

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.016.lcssa = phi ptr [ %i.b, %bb.a ], [ %.019, %.lr.ph ]
  store ptr %.016.lcssa, ptr %i.a, align 8, !tbaa !301
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN14ImTriangulator14ReclassifyNodeEP18ImTriangulatorNode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !304  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_1
