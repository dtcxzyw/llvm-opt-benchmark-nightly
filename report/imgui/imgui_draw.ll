Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1479
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 354
begin_hunk_0_@_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %5, 512
  %.not443 = icmp eq i32 %i.c, 0                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.f = load i64, ptr %i.e, align 8              ; 11 uses
  %i.g = add nsw i32 %2, -1                       ; 4 uses
  %i.h = select i1 %.not443, i32 %i.g, i32 %2     ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.j = load float, ptr %i.i, align 8, !tbaa !103 ; 8 uses
  %i.k = fcmp ogt float %4, %i.j                  ; 5 uses
  %i.l = and i32 %5, -2147483633
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str) ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i32, ptr %i.o, align 8, !tbaa !91   ; 2 uses
  %i.q = and i32 %i.p, 1
  %.not444 = icmp eq i32 %i.q, 0
  br i1 %.not444, label %.lr.ph558, label %bb.e

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
  %or.cond.not453 = select i1 %i.y, i1 true, i1 %i.z
  %i.aa = fcmp ugt float %i.w, f0x3727C5AC
  %or.cond3.not450 = select i1 %or.cond.not453, i1 true, i1 %i.aa
  %i.ab = fcmp une float %i.j, 1.000000e+00
  %.not448 = select i1 %or.cond3.not450, i1 true, i1 %i.ab ; 8 uses
  %.v = select i1 %i.k, i32 18, i32 12
  %.v530 = select i1 %.not448, i32 %.v, i32 6
  %i.ac = mul nsw i32 %.v530, %i.h
  br i1 %.not448, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = shl nuw nsw i32 %2, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ae = shl nuw nsw i32 %2, 2
  %i.af = mul nuw nsw i32 %2, 3
  %i.ag = select i1 %i.k, i32 %i.ae, i32 %i.af
  %i.ah = select i1 %i.k, i32 5, i32 3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not446 = phi i32 [ 3, %bb.f ], [ %i.ah, %bb.g ]
  %i.ai = phi i32 [ %i.ad, %bb.f ], [ %i.ag, %bb.g ] ; 2 uses
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %i.ac, i32 noundef %i.ai)
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !73  ; 3 uses
  %i.ak = mul nuw nsw i32 %.not446, %2            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 76 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !99
  %.not.i = icmp sgt i32 %i.ak, %i.am
  br i1 %.not.i, label %bb.i, label %.lr.ph.preheader

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 80 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !47 ; 2 uses
  %.not4.i = icmp eq ptr %i.ao, null
  br i1 %.not4.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.ao)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ap = zext nneg i32 %i.ak to i64
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %i.ar = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.aq)
  store ptr %i.ar, ptr %i.an, align 8, !tbaa !47
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !99
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !73
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.k, %bb.h
  %i.as = phi ptr [ %i.aj, %bb.h ], [ %.pre, %bb.k ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !247 ; 11 uses
  %i.av = zext nneg i32 %2 to i64                 ; 7 uses
  %i.aw = getelementptr [8 x i8], ptr %i.au, i64 %i.av ; 14 uses
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.m
  br i1 %.not443, label %bb.n, label %.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ax = icmp eq i64 %indvars.iv.next, %i.av
  %i.ay = select i1 %i.ax, i64 0, i64 %indvars.iv.next
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ay
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.bb = load <2 x float>, ptr %i.az, align 4, !tbaa !29
  %i.bc = load <2 x float>, ptr %i.ba, align 4, !tbaa !29
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
  store float %i.bo, ptr %i.bn, align 4, !tbaa !237
  %i.bp = extractelement <2 x float> %i.bm, i64 0
  %i.bq = fneg float %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store float %i.bq, ptr %i.br, align 4, !tbaa !238
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !565

bb.n:                                             ; preds = %._crit_edge
  %i.bs = getelementptr i8, ptr %i.aw, i64 -16
  %i.bt = zext nneg i32 %i.g to i64               ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bt ; 5 uses
  %i.bv = load i64, ptr %i.bs, align 4
  store i64 %i.bv, ptr %i.bu, align 4
  %or.cond5 = select i1 %.not448, i1 %i.k, i1 false
  br i1 %or.cond5, label %bb.u, label %bb.o

.thread:                                          ; preds = %._crit_edge
  %or.cond5527 = select i1 %.not448, i1 %i.k, i1 false
  br i1 %or.cond5527, label %.thread529, label %.thread528

.thread529:                                       ; preds = %.thread
  %i.bw = fsub float %i.t, %i.j
  %i.bx = fmul float %i.bw, 5.000000e-01
  br label %.lr.ph553

.thread528:                                       ; preds = %.thread
  %i.by = tail call float @llvm.fmuladd.f32(float %i.t, float 5.000000e-01, float 1.000000e+00)
  %i.bz = select i1 %.not448, float %i.j, float %i.by
  br label %.lr.ph543

bb.o:                                             ; preds = %bb.n
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.t, float 5.000000e-01, float 1.000000e+00)
  %i.cb = select i1 %.not448, float %i.j, float %i.ca ; 2 uses
  %i.cc = load <2 x float>, ptr %i.au, align 4, !tbaa !29
  %i.cd = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.cf = fmul <2 x float> %i.ce, %i.cc
  %i.cg = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.ch = fadd <2 x float> %i.cf, %i.cg
  store <2 x float> %i.ch, ptr %i.aw, align 4
  %i.ci = load <2 x float>, ptr %i.au, align 4, !tbaa !29
  %i.cj = fmul <2 x float> %i.ce, %i.ci
  %i.ck = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.cl = fsub <2 x float> %i.ck, %i.cj
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store <2 x float> %i.cl, ptr %i.cm, align 4
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bt ; 2 uses
  %i.co = load <2 x float>, ptr %i.bu, align 4, !tbaa !29
  %i.cp = fmul <2 x float> %i.ce, %i.co
  %i.cq = load <2 x float>, ptr %i.cn, align 4, !tbaa !29
  %i.cr = fadd <2 x float> %i.cp, %i.cq
  %i.cs = shl nuw nsw i32 %i.g, 1
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ct ; 2 uses
  store <2 x float> %i.cr, ptr %i.cu, align 4
  %i.cv = load <2 x float>, ptr %i.bu, align 4, !tbaa !29
  %i.cw = fmul <2 x float> %i.ce, %i.cv
  %i.cx = load <2 x float>, ptr %i.cn, align 4, !tbaa !29
  %i.cy = fsub <2 x float> %i.cx, %i.cw
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store <2 x float> %i.cy, ptr %i.cz, align 4
  br label %.lr.ph543

.lr.ph543:                                        ; preds = %bb.o, %.thread528
  %i.da = phi float [ %i.bz, %.thread528 ], [ %i.cb, %bb.o ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !92 ; 2 uses
  %i.dd = select i1 %.not448, i32 3, i32 2
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %wide.trip.count565 = zext nneg i32 %i.h to i64 ; 2 uses
  %i.df = insertelement <2 x float> poison, float %i.da, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  %.promoted625 = load ptr, ptr %i.de, align 8, !tbaa !113
  br label %.backedge

.lr.ph549:                                        ; preds = %bb.r
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %.pre593 = load ptr, ptr %i.dh, align 8, !tbaa !242
  br label %bb.t

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph543
  %6 = phi ptr [ %.promoted625, %.lr.ph543 ], [ %7, %.backedge.backedge ] ; 13 uses
  %indvars.iv562 = phi i64 [ 0, %.lr.ph543 ], [ %indvars.iv.next563, %.backedge.backedge ] ; 2 uses
  %.0433540 = phi i32 [ %i.dc, %.lr.ph543 ], [ %i.dm, %.backedge.backedge ] ; 3 uses
  %indvars.iv.next563 = add nuw nsw i64 %indvars.iv562, 1 ; 5 uses
  %i.di = icmp eq i64 %indvars.iv.next563, %i.av  ; 2 uses
  %i.dj = trunc nuw nsw i64 %indvars.iv.next563 to i32
  %i.dk = select i1 %i.di, i32 0, i32 %i.dj       ; 2 uses
  %i.dl = add i32 %.0433540, %i.dd
  %i.dm = select i1 %i.di, i32 %i.dc, i32 %i.dl   ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv562
  %i.do = zext nneg i32 %i.dk to i64              ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.do
  %i.dq = load <2 x float>, ptr %i.dn, align 4, !tbaa !29
  %i.dr = load <2 x float>, ptr %i.dp, align 4, !tbaa !29
  %i.ds = fadd <2 x float> %i.dq, %i.dr
  %i.dt = fmul <2 x float> %i.ds, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop617 = fmul <2 x float> %i.dt, %i.dt
  %i.du = extractelement <2 x float> %foldExtExtBinop617, i64 1
  %i.dv = extractelement <2 x float> %i.dt, i64 0 ; 2 uses
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.dv, float %i.dv, float %i.du) ; 2 uses
  %i.dx = fcmp ogt float %i.dw, f0x358637BD
  br i1 %i.dx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.backedge
  %i.dy = fdiv float 1.000000e+00, %i.dw          ; 2 uses
  %i.dz = fcmp ogt float %i.dy, 1.000000e+02
  %spec.store.select = select i1 %i.dz, float 1.000000e+02, float %i.dy
  %i.ea = insertelement <2 x float> poison, float %spec.store.select, i64 0
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
  %i.ej = load <2 x float>, ptr %i.ei, align 4, !tbaa !29
  %i.ek = fadd <2 x float> %i.ee, %i.ej
  store <2 x float> %i.ek, ptr %i.eh, align 4, !tbaa !29
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.em = load <2 x float>, ptr %i.ei, align 4, !tbaa !29
  %i.en = fsub <2 x float> %i.em, %i.ee
  store <2 x float> %i.en, ptr %i.el, align 4, !tbaa !29
  %i.eo = trunc i32 %i.dm to i16                  ; 4 uses
  store i16 %i.eo, ptr %6, align 2, !tbaa !243
  %i.ep = trunc i32 %.0433540 to i16              ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 %i.ep, ptr %i.eq, align 2, !tbaa !243
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br i1 %.not448, label %bb.r, label %.thread609

bb.r:                                             ; preds = %bb.q
  %i.et = trunc i32 %i.dm to i16
  %i.eu = insertelement <2 x i16> poison, i16 %i.et, i64 0
  %i.ev = trunc i32 %.0433540 to i16
  %i.ew = insertelement <2 x i16> %i.eu, i16 %i.ev, i64 1
  %i.ex = shufflevector <2 x i16> %i.ew, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ey = add i16 %i.ep, 2                        ; 2 uses
  store i16 %i.ey, ptr %i.er, align 2, !tbaa !243
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 6
  store i16 %i.ey, ptr %i.ez, align 2, !tbaa !243
  %i.fa = add <4 x i16> %i.ex, <i16 2, i16 0, i16 1, i16 1> ; 2 uses
  store <4 x i16> %i.fa, ptr %i.es, align 2, !tbaa !243
  %i.fb = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i16 %i.ep, ptr %i.fb, align 2, !tbaa !243
  %i.fc = getelementptr inbounds nuw i8, ptr %6, i64 18
  store i16 %i.ep, ptr %i.fc, align 2, !tbaa !243
  %i.fd = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i16 %i.eo, ptr %i.fd, align 2, !tbaa !243
  %i.fe = getelementptr inbounds nuw i8, ptr %6, i64 22
  %i.ff = extractelement <4 x i16> %i.fa, i64 2
  store i16 %i.ff, ptr %i.fe, align 2, !tbaa !243
  %i.fg = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr %i.fg, ptr %i.de, align 8, !tbaa !113
  %exitcond566.not = icmp eq i64 %indvars.iv.next563, %wide.trip.count565
  br i1 %exitcond566.not, label %.lr.ph549, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.r, %.thread609
  %7 = phi ptr [ %i.fg, %bb.r ], [ %i.fl, %.thread609 ]
  br label %.backedge, !llvm.loop !566

.thread609:                                       ; preds = %bb.q
  %i.fh = getelementptr inbounds nuw i8, ptr %6, i64 10
  %i.fi = add i16 %i.ep, 1                        ; 2 uses
  store i16 %i.fi, ptr %i.er, align 2, !tbaa !243
  %i.fj = add i16 %i.eo, 1
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 6
  store i16 %i.fj, ptr %i.fk, align 2, !tbaa !243
  store i16 %i.fi, ptr %i.es, align 2, !tbaa !243
  store i16 %i.eo, ptr %i.fh, align 2, !tbaa !243
  %i.fl = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store ptr %i.fl, ptr %i.de, align 8, !tbaa !113
  %exitcond566.not611 = icmp eq i64 %indvars.iv.next563, %wide.trip.count565
  br i1 %exitcond566.not611, label %.lr.ph547, label %.backedge.backedge

.lr.ph547:                                        ; preds = %.thread609
  %i.fm = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !248
  %i.fp = sext i32 %i.u to i64
  %i.fq = getelementptr inbounds [16 x i8], ptr %i.fo, i64 %i.fp ; 2 uses
  %i.fr = load <2 x i32>, ptr %i.fq, align 4, !tbaa !29
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load <2 x i32>, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !29
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %.pre592 = load ptr, ptr %i.ft, align 8, !tbaa !242
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph547, %bb.s
  %i.fu = phi ptr [ %.pre592, %.lr.ph547 ], [ %i.gi, %bb.s ]
  %indvars.iv567 = phi i64 [ 0, %.lr.ph547 ], [ %indvars.iv.next568, %bb.s ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv567, 4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 4
  store i64 %i.fw, ptr %i.fu, align 4
  %i.fx = load ptr, ptr %i.ft, align 8, !tbaa !242
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store <2 x i32> %i.fr, ptr %i.fy, align 4
  %i.fz = load ptr, ptr %i.ft, align 8, !tbaa !242 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store i32 %3, ptr %i.ga, align 4, !tbaa !245
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 20
  %i.gd = load i64, ptr %i.gb, align 4
  store i64 %i.gd, ptr %i.gc, align 4
  %i.ge = load ptr, ptr %i.ft, align 8, !tbaa !242
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 28
  store <2 x i32> %i.fs, ptr %i.gf, align 4
  %i.gg = load ptr, ptr %i.ft, align 8, !tbaa !242 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 36
  store i32 %3, ptr %i.gh, align 4, !tbaa !245
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 40 ; 2 uses
  store ptr %i.gi, ptr %i.ft, align 8, !tbaa !242
  %indvars.iv.next568 = add nuw nsw i64 %indvars.iv567, 1 ; 2 uses
  %exitcond571.not = icmp eq i64 %indvars.iv.next568, %i.av
  br i1 %exitcond571.not, label %.loopexit535, label %bb.s, !llvm.loop !567

bb.t:                                             ; preds = %.lr.ph549, %bb.t
  %i.gj = phi ptr [ %.pre593, %.lr.ph549 ], [ %i.he, %bb.t ]
  %indvars.iv572 = phi i64 [ 0, %.lr.ph549 ], [ %indvars.iv.next573, %bb.t ] ; 3 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv572
  %i.gl = load i64, ptr %i.gk, align 4
  store i64 %i.gl, ptr %i.gj, align 4
  %i.gm = load ptr, ptr %i.dh, align 8, !tbaa !242
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  store i64 %i.f, ptr %i.gn, align 4
  %i.go = load ptr, ptr %i.dh, align 8, !tbaa !242 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  store i32 %3, ptr %i.gp, align 4, !tbaa !245
  %.idx607 = shl nuw nsw i64 %indvars.iv572, 4
  %i.gq = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx607 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 20
  %i.gs = load i64, ptr %i.gq, align 4
  store i64 %i.gs, ptr %i.gr, align 4
  %i.gt = load ptr, ptr %i.dh, align 8, !tbaa !242
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 28
  store i64 %i.f, ptr %i.gu, align 4
  %i.gv = load ptr, ptr %i.dh, align 8, !tbaa !242 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 36
  store i32 %i.r, ptr %i.gw, align 4, !tbaa !245
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 40
  %i.gz = load i64, ptr %i.gx, align 4
  store i64 %i.gz, ptr %i.gy, align 4
  %i.ha = load ptr, ptr %i.dh, align 8, !tbaa !242
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 48
  store i64 %i.f, ptr %i.hb, align 4
  %i.hc = load ptr, ptr %i.dh, align 8, !tbaa !242 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 56
  store i32 %i.r, ptr %i.hd, align 4, !tbaa !245
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 60 ; 2 uses
  store ptr %i.he, ptr %i.dh, align 8, !tbaa !242
  %indvars.iv.next573 = add nuw nsw i64 %indvars.iv572, 1 ; 2 uses
  %exitcond576.not = icmp eq i64 %indvars.iv.next573, %i.av
  br i1 %exitcond576.not, label %.loopexit535, label %bb.t, !llvm.loop !568

bb.u:                                             ; preds = %bb.n
  %i.hf = fsub float %i.t, %i.j
  %i.hg = fmul float %i.hf, 5.000000e-01          ; 3 uses
  %i.hh = fadd float %i.j, %i.hg
  %i.hi = load <2 x float>, ptr %i.au, align 4, !tbaa !29
  %i.hj = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.hk = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.hl = fmul <2 x float> %i.hk, %i.hi
  %i.hm = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.hn = fadd <2 x float> %i.hl, %i.hm
  store <2 x float> %i.hn, ptr %i.aw, align 4
  %i.ho = load <2 x float>, ptr %i.au, align 4, !tbaa !29 ; 2 uses
  %i.hp = insertelement <2 x float> poison, float %i.hg, i64 0
  %i.hq = shufflevector <2 x float> %i.hp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hr = fmul <2 x float> %i.hq, %i.ho           ; 2 uses
  %i.hs = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.ht = fadd <2 x float> %i.hr, %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store <2 x float> %i.ht, ptr %i.hu, align 4
  %i.hv = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.hw = fsub <2 x float> %i.hv, %i.hr
  %i.hx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <2 x float> %i.hw, ptr %i.hx, align 4
  %i.hy = fmul <2 x float> %i.hk, %i.ho
  %i.hz = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.ia = fsub <2 x float> %i.hz, %i.hy
  %i.ib = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store <2 x float> %i.ia, ptr %i.ib, align 4
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bt ; 4 uses
  %i.id = load <2 x float>, ptr %i.bu, align 4, !tbaa !29
  %i.ie = fmul <2 x float> %i.hk, %i.id
  %i.if = load <2 x float>, ptr %i.ic, align 4, !tbaa !29
  %i.ig = fadd <2 x float> %i.ie, %i.if
  %i.ih = shl nuw nsw i32 %i.g, 2
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ii ; 4 uses
  store <2 x float> %i.ig, ptr %i.ij, align 4
  %i.ik = load <2 x float>, ptr %i.bu, align 4, !tbaa !29 ; 2 uses
  %i.il = fmul <2 x float> %i.hq, %i.ik           ; 2 uses
  %i.im = load <2 x float>, ptr %i.ic, align 4, !tbaa !29
  %i.in = fadd <2 x float> %i.il, %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store <2 x float> %i.in, ptr %i.io, align 4
  %i.ip = load <2 x float>, ptr %i.ic, align 4, !tbaa !29
  %i.iq = fsub <2 x float> %i.ip, %i.il
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  store <2 x float> %i.iq, ptr %i.ir, align 4
  %i.is = fmul <2 x float> %i.hk, %i.ik
  %i.it = load <2 x float>, ptr %i.ic, align 4, !tbaa !29
  %i.iu = fsub <2 x float> %i.it, %i.is
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  store <2 x float> %i.iu, ptr %i.iv, align 4
  br label %.lr.ph553

.lr.ph553:                                        ; preds = %bb.u, %.thread529
  %i.iw = phi float [ %i.bx, %.thread529 ], [ %i.hg, %bb.u ] ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !92 ; 2 uses
  %i.iz = fadd float %i.j, %i.iw
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted = load ptr, ptr %i.ja, align 8, !tbaa !113
  %wide.trip.count580 = zext nneg i32 %i.h to i64
  %i.jb = insertelement <2 x float> poison, float %i.iz, i64 0
  %i.jc = shufflevector <2 x float> %i.jb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jd = insertelement <2 x float> poison, float %i.iw, i64 0
  %i.je = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.v

.lr.ph555:                                        ; preds = %bb.x
  store ptr %i.lq, ptr %i.ja, align 8, !tbaa !113
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %.pre594 = load ptr, ptr %i.jf, align 8, !tbaa !242
  br label %bb.y

bb.v:                                             ; preds = %.lr.ph553, %bb.x
  %indvars.iv577 = phi i64 [ 0, %.lr.ph553 ], [ %indvars.iv.next578, %bb.x ] ; 2 uses
  %i.jg = phi ptr [ %.promoted, %.lr.ph553 ], [ %i.lq, %bb.x ] ; 9 uses
  %.0425550 = phi i32 [ %i.iy, %.lr.ph553 ], [ %spec.select, %bb.x ] ; 3 uses
  %indvars.iv.next578 = add nuw nsw i64 %indvars.iv577, 1 ; 4 uses
  %i.jh = icmp eq i64 %indvars.iv.next578, %i.av  ; 2 uses
  %i.ji = trunc nuw nsw i64 %indvars.iv.next578 to i32
  %i.jj = select i1 %i.jh, i32 0, i32 %i.ji       ; 2 uses
  %i.jk = add i32 %.0425550, 4
  %spec.select = select i1 %i.jh, i32 %i.iy, i32 %i.jk ; 3 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv577
  %i.jm = zext nneg i32 %i.jj to i64              ; 2 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.jm
  %i.jo = load <2 x float>, ptr %i.jl, align 4, !tbaa !29
  %i.jp = load <2 x float>, ptr %i.jn, align 4, !tbaa !29
  %i.jq = fadd <2 x float> %i.jo, %i.jp
  %i.jr = fmul <2 x float> %i.jq, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop619 = fmul <2 x float> %i.jr, %i.jr
  %i.js = extractelement <2 x float> %foldExtExtBinop619, i64 1
  %i.jt = extractelement <2 x float> %i.jr, i64 0 ; 2 uses
  %i.ju = tail call float @llvm.fmuladd.f32(float %i.jt, float %i.jt, float %i.js) ; 2 uses
  %i.jv = fcmp ogt float %i.ju, f0x358637BD
  br i1 %i.jv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.jw = fdiv float 1.000000e+00, %i.ju          ; 2 uses
  %i.jx = fcmp ogt float %i.jw, 1.000000e+02
  %spec.store.select6 = select i1 %i.jx, float 1.000000e+02, float %i.jw
  %i.jy = insertelement <2 x float> poison, float %spec.store.select6, i64 0
  %i.jz = shufflevector <2 x float> %i.jy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ka = fmul <2 x float> %i.jr, %i.jz
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.kb = phi <2 x float> [ %i.ka, %bb.w ], [ %i.jr, %bb.v ] ; 2 uses
  %i.kc = fmul <2 x float> %i.jc, %i.kb           ; 2 uses
  %i.kd = shl nsw i32 %i.jj, 2
  %i.ke = zext nneg i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ke ; 4 uses
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.jm ; 4 uses
  %i.kh = load <2 x float>, ptr %i.kg, align 4, !tbaa !29
end_hunk_0
