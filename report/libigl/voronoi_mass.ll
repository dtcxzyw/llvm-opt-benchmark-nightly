Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/voronoi_mass?download=true
inline.NumInlined: 2475
inline.NumDeleted: 1221
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN3igl12voronoi_massIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE:bb.a
  store double %i.lx, ptr %i.hz, align 8, !tbaa !37
  %i.ly = getelementptr inbounds [8 x i8], ptr %i.lu, i64 %i.jy
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !37
  %i.ma = fadd double %i.lz, %i.kb
  %i.mb = fmul double %i.ma, 5.000000e-01
  store double %i.mb, ptr %i.ia, align 8, !tbaa !37
  %i.mc = getelementptr inbounds i8, ptr %i.lu, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i242
  %i.md = load double, ptr %i.mc, align 8, !tbaa !37
  %i.me = fadd double %i.md, %i.kd
  %i.mf = fmul double %i.me, 5.000000e-01
  store double %i.mf, ptr %i.ib, align 8, !tbaa !37
  %i.mg = load ptr, ptr %4, align 8, !tbaa !23
  %i.mh = load i64, ptr %i.bt, align 8, !tbaa !22 ; 3 uses
  %i.mi = mul nsw i64 %i.mh, %i.kf
  %i.mj = getelementptr [4 x i8], ptr %i.mg, i64 %indvars.iv868 ; 3 uses
  %i.mk = getelementptr [4 x i8], ptr %i.mj, i64 %i.mi
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !16
  %i.mm = sext i32 %i.ml to i64
  %i.mn = load ptr, ptr %8, align 8, !tbaa !32, !noalias !148 ; 3 uses
  %i.mo = getelementptr inbounds [8 x i8], ptr %i.mn, i64 %i.mm ; 3 uses
  %i.mp = load i64, ptr %i.gy, align 8, !tbaa !33, !noalias !149 ; 4 uses
  %i.mq = load double, ptr %i.mo, align 8, !tbaa !37, !noalias !149
  store double %i.mq, ptr %i.gx, align 16, !tbaa !37, !noalias !149
  %i.mr = getelementptr [8 x i8], ptr %i.mo, i64 %i.mp
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !37, !noalias !149
  store double %i.ms, ptr %i.gz, align 16, !tbaa !37, !noalias !149
  %.idx.i.i = shl i64 %i.mp, 4                    ; 3 uses
  %i.mt = getelementptr i8, ptr %i.mo, i64 %.idx.i.i
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !37, !noalias !149
  store double %i.mu, ptr %i.ha, align 16, !tbaa !37, !noalias !149
  %i.mv = and i64 %indvars.iv864, 4294967295
  %i.mw = xor i64 %i.mv, 2
  %i.mx = mul nsw i64 %i.mh, %i.mw
  %i.my = getelementptr [4 x i8], ptr %i.mj, i64 %i.mx
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !16
  %i.na = sext i32 %i.mz to i64
  %i.nb = getelementptr inbounds [8 x i8], ptr %i.mn, i64 %i.na ; 3 uses
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !37
  store double %i.nc, ptr %i.hb, align 8, !tbaa !37
  %i.nd = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %i.mp
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !37
  store double %i.ne, ptr %i.hc, align 8, !tbaa !37
  %i.nf = getelementptr inbounds i8, ptr %i.nb, i64 %.idx.i.i
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !37
  store double %i.ng, ptr %i.hd, align 8, !tbaa !37
  %i.nh = mul nsw i64 %i.mh, %i.lp
  %i.ni = getelementptr [4 x i8], ptr %i.mj, i64 %i.nh
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !16
  %i.nk = sext i32 %i.nj to i64
  %i.nl = getelementptr inbounds [8 x i8], ptr %i.mn, i64 %i.nk ; 3 uses
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !37
  store double %i.nm, ptr %i.he, align 16, !tbaa !37
  %i.nn = getelementptr inbounds [8 x i8], ptr %i.nl, i64 %i.mp
  %i.no = load double, ptr %i.nn, align 8, !tbaa !37
  store double %i.no, ptr %i.hf, align 16, !tbaa !37
  %i.np = getelementptr inbounds i8, ptr %i.nl, i64 %.idx.i.i
  %i.nq = load double, ptr %i.np, align 8, !tbaa !37
  store double %i.nq, ptr %i.hg, align 16, !tbaa !37
  %i.nr = load ptr, ptr %11, align 8, !tbaa !32, !noalias !150
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %indvars.iv868 ; 3 uses
  %i.nt = load i64, ptr %i.hi, align 8, !tbaa !33 ; 2 uses
  %i.nu = load double, ptr %i.ns, align 8, !tbaa !37
  store double %i.nu, ptr %i.hh, align 8, !tbaa !37
  %i.nv = getelementptr inbounds [8 x i8], ptr %i.ns, i64 %i.nt
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !37
  store double %i.nw, ptr %i.hj, align 8, !tbaa !37
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i255 = shl nsw i64 %i.nt, 4
  %i.nx = getelementptr inbounds i8, ptr %i.ns, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i255
  %i.ny = load double, ptr %i.nx, align 8, !tbaa !37
  store double %i.ny, ptr %i.hk, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #10
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %15, align 16, !tbaa !16
  store <4 x i32> <i32 2, i32 3, i32 1, i32 2>, ptr %i.hl, align 16, !tbaa !16
  store <4 x i32> <i32 0, i32 0, i32 0, i32 4>, ptr %i.hm, align 16, !tbaa !16
  store <4 x i32> <i32 7, i32 7, i32 4, i32 5>, ptr %i.hn, align 16, !tbaa !16
  store <4 x i32> <i32 3, i32 1, i32 0, i32 0>, ptr %i.ho, align 16, !tbaa !16
  store <4 x i32> <i32 5, i32 6, i32 3, i32 1>, ptr %i.hp, align 16, !tbaa !16
  store <4 x i32> <i32 6, i32 7, i32 7, i32 7>, ptr %i.hq, align 16, !tbaa !16
  store <4 x i32> <i32 0, i32 4, i32 5, i32 6>, ptr %i.hr, align 16, !tbaa !16
  store <4 x i32> <i32 2, i32 3, i32 1, i32 2>, ptr %i.hs, align 16, !tbaa !16
  %i.nz = and i64 %indvars.iv864, 1
  %.not = icmp eq i64 %i.nz, 0
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.oa = load <2 x i64>, ptr %i.hm, align 16, !tbaa !44, !noalias !151
  %i.ob = load <2 x i64>, ptr %i.hp, align 16, !tbaa !44, !noalias !151
  %i.oc = load <2 x i64>, ptr %i.hs, align 16, !tbaa !44, !noalias !151
  %i.od = load <2 x i64>, ptr %15, align 16, !tbaa !44, !noalias !151
  %i.oe = load <2 x i64>, ptr %i.hn, align 16, !tbaa !44, !noalias !151
  %i.of = load <2 x i64>, ptr %i.hq, align 16, !tbaa !44, !noalias !151
  store <2 x i64> %i.oa, ptr %15, align 16, !tbaa !44
  store <2 x i64> %i.ob, ptr %i.hn, align 16, !tbaa !44
  store <2 x i64> %i.oc, ptr %i.hq, align 16, !tbaa !44
  store <2 x i64> %i.od, ptr %i.hm, align 16, !tbaa !44
  store <2 x i64> %i.oe, ptr %i.hp, align 16, !tbaa !44
  store <2 x i64> %i.of, ptr %i.hs, align 16, !tbaa !44
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #10
  invoke void @_ZN3igl8centroidIN5Eigen6MatrixIdLi8ELi3ELi0ELi8ELi3EEENS2_IiLi12ELi3ELi0ELi12ELi3EEENS2_IdLi1ELi3ELi1ELi1ELi3EEEdEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EERT2_(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #10
  %i.og = load double, ptr %i.a, align 8, !tbaa !37
  %i.oh = load ptr, ptr %1, align 8, !tbaa !15    ; 3 uses
  %i.oi = load i64, ptr %i.b, align 8, !tbaa !13  ; 4 uses
  %i.oj = mul nsw i64 %i.oi, %indvars.iv864
  %i.ok = getelementptr [4 x i8], ptr %i.oh, i64 %indvars.iv868
  %i.ol = getelementptr [4 x i8], ptr %i.ok, i64 %i.oj
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !16
  %i.on = sext i32 %i.om to i64
  %i.oo = load ptr, ptr %2, align 8, !tbaa !35
  %i.op = getelementptr inbounds [8 x i8], ptr %i.oo, i64 %i.on ; 2 uses
  %i.oq = load double, ptr %i.op, align 8, !tbaa !37
  %i.or = fadd double %i.og, %i.oq
  store double %i.or, ptr %i.op, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #10
  %exitcond867.not = icmp eq i64 %i.ke, 4
  br i1 %exitcond867.not, label %bb.s, label %bb.t, !llvm.loop !143

bb.x:                                             ; preds = %bb.v
  %i.os = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #10
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.r, %bb.n
  %.pn211.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ic, %bb.n ], [ %i.os, %bb.x ], [ %i.jn, %bb.r ]
  %i.ot = load ptr, ptr %11, align 8, !tbaa !32
  call void @free(ptr noundef %i.ot) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.h
  %.pn219.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.du, %bb.h ], [ %.pn211.pn.pn.pn.pn.pn, %bb.y ]
  %i.ou = load ptr, ptr %8, align 8, !tbaa !32
  call void @free(ptr noundef %i.ou) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.body
  %.pn229.pn.pn.pn = phi { ptr, i32 } [ %.pn229.pn.pn, %.body ], [ %.pn219.pn.pn.pn.pn.pn.pn.pn, %bb.z ]
  %i.ov = load ptr, ptr %4, align 8, !tbaa !23
  call void @free(ptr noundef %i.ov) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.ow = load ptr, ptr %3, align 8, !tbaa !28
  call void @free(ptr noundef %i.ow) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  resume { ptr, i32 } %.pn229.pn.pn.pn
}

declare void @_ZN3igl12circumradiusIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEENS2_IdLin1ELi1ELi0ELin1ELi1EEES3_S3_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EERNSF_IT2_EERNSF_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN3igl12circumradiusIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEES3_NS2_IdLin1ELi4ELi0ELin1ELi4EEEEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERNS1_15PlainObjectBaseIT1_EERNSG_IT2_EERNSG_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl12voronoi_massIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi4ELi0ELin1ELi4EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix", align 8     ; 10 uses
  %4 = alloca %"class.Eigen::Matrix.3", align 8   ; 11 uses
  %5 = alloca %"class.Eigen::Matrix", align 8     ; 10 uses
  %6 = alloca %"class.Eigen::Matrix.26", align 8  ; 7 uses
  %7 = alloca %"class.Eigen::Matrix.26", align 8  ; 8 uses
  %8 = alloca %"class.Eigen::Matrix.43", align 8  ; 13 uses
  %9 = alloca %"class.Eigen::Matrix.52", align 8  ; 7 uses
  %10 = alloca %"class.Eigen::Matrix.43", align 8 ; 8 uses
  %11 = alloca %"class.Eigen::Matrix.43", align 8 ; 11 uses
  %12 = alloca %"class.Eigen::Matrix.52", align 8 ; 7 uses
  %13 = alloca %"class.Eigen::Matrix.104", align 8 ; 8 uses
  %14 = alloca %"class.Eigen::Matrix.126", align 16 ; 28 uses
  %15 = alloca %"class.Eigen::Matrix.179", align 16 ; 15 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %16 = alloca %"class.Eigen::Matrix.195", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !22
  %i.d = shl nsw i64 %i.c, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef %i.d, i64 noundef 3)
          to label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2IliEERKT_RKT0_.exit.preheader unwind label %bb.b

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2IliEERKT_RKT0_.exit.preheader: ; preds = %bb.a
  %i.e = load i64, ptr %i.b, align 8, !tbaa !22   ; 15 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.preheader838.lr.ph, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2IliEERKT_RKT0_.exit._crit_edge

.preheader838.lr.ph:                              ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2IliEERKT_RKT0_.exit.preheader
  %i.g = load ptr, ptr %5, align 8, !tbaa !28, !noalias !196 ; 22 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !23     ; 18 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !29   ; 10 uses
  %.idx = shl i64 %i.j, 3                         ; 14 uses
  %i.k = shl nuw nsw i64 %i.e, 1                  ; 4 uses
  %i.l = mul nuw nsw i64 %i.e, 3                  ; 4 uses
  %min.iters.check = icmp ult i64 %i.e, 176
  br i1 %min.iters.check, label %.preheader838.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader838.lr.ph
  %i.m = shl i64 %i.e, 2                          ; 5 uses
  %i.n = getelementptr i8, ptr %i.g, i64 %i.m     ; 16 uses
  %i.o = shl i64 %i.j, 2                          ; 6 uses
  %i.p = getelementptr i8, ptr %i.g, i64 %i.o     ; 15 uses
  %i.q = getelementptr i8, ptr %i.g, i64 %i.o
  %i.r = getelementptr i8, ptr %i.q, i64 %i.m     ; 15 uses
  %i.s = getelementptr i8, ptr %i.g, i64 %.idx    ; 14 uses
  %i.t = getelementptr i8, ptr %i.g, i64 %.idx
  %i.u = getelementptr i8, ptr %i.t, i64 %i.m     ; 27 uses
  %i.v = shl i64 %i.e, 3                          ; 5 uses
  %i.w = getelementptr i8, ptr %i.g, i64 %i.v     ; 25 uses
  %i.x = getelementptr i8, ptr %i.g, i64 %i.m
  %i.y = getelementptr i8, ptr %i.x, i64 %i.o     ; 14 uses
  %i.z = getelementptr i8, ptr %i.g, i64 %i.v
  %i.aa = getelementptr i8, ptr %i.z, i64 %i.o    ; 26 uses
  %i.ab = getelementptr i8, ptr %i.g, i64 %.idx
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.v   ; 14 uses
  %i.ad = mul i64 %i.e, 12                        ; 4 uses
  %i.ae = getelementptr i8, ptr %i.g, i64 %i.ad   ; 26 uses
  %i.af = getelementptr i8, ptr %i.g, i64 %i.ad
  %i.ag = getelementptr i8, ptr %i.af, i64 %i.o   ; 26 uses
  %i.ah = getelementptr i8, ptr %i.g, i64 %i.v
  %i.ai = getelementptr i8, ptr %i.ah, i64 %.idx  ; 14 uses
  %i.aj = getelementptr i8, ptr %i.g, i64 %i.ad
  %i.ak = getelementptr i8, ptr %i.aj, i64 %.idx  ; 28 uses
  %i.al = shl i64 %i.e, 4                         ; 4 uses
  %i.am = getelementptr i8, ptr %i.g, i64 %i.al   ; 14 uses
  %i.an = getelementptr i8, ptr %i.g, i64 %i.al
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.o   ; 14 uses
  %i.ap = getelementptr i8, ptr %i.g, i64 %i.al
  %i.aq = getelementptr i8, ptr %i.ap, i64 %.idx  ; 14 uses
  %i.ar = getelementptr i8, ptr %i.h, i64 %i.m    ; 24 uses
  %i.as = getelementptr i8, ptr %i.h, i64 %i.ad   ; 16 uses
  %i.at = getelementptr i8, ptr %i.h, i64 %i.al   ; 12 uses
  %i.au = getelementptr i8, ptr %i.h, i64 %i.v    ; 16 uses
  %17 = insertelement <8 x ptr> poison, ptr %i.g, i64 0
  %18 = shufflevector <8 x ptr> %17, <8 x ptr> poison, <8 x i32> zeroinitializer
  %19 = insertelement <8 x ptr> poison, ptr %i.r, i64 0
  %20 = insertelement <8 x ptr> %19, ptr %i.u, i64 1
  %21 = insertelement <8 x ptr> %20, ptr %i.aa, i64 2
  %22 = insertelement <8 x ptr> %21, ptr %i.ac, i64 3
  %23 = insertelement <8 x ptr> %22, ptr %i.ae, i64 4
  %24 = insertelement <8 x ptr> %23, ptr %i.ag, i64 5
  %25 = insertelement <8 x ptr> %24, ptr %i.ak, i64 6
  %26 = insertelement <8 x ptr> %25, ptr %i.am, i64 7
  %27 = icmp ult <8 x ptr> %18, %26
  %28 = insertelement <8 x ptr> poison, ptr %i.p, i64 0
  %29 = insertelement <8 x ptr> %28, ptr %i.s, i64 1
  %30 = insertelement <8 x ptr> %29, ptr %i.y, i64 2
  %31 = insertelement <8 x ptr> %30, ptr %i.u, i64 3
  %32 = insertelement <8 x ptr> %31, ptr %i.w, i64 4
  %33 = insertelement <8 x ptr> %32, ptr %i.aa, i64 5
  %34 = insertelement <8 x ptr> %33, ptr %i.ai, i64 6
  %35 = insertelement <8 x ptr> %34, ptr %i.ae, i64 7
  %36 = insertelement <8 x ptr> poison, ptr %i.n, i64 0
  %37 = shufflevector <8 x ptr> %36, <8 x ptr> poison, <8 x i32> zeroinitializer
  %38 = icmp ult <8 x ptr> %35, %37
  %39 = and <8 x i1> %27, %38                     ; 2 uses
  %40 = insertelement <4 x ptr> poison, ptr %i.g, i64 0
  %41 = shufflevector <4 x ptr> %40, <4 x ptr> poison, <4 x i32> zeroinitializer
  %42 = insertelement <4 x ptr> poison, ptr %i.ao, i64 0
  %43 = insertelement <4 x ptr> %42, ptr %i.aq, i64 1
  %44 = insertelement <4 x ptr> %43, ptr %i.ar, i64 2
  %45 = insertelement <4 x ptr> %44, ptr %i.at, i64 3
  %46 = icmp ult <4 x ptr> %41, %45
  %47 = insertelement <4 x ptr> poison, ptr %i.ag, i64 0 ; 2 uses
  %48 = insertelement <4 x ptr> %47, ptr %i.ak, i64 1
  %49 = insertelement <4 x ptr> %48, ptr %i.h, i64 2
  %50 = insertelement <4 x ptr> %49, ptr %i.as, i64 3
  %51 = insertelement <4 x ptr> poison, ptr %i.n, i64 0 ; 2 uses
  %52 = shufflevector <4 x ptr> %51, <4 x ptr> poison, <4 x i32> zeroinitializer
  %53 = icmp ult <4 x ptr> %50, %52
  %54 = and <4 x i1> %46, %53
  %bound01383.a = icmp ult ptr %i.g, %i.as
  %bound11384.a = icmp ult ptr %i.au, %i.n
  %found.conflict1385.a = and i1 %bound01383.a, %bound11384.a
  %bound01387 = icmp ult ptr %i.g, %i.au
  %bound11388.a = icmp ult ptr %i.ar, %i.n
  %found.conflict1389 = and i1 %bound01387, %bound11388.a
  %bound01391.a = icmp ult ptr %i.p, %i.u
  %bound11392 = icmp ult ptr %i.s, %i.r
  %found.conflict1393 = and i1 %bound01391.a, %bound11392
  %bound01395.a = icmp ult ptr %i.p, %i.w
  %bound11396.a = icmp ult ptr %i.n, %i.r
  %found.conflict1397.a = and i1 %bound01395.a, %bound11396.a
  %bound01399 = icmp ult ptr %i.p, %i.aa
  %bound11400.a = icmp ult ptr %i.y, %i.r
  %found.conflict1401 = and i1 %bound01399, %bound11400.a
  %bound01403.a = icmp ult ptr %i.p, %i.ac
  %bound11404 = icmp ult ptr %i.u, %i.r
  %found.conflict1405 = and i1 %bound01403.a, %bound11404
  %bound01407.a = icmp ult ptr %i.p, %i.ae
  %bound11408.a = icmp ult ptr %i.w, %i.r
  %found.conflict1409.a = and i1 %bound01407.a, %bound11408.a
  %bound01411 = icmp ult ptr %i.p, %i.ag
  %bound11412.a = icmp ult ptr %i.aa, %i.r
  %found.conflict1413 = and i1 %bound01411, %bound11412.a
  %bound01415.a = icmp ult ptr %i.p, %i.ak
  %bound11416 = icmp ult ptr %i.ai, %i.r
  %found.conflict1417 = and i1 %bound01415.a, %bound11416
  %bound01419.a = icmp ult ptr %i.p, %i.am
  %bound11420.a = icmp ult ptr %i.ae, %i.r
  %found.conflict1421.a = and i1 %bound01419.a, %bound11420.a
  %bound01423 = icmp ult ptr %i.p, %i.ao
  %bound11424.a = icmp ult ptr %i.ag, %i.r
  %found.conflict1425 = and i1 %bound01423, %bound11424.a
  %bound01427.a = icmp ult ptr %i.p, %i.aq
  %bound11428 = icmp ult ptr %i.ak, %i.r
  %found.conflict1429 = and i1 %bound01427.a, %bound11428
  %bound01431.a = icmp ult ptr %i.p, %i.ar
  %bound11432.a = icmp ult ptr %i.h, %i.r
  %found.conflict1433.a = and i1 %bound01431.a, %bound11432.a
  %bound01435 = icmp ult ptr %i.p, %i.at
  %bound11436.a = icmp ult ptr %i.as, %i.r
  %found.conflict1437 = and i1 %bound01435, %bound11436.a
  %55 = insertelement <4 x ptr> poison, ptr %i.au, i64 0 ; 9 uses
  %56 = insertelement <4 x ptr> %55, ptr %i.p, i64 1
  %57 = insertelement <4 x ptr> %56, ptr %i.n, i64 2
  %58 = insertelement <4 x ptr> %57, ptr %i.s, i64 3
  %59 = insertelement <4 x ptr> poison, ptr %i.r, i64 0
  %60 = insertelement <4 x ptr> %59, ptr %i.au, i64 1
  %61 = insertelement <4 x ptr> %60, ptr %i.u, i64 2
  %62 = insertelement <4 x ptr> %61, ptr %i.aa, i64 3
  %63 = icmp ult <4 x ptr> %58, %62
  %64 = insertelement <4 x ptr> poison, ptr %i.p, i64 0
  %65 = insertelement <4 x ptr> %64, ptr %i.ar, i64 1
  %66 = insertelement <4 x ptr> %65, ptr %i.s, i64 2
  %67 = insertelement <4 x ptr> %66, ptr %i.y, i64 3
  %68 = insertelement <4 x ptr> poison, ptr %i.as, i64 0 ; 9 uses
  %69 = insertelement <4 x ptr> %68, ptr %i.r, i64 1
  %70 = insertelement <4 x ptr> %69, ptr %i.w, i64 2
  %71 = insertelement <4 x ptr> %70, ptr %i.u, i64 3
  %72 = icmp ult <4 x ptr> %67, %71
  %73 = and <4 x i1> %63, %72
  %bound01459.a = icmp ult ptr %i.s, %i.ae
  %bound11460 = icmp ult ptr %i.w, %i.u
  %found.conflict1461 = and i1 %bound01459.a, %bound11460
  %bound01463.a = icmp ult ptr %i.s, %i.ag
  %bound11464.a = icmp ult ptr %i.aa, %i.u
  %found.conflict1465.a = and i1 %bound01463.a, %bound11464.a
  %bound01467 = icmp ult ptr %i.s, %i.ak
  %bound11468.a = icmp ult ptr %i.ai, %i.u
  %found.conflict1469 = and i1 %bound01467, %bound11468.a
  %bound01471.a = icmp ult ptr %i.s, %i.am
  %bound11472 = icmp ult ptr %i.ae, %i.u
  %found.conflict1473 = and i1 %bound01471.a, %bound11472
  %bound01475.a = icmp ult ptr %i.s, %i.ao
  %bound11476.a = icmp ult ptr %i.ag, %i.u
  %found.conflict1477.a = and i1 %bound01475.a, %bound11476.a
  %bound01479 = icmp ult ptr %i.s, %i.aq
  %bound11480.a = icmp ult ptr %i.ak, %i.u
  %found.conflict1481 = and i1 %bound01479, %bound11480.a
  %bound01483.a = icmp ult ptr %i.s, %i.ar
  %bound11484 = icmp ult ptr %i.h, %i.u
  %found.conflict1485 = and i1 %bound01483.a, %bound11484
  %bound01487.a = icmp ult ptr %i.s, %i.at
  %bound11488.a = icmp ult ptr %i.as, %i.u
  %found.conflict1489.a = and i1 %bound01487.a, %bound11488.a
  %74 = insertelement <4 x ptr> %55, ptr %i.s, i64 1
  %75 = insertelement <4 x ptr> %74, ptr %i.y, i64 2
  %76 = insertelement <4 x ptr> %75, ptr %i.n, i64 3
  %77 = insertelement <4 x ptr> poison, ptr %i.u, i64 0 ; 2 uses
  %78 = insertelement <4 x ptr> %77, ptr %i.au, i64 1
  %79 = insertelement <4 x ptr> %78, ptr %i.w, i64 2
  %80 = insertelement <4 x ptr> %79, ptr %i.ac, i64 3
  %81 = icmp ult <4 x ptr> %76, %80
  %82 = insertelement <4 x ptr> poison, ptr %i.s, i64 0
  %83 = insertelement <4 x ptr> %82, ptr %i.ar, i64 1
  %84 = insertelement <4 x ptr> %83, ptr %i.n, i64 2
  %85 = insertelement <4 x ptr> %84, ptr %i.u, i64 3
  %86 = insertelement <4 x ptr> %68, ptr %i.u, i64 1
  %87 = insertelement <4 x ptr> %86, ptr %i.aa, i64 2
  %88 = insertelement <4 x ptr> %87, ptr %i.w, i64 3
  %89 = icmp ult <4 x ptr> %85, %88
  %90 = and <4 x i1> %81, %89
  %bound01511.a = icmp ult ptr %i.n, %i.ag
  %bound11512.a = icmp ult ptr %i.aa, %i.w
  %found.conflict1513.a = and i1 %bound01511.a, %bound11512.a
  %bound01515 = icmp ult ptr %i.n, %i.ak
  %bound11516.a = icmp ult ptr %i.ai, %i.w
  %found.conflict1517 = and i1 %bound01515, %bound11516.a
  %bound01519.a = icmp ult ptr %i.n, %i.am
  %bound11520 = icmp ult ptr %i.ae, %i.w
  %found.conflict1521 = and i1 %bound01519.a, %bound11520
  %bound01523.a = icmp ult ptr %i.n, %i.ao
  %bound11524.a = icmp ult ptr %i.ag, %i.w
  %found.conflict1525.a = and i1 %bound01523.a, %bound11524.a
  %bound01527 = icmp ult ptr %i.n, %i.aq
  %bound11528.a = icmp ult ptr %i.ak, %i.w
  %found.conflict1529 = and i1 %bound01527, %bound11528.a
  %bound01531.a = icmp ult ptr %i.n, %i.ar
  %bound11532 = icmp ult ptr %i.h, %i.w
  %found.conflict1533 = and i1 %bound01531.a, %bound11532
  %bound01535.a = icmp ult ptr %i.n, %i.at
  %bound11536.a = icmp ult ptr %i.as, %i.w
  %found.conflict1537.a = and i1 %bound01535.a, %bound11536.a
  %91 = insertelement <4 x ptr> %55, ptr %i.n, i64 1
  %92 = insertelement <4 x ptr> %91, ptr %i.u, i64 2
  %93 = insertelement <4 x ptr> %92, ptr %i.y, i64 3
  %94 = insertelement <4 x ptr> poison, ptr %i.w, i64 0 ; 2 uses
  %95 = insertelement <4 x ptr> %94, ptr %i.au, i64 1
  %96 = insertelement <4 x ptr> %95, ptr %i.aa, i64 2
  %97 = insertelement <4 x ptr> %96, ptr %i.ae, i64 3
  %98 = icmp ult <4 x ptr> %93, %97
  %99 = insertelement <4 x ptr> %51, ptr %i.ar, i64 1
  %100 = insertelement <4 x ptr> %99, ptr %i.y, i64 2
  %101 = insertelement <4 x ptr> %100, ptr %i.w, i64 3
  %102 = insertelement <4 x ptr> %68, ptr %i.w, i64 1
  %103 = insertelement <4 x ptr> %102, ptr %i.ac, i64 2
  %104 = insertelement <4 x ptr> %103, ptr %i.aa, i64 3
  %105 = icmp ult <4 x ptr> %101, %104
  %106 = and <4 x i1> %98, %105
  %bound01559 = icmp ult ptr %i.y, %i.ak
  %bound11560.a = icmp ult ptr %i.ai, %i.aa
  %found.conflict1561 = and i1 %bound01559, %bound11560.a
  %bound01563.a = icmp ult ptr %i.y, %i.am
  %bound11564 = icmp ult ptr %i.ae, %i.aa
  %found.conflict1565 = and i1 %bound01563.a, %bound11564
  %bound01567.a = icmp ult ptr %i.y, %i.ao
  %bound11568.a = icmp ult ptr %i.ag, %i.aa
  %found.conflict1569.a = and i1 %bound01567.a, %bound11568.a
  %bound01571 = icmp ult ptr %i.y, %i.aq
  %bound11572.a = icmp ult ptr %i.ak, %i.aa
  %found.conflict1573 = and i1 %bound01571, %bound11572.a
  %bound01575.a = icmp ult ptr %i.y, %i.ar
  %bound11576 = icmp ult ptr %i.h, %i.aa
  %found.conflict1577 = and i1 %bound01575.a, %bound11576
  %bound01579.a = icmp ult ptr %i.y, %i.at
  %bound11580.a = icmp ult ptr %i.as, %i.aa
  %found.conflict1581.a = and i1 %bound01579.a, %bound11580.a
  %107 = insertelement <4 x ptr> %55, ptr %i.y, i64 1
  %108 = insertelement <4 x ptr> %107, ptr %i.w, i64 2
  %109 = insertelement <4 x ptr> %108, ptr %i.u, i64 3
  %110 = insertelement <4 x ptr> poison, ptr %i.aa, i64 0 ; 2 uses
  %111 = insertelement <4 x ptr> %110, ptr %i.au, i64 1
  %112 = insertelement <4 x ptr> %111, ptr %i.ac, i64 2
  %113 = insertelement <4 x ptr> %112, ptr %i.ag, i64 3
  %114 = icmp ult <4 x ptr> %109, %113
  %115 = insertelement <4 x ptr> poison, ptr %i.y, i64 0
  %116 = insertelement <4 x ptr> %115, ptr %i.ar, i64 1
  %117 = insertelement <4 x ptr> %116, ptr %i.u, i64 2
  %118 = insertelement <4 x ptr> %117, ptr %i.aa, i64 3
  %119 = insertelement <4 x ptr> %68, ptr %i.aa, i64 1
  %120 = insertelement <4 x ptr> %119, ptr %i.ae, i64 2
  %121 = insertelement <4 x ptr> %120, ptr %i.ac, i64 3
  %122 = icmp ult <4 x ptr> %118, %121
  %123 = and <4 x i1> %114, %122
  %bound01599.a = icmp ult ptr %i.u, %i.ak
  %bound11600.a = icmp ult ptr %i.ai, %i.ac
  %found.conflict1601.a = and i1 %bound01599.a, %bound11600.a
  %bound01603 = icmp ult ptr %i.u, %i.am
  %bound11604.a = icmp ult ptr %i.ae, %i.ac
  %found.conflict1605 = and i1 %bound01603, %bound11604.a
  %bound01607.a = icmp ult ptr %i.u, %i.ao
  %bound11608 = icmp ult ptr %i.ag, %i.ac
  %found.conflict1609 = and i1 %bound01607.a, %bound11608
  %bound01611.a = icmp ult ptr %i.u, %i.aq
  %bound11612.a = icmp ult ptr %i.ak, %i.ac
  %found.conflict1613.a = and i1 %bound01611.a, %bound11612.a
  %bound01615 = icmp ult ptr %i.u, %i.ar
  %bound11616.a = icmp ult ptr %i.h, %i.ac
  %found.conflict1617 = and i1 %bound01615, %bound11616.a
  %bound01619.a = icmp ult ptr %i.u, %i.at
  %bound11620 = icmp ult ptr %i.as, %i.ac
  %found.conflict1621 = and i1 %bound01619.a, %bound11620
  %124 = insertelement <4 x ptr> %55, ptr %i.u, i64 1
  %125 = insertelement <4 x ptr> %124, ptr %i.aa, i64 2
  %126 = insertelement <4 x ptr> %125, ptr %i.w, i64 3
  %127 = insertelement <4 x ptr> poison, ptr %i.ac, i64 0
  %128 = insertelement <4 x ptr> %127, ptr %i.au, i64 1
  %129 = insertelement <4 x ptr> %128, ptr %i.ae, i64 2
  %130 = insertelement <4 x ptr> %129, ptr %i.ak, i64 3
  %131 = icmp ult <4 x ptr> %126, %130
  %132 = insertelement <4 x ptr> %77, ptr %i.ar, i64 1
  %133 = insertelement <4 x ptr> %132, ptr %i.w, i64 2
  %134 = insertelement <4 x ptr> %133, ptr %i.ai, i64 3
  %135 = insertelement <4 x ptr> %68, ptr %i.ac, i64 1
  %136 = insertelement <4 x ptr> %135, ptr %i.ag, i64 2
  %137 = insertelement <4 x ptr> %136, ptr %i.ae, i64 3
  %138 = icmp ult <4 x ptr> %134, %137
  %139 = and <4 x i1> %131, %138
  %bound01643.a = icmp ult ptr %i.w, %i.ao
  %bound11644.a = icmp ult ptr %i.ag, %i.ae
  %found.conflict1645.a = and i1 %bound01643.a, %bound11644.a
  %bound01647 = icmp ult ptr %i.w, %i.aq
  %bound11648.a = icmp ult ptr %i.ak, %i.ae
  %found.conflict1649 = and i1 %bound01647, %bound11648.a
  %bound01651.a = icmp ult ptr %i.w, %i.ar
  %bound11652 = icmp ult ptr %i.h, %i.ae
  %found.conflict1653 = and i1 %bound01651.a, %bound11652
  %bound01655.a = icmp ult ptr %i.w, %i.at
  %bound11656.a = icmp ult ptr %i.as, %i.ae
  %found.conflict1657.a = and i1 %bound01655.a, %bound11656.a
  %140 = insertelement <4 x ptr> %55, ptr %i.w, i64 1
  %141 = insertelement <4 x ptr> %140, ptr %i.ai, i64 2
  %142 = insertelement <4 x ptr> %141, ptr %i.aa, i64 3
  %143 = insertelement <4 x ptr> poison, ptr %i.ae, i64 0 ; 2 uses
  %144 = insertelement <4 x ptr> %143, ptr %i.au, i64 1
  %145 = insertelement <4 x ptr> %144, ptr %i.ag, i64 2
  %146 = insertelement <4 x ptr> %145, ptr %i.am, i64 3
  %147 = icmp ult <4 x ptr> %142, %146
  %148 = insertelement <4 x ptr> %94, ptr %i.ar, i64 1
  %149 = insertelement <4 x ptr> %148, ptr %i.aa, i64 2
  %150 = insertelement <4 x ptr> %149, ptr %i.ae, i64 3
  %151 = insertelement <4 x ptr> %68, ptr %i.ae, i64 1
  %152 = insertelement <4 x ptr> %151, ptr %i.ak, i64 2
  %153 = insertelement <4 x ptr> %152, ptr %i.ag, i64 3
  %154 = icmp ult <4 x ptr> %150, %153
  %155 = and <4 x i1> %147, %154
  %bound01679.a = icmp ult ptr %i.aa, %i.aq
  %bound11680 = icmp ult ptr %i.ak, %i.ag
  %found.conflict1681 = and i1 %bound01679.a, %bound11680
  %bound01683.a = icmp ult ptr %i.aa, %i.ar
  %bound11684.a = icmp ult ptr %i.h, %i.ag
  %found.conflict1685.a = and i1 %bound01683.a, %bound11684.a
  %bound01687 = icmp ult ptr %i.aa, %i.at
  %bound11688.a = icmp ult ptr %i.as, %i.ag
  %found.conflict1689 = and i1 %bound01687, %bound11688.a
  %156 = insertelement <4 x ptr> %55, ptr %i.aa, i64 1
  %157 = insertelement <4 x ptr> %156, ptr %i.ae, i64 2
  %158 = insertelement <4 x ptr> %157, ptr %i.ai, i64 3
  %159 = insertelement <4 x ptr> %47, ptr %i.au, i64 1
  %160 = insertelement <4 x ptr> %159, ptr %i.ak, i64 2
  %161 = insertelement <4 x ptr> %160, ptr %i.ao, i64 3
  %162 = icmp ult <4 x ptr> %158, %161
  %163 = insertelement <4 x ptr> %110, ptr %i.ar, i64 1
  %164 = insertelement <4 x ptr> %163, ptr %i.ai, i64 2
  %165 = insertelement <4 x ptr> %164, ptr %i.ag, i64 3
  %166 = insertelement <4 x ptr> %68, ptr %i.ag, i64 1
  %167 = insertelement <4 x ptr> %166, ptr %i.am, i64 2
  %168 = insertelement <4 x ptr> %167, ptr %i.ak, i64 3
  %169 = icmp ult <4 x ptr> %165, %168
  %170 = and <4 x i1> %162, %169
  %bound01711.a = icmp ult ptr %i.ai, %i.ar
  %bound11712 = icmp ult ptr %i.h, %i.ak
  %found.conflict1713 = and i1 %bound01711.a, %bound11712
  %bound01715.a = icmp ult ptr %i.ai, %i.at
  %bound11716.a = icmp ult ptr %i.as, %i.ak
  %found.conflict1717.a = and i1 %bound01715.a, %bound11716.a
  %171 = insertelement <4 x ptr> %55, ptr %i.ai, i64 1
  %172 = insertelement <4 x ptr> %171, ptr %i.ag, i64 2
  %173 = insertelement <4 x ptr> %172, ptr %i.ae, i64 3
  %174 = insertelement <4 x ptr> poison, ptr %i.ak, i64 0
  %175 = insertelement <4 x ptr> %174, ptr %i.au, i64 1
  %176 = insertelement <4 x ptr> %175, ptr %i.am, i64 2
  %177 = insertelement <4 x ptr> %176, ptr %i.aq, i64 3
  %178 = icmp ult <4 x ptr> %173, %177
  %179 = insertelement <4 x ptr> poison, ptr %i.ai, i64 0
  %180 = insertelement <4 x ptr> %179, ptr %i.ar, i64 1
  %181 = insertelement <4 x ptr> %180, ptr %i.ae, i64 2
  %182 = insertelement <4 x ptr> %181, ptr %i.ak, i64 3
  %183 = insertelement <4 x ptr> %68, ptr %i.ak, i64 1
  %184 = insertelement <4 x ptr> %183, ptr %i.ao, i64 2
  %185 = insertelement <4 x ptr> %184, ptr %i.am, i64 3
  %186 = icmp ult <4 x ptr> %182, %185
  %187 = and <4 x i1> %178, %186
  %bound01735.a = icmp ult ptr %i.ae, %i.ar
  %bound11736.a = icmp ult ptr %i.h, %i.am
  %found.conflict1737.a = and i1 %bound01735.a, %bound11736.a
  %bound01739.a = icmp ult ptr %i.ae, %i.at
  %bound11740.a = icmp ult ptr %i.as, %i.am
  %found.conflict1741.a = and i1 %bound01739.a, %bound11740.a
  %188 = insertelement <4 x ptr> %55, ptr %i.ae, i64 1
  %189 = insertelement <4 x ptr> %188, ptr %i.ak, i64 2
  %190 = insertelement <4 x ptr> %189, ptr %i.ag, i64 3
  %191 = insertelement <4 x ptr> poison, ptr %i.am, i64 0
  %192 = insertelement <4 x ptr> %191, ptr %i.au, i64 1
  %193 = insertelement <4 x ptr> %192, ptr %i.ao, i64 2
  %194 = insertelement <4 x ptr> %193, ptr %i.ar, i64 3
  %195 = icmp ult <4 x ptr> %190, %194
  %196 = insertelement <4 x ptr> %143, ptr %i.ar, i64 1
  %197 = insertelement <4 x ptr> %196, ptr %i.ag, i64 2
  %198 = insertelement <4 x ptr> %197, ptr %i.h, i64 3
  %199 = insertelement <4 x ptr> %68, ptr %i.am, i64 1
  %200 = insertelement <4 x ptr> %199, ptr %i.aq, i64 2
  %201 = insertelement <4 x ptr> %200, ptr %i.ao, i64 3
  %202 = icmp ult <4 x ptr> %198, %201
  %203 = and <4 x i1> %195, %202
  %bound01759 = icmp ult ptr %i.ag, %i.at
  %bound11760.a = icmp ult ptr %i.as, %i.ao
  %found.conflict1761 = and i1 %bound01759, %bound11760.a
  %bound01763.a = icmp ult ptr %i.ag, %i.as
  %bound11764 = icmp ult ptr %i.au, %i.ao
  %found.conflict1765 = and i1 %bound01763.a, %bound11764
  %bound01767.a = icmp ult ptr %i.ag, %i.au
  %bound11768.a = icmp ult ptr %i.ar, %i.ao
  %found.conflict1769.a = and i1 %bound01767.a, %bound11768.a
  %bound01771 = icmp ult ptr %i.ak, %i.ar
  %bound11772.a = icmp ult ptr %i.h, %i.aq
  %found.conflict1773 = and i1 %bound01771, %bound11772.a
  %bound01775.a = icmp ult ptr %i.ak, %i.at
  %bound11776 = icmp ult ptr %i.as, %i.aq
  %found.conflict1777 = and i1 %bound01775.a, %bound11776
  %bound01779.a = icmp ult ptr %i.ak, %i.as
  %bound11780.a = icmp ult ptr %i.au, %i.aq
  %found.conflict1781.a = and i1 %bound01779.a, %bound11780.a
  %bound01783 = icmp ult ptr %i.ak, %i.au
  %bound11784.a = icmp ult ptr %i.ar, %i.aq
  %found.conflict1785 = and i1 %bound01783, %bound11784.a
  %204 = shufflevector <4 x i1> %54, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %205 = shufflevector <4 x i1> %73, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %206 = or <8 x i1> %204, %205
  %207 = shufflevector <4 x i1> %90, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %208 = or <8 x i1> %206, %207
  %209 = shufflevector <4 x i1> %106, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %210 = or <8 x i1> %208, %209
  %211 = shufflevector <4 x i1> %123, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %212 = or <8 x i1> %210, %211
  %213 = shufflevector <4 x i1> %139, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %214 = or <8 x i1> %212, %213
  %215 = shufflevector <4 x i1> %155, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %216 = or <8 x i1> %214, %215
  %217 = shufflevector <4 x i1> %170, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %218 = or <8 x i1> %216, %217
  %219 = shufflevector <4 x i1> %187, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %220 = or <8 x i1> %218, %219
  %221 = shufflevector <4 x i1> %203, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %222 = or <8 x i1> %220, %221
  %223 = or <8 x i1> %222, %39
  %224 = shufflevector <8 x i1> %223, <8 x i1> %39, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %225 = bitcast <8 x i1> %224 to i8
  %226 = icmp ne i8 %225, 0
  %op.rdx = or i1 %226, %found.conflict1385.a
  %op.rdx1820 = or i1 %found.conflict1389, %found.conflict1393
  %op.rdx1821 = or i1 %found.conflict1397.a, %found.conflict1401
  %op.rdx1822 = or i1 %found.conflict1405, %found.conflict1409.a
  %op.rdx1823 = or i1 %found.conflict1413, %found.conflict1417
  %op.rdx1824 = or i1 %found.conflict1421.a, %found.conflict1425
  %op.rdx1825 = or i1 %found.conflict1429, %found.conflict1433.a
  %op.rdx1826 = or i1 %found.conflict1437, %found.conflict1461
  %op.rdx1827 = or i1 %found.conflict1465.a, %found.conflict1469
  %op.rdx1828 = or i1 %found.conflict1473, %found.conflict1477.a
  %op.rdx1829 = or i1 %found.conflict1481, %found.conflict1485
  %op.rdx1830 = or i1 %found.conflict1489.a, %found.conflict1513.a
  %op.rdx1831 = or i1 %found.conflict1517, %found.conflict1521
  %op.rdx1832 = or i1 %found.conflict1525.a, %found.conflict1529
  %op.rdx1833 = or i1 %found.conflict1533, %found.conflict1537.a
  %op.rdx1834 = or i1 %found.conflict1561, %found.conflict1565
  %op.rdx1835 = or i1 %found.conflict1569.a, %found.conflict1573
  %op.rdx1836 = or i1 %found.conflict1577, %found.conflict1581.a
  %op.rdx1837 = or i1 %found.conflict1601.a, %found.conflict1605
  %op.rdx1838 = or i1 %found.conflict1609, %found.conflict1613.a
  %op.rdx1839 = or i1 %found.conflict1617, %found.conflict1621
  %op.rdx1840 = or i1 %found.conflict1645.a, %found.conflict1649
  %op.rdx1841 = or i1 %found.conflict1653, %found.conflict1657.a
  %op.rdx1842 = or i1 %found.conflict1681, %found.conflict1685.a
  %op.rdx1843 = or i1 %found.conflict1689, %found.conflict1713
  %op.rdx1844 = or i1 %found.conflict1717.a, %found.conflict1737.a
  %op.rdx1845 = or i1 %found.conflict1741.a, %found.conflict1761
  %op.rdx1846 = or i1 %found.conflict1765, %found.conflict1769.a
  %op.rdx1847 = or i1 %found.conflict1773, %found.conflict1777
  %op.rdx1848 = or i1 %found.conflict1781.a, %found.conflict1785
  %op.rdx1849 = or i1 %op.rdx, %op.rdx1820
  %op.rdx1850 = or i1 %op.rdx1821, %op.rdx1822
  %op.rdx1851 = or i1 %op.rdx1823, %op.rdx1824
  %op.rdx1852 = or i1 %op.rdx1825, %op.rdx1826
  %op.rdx1853 = or i1 %op.rdx1827, %op.rdx1828
  %op.rdx1854 = or i1 %op.rdx1829, %op.rdx1830
  %op.rdx1855 = or i1 %op.rdx1831, %op.rdx1832
  %op.rdx1856 = or i1 %op.rdx1833, %op.rdx1834
  %op.rdx1857 = or i1 %op.rdx1835, %op.rdx1836
  %op.rdx1858 = or i1 %op.rdx1837, %op.rdx1838
  %op.rdx1859 = or i1 %op.rdx1839, %op.rdx1840
  %op.rdx1860 = or i1 %op.rdx1841, %op.rdx1842
  %op.rdx1861 = or i1 %op.rdx1843, %op.rdx1844
  %op.rdx1862 = or i1 %op.rdx1845, %op.rdx1846
  %op.rdx1863 = or i1 %op.rdx1847, %op.rdx1848
  %op.rdx1864 = or i1 %op.rdx1849, %op.rdx1850
  %op.rdx1865 = or i1 %op.rdx1851, %op.rdx1852
  %op.rdx1866 = or i1 %op.rdx1853, %op.rdx1854
  %op.rdx1867 = or i1 %op.rdx1855, %op.rdx1856
  %op.rdx1868 = or i1 %op.rdx1857, %op.rdx1858
  %op.rdx1869 = or i1 %op.rdx1859, %op.rdx1860
  %op.rdx1870 = or i1 %op.rdx1861, %op.rdx1862
  %op.rdx1871 = or i1 %op.rdx1864, %op.rdx1865
  %op.rdx1872 = or i1 %op.rdx1866, %op.rdx1867
  %op.rdx1873 = or i1 %op.rdx1868, %op.rdx1869
  %op.rdx1874 = or i1 %op.rdx1870, %op.rdx1863
  %op.rdx1875 = or i1 %op.rdx1871, %op.rdx1872
  %op.rdx1876 = or i1 %op.rdx1873, %op.rdx1874
  %op.rdx1877 = or i1 %op.rdx1875, %op.rdx1876
  br i1 %op.rdx1877, label %.preheader838.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 9223372036854775804      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.av = getelementptr [4 x i8], ptr %i.g, i64 %index ; 6 uses
  %i.aw = getelementptr [4 x i8], ptr %i.h, i64 %index ; 5 uses
  %i.ax = getelementptr [4 x i8], ptr %i.aw, i64 %i.e ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ax, align 4, !tbaa !16, !alias.scope !197, !noalias !198
  store <4 x i32> %wide.load, ptr %i.av, align 4, !tbaa !16, !alias.scope !199, !noalias !200
  %i.ay = getelementptr [4 x i8], ptr %i.aw, i64 %i.k ; 3 uses
  %wide.load1787 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !16, !alias.scope !201
  %i.az = getelementptr [4 x i8], ptr %i.av, i64 %i.j
  store <4 x i32> %wide.load1787, ptr %i.az, align 4, !tbaa !16, !alias.scope !202, !noalias !203
  %i.ba = getelementptr [4 x i8], ptr %i.aw, i64 %i.l ; 2 uses
  %wide.load1788 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !16, !alias.scope !204 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.av, i64 %.idx
  store <4 x i32> %wide.load1788, ptr %i.bb, align 4, !tbaa !16, !alias.scope !205, !noalias !206
  %i.bc = getelementptr [4 x i8], ptr %i.av, i64 %i.e ; 3 uses
  %wide.load1789 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !16, !alias.scope !201, !noalias !198
  store <4 x i32> %wide.load1789, ptr %i.bc, align 4, !tbaa !16, !alias.scope !207, !noalias !208
  %i.bd = getelementptr [4 x i8], ptr %i.bc, i64 %i.j
  store <4 x i32> %wide.load1788, ptr %i.bd, align 4, !tbaa !16, !alias.scope !209, !noalias !210
  %wide.load1791 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !16, !alias.scope !211 ; 2 uses
  %i.be = getelementptr i8, ptr %i.bc, i64 %.idx
  store <4 x i32> %wide.load1791, ptr %i.be, align 4, !tbaa !16, !alias.scope !212, !noalias !213
  %i.bf = getelementptr [4 x i8], ptr %i.av, i64 %i.k ; 3 uses
  %wide.load1792 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !16, !alias.scope !204, !noalias !198
  store <4 x i32> %wide.load1792, ptr %i.bf, align 4, !tbaa !16, !alias.scope !214, !noalias !215
  %i.bg = getelementptr [4 x i8], ptr %i.bf, i64 %i.j
  store <4 x i32> %wide.load1791, ptr %i.bg, align 4, !tbaa !16, !alias.scope !216, !noalias !217
  %wide.load1794 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !16, !alias.scope !197 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bf, i64 %.idx
  store <4 x i32> %wide.load1794, ptr %i.bh, align 4, !tbaa !16, !alias.scope !218, !noalias !219
  %i.bi = getelementptr [4 x i8], ptr %i.av, i64 %i.l ; 3 uses
  %wide.load1795 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !16, !alias.scope !211, !noalias !198
  store <4 x i32> %wide.load1795, ptr %i.bi, align 4, !tbaa !16, !alias.scope !220, !noalias !221
  %i.bj = getelementptr [4 x i8], ptr %i.bi, i64 %i.j
  store <4 x i32> %wide.load1794, ptr %i.bj, align 4, !tbaa !16, !alias.scope !222, !noalias !223
  %wide.load1797 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !16, !alias.scope !201
  %i.bk = getelementptr i8, ptr %i.bi, i64 %.idx
  store <4 x i32> %wide.load1797, ptr %i.bk, align 4, !tbaa !16, !alias.scope !224, !noalias !225
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !173

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2IliEERKT_RKT0_.exit._crit_edge, label %.preheader838.preheader

.preheader838.preheader:                          ; preds = %vector.memcheck, %.preheader838.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader838.lr.ph ], [ %n.vec, %middle.block ]
  br label %.preheader838

bb.b:                                             ; preds = %bb.a
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.preheader838:                                    ; preds = %.preheader838.preheader, %.preheader838
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader838 ], [ %indvars.iv.ph, %.preheader838.preheader ] ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.g, i64 %indvars.iv ; 6 uses
  %i.bn = getelementptr [4 x i8], ptr %i.h, i64 %indvars.iv ; 6 uses
  %i.bo = getelementptr [4 x i8], ptr %i.bn, i64 %i.e ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !16, !noalias !198
  store i32 %i.bp, ptr %invariant.gep, align 4, !tbaa !16, !noalias !198
  %i.bq = getelementptr [4 x i8], ptr %i.bn, i64 %i.k ; 3 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !16
  %i.bs = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.j
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !16
  %i.bt = getelementptr [4 x i8], ptr %i.bn, i64 %i.l ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !16
  %i.bv = getelementptr i8, ptr %invariant.gep, i64 %.idx
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !16
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.e ; 3 uses
  %i.bw = load i32, ptr %i.bq, align 4, !tbaa !16, !noalias !198
  store i32 %i.bw, ptr %gep.1, align 4, !tbaa !16, !noalias !198
  %i.bx = load i32, ptr %i.bt, align 4, !tbaa !16
  %i.by = getelementptr [4 x i8], ptr %gep.1, i64 %i.j
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !16
  %i.bz = load i32, ptr %i.bn, align 4, !tbaa !16
  %i.ca = getelementptr i8, ptr %gep.1, i64 %.idx
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !16
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.k ; 3 uses
  %i.cb = load i32, ptr %i.bt, align 4, !tbaa !16, !noalias !198
  store i32 %i.cb, ptr %gep.2, align 4, !tbaa !16, !noalias !198
  %i.cc = load i32, ptr %i.bn, align 4, !tbaa !16
  %i.cd = getelementptr [4 x i8], ptr %gep.2, i64 %i.j
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !16
  %i.ce = load i32, ptr %i.bo, align 4, !tbaa !16
  %i.cf = getelementptr i8, ptr %gep.2, i64 %.idx
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !16
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.l ; 3 uses
  %i.cg = load i32, ptr %i.bn, align 4, !tbaa !16, !noalias !198
  store i32 %i.cg, ptr %gep.3, align 4, !tbaa !16, !noalias !198
  %i.ch = load i32, ptr %i.bo, align 4, !tbaa !16
  %i.ci = getelementptr [4 x i8], ptr %gep.3, i64 %i.j
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !16
  %i.cj = load i32, ptr %i.bq, align 4, !tbaa !16
  %i.ck = getelementptr i8, ptr %gep.3, i64 %.idx
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.e
  br i1 %exitcond.not, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2IliEERKT_RKT0_.exit._crit_edge, label %.preheader838, !llvm.loop !174

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2IliEERKT_RKT0_.exit._crit_edge: ; preds = %.preheader838, %middle.block, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2IliEERKT_RKT0_.exit.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl16unique_simplicesIN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEES3_NS2_IiLin1ELi1ELi0ELin1ELi1EEES4_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2IliEERKT_RKT0_.exit._crit_edge
  %i.cl = load i64, ptr %i.b, align 8, !tbaa !22  ; 3 uses
  %i.cm = load ptr, ptr %7, align 8, !tbaa !20, !noalias !226 ; 7 uses
  %i.cn = ptrtoaddr ptr %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !22
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.cp, %i.cl
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %thread-pre-split.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %bb.c
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi4ELi0ELin1ELi4EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.cl, i64 noundef 4)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.co, align 8, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %bb.c
  %i.cq = phi i64 [ %.pr.i.i.i.i.i.i.i, %.noexc ], [ %i.cl, %bb.c ] ; 2 uses
  %i.cr = load ptr, ptr %4, align 8, !tbaa !23    ; 7 uses
  %i.cs = icmp sgt i64 %i.cq, 0
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d
  %i.ct = ptrtoaddr ptr %i.cr to i64
  %i.cu = shl i64 %i.cq, 2                        ; 2 uses
  %smax.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.cu, i64 1) ; 5 uses
  %min.iters.check1800 = icmp slt i64 %i.cu, 8
  %i.cv = sub i64 %i.cn, %i.ct
  %diff.check = icmp ugt i64 %i.cv, -32
  %or.cond = select i1 %min.iters.check1800, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph1799.preheader, label %vector.ph1801

vector.ph1801:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %n.vec1802 = and i64 %smax.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  br label %vector.body1803

vector.body1803:                                  ; preds = %vector.body1803, %vector.ph1801
  %index1804 = phi i64 [ 0, %vector.ph1801 ], [ %index.next1807, %vector.body1803 ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %index1804 ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %index1804 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %wide.load1805 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !16
  %wide.load1806 = load <4 x i32>, ptr %i.cy, align 4, !tbaa !16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store <4 x i32> %wide.load1805, ptr %i.cw, align 4, !tbaa !16
  store <4 x i32> %wide.load1806, ptr %i.cz, align 4, !tbaa !16
  %index.next1807 = add nuw i64 %index1804, 8     ; 2 uses
  %i.da = icmp eq i64 %index.next1807, %n.vec1802
  br i1 %i.da, label %middle.block1808, label %vector.body1803, !llvm.loop !177

middle.block1808:                                 ; preds = %vector.body1803
  %cmp.n1809 = icmp eq i64 %smax.i.i.i.i.i.i.i.i, %n.vec1802
  br i1 %cmp.n1809, label %.loopexit, label %scalar.ph1799.preheader

scalar.ph1799.preheader:                          ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block1808
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i ], [ %n.vec1802, %middle.block1808 ] ; 3 uses
  %xtraiter = and i64 %smax.i.i.i.i.i.i.i.i, 1    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph1799.prol.loopexit, label %scalar.ph1799.prol

scalar.ph1799.prol:                               ; preds = %scalar.ph1799.preheader, %scalar.ph1799.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.de, %scalar.ph1799.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %scalar.ph1799.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph1799.prol ], [ 0, %scalar.ph1799.preheader ]
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !16
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !16
  %i.de = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph1799.prol.loopexit, label %scalar.ph1799.prol, !llvm.loop !178

scalar.ph1799.prol.loopexit:                      ; preds = %scalar.ph1799.prol, %scalar.ph1799.preheader
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %scalar.ph1799.preheader ], [ %i.de, %scalar.ph1799.prol ]
  %i.df = sub nsw i64 %.05.i.i.i.i.i.i.i.i.ph, %smax.i.i.i.i.i.i.i.i
  %i.dg = icmp ugt i64 %i.df, -4
  br i1 %i.dg, label %.loopexit, label %scalar.ph1799

scalar.ph1799:                                    ; preds = %scalar.ph1799.prol.loopexit, %scalar.ph1799
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.dw, %scalar.ph1799 ], [ %.05.i.i.i.i.i.i.i.i.unr, %scalar.ph1799.prol.loopexit ] ; 6 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %.05.i.i.i.i.i.i.i.i
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.05.i.i.i.i.i.i.i.i
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !16
end_hunk_0
