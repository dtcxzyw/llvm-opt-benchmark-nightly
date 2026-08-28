Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/shapes?download=true
inline.NumInlined: 197
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@compassPort:bb.a
bb.y:                                             ; preds = %bb.f
  %i.ay = load i8, ptr %i.w, align 1, !tbaa !87
  switch i8 %i.ay, label %bb.ak [
    i8 0, label %bb.z
    i8 101, label %bb.ac
    i8 119, label %bb.af
  ]

bb.z:                                             ; preds = %bb.y
  %.not143 = icmp eq ptr %5, null
  br i1 %.not143, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = tail call fastcc { double, double } @compassPoint(ptr noundef %5, double noundef %i.u, double noundef %.sroa.050.0) ; 2 uses
  %i.ba = extractvalue { double, double } %i.az, 0
  %i.bb = extractvalue { double, double } %i.az, 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.sroa.050.6 = phi double [ %i.ba, %bb.aa ], [ %.sroa.050.0, %bb.z ]
  %.sroa.26.6 = phi double [ %i.bb, %bb.aa ], [ %.sroa.22.1, %bb.z ]
  %i.bc = and i8 %4, 4
  br label %bb.ak

bb.ac:                                            ; preds = %bb.y
  %.not142 = icmp eq ptr %5, null
  br i1 %.not142, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bd = tail call fastcc { double, double } @compassPoint(ptr noundef %5, double noundef %i.u, double noundef %i.u) ; 2 uses
  %i.be = extractvalue { double, double } %i.bd, 0
  %i.bf = extractvalue { double, double } %i.bd, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %.sroa.050.7 = phi double [ %i.be, %bb.ad ], [ %.sroa.13.1, %bb.ac ]
  %.sroa.26.7 = phi double [ %i.bf, %bb.ad ], [ %.sroa.22.1, %bb.ac ]
  %i.bg = and i8 %4, 6
  br label %bb.ak

bb.af:                                            ; preds = %bb.y
  %.not141 = icmp eq ptr %5, null
  br i1 %.not141, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bh = fneg double %i.u
  %i.bi = tail call fastcc { double, double } @compassPoint(ptr noundef %5, double noundef %i.u, double noundef %i.bh) ; 2 uses
  %i.bj = extractvalue { double, double } %i.bi, 0
  %i.bk = extractvalue { double, double } %i.bi, 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.sroa.050.8 = phi double [ %i.bj, %bb.ag ], [ %.sroa.055.1, %bb.af ]
  %.sroa.26.8 = phi double [ %i.bk, %bb.ag ], [ %.sroa.22.1, %bb.af ]
  %i.bl = and i8 %4, 12
  br label %bb.ak

bb.ai:                                            ; preds = %bb.f
  br label %bb.ak

bb.aj:                                            ; preds = %bb.f
  br label %bb.ak

bb.ak:                                            ; preds = %bb.y, %bb.u, %bb.k, %bb.g, %bb.f, %bb.ai, %bb.aj, %bb.j, %bb.t, %bb.q, %bb.n, %bb.x, %bb.ah, %bb.ae, %bb.ab, %bb.e, %bb.d
  %.1 = phi i1 [ %.not, %bb.aj ], [ %.not, %bb.d ], [ true, %bb.j ], [ %.not, %bb.g ], [ true, %bb.n ], [ true, %bb.q ], [ true, %bb.t ], [ %.not, %bb.k ], [ true, %bb.x ], [ %.not, %bb.u ], [ true, %bb.ab ], [ true, %bb.ae ], [ true, %bb.ah ], [ %.not, %bb.ai ], [ %.not, %bb.f ], [ %.not, %bb.e ], [ %.not, %bb.y ]
  %.0129 = phi i8 [ 1, %bb.aj ], [ 1, %bb.d ], [ 0, %bb.j ], [ 1, %bb.g ], [ 0, %bb.n ], [ 0, %bb.q ], [ 0, %bb.t ], [ 1, %bb.k ], [ 0, %bb.x ], [ 1, %bb.u ], [ 0, %bb.ab ], [ 0, %bb.ae ], [ 0, %bb.ah ], [ 1, %bb.ai ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %bb.y ]
  %.0128 = phi i8 [ 0, %bb.aj ], [ 0, %bb.d ], [ %i.ab, %bb.j ], [ 0, %bb.g ], [ %i.ah, %bb.n ], [ %i.am, %bb.q ], [ %i.ar, %bb.t ], [ 0, %bb.k ], [ %i.ax, %bb.x ], [ 0, %bb.u ], [ %i.bc, %bb.ab ], [ %i.bg, %bb.ae ], [ %i.bl, %bb.ah ], [ %4, %bb.ai ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.y ] ; 10 uses
  %.0127 = phi i1 [ false, %bb.aj ], [ false, %bb.d ], [ false, %bb.j ], [ false, %bb.g ], [ false, %bb.n ], [ false, %bb.q ], [ false, %bb.t ], [ false, %bb.k ], [ false, %bb.x ], [ false, %bb.u ], [ false, %bb.ab ], [ false, %bb.ae ], [ false, %bb.ah ], [ true, %bb.ai ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.y ] ; 2 uses
  %.0126 = phi i8 [ 0, %bb.aj ], [ 0, %bb.d ], [ 1, %bb.j ], [ 0, %bb.g ], [ 1, %bb.n ], [ 1, %bb.q ], [ 1, %bb.t ], [ 0, %bb.k ], [ 1, %bb.x ], [ 0, %bb.u ], [ 1, %bb.ab ], [ 1, %bb.ae ], [ 1, %bb.ah ], [ 0, %bb.ai ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.y ]
  %.0125 = phi double [ 0.000000e+00, %bb.aj ], [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %bb.g ], [ f0xBFF921FB54442D18, %bb.n ], [ f0xBFE921FB54442D18, %bb.q ], [ f0xC002D97C7F3321D2, %bb.t ], [ 0.000000e+00, %bb.k ], [ f0x400921FB54442D18, %bb.x ], [ 0.000000e+00, %bb.u ], [ f0x3FF921FB54442D18, %bb.ab ], [ f0x3FE921FB54442D18, %bb.ae ], [ f0x4002D97C7F3321D2, %bb.ah ], [ 0.000000e+00, %bb.ai ], [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.y ] ; 10 uses
  %.0124 = phi i32 [ 1, %bb.aj ], [ 0, %bb.d ], [ 0, %bb.j ], [ 1, %bb.g ], [ 0, %bb.n ], [ 0, %bb.q ], [ 0, %bb.t ], [ 1, %bb.k ], [ 0, %bb.x ], [ 1, %bb.u ], [ 0, %bb.ab ], [ 0, %bb.ae ], [ 0, %bb.ah ], [ 0, %bb.ai ], [ 0, %bb.f ], [ 0, %bb.e ], [ 1, %bb.y ]
  %.sroa.050.9 = phi double [ %.sroa.050.0, %bb.aj ], [ %.sroa.050.0, %bb.d ], [ %.sroa.050.1, %bb.j ], [ %.sroa.050.0, %bb.g ], [ %.sroa.050.2, %bb.n ], [ %.sroa.050.3, %bb.q ], [ %.sroa.050.4, %bb.t ], [ %.sroa.050.0, %bb.k ], [ %.sroa.050.5, %bb.x ], [ %.sroa.050.0, %bb.u ], [ %.sroa.050.6, %bb.ab ], [ %.sroa.050.7, %bb.ae ], [ %.sroa.050.8, %bb.ah ], [ %.sroa.050.0, %bb.ai ], [ %.sroa.050.0, %bb.f ], [ %.sroa.050.0, %bb.e ], [ %.sroa.050.0, %bb.y ]
  %.sroa.26.9 = phi double [ %.sroa.26.0, %bb.aj ], [ %.sroa.26.0, %bb.d ], [ %.sroa.26.1, %bb.j ], [ %.sroa.26.0, %bb.g ], [ %.sroa.26.2, %bb.n ], [ %.sroa.26.3, %bb.q ], [ %.sroa.26.4, %bb.t ], [ %.sroa.26.0, %bb.k ], [ %.sroa.26.5, %bb.x ], [ %.sroa.26.0, %bb.u ], [ %.sroa.26.6, %bb.ab ], [ %.sroa.26.7, %bb.ae ], [ %.sroa.26.8, %bb.ah ], [ %.sroa.26.0, %bb.ai ], [ %.sroa.26.0, %bb.f ], [ %.sroa.26.0, %bb.e ], [ %.sroa.26.0, %bb.y ]
  %i.bm = tail call ptr @agraphof(ptr noundef %0) #26
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !25
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 132
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !113
  %i.br = and i32 %i.bq, 3
  %i.bs = mul nuw nsw i32 %i.br, 90
  %i.bt = tail call { double, double } @cwrotatepf(double %.sroa.050.9, double %.sroa.26.9, i32 noundef %i.bs) #26 ; 2 uses
  %i.bu = extractvalue { double, double } %i.bt, 0 ; 3 uses
  %i.bv = extractvalue { double, double } %i.bt, 1 ; 3 uses
  br i1 %.0127, label %invflip_side.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bw = tail call ptr @agraphof(ptr noundef %0) #26
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !25
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 132
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !113
  %i.cb = and i32 %i.ca, 3
  switch i32 %i.cb, label %default.unreachable [
    i32 0, label %invflip_side.exit
    i32 2, label %bb.am
    i32 1, label %bb.an
    i32 3, label %bb.ao
  ]

bb.am:                                            ; preds = %bb.al
  switch i8 %.0128, label %invflip_side.exit [
    i8 4, label %bb.ap
    i8 1, label %bb.aq
  ]

bb.an:                                            ; preds = %bb.al
  %i.cc = zext i8 %.0128 to i32                   ; 2 uses
  %i.cd = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.cc)
  %i.ce = icmp eq i32 %i.cd, 1
  br i1 %i.ce, label %.split.i, label %invflip_side.exit

.split.i:                                         ; preds = %bb.an
  %i.cf = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.cc, i1 true) ; 2 uses
  %i.cg = icmp samesign ult i32 %i.cf, 4
  br i1 %i.cg, label %switch.lookup, label %invflip_side.exit

bb.ao:                                            ; preds = %bb.al
  %i.ch = zext i8 %.0128 to i32                   ; 2 uses
  %i.ci = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.ch)
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %.split1.i, label %invflip_side.exit

.split1.i:                                        ; preds = %bb.ao
  %i.ck = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ch, i1 true) ; 2 uses
  %i.cl = icmp samesign ult i32 %i.ck, 4
  br i1 %i.cl, label %switch.lookup161, label %invflip_side.exit

bb.ap:                                            ; preds = %bb.am
  br label %invflip_side.exit

bb.aq:                                            ; preds = %bb.am
  br label %invflip_side.exit

default.unreachable:                              ; preds = %invflip_side.exit, %bb.al
  unreachable

switch.lookup:                                    ; preds = %.split.i
  %switch.shiftamt = shl nuw nsw i32 %i.cf, 3
  %switch.downshift = lshr i32 67240200, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  br label %invflip_side.exit

switch.lookup161:                                 ; preds = %.split1.i
  %switch.shiftamt162 = shl nuw nsw i32 %i.ck, 3
  %switch.downshift163 = lshr i32 16909320, %switch.shiftamt162
  %switch.masked164 = trunc i32 %switch.downshift163 to i8
  br label %invflip_side.exit

invflip_side.exit:                                ; preds = %switch.lookup161, %.split1.i, %switch.lookup, %.split.i, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak
  %.0.i.sink = phi i8 [ %.0128, %bb.ak ], [ %.0128, %bb.al ], [ %.0128, %bb.am ], [ %.0128, %bb.ao ], [ 4, %bb.aq ], [ %.0128, %.split.i ], [ 1, %bb.ap ], [ %switch.masked, %switch.lookup ], [ %switch.masked164, %switch.lookup161 ], [ %.0128, %.split1.i ], [ %.0128, %bb.an ]
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 37
  store i8 %.0.i.sink, ptr %i.cm, align 1, !tbaa !137
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %1, ptr %i.cn, align 8, !tbaa !139
  store double %i.bu, ptr %2, align 8, !tbaa !9
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %i.bv, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !9
  %i.co = tail call ptr @agraphof(ptr noundef %0) #26
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !25
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 132
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !113
  %i.ct = and i32 %i.cs, 3
  switch i32 %i.ct, label %default.unreachable [
    i32 0, label %invflip_angle.exit
    i32 2, label %bb.ar
    i32 1, label %bb.as
    i32 3, label %bb.at
  ]

bb.ar:                                            ; preds = %invflip_side.exit
  %i.cu = fneg double %.0125
  br label %invflip_angle.exit

bb.as:                                            ; preds = %invflip_side.exit
  %i.cv = fadd double %.0125, f0xBFF921FB54442D18
  br label %invflip_angle.exit

bb.at:                                            ; preds = %invflip_side.exit
  %i.cw = fcmp oeq double %.0125, f0x400921FB54442D18
  br i1 %i.cw, label %invflip_angle.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cx = fcmp oeq double %.0125, f0x4002D97C7F3321D2
  br i1 %i.cx, label %invflip_angle.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cy = fcmp oeq double %.0125, f0x3FF921FB54442D18
  br i1 %i.cy, label %invflip_angle.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cz = fcmp oeq double %.0125, 0.000000e+00
  br i1 %i.cz, label %invflip_angle.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.da = fcmp oeq double %.0125, f0xBFE921FB54442D18
  br i1 %i.da, label %invflip_angle.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.db = fcmp oeq double %.0125, f0xBFF921FB54442D18
  br i1 %i.db, label %6, label %invflip_angle.exit

6:                                                ; preds = %bb.ay
  br label %invflip_angle.exit

invflip_angle.exit:                               ; preds = %invflip_side.exit, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %6
  %.0.i151 = phi double [ %.0125, %invflip_side.exit ], [ %i.cu, %bb.ar ], [ %i.cv, %bb.as ], [ %.0125, %bb.ay ], [ f0xBFF921FB54442D18, %bb.at ], [ f0xBFE921FB54442D18, %bb.au ], [ 0.000000e+00, %bb.av ], [ f0x3FF921FB54442D18, %bb.aw ], [ f0x400921FB54442D18, %6 ], [ f0x4002D97C7F3321D2, %bb.ax ]
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %.0.i151, ptr %i.dc, align 8, !tbaa !143
  %i.dd = fcmp oeq double %i.bu, 0.000000e+00
  %i.de = fcmp oeq double %i.bv, 0.000000e+00
  %or.cond = select i1 %i.dd, i1 %i.de, i1 false
  br i1 %or.cond, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %invflip_angle.exit
  %i.df = tail call double @atan2(double noundef %i.bv, double noundef %i.bu) #26
  %i.dg = fadd double %i.df, f0x4012D97C7F3321D2  ; 3 uses
  %i.dh = fcmp ult double %i.dg, f0x401921FB54442D18
  %i.di = fadd nnan double %i.dg, f0xC01921FB54442D18
  %.0 = select i1 %i.dh, double %i.dg, double %i.di
  %i.dj = fmul double %.0, 2.560000e+02
  %i.dk = fdiv double %i.dj, f0x401921FB54442D18
  %i.dl = fptosi double %i.dk to i32
  %i.dm = trunc i32 %i.dl to i8
  br label %bb.ba

bb.ba:                                            ; preds = %invflip_angle.exit, %bb.az
  %.sink = phi i8 [ %i.dm, %bb.az ], [ -128, %invflip_angle.exit ]
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i8 %.sink, ptr %i.dn, align 4, !tbaa !144
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 %.0126, ptr %i.do, align 1, !tbaa !145
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dq = zext i1 %.1 to i8
  store i8 %i.dq, ptr %i.dp, align 8, !tbaa !146
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 34
  store i8 %.0129, ptr %i.dr, align 2, !tbaa !147
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 35
  %i.dt = zext i1 %.0127 to i8
  store i8 %i.dt, ptr %i.ds, align 1, !tbaa !148
  ret i32 %.0124
}

; Function Attrs: nounwind uwtable
define void @resolvePorts(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.port, align 8               ; 4 uses
  %2 = alloca %struct.port, align 8               ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.d = load i8, ptr %i.c, align 1, !tbaa !149, !range !83, !noundef !84
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.g = load i32, ptr %0, align 8
  %i.h = and i32 %i.g, 3                          ; 2 uses
  %i.i = icmp eq i32 %i.h, 3
  %i.j = select i1 %i.i, i64 56, i64 120
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !153
  %i.m = icmp eq i32 %i.h, 2
  %i.n = select i1 %i.m, i64 56, i64 -8
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !153
  call void @resolvePort(ptr dead_on_unwind nonnull writable sret(%struct.port) align 8 %1, ptr noundef %i.l, ptr noundef %i.p, ptr noundef nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !155
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 107
  %i.s = load i8, ptr %i.r, align 1, !tbaa !157, !range !83, !noundef !84
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.v = load i32, ptr %0, align 8
  %i.w = and i32 %i.v, 3                          ; 2 uses
  %i.x = icmp eq i32 %i.w, 2
  %i.y = select i1 %i.x, i64 56, i64 -8
  %i.z = getelementptr inbounds i8, ptr %0, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !153
  %i.ab = icmp eq i32 %i.w, 3
  %i.ac = select i1 %i.ab, i64 56, i64 120
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !153
  call void @resolvePort(ptr dead_on_unwind nonnull writable sret(%struct.port) align 8 %2, ptr noundef %i.aa, ptr noundef %i.ae, ptr noundef nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !tbaa.struct !155
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

declare void @gvrender_beziercurve(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.minnum.f64(double, double) #9

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #13 {
bb.a:
  tail call void @exit(i32 noundef 1) #33
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #15

declare zeroext i1 @mapbool(ptr noundef) local_unnamed_addr #7

declare i32 @late_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare double @late_double(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #9

declare ptr @agraphof(ptr noundef) local_unnamed_addr #7

declare i64 @gvusershape_size(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @agwarningf(ptr noundef, ...) local_unnamed_addr #7

declare ptr @agnameof(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #12

declare ptr @late_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @parse_reclbl(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = tail call noalias dereferenceable_or_null(88) ptr @calloc(i64 noundef 1, i64 noundef range(i64 1, 89) 88) #27 ; 13 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %gv_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.6, i64 noundef 88) #28 ; 0 uses
  tail call fastcc void @graphviz_exit() #29
  unreachable

gv_alloc.exit:                                    ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !65   ; 4 uses
  %i.j = load ptr, ptr @reclblp, align 8, !tbaa !115 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.thread, %gv_alloc.exit
  %.0143 = phi ptr [ %i.j, %gv_alloc.exit ], [ %i.t, %.thread ] ; 3 uses
  %.0137 = phi i32 [ 0, %gv_alloc.exit ], [ %.2139, %.thread ] ; 7 uses
  %.0126 = phi i64 [ 1, %gv_alloc.exit ], [ %.2128, %.thread ] ; 11 uses
  %i.k = load i8, ptr %.0143, align 1, !tbaa !87  ; 2 uses
  switch i8 %i.k, label %bb.e [
    i8 0, label %bb.i
    i8 92, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.0143, i64 1 ; 6 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !87    ; 2 uses
  switch i8 %i.m, label %bb.e [
    i8 92, label %.thread
    i8 123, label %.thread
    i8 125, label %.thread
    i8 124, label %.thread
end_hunk_0
