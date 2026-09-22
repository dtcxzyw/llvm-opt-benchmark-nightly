Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/tetgen?download=true
inline.NumInlined: 6986
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 436
loop-unroll.NumRuntimeUnrolled: 117
loop-unroll.NumUnrolled: 556
begin_hunk_0_@_ZN10tetgenmesh11smoothpointEPdPNS_9arraypoolEiPNS_13optparametersE:.preheader180
  %.0144 = phi i32 [ %i.kh, %.preheader179 ], [ 0, %.preheader180.split ] ; 3 uses
  br i1 %i.ka, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.kd = load i32, ptr %4, align 8, !tbaa !382
  %.not = icmp eq i32 %i.kd, 0
  br i1 %.not, label %bb.t, label %.preheader179

bb.t:                                             ; preds = %bb.s
  %i.ke = load i32, ptr %i.x, align 4, !tbaa !383
  %.not161 = icmp eq i32 %i.ke, 0
  br i1 %.not161, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %i.kc, label %.preheader179, label %.thread

bb.v:                                             ; preds = %bb.t
  %i.kf = load i32, ptr %i.ab, align 8, !tbaa !384
  %.not162 = icmp eq i32 %i.kf, 0
  br i1 %.not162, label %.split.us, label %.preheader179

.split.us:                                        ; preds = %bb.v, %bb.q
  %i.kg = call ptr @__cxa_allocate_exception(i64 4) #40 ; 2 uses
  store i32 2, ptr %i.kg, align 16, !tbaa !59
  call void @__cxa_throw(ptr nonnull %i.kg, ptr nonnull @_ZTIi, ptr null) #43
  unreachable

.preheader179:                                    ; preds = %bb.v, %bb.s, %bb.u
  %i.kh = add nuw nsw i32 %.0144, 1               ; 3 uses
  %i.ki = load i32, ptr %i.ad, align 8, !tbaa !387 ; 2 uses
  %i.kj = icmp slt i32 %i.ki, 1
  %.not163 = icmp slt i32 %i.kh, %i.ki
  %or.cond = select i1 %i.kj, i1 true, i1 %.not163
  br i1 %or.cond, label %bb.r, label %.thread171, !llvm.loop !1075

.thread:                                          ; preds = %bb.u, %bb.r, %bb.p, %._crit_edge201.us
  %.sroa.8.2 = phi double [ %.sroa.8247.0, %bb.p ], [ %.sroa.8247.0, %._crit_edge201.us ], [ %.sroa.8.0.copyload, %bb.r ], [ %.sroa.8.0.copyload, %bb.u ]
  %.us-phi = phi i32 [ %.0144.us, %bb.p ], [ %.0144.us, %._crit_edge201.us ], [ %.0144, %bb.r ], [ %.0144, %bb.u ] ; 2 uses
  %i.kk = phi <2 x double> [ %i.ag, %bb.p ], [ %i.ag, %._crit_edge201.us ], [ %i.n, %bb.r ], [ %i.n, %bb.u ]
  %.not176 = icmp eq i32 %.us-phi, 0
  br i1 %.not176, label %.loopexit, label %.thread171

.thread171:                                       ; preds = %.preheader179, %.preheader179.us, %.thread
  %.sroa.8.3 = phi double [ %.sroa.8247.2, %.preheader179.us ], [ %.sroa.8.2, %.thread ], [ %.sroa.8.0.copyload, %.preheader179 ]
  %.1145174 = phi i32 [ %i.jt, %.preheader179.us ], [ %.us-phi, %.thread ], [ %i.kh, %.preheader179 ] ; 2 uses
  %i.kl = phi <2 x double> [ %i.ij, %.preheader179.us ], [ %i.kk, %.thread ], [ %i.n, %.preheader179 ]
  %i.km = getelementptr inbounds nuw i8, ptr %4, i64 52
  store i32 %.1145174, ptr %i.km, align 4, !tbaa !388
  store <2 x double> %i.kl, ptr %1, align 8, !tbaa !58
  store double %.sroa.8.3, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !58
  br label %.loopexit

.loopexit:                                        ; preds = %.thread171, %.thread
  %.1145173 = phi i32 [ 0, %.thread ], [ %.1145174, %.thread171 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  ret i32 %.1145173
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN10tetgenmesh24add_steinerpt_in_segmentEPNS_4faceEiRi(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.tetgenmesh::triface", align 8 ; 10 uses
  %5 = alloca %"class.tetgenmesh::flipconstraints", align 8 ; 13 uses
  %6 = alloca %"class.tetgenmesh::face", align 8  ; 6 uses
  %7 = alloca %"class.tetgenmesh::face", align 8  ; 6 uses
  %8 = alloca %"class.tetgenmesh::insertvertexflags", align 16 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 104
  store ptr null, ptr %i.e, align 8, !tbaa !112
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 128
  store ptr null, ptr %i.f, align 8, !tbaa !306
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %5, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.b, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.c, i8 0, i64 24, i1 false)
  %i.g = load ptr, ptr %1, align 8, !tbaa !224    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !225
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !59
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !220  ; 17 uses
  %i.p = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %i.j
  %i.q = load i32, ptr %i.p, align 4, !tbaa !59
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !220  ; 14 uses
  store i32 0, ptr %3, align 4, !tbaa !59
  store ptr %i.o, ptr %i.d, align 8, !tbaa !112
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 96
  store ptr %i.t, ptr %i.u, align 8, !tbaa !112
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i32 1, ptr %i.v, align 8, !tbaa !295
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 1, ptr %i.w, align 8, !tbaa !300
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 68660 ; 4 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !244
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !220
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = and i64 %i.ac, -16
  %i.ae = inttoptr i64 %i.ad to ptr               ; 4 uses
  store ptr %i.ae, ptr %4, align 8, !tbaa !231
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load ptr, ptr %i.af, align 16, !tbaa !220
  %i.ah = icmp eq ptr %i.ag, %i.o
  br i1 %i.ah, label %_ZN10tetgenmesh12point2tetorgEPdRNS_7trifaceE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !220
  %i.ak = icmp eq ptr %i.aj, %i.o
  br i1 %i.ak, label %_ZN10tetgenmesh12point2tetorgEPdRNS_7trifaceE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.am = load ptr, ptr %i.al, align 16, !tbaa !220
  %i.an = icmp eq ptr %i.am, %i.o
  %..i = select i1 %i.an, i32 7, i32 0
  br label %_ZN10tetgenmesh12point2tetorgEPdRNS_7trifaceE.exit

_ZN10tetgenmesh12point2tetorgEPdRNS_7trifaceE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sink.i = phi i32 [ 11, %bb.a ], [ 3, %bb.b ], [ %..i, %bb.c ]
  store i32 %.sink.i, ptr %i.a, align 8, !tbaa !236
  %i.ao = call noundef i32 @_ZN10tetgenmesh13finddirectionEPNS_7trifaceEPd(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %4, ptr noundef %i.t) ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 7
  br i1 %i.ap, label %bb.bh, label %bb.d

bb.d:                                             ; preds = %_ZN10tetgenmesh12point2tetorgEPdRNS_7trifaceE.exit
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !236
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh12enextesymtblE, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !59
  store i32 %i.at, ptr %i.a, align 8, !tbaa !236
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !218
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 188 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !298 ; 2 uses
  store i32 %2, ptr %i.aw, align 4, !tbaa !298
  %i.ay = icmp eq i32 %i.ao, 9
  br i1 %i.ay, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.az = call noundef i32 @_ZN10tetgenmesh17removefacebyflipsEPNS_7trifaceEPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %4, ptr noundef nonnull %5) ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ba = call noundef i32 @_ZN10tetgenmesh17removeedgebyflipsEPNS_7trifaceEPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %4, ptr noundef nonnull %5) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2864
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !262 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 3 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !100 ; 2 uses
  %i.bf = icmp sgt i64 %i.be, 0
  %.pre = load ptr, ptr %i.au, align 8, !tbaa !218 ; 4 uses
  br i1 %i.bf, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.g
  store i64 0, ptr %i.bd, align 8, !tbaa !100
  %i.bg = getelementptr inbounds nuw i8, ptr %.pre, i64 188
  store i32 %i.ax, ptr %i.bg, align 4, !tbaa !298
  br label %bb.bh

.lr.ph:                                           ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !104
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 68688
  %i.bm = load <2 x double>, ptr %i.o, align 8, !tbaa !58 ; 3 uses
  %i.bn = load <2 x double>, ptr %i.t, align 8, !tbaa !58
  %i.bo = fsub <2 x double> %i.bn, %i.bm          ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !58
  %i.br = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.bs = load double, ptr %i.br, align 8, !tbaa !58 ; 3 uses
  %i.bt = fsub double %i.bq, %i.bs                ; 5 uses
  %foldExtExtBinop = fmul <2 x double> %i.bo, %i.bo
  %i.bu = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.bv = extractelement <2 x double> %i.bo, i64 0 ; 2 uses
  %i.bw = call double @llvm.fmuladd.f64(double %i.bv, double %i.bv, double %i.bu)
  %i.bx = call noundef double @llvm.fmuladd.f64(double %i.bt, double %i.bt, double %i.bw) ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.pre, i64 264
  %i.bz = load double, ptr %i.by, align 8, !tbaa !181 ; 2 uses
  %i.ca = fmul double %i.bz, 1.000000e+03         ; 4 uses
  %i.cb = insertelement <2 x double> poison, double %i.bt, i64 1
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZN10tetgenmesh11linelineintEPdS0_S0_S0_S0_S0_S0_S0_.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN10tetgenmesh11linelineintEPdS0_S0_S0_S0_S0_S0_S0_.exit.thread ] ; 2 uses
  %.0104200 = phi double [ 0.000000e+00, %.lr.ph ], [ %.1105, %_ZN10tetgenmesh11linelineintEPdS0_S0_S0_S0_S0_S0_S0_.exit.thread ] ; 14 uses
  %.0106199 = phi double [ 0.000000e+00, %.lr.ph ], [ %.1107, %_ZN10tetgenmesh11linelineintEPdS0_S0_S0_S0_S0_S0_S0_.exit.thread ] ; 9 uses
  %.sroa.0.0198 = phi ptr [ null, %.lr.ph ], [ %.sroa.0.1, %_ZN10tetgenmesh11linelineintEPdS0_S0_S0_S0_S0_S0_S0_.exit.thread ] ; 8 uses
  %.sroa.10.0197 = phi i32 [ 0, %.lr.ph ], [ %.sroa.10.1, %_ZN10tetgenmesh11linelineintEPdS0_S0_S0_S0_S0_S0_S0_.exit.thread ] ; 8 uses
  %i.cc = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.go, %_ZN10tetgenmesh11linelineintEPdS0_S0_S0_S0_S0_S0_S0_.exit.thread ] ; 7 uses
  %i.cd = load i32, ptr %i.bj, align 8, !tbaa !103
  %i.ce = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.cf = lshr i32 %i.ce, %i.cd
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !53
  %i.cj = load i32, ptr %i.bk, align 4, !tbaa !110
  %i.ck = and i32 %i.cj, %i.ce
  %i.cl = load i32, ptr %i.bc, align 8, !tbaa !102
  %i.cm = mul nsw i32 %i.ck, %i.cl
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds i8, ptr %i.ci, i64 %i.cn ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !224 ; 5 uses
  %i.cq = load i32, ptr %i.bl, align 8, !tbaa !239
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr [4 x i8], ptr %i.cp, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cs, i64 4      ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !59
  %i.cv = and i32 %i.cu, -2
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !59
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !225 ; 3 uses
  %i.cy = sext i32 %i.cx to i64                   ; 2 uses
  %i.cz = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !59
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !220 ; 2 uses
  %i.de = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %i.cy
  %i.df = load i32, ptr %i.de, align 4, !tbaa !59
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !220 ; 2 uses
  %i.dj = load double, ptr %i.di, align 8, !tbaa !58
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dl = load <2 x double>, ptr %i.dd, align 8, !tbaa !58 ; 4 uses
  %i.dm = extractelement <2 x double> %i.dl, i64 0
  %i.dn = fsub double %i.dj, %i.dm                ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dp = load double, ptr %i.do, align 8, !tbaa !58 ; 2 uses
  %i.dq = load <2 x double>, ptr %i.dk, align 8, !tbaa !58
  %i.dr = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ds = insertelement <2 x double> %i.dr, double %i.dp, i64 1 ; 2 uses
  %i.dt = fsub <2 x double> %i.dq, %i.ds          ; 6 uses
  %i.du = shufflevector <2 x double> %i.bo, <2 x double> %i.dt, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.dv = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dw = fmul <2 x double> %i.du, %i.dv
  %9 = insertelement <2 x double> %i.bo, double %i.dn, i64 1 ; 2 uses
  %i.dx = insertelement <2 x double> poison, double %i.dn, i64 0
  %10 = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %9, <2 x double> %10, <2 x double> %i.dw)
  %i.dz = insertelement <2 x double> %i.dt, double %i.bt, i64 0
  %i.ea = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.eb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dz, <2 x double> %i.ea, <2 x double> %i.dy) ; 5 uses
  %i.ec = extractelement <2 x double> %i.eb, i64 1
  %i.ed = insertelement <2 x double> %i.eb, double %i.bx, i64 1
  %i.ee = fmul <2 x double> %i.ed, %i.eb          ; 2 uses
  %i.ef = extractelement <2 x double> %i.ee, i64 0
  %i.eg = fneg double %i.ef
  %i.eh = call double @llvm.fmuladd.f64(double %i.bx, double %i.ec, double %i.eg) ; 2 uses
  %i.ei = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ee)
  %i.ej = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ei)
  %i.ek = fdiv double %i.eh, %i.ej
  %i.el = fcmp olt double %i.ek, %i.bz
  br i1 %i.el, label %_ZN10tetgenmesh11linelineintEPdS0_S0_S0_S0_S0_S0_S0_.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.em = fsub double %i.bs, %i.dp                ; 2 uses
  %i.en = fsub <2 x double> %i.bm, %i.dl          ; 2 uses
  %i.eo = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ep = fmul <2 x double> %i.du, %i.eo
  %i.eq = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> zeroinitializer
  %i.er = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eq, <2 x double> %9, <2 x double> %i.ep) ; 2 uses
  %i.es = extractelement <2 x double> %i.er, i64 0
  %i.et = call noundef double @llvm.fmuladd.f64(double %i.em, double %i.bt, double %i.es)
  %i.eu = extractelement <2 x double> %i.er, i64 1
  %i.ev = extractelement <2 x double> %i.dt, i64 1
  %i.ew = call noundef double @llvm.fmuladd.f64(double %i.em, double %i.ev, double %i.eu)
  %i.ex = fneg double %i.et
  %i.ey = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ez = insertelement <2 x double> %i.ey, double %i.bx, i64 0
  %i.fa = insertelement <2 x double> poison, double %i.ew, i64 0
  %i.fb = shufflevector <2 x double> %i.fa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fc = fmul <2 x double> %i.ez, %i.fb
  %i.fd = insertelement <2 x double> poison, double %i.ex, i64 0
  %i.fe = shufflevector <2 x double> %i.fd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ff = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> %i.fe, <2 x double> %i.fc)
  %i.fg = insertelement <2 x double> poison, double %i.eh, i64 0
  %i.fh = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fi = fdiv <2 x double> %i.ff, %i.fh          ; 7 uses
  %i.fj = extractelement <2 x double> %i.fi, i64 1 ; 8 uses
  %i.fk = shufflevector <2 x double> %i.fi, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fk, <2 x double> %i.bo, <2 x double> %i.bm) ; 2 uses
  %i.fm = extractelement <2 x double> %i.fi, i64 0 ; 7 uses
  %i.fn = insertelement <2 x double> %i.cb, double %i.dn, i64 0
  %i.fo = insertelement <2 x double> %i.dl, double %i.bs, i64 1
  %i.fp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fi, <2 x double> %i.fn, <2 x double> %i.fo) ; 2 uses
  %i.fq = shufflevector <2 x double> %i.fi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fq, <2 x double> %i.dt, <2 x double> %i.ds) ; 2 uses
  %i.fs = fcmp ogt double %i.fj, 0.000000e+00
  %i.ft = fcmp olt double %i.fm, 1.000000e+00     ; 2 uses
  %or.cond = and i1 %i.fs, %i.ft
  br i1 %or.cond, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.fu = fcmp olt double %i.fj, 5.000000e-01
  br i1 %i.fu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fv = fcmp olt double %i.fj, %i.ca
  %11 = insertelement <2 x double> %i.cc, double %.0104200, i64 1
  br i1 %i.fv, label %_ZN10tetgenmesh11linelineintEPdS0_S0_S0_S0_S0_S0_S0_.exit.thread, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.fw = fsub double 1.000000e+00, %i.fj
  %i.fx = fcmp olt double %i.fw, %i.ca
  %12 = insertelement <2 x double> %i.cc, double %.0104200, i64 1
  br i1 %i.fx, label %_ZN10tetgenmesh11linelineintEPdS0_S0_S0_S0_S0_S0_S0_.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.i
  %i.fy = fcmp ole double %i.fj, 0.000000e+00
  %i.fz = fcmp oge double %i.fj, 1.000000e+00
  %or.cond3 = or i1 %i.fy, %i.fz
  br i1 %or.cond3, label %_ZN10tetgenmesh11linelineintEPdS0_S0_S0_S0_S0_S0_S0_.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ga = fcmp ogt double %i.fm, 0.000000e+00
  %or.cond5 = and i1 %i.ga, %i.ft
  br i1 %or.cond5, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.gb = fcmp olt double %i.fm, 5.000000e-01
  br i1 %i.gb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.gc = fcmp olt double %i.fm, %i.ca
  %13 = insertelement <2 x double> %i.cc, double %.0104200, i64 1
  br i1 %i.gc, label %_ZN10tetgenmesh11linelineintEPdS0_S0_S0_S0_S0_S0_S0_.exit.thread, label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.gd = fsub double 1.000000e+00, %i.fm
  %i.ge = fcmp olt double %i.gd, %i.ca
  %14 = insertelement <2 x double> %i.cc, double %.0104200, i64 1
  br i1 %i.ge, label %_ZN10tetgenmesh11linelineintEPdS0_S0_S0_S0_S0_S0_S0_.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.n
  %i.gf = fcmp ole double %i.fm, 0.000000e+00
  %i.gg = fcmp oge double %i.fm, 1.000000e+00
  %or.cond7 = or i1 %i.gf, %i.gg
  %15 = insertelement <2 x double> %i.cc, double %.0104200, i64 1 ; 2 uses
  br i1 %or.cond7, label %_ZN10tetgenmesh11linelineintEPdS0_S0_S0_S0_S0_S0_S0_.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %foldExtExtBinop328 = fsub <2 x double> %i.fp, %i.fl
  %i.gh = extractelement <2 x double> %foldExtExtBinop328, i64 0 ; 2 uses
  %shift = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop330 = fsub <2 x double> %i.fr, %shift ; 2 uses
  %foldExtExtBinop332 = fmul <2 x double> %foldExtExtBinop330, %foldExtExtBinop330
  %i.gi = extractelement <2 x double> %foldExtExtBinop332, i64 0
  %i.gj = call double @llvm.fmuladd.f64(double %i.gh, double %i.gh, double %i.gi)
  %foldExtExtBinop334 = fsub <2 x double> %i.fr, %i.fp
  %i.gk = extractelement <2 x double> %foldExtExtBinop334, i64 1 ; 2 uses
  %i.gl = call double @llvm.fmuladd.f64(double %i.gk, double %i.gk, double %i.gj)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.gl) ; 3 uses
  %i.gm = fcmp oeq double %.0104200, 0.000000e+00
  br i1 %i.gm, label %_ZN10tetgenmesh11linelineintEPdS0_S0_S0_S0_S0_S0_S0_.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gn = fcmp olt double %sqrt.i, %.0106199
  br i1 %i.gn, label %bb.u, label %_ZN10tetgenmesh11linelineintEPdS0_S0_S0_S0_S0_S0_S0_.exit.thread

bb.u:                                             ; preds = %bb.t
  br label %_ZN10tetgenmesh11linelineintEPdS0_S0_S0_S0_S0_S0_S0_.exit.thread

_ZN10tetgenmesh11linelineintEPdS0_S0_S0_S0_S0_S0_S0_.exit.thread: ; preds = %bb.q, %bb.p, %bb.l, %bb.k, %bb.h, %bb.s, %bb.t, %bb.u, %bb.r, %bb.m
  %.sroa.10.1 = phi i32 [ %i.cx, %bb.s ], [ %.sroa.10.0197, %bb.m ], [ %.sroa.10.0197, %bb.r ], [ %.sroa.10.0197, %bb.l ], [ %i.cx, %bb.u ], [ %.sroa.10.0197, %bb.t ], [ %.sroa.10.0197, %bb.h ], [ %.sroa.10.0197, %bb.k ], [ %.sroa.10.0197, %bb.p ], [ %.sroa.10.0197, %bb.q ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %i.cp, %bb.s ], [ %.sroa.0.0198, %bb.m ], [ %.sroa.0.0198, %bb.r ], [ %.sroa.0.0198, %bb.l ], [ %i.cp, %bb.u ], [ %.sroa.0.0198, %bb.t ], [ %.sroa.0.0198, %bb.h ], [ %.sroa.0.0198, %bb.k ], [ %.sroa.0.0198, %bb.p ], [ %.sroa.0.0198, %bb.q ] ; 6 uses
  %.1107 = phi double [ %sqrt.i, %bb.s ], [ %.0106199, %bb.m ], [ %.0106199, %bb.r ], [ %.0106199, %bb.l ], [ %sqrt.i, %bb.u ], [ %.0106199, %bb.t ], [ %.0106199, %bb.h ], [ %.0106199, %bb.k ], [ %.0106199, %bb.p ], [ %.0106199, %bb.q ]
  %.1105 = phi double [ %i.fj, %bb.s ], [ %.0104200, %bb.m ], [ %.0104200, %bb.r ], [ %.0104200, %bb.l ], [ %i.fj, %bb.u ], [ %.0104200, %bb.t ], [ %.0104200, %bb.h ], [ %.0104200, %bb.k ], [ %.0104200, %bb.p ], [ %.0104200, %bb.q ] ; 7 uses
  %i.go = phi <2 x double> [ %i.fi, %bb.s ], [ %i.cc, %bb.m ], [ %15, %bb.r ], [ %12, %bb.l ], [ %i.fi, %bb.u ], [ %15, %bb.t ], [ %i.cc, %bb.h ], [ %11, %bb.k ], [ %13, %bb.p ], [ %14, %bb.q ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.be
  br i1 %exitcond.not, label %bb.v, label %bb.h, !llvm.loop !1076

bb.v:                                             ; preds = %_ZN10tetgenmesh11linelineintEPdS0_S0_S0_S0_S0_S0_S0_.exit.thread
  %i.gp = sext i32 %.sroa.10.1 to i64             ; 4 uses
  store i64 0, ptr %i.bd, align 8, !tbaa !100
  %i.gq = getelementptr inbounds nuw i8, ptr %.pre, i64 188
  store i32 %i.ax, ptr %i.gq, align 4, !tbaa !298
  %i.gr = fcmp oeq double %.1105, 0.000000e+00
  br i1 %i.gr, label %bb.bh, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  store ptr null, ptr %6, align 8, !tbaa !224
  %i.gs = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 0, ptr %i.gs, align 8, !tbaa !225
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  store ptr null, ptr %7, align 8, !tbaa !224
  %i.gt = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 0, ptr %i.gt, align 8, !tbaa !225
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  %i.gu = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.gv = getelementptr inbounds nuw i8, ptr %8, i64 88
  store i32 0, ptr %i.gv, align 8, !tbaa !225
  store ptr null, ptr %i.gu, align 16, !tbaa !366
  %i.gw = getelementptr inbounds nuw i8, ptr %8, i64 96
  store i32 0, ptr %i.gw, align 16, !tbaa !336
  %i.gx = getelementptr inbounds nuw i8, ptr %8, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gx, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %8, i8 0, i64 76, i1 false)
  %i.gy = getelementptr inbounds nuw i8, ptr %.pre, i64 176
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !124
  %i.ha = icmp eq i32 %i.gz, 1
  br i1 %i.ha, label %bb.x, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.w
  %i.hb = load double, ptr %i.o, align 8, !tbaa !58
  %i.hc = load double, ptr %i.t, align 8, !tbaa !58
  %i.hd = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.he = load double, ptr %i.hd, align 8, !tbaa !58 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !58
  %i.hh = fsub double %i.hg, %i.he
  %i.hi = call double @llvm.fmuladd.f64(double %.1105, double %i.hh, double %i.he)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !58
  %i.hl = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !58
  %i.hn = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.gp
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !59
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [8 x i8], ptr %.sroa.0.1, i64 %i.hp
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !220 ; 3 uses
  %i.hs = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %i.gp
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !59
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds [8 x i8], ptr %.sroa.0.1, i64 %i.hu
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !220 ; 3 uses
  %i.hx = load double, ptr %i.hr, align 8, !tbaa !58
  %i.hy = load double, ptr %i.hw, align 8, !tbaa !58
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !58 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !58
  %i.id = fsub double %i.ic, %i.ia
  %i.ie = extractelement <2 x double> %i.go, i64 0
  %i.if = call double @llvm.fmuladd.f64(double %i.ie, double %i.id, double %i.ia)
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !58
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !58
  %i.ik = insertelement <2 x double> poison, double %i.hc, i64 0
  %i.il = insertelement <2 x double> %i.ik, double %i.hm, i64 1
  %i.im = insertelement <2 x double> poison, double %i.hb, i64 0
  %i.in = insertelement <2 x double> %i.im, double %i.hk, i64 1 ; 2 uses
  %i.io = fsub <2 x double> %i.il, %i.in
  %i.ip = shufflevector <2 x double> %i.go, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.iq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ip, <2 x double> %i.io, <2 x double> %i.in)
  %i.ir = insertelement <2 x double> poison, double %i.hy, i64 0
  %i.is = insertelement <2 x double> %i.ir, double %i.ij, i64 1
  %i.it = insertelement <2 x double> poison, double %i.hx, i64 0
  %i.iu = insertelement <2 x double> %i.it, double %i.ih, i64 1 ; 2 uses
  %i.iv = fsub <2 x double> %i.is, %i.iu
  %i.iw = shufflevector <2 x double> %i.go, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ix = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iw, <2 x double> %i.iv, <2 x double> %i.iu)
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !219
  %i.ja = call noundef ptr @_ZN10tetgenmesh10memorypool5allocEv(ptr noundef nonnull align 8 dereferenceable(88) %i.iz) ; 9 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 68640
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !241 ; 2 uses
  %i.jd = icmp sgt i32 %i.jc, 0
  br i1 %i.jd, label %.lr.ph.preheader.i131, label %.preheader.i121

bb.x:                                             ; preds = %bb.w
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !219
  %i.jg = call noundef ptr @_ZN10tetgenmesh10memorypool5allocEv(ptr noundef nonnull align 8 dereferenceable(88) %i.jf) ; 9 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 68640
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !241 ; 2 uses
  %i.jj = icmp sgt i32 %i.ji, 0
  br i1 %i.jj, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.x
  %scevgep.i = getelementptr i8, ptr %i.jg, i64 24
  %i.jk = zext nneg i32 %i.ji to i64
  %i.jl = shl nuw nsw i64 %i.jk, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.jl, i1 false), !tbaa !58
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.preheader.i, %bb.x
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 68648
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !242 ; 2 uses
  %i.jo = icmp sgt i32 %i.jn, 0
  br i1 %i.jo, label %.lr.ph23.i, label %._crit_edge.i

.lr.ph23.i:                                       ; preds = %.preheader.i
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 68652
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !243
  %i.jr = sext i32 %i.jq to i64
  %i.js = shl nsw i64 %i.jr, 3
  %scevgep25.i = getelementptr i8, ptr %i.jg, i64 %i.js
  %i.jt = zext nneg i32 %i.jn to i64
  %i.ju = shl nuw nsw i64 %i.jt, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep25.i, i8 0, i64 %i.ju, i1 false), !tbaa !58
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph23.i, %.preheader.i
  %i.jv = load i32, ptr %i.x, align 4, !tbaa !244
  %i.jw = sext i32 %i.jv to i64
  %i.jx = getelementptr inbounds [8 x i8], ptr %i.jg, i64 %i.jw ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jx, i8 0, i64 16, i1 false)
  %i.jy = load ptr, ptr %i.au, align 8, !tbaa !218 ; 4 uses
  %i.jz = load i32, ptr %i.jy, align 8, !tbaa !117
  %.not.i = icmp eq i32 %i.jz, 0
  br i1 %.not.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %._crit_edge.i
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.kb = load i32, ptr %i.ka, align 8, !tbaa !125
  %.not17.i = icmp eq i32 %i.kb, 0
  br i1 %.not17.i, label %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit, label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i
  %i.kc = getelementptr i8, ptr %i.jx, i64 16
  store ptr null, ptr %i.kc, align 8, !tbaa !220
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jy, i64 44
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !143
  %.not18.i = icmp eq i32 %i.ke, 0
  br i1 %.not18.i, label %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !245
  %.not19.i = icmp eq ptr %i.kg, null
  br i1 %.not19.i, label %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.kh = getelementptr i8, ptr %i.jx, i64 24
  store ptr null, ptr %i.kh, align 8, !tbaa !220
  br label %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit

_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit:  ; preds = %bb.y, %bb.z, %bb.aa, %bb.ab
  %i.ki = load ptr, ptr %i.je, align 8, !tbaa !219
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 64
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !202
  %i.kl = trunc i64 %i.kk to i32
  %i.km = load ptr, ptr %0, align 8, !tbaa !221
  %i.kn = load i32, ptr %i.km, align 8, !tbaa !55
  %.not20.i = icmp eq i32 %i.kn, 0
  %.neg.i = sext i1 %.not20.i to i32
  %i.ko = add i32 %.neg.i, %i.kl
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 68664 ; 3 uses
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !223
  %i.kr = sext i32 %i.kq to i64
  %i.ks = getelementptr inbounds [4 x i8], ptr %i.jg, i64 %i.kr
  store i32 %i.ko, ptr %i.ks, align 4, !tbaa !59
  %i.kt = load i32, ptr %i.kp, align 8, !tbaa !223
  %i.ku = sext i32 %i.kt to i64
  %i.kv = getelementptr [4 x i8], ptr %i.jg, i64 %i.ku
  %i.kw = getelementptr i8, ptr %i.kv, i64 4
  store i32 0, ptr %i.kw, align 4, !tbaa !59
  %i.kx = load i32, ptr %i.kp, align 8, !tbaa !223
  %i.ky = sext i32 %i.kx to i64
  %i.kz = getelementptr [4 x i8], ptr %i.jg, i64 %i.ky
  %i.la = getelementptr i8, ptr %i.kz, i64 4      ; 2 uses
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !59
  %i.lc = and i32 %i.lb, 255
  %i.ld = or disjoint i32 %i.lc, 1280
  store i32 %i.ld, ptr %i.la, align 4, !tbaa !59
  %i.le = load double, ptr %i.o, align 8, !tbaa !58 ; 2 uses
  %i.lf = load double, ptr %i.t, align 8, !tbaa !58
  %i.lg = fsub double %i.lf, %i.le
  %i.lh = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.li = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.lj = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.lk = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ll = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.lm = call double @llvm.fmuladd.f64(double %.1105, double %i.lg, double %i.le) ; 2 uses
  store double %i.lm, ptr %i.jg, align 8, !tbaa !58
end_hunk_0
begin_hunk_1_@_ZN10tetgenmesh17qualitystatisticsEv:.preheader674.preheader
  %i.cb = phi i32 [ %i.bf, %bb.b ], [ %i.bq, %bb.a ]
  %i.cc = phi ptr [ %i.bz, %bb.b ], [ %i.br, %bb.a ] ; 5 uses
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = add i64 %i.cd, %i.bm
  %i.cf = inttoptr i64 %i.ce to ptr               ; 3 uses
  store ptr %i.cf, ptr %i.bd, align 8, !tbaa !204
  %i.cg = add nsw i32 %i.cb, -1                   ; 3 uses
  %i.ch = icmp eq ptr %i.cc, null
  br i1 %i.ch, label %_ZN10tetgenmesh19tetrahedrontraverseEv.exit.thread1274, label %bb.c

bb.c:                                             ; preds = %_ZN10tetgenmesh10memorypool8traverseEv.exit.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !220
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %.critedge.backedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !220
  %i.cn = icmp eq ptr %i.cm, %i.bo
  br i1 %i.cn, label %.critedge.backedge.i, label %.lr.ph.lr.ph.lr.ph

.critedge.backedge.i:                             ; preds = %bb.d, %bb.c
  %i.co = icmp eq ptr %i.bi, %i.cf
  br i1 %i.co, label %_ZN10tetgenmesh19tetrahedrontraverseEv.exit.thread1274, label %bb.a, !llvm.loop !8

_ZN10tetgenmesh19tetrahedrontraverseEv.exit.thread1274: ; preds = %.critedge.backedge.i, %_ZN10tetgenmesh10memorypool8traverseEv.exit.i
  store i32 %i.cg, ptr %i.bg, align 4, !tbaa !205
  br label %.outer._crit_edge

.lr.ph.lr.ph.lr.ph:                               ; preds = %bb.d
  store i32 %i.cg, ptr %i.bg, align 4, !tbaa !205
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 68672
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 68584 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 68664
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %.sroa.61157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.91159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.19.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.29.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.cx = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %_ZN10tetgenmesh19tetrahedrontraverseEv.exit484, %.lr.ph.lr.ph.lr.ph
  %i.cz = phi ptr [ %i.ar, %.lr.ph.lr.ph.lr.ph ], [ %i.aqg, %_ZN10tetgenmesh19tetrahedrontraverseEv.exit484 ]
  %.0335.ph.ph865 = phi double [ 0.000000e+00, %.lr.ph.lr.ph.lr.ph ], [ %.4339, %_ZN10tetgenmesh19tetrahedrontraverseEv.exit484 ] ; 5 uses
  %.0340.ph.ph864 = phi double [ 1.800000e+02, %.lr.ph.lr.ph.lr.ph ], [ %.4344, %_ZN10tetgenmesh19tetrahedrontraverseEv.exit484 ] ; 5 uses
  %.0345.ph.ph863 = phi double [ 0.000000e+00, %.lr.ph.lr.ph.lr.ph ], [ %.2347.5, %_ZN10tetgenmesh19tetrahedrontraverseEv.exit484 ] ; 6 uses
  %.0348.ph.ph862 = phi double [ 1.800000e+02, %.lr.ph.lr.ph.lr.ph ], [ %.2350.5, %_ZN10tetgenmesh19tetrahedrontraverseEv.exit484 ] ; 6 uses
  %.0355.ph.ph859 = phi double [ 0.000000e+00, %.lr.ph.lr.ph.lr.ph ], [ %.1356, %_ZN10tetgenmesh19tetrahedrontraverseEv.exit484 ] ; 6 uses
  %.0357.ph.ph858 = phi double [ 1.000000e+16, %.lr.ph.lr.ph.lr.ph ], [ %.1358, %_ZN10tetgenmesh19tetrahedrontraverseEv.exit484 ] ; 6 uses
  %.0359.ph.ph857 = phi double [ 0.000000e+00, %.lr.ph.lr.ph.lr.ph ], [ %.1360, %_ZN10tetgenmesh19tetrahedrontraverseEv.exit484 ]
  %.0361.ph.ph856 = phi double [ %i.am, %.lr.ph.lr.ph.lr.ph ], [ %.1362, %_ZN10tetgenmesh19tetrahedrontraverseEv.exit484 ]
  %.0363.ph.ph855 = phi double [ 0.000000e+00, %.lr.ph.lr.ph.lr.ph ], [ %.2365.5, %_ZN10tetgenmesh19tetrahedrontraverseEv.exit484 ]
  %.0366.ph.ph854 = phi double [ %i.am, %.lr.ph.lr.ph.lr.ph ], [ %.2368.5, %_ZN10tetgenmesh19tetrahedrontraverseEv.exit484 ]
  %.sroa.0493.0.ph.ph853 = phi ptr [ %i.cc, %.lr.ph.lr.ph.lr.ph ], [ %i.arh, %_ZN10tetgenmesh19tetrahedrontraverseEv.exit484 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10tetgenmesh19tetrahedrontraverseEv.exit455, %.lr.ph.lr.ph
  %i.da = phi ptr [ %i.cz, %.lr.ph.lr.ph ], [ %i.tg, %_ZN10tetgenmesh19tetrahedrontraverseEv.exit455 ] ; 7 uses
  %.0359.ph794 = phi double [ %.0359.ph.ph857, %.lr.ph.lr.ph ], [ %.1360, %_ZN10tetgenmesh19tetrahedrontraverseEv.exit455 ] ; 4 uses
  %.0361.ph793 = phi double [ %.0361.ph.ph856, %.lr.ph.lr.ph ], [ %.1362, %_ZN10tetgenmesh19tetrahedrontraverseEv.exit455 ] ; 4 uses
  %.0363.ph792 = phi double [ %.0363.ph.ph855, %.lr.ph.lr.ph ], [ %.2365.5, %_ZN10tetgenmesh19tetrahedrontraverseEv.exit455 ] ; 4 uses
  %.0366.ph791 = phi double [ %.0366.ph.ph854, %.lr.ph.lr.ph ], [ %.2368.5, %_ZN10tetgenmesh19tetrahedrontraverseEv.exit455 ] ; 4 uses
  %.sroa.0493.0.ph790 = phi ptr [ %.sroa.0493.0.ph.ph853, %.lr.ph.lr.ph ], [ %i.ui, %_ZN10tetgenmesh19tetrahedrontraverseEv.exit455 ] ; 3 uses
  %i.db = load ptr, ptr %i.cp, align 8, !tbaa !218
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 68
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !153
  %.not410 = icmp eq i32 %i.dd, 0
  br i1 %.not410, label %.preheader664, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.de = load i32, ptr %i.cq, align 8, !tbaa !234
  %i.df = add nsw i32 %i.ap, %i.de
  %i.dg = sext i32 %i.df to i64                   ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 40 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 84 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.da, i64 32 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 60
  %i.dn = getelementptr inbounds nuw i8, ptr %i.da, i64 52
  %i.do = getelementptr inbounds [8 x i8], ptr %.sroa.0493.0.ph790, i64 %i.dg
  %i.dp = load double, ptr %i.do, align 8, !tbaa !58
  %i.dq = fcmp oeq double %i.dp, -1.000000e+00
  br i1 %i.dq, label %.lr.ph1722.preheader, label %.preheader664

.lr.ph1722.preheader:                             ; preds = %.lr.ph.split
  %i.dr = load ptr, ptr %i.di, align 8, !tbaa !198 ; 2 uses
  br label %.lr.ph1722

.lr.ph1722:                                       ; preds = %.lr.ph1722.preheader, %_ZN10tetgenmesh19tetrahedrontraverseEv.exit423
  %.promoted.i415 = load ptr, ptr %i.dh, align 8, !tbaa !204 ; 2 uses
  %i.ds = icmp eq ptr %.promoted.i415, %i.dr
  br i1 %i.ds, label %.outer._crit_edge, label %.lr.ph.i416

.lr.ph.i416:                                      ; preds = %.lr.ph1722
  %i.dt = load i32, ptr %i.dn, align 4, !tbaa !194
  %i.du = sext i32 %i.dt to i64
  %i.dv = load ptr, ptr %i.cr, align 8
  %.promoted10.i417 = load i32, ptr %i.dj, align 4, !tbaa !205
  br label %bb.e

bb.e:                                             ; preds = %.critedge.backedge.i422, %.lr.ph.i416
  %i.dw = phi i32 [ %.promoted10.i417, %.lr.ph.i416 ], [ %i.ep, %.critedge.backedge.i422 ] ; 2 uses
  %i.dx = phi ptr [ %.promoted.i415, %.lr.ph.i416 ], [ %i.eo, %.critedge.backedge.i422 ]
  %i.dy = icmp eq i32 %i.dw, 0
  br i1 %i.dy, label %bb.f, label %_ZN10tetgenmesh10memorypool8traverseEv.exit.i418

bb.f:                                             ; preds = %bb.e
  %i.dz = load ptr, ptr %i.dk, align 8, !tbaa !203
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !111 ; 2 uses
  store ptr %i.ea, ptr %i.dk, align 8, !tbaa !203
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = ptrtoint ptr %i.eb to i64               ; 2 uses
  %i.ed = load i32, ptr %i.dl, align 8, !tbaa !192
  %i.ee = sext i32 %i.ed to i64                   ; 2 uses
  %i.ef = add i64 %i.ee, %i.ec
  %i.eg = urem i64 %i.ec, %i.ee
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = inttoptr i64 %i.eh to ptr
  %i.ej = load i32, ptr %i.dm, align 4, !tbaa !195
  br label %_ZN10tetgenmesh10memorypool8traverseEv.exit.i418

_ZN10tetgenmesh10memorypool8traverseEv.exit.i418: ; preds = %bb.f, %bb.e
  %i.ek = phi i32 [ %i.ej, %bb.f ], [ %i.dw, %bb.e ]
  %i.el = phi ptr [ %i.ei, %bb.f ], [ %i.dx, %bb.e ] ; 6 uses
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = add i64 %i.em, %i.du
  %i.eo = inttoptr i64 %i.en to ptr               ; 3 uses
  store ptr %i.eo, ptr %i.dh, align 8, !tbaa !204
  %i.ep = add nsw i32 %i.ek, -1                   ; 3 uses
  %i.eq = icmp eq ptr %i.el, null
  br i1 %i.eq, label %_ZN10tetgenmesh19tetrahedrontraverseEv.exit423.thread1279, label %bb.g

bb.g:                                             ; preds = %_ZN10tetgenmesh10memorypool8traverseEv.exit.i418
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !220
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %.critedge.backedge.i422, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.eu = getelementptr inbounds nuw i8, ptr %i.el, i64 56
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !220
  %i.ew = icmp eq ptr %i.ev, %i.dv
  br i1 %i.ew, label %.critedge.backedge.i422, label %_ZN10tetgenmesh19tetrahedrontraverseEv.exit423

.critedge.backedge.i422:                          ; preds = %bb.h, %bb.g
  %i.ex = icmp eq ptr %i.dr, %i.eo
  br i1 %i.ex, label %_ZN10tetgenmesh19tetrahedrontraverseEv.exit423.thread1279, label %bb.e, !llvm.loop !8

_ZN10tetgenmesh19tetrahedrontraverseEv.exit423.thread1279: ; preds = %.critedge.backedge.i422, %_ZN10tetgenmesh10memorypool8traverseEv.exit.i418
  store i32 %i.ep, ptr %i.dj, align 4, !tbaa !205
  br label %.outer._crit_edge

_ZN10tetgenmesh19tetrahedrontraverseEv.exit423:   ; preds = %bb.h
  store i32 %i.ep, ptr %i.dj, align 4, !tbaa !205
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.el, i64 %i.dg
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !58
  %i.fa = fcmp oeq double %i.ez, -1.000000e+00
  br i1 %i.fa, label %.lr.ph1722, label %.preheader664, !llvm.loop !1401

.preheader664:                                    ; preds = %_ZN10tetgenmesh19tetrahedrontraverseEv.exit423, %.lr.ph.split, %.lr.ph
  %.sroa.0493.0.lcssa675.split = phi ptr [ %.sroa.0493.0.ph790, %.lr.ph ], [ %.sroa.0493.0.ph790, %.lr.ph.split ], [ %i.el, %_ZN10tetgenmesh19tetrahedrontraverseEv.exit423 ] ; 9 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0493.0.lcssa675.split, i64 32
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !220 ; 9 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0493.0.lcssa675.split, i64 40
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !220 ; 9 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0493.0.lcssa675.split, i64 48
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !220 ; 10 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0493.0.lcssa675.split, i64 56
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !220 ; 8 uses
  %i.fj = load double, ptr %i.fe, align 8, !tbaa !58
  %i.fk = load double, ptr %i.fi, align 8, !tbaa !58 ; 3 uses
  %i.fl = load double, ptr %i.fc, align 8, !tbaa !58
  %i.fm = load double, ptr %i.fg, align 8, !tbaa !58
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fv = fsub double %i.fj, %i.fk
  %i.fw = fsub double %i.fl, %i.fk
  %i.fx = fsub double %i.fm, %i.fk
  %i.fy = load <2 x double>, ptr %i.fn, align 8, !tbaa !58 ; 2 uses
  %i.fz = load <2 x double>, ptr %i.fo, align 8, !tbaa !58 ; 4 uses
  %i.ga = load <2 x double>, ptr %i.fp, align 8, !tbaa !58 ; 2 uses
  %i.gb = load <2 x double>, ptr %i.fq, align 8, !tbaa !58 ; 3 uses
  %i.gc = tail call noundef double @_ZN10tetgenmesh11tetprismvolEPdS0_S0_S0_(ptr nonnull align 8 poison, ptr noundef nonnull %i.fc, ptr noundef nonnull %i.fe, ptr noundef nonnull %i.fg, ptr noundef nonnull %i.fi) ; 0 uses
  %i.gd = load double, ptr %i.ft, align 8, !tbaa !58 ; 3 uses
  %i.ge = load double, ptr %i.fr, align 8, !tbaa !58 ; 3 uses
  %i.gf = load double, ptr %i.fu, align 8, !tbaa !58 ; 2 uses
  %i.gg = load <2 x double>, ptr %i.fc, align 8, !tbaa !58 ; 5 uses
  %i.gh = load double, ptr %i.fo, align 8, !tbaa !58 ; 2 uses
  %i.gi = load double, ptr %i.fi, align 8, !tbaa !58 ; 2 uses
  %i.gj = load double, ptr %i.fs, align 8, !tbaa !58 ; 2 uses
  %i.gk = load <2 x double>, ptr %i.fe, align 8, !tbaa !58 ; 5 uses
  %i.gl = shufflevector <2 x double> %i.gg, <2 x double> %i.gk, <2 x i32> <i32 0, i32 2>
  %i.gm = insertelement <2 x double> poison, double %i.gi, i64 0
  %i.gn = shufflevector <2 x double> %i.gm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.go = fsub <2 x double> %i.gl, %i.gn          ; 4 uses
  %i.gp = shufflevector <2 x double> %i.gg, <2 x double> %i.gk, <2 x i32> <i32 1, i32 3>
  %i.gq = insertelement <2 x double> poison, double %i.gh, i64 0
  %i.gr = shufflevector <2 x double> %i.gq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gs = fsub <2 x double> %i.gp, %i.gr          ; 4 uses
  %i.gt = insertelement <2 x double> poison, double %i.gd, i64 0
  %i.gu = insertelement <2 x double> %i.gt, double %i.ge, i64 1
  %i.gv = insertelement <2 x double> poison, double %i.gj, i64 0
  %i.gw = shufflevector <2 x double> %i.gv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gx = fsub <2 x double> %i.gu, %i.gw          ; 4 uses
  %i.gy = load <2 x double>, ptr %i.fg, align 8, !tbaa !58 ; 4 uses
  %i.gz = shufflevector <2 x double> %i.gg, <2 x double> %i.gy, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.ha = shufflevector <2 x double> %i.gk, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.hb = shufflevector <3 x double> %i.gz, <3 x double> %i.ha, <4 x i32> <i32 0, i32 1, i32 3, i32 1>
  %1 = shufflevector <2 x double> %i.gy, <2 x double> %i.gk, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %2 = shufflevector <2 x double> %i.gg, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %3 = shufflevector <4 x double> %1, <4 x double> %2, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %4 = insertelement <4 x double> %3, double %i.gi, i64 3
  %i.hc = fsub <4 x double> %i.hb, %4             ; 3 uses
  %i.hd = shufflevector <2 x double> %i.gg, <2 x double> %i.gy, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.he = shufflevector <3 x double> %i.hd, <3 x double> %i.ha, <4 x i32> <i32 0, i32 1, i32 4, i32 1>
  %5 = shufflevector <2 x double> %i.gy, <2 x double> %i.gk, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %6 = shufflevector <4 x double> %5, <4 x double> %2, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %7 = insertelement <4 x double> %6, double %i.gh, i64 3
  %i.hf = fsub <4 x double> %i.he, %7             ; 3 uses
  %i.hg = insertelement <4 x double> poison, double %i.gd, i64 0
  %i.hh = insertelement <4 x double> %i.hg, double %i.gf, i64 1
  %i.hi = insertelement <4 x double> %i.hh, double %i.ge, i64 2
  %i.hj = shufflevector <4 x double> %i.hi, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.hk = insertelement <4 x double> poison, double %i.gf, i64 0
  %i.hl = insertelement <4 x double> %i.hk, double %i.ge, i64 1
  %i.hm = insertelement <4 x double> %i.hl, double %i.gd, i64 2
  %i.hn = insertelement <4 x double> %i.hm, double %i.gj, i64 3
  %i.ho = fsub <4 x double> %i.hj, %i.hn          ; 3 uses
  %i.hp = fmul <2 x double> %i.gs, %i.gs
  %i.hq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.go, <2 x double> %i.go, <2 x double> %i.hp)
  %i.hr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gx, <2 x double> %i.gx, <2 x double> %i.hq) ; 11 uses
  %i.hs = fmul <4 x double> %i.hf, %i.hf
  %i.ht = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.hc, <4 x double> %i.hc, <4 x double> %i.hs)
  %i.hu = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ho, <4 x double> %i.ho, <4 x double> %i.ht) ; 20 uses
  %i.hv = extractelement <2 x double> %i.hr, i64 0 ; 4 uses
  %i.hw = fcmp ogt double %i.hv, %.0363.ph792
  %.2365 = select i1 %i.hw, double %i.hv, double %.0363.ph792 ; 2 uses
  %i.hx = fcmp olt double %i.hv, %.0366.ph791
  %.2368 = select i1 %i.hx, double %i.hv, double %.0366.ph791 ; 2 uses
  %i.hy = extractelement <2 x double> %i.hr, i64 1 ; 4 uses
  %i.hz = fcmp ogt double %i.hy, %.2365
  %.2365.1 = select i1 %i.hz, double %i.hy, double %.2365 ; 2 uses
  %i.ia = fcmp olt double %i.hy, %.2368
  %.2368.1 = select i1 %i.ia, double %i.hy, double %.2368 ; 2 uses
  %i.ib = extractelement <4 x double> %i.hu, i64 3 ; 5 uses
  %i.ic = fcmp ogt double %i.ib, %.2365.1
  %.2365.2 = select i1 %i.ic, double %i.ib, double %.2365.1 ; 2 uses
  %i.id = fcmp olt double %i.ib, %.2368.1
  %.2368.2 = select i1 %i.id, double %i.ib, double %.2368.1 ; 2 uses
  %i.ie = extractelement <4 x double> %i.hu, i64 2 ; 4 uses
  %i.if = fcmp ogt double %i.ie, %.2365.2
  %.2365.3 = select i1 %i.if, double %i.ie, double %.2365.2 ; 2 uses
  %i.ig = fcmp olt double %i.ie, %.2368.2
  %.2368.3 = select i1 %i.ig, double %i.ie, double %.2368.2 ; 2 uses
  %i.ih = extractelement <4 x double> %i.hu, i64 1 ; 4 uses
  %i.ii = fcmp ogt double %i.ih, %.2365.3
  %.2365.4 = select i1 %i.ii, double %i.ih, double %.2365.3 ; 2 uses
  %i.ij = fcmp olt double %i.ih, %.2368.3
  %.2368.4 = select i1 %i.ij, double %i.ih, double %.2368.3 ; 2 uses
  %i.ik = extractelement <2 x double> %i.go, i64 0
  store double %i.ik, ptr %i.d, align 16, !tbaa !58
  %i.il = extractelement <2 x double> %i.gs, i64 0
  store double %i.il, ptr %.sroa.61157.0..sroa_idx, align 8, !tbaa !58
  %i.im = extractelement <2 x double> %i.gx, i64 0
  store double %i.im, ptr %.sroa.91159.0..sroa_idx, align 16, !tbaa !58
  %i.in = shufflevector <2 x double> %i.go, <2 x double> %i.gs, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.in, ptr %i.cv, align 16, !tbaa !58
  %i.io = extractelement <2 x double> %i.gx, i64 1
  store double %i.io, ptr %.sroa.19.24..sroa_idx, align 16, !tbaa !58
  %i.ip = shufflevector <4 x double> %i.hc, <4 x double> %i.hf, <2 x i32> <i32 3, i32 7>
  store <2 x double> %i.ip, ptr %i.cw, align 16, !tbaa !58
  %i.iq = extractelement <4 x double> %i.ho, i64 3
  store double %i.iq, ptr %.sroa.29.48..sroa_idx, align 16, !tbaa !58
  %i.ir = extractelement <4 x double> %i.hu, i64 0 ; 4 uses
  %i.is = fcmp ogt double %i.ir, %.2365.4
  %.2365.5 = select i1 %i.is, double %i.ir, double %.2365.4 ; 6 uses
  %i.it = fcmp olt double %i.ir, %.2368.4
  %.2368.5 = select i1 %i.it, double %i.ir, double %.2368.4 ; 6 uses
  %i.iu = shufflevector <2 x double> %i.gb, <2 x double> %i.fy, <2 x i32> <i32 0, i32 2>
  %i.iv = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iw = fsub <2 x double> %i.iu, %i.iv          ; 2 uses
  %i.ix = shufflevector <2 x double> %i.ga, <2 x double> %i.fy, <2 x i32> <i32 0, i32 3>
  %i.iy = fsub <2 x double> %i.ix, %i.fz          ; 3 uses
  %i.iz = fsub <2 x double> %i.gb, %i.fz
  %i.ja = shufflevector <2 x double> %i.iz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.jb = shufflevector <2 x double> %i.ga, <2 x double> %i.gb, <2 x i32> <i32 1, i32 3>
  %i.jc = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jd = fsub <2 x double> %i.jb, %i.jc          ; 2 uses
  %i.je = fneg <2 x double> %i.iw
  %i.jf = fmul <2 x double> %i.jd, %i.je
  %i.jg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ja, <2 x double> %i.iy, <2 x double> %i.jf) ; 2 uses
  %i.jh = insertelement <2 x double> poison, double %i.fw, i64 0
  %i.ji = fneg <2 x double> %i.iy
  %i.jj = shufflevector <2 x double> %i.jh, <2 x double> %i.ji, <2 x i32> <i32 0, i32 2>
  %i.jk = shufflevector <2 x double> %i.jg, <2 x double> %i.iy, <2 x i32> <i32 1, i32 3>
  %i.jl = fmul <2 x double> %i.jj, %i.jk
  %i.jm = insertelement <2 x double> %i.iw, double %i.fv, i64 0
  %i.jn = shufflevector <2 x double> %i.jg, <2 x double> %i.jd, <2 x i32> <i32 0, i32 2>
  %i.jo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jm, <2 x double> %i.jn, <2 x double> %i.jl) ; 2 uses
  %i.jp = extractelement <2 x double> %i.jo, i64 0
  %i.jq = extractelement <2 x double> %i.jo, i64 1
  %i.jr = tail call noundef double @llvm.fmuladd.f64(double %i.fx, double %i.jq, double %i.jp)
  %i.js = fdiv double %i.jr, 6.000000e+00         ; 7 uses
  %i.jt = fcmp olt double %i.js, %.0361.ph793
  %.1362 = select i1 %i.jt, double %i.js, double %.0361.ph793 ; 6 uses
  %i.ju = fcmp ogt double %i.js, %.0359.ph794
  %.1360 = select i1 %i.ju, double %i.js, double %.0359.ph794 ; 6 uses
  %i.jv = call noundef zeroext i1 @_ZN10tetgenmesh8lu_decmpEPA4_diPiPdi(ptr nonnull align 8 poison, ptr noundef nonnull %i.d, i32 noundef 3, ptr noundef nonnull %i.k, ptr noundef nonnull %i.f, i32 noundef 0)
  br i1 %i.jv, label %._crit_edge76.i433.2, label %bb.i

._crit_edge76.i433.2:                             ; preds = %.preheader664
  %i.jw = shufflevector <2 x double> %i.hr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.jx = fcmp olt <2 x double> %i.hr, %i.jw
  %i.jy = shufflevector <2 x double> %i.hr, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jz = shufflevector <2 x double> %i.hr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ka = select <2 x i1> %i.jx, <2 x double> %i.jy, <2 x double> %i.jz ; 3 uses
  %i.kb = shufflevector <2 x double> %i.ka, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.kc = shufflevector <4 x double> %i.kb, <4 x double> %i.hu, <2 x i32> <i32 0, i32 7> ; 2 uses
  %i.kd = shufflevector <2 x double> %i.kc, <2 x double> %i.ka, <2 x i32> <i32 1, i32 3>
  %i.ke = fcmp olt <2 x double> %i.kc, %i.kd
  %i.kf = shufflevector <4 x double> %i.hu, <4 x double> poison, <2 x i32> <i32 3, i32 3>
  %i.kg = select <2 x i1> %i.ke, <2 x double> %i.kf, <2 x double> %i.ka ; 3 uses
  %i.kh = shufflevector <2 x double> %i.kg, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ki = shufflevector <4 x double> %i.kh, <4 x double> %i.hu, <2 x i32> <i32 0, i32 6> ; 2 uses
  %i.kj = shufflevector <2 x double> %i.ki, <2 x double> %i.kg, <2 x i32> <i32 1, i32 3>
  %i.kk = fcmp olt <2 x double> %i.ki, %i.kj
  %i.kl = shufflevector <4 x double> %i.hu, <4 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.km = select <2 x i1> %i.kk, <2 x double> %i.kl, <2 x double> %i.kg ; 3 uses
  %i.kn = shufflevector <2 x double> %i.km, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ko = shufflevector <4 x double> %i.kn, <4 x double> %i.hu, <2 x i32> <i32 0, i32 5> ; 2 uses
  %i.kp = shufflevector <2 x double> %i.ko, <2 x double> %i.km, <2 x i32> <i32 1, i32 3>
  %i.kq = fcmp olt <2 x double> %i.ko, %i.kp
  %i.kr = shufflevector <4 x double> %i.hu, <4 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ks = select <2 x i1> %i.kq, <2 x double> %i.kr, <2 x double> %i.km ; 3 uses
  %i.kt = shufflevector <2 x double> %i.ks, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ku = shufflevector <4 x double> %i.kt, <4 x double> %i.hu, <2 x i32> <i32 0, i32 4> ; 2 uses
  %i.kv = shufflevector <2 x double> %i.ku, <2 x double> %i.ks, <2 x i32> <i32 1, i32 3>
  %i.kw = fcmp olt <2 x double> %i.ku, %i.kv
  %i.kx = shufflevector <4 x double> %i.hu, <4 x double> poison, <2 x i32> zeroinitializer
  %i.ky = select <2 x i1> %i.kw, <2 x double> %i.kx, <2 x double> %i.ks
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.e, i8 0, i64 24, i1 false), !tbaa !58
  store double 1.000000e+00, ptr %i.e, align 16, !tbaa !58
  %i.kz = load i32, ptr %i.k, align 16, !tbaa !59
  %i.la = sext i32 %i.kz to i64                   ; 3 uses
  %i.lb = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.la ; 4 uses
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !58
  %i.ld = load i32, ptr %i.cx, align 4, !tbaa !59
  %i.le = sext i32 %i.ld to i64                   ; 4 uses
  %i.lf = getelementptr inbounds [32 x i8], ptr %i.d, i64 %i.le
  %i.lg = load double, ptr %i.lf, align 16, !tbaa !58
  %i.lh = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.le ; 4 uses
  %i.li = load double, ptr %i.lh, align 8, !tbaa !58
  %i.lj = load i32, ptr %i.cy, align 8, !tbaa !59
  %i.lk = sext i32 %i.lj to i64                   ; 3 uses
  %i.ll = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.lk ; 4 uses
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !58
  %i.ln = getelementptr inbounds [32 x i8], ptr %i.d, i64 %i.lk ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !58
  %i.lq = load double, ptr %i.ln, align 16, !tbaa !58
  %i.lr = insertelement <2 x double> poison, double %i.lg, i64 0
  %i.ls = insertelement <2 x double> %i.lr, double %i.lq, i64 1
  %i.lt = insertelement <2 x double> poison, double %i.lc, i64 0 ; 2 uses
  %i.lu = shufflevector <2 x double> %i.lt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ls, <2 x double> %i.lu, <2 x double> zeroinitializer) ; 2 uses
  %i.lw = extractelement <2 x double> %i.lv, i64 0
  %i.lx = fsub double %i.li, %i.lw                ; 2 uses
  %i.ly = extractelement <2 x double> %i.lv, i64 1
  %i.lz = tail call double @llvm.fmuladd.f64(double %i.lp, double %i.lx, double %i.ly)
  %i.ma = fsub double %i.lm, %i.lz
  %i.mb = getelementptr inbounds [32 x i8], ptr %i.d, i64 %i.lk ; 5 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  %i.md = getelementptr inbounds [32 x i8], ptr %i.d, i64 %i.le
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  %i.mf = load double, ptr %i.me, align 16, !tbaa !58
  %i.mg = getelementptr inbounds [32 x i8], ptr %i.d, i64 %i.le ; 7 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.mi = load double, ptr %i.mh, align 8, !tbaa !58 ; 3 uses
  %i.mj = getelementptr inbounds [32 x i8], ptr %i.d, i64 %i.la
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  %i.ml = load double, ptr %i.mk, align 16, !tbaa !58
  %i.mm = getelementptr inbounds [32 x i8], ptr %i.d, i64 %i.la ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.e, i8 0, i64 24, i1 false), !tbaa !58
  store double 1.000000e+00, ptr %i.ct, align 8, !tbaa !58
  %i.mn = load double, ptr %i.lb, align 8, !tbaa !58
  %i.mo = load double, ptr %i.mg, align 16, !tbaa !58
  %i.mp = load double, ptr %i.lh, align 8, !tbaa !58
  %i.mq = load double, ptr %i.ll, align 8, !tbaa !58
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  %i.ms = load double, ptr %i.mr, align 16, !tbaa !58
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.e, i8 0, i64 16, i1 false), !tbaa !58
  store double 1.000000e+00, ptr %i.cu, align 16, !tbaa !58
  %i.mu = load double, ptr %i.lb, align 8, !tbaa !58
  %i.mv = load double, ptr %i.mg, align 16, !tbaa !58
  %i.mw = load double, ptr %i.lh, align 8, !tbaa !58
  %i.mx = load double, ptr %i.ll, align 8, !tbaa !58
  %i.my = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.mz = load double, ptr %i.my, align 8, !tbaa !58
  %i.na = load double, ptr %i.mb, align 16, !tbaa !58
  %i.nb = load <2 x double>, ptr %i.mb, align 16, !tbaa !58 ; 2 uses
  %i.nc = insertelement <2 x double> poison, double %i.mo, i64 0
  %i.nd = insertelement <2 x double> %i.nc, double %i.mv, i64 1
  %i.ne = insertelement <2 x double> poison, double %i.mn, i64 0
  %i.nf = insertelement <2 x double> %i.ne, double %i.mu, i64 1 ; 3 uses
  %i.ng = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nd, <2 x double> %i.nf, <2 x double> zeroinitializer)
  %i.nh = insertelement <2 x double> poison, double %i.mp, i64 0
  %i.ni = insertelement <2 x double> %i.nh, double %i.mw, i64 1
  %i.nj = fsub <2 x double> %i.ni, %i.ng          ; 2 uses
  %i.nk = insertelement <2 x double> %i.nb, double %i.na, i64 1
  %i.nl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nk, <2 x double> %i.nf, <2 x double> zeroinitializer)
  %i.nm = shufflevector <2 x double> %i.nb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.nn = insertelement <2 x double> %i.nm, double %i.mz, i64 1
  %i.no = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nn, <2 x double> %i.nj, <2 x double> %i.nl)
  %i.np = insertelement <2 x double> poison, double %i.mq, i64 0
  %i.nq = insertelement <2 x double> %i.np, double %i.mx, i64 1
  %i.nr = fsub <2 x double> %i.nq, %i.no
  %i.ns = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  %i.nt = load double, ptr %i.ns, align 16, !tbaa !58
end_hunk_1
