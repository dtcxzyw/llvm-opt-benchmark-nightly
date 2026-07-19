inline.NumInlined: 219
inline.NumDeleted: 155
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6Assimp23GenVertexNormalsProcess20GenMeshVertexNormalsEP6aiMeshj:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.cu = load ptr, ptr %i.b, align 8
  %i.cv = load ptr, ptr %i.aq, align 8
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [12 x i8], ptr %i.cu, i64 %i.cy ; 2 uses
  store <2 x float> %.sroa.0199.0, ptr %i.cz, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store float %.sroa.8.0, ptr %.sroa.4.0..sroa_idx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.da = load i32, ptr %i.ac, align 8
  %i.db = zext i32 %i.da to i64
  %i.dc = icmp samesign ult i64 %indvars.iv.next, %i.db
  br i1 %i.dc, label %.lr.ph, label %.loopexit232, !llvm.loop !8

.loopexit232:                                     ; preds = %.lr.ph, %bb.h, %.preheader231
  %indvars.iv.next280 = add nuw nsw i64 %indvars.iv279, 1 ; 2 uses
  %i.dd = load i32, ptr %i.t, align 8
  %i.de = zext i32 %i.dd to i64
  %i.df = icmp samesign ult i64 %indvars.iv.next280, %i.de
  br i1 %i.df, label %bb.g, label %._crit_edge, !llvm.loop !9

bb.j:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8
  %i.dg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z18GetGenericPropertyIPN6Assimp21SharedPostProcessInfo4BaseEERKT_RKSt3mapIjS4_St4lessIjESaISt4pairIKjS4_EEEPKcS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull @.str.6, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.j
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.not.i.not = icmp eq ptr %i.dh, null
  br i1 %.not.i.not, label %.thread, label %_ZNK6Assimp21SharedPostProcessInfo11GetPropertyISt6vectorISt4pairINS_11SpatialSortEfESaIS5_EEEEbPKcRPT_.exit

_ZNK6Assimp21SharedPostProcessInfo11GetPropertyISt6vectorISt4pairINS_11SpatialSortEfESaIS5_EEEEbPKcRPT_.exit: ; preds = %.noexc
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8            ; 2 uses
  %.not127 = icmp eq ptr %i.dj, null
  br i1 %.not127, label %.thread, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.l:                                             ; preds = %_ZNK6Assimp21SharedPostProcessInfo11GetPropertyISt6vectorISt4pairINS_11SpatialSortEfESaIS5_EEEEbPKcRPT_.exit
  %i.dl = zext i32 %2 to i64
  %i.dm = load ptr, ptr %i.dj, align 8
  %i.dn = getelementptr inbounds nuw [64 x i8], ptr %i.dm, i64 %i.dl ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 56
  %i.dp = load float, ptr %i.do, align 8
  br label %bb.o

.thread:                                          ; preds = %.noexc, %_ZNK6Assimp21SharedPostProcessInfo11GetPropertyISt6vectorISt4pairINS_11SpatialSortEfESaIS5_EEEEbPKcRPT_.exit, %._crit_edge
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = load i32, ptr %i.j, align 4
  invoke void @_ZN6Assimp11SpatialSort4FillEPK10aiVector3tIfEjjb(ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef %i.dr, i32 noundef %i.ds, i32 noundef 12, i1 noundef zeroext true)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.thread
  %i.dt = invoke noundef float @_ZN6Assimp22ComputePositionEpsilonEPK6aiMesh(ptr noundef nonnull %1)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.o:                                             ; preds = %bb.l, %bb.m
  %.2115 = phi ptr [ %i.dn, %bb.l ], [ %3, %bb.m ] ; 2 uses
  %.2112 = phi float [ %i.dp, %bb.l ], [ %i.dt, %bb.m ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.dv = load i32, ptr %i.j, align 4             ; 2 uses
  %i.dw = zext i32 %i.dv to i64                   ; 2 uses
  %i.dx = mul nuw nsw i64 %i.dw, 12               ; 2 uses
  %i.dy = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dx) #22
          to label %bb.p unwind label %bb.s       ; 4 uses

bb.p:                                             ; preds = %bb.o
  %i.dz = icmp eq i32 %i.dv, 0
  br i1 %i.dz, label %.thread217, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ea = add nsw i64 %i.dx, -12                  ; 2 uses
  %i.eb = urem i64 %i.ea, 12
  %i.ec = sub nuw nsw i64 %i.ea, %i.eb
  %i.ed = add nsw i64 %i.ec, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dy, i8 0, i64 %i.ed, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ef = load float, ptr %i.ee, align 8          ; 2 uses
  %i.eg = fcmp ult float %i.ef, f0x40437A14
  br i1 %i.eg, label %bb.z, label %bb.r

.thread217:                                       ; preds = %bb.p
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ei = load float, ptr %i.eh, align 8          ; 2 uses
  %i.ej = fcmp ult float %i.ei, f0x40437A14
  br i1 %i.ej, label %bb.z, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

bb.r:                                             ; preds = %bb.q
  %i.ek = add nuw nsw i64 %i.dw, 63               ; 2 uses
  %i.el = lshr i64 %i.ek, 3
  %i.em = and i64 %i.el, 1073741816
  %i.en = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.em) #22
          to label %.lr.ph251 unwind label %bb.t  ; 5 uses

.lr.ph251:                                        ; preds = %bb.r
  %i.eo = lshr i64 %i.ek, 6                       ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.eo, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.en, i8 0, i64 %.idx.i, i1 false)
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.u

._crit_edge252:                                   ; preds = %.loopexit
  %.idx316 = shl nuw nsw i64 %i.eo, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %.idx316) #21
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

bb.s:                                             ; preds = %bb.o
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit158

bb.t:                                             ; preds = %bb.r
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit158

bb.u:                                             ; preds = %.lr.ph251, %.loopexit
  %indvars.iv282.a = phi i64 [ 0, %.lr.ph251 ], [ %indvars.iv.next283.a, %.loopexit ] ; 4 uses
  %i.et = lshr i64 %indvars.iv282.a, 6
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.et
  %i.ev = and i64 %indvars.iv282.a, 63
  %i.ew = shl nuw i64 1, %i.ev
  %i.ex = load i64, ptr %i.eu, align 8
  %i.ey = and i64 %i.ex, %i.ew
  %.not230 = icmp eq i64 %i.ey, 0
  br i1 %.not230, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u
  %i.ez = load ptr, ptr %i.ep, align 8
  %i.fa = getelementptr inbounds nuw [12 x i8], ptr %i.ez, i64 %indvars.iv282.a
  invoke void @_ZNK6Assimp11SpatialSort13FindPositionsERK10aiVector3tIfEfRSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(49) %.2115, ptr noundef nonnull align 4 dereferenceable(12) %i.fa, float noundef %.2112, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %.preheader unwind label %.thread220

.preheader:                                       ; preds = %bb.v
  %i.fb = load ptr, ptr %i.eq, align 8            ; 2 uses
  %i.fc = load ptr, ptr %4, align 8               ; 4 uses
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = ashr exact i64 %i.ff, 2                 ; 2 uses
  %.not270 = icmp eq ptr %i.fb, %i.fc             ; 2 uses
  br i1 %.not270, label %._crit_edge245, label %.lr.ph244

.lr.ph244:                                        ; preds = %.preheader
  %i.fh = load ptr, ptr %i.b, align 8
  br label %bb.w

._crit_edge245:                                   ; preds = %bb.y, %.preheader
  %.sroa.14182.0.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %.sroa.14182.1, %bb.y ] ; 4 uses
  %i.fi = phi <2 x float> [ zeroinitializer, %.preheader ], [ %i.gk, %bb.y ] ; 4 uses
  %i.fj = extractelement <2 x float> %i.fi, i64 0 ; 2 uses
  %foldExtExtBinop319 = fmul <2 x float> %i.fi, %i.fi
  %i.fk = extractelement <2 x float> %foldExtExtBinop319, i64 0
  %i.fl = extractelement <2 x float> %i.fi, i64 1 ; 4 uses
  %i.fm = call float @llvm.fmuladd.f32(float %i.fl, float %i.fl, float %i.fk)
  %i.fn = call noundef float @llvm.fmuladd.f32(float %.sroa.14182.0.lcssa, float %.sroa.14182.0.lcssa, float %i.fm) ; 2 uses
  %i.fo = fcmp ogt float %i.fn, 0.000000e+00
  br i1 %i.fo, label %_ZN10aiVector3tIfEdVEf.exit.i150, label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit152

_ZN10aiVector3tIfEdVEf.exit.i150:                 ; preds = %._crit_edge245
  %sqrt.i.i151 = call noundef float @llvm.sqrt.f32(float %i.fn)
  %i.fp = fdiv float 1.000000e+00, %sqrt.i.i151   ; 3 uses
  %i.fq = fmul float %i.fl, %i.fp
  %i.fr = fmul float %i.fj, %i.fp
  %i.fs = fmul float %.sroa.14182.0.lcssa, %i.fp
  br label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit152

_ZN10aiVector3tIfE13NormalizeSafeEv.exit152:      ; preds = %._crit_edge245, %_ZN10aiVector3tIfEdVEf.exit.i150
  %.sroa.14182.2 = phi float [ %i.fs, %_ZN10aiVector3tIfEdVEf.exit.i150 ], [ %.sroa.14182.0.lcssa, %._crit_edge245 ]
  %.sroa.9180.2 = phi float [ %i.fr, %_ZN10aiVector3tIfEdVEf.exit.i150 ], [ %i.fj, %._crit_edge245 ]
  %.sroa.0178.2 = phi float [ %i.fq, %_ZN10aiVector3tIfEdVEf.exit.i150 ], [ %i.fl, %._crit_edge245 ]
  br i1 %.not270, label %.loopexit, label %.lr.ph249

.thread220:                                       ; preds = %bb.v
  %i.ft = landingpad { ptr, i32 }
          cleanup
  %.idx = shl nuw nsw i64 %i.eo, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %.idx) #21
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit158

bb.w:                                             ; preds = %.lr.ph244, %bb.y
  %i.fu = phi i64 [ 0, %.lr.ph244 ], [ %indvars.iv.next283, %bb.y ] ; 2 uses
  %.sroa.14182.0240 = phi float [ 0.000000e+00, %.lr.ph244 ], [ %.sroa.14182.1, %bb.y ] ; 2 uses
  %i.fv = phi <2 x float> [ zeroinitializer, %.lr.ph244 ], [ %i.gk, %bb.y ] ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fu
  %i.fx = load i32, ptr %i.fw, align 4
  %i.fy = zext i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [12 x i8], ptr %i.fh, i64 %i.fy ; 3 uses
  %i.ga = load float, ptr %i.fz, align 4          ; 2 uses
  %i.gb = fcmp ord float %i.ga, 0.000000e+00
  br i1 %i.gb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  %i.gd = load float, ptr %i.gc, align 4
  %i.ge = insertelement <2 x float> poison, float %i.gd, i64 0
  %i.gf = insertelement <2 x float> %i.ge, float %i.ga, i64 1
  %i.gg = fadd <2 x float> %i.fv, %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gi = load float, ptr %i.gh, align 4
  %i.gj = fadd float %.sroa.14182.0240, %i.gi
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.14182.1 = phi float [ %i.gj, %bb.x ], [ %.sroa.14182.0240, %bb.w ] ; 2 uses
  %i.gk = phi <2 x float> [ %i.gg, %bb.x ], [ %i.fv, %bb.w ] ; 2 uses
  %indvars.iv.next283 = add i64 %i.fu, 1          ; 2 uses
  %5 = and i64 %indvars.iv.next283, 4294967295
  %i.gl = icmp ugt i64 %i.fg, %5
  br i1 %i.gl, label %bb.w, label %._crit_edge245, !llvm.loop !10

.lr.ph249:                                        ; preds = %_ZN10aiVector3tIfE13NormalizeSafeEv.exit152, %.lr.ph249
  %i.gm = phi i64 [ %indvars.iv.next286, %.lr.ph249 ], [ 0, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit152 ] ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.gm
  %i.go = load i32, ptr %i.gn, align 4            ; 2 uses
  %i.gp = zext i32 %i.go to i64                   ; 2 uses
  %i.gq = getelementptr inbounds nuw [12 x i8], ptr %i.dy, i64 %i.gp ; 3 uses
  store float %.sroa.0178.2, ptr %i.gq, align 4
  %.sroa.9180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  store float %.sroa.9180.2, ptr %.sroa.9180.0..sroa_idx, align 4
  %.sroa.14182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  store float %.sroa.14182.2, ptr %.sroa.14182.0..sroa_idx, align 4
  %i.gr = lshr i32 %i.go, 6
  %.zext226 = zext nneg i32 %i.gr to i64
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %.zext226 ; 2 uses
  %i.gt = and i64 %i.gp, 63
  %i.gu = shl nuw i64 1, %i.gt
  %i.gv = load i64, ptr %i.gs, align 8
  %i.gw = or i64 %i.gv, %i.gu
  store i64 %i.gw, ptr %i.gs, align 8
  %indvars.iv.next286 = add i64 %i.gm, 1          ; 2 uses
  %6 = and i64 %indvars.iv.next286, 4294967295
  %i.gx = icmp samesign ugt i64 %i.fg, %6
  br i1 %i.gx, label %.lr.ph249, label %.loopexit, !llvm.loop !11

.loopexit:                                        ; preds = %.lr.ph249, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit152, %bb.u
  %indvars.iv.next283.a = add nuw nsw i64 %indvars.iv282.a, 1 ; 2 uses
  %i.gy = load i32, ptr %i.j, align 4
  %i.gz = zext i32 %i.gy to i64
  %i.ha = icmp samesign ult i64 %indvars.iv.next283.a, %i.gz
  br i1 %i.ha, label %bb.u, label %._crit_edge252, !llvm.loop !12

bb.z:                                             ; preds = %.thread217, %bb.q
  %i.hb = phi float [ %i.ei, %.thread217 ], [ %i.ef, %bb.q ]
  %i.hc = call noundef float @cosf(float noundef %i.hb) #19
  %i.hd = load i32, ptr %i.j, align 4
  %.not272 = icmp eq i32 %i.hd, 0
  br i1 %.not272, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %.lr.ph265

.lr.ph265:                                        ; preds = %bb.z
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hf = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph265, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit161
  %indvars.iv285 = phi i64 [ 0, %.lr.ph265 ], [ %indvars.iv.next286.a, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit161 ] ; 5 uses
  %i.hg = load ptr, ptr %i.he, align 8
  %i.hh = getelementptr inbounds nuw [12 x i8], ptr %i.hg, i64 %indvars.iv285
  invoke void @_ZNK6Assimp11SpatialSort13FindPositionsERK10aiVector3tIfEfRSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(49) %.2115, ptr noundef nonnull align 4 dereferenceable(12) %i.hh, float noundef %.2112, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.hi = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.hj = getelementptr inbounds nuw [12 x i8], ptr %i.hi, i64 %indvars.iv285 ; 3 uses
  %.sroa.0175.0.copyload = load float, ptr %i.hj, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4
  %i.hk = load ptr, ptr %i.hf, align 8            ; 2 uses
  %i.hl = load ptr, ptr %4, align 8               ; 3 uses
  %i.hm = ptrtoint ptr %i.hk to i64
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = sub i64 %i.hm, %i.hn
  %i.hp = ashr exact i64 %i.ho, 2
  %.not273 = icmp eq ptr %i.hk, %i.hl
  br i1 %.not273, label %._crit_edge259, label %.lr.ph258

._crit_edge259:                                   ; preds = %bb.ag, %bb.ab
  %.sroa.14.0.lcssa = phi float [ 0.000000e+00, %bb.ab ], [ %.sroa.14.1, %bb.ag ] ; 4 uses
  %i.hq = phi <2 x float> [ zeroinitializer, %bb.ab ], [ %i.it, %bb.ag ] ; 5 uses
  %foldExtExtBinop321 = fmul <2 x float> %i.hq, %i.hq
  %i.hr = extractelement <2 x float> %foldExtExtBinop321, i64 1
  %i.hs = extractelement <2 x float> %i.hq, i64 0 ; 2 uses
  %i.ht = call float @llvm.fmuladd.f32(float %i.hs, float %i.hs, float %i.hr)
  %i.hu = call noundef float @llvm.fmuladd.f32(float %.sroa.14.0.lcssa, float %.sroa.14.0.lcssa, float %i.ht) ; 2 uses
  %i.hv = fcmp ogt float %i.hu, 0.000000e+00
  br i1 %i.hv, label %_ZN10aiVector3tIfEdVEf.exit.i159, label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit161

_ZN10aiVector3tIfEdVEf.exit.i159:                 ; preds = %._crit_edge259
  %sqrt.i.i160 = call noundef float @llvm.sqrt.f32(float %i.hu)
  %i.hw = fdiv float 1.000000e+00, %sqrt.i.i160   ; 2 uses
  %i.hx = insertelement <2 x float> poison, float %i.hw, i64 0
  %i.hy = shufflevector <2 x float> %i.hx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hz = fmul <2 x float> %i.hq, %i.hy
  %i.ia = fmul float %.sroa.14.0.lcssa, %i.hw
  br label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit161

bb.ac:                                            ; preds = %bb.aa
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit158

.lr.ph258:                                        ; preds = %bb.ab, %bb.ag
  %i.ic = phi i64 [ %indvars.iv.next294, %bb.ag ], [ 0, %bb.ab ] ; 2 uses
  %.sroa.14.0253 = phi float [ %.sroa.14.1, %bb.ag ], [ 0.000000e+00, %bb.ab ] ; 3 uses
  %i.id = phi <2 x float> [ %i.it, %bb.ag ], [ zeroinitializer, %bb.ab ] ; 3 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.ic
  %i.if = load i32, ptr %i.ie, align 4
  %i.ig = zext i32 %i.if to i64                   ; 2 uses
  %i.ih = getelementptr inbounds nuw [12 x i8], ptr %i.hi, i64 %i.ig ; 2 uses
  %i.ii = load <2 x float>, ptr %i.ih, align 4    ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4 ; 2 uses
  %i.ij = extractelement <2 x float> %i.ii, i64 0 ; 2 uses
  %i.ik = fcmp ord float %i.ij, 0.000000e+00
  br i1 %i.ik, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %.lr.ph258
  %i.il = icmp eq i64 %indvars.iv285, %i.ig
  br i1 %i.il, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.im = extractelement <2 x float> %i.ii, i64 1
  %i.in = fmul float %.sroa.5.0.copyload, %i.im
  %i.io = call float @llvm.fmuladd.f32(float %i.ij, float %.sroa.0175.0.copyload, float %i.in)
  %i.ip = call noundef float @llvm.fmuladd.f32(float %.sroa.9.0.copyload, float %.sroa.6.0.copyload, float %i.io)
  %i.iq = fcmp ult float %i.ip, %i.hc
  br i1 %i.iq, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ir = fadd <2 x float> %i.id, %i.ii
  %i.is = fadd float %.sroa.14.0253, %.sroa.9.0.copyload
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %.lr.ph258
  %.sroa.14.1 = phi float [ %i.is, %bb.af ], [ %.sroa.14.0253, %bb.ae ], [ %.sroa.14.0253, %.lr.ph258 ] ; 2 uses
  %i.it = phi <2 x float> [ %i.ir, %bb.af ], [ %i.id, %bb.ae ], [ %i.id, %.lr.ph258 ] ; 2 uses
  %indvars.iv.next294 = add i64 %i.ic, 1          ; 2 uses
  %7 = and i64 %indvars.iv.next294, 4294967295
  %i.iu = icmp ugt i64 %i.hp, %7
  br i1 %i.iu, label %.lr.ph258, label %._crit_edge259, !llvm.loop !13

_ZN10aiVector3tIfE13NormalizeSafeEv.exit161:      ; preds = %_ZN10aiVector3tIfEdVEf.exit.i159, %._crit_edge259
  %.sroa.14.2 = phi float [ %i.ia, %_ZN10aiVector3tIfEdVEf.exit.i159 ], [ %.sroa.14.0.lcssa, %._crit_edge259 ]
  %i.iv = phi <2 x float> [ %i.hz, %_ZN10aiVector3tIfEdVEf.exit.i159 ], [ %i.hq, %._crit_edge259 ]
  %i.iw = getelementptr inbounds nuw [12 x i8], ptr %i.dy, i64 %indvars.iv285 ; 2 uses
  store <2 x float> %i.iv, ptr %i.iw, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  store float %.sroa.14.2, ptr %.sroa.14.0..sroa_idx, align 4
  %indvars.iv.next286.a = add nuw nsw i64 %indvars.iv285, 1 ; 2 uses
  %i.ix = load i32, ptr %i.j, align 4
  %i.iy = zext i32 %i.ix to i64
  %i.iz = icmp samesign ult i64 %indvars.iv.next286.a, %i.iy
  br i1 %i.iz, label %bb.aa, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, !llvm.loop !14

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZN10aiVector3tIfE13NormalizeSafeEv.exit161, %.thread217, %bb.z, %._crit_edge252
  %i.ja = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.jb = icmp eq ptr %i.ja, null
  br i1 %i.jb, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.ja) #21
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  store ptr %i.dy, ptr %i.b, align 8
  %i.jc = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.jc, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.je = load ptr, ptr %i.jd, align 8
  %i.jf = ptrtoint ptr %i.je to i64
  %i.jg = ptrtoint ptr %i.jc to i64
  %i.jh = sub i64 %i.jf, %i.jg
  call void @_ZdlPvm(ptr noundef nonnull %i.jc, i64 noundef %i.jh) #21
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.ji = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.jj = load ptr, ptr %i.ji, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.jj, null
  br i1 %.not.i.i.i.i, label %_ZN6Assimp11SpatialSortD2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.jk = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.jl = load ptr, ptr %i.jk, align 8
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = ptrtoint ptr %i.jj to i64
  %i.jo = sub i64 %i.jm, %i.jn
  call void @_ZdlPvm(ptr noundef nonnull %i.jj, i64 noundef %i.jo) #21
  br label %_ZN6Assimp11SpatialSortD2Ev.exit

_ZN6Assimp11SpatialSortD2Ev.exit:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.ao

_ZNSt13_Bvector_baseISaIbEED2Ev.exit158:          ; preds = %bb.t, %.thread220, %bb.ac, %bb.s
  %.pn131.pn.pn.pn = phi { ptr, i32 } [ %i.ib, %bb.ac ], [ %i.er, %bb.s ], [ %i.ft, %.thread220 ], [ %i.es, %bb.t ]
  %i.jp = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i162 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i162, label %_ZNSt6vectorIjSaIjEED2Ev.exit163, label %bb.al

bb.al:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit158
  %i.jq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8
  %i.js = ptrtoint ptr %i.jr to i64
  %i.jt = ptrtoint ptr %i.jp to i64
  %i.ju = sub i64 %i.js, %i.jt
  call void @_ZdlPvm(ptr noundef nonnull %i.jp, i64 noundef %i.ju) #21
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit163

_ZNSt6vectorIjSaIjEED2Ev.exit163:                 ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit158, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit163, %bb.n, %bb.k
  %.pn131.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn131.pn.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit163 ], [ %i.du, %bb.n ], [ %i.dk, %bb.k ]
  %i.jv = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.jw = load ptr, ptr %i.jv, align 8            ; 3 uses
  %.not.i.i.i.i164 = icmp eq ptr %i.jw, null
  br i1 %.not.i.i.i.i164, label %_ZN6Assimp11SpatialSortD2Ev.exit165, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.jy = load ptr, ptr %i.jx, align 8
  %i.jz = ptrtoint ptr %i.jy to i64
  %i.ka = ptrtoint ptr %i.jw to i64
  %i.kb = sub i64 %i.jz, %i.ka
  call void @_ZdlPvm(ptr noundef nonnull %i.jw, i64 noundef %i.kb) #21
  br label %_ZN6Assimp11SpatialSortD2Ev.exit165

_ZN6Assimp11SpatialSortD2Ev.exit165:              ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %.pn131.pn.pn.pn.pn

bb.ao:                                            ; preds = %bb.b, %_ZN6Assimp11SpatialSortD2Ev.exit, %bb.e
  %.095 = phi i1 [ true, %_ZN6Assimp11SpatialSortD2Ev.exit ], [ false, %bb.e ], [ false, %bb.b ]
  ret i1 %.095
}

declare void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #9

declare void @_ZN6Assimp11SpatialSortC1Ev(ptr noundef nonnull align 8 dereferenceable(49)) unnamed_addr #4

declare void @_ZN6Assimp11SpatialSort4FillEPK10aiVector3tIfEjjb(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

declare noundef float @_ZN6Assimp22ComputePositionEpsilonEPK6aiMesh(ptr noundef) local_unnamed_addr #4

declare void @_ZNK6Assimp11SpatialSort13FindPositionsERK10aiVector3tIfEfRSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef nonnull align 4 dereferenceable(12), float noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp11BaseProcessD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp23GenVertexNormalsProcessD0Ev(ptr noundef nonnull align 8 dereferenceable(31) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #21
  ret void
}

declare noundef zeroext i1 @_ZNK6Assimp11BaseProcess20RequireVerboseFormatEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %3, align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %3, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #21
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #19
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #19
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #19
  resume { ptr, i32 } %i.y
}

end_hunk_0
