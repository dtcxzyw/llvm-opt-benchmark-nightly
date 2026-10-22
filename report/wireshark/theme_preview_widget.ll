Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/theme_preview_widget?download=true
inline.NumInlined: 902
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN18ThemePreviewWidget14drawPacketListER8QPainterRKNS_6LayoutE:bb.a
  %.fca.0.extract50 = extractvalue { i64, i64 } %i.p, 0
  %.fca.1.extract51 = extractvalue { i64, i64 } %i.p, 1
  store i64 %.fca.0.extract50, ptr %5, align 8
  %.sroa.253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.253.0.extract.trunc = trunc i64 %.fca.1.extract51 to i48
  store i48 %.sroa.253.0.extract.trunc, ptr %.sroa.253.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.q = invoke noundef align 8 dereferenceable(8) ptr @_ZNK8QPalette5brushENS_10ColorGroupENS_9ColorRoleE(ptr noundef nonnull align 8 dereferenceable_or_null(12) %3, i32 noundef 4, i32 noundef 3)
          to label %bb.j unwind label %bb.w

bb.j:                                             ; preds = %bb.i
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = invoke { i64, i64 } @_ZNK18ThemePreviewWidget1cEN12ThemeManager10ThemeTokenERK6QColor(ptr noundef align 8 dereferenceable_or_null(64) %0, i32 noundef 45, ptr noundef align 4 dereferenceable(14) %i.s)
          to label %bb.k unwind label %bb.w       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %.fca.0.extract46 = extractvalue { i64, i64 } %i.t, 0
  %.fca.1.extract47 = extractvalue { i64, i64 } %i.t, 1
  store i64 %.fca.0.extract46, ptr %6, align 8
  %.sroa.249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.249.0.extract.trunc = trunc i64 %.fca.1.extract47 to i48
  store i48 %.sroa.249.0.extract.trunc, ptr %.sroa.249.0..sroa_idx, align 8
  %i.u = invoke noundef align 8 dereferenceable(8) ptr @_ZNK8QPalette5brushENS_10ColorGroupENS_9ColorRoleE(ptr noundef nonnull align 8 dereferenceable_or_null(12) %3, i32 noundef 4, i32 noundef 12)
          to label %bb.l unwind label %bb.w

bb.l:                                             ; preds = %bb.k
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = invoke { i64, i64 } @_ZNK18ThemePreviewWidget1cEN12ThemeManager10ThemeTokenERK6QColor(ptr noundef align 8 dereferenceable_or_null(64) %0, i32 noundef 12, ptr noundef align 4 dereferenceable(14) %i.w)
          to label %bb.m unwind label %bb.w       ; 2 uses

bb.m:                                             ; preds = %bb.l
  %.fca.0.extract39 = extractvalue { i64, i64 } %i.x, 0
  %.fca.1.extract40 = extractvalue { i64, i64 } %i.x, 1
  %.sroa.242.0.extract.trunc = trunc i64 %.fca.1.extract40 to i48
  %i.y = invoke noundef align 8 dereferenceable(8) ptr @_ZNK8QPalette5brushENS_10ColorGroupENS_9ColorRoleE(ptr noundef nonnull align 8 dereferenceable_or_null(12) %3, i32 noundef 4, i32 noundef 13)
          to label %bb.n unwind label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %i.ab = invoke { i64, i64 } @_ZNK18ThemePreviewWidget1cEN12ThemeManager10ThemeTokenERK6QColor(ptr noundef align 8 dereferenceable_or_null(64) %0, i32 noundef 13, ptr noundef align 4 dereferenceable(14) %i.aa)
          to label %_ZN6QColorC2EPKc.exit unwind label %bb.w

_ZN6QColorC2EPKc.exit:                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.ac = call { i64, i64 } @_ZN6QColor10fromStringE14QAnyStringView(ptr @.str.19, i64 4611686018427387911) #23 ; 2 uses
  %.fca.0.extract.i = extractvalue { i64, i64 } %i.ac, 0
  %.fca.1.extract.i = extractvalue { i64, i64 } %i.ac, 1
  %.sroa.2.0.extract.trunc.i = trunc i64 %.fca.1.extract.i to i48
  store i64 %.fca.0.extract.i, ptr %7, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i48 %.sroa.2.0.extract.trunc.i, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.ad = invoke { i64, i64 } @_ZNK18ThemePreviewWidget1cEN12ThemeManager10ThemeTokenERK6QColor(ptr noundef align 8 dereferenceable_or_null(64) %0, i32 noundef 16, ptr noundef nonnull align 4 dereferenceable(14) %7)
          to label %_ZN6QColorC2EPKc.exit153 unwind label %bb.u ; 2 uses

_ZN6QColorC2EPKc.exit153:                         ; preds = %_ZN6QColorC2EPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %.fca.0.extract25 = extractvalue { i64, i64 } %i.ad, 0
  %.fca.1.extract26 = extractvalue { i64, i64 } %i.ad, 1
  %.sroa.228.0.extract.trunc = trunc i64 %.fca.1.extract26 to i48
  %i.ae = call { i64, i64 } @_ZN6QColor10fromStringE14QAnyStringView(ptr @.str.20, i64 4611686018427387911) #23 ; 2 uses
  %.fca.0.extract.i148 = extractvalue { i64, i64 } %i.ae, 0
  %.fca.1.extract.i149 = extractvalue { i64, i64 } %i.ae, 1
  %.sroa.2.0.extract.trunc.i150 = trunc i64 %.fca.1.extract.i149 to i48
  store i64 %.fca.0.extract.i148, ptr %8, align 8
  %.sroa.4.0..sroa_idx.i151 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i48 %.sroa.2.0.extract.trunc.i150, ptr %.sroa.4.0..sroa_idx.i151, align 8
  %i.af = invoke { i64, i64 } @_ZNK18ThemePreviewWidget1cEN12ThemeManager10ThemeTokenERK6QColor(ptr noundef align 8 dereferenceable_or_null(64) %0, i32 noundef 17, ptr noundef nonnull align 4 dereferenceable(14) %8)
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %_ZN6QColorC2EPKc.exit153
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.ag = invoke { i64, i64 } @_ZNK18ThemePreviewWidget1cEN12ThemeManager10ThemeTokenERK6QColor(ptr noundef align 8 dereferenceable_or_null(64) %0, i32 noundef 19, ptr noundef nonnull align 4 dereferenceable(14) %5)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 116
  invoke void @_ZN8QPainter8fillRectERK5QRectRK6QColor(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.ah, ptr noundef nonnull align 4 dereferenceable(14) %4)
          to label %bb.q unwind label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.ai = load i32, ptr %2, align 8               ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.am = load i32, ptr %i.al, align 8            ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 5 uses
  %i.ar = add i32 %i.am, -1
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 6
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.au = getelementptr i8, ptr %0, i64 48
  %invariant.op = add i32 %i.ak, -10
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.av = getelementptr i8, ptr %0, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ax = sitofp i32 %i.ai to double              ; 4 uses
  %.reass = sub i32 %invariant.op, %i.ai
  %i.ay = sitofp i32 %.reass to double            ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 4 uses
  %i.bc = call double @llvm.fmuladd.f64(double %i.ay, double 0.000000e+00, double %i.ax)
  %i.bd = fmul nnan double %i.ay, 6.000000e-02
  %i.be = fadd double %i.bc, 4.000000e+00
  %i.bf = fadd double %i.bd, -4.000000e+00
  %i.bg = fadd double %i.bf, -4.000000e+00
  %i.bh = call double @llvm.fmuladd.f64(double %i.ay, double 6.000000e-02, double %i.ax)
  %i.bi = fmul nnan double %i.ay, 1.100000e-01
  %i.bj = fadd double %i.bh, 4.000000e+00
  %i.bk = fadd double %i.bi, -4.000000e+00
  %i.bl = fadd double %i.bk, -4.000000e+00
  %i.bm = call double @llvm.fmuladd.f64(double %i.ay, double f0x3FC5C28F5C28F5C2, double %i.ax)
  %i.bn = fmul nnan double %i.ay, f0x3FB70A3D70A3D70A
  %i.bo = fadd double %i.bm, 4.000000e+00
  %i.bp = fadd double %i.bn, -4.000000e+00
  %i.bq = fadd double %i.bp, -4.000000e+00
  br label %bb.x

bb.r:                                             ; preds = %.loopexit264
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.br = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bs = load <3 x i32>, ptr %i.an, align 8
  %i.bt = shufflevector <3 x i32> %i.bs, <3 x i32> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 2>
  %i.bu = add <4 x i32> %i.bt, <i32 -10, i32 0, i32 0, i32 0>
  store <4 x i32> %i.bu, ptr %16, align 16
  invoke void @_ZN8QPainter8fillRectERK5QRectRK6QColor(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr noundef nonnull align 4 dereferenceable(14) %6)
          to label %bb.bh unwind label %bb.bo

bb.s:                                             ; preds = %bb.e, %bb.c, %bb.a, %bb.d, %bb.b, %bb.f
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.t:                                             ; preds = %bb.g, %bb.h
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.u:                                             ; preds = %_ZN6QColorC2EPKc.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.bu

bb.v:                                             ; preds = %_ZN6QColorC2EPKc.exit153
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.bu

bb.w:                                             ; preds = %bb.m, %bb.k, %bb.i, %bb.o, %bb.j, %bb.l, %bb.n, %bb.p
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.x:                                             ; preds = %bb.q, %.loopexit264
  %indvars.iv185 = phi i64 [ 0, %bb.q ], [ %indvars.iv.next186, %.loopexit264 ] ; 3 uses
  %i.ca = getelementptr [80 x i8], ptr @_ZZN18ThemePreviewWidget14drawPacketListER8QPainterRKNS_6LayoutEE4rows, i64 %indvars.iv185 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.cb = load i32, ptr %2, align 8
  %i.cc = load i32, ptr %i.an, align 8
  %i.cd = trunc nuw nsw i64 %indvars.iv185 to i32 ; 2 uses
  %i.ce = mul i32 %i.am, %i.cd
  %i.cf = add i32 %i.cc, %i.ce                    ; 2 uses
  %i.cg = load i32, ptr %i.aj, align 8
  store i32 %i.cb, ptr %9, align 4
  store i32 %i.cf, ptr %i.ao, align 4
  store i32 %i.cg, ptr %i.ap, align 4
  %i.ch = add i32 %i.ar, %i.cf
  store i32 %i.ch, ptr %i.aq, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store i32 0, ptr %10, align 8
  store i16 -1, ptr %i.as, align 4
  store i64 0, ptr %i.at, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store i64 %.fca.0.extract54, ptr %11, align 8
  store i48 %.sroa.257.0.extract.trunc, ptr %.sroa.559.0..sroa_idx, align 8
  %i.ci = and i32 %i.cd, 1
  %.not = icmp eq i32 %i.ci, 0
  br i1 %.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i64 %.fca.0.extract61, ptr %10, align 8
  store i48 %.sroa.264.0.extract.trunc, ptr %.sroa.566.0..sroa_idx, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cj = load i8, ptr %i.au, align 8, !range !8, !noundef !9
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.cl = getelementptr i8, ptr %i.ca, i64 64
  %i.cm = load ptr, ptr %i.cl, align 16           ; 3 uses
  %19 = load i8, ptr %i.cm, align 1
  %.not122.a = icmp eq i8 %19, 0
  br i1 %.not122.a, label %bb.ae, label %.split.i

.split.i:                                         ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.cn = call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.cm) #23
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %12, i64 %i.cn, ptr nonnull %i.cm)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %.split.i
  %i.co = call { ptr, i64 } @_ZNK5QHashI7QStringSt4pairI6QColorS2_EE4findERKS0_(ptr noundef align 8 dereferenceable_or_null(8) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %12) #23 ; 2 uses
  %i.cp = extractvalue { ptr, i64 } %i.co, 0      ; 2 uses
  %i.cq = extractvalue { ptr, i64 } %i.co, 1      ; 3 uses
  %i.cr = load ptr, ptr %12, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.ab
  %i.cs = atomicrmw add ptr %i.cr, i32 -1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.cs, 1
  br i1 %.not.i.i, label %bb.ac, label %_ZN7QStringD2Ev.exit

bb.ac:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.ct = load ptr, ptr %12, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ct, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.ab, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.cu = icmp ne ptr %i.cp, null
  %i.cv = icmp ne i64 %i.cq, 0
  %or.cond = select i1 %i.cu, i1 true, i1 %i.cv
  br i1 %or.cond, label %_ZNK5QHashI7QStringSt4pairI6QColorS2_EE14const_iteratorneERKS5_.exit.thread, label %bb.ae

_ZNK5QHashI7QStringSt4pairI6QColorS2_EE14const_iteratorneERKS5_.exit.thread: ; preds = %_ZN7QStringD2Ev.exit
  %i.cw = getelementptr i8, ptr %i.cp, i64 32     ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = lshr i64 %i.cq, 7                       ; 2 uses
  %i.cz = getelementptr [144 x i8], ptr %i.cx, i64 %i.cy ; 2 uses
  %i.da = and i64 %i.cq, 127                      ; 2 uses
  %i.db = getelementptr i8, ptr %i.cz, i64 128
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = getelementptr i8, ptr %i.cz, i64 %i.da
  %i.de = load i8, ptr %i.dd, align 1
  %i.df = zext i8 %i.de to i64
  %i.dg = getelementptr [56 x i8], ptr %i.dc, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %10, ptr noundef align 4 dereferenceable(14) %i.dh, i64 14, i1 false)
  %i.di = load ptr, ptr %i.cw, align 8
  %i.dj = getelementptr [144 x i8], ptr %i.di, i64 %i.cy ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 128
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = getelementptr i8, ptr %i.dj, i64 %i.da
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = zext i8 %i.dn to i64
  %i.dp = getelementptr [56 x i8], ptr %i.dl, i64 %i.do
  %i.dq = getelementptr i8, ptr %i.dp, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %11, ptr noundef nonnull align 4 dereferenceable(14) %i.dq, i64 14, i1 false)
  br label %bb.ae

bb.ad:                                            ; preds = %.split.i
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.bg

bb.ae:                                            ; preds = %_ZN7QStringD2Ev.exit, %_ZNK5QHashI7QStringSt4pairI6QColorS2_EE14const_iteratorneERKS5_.exit.thread, %bb.aa, %bb.z
  %i.ds = getelementptr i8, ptr %i.ca, i64 72
  %i.dt = load i32, ptr %i.ds, align 8
  switch i32 %i.dt, label %bb.ai [
    i32 1, label %bb.af
    i32 2, label %bb.ag
    i32 3, label %bb.ah
  ]

bb.af:                                            ; preds = %bb.ae
  store i64 %.fca.0.extract39, ptr %10, align 8
  store i48 %.sroa.242.0.extract.trunc, ptr %.sroa.566.0..sroa_idx, align 8
  br label %.sink.split

bb.ag:                                            ; preds = %bb.ae
  store i64 %.fca.0.extract25, ptr %10, align 8
  store i48 %.sroa.228.0.extract.trunc, ptr %.sroa.566.0..sroa_idx, align 8
  br label %.sink.split

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %10, ptr noundef nonnull align 8 dereferenceable(14) %4, i64 14, i1 false)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.af, %bb.ag, %bb.ah
  %.pn192 = phi { i64, i64 } [ %i.ag, %bb.ah ], [ %i.af, %bb.ag ], [ %i.ab, %bb.af ] ; 2 uses
  %.096.ph = phi i1 [ true, %bb.ah ], [ false, %bb.ag ], [ false, %bb.af ]
  %.sroa.2.0.extract.trunc.sink.in = extractvalue { i64, i64 } %.pn192, 1
  %.sroa.2.0.extract.trunc.sink = trunc i64 %.sroa.2.0.extract.trunc.sink.in to i48
  %.fca.0.extract.sink = extractvalue { i64, i64 } %.pn192, 0
  store i64 %.fca.0.extract.sink, ptr %11, align 8
  store i48 %.sroa.2.0.extract.trunc.sink, ptr %.sroa.559.0..sroa_idx, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split, %bb.ae
  %.096 = phi i1 [ false, %bb.ae ], [ %.096.ph, %.sink.split ]
  %i.du = load i32, ptr %10, align 8
  %.not175 = icmp eq i32 %i.du, 0
  br i1 %.not175, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN8QPainter8fillRectERK5QRectRK6QColor(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(14) %10)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.al:                                            ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  invoke void @_ZN5QFontC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(12) %13, ptr noundef nonnull align 8 dereferenceable(12) %i.aw)
          to label %bb.am unwind label %bb.ay

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN5QFont12setStrikeOutEb(ptr noundef nonnull align 8 dereferenceable_or_null(12) %13, i1 noundef zeroext %.096)
          to label %bb.an unwind label %bb.az

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN8QPainter7setFontERK5QFont(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(12) %13)
          to label %bb.ao unwind label %bb.az

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN8QPainter6setPenERK6QColor(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 4 dereferenceable(14) %11)
          to label %.preheader.peel unwind label %bb.az

.preheader.peel:                                  ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.dw = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.dx = load i32, ptr %i.aq, align 4
  %reass.sub.peel = sub i32 %i.dx, %i.dw
  %i.dy = add i32 %reass.sub.peel, 1
  %i.dz = sitofp i32 %i.dw to double
  %i.ea = sitofp i32 %i.dy to double
  store double %i.be, ptr %14, align 8, !alias.scope !50
  store double %i.dz, ptr %i.az, align 8, !alias.scope !50
  store double %i.bg, ptr %i.ba, align 8, !alias.scope !50
  store double %i.ea, ptr %i.bb, align 8, !alias.scope !50
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.eb = load ptr, ptr %i.ca, align 16           ; 2 uses
  %20 = call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.eb) #23
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %15, i64 %20, ptr %i.eb)
          to label %bb.ap unwind label %.loopexit.split-lp

bb.ap:                                            ; preds = %.preheader.peel
  invoke void @_ZN8QPainter8drawTextERK6QRectFiRK7QStringPS0_(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef 130, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef null)
          to label %bb.aq unwind label %.loopexit.split-lp260

bb.aq:                                            ; preds = %bb.ap
  %i.ec = load ptr, ptr %15, align 8              ; 2 uses
  %.not.i.i.i158.peel = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i158.peel, label %_ZN7QStringD2Ev.exit161.peel, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159.peel

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159.peel: ; preds = %bb.aq
  %i.ed = atomicrmw add ptr %i.ec, i32 -1 acq_rel, align 4
  %.not.i.i160.peel = icmp eq i32 %i.ed, 1
  br i1 %.not.i.i160.peel, label %bb.ar, label %_ZN7QStringD2Ev.exit161.peel

bb.ar:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159.peel
  %i.ee = load ptr, ptr %15, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ee, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit161.peel

_ZN7QStringD2Ev.exit161.peel:                     ; preds = %bb.ar, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159.peel, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.ef = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.eg = load i32, ptr %i.aq, align 4
  %reass.sub.peel196 = sub i32 %i.eg, %i.ef
  %i.eh = add i32 %reass.sub.peel196, 1
  %i.ei = sitofp i32 %i.ef to double
  %i.ej = sitofp i32 %i.eh to double
  store double %i.bj, ptr %14, align 8, !alias.scope !51
  store double %i.ei, ptr %i.az, align 8, !alias.scope !51
  store double %i.bl, ptr %i.ba, align 8, !alias.scope !51
  store double %i.ej, ptr %i.bb, align 8, !alias.scope !51
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.ek = getelementptr i8, ptr %i.ca, i64 8
  %i.el = load ptr, ptr %i.ek, align 8            ; 2 uses
  %21 = call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.el) #23
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %15, i64 %21, ptr %i.el)
          to label %bb.as unwind label %.loopexit.split-lp

bb.as:                                            ; preds = %_ZN7QStringD2Ev.exit161.peel
  invoke void @_ZN8QPainter8drawTextERK6QRectFiRK7QStringPS0_(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef 129, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef null)
          to label %bb.at unwind label %.loopexit.split-lp260

bb.at:                                            ; preds = %bb.as
  %i.em = load ptr, ptr %15, align 8              ; 2 uses
  %.not.i.i.i158.peel220 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i158.peel220, label %_ZN7QStringD2Ev.exit161.peel223, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159.peel221

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159.peel221: ; preds = %bb.at
  %i.en = atomicrmw add ptr %i.em, i32 -1 acq_rel, align 4
  %.not.i.i160.peel222 = icmp eq i32 %i.en, 1
  br i1 %.not.i.i160.peel222, label %bb.au, label %_ZN7QStringD2Ev.exit161.peel223

bb.au:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159.peel221
  %i.eo = load ptr, ptr %15, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.eo, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit161.peel223

_ZN7QStringD2Ev.exit161.peel223:                  ; preds = %bb.au, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159.peel221, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.ep = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.eq = load i32, ptr %i.aq, align 4
  %reass.sub.peel228 = sub i32 %i.eq, %i.ep
  %i.er = add i32 %reass.sub.peel228, 1
  %i.es = sitofp i32 %i.ep to double
  %i.et = sitofp i32 %i.er to double
  store double %i.bo, ptr %14, align 8, !alias.scope !52
  store double %i.es, ptr %i.az, align 8, !alias.scope !52
  store double %i.bq, ptr %i.ba, align 8, !alias.scope !52
  store double %i.et, ptr %i.bb, align 8, !alias.scope !52
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.eu = getelementptr i8, ptr %i.ca, i64 16
  %i.ev = load ptr, ptr %i.eu, align 16           ; 2 uses
  %22 = call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ev) #23
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %15, i64 %22, ptr %i.ev)
          to label %bb.av unwind label %.loopexit.split-lp

bb.av:                                            ; preds = %_ZN7QStringD2Ev.exit161.peel223
  invoke void @_ZN8QPainter8drawTextERK6QRectFiRK7QStringPS0_(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef 130, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef null)
          to label %bb.aw unwind label %.loopexit.split-lp260

bb.aw:                                            ; preds = %bb.av
  %i.ew = load ptr, ptr %15, align 8              ; 2 uses
  %.not.i.i.i158.peel252 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i158.peel252, label %_ZN7QStringD2Ev.exit161.peel255, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159.peel253

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159.peel253: ; preds = %bb.aw
  %i.ex = atomicrmw add ptr %i.ew, i32 -1 acq_rel, align 4
  %.not.i.i160.peel254 = icmp eq i32 %i.ex, 1
  br i1 %.not.i.i160.peel254, label %bb.ax, label %_ZN7QStringD2Ev.exit161.peel255

bb.ax:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159.peel253
  %i.ey = load ptr, ptr %15, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ey, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit161.peel255

_ZN7QStringD2Ev.exit161.peel255:                  ; preds = %bb.ax, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159.peel253, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %.preheader

.loopexit264:                                     ; preds = %_ZN7QStringD2Ev.exit161
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %exitcond188.not = icmp eq i64 %indvars.iv.next186, 9
  br i1 %exitcond188.not, label %bb.r, label %bb.x, !llvm.loop !46

bb.ay:                                            ; preds = %bb.al
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.az:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.preheader:                                       ; preds = %_ZN7QStringD2Ev.exit161.peel255, %_ZN7QStringD2Ev.exit161
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN7QStringD2Ev.exit161 ], [ 3, %_ZN7QStringD2Ev.exit161.peel255 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.fb = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.fc = load i32, ptr %i.aq, align 4
  %reass.sub = sub i32 %i.fc, %i.fb
  %i.fd = add i32 %reass.sub, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  switch i64 %indvars.iv, label %.lr.ph.i.6 [
    i64 3, label %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit
    i64 4, label %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split
    i64 5, label %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split265
    i64 6, label %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split266
  ]

.lr.ph.i.6:                                       ; preds = %.preheader
  br label %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit

_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split: ; preds = %.preheader
  br label %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit

_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split265: ; preds = %.preheader
  br label %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit

_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split266: ; preds = %.preheader
  br label %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit

_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit: ; preds = %.preheader, %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split266, %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split265, %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split, %.lr.ph.i.6
  %.lcssa = phi double [ 6.900000e-01, %.lr.ph.i.6 ], [ 5.400000e-01, %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split265 ], [ 2.600000e-01, %.preheader ], [ 4.000000e-01, %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split ], [ 6.300000e-01, %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit.fold.split266 ]
  %i.fe = call double @llvm.fmuladd.f64(double %.lcssa, double %i.ay, double %i.ax)
  %i.ff = fadd double %i.fe, 4.000000e+00
  %i.fg = getelementptr [24 x i8], ptr @_ZN12_GLOBAL__N_18kColumnsE, i64 %indvars.iv ; 2 uses
  %i.fh = load double, ptr %i.fg, align 8, !noalias !53
  %i.fi = fmul double %i.fh, %i.ay
  %i.fj = sitofp i32 %i.fb to double
  %i.fk = sitofp i32 %i.fd to double
  %i.fl = fadd double %i.fi, -4.000000e+00
  %i.fm = fadd double %i.fl, -4.000000e+00
  store double %i.ff, ptr %14, align 8, !alias.scope !54
  store double %i.fj, ptr %i.az, align 8, !alias.scope !54
  store double %i.fm, ptr %i.ba, align 8, !alias.scope !54
  store double %i.fk, ptr %i.bb, align 8, !alias.scope !54
  %i.fn = getelementptr i8, ptr %i.fg, i64 8
  %i.fo = load i8, ptr %i.fn, align 8, !range !8, !noundef !9
  %i.fp = trunc nuw i8 %i.fo to i1
  %i.fq = select i1 %i.fp, i32 130, i32 129
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.fr = getelementptr [8 x i8], ptr %i.ca, i64 %indvars.iv
  %i.fs = load ptr, ptr %i.fr, align 8            ; 3 uses
  %.not.i154 = icmp eq ptr %i.fs, null
  br i1 %.not.i154, label %_ZN14QByteArrayViewC2IPKcTnNSt9enable_ifIXsr9QtPrivate28IsCompatibleByteArrayPointerIT_EE5valueEbE4typeELb1EEERKS4_.exit157, label %.split.i155

.split.i155:                                      ; preds = %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit
  %i.ft = call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.fs) #23
  br label %_ZN14QByteArrayViewC2IPKcTnNSt9enable_ifIXsr9QtPrivate28IsCompatibleByteArrayPointerIT_EE5valueEbE4typeELb1EEERKS4_.exit157

_ZN14QByteArrayViewC2IPKcTnNSt9enable_ifIXsr9QtPrivate28IsCompatibleByteArrayPointerIT_EE5valueEbE4typeELb1EEERKS4_.exit157: ; preds = %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit, %.split.i155
  %.sink5.i156 = phi i64 [ %i.ft, %.split.i155 ], [ 0, %_ZNK18ThemePreviewWidget8cellRectERK5QRectiii.exit.loopexit ]
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %15, i64 %.sink5.i156, ptr %i.fs)
          to label %bb.ba unwind label %.loopexit.split-lp

bb.ba:                                            ; preds = %_ZN14QByteArrayViewC2IPKcTnNSt9enable_ifIXsr9QtPrivate28IsCompatibleByteArrayPointerIT_EE5valueEbE4typeELb1EEERKS4_.exit157
  invoke void @_ZN8QPainter8drawTextERK6QRectFiRK7QStringPS0_(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef %i.fq, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef null)
          to label %bb.bb unwind label %.loopexit.split-lp260

bb.bb:                                            ; preds = %bb.ba
  %i.fu = load ptr, ptr %15, align 8              ; 2 uses
  %.not.i.i.i158 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i158, label %_ZN7QStringD2Ev.exit161, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159:   ; preds = %bb.bb
  %i.fv = atomicrmw add ptr %i.fu, i32 -1 acq_rel, align 4
  %.not.i.i160 = icmp eq i32 %i.fv, 1
  br i1 %.not.i.i160, label %bb.bc, label %_ZN7QStringD2Ev.exit161

bb.bc:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159
  %i.fw = load ptr, ptr %15, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fw, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit161

_ZN7QStringD2Ev.exit161:                          ; preds = %bb.bb, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %.loopexit264, label %.preheader, !llvm.loop !49

.loopexit.split-lp:                               ; preds = %_ZN14QByteArrayViewC2IPKcTnNSt9enable_ifIXsr9QtPrivate28IsCompatibleByteArrayPointerIT_EE5valueEbE4typeELb1EEERKS4_.exit157, %.preheader.peel, %_ZN7QStringD2Ev.exit161.peel, %_ZN7QStringD2Ev.exit161.peel223
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit165

.loopexit.split-lp260:                            ; preds = %bb.ba, %bb.ap, %bb.as, %bb.av
  %lpad.loopexit.split-lp262 = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.fx = load ptr, ptr %15, align 8              ; 2 uses
  %.not.i.i.i162 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i162, label %_ZN7QStringD2Ev.exit165, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i163

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i163:   ; preds = %.loopexit.split-lp260
  %i.fy = atomicrmw add ptr %i.fx, i32 -1 acq_rel, align 4
  %.not.i.i164 = icmp eq i32 %i.fy, 1
  br i1 %.not.i.i164, label %bb.bd, label %_ZN7QStringD2Ev.exit165

bb.bd:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i163
  %i.fz = load ptr, ptr %15, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fz, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit165

_ZN7QStringD2Ev.exit165:                          ; preds = %bb.bd, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i163, %.loopexit.split-lp260, %.loopexit.split-lp
  %.pn123 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp262, %.loopexit.split-lp260 ], [ %lpad.loopexit.split-lp262, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i163 ], [ %lpad.loopexit.split-lp262, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.be

bb.be:                                            ; preds = %_ZN7QStringD2Ev.exit165, %bb.az
  %.pn123.pn = phi { ptr, i32 } [ %.pn123, %_ZN7QStringD2Ev.exit165 ], [ %i.fa, %bb.az ]
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %13) #23
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.ay
  %.pn123.pn.pn = phi { ptr, i32 } [ %.pn123.pn, %bb.be ], [ %i.ez, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.ak, %bb.ad
  %.pn123.pn.pn.pn = phi { ptr, i32 } [ %.pn123.pn.pn, %bb.bf ], [ %i.dv, %bb.ak ], [ %i.dr, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.bu

bb.bh:                                            ; preds = %bb.r
  invoke void @_ZN8QPainter13setRenderHintENS_10RenderHintEb(ptr noundef align 8 dereferenceable_or_null(8) %1, i32 noundef 1, i1 noundef zeroext true)
          to label %bb.bi unwind label %bb.bo

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN8QPainter6setPenEN2Qt8PenStyleE(ptr noundef align 8 dereferenceable_or_null(8) %1, i32 noundef 0)
          to label %bb.bj unwind label %bb.bo

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  invoke void @_ZN6QBrushC1ERK6QColorN2Qt10BrushStyleE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %17, ptr noundef nonnull align 4 dereferenceable(14) %5, i32 noundef 1)
          to label %bb.bk unwind label %bb.bp

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN8QPainter8setBrushERK6QBrush(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.bl unwind label %bb.bq

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %i.ga = load <2 x i32>, ptr %16, align 16       ; 2 uses
  %i.gb = add <2 x i32> %i.ga, <i32 2, i32 3>
  %i.gc = sitofp <2 x i32> %i.gb to <2 x double>
  store <2 x double> %i.gc, ptr %18, align 16
  %i.gd = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ge = load <2 x i32>, ptr %i.br, align 8
  %i.gf = sub <2 x i32> %i.ge, %i.ga
  %i.gg = add <2 x i32> %i.gf, <i32 -3, i32 1>
  %i.gh = sitofp <2 x i32> %i.gg to <2 x double>
  %i.gi = fmul nnan <2 x double> %i.gh, <double 1.000000e+00, double 4.500000e-01>
  store <2 x double> %i.gi, ptr %i.gd, align 16
  invoke void @_ZN8QPainter15drawRoundedRectERK6QRectFddN2Qt8SizeModeE(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %18, double noundef 3.000000e+00, double noundef 3.000000e+00, i32 noundef 0)
          to label %bb.bm unwind label %bb.bs

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZN8QPainter13setRenderHintENS_10RenderHintEb(ptr noundef align 8 dereferenceable_or_null(8) %1, i32 noundef 1, i1 noundef zeroext false)
          to label %bb.bn unwind label %bb.bs

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN8QPaletteD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.bo:                                            ; preds = %bb.bi, %bb.bh, %bb.r
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bp:                                            ; preds = %bb.bj
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bq:                                            ; preds = %bb.bk
  %i.gl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %17) #23
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.pn = phi { ptr, i32 } [ %i.gl, %bb.bq ], [ %i.gk, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bm, %bb.bl
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bo
  %.pn119 = phi { ptr, i32 } [ %i.gm, %bb.bs ], [ %.pn, %bb.br ], [ %i.gj, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bg, %bb.bt, %bb.u, %bb.w, %bb.v
  %.pn123.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bz, %bb.w ], [ %i.bx, %bb.u ], [ %i.by, %bb.v ], [ %.pn123.pn.pn.pn, %bb.bg ], [ %.pn119, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.t
  %.pn123.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn123.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bu ], [ %i.bw, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.s
  %.pn123.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.s ], [ %.pn123.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN8QPaletteD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn123.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind writable sret(%class.QString) align 8, i64, ptr) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN5QFont12setStrikeOutEb(ptr noundef align 8 dereferenceable_or_null(12), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN8QPainter15drawRoundedRectERK6QRectFddN2Qt8SizeModeE(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(32), double noundef, double noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN18ThemePreviewWidget15drawDetailsPaneER8QPainterRKNS_6LayoutE(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(64) %0, ptr noundef align 8 dereferenceable(8) %1, ptr noundef align 8 dereferenceable(180) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.QPalette, align 8            ; 10 uses
  %4 = alloca %class.QColor, align 8              ; 6 uses
  %5 = alloca %class.QColor, align 8              ; 7 uses
  %6 = alloca %class.QColor, align 8              ; 6 uses
  %7 = alloca %class.QColor, align 8              ; 6 uses
  %8 = alloca %class.QRect, align 8               ; 6 uses
  %9 = alloca %class.QColor, align 8              ; 6 uses
  %10 = alloca %class.QColor, align 4             ; 7 uses
  %11 = alloca %class.QRectF, align 8             ; 8 uses
  %12 = alloca %class.QPolygonF, align 8          ; 28 uses
  %13 = alloca %class.QPointF, align 8            ; 6 uses
  %14 = alloca %class.QPointF, align 8            ; 6 uses
  %15 = alloca %class.QPointF, align 8            ; 6 uses
  %16 = alloca %class.QPointF, align 8            ; 6 uses
  %17 = alloca %class.QPointF, align 8            ; 6 uses
  %18 = alloca %class.QPointF, align 8            ; 6 uses
  %19 = alloca %class.QBrush, align 8             ; 7 uses
  %20 = alloca %class.QRectF, align 8             ; 8 uses
  %21 = alloca %class.QString, align 8            ; 9 uses
  %22 = alloca %class.QPointF, align 8            ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 132 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = add i32 %i.c, 1
  %i.g = sub i32 %i.f, %i.e
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.br, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN15QGuiApplication7paletteEv(ptr dead_on_unwind nonnull writable sret(%class.QPalette) align 8 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.i = invoke noundef align 8 dereferenceable(8) ptr @_ZNK8QPalette5brushENS_10ColorGroupENS_9ColorRoleE(ptr noundef nonnull align 8 dereferenceable_or_null(12) %3, i32 noundef 4, i32 noundef 9)
          to label %bb.c unwind label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %i.l = invoke { i64, i64 } @_ZNK18ThemePreviewWidget1cEN12ThemeManager10ThemeTokenERK6QColor(ptr noundef align 8 dereferenceable_or_null(64) %0, i32 noundef 40, ptr noundef align 4 dereferenceable(14) %i.k)
          to label %bb.d unwind label %bb.r       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.fca.0.extract57 = extractvalue { i64, i64 } %i.l, 0
end_hunk_0
