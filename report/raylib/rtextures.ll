Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 118
begin_hunk_0_@ImageFromChannel:bb.a
  br label %bb.ai

bb.ae:                                            ; preds = %.lr.ph
  %i.cr = add nsw i32 %.084100, %.289
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cs
  %i.cu = load float, ptr %i.ct, align 4
  %i.cv = add nsw i32 %.084100, 4
  br label %bb.ai

bb.af:                                            ; preds = %.lr.ph
  %i.cw = sext i32 %.084100 to i64
  %i.cx = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2            ; 2 uses
  %i.cz = zext i16 %i.cy to i32                   ; 2 uses
  %i.da = lshr i32 %i.cz, 10
  %i.db = and i32 %i.da, 31                       ; 2 uses
  %i.dc = shl nuw nsw i32 %i.cz, 13               ; 2 uses
  %i.dd = and i32 %i.dc, 8380416                  ; 3 uses
  %i.de = uitofp nneg i32 %i.dd to float
  %i.df = bitcast float %i.de to i32              ; 2 uses
  %i.dg = lshr i32 %i.df, 23
  %.signext.i = sext i16 %i.cy to i32
  %i.dh = and i32 %.signext.i, -2147483648
  %.not.i = icmp eq i32 %i.db, 0                  ; 2 uses
  %i.di = shl nuw nsw i32 %i.db, 23
  %i.dj = add nuw nsw i32 %i.di, 939524096
  %i.dk = or disjoint i32 %i.dj, %i.dd
  %i.dl = select i1 %.not.i, i32 0, i32 %i.dk
  %i.dm = or disjoint i32 %i.dl, %i.dh
  %i.dn = icmp ne i32 %i.dd, 0
  %i.do = and i1 %.not.i, %i.dn
  %i.dp = and i32 %i.df, 2139095040
  %i.dq = add nsw i32 %i.dp, -310378496
  %i.dr = sub nsw i32 150, %i.dg
  %i.ds = shl i32 %i.dc, %i.dr
  %i.dt = and i32 %i.ds, 8380416
  %i.du = or disjoint i32 %i.dt, %i.dq
  %i.dv = select i1 %i.do, i32 %i.du, i32 0
  %i.dw = or i32 %i.dm, %i.dv
  %i.dx = bitcast i32 %i.dw to float
  %i.dy = add nsw i32 %.084100, 1
  br label %bb.ai

bb.ag:                                            ; preds = %.lr.ph
  %i.dz = add nsw i32 %.084100, %.289
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.ea
  %i.ec = load i16, ptr %i.eb, align 2            ; 2 uses
  %i.ed = zext i16 %i.ec to i32                   ; 2 uses
  %i.ee = lshr i32 %i.ed, 10
  %i.ef = and i32 %i.ee, 31                       ; 2 uses
  %i.eg = shl nuw nsw i32 %i.ed, 13               ; 2 uses
  %i.eh = and i32 %i.eg, 8380416                  ; 3 uses
  %i.ei = uitofp nneg i32 %i.eh to float
  %i.ej = bitcast float %i.ei to i32              ; 2 uses
  %i.ek = lshr i32 %i.ej, 23
  %.signext.i92 = sext i16 %i.ec to i32
  %i.el = and i32 %.signext.i92, -2147483648
  %.not.i93 = icmp eq i32 %i.ef, 0                ; 2 uses
  %i.em = shl nuw nsw i32 %i.ef, 23
  %i.en = add nuw nsw i32 %i.em, 939524096
  %i.eo = or disjoint i32 %i.en, %i.eh
  %i.ep = select i1 %.not.i93, i32 0, i32 %i.eo
  %i.eq = or disjoint i32 %i.ep, %i.el
  %i.er = icmp ne i32 %i.eh, 0
  %i.es = and i1 %.not.i93, %i.er
  %i.et = and i32 %i.ej, 2139095040
  %i.eu = add nsw i32 %i.et, -310378496
  %i.ev = sub nsw i32 150, %i.ek
  %i.ew = shl i32 %i.eg, %i.ev
  %i.ex = and i32 %i.ew, 8380416
  %i.ey = or disjoint i32 %i.ex, %i.eu
  %i.ez = select i1 %i.es, i32 %i.ey, i32 0
  %i.fa = or i32 %i.eq, %i.ez
  %i.fb = bitcast i32 %i.fa to float
  %i.fc = add nsw i32 %.084100, 3
  br label %bb.ai

bb.ah:                                            ; preds = %.lr.ph
  %i.fd = add nsw i32 %.084100, %.289
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.fe
  %i.fg = load i16, ptr %i.ff, align 2            ; 2 uses
  %i.fh = zext i16 %i.fg to i32                   ; 2 uses
  %i.fi = lshr i32 %i.fh, 10
  %i.fj = and i32 %i.fi, 31                       ; 2 uses
  %i.fk = shl nuw nsw i32 %i.fh, 13               ; 2 uses
  %i.fl = and i32 %i.fk, 8380416                  ; 3 uses
  %i.fm = uitofp nneg i32 %i.fl to float
  %i.fn = bitcast float %i.fm to i32              ; 2 uses
  %i.fo = lshr i32 %i.fn, 23
  %.signext.i94 = sext i16 %i.fg to i32
  %i.fp = and i32 %.signext.i94, -2147483648
  %.not.i95 = icmp eq i32 %i.fj, 0                ; 2 uses
  %i.fq = shl nuw nsw i32 %i.fj, 23
  %i.fr = add nuw nsw i32 %i.fq, 939524096
  %i.fs = or disjoint i32 %i.fr, %i.fl
  %i.ft = select i1 %.not.i95, i32 0, i32 %i.fs
  %i.fu = or disjoint i32 %i.ft, %i.fp
  %i.fv = icmp ne i32 %i.fl, 0
  %i.fw = and i1 %.not.i95, %i.fv
  %i.fx = and i32 %i.fn, 2139095040
  %i.fy = add nsw i32 %i.fx, -310378496
  %i.fz = sub nsw i32 150, %i.fo
  %i.ga = shl i32 %i.fk, %i.fz
  %i.gb = and i32 %i.ga, 8380416
  %i.gc = or disjoint i32 %i.gb, %i.fy
  %i.gd = select i1 %i.fw, i32 %i.gc, i32 0
  %i.ge = or i32 %i.fu, %i.gd
  %i.gf = bitcast i32 %i.ge to float
  %i.gg = add nsw i32 %.084100, 4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.q, %bb.r, %bb.t, %bb.s, %bb.m, %bb.o, %bb.p, %bb.n, %.lr.ph, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.k, %bb.j
  %.185 = phi i32 [ %.084100, %.lr.ph ], [ %.084100, %bb.j ], [ %i.aj, %bb.k ], [ %i.gg, %bb.ah ], [ %.084100, %bb.m ], [ %.084100, %bb.z ], [ %i.ca, %bb.aa ], [ %i.ch, %bb.ab ], [ %i.cl, %bb.ac ], [ %i.cq, %bb.ad ], [ %i.cv, %bb.ae ], [ %i.dy, %bb.af ], [ %i.fc, %bb.ag ], [ %.084100, %bb.n ], [ %.084100, %bb.p ], [ %.084100, %bb.o ], [ %.084100, %bb.q ], [ %.084100, %bb.s ], [ %.084100, %bb.t ], [ %.084100, %bb.r ]
  %.3 = phi float [ -1.000000e+00, %.lr.ph ], [ %i.ac, %bb.j ], [ %i.ai, %bb.k ], [ %i.gf, %bb.ah ], [ %i.ao, %bb.m ], [ %.2, %bb.z ], [ %i.bz, %bb.aa ], [ %i.cg, %bb.ab ], [ %i.ck, %bb.ac ], [ %i.cp, %bb.ad ], [ %i.cu, %bb.ae ], [ %i.dx, %bb.af ], [ %i.fb, %bb.ag ], [ %i.as, %bb.n ], [ %i.az, %bb.p ], [ %i.aw, %bb.o ], [ -1.000000e+00, %bb.q ], [ %i.bi, %bb.s ], [ %i.bl, %bb.t ], [ %i.be, %bb.r ]
  %i.gh = fmul float %.3, 2.550000e+02
  %i.gi = fptoui float %i.gh to i8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv
  store i8 %i.gi, ptr %i.gj, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.ai, %.preheader, %bb.i
  store ptr %i.w, ptr %0, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.a, %.loopexit
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @UnloadImageColors(ptr noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  tail call void @free(ptr noundef %0) #52
  ret void
}

; Function Attrs: nounwind uwtable
define void @ImageResizeCanvas(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 %5) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.v, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.v, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.50) #52
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = icmp sgt i32 %i.m, 13
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.51) #52
  br label %bb.v

bb.h:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.c, align 8              ; 3 uses
  %.not = icmp eq i32 %1, %i.o
  %.pre = load i32, ptr %i.f, align 4             ; 3 uses
  %.not96 = icmp eq i32 %2, %.pre
  %or.cond = select i1 %.not, i1 %.not96, i1 false
  br i1 %or.cond, label %bb.v, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = sitofp i32 %i.o to float                 ; 2 uses
  %i.q = sitofp i32 %.pre to float                ; 2 uses
  %i.r = sitofp i32 %3 to float                   ; 3 uses
  %i.s = sitofp i32 %4 to float                   ; 3 uses
  %i.t = icmp slt i32 %3, 0
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.u = sub nsw i32 0, %3
  %i.v = uitofp nneg i32 %i.u to float
  %i.w = fadd float %i.r, %i.p
  %i.x = fptosi float %i.v to i32
  %6 = zext nneg i32 %i.x to i64
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.y = add nsw i32 %i.o, %3
  %i.z = icmp sgt i32 %i.y, %1
  br i1 %i.z, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aa = sub nsw i32 %1, %3
  %i.ab = sitofp i32 %i.aa to float
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %.sroa.8.0 = phi float [ %i.w, %bb.j ], [ %i.ab, %bb.l ], [ %i.p, %bb.k ] ; 2 uses
  %.sroa.026.0 = phi i64 [ %6, %bb.j ], [ 0, %bb.l ], [ 0, %bb.k ] ; 3 uses
  %.sroa.0.0 = phi float [ 0.000000e+00, %bb.j ], [ %i.r, %bb.l ], [ %i.r, %bb.k ]
  %i.ac = icmp slt i32 %4, 0
  br i1 %i.ac, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ad = sub nsw i32 0, %4
  %i.ae = uitofp nneg i32 %i.ad to float
  %i.af = fadd float %i.s, %i.q
  %i.ag = fptosi float %i.ae to i32
  %7 = zext nneg i32 %i.ag to i64
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.ah = add nsw i32 %.pre, %4
  %i.ai = icmp sgt i32 %i.ah, %2
  br i1 %i.ai, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aj = sub nsw i32 %2, %4
  %i.ak = sitofp i32 %i.aj to float
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %.sroa.15.0 = phi float [ %i.af, %bb.n ], [ %i.ak, %bb.p ], [ %i.q, %bb.o ] ; 2 uses
  %.sroa.527.0 = phi i64 [ %7, %bb.n ], [ 0, %bb.p ], [ 0, %bb.o ] ; 3 uses
  %.sroa.5.0 = phi float [ 0.000000e+00, %bb.n ], [ %i.s, %bb.p ], [ %i.s, %bb.o ]
  %i.al = sitofp i32 %1 to float                  ; 2 uses
  %i.am = fcmp ogt float %.sroa.8.0, %i.al
  %.sroa.8.1 = select i1 %i.am, float %i.al, float %.sroa.8.0
  %i.an = sitofp i32 %2 to float                  ; 2 uses
  %i.ao = fcmp ogt float %.sroa.15.0, %i.an
  %.sroa.15.1 = select i1 %i.ao, float %i.an, float %.sroa.15.0
  %switch.tableidx = add i32 %i.m, -1             ; 2 uses
  %i.ap = icmp ult i32 %switch.tableidx, 13
  br i1 %i.ap, label %switch.lookup, label %GetPixelDataSize.exit

switch.lookup:                                    ; preds = %bb.q
  %i.aq = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ImageFlipVertical, i64 %i.aq
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %GetPixelDataSize.exit

GetPixelDataSize.exit:                            ; preds = %bb.q, %switch.lookup
  %i.ar = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.q ] ; 7 uses
  %i.as = mul nsw i32 %2, %1
  %i.at = mul nsw i32 %i.as, %i.ar
  %i.au = sext i32 %i.at to i64
  %i.av = tail call noalias ptr @calloc(i64 noundef %i.au, i64 noundef 1) #56 ; 21 uses
  %i.aw = load i32, ptr %i.l, align 4
  tail call void @SetPixelColor(ptr noundef %i.av, i32 %5, i32 noundef %i.aw)
  %i.ax = icmp sgt i32 %1, 1
  br i1 %i.ax, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %GetPixelDataSize.exit
  %i.ay = zext nneg i32 %i.ar to i64              ; 10 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  %i.az = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %i.az, 3                    ; 3 uses
  %i.ba = add nsw i32 %1, -2
  %i.bb = icmp ult i32 %i.ba, 3
  br i1 %i.bb, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.az, -4
  br label %bb.s

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.3, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod131 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod131)
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.r ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.r ]
  %i.bc = mul nuw nsw i64 %indvars.iv.epil, %i.ay
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bc
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %i.av, i64 %i.ay, i1 false)
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %bb.r, !llvm.loop !112

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %bb.r, %GetPixelDataSize.exit
  %i.be = icmp sgt i32 %2, 1
  br i1 %i.be, label %.lr.ph101, label %._crit_edge

.lr.ph101:                                        ; preds = %.preheader
  %i.bf = mul i32 %i.ar, %1                       ; 4 uses
  %i.bg = sext i32 %i.bf to i64                   ; 3 uses
  %wide.trip.count111 = zext nneg i32 %2 to i64
  %i.bh = add nsw i64 %wide.trip.count111, -1     ; 3 uses
  %xtraiter133 = and i64 %i.bh, 1
  %i.bi = icmp eq i32 %2, 2
  br i1 %i.bi, label %.epil.preheader132, label %.lr.ph101.new

.lr.ph101.new:                                    ; preds = %.lr.ph101
  %unroll_iter137 = and i64 %i.bh, -2
  br label %bb.t

bb.s:                                             ; preds = %bb.s, %.lr.ph.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.s ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.s ]
  %i.bj = mul nuw nsw i64 %indvars.iv, %i.ay
  %i.bk = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bj
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bk, ptr align 1 %i.av, i64 %i.ay, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.bl = mul nuw nsw i64 %indvars.iv.next, %i.ay
  %i.bm = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bl
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bm, ptr align 1 %i.av, i64 %i.ay, i1 false)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %i.bn = mul nuw nsw i64 %indvars.iv.next.1, %i.ay
  %i.bo = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr align 1 %i.av, i64 %i.ay, i1 false)
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %i.bp = mul nuw nsw i64 %indvars.iv.next.2, %i.ay
  %i.bq = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bp
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bq, ptr align 1 %i.av, i64 %i.ay, i1 false)
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %bb.s

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.t
  %lcmp.mod135.not = icmp eq i64 %xtraiter133, 0
  br i1 %lcmp.mod135.not, label %._crit_edge, label %.epil.preheader132

.epil.preheader132:                               ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph101
  %indvars.iv108.epil.init = phi i64 [ 1, %.lr.ph101 ], [ %indvars.iv.next109.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod136 = trunc i64 %i.bh to i1
  tail call void @llvm.assume(i1 %lcmp.mod136)
  %i.br = trunc nuw nsw i64 %indvars.iv108.epil.init to i32
  %i.bs = mul i32 %i.bf, %i.br
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds i8, ptr %i.av, i64 %i.bt
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bu, ptr align 1 %i.av, i64 %i.bg, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader132, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %i.bv = fptosi float %.sroa.15.1 to i32         ; 4 uses
  %i.bw = icmp sgt i32 %i.bv, 0
  %.pre122 = load ptr, ptr %0, align 8            ; 4 uses
  br i1 %i.bw, label %.lr.ph105, label %._crit_edge106

.lr.ph105:                                        ; preds = %._crit_edge
  %i.bx = fptosi float %.sroa.5.0 to i32
  %i.by = mul i32 %1, %i.bx
  %i.bz = fptosi float %.sroa.0.0 to i32
  %i.ca = add i32 %i.by, %i.bz
  %i.cb = mul i32 %i.ar, %i.ca
  %i.cc = load i32, ptr %i.c, align 8
  %i.cd = fptosi float %.sroa.8.1 to i32
  %i.ce = mul nsw i32 %i.ar, %i.cd
  %i.cf = sext i32 %i.ce to i64                   ; 3 uses
  %i.cg = mul i32 %i.ar, %1
  %i.ch = sext i32 %i.cc to i64                   ; 3 uses
  %i.ci = zext nneg i32 %i.ar to i64              ; 3 uses
  %i.cj = sext i32 %i.cb to i64                   ; 2 uses
  %i.ck = sext i32 %i.cg to i64                   ; 2 uses
  %wide.trip.count120 = zext nneg i32 %i.bv to i64 ; 2 uses
  %xtraiter140 = and i64 %wide.trip.count120, 1
  %i.cl = icmp eq i32 %i.bv, 1
  br i1 %i.cl, label %.epil.preheader139, label %.lr.ph105.new

.lr.ph105.new:                                    ; preds = %.lr.ph105
  %unroll_iter144 = and i64 %wide.trip.count120, 2147483646
  br label %bb.u

bb.t:                                             ; preds = %bb.t, %.lr.ph101.new
  %indvars.iv108 = phi i64 [ 1, %.lr.ph101.new ], [ %indvars.iv.next109.1, %bb.t ] ; 3 uses
  %niter138 = phi i64 [ 0, %.lr.ph101.new ], [ %niter138.next.1, %bb.t ]
  %i.cm = trunc nuw nsw i64 %indvars.iv108 to i32
  %i.cn = mul i32 %i.bf, %i.cm
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds i8, ptr %i.av, i64 %i.co
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cp, ptr align 1 %i.av, i64 %i.bg, i1 false)
  %i.cq = trunc i64 %indvars.iv108 to i32
  %i.cr = add i32 %i.cq, 1
  %i.cs = mul i32 %i.bf, %i.cr
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds i8, ptr %i.av, i64 %i.ct
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cu, ptr align 1 %i.av, i64 %i.bg, i1 false)
  %indvars.iv.next109.1 = add nuw nsw i64 %indvars.iv108, 2 ; 2 uses
  %niter138.next.1 = add i64 %niter138, 2         ; 2 uses
  %niter138.ncmp.1 = icmp eq i64 %niter138.next.1, %unroll_iter137
  br i1 %niter138.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.t

._crit_edge106.loopexit.unr-lcssa:                ; preds = %bb.u
  %lcmp.mod142.not = icmp eq i64 %xtraiter140, 0
  br i1 %lcmp.mod142.not, label %._crit_edge106, label %.epil.preheader139

.epil.preheader139:                               ; preds = %._crit_edge106.loopexit.unr-lcssa, %.lr.ph105
  %indvars.iv115.epil.init = phi i64 [ %i.cj, %.lr.ph105 ], [ %indvars.iv.next116.1, %._crit_edge106.loopexit.unr-lcssa ]
  %indvars.iv113.epil.init = phi i64 [ 0, %.lr.ph105 ], [ %indvars.iv.next114.1, %._crit_edge106.loopexit.unr-lcssa ]
  %lcmp.mod143 = trunc i32 %i.bv to i1
  tail call void @llvm.assume(i1 %lcmp.mod143)
  %i.cv = getelementptr inbounds i8, ptr %i.av, i64 %indvars.iv115.epil.init
  %i.cw = add nuw nsw i64 %indvars.iv113.epil.init, %.sroa.527.0
  %i.cx = mul nsw i64 %i.cw, %i.ch
  %i.cy = add nsw i64 %i.cx, %.sroa.026.0
  %i.cz = mul nsw i64 %i.cy, %i.ci
  %i.da = getelementptr inbounds i8, ptr %.pre122, i64 %i.cz
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cv, ptr align 1 %i.da, i64 %i.cf, i1 false)
  br label %._crit_edge106

._crit_edge106:                                   ; preds = %.epil.preheader139, %._crit_edge106.loopexit.unr-lcssa, %._crit_edge
  tail call void @free(ptr noundef %.pre122) #52
  store ptr %i.av, ptr %0, align 8
  store i32 %1, ptr %i.c, align 8
  store i32 %2, ptr %i.f, align 4
  br label %bb.v

bb.u:                                             ; preds = %bb.u, %.lr.ph105.new
  %indvars.iv115 = phi i64 [ %i.cj, %.lr.ph105.new ], [ %indvars.iv.next116.1, %bb.u ] ; 2 uses
  %indvars.iv113 = phi i64 [ 0, %.lr.ph105.new ], [ %indvars.iv.next114.1, %bb.u ] ; 3 uses
  %niter145 = phi i64 [ 0, %.lr.ph105.new ], [ %niter145.next.1, %bb.u ]
  %i.db = getelementptr inbounds i8, ptr %i.av, i64 %indvars.iv115
  %i.dc = add nuw nsw i64 %indvars.iv113, %.sroa.527.0
  %i.dd = mul nsw i64 %i.dc, %i.ch
  %i.de = add nsw i64 %i.dd, %.sroa.026.0
  %i.df = mul nsw i64 %i.de, %i.ci
  %i.dg = getelementptr inbounds i8, ptr %.pre122, i64 %i.df
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.db, ptr align 1 %i.dg, i64 %i.cf, i1 false)
  %indvars.iv.next116 = add nsw i64 %indvars.iv115, %i.ck ; 2 uses
  %indvars.iv.next114 = or disjoint i64 %indvars.iv113, 1
  %i.dh = getelementptr inbounds i8, ptr %i.av, i64 %indvars.iv.next116
  %i.di = add nuw nsw i64 %indvars.iv.next114, %.sroa.527.0
  %i.dj = mul nsw i64 %i.di, %i.ch
  %i.dk = add nsw i64 %i.dj, %.sroa.026.0
  %i.dl = mul nsw i64 %i.dk, %i.ci
  %i.dm = getelementptr inbounds i8, ptr %.pre122, i64 %i.dl
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dh, ptr align 1 %i.dm, i64 %i.cf, i1 false)
  %indvars.iv.next116.1 = add nsw i64 %indvars.iv.next116, %i.ck ; 2 uses
  %indvars.iv.next114.1 = add nuw nsw i64 %indvars.iv113, 2 ; 2 uses
  %niter145.next.1 = add i64 %niter145, 2         ; 2 uses
  %niter145.ncmp.1 = icmp eq i64 %niter145.next.1, %unroll_iter144
  br i1 %niter145.ncmp.1, label %._crit_edge106.loopexit.unr-lcssa, label %bb.u

bb.v:                                             ; preds = %bb.h, %._crit_edge106, %bb.a, %bb.b, %bb.c, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @SetPixelColor(ptr nofree noundef writeonly captures(none) %0, i32 %1, i32 noundef %2) local_unnamed_addr #19 {
bb.a:
  %.sroa.039.0.extract.trunc = trunc i32 %1 to i8 ; 3 uses
  %.sroa.846.0.extract.shift = lshr i32 %1, 8     ; 2 uses
  %.sroa.15.0.extract.shift = lshr i32 %1, 16     ; 2 uses
  %.sroa.22.0.extract.shift = lshr i32 %1, 24     ; 2 uses
  %i.a = trunc i32 %.sroa.846.0.extract.shift to i8 ; 2 uses
  %.sroa.846.0.extract.trunc = trunc i32 %.sroa.846.0.extract.shift to i8 ; 4 uses
  %.sroa.15.0.extract.trunc = trunc i32 %.sroa.15.0.extract.shift to i8 ; 5 uses
  %.sroa.22.0.extract.trunc = trunc nuw i32 %.sroa.22.0.extract.shift to i8 ; 2 uses
  switch i32 %2, label %bb.i [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 5, label %bb.e
    i32 6, label %bb.f
    i32 4, label %bb.g
    i32 7, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = trunc i32 %.sroa.15.0.extract.shift to i8
  %i.c = trunc i32 %1 to i8
  %i.d = insertelement <2 x i8> poison, i8 %i.b, i64 0
  %i.e = insertelement <2 x i8> %i.d, i8 %i.c, i64 1
  %i.f = uitofp <2 x i8> %i.e to <2 x float>
  %i.g = uitofp i8 %.sroa.846.0.extract.trunc to float
  %i.h = fdiv nnan float %i.g, 2.550000e+02
  %i.i = fmul nnan float %i.h, 5.870000e-01
  %i.j = fdiv nnan <2 x float> %i.f, splat (float 2.550000e+02)
  %i.k = fmul nnan <2 x float> %i.j, <float 1.140000e-01, float 2.990000e-01> ; 2 uses
  %i.l = extractelement <2 x float> %i.k, i64 1
  %i.m = fadd float %i.l, %i.i
  %i.n = extractelement <2 x float> %i.k, i64 0
  %i.o = fadd float %i.n, %i.m
  %i.p = fmul float %i.o, 2.550000e+02
  %i.q = fptoui float %i.p to i8
  store i8 %i.q, ptr %0, align 1
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.r = uitofp i8 %.sroa.039.0.extract.trunc to float
  %i.s = fdiv nnan float %i.r, 2.550000e+02
  %i.t = insertelement <2 x i8> poison, i8 %i.a, i64 0
  %i.u = insertelement <2 x i8> %i.t, i8 %.sroa.15.0.extract.trunc, i64 1
  %i.v = uitofp <2 x i8> %i.u to <2 x float>
  %i.w = fdiv nnan <2 x float> %i.v, splat (float 2.550000e+02) ; 2 uses
  %i.x = fmul nnan float %i.s, 2.990000e-01
  %i.y = extractelement <2 x float> %i.w, i64 0
  %i.z = fmul nnan float %i.y, 5.870000e-01
  %i.aa = fadd float %i.x, %i.z
  %i.ab = extractelement <2 x float> %i.w, i64 1
  %i.ac = fmul nnan float %i.ab, 1.140000e-01
  %i.ad = fadd float %i.ac, %i.aa
  %i.ae = fmul float %i.ad, 2.550000e+02
  %i.af = fptoui float %i.ae to i8
  store i8 %i.af, ptr %0, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.22.0.extract.trunc, ptr %i.ag, align 1
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.ah = trunc i32 %1 to i8
  %i.ai = insertelement <2 x i8> poison, i8 %i.ah, i64 0
  %i.aj = insertelement <2 x i8> %i.ai, i8 %i.a, i64 1
  %i.ak = uitofp <2 x i8> %i.aj to <2 x float>
  %i.al = uitofp i8 %.sroa.15.0.extract.trunc to float
  %i.am = fdiv nnan float %i.al, 2.550000e+02
  %i.an = fmul nnan float %i.am, 3.100000e+01
  %i.ao = tail call float @llvm.round.f32(float %i.an)
  %i.ap = fptoui float %i.ao to i8
  %i.aq = fdiv nnan <2 x float> %i.ak, splat (float 2.550000e+02)
  %i.ar = fmul nnan <2 x float> %i.aq, <float 3.100000e+01, float 6.300000e+01>
  %i.as = tail call <2 x float> @llvm.round.v2f32(<2 x float> %i.ar)
  %i.at = fptoui <2 x float> %i.as to <2 x i8>
  %i.au = zext <2 x i8> %i.at to <2 x i16>
  %i.av = shl <2 x i16> %i.au, <i16 11, i16 5>    ; 2 uses
  %i.aw = zext i8 %i.ap to i16
  %i.ax = extractelement <2 x i16> %i.av, i64 0
  %i.ay = or disjoint i16 %i.ax, %i.aw
  %i.az = extractelement <2 x i16> %i.av, i64 1
  %i.ba = or i16 %i.ay, %i.az
  store i16 %i.ba, ptr %0, align 2
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.bb = trunc i32 %1 to i8
  %i.bc = insertelement <2 x i8> poison, i8 %i.bb, i64 0
  %i.bd = trunc nuw i32 %.sroa.22.0.extract.shift to i8
  %i.be = insertelement <2 x i8> %i.bc, i8 %i.bd, i64 1
  %i.bf = uitofp <2 x i8> %i.be to <2 x float>
  %i.bg = insertelement <2 x i8> poison, i8 %.sroa.846.0.extract.trunc, i64 0
  %i.bh = insertelement <2 x i8> %i.bg, i8 %.sroa.15.0.extract.trunc, i64 1
  %i.bi = uitofp <2 x i8> %i.bh to <2 x float>
  %i.bj = fdiv <2 x float> %i.bf, splat (float 2.550000e+02) ; 2 uses
  %i.bk = extractelement <2 x float> %i.bj, i64 0
  %i.bl = fmul nnan float %i.bk, 3.100000e+01
  %i.bm = tail call float @llvm.round.f32(float %i.bl)
  %i.bn = fptoui float %i.bm to i8
  %i.bo = extractelement <2 x float> %i.bj, i64 1
  %i.bp = fcmp ogt float %i.bo, f0x3E48C8C9
  %i.bq = zext i8 %i.bn to i16
  %i.br = shl i16 %i.bq, 11
  %i.bs = fdiv nnan <2 x float> %i.bi, splat (float 2.550000e+02)
  %i.bt = fmul nnan <2 x float> %i.bs, splat (float 3.100000e+01)
  %i.bu = tail call <2 x float> @llvm.round.v2f32(<2 x float> %i.bt)
  %i.bv = fptoui <2 x float> %i.bu to <2 x i8>
  %i.bw = zext <2 x i8> %i.bv to <2 x i16>
  %i.bx = shl nuw nsw <2 x i16> %i.bw, <i16 6, i16 1> ; 2 uses
  %i.by = zext i1 %i.bp to i16
  %i.bz = or disjoint i16 %i.br, %i.by
  %i.ca = extractelement <2 x i16> %i.bx, i64 0
  %i.cb = or i16 %i.bz, %i.ca
  %i.cc = extractelement <2 x i16> %i.bx, i64 1
  %i.cd = or i16 %i.cb, %i.cc
  store i16 %i.cd, ptr %0, align 2
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.ce = insertelement <4 x i8> poison, i8 %.sroa.22.0.extract.trunc, i64 0
  %i.cf = insertelement <4 x i8> %i.ce, i8 %.sroa.15.0.extract.trunc, i64 1
  %i.cg = insertelement <4 x i8> %i.cf, i8 %.sroa.846.0.extract.trunc, i64 2
  %i.ch = insertelement <4 x i8> %i.cg, i8 %.sroa.039.0.extract.trunc, i64 3
  %i.ci = uitofp <4 x i8> %i.ch to <4 x float>
  %i.cj = fdiv nnan <4 x float> %i.ci, splat (float 2.550000e+02)
  %i.ck = fmul nnan <4 x float> %i.cj, splat (float 1.500000e+01)
  %i.cl = tail call <4 x float> @llvm.round.v4f32(<4 x float> %i.ck)
  %i.cm = fptoui <4 x float> %i.cl to <4 x i8>
  %i.cn = zext <4 x i8> %i.cm to <4 x i16>
  %i.co = shl <4 x i16> %i.cn, <i16 0, i16 4, i16 8, i16 12>
  %i.cp = tail call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %i.co)
  store i16 %i.cp, ptr %0, align 2
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  store i8 %.sroa.039.0.extract.trunc, ptr %0, align 1
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.846.0.extract.trunc, ptr %i.cq, align 1
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %.sroa.15.0.extract.trunc, ptr %i.cr, align 1
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  store i32 %1, ptr %0, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @ImageToPOT(ptr nofree noundef captures(none) %0, i32 %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sitofp i32 %i.d to float
  %i.j = tail call float @logf(float noundef %i.i) #52
  %i.k = fdiv float %i.j, f0x3F317218
  %i.l = tail call float @llvm.ceil.f32(float %i.k)
  %exp2f = tail call float @exp2f(float %i.l) #52
  %i.m = fptosi float %exp2f to i32               ; 2 uses
  %i.n = load i32, ptr %i.f, align 4
  %i.o = sitofp i32 %i.n to float
  %i.p = tail call float @logf(float noundef %i.o) #52
  %i.q = fdiv float %i.p, f0x3F317218
  %i.r = tail call float @llvm.ceil.f32(float %i.q)
  %exp2f11 = tail call float @exp2f(float %i.r) #52
  %i.s = fptosi float %exp2f11 to i32             ; 2 uses
  %i.t = load i32, ptr %i.c, align 8
end_hunk_0
begin_hunk_1_@ImageFlipHorizontal:bb.a
vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next, %vec.epilog.vector.body ] ; 3 uses
  %i.bg = getelementptr i8, ptr %invariant.gep, i64 %index
  %wide.load69 = load <4 x i8>, ptr %i.bg, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %invariant.gep64, i64 %index
  store <4 x i8> %wide.load69, ptr %i.bh, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec68
  br i1 %i.bi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !118

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n70, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec68, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.prol
  %i.bj = load i8, ptr %gep.prol, align 1
  %gep65.prol = getelementptr inbounds nuw i8, ptr %invariant.gep64, i64 %indvars.iv.prol
  store i8 %i.bj, ptr %gep65.prol, align 1
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !119

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.bk = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bl = icmp ugt i64 %i.bk, -4
  br i1 %i.bl, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge42:                                    ; preds = %._crit_edge
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next57, %wide.trip.count59
  br i1 %exitcond60.not, label %._crit_edge44.split, label %.preheader39

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %vector.ph
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %exitcond55.not = icmp eq i64 %indvars.iv.next52, %wide.trip.count54
  br i1 %exitcond55.not, label %._crit_edge42, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.bm = load i8, ptr %gep, align 1
  %gep65 = getelementptr inbounds nuw i8, ptr %invariant.gep64, i64 %indvars.iv
  store i8 %i.bm, ptr %gep65, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next
  %i.bn = load i8, ptr %gep.1, align 1
  %gep65.1 = getelementptr inbounds nuw i8, ptr %invariant.gep64, i64 %indvars.iv.next
  store i8 %i.bn, ptr %gep65.1, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.bo = load i8, ptr %gep.2, align 1
  %gep65.2 = getelementptr inbounds nuw i8, ptr %invariant.gep64, i64 %indvars.iv.next.1
  store i8 %i.bo, ptr %gep65.2, align 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.bp = load i8, ptr %gep.3, align 1
  %gep65.3 = getelementptr inbounds nuw i8, ptr %invariant.gep64, i64 %indvars.iv.next.2
  store i8 %i.bp, ptr %gep65.3, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !120

bb.q:                                             ; preds = %bb.a, %bb.b, %bb.c, %._crit_edge44.split, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define void @ImageRotate(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.50) #52
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp sgt i32 %i.m, 13
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.51) #52
  br label %bb.u

bb.h:                                             ; preds = %bb.f
  %i.o = sitofp i32 %1 to float
  %i.p = fmul nnan float %i.o, f0x40490FDB
  %i.q = fdiv float %i.p, 1.800000e+02            ; 2 uses
  %i.r = tail call float @sinf(float noundef %i.q) #52 ; 3 uses
  %i.s = tail call float @cosf(float noundef %i.q) #52 ; 3 uses
  %i.t = load i32, ptr %i.c, align 8
  %i.u = sitofp i32 %i.t to float                 ; 2 uses
  %i.v = fmul float %i.s, %i.u
  %i.w = tail call float @llvm.fabs.f32(float %i.v)
  %i.x = load i32, ptr %i.f, align 4
  %i.y = sitofp i32 %i.x to float                 ; 2 uses
  %i.z = fmul float %i.r, %i.y
  %i.aa = tail call float @llvm.fabs.f32(float %i.z)
  %i.ab = fadd float %i.w, %i.aa
  %i.ac = fptosi float %i.ab to i32               ; 6 uses
  %i.ad = fmul float %i.s, %i.y
  %i.ae = tail call float @llvm.fabs.f32(float %i.ad)
  %i.af = fmul float %i.r, %i.u
  %i.ag = tail call float @llvm.fabs.f32(float %i.af)
  %i.ah = fadd float %i.ag, %i.ae
  %i.ai = fptosi float %i.ah to i32               ; 5 uses
  %i.aj = load i32, ptr %i.l, align 4             ; 3 uses
  switch i32 %i.aj, label %bb.q [
    i32 1, label %bb.i
    i32 2, label %bb.j
    i32 3, label %bb.j
    i32 5, label %bb.j
    i32 6, label %bb.j
    i32 7, label %bb.k
    i32 4, label %.thread
    i32 8, label %bb.k
    i32 9, label %bb.l
    i32 10, label %bb.m
    i32 11, label %bb.j
    i32 12, label %bb.n
    i32 13, label %bb.o
    i32 24, label %bb.p
    i32 23, label %bb.i
    i32 20, label %bb.i
    i32 17, label %bb.i
    i32 16, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  br label %bb.q

bb.j:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  br label %bb.q

bb.k:                                             ; preds = %bb.h, %bb.h
  br label %bb.q

bb.l:                                             ; preds = %bb.h
  br label %.thread

bb.m:                                             ; preds = %bb.h
  br label %.thread

bb.n:                                             ; preds = %bb.h
  br label %.thread

bb.o:                                             ; preds = %bb.h
  br label %.thread

bb.p:                                             ; preds = %bb.h
  br label %.thread

bb.q:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.0.i = phi i32 [ 0, %bb.h ], [ 1, %bb.i ], [ 2, %bb.j ], [ 4, %bb.k ]
  %i.ak = and i32 %i.aj, -2
  %or.cond3.i = icmp eq i32 %i.ak, 14
  br i1 %or.cond3.i, label %GetPixelDataSize.exit, label %.thread

.thread:                                          ; preds = %bb.h, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q
  %i.al = phi i32 [ %.0.i, %bb.q ], [ 8, %bb.o ], [ 6, %bb.n ], [ 16, %bb.m ], [ 12, %bb.l ], [ 0, %bb.p ], [ 3, %bb.h ]
  %i.am = and i32 %i.aj, -8
  %or.cond5.i = icmp eq i32 %i.am, 16
  %spec.select.i = select i1 %or.cond5.i, i32 16, i32 %i.al
  br label %GetPixelDataSize.exit

GetPixelDataSize.exit:                            ; preds = %bb.q, %.thread
  %.016.i = phi i32 [ %spec.select.i, %.thread ], [ 8, %bb.q ] ; 9 uses
  %i.an = mul nuw nsw i32 %i.ac, %i.ai
  %2 = zext nneg i32 %i.an to i64
  %i.ao = zext nneg i32 %.016.i to i64            ; 2 uses
  %i.ap = tail call noalias ptr @calloc(i64 noundef %2, i64 noundef %i.ao) #56 ; 3 uses
  %i.aq = ptrtoaddr ptr %i.ap to i64
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %._crit_edge132.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %GetPixelDataSize.exit
  %.not133 = icmp eq i32 %i.ac, 0
  %3 = uitofp nneg i32 %i.ac to float
  %i.ar = fmul nnan float %3, 5.000000e-01
  %i.as = uitofp nneg i32 %i.ai to float
  %i.at = fmul nnan float %i.as, 5.000000e-01
  %.not.a = icmp eq i32 %.016.i, 0
  br i1 %.not133, label %._crit_edge132.split, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.au = load <2 x i32>, ptr %i.c, align 8       ; 3 uses
  %i.av = sitofp <2 x i32> %i.au to <2 x float>   ; 3 uses
  %i.aw = fmul nnan <2 x float> %i.av, splat (float 5.000000e-01)
  %i.ax = add nsw <2 x i32> %i.au, splat (i32 -1) ; 2 uses
  %i.ay = zext nneg i32 %i.ac to i64
  %wide.trip.count142 = zext nneg i32 %i.ai to i64
  %wide.trip.count137 = zext nneg i32 %i.ac to i64 ; 2 uses
  %wide.trip.count = zext i32 %.016.i to i64      ; 8 uses
  %i.az = mul nuw nsw i64 %wide.trip.count, %wide.trip.count137
  %i.ba = insertelement <2 x float> poison, float %i.r, i64 0
  %i.bb = insertelement <2 x float> %i.ba, float %i.s, i64 1 ; 2 uses
  %i.bc = extractelement <2 x float> %i.av, i64 0
  %i.bd = extractelement <2 x float> %i.av, i64 1
  %i.be = extractelement <2 x i32> %i.au, i64 0   ; 2 uses
  %i.bf = extractelement <2 x i32> %i.ax, i64 0
  %i.bg = extractelement <2 x i32> %i.ax, i64 1
  %i.bh = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %min.iters.check = icmp ult i32 %.016.i, 4
  %min.iters.check160 = icmp ult i32 %.016.i, 16
  %i.bi = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 4294967280   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.bi, 0
  %n.vec170 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  %cmp.n185 = icmp eq i64 %n.vec170, %wide.trip.count
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv139 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next140, %._crit_edge ] ; 4 uses
  %i.bj = mul i64 %i.az, %indvars.iv139
  %i.bk = add i64 %i.bj, %i.aq
  %i.bl = trunc nuw nsw i64 %indvars.iv139 to i32
  %i.bm = uitofp nneg i32 %i.bl to float
  %i.bn = fsub nnan float %i.bm, %i.at
  %i.bo = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = fmul <2 x float> %i.bb, %i.bp           ; 2 uses
  %i.br = mul nuw nsw i64 %indvars.iv139, %i.ay
  br label %bb.r

._crit_edge132.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %GetPixelDataSize.exit
  %i.bs = load ptr, ptr %0, align 8
  tail call void @free(ptr noundef %i.bs) #52
  store ptr %i.ap, ptr %0, align 8
  store i32 %i.ac, ptr %i.c, align 8
  store i32 %i.ai, ptr %i.f, align 4
  br label %bb.u

._crit_edge:                                      ; preds = %.loopexit
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %exitcond143.not = icmp eq i64 %indvars.iv.next140, %wide.trip.count142
  br i1 %exitcond143.not, label %._crit_edge132.split, label %.preheader

bb.r:                                             ; preds = %.preheader, %.loopexit
  %indvars.iv134 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next135, %.loopexit ] ; 4 uses
  %i.bt = mul i64 %indvars.iv134, %wide.trip.count
  %i.bu = add i64 %i.bk, %i.bt                    ; 4 uses
  %i.bv = trunc nuw nsw i64 %indvars.iv134 to i32
  %i.bw = uitofp nneg i32 %i.bv to float
  %i.bx = fsub nnan float %i.bw, %i.ar
  %i.by = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ca = fmul <2 x float> %i.bh, %i.bz           ; 2 uses
  %i.cb = fadd <2 x float> %i.bq, %i.ca
  %i.cc = fsub <2 x float> %i.bq, %i.ca
  %i.cd = shufflevector <2 x float> %i.cb, <2 x float> %i.cc, <2 x i32> <i32 0, i32 3>
  %i.ce = fadd <2 x float> %i.cd, %i.aw           ; 5 uses
  %i.cf = extractelement <2 x float> %i.ce, i64 0 ; 2 uses
  %i.cg = fcmp ult float %i.cf, 0.000000e+00
  br i1 %i.cg, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ch = fcmp olt float %i.cf, %i.bc
  %i.ci = extractelement <2 x float> %i.ce, i64 1 ; 2 uses
  %i.cj = fcmp oge float %i.ci, 0.000000e+00
  %or.cond = select i1 %i.ch, i1 %i.cj, i1 false
  %i.ck = fcmp olt float %i.ci, %i.bd
  %or.cond124 = select i1 %or.cond, i1 %i.ck, i1 false
  br i1 %or.cond124, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %bb.s
  %i.cl = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.ce)
  %i.cm = fptosi <2 x float> %i.cl to <2 x i32>   ; 3 uses
  %i.cn = sitofp <2 x i32> %i.cm to <2 x float>   ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.ce, %i.cn ; 3 uses
  %i.co = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop187 = fsub <2 x float> %i.ce, %i.cn ; 3 uses
  %i.cp = extractelement <2 x float> %foldExtExtBinop187, i64 1 ; 2 uses
  br i1 %.not.a, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.t
  %i.cq = extractelement <2 x i32> %i.cm, i64 1   ; 2 uses
  %i.cr = add nsw i32 %i.cq, 1
  %i.cs = tail call i32 @llvm.smin.i32(i32 %i.cr, i32 %i.bg)
  %i.ct = extractelement <2 x i32> %i.cm, i64 0   ; 3 uses
  %i.cu = add nsw i32 %i.ct, 1
  %. = tail call i32 @llvm.smin.i32(i32 %i.cu, i32 %i.bf) ; 2 uses
  %i.cv = load ptr, ptr %0, align 8               ; 5 uses
  %i.cw = mul nsw i32 %i.be, %i.cq                ; 2 uses
  %i.cx = add nsw i32 %i.cw, %i.ct
  %i.cy = mul nsw i32 %i.cx, %.016.i
  %i.cz = add nsw i32 %i.cw, %.
  %i.da = mul nsw i32 %i.cz, %.016.i
  %i.db = mul nsw i32 %i.cs, %i.be                ; 2 uses
  %i.dc = add nsw i32 %i.db, %i.ct
  %i.dd = mul nsw i32 %i.dc, %.016.i
  %i.de = add nsw i32 %i.db, %.
  %i.df = mul nsw i32 %i.de, %.016.i
  %i.dg = fsub float 1.000000e+00, %i.co          ; 3 uses
  %i.dh = fsub float 1.000000e+00, %i.cp          ; 3 uses
  %i.di = add nuw nsw i64 %indvars.iv134, %i.br
  %i.dj = mul nuw nsw i64 %i.di, %i.ao
  %i.dk = sext i32 %i.cy to i64                   ; 2 uses
  %i.dl = sext i32 %i.da to i64                   ; 2 uses
  %i.dm = sext i32 %i.dd to i64                   ; 2 uses
  %i.dn = sext i32 %i.df to i64                   ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.cv, i64 %i.dk ; 3 uses
  %invariant.gep147 = getelementptr i8, ptr %i.cv, i64 %i.dl ; 3 uses
  %invariant.gep149 = getelementptr i8, ptr %i.cv, i64 %i.dm ; 3 uses
  %invariant.gep151 = getelementptr i8, ptr %i.cv, i64 %i.dn ; 3 uses
  %invariant.gep153 = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.dj ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.do = ptrtoaddr ptr %i.cv to i64              ; 4 uses
  %i.dp = add i64 %i.do, %i.dn
  %i.dq = sub i64 %i.dp, %i.bu
  %diff.check = icmp ugt i64 %i.dq, -16
  %i.dr = add i64 %i.do, %i.dm
  %i.ds = sub i64 %i.dr, %i.bu
  %diff.check155 = icmp ugt i64 %i.ds, -16
  %conflict.rdx = or i1 %diff.check, %diff.check155
  %i.dt = add i64 %i.do, %i.dl
  %i.du = sub i64 %i.dt, %i.bu
  %diff.check156 = icmp ugt i64 %i.du, -16
  %conflict.rdx157 = or i1 %conflict.rdx, %diff.check156
  %i.dv = add i64 %i.do, %i.dk
  %i.dw = sub i64 %i.dv, %i.bu
  %diff.check158 = icmp ugt i64 %i.dw, -16
  %conflict.rdx159 = or i1 %conflict.rdx157, %diff.check158
  br i1 %conflict.rdx159, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check160, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.dg, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert161 = insertelement <16 x float> poison, float %i.dh, i64 0
  %broadcast.splat162 = shufflevector <16 x float> %broadcast.splatinsert161, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splat164 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splat166 = shufflevector <2 x float> %foldExtExtBinop187, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.dx = getelementptr i8, ptr %invariant.gep, i64 %index
  %wide.load = load <16 x i8>, ptr %i.dx, align 1
  %i.dy = uitofp <16 x i8> %wide.load to <16 x float>
  %i.dz = getelementptr i8, ptr %invariant.gep147, i64 %index
  %wide.load167 = load <16 x i8>, ptr %i.dz, align 1
  %i.ea = uitofp <16 x i8> %wide.load167 to <16 x float>
  %i.eb = getelementptr i8, ptr %invariant.gep149, i64 %index
  %wide.load168 = load <16 x i8>, ptr %i.eb, align 1
  %i.ec = uitofp <16 x i8> %wide.load168 to <16 x float>
  %i.ed = getelementptr i8, ptr %invariant.gep151, i64 %index
  %wide.load169 = load <16 x i8>, ptr %i.ed, align 1
  %i.ee = uitofp <16 x i8> %wide.load169 to <16 x float>
  %i.ef = fmul <16 x float> %broadcast.splat, %i.dy
  %i.eg = fmul <16 x float> %broadcast.splat162, %i.ef
  %i.eh = fmul <16 x float> %broadcast.splat164, %i.ea
  %i.ei = fmul <16 x float> %broadcast.splat162, %i.eh
  %i.ej = fadd <16 x float> %i.eg, %i.ei
  %i.ek = fmul <16 x float> %broadcast.splat, %i.ec
  %i.el = fmul <16 x float> %broadcast.splat166, %i.ek
  %i.em = fadd <16 x float> %i.ej, %i.el
  %i.en = fmul <16 x float> %broadcast.splat164, %i.ee
  %i.eo = fmul <16 x float> %broadcast.splat166, %i.en
  %i.ep = fadd <16 x float> %i.em, %i.eo
  %i.eq = fptoui <16 x float> %i.ep to <16 x i8>
  %i.er = getelementptr inbounds nuw i8, ptr %invariant.gep153, i64 %index
  store <16 x i8> %i.eq, ptr %i.er, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.es = icmp eq i64 %index.next, %n.vec
  br i1 %i.es, label %middle.block, label %vector.body, !llvm.loop !121

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !13

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert171 = insertelement <4 x float> poison, float %i.dg, i64 0
  %broadcast.splat172 = shufflevector <4 x float> %broadcast.splatinsert171, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert173 = insertelement <4 x float> poison, float %i.dh, i64 0
  %broadcast.splat174 = shufflevector <4 x float> %broadcast.splatinsert173, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
end_hunk_1
