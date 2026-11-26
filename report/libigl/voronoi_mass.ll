Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/voronoi_mass?download=true
inline.NumInlined: 2475
inline.NumDeleted: 1221
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN3igl12voronoi_massIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE:bb.a
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !37
  %i.md = fadd double %i.mc, %i.kc
  %i.me = fmul double %i.md, 5.000000e-01
  store double %i.me, ptr %i.ia, align 8, !tbaa !37
  %i.mf = load ptr, ptr %4, align 8, !tbaa !23
  %i.mg = load i64, ptr %i.bt, align 8, !tbaa !22 ; 3 uses
  %i.mh = mul nsw i64 %i.mg, %i.ke
  %i.mi = getelementptr [4 x i8], ptr %i.mf, i64 %indvars.iv868 ; 3 uses
  %i.mj = getelementptr [4 x i8], ptr %i.mi, i64 %i.mh
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !16
  %i.ml = sext i32 %i.mk to i64
  %i.mm = load ptr, ptr %8, align 8, !tbaa !32, !noalias !148 ; 3 uses
  %i.mn = getelementptr inbounds [8 x i8], ptr %i.mm, i64 %i.ml ; 3 uses
  %i.mo = load i64, ptr %i.gx, align 8, !tbaa !33, !noalias !149 ; 4 uses
  %i.mp = load double, ptr %i.mn, align 8, !tbaa !37, !noalias !149
  store double %i.mp, ptr %i.gw, align 16, !tbaa !37, !noalias !149
  %i.mq = getelementptr [8 x i8], ptr %i.mn, i64 %i.mo
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !37, !noalias !149
  store double %i.mr, ptr %i.gy, align 16, !tbaa !37, !noalias !149
  %.idx.i.i = shl i64 %i.mo, 4                    ; 3 uses
  %i.ms = getelementptr i8, ptr %i.mn, i64 %.idx.i.i
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !37, !noalias !149
  store double %i.mt, ptr %i.gz, align 16, !tbaa !37, !noalias !149
  %i.mu = and i64 %indvars.iv864, 4294967295
  %i.mv = xor i64 %i.mu, 2
  %i.mw = mul nsw i64 %i.mg, %i.mv
  %i.mx = getelementptr [4 x i8], ptr %i.mi, i64 %i.mw
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !16
  %i.mz = sext i32 %i.my to i64
  %i.na = getelementptr inbounds [8 x i8], ptr %i.mm, i64 %i.mz ; 3 uses
  %i.nb = load double, ptr %i.na, align 8, !tbaa !37
  store double %i.nb, ptr %i.ha, align 8, !tbaa !37
  %i.nc = getelementptr inbounds [8 x i8], ptr %i.na, i64 %i.mo
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !37
  store double %i.nd, ptr %i.hb, align 8, !tbaa !37
  %i.ne = getelementptr inbounds i8, ptr %i.na, i64 %.idx.i.i
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !37
  store double %i.nf, ptr %i.hc, align 8, !tbaa !37
  %i.ng = mul nsw i64 %i.mg, %i.lo
  %i.nh = getelementptr [4 x i8], ptr %i.mi, i64 %i.ng
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !16
  %i.nj = sext i32 %i.ni to i64
  %i.nk = getelementptr inbounds [8 x i8], ptr %i.mm, i64 %i.nj ; 3 uses
  %i.nl = load double, ptr %i.nk, align 8, !tbaa !37
  store double %i.nl, ptr %i.hd, align 16, !tbaa !37
  %i.nm = getelementptr inbounds [8 x i8], ptr %i.nk, i64 %i.mo
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !37
  store double %i.nn, ptr %i.he, align 16, !tbaa !37
  %i.no = getelementptr inbounds i8, ptr %i.nk, i64 %.idx.i.i
  %i.np = load double, ptr %i.no, align 8, !tbaa !37
  store double %i.np, ptr %i.hf, align 16, !tbaa !37
  %i.nq = load ptr, ptr %11, align 8, !tbaa !32, !noalias !150
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %indvars.iv868 ; 3 uses
  %i.ns = load i64, ptr %i.hh, align 8, !tbaa !33 ; 2 uses
  %i.nt = load double, ptr %i.nr, align 8, !tbaa !37
  store double %i.nt, ptr %i.hg, align 8, !tbaa !37
  %i.nu = getelementptr inbounds [8 x i8], ptr %i.nr, i64 %i.ns
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !37
  store double %i.nv, ptr %i.hi, align 8, !tbaa !37
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i255 = shl nsw i64 %i.ns, 4
  %i.nw = getelementptr inbounds i8, ptr %i.nr, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i255
  %i.nx = load double, ptr %i.nw, align 8, !tbaa !37
  store double %i.nx, ptr %i.hj, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #10
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %15, align 16, !tbaa !16
  store <4 x i32> <i32 2, i32 3, i32 1, i32 2>, ptr %i.hk, align 16, !tbaa !16
  store <4 x i32> <i32 0, i32 0, i32 0, i32 4>, ptr %i.hl, align 16, !tbaa !16
  store <4 x i32> <i32 7, i32 7, i32 4, i32 5>, ptr %i.hm, align 16, !tbaa !16
  store <4 x i32> <i32 3, i32 1, i32 0, i32 0>, ptr %i.hn, align 16, !tbaa !16
  store <4 x i32> <i32 5, i32 6, i32 3, i32 1>, ptr %i.ho, align 16, !tbaa !16
  store <4 x i32> <i32 6, i32 7, i32 7, i32 7>, ptr %i.hp, align 16, !tbaa !16
  store <4 x i32> <i32 0, i32 4, i32 5, i32 6>, ptr %i.hq, align 16, !tbaa !16
  store <4 x i32> <i32 2, i32 3, i32 1, i32 2>, ptr %i.hr, align 16, !tbaa !16
  %i.ny = and i64 %indvars.iv864, 1
  %.not = icmp eq i64 %i.ny, 0
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.nz = load <2 x i64>, ptr %i.hl, align 16, !tbaa !44, !noalias !151
  %i.oa = load <2 x i64>, ptr %i.ho, align 16, !tbaa !44, !noalias !151
  %i.ob = load <2 x i64>, ptr %i.hr, align 16, !tbaa !44, !noalias !151
  %i.oc = load <2 x i64>, ptr %15, align 16, !tbaa !44, !noalias !151
  %i.od = load <2 x i64>, ptr %i.hm, align 16, !tbaa !44, !noalias !151
  %i.oe = load <2 x i64>, ptr %i.hp, align 16, !tbaa !44, !noalias !151
  store <2 x i64> %i.nz, ptr %15, align 16, !tbaa !44
  store <2 x i64> %i.oa, ptr %i.hm, align 16, !tbaa !44
  store <2 x i64> %i.ob, ptr %i.hp, align 16, !tbaa !44
  store <2 x i64> %i.oc, ptr %i.hl, align 16, !tbaa !44
  store <2 x i64> %i.od, ptr %i.ho, align 16, !tbaa !44
  store <2 x i64> %i.oe, ptr %i.hr, align 16, !tbaa !44
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #10
  invoke void @_ZN3igl8centroidIN5Eigen6MatrixIdLi8ELi3ELi0ELi8ELi3EEENS2_IiLi12ELi3ELi0ELi12ELi3EEENS2_IdLi1ELi3ELi1ELi1ELi3EEEdEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EERT2_(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #10
  %i.of = load double, ptr %i.a, align 8, !tbaa !37
  %i.og = load ptr, ptr %1, align 8, !tbaa !15    ; 3 uses
  %i.oh = load i64, ptr %i.b, align 8, !tbaa !13  ; 4 uses
  %i.oi = mul nsw i64 %i.oh, %indvars.iv864
  %i.oj = getelementptr [4 x i8], ptr %i.og, i64 %indvars.iv868
  %i.ok = getelementptr [4 x i8], ptr %i.oj, i64 %i.oi
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !16
  %i.om = sext i32 %i.ol to i64
  %i.on = load ptr, ptr %2, align 8, !tbaa !35
  %i.oo = getelementptr inbounds [8 x i8], ptr %i.on, i64 %i.om ; 2 uses
  %i.op = load double, ptr %i.oo, align 8, !tbaa !37
  %i.oq = fadd double %i.of, %i.op
  store double %i.oq, ptr %i.oo, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #10
  %exitcond867.not = icmp eq i64 %i.kd, 4
  br i1 %exitcond867.not, label %bb.q, label %bb.r, !llvm.loop !143

bb.v:                                             ; preds = %bb.t
  %i.or = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #10
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.p, %bb.l
  %.pn211.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ib, %bb.l ], [ %i.or, %bb.v ], [ %i.jm, %bb.p ]
  %i.os = load ptr, ptr %11, align 8, !tbaa !32
  call void @free(ptr noundef %i.os) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.f
  %.pn219.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dt, %bb.f ], [ %.pn211.pn.pn.pn.pn.pn, %bb.w ]
  %i.ot = load ptr, ptr %8, align 8, !tbaa !32
  call void @free(ptr noundef %i.ot) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.body
  %.pn229.pn.pn.pn = phi { ptr, i32 } [ %.pn229.pn.pn, %.body ], [ %.pn219.pn.pn.pn.pn.pn.pn.pn, %bb.x ]
  %i.ou = load ptr, ptr %4, align 8, !tbaa !23
  call void @free(ptr noundef %i.ou) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.ov = load ptr, ptr %3, align 8, !tbaa !28
  call void @free(ptr noundef %i.ov) #10
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
  %i.g = load ptr, ptr %5, align 8, !tbaa !28, !noalias !196 ; 20 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !23     ; 18 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !29   ; 10 uses
  %.idx = shl i64 %i.j, 3                         ; 13 uses
  %i.k = shl nuw nsw i64 %i.e, 1                  ; 4 uses
  %i.l = mul nuw nsw i64 %i.e, 3                  ; 4 uses
  %min.iters.check = icmp ult i64 %i.e, 172
  br i1 %min.iters.check, label %.preheader838.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader838.lr.ph
  %i.m = shl i64 %i.e, 2                          ; 4 uses
  %i.n = getelementptr i8, ptr %i.g, i64 %i.m     ; 16 uses
  %i.o = shl i64 %i.j, 2                          ; 5 uses
  %i.p = getelementptr i8, ptr %i.g, i64 %i.o     ; 14 uses
  %i.q = getelementptr i8, ptr %i.g, i64 %i.o
  %i.r = getelementptr i8, ptr %i.q, i64 %i.m     ; 26 uses
  %i.s = getelementptr i8, ptr %i.g, i64 %.idx    ; 14 uses
  %i.t = getelementptr i8, ptr %i.g, i64 %.idx
  %i.u = getelementptr i8, ptr %i.t, i64 %i.m     ; 26 uses
  %i.v = shl i64 %i.e, 3                          ; 4 uses
  %i.w = getelementptr i8, ptr %i.g, i64 %i.v     ; 25 uses
  %i.x = getelementptr i8, ptr %i.g, i64 %i.v
  %i.y = getelementptr i8, ptr %i.x, i64 %i.o     ; 25 uses
  %i.z = getelementptr i8, ptr %i.g, i64 %.idx
  %i.aa = getelementptr i8, ptr %i.z, i64 %i.v    ; 25 uses
  %i.ab = mul i64 %i.e, 12                        ; 4 uses
  %i.ac = getelementptr i8, ptr %i.g, i64 %i.ab   ; 26 uses
  %i.ad = getelementptr i8, ptr %i.g, i64 %i.ab
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.o   ; 26 uses
  %i.af = getelementptr i8, ptr %i.g, i64 %i.ab
  %i.ag = getelementptr i8, ptr %i.af, i64 %.idx  ; 27 uses
  %i.ah = shl i64 %i.e, 4                         ; 4 uses
  %i.ai = getelementptr i8, ptr %i.g, i64 %i.ah   ; 14 uses
  %i.aj = getelementptr i8, ptr %i.g, i64 %i.ah
  %i.ak = getelementptr i8, ptr %i.aj, i64 %i.o   ; 14 uses
  %i.al = getelementptr i8, ptr %i.g, i64 %i.ah
  %i.am = getelementptr i8, ptr %i.al, i64 %.idx  ; 14 uses
  %i.an = getelementptr i8, ptr %i.h, i64 %i.m    ; 24 uses
  %i.ao = getelementptr i8, ptr %i.h, i64 %i.ab   ; 16 uses
  %i.ap = getelementptr i8, ptr %i.h, i64 %i.ah   ; 12 uses
  %i.aq = getelementptr i8, ptr %i.h, i64 %i.v    ; 16 uses
  %i.ar = insertelement <8 x ptr> poison, ptr %i.g, i64 0
  %i.as = shufflevector <8 x ptr> %i.ar, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.at = insertelement <8 x ptr> poison, ptr %i.r, i64 0
  %i.au = insertelement <8 x ptr> %i.at, ptr %i.u, i64 1
  %i.av = insertelement <8 x ptr> %i.au, ptr %i.y, i64 2
  %i.aw = insertelement <8 x ptr> %i.av, ptr %i.aa, i64 3
  %i.ax = insertelement <8 x ptr> %i.aw, ptr %i.ac, i64 4
  %i.ay = insertelement <8 x ptr> %i.ax, ptr %i.ae, i64 5
  %i.az = insertelement <8 x ptr> %i.ay, ptr %i.ag, i64 6
  %i.ba = insertelement <8 x ptr> %i.az, ptr %i.ai, i64 7
  %i.bb = icmp ult <8 x ptr> %i.as, %i.ba
  %i.bc = insertelement <8 x ptr> poison, ptr %i.p, i64 0
  %i.bd = insertelement <8 x ptr> %i.bc, ptr %i.s, i64 1
  %i.be = insertelement <8 x ptr> %i.bd, ptr %i.r, i64 2
  %i.bf = insertelement <8 x ptr> %i.be, ptr %i.u, i64 3
  %i.bg = insertelement <8 x ptr> %i.bf, ptr %i.w, i64 4
  %i.bh = insertelement <8 x ptr> %i.bg, ptr %i.y, i64 5
  %i.bi = insertelement <8 x ptr> %i.bh, ptr %i.aa, i64 6
  %i.bj = insertelement <8 x ptr> %i.bi, ptr %i.ac, i64 7
  %i.bk = insertelement <8 x ptr> poison, ptr %i.n, i64 0
  %i.bl = shufflevector <8 x ptr> %i.bk, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bm = icmp ult <8 x ptr> %i.bj, %i.bl
  %i.bn = and <8 x i1> %i.bb, %i.bm               ; 2 uses
  %i.bo = insertelement <4 x ptr> poison, ptr %i.g, i64 0
  %i.bp = shufflevector <4 x ptr> %i.bo, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bq = insertelement <4 x ptr> poison, ptr %i.ak, i64 0
  %i.br = insertelement <4 x ptr> %i.bq, ptr %i.am, i64 1
  %i.bs = insertelement <4 x ptr> %i.br, ptr %i.an, i64 2
  %i.bt = insertelement <4 x ptr> %i.bs, ptr %i.ap, i64 3
  %i.bu = icmp ult <4 x ptr> %i.bp, %i.bt
  %i.bv = insertelement <4 x ptr> poison, ptr %i.ae, i64 0 ; 2 uses
  %i.bw = insertelement <4 x ptr> %i.bv, ptr %i.ag, i64 1
  %i.bx = insertelement <4 x ptr> %i.bw, ptr %i.h, i64 2
  %i.by = insertelement <4 x ptr> %i.bx, ptr %i.ao, i64 3
  %i.bz = insertelement <4 x ptr> poison, ptr %i.n, i64 0 ; 2 uses
  %i.ca = shufflevector <4 x ptr> %i.bz, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cb = icmp ult <4 x ptr> %i.by, %i.ca
  %i.cc = and <4 x i1> %i.bu, %i.cb
  %bound01371 = icmp ult ptr %i.g, %i.ao
  %bound11372 = icmp ult ptr %i.aq, %i.n
  %found.conflict1373 = and i1 %bound01371, %bound11372
  %bound01375 = icmp ult ptr %i.g, %i.aq
  %bound11376 = icmp ult ptr %i.an, %i.n
  %found.conflict1377 = and i1 %bound01375, %bound11376
  %bound01379 = icmp ult ptr %i.p, %i.u
  %bound11380 = icmp ult ptr %i.s, %i.r
  %found.conflict1381 = and i1 %bound01379, %bound11380
  %bound01383 = icmp ult ptr %i.p, %i.w
  %bound11384 = icmp ult ptr %i.n, %i.r
  %found.conflict1385 = and i1 %bound01383, %bound11384
  %bound01387 = icmp ult ptr %i.p, %i.aa
  %bound11388 = icmp ult ptr %i.u, %i.r
  %found.conflict1389 = and i1 %bound01387, %bound11388
  %bound01391 = icmp ult ptr %i.p, %i.ac
  %bound11392 = icmp ult ptr %i.w, %i.r
  %found.conflict1393 = and i1 %bound01391, %bound11392
  %bound01395 = icmp ult ptr %i.p, %i.ae
  %bound11396 = icmp ult ptr %i.y, %i.r
  %found.conflict1397 = and i1 %bound01395, %bound11396
  %bound01399 = icmp ult ptr %i.p, %i.ag
  %bound11400 = icmp ult ptr %i.aa, %i.r
  %found.conflict1401 = and i1 %bound01399, %bound11400
  %bound01403 = icmp ult ptr %i.p, %i.ai
  %bound11404 = icmp ult ptr %i.ac, %i.r
  %found.conflict1405 = and i1 %bound01403, %bound11404
  %bound01407 = icmp ult ptr %i.p, %i.ak
  %bound11408 = icmp ult ptr %i.ae, %i.r
  %found.conflict1409 = and i1 %bound01407, %bound11408
  %bound01411 = icmp ult ptr %i.p, %i.am
  %bound11412 = icmp ult ptr %i.ag, %i.r
  %found.conflict1413 = and i1 %bound01411, %bound11412
  %bound01415 = icmp ult ptr %i.p, %i.an
  %bound11416 = icmp ult ptr %i.h, %i.r
  %found.conflict1417 = and i1 %bound01415, %bound11416
  %bound01419 = icmp ult ptr %i.p, %i.ap
  %bound11420 = icmp ult ptr %i.ao, %i.r
  %found.conflict1421 = and i1 %bound01419, %bound11420
  %i.cd = insertelement <4 x ptr> poison, ptr %i.aq, i64 0 ; 9 uses
  %i.ce = insertelement <4 x ptr> %i.cd, ptr %i.p, i64 1
  %i.cf = insertelement <4 x ptr> %i.ce, ptr %i.n, i64 2
  %i.cg = insertelement <4 x ptr> %i.cf, ptr %i.s, i64 3
  %i.ch = insertelement <4 x ptr> poison, ptr %i.r, i64 0 ; 2 uses
  %i.ci = insertelement <4 x ptr> %i.ch, ptr %i.aq, i64 1
  %i.cj = insertelement <4 x ptr> %i.ci, ptr %i.u, i64 2
  %i.ck = insertelement <4 x ptr> %i.cj, ptr %i.y, i64 3
  %i.cl = icmp ult <4 x ptr> %i.cg, %i.ck
  %i.cm = insertelement <4 x ptr> poison, ptr %i.p, i64 0
  %i.cn = insertelement <4 x ptr> %i.cm, ptr %i.an, i64 1
  %i.co = insertelement <4 x ptr> %i.cn, ptr %i.s, i64 2
  %i.cp = insertelement <4 x ptr> %i.co, ptr %i.r, i64 3
  %i.cq = insertelement <4 x ptr> poison, ptr %i.ao, i64 0 ; 9 uses
  %i.cr = insertelement <4 x ptr> %i.cq, ptr %i.r, i64 1
  %i.cs = insertelement <4 x ptr> %i.cr, ptr %i.w, i64 2
  %i.ct = insertelement <4 x ptr> %i.cs, ptr %i.u, i64 3
  %i.cu = icmp ult <4 x ptr> %i.cp, %i.ct
  %i.cv = and <4 x i1> %i.cl, %i.cu
  %bound01439 = icmp ult ptr %i.s, %i.ac
  %bound11440 = icmp ult ptr %i.w, %i.u
  %found.conflict1441 = and i1 %bound01439, %bound11440
  %bound01443 = icmp ult ptr %i.s, %i.ae
  %bound11444 = icmp ult ptr %i.y, %i.u
  %found.conflict1445 = and i1 %bound01443, %bound11444
  %bound01447 = icmp ult ptr %i.s, %i.ag
  %bound11448 = icmp ult ptr %i.aa, %i.u
  %found.conflict1449 = and i1 %bound01447, %bound11448
  %bound01451 = icmp ult ptr %i.s, %i.ai
  %bound11452 = icmp ult ptr %i.ac, %i.u
  %found.conflict1453 = and i1 %bound01451, %bound11452
  %bound01455 = icmp ult ptr %i.s, %i.ak
  %bound11456 = icmp ult ptr %i.ae, %i.u
  %found.conflict1457 = and i1 %bound01455, %bound11456
  %bound01459 = icmp ult ptr %i.s, %i.am
  %bound11460 = icmp ult ptr %i.ag, %i.u
  %found.conflict1461 = and i1 %bound01459, %bound11460
  %bound01463 = icmp ult ptr %i.s, %i.an
  %bound11464 = icmp ult ptr %i.h, %i.u
  %found.conflict1465 = and i1 %bound01463, %bound11464
  %bound01467 = icmp ult ptr %i.s, %i.ap
  %bound11468 = icmp ult ptr %i.ao, %i.u
  %found.conflict1469 = and i1 %bound01467, %bound11468
  %i.cw = insertelement <4 x ptr> %i.cd, ptr %i.s, i64 1
  %i.cx = insertelement <4 x ptr> %i.cw, ptr %i.r, i64 2
  %i.cy = insertelement <4 x ptr> %i.cx, ptr %i.n, i64 3
  %i.cz = insertelement <4 x ptr> poison, ptr %i.u, i64 0 ; 2 uses
  %i.da = insertelement <4 x ptr> %i.cz, ptr %i.aq, i64 1
  %i.db = insertelement <4 x ptr> %i.da, ptr %i.w, i64 2
  %i.dc = insertelement <4 x ptr> %i.db, ptr %i.aa, i64 3
  %i.dd = icmp ult <4 x ptr> %i.cy, %i.dc
  %i.de = insertelement <4 x ptr> poison, ptr %i.s, i64 0
  %i.df = insertelement <4 x ptr> %i.de, ptr %i.an, i64 1
  %i.dg = insertelement <4 x ptr> %i.df, ptr %i.n, i64 2
  %i.dh = insertelement <4 x ptr> %i.dg, ptr %i.u, i64 3
  %i.di = insertelement <4 x ptr> %i.cq, ptr %i.u, i64 1
  %i.dj = insertelement <4 x ptr> %i.di, ptr %i.y, i64 2
  %i.dk = insertelement <4 x ptr> %i.dj, ptr %i.w, i64 3
  %i.dl = icmp ult <4 x ptr> %i.dh, %i.dk
  %i.dm = and <4 x i1> %i.dd, %i.dl
  %bound01487 = icmp ult ptr %i.n, %i.ae
  %bound11488 = icmp ult ptr %i.y, %i.w
  %found.conflict1489 = and i1 %bound01487, %bound11488
  %bound01491 = icmp ult ptr %i.n, %i.ag
  %bound11492 = icmp ult ptr %i.aa, %i.w
  %found.conflict1493 = and i1 %bound01491, %bound11492
  %bound01495 = icmp ult ptr %i.n, %i.ai
  %bound11496 = icmp ult ptr %i.ac, %i.w
  %found.conflict1497 = and i1 %bound01495, %bound11496
  %bound01499 = icmp ult ptr %i.n, %i.ak
  %bound11500 = icmp ult ptr %i.ae, %i.w
  %found.conflict1501 = and i1 %bound01499, %bound11500
  %bound01503 = icmp ult ptr %i.n, %i.am
  %bound11504 = icmp ult ptr %i.ag, %i.w
  %found.conflict1505 = and i1 %bound01503, %bound11504
  %bound01507 = icmp ult ptr %i.n, %i.an
  %bound11508 = icmp ult ptr %i.h, %i.w
  %found.conflict1509 = and i1 %bound01507, %bound11508
  %bound01511 = icmp ult ptr %i.n, %i.ap
  %bound11512 = icmp ult ptr %i.ao, %i.w
  %found.conflict1513 = and i1 %bound01511, %bound11512
  %i.dn = insertelement <4 x ptr> %i.cd, ptr %i.n, i64 1
  %i.do = insertelement <4 x ptr> %i.dn, ptr %i.u, i64 2
  %i.dp = insertelement <4 x ptr> %i.do, ptr %i.r, i64 3
  %i.dq = insertelement <4 x ptr> poison, ptr %i.w, i64 0 ; 2 uses
  %i.dr = insertelement <4 x ptr> %i.dq, ptr %i.aq, i64 1
  %i.ds = insertelement <4 x ptr> %i.dr, ptr %i.y, i64 2
  %i.dt = insertelement <4 x ptr> %i.ds, ptr %i.ac, i64 3
  %i.du = icmp ult <4 x ptr> %i.dp, %i.dt
  %i.dv = insertelement <4 x ptr> %i.bz, ptr %i.an, i64 1
  %i.dw = insertelement <4 x ptr> %i.dv, ptr %i.r, i64 2
  %i.dx = insertelement <4 x ptr> %i.dw, ptr %i.w, i64 3
  %i.dy = insertelement <4 x ptr> %i.cq, ptr %i.w, i64 1
  %i.dz = insertelement <4 x ptr> %i.dy, ptr %i.aa, i64 2
  %i.ea = insertelement <4 x ptr> %i.dz, ptr %i.y, i64 3
  %i.eb = icmp ult <4 x ptr> %i.dx, %i.ea
  %i.ec = and <4 x i1> %i.du, %i.eb
  %bound01531 = icmp ult ptr %i.r, %i.ag
  %bound11532 = icmp ult ptr %i.aa, %i.y
  %found.conflict1533 = and i1 %bound01531, %bound11532
  %bound01535 = icmp ult ptr %i.r, %i.ai
  %bound11536 = icmp ult ptr %i.ac, %i.y
  %found.conflict1537 = and i1 %bound01535, %bound11536
  %bound01539 = icmp ult ptr %i.r, %i.ak
  %bound11540 = icmp ult ptr %i.ae, %i.y
  %found.conflict1541 = and i1 %bound01539, %bound11540
  %bound01543 = icmp ult ptr %i.r, %i.am
  %bound11544 = icmp ult ptr %i.ag, %i.y
  %found.conflict1545 = and i1 %bound01543, %bound11544
  %bound01547 = icmp ult ptr %i.r, %i.an
  %bound11548 = icmp ult ptr %i.h, %i.y
  %found.conflict1549 = and i1 %bound01547, %bound11548
  %bound01551 = icmp ult ptr %i.r, %i.ap
  %bound11552 = icmp ult ptr %i.ao, %i.y
  %found.conflict1553 = and i1 %bound01551, %bound11552
  %i.ed = insertelement <4 x ptr> %i.cd, ptr %i.r, i64 1
  %i.ee = insertelement <4 x ptr> %i.ed, ptr %i.w, i64 2
  %i.ef = insertelement <4 x ptr> %i.ee, ptr %i.u, i64 3
  %i.eg = insertelement <4 x ptr> poison, ptr %i.y, i64 0 ; 2 uses
  %i.eh = insertelement <4 x ptr> %i.eg, ptr %i.aq, i64 1
  %i.ei = insertelement <4 x ptr> %i.eh, ptr %i.aa, i64 2
  %i.ej = insertelement <4 x ptr> %i.ei, ptr %i.ae, i64 3
  %i.ek = icmp ult <4 x ptr> %i.ef, %i.ej
  %i.el = insertelement <4 x ptr> %i.ch, ptr %i.an, i64 1
  %i.em = insertelement <4 x ptr> %i.el, ptr %i.u, i64 2
  %i.en = insertelement <4 x ptr> %i.em, ptr %i.y, i64 3
  %i.eo = insertelement <4 x ptr> %i.cq, ptr %i.y, i64 1
  %i.ep = insertelement <4 x ptr> %i.eo, ptr %i.ac, i64 2
  %i.eq = insertelement <4 x ptr> %i.ep, ptr %i.aa, i64 3
  %i.er = icmp ult <4 x ptr> %i.en, %i.eq
  %i.es = and <4 x i1> %i.ek, %i.er
  %bound01571 = icmp ult ptr %i.u, %i.ai
  %bound11572 = icmp ult ptr %i.ac, %i.aa
  %found.conflict1573 = and i1 %bound01571, %bound11572
  %bound01575 = icmp ult ptr %i.u, %i.ak
  %bound11576 = icmp ult ptr %i.ae, %i.aa
  %found.conflict1577 = and i1 %bound01575, %bound11576
  %bound01579 = icmp ult ptr %i.u, %i.am
  %bound11580 = icmp ult ptr %i.ag, %i.aa
  %found.conflict1581 = and i1 %bound01579, %bound11580
  %bound01583 = icmp ult ptr %i.u, %i.an
  %bound11584 = icmp ult ptr %i.h, %i.aa
  %found.conflict1585 = and i1 %bound01583, %bound11584
  %bound01587 = icmp ult ptr %i.u, %i.ap
  %bound11588 = icmp ult ptr %i.ao, %i.aa
  %found.conflict1589 = and i1 %bound01587, %bound11588
  %i.et = insertelement <4 x ptr> %i.cd, ptr %i.u, i64 1
  %i.eu = insertelement <4 x ptr> %i.et, ptr %i.y, i64 2
  %i.ev = insertelement <4 x ptr> %i.eu, ptr %i.w, i64 3
  %i.ew = insertelement <4 x ptr> poison, ptr %i.aa, i64 0 ; 2 uses
  %i.ex = insertelement <4 x ptr> %i.ew, ptr %i.aq, i64 1
  %i.ey = insertelement <4 x ptr> %i.ex, ptr %i.ac, i64 2
  %i.ez = insertelement <4 x ptr> %i.ey, ptr %i.ag, i64 3
  %i.fa = icmp ult <4 x ptr> %i.ev, %i.ez
  %i.fb = insertelement <4 x ptr> %i.cz, ptr %i.an, i64 1
  %i.fc = insertelement <4 x ptr> %i.fb, ptr %i.w, i64 2
  %i.fd = insertelement <4 x ptr> %i.fc, ptr %i.aa, i64 3
  %i.fe = insertelement <4 x ptr> %i.cq, ptr %i.aa, i64 1
  %i.ff = insertelement <4 x ptr> %i.fe, ptr %i.ae, i64 2
  %i.fg = insertelement <4 x ptr> %i.ff, ptr %i.ac, i64 3
  %i.fh = icmp ult <4 x ptr> %i.fd, %i.fg
  %i.fi = and <4 x i1> %i.fa, %i.fh
  %bound01607 = icmp ult ptr %i.w, %i.ak
  %bound11608 = icmp ult ptr %i.ae, %i.ac
  %found.conflict1609 = and i1 %bound01607, %bound11608
  %bound01611 = icmp ult ptr %i.w, %i.am
  %bound11612 = icmp ult ptr %i.ag, %i.ac
  %found.conflict1613 = and i1 %bound01611, %bound11612
  %bound01615 = icmp ult ptr %i.w, %i.an
  %bound11616 = icmp ult ptr %i.h, %i.ac
  %found.conflict1617 = and i1 %bound01615, %bound11616
  %bound01619 = icmp ult ptr %i.w, %i.ap
  %bound11620 = icmp ult ptr %i.ao, %i.ac
  %found.conflict1621 = and i1 %bound01619, %bound11620
  %i.fj = insertelement <4 x ptr> %i.cd, ptr %i.w, i64 1
  %i.fk = insertelement <4 x ptr> %i.fj, ptr %i.aa, i64 2
  %i.fl = insertelement <4 x ptr> %i.fk, ptr %i.y, i64 3
  %i.fm = insertelement <4 x ptr> poison, ptr %i.ac, i64 0 ; 2 uses
  %i.fn = insertelement <4 x ptr> %i.fm, ptr %i.aq, i64 1
  %i.fo = insertelement <4 x ptr> %i.fn, ptr %i.ae, i64 2
  %i.fp = insertelement <4 x ptr> %i.fo, ptr %i.ai, i64 3
  %i.fq = icmp ult <4 x ptr> %i.fl, %i.fp
  %i.fr = insertelement <4 x ptr> %i.dq, ptr %i.an, i64 1
  %i.fs = insertelement <4 x ptr> %i.fr, ptr %i.y, i64 2
  %i.ft = insertelement <4 x ptr> %i.fs, ptr %i.ac, i64 3
  %i.fu = insertelement <4 x ptr> %i.cq, ptr %i.ac, i64 1
  %i.fv = insertelement <4 x ptr> %i.fu, ptr %i.ag, i64 2
  %i.fw = insertelement <4 x ptr> %i.fv, ptr %i.ae, i64 3
  %i.fx = icmp ult <4 x ptr> %i.ft, %i.fw
  %i.fy = and <4 x i1> %i.fq, %i.fx
  %bound01639 = icmp ult ptr %i.y, %i.am
  %bound11640 = icmp ult ptr %i.ag, %i.ae
  %found.conflict1641 = and i1 %bound01639, %bound11640
  %bound01643 = icmp ult ptr %i.y, %i.an
  %bound11644 = icmp ult ptr %i.h, %i.ae
  %found.conflict1645 = and i1 %bound01643, %bound11644
  %bound01647 = icmp ult ptr %i.y, %i.ap
  %bound11648 = icmp ult ptr %i.ao, %i.ae
  %found.conflict1649 = and i1 %bound01647, %bound11648
  %i.fz = insertelement <4 x ptr> %i.cd, ptr %i.y, i64 1
  %i.ga = insertelement <4 x ptr> %i.fz, ptr %i.ac, i64 2
  %i.gb = insertelement <4 x ptr> %i.ga, ptr %i.aa, i64 3
  %i.gc = insertelement <4 x ptr> %i.bv, ptr %i.aq, i64 1
  %i.gd = insertelement <4 x ptr> %i.gc, ptr %i.ag, i64 2
  %i.ge = insertelement <4 x ptr> %i.gd, ptr %i.ak, i64 3
  %i.gf = icmp ult <4 x ptr> %i.gb, %i.ge
  %i.gg = insertelement <4 x ptr> %i.eg, ptr %i.an, i64 1
  %i.gh = insertelement <4 x ptr> %i.gg, ptr %i.aa, i64 2
  %i.gi = insertelement <4 x ptr> %i.gh, ptr %i.ae, i64 3
  %i.gj = insertelement <4 x ptr> %i.cq, ptr %i.ae, i64 1
  %i.gk = insertelement <4 x ptr> %i.gj, ptr %i.ai, i64 2
  %i.gl = insertelement <4 x ptr> %i.gk, ptr %i.ag, i64 3
  %i.gm = icmp ult <4 x ptr> %i.gi, %i.gl
  %i.gn = and <4 x i1> %i.gf, %i.gm
  %bound01667 = icmp ult ptr %i.aa, %i.an
  %bound11668 = icmp ult ptr %i.h, %i.ag
  %found.conflict1669 = and i1 %bound01667, %bound11668
  %bound01671 = icmp ult ptr %i.aa, %i.ap
  %bound11672 = icmp ult ptr %i.ao, %i.ag
  %found.conflict1673 = and i1 %bound01671, %bound11672
  %i.go = insertelement <4 x ptr> %i.cd, ptr %i.aa, i64 1
  %i.gp = insertelement <4 x ptr> %i.go, ptr %i.ae, i64 2
  %i.gq = insertelement <4 x ptr> %i.gp, ptr %i.ac, i64 3
  %i.gr = insertelement <4 x ptr> poison, ptr %i.ag, i64 0
  %i.gs = insertelement <4 x ptr> %i.gr, ptr %i.aq, i64 1
  %i.gt = insertelement <4 x ptr> %i.gs, ptr %i.ai, i64 2
  %i.gu = insertelement <4 x ptr> %i.gt, ptr %i.am, i64 3
  %i.gv = icmp ult <4 x ptr> %i.gq, %i.gu
  %i.gw = insertelement <4 x ptr> %i.ew, ptr %i.an, i64 1
  %i.gx = insertelement <4 x ptr> %i.gw, ptr %i.ac, i64 2
  %i.gy = insertelement <4 x ptr> %i.gx, ptr %i.ag, i64 3
  %i.gz = insertelement <4 x ptr> %i.cq, ptr %i.ag, i64 1
  %i.ha = insertelement <4 x ptr> %i.gz, ptr %i.ak, i64 2
  %i.hb = insertelement <4 x ptr> %i.ha, ptr %i.ai, i64 3
  %i.hc = icmp ult <4 x ptr> %i.gy, %i.hb
  %i.hd = and <4 x i1> %i.gv, %i.hc
  %bound01691 = icmp ult ptr %i.ac, %i.an
  %bound11692 = icmp ult ptr %i.h, %i.ai
  %found.conflict1693 = and i1 %bound01691, %bound11692
  %bound01695 = icmp ult ptr %i.ac, %i.ap
  %bound11696 = icmp ult ptr %i.ao, %i.ai
  %found.conflict1697 = and i1 %bound01695, %bound11696
  %i.he = insertelement <4 x ptr> %i.cd, ptr %i.ac, i64 1
  %i.hf = insertelement <4 x ptr> %i.he, ptr %i.ag, i64 2
  %i.hg = insertelement <4 x ptr> %i.hf, ptr %i.ae, i64 3
  %i.hh = insertelement <4 x ptr> poison, ptr %i.ai, i64 0
  %i.hi = insertelement <4 x ptr> %i.hh, ptr %i.aq, i64 1
  %i.hj = insertelement <4 x ptr> %i.hi, ptr %i.ak, i64 2
  %i.hk = insertelement <4 x ptr> %i.hj, ptr %i.an, i64 3
  %i.hl = icmp ult <4 x ptr> %i.hg, %i.hk
  %i.hm = insertelement <4 x ptr> %i.fm, ptr %i.an, i64 1
  %i.hn = insertelement <4 x ptr> %i.hm, ptr %i.ae, i64 2
  %i.ho = insertelement <4 x ptr> %i.hn, ptr %i.h, i64 3
  %i.hp = insertelement <4 x ptr> %i.cq, ptr %i.ai, i64 1
  %i.hq = insertelement <4 x ptr> %i.hp, ptr %i.am, i64 2
  %i.hr = insertelement <4 x ptr> %i.hq, ptr %i.ak, i64 3
  %i.hs = icmp ult <4 x ptr> %i.ho, %i.hr
  %i.ht = and <4 x i1> %i.hl, %i.hs
  %bound01715 = icmp ult ptr %i.ae, %i.ap
  %bound11716 = icmp ult ptr %i.ao, %i.ak
  %found.conflict1717 = and i1 %bound01715, %bound11716
  %bound01719 = icmp ult ptr %i.ae, %i.ao
  %bound11720 = icmp ult ptr %i.aq, %i.ak
  %found.conflict1721 = and i1 %bound01719, %bound11720
  %bound01723 = icmp ult ptr %i.ae, %i.aq
  %bound11724 = icmp ult ptr %i.an, %i.ak
  %found.conflict1725 = and i1 %bound01723, %bound11724
  %bound01727 = icmp ult ptr %i.ag, %i.an
  %bound11728 = icmp ult ptr %i.h, %i.am
  %found.conflict1729 = and i1 %bound01727, %bound11728
  %bound01731 = icmp ult ptr %i.ag, %i.ap
  %bound11732 = icmp ult ptr %i.ao, %i.am
  %found.conflict1733 = and i1 %bound01731, %bound11732
  %bound01735 = icmp ult ptr %i.ag, %i.ao
  %bound11736 = icmp ult ptr %i.aq, %i.am
  %found.conflict1737 = and i1 %bound01735, %bound11736
  %bound01739 = icmp ult ptr %i.ag, %i.aq
  %bound11740 = icmp ult ptr %i.an, %i.am
  %found.conflict1741 = and i1 %bound01739, %bound11740
  %i.hu = shufflevector <4 x i1> %i.cc, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hv = shufflevector <4 x i1> %i.cv, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hw = or <8 x i1> %i.hu, %i.hv
  %i.hx = shufflevector <4 x i1> %i.dm, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hy = or <8 x i1> %i.hw, %i.hx
  %i.hz = shufflevector <4 x i1> %i.ec, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ia = or <8 x i1> %i.hy, %i.hz
  %i.ib = shufflevector <4 x i1> %i.es, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ic = or <8 x i1> %i.ia, %i.ib
  %i.id = shufflevector <4 x i1> %i.fi, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ie = or <8 x i1> %i.ic, %i.id
  %i.if = shufflevector <4 x i1> %i.fy, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ig = or <8 x i1> %i.ie, %i.if
  %i.ih = shufflevector <4 x i1> %i.gn, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ii = or <8 x i1> %i.ig, %i.ih
  %i.ij = shufflevector <4 x i1> %i.hd, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ik = or <8 x i1> %i.ii, %i.ij
  %i.il = shufflevector <4 x i1> %i.ht, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.im = or <8 x i1> %i.ik, %i.il
  %i.in = or <8 x i1> %i.im, %i.bn
  %i.io = shufflevector <8 x i1> %i.in, <8 x i1> %i.bn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.ip = bitcast <8 x i1> %i.io to i8
  %i.iq = icmp ne i8 %i.ip, 0
  %op.rdx = or i1 %i.iq, %found.conflict1373
  %op.rdx1777.a = or i1 %found.conflict1377, %found.conflict1381
  %op.rdx1778.a = or i1 %found.conflict1385, %found.conflict1389
  %op.rdx1779.a = or i1 %found.conflict1393, %found.conflict1397
  %op.rdx1780.a = or i1 %found.conflict1401, %found.conflict1405
  %op.rdx1781.a = or i1 %found.conflict1409, %found.conflict1413
  %op.rdx1782.a = or i1 %found.conflict1417, %found.conflict1421
  %op.rdx1783.a = or i1 %found.conflict1441, %found.conflict1445
  %op.rdx1784.a = or i1 %found.conflict1449, %found.conflict1453
  %op.rdx1785.a = or i1 %found.conflict1457, %found.conflict1461
  %op.rdx1786.a = or i1 %found.conflict1465, %found.conflict1469
  %op.rdx1787.a = or i1 %found.conflict1489, %found.conflict1493
  %op.rdx1788.a = or i1 %found.conflict1497, %found.conflict1501
  %op.rdx1789.a = or i1 %found.conflict1505, %found.conflict1509
  %op.rdx1790.a = or i1 %found.conflict1513, %found.conflict1533
  %op.rdx1791.a = or i1 %found.conflict1537, %found.conflict1541
  %op.rdx1792.a = or i1 %found.conflict1545, %found.conflict1549
  %op.rdx1793.a = or i1 %found.conflict1553, %found.conflict1573
  %op.rdx1794.a = or i1 %found.conflict1577, %found.conflict1581
  %op.rdx1795.a = or i1 %found.conflict1585, %found.conflict1589
  %op.rdx1796.a = or i1 %found.conflict1609, %found.conflict1613
  %op.rdx1797.a = or i1 %found.conflict1617, %found.conflict1621
  %op.rdx1798.a = or i1 %found.conflict1641, %found.conflict1645
  %op.rdx1799.a = or i1 %found.conflict1649, %found.conflict1669
  %op.rdx1800.a = or i1 %found.conflict1673, %found.conflict1693
  %op.rdx1801.a = or i1 %found.conflict1697, %found.conflict1717
  %op.rdx1802.a = or i1 %found.conflict1721, %found.conflict1725
  %op.rdx1803.a = or i1 %found.conflict1729, %found.conflict1733
  %op.rdx1804.a = or i1 %found.conflict1737, %found.conflict1741
  %op.rdx1805.a = or i1 %op.rdx, %op.rdx1777.a
  %op.rdx1806.a = or i1 %op.rdx1778.a, %op.rdx1779.a
  %op.rdx1807.a = or i1 %op.rdx1780.a, %op.rdx1781.a
  %op.rdx1808.a = or i1 %op.rdx1782.a, %op.rdx1783.a
  %op.rdx1809.a = or i1 %op.rdx1784.a, %op.rdx1785.a
  %op.rdx1810.a = or i1 %op.rdx1786.a, %op.rdx1787.a
  %op.rdx1811.a = or i1 %op.rdx1788.a, %op.rdx1789.a
  %op.rdx1812.a = or i1 %op.rdx1790.a, %op.rdx1791.a
  %op.rdx1813.a = or i1 %op.rdx1792.a, %op.rdx1793.a
  %op.rdx1814.a = or i1 %op.rdx1794.a, %op.rdx1795.a
  %op.rdx1815.a = or i1 %op.rdx1796.a, %op.rdx1797.a
  %op.rdx1816.a = or i1 %op.rdx1798.a, %op.rdx1799.a
  %op.rdx1817.a = or i1 %op.rdx1800.a, %op.rdx1801.a
  %op.rdx1818.a = or i1 %op.rdx1802.a, %op.rdx1803.a
  %op.rdx1819.a = or i1 %op.rdx1805.a, %op.rdx1806.a
  %op.rdx1820.a = or i1 %op.rdx1807.a, %op.rdx1808.a
  %op.rdx1821.a = or i1 %op.rdx1809.a, %op.rdx1810.a
  %op.rdx1822.a = or i1 %op.rdx1811.a, %op.rdx1812.a
  %op.rdx1823.a = or i1 %op.rdx1813.a, %op.rdx1814.a
  %op.rdx1824 = or i1 %op.rdx1815.a, %op.rdx1816.a
  %op.rdx1825 = or i1 %op.rdx1817.a, %op.rdx1818.a
  %op.rdx1826 = or i1 %op.rdx1819.a, %op.rdx1820.a
  %op.rdx1827 = or i1 %op.rdx1821.a, %op.rdx1822.a
  %op.rdx1828 = or i1 %op.rdx1823.a, %op.rdx1824
  %op.rdx1829 = or i1 %op.rdx1825, %op.rdx1804.a
  %op.rdx1830 = or i1 %op.rdx1826, %op.rdx1827
  %op.rdx1831 = or i1 %op.rdx1828, %op.rdx1829
  %op.rdx1832 = or i1 %op.rdx1830, %op.rdx1831
  br i1 %op.rdx1832, label %.preheader838.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 9223372036854775804      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ir = getelementptr [4 x i8], ptr %i.g, i64 %index ; 6 uses
  %i.is = getelementptr [4 x i8], ptr %i.h, i64 %index ; 5 uses
  %i.it = getelementptr [4 x i8], ptr %i.is, i64 %i.e ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.it, align 4, !tbaa !16, !alias.scope !197, !noalias !198
  store <4 x i32> %wide.load, ptr %i.ir, align 4, !tbaa !16, !alias.scope !199, !noalias !200
  %i.iu = getelementptr [4 x i8], ptr %i.is, i64 %i.k ; 3 uses
  %wide.load1743 = load <4 x i32>, ptr %i.iu, align 4, !tbaa !16, !alias.scope !201
  %i.iv = getelementptr [4 x i8], ptr %i.ir, i64 %i.j
  store <4 x i32> %wide.load1743, ptr %i.iv, align 4, !tbaa !16, !alias.scope !202, !noalias !203
  %i.iw = getelementptr [4 x i8], ptr %i.is, i64 %i.l ; 2 uses
  %wide.load1744.a = load <4 x i32>, ptr %i.iw, align 4, !tbaa !16, !alias.scope !204 ; 2 uses
  %i.ix = getelementptr i8, ptr %i.ir, i64 %.idx
  store <4 x i32> %wide.load1744.a, ptr %i.ix, align 4, !tbaa !16, !alias.scope !205, !noalias !206
  %i.iy = getelementptr [4 x i8], ptr %i.ir, i64 %i.e ; 3 uses
  %wide.load1745 = load <4 x i32>, ptr %i.iu, align 4, !tbaa !16, !alias.scope !201, !noalias !198
  store <4 x i32> %wide.load1745, ptr %i.iy, align 4, !tbaa !16, !alias.scope !207, !noalias !208
  %i.iz = getelementptr [4 x i8], ptr %i.iy, i64 %i.j
  store <4 x i32> %wide.load1744.a, ptr %i.iz, align 4, !tbaa !16, !alias.scope !209, !noalias !210
  %wide.load1747 = load <4 x i32>, ptr %i.is, align 4, !tbaa !16, !alias.scope !211 ; 2 uses
  %i.ja = getelementptr i8, ptr %i.iy, i64 %.idx
  store <4 x i32> %wide.load1747, ptr %i.ja, align 4, !tbaa !16, !alias.scope !212, !noalias !213
  %i.jb = getelementptr [4 x i8], ptr %i.ir, i64 %i.k ; 3 uses
  %wide.load1748 = load <4 x i32>, ptr %i.iw, align 4, !tbaa !16, !alias.scope !204, !noalias !198
  store <4 x i32> %wide.load1748, ptr %i.jb, align 4, !tbaa !16, !alias.scope !214, !noalias !215
  %i.jc = getelementptr [4 x i8], ptr %i.jb, i64 %i.j
  store <4 x i32> %wide.load1747, ptr %i.jc, align 4, !tbaa !16, !alias.scope !216, !noalias !217
  %wide.load1750 = load <4 x i32>, ptr %i.it, align 4, !tbaa !16, !alias.scope !197 ; 2 uses
  %i.jd = getelementptr i8, ptr %i.jb, i64 %.idx
  store <4 x i32> %wide.load1750, ptr %i.jd, align 4, !tbaa !16, !alias.scope !218, !noalias !219
  %i.je = getelementptr [4 x i8], ptr %i.ir, i64 %i.l ; 3 uses
  %wide.load1751 = load <4 x i32>, ptr %i.is, align 4, !tbaa !16, !alias.scope !211, !noalias !198
  store <4 x i32> %wide.load1751, ptr %i.je, align 4, !tbaa !16, !alias.scope !220, !noalias !221
  %i.jf = getelementptr [4 x i8], ptr %i.je, i64 %i.j
  store <4 x i32> %wide.load1750, ptr %i.jf, align 4, !tbaa !16, !alias.scope !222, !noalias !223
  %wide.load1753.a = load <4 x i32>, ptr %i.iu, align 4, !tbaa !16, !alias.scope !201
  %i.jg = getelementptr i8, ptr %i.je, i64 %.idx
  store <4 x i32> %wide.load1753.a, ptr %i.jg, align 4, !tbaa !16, !alias.scope !224, !noalias !225
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jh = icmp eq i64 %index.next, %n.vec
  br i1 %i.jh, label %middle.block, label %vector.body, !llvm.loop !173

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2IliEERKT_RKT0_.exit._crit_edge, label %.preheader838.preheader

.preheader838.preheader:                          ; preds = %vector.memcheck, %.preheader838.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader838.lr.ph ], [ %n.vec, %middle.block ]
  br label %.preheader838

bb.b:                                             ; preds = %bb.a
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %.body

end_hunk_0
begin_hunk_1_@llvm.smax.i64
!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 int", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EEE", !10, i64 0, !11, i64 8, !11, i64 16}
!13 = !{!12, !11, i64 8}
!14 = !{!12, !11, i64 16}
!15 = !{!12, !10, i64 0}
!16 = !{!6, !6, i64 0}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.peeled.count", i32 2}
!19 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EEE", !10, i64 0, !11, i64 8}
!20 = !{!19, !10, i64 0}
!21 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi4ELi0EEE", !10, i64 0, !11, i64 8}
!22 = !{!21, !11, i64 8}
!23 = !{!21, !10, i64 0}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi3ELi0EEE", !10, i64 0, !11, i64 8}
!28 = !{!27, !10, i64 0}
!29 = !{!27, !11, i64 8}
!30 = !{!"p1 double", !9, i64 0}
!31 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELi3ELi0EEE", !30, i64 0, !11, i64 8}
!32 = !{!31, !30, i64 0}
!33 = !{!31, !11, i64 8}
!34 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EEE", !30, i64 0, !11, i64 8}
!35 = !{!34, !30, i64 0}
!36 = !{!"double", !5, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELi4ELi0EEE", !30, i64 0, !11, i64 8}
!39 = !{!38, !30, i64 0}
!40 = !{!38, !11, i64 8}
!41 = !{!34, !11, i64 8}
!42 = !{!"vtable pointer", !4, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!5, !5, i64 0}
!45 = distinct !{!45, i1 true, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEElsERKi"}
!46 = distinct !{!46, !45, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEElsERKi: argument 0"}
!47 = distinct !{!47, !17}
!48 = distinct !{!48, !17, !18}
!49 = distinct !{!49, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8reshapedIllEENS_8ReshapedIS2_Xsr8internal28get_compiletime_reshape_sizeIT_T0_LNS3_Ut_En1EEE5valueEXsr8internal28get_compiletime_reshape_sizeIS7_S6_LS8_n1EEE5valueELi0EEES6_S7_"}
!50 = distinct !{!50, !49, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8reshapedIllEENS_8ReshapedIS2_Xsr8internal28get_compiletime_reshape_sizeIT_T0_LNS3_Ut_En1EEE5valueEXsr8internal28get_compiletime_reshape_sizeIS7_S6_LS8_n1EEE5valueELi0EEES6_S7_: argument 0"}
!51 = distinct !{!51, !17, !24, !25}
!52 = distinct !{!52, !26}
!53 = distinct !{!53, !17, !24}
!54 = distinct !{!54, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE3rowEl"}
!55 = distinct !{!55, !54, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE3rowEl: argument 0"}
!56 = distinct !{!56, !17}
!57 = distinct !{!57, !17}
!58 = distinct !{!58, !17}
!59 = distinct !{!59, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE3rowEl"}
!60 = distinct !{!60, !59, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE3rowEl: argument 0"}
!61 = distinct !{!61, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl"}
!62 = distinct !{!62, !61, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl: argument 0"}
!63 = distinct !{!63, i1 true, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi8ELi3ELi0ELi8ELi3EEELin1ELin1ELb0EEEElsINS1_INS2_IdLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEEENS_16CommaInitializerIS4_EERKNS0_IT_EE"}
!64 = distinct !{!64, !63, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi8ELi3ELi0ELi8ELi3EEELin1ELin1ELb0EEEElsINS1_INS2_IdLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEEENS_16CommaInitializerIS4_EERKNS0_IT_EE: argument 0"}
!65 = distinct !{!65, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl"}
!66 = distinct !{!66, !65, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl: argument 0"}
!67 = distinct !{!67, i1 true, !"_ZNK5Eigen9DenseBaseINS_7ReverseINS_6MatrixIiLi12ELi3ELi0ELi12ELi3EEELi1EEEE4evalEv"}
!68 = distinct !{!68, !67, !"_ZNK5Eigen9DenseBaseINS_7ReverseINS_6MatrixIiLi12ELi3ELi0ELi12ELi3EEELi1EEEE4evalEv: argument 0"}
!69 = distinct !{!69, !17}
!70 = !{!46}
!71 = !{!50}
!72 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi1EEE", !30, i64 0, !11, i64 8, !11, i64 16}
!73 = !{!72, !30, i64 0}
!74 = !{!55}
!75 = !{!72, !11, i64 16}
!76 = !{!72, !11, i64 8}
!77 = !{!60}
!78 = !{!62}
!79 = !{!64}
!80 = !{!66}
!81 = !{!68}
!82 = distinct !{!82, i1 true, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEElsERKi"}
!83 = distinct !{!83, !82, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEElsERKi: argument 0"}
!84 = distinct !{!84, !17}
!85 = distinct !{!85, !17, !18}
!86 = distinct !{!86, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8reshapedIllEENS_8ReshapedIS2_Xsr8internal28get_compiletime_reshape_sizeIT_T0_LNS3_Ut_En1EEE5valueEXsr8internal28get_compiletime_reshape_sizeIS7_S6_LS8_n1EEE5valueELi0EEES6_S7_"}
!87 = distinct !{!87, !86, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8reshapedIllEENS_8ReshapedIS2_Xsr8internal28get_compiletime_reshape_sizeIT_T0_LNS3_Ut_En1EEE5valueEXsr8internal28get_compiletime_reshape_sizeIS7_S6_LS8_n1EEE5valueELi0EEES6_S7_: argument 0"}
!88 = distinct !{!88, !17, !24, !25}
!89 = distinct !{!89, !26}
!90 = distinct !{!90, !17, !24}
!91 = distinct !{!91, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!92 = distinct !{!92, !91, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!93 = distinct !{!93, !17}
!94 = distinct !{!94, !17}
!95 = distinct !{!95, !17}
!96 = distinct !{!96, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!97 = distinct !{!97, !96, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!98 = distinct !{!98, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl"}
!99 = distinct !{!99, !98, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl: argument 0"}
!100 = distinct !{!100, i1 true, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi8ELi3ELi0ELi8ELi3EEELin1ELin1ELb0EEEElsINS1_INS2_IdLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEEENS_16CommaInitializerIS4_EERKNS0_IT_EE"}
!101 = distinct !{!101, !100, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi8ELi3ELi0ELi8ELi3EEELin1ELin1ELb0EEEElsINS1_INS2_IdLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEEENS_16CommaInitializerIS4_EERKNS0_IT_EE: argument 0"}
!102 = distinct !{!102, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl"}
!103 = distinct !{!103, !102, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl: argument 0"}
!104 = distinct !{!104, i1 true, !"_ZNK5Eigen9DenseBaseINS_7ReverseINS_6MatrixIiLi12ELi3ELi0ELi12ELi3EEELi1EEEE4evalEv"}
!105 = distinct !{!105, !104, !"_ZNK5Eigen9DenseBaseINS_7ReverseINS_6MatrixIiLi12ELi3ELi0ELi12ELi3EEELi1EEEE4evalEv: argument 0"}
!106 = distinct !{!106, !17}
!107 = !{!83}
!108 = !{!87}
!109 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEE", !30, i64 0, !11, i64 8, !11, i64 16}
!110 = !{!109, !30, i64 0}
!111 = !{!92}
!112 = !{!109, !11, i64 8}
!113 = !{!97}
!114 = !{!109, !11, i64 16}
!115 = !{!99}
!116 = !{!101}
!117 = !{!103}
!118 = !{!105}
!119 = distinct !{!119, i1 true, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEElsERKi"}
!120 = distinct !{!120, !119, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEElsERKi: argument 0"}
!121 = distinct !{!121, !17}
!122 = distinct !{!122, !17, !18}
!123 = distinct !{!123, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8reshapedIllEENS_8ReshapedIS2_Xsr8internal28get_compiletime_reshape_sizeIT_T0_LNS3_Ut_En1EEE5valueEXsr8internal28get_compiletime_reshape_sizeIS7_S6_LS8_n1EEE5valueELi0EEES6_S7_"}
!124 = distinct !{!124, !123, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8reshapedIllEENS_8ReshapedIS2_Xsr8internal28get_compiletime_reshape_sizeIT_T0_LNS3_Ut_En1EEE5valueEXsr8internal28get_compiletime_reshape_sizeIS7_S6_LS8_n1EEE5valueELi0EEES6_S7_: argument 0"}
!125 = distinct !{!125, !17, !24, !25}
!126 = distinct !{!126, !26}
!127 = distinct !{!127, !17, !24}
!128 = distinct !{!128, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl"}
!129 = distinct !{!129, !128, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl: argument 0"}
!130 = distinct !{!130, !17}
!131 = distinct !{!131, !17}
!132 = distinct !{!132, !17}
!133 = distinct !{!133, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl"}
!134 = distinct !{!134, !133, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl: argument 0"}
!135 = distinct !{!135, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl"}
!136 = distinct !{!136, !135, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl: argument 0"}
!137 = distinct !{!137, i1 true, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi8ELi3ELi0ELi8ELi3EEELin1ELin1ELb0EEEElsINS1_INS2_IdLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEEENS_16CommaInitializerIS4_EERKNS0_IT_EE"}
!138 = distinct !{!138, !137, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi8ELi3ELi0ELi8ELi3EEELin1ELin1ELb0EEEElsINS1_INS2_IdLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEEENS_16CommaInitializerIS4_EERKNS0_IT_EE: argument 0"}
!139 = distinct !{!139, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl"}
!140 = distinct !{!140, !139, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl: argument 0"}
!141 = distinct !{!141, i1 true, !"_ZNK5Eigen9DenseBaseINS_7ReverseINS_6MatrixIiLi12ELi3ELi0ELi12ELi3EEELi1EEEE4evalEv"}
!142 = distinct !{!142, !141, !"_ZNK5Eigen9DenseBaseINS_7ReverseINS_6MatrixIiLi12ELi3ELi0ELi12ELi3EEELi1EEEE4evalEv: argument 0"}
!143 = distinct !{!143, !17}
!144 = !{!120}
!145 = !{!124}
!146 = !{!129}
!147 = !{!134}
!148 = !{!136}
!149 = !{!138}
!150 = !{!140}
!151 = !{!142}
!152 = distinct !{!152, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE3rowEl"}
!153 = distinct !{!153, !152, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE3rowEl: argument 0"}
!154 = distinct !{!154, i1 false, !"LVerDomain"}
!155 = distinct !{!155, !154}
!156 = distinct !{!156, i1 true, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEElsERKi"}
!157 = distinct !{!157, !156, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEElsERKi: argument 0"}
!158 = distinct !{!158, !154}
!159 = distinct !{!159, !154}
!160 = distinct !{!160, !154}
!161 = distinct !{!161, !154}
!162 = distinct !{!162, !154}
!163 = distinct !{!163, !154}
!164 = distinct !{!164, !154}
!165 = distinct !{!165, !154}
!166 = distinct !{!166, !154}
!167 = distinct !{!167, !154}
!168 = distinct !{!168, !154}
!169 = distinct !{!169, !154}
!170 = distinct !{!170, !154}
!171 = distinct !{!171, !154}
!172 = distinct !{!172, !154}
!173 = distinct !{!173, !17, !24, !25}
!174 = distinct !{!174, !17, !24}
!175 = distinct !{!175, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8reshapedIllEENS_8ReshapedIS2_Xsr8internal28get_compiletime_reshape_sizeIT_T0_LNS3_Ut_En1EEE5valueEXsr8internal28get_compiletime_reshape_sizeIS7_S6_LS8_n1EEE5valueELi0EEES6_S7_"}
!176 = distinct !{!176, !175, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8reshapedIllEENS_8ReshapedIS2_Xsr8internal28get_compiletime_reshape_sizeIT_T0_LNS3_Ut_En1EEE5valueEXsr8internal28get_compiletime_reshape_sizeIS7_S6_LS8_n1EEE5valueELi0EEES6_S7_: argument 0"}
!177 = distinct !{!177, !17, !24, !25}
!178 = distinct !{!178, !26}
!179 = distinct !{!179, !17, !24}
!180 = distinct !{!180, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl"}
!181 = distinct !{!181, !180, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl: argument 0"}
!182 = distinct !{!182, !17}
!183 = distinct !{!183, !17}
!184 = distinct !{!184, !17}
!185 = distinct !{!185, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl"}
!186 = distinct !{!186, !185, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl: argument 0"}
!187 = distinct !{!187, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl"}
!188 = distinct !{!188, !187, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl: argument 0"}
!189 = distinct !{!189, i1 true, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi8ELi3ELi0ELi8ELi3EEELin1ELin1ELb0EEEElsINS1_INS2_IdLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEEENS_16CommaInitializerIS4_EERKNS0_IT_EE"}
!190 = distinct !{!190, !189, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi8ELi3ELi0ELi8ELi3EEELin1ELin1ELb0EEEElsINS1_INS2_IdLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEEENS_16CommaInitializerIS4_EERKNS0_IT_EE: argument 0"}
!191 = distinct !{!191, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl"}
!192 = distinct !{!192, !191, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl: argument 0"}
!193 = distinct !{!193, i1 true, !"_ZNK5Eigen9DenseBaseINS_7ReverseINS_6MatrixIiLi12ELi3ELi0ELi12ELi3EEELi1EEEE4evalEv"}
!194 = distinct !{!194, !193, !"_ZNK5Eigen9DenseBaseINS_7ReverseINS_6MatrixIiLi12ELi3ELi0ELi12ELi3EEELi1EEEE4evalEv: argument 0"}
!195 = distinct !{!195, !17}
!196 = !{!153}
!197 = !{!155}
!198 = !{!157}
!199 = !{!158}
!200 = !{!157, !172, !171, !170, !169, !168, !167, !166, !165, !164, !163, !162, !161, !160, !159, !155}
!201 = !{!159}
!202 = !{!172}
!203 = !{!171, !170, !169, !168, !167, !166, !165, !164, !163, !162, !161, !160, !159, !155}
!204 = !{!160}
!205 = !{!171}
!206 = !{!170, !169, !168, !167, !166, !165, !164, !163, !162, !161, !160, !159, !155}
!207 = !{!170}
!208 = !{!157, !169, !168, !167, !166, !165, !164, !163, !162, !161, !160, !159, !155}
!209 = !{!169}
!210 = !{!168, !167, !166, !165, !164, !163, !162, !161, !160, !159, !155}
!211 = !{!161}
!212 = !{!168}
!213 = !{!167, !166, !165, !164, !163, !162, !161, !160, !159, !155}
!214 = !{!167}
!215 = !{!157, !166, !165, !164, !163, !162, !161, !160, !159, !155}
!216 = !{!166}
!217 = !{!165, !164, !163, !162, !161, !160, !159, !155}
!218 = !{!165}
!219 = !{!164, !163, !162, !161, !160, !159, !155}
!220 = !{!164}
!221 = !{!157, !163, !162, !161, !160, !159, !155}
!222 = !{!163}
!223 = !{!162, !161, !160, !159, !155}
!224 = !{!162}
!225 = !{!161, !160, !159, !155}
!226 = !{!176}
!227 = !{!181}
!228 = !{!186}
!229 = !{!188}
!230 = !{!190}
!231 = !{!192}
!232 = !{!194}
end_hunk_1
