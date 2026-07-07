inline.NumInlined: 526
inline.NumDeleted: 308
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6Assimp21GenFaceNormalsProcess18GenMeshFaceNormalsEP6aiMesh:bb.a
  store ptr %i.p, ptr %i.o, align 8
  br label %._crit_edge153

._crit_edge153:                                   ; preds = %bb.f, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.pre-phi = phi i64 [ %i.l, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ 0, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr null, ptr %3, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store ptr null, ptr %i.t, align 8
  invoke void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr null, i32 0, i64 noundef %.pre-phi, i1 noundef zeroext false)
          to label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit unwind label %bb.g

_ZNSt6vectorIbSaIbEE6resizeEmb.exit:              ; preds = %._crit_edge153
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.u = load i32, ptr %i.i, align 4              ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.not118 = icmp eq i32 %i.u, 0
  br i1 %.not118, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %_ZNSt6vectorIbSaIbEE6resizeEmb.exit
  %i.w = zext i32 %i.u to i64                     ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = shl nuw nsw i64 %i.w, 2
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #21
          to label %.noexc105 unwind label %.thread ; 9 uses

.noexc105:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  store i32 0, ptr %i.z, align 4
  %i.aa = add nsw i64 %i.w, -1                    ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc105
  %i.ac = getelementptr i8, ptr %i.z, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.aa, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ac, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc105
  store ptr %i.z, ptr %4, align 8
  %.idx = shl nuw nsw i64 %i.w, 2                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx ; 5 uses
  store ptr %i.ad, ptr %i.v, align 8
  store ptr %i.ad, ptr %i.x, align 8
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %n.vec = and i64 %i.ag, 9223372036854775800     ; 4 uses
  %i.ah = trunc i64 %n.vec to i32
  %i.ai = shl i64 %n.vec, 2
  %i.aj = getelementptr i8, ptr %i.z, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.ak = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.z, i64 %i.ak ; 2 uses
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep, align 4
  store <4 x i32> %step.add, ptr %i.al, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !7

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit, %middle.block
  %.07.i.ph = phi i32 [ 0, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ], [ %i.ah, %middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.z, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.07.i = phi i32 [ %i.an, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.02.06.i = phi ptr [ %i.ao, %.lr.ph.i ], [ %.sroa.02.06.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i32 %.07.i, ptr %.sroa.02.06.i, align 4
  %i.an = add nuw nsw i32 %.07.i, 1
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ao, %i.ad
  br i1 %.not.i, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !10

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit: ; preds = %.lr.ph.i, %middle.block, %_ZNSt6vectorIbSaIbEE6resizeEmb.exit
  %i.ap = phi ptr [ null, %_ZNSt6vectorIbSaIbEE6resizeEmb.exit ], [ %i.z, %middle.block ], [ %i.z, %.lr.ph.i ]
  %i.aq = phi ptr [ null, %_ZNSt6vectorIbSaIbEE6resizeEmb.exit ], [ %i.ad, %middle.block ], [ %i.ad, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr %3, ptr %5, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %4, ptr %i.as, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store <2 x float> splat (float +qnan), ptr %6, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float +qnan, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8
  %.not131 = icmp eq i32 %i.av, 0
  br i1 %.not131, label %._crit_edge130, label %.lr.ph129

.lr.ph129:                                        ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 26
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.i

._crit_edge130.loopexit:                          ; preds = %.loopexit122
  %.pre = load i32, ptr %i.i, align 4
  %.pre143 = load ptr, ptr %i.v, align 8
  %.pre144 = load ptr, ptr %4, align 8
  br label %._crit_edge130

._crit_edge130:                                   ; preds = %._crit_edge130.loopexit, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit
  %i.ba = phi ptr [ %.pre144, %._crit_edge130.loopexit ], [ %i.ap, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit ]
  %i.bb = phi ptr [ %.pre143, %._crit_edge130.loopexit ], [ %i.aq, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit ]
  %i.bc = phi i32 [ %.pre, %._crit_edge130.loopexit ], [ %i.u, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit ]
  %i.bd = zext i32 %i.bc to i64
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = ptrtoint ptr %i.ba to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 2 uses
  %i.bh = ashr exact i64 %i.bg, 2
  %.not66 = icmp eq i64 %i.bh, %i.bd
  br i1 %.not66, label %_ZN12_GLOBAL__N_119updateXMeshVerticesI6aiMeshEEvPT_RSt6vectorIiSaIiEE.exit, label %bb.p

bb.g:                                             ; preds = %._crit_edge153
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.thread:                                          ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit93

bb.h:                                             ; preds = %_ZN12_GLOBAL__N_119updateXMeshVerticesI6aiMeshEEvPT_RSt6vectorIiSaIiEE.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.i:                                             ; preds = %.lr.ph129, %.loopexit122
  %indvars.iv140 = phi i64 [ 0, %.lr.ph129 ], [ %indvars.iv.next141, %.loopexit122 ] ; 2 uses
  %i.bl = load ptr, ptr %i.aw, align 8
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %indvars.iv140 ; 5 uses
  %i.bn = load i32, ptr %i.bm, align 8            ; 3 uses
  %i.bo = icmp ult i32 %i.bn, 3
  br i1 %i.bo, label %.preheader, label %bb.m

.preheader:                                       ; preds = %bb.i
  %.not133 = icmp eq i32 %i.bn, 0
  br i1 %.not133, label %.loopexit122, label %.lr.ph127

.lr.ph127:                                        ; preds = %.preheader
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph127, %bb.k
  %indvars.iv137 = phi i64 [ 0, %.lr.ph127 ], [ %indvars.iv.next138, %bb.k ] ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv137
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = invoke fastcc noundef i32 @"_ZZN6Assimp21GenFaceNormalsProcess18GenMeshFaceNormalsEP6aiMeshENK3$_0clEjRK10aiVector3tIfE"(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.bs, ptr noundef nonnull align 4 dereferenceable(12) %6)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bu = load ptr, ptr %i.bp, align 8
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv137
  store i32 %i.bt, ptr %i.bv, align 4
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %i.bw = load i32, ptr %i.bm, align 8
  %i.bx = zext i32 %i.bw to i64
  %i.by = icmp samesign ult i64 %indvars.iv.next138, %i.bx
  br i1 %i.by, label %bb.j, label %.loopexit122, !llvm.loop !11

bb.l:                                             ; preds = %bb.j
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.m:                                             ; preds = %bb.i
  %i.ca = load ptr, ptr %i.ax, align 8            ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8            ; 3 uses
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [12 x i8], ptr %i.ca, i64 %i.ce ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [12 x i8], ptr %i.ca, i64 %i.ci ; 2 uses
  %i.ck = add i32 %i.bn, -1
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [12 x i8], ptr %i.ca, i64 %i.co ; 2 uses
  %i.cq = load i8, ptr %i.ay, align 1, !range !5, !noundef !6
  %i.cr = load i8, ptr %i.az, align 2, !range !5, !noundef !6
  %.not67 = icmp eq i8 %i.cq, %i.cr               ; 2 uses
  %spec.select = select i1 %.not67, ptr %i.cp, ptr %i.cj ; 3 uses
  %spec.select116 = select i1 %.not67, ptr %i.cj, ptr %i.cp ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.cs = load float, ptr %spec.select116, align 4
  %i.ct = load float, ptr %i.cf, align 4          ; 2 uses
  %8 = fsub float %i.cs, %i.ct                    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %spec.select116, i64 4
  %i.cv = load float, ptr %i.cu, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %9 = load float, ptr %i.cw, align 4             ; 2 uses
  %10 = fsub float %i.cv, %9                      ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %spec.select116, i64 8
  %12 = load float, ptr %11, align 4
  %13 = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %14 = load float, ptr %13, align 4              ; 2 uses
  %15 = fsub float %12, %14                       ; 2 uses
  %16 = load float, ptr %spec.select, align 4
  %17 = fsub float %16, %i.ct                     ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %spec.select, i64 4
  %19 = load float, ptr %18, align 4
  %20 = fsub float %19, %9                        ; 2 uses
  %21 = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %22 = load float, ptr %21, align 4
  %23 = fsub float %22, %14                       ; 2 uses
  %24 = fneg float %20
  %25 = fmul float %15, %24
  %26 = call float @llvm.fmuladd.f32(float %10, float %23, float %25) ; 4 uses
  %i.cx = fneg float %23
  %27 = fmul float %8, %i.cx
  %28 = call float @llvm.fmuladd.f32(float %15, float %17, float %27) ; 4 uses
  %29 = fneg float %17
  %30 = fmul float %10, %29
  %i.cy = call float @llvm.fmuladd.f32(float %8, float %20, float %30) ; 4 uses
  %.sroa.0.0.vec.insert.i84 = insertelement <2 x float> poison, float %26, i64 0
  %.sroa.0.4.vec.insert.i85 = insertelement <2 x float> %.sroa.0.0.vec.insert.i84, float %28, i64 1
  %31 = fmul float %28, %28
  %i.cz = call float @llvm.fmuladd.f32(float %26, float %26, float %31)
  %i.da = call noundef float @llvm.fmuladd.f32(float %i.cy, float %i.cy, float %i.cz) ; 2 uses
  %i.db = fcmp ogt float %i.da, 0.000000e+00
  br i1 %i.db, label %_ZN10aiVector3tIfEdVEf.exit.i, label %.lr.ph.preheader

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.m
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.da)
  %i.dc = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %32 = fmul float %26, %i.dc
  %.sroa.0108.0.vec.insert = insertelement <2 x float> poison, float %32, i64 0
  %33 = fmul float %28, %i.dc
  %.sroa.0108.4.vec.insert = insertelement <2 x float> %.sroa.0108.0.vec.insert, float %33, i64 1
  %i.dd = fmul float %i.cy, %i.dc
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.m, %_ZN10aiVector3tIfEdVEf.exit.i
  %.sroa.0108.0 = phi <2 x float> [ %.sroa.0108.4.vec.insert, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %.sroa.0.4.vec.insert.i85, %bb.m ]
  %.sroa.9.0 = phi float [ %i.dd, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %i.cy, %bb.m ]
  store <2 x float> %.sroa.0108.0, ptr %7, align 8
  store float %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %.loopexit122

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.n ] ; 3 uses
  %i.de = load ptr, ptr %i.cb, align 8
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = invoke fastcc noundef i32 @"_ZZN6Assimp21GenFaceNormalsProcess18GenMeshFaceNormalsEP6aiMeshENK3$_0clEjRK10aiVector3tIfE"(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.dg, ptr noundef nonnull align 4 dereferenceable(12) %7)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.di = load ptr, ptr %i.cb, align 8
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv
  store i32 %i.dh, ptr %i.dj, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dk = load i32, ptr %i.bm, align 8
  %i.dl = zext i32 %i.dk to i64
  %i.dm = icmp samesign ult i64 %indvars.iv.next, %i.dl
  br i1 %i.dm, label %.lr.ph, label %._crit_edge, !llvm.loop !12

bb.o:                                             ; preds = %.lr.ph
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.at

.loopexit122:                                     ; preds = %bb.k, %.preheader, %._crit_edge
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %i.do = load i32, ptr %i.au, align 8
  %i.dp = zext i32 %i.do to i64
  %i.dq = icmp samesign ult i64 %indvars.iv.next141, %i.dp
  br i1 %i.dq, label %bb.i, label %._crit_edge130.loopexit, !llvm.loop !13

bb.p:                                             ; preds = %._crit_edge130
  %i.dr = lshr exact i64 %i.bg, 2                 ; 2 uses
  %i.ds = trunc i64 %i.dr to i32                  ; 3 uses
  store i32 %i.ds, ptr %i.i, align 4
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.du = load ptr, ptr %i.dt, align 8            ; 4 uses
  %.not.i88 = icmp eq ptr %i.du, null
  br i1 %.not.i88, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = and i64 %i.dr, 4294967295
  %i.dw = mul nuw nsw i64 %i.dv, 12               ; 3 uses
  %i.dx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dw) #21
          to label %bb.r unwind label %_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit86.i ; 3 uses

bb.r:                                             ; preds = %bb.q
  %i.dy = icmp eq i32 %i.ds, 0
  br i1 %i.dy, label %.loopexit130.thread.i, label %.lr.ph.preheader.i

.loopexit130.thread.i:                            ; preds = %bb.r
  store ptr %i.dx, ptr %i.dt, align 8
  br label %_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit.i

.lr.ph.preheader.i:                               ; preds = %bb.r
  %i.dz = add nsw i64 %i.dw, -12
  %i.ea = urem i64 %i.dz, 12
  %i.eb = sub nsw i64 %i.dw, %i.ea
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dx, i8 0, i64 %i.eb, i1 false)
  store ptr %i.dx, ptr %i.dt, align 8
  br label %.lr.ph.i89

_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %.lr.ph.i89, %.loopexit130.thread.i
  call void @_ZdaPv(ptr noundef nonnull %i.du) #20
  %.pre146.pre150.pre = load i32, ptr %i.i, align 4
  br label %bb.s

_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit86.i: ; preds = %bb.q
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_9aiColor4tIfESt14default_deleteIS2_EED2Ev.exit103.i

.lr.ph.i89:                                       ; preds = %.lr.ph.i89, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i89 ] ; 3 uses
  %i.ed = load ptr, ptr %4, align 8
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.i
  %i.ef = load i32, ptr %i.ee, align 4
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [12 x i8], ptr %i.du, i64 %i.eg
  %i.ei = load ptr, ptr %i.dt, align 8
  %i.ej = getelementptr inbounds nuw [12 x i8], ptr %i.ei, i64 %indvars.iv.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ej, ptr noundef nonnull align 4 dereferenceable(12) %i.eh, i64 12, i1 false)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ek = load i32, ptr %i.i, align 4
  %i.el = zext i32 %i.ek to i64
  %i.em = icmp samesign ult i64 %indvars.iv.next.i, %i.el
  br i1 %i.em, label %.lr.ph.i89, label %_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit.i, !llvm.loop !14

bb.s:                                             ; preds = %_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit.i, %bb.p
  %.pre146.pre150 = phi i32 [ %.pre146.pre150.pre, %_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit.i ], [ %i.ds, %bb.p ] ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.eo = load ptr, ptr %i.en, align 8            ; 4 uses
  %.not81.i = icmp eq ptr %i.eo, null
  br i1 %.not81.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ep = zext i32 %.pre146.pre150 to i64
  %i.eq = mul nuw nsw i64 %i.ep, 12               ; 3 uses
  %i.er = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.eq) #21
          to label %bb.u unwind label %_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit92.i ; 3 uses

bb.u:                                             ; preds = %bb.t
  %i.es = icmp eq i32 %.pre146.pre150, 0
  br i1 %i.es, label %.loopexit129.thread.i, label %.lr.ph134.preheader.i

.loopexit129.thread.i:                            ; preds = %bb.u
  store ptr %i.er, ptr %i.en, align 8
  br label %_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit89.i

.lr.ph134.preheader.i:                            ; preds = %bb.u
  %i.et = add nsw i64 %i.eq, -12
  %i.eu = urem i64 %i.et, 12
  %i.ev = sub nsw i64 %i.eq, %i.eu
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.er, i8 0, i64 %i.ev, i1 false)
  store ptr %i.er, ptr %i.en, align 8
  br label %.lr.ph134.i

_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit89.i: ; preds = %.lr.ph134.i, %.loopexit129.thread.i
  call void @_ZdaPv(ptr noundef nonnull %i.eo) #20
  %.pre146.pre = load i32, ptr %i.i, align 4
  br label %bb.v

_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit92.i: ; preds = %bb.t
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_9aiColor4tIfESt14default_deleteIS2_EED2Ev.exit103.i

.lr.ph134.i:                                      ; preds = %.lr.ph134.i, %.lr.ph134.preheader.i
  %indvars.iv152.i = phi i64 [ 0, %.lr.ph134.preheader.i ], [ %indvars.iv.next153.i, %.lr.ph134.i ] ; 3 uses
  %i.ex = load ptr, ptr %4, align 8
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv152.i
  %i.ez = load i32, ptr %i.ey, align 4
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [12 x i8], ptr %i.eo, i64 %i.fa
  %i.fc = load ptr, ptr %i.en, align 8
  %i.fd = getelementptr inbounds nuw [12 x i8], ptr %i.fc, i64 %indvars.iv152.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fd, ptr noundef nonnull align 4 dereferenceable(12) %i.fb, i64 12, i1 false)
  %indvars.iv.next153.i = add nuw nsw i64 %indvars.iv152.i, 1 ; 2 uses
  %i.fe = load i32, ptr %i.i, align 4
  %i.ff = zext i32 %i.fe to i64
  %i.fg = icmp samesign ult i64 %indvars.iv.next153.i, %i.ff
  br i1 %i.fg, label %.lr.ph134.i, label %_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit89.i, !llvm.loop !15

bb.v:                                             ; preds = %_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit89.i, %bb.s
  %.pre146 = phi i32 [ %.pre146.pre, %_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit89.i ], [ %.pre146.pre150, %bb.s ] ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.fi = load ptr, ptr %i.fh, align 8            ; 4 uses
  %.not82.i = icmp eq ptr %i.fi, null
  br i1 %.not82.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fj = zext i32 %.pre146 to i64
  %i.fk = mul nuw nsw i64 %i.fj, 12               ; 3 uses
  %i.fl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fk) #21
          to label %bb.x unwind label %_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit98.i ; 3 uses

bb.x:                                             ; preds = %bb.w
  %i.fm = icmp eq i32 %.pre146, 0
  br i1 %i.fm, label %.loopexit128.thread.i, label %.lr.ph136.preheader.i

.loopexit128.thread.i:                            ; preds = %bb.x
  store ptr %i.fl, ptr %i.fh, align 8
  br label %_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit95.i

.lr.ph136.preheader.i:                            ; preds = %bb.x
  %i.fn = add nsw i64 %i.fk, -12
  %i.fo = urem i64 %i.fn, 12
  %i.fp = sub nsw i64 %i.fk, %i.fo
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fl, i8 0, i64 %i.fp, i1 false)
  store ptr %i.fl, ptr %i.fh, align 8
  br label %.lr.ph136.i

_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit95.i: ; preds = %.lr.ph136.i, %.loopexit128.thread.i
  call void @_ZdaPv(ptr noundef nonnull %i.fi) #20
  %.pre145 = load i32, ptr %i.i, align 4
  br label %bb.y

_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit98.i: ; preds = %bb.w
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_9aiColor4tIfESt14default_deleteIS2_EED2Ev.exit103.i

.lr.ph136.i:                                      ; preds = %.lr.ph136.i, %.lr.ph136.preheader.i
  %indvars.iv155.i = phi i64 [ 0, %.lr.ph136.preheader.i ], [ %indvars.iv.next156.i, %.lr.ph136.i ] ; 3 uses
  %i.fr = load ptr, ptr %4, align 8
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv155.i
  %i.ft = load i32, ptr %i.fs, align 4
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [12 x i8], ptr %i.fi, i64 %i.fu
  %i.fw = load ptr, ptr %i.fh, align 8
  %i.fx = getelementptr inbounds nuw [12 x i8], ptr %i.fw, i64 %indvars.iv155.i
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb:bb.a
  %i.ed = trunc i64 %i.dy to i32
  %i.ee = and i32 %i.ed, 63                       ; 6 uses
  %.not.i.i.i89 = icmp eq i64 %i.ec, 0
  br i1 %.not.i.i.i89, label %bb.ag, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit
  %.not26.i.i.i90 = icmp eq i32 %.sroa.55.0.lcssa.i.i.i.i.i.i, 0
  br i1 %.not26.i.i.i90, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, i64 8
  %i.eg = shl nsw i64 -1, %i.dx                   ; 2 uses
  br i1 %4, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.eh = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8
  %i.ei = or i64 %i.eh, %i.eg
  br label %_ZSt14__fill_bvectorPmjjb.exit.i.i.i91

bb.ab:                                            ; preds = %bb.z
  %i.ej = xor i64 %i.eg, -1
  %i.ek = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8
  %i.el = and i64 %i.ek, %i.ej
  br label %_ZSt14__fill_bvectorPmjjb.exit.i.i.i91

_ZSt14__fill_bvectorPmjjb.exit.i.i.i91:           ; preds = %bb.ab, %bb.aa
  %storemerge.i.i.i.i92 = phi i64 [ %i.el, %bb.ab ], [ %i.ei, %bb.aa ]
  store i64 %storemerge.i.i.i.i92, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %_ZSt14__fill_bvectorPmjjb.exit.i.i.i91, %bb.y
  %.0.i.i.i93 = phi ptr [ %i.ef, %_ZSt14__fill_bvectorPmjjb.exit.i.i.i91 ], [ %.sroa.03.0.lcssa.i.i.i.i.i.i, %bb.y ] ; 2 uses
  %i.em = ptrtoint ptr %storemerge.i.i.i86 to i64
  %i.en = ptrtoint ptr %.0.i.i.i93 to i64
  %i.eo = sub i64 %i.em, %i.en
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i.i.i93, i8 %.neg, i64 %i.eo, i1 false)
  %.not27.i.i.i94 = icmp eq i32 %i.ee, 0
  br i1 %.not27.i.i.i94, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit100, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ep = sub nuw nsw i32 64, %i.ee
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = lshr i64 -1, %i.eq                      ; 2 uses
  br i1 %4, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.es = load i64, ptr %storemerge.i.i.i86, align 8
  %i.et = or i64 %i.es, %i.er
  br label %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i95

bb.af:                                            ; preds = %bb.ad
  %i.eu = xor i64 %i.er, -1
  %i.ev = load i64, ptr %storemerge.i.i.i86, align 8
  %i.ew = and i64 %i.ev, %i.eu
  br label %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i95

_ZSt14__fill_bvectorPmjjb.exit29.i.i.i95:         ; preds = %bb.af, %bb.ae
  %storemerge.i28.i.i.i96 = phi i64 [ %i.ew, %bb.af ], [ %i.et, %bb.ae ]
  store i64 %storemerge.i28.i.i.i96, ptr %storemerge.i.i.i86, align 8
  br label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit100

bb.ag:                                            ; preds = %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit
  %.not25.i.i.i97 = icmp eq i32 %.sroa.55.0.lcssa.i.i.i.i.i.i, %i.ee
  br i1 %.not25.i.i.i97, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit100, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ex = shl nsw i64 -1, %i.dx
  %i.ey = sub nuw nsw i32 64, %i.ee
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = lshr i64 -1, %i.ez
  %i.fb = and i64 %i.fa, %i.ex                    ; 2 uses
  br i1 %4, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fc = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8
  %i.fd = or i64 %i.fc, %i.fb
  br label %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i98

bb.aj:                                            ; preds = %bb.ah
  %i.fe = xor i64 %i.fb, -1
  %i.ff = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8
  %i.fg = and i64 %i.ff, %i.fe
  br label %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i98

_ZSt14__fill_bvectorPmjjb.exit31.i.i.i98:         ; preds = %bb.aj, %bb.ai
  %storemerge.i30.i.i.i99 = phi i64 [ %i.fg, %bb.aj ], [ %i.fd, %bb.ai ]
  store i64 %storemerge.i30.i.i.i99, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8
  br label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit100

_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit100: ; preds = %bb.ac, %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i95, %bb.ag, %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i98
  %.sroa.0.0.copyload.i101 = load ptr, ptr %i.i, align 8
  %.sroa.2.0.copyload.i103 = load i32, ptr %i.k, align 8
  %i.fh = ptrtoint ptr %.sroa.0.0.copyload.i101 to i64
  %i.fi = sub i64 %i.fh, %i.cz
  %i.fj = shl nsw i64 %i.fi, 3
  %i.fk = zext i32 %.sroa.2.0.copyload.i103 to i64
  %i.fl = zext i32 %2 to i64
  %i.fm = sub nsw i64 %i.fk, %i.fl
  %i.fn = add i64 %i.fm, %i.fj                    ; 2 uses
  %i.fo = icmp sgt i64 %i.fn, 0
  br i1 %i.fo, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit100, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i121
  %.024.i.i.i.i.i117 = phi i64 [ %i.ge, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i121 ], [ %i.fn, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit100 ] ; 2 uses
  %.sroa.516.023.i.i.i.i.i = phi i32 [ %spec.select19.i.i.i.i.i125, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i121 ], [ %2, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit100 ] ; 3 uses
  %.sroa.013.022.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i124, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i121 ], [ %1, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit100 ] ; 2 uses
  %.sroa.59.021.i.i.i.i.i118 = phi i32 [ %.sroa.59.1.i.i.i.i.i128, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i121 ], [ %i.ee, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit100 ] ; 3 uses
  %.sroa.07.020.i.i.i.i.i119 = phi ptr [ %.sroa.07.1.i.i.i.i.i127, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i121 ], [ %storemerge.i.i.i86, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit100 ] ; 4 uses
  %i.fp = zext nneg i32 %.sroa.516.023.i.i.i.i.i to i64
  %i.fq = shl nuw i64 1, %i.fp
  %i.fr = zext nneg i32 %.sroa.59.021.i.i.i.i.i118 to i64
  %i.fs = shl nuw i64 1, %i.fr                    ; 2 uses
  %i.ft = load i64, ptr %.sroa.013.022.i.i.i.i.i, align 8
  %i.fu = and i64 %i.ft, %i.fq
  %.not.i.i.i.i.i.i120 = icmp eq i64 %i.fu, 0
  br i1 %.not.i.i.i.i.i.i120, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.fv = load i64, ptr %.sroa.07.020.i.i.i.i.i119, align 8
  %i.fw = or i64 %i.fv, %i.fs
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i121

bb.al:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.fx = xor i64 %i.fs, -1
  %i.fy = load i64, ptr %.sroa.07.020.i.i.i.i.i119, align 8
  %i.fz = and i64 %i.fy, %i.fx
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i121

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i121:   ; preds = %bb.al, %bb.ak
  %storemerge.i.i.i.i.i122 = phi i64 [ %i.fw, %bb.ak ], [ %i.fz, %bb.al ]
  store i64 %storemerge.i.i.i.i.i122, ptr %.sroa.07.020.i.i.i.i.i119, align 8
  %i.ga = add i32 %.sroa.516.023.i.i.i.i.i, 1
  %i.gb = icmp eq i32 %.sroa.516.023.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i123 = select i1 %i.gb, i64 8, i64 0
  %spec.select.i.i.i.i.i124 = getelementptr inbounds nuw i8, ptr %.sroa.013.022.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i123
  %spec.select19.i.i.i.i.i125 = select i1 %i.gb, i32 0, i32 %i.ga
  %i.gc = add i32 %.sroa.59.021.i.i.i.i.i118, 1
  %i.gd = icmp eq i32 %.sroa.59.021.i.i.i.i.i118, 63 ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i126 = select i1 %i.gd, i64 8, i64 0
  %.sroa.07.1.i.i.i.i.i127 = getelementptr inbounds nuw i8, ptr %.sroa.07.020.i.i.i.i.i119, i64 %.sroa.07.1.idx.i.i.i.i.i126 ; 2 uses
  %.sroa.59.1.i.i.i.i.i128 = select i1 %i.gd, i32 0, i32 %i.gc ; 2 uses
  %i.ge = add nsw i64 %.024.i.i.i.i.i117, -1
  %i.gf = icmp sgt i64 %.024.i.i.i.i.i117, 1
  br i1 %i.gf, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !38

_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit:  ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i121, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit100
  %.sroa.07.0.lcssa.i.i.i.i.i113 = phi ptr [ %storemerge.i.i.i86, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit100 ], [ %.sroa.07.1.i.i.i.i.i127, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i121 ]
  %.sroa.59.0.lcssa.i.i.i.i.i114 = phi i32 [ %i.ee, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit100 ], [ %.sroa.59.1.i.i.i.i.i128, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i121 ]
  %i.gg = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i129 = icmp eq ptr %i.gg, null
  br i1 %.not.i129, label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit, label %bb.am

bb.am:                                            ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.gh = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = ptrtoint ptr %i.gg to i64
  %i.gk = sub i64 %i.gi, %i.gj                    ; 2 uses
  %i.gl = ashr exact i64 %i.gk, 3
  %i.gm = sub nsw i64 0, %i.gl
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.gh, i64 %i.gm
  tail call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gk) #20
  br label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit

_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit: ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, %bb.am
  %i.go = lshr i64 %i.cv, 6
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.go
  store ptr %i.gp, ptr %i.b, align 8
  store ptr %i.cy, ptr %0, align 8
  %.sroa.5137.0..sroa_idx138 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.5137.0..sroa_idx138, align 8
  store ptr %.sroa.07.0.lcssa.i.i.i.i.i113, ptr %i.i, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit
  %.sroa.59.0.lcssa.i.i.i.i.i114.sink = phi i32 [ %.sroa.59.0.lcssa.i.i.i.i.i114, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit ], [ %i.co, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit ]
  store i32 %.sroa.59.0.lcssa.i.i.i.i.i114.sink, ptr %i.k, align 8
  br label %bb.an

bb.an:                                            ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nounwind }
attributes #19 = { noreturn }
attributes #20 = { builtin nounwind }
attributes #21 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = distinct !{!7, !4, !8, !9}
!8 = !{!"llvm.loop.isvectorized", i32 1}
!9 = !{!"llvm.loop.unroll.runtime.disable"}
!10 = distinct !{!10, !4, !9, !8}
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !4}
!14 = distinct !{!14, !4}
!15 = distinct !{!15, !4}
!16 = distinct !{!16, !4}
!17 = distinct !{!17, !4}
!18 = distinct !{!18, !4}
!19 = !{i64 8}
!20 = !{!21, !23}
!21 = distinct !{!21, !22, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!22 = distinct !{!22, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!23 = distinct !{!23, !22, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!24 = distinct !{!24, !4}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!27 = distinct !{!27, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!30 = distinct !{!30, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!33 = distinct !{!33, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!34 = !{!32, !29, !26}
!35 = distinct !{!35, !4}
!36 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!37 = distinct !{!37, !4}
!38 = distinct !{!38, !4}
end_hunk_1
