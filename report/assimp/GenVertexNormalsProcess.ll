Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/GenVertexNormalsProcess?download=true
inline.NumInlined: 219
inline.NumDeleted: 155
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6Assimp23GenVertexNormalsProcess20GenMeshVertexNormalsEP6aiMeshj:bb.a
  %.sroa.0201.0 = phi <2 x float> [ %i.cs, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %i.cc, %bb.i ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.cu = load ptr, ptr %i.b, align 8
  %i.cv = load ptr, ptr %i.aq, align 8
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [12 x i8], ptr %i.cu, i64 %i.cy ; 2 uses
  store <2 x float> %.sroa.0201.0, ptr %i.cz, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store float %.sroa.8.0, ptr %.sroa.4.0..sroa_idx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.da = load i32, ptr %i.ac, align 8
  %i.db = zext i32 %i.da to i64
  %i.dc = icmp samesign ult i64 %indvars.iv.next, %i.db
  br i1 %i.dc, label %.lr.ph, label %.loopexit233, !llvm.loop !6

.loopexit233:                                     ; preds = %.lr.ph, %bb.h, %.preheader232
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1 ; 2 uses
  %i.dd = load i32, ptr %i.t, align 8
  %i.de = zext i32 %i.dd to i64
  %i.df = icmp samesign ult i64 %indvars.iv.next282, %i.de
  br i1 %i.df, label %bb.g, label %._crit_edge, !llvm.loop !7

bb.j:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8
  %i.dg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z18GetGenericPropertyIPN6Assimp21SharedPostProcessInfo4BaseEERKT_RKSt3mapIjS4_St4lessIjESaISt4pairIKjS4_EEEPKcS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull @.str.6, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.j
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.not.i.not = icmp eq ptr %i.dh, null
  br i1 %.not.i.not, label %.thread, label %_ZNK6Assimp21SharedPostProcessInfo11GetPropertyISt6vectorISt4pairINS_11SpatialSortEfESaIS5_EEEEbPKcRPT_.exit

_ZNK6Assimp21SharedPostProcessInfo11GetPropertyISt6vectorISt4pairINS_11SpatialSortEfESaIS5_EEEEbPKcRPT_.exit: ; preds = %.noexc
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8            ; 2 uses
  %.not127 = icmp eq ptr %i.dj, null
  br i1 %.not127, label %.thread, label %bb.k

bb.k:                                             ; preds = %_ZNK6Assimp21SharedPostProcessInfo11GetPropertyISt6vectorISt4pairINS_11SpatialSortEfESaIS5_EEEEbPKcRPT_.exit
  %i.dk = zext i32 %2 to i64
  %i.dl = load ptr, ptr %i.dj, align 8
  %i.dm = getelementptr inbounds nuw [64 x i8], ptr %i.dl, i64 %i.dk ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  %i.do = load float, ptr %i.dn, align 8
  br label %bb.n

.thread:                                          ; preds = %.noexc, %_ZNK6Assimp21SharedPostProcessInfo11GetPropertyISt6vectorISt4pairINS_11SpatialSortEfESaIS5_EEEEbPKcRPT_.exit, %._crit_edge
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = load i32, ptr %i.j, align 4
  invoke void @_ZN6Assimp11SpatialSort4FillEPK10aiVector3tIfEjjb(ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef %i.dq, i32 noundef %i.dr, i32 noundef 12, i1 noundef zeroext true)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.thread
  %i.ds = invoke noundef float @_ZN6Assimp22ComputePositionEpsilonEPK6aiMesh(ptr noundef nonnull %1)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l, %.thread
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.n:                                             ; preds = %bb.k, %bb.l
  %.2112 = phi ptr [ %i.dm, %bb.k ], [ %3, %bb.l ] ; 2 uses
  %.2109 = phi float [ %i.do, %bb.k ], [ %i.ds, %bb.l ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.du = load i32, ptr %i.j, align 4             ; 2 uses
  %i.dv = zext i32 %i.du to i64
  %i.dw = mul nuw nsw i64 %i.dv, 12               ; 2 uses
  %i.dx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dw) #22
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.o:                                             ; preds = %bb.n
  %i.dy = icmp eq i32 %i.du, 0
  br i1 %i.dy, label %.loopexit231, label %.loopexit231.loopexit

.loopexit231.loopexit:                            ; preds = %bb.o
  %i.dz = add nsw i64 %i.dw, -12                  ; 2 uses
  %i.ea = urem i64 %i.dz, 12
  %i.eb = sub nuw nsw i64 %i.dz, %i.ea
  %i.ec = add nsw i64 %i.eb, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dx, i8 0, i64 %i.ec, i1 false)
  br label %.loopexit231

.loopexit231:                                     ; preds = %.loopexit231.loopexit, %bb.o
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ee = load float, ptr %i.ed, align 8          ; 2 uses
  %i.ef = fcmp ult float %i.ee, f0x40437A14
  br i1 %i.ef, label %bb.w, label %bb.p

bb.p:                                             ; preds = %.loopexit231
  %i.eg = load i32, ptr %i.j, align 4             ; 2 uses
  %.not.i.i = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eh = zext i32 %i.eg to i64
  %i.ei = add nuw nsw i64 %i.eh, 63               ; 2 uses
  %i.ej = lshr i64 %i.ei, 3
  %i.ek = and i64 %i.ej, 1073741816
  %i.el = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ek) #22
          to label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %bb.q
  %i.em = lshr i64 %i.ei, 6                       ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.em, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.el, i8 0, i64 %.idx.i, i1 false)
  %.pre = load i32, ptr %i.j, align 4
  %i.en = icmp eq i32 %.pre, 0
  br i1 %i.en, label %.loopexit, label %.lr.ph252

.lr.ph252:                                        ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.r

.loopexit:                                        ; preds = %.loopexit230, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %.idx332 = shl nuw nsw i64 %i.em, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef %.idx332) #21
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

bb.r:                                             ; preds = %.lr.ph252, %.loopexit230
  %indvars.iv291 = phi i64 [ 0, %.lr.ph252 ], [ %indvars.iv.next292, %.loopexit230 ] ; 4 uses
  %i.eq = lshr i64 %indvars.iv291, 6
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.eq
  %i.es = and i64 %indvars.iv291, 63
  %i.et = shl nuw i64 1, %i.es
  %i.eu = load i64, ptr %i.er, align 8
  %i.ev = and i64 %i.eu, %i.et
  %.not229 = icmp eq i64 %i.ev, 0
  br i1 %.not229, label %bb.s, label %.loopexit230

bb.s:                                             ; preds = %bb.r
  %i.ew = load ptr, ptr %i.eo, align 8
  %i.ex = getelementptr inbounds nuw [12 x i8], ptr %i.ew, i64 %indvars.iv291
  invoke void @_ZNK6Assimp11SpatialSort13FindPositionsERK10aiVector3tIfEfRSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(49) %.2112, ptr noundef nonnull align 4 dereferenceable(12) %i.ex, float noundef %.2109, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %.preheader unwind label %.thread219

.preheader:                                       ; preds = %bb.s
  %i.ey = load ptr, ptr %i.ep, align 8            ; 2 uses
  %i.ez = load ptr, ptr %4, align 8               ; 4 uses
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = ashr exact i64 %i.fc, 2                 ; 2 uses
  %.not271 = icmp eq ptr %i.ey, %i.ez             ; 2 uses
  br i1 %.not271, label %._crit_edge246, label %.lr.ph245

.lr.ph245:                                        ; preds = %.preheader
  %i.fe = load ptr, ptr %i.b, align 8
  br label %bb.t

._crit_edge246:                                   ; preds = %bb.v, %.preheader
  %.sroa.14182.0.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %.sroa.14182.1, %bb.v ] ; 4 uses
  %i.ff = phi <2 x float> [ zeroinitializer, %.preheader ], [ %i.gd, %bb.v ] ; 5 uses
  %foldExtExtBinop335 = fmul <2 x float> %i.ff, %i.ff
  %i.fg = extractelement <2 x float> %foldExtExtBinop335, i64 1
  %i.fh = extractelement <2 x float> %i.ff, i64 0 ; 2 uses
  %i.fi = call float @llvm.fmuladd.f32(float %i.fh, float %i.fh, float %i.fg)
  %i.fj = call noundef float @llvm.fmuladd.f32(float %.sroa.14182.0.lcssa, float %.sroa.14182.0.lcssa, float %i.fi) ; 2 uses
  %i.fk = fcmp ogt float %i.fj, 0.000000e+00
  br i1 %i.fk, label %_ZN10aiVector3tIfEdVEf.exit.i149, label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit151

_ZN10aiVector3tIfEdVEf.exit.i149:                 ; preds = %._crit_edge246
  %sqrt.i.i150 = call noundef float @llvm.sqrt.f32(float %i.fj)
  %i.fl = fdiv float 1.000000e+00, %sqrt.i.i150   ; 2 uses
  %i.fm = insertelement <2 x float> poison, float %i.fl, i64 0
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fo = fmul <2 x float> %i.ff, %i.fn
  %i.fp = fmul float %.sroa.14182.0.lcssa, %i.fl
  br label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit151

_ZN10aiVector3tIfE13NormalizeSafeEv.exit151:      ; preds = %._crit_edge246, %_ZN10aiVector3tIfEdVEf.exit.i149
  %.sroa.14182.2 = phi float [ %i.fp, %_ZN10aiVector3tIfEdVEf.exit.i149 ], [ %.sroa.14182.0.lcssa, %._crit_edge246 ]
  %i.fq = phi <2 x float> [ %i.fo, %_ZN10aiVector3tIfEdVEf.exit.i149 ], [ %i.ff, %._crit_edge246 ]
  br i1 %.not271, label %.loopexit230, label %.lr.ph250

.thread219:                                       ; preds = %bb.s
  %i.fr = landingpad { ptr, i32 }
          cleanup
  %.idx = shl nuw nsw i64 %i.em, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef %.idx) #21
  br label %.body

bb.t:                                             ; preds = %.lr.ph245, %bb.v
  %indvars.iv284 = phi i64 [ 0, %.lr.ph245 ], [ %indvars.iv.next285, %bb.v ] ; 2 uses
  %.sroa.14182.0241 = phi float [ 0.000000e+00, %.lr.ph245 ], [ %.sroa.14182.1, %bb.v ] ; 2 uses
  %i.fs = phi <2 x float> [ zeroinitializer, %.lr.ph245 ], [ %i.gd, %bb.v ] ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv284
  %i.fu = load i32, ptr %i.ft, align 4
  %i.fv = zext i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [12 x i8], ptr %i.fe, i64 %i.fv ; 3 uses
  %i.fx = load float, ptr %i.fw, align 4          ; 2 uses
  %i.fy = fcmp ord float %i.fx, 0.000000e+00
  br i1 %i.fy, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %5 = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %6 = load float, ptr %5, align 4
  %7 = insertelement <2 x float> poison, float %i.fx, i64 0
  %8 = insertelement <2 x float> %7, float %6, i64 1
  %i.fz = fadd <2 x float> %i.fs, %8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.gb = load float, ptr %i.ga, align 4
  %i.gc = fadd float %.sroa.14182.0241, %i.gb
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.14182.1 = phi float [ %i.gc, %bb.u ], [ %.sroa.14182.0241, %bb.t ] ; 2 uses
  %i.gd = phi <2 x float> [ %i.fz, %bb.u ], [ %i.fs, %bb.t ] ; 2 uses
  %indvars.iv.next285 = add i64 %indvars.iv284, 1 ; 2 uses
  %i.ge = and i64 %indvars.iv.next285, 4294967295
  %i.gf = icmp ugt i64 %i.fd, %i.ge
  br i1 %i.gf, label %bb.t, label %._crit_edge246, !llvm.loop !8

.lr.ph250:                                        ; preds = %_ZN10aiVector3tIfE13NormalizeSafeEv.exit151, %.lr.ph250
  %indvars.iv287 = phi i64 [ %indvars.iv.next288, %.lr.ph250 ], [ 0, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit151 ] ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv287
  %i.gh = load i32, ptr %i.gg, align 4            ; 2 uses
  %i.gi = zext i32 %i.gh to i64                   ; 2 uses
  %i.gj = getelementptr inbounds nuw [12 x i8], ptr %i.dx, i64 %i.gi ; 2 uses
  store <2 x float> %i.fq, ptr %i.gj, align 4
  %.sroa.14182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  store float %.sroa.14182.2, ptr %.sroa.14182.0..sroa_idx, align 4
  %i.gk = lshr i32 %i.gh, 6
  %.zext225 = zext nneg i32 %i.gk to i64
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %.zext225 ; 2 uses
  %i.gm = and i64 %i.gi, 63
  %i.gn = shl nuw i64 1, %i.gm
  %i.go = load i64, ptr %i.gl, align 8
  %i.gp = or i64 %i.go, %i.gn
  store i64 %i.gp, ptr %i.gl, align 8
  %indvars.iv.next288 = add i64 %indvars.iv287, 1 ; 2 uses
  %i.gq = and i64 %indvars.iv.next288, 4294967295
  %i.gr = icmp samesign ugt i64 %i.fd, %i.gq
  br i1 %i.gr, label %.lr.ph250, label %.loopexit230, !llvm.loop !9

.loopexit230:                                     ; preds = %.lr.ph250, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit151, %bb.r
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %i.gs = load i32, ptr %i.j, align 4
  %i.gt = zext i32 %i.gs to i64
  %i.gu = icmp samesign ult i64 %indvars.iv.next292, %i.gt
  br i1 %i.gu, label %bb.r, label %.loopexit, !llvm.loop !10

bb.w:                                             ; preds = %.loopexit231
  %i.gv = call noundef float @cosf(float noundef %i.ee) #19
  %i.gw = load i32, ptr %i.j, align 4
  %.not273 = icmp eq i32 %i.gw, 0
  br i1 %.not273, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %.lr.ph266

.lr.ph266:                                        ; preds = %bb.w
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gy = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph266, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit160
  %indvars.iv299 = phi i64 [ 0, %.lr.ph266 ], [ %indvars.iv.next300, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit160 ] ; 5 uses
  %i.gz = load ptr, ptr %i.gx, align 8
  %i.ha = getelementptr inbounds nuw [12 x i8], ptr %i.gz, i64 %indvars.iv299
  invoke void @_ZNK6Assimp11SpatialSort13FindPositionsERK10aiVector3tIfEfRSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(49) %.2112, ptr noundef nonnull align 4 dereferenceable(12) %i.ha, float noundef %.2109, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  %i.hb = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.hc = getelementptr inbounds nuw [12 x i8], ptr %i.hb, i64 %indvars.iv299 ; 3 uses
  %.sroa.0175.0.copyload = load float, ptr %i.hc, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4
  %i.hd = load ptr, ptr %i.gy, align 8            ; 2 uses
  %i.he = load ptr, ptr %4, align 8               ; 3 uses
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = sub i64 %i.hf, %i.hg
  %i.hi = ashr exact i64 %i.hh, 2
  %.not274 = icmp eq ptr %i.hd, %i.he
  br i1 %.not274, label %._crit_edge260, label %.lr.ph259

._crit_edge260:                                   ; preds = %bb.ac, %bb.y
  %.sroa.14.0.lcssa = phi float [ 0.000000e+00, %bb.y ], [ %.sroa.14.1, %bb.ac ] ; 4 uses
  %i.hj = phi <2 x float> [ zeroinitializer, %bb.y ], [ %i.ik, %bb.ac ] ; 5 uses
  %foldExtExtBinop337 = fmul <2 x float> %i.hj, %i.hj
  %i.hk = extractelement <2 x float> %foldExtExtBinop337, i64 1
  %i.hl = extractelement <2 x float> %i.hj, i64 0 ; 2 uses
  %i.hm = call float @llvm.fmuladd.f32(float %i.hl, float %i.hl, float %i.hk)
  %i.hn = call noundef float @llvm.fmuladd.f32(float %.sroa.14.0.lcssa, float %.sroa.14.0.lcssa, float %i.hm) ; 2 uses
  %i.ho = fcmp ogt float %i.hn, 0.000000e+00
  br i1 %i.ho, label %_ZN10aiVector3tIfEdVEf.exit.i158, label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit160

_ZN10aiVector3tIfEdVEf.exit.i158:                 ; preds = %._crit_edge260
  %sqrt.i.i159 = call noundef float @llvm.sqrt.f32(float %i.hn)
  %i.hp = fdiv float 1.000000e+00, %sqrt.i.i159   ; 2 uses
  %i.hq = insertelement <2 x float> poison, float %i.hp, i64 0
  %i.hr = shufflevector <2 x float> %i.hq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hs = fmul <2 x float> %i.hj, %i.hr
  %i.ht = fmul float %.sroa.14.0.lcssa, %i.hp
  br label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit160

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.x, %bb.q, %bb.n
  %lpad.loopexit.split-lp339 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph259:                                        ; preds = %bb.y, %bb.ac
  %indvars.iv295 = phi i64 [ %indvars.iv.next296, %bb.ac ], [ 0, %bb.y ] ; 2 uses
  %.sroa.14.0254 = phi float [ %.sroa.14.1, %bb.ac ], [ 0.000000e+00, %bb.y ] ; 3 uses
  %i.hu = phi <2 x float> [ %i.ik, %bb.ac ], [ zeroinitializer, %bb.y ] ; 3 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv295
  %i.hw = load i32, ptr %i.hv, align 4
  %i.hx = zext i32 %i.hw to i64                   ; 2 uses
  %i.hy = getelementptr inbounds nuw [12 x i8], ptr %i.hb, i64 %i.hx ; 2 uses
  %i.hz = load <2 x float>, ptr %i.hy, align 4    ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4 ; 2 uses
  %i.ia = extractelement <2 x float> %i.hz, i64 0 ; 2 uses
  %i.ib = fcmp ord float %i.ia, 0.000000e+00
  br i1 %i.ib, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %.lr.ph259
  %i.ic = icmp eq i64 %indvars.iv299, %i.hx
  br i1 %i.ic, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.id = extractelement <2 x float> %i.hz, i64 1
  %i.ie = fmul float %.sroa.5.0.copyload, %i.id
  %i.if = call float @llvm.fmuladd.f32(float %i.ia, float %.sroa.0175.0.copyload, float %i.ie)
  %i.ig = call noundef float @llvm.fmuladd.f32(float %.sroa.9.0.copyload, float %.sroa.6.0.copyload, float %i.if)
  %i.ih = fcmp ult float %i.ig, %i.gv
  br i1 %i.ih, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ii = fadd <2 x float> %i.hu, %i.hz
  %i.ij = fadd float %.sroa.14.0254, %.sroa.9.0.copyload
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %.lr.ph259
  %.sroa.14.1 = phi float [ %i.ij, %bb.ab ], [ %.sroa.14.0254, %bb.aa ], [ %.sroa.14.0254, %.lr.ph259 ] ; 2 uses
  %i.ik = phi <2 x float> [ %i.ii, %bb.ab ], [ %i.hu, %bb.aa ], [ %i.hu, %.lr.ph259 ] ; 2 uses
  %indvars.iv.next296 = add i64 %indvars.iv295, 1 ; 2 uses
  %i.il = and i64 %indvars.iv.next296, 4294967295
  %i.im = icmp ugt i64 %i.hi, %i.il
  br i1 %i.im, label %.lr.ph259, label %._crit_edge260, !llvm.loop !11

_ZN10aiVector3tIfE13NormalizeSafeEv.exit160:      ; preds = %_ZN10aiVector3tIfEdVEf.exit.i158, %._crit_edge260
  %.sroa.14.2 = phi float [ %i.ht, %_ZN10aiVector3tIfEdVEf.exit.i158 ], [ %.sroa.14.0.lcssa, %._crit_edge260 ]
  %i.in = phi <2 x float> [ %i.hs, %_ZN10aiVector3tIfEdVEf.exit.i158 ], [ %i.hj, %._crit_edge260 ]
  %i.io = getelementptr inbounds nuw [12 x i8], ptr %i.dx, i64 %indvars.iv299 ; 2 uses
  store <2 x float> %i.in, ptr %i.io, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  store float %.sroa.14.2, ptr %.sroa.14.0..sroa_idx, align 4
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1 ; 2 uses
  %i.ip = load i32, ptr %i.j, align 4
  %i.iq = zext i32 %i.ip to i64
  %i.ir = icmp samesign ult i64 %indvars.iv.next300, %i.iq
  br i1 %i.ir, label %bb.x, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, !llvm.loop !12

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZN10aiVector3tIfE13NormalizeSafeEv.exit160, %bb.p, %bb.w, %.loopexit
  %i.is = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.it = icmp eq ptr %i.is, null
  br i1 %i.it, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.is) #21
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  store ptr %i.dx, ptr %i.b, align 8
  %i.iu = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i161 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i161, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.iv = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.iw = load ptr, ptr %i.iv, align 8
  %i.ix = ptrtoint ptr %i.iw to i64
  %i.iy = ptrtoint ptr %i.iu to i64
  %i.iz = sub i64 %i.ix, %i.iy
  call void @_ZdlPvm(ptr noundef nonnull %i.iu, i64 noundef %i.iz) #21
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.ja = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.jb = load ptr, ptr %i.ja, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.jb, null
  br i1 %.not.i.i.i.i, label %_ZN6Assimp11SpatialSortD2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.jc = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.jd = load ptr, ptr %i.jc, align 8
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = ptrtoint ptr %i.jb to i64
  %i.jg = sub i64 %i.je, %i.jf
  call void @_ZdlPvm(ptr noundef nonnull %i.jb, i64 noundef %i.jg) #21
  br label %_ZN6Assimp11SpatialSortD2Ev.exit

_ZN6Assimp11SpatialSortD2Ev.exit:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.ak

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread219
end_hunk_0
