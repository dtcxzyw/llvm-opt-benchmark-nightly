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
  %i.g = load ptr, ptr %5, align 8, !tbaa !28, !noalias !196 ; 32 uses
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
  %i.n = getelementptr i8, ptr %i.g, i64 %i.m     ; 27 uses
  %i.o = shl i64 %i.j, 2                          ; 6 uses
  %i.p = getelementptr i8, ptr %i.g, i64 %i.o     ; 15 uses
  %i.q = getelementptr i8, ptr %i.g, i64 %i.o
  %i.r = getelementptr i8, ptr %i.q, i64 %i.m     ; 15 uses
  %i.s = getelementptr i8, ptr %i.g, i64 %.idx    ; 14 uses
  %i.t = getelementptr i8, ptr %i.g, i64 %.idx
  %i.u = getelementptr i8, ptr %i.t, i64 %i.m     ; 28 uses
  %i.v = shl i64 %i.e, 3                          ; 5 uses
  %i.w = getelementptr i8, ptr %i.g, i64 %i.v     ; 26 uses
  %i.x = getelementptr i8, ptr %i.g, i64 %i.m
  %i.y = getelementptr i8, ptr %i.x, i64 %i.o     ; 14 uses
  %i.z = getelementptr i8, ptr %i.g, i64 %i.v
  %i.aa = getelementptr i8, ptr %i.z, i64 %i.o    ; 27 uses
  %i.ab = getelementptr i8, ptr %i.g, i64 %.idx
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.v   ; 14 uses
  %i.ad = mul i64 %i.e, 12                        ; 4 uses
  %i.ae = getelementptr i8, ptr %i.g, i64 %i.ad   ; 27 uses
  %i.af = getelementptr i8, ptr %i.g, i64 %i.ad
  %i.ag = getelementptr i8, ptr %i.af, i64 %i.o   ; 27 uses
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
  %i.as = getelementptr i8, ptr %i.h, i64 %i.ad   ; 24 uses
  %i.at = getelementptr i8, ptr %i.h, i64 %i.al   ; 12 uses
  %i.au = getelementptr i8, ptr %i.h, i64 %i.v    ; 24 uses
  %bound0 = icmp ult ptr %i.g, %i.r
  %bound1 = icmp ult ptr %i.p, %i.n
  %found.conflict = and i1 %bound0, %bound1
  %bound01336 = icmp ult ptr %i.g, %i.u
  %bound11337 = icmp ult ptr %i.s, %i.n
  %found.conflict1338 = and i1 %bound01336, %bound11337
  %conflict.rdx = or i1 %found.conflict, %found.conflict1338
  %bound01343 = icmp ult ptr %i.g, %i.aa
  %bound11344 = icmp ult ptr %i.y, %i.n
  %found.conflict1345 = and i1 %bound01343, %bound11344
  %conflict.rdx1346 = or i1 %conflict.rdx, %found.conflict1345
  %bound01347 = icmp ult ptr %i.g, %i.ac
  %bound11348 = icmp ult ptr %i.u, %i.n
  %found.conflict1349 = and i1 %bound01347, %bound11348
  %conflict.rdx1350 = or i1 %conflict.rdx1346, %found.conflict1349
  %bound01351 = icmp ult ptr %i.g, %i.ae
  %bound11352 = icmp ult ptr %i.w, %i.n
  %found.conflict1353 = and i1 %bound01351, %bound11352
  %conflict.rdx1354 = or i1 %conflict.rdx1350, %found.conflict1353
  %bound01355 = icmp ult ptr %i.g, %i.ag
  %bound11356 = icmp ult ptr %i.aa, %i.n
  %found.conflict1357 = and i1 %bound01355, %bound11356
  %conflict.rdx1358 = or i1 %conflict.rdx1354, %found.conflict1357
  %bound01359 = icmp ult ptr %i.g, %i.ak
  %bound11360 = icmp ult ptr %i.ai, %i.n
  %found.conflict1361 = and i1 %bound01359, %bound11360
  %conflict.rdx1362 = or i1 %conflict.rdx1358, %found.conflict1361
  %bound01363 = icmp ult ptr %i.g, %i.am
  %bound11364 = icmp ult ptr %i.ae, %i.n
  %found.conflict1365 = and i1 %bound01363, %bound11364
  %conflict.rdx1366 = or i1 %conflict.rdx1362, %found.conflict1365
  %bound01367 = icmp ult ptr %i.g, %i.ao
  %bound11368 = icmp ult ptr %i.ag, %i.n
  %found.conflict1369 = and i1 %bound01367, %bound11368
  %conflict.rdx1370 = or i1 %conflict.rdx1366, %found.conflict1369
  %bound01383.a = icmp ult ptr %i.g, %i.aq
  %bound11384.a = icmp ult ptr %i.ak, %i.n
  %found.conflict1385.a = and i1 %bound01383.a, %bound11384.a
  %conflict.rdx1374 = or i1 %conflict.rdx1370, %found.conflict1385.a
  %bound11388.a = icmp ult ptr %i.g, %i.ar
  %bound01391.a = icmp ult ptr %i.h, %i.n
  %found.conflict1377 = and i1 %bound11388.a, %bound01391.a
  %conflict.rdx1378 = or i1 %conflict.rdx1374, %found.conflict1377
  %bound01395.a = icmp ult ptr %i.g, %i.at
  %bound11396.a = icmp ult ptr %i.as, %i.n
  %found.conflict1397.a = and i1 %bound01395.a, %bound11396.a
  %conflict.rdx1382 = or i1 %conflict.rdx1378, %found.conflict1397.a
  %bound11400.a = icmp ult ptr %i.g, %i.as
  %bound01403.a = icmp ult ptr %i.au, %i.n
  %found.conflict1385 = and i1 %bound11400.a, %bound01403.a
  %conflict.rdx1386 = or i1 %conflict.rdx1382, %found.conflict1385
  %bound01407.a = icmp ult ptr %i.g, %i.au
  %bound11408.a = icmp ult ptr %i.ar, %i.n
  %found.conflict1409.a = and i1 %bound01407.a, %bound11408.a
  %conflict.rdx1390 = or i1 %conflict.rdx1386, %found.conflict1409.a
  %bound11412.a = icmp ult ptr %i.p, %i.u
  %bound01415.a = icmp ult ptr %i.s, %i.r
  %found.conflict1393 = and i1 %bound11412.a, %bound01415.a
  %conflict.rdx1394 = or i1 %conflict.rdx1390, %found.conflict1393
  %bound01419.a = icmp ult ptr %i.p, %i.w
  %bound11420.a = icmp ult ptr %i.n, %i.r
  %found.conflict1421.a = and i1 %bound01419.a, %bound11420.a
  %conflict.rdx1398 = or i1 %conflict.rdx1394, %found.conflict1421.a
  %bound11424.a = icmp ult ptr %i.p, %i.aa
  %bound01427.a = icmp ult ptr %i.y, %i.r
  %found.conflict1401 = and i1 %bound11424.a, %bound01427.a
  %conflict.rdx1402 = or i1 %conflict.rdx1398, %found.conflict1401
  %bound01431.a = icmp ult ptr %i.p, %i.ac
  %bound11432.a = icmp ult ptr %i.u, %i.r
  %found.conflict1433.a = and i1 %bound01431.a, %bound11432.a
  %conflict.rdx1406 = or i1 %conflict.rdx1402, %found.conflict1433.a
  %bound11436.a = icmp ult ptr %i.p, %i.ae
  %bound11408 = icmp ult ptr %i.w, %i.r
  %found.conflict1409 = and i1 %bound11436.a, %bound11408
  %conflict.rdx1410 = or i1 %conflict.rdx1406, %found.conflict1409
  %bound01411 = icmp ult ptr %i.p, %i.ag
  %bound11412 = icmp ult ptr %i.aa, %i.r
  %found.conflict1413 = and i1 %bound01411, %bound11412
  %conflict.rdx1414 = or i1 %conflict.rdx1410, %found.conflict1413
  %bound01415 = icmp ult ptr %i.p, %i.ak
  %bound11416 = icmp ult ptr %i.ai, %i.r
  %found.conflict1417 = and i1 %bound01415, %bound11416
  %conflict.rdx1418 = or i1 %conflict.rdx1414, %found.conflict1417
  %bound01419 = icmp ult ptr %i.p, %i.am
  %bound11420 = icmp ult ptr %i.ae, %i.r
  %found.conflict1421 = and i1 %bound01419, %bound11420
  %conflict.rdx1422 = or i1 %conflict.rdx1418, %found.conflict1421
  %bound01423 = icmp ult ptr %i.p, %i.ao
  %bound11424 = icmp ult ptr %i.ag, %i.r
  %found.conflict1425 = and i1 %bound01423, %bound11424
  %conflict.rdx1426 = or i1 %conflict.rdx1422, %found.conflict1425
  %bound01427 = icmp ult ptr %i.p, %i.aq
  %bound01459.a = icmp ult ptr %i.ak, %i.r
  %found.conflict1429 = and i1 %bound01427, %bound01459.a
  %conflict.rdx1430 = or i1 %conflict.rdx1426, %found.conflict1429
  %bound01463.a = icmp ult ptr %i.p, %i.ar
  %bound11464.a = icmp ult ptr %i.h, %i.r
  %found.conflict1465.a = and i1 %bound01463.a, %bound11464.a
  %conflict.rdx1434 = or i1 %conflict.rdx1430, %found.conflict1465.a
  %bound11468.a = icmp ult ptr %i.p, %i.at
  %bound01471.a = icmp ult ptr %i.as, %i.r
  %found.conflict1437 = and i1 %bound11468.a, %bound01471.a
  %conflict.rdx1438 = or i1 %conflict.rdx1434, %found.conflict1437
  %bound01475.a = icmp ult ptr %i.p, %i.as
  %bound11476.a = icmp ult ptr %i.au, %i.r
  %found.conflict1477.a = and i1 %bound01475.a, %bound11476.a
  %conflict.rdx1442 = or i1 %conflict.rdx1438, %found.conflict1477.a
  %bound11480.a = icmp ult ptr %i.p, %i.au
  %bound01483.a = icmp ult ptr %i.ar, %i.r
  %found.conflict1445 = and i1 %bound11480.a, %bound01483.a
  %conflict.rdx1446 = or i1 %conflict.rdx1442, %found.conflict1445
  %bound01487.a = icmp ult ptr %i.s, %i.w
  %bound11488.a = icmp ult ptr %i.n, %i.u
  %found.conflict1489.a = and i1 %bound01487.a, %bound11488.a
  %conflict.rdx1450 = or i1 %conflict.rdx1446, %found.conflict1489.a
  %bound01451 = icmp ult ptr %i.s, %i.aa
  %bound11452 = icmp ult ptr %i.y, %i.u
  %found.conflict1453 = and i1 %bound01451, %bound11452
  %conflict.rdx1454 = or i1 %conflict.rdx1450, %found.conflict1453
  %bound01459 = icmp ult ptr %i.s, %i.ae
  %bound11460 = icmp ult ptr %i.w, %i.u
  %found.conflict1461 = and i1 %bound01459, %bound11460
  %conflict.rdx1462 = or i1 %conflict.rdx1454, %found.conflict1461
  %bound01463 = icmp ult ptr %i.s, %i.ag
  %bound11464 = icmp ult ptr %i.aa, %i.u
  %found.conflict1465 = and i1 %bound01463, %bound11464
  %conflict.rdx1466 = or i1 %conflict.rdx1462, %found.conflict1465
  %bound01467 = icmp ult ptr %i.s, %i.ak
  %bound11468 = icmp ult ptr %i.ai, %i.u
  %found.conflict1469 = and i1 %bound01467, %bound11468
  %conflict.rdx1470 = or i1 %conflict.rdx1466, %found.conflict1469
  %bound01511.a = icmp ult ptr %i.s, %i.am
  %bound11512.a = icmp ult ptr %i.ae, %i.u
  %found.conflict1513.a = and i1 %bound01511.a, %bound11512.a
  %conflict.rdx1474 = or i1 %conflict.rdx1470, %found.conflict1513.a
  %bound11516.a = icmp ult ptr %i.s, %i.ao
  %bound01519.a = icmp ult ptr %i.ag, %i.u
  %found.conflict1477 = and i1 %bound11516.a, %bound01519.a
  %conflict.rdx1478 = or i1 %conflict.rdx1474, %found.conflict1477
  %bound01523.a = icmp ult ptr %i.s, %i.aq
  %bound11524.a = icmp ult ptr %i.ak, %i.u
  %found.conflict1525.a = and i1 %bound01523.a, %bound11524.a
  %conflict.rdx1482 = or i1 %conflict.rdx1478, %found.conflict1525.a
  %bound11528.a = icmp ult ptr %i.s, %i.ar
  %bound01531.a = icmp ult ptr %i.h, %i.u
  %found.conflict1485 = and i1 %bound11528.a, %bound01531.a
  %conflict.rdx1486 = or i1 %conflict.rdx1482, %found.conflict1485
  %bound01535.a = icmp ult ptr %i.s, %i.at
  %bound11536.a = icmp ult ptr %i.as, %i.u
  %found.conflict1537.a = and i1 %bound01535.a, %bound11536.a
  %conflict.rdx1490 = or i1 %conflict.rdx1486, %found.conflict1537.a
  %bound01491 = icmp ult ptr %i.s, %i.as
  %bound11492 = icmp ult ptr %i.au, %i.u
  %found.conflict1493 = and i1 %bound01491, %bound11492
  %conflict.rdx1494 = or i1 %conflict.rdx1490, %found.conflict1493
  %bound01495 = icmp ult ptr %i.s, %i.au
  %bound11496 = icmp ult ptr %i.ar, %i.u
  %found.conflict1497 = and i1 %bound01495, %bound11496
  %conflict.rdx1498 = or i1 %conflict.rdx1494, %found.conflict1497
  %bound01499 = icmp ult ptr %i.n, %i.aa
  %bound11500 = icmp ult ptr %i.y, %i.w
  %found.conflict1501 = and i1 %bound01499, %bound11500
  %conflict.rdx1502 = or i1 %conflict.rdx1498, %found.conflict1501
  %bound01503 = icmp ult ptr %i.n, %i.ac
  %bound11504 = icmp ult ptr %i.u, %i.w
  %found.conflict1505 = and i1 %bound01503, %bound11504
  %conflict.rdx1506 = or i1 %conflict.rdx1502, %found.conflict1505
  %bound11560.a = icmp ult ptr %i.n, %i.ag
  %bound01563.a = icmp ult ptr %i.aa, %i.w
  %found.conflict1513 = and i1 %bound11560.a, %bound01563.a
  %conflict.rdx1514 = or i1 %conflict.rdx1506, %found.conflict1513
  %bound01567.a = icmp ult ptr %i.n, %i.ak
  %bound11568.a = icmp ult ptr %i.ai, %i.w
  %found.conflict1569.a = and i1 %bound01567.a, %bound11568.a
  %conflict.rdx1518 = or i1 %conflict.rdx1514, %found.conflict1569.a
  %bound11572.a = icmp ult ptr %i.n, %i.am
  %bound01575.a = icmp ult ptr %i.ae, %i.w
  %found.conflict1521 = and i1 %bound11572.a, %bound01575.a
  %conflict.rdx1522 = or i1 %conflict.rdx1518, %found.conflict1521
  %bound01579.a = icmp ult ptr %i.n, %i.ao
  %bound11580.a = icmp ult ptr %i.ag, %i.w
  %found.conflict1581.a = and i1 %bound01579.a, %bound11580.a
  %conflict.rdx1526 = or i1 %conflict.rdx1522, %found.conflict1581.a
  %bound01527 = icmp ult ptr %i.n, %i.aq
  %bound11528 = icmp ult ptr %i.ak, %i.w
  %found.conflict1529 = and i1 %bound01527, %bound11528
  %conflict.rdx1530 = or i1 %conflict.rdx1526, %found.conflict1529
  %bound01531 = icmp ult ptr %i.n, %i.ar
  %bound11532 = icmp ult ptr %i.h, %i.w
  %found.conflict1533 = and i1 %bound01531, %bound11532
  %conflict.rdx1534 = or i1 %conflict.rdx1530, %found.conflict1533
  %bound01535 = icmp ult ptr %i.n, %i.at
  %bound11536 = icmp ult ptr %i.as, %i.w
  %found.conflict1537 = and i1 %bound01535, %bound11536
  %conflict.rdx1538 = or i1 %conflict.rdx1534, %found.conflict1537
  %bound01539 = icmp ult ptr %i.n, %i.as
  %bound11540 = icmp ult ptr %i.au, %i.w
  %found.conflict1541 = and i1 %bound01539, %bound11540
  %conflict.rdx1542 = or i1 %conflict.rdx1538, %found.conflict1541
  %bound01599.a = icmp ult ptr %i.n, %i.au
  %bound11600.a = icmp ult ptr %i.ar, %i.w
  %found.conflict1601.a = and i1 %bound01599.a, %bound11600.a
  %conflict.rdx1546 = or i1 %conflict.rdx1542, %found.conflict1601.a
  %bound11604.a = icmp ult ptr %i.y, %i.ac
  %bound01607.a = icmp ult ptr %i.u, %i.aa
  %found.conflict1549 = and i1 %bound11604.a, %bound01607.a
  %conflict.rdx1550 = or i1 %conflict.rdx1546, %found.conflict1549
  %bound01611.a = icmp ult ptr %i.y, %i.ae
  %bound11612.a = icmp ult ptr %i.w, %i.aa
  %found.conflict1613.a = and i1 %bound01611.a, %bound11612.a
  %conflict.rdx1554 = or i1 %conflict.rdx1550, %found.conflict1613.a
  %bound11616.a = icmp ult ptr %i.y, %i.ak
  %bound01619.a = icmp ult ptr %i.ai, %i.aa
  %found.conflict1561 = and i1 %bound11616.a, %bound01619.a
  %conflict.rdx1562 = or i1 %conflict.rdx1554, %found.conflict1561
  %bound01563 = icmp ult ptr %i.y, %i.am
  %bound11564 = icmp ult ptr %i.ae, %i.aa
  %found.conflict1565 = and i1 %bound01563, %bound11564
  %conflict.rdx1566 = or i1 %conflict.rdx1562, %found.conflict1565
  %bound01567 = icmp ult ptr %i.y, %i.ao
  %bound11568 = icmp ult ptr %i.ag, %i.aa
  %found.conflict1569 = and i1 %bound01567, %bound11568
  %conflict.rdx1570 = or i1 %conflict.rdx1566, %found.conflict1569
  %bound01571 = icmp ult ptr %i.y, %i.aq
  %bound11572 = icmp ult ptr %i.ak, %i.aa
  %found.conflict1573 = and i1 %bound01571, %bound11572
  %conflict.rdx1574 = or i1 %conflict.rdx1570, %found.conflict1573
  %bound01575 = icmp ult ptr %i.y, %i.ar
  %bound11576 = icmp ult ptr %i.h, %i.aa
  %found.conflict1577 = and i1 %bound01575, %bound11576
  %conflict.rdx1578 = or i1 %conflict.rdx1574, %found.conflict1577
  %bound01643.a = icmp ult ptr %i.y, %i.at
  %bound11644.a = icmp ult ptr %i.as, %i.aa
  %found.conflict1645.a = and i1 %bound01643.a, %bound11644.a
  %conflict.rdx1582 = or i1 %conflict.rdx1578, %found.conflict1645.a
  %bound11648.a = icmp ult ptr %i.y, %i.as
  %bound01651.a = icmp ult ptr %i.au, %i.aa
  %found.conflict1585 = and i1 %bound11648.a, %bound01651.a
  %conflict.rdx1586 = or i1 %conflict.rdx1582, %found.conflict1585
  %bound01655.a = icmp ult ptr %i.y, %i.au
  %bound11656.a = icmp ult ptr %i.ar, %i.aa
  %found.conflict1657.a = and i1 %bound01655.a, %bound11656.a
  %conflict.rdx1590 = or i1 %conflict.rdx1586, %found.conflict1657.a
  %bound01591 = icmp ult ptr %i.u, %i.ae
  %bound11592 = icmp ult ptr %i.w, %i.ac
  %found.conflict1593 = and i1 %bound01591, %bound11592
  %conflict.rdx1594 = or i1 %conflict.rdx1590, %found.conflict1593
  %bound01595 = icmp ult ptr %i.u, %i.ag
  %bound11596 = icmp ult ptr %i.aa, %i.ac
  %found.conflict1597 = and i1 %bound01595, %bound11596
  %conflict.rdx1598 = or i1 %conflict.rdx1594, %found.conflict1597
  %bound01599 = icmp ult ptr %i.u, %i.ak
  %bound11600 = icmp ult ptr %i.ai, %i.ac
  %found.conflict1601 = and i1 %bound01599, %bound11600
  %conflict.rdx1602 = or i1 %conflict.rdx1598, %found.conflict1601
  %bound01603 = icmp ult ptr %i.u, %i.am
  %bound01679.a = icmp ult ptr %i.ae, %i.ac
  %found.conflict1605 = and i1 %bound01603, %bound01679.a
  %conflict.rdx1606 = or i1 %conflict.rdx1602, %found.conflict1605
  %bound01683.a = icmp ult ptr %i.u, %i.ao
  %bound11684.a = icmp ult ptr %i.ag, %i.ac
  %found.conflict1685.a = and i1 %bound01683.a, %bound11684.a
  %conflict.rdx1610 = or i1 %conflict.rdx1606, %found.conflict1685.a
  %bound11688.a = icmp ult ptr %i.u, %i.aq
  %bound11612 = icmp ult ptr %i.ak, %i.ac
  %found.conflict1613 = and i1 %bound11688.a, %bound11612
  %conflict.rdx1614 = or i1 %conflict.rdx1610, %found.conflict1613
  %bound01615 = icmp ult ptr %i.u, %i.ar
  %bound11616 = icmp ult ptr %i.h, %i.ac
  %found.conflict1617 = and i1 %bound01615, %bound11616
  %conflict.rdx1618 = or i1 %conflict.rdx1614, %found.conflict1617
  %bound01619 = icmp ult ptr %i.u, %i.at
  %bound11620 = icmp ult ptr %i.as, %i.ac
  %found.conflict1621 = and i1 %bound01619, %bound11620
  %conflict.rdx1622 = or i1 %conflict.rdx1618, %found.conflict1621
  %bound01623 = icmp ult ptr %i.u, %i.as
  %bound11624 = icmp ult ptr %i.au, %i.ac
  %found.conflict1625 = and i1 %bound01623, %bound11624
  %conflict.rdx1626 = or i1 %conflict.rdx1622, %found.conflict1625
  %bound01627 = icmp ult ptr %i.u, %i.au
  %bound01711.a = icmp ult ptr %i.ar, %i.ac
  %found.conflict1629 = and i1 %bound01627, %bound01711.a
  %conflict.rdx1630 = or i1 %conflict.rdx1626, %found.conflict1629
  %bound01715.a = icmp ult ptr %i.w, %i.ag
  %bound11716.a = icmp ult ptr %i.aa, %i.ae
  %found.conflict1717.a = and i1 %bound01715.a, %bound11716.a
  %conflict.rdx1634 = or i1 %conflict.rdx1630, %found.conflict1717.a
  %bound01635 = icmp ult ptr %i.w, %i.ak
  %bound11636 = icmp ult ptr %i.ai, %i.ae
  %found.conflict1637 = and i1 %bound01635, %bound11636
  %conflict.rdx1638 = or i1 %conflict.rdx1634, %found.conflict1637
  %bound01643 = icmp ult ptr %i.w, %i.ao
  %bound11644 = icmp ult ptr %i.ag, %i.ae
  %found.conflict1645 = and i1 %bound01643, %bound11644
  %conflict.rdx1646 = or i1 %conflict.rdx1638, %found.conflict1645
  %bound01647 = icmp ult ptr %i.w, %i.aq
  %bound11648 = icmp ult ptr %i.ak, %i.ae
  %found.conflict1649 = and i1 %bound01647, %bound11648
  %conflict.rdx1650 = or i1 %conflict.rdx1646, %found.conflict1649
  %bound01651 = icmp ult ptr %i.w, %i.ar
  %bound11652 = icmp ult ptr %i.h, %i.ae
  %found.conflict1653 = and i1 %bound01651, %bound11652
  %conflict.rdx1654 = or i1 %conflict.rdx1650, %found.conflict1653
  %bound01735.a = icmp ult ptr %i.w, %i.at
  %bound11736.a = icmp ult ptr %i.as, %i.ae
  %found.conflict1737.a = and i1 %bound01735.a, %bound11736.a
  %conflict.rdx1658 = or i1 %conflict.rdx1654, %found.conflict1737.a
  %bound01739.a = icmp ult ptr %i.w, %i.as
  %bound11740.a = icmp ult ptr %i.au, %i.ae
  %found.conflict1741.a = and i1 %bound01739.a, %bound11740.a
  %conflict.rdx1662 = or i1 %conflict.rdx1658, %found.conflict1741.a
  %bound01663 = icmp ult ptr %i.w, %i.au
  %bound11664 = icmp ult ptr %i.ar, %i.ae
  %found.conflict1665 = and i1 %bound01663, %bound11664
  %conflict.rdx1666 = or i1 %conflict.rdx1662, %found.conflict1665
  %bound01667 = icmp ult ptr %i.aa, %i.ak
  %bound11668 = icmp ult ptr %i.ai, %i.ag
  %found.conflict1669 = and i1 %bound01667, %bound11668
  %conflict.rdx1670 = or i1 %conflict.rdx1666, %found.conflict1669
  %bound01671 = icmp ult ptr %i.aa, %i.am
  %bound11672 = icmp ult ptr %i.ae, %i.ag
  %found.conflict1673 = and i1 %bound01671, %bound11672
  %conflict.rdx1674 = or i1 %conflict.rdx1670, %found.conflict1673
  %bound01679 = icmp ult ptr %i.aa, %i.aq
  %bound11680 = icmp ult ptr %i.ak, %i.ag
  %found.conflict1681 = and i1 %bound01679, %bound11680
  %conflict.rdx1682 = or i1 %conflict.rdx1674, %found.conflict1681
  %bound11760.a = icmp ult ptr %i.aa, %i.ar
  %bound01763.a = icmp ult ptr %i.h, %i.ag
  %found.conflict1685 = and i1 %bound11760.a, %bound01763.a
  %conflict.rdx1686 = or i1 %conflict.rdx1682, %found.conflict1685
  %bound01767.a = icmp ult ptr %i.aa, %i.at
  %bound11768.a = icmp ult ptr %i.as, %i.ag
  %found.conflict1769.a = and i1 %bound01767.a, %bound11768.a
  %conflict.rdx1690 = or i1 %conflict.rdx1686, %found.conflict1769.a
  %bound11772.a = icmp ult ptr %i.aa, %i.as
  %bound01775.a = icmp ult ptr %i.au, %i.ag
  %found.conflict1693 = and i1 %bound11772.a, %bound01775.a
  %conflict.rdx1694 = or i1 %conflict.rdx1690, %found.conflict1693
  %bound01779.a = icmp ult ptr %i.aa, %i.au
  %bound11780.a = icmp ult ptr %i.ar, %i.ag
  %found.conflict1781.a = and i1 %bound01779.a, %bound11780.a
  %conflict.rdx1698 = or i1 %conflict.rdx1694, %found.conflict1781.a
  %bound11784.a = icmp ult ptr %i.ai, %i.am
  %bound11700 = icmp ult ptr %i.ae, %i.ak
  %found.conflict1701 = and i1 %bound11784.a, %bound11700
  %conflict.rdx1702 = or i1 %conflict.rdx1698, %found.conflict1701
  %bound01703 = icmp ult ptr %i.ai, %i.ao
  %bound11704 = icmp ult ptr %i.ag, %i.ak
  %found.conflict1705 = and i1 %bound01703, %bound11704
  %conflict.rdx1706 = or i1 %conflict.rdx1702, %found.conflict1705
  %bound01711 = icmp ult ptr %i.ai, %i.ar
  %bound11712 = icmp ult ptr %i.h, %i.ak
  %found.conflict1713 = and i1 %bound01711, %bound11712
  %conflict.rdx1714 = or i1 %conflict.rdx1706, %found.conflict1713
  %bound01715 = icmp ult ptr %i.ai, %i.at
  %bound11716 = icmp ult ptr %i.as, %i.ak
  %found.conflict1717 = and i1 %bound01715, %bound11716
  %conflict.rdx1718 = or i1 %conflict.rdx1714, %found.conflict1717
  %bound01719 = icmp ult ptr %i.ai, %i.as
  %bound11720 = icmp ult ptr %i.au, %i.ak
  %found.conflict1721 = and i1 %bound01719, %bound11720
  %conflict.rdx1722 = or i1 %conflict.rdx1718, %found.conflict1721
  %bound01723 = icmp ult ptr %i.ai, %i.au
  %bound11724 = icmp ult ptr %i.ar, %i.ak
  %found.conflict1725 = and i1 %bound01723, %bound11724
  %conflict.rdx1726 = or i1 %conflict.rdx1722, %found.conflict1725
  %bound01727 = icmp ult ptr %i.ae, %i.ao
  %bound11728 = icmp ult ptr %i.ag, %i.am
  %found.conflict1729 = and i1 %bound01727, %bound11728
  %op.rdx1821 = or i1 %conflict.rdx1726, %found.conflict1729
  %bound01731 = icmp ult ptr %i.ae, %i.aq
  %bound11732 = icmp ult ptr %i.ak, %i.am
  %found.conflict1733 = and i1 %bound01731, %bound11732
  %op.rdx1825 = or i1 %op.rdx1821, %found.conflict1733
  %bound01735 = icmp ult ptr %i.ae, %i.ar
  %bound11736 = icmp ult ptr %i.h, %i.am
  %found.conflict1737 = and i1 %bound01735, %bound11736
  %op.rdx1829 = or i1 %op.rdx1825, %found.conflict1737
  %bound01739 = icmp ult ptr %i.ae, %i.at
  %bound11740 = icmp ult ptr %i.as, %i.am
  %found.conflict1741 = and i1 %bound01739, %bound11740
  %op.rdx1833 = or i1 %op.rdx1829, %found.conflict1741
  %bound01743 = icmp ult ptr %i.ae, %i.as
  %bound11744 = icmp ult ptr %i.au, %i.am
  %found.conflict1745 = and i1 %bound01743, %bound11744
  %op.rdx1837 = or i1 %op.rdx1833, %found.conflict1745
  %bound01747 = icmp ult ptr %i.ae, %i.au
  %bound11748 = icmp ult ptr %i.ar, %i.am
  %found.conflict1749 = and i1 %bound01747, %bound11748
  %op.rdx1841 = or i1 %op.rdx1837, %found.conflict1749
  %bound01751 = icmp ult ptr %i.ag, %i.aq
  %bound11752 = icmp ult ptr %i.ak, %i.ao
  %found.conflict1753 = and i1 %bound01751, %bound11752
  %op.rdx1845 = or i1 %op.rdx1841, %found.conflict1753
  %bound01755 = icmp ult ptr %i.ag, %i.ar
  %bound11756 = icmp ult ptr %i.h, %i.ao
  %found.conflict1757 = and i1 %bound01755, %bound11756
  %op.rdx1849 = or i1 %op.rdx1845, %found.conflict1757
  %bound01759 = icmp ult ptr %i.ag, %i.at
  %bound11760 = icmp ult ptr %i.as, %i.ao
  %found.conflict1761 = and i1 %bound01759, %bound11760
  %op.rdx1853 = or i1 %op.rdx1849, %found.conflict1761
  %bound01763 = icmp ult ptr %i.ag, %i.as
  %bound11764 = icmp ult ptr %i.au, %i.ao
  %found.conflict1765 = and i1 %bound01763, %bound11764
  %op.rdx1857 = or i1 %op.rdx1853, %found.conflict1765
  %bound01767 = icmp ult ptr %i.ag, %i.au
  %bound11768 = icmp ult ptr %i.ar, %i.ao
  %found.conflict1769 = and i1 %bound01767, %bound11768
  %op.rdx1861 = or i1 %op.rdx1857, %found.conflict1769
  %bound01771 = icmp ult ptr %i.ak, %i.ar
  %bound11772 = icmp ult ptr %i.h, %i.aq
  %found.conflict1773 = and i1 %bound01771, %bound11772
  %op.rdx1865 = or i1 %op.rdx1861, %found.conflict1773
  %bound01775 = icmp ult ptr %i.ak, %i.at
  %bound11776 = icmp ult ptr %i.as, %i.aq
  %found.conflict1777 = and i1 %bound01775, %bound11776
  %op.rdx1869 = or i1 %op.rdx1865, %found.conflict1777
  %bound01779 = icmp ult ptr %i.ak, %i.as
  %bound11780 = icmp ult ptr %i.au, %i.aq
  %found.conflict1781 = and i1 %bound01779, %bound11780
  %op.rdx1873 = or i1 %op.rdx1869, %found.conflict1781
  %bound01783 = icmp ult ptr %i.ak, %i.au
  %bound11784 = icmp ult ptr %i.ar, %i.aq
  %found.conflict1785 = and i1 %bound01783, %bound11784
  %op.rdx1877 = or i1 %op.rdx1873, %found.conflict1785
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
