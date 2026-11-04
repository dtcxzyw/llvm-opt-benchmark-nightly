Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/neatosplines?download=true
inline.NumInlined: 43
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@spline_edges_:bb.a
  %i.es = and i32 %i.er, 3
  %i.et = icmp eq i32 %i.es, 2
  %i.eu = select i1 %i.et, i64 56, i64 -8
  %i.ev = getelementptr inbounds i8, ptr %.0111159, i64 %i.eu
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !41
  %i.ex = load ptr, ptr %3, align 8, !tbaa !53
  %i.ey = load i64, ptr %i.cd, align 8, !tbaa !52
  call void @clip_and_install(ptr noundef nonnull %.0111159, ptr noundef %i.ew, ptr noundef %i.ex, i64 noundef %i.ey, ptr noundef nonnull @sinfo) #19
  call void @addEdgeLabels(ptr noundef nonnull %.0111159) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.ez = load ptr, ptr %i.dw, align 8, !tbaa !26
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 232
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !42
  %i.fc = add nuw nsw i32 %.3158, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.fc, %spec.store.select
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph161.split, !llvm.loop !159

bb.ah:                                            ; preds = %bb.ae
  call void @makeStraightEdge(ptr noundef %0, ptr noundef nonnull %.1110163, i32 noundef %2, ptr noundef nonnull @sinfo) #19
  br label %.loopexit

.loopexit:                                        ; preds = %makePolyline.exit, %.lr.ph161.split.us, %bb.af, %bb.ab, %bb.y, %bb.ad, %bb.ah, %bb.z, %.lr.ph167._crit_edge
  %i.fd = call ptr @agnxtout(ptr noundef %0, ptr noundef nonnull %.1110163) #19 ; 2 uses
  %.not133 = icmp eq ptr %i.fd, null
  br i1 %.not133, label %._crit_edge168, label %.lr.ph167, !llvm.loop !160

._crit_edge168:                                   ; preds = %.loopexit, %bb.w
  %i.fe = call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.2170) #19 ; 2 uses
  %.not132 = icmp eq ptr %i.fe, null
  br i1 %.not132, label %._crit_edge173, label %bb.w, !llvm.loop !161

._crit_edge173:                                   ; preds = %._crit_edge168, %.loopexit145
  br i1 %.not130, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge173
  call void @Pobsclose(ptr noundef nonnull %.0115) #19
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge173
  br i1 %.not125144, label %bb.ak, label %.preheader

.preheader:                                       ; preds = %bb.aj
  %i.ff = icmp sgt i32 %.2118142, 0
  br i1 %i.ff, label %.lr.ph175.preheader, label %._crit_edge176

.lr.ph175.preheader:                              ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %.2118142 to i64
  br label %.lr.ph175

.lr.ph175:                                        ; preds = %.lr.ph175.preheader, %.lr.ph175
  %indvars.iv = phi i64 [ 0, %.lr.ph175.preheader ], [ %indvars.iv.next, %.lr.ph175 ] ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %.0112143, i64 %indvars.iv ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !66
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !53
  call void @free(ptr noundef %i.fi) #19
  %i.fj = load ptr, ptr %i.fg, align 8, !tbaa !66
  call void @free(ptr noundef %i.fj) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond180.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond180.not, label %._crit_edge176, label %.lr.ph175, !llvm.loop !162

._crit_edge176:                                   ; preds = %.lr.ph175, %.preheader
  call void @free(ptr noundef %.0112143) #19
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge176, %bb.aj
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @spline_edges0(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.d = load i16, ptr %i.c, align 8, !tbaa !93
  %i.e = and i16 %i.d, 14                         ; 2 uses
  %i.f = zext nneg i16 %i.e to i32
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call zeroext i1 @neato_set_aspect(ptr noundef nonnull %0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = icmp eq i16 %i.e, 0
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call range(i32 0, 2) i32 @splineEdges(ptr noundef nonnull %0, ptr noundef nonnull @spline_edges_, i32 noundef %i.f) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @neato_set_aspect(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  %.not.i = icmp eq ptr %i.b, %0
  br i1 %.not.i, label %bb.b, label %_neato_set_aspect.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !174
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 84
  %i.h = load i32, ptr %i.g, align 4, !tbaa !176
  %.not102.i = icmp eq i32 %i.h, 0
  br i1 %.not102.i, label %_neato_set_aspect.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.j = load double, ptr %i.i, align 8, !tbaa !177
  %i.k = fcmp une double %i.j, 0.000000e+00
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.m = load double, ptr %i.l, align 8, !tbaa !178
  %i.n = fcmp une double %i.m, 0.000000e+00
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @neato_translate(ptr noundef nonnull %0)
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = phi ptr [ %.pre.i, %bb.e ], [ %i.d, %bb.d ] ; 7 uses
  %.084.i = phi i1 [ true, %bb.e ], [ false, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 132
  %i.q = load i32, ptr %i.p, align 4, !tbaa !179
  %i.r = and i32 %i.q, 1
  %.not103.i = icmp eq i32 %i.r, 0                ; 2 uses
  br i1 %.not103.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %i.t = load <2 x double>, ptr %i.s, align 8
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.u, ptr %i.s, align 8, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !174  ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 84
  %i.y = load i32, ptr %i.x, align 4, !tbaa !176
  switch i32 %i.y, label %_neato_set_aspect.exit [
    i32 2, label %bb.i
    i32 5, label %bb.n
    i32 1, label %bb.q
  ]

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 64 ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !180
  %i.ab = fcmp ugt double %i.aa, 0.000000e+00
  br i1 %i.ab, label %bb.j, label %_neato_set_aspect.exit

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.ad = load <2 x double>, ptr %i.z, align 8, !tbaa !14
  %i.ae = load <2 x double>, ptr %i.ac, align 8, !tbaa !14
  %i.af = fdiv <2 x double> %i.ad, %i.ae          ; 3 uses
  %i.ag = extractelement <2 x double> %i.af, i64 0 ; 4 uses
  %i.ah = fcmp olt double %i.ag, 1.000000e+00
  %i.ai = extractelement <2 x double> %i.af, i64 1 ; 4 uses
  %i.aj = fcmp olt double %i.ai, 1.000000e+00
  %or.cond.i = select i1 %i.ah, i1 true, i1 %i.aj
  br i1 %or.cond.i, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.ak = fcmp olt double %i.ag, %i.ai
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = fdiv double %i.ai, %i.ag
  %i.am = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.al, i64 1
  br label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.an = fdiv double %i.ag, %i.ai
  %i.ao = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.an, i64 0
  br label %bb.t

bb.n:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 64 ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !180
  %i.ar = fcmp ugt double %i.aq, 0.000000e+00
  br i1 %i.ar, label %bb.o, label %_neato_set_aspect.exit

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.at = load <2 x double>, ptr %i.ap, align 8, !tbaa !14
  %i.au = load <2 x double>, ptr %i.as, align 8, !tbaa !14
  %i.av = fdiv <2 x double> %i.at, %i.au
  %.fr = freeze <2 x double> %i.av                ; 3 uses
  %1 = fcmp ule <2 x double> %.fr, splat (double 1.000000e+00)
  %2 = bitcast <2 x i1> %1 to i2
  %or.cond3.i = icmp eq i2 %2, 0
  br i1 %or.cond3.i, label %bb.p, label %_neato_set_aspect.exit

bb.p:                                             ; preds = %bb.o
  %i.aw = extractelement <2 x double> %.fr, i64 0
  %i.ax = extractelement <2 x double> %.fr, i64 1
  %i.ay = tail call nsz double @llvm.minnum.f64(double %i.aw, double %i.ax)
  %i.az = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.t

bb.q:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !181 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.bf = load double, ptr %i.be, align 8, !tbaa !182
  %i.bg = load double, ptr %i.bd, align 8, !tbaa !183
  %i.bh = fdiv double %i.bf, %i.bg                ; 3 uses
  %i.bi = fcmp olt double %i.bh, %i.bc
  br i1 %i.bi, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bj = fdiv double %i.bc, %i.bh
  %i.bk = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.bj, i64 1
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bl = fdiv double %i.bh, %i.bc
  %i.bm = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.bl, i64 0
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.p, %bb.m, %bb.l, %bb.j
  %i.bn = phi <2 x double> [ %i.am, %bb.l ], [ %i.ao, %bb.m ], [ %i.af, %bb.j ], [ %i.ba, %bb.p ], [ %i.bk, %bb.r ], [ %i.bm, %bb.s ] ; 2 uses
  %i.bo = insertelement <2 x i1> poison, i1 %.not103.i, i64 0
  %i.bp = shufflevector <2 x i1> %i.bo, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bq = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.br = select <2 x i1> %i.bp, <2 x double> %i.bn, <2 x double> %i.bq ; 11 uses
  %i.bs = load i32, ptr @Nop, align 4, !tbaa !68
  %i.bt = icmp sgt i32 %i.bs, 1
  br i1 %i.bt, label %bb.u, label %.loopexit.i

bb.u:                                             ; preds = %bb.t
  %i.bu = tail call ptr @agfstnode(ptr noundef nonnull %0) #19 ; 2 uses
  %.not105111.i = icmp eq ptr %i.bu, null
  br i1 %.not105111.i, label %.loopexit.i, label %.lr.ph114.i

.lr.ph114.i:                                      ; preds = %bb.u
  %i.bv = fadd <2 x double> %i.br, splat (double -1.000000e+00) ; 2 uses
  %broadcast.splat57 = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat59 = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat41 = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat43 = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge.i, %.lr.ph114.i
  %.085112.i = phi ptr [ %i.bu, %.lr.ph114.i ], [ %i.gn, %._crit_edge.i ] ; 2 uses
  %i.bw = tail call ptr @agfstout(ptr noundef nonnull %0, ptr noundef nonnull %.085112.i) #19 ; 2 uses
  %.not107109.i = icmp eq ptr %i.bw, null
  br i1 %.not107109.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v, %scaleEdge.exit.i
  %.0110.i = phi ptr [ %i.gm, %scaleEdge.exit.i ], [ %i.bw, %bb.v ] ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0110.i, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !26 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !69 ; 3 uses
  %.not108.i = icmp eq ptr %i.ca, null
  br i1 %.not108.i, label %scaleEdge.exit.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  %i.cb = load i32, ptr %.0110.i, align 8
  %i.cc = and i32 %i.cb, 3                        ; 2 uses
  %i.cd = icmp eq i32 %i.cc, 2
  %i.ce = select i1 %i.cd, i64 56, i64 -8
  %i.cf = getelementptr inbounds i8, ptr %.0110.i, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !41
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !26
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 176
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !94
  %i.cl = load <2 x double>, ptr %i.ck, align 8, !tbaa !14
  %i.cm = fmul <2 x double> %i.bv, %i.cl
  %i.cn = fmul <2 x double> %i.cm, splat (double 7.200000e+01) ; 5 uses
  %i.co = icmp eq i32 %i.cc, 3
  %i.cp = select i1 %i.co, i64 56, i64 120
  %i.cq = getelementptr inbounds nuw i8, ptr %.0110.i, i64 %i.cp
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !41
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !26
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 176
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !94
  %i.cw = load <2 x double>, ptr %i.cv, align 8, !tbaa !14
  %i.cx = fmul <2 x double> %i.bv, %i.cw
  %i.cy = fmul <2 x double> %i.cx, splat (double 7.200000e+01) ; 9 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !73 ; 3 uses
  %.not91.i.i = icmp eq i64 %i.da, 0
  br i1 %.not91.i.i, label %._crit_edge90.i.i, label %.lr.ph89.i.i

.lr.ph89.i.i:                                     ; preds = %bb.w
  %i.db = load ptr, ptr %i.ca, align 8, !tbaa !74
  %i.dc = add i64 %i.da, -1
  %broadcast.splat53 = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat55 = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat37 = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat39 = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %bb.x

._crit_edge90.i.i:                                ; preds = %bb.ac, %bb.w
  %i.dd = getelementptr inbounds nuw i8, ptr %i.by, i64 120
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !39 ; 3 uses
  %.not.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i, label %bb.af, label %bb.ad

bb.x:                                             ; preds = %bb.ac, %.lr.ph89.i.i
  %.07086.i.i = phi i64 [ 0, %.lr.ph89.i.i ], [ %i.fp, %bb.ac ] ; 7 uses
  %.07185.i.i = phi ptr [ %i.db, %.lr.ph89.i.i ], [ %i.fo, %bb.ac ] ; 7 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.07185.i.i, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !76 ; 8 uses
  %.not92.i.i = icmp eq i64 %i.dg, 0
  br i1 %.not92.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.x
  %i.dh = load ptr, ptr %.07185.i.i, align 8, !tbaa !77 ; 8 uses
  %i.di = icmp eq i64 %.07086.i.i, %i.dc
  %.fr.i.i = freeze i1 %i.di
  %.not104.i.i = icmp eq i64 %i.dg, 1             ; 2 uses
  br i1 %.fr.i.i, label %.lr.ph.split.preheader.i.i, label %.lr.ph.split.us.i.i.preheader

.lr.ph.split.us.i.i.preheader:                    ; preds = %.lr.ph.i.i
  br i1 %.not104.i.i, label %.lr.ph.split.us.i.i.preheader74, label %vector.ph48

vector.ph48:                                      ; preds = %.lr.ph.split.us.i.i.preheader
  %n.vec49 = and i64 %i.dg, -2                    ; 4 uses
  %i.dj = shl i64 %n.vec49, 4
  %i.dk = getelementptr i8, ptr %i.dh, i64 %i.dj
  %broadcast.splatinsert50 = insertelement <2 x i64> poison, i64 %.07086.i.i, i64 0
  %broadcast.splat51 = shufflevector <2 x i64> %broadcast.splatinsert50, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body60

vector.body60:                                    ; preds = %vector.body60, %vector.ph48
  %index61 = phi i64 [ 0, %vector.ph48 ], [ %index.next68, %vector.body60 ] ; 2 uses
  %vec.ind62 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph48 ], [ %vec.ind.next69, %vector.body60 ] ; 2 uses
  %i.dl = shl i64 %index61, 4
  %next.gep63 = getelementptr i8, ptr %i.dh, i64 %i.dl ; 2 uses
  %i.dm = or <2 x i64> %vec.ind62, %broadcast.splat51
  %i.dn = icmp eq <2 x i64> %i.dm, zeroinitializer ; 2 uses
  %wide.vec64 = load <4 x double>, ptr %next.gep63, align 8, !tbaa !14 ; 2 uses
  %strided.vec65 = shufflevector <4 x double> %wide.vec64, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec66 = shufflevector <4 x double> %wide.vec64, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.do = fadd <2 x double> %broadcast.splat53, %strided.vec65
  %i.dp = fadd <2 x double> %broadcast.splat55, %strided.vec66
  %i.dq = fmul <2 x double> %broadcast.splat57, %strided.vec65
  %i.dr = fmul <2 x double> %broadcast.splat59, %strided.vec66
  %i.ds = select <2 x i1> %i.dn, <2 x double> %i.do, <2 x double> %i.dq
  %i.dt = select <2 x i1> %i.dn, <2 x double> %i.dp, <2 x double> %i.dr
  %interleaved.vec67 = shufflevector <2 x double> %i.ds, <2 x double> %i.dt, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec67, ptr %next.gep63, align 8, !tbaa !14
  %index.next68 = add nuw i64 %index61, 2         ; 2 uses
  %vec.ind.next69 = add nuw <2 x i64> %vec.ind62, splat (i64 2)
  %i.du = icmp eq i64 %index.next68, %n.vec49
  br i1 %i.du, label %middle.block70, label %vector.body60, !llvm.loop !165

middle.block70:                                   ; preds = %vector.body60
  %cmp.n71 = icmp eq i64 %i.dg, %n.vec49
  br i1 %cmp.n71, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i.preheader74

.lr.ph.split.us.i.i.preheader74:                  ; preds = %.lr.ph.split.us.i.i.preheader, %middle.block70
  %.084.us.i.i.ph = phi i64 [ 0, %.lr.ph.split.us.i.i.preheader ], [ %n.vec49, %middle.block70 ]
  %.07283.us.i.i.ph = phi ptr [ %i.dh, %.lr.ph.split.us.i.i.preheader ], [ %i.dk, %middle.block70 ]
  br label %.lr.ph.split.us.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %.lr.ph.i.i
  br i1 %.not104.i.i, label %._crit_edge.loopexit.peel.begin.thread.i.i, label %.lr.ph.split.preheader.split.i.i

.lr.ph.split.preheader.split.i.i:                 ; preds = %.lr.ph.split.preheader.i.i
  %i.dv = add i64 %i.dg, -2
  %i.dw = add i64 %i.dg, -1                       ; 2 uses
  %min.iters.check = icmp ult i64 %i.dg, 3
  br i1 %min.iters.check, label %.lr.ph.split.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.preheader.split.i.i
  %n.vec = and i64 %i.dw, -2                      ; 4 uses
  %i.dx = shl i64 %n.vec, 4
  %i.dy = getelementptr i8, ptr %i.dh, i64 %i.dx  ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.07086.i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.dz = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.dh, i64 %i.dz ; 2 uses
  %i.ea = or <2 x i64> %vec.ind, %broadcast.splat
  %i.eb = icmp eq <2 x i64> %i.ea, zeroinitializer ; 2 uses
  %wide.vec = load <4 x double>, ptr %next.gep, align 8, !tbaa !14 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec44 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ec = fadd <2 x double> %broadcast.splat37, %strided.vec
  %i.ed = fadd <2 x double> %broadcast.splat39, %strided.vec44
  %i.ee = fmul <2 x double> %broadcast.splat41, %strided.vec
  %i.ef = fmul <2 x double> %broadcast.splat43, %strided.vec44
  %i.eg = select <2 x i1> %i.eb, <2 x double> %i.ec, <2 x double> %i.ee
  %i.eh = select <2 x i1> %i.eb, <2 x double> %i.ed, <2 x double> %i.ef
end_hunk_0
