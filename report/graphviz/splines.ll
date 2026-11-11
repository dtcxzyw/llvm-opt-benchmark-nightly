Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/splines?download=true
inline.NumInlined: 22
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@endpath:bb.a
  store i32 1, ptr %i.ix, align 4, !tbaa !102
  switch i32 %2, label %bb.au [
    i32 8, label %bb.ap
    i32 2, label %bb.aq
    i32 1, label %bb.at
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.iy = load double, ptr %.sroa.4110.0..sroa_idx, align 8, !tbaa !157
  %i.iz = fadd double %i.iy, 1.000000e+00
  %i.ja = getelementptr inbounds nuw i8, ptr %3, i64 64
  store double %i.iz, ptr %i.ja, align 8, !tbaa !73
  %i.jb = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 4, ptr %i.jb, align 8, !tbaa !85
  br label %bb.au

bb.aq:                                            ; preds = %bb.ao
  %i.jc = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !85
  %i.je = icmp eq i32 %i.jd, 4
  %i.jf = load double, ptr %.sroa.4110.0..sroa_idx, align 8, !tbaa !157 ; 2 uses
  br i1 %i.je, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.jg = getelementptr inbounds nuw i8, ptr %3, i64 64
  store double %i.jf, ptr %i.jg, align 8, !tbaa !73
  br label %bb.au

bb.as:                                            ; preds = %bb.aq
  %i.jh = getelementptr inbounds nuw i8, ptr %3, i64 80
  store double %i.jf, ptr %i.jh, align 8, !tbaa !74
  br label %bb.au

bb.at:                                            ; preds = %bb.ao
  %i.ji = load double, ptr %.sroa.4110.0..sroa_idx, align 8, !tbaa !157 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %3, i64 64
  store double %i.ji, ptr %i.jj, align 8, !tbaa !73
  %i.jk = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 4, ptr %i.jk, align 8, !tbaa !85
  %i.jl = fadd double %i.ji, 1.000000e+00
  store double %i.jl, ptr %.sroa.4110.0..sroa_idx, align 8, !tbaa !157
  br label %bb.au

bb.au:                                            ; preds = %bb.an, %bb.ar, %bb.as, %bb.at, %bb.ap, %bb.ao, %.critedge2, %.critedge
  ret void
}

; Function Attrs: nounwind uwtable
define double @selfRightSpace(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !105  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.f = load i8, ptr %i.e, align 8, !tbaa !106, !range !65, !noundef !66
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.i = load i8, ptr %i.h, align 8, !tbaa !107, !range !65, !noundef !66
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 61
  %i.l = load i8, ptr %i.k, align 1, !tbaa !83    ; 2 uses
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %i.n = and i32 %i.m, 8
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 109
  %i.p = load i8, ptr %i.o, align 1, !tbaa !104   ; 2 uses
  %i.q = and i8 %i.p, 8
  %.not19 = icmp eq i8 %i.q, 0
  br i1 %.not19, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not20 = icmp ne i8 %i.l, %i.p
  %i.r = and i32 %i.m, 5
  %.not21 = icmp eq i32 %i.r, 0
  %or.cond = or i1 %.not21, %.not20
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.b
  %.not22 = icmp eq ptr %i.d, null
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %0, align 8
  %i.t = and i32 %i.s, 3
  %i.u = icmp eq i32 %i.t, 2
  %i.v = select i1 %i.u, i64 56, i64 -8
  %i.w = getelementptr inbounds i8, ptr %0, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !64
  %i.y = tail call ptr @agraphof(ptr noundef %i.x) #15
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 132
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !108
  %i.ad = and i32 %i.ac, 1
  %.not23 = icmp eq i32 %i.ad, 0
  %.in.v = select i1 %.not23, i64 40, i64 48
  %.in = getelementptr inbounds nuw i8, ptr %i.d, i64 %.in.v
  %i.ae = load double, ptr %.in, align 8, !tbaa !10
  %i.af = fadd double %i.ae, 1.800000e+01
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0 = phi double [ 1.800000e+01, %bb.f ], [ %i.af, %bb.g ], [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.c ]
  ret double %.0
}

; Function Attrs: nounwind uwtable
define void @makeSelfEdge(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, double noundef %2, double noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca [7 x %struct.pointf_s], align 16    ; 14 uses
  %6 = alloca [7 x %struct.pointf_s], align 16    ; 17 uses
  %7 = alloca [7 x %struct.pointf_s], align 16    ; 17 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !103    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16   ; 19 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load i8, ptr %i.d, align 8, !tbaa !106, !range !65, !noundef !66
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.h = load i8, ptr %i.g, align 8, !tbaa !107, !range !65, !noundef !66
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 61
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !83
  %.phi.trans.insert127 = getelementptr inbounds nuw i8, ptr %i.c, i64 109
  %.pre128 = load i8, ptr %.phi.trans.insert127, align 1, !tbaa !104
  br label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 61
  %i.k = load i8, ptr %i.j, align 1, !tbaa !83    ; 6 uses
  %i.l = zext i8 %i.k to i32                      ; 4 uses
  %i.m = and i32 %i.l, 8
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 109
  %i.o = load i8, ptr %i.n, align 1, !tbaa !104   ; 4 uses
  %i.p = and i8 %i.o, 8
  %.not38 = icmp eq i8 %i.p, 0
  br i1 %.not38, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %.not39 = icmp ne i8 %i.k, %i.o
  %i.q = and i32 %i.l, 5
  %.not40 = icmp eq i32 %i.q, 0
  %or.cond = or i1 %.not40, %.not39
  br i1 %or.cond, label %bb.f, label %bb.x

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.r = phi i8 [ %.pre128, %._crit_edge ], [ %i.o, %bb.e ]
  %i.s = phi i8 [ %.pre, %._crit_edge ], [ %i.k, %bb.e ]
  %i.t = load i32, ptr %i.a, align 8
  %i.u = and i32 %i.t, 3
  %i.v = icmp eq i32 %i.u, 3
  %i.w = select i1 %i.v, i64 56, i64 120
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !64
  %i.z = fmul nsz double %3, 5.000000e-01
  %i.aa = uitofp nsz i64 %1 to double
  %i.ab = fdiv nsz double %i.z, %i.aa
  %i.ac = tail call nsz double @llvm.maxnum.f64(double %i.ab, double 2.000000e+00)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !16 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %.sroa.0.0.copyload.i = load double, ptr %i.af, align 8, !tbaa !10 ; 3 uses
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %.sroa.10.0.copyload.i = load double, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !10 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.044.0.copyload.i = load double, ptr %i.ag, align 8, !tbaa !10
  %.sroa.848.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.848.0.copyload.i = load double, ptr %.sroa.848.0..sroa_idx.i, align 8, !tbaa !10
  %i.ah = fadd double %.sroa.10.0.copyload.i, %.sroa.848.0.copyload.i ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.sroa.033.0.copyload.i = load double, ptr %i.ai, align 8, !tbaa !10
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %.sroa.8.0.copyload.i = load double, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !10
  %i.aj = insertelement <2 x double> poison, double %.sroa.0.0.copyload.i, i64 0
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = insertelement <2 x double> poison, double %.sroa.044.0.copyload.i, i64 0
  %i.am = insertelement <2 x double> %i.al, double %.sroa.033.0.copyload.i, i64 1
  %i.an = fadd <2 x double> %i.ak, %i.am          ; 5 uses
  %i.ao = fadd double %.sroa.10.0.copyload.i, %.sroa.8.0.copyload.i ; 5 uses
  %i.ap = fcmp ult double %i.ah, %i.ao
  %..i = select i1 %i.ap, i32 -1, i32 1           ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !41 ; 3 uses
  %switch.tableidx = add i8 %i.r, -1              ; 2 uses
  %i.as = icmp ult i8 %switch.tableidx, 12
  br i1 %i.as, label %switch.lookup, label %bb.g

switch.lookup:                                    ; preds = %bb.f
  %i.at = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.selfTop.7, i64 %i.at
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %switch.lookup
  %.0.i.i = phi i32 [ -1, %bb.f ], [ %switch.load, %switch.lookup ] ; 2 uses
  %switch.tableidx139 = add i8 %i.s, -1           ; 2 uses
  %i.au = icmp ult i8 %switch.tableidx139, 12
  br i1 %i.au, label %switch.lookup140, label %bb.h

switch.lookup140:                                 ; preds = %bb.g
  %i.av = zext nneg i8 %switch.tableidx139 to i64
  %switch.gep141 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.selfTop.7, i64 %i.av
  %switch.load142 = load i32, ptr %switch.gep141, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %switch.lookup140
  %.016.i.i = phi i32 [ -1, %bb.g ], [ %switch.load142, %switch.lookup140 ] ; 2 uses
  %i.aw = or i32 %.016.i.i, %.0.i.i
  %or.cond.not.i.i = icmp sgt i32 %i.aw, -1
  br i1 %or.cond.not.i.i, label %convert_sides_to_points.exit.i, label %convert_sides_to_points.exit.thread.i

convert_sides_to_points.exit.i:                   ; preds = %bb.h
  %i.ax = zext nneg i32 %.016.i.i to i64
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr @__const.convert_sides_to_points.pair_a, i64 %i.ax
  %i.az = zext nneg i32 %.0.i.i to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !71
  switch i32 %i.bb, label %convert_sides_to_points.exit.thread.i [
    i32 32, label %bb.i
    i32 65, label %bb.i
  ]

bb.i:                                             ; preds = %convert_sides_to_points.exit.i, %convert_sides_to_points.exit.i
  %i.bc = fcmp oeq double %i.ah, %i.ao
  %8 = sub nsw i32 0, %..i
  %spec.select.i = select i1 %i.bc, i32 %8, i32 %..i
  br label %convert_sides_to_points.exit.thread.i

convert_sides_to_points.exit.thread.i:            ; preds = %bb.i, %convert_sides_to_points.exit.i, %bb.h
  %.1.i = phi i32 [ %..i, %convert_sides_to_points.exit.i ], [ %spec.select.i, %bb.i ], [ %..i, %bb.h ]
  %.not108.i = icmp eq i64 %1, 0
  br i1 %.not108.i, label %selfRight.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %convert_sides_to_points.exit.thread.i
  %i.bd = fadd nsz double %.sroa.0.0.copyload.i, %i.ar
  %i.be = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bg = fsub nsz <2 x double> %i.bf, %i.an
  %i.bh = fmul nsz <2 x double> %i.bg, splat (double 3.000000e+00)
  %i.bi = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.bj, <2 x double> %i.bh)
  %i.bl = sitofp i32 %.1.i to double
  %.sroa.848.0..sroa_idx49.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.bs = fadd double %i.ah, %i.ao
  %i.bt = fmul double %i.bs, 5.000000e-01
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 96
  %.sroa.8.0..sroa_idx37.i = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.bz = insertelement <2 x double> poison, double %2, i64 0
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cb = extractelement <2 x double> %i.an, i64 0
  %i.cc = extractelement <2 x double> %i.an, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.lr.ph.i
  %.093107.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ed, %bb.m ] ; 2 uses
  %.095106.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.ci, %bb.m ]
  %.096105.i = phi double [ %i.ar, %.lr.ph.i ], [ %.197.i, %bb.m ]
  %i.cd = phi <2 x double> [ %i.bk, %.lr.ph.i ], [ %i.ch, %bb.m ]
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.093107.i
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !103 ; 6 uses
  %i.cg = fadd double %2, %.096105.i              ; 5 uses
  %i.ch = fadd <2 x double> %i.ca, %i.cd          ; 2 uses
  %i.ci = call double @llvm.fmuladd.f64(double %i.bl, double %i.ac, double %.095106.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  store double %i.cb, ptr %7, align 16, !tbaa !10
  store double %i.ah, ptr %.sroa.848.0..sroa_idx49.i, align 8, !tbaa !10
  %i.cj = fadd double %i.ah, %i.ci                ; 2 uses
  store double %i.cj, ptr %i.bn, align 8, !tbaa !70
  %i.ck = fadd double %.sroa.0.0.copyload.i, %i.cg ; 3 uses
  store double %i.ck, ptr %i.bo, align 16, !tbaa !69
  store double %i.cj, ptr %i.bp, align 8, !tbaa !70
  store double %i.ck, ptr %i.bq, align 16, !tbaa !69
  store double %i.bt, ptr %i.br, align 8, !tbaa !70
  store double %i.ck, ptr %i.bu, align 16, !tbaa !69
  %i.cl = fsub double %i.ao, %i.ci                ; 2 uses
  store double %i.cl, ptr %i.bv, align 8, !tbaa !70
  %i.cm = fdiv <2 x double> %i.ch, splat (double 3.000000e+00) ; 2 uses
  %foldExtExtBinop = fadd <2 x double> %i.an, %i.cm
  %i.cn = extractelement <2 x double> %foldExtExtBinop, i64 0
  store double %i.cn, ptr %i.bm, align 16, !tbaa !69
  %foldExtExtBinop160 = fadd <2 x double> %i.an, %i.cm
  %i.co = extractelement <2 x double> %foldExtExtBinop160, i64 1
  store double %i.co, ptr %i.bw, align 16, !tbaa !69
  store double %i.cl, ptr %i.bx, align 8, !tbaa !70
  store double %i.cc, ptr %i.by, align 16, !tbaa !10
  store double %i.ao, ptr %.sroa.8.0..sroa_idx37.i, align 8, !tbaa !10
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 120
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !105
  %.not.i = icmp eq ptr %i.cs, null
  br i1 %.not.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ct = load i32, ptr %i.cf, align 8
  %i.cu = and i32 %i.ct, 3
  %i.cv = icmp eq i32 %i.cu, 3
  %i.cw = select i1 %i.cv, i64 56, i64 120
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !64
  %i.cz = call ptr @agraphof(ptr noundef %i.cy) #15
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 132
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !108
  %i.de = and i32 %i.dd, 1
  %.not101.i = icmp eq i32 %i.de, 0
  %i.df = load ptr, ptr %i.cp, align 8, !tbaa !16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 120
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !105 ; 4 uses
  %.111.i = select i1 %.not101.i, i64 40, i64 48
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.111.i
  %.094.i = load double, ptr %i.di, align 8, !tbaa !10 ; 3 uses
  %i.dj = load ptr, ptr %i.ad, align 8, !tbaa !16 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !86
  %i.dm = fadd double %i.cg, %i.dl
  %i.dn = fmul double %.094.i, 5.000000e-01
  %i.do = fadd double %i.dn, %i.dm
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 72
  store double %i.do, ptr %i.dp, align 8, !tbaa !110
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !87
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dh, i64 80
  store double %i.dr, ptr %i.ds, align 8, !tbaa !111
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dh, i64 105
  store i8 1, ptr %i.dt, align 1, !tbaa !112
  %i.du = fcmp ogt double %.094.i, %2
  br i1 %i.du, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dv = fsub double %.094.i, %2
  %i.dw = fadd double %i.cg, %i.dv
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.197.i = phi double [ %i.dw, %bb.l ], [ %i.cg, %bb.k ], [ %i.cg, %bb.j ]
  %i.dx = load i32, ptr %i.cf, align 8
  %i.dy = and i32 %i.dx, 3
  %i.dz = icmp eq i32 %i.dy, 2
  %i.ea = select i1 %i.dz, i64 56, i64 -8
  %i.eb = getelementptr inbounds i8, ptr %i.cf, i64 %i.ea
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !64
  call void @clip_and_install(ptr noundef nonnull %i.cf, ptr noundef %i.ec, ptr noundef nonnull %7, i64 noundef 7, ptr noundef readonly %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.ed = add nuw i64 %.093107.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ed, %1
  br i1 %exitcond.not.i, label %selfRight.exit, label %bb.j, !llvm.loop !159

bb.n:                                             ; preds = %bb.d, %bb.c
  %i.ee = and i8 %i.k, 2
  %.not45 = icmp eq i8 %i.ee, 0
  br i1 %.not45, label %bb.o, label %selfRight.exit.sink.split

bb.o:                                             ; preds = %bb.n
  %i.ef = getelementptr inbounds nuw i8, ptr %i.c, i64 109
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !104 ; 2 uses
  %i.eh = and i8 %i.eg, 2
  %.not46 = icmp eq i8 %i.eh, 0
  br i1 %.not46, label %bb.p, label %selfRight.exit.sink.split

bb.p:                                             ; preds = %bb.o
  %i.ei = load i32, ptr %i.a, align 8
  %i.ej = and i32 %i.ei, 3
  %i.ek = icmp eq i32 %i.ej, 3
  %i.el = select i1 %i.ek, i64 56, i64 120
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.el
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !64
  %i.eo = fmul nsz double %3, 5.000000e-01
  %i.ep = uitofp nsz i64 %1 to double
  %i.eq = fdiv nsz double %i.eo, %i.ep
  %i.er = tail call nsz double @llvm.maxnum.f64(double %i.eq, double 2.000000e+00)
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 16 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !16 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %.sroa.0.0.copyload.i47 = load double, ptr %i.eu, align 8, !tbaa !10 ; 2 uses
  %.sroa.10.0..sroa_idx.i48 = getelementptr inbounds nuw i8, ptr %i.et, i64 40
  %.sroa.10.0.copyload.i49 = load double, ptr %.sroa.10.0..sroa_idx.i48, align 8, !tbaa !10 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.044.0.copyload.i50 = load double, ptr %i.ev, align 8, !tbaa !10
  %.sroa.848.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.848.0.copyload.i52 = load double, ptr %.sroa.848.0..sroa_idx.i51, align 8, !tbaa !10
  %i.ew = fadd double %.sroa.10.0.copyload.i49, %.sroa.848.0.copyload.i52 ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.sroa.033.0.copyload.i53 = load double, ptr %i.ex, align 8, !tbaa !10
  %.sroa.8.0..sroa_idx.i54 = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %.sroa.8.0.copyload.i55 = load double, ptr %.sroa.8.0..sroa_idx.i54, align 8, !tbaa !10
  %i.ey = insertelement <2 x double> poison, double %.sroa.0.0.copyload.i47, i64 0
  %i.ez = shufflevector <2 x double> %i.ey, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fa = insertelement <2 x double> poison, double %.sroa.044.0.copyload.i50, i64 0
  %i.fb = insertelement <2 x double> %i.fa, double %.sroa.033.0.copyload.i53, i64 1
  %i.fc = fadd <2 x double> %i.ez, %i.fb          ; 5 uses
  %i.fd = fadd double %.sroa.10.0.copyload.i49, %.sroa.8.0.copyload.i55 ; 5 uses
  %i.fe = fcmp ult double %i.ew, %i.fd
  %..i56 = select i1 %i.fe, i32 -1, i32 1         ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.et, i64 104
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !90 ; 2 uses
  %switch.tableidx143 = add i8 %i.eg, -1          ; 2 uses
  %i.fh = icmp ult i8 %switch.tableidx143, 12
  br i1 %i.fh, label %switch.lookup144, label %bb.q

switch.lookup144:                                 ; preds = %bb.p
  %i.fi = zext nneg i8 %switch.tableidx143 to i64
  %switch.gep145 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.selfTop.7, i64 %i.fi
  %switch.load146 = load i32, ptr %switch.gep145, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %switch.lookup144
  %.0.i.i58 = phi i32 [ -1, %bb.p ], [ %switch.load146, %switch.lookup144 ] ; 2 uses
  %switch.tableidx147 = add i8 %i.k, -1           ; 2 uses
  %i.fj = icmp ult i8 %switch.tableidx147, 12
  br i1 %i.fj, label %switch.lookup148, label %bb.r

switch.lookup148:                                 ; preds = %bb.q
  %i.fk = zext nneg i8 %switch.tableidx147 to i64
  %switch.gep149 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.selfTop.7, i64 %i.fk
  %switch.load150 = load i32, ptr %switch.gep149, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %switch.lookup148
  %.016.i.i60 = phi i32 [ -1, %bb.q ], [ %switch.load150, %switch.lookup148 ] ; 2 uses
  %i.fl = or i32 %.016.i.i60, %.0.i.i58
  %or.cond.not.i.i61 = icmp sgt i32 %i.fl, -1
  br i1 %or.cond.not.i.i61, label %convert_sides_to_points.exit.i79, label %convert_sides_to_points.exit.thread.i62

convert_sides_to_points.exit.i79:                 ; preds = %bb.r
  %i.fm = zext nneg i32 %.016.i.i60 to i64
  %i.fn = getelementptr inbounds nuw [32 x i8], ptr @__const.convert_sides_to_points.pair_a, i64 %i.fm
  %i.fo = zext nneg i32 %.0.i.i58 to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !71
  switch i32 %i.fq, label %convert_sides_to_points.exit.thread.i62 [
    i32 12, label %bb.s
    i32 67, label %bb.s
  ]

bb.s:                                             ; preds = %convert_sides_to_points.exit.i79, %convert_sides_to_points.exit.i79
  %i.fr = fcmp oeq double %i.ew, %i.fd
  %9 = sub nsw i32 0, %..i56
  %spec.select.i80 = select i1 %i.fr, i32 %9, i32 %..i56
  br label %convert_sides_to_points.exit.thread.i62

convert_sides_to_points.exit.thread.i62:          ; preds = %bb.s, %convert_sides_to_points.exit.i79, %bb.r
  %.1.i63 = phi i32 [ %..i56, %convert_sides_to_points.exit.i79 ], [ %spec.select.i80, %bb.s ], [ %..i56, %bb.r ]
  %.not108.i64 = icmp eq i64 %1, 0
  br i1 %.not108.i64, label %selfRight.exit, label %.lr.ph.i65

.lr.ph.i65:                                       ; preds = %convert_sides_to_points.exit.thread.i62
  %i.fs = insertelement <2 x double> poison, double %i.fg, i64 0
  %i.ft = shufflevector <2 x double> %i.fs, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fu = fadd nsz <2 x double> %i.fc, %i.ft
  %i.fv = fsub nsz <2 x double> %i.fu, %i.ez
  %i.fw = fmul nsz <2 x double> %i.fv, splat (double 3.000000e+00)
  %i.fx = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.ft, <2 x double> %i.fw)
  %i.fy = sitofp i32 %.1.i63 to double
  %.sroa.848.0..sroa_idx49.i66 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fz = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ga = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.gb = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.gc = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.gd = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ge = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.gf = fadd double %i.ew, %i.fd
  %i.gg = fmul double %i.gf, 5.000000e-01
  %i.gh = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.gi = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.gj = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.gk = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.gl = getelementptr inbounds nuw i8, ptr %6, i64 96
  %.sroa.8.0..sroa_idx37.i67 = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.gm = insertelement <2 x double> poison, double %2, i64 0
  %i.gn = shufflevector <2 x double> %i.gm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.go = extractelement <2 x double> %i.fc, i64 0
  %i.gp = extractelement <2 x double> %i.fc, i64 1
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %.lr.ph.i65
  %.093107.i68 = phi i64 [ 0, %.lr.ph.i65 ], [ %i.iq, %bb.w ] ; 2 uses
  %.095106.i69 = phi double [ 0.000000e+00, %.lr.ph.i65 ], [ %i.gv, %bb.w ]
  %.096105.i70 = phi double [ %i.fg, %.lr.ph.i65 ], [ %.197.i77, %bb.w ]
  %i.gq = phi <2 x double> [ %i.fx, %.lr.ph.i65 ], [ %i.gu, %bb.w ]
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.093107.i68
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !103 ; 6 uses
  %i.gt = fadd double %2, %.096105.i70            ; 5 uses
  %i.gu = fadd <2 x double> %i.gn, %i.gq          ; 2 uses
  %i.gv = call double @llvm.fmuladd.f64(double %i.fy, double %i.er, double %.095106.i69) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store double %i.go, ptr %6, align 16, !tbaa !10
  store double %i.ew, ptr %.sroa.848.0..sroa_idx49.i66, align 8, !tbaa !10
  %i.gw = fadd double %i.ew, %i.gv                ; 2 uses
  store double %i.gw, ptr %i.ga, align 8, !tbaa !70
  %i.gx = fsub double %.sroa.0.0.copyload.i47, %i.gt ; 3 uses
  store double %i.gx, ptr %i.gb, align 16, !tbaa !69
  store double %i.gw, ptr %i.gc, align 8, !tbaa !70
  store double %i.gx, ptr %i.gd, align 16, !tbaa !69
  store double %i.gg, ptr %i.ge, align 8, !tbaa !70
  store double %i.gx, ptr %i.gh, align 16, !tbaa !69
  %i.gy = fsub double %i.fd, %i.gv                ; 2 uses
  store double %i.gy, ptr %i.gi, align 8, !tbaa !70
  %i.gz = fdiv <2 x double> %i.gu, splat (double 3.000000e+00) ; 2 uses
  %foldExtExtBinop162 = fsub <2 x double> %i.fc, %i.gz
  %i.ha = extractelement <2 x double> %foldExtExtBinop162, i64 0
  store double %i.ha, ptr %i.fz, align 16, !tbaa !69
  %foldExtExtBinop164 = fsub <2 x double> %i.fc, %i.gz
  %i.hb = extractelement <2 x double> %foldExtExtBinop164, i64 1
  store double %i.hb, ptr %i.gj, align 16, !tbaa !69
  store double %i.gy, ptr %i.gk, align 8, !tbaa !70
  store double %i.gp, ptr %i.gl, align 16, !tbaa !10
  store double %i.fd, ptr %.sroa.8.0..sroa_idx37.i67, align 8, !tbaa !10
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gs, i64 16 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !16
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 120
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !105
  %.not.i73 = icmp eq ptr %i.hf, null
  br i1 %.not.i73, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hg = load i32, ptr %i.gs, align 8
  %i.hh = and i32 %i.hg, 3
  %i.hi = icmp eq i32 %i.hh, 3
  %i.hj = select i1 %i.hi, i64 56, i64 120
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.hj
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !64
  %i.hm = call ptr @agraphof(ptr noundef %i.hl) #15
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !16
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 132
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !108
  %i.hr = and i32 %i.hq, 1
  %.not101.i74 = icmp eq i32 %i.hr, 0
  %i.hs = load ptr, ptr %i.hc, align 8, !tbaa !16
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 120
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !105 ; 4 uses
  %.111.i75 = select i1 %.not101.i74, i64 40, i64 48
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 %.111.i75
  %.094.i76 = load double, ptr %i.hv, align 8, !tbaa !10 ; 3 uses
  %i.hw = load ptr, ptr %i.es, align 8, !tbaa !16 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 32
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !86
  %i.hz = fsub double %i.hy, %i.gt
  %i.ia = fmul double %.094.i76, 5.000000e-01
  %i.ib = fsub double %i.hz, %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hu, i64 72
  store double %i.ib, ptr %i.ic, align 8, !tbaa !110
  %i.id = getelementptr inbounds nuw i8, ptr %i.hw, i64 40
  %i.ie = load double, ptr %i.id, align 8, !tbaa !87
  %i.if = getelementptr inbounds nuw i8, ptr %i.hu, i64 80
  store double %i.ie, ptr %i.if, align 8, !tbaa !111
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hu, i64 105
  store i8 1, ptr %i.ig, align 1, !tbaa !112
  %i.ih = fcmp ogt double %.094.i76, %2
  br i1 %i.ih, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ii = fsub double %.094.i76, %2
  %i.ij = fadd double %i.gt, %i.ii
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.197.i77 = phi double [ %i.ij, %bb.v ], [ %i.gt, %bb.u ], [ %i.gt, %bb.t ]
  %i.ik = load i32, ptr %i.gs, align 8
  %i.il = and i32 %i.ik, 3
  %i.im = icmp eq i32 %i.il, 2
  %i.in = select i1 %i.im, i64 56, i64 -8
  %i.io = getelementptr inbounds i8, ptr %i.gs, i64 %i.in
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !64
  call void @clip_and_install(ptr noundef nonnull %i.gs, ptr noundef %i.ip, ptr noundef nonnull %6, i64 noundef 7, ptr noundef readonly %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.iq = add nuw i64 %.093107.i68, 1             ; 2 uses
  %exitcond.not.i78 = icmp eq i64 %i.iq, %1
  br i1 %exitcond.not.i78, label %selfRight.exit, label %bb.t, !llvm.loop !160

bb.x:                                             ; preds = %bb.e
  %i.ir = and i32 %i.l, 4
  %.not43 = icmp eq i32 %i.ir, 0
  br i1 %.not43, label %bb.y, label %selfRight.exit.sink.split

bb.y:                                             ; preds = %bb.x
  %i.is = and i32 %i.l, 1
  %.not44 = icmp eq i32 %i.is, 0
  br i1 %.not44, label %selfRight.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.it = load i32, ptr %i.a, align 8
  %i.iu = and i32 %i.it, 3
  %i.iv = icmp eq i32 %i.iu, 3
  %i.iw = select i1 %i.iv, i64 56, i64 120
  %i.ix = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.iw
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !64
  %i.iz = fmul nsz double %2, 5.000000e-01
  %i.ja = uitofp nsz i64 %1 to double
  %i.jb = fdiv nsz double %i.iz, %i.ja
  %i.jc = tail call nsz double @llvm.maxnum.f64(double %i.jb, double 2.000000e+00)
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iy, i64 16 ; 2 uses
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !16 ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 32
  %.sroa.0.0.copyload.i93 = load double, ptr %i.jf, align 8, !tbaa !10 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.je, i64 40
  %.sroa.5.0.copyload.i = load double, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !10
  %i.jg = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.069.0.copyload.i = load double, ptr %i.jg, align 8, !tbaa !10
  %.sroa.1075.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.1075.0.copyload.i = load double, ptr %.sroa.1075.0..sroa_idx.i, align 8, !tbaa !10
  %i.jh = fadd double %.sroa.0.0.copyload.i93, %.sroa.069.0.copyload.i ; 4 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.sroa.059.0.copyload.i = load double, ptr %i.ji, align 8, !tbaa !10
  %.sroa.10.0..sroa_idx.i94 = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %.sroa.10.0.copyload.i95 = load double, ptr %.sroa.10.0..sroa_idx.i94, align 8, !tbaa !10
  %i.jj = fadd double %.sroa.0.0.copyload.i93, %.sroa.059.0.copyload.i ; 4 uses
  %i.jk = insertelement <2 x double> poison, double %.sroa.5.0.copyload.i, i64 0 ; 2 uses
  %i.jl = shufflevector <2 x double> %i.jk, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jm = insertelement <2 x double> poison, double %.sroa.1075.0.copyload.i, i64 0
  %i.jn = insertelement <2 x double> %i.jm, double %.sroa.10.0.copyload.i95, i64 1
  %i.jo = fadd <2 x double> %i.jl, %i.jn          ; 5 uses
  %i.jp = fcmp ult double %i.jh, %i.jj
  %..i96 = select i1 %i.jp, i32 -1, i32 1         ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.je, i64 96
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !88
  %i.js = fmul double %i.jr, 5.000000e-01         ; 2 uses
  %switch.tableidx151 = add i8 %i.o, -1           ; 2 uses
  %i.jt = icmp ult i8 %switch.tableidx151, 12
  br i1 %i.jt, label %switch.lookup152, label %bb.aa

switch.lookup152:                                 ; preds = %bb.z
  %i.ju = zext nneg i8 %switch.tableidx151 to i64
  %switch.gep153 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.selfTop.7, i64 %i.ju
  %switch.load154 = load i32, ptr %switch.gep153, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %switch.lookup152
  %.0.i.i98 = phi i32 [ -1, %bb.z ], [ %switch.load154, %switch.lookup152 ] ; 2 uses
  %switch.tableidx155 = add i8 %i.k, -1           ; 2 uses
  %i.jv = icmp ult i8 %switch.tableidx155, 12
  br i1 %i.jv, label %switch.lookup156, label %bb.ab

switch.lookup156:                                 ; preds = %bb.aa
  %i.jw = zext nneg i8 %switch.tableidx155 to i64
  %switch.gep157 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.selfTop.7, i64 %i.jw
  %switch.load158 = load i32, ptr %switch.gep157, align 4
  br label %bb.ab
end_hunk_0
