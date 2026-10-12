Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_builder_hair_mb?download=true
inline.NumInlined: 2542
inline.NumDeleted: 442
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNKS_5SetMB8primInfoINS_4sse225VirtualRecalculatePrimRefEEEKSA_RKT_RKNS_12LinearSpace3IS7_EEEUlRKNS_5rangeImEEE_FKS9_RSR_SS_EEET0_SF_SF_SF_SF_RKSU_RKT1_RKT2_EUlmE_EEvSF_SW_EUlSP_E_EEvSF_SF_SF_SW_PNS0_16TaskGroupContextEEUlvE_EEvSH_S16_mb:bb.a
  unreachable

_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i:    ; preds = %bb.bc, %bb.bb
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.el)
          to label %_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit unwind label %bb.be

bb.be:                                            ; preds = %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #29
  unreachable

_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  ret void

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66: ; preds = %bb.ba, %bb.az, %bb.aw
  %.pn36 = phi { ptr, i32 } [ %i.eg, %bb.aw ], [ %i.ej, %bb.az ], [ %i.ej, %bb.ba ]
  %i.ev = load ptr, ptr %11, align 8
  %.not.i70 = icmp eq ptr %i.ev, null
  br i1 %.not.i70, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #11
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.j, %bb.m, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45, %bb.ac
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71 ], [ %.pn30, %bb.ac ], [ %.pn34, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit ], [ %.pn32, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45 ], [ %i.at, %bb.m ], [ %i.al, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #11
  br label %_ZN6embree13TaskScheduler6ThreaddlEPv.exit

_ZN6embree13TaskScheduler6ThreaddlEPv.exit:       ; preds = %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47, %.body
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %.body ], [ %.pn, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  resume { ptr, i32 } %.pn36.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNKS_5SetMB8primInfoINS_4sse225VirtualRecalculatePrimRefEEEKSA_RKT_RKNS_12LinearSpace3IS7_EEEUlRKNS_5rangeImEEE_FKS9_RSR_SS_EEET0_SF_SF_SF_SF_RKSU_RKT1_RKT2_EUlmE_EEvSF_SW_EUlSP_E_EEvSF_SF_SF_SW_PNS0_16TaskGroupContextEEUlvE_E7executeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNKS_5SetMB8primInfoINS_4sse225VirtualRecalculatePrimRefEEEKS9_RKT_RKNS_12LinearSpace3IS6_EEEUlRKNS_5rangeImEEE_FKS8_RSQ_SR_EEET0_SE_SE_SE_SE_RKST_RKT1_RKT2_EUlmE_EEvSE_SV_EUlSO_E_EEvSE_SE_SE_SV_PNS0_16TaskGroupContextEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNKS_5SetMB8primInfoINS_4sse225VirtualRecalculatePrimRefEEEKS9_RKT_RKNS_12LinearSpace3IS6_EEEUlRKNS_5rangeImEEE_FKS8_RSQ_SR_EEET0_SE_SE_SE_SE_RKST_RKT1_RKT2_EUlmE_EEvSE_SV_EUlSO_E_EEvSE_SE_SE_SV_PNS0_16TaskGroupContextEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %1 = alloca %"struct.embree::BBox.29", align 8  ; 5 uses
  %2 = alloca %"struct.embree::LBBox", align 16   ; 7 uses
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 6 uses
  %i.d = sub i64 %i.a, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %.not = icmp ugt i64 %i.d, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !35, !align !37 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !35, !align !37
  %i.j = load i64, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !35, !align !37
  %i.m = load i64, ptr %i.l, align 8
  %i.n = sub i64 %i.m, %i.j                       ; 2 uses
  %i.o = mul i64 %i.n, %i.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !35, !align !37
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = udiv i64 %i.o, %i.r
  %i.t = add i64 %i.s, %i.j                       ; 2 uses
  %i.u = add i64 %i.c, 1
  %i.v = mul i64 %i.n, %i.u
  %i.w = udiv i64 %i.v, %i.r
  %i.x = add i64 %i.w, %i.j                       ; 2 uses
  %i.y = icmp ult i64 %i.t, %i.x
  br i1 %i.y, label %.lr.ph.i.i.i, label %_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNKS_5SetMB8primInfoINS_4sse225VirtualRecalculatePrimRefEEEKS7_RKT_RKNS_12LinearSpace3IS4_EEEUlRKNS_5rangeImEEE_FKS6_RSO_SP_EEET0_SC_SC_SC_SC_RKSR_RKT1_RKT2_EUlmE_EEvSC_ST_ENKUlSM_E_clESM_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !35, !align !37 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !1421 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 144
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 136
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i

_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i: ; preds = %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i, %.lr.ph.i.i.i
  %i.aj = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.dq, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %.094.i.i.i = phi i64 [ %i.t, %.lr.ph.i.i.i ], [ %i.dz, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ] ; 2 uses
  %i.ak = phi <4 x float> [ splat (float +inf), %.lr.ph.i.i.i ], [ %i.dg, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %i.al = phi <4 x float> [ splat (float -inf), %.lr.ph.i.i.i ], [ %i.dh, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %i.am = phi <4 x float> [ splat (float +inf), %.lr.ph.i.i.i ], [ %i.di, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %i.an = phi <4 x float> [ splat (float -inf), %.lr.ph.i.i.i ], [ %i.dj, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %i.ao = phi <4 x float> [ splat (float +inf), %.lr.ph.i.i.i ], [ %i.dk, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %i.ap = phi <4 x float> [ splat (float -inf), %.lr.ph.i.i.i ], [ %i.dl, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %i.aq = phi float [ 1.000000e+00, %.lr.ph.i.i.i ], [ %i.dn, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ] ; 2 uses
  %i.ar = phi float [ 0.000000e+00, %.lr.ph.i.i.i ], [ %i.dp, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ] ; 2 uses
  %i.as = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ds, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %i.at = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.dy, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ] ; 2 uses
  %i.au = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %.lr.ph.i.i.i ], [ %i.dx, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %i.av = load ptr, ptr %i.ac, align 16, !noalias !1421
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !1421
  %i.ay = getelementptr inbounds nuw [80 x i8], ptr %i.ax, i64 %.094.i.i.i ; 2 uses
  %i.az = load ptr, ptr %i.ad, align 8, !noalias !1421, !nonnull !35, !align !37
  %.sroa.0.0.copyload.i.i.i = load <2 x float>, ptr %i.ae, align 8, !noalias !1421
  %i.ba = load ptr, ptr %i.af, align 8, !noalias !1421, !nonnull !35, !align !43
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !1421
  store <2 x float> %.sroa.0.0.copyload.i.i.i, ptr %1, align 8, !noalias !1422
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !noalias !1422 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 28
  %i.be = load i32, ptr %i.bd, align 4, !noalias !1422 ; 2 uses
  %i.bf = load ptr, ptr %i.az, align 8, !noalias !1422
  %i.bg = zext i32 %i.bc to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 488
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !1422
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bg
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !1422 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11, !noalias !1422
  %i.bl = zext i32 %i.be to i64
  %i.bm = load ptr, ptr %i.bk, align 16, !noalias !1422
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 496
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !1422
  call void %i.bo(ptr dead_on_unwind nonnull writable sret(%"struct.embree::LBBox") align 16 %2, ptr noundef nonnull align 16 dereferenceable(88) %i.bk, ptr noundef nonnull align 16 dereferenceable(48) %i.ba, i64 noundef %i.bl, ptr noundef nonnull align 4 dereferenceable(8) %1), !noalias !1422, !inline_history !1416
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 44
  %.sroa.0.0.copyload.i6.i.i.i = load <2 x float>, ptr %i.bp, align 4, !noalias !1423 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.br = load float, ptr %i.bq, align 8, !noalias !1423 ; 4 uses
  %.sroa.053.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.0.0.copyload.i6.i.i.i, i64 0 ; 3 uses
  %.sroa.053.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.0.0.copyload.i6.i.i.i, i64 1 ; 3 uses
  %i.bs = fsub float %.sroa.053.4.vec.extract.i.i.i, %.sroa.053.0.vec.extract.i.i.i
  %i.bt = load <2 x float>, ptr %1, align 8, !noalias !1424
  %i.bu = shufflevector <2 x float> %.sroa.0.0.copyload.i6.i.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = fsub <2 x float> %i.bt, %i.bu
  %i.bw = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.by = fdiv <2 x float> %i.bv, %i.bx           ; 2 uses
  %i.bz = extractelement <2 x float> %i.by, i64 0
  %i.ca = fmul float %i.bz, f0x3F800002
  %i.cb = fmul float %i.br, %i.ca
  %i.cc = call noundef float @llvm.floor.f32(float %i.cb) ; 2 uses
  %i.cd = fcmp olt float %i.cc, 0.000000e+00
  %i.ce = select i1 %i.cd, float 0.000000e+00, float %i.cc
  %i.cf = fptosi float %i.ce to i32
  %i.cg = extractelement <2 x float> %i.by, i64 1
  %i.ch = fmul float %i.cg, f0x3F7FFFFC
  %i.ci = fmul float %i.br, %i.ch
  %i.cj = call noundef float @llvm.ceil.f32(float %i.ci) ; 2 uses
  %i.ck = fcmp olt float %i.cj, %i.br
  %i.cl = select i1 %i.ck, float %i.cj, float %i.br
  %i.cm = fptosi float %i.cl to i32
  %i.cn = sub nsw i32 %i.cm, %i.cf                ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bk, i64 36
  %i.cp = load i32, ptr %i.co, align 4, !noalias !1422
  %i.cq = add i32 %i.cp, -1                       ; 2 uses
  %i.cr = load <4 x float>, ptr %2, align 16, !noalias !1421
  %i.cs = load <4 x float>, ptr %i.ag, align 16, !noalias !1421
  %i.ct = load <4 x float>, ptr %i.ah, align 16, !noalias !1421
  %i.cu = load <4 x float>, ptr %i.ai, align 16, !noalias !1421
  %i.cv = bitcast i32 %i.bc to float
  %.sroa.0.12.vec.insert.i.i.i = insertelement <4 x float> %i.cr, float %i.cv, i64 3 ; 2 uses
  %i.cw = bitcast i32 %i.be to float
  %.sroa.6.28.vec.insert.i.i.i = insertelement <4 x float> %i.cs, float %i.cw, i64 3 ; 2 uses
  %i.cx = bitcast i32 %i.cn to float
  %.sroa.10.44.vec.insert.i.i.i = insertelement <4 x float> %i.ct, float %i.cx, i64 3 ; 2 uses
  %i.cy = bitcast i32 %i.cq to float
  %.sroa.15.60.vec.insert.i.i.i = insertelement <4 x float> %i.cu, float %i.cy, i64 3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11, !noalias !1422
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !1421
  %i.cz = fmul <4 x float> %.sroa.10.44.vec.insert.i.i.i, splat (float 5.000000e-01)
  %i.da = fmul <4 x float> %.sroa.0.12.vec.insert.i.i.i, splat (float 5.000000e-01)
  %i.db = fadd <4 x float> %i.da, %i.cz
  %i.dc = fmul <4 x float> %.sroa.15.60.vec.insert.i.i.i, splat (float 5.000000e-01)
  %i.dd = fmul <4 x float> %.sroa.6.28.vec.insert.i.i.i, splat (float 5.000000e-01)
  %i.de = fadd <4 x float> %i.dd, %i.dc
  %i.df = fadd <4 x float> %i.de, %i.db           ; 2 uses
  %i.dg = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ak, <4 x float> %.sroa.0.12.vec.insert.i.i.i) ; 2 uses
  %i.dh = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.al, <4 x float> %.sroa.6.28.vec.insert.i.i.i) ; 2 uses
  %i.di = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.am, <4 x float> %.sroa.10.44.vec.insert.i.i.i) ; 2 uses
  %i.dj = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.an, <4 x float> %.sroa.15.60.vec.insert.i.i.i) ; 2 uses
  %i.dk = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ao, <4 x float> %i.df) ; 2 uses
  %i.dl = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ap, <4 x float> %i.df) ; 2 uses
  %i.dm = fcmp olt float %i.aq, %.sroa.053.0.vec.extract.i.i.i
  %i.dn = select i1 %i.dm, float %i.aq, float %.sroa.053.0.vec.extract.i.i.i ; 2 uses
  %i.do = fcmp olt float %i.ar, %.sroa.053.4.vec.extract.i.i.i
  %i.dp = select i1 %i.do, float %.sroa.053.4.vec.extract.i.i.i, float %i.ar ; 2 uses
  %i.dq = add nuw i64 %i.aj, 1                    ; 2 uses
  %i.dr = zext i32 %i.cn to i64
  %i.ds = add i64 %i.as, %i.dr                    ; 2 uses
  %i.dt = zext i32 %i.cq to i64                   ; 2 uses
  %i.du = icmp samesign ult i64 %i.at, %i.dt
  %i.dv = insertelement <2 x i1> poison, i1 %i.du, i64 0
  %i.dw = shufflevector <2 x i1> %i.dv, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.dx = select <2 x i1> %i.dw, <2 x float> %.sroa.0.0.copyload.i6.i.i.i, <2 x float> %i.au ; 2 uses
  %i.dy = call i64 @llvm.umax.i64(i64 %i.at, i64 %i.dt) ; 2 uses
  %i.dz = add nuw i64 %.094.i.i.i, 1              ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.x
  br i1 %i.ea, label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i, label %_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNKS_5SetMB8primInfoINS_4sse225VirtualRecalculatePrimRefEEEKS7_RKT_RKNS_12LinearSpace3IS4_EEEUlRKNS_5rangeImEEE_FKS6_RSO_SP_EEET0_SC_SC_SC_SC_RKSR_RKT1_RKT2_EUlmE_EEvSC_ST_ENKUlSM_E_clESM_.exit, !llvm.loop !13

_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNKS_5SetMB8primInfoINS_4sse225VirtualRecalculatePrimRefEEEKS7_RKT_RKNS_12LinearSpace3IS4_EEEUlRKNS_5rangeImEEE_FKS6_RSO_SP_EEET0_SC_SC_SC_SC_RKSR_RKT1_RKT2_EUlmE_EEvSC_ST_ENKUlSM_E_clESM_.exit: ; preds = %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i, %bb.b
  %.sroa.16.0.i.i = phi i64 [ 0, %bb.b ], [ %i.dq, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %.lcssa85.i.i.i = phi i64 [ 0, %bb.b ], [ %i.dy, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %.lcssa83.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ds, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %.lcssa81.i.i.i = phi float [ 0.000000e+00, %bb.b ], [ %i.dp, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %.lcssa79.i.i.i = phi float [ 1.000000e+00, %bb.b ], [ %i.dn, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %.lcssa77.i.i.i = phi <4 x float> [ splat (float -inf), %bb.b ], [ %i.dl, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %.lcssa75.i.i.i = phi <4 x float> [ splat (float +inf), %bb.b ], [ %i.dk, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %.lcssa73.i.i.i = phi <4 x float> [ splat (float -inf), %bb.b ], [ %i.dj, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %.lcssa71.i.i.i = phi <4 x float> [ splat (float +inf), %bb.b ], [ %i.di, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %.lcssa69.i.i.i = phi <4 x float> [ splat (float -inf), %bb.b ], [ %i.dh, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %.lcssa.i.i.i = phi <4 x float> [ splat (float +inf), %bb.b ], [ %i.dg, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %i.eb = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %bb.b ], [ %i.dx, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %i.ec = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !nonnull !35, !align !48
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8064
  %i.ef = load ptr, ptr %i.ee, align 64
  %i.eg = getelementptr inbounds nuw [144 x i8], ptr %i.ef, i64 %i.c ; 13 uses
  store <4 x float> %.lcssa.i.i.i, ptr %i.eg, align 16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store <4 x float> %.lcssa69.i.i.i, ptr %i.eh, align 16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  store <4 x float> %.lcssa71.i.i.i, ptr %i.ei, align 16
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  store <4 x float> %.lcssa73.i.i.i, ptr %i.ej, align 16
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 64
  store <4 x float> %.lcssa75.i.i.i, ptr %i.ek, align 16
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 80
  store <4 x float> %.lcssa77.i.i.i, ptr %i.el, align 16
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 96
  store i64 0, ptr %i.em, align 16
  %.sroa.16.96..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 104
  store i64 %.sroa.16.0.i.i, ptr %.sroa.16.96..sroa_idx.i.i, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.eg, i64 112
  store i64 %.lcssa83.i.i.i, ptr %i.en, align 16
  %.sroa.19.112..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 120
  store i64 %.lcssa85.i.i.i, ptr %.sroa.19.112..sroa_idx.i.i, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eg, i64 128
  store <2 x float> %i.eb, ptr %i.eo, align 16
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eg, i64 136
  store float %.lcssa79.i.i.i, ptr %i.ep, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eg, i64 140
  store float %.lcssa81.i.i.i, ptr %i.eq, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.er = add i64 %i.c, %i.a
  %i.es = lshr i64 %i.er, 1                       ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNKS_5SetMB8primInfoINS_4sse225VirtualRecalculatePrimRefEEEKS9_RKT_RKNS_12LinearSpace3IS6_EEEUlRKNS_5rangeImEEE_FKS8_RSQ_SR_EEET0_SE_SE_SE_SE_RKST_RKT1_RKT2_EUlmE_EEvSE_SV_EUlSO_E_EEvSE_SE_SE_SV_PNS0_16TaskGroupContextE(i64 noundef %i.c, i64 noundef %i.es, i64 noundef %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.et, ptr noundef %i.ev)
  %i.ew = load i64, ptr %0, align 8
  %i.ex = load i64, ptr %i.e, align 8
  %i.ey = load ptr, ptr %i.eu, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNKS_5SetMB8primInfoINS_4sse225VirtualRecalculatePrimRefEEEKS9_RKT_RKNS_12LinearSpace3IS6_EEEUlRKNS_5rangeImEEE_FKS8_RSQ_SR_EEET0_SE_SE_SE_SE_RKST_RKT1_RKT2_EUlmE_EEvSE_SV_EUlSO_E_EEvSE_SE_SE_SV_PNS0_16TaskGroupContextE(i64 noundef %i.es, i64 noundef %i.ew, i64 noundef %i.ex, ptr noundef nonnull align 8 dereferenceable(8) %i.et, ptr noundef %i.ey)
  tail call void @_ZN6embree13TaskScheduler4waitEv()
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNKS_5SetMB8primInfoINS_4sse225VirtualRecalculatePrimRefEEEKS7_RKT_RKNS_12LinearSpace3IS4_EEEUlRKNS_5rangeImEEE_FKS6_RSO_SP_EEET0_SC_SC_SC_SC_RKSR_RKT1_RKT2_EUlmE_EEvSC_ST_ENKUlSM_E_clESM_.exit
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZNK6embree4sse232UnalignedHeuristicArrayBinningMBINS_9PrimRefMBELm32EE18BinBoundsAndCenter18binBoundsAndCenterERKS2_RNS_5LBBoxINS_6Vec3faEEERS8_(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(72) %1, ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef nonnull align 16 dereferenceable(16) %3) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %4 = alloca %"struct.embree::LBBox", align 16   ; 7 uses
  %i.a = load ptr, ptr %0, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = load i32, ptr %i.b, align 4
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 488
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.k = load i32, ptr %i.j, align 4
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.h, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 496
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr dead_on_unwind nonnull writable sret(%"struct.embree::LBBox") align 16 %4, ptr noundef nonnull align 16 dereferenceable(88) %i.h, ptr noundef nonnull align 16 dereferenceable(48) %i.i, i64 noundef %i.l, ptr noundef nonnull align 4 dereferenceable(8) %i.m)
  %i.q = load <4 x float>, ptr %4, align 16       ; 2 uses
  store <4 x float> %i.q, ptr %2, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load <4 x float>, ptr %i.r, align 16     ; 2 uses
  store <4 x float> %i.t, ptr %i.s, align 16
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = load <4 x float>, ptr %i.u, align 16     ; 2 uses
  store <4 x float> %i.w, ptr %i.v, align 16
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.z = load <4 x float>, ptr %i.x, align 16     ; 2 uses
  store <4 x float> %i.z, ptr %i.y, align 16
  %i.aa = fmul <4 x float> %i.w, splat (float 5.000000e-01)
  %i.ab = fmul <4 x float> %i.q, splat (float 5.000000e-01)
  %i.ac = fadd <4 x float> %i.ab, %i.aa
  %i.ad = fmul <4 x float> %i.z, splat (float 5.000000e-01)
  %i.ae = fmul <4 x float> %i.t, splat (float 5.000000e-01)
  %i.af = fadd <4 x float> %i.ae, %i.ad
  %i.ag = fadd <4 x float> %i.ac, %i.af
  store <4 x float> %i.ag, ptr %3, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree12bin_parallelINS_4sse232UnalignedHeuristicArrayBinningMBINS_9PrimRefMBELm32EE18BinBoundsAndCenterENS1_8BinInfoTILm32ES3_NS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmmRKT1_RKT_ENKUlRKNS_5rangeImEEE_clESR_(ptr dead_on_unwind noalias writable sret(%"struct.embree::sse2::BinInfoT") align 64 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #15 comdat align 2 {
.preheader104.preheader:
  %3 = alloca %"struct.embree::LBBox", align 16   ; 7 uses
  %4 = alloca %"struct.embree::Vec3fa", align 16  ; 4 uses
  %5 = alloca %"struct.embree::LBBox", align 16   ; 7 uses
  %6 = alloca %"struct.embree::Vec3fa", align 16  ; 4 uses
  %7 = alloca %"struct.embree::LBBox", align 16   ; 7 uses
  %8 = alloca %"struct.embree::Vec3fa", align 16  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6144 ; 10 uses
  br label %_ZN6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit

_ZN6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit: ; preds = %.preheader104.preheader, %_ZN6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit
  %.0.i105 = phi i64 [ 0, %.preheader104.preheader ], [ %i.o, %_ZN6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit ] ; 3 uses
  %i.b = getelementptr inbounds nuw [192 x i8], ptr %0, i64 %.0.i105 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store <4 x float> splat (float +inf), ptr %i.c, align 64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store <4 x float> splat (float -inf), ptr %i.d, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store <4 x float> splat (float +inf), ptr %i.e, align 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store <4 x float> splat (float -inf), ptr %i.f, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store <4 x float> splat (float +inf), ptr %i.g, align 64
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store <4 x float> splat (float -inf), ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store <4 x float> splat (float +inf), ptr %i.i, align 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store <4 x float> splat (float -inf), ptr %i.j, align 16
  store <4 x float> splat (float +inf), ptr %i.b, align 64
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store <4 x float> splat (float -inf), ptr %i.k, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store <4 x float> splat (float +inf), ptr %i.l, align 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store <4 x float> splat (float -inf), ptr %i.m, align 16
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.0.i105
  store <2 x i64> zeroinitializer, ptr %i.n, align 16
  %i.o = add nuw nsw i64 %.0.i105, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, 32
  br i1 %exitcond.not, label %_ZN6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEE5clearEv.exit, label %_ZN6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit, !llvm.loop !9

_ZN6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEE5clearEv.exit: ; preds = %_ZN6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit
  %i.p = load ptr, ptr %1, align 8, !nonnull !35, !align !37
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load i64, ptr %2, align 8                ; 3 uses
  %i.s = getelementptr inbounds nuw [80 x i8], ptr %i.q, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = sub i64 %i.u, %i.r                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !35, !align !43 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !35, !align !43 ; 3 uses
  %i.aa = icmp eq i64 %i.u, %i.r
  br i1 %i.aa, label %_ZN6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEE3binINS0_32UnalignedHeuristicArrayBinningMBIS2_Lm32EE18BinBoundsAndCenterEEEvPKS2_mRKNS0_10BinMappingILm32EEERKT_.exit, label %.preheader

.preheader:                                       ; preds = %_ZN6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEE5clearEv.exit
  %i.ab = add i64 %i.v, -1                        ; 2 uses
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 48
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.a
  %.0.i3106 = phi i64 [ 0, %.lr.ph ], [ %i.gb, %bb.a ] ; 2 uses
end_hunk_0
