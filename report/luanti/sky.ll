Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/sky?download=true
inline.NumInlined: 1905
inline.NumDeleted: 597
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZN5scene10ISceneNode19OnRegisterSceneNodeEv:bb.a

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3Sky6renderEv(ptr noundef nonnull align 8 dereferenceable(2368) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.ScopeProfiler, align 8       ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.core::CMatrix4", align 16   ; 8 uses
  %4 = alloca %"class.video::SColor", align 4     ; 5 uses
  %5 = alloca %"class.video::SColor", align 4     ; 5 uses
  %6 = alloca %"class.video::SColor", align 4     ; 5 uses
  %7 = alloca %"class.video::SColor", align 4     ; 5 uses
  %8 = alloca [4 x %"struct.video::S3DVertex"], align 16 ; 167 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 58 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 7 uses
  %i.l = icmp ne ptr %i.k, null
  %i.m = icmp ne ptr %i.f, null
  %or.cond = and i1 %i.m, %i.l
  br i1 %or.cond, label %._crit_edge.i.i, label %bb.aj

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.n = load ptr, ptr @g_profiler, align 8, !tbaa !309
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.o, ptr %2, align 8, !tbaa !103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.o, ptr noundef nonnull align 1 dereferenceable(13) @.str.5, i64 13, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 13, ptr %i.p, align 8, !tbaa !104
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 29
  store i8 0, ptr %i.q, align 1, !tbaa !77
  invoke void @_ZN13ScopeProfilerC1EP8ProfilerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17ScopeProfilerType13TimePrecision(ptr noundef nonnull align 8 dereferenceable(50) %1, ptr noundef %i.n, ptr noundef nonnull align 8 dereferenceable(32) %2, i8 noundef zeroext 2, i8 noundef signext 2)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.r = load ptr, ptr %2, align 8, !tbaa !112    ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.o
  br i1 %i.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.t = load i64, ptr %i.o, align 8, !tbaa !77
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.8542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.12546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = load <4 x float>, ptr %i.v, align 8      ; 3 uses
  %i.x = load <4 x float>, ptr %.sroa.8542.0..sroa_idx, align 8 ; 2 uses
  %i.y = load <4 x float>, ptr %.sroa.12546.0..sroa_idx, align 8 ; 4 uses
  %.sroa.22552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 108
  %.sroa.22552.0.copyload = load float, ptr %.sroa.22552.0..sroa_idx, align 4, !tbaa !77
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 232
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = invoke { <2 x float>, float } %i.ab(ptr noundef nonnull align 8 dereferenceable(218) %i.k)
          to label %bb.c unwind label %bb.p       ; 2 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.ac, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.ac, 1
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 368
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = invoke noundef float %i.af(ptr noundef nonnull align 8 dereferenceable(233) %i.k)
          to label %bb.d unwind label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 376
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = invoke noundef float %i.aj(ptr noundef nonnull align 8 dereferenceable(233) %i.k)
          to label %bb.e unwind label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.al = fadd nsz float %i.ag, %i.ak
  %i.am = fmul nsz float %i.al, 5.000000e-01
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.an = fmul nsz <4 x float> %i.x, zeroinitializer ; 2 uses
  %i.ao = insertelement <4 x float> poison, float %i.am, i64 0
  %i.ap = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.aq = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.w, <4 x float> %i.ap, <4 x float> %i.an)
  %i.ar = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.y, <4 x float> zeroinitializer, <4 x float> %i.aq)
  %i.as = shufflevector <2 x float> %.fca.0.extract, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.at = insertelement <4 x float> %i.as, float %.fca.1.extract, i64 2
  %i.au = insertelement <4 x float> %i.at, float %.sroa.22552.0.copyload, i64 3 ; 4 uses
  %i.av = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.au, <4 x float> zeroinitializer, <4 x float> %i.ar)
  store <4 x float> %i.av, ptr %3, align 16, !tbaa !37, !alias.scope !310
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ax = fmul nsz <4 x float> %i.x, %i.ap
  %i.ay = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.w, <4 x float> zeroinitializer, <4 x float> %i.ax)
  %i.az = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.y, <4 x float> zeroinitializer, <4 x float> %i.ay)
  %i.ba = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.au, <4 x float> zeroinitializer, <4 x float> %i.az)
  store <4 x float> %i.ba, ptr %i.aw, align 16, !tbaa !37, !alias.scope !310
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bc = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.w, <4 x float> zeroinitializer, <4 x float> %i.an) ; 2 uses
  %i.bd = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.y, <4 x float> %i.ap, <4 x float> %i.bc)
  %i.be = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.au, <4 x float> zeroinitializer, <4 x float> %i.bd)
  store <4 x float> %i.be, ptr %i.bb, align 16, !tbaa !37, !alias.scope !310
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bg = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.y, <4 x float> zeroinitializer, <4 x float> %i.bc)
  %i.bh = fadd nsz <4 x float> %i.bg, %i.au
  store <4 x float> %i.bh, ptr %i.bf, align 16, !tbaa !37, !alias.scope !310
  %i.bi = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8
  invoke void %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(64) %3)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1804
  %i.bm = load i8, ptr %i.bl, align 4, !tbaa !167, !range !119, !noundef !120
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.g, label %bb.ai

bb.g:                                             ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1800
  %i.bp = load float, ptr %i.bo, align 8, !tbaa !168
  %i.bq = fpext nsz float %i.bp to double
  %i.br = call nsz double @llvm.fmuladd.f64(double %i.bq, double 5.000000e-01, double 8.500000e-01) ; 3 uses
  %i.bs = fcmp nsz olt double %i.br, 3.000000e-01
  %.inv = fcmp nsz oge double %i.br, 1.000000e+00
  %.mux554 = select i1 %.inv, double 1.000000e+00, double %i.br
  %.mux = fptrunc double %.mux554 to float
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !169 ; 2 uses
  %i.bv = fcmp nsz olt float %i.bu, 0.000000e+00
  %i.bw = select i1 %i.bv, float 0.000000e+00, float %i.bu
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1796
  %i.by = load float, ptr %i.bx, align 4, !tbaa !170 ; 7 uses
  %i.bz = fcmp nsz ogt float %i.by, 2.075000e-01
  %i.ca = fcmp nsz olt float %i.by, 7.925000e-01
  %or.cond.i = and i1 %i.bz, %i.ca
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cb = fadd nsz float %i.by, -2.075000e-01
  %i.cc = fdiv nsz float %i.cb, f0x3F15C290
  %i.cd = call nsz float @llvm.fmuladd.f32(float %i.cc, float 5.000000e-01, float 2.500000e-01)
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ce = fcmp nsz olt float %i.by, 5.000000e-01
  br i1 %i.ce, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cf = fdiv nnan nsz float %i.by, 2.075000e-01
  %i.cg = fmul nnan nsz float %i.cf, 2.500000e-01
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ch = fsub nsz float 1.000000e+00, %i.by
  %i.ci = fdiv nsz float %i.ch, -2.075000e-01
  %i.cj = call nsz float @llvm.fmuladd.f32(float %i.ci, float 2.500000e-01, float 1.000000e+00)
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.j, %bb.k
  %.0.i = phi nsz float [ %i.cd, %bb.h ], [ %i.cg, %bb.j ], [ %i.cj, %bb.k ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.ck = fmul nsz float %.mux, 2.550000e+02
  %i.cl = fadd nsz float %i.ck, 5.000000e-01
  %i.cm = call nsz float @llvm.floor.f32(float %i.cl)
  %i.cn = fptosi float %i.cm to i32
  %i.co = fmul nsz float %i.bw, 2.550000e+02
  %i.cp = fadd nsz float %i.co, 5.000000e-01
  %i.cq = call nsz noundef float @llvm.floor.f32(float %i.cp)
  %i.cr = fptosi float %i.cq to i32
  %i.cs = shl i32 %i.cn, 8
  %i.ct = or i32 %i.cs, -65536
  %i.cu = select i1 %i.bs, i32 -45824, i32 %i.ct
  %i.cv = and i32 %i.cr, 255
  %i.cw = or disjoint i32 %i.cu, %i.cv
  store i32 %i.cw, ptr %4, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store i32 -1, ptr %5, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i32 -8351322, ptr %6, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  store i32 -2498586, ptr %7, align 4
  %i.cx = fpext nsz float %i.by to double
  %i.cy = fadd nsz double %i.cx, -5.000000e-01
  %i.cz = fmul nsz double %i.cy, f0x400921FB60000000
  %i.da = call nsz double @llvm.sin.f64(double %i.cz)
  %i.db = call nsz double @llvm.fabs.f64(double %i.da)
  %i.dc = fsub ninf nsz double 1.000000e+00, %i.db
  %i.dd = fmul nsz double %i.dc, 5.110000e+02
  %i.de = fptrunc nsz double %i.dd to float       ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 2352
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !171 ; 3 uses
  %.not = icmp eq ptr %i.dg, null
  br i1 %.not, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dh = fptoui float %i.de to i32
  %i.di = load ptr, ptr %i.dg, align 8, !tbaa !32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = invoke i32 %i.dk(ptr noundef nonnull align 8 dereferenceable(41) %i.dg, i32 noundef %i.dh, i32 noundef 0)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.dm = or i32 %i.dl, -16777216
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 732
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !111
  br label %bb.r

bb.o:                                             ; preds = %._crit_edge.i.i
  %i.do = landingpad { ptr, i32 }
          cleanup
  %i.dp = load ptr, ptr %2, align 8, !tbaa !112   ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.o
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199: ; preds = %bb.o
  %i.dr = load i64, ptr %i.o, align 8, !tbaa !77
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.al

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %bb.d, %bb.c
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.q:                                             ; preds = %bb.e
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.ak

bb.r:                                             ; preds = %bb.n, %bb.l
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 2360
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !172 ; 3 uses
  %.not168 = icmp eq ptr %i.dw, null
  br i1 %.not168, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dx = fptoui float %i.de to i32
  %i.dy = load ptr, ptr %i.dw, align 8, !tbaa !32
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = invoke i32 %i.ea(ptr noundef nonnull align 8 dereferenceable(41) %i.dw, i32 noundef %i.dx, i32 noundef 0)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ec = or i32 %i.eb, -16777216
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 860
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !111
  br label %bb.v

bb.u:                                             ; preds = %bb.m, %bb.s
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.v:                                             ; preds = %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.ef = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 17 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(38) %8, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.ef, align 8, !tbaa !98
  %i.eg = getelementptr inbounds nuw i8, ptr %8, i64 28 ; 17 uses
  store <2 x float> zeroinitializer, ptr %i.eg, align 4, !tbaa !37
  %i.eh = getelementptr inbounds nuw i8, ptr %8, i64 36 ; 17 uses
  store i16 0, ptr %i.eh, align 4, !tbaa !175
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 30 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %.ptr.1, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.ei, align 16, !tbaa !98
  %i.ej = getelementptr inbounds nuw i8, ptr %8, i64 68
  store <2 x float> zeroinitializer, ptr %i.ej, align 4, !tbaa !37
  %i.ek = getelementptr inbounds nuw i8, ptr %8, i64 76
  store i16 0, ptr %i.ek, align 4, !tbaa !175
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 30 uses
  %i.el = getelementptr inbounds nuw i8, ptr %8, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(38) %.ptr.2, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.el, align 8, !tbaa !98
  %i.em = getelementptr inbounds nuw i8, ptr %8, i64 108
  store <2 x float> zeroinitializer, ptr %i.em, align 4, !tbaa !37
  %i.en = getelementptr inbounds nuw i8, ptr %8, i64 116
  store i16 0, ptr %i.en, align 4, !tbaa !175
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %8, i64 120 ; 23 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %8, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %.ptr.3, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.eo, align 16, !tbaa !98
  %i.ep = getelementptr inbounds nuw i8, ptr %8, i64 148
  store <2 x float> zeroinitializer, ptr %i.ep, align 4, !tbaa !37
  %i.eq = getelementptr inbounds nuw i8, ptr %8, i64 156
  store i16 0, ptr %i.eq, align 4, !tbaa !175
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.es = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 96
  %i.eu = load ptr, ptr %i.et, align 8
  invoke void %i.eu(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(127) %i.er)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 1868 ; 5 uses
  %.sroa.097.0.copyload = load i32, ptr %i.ev, align 4, !tbaa !111 ; 20 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 1819
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !101, !range !119, !noundef !120
  %i.ey = trunc nuw i8 %i.ex to i1
  br i1 %i.ey, label %.sink.split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 1968
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 1976
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !114
  %i.fc = load ptr, ptr %i.ez, align 8, !tbaa !113
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = icmp eq i64 %i.ff, 192
  br i1 %i.fg, label %.preheader560, label %.loopexit561

.preheader560:                                    ; preds = %bb.x
  %.sroa.6494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %.sroa.8496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %.sroa.8485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 6 uses
  %.sroa.10487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 6 uses
  %.sroa.11488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 68 ; 6 uses
  %.sroa.13490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 76 ; 6 uses
  %.sroa.7473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 92 ; 6 uses
  %.sroa.9475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 100 ; 6 uses
  %.sroa.10476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 104 ; 6 uses
  %.sroa.11477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 108 ; 6 uses
  %.sroa.13479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 116 ; 6 uses
  %.sroa.5460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 124 ; 6 uses
  %.sroa.7462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 132 ; 6 uses
  %.sroa.9464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 140 ; 6 uses
  %.sroa.10465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 144 ; 6 uses
  %.sroa.11466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 148 ; 6 uses
  %.sroa.13468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 156 ; 6 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.fi = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.fj = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.fk = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.fl = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.fm = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.fn = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.fo = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.fp = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.fq = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.fr = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.fs = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.ft = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.fu = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.fv = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.fw = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.fx = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.fy = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.ga = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 96
  %i.gc = load ptr, ptr %i.gb, align 8
  invoke void %i.gc(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(127) %i.fz)
          to label %.split.us.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split.us.preheader:                              ; preds = %.preheader560
  store <4 x float> <float -1.050000e+00, float -1.050000e+00, float -1.050000e+00, float 0.000000e+00>, ptr %8, align 16, !tbaa !37
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.8496.0..sroa_idx, align 16, !tbaa !37
  store i32 -1, ptr %i.ef, align 8, !tbaa !111
  store <2 x float> splat (float 1.000000e+00), ptr %i.eg, align 4, !tbaa !37
  store i16 0, ptr %i.eh, align 4, !tbaa !176
  store <4 x float> <float 1.050000e+00, float -1.050000e+00, float -1.050000e+00, float 0.000000e+00>, ptr %.ptr.1, align 8, !tbaa !37
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.8485.0..sroa_idx, align 8, !tbaa !37
  store i32 -1, ptr %.sroa.10487.0..sroa_idx, align 16, !tbaa !111
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.11488.0..sroa_idx, align 4, !tbaa !37
  store i16 0, ptr %.sroa.13490.0..sroa_idx, align 4, !tbaa !176
  store <2 x float> splat (float 1.050000e+00), ptr %.ptr.2, align 16, !tbaa !37
  store <2 x float> zeroinitializer, ptr %.sroa.7473.0..sroa_idx, align 4, !tbaa !37
  store float 1.000000e+00, ptr %.sroa.9475.0..sroa_idx, align 4, !tbaa !37
  store i32 -1, ptr %.sroa.10476.0..sroa_idx, align 8, !tbaa !111
  store <2 x float> zeroinitializer, ptr %.sroa.11477.0..sroa_idx, align 4, !tbaa !37
  store i16 0, ptr %.sroa.13479.0..sroa_idx, align 4, !tbaa !176
  store float 1.050000e+00, ptr %.sroa.5460.0..sroa_idx, align 4, !tbaa !37
  store <2 x float> zeroinitializer, ptr %.sroa.7462.0..sroa_idx, align 4, !tbaa !37
  store float 1.000000e+00, ptr %.sroa.9464.0..sroa_idx, align 4, !tbaa !37
  store i32 -1, ptr %.sroa.10465.0..sroa_idx, align 16, !tbaa !111
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.11466.0..sroa_idx, align 4, !tbaa !37
  store i16 0, ptr %.sroa.13468.0..sroa_idx, align 4, !tbaa !176
  store <2 x float> splat (float 1.050000e+00), ptr %8, align 16, !tbaa !37
end_hunk_0
begin_hunk_1_@_ZN3Sky6updateEfffb10CameraModeff:bb.a
  %i.ec = load <2 x float>, ptr %i.eb, align 4
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 1832
  %i.ee = load float, ptr %i.ed, align 8, !tbaa !102
  %i.ef = fmul nsz float %i.ee, 9.800000e-01
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 1836 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 1844
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 1848
  %.385.v.v.v = select i1 %i.dx, i32 %.sroa.078.0.copyload, i32 %.sroa.081.0.copyload
  %.385.v.v = and i32 %.385.v.v.v, 255
  %.385.v = uitofp nneg i32 %.385.v.v to float
  %.386.v.v.v = select i1 %i.dx, i32 %.sroa.078.0.copyload, i32 %.sroa.081.0.copyload
  %.386.v.v = lshr i32 %.386.v.v.v, 24
  %.386.v = uitofp nneg i32 %.386.v.v to float
  %.386 = fmul nnan nsz float %.386.v, f0x3B808081
  %.389.v.v.v = select i1 %i.dx, i32 %.sroa.075.0.copyload, i32 %.sroa.077.0.copyload
  %.389.v.v = and i32 %.389.v.v.v, 255
  %.389.v = uitofp nneg i32 %.389.v.v to float
  %.390.v.v.v = select i1 %i.dx, i32 %.sroa.075.0.copyload, i32 %.sroa.077.0.copyload
  %.390.v.v = lshr i32 %.390.v.v.v, 24
  %.390.v = uitofp nneg i32 %.390.v.v to float
  %.390 = fmul nnan nsz float %.390.v, f0x3B808081
  %..v.v.v.v = select i1 %i.dx, i32 %.sroa.078.0.copyload, i32 %.sroa.081.0.copyload
  %..v.v.v = lshr i32 %..v.v.v.v, 16
  %..v.v = and i32 %..v.v.v, 255
  %..v = uitofp nneg i32 %..v.v to float
  %.384.v.v.v.v = select i1 %i.dx, i32 %.sroa.078.0.copyload, i32 %.sroa.081.0.copyload
  %.384.v.v.v = lshr i32 %.384.v.v.v.v, 8
  %.384.v.v = and i32 %.384.v.v.v, 255
  %.384.v = uitofp nneg i32 %.384.v.v to float
  %i.ej = insertelement <2 x float> poison, float %..v, i64 0
  %i.ek = insertelement <2 x float> %i.ej, float %.384.v, i64 1
  %i.el = fmul nnan nsz <2 x float> %i.ek, splat (float f0x3B808081)
  %i.em = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.en = insertelement <2 x float> %i.em, float %i.cn, i64 1
  %i.eo = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.en) ; 2 uses
  %i.ep = tail call nsz float @llvm.fmuladd.f32(float %.386, float f0x3CA3D700, float %i.ef)
  store <2 x float> %i.eo, ptr %i.dy, align 4, !tbaa !37
  %.387.v.v.v.v = select i1 %i.dx, i32 %.sroa.075.0.copyload, i32 %.sroa.077.0.copyload
  %.387.v.v.v = lshr i32 %.387.v.v.v.v, 16
  %.387.v.v = and i32 %.387.v.v.v, 255
  %.387.v = uitofp nneg i32 %.387.v.v to float
  %.388.v.v.v.v = select i1 %i.dx, i32 %.sroa.075.0.copyload, i32 %.sroa.077.0.copyload
  %.388.v.v.v = lshr i32 %.388.v.v.v.v, 8
  %.388.v.v = and i32 %.388.v.v.v, 255
  %.388.v = uitofp nneg i32 %.388.v.v to float
  %i.eq = insertelement <2 x float> poison, float %.387.v, i64 0
  %i.er = insertelement <2 x float> %i.eq, float %.388.v, i64 1
  %i.es = fmul nnan nsz <2 x float> %i.er, splat (float f0x3B808081)
  %i.et = load <2 x float>, ptr %i.eg, align 4, !tbaa !37
  %i.eu = fmul nsz <2 x float> %i.et, splat (float 9.800000e-01)
  %i.ev = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.eu) ; 2 uses
  %i.ew = load float, ptr %i.eh, align 4, !tbaa !324
  %i.ex = insertelement <2 x float> poison, float %.385.v, i64 0
  %i.ey = insertelement <2 x float> %i.ex, float %.389.v, i64 1
  %i.ez = fmul nnan nsz <2 x float> %i.ey, splat (float f0x3B808081)
  %i.fa = insertelement <2 x float> %i.ec, float %i.ew, i64 1
  %i.fb = fmul nsz <2 x float> %i.fa, splat (float 9.800000e-01)
  %i.fc = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.fb) ; 3 uses
  %.sroa.3.12.vec.insert.i156 = insertelement <2 x float> %i.fc, float %i.ep, i64 1
  store <2 x float> %.sroa.3.12.vec.insert.i156, ptr %i.eb, align 4, !tbaa !37
  %i.fd = load float, ptr %i.ei, align 8, !tbaa !102
  %i.fe = fmul nsz float %i.fd, 9.800000e-01
  %i.ff = tail call nsz float @llvm.fmuladd.f32(float %.390, float f0x3CA3D700, float %i.fe)
  %i.fg = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.3.12.vec.insert.i162 = insertelement <2 x float> %i.fg, float %i.ff, i64 1
  store <2 x float> %i.ev, ptr %i.eg, align 4, !tbaa !37
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 1844
  store <2 x float> %.sroa.3.12.vec.insert.i162, ptr %i.fh, align 4, !tbaa !37
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 1852 ; 2 uses
  %i.fj = load <2 x float>, ptr %i.fi, align 4, !tbaa !37
  %i.fk = fmul nsz <2 x float> %i.fj, splat (float 9.800000e-01)
  %i.fl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.fk) ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 1860 ; 2 uses
  %i.fn = load <2 x float>, ptr %i.fm, align 4, !tbaa !37
  %i.fo = fmul nsz <2 x float> %i.fn, splat (float 9.800000e-01)
  %i.fp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.fo) ; 2 uses
  store <2 x float> %i.fl, ptr %i.fi, align 4, !tbaa !37
  store <2 x float> %i.fp, ptr %i.fm, align 4, !tbaa !37
  %i.fq = extractelement <2 x float> %i.fp, i64 0
  br label %bb.o

bb.n:                                             ; preds = %bb.j, %bb.i
  %storemerge.in = phi double [ %i.cj, %bb.j ], [ %i.ch, %bb.i ]
  %storemerge = fptrunc double %storemerge.in to float ; 2 uses
  store float %storemerge, ptr %i.bt, align 8, !tbaa !169
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 1820 ; 2 uses
  %i.ft = load <2 x float>, ptr %i.fs, align 4, !tbaa !37
  %i.fu = fmul nsz <2 x float> %i.ft, splat (float 9.800000e-01)
  %i.fv = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.fu) ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 1828 ; 2 uses
  %i.fx = load <2 x float>, ptr %i.fw, align 4
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 1832
  %i.fz = load <2 x float>, ptr %i.fy, align 8
  store <2 x float> %i.fv, ptr %i.fs, align 4, !tbaa !37
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 1836 ; 2 uses
  %i.gb = load <2 x float>, ptr %i.ga, align 4, !tbaa !37
  %i.gc = fmul nsz <2 x float> %i.gb, splat (float 9.800000e-01)
  %i.gd = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.gc) ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 1844 ; 2 uses
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !324
  %i.gg = insertelement <2 x float> %i.fx, float %i.gf, i64 1
  %i.gh = fmul nsz <2 x float> %i.gg, splat (float 9.800000e-01)
  %i.gi = insertelement <2 x float> poison, float %i.s, i64 0
  %i.gj = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gk = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gj, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.gh) ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 1848
  %i.gm = load float, ptr %i.gl, align 8, !tbaa !102
  %i.gn = insertelement <2 x float> %i.fz, float %i.gm, i64 1
  %i.go = fmul nsz <2 x float> %i.gn, splat (float 9.800000e-01)
  %i.gp = insertelement <2 x float> poison, float %i.v, i64 0
  %i.gq = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gr = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gq, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.go) ; 2 uses
  %i.gs = shufflevector <2 x float> %i.gk, <2 x float> %i.gr, <2 x i32> <i32 0, i32 2>
  store <2 x float> %i.gs, ptr %i.fw, align 4, !tbaa !37
  %i.gt = shufflevector <2 x float> %i.gk, <2 x float> %i.gr, <2 x i32> <i32 1, i32 3>
  store <2 x float> %i.gd, ptr %i.ga, align 4, !tbaa !37
  store <2 x float> %i.gt, ptr %i.ge, align 4, !tbaa !37
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 1852 ; 2 uses
  %i.gv = load <2 x float>, ptr %i.gu, align 4, !tbaa !37
  %i.gw = fmul nsz <2 x float> %i.gv, splat (float 9.800000e-01)
  %i.gx = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.gw) ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 1860 ; 2 uses
  %i.gz = load <2 x float>, ptr %i.gy, align 4, !tbaa !37
  %i.ha = fmul nsz <2 x float> %i.gz, splat (float 9.800000e-01)
  %i.hb = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.ha) ; 2 uses
  store <2 x float> %i.gx, ptr %i.gu, align 4, !tbaa !37
  store <2 x float> %i.hb, ptr %i.gy, align 4, !tbaa !37
  store i8 0, ptr %i.fr, align 8, !tbaa !321
  %i.hc = extractelement <2 x float> %i.hb, i64 0
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %i.hd = phi float [ %i.dw, %bb.l ], [ %i.fq, %bb.m ], [ %i.hc, %bb.n ]
  %i.he = phi float [ %storemerge326, %bb.l ], [ %storemerge326, %bb.m ], [ %storemerge, %bb.n ]
  %.0117295 = phi float [ %.0117.ph, %bb.l ], [ %.0117.ph, %bb.m ], [ f0x3F733333, %bb.n ] ; 2 uses
  %i.hf = phi <2 x float> [ %i.dr, %bb.l ], [ %i.fl, %bb.m ], [ %i.gx, %bb.n ]
  %i.hg = phi <2 x float> [ %i.db, %bb.l ], [ %i.ev, %bb.m ], [ %i.gd, %bb.n ]
  %i.hh = phi <2 x float> [ %i.ct, %bb.l ], [ %i.eo, %bb.m ], [ %i.fv, %bb.n ]
  %i.hi = phi <2 x float> [ %i.dg, %bb.l ], [ %i.fc, %bb.m ], [ %i.gk, %bb.n ]
  %i.hj = fmul nsz <2 x float> %i.hh, splat (float 2.550000e+02)
  %i.hk = fmul nsz <2 x float> %i.hi, splat (float 2.550000e+02)
  %i.hl = fadd nsz <2 x float> %i.hj, splat (float 5.000000e-01)
  %i.hm = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.hl)
  %i.hn = fptosi <2 x float> %i.hm to <2 x i32>
  %i.ho = and <2 x i32> %i.hn, splat (i32 255)
  %i.hp = uitofp nsz nneg <2 x i32> %i.ho to <2 x float>
  %i.hq = insertelement <2 x float> poison, float %i.he, i64 0
  %i.hr = shufflevector <2 x float> %i.hq, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.hs = fmul nsz <2 x float> %i.hr, %i.hp
  %i.ht = fptoui <2 x float> %i.hs to <2 x i32>   ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 1868 ; 2 uses
  %i.hv = fmul nsz <2 x float> %i.hg, splat (float 2.550000e+02)
  %i.hw = fadd nsz <2 x float> %i.hv, splat (float 5.000000e-01)
  %i.hx = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.hw)
  %i.hy = fptosi <2 x float> %i.hx to <2 x i32>
  %i.hz = and <2 x i32> %i.hy, splat (i32 255)
  %i.ia = uitofp nsz nneg <2 x i32> %i.hz to <2 x float>
  %i.ib = fmul nsz <2 x float> %i.hr, %i.ia
  %i.ic = fptoui <2 x float> %i.ib to <2 x i32>   ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 1872
  %i.ie = fadd nsz <2 x float> %i.hk, splat (float 5.000000e-01)
  %i.if = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.ie)
  %i.ig = fptosi <2 x float> %i.if to <2 x i32>
  %i.ih = and <2 x i32> %i.ig, splat (i32 255)
  %i.ii = uitofp nsz nneg <2 x i32> %i.ih to <2 x float>
  %i.ij = fmul nsz <2 x float> %i.hr, %i.ii
  %i.ik = fptoui <2 x float> %i.ij to <2 x i32>
  %i.il = shufflevector <2 x i32> %i.ht, <2 x i32> %i.ic, <2 x i32> <i32 0, i32 2>
  %i.im = shl <2 x i32> %i.il, splat (i32 16)
  %i.in = shufflevector <2 x i32> %i.ht, <2 x i32> %i.ic, <2 x i32> <i32 1, i32 3>
  %i.io = shl <2 x i32> %i.in, splat (i32 8)
  %i.ip = and <2 x i32> %i.io, splat (i32 65280)
  %i.iq = and <2 x i32> %i.ik, splat (i32 255)    ; 3 uses
  %i.ir = or disjoint <2 x i32> %i.ip, %i.im
  %i.is = or disjoint <2 x i32> %i.ir, %i.iq
  %i.it = or <2 x i32> %i.is, splat (i32 -16777216)
  store <2 x i32> %i.it, ptr %i.hu, align 4, !tbaa !111
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 1818
  %i.iv = load i8, ptr %i.iu, align 2, !tbaa !153, !range !119, !noundef !120
  %i.iw = trunc nuw i8 %i.iv to i1                ; 2 uses
  br i1 %i.iw, label %bb.p, label %.thread317

bb.p:                                             ; preds = %bb.o
  br i1 %4, label %bb.q, label %_ZN3Sky15m_horizon_blendEv.exit198

bb.q:                                             ; preds = %bb.p
  %i.ix = fcmp nsz ult float %1, 5.000000e-01
  %i.iy = fsub nnan nsz float 1.000000e+00, %1
  %.in.i = select i1 %i.ix, float %1, float %i.iy
  %i.iz = fmul nsz float %.in.i, 2.000000e+00     ; 3 uses
  %i.ja = fpext nsz float %i.iz to double         ; 7 uses
  %i.jb = fcmp nsz ugt double %i.ja, 3.000000e-01
  br i1 %i.jb, label %bb.r, label %_ZN3Sky15m_horizon_blendEv.exit198

bb.r:                                             ; preds = %bb.q
  %i.jc = fcmp nsz ugt double %i.ja, 4.000000e-01
  br i1 %i.jc, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.jd = fadd nnan ninf nsz double %i.ja, -3.000000e-01
  br label %_ZN3Sky15m_horizon_blendEv.exit

bb.t:                                             ; preds = %bb.r
  %i.je = fcmp nsz ugt float %i.iz, 5.000000e-01
  br i1 %i.je, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.jf = fsub nnan ninf nsz double 5.000000e-01, %i.ja
  br label %_ZN3Sky15m_horizon_blendEv.exit

_ZN3Sky15m_horizon_blendEv.exit:                  ; preds = %bb.s, %bb.u
  %.1.i.in.in = phi double [ %i.jd, %bb.s ], [ %i.jf, %bb.u ]
  %.1.i.in = fmul nnan nsz double %.1.i.in.in, 1.000000e+01
  %.1.i = fptrunc double %.1.i.in to float
  %i.jg = fcmp nsz une float %.1.i, 0.000000e+00
  br i1 %i.jg, label %_Z8rangelimIdidET_RKS0_RKT0_RKT1_.exit, label %bb.z

_Z8rangelimIdidET_RKS0_RKT0_RKT1_.exit:           ; preds = %_ZN3Sky15m_horizon_blendEv.exit
  %i.jh = icmp sgt i32 %5, 2
  %i.ji = select i1 %i.jh, i32 -1, i32 1
  %i.jj = sitofp nsz i32 %i.ji to float
  %i.jk = tail call nsz float @llvm.fmuladd.f32(float %6, float %i.jj, float 9.000000e+01)
  %i.jl = frem nsz float %i.jk, 3.600000e+02      ; 3 uses
  %i.jm = fcmp nsz olt float %i.jl, 0.000000e+00
  %i.jn = fadd nsz float %i.jl, 3.600000e+02
  %i.jo = select nsz i1 %i.jm, float %i.jn, float %i.jl ; 3 uses
  %i.jp = fcmp nsz ogt float %i.jo, 1.800000e+02
  %i.jq = fsub nsz float 3.600000e+02, %i.jo
  %.0119 = select nsz i1 %i.jp, float %i.jq, float %i.jo
  %i.jr = tail call nsz noundef float @llvm.fabs.f32(float %7)
  %i.js = fsub nsz float 9.000000e+01, %i.jr
  %i.jt = insertelement <2 x float> poison, float %.0119, i64 0
  %i.ju = insertelement <2 x float> %i.jt, float %i.js, i64 1
  %i.jv = fdiv nsz <2 x float> %i.ju, <float 1.800000e+02, float 9.000000e+01>
  %i.jw = fpext nsz <2 x float> %i.jv to <2 x double> ; 2 uses
  %i.jx = extractelement <2 x double> %i.jw, i64 0
  %i.jy = fneg nsz double %i.jx
  %i.jz = tail call nsz double @llvm.fmuladd.f64(double %i.jy, double 1.375000e+00, double 1.000000e+00) ; 3 uses
  %i.ka = fcmp nsz olt double %i.jz, 0.000000e+00
  %i.kb = fcmp nsz ogt double %i.jz, f0x3FE745D1745D1746
  %..i = select nsz i1 %i.kb, double f0x3FE745D1745D1746, double %i.jz
  %i.kc = fmul nsz double %..i, 1.375000e+00
  %i.kd = select i1 %i.ka, double 0.000000e+00, double %i.kc
  %i.ke = fptrunc nsz double %i.kd to float
  %i.kf = fpext nsz float %i.ke to double         ; 2 uses
  %i.kg = fsub nsz double 5.000000e-01, %i.kf
  %i.kh = extractelement <2 x double> %i.jw, i64 1
  %i.ki = fmul nsz double %i.kh, 1.500000e+00     ; 2 uses
  %i.kj = fcmp nsz olt double %i.ki, 1.000000e+00
  %i.kk = select nsz i1 %i.kj, double %i.ki, double 1.000000e+00
  %i.kl = fsub nsz double 1.000000e+00, %i.kk
  %i.km = tail call nsz double @llvm.fmuladd.f64(double %i.kg, double %i.kl, double %i.kf)
  %i.kn = fptrunc nsz double %i.km to float       ; 2 uses
  %i.ko = fcmp nsz ogt float %1, 5.000000e-01
  %i.kp = fsub nsz float 1.000000e+00, %i.kn
  %.1 = select nsz i1 %i.ko, float %i.kp, float %i.kn ; 2 uses
  %i.kq = fmul nsz float %2, 3.000000e+00         ; 3 uses
  %i.kr = fcmp nsz olt float %i.kq, 2.000000e-01
  %i.ks = fcmp nsz ogt float %i.kq, 1.000000e+00
  %..i189 = select nsz i1 %i.ks, float 1.000000e+00, float %i.kq
  %.0.i190 = select nsz i1 %i.kr, float 2.000000e-01, float %..i189 ; 10 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 2352
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !171
  %.not = icmp ne ptr %i.ku, null
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 2312
  %i.kw = load i8, ptr %i.kv, align 8, !range !119
  %i.kx = trunc nuw i8 %i.kw to i1                ; 2 uses
  %or.cond = select i1 %.not, i1 %i.kx, i1 false
  br i1 %or.cond, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_Z8rangelimIdidET_RKS0_RKT0_RKT1_.exit
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !98 ; 3 uses
  %i.la = lshr i32 %i.kz, 16
  %i.lb = and i32 %i.la, 255
  %i.lc = uitofp nsz nneg i32 %i.lb to float
  %i.ld = fmul nsz float %.0.i190, %i.lc
  %i.le = fdiv nsz float %i.ld, 2.550000e+02
  %i.lf = lshr i32 %i.kz, 8
  %i.lg = and i32 %i.kz, 255
  %i.lh = uitofp nsz nneg i32 %i.lg to float
  %i.li = and i32 %i.lf, 255
  %i.lj = uitofp nsz nneg i32 %i.li to float
  %i.lk = insertelement <2 x float> poison, float %.0.i190, i64 0
  %i.ll = shufflevector <2 x float> %i.lk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lm = insertelement <2 x float> poison, float %i.lj, i64 0
  %i.ln = insertelement <2 x float> %i.lm, float %i.lh, i64 1
  %i.lo = fmul nsz <2 x float> %i.ll, %i.ln
  %i.lp = fdiv nsz <2 x float> %i.lo, splat (float 2.550000e+02)
  br label %bb.x

bb.w:                                             ; preds = %_Z8rangelimIdidET_RKS0_RKT0_RKT1_.exit
  br i1 %i.kx, label %_Z8rangelimIfddET_RKS0_RKT0_RKT1_.exit, label %.thread298

_Z8rangelimIfddET_RKS0_RKT0_RKT1_.exit:           ; preds = %bb.w
  %i.lq = fpext nsz float %.0.i190 to double      ; 2 uses
  %i.lr = fcmp nsz olt float %2, 2.500000e-01
  %i.ls = fcmp nsz ogt float %2, 7.500000e-01
  %..i191 = select nsz i1 %i.ls, float 7.500000e-01, float %2
  %.0.i192 = select nsz i1 %i.lr, float 2.500000e-01, float %..i191
  %i.lt = fpext nsz float %.0.i192 to double
  %i.lu = fadd nsz double %i.lt, -2.500000e-01
  %i.lv = fmul nsz double %i.lu, 2.000000e+00
  %i.lw = tail call nsz double @llvm.fmuladd.f64(double %i.lv, double 7.500000e-01, double 2.500000e-01)
  %i.lx = fmul nsz double %i.lw, %i.lq
  %i.ly = fcmp nsz olt float %2, 5.000000e-02
  %i.lz = fcmp nsz ogt float %2, 1.500000e-01
  %..i193 = select nsz i1 %i.lz, float 1.500000e-01, float %2
  %.0.i194 = select nsz i1 %i.ly, float 5.000000e-02, float %..i193
  %i.ma = fpext nsz float %.0.i194 to double
  %i.mb = fadd nsz double %i.ma, -5.000000e-02
  %i.mc = fmul nsz double %i.mb, 1.000000e+01
  %i.md = fmul nsz double %i.mc, 6.250000e-01
  %i.me = fptrunc nsz double %i.lx to float       ; 2 uses
  %i.mf = fpext nsz float %i.me to double
  %i.mg = tail call nsz double @llvm.fmuladd.f64(double %i.mf, double 3.750000e-01, double %i.md)
  %i.mh = fmul nsz double %i.mg, %i.lq
  %i.mi = fptrunc nsz double %i.mh to float
  %i.mj = insertelement <2 x float> poison, float %i.mi, i64 0
  %i.mk = insertelement <2 x float> %i.mj, float %i.me, i64 1
  br label %bb.x

bb.x:                                             ; preds = %_Z8rangelimIfddET_RKS0_RKT0_RKT1_.exit, %bb.v
  %.sroa.0233.0.ph = phi float [ %i.le, %bb.v ], [ %.0.i190, %_Z8rangelimIfddET_RKS0_RKT0_RKT1_.exit ] ; 2 uses
  %i.ml = phi <2 x float> [ %i.lp, %bb.v ], [ %i.mk, %_Z8rangelimIfddET_RKS0_RKT0_RKT1_.exit ] ; 2 uses
  %i.mm = fpext nsz float %.0.i190 to double      ; 2 uses
  %i.mn = fmul nsz float %.0.i190, 5.000000e-01
  %i.mo = fmul nsz double %i.mm, 6.000000e-01
  %i.mp = fptrunc nsz double %i.mo to float
  %i.mq = fmul nsz double %i.mm, 8.000000e-01
  %i.mr = fptrunc nsz double %i.mq to float
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 2360
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !172
  %.not128 = icmp eq ptr %i.mt, null
  %i.mu = insertelement <2 x float> poison, float %i.mn, i64 0
  %i.mv = insertelement <2 x float> %i.mu, float %i.mp, i64 1
  br i1 %.not128, label %.thread306, label %bb.y

.thread298:                                       ; preds = %bb.w
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 2024
  %.sroa.016.0.copyload = load i32, ptr %i.mw, align 8, !tbaa !111 ; 4 uses
  %i.mx = lshr i32 %.sroa.016.0.copyload, 24
  %i.my = uitofp nsz nneg i32 %i.mx to float
  %i.mz = fmul nnan nsz float %i.my, f0x3B808081
  %i.na = fmul nnan nsz float %i.mz, 2.550000e+02
  %i.nb = fadd nsz float %i.na, 5.000000e-01
  %i.nc = tail call nsz float @llvm.floor.f32(float %i.nb)
  %i.nd = fptosi float %i.nc to i32
  %i.ne = and i32 %i.nd, 255
  %i.nf = uitofp nsz nneg i32 %i.ne to float
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 2028
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !98 ; 3 uses
  %i.ni = lshr i32 %.sroa.016.0.copyload, 16
  %i.nj = and i32 %i.ni, 255
  %i.nk = uitofp nsz nneg i32 %i.nj to float
  %i.nl = fmul nnan nsz float %i.nk, f0x3B808081
  %i.nm = lshr i32 %.sroa.016.0.copyload, 8
  %i.nn = and i32 %.sroa.016.0.copyload, 255
  %i.no = uitofp nsz nneg i32 %i.nn to float
  %i.np = and i32 %i.nm, 255
  %i.nq = uitofp nsz nneg i32 %i.np to float
  %i.nr = insertelement <2 x float> poison, float %i.nq, i64 0
  %i.ns = insertelement <2 x float> %i.nr, float %i.no, i64 1
  %i.nt = fmul nnan nsz <2 x float> %i.ns, splat (float f0x3B808081)
  %i.nu = lshr i32 %i.nh, 16
  %i.nv = and i32 %i.nu, 255
  %i.nw = uitofp nsz nneg i32 %i.nv to float
  %i.nx = lshr i32 %i.nh, 8
  %i.ny = and i32 %i.nx, 255
  %i.nz = uitofp nsz nneg i32 %i.ny to float
  %i.oa = insertelement <2 x float> poison, float %i.nw, i64 0
  %i.ob = insertelement <2 x float> %i.oa, float %i.nz, i64 1
  %i.oc = fdiv nnan nsz <2 x float> %i.ob, splat (float 2.550000e+02)
  %i.od = insertelement <2 x float> poison, float %.0.i190, i64 0
  %i.oe = shufflevector <2 x float> %i.od, <2 x float> poison, <2 x i32> zeroinitializer
  %i.of = fmul nsz <2 x float> %i.oe, %i.oc
  %i.og = and i32 %i.nh, 255
  %i.oh = uitofp nsz nneg i32 %i.og to float
  %i.oi = fdiv nnan nsz float %i.oh, 2.550000e+02
  %i.oj = fmul nsz float %.0.i190, %i.oi
  br label %.thread306

bb.y:                                             ; preds = %bb.x
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 860
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !98 ; 3 uses
  %i.om = and i32 %i.ol, 255
  %i.on = uitofp nsz nneg i32 %i.om to float
  %i.oo = fmul nsz float %.0.i190, %i.on
  %i.op = fdiv nsz float %i.oo, 2.550000e+02
  %i.oq = lshr i32 %i.ol, 16
  %i.or = and i32 %i.oq, 255
  %i.os = uitofp nsz nneg i32 %i.or to float
  %i.ot = lshr i32 %i.ol, 8
  %i.ou = and i32 %i.ot, 255
  %i.ov = uitofp nsz nneg i32 %i.ou to float
  %i.ow = insertelement <2 x float> poison, float %.0.i190, i64 0
  %i.ox = shufflevector <2 x float> %i.ow, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oy = insertelement <2 x float> poison, float %i.os, i64 0
  %i.oz = insertelement <2 x float> %i.oy, float %i.ov, i64 1
  %i.pa = fmul nsz <2 x float> %i.ox, %i.oz
  %i.pb = fdiv nsz <2 x float> %i.pa, splat (float 2.550000e+02)
  br label %.thread306

.thread306:                                       ; preds = %.thread298, %bb.y, %bb.x
  %.sroa.0233.0359 = phi float [ %.sroa.0233.0.ph, %bb.x ], [ %.sroa.0233.0.ph, %bb.y ], [ %i.nl, %.thread298 ]
  %.sroa.17236.0353 = phi float [ 2.550000e+02, %bb.x ], [ 2.550000e+02, %bb.y ], [ %i.nf, %.thread298 ]
  %.sroa.12.1 = phi nsz float [ %i.mr, %bb.x ], [ %i.op, %bb.y ], [ %i.oj, %.thread298 ]
  %i.pc = phi <2 x float> [ %i.mv, %bb.x ], [ %i.pb, %bb.y ], [ %i.of, %.thread298 ]
  %i.pd = phi <2 x float> [ %i.ml, %bb.x ], [ %i.ml, %bb.y ], [ %i.nt, %.thread298 ] ; 2 uses
  %i.pe = insertelement <2 x float> poison, float %.sroa.0233.0359, i64 0
  %i.pf = shufflevector <2 x float> %i.pe, <2 x float> %i.pd, <2 x i32> <i32 0, i32 2>
  %i.pg = fmul nsz <2 x float> %i.pf, splat (float 2.550000e+02)
  %i.ph = fmul nsz <2 x float> %i.pc, splat (float 2.550000e+02)
  %i.pi = fsub nsz float 1.000000e+00, %.1
  %i.pj = insertelement <2 x float> %i.pd, float %.sroa.12.1, i64 0
  %i.pk = fmul nsz <2 x float> %i.pj, splat (float 2.550000e+02)
  %i.pl = fadd nsz <2 x float> %i.pk, splat (float 5.000000e-01)
  %i.pm = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.pl)
  %i.pn = fptosi <2 x float> %i.pm to <2 x i32>
  %i.po = and <2 x i32> %i.pn, splat (i32 255)
  %i.pp = fadd nsz <2 x float> %i.pg, splat (float 5.000000e-01)
  %i.pq = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.pp)
  %i.pr = fptosi <2 x float> %i.pq to <2 x i32>
  %i.ps = fadd nsz <2 x float> %i.ph, splat (float 5.000000e-01)
  %i.pt = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.ps)
  %i.pu = fptosi <2 x float> %i.pt to <2 x i32>
  %i.pv = and <2 x i32> %i.pu, splat (i32 255)
  %i.pw = and <2 x i32> %i.pr, splat (i32 255)
  %i.px = insertelement <4 x float> poison, float %.1, i64 0
  %i.py = shufflevector <4 x float> %i.px, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pz = shufflevector <2 x i32> %i.po, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison>
  %i.qa = uitofp nsz nneg <4 x i32> %i.pz to <4 x float> ; 2 uses
  %i.qb = insertelement <4 x float> %i.qa, float %.sroa.17236.0353, i64 3
  %i.qc = shufflevector <2 x i32> %i.pw, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qd = uitofp nsz nneg <4 x i32> %i.qc to <4 x float>
  %i.qe = shufflevector <4 x float> %i.qd, <4 x float> %i.qb, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.qf = fmul nsz <4 x float> %i.py, %i.qe
  %i.qg = insertelement <4 x float> poison, float %i.pi, i64 0
  %i.qh = shufflevector <4 x float> %i.qg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qi = shufflevector <4 x float> <float poison, float poison, float poison, float 2.550000e+02>, <4 x float> %i.qa, <4 x i32> <i32 poison, i32 poison, i32 4, i32 3>
  %i.qj = shufflevector <2 x i32> %i.pv, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qk = uitofp nsz nneg <4 x i32> %i.qj to <4 x float>
  %i.ql = shufflevector <4 x float> %i.qk, <4 x float> %i.qi, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.qm = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.qh, <4 x float> %i.ql, <4 x float> %i.qf)
  %i.qn = fptoui <4 x float> %i.qm to <4 x i32>
  %i.qo = shufflevector <4 x i32> %i.qn, <4 x i32> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %i.qp = trunc <4 x i32> %i.qo to <4 x i8>
  %i.qq = bitcast <4 x i8> %i.qp to i32
  br label %bb.z

bb.z:                                             ; preds = %bb.t, %_ZN3Sky15m_horizon_blendEv.exit, %.thread306
  %.sroa.0242.0314.ph = phi i32 [ -1, %bb.t ], [ -1, %_ZN3Sky15m_horizon_blendEv.exit ], [ %i.qq, %.thread306 ] ; 3 uses
  %i.qr = fcmp nsz ugt double %i.ja, 4.000000e-01
  br i1 %i.qr, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.qs = fadd nnan ninf nsz double %i.ja, -3.000000e-01
  %i.qt = fmul nnan nsz double %i.qs, 1.000000e+01
  %i.qu = fptrunc nnan nsz double %i.qt to float
  br label %_ZN3Sky15m_horizon_blendEv.exit198

bb.ab:                                            ; preds = %bb.z
  %i.qv = fcmp nsz ugt float %i.iz, 5.000000e-01
  br i1 %i.qv, label %_ZN3Sky15m_horizon_blendEv.exit198, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.qw = fsub nnan ninf nsz double 5.000000e-01, %i.ja
  %i.qx = fmul nnan nsz double %i.qw, 1.000000e+01
  %i.qy = fptrunc nnan nsz double %i.qx to float
  br label %_ZN3Sky15m_horizon_blendEv.exit198

_ZN3Sky15m_horizon_blendEv.exit198:               ; preds = %bb.q, %bb.p, %bb.aa, %bb.ab, %bb.ac
  %.sroa.0242.0313 = phi i32 [ %.sroa.0242.0314.ph, %bb.ab ], [ -1, %bb.p ], [ %.sroa.0242.0314.ph, %bb.aa ], [ %.sroa.0242.0314.ph, %bb.ac ], [ -1, %bb.q ] ; 4 uses
  %.1.i196 = phi nsz float [ 0.000000e+00, %bb.ab ], [ 0.000000e+00, %bb.p ], [ %i.qu, %bb.aa ], [ %i.qy, %bb.ac ], [ 0.000000e+00, %bb.q ]
  %i.qz = fmul nnan nsz float %.1.i196, 5.000000e-01 ; 2 uses
  %i.ra = fsub nsz float 1.000000e+00, %i.qz
  %i.rb = and <2 x i32> %i.ht, splat (i32 255)
  %i.rc = extractelement <2 x i32> %i.iq, i64 0
  %i.rd = uitofp nsz nneg i32 %i.rc to float
  %i.re = bitcast i32 %.sroa.0242.0313 to <4 x i8>
  %i.rf = shufflevector <4 x i8> %i.re, <4 x i8> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %i.rg = uitofp <4 x i8> %i.rf to <4 x float>    ; 2 uses
  %i.rh = insertelement <4 x float> poison, float %i.qz, i64 0
  %i.ri = shufflevector <4 x float> %i.rh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rj = fmul nsz <4 x float> %i.ri, %i.rg
  %i.rk = insertelement <4 x float> poison, float %i.ra, i64 0
  %i.rl = shufflevector <4 x float> %i.rk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rm = insertelement <4 x float> <float poison, float poison, float poison, float 2.550000e+02>, float %i.rd, i64 2
  %i.rn = shufflevector <2 x i32> %i.rb, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ro = uitofp nsz nneg <4 x i32> %i.rn to <4 x float>
  %i.rp = shufflevector <4 x float> %i.ro, <4 x float> %i.rm, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.rq = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.rl, <4 x float> %i.rp, <4 x float> %i.rj)
  %i.rr = fptoui <4 x float> %i.rq to <4 x i32>
  %i.rs = shufflevector <4 x i32> %i.rr, <4 x i32> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %i.rt = trunc <4 x i32> %i.rs to <4 x i8>
  store <4 x i8> %i.rt, ptr %i.hu, align 4, !tbaa !111
  br i1 %4, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %_ZN3Sky15m_horizon_blendEv.exit198
  %i.ru = fcmp nsz ult float %1, 5.000000e-01
  %i.rv = fsub nnan nsz float 1.000000e+00, %1
  %.in.i200 = select i1 %i.ru, float %1, float %i.rv
  %i.rw = fmul nsz float %.in.i200, 2.000000e+00  ; 2 uses
  %i.rx = fpext nsz float %i.rw to double         ; 4 uses
  %i.ry = fcmp nsz ugt double %i.rx, 3.000000e-01
  br i1 %i.ry, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.rz = fcmp nsz ugt double %i.rx, 4.000000e-01
  br i1 %i.rz, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.sa = fadd nnan ninf nsz double %i.rx, -3.000000e-01
  %i.sb = fmul nnan nsz double %i.sa, 1.000000e+01
  %i.sc = fptrunc nnan nsz double %i.sb to float
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %i.sd = fcmp nsz ugt float %i.rw, 5.000000e-01
  br i1 %i.sd, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.se = fsub nnan ninf nsz double 5.000000e-01, %i.rx
  %i.sf = fmul nnan nsz double %i.se, 1.000000e+01
  %i.sg = fptrunc nnan nsz double %i.sf to float
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ad, %_ZN3Sky15m_horizon_blendEv.exit198
  %.1.i199 = phi nsz float [ 0.000000e+00, %_ZN3Sky15m_horizon_blendEv.exit198 ], [ 0.000000e+00, %bb.ad ], [ %i.sc, %bb.af ], [ %i.sg, %bb.ah ], [ 0.000000e+00, %bb.ag ]
  %i.sh = fmul nnan nsz float %.1.i199, 2.500000e-01 ; 2 uses
  %i.si = fsub nsz float 1.000000e+00, %i.sh
  %i.sj = and <2 x i32> %i.ic, splat (i32 255)
  %i.sk = extractelement <2 x i32> %i.iq, i64 1
  %i.sl = uitofp nsz nneg i32 %i.sk to float
  %i.sm = insertelement <4 x float> poison, float %i.sh, i64 0
  %i.sn = shufflevector <4 x float> %i.sm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.so = fmul nsz <4 x float> %i.sn, %i.rg
  %i.sp = insertelement <4 x float> poison, float %i.si, i64 0
  %i.sq = shufflevector <4 x float> %i.sp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sr = insertelement <4 x float> <float poison, float poison, float poison, float 2.550000e+02>, float %i.sl, i64 2
  %i.ss = shufflevector <2 x i32> %i.sj, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.st = uitofp nsz nneg <4 x i32> %i.ss to <4 x float>
  %i.su = shufflevector <4 x float> %i.st, <4 x float> %i.sr, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.sv = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.sq, <4 x float> %i.su, <4 x float> %i.so)
  %i.sw = fptoui <4 x float> %i.sv to <4 x i32>
  %i.sx = shufflevector <4 x i32> %i.sw, <4 x i32> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %i.sy = trunc <4 x i32> %i.sx to <4 x i8>
  store <4 x i8> %i.sy, ptr %i.id, align 8, !tbaa !111
  br i1 %4, label %bb.ak, label %bb.aq

.thread317:                                       ; preds = %bb.o
  br i1 %4, label %.thread321, label %bb.aq

.thread321:                                       ; preds = %.thread317
  %i.sz = fcmp nsz olt float %2, f0x3F333333
  br i1 %i.sz, label %bb.aj, label %bb.aq

bb.aj:                                            ; preds = %.thread321
  %i.ta = fmul nnan nsz float %2, 1.300000e+00
  br label %bb.aq

bb.ak:                                            ; preds = %bb.ai
  %i.tb = fcmp nsz ult float %1, 5.000000e-01
  %i.tc = fsub nnan nsz float 1.000000e+00, %1
  %.in.i203 = select i1 %i.tb, float %1, float %i.tc
  %i.td = fmul nsz float %.in.i203, 2.000000e+00  ; 2 uses
  %i.te = fpext nsz float %i.td to double         ; 4 uses
  %i.tf = fcmp nsz ugt double %i.te, 3.000000e-01
  br i1 %i.tf, label %bb.al, label %_ZN3Sky15m_horizon_blendEv.exit204

bb.al:                                            ; preds = %bb.ak
  %i.tg = fcmp nsz ugt double %i.te, 4.000000e-01
  br i1 %i.tg, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.th = fadd nnan ninf nsz double %i.te, -3.000000e-01
  %i.ti = fmul nnan nsz double %i.th, 1.000000e+01
  %i.tj = fptrunc nsz double %i.ti to float
  br label %_ZN3Sky15m_horizon_blendEv.exit204

bb.an:                                            ; preds = %bb.al
  %i.tk = fcmp nsz ugt float %i.td, 5.000000e-01
  br i1 %i.tk, label %_ZN3Sky15m_horizon_blendEv.exit204, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.tl = fsub nnan ninf nsz double 5.000000e-01, %i.te
  %i.tm = fmul nnan nsz double %i.tl, 1.000000e+01
  %i.tn = fptrunc nsz double %i.tm to float
  br label %_ZN3Sky15m_horizon_blendEv.exit204

_ZN3Sky15m_horizon_blendEv.exit204:               ; preds = %bb.ak, %bb.am, %bb.an, %bb.ao
  %.1.i202 = phi nsz float [ 0.000000e+00, %bb.an ], [ 0.000000e+00, %bb.ak ], [ %i.tj, %bb.am ], [ %i.tn, %bb.ao ]
  %i.to = tail call nsz float @llvm.fmuladd.f32(float %.1.i202, float 1.500000e-01, float %2)
  %i.tp = tail call nsz noundef float @llvm.minnum.f32(float %i.to, float 1.000000e+00) ; 2 uses
  %i.tq = fcmp nsz olt float %2, 5.000000e-01
  br i1 %i.tq, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZN3Sky15m_horizon_blendEv.exit204
  %i.tr = fmul nnan nsz float %2, 1.300000e+00
  %i.ts = tail call nsz noundef float @llvm.maxnum.f32(float %i.tp, float %i.tr)
  br label %bb.aq

bb.aq:                                            ; preds = %.thread317, %bb.ai, %bb.aj, %.thread321, %bb.ap, %_ZN3Sky15m_horizon_blendEv.exit204
  %.sroa.0242.1319 = phi i32 [ %.sroa.0242.0313, %bb.ap ], [ %.sroa.0242.0313, %_ZN3Sky15m_horizon_blendEv.exit204 ], [ -1, %bb.aj ], [ -1, %.thread321 ], [ %.sroa.0242.0313, %bb.ai ], [ -1, %.thread317 ] ; 4 uses
  %.0118 = phi nsz float [ %i.ts, %bb.ap ], [ %i.tp, %_ZN3Sky15m_horizon_blendEv.exit204 ], [ %i.ta, %bb.aj ], [ %2, %.thread321 ], [ %3, %bb.ai ], [ %3, %.thread317 ]
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 1812 ; 2 uses
  %i.tu = load float, ptr %i.tt, align 4, !tbaa !325
  %i.tv = fmul nsz float %.0117295, %i.tu
  %i.tw = fpext nsz float %i.tv to double
  %i.tx = fpext nsz float %.0118 to double
  %i.ty = fpext nsz float %.0117295 to double
  %i.tz = fsub nsz double 1.000000e+00, %i.ty
  %i.ua = tail call nsz double @llvm.fmuladd.f64(double %i.tx, double %i.tz, double %i.tw)
  %i.ub = fptrunc nsz double %i.ua to float       ; 3 uses
  store float %i.ub, ptr %i.tt, align 4, !tbaa !325
  %i.uc = fmul nsz float %i.hd, %i.ub
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 1876 ; 3 uses
  %i.ue = insertelement <2 x float> poison, float %i.ub, i64 0
  %i.uf = shufflevector <2 x float> %i.ue, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ug = fmul nsz <2 x float> %i.hf, %i.uf
  store <2 x float> %i.ug, ptr %i.ud, align 4, !tbaa !37
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1884 ; 3 uses
  store float %i.uc, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !37
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1888
  store float 1.000000e+00, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !37
  br i1 %i.iw, label %bb.ar, label %.loopexit

bb.ar:                                            ; preds = %bb.aq
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.ud, align 4, !tbaa !37
  %.sroa.2.0.copyload = load <2 x float>, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !37
  %i.uh = lshr i32 %.sroa.0242.1319, 16
  %i.ui = lshr i32 %.sroa.0242.1319, 8
  %i.uj = and i32 %i.uh, 255
  %i.uk = uitofp nsz nneg i32 %i.uj to float
  %i.ul = and i32 %i.ui, 255
  %i.um = uitofp nsz nneg i32 %i.ul to float
  %i.un = insertelement <2 x float> poison, float %i.uk, i64 0
  %i.uo = insertelement <2 x float> %i.un, float %i.um, i64 1
  %i.up = fmul nnan nsz <2 x float> %i.uo, splat (float f0x3B808081)
  %i.uq = and i32 %.sroa.0242.1319, 255
  %i.ur = lshr i32 %.sroa.0242.1319, 24
  %i.us = uitofp nsz nneg i32 %i.uq to float
  %i.ut = uitofp nsz nneg i32 %i.ur to float
  %i.uu = insertelement <2 x float> poison, float %i.us, i64 0
  %i.uv = insertelement <2 x float> %i.uu, float %i.ut, i64 1
  %i.uw = fmul nnan nsz <2 x float> %i.uv, splat (float f0x3B808081)
  br i1 %4, label %bb.as, label %_ZN3Sky15m_horizon_blendEv.exit207

bb.as:                                            ; preds = %bb.ar
  %i.ux = fcmp nsz ult float %1, 5.000000e-01
  %i.uy = fsub nnan nsz float 1.000000e+00, %1
  %.in.i206 = select i1 %i.ux, float %1, float %i.uy
  %i.uz = fmul nsz float %.in.i206, 2.000000e+00  ; 2 uses
  %i.va = fpext nsz float %i.uz to double         ; 4 uses
  %i.vb = fcmp nsz ugt double %i.va, 3.000000e-01
  br i1 %i.vb, label %bb.at, label %_ZN3Sky15m_horizon_blendEv.exit207

bb.at:                                            ; preds = %bb.as
  %i.vc = fcmp nsz ugt double %i.va, 4.000000e-01
  br i1 %i.vc, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.vd = fadd nnan ninf nsz double %i.va, -3.000000e-01
  %i.ve = fmul nnan nsz double %i.vd, 1.000000e+01
  %i.vf = fptrunc nnan nsz double %i.ve to float
  br label %_ZN3Sky15m_horizon_blendEv.exit207

bb.av:                                            ; preds = %bb.at
  %i.vg = fcmp nsz ugt float %i.uz, 5.000000e-01
  br i1 %i.vg, label %_ZN3Sky15m_horizon_blendEv.exit207, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.vh = fsub nnan ninf nsz double 5.000000e-01, %i.va
  %i.vi = fmul nnan nsz double %i.vh, 1.000000e+01
  %i.vj = fptrunc nnan nsz double %i.vi to float
  br label %_ZN3Sky15m_horizon_blendEv.exit207

_ZN3Sky15m_horizon_blendEv.exit207:               ; preds = %bb.ar, %bb.as, %bb.au, %bb.av, %bb.aw
  %.1.i205 = phi nsz float [ 0.000000e+00, %bb.ar ], [ 0.000000e+00, %bb.as ], [ %i.vf, %bb.au ], [ %i.vj, %bb.aw ], [ 0.000000e+00, %bb.av ]
  %i.vk = fmul nnan nsz float %.1.i205, 2.500000e-01 ; 2 uses
  %i.vl = fsub nsz float 1.000000e+00, %i.vk
  %i.vm = insertelement <2 x float> poison, float %i.vk, i64 0
  %i.vn = shufflevector <2 x float> %i.vm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.vo = fmul nsz <2 x float> %i.up, %i.vn
  %i.vp = insertelement <2 x float> poison, float %i.vl, i64 0
  %i.vq = shufflevector <2 x float> %i.vp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.vr = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.sroa.01.0.copyload, <2 x float> %i.vq, <2 x float> %i.vo)
  %i.vs = fmul nsz <2 x float> %i.uw, %i.vn
  %i.vt = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.sroa.2.0.copyload, <2 x float> %i.vq, <2 x float> %i.vs)
  store <2 x float> %i.vr, ptr %i.ud, align 4, !tbaa !37
  store <2 x float> %i.vt, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !37
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.aq, %_ZN3Sky15m_horizon_blendEv.exit207
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, float } @_ZN3Sky15getSunDirectionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2368) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1796
  %i.b = load float, ptr %i.a, align 4, !tbaa !170 ; 6 uses
  %i.c = fcmp nsz ogt float %i.b, 2.075000e-01
  %i.d = fcmp nsz olt float %i.b, 7.925000e-01
  %or.cond.i = and i1 %i.c, %i.d
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = fadd nsz float %i.b, -2.075000e-01
  %i.f = fdiv nsz float %i.e, f0x3F15C290
  %i.g = tail call nsz float @llvm.fmuladd.f32(float %i.f, float 5.000000e-01, float 2.500000e-01)
  br label %_Z18getWickedTimeOfDayf.exit

bb.c:                                             ; preds = %bb.a
  %i.h = fcmp nsz olt float %i.b, 5.000000e-01
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = fdiv nnan nsz float %i.b, 2.075000e-01
  %i.j = fmul nnan nsz float %i.i, 2.500000e-01
  br label %_Z18getWickedTimeOfDayf.exit

bb.e:                                             ; preds = %bb.c
  %i.k = fsub nsz float 1.000000e+00, %i.b
  %i.l = fdiv nsz float %i.k, -2.075000e-01
  %i.m = tail call nsz float @llvm.fmuladd.f32(float %i.l, float 2.500000e-01, float 1.000000e+00)
  br label %_Z18getWickedTimeOfDayf.exit

_Z18getWickedTimeOfDayf.exit:                     ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi nsz float [ %i.g, %bb.b ], [ %i.j, %bb.d ], [ %i.m, %bb.e ]
  %i.n = tail call nsz float @llvm.fmuladd.f32(float %.0.i, float 3.600000e+02, float -9.000000e+01)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.p = load float, ptr %i.o, align 8, !tbaa !154
  %i.q = fpext nsz float %i.n to double
  %i.r = fmul nsz double %i.q, f0x3F91DF46A2529D39
  %sincos.i3.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.r) ; 2 uses
  %sin.i4.i = extractvalue { double, double } %sincos.i3.i, 0 ; 2 uses
  %cos.i5.i = extractvalue { double, double } %sincos.i3.i, 1 ; 2 uses
  %i.s = fmul nsz double %sin.i4.i, 0.000000e+00
  %i.t = fmul nsz double %cos.i5.i, 0.000000e+00
  %i.u = fadd nsz double %sin.i4.i, %i.t
  %i.v = fptrunc nsz double %i.u to float
  %i.w = fpext nsz float %i.p to double
  %i.x = fmul nsz double %i.w, f0x3F91DF46A2529D39
  %sincos.i6.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.x) ; 2 uses
  %sin.i7.i = extractvalue { double, double } %sincos.i6.i, 0
  %cos.i8.i = extractvalue { double, double } %sincos.i6.i, 1
  %i.y = fpext nsz float %i.v to double
  %i.z = fsub nsz double %cos.i5.i, %i.s
  %i.aa = insertelement <2 x double> poison, double %cos.i8.i, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %sin.i7.i, i64 1 ; 2 uses
  %i.ac = fmul nsz <2 x double> %i.ab, <double f0xBC91A62640000000, double f0x3C91A62640000000>
  %i.ad = insertelement <2 x double> poison, double %i.y, i64 0
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.af = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ag = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.af, <2 x double> %i.ac) ; 2 uses
  %i.ah = insertelement <2 x double> %i.ag, double %i.z, i64 0
  %i.ai = fptrunc nsz <2 x double> %i.ah to <2 x float>
  %i.aj = extractelement <2 x double> %i.ag, i64 0
  %i.ak = fptrunc nsz double %i.aj to float
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.ai, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.ak, 1
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, float } @_ZN3Sky16getMoonDirectionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2368) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1796
  %i.b = load float, ptr %i.a, align 4, !tbaa !170 ; 6 uses
  %i.c = fcmp nsz ogt float %i.b, 2.075000e-01
  %i.d = fcmp nsz olt float %i.b, 7.925000e-01
  %or.cond.i = and i1 %i.c, %i.d
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = fadd nsz float %i.b, -2.075000e-01
  %i.f = fdiv nsz float %i.e, f0x3F15C290
  %i.g = tail call nsz float @llvm.fmuladd.f32(float %i.f, float 5.000000e-01, float 2.500000e-01)
  br label %_Z18getWickedTimeOfDayf.exit

bb.c:                                             ; preds = %bb.a
  %i.h = fcmp nsz olt float %i.b, 5.000000e-01
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = fdiv nnan nsz float %i.b, 2.075000e-01
  %i.j = fmul nnan nsz float %i.i, 2.500000e-01
  br label %_Z18getWickedTimeOfDayf.exit

bb.e:                                             ; preds = %bb.c
  %i.k = fsub nsz float 1.000000e+00, %i.b
  %i.l = fdiv nsz float %i.k, -2.075000e-01
  %i.m = tail call nsz float @llvm.fmuladd.f32(float %i.l, float 2.500000e-01, float 1.000000e+00)
  br label %_Z18getWickedTimeOfDayf.exit

_Z18getWickedTimeOfDayf.exit:                     ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi nsz float [ %i.g, %bb.b ], [ %i.j, %bb.d ], [ %i.m, %bb.e ]
  %i.n = tail call nsz float @llvm.fmuladd.f32(float %.0.i, float 3.600000e+02, float -9.000000e+01)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.p = load float, ptr %i.o, align 8, !tbaa !154
  %i.q = fpext nsz float %i.n to double
  %i.r = fmul nsz double %i.q, f0x3F91DF46A2529D39
  %sincos.i3.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.r) ; 2 uses
  %sin.i4.i = extractvalue { double, double } %sincos.i3.i, 0 ; 2 uses
  %cos.i5.i = extractvalue { double, double } %sincos.i3.i, 1 ; 2 uses
  %i.s = fmul nsz double %sin.i4.i, -0.000000e+00
  %i.t = fmul nsz double %cos.i5.i, 0.000000e+00
  %i.u = fsub nsz double %i.t, %sin.i4.i
  %i.v = fptrunc nsz double %i.u to float
  %i.w = fpext nsz float %i.p to double
  %i.x = fmul nsz double %i.w, f0x3F91DF46A2529D39
  %sincos.i6.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.x) ; 2 uses
  %sin.i7.i = extractvalue { double, double } %sincos.i6.i, 0
  %cos.i8.i = extractvalue { double, double } %sincos.i6.i, 1
  %i.y = fpext nsz float %i.v to double
  %i.z = fsub nsz double %i.s, %cos.i5.i
  %i.aa = insertelement <2 x double> poison, double %cos.i8.i, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %sin.i7.i, i64 1 ; 2 uses
  %i.ac = fmul nsz <2 x double> %i.ab, <double f0x3CAA793940000000, double f0xBCAA793940000000>
  %i.ad = insertelement <2 x double> poison, double %i.y, i64 0
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.af = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ag = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.af, <2 x double> %i.ac) ; 2 uses
  %i.ah = insertelement <2 x double> %i.ag, double %i.z, i64 0
  %i.ai = fptrunc nsz <2 x double> %i.ah to <2 x float>
  %i.aj = extractelement <2 x double> %i.ag, i64 0
  %i.ak = fptrunc nsz double %i.aj to float
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.ai, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.ak, 1
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN3Sky13draw_sky_bodyERSt5arrayIN5video9S3DVertexELm4EEffRKNS1_6SColorE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(2368) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(160) initializes((0, 38), (40, 78), (80, 118), (120, 158)) %1, float noundef %2, float noundef %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #11 align 2 {
bb.a:
  %.sroa.03.0.copyload = load i32, ptr %4, align 4, !tbaa !111 ; 2 uses
  store float %2, ptr %1, align 4, !tbaa !37
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %2, ptr %.sroa.443.0..sroa_idx, align 4, !tbaa !37
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <4 x float> <float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.544.0..sroa_idx, align 4, !tbaa !37
  %.sroa.948.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %.sroa.03.0.copyload, ptr %.sroa.948.0..sroa_idx, align 4, !tbaa !111
  %.sroa.1049.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.1049.0..sroa_idx, align 4, !tbaa !37
  %.sroa.1251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i16 0, ptr %.sroa.1251.0..sroa_idx, align 4, !tbaa !176
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float %3, ptr %i.a, align 4, !tbaa !37
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  store float %2, ptr %.sroa.432.0..sroa_idx, align 4, !tbaa !37
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x float> <float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.533.0..sroa_idx, align 4, !tbaa !37
  %.sroa.937.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 %.sroa.03.0.copyload, ptr %.sroa.937.0..sroa_idx, align 4, !tbaa !111
  %.sroa.1038.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 68
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.1038.0..sroa_idx, align 4, !tbaa !37
  %.sroa.1240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i16 0, ptr %.sroa.1240.0..sroa_idx, align 4, !tbaa !176
  %.sroa.01.0.copyload = load i32, ptr %4, align 4, !tbaa !111 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  store float %3, ptr %i.b, align 4, !tbaa !37
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 84
  store float %3, ptr %.sroa.421.0..sroa_idx, align 4, !tbaa !37
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  store <4 x float> <float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.522.0..sroa_idx, align 4, !tbaa !37
  %.sroa.926.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i32 %.sroa.01.0.copyload, ptr %.sroa.926.0..sroa_idx, align 4, !tbaa !111
  %.sroa.1027.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 108
  store <2 x float> zeroinitializer, ptr %.sroa.1027.0..sroa_idx, align 4, !tbaa !37
  %.sroa.1229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 116
  store i16 0, ptr %.sroa.1229.0..sroa_idx, align 4, !tbaa !176
end_hunk_1
