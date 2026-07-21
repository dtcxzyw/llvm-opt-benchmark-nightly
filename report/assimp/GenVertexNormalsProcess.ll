inline.NumInlined: 219
inline.NumDeleted: 155
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6Assimp23GenVertexNormalsProcess20GenMeshVertexNormalsEP6aiMeshj:bb.a
  %i.by = fsub <2 x float> %i.bx, %i.bt           ; 2 uses
  %i.bz = fsub <2 x float> %i.bv, %i.bo           ; 2 uses
  %i.ca = fneg <2 x float> %i.bz
  %i.cb = fmul <2 x float> %i.bu, %i.ca
  %i.cc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.by, <2 x float> %i.cb) ; 5 uses
  %i.cd = extractelement <2 x float> %i.by, i64 1
  %i.ce = fneg float %i.cd
  %i.cf = extractelement <2 x float> %i.bp, i64 0
  %i.cg = fmul float %i.cf, %i.ce
  %i.ch = extractelement <2 x float> %i.bu, i64 1
  %i.ci = extractelement <2 x float> %i.bz, i64 0
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.ci, float %i.cg) ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.cc, %i.cc
  %i.ck = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.cl = extractelement <2 x float> %i.cc, i64 0 ; 2 uses
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.cl, float %i.ck)
  %i.cn = tail call noundef float @llvm.fmuladd.f32(float %i.cj, float %i.cj, float %i.cm) ; 2 uses
  %i.co = fcmp ogt float %i.cn, 0.000000e+00
  br i1 %i.co, label %_ZN10aiVector3tIfEdVEf.exit.i, label %.lr.ph.preheader

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.i
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.cn)
  %i.cp = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.cq = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = fmul <2 x float> %i.cc, %i.cr
  %i.ct = fmul float %i.cj, %i.cp
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN10aiVector3tIfEdVEf.exit.i, %bb.i
  %.sroa.0199.0 = phi <2 x float> [ %i.cs, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %i.cc, %bb.i ]
  %.sroa.8.0 = phi float [ %i.ct, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %i.cj, %bb.i ]
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
  %.idx327 = shl nuw nsw i64 %i.eo, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %.idx327) #21
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
  %indvars.iv289 = phi i64 [ 0, %.lr.ph251 ], [ %indvars.iv.next290, %.loopexit ] ; 4 uses
  %i.et = lshr i64 %indvars.iv289, 6
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.et
  %i.ev = and i64 %indvars.iv289, 63
  %i.ew = shl nuw i64 1, %i.ev
  %i.ex = load i64, ptr %i.eu, align 8
  %i.ey = and i64 %i.ex, %i.ew
  %.not230 = icmp eq i64 %i.ey, 0
  br i1 %.not230, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u
  %i.ez = load ptr, ptr %i.ep, align 8
  %i.fa = getelementptr inbounds nuw [12 x i8], ptr %i.ez, i64 %indvars.iv289
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
  %i.fi = phi <2 x float> [ zeroinitializer, %.preheader ], [ %i.gg, %bb.y ] ; 5 uses
  %foldExtExtBinop330 = fmul <2 x float> %i.fi, %i.fi
  %i.fj = extractelement <2 x float> %foldExtExtBinop330, i64 1
  %i.fk = extractelement <2 x float> %i.fi, i64 0 ; 2 uses
  %i.fl = call float @llvm.fmuladd.f32(float %i.fk, float %i.fk, float %i.fj)
  %i.fm = call noundef float @llvm.fmuladd.f32(float %.sroa.14182.0.lcssa, float %.sroa.14182.0.lcssa, float %i.fl) ; 2 uses
  %i.fn = fcmp ogt float %i.fm, 0.000000e+00
  br i1 %i.fn, label %_ZN10aiVector3tIfEdVEf.exit.i150, label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit152

_ZN10aiVector3tIfEdVEf.exit.i150:                 ; preds = %._crit_edge245
  %sqrt.i.i151 = call noundef float @llvm.sqrt.f32(float %i.fm)
  %i.fo = fdiv float 1.000000e+00, %sqrt.i.i151   ; 2 uses
  %5 = insertelement <2 x float> poison, float %i.fo, i64 0
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  %7 = fmul <2 x float> %i.fi, %6
  %i.fp = fmul float %.sroa.14182.0.lcssa, %i.fo
  br label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit152

_ZN10aiVector3tIfE13NormalizeSafeEv.exit152:      ; preds = %._crit_edge245, %_ZN10aiVector3tIfEdVEf.exit.i150
  %.sroa.14182.2 = phi float [ %i.fp, %_ZN10aiVector3tIfEdVEf.exit.i150 ], [ %.sroa.14182.0.lcssa, %._crit_edge245 ]
  %8 = phi <2 x float> [ %7, %_ZN10aiVector3tIfEdVEf.exit.i150 ], [ %i.fi, %._crit_edge245 ]
  br i1 %.not270, label %.loopexit, label %.lr.ph249

.thread220:                                       ; preds = %bb.v
  %i.fq = landingpad { ptr, i32 }
          cleanup
  %.idx = shl nuw nsw i64 %i.eo, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %.idx) #21
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit158

bb.w:                                             ; preds = %.lr.ph244, %bb.y
  %indvars.iv282 = phi i64 [ 0, %.lr.ph244 ], [ %indvars.iv.next283, %bb.y ] ; 2 uses
  %.sroa.14182.0240 = phi float [ 0.000000e+00, %.lr.ph244 ], [ %.sroa.14182.1, %bb.y ] ; 2 uses
  %i.fr = phi <2 x float> [ zeroinitializer, %.lr.ph244 ], [ %i.gg, %bb.y ] ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv282
  %i.ft = load i32, ptr %i.fs, align 4
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [12 x i8], ptr %i.fh, i64 %i.fu ; 3 uses
  %i.fw = load float, ptr %i.fv, align 4          ; 2 uses
  %i.fx = fcmp ord float %i.fw, 0.000000e+00
  br i1 %i.fx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.fz = load float, ptr %i.fy, align 4
  %i.ga = insertelement <2 x float> poison, float %i.fw, i64 0
  %i.gb = insertelement <2 x float> %i.ga, float %i.fz, i64 1
  %i.gc = fadd <2 x float> %i.fr, %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.ge = load float, ptr %i.gd, align 4
  %i.gf = fadd float %.sroa.14182.0240, %i.ge
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.14182.1 = phi float [ %i.gf, %bb.x ], [ %.sroa.14182.0240, %bb.w ] ; 2 uses
  %i.gg = phi <2 x float> [ %i.gc, %bb.x ], [ %i.fr, %bb.w ] ; 2 uses
  %indvars.iv.next283 = add i64 %indvars.iv282, 1 ; 2 uses
  %i.gh = and i64 %indvars.iv.next283, 4294967295
  %i.gi = icmp ugt i64 %i.fg, %i.gh
  br i1 %i.gi, label %bb.w, label %._crit_edge245, !llvm.loop !10

.lr.ph249:                                        ; preds = %_ZN10aiVector3tIfE13NormalizeSafeEv.exit152, %.lr.ph249
  %indvars.iv285 = phi i64 [ %indvars.iv.next286, %.lr.ph249 ], [ 0, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit152 ] ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv285
  %i.gk = load i32, ptr %i.gj, align 4            ; 2 uses
  %i.gl = zext i32 %i.gk to i64                   ; 2 uses
  %i.gm = getelementptr inbounds nuw [12 x i8], ptr %i.dy, i64 %i.gl ; 2 uses
  store <2 x float> %8, ptr %i.gm, align 4
  %.sroa.14182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  store float %.sroa.14182.2, ptr %.sroa.14182.0..sroa_idx, align 4
  %i.gn = lshr i32 %i.gk, 6
  %.zext226 = zext nneg i32 %i.gn to i64
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %.zext226 ; 2 uses
  %i.gp = and i64 %i.gl, 63
  %i.gq = shl nuw i64 1, %i.gp
  %i.gr = load i64, ptr %i.go, align 8
  %i.gs = or i64 %i.gr, %i.gq
  store i64 %i.gs, ptr %i.go, align 8
  %indvars.iv.next286 = add i64 %indvars.iv285, 1 ; 2 uses
  %i.gt = and i64 %indvars.iv.next286, 4294967295
  %i.gu = icmp samesign ugt i64 %i.fg, %i.gt
  br i1 %i.gu, label %.lr.ph249, label %.loopexit, !llvm.loop !11

.loopexit:                                        ; preds = %.lr.ph249, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit152, %bb.u
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1 ; 2 uses
  %i.gv = load i32, ptr %i.j, align 4
  %i.gw = zext i32 %i.gv to i64
  %i.gx = icmp samesign ult i64 %indvars.iv.next290, %i.gw
  br i1 %i.gx, label %bb.u, label %._crit_edge252, !llvm.loop !12

bb.z:                                             ; preds = %.thread217, %bb.q
  %i.gy = phi float [ %i.ei, %.thread217 ], [ %i.ef, %bb.q ]
  %i.gz = call noundef float @cosf(float noundef %i.gy) #19
  %i.ha = load i32, ptr %i.j, align 4
  %.not272 = icmp eq i32 %i.ha, 0
  br i1 %.not272, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %.lr.ph265

.lr.ph265:                                        ; preds = %bb.z
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hc = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph265, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit161
  %indvars.iv297 = phi i64 [ 0, %.lr.ph265 ], [ %indvars.iv.next298, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit161 ] ; 5 uses
  %i.hd = load ptr, ptr %i.hb, align 8
  %i.he = getelementptr inbounds nuw [12 x i8], ptr %i.hd, i64 %indvars.iv297
  invoke void @_ZNK6Assimp11SpatialSort13FindPositionsERK10aiVector3tIfEfRSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(49) %.2115, ptr noundef nonnull align 4 dereferenceable(12) %i.he, float noundef %.2112, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.hf = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.hg = getelementptr inbounds nuw [12 x i8], ptr %i.hf, i64 %indvars.iv297 ; 3 uses
  %.sroa.0175.0.copyload = load float, ptr %i.hg, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4
  %i.hh = load ptr, ptr %i.hc, align 8            ; 2 uses
  %i.hi = load ptr, ptr %4, align 8               ; 3 uses
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = sub i64 %i.hj, %i.hk
  %i.hm = ashr exact i64 %i.hl, 2
  %.not273 = icmp eq ptr %i.hh, %i.hi
  br i1 %.not273, label %._crit_edge259, label %.lr.ph258

._crit_edge259:                                   ; preds = %bb.ag, %bb.ab
  %.sroa.14.0.lcssa = phi float [ 0.000000e+00, %bb.ab ], [ %.sroa.14.1, %bb.ag ] ; 4 uses
  %i.hn = phi <2 x float> [ zeroinitializer, %bb.ab ], [ %i.ip, %bb.ag ] ; 5 uses
  %foldExtExtBinop332 = fmul <2 x float> %i.hn, %i.hn
  %i.ho = extractelement <2 x float> %foldExtExtBinop332, i64 1
  %i.hp = extractelement <2 x float> %i.hn, i64 0 ; 2 uses
  %i.hq = call float @llvm.fmuladd.f32(float %i.hp, float %i.hp, float %i.ho)
  %i.hr = call noundef float @llvm.fmuladd.f32(float %.sroa.14.0.lcssa, float %.sroa.14.0.lcssa, float %i.hq) ; 2 uses
  %i.hs = fcmp ogt float %i.hr, 0.000000e+00
  br i1 %i.hs, label %_ZN10aiVector3tIfEdVEf.exit.i159, label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit161

_ZN10aiVector3tIfEdVEf.exit.i159:                 ; preds = %._crit_edge259
  %sqrt.i.i160 = call noundef float @llvm.sqrt.f32(float %i.hr)
  %i.ht = fdiv float 1.000000e+00, %sqrt.i.i160   ; 2 uses
  %i.hu = insertelement <2 x float> poison, float %i.ht, i64 0
  %i.hv = shufflevector <2 x float> %i.hu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hw = fmul <2 x float> %i.hn, %i.hv
  %i.hx = fmul float %.sroa.14.0.lcssa, %i.ht
  br label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit161

bb.ac:                                            ; preds = %bb.aa
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit158

.lr.ph258:                                        ; preds = %bb.ab, %bb.ag
  %indvars.iv293 = phi i64 [ %indvars.iv.next294, %bb.ag ], [ 0, %bb.ab ] ; 2 uses
  %.sroa.14.0253 = phi float [ %.sroa.14.1, %bb.ag ], [ 0.000000e+00, %bb.ab ] ; 3 uses
  %i.hz = phi <2 x float> [ %i.ip, %bb.ag ], [ zeroinitializer, %bb.ab ] ; 3 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv293
  %i.ib = load i32, ptr %i.ia, align 4
  %i.ic = zext i32 %i.ib to i64                   ; 2 uses
  %i.id = getelementptr inbounds nuw [12 x i8], ptr %i.hf, i64 %i.ic ; 2 uses
  %i.ie = load <2 x float>, ptr %i.id, align 4    ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4 ; 2 uses
  %i.if = extractelement <2 x float> %i.ie, i64 0 ; 2 uses
  %i.ig = fcmp ord float %i.if, 0.000000e+00
  br i1 %i.ig, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %.lr.ph258
  %i.ih = icmp eq i64 %indvars.iv297, %i.ic
  br i1 %i.ih, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ii = extractelement <2 x float> %i.ie, i64 1
  %i.ij = fmul float %.sroa.5.0.copyload, %i.ii
  %i.ik = call float @llvm.fmuladd.f32(float %i.if, float %.sroa.0175.0.copyload, float %i.ij)
  %i.il = call noundef float @llvm.fmuladd.f32(float %.sroa.9.0.copyload, float %.sroa.6.0.copyload, float %i.ik)
  %i.im = fcmp ult float %i.il, %i.gz
  br i1 %i.im, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.in = fadd <2 x float> %i.hz, %i.ie
  %i.io = fadd float %.sroa.14.0253, %.sroa.9.0.copyload
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %.lr.ph258
  %.sroa.14.1 = phi float [ %i.io, %bb.af ], [ %.sroa.14.0253, %bb.ae ], [ %.sroa.14.0253, %.lr.ph258 ] ; 2 uses
  %i.ip = phi <2 x float> [ %i.in, %bb.af ], [ %i.hz, %bb.ae ], [ %i.hz, %.lr.ph258 ] ; 2 uses
  %indvars.iv.next294 = add i64 %indvars.iv293, 1 ; 2 uses
  %i.iq = and i64 %indvars.iv.next294, 4294967295
  %i.ir = icmp ugt i64 %i.hm, %i.iq
  br i1 %i.ir, label %.lr.ph258, label %._crit_edge259, !llvm.loop !13

_ZN10aiVector3tIfE13NormalizeSafeEv.exit161:      ; preds = %_ZN10aiVector3tIfEdVEf.exit.i159, %._crit_edge259
  %.sroa.14.2 = phi float [ %i.hx, %_ZN10aiVector3tIfEdVEf.exit.i159 ], [ %.sroa.14.0.lcssa, %._crit_edge259 ]
  %i.is = phi <2 x float> [ %i.hw, %_ZN10aiVector3tIfEdVEf.exit.i159 ], [ %i.hn, %._crit_edge259 ]
  %i.it = getelementptr inbounds nuw [12 x i8], ptr %i.dy, i64 %indvars.iv297 ; 2 uses
  store <2 x float> %i.is, ptr %i.it, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  store float %.sroa.14.2, ptr %.sroa.14.0..sroa_idx, align 4
  %indvars.iv.next298 = add nuw nsw i64 %indvars.iv297, 1 ; 2 uses
  %i.iu = load i32, ptr %i.j, align 4
  %i.iv = zext i32 %i.iu to i64
  %i.iw = icmp samesign ult i64 %indvars.iv.next298, %i.iv
  br i1 %i.iw, label %bb.aa, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, !llvm.loop !14

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZN10aiVector3tIfE13NormalizeSafeEv.exit161, %.thread217, %bb.z, %._crit_edge252
  %i.ix = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.iy = icmp eq ptr %i.ix, null
  br i1 %i.iy, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.ix) #21
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  store ptr %i.dy, ptr %i.b, align 8
  %i.iz = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.iz, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ja = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.jb = load ptr, ptr %i.ja, align 8
  %i.jc = ptrtoint ptr %i.jb to i64
  %i.jd = ptrtoint ptr %i.iz to i64
  %i.je = sub i64 %i.jc, %i.jd
  call void @_ZdlPvm(ptr noundef nonnull %i.iz, i64 noundef %i.je) #21
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.jf = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.jg = load ptr, ptr %i.jf, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.jg, null
  br i1 %.not.i.i.i.i, label %_ZN6Assimp11SpatialSortD2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.jh = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ji = load ptr, ptr %i.jh, align 8
  %i.jj = ptrtoint ptr %i.ji to i64
  %i.jk = ptrtoint ptr %i.jg to i64
  %i.jl = sub i64 %i.jj, %i.jk
  call void @_ZdlPvm(ptr noundef nonnull %i.jg, i64 noundef %i.jl) #21
  br label %_ZN6Assimp11SpatialSortD2Ev.exit

_ZN6Assimp11SpatialSortD2Ev.exit:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.ao

_ZNSt13_Bvector_baseISaIbEED2Ev.exit158:          ; preds = %bb.t, %.thread220, %bb.ac, %bb.s
  %.pn131.pn.pn.pn = phi { ptr, i32 } [ %i.hy, %bb.ac ], [ %i.er, %bb.s ], [ %i.fq, %.thread220 ], [ %i.es, %bb.t ]
  %i.jm = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i162 = icmp eq ptr %i.jm, null
  br i1 %.not.i.i.i162, label %_ZNSt6vectorIjSaIjEED2Ev.exit163, label %bb.al

bb.al:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit158
  %i.jn = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.jo = load ptr, ptr %i.jn, align 8
  %i.jp = ptrtoint ptr %i.jo to i64
  %i.jq = ptrtoint ptr %i.jm to i64
  %i.jr = sub i64 %i.jp, %i.jq
  call void @_ZdlPvm(ptr noundef nonnull %i.jm, i64 noundef %i.jr) #21
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit163

_ZNSt6vectorIjSaIjEED2Ev.exit163:                 ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit158, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit163, %bb.n, %bb.k
end_hunk_0
