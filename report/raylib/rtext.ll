Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtext?download=true
inline.NumInlined: 306
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 46
begin_hunk_0_@LoadFontFromImage:bb.a
  br i1 %i.e, label %.preheader207.lr.ph, label %._crit_edge226.thread

.preheader207.lr.ph:                              ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8              ; 3 uses
  %i.h = icmp sgt i32 %i.g, 0
  %i.i = trunc i32 %2 to i8                       ; 2 uses
  %i.j = trunc i32 %.sroa.7.0.extract.shift to i8 ; 2 uses
  %i.k = trunc i32 %.sroa.13.0.extract.shift to i8 ; 2 uses
  %wide.trip.count299 = zext nneg i32 %i.d to i64
  br i1 %i.h, label %.preheader207.us.preheader, label %._crit_edge226.thread

.preheader207.us.preheader:                       ; preds = %.preheader207.lr.ph
  %i.l = zext nneg i32 %i.g to i64                ; 2 uses
  br label %.preheader207.us

.preheader207.us:                                 ; preds = %.preheader207.us.preheader, %bb.j
  %indvars.iv296 = phi i64 [ 0, %.preheader207.us.preheader ], [ %indvars.iv.next297, %bb.j ] ; 6 uses
  %i.m = mul nuw nsw i64 %indvars.iv296, %i.l     ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %.preheader207.us, %bb.f
  %indvars.iv291 = phi i64 [ 0, %.preheader207.us ], [ %indvars.iv.next292, %bb.f ] ; 6 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv291 ; 4 uses
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.p, %i.i
  br i1 %i.q, label %bb.c, label %._crit_edge.us.split.loop.exit347

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.s = load i8, ptr %i.r, align 1
  %i.t = icmp eq i8 %i.s, %i.j
  br i1 %i.t, label %bb.d, label %._crit_edge.us.split.loop.exit345

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.v = load i8, ptr %i.u, align 1
  %i.w = icmp eq i8 %i.v, %i.k
  br i1 %i.w, label %bb.e, label %._crit_edge.us.split.loop.exit343

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i32
  %i.aa = icmp eq i32 %.sroa.19.0.extract.shift, %i.z
  br i1 %i.aa, label %bb.f, label %._crit_edge.us.split.loop.exit341

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %exitcond295.not = icmp eq i64 %indvars.iv.next292, %i.l
  br i1 %exitcond295.not, label %._crit_edge.us, label %bb.b

._crit_edge.us.split.loop.exit341:                ; preds = %bb.e
  %i.ab = trunc nuw nsw i64 %indvars.iv291 to i32
  br label %._crit_edge.us

._crit_edge.us.split.loop.exit343:                ; preds = %bb.d
  %i.ac = trunc nuw nsw i64 %indvars.iv291 to i32
  br label %._crit_edge.us

._crit_edge.us.split.loop.exit345:                ; preds = %bb.c
  %i.ad = trunc nuw nsw i64 %indvars.iv291 to i32
  br label %._crit_edge.us

._crit_edge.us.split.loop.exit347:                ; preds = %bb.b
  %i.ae = trunc nuw nsw i64 %indvars.iv291 to i32
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.f, %._crit_edge.us.split.loop.exit347, %._crit_edge.us.split.loop.exit345, %._crit_edge.us.split.loop.exit343, %._crit_edge.us.split.loop.exit341
  %.1.lcssa.us = phi i32 [ %i.ae, %._crit_edge.us.split.loop.exit347 ], [ %i.ad, %._crit_edge.us.split.loop.exit345 ], [ %i.ac, %._crit_edge.us.split.loop.exit343 ], [ %i.ab, %._crit_edge.us.split.loop.exit341 ], [ %i.g, %bb.f ] ; 6 uses
  %i.af = zext i32 %.1.lcssa.us to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.m
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.af ; 4 uses
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = icmp eq i8 %i.ai, %i.i
  br i1 %i.aj, label %bb.g, label %._crit_edge226.split.loop.exit361

bb.g:                                             ; preds = %._crit_edge.us
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = icmp eq i8 %i.al, %i.j
  br i1 %i.am, label %bb.h, label %._crit_edge226.split.loop.exit358

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = icmp eq i8 %i.ao, %i.k
  br i1 %i.ap, label %bb.i, label %._crit_edge226.split.loop.exit355

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 3
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i32
  %i.at = icmp eq i32 %.sroa.19.0.extract.shift, %i.as
  br i1 %i.at, label %bb.j, label %._crit_edge226.split.loop.exit352

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1 ; 2 uses
  %exitcond300.not = icmp eq i64 %indvars.iv.next297, %wide.trip.count299
  br i1 %exitcond300.not, label %._crit_edge226, label %.preheader207.us

._crit_edge226.split.loop.exit352:                ; preds = %bb.i
  %i.au = trunc nuw nsw i64 %indvars.iv296 to i32
  br label %._crit_edge226

._crit_edge226.split.loop.exit355:                ; preds = %bb.h
  %i.av = trunc nuw nsw i64 %indvars.iv296 to i32
  br label %._crit_edge226

._crit_edge226.split.loop.exit358:                ; preds = %bb.g
  %i.aw = trunc nuw nsw i64 %indvars.iv296 to i32
  br label %._crit_edge226

._crit_edge226.split.loop.exit361:                ; preds = %._crit_edge.us
  %i.ax = trunc nuw nsw i64 %indvars.iv296 to i32
  br label %._crit_edge226

._crit_edge226:                                   ; preds = %bb.j, %._crit_edge226.split.loop.exit361, %._crit_edge226.split.loop.exit358, %._crit_edge226.split.loop.exit355, %._crit_edge226.split.loop.exit352
  %.0184.lcssa = phi i32 [ %i.av, %._crit_edge226.split.loop.exit355 ], [ %i.aw, %._crit_edge226.split.loop.exit358 ], [ %i.au, %._crit_edge226.split.loop.exit352 ], [ %i.ax, %._crit_edge226.split.loop.exit361 ], [ %i.d, %bb.j ] ; 8 uses
  %i.ay = icmp eq i32 %.1.lcssa.us, 0
  %i.az = icmp eq i32 %.0184.lcssa, 0
  %or.cond = or i1 %i.az, %i.ay
  br i1 %or.cond, label %._crit_edge226.thread, label %.preheader206

.preheader206:                                    ; preds = %._crit_edge226
  %i.ba = icmp slt i32 %.0184.lcssa, %i.d
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bc = load i32, ptr %i.bb, align 8            ; 2 uses
  br i1 %i.ba, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader206
  %i.bd = trunc i32 %2 to i8
  %i.be = trunc i32 %.sroa.7.0.extract.shift to i8
  %i.bf = trunc i32 %.sroa.13.0.extract.shift to i8
  %i.bg = sext i32 %.0184.lcssa to i64
  %i.bh = sext i32 %i.bc to i64
  %i.bi = sext i32 %.1.lcssa.us to i64
  %i.bj = sub i32 %i.d, %.0184.lcssa              ; 2 uses
  %wide.trip.count304 = zext i32 %i.bj to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.b, i64 %i.bi
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %.critedge198
  %indvars.iv301 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next302, %.critedge198 ] ; 3 uses
  %i.bk = add nuw nsw i64 %indvars.iv301, %i.bg
  %i.bl = mul nsw i64 %i.bk, %i.bh
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bl ; 4 uses
  %i.bm = load i8, ptr %gep, align 1
  %i.bn = icmp eq i8 %i.bm, %i.bd
  br i1 %i.bn, label %bb.l, label %.critedge198

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %gep, i64 1
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = icmp eq i8 %i.bp, %i.be
  br i1 %i.bq, label %bb.m, label %.critedge198

bb.m:                                             ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %gep, i64 2
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = icmp eq i8 %i.bs, %i.bf
  br i1 %i.bt, label %bb.n, label %.critedge198

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %gep, i64 3
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = zext i8 %i.bv to i32
  %.not = icmp eq i32 %.sroa.19.0.extract.shift, %i.bw
  br i1 %.not, label %.critedge.split.loop.exit, label %.critedge198

.critedge198:                                     ; preds = %bb.m, %bb.l, %bb.k, %bb.n
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 1 ; 2 uses
  %exitcond305.not = icmp eq i64 %indvars.iv.next302, %wide.trip.count304
  br i1 %exitcond305.not, label %.critedge, label %bb.k

.critedge.split.loop.exit:                        ; preds = %bb.n
  %indvars303.le = trunc i64 %indvars.iv301 to i32 ; 2 uses
  %i.bx = add nuw nsw i32 %.0184.lcssa, %indvars303.le
  br label %.critedge

.critedge:                                        ; preds = %.critedge198, %.critedge.split.loop.exit
  %.0192.lcssa.ph = phi i32 [ %indvars303.le, %.critedge.split.loop.exit ], [ %i.bj, %.critedge198 ]
  %.lcssa208.ph = phi i32 [ %i.bx, %.critedge.split.loop.exit ], [ %i.d, %.critedge198 ] ; 2 uses
  %i.by = uitofp nneg i32 %.0192.lcssa.ph to float
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ca = load i32, ptr %i.bz, align 8            ; 8 uses
  %i.cb = icmp slt i32 %.1.lcssa.us, %i.ca
  %i.cc = trunc i32 %2 to i8                      ; 2 uses
  %i.cd = trunc i32 %.sroa.7.0.extract.shift to i8 ; 2 uses
  %i.ce = trunc i32 %.sroa.13.0.extract.shift to i8 ; 2 uses
  br i1 %i.cb, label %.preheader205.us.preheader, label %.preheader205

.preheader205.us.preheader:                       ; preds = %.critedge
  %i.cf = sext i32 %i.ca to i64
  br label %.preheader205.us

.preheader205.us:                                 ; preds = %.preheader205.us.preheader, %.critedge3.us
  %i.cg = phi i32 [ %i.dy, %.critedge3.us ], [ %.0184.lcssa, %.preheader205.us.preheader ] ; 2 uses
  %.0189277.us = phi i32 [ %i.dw, %.critedge3.us ], [ 0, %.preheader205.us.preheader ]
  %.0190276.us = phi i64 [ %.1191.lcssa.us.in, %.critedge3.us ], [ 0, %.preheader205.us.preheader ]
  %i.ch = mul nsw i32 %i.ca, %i.cg
  %i.ci = uitofp nneg i32 %i.cg to float
  %sext = shl i64 %.0190276.us, 32
  %7 = ashr exact i64 %sext, 32
  br label %bb.o

bb.o:                                             ; preds = %.preheader205.us, %.critedge5.us
  %indvars.iv310 = phi i64 [ %7, %.preheader205.us ], [ %indvars.iv.next311, %.critedge5.us ] ; 5 uses
  %.1188271.us.a = phi i32 [ %.1.lcssa.us, %.preheader205.us ], [ %i.du, %.critedge5.us ] ; 6 uses
  %i.cj = add nsw i32 %i.ch, %.1188271.us.a
  %i.ck = sext i32 %i.cj to i64                   ; 2 uses
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ck ; 4 uses
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = icmp eq i8 %i.cm, %i.cc
  br i1 %i.cn, label %bb.p, label %.critedge200.us

bb.p:                                             ; preds = %bb.o
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = icmp eq i8 %i.cp, %i.cd
  br i1 %i.cq, label %bb.q, label %.critedge200.us

bb.q:                                             ; preds = %bb.p
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = icmp eq i8 %i.cs, %i.ce
  br i1 %i.ct, label %bb.r, label %.critedge200.us

bb.r:                                             ; preds = %bb.q
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cl, i64 3
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = zext i8 %i.cv to i32
  %.not203.us = icmp eq i32 %.sroa.19.0.extract.shift, %i.cw
  br i1 %.not203.us, label %.critedge3.us, label %.critedge200.us

.critedge200.us:                                  ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %8 = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv310
  %9 = trunc i64 %indvars.iv310 to i32
  %10 = add i32 %3, %9
  store i32 %10, ptr %8, align 4
  %i.cx = sitofp i32 %.1188271.us.a to float
  %i.cy = getelementptr inbounds [16 x i8], ptr %4, i64 %indvars.iv310 ; 4 uses
  store float %i.cx, ptr %i.cy, align 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store float %i.ci, ptr %i.cz, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  store float %i.by, ptr %i.da, align 4
  %i.db = icmp slt i32 %.1188271.us.a, %i.ca
  br i1 %i.db, label %.lr.ph266.us.preheader, label %.critedge5.us

.lr.ph266.us.preheader:                           ; preds = %.critedge200.us
  %i.dc = sext i32 %.1188271.us.a to i64
  %i.dd = sub i32 %i.ca, %.1188271.us.a
  %i.de = sub nsw i64 %i.cf, %i.dc
  %invariant.gep372 = getelementptr [4 x i8], ptr %i.b, i64 %i.ck
  br label %.lr.ph266.us

.lr.ph266.us:                                     ; preds = %.lr.ph266.us.preheader, %.critedge202.us
  %indvars.iv306 = phi i64 [ 0, %.lr.ph266.us.preheader ], [ %indvars.iv.next307, %.critedge202.us ] ; 3 uses
  %gep373 = getelementptr [4 x i8], ptr %invariant.gep372, i64 %indvars.iv306 ; 4 uses
  %i.df = load i8, ptr %gep373, align 1
  %i.dg = icmp eq i8 %i.df, %i.cc
  br i1 %i.dg, label %bb.s, label %.critedge202.us

bb.s:                                             ; preds = %.lr.ph266.us
  %i.dh = getelementptr inbounds nuw i8, ptr %gep373, i64 1
  %i.di = load i8, ptr %i.dh, align 1
  %i.dj = icmp eq i8 %i.di, %i.cd
  br i1 %i.dj, label %bb.t, label %.critedge202.us

bb.t:                                             ; preds = %bb.s
  %i.dk = getelementptr inbounds nuw i8, ptr %gep373, i64 2
  %i.dl = load i8, ptr %i.dk, align 1
  %i.dm = icmp eq i8 %i.dl, %i.ce
  br i1 %i.dm, label %bb.u, label %.critedge202.us

bb.u:                                             ; preds = %bb.t
  %i.dn = getelementptr inbounds nuw i8, ptr %gep373, i64 3
  %i.do = load i8, ptr %i.dn, align 1
  %i.dp = zext i8 %i.do to i32
  %.not204.us = icmp eq i32 %.sroa.19.0.extract.shift, %i.dp
  br i1 %.not204.us, label %.critedge5.us.loopexit.split.loop.exit370, label %.critedge202.us

.critedge202.us:                                  ; preds = %bb.u, %bb.t, %bb.s, %.lr.ph266.us
  %indvars.iv.next307 = add nuw nsw i64 %indvars.iv306, 1 ; 2 uses
  %exitcond309.not = icmp eq i64 %indvars.iv.next307, %i.de
  br i1 %exitcond309.not, label %.critedge5.us, label %.lr.ph266.us

.critedge5.us.loopexit.split.loop.exit370:        ; preds = %bb.u
  %i.dq = trunc nuw nsw i64 %indvars.iv306 to i32
  br label %.critedge5.us

.critedge5.us:                                    ; preds = %.critedge202.us, %.critedge5.us.loopexit.split.loop.exit370, %.critedge200.us
  %.0186.lcssa.us = phi i32 [ 0, %.critedge200.us ], [ %i.dq, %.critedge5.us.loopexit.split.loop.exit370 ], [ %i.dd, %.critedge202.us ] ; 2 uses
  %i.dr = uitofp nneg i32 %.0186.lcssa.us to float
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store float %i.dr, ptr %i.ds, align 8
  %indvars.iv.next311 = add nsw i64 %indvars.iv310, 1 ; 2 uses
  %i.dt = add i32 %.1188271.us.a, %.1.lcssa.us
  %i.du = add i32 %i.dt, %.0186.lcssa.us          ; 2 uses
  %i.dv = icmp slt i32 %i.du, %i.ca
  br i1 %i.dv, label %bb.o, label %.critedge3.us

.critedge3.us:                                    ; preds = %bb.r, %.critedge5.us
  %.1191.lcssa.us.in = phi i64 [ %indvars.iv.next311, %.critedge5.us ], [ %indvars.iv310, %bb.r ] ; 2 uses
  %i.dw = add nuw nsw i32 %.0189277.us, 1         ; 2 uses
  %i.dx = mul nuw nsw i32 %i.dw, %.lcssa208.ph
  %i.dy = add nuw nsw i32 %i.dx, %.0184.lcssa     ; 2 uses
  %i.dz = icmp slt i32 %i.dy, %i.d
  br i1 %i.dz, label %.preheader205.us, label %.preheader.loopexit

.preheader205:                                    ; preds = %.critedge, %.preheader205
  %.0189277 = phi i32 [ %i.ea, %.preheader205 ], [ 0, %.critedge ]
  %i.ea = add nuw nsw i32 %.0189277, 1            ; 2 uses
  %i.eb = mul nuw nsw i32 %i.ea, %.lcssa208.ph
  %i.ec = add nuw nsw i32 %i.eb, %.0184.lcssa
  %i.ed = icmp slt i32 %i.ec, %i.d
  br i1 %i.ed, label %.preheader205, label %.preheader

.preheader.loopexit:                              ; preds = %.critedge3.us
  %.1191.lcssa.us = trunc i64 %.1191.lcssa.us.in to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader205, %.preheader206, %.preheader.loopexit
  %i.ee = phi i32 [ %i.bc, %.preheader206 ], [ %i.ca, %.preheader.loopexit ], [ %i.ca, %.preheader205 ] ; 2 uses
  %.0190.lcssa = phi i32 [ 0, %.preheader206 ], [ %.1191.lcssa.us, %.preheader.loopexit ], [ 0, %.preheader205 ] ; 4 uses
  %i.ef = mul nsw i32 %i.ee, %i.d                 ; 2 uses
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %.lr.ph281, label %._crit_edge

.lr.ph281:                                        ; preds = %.preheader
  %i.eh = trunc i32 %2 to i8
  %i.ei = trunc i32 %.sroa.7.0.extract.shift to i8
  %i.ej = trunc i32 %.sroa.13.0.extract.shift to i8
  %wide.trip.count317 = zext nneg i32 %i.ef to i64
  br label %bb.v

._crit_edge:                                      ; preds = %bb.aa, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  store ptr %i.b, ptr %5, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.ee, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %i.d, ptr %i.el, align 4
  %i.em = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 1, ptr %i.em, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 7, ptr %i.en, align 4
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @LoadTextureFromImage(ptr dead_on_unwind nonnull writable sret(%struct.Texture) align 4 %i.eo, ptr noundef nonnull byval(%struct.Image) align 8 %5) #39
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.0190.lcssa, ptr %i.ep, align 4
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.eq, align 8
  %i.er = sext i32 %.0190.lcssa to i64            ; 2 uses
  %i.es = mul nsw i64 %i.er, 40
  %i.et = tail call noalias ptr @malloc(i64 noundef %i.es) #42 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.et, ptr %i.eu, align 8
  %i.ev = shl nsw i64 %i.er, 4
  %i.ew = tail call noalias ptr @malloc(i64 noundef %i.ev) #42 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ew, ptr %i.ex, align 8
  %i.ey = icmp sgt i32 %.0190.lcssa, 0
  br i1 %i.ey, label %.lr.ph285.preheader, label %._crit_edge286

.lr.ph285.preheader:                              ; preds = %._crit_edge
  %wide.trip.count323 = zext nneg i32 %.0190.lcssa to i64
  br label %.lr.ph285

bb.v:                                             ; preds = %.lr.ph281, %bb.aa
  %indvars.iv313 = phi i64 [ 0, %.lr.ph281 ], [ %indvars.iv.next314, %bb.aa ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv313 ; 5 uses
  %i.fa = load i8, ptr %i.ez, align 1
  %i.fb = icmp eq i8 %i.fa, %i.eh
  br i1 %i.fb, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  %i.fd = load i8, ptr %i.fc, align 1
  %i.fe = icmp eq i8 %i.fd, %i.ei
  br i1 %i.fe, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 2
  %i.fg = load i8, ptr %i.ff, align 1
  %i.fh = icmp eq i8 %i.fg, %i.ej
  br i1 %i.fh, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ez, i64 3
  %i.fj = load i8, ptr %i.fi, align 1
  %i.fk = zext i8 %i.fj to i32
  %i.fl = icmp eq i32 %.sroa.19.0.extract.shift, %i.fk
  br i1 %i.fl, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.ez, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.v, %bb.w, %bb.x, %bb.y, %bb.z
  %indvars.iv.next314 = add nuw nsw i64 %indvars.iv313, 1 ; 2 uses
  %exitcond318.not = icmp eq i64 %indvars.iv.next314, %wide.trip.count317
  br i1 %exitcond318.not, label %._crit_edge, label %bb.v

._crit_edge286:                                   ; preds = %.lr.ph285, %._crit_edge
  call void @UnloadImage(ptr noundef nonnull byval(%struct.Image) align 8 %5) #39
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  %i.fn = load float, ptr %i.fm, align 4
  %i.fo = fptosi float %i.fn to i32
  store i32 %i.fo, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br label %._crit_edge226.thread

.lr.ph285:                                        ; preds = %.lr.ph285.preheader, %.lr.ph285
  %indvars.iv319 = phi i64 [ 0, %.lr.ph285.preheader ], [ %indvars.iv.next320, %.lr.ph285 ] ; 5 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv319
  %i.fq = load i32, ptr %i.fp, align 4
  %i.fr = getelementptr inbounds nuw [40 x i8], ptr %i.et, i64 %indvars.iv319 ; 5 uses
  store i32 %i.fq, ptr %i.fr, align 8
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %i.ew, i64 %indvars.iv319
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv319 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fs, ptr noundef nonnull align 16 dereferenceable(16) %i.ft, i64 16, i1 false)
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  store i32 0, ptr %i.fu, align 4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  store i32 0, ptr %i.fv, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 12
  store i32 0, ptr %i.fw, align 4
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  %i.fy = load <2 x float>, ptr %i.ft, align 16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.ga = load <2 x float>, ptr %i.fz, align 8
  call void @ImageFromImage(ptr dead_on_unwind nonnull writable sret(%struct.Image) align 8 %6, ptr noundef nonnull byval(%struct.Image) align 8 %5, <2 x float> %i.fy, <2 x float> %i.ga) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fx, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  %indvars.iv.next320 = add nuw nsw i64 %indvars.iv319, 1 ; 2 uses
  %exitcond324.not = icmp eq i64 %indvars.iv.next320, %wide.trip.count323
  br i1 %exitcond324.not, label %._crit_edge286, label %.lr.ph285

._crit_edge226.thread:                            ; preds = %.preheader207.lr.ph, %bb.a, %._crit_edge226, %._crit_edge286
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  ret void
}

declare void @SetTextureFilter(ptr noundef byval(%struct.Texture) align 8, i32 noundef) local_unnamed_addr #8

declare ptr @LoadFileData(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define void @LoadFontFromMemory(ptr dead_on_unwind noalias nofree writable sret(%struct.Font) align 8 captures(none) initializes((0, 40)) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef captures(address_is_null) %5, i32 noundef %6) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 8 uses
  %7 = alloca %struct.Image, align 8              ; 6 uses
  %8 = alloca %struct.Image, align 8              ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) @TextToLower.buffer, i8 0, i64 1024, i1 false)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %TextToLower.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %bb.c
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %bb.c ], [ 0, %bb.a ] ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i
  %i.c = load i8, ptr %i.b, align 1               ; 4 uses
  %.not16.i = icmp eq i8 %i.c, 0
  br i1 %.not16.i, label %TextToLower.exit, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.d = add i8 %i.c, -65
  %or.cond.i = icmp ult i8 %i.d, 26
  %i.e = or disjoint i8 %i.c, 32
  %spec.select.i = select i1 %or.cond.i, i8 %i.e, i8 %i.c
  %i.f = getelementptr inbounds nuw i8, ptr @TextToLower.buffer, i64 %indvars.iv.i
  store i8 %spec.select.i, ptr %i.f, align 2
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 1022
  br i1 %exitcond.not.i, label %TextToLower.exit, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.i
  %i.h = load i8, ptr %i.g, align 1               ; 4 uses
  %.not16.i.1 = icmp eq i8 %i.h, 0
  br i1 %.not16.i.1, label %TextToLower.exit, label %bb.c

bb.c:                                             ; preds = %.preheader.i.1
  %i.i = add i8 %i.h, -65
  %or.cond.i.1 = icmp ult i8 %i.i, 26
  %i.j = or disjoint i8 %i.h, 32
  %spec.select.i.1 = select i1 %or.cond.i.1, i8 %i.j, i8 %i.h
  %i.k = getelementptr inbounds nuw i8, ptr @TextToLower.buffer, i64 %indvars.iv.next.i
  store i8 %spec.select.i.1, ptr %i.k, align 1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  br label %.preheader.i

TextToLower.exit:                                 ; preds = %.preheader.i, %bb.b, %.preheader.i.1, %bb.a
  %i.l = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @TextToLower.buffer, i64 noundef 15) #39 ; 0 uses
  store i32 %4, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.a, align 16
  %i.o = xor i32 %i.n, 1718907950
  %i.p = getelementptr i8, ptr %i.a, i64 4
  %i.q = load i8, ptr %i.p, align 4
  %i.r = zext i8 %i.q to i32
  %i.s = or i32 %i.o, %i.r
  %i.t = icmp ne i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %TextToLower.exit
  %i.w = load i32, ptr %i.a, align 16
  %i.x = xor i32 %i.w, 1718906670
  %i.y = getelementptr i8, ptr %i.a, i64 4
  %i.z = load i8, ptr %i.y, align 4
  %i.aa = zext i8 %i.z to i32
  %i.ab = or i32 %i.x, %i.aa
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = zext i1 %i.ac to i32
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %.thread

bb.e:                                             ; preds = %TextToLower.exit, %bb.d
end_hunk_0
begin_hunk_1_@LoadUTF8:bb.a
  %i.g = zext nneg i32 %i.f to i64
  %i.h = tail call noalias ptr @calloc(i64 noundef %i.g, i64 noundef 1) #40 ; 2 uses
  %i.i = zext nneg i32 %i.aw to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %i.e, i64 %i.i, i1 false)
  tail call void @free(ptr noundef %i.e) #39
  br label %bb.l

bb.d:                                             ; preds = %bb.b, %CodepointToUTF8.exit
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %CodepointToUTF8.exit ] ; 2 uses
  %.02023 = phi i32 [ 0, %bb.b ], [ %i.aw, %CodepointToUTF8.exit ] ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4              ; 14 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) @CodepointToUTF8.utf8, i8 0, i64 6, i1 false)
  %i.l = icmp slt i32 %i.k, 128
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = trunc i32 %i.k to i8
  store i8 %i.m, ptr @CodepointToUTF8.utf8, align 4
  br label %CodepointToUTF8.exit

bb.f:                                             ; preds = %bb.d
  %i.n = icmp samesign ult i32 %i.k, 2048
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = lshr i32 %i.k, 6
  %i.p = trunc nuw nsw i32 %i.o to i8
  %i.q = or disjoint i8 %i.p, -64
  store i8 %i.q, ptr @CodepointToUTF8.utf8, align 4
  %i.r = trunc i32 %i.k to i8
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  store i8 %i.t, ptr getelementptr inbounds nuw (i8, ptr @CodepointToUTF8.utf8, i64 1), align 1
  br label %CodepointToUTF8.exit

bb.h:                                             ; preds = %bb.f
  %i.u = icmp samesign ult i32 %i.k, 65536
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = lshr i32 %i.k, 12
  %i.w = trunc nuw nsw i32 %i.v to i8
  %i.x = or disjoint i8 %i.w, -32
  store i8 %i.x, ptr @CodepointToUTF8.utf8, align 4
  %i.y = lshr i32 %i.k, 6
  %i.z = trunc i32 %i.y to i8
  %i.aa = and i8 %i.z, 63
  %i.ab = or disjoint i8 %i.aa, -128
  store i8 %i.ab, ptr getelementptr inbounds nuw (i8, ptr @CodepointToUTF8.utf8, i64 1), align 1
  %i.ac = trunc i32 %i.k to i8
  %i.ad = and i8 %i.ac, 63
  %i.ae = or disjoint i8 %i.ad, -128
  store i8 %i.ae, ptr getelementptr inbounds nuw (i8, ptr @CodepointToUTF8.utf8, i64 2), align 2
  br label %CodepointToUTF8.exit

bb.j:                                             ; preds = %bb.h
  %i.af = icmp samesign ult i32 %i.k, 1114112
  br i1 %i.af, label %bb.k, label %CodepointToUTF8.exit

bb.k:                                             ; preds = %bb.j
  %i.ag = lshr i32 %i.k, 18
  %i.ah = trunc nuw nsw i32 %i.ag to i8
  %i.ai = lshr i32 %i.k, 12
  %i.aj = trunc i32 %i.ai to i8
  %i.ak = lshr i32 %i.k, 6
  %i.al = trunc i32 %i.ak to i8
  %i.am = trunc i32 %i.k to i8
  %i.an = insertelement <4 x i8> poison, i8 %i.ah, i64 0
  %i.ao = insertelement <4 x i8> %i.an, i8 %i.aj, i64 1
  %i.ap = insertelement <4 x i8> %i.ao, i8 %i.al, i64 2
  %i.aq = insertelement <4 x i8> %i.ap, i8 %i.am, i64 3
  %i.ar = and <4 x i8> %i.aq, <i8 -1, i8 63, i8 63, i8 63>
  %i.as = or disjoint <4 x i8> %i.ar, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.as, ptr @CodepointToUTF8.utf8, align 4
  br label %CodepointToUTF8.exit

CodepointToUTF8.exit:                             ; preds = %bb.e, %bb.g, %bb.i, %bb.j, %bb.k
  %.0.i = phi i32 [ 1, %bb.e ], [ 2, %bb.g ], [ 3, %bb.i ], [ 4, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %i.at = zext nneg i32 %.02023 to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.at
  %i.av = zext nneg i32 %.0.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr nonnull align 4 @CodepointToUTF8.utf8, i64 %i.av, i1 false)
  %i.aw = add nuw nsw i32 %.0.i, %.02023          ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.c, label %bb.d

bb.l:                                             ; preds = %bb.c, %bb.a
  %.0 = phi ptr [ %i.h, %bb.c ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull ptr @CodepointToUTF8(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #31 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) @CodepointToUTF8.utf8, i8 0, i64 6, i1 false)
  %i.a = icmp slt i32 %0, 128
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = trunc i32 %0 to i8
  store i8 %i.b, ptr @CodepointToUTF8.utf8, align 4
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %0, 2048
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = lshr i32 %0, 6
  %i.e = trunc nuw nsw i32 %i.d to i8
  %i.f = or disjoint i8 %i.e, -64
  store i8 %i.f, ptr @CodepointToUTF8.utf8, align 4
  %i.g = trunc i32 %0 to i8
  %i.h = and i8 %i.g, 63
  %i.i = or disjoint i8 %i.h, -128
  store i8 %i.i, ptr getelementptr inbounds nuw (i8, ptr @CodepointToUTF8.utf8, i64 1), align 1
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.j = icmp samesign ult i32 %0, 65536
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = lshr i32 %0, 12
  %i.l = trunc nuw nsw i32 %i.k to i8
  %i.m = or disjoint i8 %i.l, -32
  store i8 %i.m, ptr @CodepointToUTF8.utf8, align 4
  %i.n = lshr i32 %0, 6
  %i.o = trunc i32 %i.n to i8
  %i.p = and i8 %i.o, 63
  %i.q = or disjoint i8 %i.p, -128
  store i8 %i.q, ptr getelementptr inbounds nuw (i8, ptr @CodepointToUTF8.utf8, i64 1), align 1
  %i.r = trunc i32 %0 to i8
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  store i8 %i.t, ptr getelementptr inbounds nuw (i8, ptr @CodepointToUTF8.utf8, i64 2), align 2
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.u = icmp samesign ult i32 %0, 1114112
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = lshr i32 %0, 18
  %i.w = trunc nuw nsw i32 %i.v to i8
  %i.x = lshr i32 %0, 12
  %i.y = trunc i32 %i.x to i8
  %i.z = lshr i32 %0, 6
  %i.aa = trunc i32 %i.z to i8
  %i.ab = trunc i32 %0 to i8
  %i.ac = insertelement <4 x i8> poison, i8 %i.w, i64 0
  %i.ad = insertelement <4 x i8> %i.ac, i8 %i.y, i64 1
  %i.ae = insertelement <4 x i8> %i.ad, i8 %i.aa, i64 2
  %i.af = insertelement <4 x i8> %i.ae, i8 %i.ab, i64 3
  %i.ag = and <4 x i8> %i.af, <i8 -1, i8 63, i8 63, i8 63>
  %i.ah = or disjoint <4 x i8> %i.ag, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.ah, ptr @CodepointToUTF8.utf8, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.g, %bb.h, %bb.f, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.h ], [ 0, %bb.g ]
  store i32 %.0, ptr %1, align 4
  ret ptr @CodepointToUTF8.utf8
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @UnloadUTF8(ptr noundef captures(none) %0) local_unnamed_addr #32 {
bb.a:
  tail call void @free(ptr noundef %0) #39
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @LoadCodepoints(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #25 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.n, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.0.i = phi i32 [ %i.d, %.preheader.i ], [ 0, %bb.a ] ; 5 uses
  %i.a = zext i32 %.0.i to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1
  %.not4.i = icmp eq i8 %i.c, 0
  %i.d = add i32 %.0.i, 1
  br i1 %.not4.i, label %TextLength.exit, label %.preheader.i

TextLength.exit:                                  ; preds = %.preheader.i
  %i.e = sext i32 %.0.i to i64
  %i.f = tail call noalias ptr @calloc(i64 noundef %i.e, i64 noundef 4) #40 ; 3 uses
  %i.g = icmp sgt i32 %.0.i, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %TextLength.exit
  %i.h = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #40
  br label %._crit_edge34

._crit_edge:                                      ; preds = %GetCodepointNext.exit
  %2 = trunc nuw i64 %indvars.iv.next to i32
  %i.i = tail call noalias ptr @calloc(i64 noundef %indvars.iv.next, i64 noundef 4) #40 ; 2 uses
  %i.j = shl nuw nsw i64 %indvars.iv.next, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.i, ptr noundef nonnull align 4 dereferenceable(1) %i.f, i64 %i.j, i1 false)
  br label %._crit_edge34

.lr.ph:                                           ; preds = %TextLength.exit, %GetCodepointNext.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %GetCodepointNext.exit ], [ 0, %TextLength.exit ] ; 2 uses
  %.02330.a = phi i32 [ %i.bp, %GetCodepointNext.exit ], [ 0, %TextLength.exit ] ; 2 uses
  %i.k = zext nneg i32 %.02330.a to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k ; 7 uses
  %i.m = load i8, ptr %i.l, align 1               ; 2 uses
  %i.n = sext i8 %i.m to i32                      ; 7 uses
  %i.o = and i32 %i.n, 248
  %i.p = icmp eq i32 %i.o, 240
  br i1 %i.p, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.r = load i8, ptr %i.q, align 1
  %i.s = sext i8 %i.r to i32                      ; 2 uses
  %i.t = and i32 %i.s, 192
  %.not36.i = icmp eq i32 %i.t, 128
  br i1 %.not36.i, label %bb.c, label %GetCodepointNext.exit

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.v = load i8, ptr %i.u, align 1
  %i.w = sext i8 %i.v to i32                      ; 2 uses
  %i.x = and i32 %i.w, 192
  %.not37.i = icmp eq i32 %i.x, 128
  br i1 %.not37.i, label %bb.d, label %GetCodepointNext.exit

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i32                     ; 2 uses
  %i.ab = and i32 %i.aa, 192
  %.not38.i = icmp eq i32 %i.ab, 128
  br i1 %.not38.i, label %bb.e, label %GetCodepointNext.exit

bb.e:                                             ; preds = %bb.d
  %i.ac = shl nsw i32 %i.n, 18
  %i.ad = and i32 %i.ac, 1835008
  %i.ae = shl nsw i32 %i.s, 12
  %i.af = and i32 %i.ae, 258048
  %i.ag = or disjoint i32 %i.af, %i.ad
  %i.ah = shl nsw i32 %i.w, 6
  %i.ai = and i32 %i.ah, 4032
  %i.aj = or disjoint i32 %i.ag, %i.ai
  %i.ak = and i32 %i.aa, 63
  %i.al = or disjoint i32 %i.aj, %i.ak
  br label %GetCodepointNext.exit

bb.f:                                             ; preds = %.lr.ph
  %i.am = and i32 %i.n, 240
  %i.an = icmp eq i32 %i.am, 224
  br i1 %i.an, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = sext i8 %i.ap to i32                    ; 2 uses
  %i.ar = and i32 %i.aq, 192
  %.not34.i = icmp eq i32 %i.ar, 128
  br i1 %.not34.i, label %bb.h, label %GetCodepointNext.exit

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.at = load i8, ptr %i.as, align 1
  %i.au = zext i8 %i.at to i32                    ; 2 uses
  %i.av = and i32 %i.au, 192
  %.not35.i = icmp eq i32 %i.av, 128
  br i1 %.not35.i, label %bb.i, label %GetCodepointNext.exit

bb.i:                                             ; preds = %bb.h
  %i.aw = shl nsw i32 %i.n, 12
  %i.ax = and i32 %i.aw, 61440
  %i.ay = shl nsw i32 %i.aq, 6
  %i.az = and i32 %i.ay, 4032
  %i.ba = or disjoint i32 %i.az, %i.ax
  %i.bb = and i32 %i.au, 63
  %i.bc = or disjoint i32 %i.ba, %i.bb
  br label %GetCodepointNext.exit

bb.j:                                             ; preds = %bb.f
  %i.bd = and i32 %i.n, 224
  %i.be = icmp eq i32 %i.bd, 192
  br i1 %i.be, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = zext i8 %i.bg to i32                    ; 2 uses
  %i.bi = and i32 %i.bh, 192
  %.not.i27 = icmp eq i32 %i.bi, 128
  br i1 %.not.i27, label %bb.l, label %GetCodepointNext.exit

bb.l:                                             ; preds = %bb.k
  %i.bj = shl nsw i32 %i.n, 6
  %i.bk = and i32 %i.bj, 1984
  %i.bl = and i32 %i.bh, 63
  %i.bm = or disjoint i32 %i.bl, %i.bk
  br label %GetCodepointNext.exit

bb.m:                                             ; preds = %bb.j
  %i.bn = icmp sgt i8 %i.m, -1
  %spec.select.i = select i1 %i.bn, i32 %i.n, i32 63
  br label %GetCodepointNext.exit

GetCodepointNext.exit:                            ; preds = %bb.e, %bb.i, %bb.l, %bb.b, %bb.c, %bb.d, %bb.g, %bb.h, %bb.k, %bb.m
  %.028 = phi i32 [ 1, %bb.m ], [ 1, %bb.k ], [ 1, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ], [ 1, %bb.h ], [ 1, %bb.g ], [ 4, %bb.e ], [ 2, %bb.l ], [ 3, %bb.i ]
  %.032.i = phi i32 [ %spec.select.i, %bb.m ], [ 63, %bb.k ], [ 63, %bb.d ], [ 63, %bb.c ], [ 63, %bb.b ], [ 63, %bb.h ], [ 63, %bb.g ], [ %i.al, %bb.e ], [ %i.bm, %bb.l ], [ %i.bc, %bb.i ]
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  store i32 %.032.i, ptr %i.bo, align 4
  %i.bp = add nuw nsw i32 %.028, %.02330.a        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.bq = icmp slt i32 %i.bp, %.0.i
  br i1 %i.bq, label %.lr.ph, label %._crit_edge

._crit_edge34:                                    ; preds = %._crit_edge.thread, %._crit_edge
  %i.br = phi ptr [ %i.h, %._crit_edge.thread ], [ %i.i, %._crit_edge ]
  %.024.lcssa43 = phi i32 [ 0, %._crit_edge.thread ], [ %2, %._crit_edge ]
  tail call void @free(ptr noundef %i.f) #39
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge34, %bb.a
  %.025 = phi ptr [ %i.br, %._crit_edge34 ], [ null, %bb.a ]
  %.1 = phi i32 [ %.024.lcssa43, %._crit_edge34 ], [ 0, %bb.a ]
  store i32 %.1, ptr %1, align 4
  ret ptr %.025
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @UnloadCodepoints(ptr noundef captures(none) %0) local_unnamed_addr #32 {
bb.a:
  tail call void @free(ptr noundef %0) #39
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @GetCodepointCount(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #16 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  %.not812 = icmp eq i8 %i.a, 0
  br i1 %.not812, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %GetCodepointNext.exit
  %i.b = phi i8 [ %i.t, %GetCodepointNext.exit ], [ %i.a, %.preheader ]
  %.014 = phi ptr [ %i.r, %GetCodepointNext.exit ], [ %0, %.preheader ] ; 5 uses
  %.0613 = phi i32 [ %i.s, %GetCodepointNext.exit ], [ 0, %.preheader ]
  %i.c = zext i8 %i.b to i32                      ; 3 uses
  %i.d = and i32 %i.c, 248
  %i.e = icmp eq i32 %i.d, 240
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.014, i64 1
  %i.g = load i8, ptr %i.f, align 1
  %.not36.i = icmp slt i8 %i.g, -64
  br i1 %.not36.i, label %bb.c, label %GetCodepointNext.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.014, i64 2
  %i.i = load i8, ptr %i.h, align 1
  %.not37.i = icmp slt i8 %i.i, -64
  br i1 %.not37.i, label %GetCodepointNext.exit.sink.split, label %GetCodepointNext.exit

bb.d:                                             ; preds = %.lr.ph
  %i.j = and i32 %i.c, 240
  %i.k = icmp eq i32 %i.j, 224
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 1
  %i.m = load i8, ptr %i.l, align 1
  %.not34.i = icmp slt i8 %i.m, -64
  br i1 %.not34.i, label %GetCodepointNext.exit.sink.split, label %GetCodepointNext.exit

bb.f:                                             ; preds = %bb.d
  %i.n = and i32 %i.c, 224
  %i.o = icmp eq i32 %i.n, 192
  br i1 %i.o, label %GetCodepointNext.exit.sink.split, label %GetCodepointNext.exit

GetCodepointNext.exit.sink.split:                 ; preds = %bb.f, %bb.e, %bb.c
  %.sink19 = phi i64 [ 2, %bb.e ], [ 3, %bb.c ], [ 1, %bb.f ]
  %.sink = phi i64 [ 3, %bb.e ], [ 4, %bb.c ], [ 2, %bb.f ]
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 %.sink19
  %i.q = load i8, ptr %i.p, align 1
  %.not.i = icmp slt i8 %i.q, -64
  %spec.select11 = select i1 %.not.i, i64 %.sink, i64 1
  br label %GetCodepointNext.exit

GetCodepointNext.exit:                            ; preds = %GetCodepointNext.exit.sink.split, %bb.f, %bb.b, %bb.c, %bb.e
  %.09 = phi i64 [ 1, %bb.e ], [ 1, %bb.b ], [ 1, %bb.f ], [ 1, %bb.c ], [ %spec.select11, %GetCodepointNext.exit.sink.split ]
  %i.r = getelementptr inbounds nuw i8, ptr %.014, i64 %.09 ; 2 uses
  %i.s = add i32 %.0613, 1                        ; 2 uses
  %i.t = load i8, ptr %i.r, align 1               ; 2 uses
  %.not8 = icmp eq i8 %i.t, 0
  br i1 %.not8, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %GetCodepointNext.exit, %.preheader, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %.preheader ], [ %i.s, %GetCodepointNext.exit ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 2097152) i32 @GetCodepoint(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #0 {
bb.a:
  store i32 1, ptr %1, align 4
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1                 ; 10 uses
  %i.c = zext i8 %i.b to i32                      ; 7 uses
  %i.d = icmp sgt i8 %i.b, -1
  br i1 %i.d, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %i.c, 224
  %i.f = icmp eq i32 %i.e, 192
  br i1 %i.f, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %.mask121 = and i32 %i.i, 192
  %.not120 = icmp eq i32 %.mask121, 128
  br i1 %.not120, label %bb.e, label %.critedge.critedge

.critedge.critedge:                               ; preds = %bb.d
  store i32 2, ptr %1, align 4
  br label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.j = add nsw i8 %i.b, 62
  %or.cond = icmp ult i8 %i.j, 30
  br i1 %or.cond, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.k = shl nuw nsw i32 %i.c, 6
  %i.l = and i32 %i.k, 1984
  %i.m = and i32 %i.i, 63
  %i.n = or disjoint i32 %i.m, %i.l
  store i32 2, ptr %1, align 4
  br label %.critedge

bb.g:                                             ; preds = %bb.c
  %i.o = and i32 %i.c, 240
  %i.p = icmp eq i32 %i.o, 224
  br i1 %i.p, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.r = load i8, ptr %i.q, align 1               ; 3 uses
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %.mask117 = and i32 %i.s, 192
  %.not116 = icmp eq i32 %.mask117, 128
  br i1 %.not116, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 2, ptr %1, align 4
  br label %.critedge

bb.j:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i32                      ; 2 uses
  %.mask119 = and i32 %i.v, 192
  %.not118 = icmp eq i32 %.mask119, 128
  br i1 %.not118, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 3, ptr %1, align 4
  br label %.critedge

bb.l:                                             ; preds = %bb.j
  %i.w = icmp ne i8 %i.b, -32
  %i.x = and i8 %i.r, -32
  %or.cond6 = icmp eq i8 %i.x, -96
  %or.cond125 = or i1 %i.w, %or.cond6
  br i1 %or.cond125, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.y = icmp ne i8 %i.b, -19
  %or.cond9 = icmp slt i8 %i.r, -96
  %or.cond126 = or i1 %i.y, %or.cond9
  br i1 %or.cond126, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i32 2, ptr %1, align 4
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.z = and i8 %i.b, -16
  %or.cond11 = icmp eq i8 %i.z, -32
  br i1 %or.cond11, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.aa = shl nuw nsw i32 %i.c, 12
  %i.ab = and i32 %i.aa, 61440
  %i.ac = shl nuw nsw i32 %i.s, 6
  %i.ad = and i32 %i.ac, 4032
  %i.ae = or disjoint i32 %i.ad, %i.ab
  %i.af = and i32 %i.v, 63
  %i.ag = or disjoint i32 %i.ae, %i.af
  store i32 3, ptr %1, align 4
  br label %.critedge

bb.q:                                             ; preds = %bb.g
  %i.ah = and i32 %i.c, 248
  %i.ai = icmp ne i32 %i.ah, 240
  %i.aj = icmp samesign ugt i8 %i.b, -12
  %or.cond136 = select i1 %i.ai, i1 true, i1 %i.aj
  br i1 %or.cond136, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
end_hunk_1
