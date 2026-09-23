Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/splines?download=true
inline.NumInlined: 22
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@endpath:bb.a
bb.ah:                                            ; preds = %bb.af
  %i.ht = fadd double %i.gz, -1.000000e+00
  %.sroa.22.1 = select i1 %i.hc, double %i.hk, double %i.hj
  %.sroa.12.1 = select i1 %i.hc, double %i.hl, double %i.hm
  %i.hu = getelementptr inbounds nuw i8, ptr %3, i64 56
  store double %i.ht, ptr %i.hu, align 8, !tbaa !11
  %.sroa.12.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %3, i64 64
  store double %.sroa.12.1, ptr %.sroa.12.0..sroa_idx24, align 8, !tbaa !11
  %.sroa.20.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.hv = extractelement <2 x double> %i.eu, i64 0
  store double %i.hv, ptr %.sroa.20.0..sroa_idx35, align 8, !tbaa !11
  %.sroa.22.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %3, i64 80
  store double %.sroa.22.1, ptr %.sroa.22.0..sroa_idx45, align 8, !tbaa !11
  %i.hw = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 1, ptr %i.hw, align 4, !tbaa !103
  %i.hx = load double, ptr %i.z, align 8, !tbaa !159
  %i.hy = fadd double %i.hx, 1.000000e+00
  store double %i.hy, ptr %i.z, align 8, !tbaa !159
  br label %.preheader341

.preheader341:                                    ; preds = %bb.ae, %bb.ah, %bb.ag, %bb.z
  br label %bb.ai

bb.ai:                                            ; preds = %.preheader341, %bb.aj
  %.0 = phi ptr [ %i.ic, %bb.aj ], [ %1, %.preheader341 ] ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !18 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 160
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !50 ; 2 uses
  %.not298 = icmp eq ptr %i.ic, null
  br i1 %.not298, label %.critedge2, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 152
  %i.ie = load i8, ptr %i.id, align 8, !tbaa !51
  %.not299 = icmp eq i8 %i.ie, 0
  br i1 %.not299, label %.critedge2, label %bb.ai, !llvm.loop !152

.critedge2:                                       ; preds = %bb.ai, %bb.aj
  %i.if = load i32, ptr %.0, align 8
  %i.ig = and i32 %i.if, 3
  %i.ih = icmp eq i32 %i.ig, 2
  %i.ii = select i1 %i.ih, i64 56, i64 -8
  %i.ij = getelementptr inbounds i8, ptr %.0, i64 %i.ii
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !65
  %i.il = icmp eq ptr %i.g, %i.ik
  %.337 = select i1 %i.il, i64 106, i64 58
  %i.im = getelementptr inbounds nuw i8, ptr %i.ia, i64 %.337
  store i8 0, ptr %i.im, align 2, !tbaa !69
  %i.in = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 %i.et, ptr %i.in, align 8, !tbaa !86
  br label %bb.au

bb.ak:                                            ; preds = %bb.i, %bb.x
  %i.io = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !86
  br label %bb.al

bb.al:                                            ; preds = %bb.j, %bb.k, %bb.ak
  %.0280 = phi i32 [ %i.ip, %bb.ak ], [ 4, %bb.k ], [ 4, %bb.j ]
  %.not293 = icmp eq ptr %.0281, null
  br i1 %.not293, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.iq = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 72
  %i.is = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.it = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.iu = call i32 %.0281(ptr noundef nonnull %i.g, ptr noundef nonnull %i.ir, i32 noundef %.0280, ptr noundef nonnull %i.is, ptr noundef nonnull %i.it) #15 ; 2 uses
  %.not294 = icmp eq i32 %i.iu, 0
  br i1 %.not294, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.iv = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 %i.iu, ptr %i.iv, align 8, !tbaa !86
  br label %bb.au

bb.ao:                                            ; preds = %bb.am, %bb.al
  %i.iw = getelementptr inbounds nuw i8, ptr %3, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.iw, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !78
  %i.ix = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 1, ptr %i.ix, align 4, !tbaa !103
  switch i32 %2, label %bb.au [
    i32 8, label %bb.ap
    i32 2, label %bb.aq
    i32 1, label %bb.at
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.iy = load double, ptr %.sroa.4110.0..sroa_idx, align 8, !tbaa !158
  %i.iz = fadd double %i.iy, 1.000000e+00
  %i.ja = getelementptr inbounds nuw i8, ptr %3, i64 64
  store double %i.iz, ptr %i.ja, align 8, !tbaa !74
  %i.jb = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 4, ptr %i.jb, align 8, !tbaa !86
  br label %bb.au

bb.aq:                                            ; preds = %bb.ao
  %i.jc = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !86
  %i.je = icmp eq i32 %i.jd, 4
  %i.jf = load double, ptr %.sroa.4110.0..sroa_idx, align 8, !tbaa !158 ; 2 uses
  br i1 %i.je, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.jg = getelementptr inbounds nuw i8, ptr %3, i64 64
  store double %i.jf, ptr %i.jg, align 8, !tbaa !74
  br label %bb.au

bb.as:                                            ; preds = %bb.aq
  %i.jh = getelementptr inbounds nuw i8, ptr %3, i64 80
  store double %i.jf, ptr %i.jh, align 8, !tbaa !75
  br label %bb.au

bb.at:                                            ; preds = %bb.ao
  %i.ji = load double, ptr %.sroa.4110.0..sroa_idx, align 8, !tbaa !158 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %3, i64 64
  store double %i.ji, ptr %i.jj, align 8, !tbaa !74
  %i.jk = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 4, ptr %i.jk, align 8, !tbaa !86
  %i.jl = fadd double %i.ji, 1.000000e+00
  store double %i.jl, ptr %.sroa.4110.0..sroa_idx, align 8, !tbaa !158
  br label %bb.au

bb.au:                                            ; preds = %bb.an, %bb.ar, %bb.as, %bb.at, %bb.ap, %bb.ao, %.critedge2, %.critedge
  ret void
}

; Function Attrs: nounwind uwtable
define double @selfRightSpace(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !106  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.f = load i8, ptr %i.e, align 8, !tbaa !107, !range !66, !noundef !67
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.i = load i8, ptr %i.h, align 8, !tbaa !108, !range !66, !noundef !67
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 61
  %i.l = load i8, ptr %i.k, align 1, !tbaa !84    ; 2 uses
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %i.n = and i32 %i.m, 8
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 109
  %i.p = load i8, ptr %i.o, align 1, !tbaa !105   ; 2 uses
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
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !65
  %i.y = tail call ptr @agraphof(ptr noundef %i.x) #15
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 132
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !109
  %i.ad = and i32 %i.ac, 1
  %.not23 = icmp eq i32 %i.ad, 0
  %.in.v = select i1 %.not23, i64 40, i64 48
  %.in = getelementptr inbounds nuw i8, ptr %i.d, i64 %.in.v
  %i.ae = load double, ptr %.in, align 8, !tbaa !11
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !104    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 19 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load i8, ptr %i.d, align 8, !tbaa !107, !range !66, !noundef !67
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.h = load i8, ptr %i.g, align 8, !tbaa !108, !range !66, !noundef !67
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 61
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !84
  %.phi.trans.insert127 = getelementptr inbounds nuw i8, ptr %i.c, i64 109
  %.pre128 = load i8, ptr %.phi.trans.insert127, align 1, !tbaa !105
  br label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 61
  %i.k = load i8, ptr %i.j, align 1, !tbaa !84    ; 6 uses
  %i.l = zext i8 %i.k to i32                      ; 4 uses
  %i.m = and i32 %i.l, 8
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 109
  %i.o = load i8, ptr %i.n, align 1, !tbaa !105   ; 4 uses
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
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !65
  %i.z = fmul nsz double %3, 5.000000e-01
  %i.aa = uitofp nsz i64 %1 to double
  %i.ab = fdiv nsz double %i.z, %i.aa
  %i.ac = tail call nsz double @llvm.maxnum.f64(double %i.ab, double 2.000000e+00)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !18 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %.sroa.0.0.copyload.i = load double, ptr %i.af, align 8, !tbaa !11 ; 3 uses
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %.sroa.10.0.copyload.i = load double, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !11 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.044.0.copyload.i = load double, ptr %i.ag, align 8, !tbaa !11
  %.sroa.848.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.848.0.copyload.i = load double, ptr %.sroa.848.0..sroa_idx.i, align 8, !tbaa !11
  %i.ah = fadd double %.sroa.10.0.copyload.i, %.sroa.848.0.copyload.i ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.sroa.033.0.copyload.i = load double, ptr %i.ai, align 8, !tbaa !11
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %.sroa.8.0.copyload.i = load double, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !11
  %i.aj = insertelement <2 x double> poison, double %.sroa.0.0.copyload.i, i64 0
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = insertelement <2 x double> poison, double %.sroa.044.0.copyload.i, i64 0
  %i.am = insertelement <2 x double> %i.al, double %.sroa.033.0.copyload.i, i64 1
  %i.an = fadd <2 x double> %i.ak, %i.am          ; 5 uses
  %i.ao = fadd double %.sroa.10.0.copyload.i, %.sroa.8.0.copyload.i ; 5 uses
  %i.ap = fcmp ult double %i.ah, %i.ao
  %..i = select i1 %i.ap, i32 -1, i32 1           ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !43 ; 3 uses
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
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !72
  switch i32 %i.bb, label %convert_sides_to_points.exit.thread.i [
    i32 32, label %bb.i
    i32 65, label %bb.i
  ]

bb.i:                                             ; preds = %convert_sides_to_points.exit.i, %convert_sides_to_points.exit.i
  %i.bc = fcmp oeq double %i.ah, %i.ao
  %i.bd = sub nsw i32 0, %..i
  %spec.select.i = select i1 %i.bc, i32 %i.bd, i32 %..i
  br label %convert_sides_to_points.exit.thread.i

convert_sides_to_points.exit.thread.i:            ; preds = %bb.i, %convert_sides_to_points.exit.i, %bb.h
  %.1.i = phi i32 [ %..i, %convert_sides_to_points.exit.i ], [ %spec.select.i, %bb.i ], [ %..i, %bb.h ]
  %.not108.i = icmp eq i64 %1, 0
  br i1 %.not108.i, label %selfRight.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %convert_sides_to_points.exit.thread.i
  %i.be = fadd nsz double %.sroa.0.0.copyload.i, %i.ar
  %i.bf = insertelement <2 x double> poison, double %i.be, i64 0
  %i.bg = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bh = fsub nsz <2 x double> %i.bg, %i.an
  %i.bi = fmul nsz <2 x double> %i.bh, splat (double 3.000000e+00)
  %i.bj = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.bk = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bl = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.bk, <2 x double> %i.bi)
  %i.bm = sitofp i32 %.1.i to double
  %.sroa.848.0..sroa_idx49.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.bt = fadd double %i.ah, %i.ao
  %i.bu = fmul double %i.bt, 5.000000e-01
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 96
  %.sroa.8.0..sroa_idx37.i = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.ca = insertelement <2 x double> poison, double %2, i64 0
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cc = extractelement <2 x double> %i.an, i64 0
  %i.cd = extractelement <2 x double> %i.an, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.lr.ph.i
  %.093107.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ee, %bb.m ] ; 2 uses
  %.095106.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.cj, %bb.m ]
  %.096105.i = phi double [ %i.ar, %.lr.ph.i ], [ %.197.i, %bb.m ]
  %i.ce = phi <2 x double> [ %i.bl, %.lr.ph.i ], [ %i.ci, %bb.m ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.093107.i
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !104 ; 6 uses
  %i.ch = fadd double %2, %.096105.i              ; 5 uses
  %i.ci = fadd <2 x double> %i.cb, %i.ce          ; 2 uses
  %i.cj = call double @llvm.fmuladd.f64(double %i.bm, double %i.ac, double %.095106.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  store double %i.cc, ptr %7, align 16, !tbaa !11
  store double %i.ah, ptr %.sroa.848.0..sroa_idx49.i, align 8, !tbaa !11
  %i.ck = fadd double %i.ah, %i.cj                ; 2 uses
  store double %i.ck, ptr %i.bo, align 8, !tbaa !71
  %i.cl = fadd double %.sroa.0.0.copyload.i, %i.ch ; 3 uses
  store double %i.cl, ptr %i.bp, align 16, !tbaa !70
  store double %i.ck, ptr %i.bq, align 8, !tbaa !71
  store double %i.cl, ptr %i.br, align 16, !tbaa !70
  store double %i.bu, ptr %i.bs, align 8, !tbaa !71
  store double %i.cl, ptr %i.bv, align 16, !tbaa !70
  %i.cm = fsub double %i.ao, %i.cj                ; 2 uses
  store double %i.cm, ptr %i.bw, align 8, !tbaa !71
  %i.cn = fdiv <2 x double> %i.ci, splat (double 3.000000e+00) ; 2 uses
  %foldExtExtBinop = fadd <2 x double> %i.an, %i.cn
  %i.co = extractelement <2 x double> %foldExtExtBinop, i64 0
  store double %i.co, ptr %i.bn, align 16, !tbaa !70
  %foldExtExtBinop160 = fadd <2 x double> %i.an, %i.cn
  %i.cp = extractelement <2 x double> %foldExtExtBinop160, i64 1
  store double %i.cp, ptr %i.bx, align 16, !tbaa !70
  store double %i.cm, ptr %i.by, align 8, !tbaa !71
  store double %i.cd, ptr %i.bz, align 16, !tbaa !11
  store double %i.ao, ptr %.sroa.8.0..sroa_idx37.i, align 8, !tbaa !11
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 120
end_hunk_0
begin_hunk_1_@makeSelfEdge:bb.a
  %i.fi = icmp ult i8 %switch.tableidx143, 12
  br i1 %i.fi, label %switch.lookup144, label %bb.q

switch.lookup144:                                 ; preds = %bb.p
  %i.fj = zext nneg i8 %switch.tableidx143 to i64
  %switch.gep145 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.selfTop.7, i64 %i.fj
  %switch.load146 = load i32, ptr %switch.gep145, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %switch.lookup144
  %.0.i.i58 = phi i32 [ -1, %bb.p ], [ %switch.load146, %switch.lookup144 ] ; 2 uses
  %switch.tableidx147 = add i8 %i.k, -1           ; 2 uses
  %i.fk = icmp ult i8 %switch.tableidx147, 12
  br i1 %i.fk, label %switch.lookup148, label %bb.r

switch.lookup148:                                 ; preds = %bb.q
  %i.fl = zext nneg i8 %switch.tableidx147 to i64
  %switch.gep149 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.selfTop.7, i64 %i.fl
  %switch.load150 = load i32, ptr %switch.gep149, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %switch.lookup148
  %.016.i.i60 = phi i32 [ -1, %bb.q ], [ %switch.load150, %switch.lookup148 ] ; 2 uses
  %i.fm = or i32 %.016.i.i60, %.0.i.i58
  %or.cond.not.i.i61 = icmp sgt i32 %i.fm, -1
  br i1 %or.cond.not.i.i61, label %convert_sides_to_points.exit.i79, label %convert_sides_to_points.exit.thread.i62

convert_sides_to_points.exit.i79:                 ; preds = %bb.r
  %i.fn = zext nneg i32 %.016.i.i60 to i64
  %i.fo = getelementptr inbounds nuw [32 x i8], ptr @__const.convert_sides_to_points.pair_a, i64 %i.fn
  %i.fp = zext nneg i32 %.0.i.i58 to i64
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !72
  switch i32 %i.fr, label %convert_sides_to_points.exit.thread.i62 [
    i32 12, label %bb.s
    i32 67, label %bb.s
  ]

bb.s:                                             ; preds = %convert_sides_to_points.exit.i79, %convert_sides_to_points.exit.i79
  %i.fs = fcmp oeq double %i.ex, %i.fe
  %i.ft = sub nsw i32 0, %..i56
  %spec.select.i80 = select i1 %i.fs, i32 %i.ft, i32 %..i56
  br label %convert_sides_to_points.exit.thread.i62

convert_sides_to_points.exit.thread.i62:          ; preds = %bb.s, %convert_sides_to_points.exit.i79, %bb.r
  %.1.i63 = phi i32 [ %..i56, %convert_sides_to_points.exit.i79 ], [ %spec.select.i80, %bb.s ], [ %..i56, %bb.r ]
  %.not108.i64 = icmp eq i64 %1, 0
  br i1 %.not108.i64, label %selfRight.exit, label %.lr.ph.i65

.lr.ph.i65:                                       ; preds = %convert_sides_to_points.exit.thread.i62
  %i.fu = insertelement <2 x double> poison, double %i.fh, i64 0
  %i.fv = shufflevector <2 x double> %i.fu, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fw = fadd nsz <2 x double> %i.fd, %i.fv
  %i.fx = fsub nsz <2 x double> %i.fw, %i.fa
  %i.fy = fmul nsz <2 x double> %i.fx, splat (double 3.000000e+00)
  %i.fz = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.fv, <2 x double> %i.fy)
  %i.ga = sitofp i32 %.1.i63 to double
  %.sroa.848.0..sroa_idx49.i66 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.gb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gc = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.gd = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ge = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.gf = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.gg = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.gh = fadd double %i.ex, %i.fe
  %i.gi = fmul double %i.gh, 5.000000e-01
  %i.gj = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.gk = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.gl = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.gm = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.gn = getelementptr inbounds nuw i8, ptr %6, i64 96
  %.sroa.8.0..sroa_idx37.i67 = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.go = insertelement <2 x double> poison, double %2, i64 0
  %i.gp = shufflevector <2 x double> %i.go, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gq = extractelement <2 x double> %i.fd, i64 0
  %i.gr = extractelement <2 x double> %i.fd, i64 1
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %.lr.ph.i65
  %.093107.i68 = phi i64 [ 0, %.lr.ph.i65 ], [ %i.is, %bb.w ] ; 2 uses
  %.095106.i69 = phi double [ 0.000000e+00, %.lr.ph.i65 ], [ %i.gx, %bb.w ]
  %.096105.i70 = phi double [ %i.fh, %.lr.ph.i65 ], [ %.197.i77, %bb.w ]
  %i.gs = phi <2 x double> [ %i.fz, %.lr.ph.i65 ], [ %i.gw, %bb.w ]
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.093107.i68
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !104 ; 6 uses
  %i.gv = fadd double %2, %.096105.i70            ; 5 uses
  %i.gw = fadd <2 x double> %i.gp, %i.gs          ; 2 uses
  %i.gx = call double @llvm.fmuladd.f64(double %i.ga, double %i.es, double %.095106.i69) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store double %i.gq, ptr %6, align 16, !tbaa !11
  store double %i.ex, ptr %.sroa.848.0..sroa_idx49.i66, align 8, !tbaa !11
  %i.gy = fadd double %i.ex, %i.gx                ; 2 uses
  store double %i.gy, ptr %i.gc, align 8, !tbaa !71
  %i.gz = fsub double %.sroa.0.0.copyload.i47, %i.gv ; 3 uses
  store double %i.gz, ptr %i.gd, align 16, !tbaa !70
  store double %i.gy, ptr %i.ge, align 8, !tbaa !71
  store double %i.gz, ptr %i.gf, align 16, !tbaa !70
  store double %i.gi, ptr %i.gg, align 8, !tbaa !71
  store double %i.gz, ptr %i.gj, align 16, !tbaa !70
  %i.ha = fsub double %i.fe, %i.gx                ; 2 uses
  store double %i.ha, ptr %i.gk, align 8, !tbaa !71
  %i.hb = fdiv <2 x double> %i.gw, splat (double 3.000000e+00) ; 2 uses
  %foldExtExtBinop162 = fsub <2 x double> %i.fd, %i.hb
  %i.hc = extractelement <2 x double> %foldExtExtBinop162, i64 0
  store double %i.hc, ptr %i.gb, align 16, !tbaa !70
  %foldExtExtBinop164 = fsub <2 x double> %i.fd, %i.hb
  %i.hd = extractelement <2 x double> %foldExtExtBinop164, i64 1
  store double %i.hd, ptr %i.gl, align 16, !tbaa !70
  store double %i.ha, ptr %i.gm, align 8, !tbaa !71
  store double %i.gr, ptr %i.gn, align 16, !tbaa !11
  store double %i.fe, ptr %.sroa.8.0..sroa_idx37.i67, align 8, !tbaa !11
  %i.he = getelementptr inbounds nuw i8, ptr %i.gu, i64 16 ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !18
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 120
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !106
  %.not.i73 = icmp eq ptr %i.hh, null
  br i1 %.not.i73, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hi = load i32, ptr %i.gu, align 8
  %i.hj = and i32 %i.hi, 3
  %i.hk = icmp eq i32 %i.hj, 3
  %i.hl = select i1 %i.hk, i64 56, i64 120
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.hl
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !65
  %i.ho = call ptr @agraphof(ptr noundef %i.hn) #15
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !18
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 132
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !109
  %i.ht = and i32 %i.hs, 1
  %.not101.i74 = icmp eq i32 %i.ht, 0
  %i.hu = load ptr, ptr %i.he, align 8, !tbaa !18
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 120
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !106 ; 4 uses
  %.111.i75 = select i1 %.not101.i74, i64 40, i64 48
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 %.111.i75
  %.094.i76 = load double, ptr %i.hx, align 8, !tbaa !11 ; 3 uses
  %i.hy = load ptr, ptr %i.et, align 8, !tbaa !18 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !87
  %i.ib = fsub double %i.ia, %i.gv
  %i.ic = fmul double %.094.i76, 5.000000e-01
  %i.id = fsub double %i.ib, %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hw, i64 72
  store double %i.id, ptr %i.ie, align 8, !tbaa !111
  %i.if = getelementptr inbounds nuw i8, ptr %i.hy, i64 40
  %i.ig = load double, ptr %i.if, align 8, !tbaa !88
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hw, i64 80
  store double %i.ig, ptr %i.ih, align 8, !tbaa !112
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hw, i64 105
  store i8 1, ptr %i.ii, align 1, !tbaa !113
  %i.ij = fcmp ogt double %.094.i76, %2
  br i1 %i.ij, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ik = fsub double %.094.i76, %2
  %i.il = fadd double %i.gv, %i.ik
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.197.i77 = phi double [ %i.il, %bb.v ], [ %i.gv, %bb.u ], [ %i.gv, %bb.t ]
  %i.im = load i32, ptr %i.gu, align 8
  %i.in = and i32 %i.im, 3
  %i.io = icmp eq i32 %i.in, 2
  %i.ip = select i1 %i.io, i64 56, i64 -8
  %i.iq = getelementptr inbounds i8, ptr %i.gu, i64 %i.ip
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !65
  call void @clip_and_install(ptr noundef nonnull %i.gu, ptr noundef %i.ir, ptr noundef nonnull %6, i64 noundef 7, ptr noundef readonly %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.is = add nuw i64 %.093107.i68, 1             ; 2 uses
  %exitcond.not.i78 = icmp eq i64 %i.is, %1
  br i1 %exitcond.not.i78, label %selfRight.exit, label %bb.t, !llvm.loop !161

bb.x:                                             ; preds = %bb.e
  %i.it = and i32 %i.l, 4
  %.not43 = icmp eq i32 %i.it, 0
  br i1 %.not43, label %bb.y, label %selfRight.exit.sink.split

bb.y:                                             ; preds = %bb.x
  %i.iu = and i32 %i.l, 1
  %.not44 = icmp eq i32 %i.iu, 0
  br i1 %.not44, label %selfRight.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.iv = load i32, ptr %i.a, align 8
  %i.iw = and i32 %i.iv, 3
  %i.ix = icmp eq i32 %i.iw, 3
  %i.iy = select i1 %i.ix, i64 56, i64 120
  %i.iz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.iy
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !65
  %i.jb = fmul nsz double %2, 5.000000e-01
  %i.jc = uitofp nsz i64 %1 to double
  %i.jd = fdiv nsz double %i.jb, %i.jc
  %i.je = tail call nsz double @llvm.maxnum.f64(double %i.jd, double 2.000000e+00)
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ja, i64 16 ; 2 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !18 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 32
  %.sroa.0.0.copyload.i93 = load double, ptr %i.jh, align 8, !tbaa !11 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jg, i64 40
  %.sroa.5.0.copyload.i = load double, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !11
  %i.ji = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.069.0.copyload.i = load double, ptr %i.ji, align 8, !tbaa !11
  %.sroa.1075.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.1075.0.copyload.i = load double, ptr %.sroa.1075.0..sroa_idx.i, align 8, !tbaa !11
  %i.jj = fadd double %.sroa.0.0.copyload.i93, %.sroa.069.0.copyload.i ; 4 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.sroa.059.0.copyload.i = load double, ptr %i.jk, align 8, !tbaa !11
  %.sroa.10.0..sroa_idx.i94 = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %.sroa.10.0.copyload.i95 = load double, ptr %.sroa.10.0..sroa_idx.i94, align 8, !tbaa !11
  %i.jl = fadd double %.sroa.0.0.copyload.i93, %.sroa.059.0.copyload.i ; 4 uses
  %i.jm = insertelement <2 x double> poison, double %.sroa.5.0.copyload.i, i64 0 ; 2 uses
  %i.jn = shufflevector <2 x double> %i.jm, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jo = insertelement <2 x double> poison, double %.sroa.1075.0.copyload.i, i64 0
  %i.jp = insertelement <2 x double> %i.jo, double %.sroa.10.0.copyload.i95, i64 1
  %i.jq = fadd <2 x double> %i.jn, %i.jp          ; 5 uses
  %i.jr = fcmp ult double %i.jj, %i.jl
  %..i96 = select i1 %i.jr, i32 -1, i32 1         ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jg, i64 96
  %i.jt = load double, ptr %i.js, align 8, !tbaa !89
  %i.ju = fmul double %i.jt, 5.000000e-01         ; 2 uses
  %switch.tableidx151 = add i8 %i.o, -1           ; 2 uses
  %i.jv = icmp ult i8 %switch.tableidx151, 12
  br i1 %i.jv, label %switch.lookup152, label %bb.aa

switch.lookup152:                                 ; preds = %bb.z
  %i.jw = zext nneg i8 %switch.tableidx151 to i64
  %switch.gep153 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.selfTop.7, i64 %i.jw
  %switch.load154 = load i32, ptr %switch.gep153, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %switch.lookup152
  %.0.i.i98 = phi i32 [ -1, %bb.z ], [ %switch.load154, %switch.lookup152 ] ; 2 uses
  %switch.tableidx155 = add i8 %i.k, -1           ; 2 uses
  %i.jx = icmp ult i8 %switch.tableidx155, 12
  br i1 %i.jx, label %switch.lookup156, label %bb.ab

switch.lookup156:                                 ; preds = %bb.aa
  %i.jy = zext nneg i8 %switch.tableidx155 to i64
  %switch.gep157 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.selfTop.7, i64 %i.jy
  %switch.load158 = load i32, ptr %switch.gep157, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %switch.lookup156
  %.016.i.i100 = phi i32 [ -1, %bb.aa ], [ %switch.load158, %switch.lookup156 ] ; 2 uses
  %i.jz = or i32 %.016.i.i100, %.0.i.i98
  %or.cond.not.i.i101 = icmp sgt i32 %i.jz, -1
  br i1 %or.cond.not.i.i101, label %convert_sides_to_points.exit.i109, label %convert_sides_to_points.exit.thread.i102

convert_sides_to_points.exit.i109:                ; preds = %bb.ab
  %i.ka = zext nneg i32 %.016.i.i100 to i64
  %i.kb = getelementptr inbounds nuw [32 x i8], ptr @__const.convert_sides_to_points.pair_a, i64 %i.ka
  %i.kc = zext nneg i32 %.0.i.i98 to i64
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !72
  %.fr.i = freeze i32 %i.ke
  %cond.i = icmp eq i32 %.fr.i, 67
  %i.kf = sub nsw i32 0, %..i96
  %spec.select.i110 = select i1 %cond.i, i32 %i.kf, i32 %..i96
  br label %convert_sides_to_points.exit.thread.i102

convert_sides_to_points.exit.thread.i102:         ; preds = %convert_sides_to_points.exit.i109, %bb.ab
  %i.kg = phi i32 [ %..i96, %bb.ab ], [ %spec.select.i110, %convert_sides_to_points.exit.i109 ]
  %.not108.i103 = icmp eq i64 %1, 0
  br i1 %.not108.i103, label %selfRight.exit, label %.lr.ph.i104

.lr.ph.i104:                                      ; preds = %convert_sides_to_points.exit.thread.i102
  %i.kh = insertelement <2 x double> poison, double %i.ju, i64 0
  %i.ki = shufflevector <2 x double> %i.kh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kj = fadd nsz <2 x double> %i.jq, %i.ki
  %i.kk = fsub nsz <2 x double> %i.kj, %i.jn
  %i.kl = fmul nsz <2 x double> %i.kk, splat (double 3.000000e+00)
  %i.km = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.ki, <2 x double> %i.kl)
  %i.kn = sitofp i32 %i.kg to double
  %.sroa.1075.0..sroa_idx76.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ko = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.kp = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.kq = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.kr = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ks = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.kt = fadd double %i.jj, %i.jl
  %i.ku = fmul double %i.kt, 5.000000e-01
  %i.kv = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.kw = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.kx = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.ky = getelementptr inbounds nuw i8, ptr %5, i64 104
  %8 = insertelement <2 x double> %i.jm, double %i.jl, i64 1
  %i.kz = insertelement <2 x double> poison, double %3, i64 0
  %i.la = shufflevector <2 x double> %i.kz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lb = extractelement <2 x double> %i.jq, i64 0
  %i.lc = extractelement <2 x double> %i.jq, i64 1
  %9 = shufflevector <2 x double> %8, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %bb.ac

bb.ac:                                            ; preds = %bb.af, %.lr.ph.i104
  %.0107.i = phi i64 [ 0, %.lr.ph.i104 ], [ %i.nb, %bb.af ] ; 2 uses
  %.092106.i = phi double [ %i.ju, %.lr.ph.i104 ], [ %.1.i107, %bb.af ]
  %.093105.i = phi double [ 0.000000e+00, %.lr.ph.i104 ], [ %i.li, %bb.af ]
  %i.ld = phi <2 x double> [ %i.km, %.lr.ph.i104 ], [ %i.lh, %bb.af ]
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0107.i
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !104 ; 6 uses
  %i.lg = fadd double %3, %.092106.i              ; 5 uses
  %i.lh = fadd <2 x double> %i.la, %i.ld          ; 2 uses
  %i.li = call double @llvm.fmuladd.f64(double %i.kn, double %i.je, double %.093105.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store double %i.jj, ptr %5, align 16, !tbaa !11
  store double %i.lb, ptr %.sroa.1075.0..sroa_idx76.i, align 8, !tbaa !11
  %i.lj = fadd double %i.jj, %i.li                ; 2 uses
  store double %i.lj, ptr %i.ko, align 16, !tbaa !70
  store double %i.lj, ptr %i.kq, align 16, !tbaa !70
  store double %i.ku, ptr %i.ks, align 16, !tbaa !70
  %10 = insertelement <2 x double> poison, double %i.lg, i64 0
  %11 = insertelement <2 x double> %10, double %i.li, i64 1
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %13 = fsub <4 x double> %9, %12                 ; 2 uses
  %14 = extractelement <4 x double> %13, i64 0
  store double %14, ptr %i.kr, align 8, !tbaa !71
  store <4 x double> %13, ptr %i.kv, align 8, !tbaa !11
  %i.lk = fdiv <2 x double> %i.lh, splat (double 3.000000e+00) ; 2 uses
  %foldExtExtBinop166 = fsub <2 x double> %i.jq, %i.lk
  %i.ll = extractelement <2 x double> %foldExtExtBinop166, i64 0
  store double %i.ll, ptr %i.kp, align 8, !tbaa !71
  %foldExtExtBinop168 = fsub <2 x double> %i.jq, %i.lk
  %i.lm = extractelement <2 x double> %foldExtExtBinop168, i64 1
  store double %i.lm, ptr %i.kw, align 8, !tbaa !71
  store double %i.jl, ptr %i.kx, align 16, !tbaa !11
  store double %i.lc, ptr %i.ky, align 8, !tbaa !11
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lf, i64 16 ; 2 uses
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !18
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 120
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !106
  %.not.i105 = icmp eq ptr %i.lq, null
  br i1 %.not.i105, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.lr = load i32, ptr %i.lf, align 8
  %i.ls = and i32 %i.lr, 3
  %i.lt = icmp eq i32 %i.ls, 3
  %i.lu = select i1 %i.lt, i64 56, i64 120
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.lu
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !65
  %i.lx = call ptr @agraphof(ptr noundef %i.lw) #15
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !18
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 132
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !109
  %i.mc = and i32 %i.mb, 1
  %.not99.i = icmp eq i32 %i.mc, 0
  %i.md = load ptr, ptr %i.ln, align 8, !tbaa !18
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 120
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !106 ; 4 uses
  %.111.i106 = select i1 %.not99.i, i64 48, i64 40
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 %.111.i106
  %.091.i = load double, ptr %i.mg, align 8, !tbaa !11 ; 3 uses
  %i.mh = load ptr, ptr %i.jf, align 8, !tbaa !18 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 40
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !88
  %i.mk = fsub double %i.mj, %i.lg
  %i.ml = fmul double %.091.i, 5.000000e-01
  %i.mm = fsub double %i.mk, %i.ml
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mf, i64 80
  store double %i.mm, ptr %i.mn, align 8, !tbaa !112
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mh, i64 32
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !87
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mf, i64 72
  store double %i.mp, ptr %i.mq, align 8, !tbaa !111
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mf, i64 105
  store i8 1, ptr %i.mr, align 1, !tbaa !113
  %i.ms = fcmp ogt double %.091.i, %3
  br i1 %i.ms, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.mt = fsub double %.091.i, %3
  %i.mu = fadd double %i.lg, %i.mt
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.1.i107 = phi double [ %i.mu, %bb.ae ], [ %i.lg, %bb.ad ], [ %i.lg, %bb.ac ]
  %i.mv = load i32, ptr %i.lf, align 8
  %i.mw = and i32 %i.mv, 3
  %i.mx = icmp eq i32 %i.mw, 2
  %i.my = select i1 %i.mx, i64 56, i64 -8
  %i.mz = getelementptr inbounds i8, ptr %i.lf, i64 %i.my
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !65
  call void @clip_and_install(ptr noundef nonnull %i.lf, ptr noundef %i.na, ptr noundef nonnull %5, i64 noundef 7, ptr noundef readonly %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.nb = add nuw i64 %.0107.i, 1                 ; 2 uses
  %exitcond.not.i108 = icmp eq i64 %i.nb, %1
  br i1 %exitcond.not.i108, label %selfRight.exit, label %bb.ac, !llvm.loop !162

selfRight.exit.sink.split:                        ; preds = %bb.x, %bb.n, %bb.o
  tail call fastcc void @selfTop(ptr noundef nonnull %0, i64 noundef %1, double noundef %2, double noundef %3, ptr noundef %4)
  br label %selfRight.exit

selfRight.exit:                                   ; preds = %bb.w, %bb.af, %bb.m, %selfRight.exit.sink.split, %convert_sides_to_points.exit.thread.i102, %convert_sides_to_points.exit.thread.i62, %convert_sides_to_points.exit.thread.i, %bb.y
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @selfTop(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, double noundef %2, double noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca [7 x %struct.pointf_s], align 16    ; 17 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !104    ; 3 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 3
  %i.d = icmp eq i32 %i.c, 3
  %i.e = select i1 %i.d, i64 56, i64 120
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !65
  %i.h = fmul nsz double %2, 5.000000e-01
  %i.i = uitofp nsz i64 %1 to double
  %i.j = fdiv nsz double %i.h, %i.i
  %i.k = tail call nsz double @llvm.maxnum.f64(double %i.j, double 2.000000e+00) ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18   ; 15 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.0.0.copyload = load double, ptr %i.n, align 8, !tbaa !11 ; 14 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.17.0.copyload = load double, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !11 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18   ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.072.0.copyload = load double, ptr %i.q, align 8, !tbaa !11
  %.sroa.1785.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.1785.0.copyload = load double, ptr %.sroa.1785.0..sroa_idx, align 8, !tbaa !11
  %i.r = fadd double %.sroa.0.0.copyload, %.sroa.072.0.copyload ; 11 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %.sroa.057.0.copyload = load double, ptr %i.s, align 8, !tbaa !11
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %.sroa.15.0.copyload = load double, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !11
  %i.t = fadd double %.sroa.0.0.copyload, %.sroa.057.0.copyload ; 9 uses
  %i.u = insertelement <2 x double> poison, double %.sroa.17.0.copyload, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = insertelement <2 x double> poison, double %.sroa.1785.0.copyload, i64 0
  %i.x = insertelement <2 x double> %i.w, double %.sroa.15.0.copyload, i64 1
  %i.y = fadd <2 x double> %i.v, %i.x             ; 5 uses
  %i.z = fcmp ult double %i.r, %i.t
  %. = select i1 %i.z, double -1.000000e+00, double 1.000000e+00 ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !89
  %i.ac = fmul double %i.ab, 5.000000e-01         ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 61
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !84
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 109
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !105
  %switch.tableidx = add i8 %i.ag, -1             ; 2 uses
  %i.ah = icmp ult i8 %switch.tableidx, 12
  br i1 %i.ah, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.ai = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.selfTop.7, i64 %i.ai
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0.i = phi i32 [ -1, %bb.a ], [ %switch.load, %switch.lookup ] ; 2 uses
  %switch.tableidx161 = add i8 %i.ae, -1          ; 2 uses
  %i.aj = icmp ult i8 %switch.tableidx161, 12
  br i1 %i.aj, label %switch.lookup162, label %bb.c

switch.lookup162:                                 ; preds = %bb.b
  %i.ak = zext nneg i8 %switch.tableidx161 to i64
  %switch.gep163 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.selfTop.7, i64 %i.ak
  %switch.load164 = load i32, ptr %switch.gep163, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %switch.lookup162
  %.016.i = phi i32 [ -1, %bb.b ], [ %switch.load164, %switch.lookup162 ] ; 2 uses
  %i.al = or i32 %.016.i, %.0.i
  %or.cond.not.i = icmp sgt i32 %i.al, -1
  br i1 %or.cond.not.i, label %convert_sides_to_points.exit, label %convert_sides_to_points.exit.thread

convert_sides_to_points.exit:                     ; preds = %bb.c
  %i.am = zext nneg i32 %.016.i to i64
  %i.an = getelementptr inbounds nuw [32 x i8], ptr @__const.convert_sides_to_points.pair_a, i64 %i.am
  %i.ao = zext nneg i32 %.0.i to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !72
  switch i32 %i.aq, label %convert_sides_to_points.exit.thread [
    i32 15, label %bb.d
    i32 38, label %bb.e
    i32 41, label %bb.f
    i32 48, label %bb.g
    i32 14, label %bb.h
    i32 37, label %bb.h
    i32 47, label %bb.h
    i32 51, label %bb.h
    i32 57, label %bb.h
    i32 58, label %bb.h
    i32 73, label %bb.i
    i32 83, label %bb.j
    i32 84, label %bb.k
    i32 74, label %bb.l
    i32 75, label %bb.l
    i32 85, label %bb.l
  ]

bb.d:                                             ; preds = %convert_sides_to_points.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.as = load double, ptr %i.ar, align 8, !tbaa !43
  %i.at = fsub double %i.t, %.sroa.0.0.copyload
  %i.au = fsub double %i.as, %i.at
  %i.av = fadd double %i.k, %i.au
  %i.aw = fmul double %., %i.av
  br label %convert_sides_to_points.exit.thread

bb.e:                                             ; preds = %convert_sides_to_points.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !91
  %i.az = fsub double %.sroa.0.0.copyload, %i.t
  %i.ba = fsub double %i.ay, %i.az
  %i.bb = fadd double %i.k, %i.ba
  %i.bc = fmul double %., %i.bb
  br label %convert_sides_to_points.exit.thread

bb.f:                                             ; preds = %convert_sides_to_points.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.be = load double, ptr %i.bd, align 8, !tbaa !43
  %i.bf = fsub double %i.r, %.sroa.0.0.copyload
  %i.bg = fsub double %i.be, %i.bf
  %i.bh = fadd double %i.k, %i.bg
  %i.bi = fmul double %., %i.bh
  br label %convert_sides_to_points.exit.thread

bb.g:                                             ; preds = %convert_sides_to_points.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 112
end_hunk_1
