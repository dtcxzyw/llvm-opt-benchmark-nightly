Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_builder_hair_mb?download=true
inline.NumInlined: 2542
inline.NumDeleted: 442
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE7recurseERNS1_11BuildRecordEST_b:bb.a
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i64 noundef %i.ca)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.cg = load i64, ptr %2, align 16              ; 2 uses
  %i.ch = add i64 %i.cg, 8
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cj = load i64, ptr %i.ci, align 8
  %.not = icmp ult i64 %i.ch, %i.cj
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 6 uses
  %i.cl = load i64, ptr %i.ck, align 8            ; 3 uses
  br i1 %.not, label %bb.q, label %._crit_edge1394

._crit_edge1394:                                  ; preds = %bb.p
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 112
  %.pre = load i64, ptr %.phi.trans.insert, align 16
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.co = load i64, ptr %i.cn, align 16           ; 2 uses
  %i.cp = sub i64 %i.cl, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8
  %.not106 = icmp ugt i64 %i.cp, %i.cr
  br i1 %.not106, label %bb.t, label %bb.r

bb.r:                                             ; preds = %._crit_edge1394, %bb.q
  %i.cs = phi i64 [ %.pre, %._crit_edge1394 ], [ %i.co, %bb.q ] ; 2 uses
  %.not.i.i.i = icmp samesign eq i64 %i.cs, %i.cl
  br i1 %.not.i.i.i, label %_ZNK6embree5SetMB19deterministic_orderEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.cu = load ptr, ptr %i.ct, align 16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8            ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.cl, 80             ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.idx.i ; 2 uses
  %.idx3.i = mul nuw nsw i64 %i.cs, 80            ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.idx3.i ; 2 uses
  %gepdiff.i = sub nsw i64 %.idx.i, %.idx3.i
  %i.cz = sdiv exact i64 %gepdiff.i, 80
  %i.da = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cz, i1 true)
  %i.db = shl nuw nsw i64 %i.da, 1
  %i.dc = xor i64 %i.db, 126
  tail call void @_ZSt16__introsort_loopIPN6embree9PrimRefMBElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_(ptr noundef %i.cy, ptr noundef %i.cx, i64 noundef %i.dc)
  tail call void @_ZSt22__final_insertion_sortIPN6embree9PrimRefMBEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_(ptr noundef %i.cy, ptr noundef %i.cx)
  br label %_ZNK6embree5SetMB19deterministic_orderEv.exit

_ZNK6embree5SetMB19deterministic_orderEv.exit:    ; preds = %bb.r, %bb.s
  tail call void @_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15createLargeLeafERNS1_11BuildRecordEST_(ptr dead_on_unwind writable sret(%"struct.embree::BVHNodeRecordMB4D") align 16 %0, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 16 dereferenceable(176) %2, ptr noundef nonnull byval(%"struct.embree::FastAllocator::CachedAllocator") align 8 %3)
  br label %bb.gh

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #11
  %i.dd = getelementptr inbounds nuw i8, ptr %38, i64 1472 ; 20 uses
  store i64 1, ptr %i.dd, align 16
  %i.de = getelementptr inbounds nuw i8, ptr %38, i64 1480 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %38, i64 1736 ; 5 uses
  store i64 1, ptr %i.df, align 8
  store i64 %i.cg, ptr %38, align 16
  %i.dg = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.dh = load <4 x float>, ptr %i.cm, align 16
  store <4 x float> %i.dh, ptr %i.dg, align 16
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %38, i64 32
  %i.dk = load <4 x float>, ptr %i.di, align 16
  store <4 x float> %i.dk, ptr %i.dj, align 16
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.dm = getelementptr inbounds nuw i8, ptr %38, i64 48
  %i.dn = load <4 x float>, ptr %i.dl, align 16
  store <4 x float> %i.dn, ptr %i.dm, align 16
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.dp = getelementptr inbounds nuw i8, ptr %38, i64 64
  %i.dq = load <4 x float>, ptr %i.do, align 16
  store <4 x float> %i.dq, ptr %i.dp, align 16
  %i.dr = getelementptr inbounds nuw i8, ptr %38, i64 80
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.dt = load <4 x float>, ptr %i.ds, align 16
  store <4 x float> %i.dt, ptr %i.dr, align 16
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.dv = getelementptr inbounds nuw i8, ptr %38, i64 96
  %i.dw = load <4 x float>, ptr %i.du, align 16
  store <4 x float> %i.dw, ptr %i.dv, align 16
  %i.dx = getelementptr inbounds nuw i8, ptr %38, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.dx, ptr noundef nonnull align 16 dereferenceable(32) %i.cn, i64 32, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %38, i64 144
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 7 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 156
  %i.ec = load <4 x float>, ptr %i.dz, align 16
  store <4 x float> %i.ec, ptr %i.dy, align 16
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 3 uses
  %i.ee = load ptr, ptr %i.ed, align 16           ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %38, i64 160
  store ptr %i.ee, ptr %i.ef, align 16
  store ptr %i.ee, ptr %i.de, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %38, i64 1488
  store i64 2, ptr %i.eg, align 16
  %i.eh = getelementptr inbounds nuw i8, ptr %38, i64 1408 ; 6 uses
  store ptr %i.de, ptr %i.eh, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  store i8 1, ptr %i.g, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  store i8 0, ptr %i.h, align 1
  %i.ei = getelementptr inbounds nuw i8, ptr %39, i64 16
  %i.ej = getelementptr inbounds nuw i8, ptr %40, i64 16
  %i.ek = getelementptr inbounds nuw i8, ptr %39, i64 160 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %40, i64 160 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %39, i64 32
  %i.en = getelementptr inbounds nuw i8, ptr %39, i64 48
  %i.eo = getelementptr inbounds nuw i8, ptr %39, i64 64
  %i.ep = getelementptr inbounds nuw i8, ptr %39, i64 80
  %i.eq = getelementptr inbounds nuw i8, ptr %39, i64 96
  %i.er = getelementptr inbounds nuw i8, ptr %39, i64 112
  %i.es = getelementptr inbounds nuw i8, ptr %39, i64 144
  %i.et = getelementptr inbounds nuw i8, ptr %40, i64 32
  %i.eu = getelementptr inbounds nuw i8, ptr %40, i64 48
  %i.ev = getelementptr inbounds nuw i8, ptr %40, i64 64
  %i.ew = getelementptr inbounds nuw i8, ptr %40, i64 80
  %i.ex = getelementptr inbounds nuw i8, ptr %40, i64 96
  %i.ey = getelementptr inbounds nuw i8, ptr %40, i64 112
  %i.ez = getelementptr inbounds nuw i8, ptr %40, i64 144
  br label %bb.u

bb.u:                                             ; preds = %bb.ar, %bb.t
  %i.fa = phi i64 [ %i.kl, %bb.ar ], [ 1, %bb.t ] ; 3 uses
  %.not1350 = icmp eq i64 %i.fa, 0
  br i1 %.not1350, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.u
  %.pre14021489 = load i8, ptr %i.h, align 1
  br label %bb.at

.lr.ph:                                           ; preds = %bb.u
  %i.fb = load i64, ptr %i.cq, align 8
  br label %bb.v

._crit_edge:                                      ; preds = %bb.x
  %i.fc = icmp eq i64 %.2, -1
  br i1 %i.fc, label %.thread1490, label %bb.y

.thread1490:                                      ; preds = %._crit_edge
  %.pre14021492 = load i8, ptr %i.h, align 1
  br label %.lr.ph1308

bb.v:                                             ; preds = %.lr.ph, %bb.x
  %.01305 = phi i64 [ -1, %.lr.ph ], [ %.2, %bb.x ] ; 2 uses
  %.0771304 = phi float [ -inf, %.lr.ph ], [ %.279, %bb.x ] ; 3 uses
  %.0801303 = phi i64 [ 0, %.lr.ph ], [ %i.gi, %bb.x ] ; 3 uses
  %i.fd = getelementptr inbounds nuw [176 x i8], ptr %38, i64 %.0801303 ; 8 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 112
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 120
  %i.fg = load i64, ptr %i.ff, align 8
  %i.fh = load i64, ptr %i.fe, align 16
  %i.fi = sub i64 %i.fg, %i.fh
  %.not129 = icmp ugt i64 %i.fi, %i.fb
  br i1 %.not129, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fd, i64 152
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fd, i64 156
  %i.fm = load float, ptr %i.fl, align 4
  %i.fn = load float, ptr %i.fk, align 8
  %i.fo = fsub float %i.fm, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  %i.fq = load <4 x float>, ptr %i.fp, align 16, !noalias !256
  %i.fr = load <4 x float>, ptr %i.fj, align 16, !noalias !256
  %i.fs = fsub <4 x float> %i.fq, %i.fr           ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fd, i64 48
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fd, i64 64
  %i.fv = load <4 x float>, ptr %i.fu, align 16, !noalias !257
  %i.fw = load <4 x float>, ptr %i.ft, align 16, !noalias !257
  %i.fx = fsub <4 x float> %i.fv, %i.fw           ; 3 uses
  %i.fy = shufflevector <4 x float> %i.fs, <4 x float> %i.fx, <2 x i32> <i32 1, i32 5> ; 2 uses
  %i.fz = shufflevector <4 x float> %i.fs, <4 x float> %i.fx, <2 x i32> <i32 2, i32 6> ; 2 uses
  %i.ga = fadd <2 x float> %i.fy, %i.fz
  %i.gb = fmul <2 x float> %i.fy, %i.fz
  %i.gc = shufflevector <4 x float> %i.fs, <4 x float> %i.fx, <2 x i32> <i32 0, i32 4>
  %i.gd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gc, <2 x float> %i.ga, <2 x float> %i.gb) ; 2 uses
  %shift = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.gd, %shift
  %i.ge = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.gf = fmul float %i.ge, 5.000000e-01
  %i.gg = fmul float %i.fo, %i.gf                 ; 2 uses
  %i.gh = fcmp ogt float %i.gg, %.0771304
  br i1 %i.gh, label %_ZNK6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE8halfAreaEv.exit, label %bb.x

_ZNK6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE8halfAreaEv.exit: ; preds = %bb.w
  br label %bb.x

bb.x:                                             ; preds = %_ZNK6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE8halfAreaEv.exit, %bb.w, %bb.v
  %.279 = phi float [ %.0771304, %bb.v ], [ %.0771304, %bb.w ], [ %i.gg, %_ZNK6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE8halfAreaEv.exit ]
  %.2 = phi i64 [ %.01305, %bb.v ], [ %.01305, %bb.w ], [ %.0801303, %_ZNK6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE8halfAreaEv.exit ] ; 4 uses
  %i.gi = add nuw i64 %.0801303, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.gi, %i.fa
  br i1 %exitcond.not, label %._crit_edge, label %bb.v, !llvm.loop !94

bb.y:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #11
  %i.gj = load i64, ptr %2, align 16
  %i.gk = add i64 %i.gj, 1                        ; 2 uses
  store i64 %i.gk, ptr %39, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #11
  store i64 %i.gk, ptr %40, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #11
  %i.gl = getelementptr inbounds nuw [176 x i8], ptr %38, i64 %.2 ; 11 uses
  invoke void @_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS1_11BuildRecordERS10_S13_RbS14_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.60") align 8 %41, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 16 dereferenceable(176) %i.gl, ptr noundef nonnull align 16 dereferenceable(176) %39, ptr noundef nonnull align 16 dereferenceable(176) %40, ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %i.h)
          to label %bb.z unwind label %bb.au

bb.z:                                             ; preds = %bb.y
  store ptr null, ptr %41, align 8
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.2 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8            ; 8 uses
  %i.go = load ptr, ptr %i.ek, align 16           ; 3 uses
  %i.gp = load ptr, ptr %i.gn, align 8
  %i.gq = icmp eq ptr %i.go, %i.gp
  br i1 %i.gq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 2 uses
  %i.gs = load i64, ptr %i.gr, align 8
  %i.gt = add i64 %i.gs, 1
  store i64 %i.gt, ptr %i.gr, align 8
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.gu = load i64, ptr %i.df, align 8            ; 2 uses
  %i.gv = add i64 %i.gu, 1
  store i64 %i.gv, ptr %i.df, align 8
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.gu ; 3 uses
  store ptr %i.go, ptr %i.gw, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store i64 1, ptr %i.gx, align 16
  store ptr %i.gw, ptr %i.gm, align 8
  %.pre1397 = load ptr, ptr %i.gn, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.gy = phi ptr [ %.pre1397, %bb.ab ], [ %i.go, %bb.aa ]
  %i.gz = load ptr, ptr %i.el, align 16           ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.gy
  br i1 %i.ha, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hb = load i64, ptr %i.dd, align 16
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.hb
  store ptr %i.gn, ptr %i.hc, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8            ; 2 uses
  %i.hf = add i64 %i.he, 1
  store i64 %i.hf, ptr %i.hd, align 8
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.hg = load i64, ptr %i.df, align 8            ; 2 uses
  %i.hh = add i64 %i.hg, 1
  store i64 %i.hh, ptr %i.df, align 8
  %i.hi = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.hg ; 3 uses
  store ptr %i.gz, ptr %i.hi, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store i64 1, ptr %i.hj, align 16
  %i.hk = load i64, ptr %i.dd, align 16
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.hk
  store ptr %i.hi, ptr %i.hl, align 8
  %.phi.trans.insert1398 = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %.pre1399 = load i64, ptr %.phi.trans.insert1398, align 8
  %i.hm = add i64 %.pre1399, -1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.hn = phi i64 [ %i.hm, %bb.ae ], [ %i.he, %bb.ad ] ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store i64 %i.hn, ptr %i.ho, align 8
  %i.hp = icmp eq i64 %i.hn, 0
  br i1 %i.hp, label %bb.ag, label %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit

bb.ag:                                            ; preds = %bb.af
  %i.hq = load ptr, ptr %i.gn, align 8            ; 6 uses
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit, label %.preheader1280

.preheader1280:                                   ; preds = %bb.ag
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 32
  %i.ht = load ptr, ptr %i.hs, align 8            ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hv = load i64, ptr %i.hu, align 8            ; 3 uses
  %.not.i431 = icmp eq ptr %i.ht, null
  br i1 %.not.i431, label %.noexc433, label %bb.ah

bb.ah:                                            ; preds = %.preheader1280
  %i.hw = mul i64 %i.hv, 80                       ; 2 uses
  %i.hx = icmp ugt i64 %i.hw, 29360127
  br i1 %i.hx, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hz = load i8, ptr %i.hy, align 8, !range !34, !noundef !35
  %i.ia = trunc nuw i8 %i.hz to i1
  invoke void @_ZN6embree7os_freeEPvmb(ptr noundef nonnull %i.ht, i64 noundef %i.hw, i1 noundef zeroext %i.ia)
          to label %.noexc433 unwind label %bb.al

bb.aj:                                            ; preds = %bb.ah
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.ht)
          to label %.noexc433 unwind label %bb.al

.noexc433:                                        ; preds = %bb.aj, %bb.ai, %.preheader1280
  %.not9.i432 = icmp eq i64 %i.hv, 0
  br i1 %.not9.i432, label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i236, label %bb.ak

bb.ak:                                            ; preds = %.noexc433
  %i.ib = load ptr, ptr %i.hq, align 8            ; 2 uses
  %i.ic = mul i64 %i.hv, -80
  %i.id = load ptr, ptr %i.ib, align 8
  %i.ie = load ptr, ptr %i.id, align 8
  invoke void %i.ie(ptr noundef nonnull align 8 dereferenceable(8) %i.ib, i64 noundef %i.ic, i1 noundef zeroext true)
          to label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i236 unwind label %bb.al, !inline_history !0

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.if = landingpad { ptr, i32 }
          catch ptr null
  %i.ig = extractvalue { ptr, i32 } %i.if, 0
  call void @__clang_call_terminate(ptr %i.ig) #29
  unreachable

_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i236: ; preds = %bb.ak, %.noexc433
  call void @_ZdlPv(ptr noundef nonnull %i.hq) #26
  %.pre1400 = load ptr, ptr %41, align 8
  br label %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.af, %bb.ag, %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i236
  %i.ih = phi ptr [ null, %bb.af ], [ null, %bb.ag ], [ %.pre1400, %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i236 ] ; 6 uses
  %i.ii = load i64, ptr %39, align 16
  store i64 %i.ii, ptr %i.gl, align 16
  %i.ij = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.ik = load <4 x float>, ptr %i.ei, align 16
  store <4 x float> %i.ik, ptr %i.ij, align 16
  %i.il = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  %i.im = load <4 x float>, ptr %i.em, align 16
  store <4 x float> %i.im, ptr %i.il, align 16
  %i.in = getelementptr inbounds nuw i8, ptr %i.gl, i64 48
  %i.io = load <4 x float>, ptr %i.en, align 16
  store <4 x float> %i.io, ptr %i.in, align 16
  %i.ip = getelementptr inbounds nuw i8, ptr %i.gl, i64 64
  %i.iq = load <4 x float>, ptr %i.eo, align 16
  store <4 x float> %i.iq, ptr %i.ip, align 16
  %i.ir = getelementptr inbounds nuw i8, ptr %i.gl, i64 80
  %i.is = load <4 x float>, ptr %i.ep, align 16
  store <4 x float> %i.is, ptr %i.ir, align 16
  %i.it = getelementptr inbounds nuw i8, ptr %i.gl, i64 96
  %i.iu = load <4 x float>, ptr %i.eq, align 16
  store <4 x float> %i.iu, ptr %i.it, align 16
  %i.iv = getelementptr inbounds nuw i8, ptr %i.gl, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.iv, ptr noundef nonnull align 16 dereferenceable(32) %i.er, i64 32, i1 false)
  %i.iw = getelementptr inbounds nuw i8, ptr %i.gl, i64 144
  %i.ix = load <4 x float>, ptr %i.es, align 16
  store <4 x float> %i.ix, ptr %i.iw, align 16
  %i.iy = load ptr, ptr %i.ek, align 16
  %i.iz = getelementptr inbounds nuw i8, ptr %i.gl, i64 160
  store ptr %i.iy, ptr %i.iz, align 16
  %i.ja = load i64, ptr %i.dd, align 16
  %i.jb = getelementptr inbounds nuw [176 x i8], ptr %38, i64 %i.ja ; 10 uses
  %i.jc = load i64, ptr %40, align 16
  store i64 %i.jc, ptr %i.jb, align 16
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %i.je = load <4 x float>, ptr %i.ej, align 16
  store <4 x float> %i.je, ptr %i.jd, align 16
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 32
  %i.jg = load <4 x float>, ptr %i.et, align 16
  store <4 x float> %i.jg, ptr %i.jf, align 16
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jb, i64 48
  %i.ji = load <4 x float>, ptr %i.eu, align 16
  store <4 x float> %i.ji, ptr %i.jh, align 16
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jb, i64 64
  %i.jk = load <4 x float>, ptr %i.ev, align 16
  store <4 x float> %i.jk, ptr %i.jj, align 16
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jb, i64 80
  %i.jm = load <4 x float>, ptr %i.ew, align 16
  store <4 x float> %i.jm, ptr %i.jl, align 16
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jb, i64 96
  %i.jo = load <4 x float>, ptr %i.ex, align 16
  store <4 x float> %i.jo, ptr %i.jn, align 16
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jb, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.jp, ptr noundef nonnull align 16 dereferenceable(32) %i.ey, i64 32, i1 false)
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jb, i64 144
  %i.jr = load <4 x float>, ptr %i.ez, align 16
  store <4 x float> %i.jr, ptr %i.jq, align 16
  %i.js = load ptr, ptr %i.el, align 16
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jb, i64 160
  store ptr %i.js, ptr %i.jt, align 16
  %i.ju = load i64, ptr %i.dd, align 16
  %i.jv = add i64 %i.ju, 1                        ; 2 uses
  store i64 %i.jv, ptr %i.dd, align 16
  %.not.i443 = icmp eq ptr %i.ih, null
  br i1 %.not.i443, label %bb.ar, label %.preheader.i.i444

.preheader.i.i444:                                ; preds = %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ih, i64 32
  %i.jx = load ptr, ptr %i.jw, align 8            ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ih, i64 24
  %i.jz = load i64, ptr %i.jy, align 8            ; 3 uses
  %.not.i.i.i445 = icmp eq ptr %i.jx, null
  br i1 %.not.i.i.i445, label %.noexc.i.i446, label %bb.am

bb.am:                                            ; preds = %.preheader.i.i444
  %i.ka = mul i64 %i.jz, 80                       ; 2 uses
  %i.kb = icmp ugt i64 %i.ka, 29360127
  br i1 %i.kb, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.kd = load i8, ptr %i.kc, align 8, !range !34, !noundef !35
  %i.ke = trunc nuw i8 %i.kd to i1
  invoke void @_ZN6embree7os_freeEPvmb(ptr noundef nonnull %i.jx, i64 noundef %i.ka, i1 noundef zeroext %i.ke)
          to label %.noexc.i.i446 unwind label %bb.aq

bb.ao:                                            ; preds = %bb.am
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.jx)
          to label %.noexc.i.i446 unwind label %bb.aq

.noexc.i.i446:                                    ; preds = %bb.ao, %bb.an, %.preheader.i.i444
  %.not9.i.i.i447 = icmp eq i64 %i.jz, 0
  br i1 %.not9.i.i.i447, label %_ZNKSt14default_deleteIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEEEclEPS5_.exit.i448, label %bb.ap

bb.ap:                                            ; preds = %.noexc.i.i446
  %i.kf = load ptr, ptr %i.ih, align 8            ; 2 uses
  %i.kg = mul i64 %i.jz, -80
  %i.kh = load ptr, ptr %i.kf, align 8
  %i.ki = load ptr, ptr %i.kh, align 8
  invoke void %i.ki(ptr noundef nonnull align 8 dereferenceable(8) %i.kf, i64 noundef %i.kg, i1 noundef zeroext true)
          to label %_ZNKSt14default_deleteIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEEEclEPS5_.exit.i448 unwind label %bb.aq, !inline_history !0

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %i.kj = landingpad { ptr, i32 }
          catch ptr null
  %i.kk = extractvalue { ptr, i32 } %i.kj, 0
  call void @__clang_call_terminate(ptr %i.kk) #29
  unreachable

_ZNKSt14default_deleteIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEEEclEPS5_.exit.i448: ; preds = %bb.ap, %.noexc.i.i446
  call void @_ZdlPv(ptr noundef nonnull %i.ih) #26
  %.pre1401 = load i64, ptr %i.dd, align 16
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNKSt14default_deleteIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEEEclEPS5_.exit.i448, %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit
  %i.kl = phi i64 [ %.pre1401, %_ZNKSt14default_deleteIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEEEclEPS5_.exit.i448 ], [ %i.jv, %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #11
  %i.km = load i64, ptr %1, align 8
  %i.kn = icmp ult i64 %i.kl, %i.km
  br i1 %i.kn, label %bb.u, label %bb.as, !llvm.loop !95

bb.as:                                            ; preds = %bb.ar
  %.not1351 = icmp eq i64 %i.kl, 0
  %.pre1402 = load i8, ptr %i.h, align 1          ; 2 uses
  br i1 %.not1351, label %bb.at, label %.lr.ph1308

.lr.ph1308:                                       ; preds = %.thread1490, %bb.as
  %.pre14021493 = phi i8 [ %.pre14021492, %.thread1490 ], [ %.pre1402, %bb.as ] ; 2 uses
  %i.ko = phi i64 [ %i.fa, %.thread1490 ], [ %i.kl, %bb.as ] ; 4 uses
  %.sroa.034.0.copyload = load float, ptr %i.ea, align 8 ; 2 uses
  %.sroa.4.0.copyload = load float, ptr %i.eb, align 4 ; 2 uses
  %min.iters.check1578 = icmp ult i64 %i.ko, 8
  br i1 %min.iters.check1578, label %scalar.ph1577.preheader, label %vector.ph1579

vector.ph1579:                                    ; preds = %.lr.ph1308
  %n.vec1580 = and i64 %i.ko, -8                  ; 3 uses
  %i.kp = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %.pre14021493, i64 0
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.034.0.copyload, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1581 = insertelement <4 x float> poison, float %.sroa.4.0.copyload, i64 0
  %broadcast.splat1582 = shufflevector <4 x float> %broadcast.splatinsert1581, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1583

vector.body1583:                                  ; preds = %vector.body1583, %vector.ph1579
  %index1584 = phi i64 [ 0, %vector.ph1579 ], [ %index.next1586, %vector.body1583 ] ; 9 uses
  %vec.phi = phi <4 x i8> [ %i.kp, %vector.ph1579 ], [ %i.nc, %vector.body1583 ]
  %vec.phi1585 = phi <4 x i8> [ zeroinitializer, %vector.ph1579 ], [ %i.nd, %vector.body1583 ]
  %i.kq = getelementptr inbounds nuw [176 x i8], ptr %38, i64 %index1584 ; 2 uses
  %i.kr = getelementptr inbounds nuw [176 x i8], ptr %38, i64 %index1584 ; 2 uses
  %i.ks = getelementptr inbounds nuw [176 x i8], ptr %38, i64 %index1584 ; 2 uses
  %i.kt = getelementptr inbounds nuw [176 x i8], ptr %38, i64 %index1584 ; 2 uses
  %i.ku = getelementptr inbounds nuw [176 x i8], ptr %38, i64 %index1584 ; 2 uses
  %i.kv = getelementptr inbounds nuw [176 x i8], ptr %38, i64 %index1584 ; 2 uses
  %i.kw = getelementptr inbounds nuw [176 x i8], ptr %38, i64 %index1584 ; 2 uses
  %i.kx = getelementptr inbounds nuw [176 x i8], ptr %38, i64 %index1584 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kq, i64 152
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kr, i64 328
  %i.la = getelementptr inbounds nuw i8, ptr %i.ks, i64 504
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kt, i64 680
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ku, i64 856
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kv, i64 1032
  %i.le = getelementptr inbounds nuw i8, ptr %i.kw, i64 1208
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kx, i64 1384
  %i.lg = load float, ptr %i.ky, align 8
  %i.lh = load float, ptr %i.kz, align 8
  %i.li = load float, ptr %i.la, align 8
  %i.lj = load float, ptr %i.lb, align 8
  %i.lk = insertelement <4 x float> poison, float %i.lg, i64 0
  %i.ll = insertelement <4 x float> %i.lk, float %i.lh, i64 1
  %i.lm = insertelement <4 x float> %i.ll, float %i.li, i64 2
  %i.ln = insertelement <4 x float> %i.lm, float %i.lj, i64 3
  %i.lo = load float, ptr %i.lc, align 8
  %i.lp = load float, ptr %i.ld, align 8
  %i.lq = load float, ptr %i.le, align 8
  %i.lr = load float, ptr %i.lf, align 8
  %i.ls = insertelement <4 x float> poison, float %i.lo, i64 0
  %i.lt = insertelement <4 x float> %i.ls, float %i.lp, i64 1
  %i.lu = insertelement <4 x float> %i.lt, float %i.lq, i64 2
  %i.lv = insertelement <4 x float> %i.lu, float %i.lr, i64 3
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kq, i64 156
  %i.lx = getelementptr inbounds nuw i8, ptr %i.kr, i64 332
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ks, i64 508
  %i.lz = getelementptr inbounds nuw i8, ptr %i.kt, i64 684
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ku, i64 860
  %i.mb = getelementptr inbounds nuw i8, ptr %i.kv, i64 1036
  %i.mc = getelementptr inbounds nuw i8, ptr %i.kw, i64 1212
  %i.md = getelementptr inbounds nuw i8, ptr %i.kx, i64 1388
  %i.me = load float, ptr %i.lw, align 4
  %i.mf = load float, ptr %i.lx, align 4
  %i.mg = load float, ptr %i.ly, align 4
  %i.mh = load float, ptr %i.lz, align 4
  %i.mi = insertelement <4 x float> poison, float %i.me, i64 0
  %i.mj = insertelement <4 x float> %i.mi, float %i.mf, i64 1
  %i.mk = insertelement <4 x float> %i.mj, float %i.mg, i64 2
  %i.ml = insertelement <4 x float> %i.mk, float %i.mh, i64 3
  %i.mm = load float, ptr %i.ma, align 4
  %i.mn = load float, ptr %i.mb, align 4
  %i.mo = load float, ptr %i.mc, align 4
  %i.mp = load float, ptr %i.md, align 4
  %i.mq = insertelement <4 x float> poison, float %i.mm, i64 0
  %i.mr = insertelement <4 x float> %i.mq, float %i.mn, i64 1
  %i.ms = insertelement <4 x float> %i.mr, float %i.mo, i64 2
  %i.mt = insertelement <4 x float> %i.ms, float %i.mp, i64 3
  %i.mu = fcmp ogt <4 x float> %i.ln, %broadcast.splat
  %i.mv = fcmp ogt <4 x float> %i.lv, %broadcast.splat
  %i.mw = fcmp olt <4 x float> %i.ml, %broadcast.splat1582
  %i.mx = fcmp olt <4 x float> %i.mt, %broadcast.splat1582
  %i.my = select <4 x i1> %i.mu, <4 x i1> splat (i1 true), <4 x i1> %i.mw
  %i.mz = select <4 x i1> %i.mv, <4 x i1> splat (i1 true), <4 x i1> %i.mx
  %i.na = zext <4 x i1> %i.my to <4 x i8>
  %i.nb = zext <4 x i1> %i.mz to <4 x i8>
  %i.nc = or <4 x i8> %vec.phi, %i.na             ; 2 uses
  %i.nd = or <4 x i8> %vec.phi1585, %i.nb         ; 2 uses
  %index.next1586 = add nuw i64 %index1584, 8     ; 2 uses
  %i.ne = icmp eq i64 %index.next1586, %n.vec1580
  br i1 %i.ne, label %middle.block1587, label %vector.body1583, !llvm.loop !96

middle.block1587:                                 ; preds = %vector.body1583
  %bin.rdx = or <4 x i8> %i.nd, %i.nc
  %i.nf = call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %bin.rdx) ; 2 uses
  %cmp.n1588 = icmp eq i64 %i.ko, %n.vec1580
  br i1 %cmp.n1588, label %._crit_edge1309, label %scalar.ph1577.preheader

scalar.ph1577.preheader:                          ; preds = %.lr.ph1308, %middle.block1587
  %.01021306.ph = phi i64 [ 0, %.lr.ph1308 ], [ %n.vec1580, %middle.block1587 ]
  %.ph = phi i8 [ %.pre14021493, %.lr.ph1308 ], [ %i.nf, %middle.block1587 ]
  br label %scalar.ph1577

._crit_edge1309:                                  ; preds = %scalar.ph1577, %middle.block1587
  %.lcssa1564 = phi i8 [ %i.nf, %middle.block1587 ], [ %i.nq, %scalar.ph1577 ] ; 2 uses
  store i8 %.lcssa1564, ptr %i.h, align 1
  br label %bb.at

bb.at:                                            ; preds = %.thread, %._crit_edge1309, %bb.as
  %i.ng = phi i8 [ %.lcssa1564, %._crit_edge1309 ], [ %.pre1402, %bb.as ], [ %.pre14021489, %.thread ]
  %i.nh = trunc nuw i8 %i.ng to i1
  br i1 %i.nh, label %bb.av, label %bb.cl

bb.au:                                            ; preds = %bb.y
  %i.ni = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #11
  br label %.body254

scalar.ph1577:                                    ; preds = %scalar.ph1577.preheader, %scalar.ph1577
  %.01021306 = phi i64 [ %i.nr, %scalar.ph1577 ], [ %.01021306.ph, %scalar.ph1577.preheader ] ; 2 uses
  %i.nj = phi i8 [ %i.nq, %scalar.ph1577 ], [ %.ph, %scalar.ph1577.preheader ]
  %i.nk = getelementptr inbounds nuw [176 x i8], ptr %38, i64 %.01021306 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 152
  %.sroa.035.0.copyload = load float, ptr %i.nl, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nk, i64 156
  %.sroa.436.0.copyload = load float, ptr %.sroa.436.0..sroa_idx, align 4
  %i.nm = fcmp ogt float %.sroa.035.0.copyload, %.sroa.034.0.copyload
  %i.nn = fcmp olt float %.sroa.436.0.copyload, %.sroa.4.0.copyload
  %i.no = select i1 %i.nm, i1 true, i1 %i.nn
  %i.np = zext i1 %i.no to i8
  %i.nq = or i8 %i.nj, %i.np                      ; 2 uses
  %i.nr = add nuw i64 %.01021306, 1               ; 2 uses
  %exitcond1383.not = icmp eq i64 %i.nr, %i.ko
  br i1 %exitcond1383.not, label %._crit_edge1309, label %scalar.ph1577, !llvm.loop !97

bb.av:                                            ; preds = %bb.at
  %i.ns = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.nt = load ptr, ptr %i.ns, align 8            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 256, ptr %i.c, align 8
  %i.nu = load ptr, ptr %i.nt, align 64           ; 18 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 8 ; 6 uses
  %i.nw = load atomic ptr, ptr %i.nv seq_cst, align 8
  %i.nx = icmp eq ptr %i.nw, %i.bv
  br i1 %i.nx, label %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i247, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #11
  store ptr %i.nu, ptr %23, align 8
  %i.ny = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  store i8 1, ptr %i.ny, align 8
  invoke void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 64 dereferenceable(192) %i.nu)
          to label %.noexc253 unwind label %bb.ca

.noexc253:                                        ; preds = %bb.aw
  %i.nz = load atomic ptr, ptr %i.nv seq_cst, align 8
  %.not.i2.i242 = icmp eq ptr %i.nz, null
  br i1 %.not.i2.i242, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.noexc253
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nu, i64 104
  %i.ob = load i64, ptr %i.oa, align 8
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nu, i64 168
  %i.od = load i64, ptr %i.oc, align 8
  %i.oe = add i64 %i.od, %i.ob
  %i.of = load atomic ptr, ptr %i.nv seq_cst, align 8
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 280
  %i.oh = atomicrmw add ptr %i.og, i64 %i.oe seq_cst, align 8 ; 0 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nu, i64 88
  %i.oj = load i64, ptr %i.oi, align 8
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nu, i64 80
  %i.ol = load i64, ptr %i.ok, align 16
  %i.om = getelementptr inbounds nuw i8, ptr %i.nu, i64 152
  %i.on = load i64, ptr %i.om, align 8
  %i.oo = getelementptr inbounds nuw i8, ptr %i.nu, i64 144
  %i.op = load i64, ptr %i.oo, align 16
  %i.oq = add i64 %i.oj, %i.on
  %i.or = add i64 %i.ol, %i.op
  %i.os = sub i64 %i.oq, %i.or
  %i.ot = load atomic ptr, ptr %i.nv seq_cst, align 8
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 288
  %i.ov = atomicrmw add ptr %i.ou, i64 %i.os seq_cst, align 8 ; 0 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.nu, i64 112
  %i.ox = load i64, ptr %i.ow, align 16
  %i.oy = getelementptr inbounds nuw i8, ptr %i.nu, i64 176
  %i.oz = load i64, ptr %i.oy, align 16
  %i.pa = add i64 %i.oz, %i.ox
  %i.pb = load atomic ptr, ptr %i.nv seq_cst, align 8
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 296
  %i.pd = atomicrmw add ptr %i.pc, i64 %i.pa seq_cst, align 8 ; 0 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.noexc253
  %i.pe = getelementptr inbounds nuw i8, ptr %i.nu, i64 72
  %.not.i456 = icmp eq ptr %i.bv, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.pe, i8 0, i64 48, i1 false)
  br i1 %.not.i456, label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread, label %bb.az

_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread: ; preds = %bb.ay
  %i.pf = getelementptr inbounds nuw i8, ptr %i.nu, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.pf, i8 0, i64 48, i1 false)
  br label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit458

bb.az:                                            ; preds = %bb.ay
  %i.pg = getelementptr inbounds nuw i8, ptr %i.nu, i64 96
  %i.ph = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %i.pi = load i64, ptr %i.ph, align 8
  store i64 %i.pi, ptr %i.pg, align 32
  %i.pj = getelementptr inbounds nuw i8, ptr %i.nu, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.pj, i8 0, i64 48, i1 false)
  %i.pk = getelementptr inbounds nuw i8, ptr %i.nu, i64 160
  %i.pl = load i64, ptr %i.ph, align 8
  store i64 %i.pl, ptr %i.pk, align 32
  br label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit458

_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit458: ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread, %bb.az
  store atomic ptr %i.bv, ptr %i.nv seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #11
  store ptr @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE, ptr %22, align 8
  %i.pm = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i8 1, ptr %i.pm, align 8
  invoke void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %.noexc.i245 unwind label %bb.bj

.noexc.i245:                                      ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit458
  %i.pn = getelementptr inbounds nuw i8, ptr %i.bv, i64 304 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.bv, i64 312 ; 4 uses
  %i.pp = load ptr, ptr %i.po, align 8            ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.bv, i64 320 ; 2 uses
  %i.pr = load ptr, ptr %i.pq, align 8
  %.not.i461 = icmp eq ptr %i.pp, %i.pr
  br i1 %.not.i461, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.noexc.i245
  store ptr %i.nu, ptr %i.pp, align 8
  %i.ps = load ptr, ptr %i.po, align 8
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  store ptr %i.pt, ptr %i.po, align 8
  br label %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i246

bb.bb:                                            ; preds = %.noexc.i245
  %i.pu = load ptr, ptr %i.pn, align 8            ; 4 uses
  %i.pv = ptrtoint ptr %i.pp to i64
  %i.pw = ptrtoint ptr %i.pu to i64
  %i.px = sub i64 %i.pv, %i.pw                    ; 5 uses
  %i.py = icmp eq i64 %i.px, 9223372036854775800
  br i1 %i.py, label %bb.bc, label %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #27
          to label %.noexc463 unwind label %bb.bf

.noexc463:                                        ; preds = %bb.bc
  unreachable

_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bb
  %i.pz = ashr exact i64 %i.px, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.pz, i64 1)
  %i.qa = add nsw i64 %.sroa.speculated.i.i.i, %i.pz ; 2 uses
  %i.qb = icmp ult i64 %i.qa, %i.pz
  %i.qc = call i64 @llvm.umin.i64(i64 %i.qa, i64 1152921504606846975)
  %i.qd = select i1 %i.qb, i64 1152921504606846975, i64 %i.qc ; 3 uses
  %.not.i.i.i462 = icmp ne i64 %i.qd, 0
  call void @llvm.assume(i1 %.not.i.i.i462)
  %i.qe = shl nuw nsw i64 %i.qd, 3
  %i.qf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qe) #25
          to label %.noexc464 unwind label %bb.bf ; 4 uses

.noexc464:                                        ; preds = %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.qg = getelementptr inbounds i8, ptr %i.qf, i64 %i.px ; 2 uses
  store ptr %i.nu, ptr %i.qg, align 8
  %i.qh = icmp sgt i64 %i.px, 0
  br i1 %i.qh, label %bb.bd, label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.bd:                                            ; preds = %.noexc464
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.qf, ptr align 8 %i.pu, i64 %i.px, i1 false)
  br label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.bd, %.noexc464
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  %.not.i17.i.i = icmp eq ptr %i.pu, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.pu) #26
  br label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.be, %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.qf, ptr %i.pn, align 8
  store ptr %i.qi, ptr %i.po, align 8
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.qf, i64 %i.qd
  store ptr %i.qj, ptr %i.pq, align 8
  br label %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i246

bb.bf:                                            ; preds = %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %bb.bc
  %i.qk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %22) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #11
  br label %.body.i243

_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i246: ; preds = %bb.ba, %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit465 unwind label %bb.bg

bb.bg:                                            ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i246
  %i.ql = landingpad { ptr, i32 }
          catch ptr null
  %i.qm = extractvalue { ptr, i32 } %i.ql, 0
  call void @__clang_call_terminate(ptr %i.qm) #29
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit465:       ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i246
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #11
  %i.qn = load i8, ptr %i.ny, align 8, !range !34, !noundef !35
  %i.qo = trunc nuw i8 %i.qn to i1
  br i1 %i.qo, label %bb.bh, label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit466

bb.bh:                                            ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit465
  %i.qp = load ptr, ptr %23, align 8, !nonnull !35, !align !37
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.qp)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit466 unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.qq = landingpad { ptr, i32 }
          catch ptr null
  %i.qr = extractvalue { ptr, i32 } %i.qq, 0
  call void @__clang_call_terminate(ptr %i.qr) #29
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit466:       ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit465, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #11
end_hunk_0
begin_hunk_1_@_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE7recurseERNS1_11BuildRecordEST_b:bb.a
.noexc257:                                        ; preds = %bb.bn
  %i.rs = getelementptr inbounds nuw i8, ptr %i.nt, i64 8 ; 2 uses
  store ptr %i.rr, ptr %i.rs, align 8
  %i.rt = load i64, ptr %i.rd, align 8
  %i.ru = load i64, ptr %i.qx, align 16
  %i.rv = sub i64 %i.rt, %i.ru
  %i.rw = getelementptr inbounds nuw i8, ptr %i.nt, i64 48 ; 6 uses
  %i.rx = load i64, ptr %i.rw, align 16
  %i.ry = add i64 %i.rx, %i.rv                    ; 2 uses
  store i64 %i.ry, ptr %i.rw, align 16
  %i.rz = load i64, ptr %i.d, align 8             ; 2 uses
  store i64 %i.rz, ptr %i.rd, align 8
  %i.sa = load i64, ptr %i.c, align 8             ; 2 uses
  store i64 %i.sa, ptr %i.qx, align 16
  %.not23.i.i250 = icmp ugt i64 %i.sa, %i.rz
  br i1 %.not23.i.i250, label %bb.bp, label %bb.bo, !prof !40

bb.bo:                                            ; preds = %.noexc257
  store i64 %i.ry, ptr %i.rw, align 16
  br label %bb.bs

bb.bp:                                            ; preds = %.noexc257
  store i64 0, ptr %i.qx, align 16
  %i.sb = load i64, ptr %i.rn, align 32
  store i64 %i.sb, ptr %i.d, align 8
  %i.sc = invoke noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.bv, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 64, i1 noundef zeroext false)
          to label %.noexc258 unwind label %bb.ca ; 2 uses

.noexc258:                                        ; preds = %bb.bp
  store ptr %i.sc, ptr %i.rs, align 8
  %i.sd = load i64, ptr %i.rd, align 8
  %i.se = load i64, ptr %i.qx, align 16
  %i.sf = sub i64 %i.sd, %i.se
  %i.sg = load i64, ptr %i.rw, align 16
  %i.sh = add i64 %i.sg, %i.sf                    ; 2 uses
  store i64 %i.sh, ptr %i.rw, align 16
  %i.si = load i64, ptr %i.d, align 8             ; 2 uses
  store i64 %i.si, ptr %i.rd, align 8
  %i.sj = load i64, ptr %i.c, align 8             ; 2 uses
  store i64 %i.sj, ptr %i.qx, align 16
  %.not24.i.i252 = icmp ugt i64 %i.sj, %i.si
  br i1 %.not24.i.i252, label %bb.br, label %bb.bq, !prof !40

bb.bq:                                            ; preds = %.noexc258
  store i64 %i.sh, ptr %i.rw, align 16
  br label %bb.bs

bb.br:                                            ; preds = %.noexc258
  store i64 0, ptr %i.qx, align 16
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %bb.bo
  %.0.i.i251 = phi ptr [ %i.rr, %bb.bo ], [ %i.sc, %bb.bq ], [ null, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %.noexc167

.noexc167:                                        ; preds = %bb.bs, %bb.bk, %bb.bm
  %.1.i.i249 = phi ptr [ %i.rl, %bb.bk ], [ %.0.i.i251, %bb.bs ], [ %i.rq, %bb.bm ] ; 26 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.sk = getelementptr inbounds nuw i8, ptr %.1.i.i249, i64 224
  store <4 x float> splat (float +inf), ptr %i.sk, align 16
  %i.sl = getelementptr inbounds nuw i8, ptr %.1.i.i249, i64 240
  store <4 x float> splat (float -inf), ptr %i.sl, align 16
  %i.sm = getelementptr inbounds nuw i8, ptr %.1.i.i249, i64 96
  store <4 x float> splat (float +inf), ptr %i.sm, align 16
  %i.sn = getelementptr inbounds nuw i8, ptr %.1.i.i249, i64 64
  store <4 x float> splat (float +inf), ptr %i.sn, align 16
  %i.so = getelementptr inbounds nuw i8, ptr %.1.i.i249, i64 32
  store <4 x float> splat (float +inf), ptr %i.so, align 16
  %i.sp = getelementptr inbounds nuw i8, ptr %.1.i.i249, i64 112
  store <4 x float> splat (float -inf), ptr %i.sp, align 16
  %i.sq = getelementptr inbounds nuw i8, ptr %.1.i.i249, i64 80
  store <4 x float> splat (float -inf), ptr %i.sq, align 16
  %i.sr = getelementptr inbounds nuw i8, ptr %.1.i.i249, i64 48
  store <4 x float> splat (float -inf), ptr %i.sr, align 16
  %i.ss = getelementptr inbounds nuw i8, ptr %.1.i.i249, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.ss, i8 0, i64 96, i1 false)
  store <4 x i64> splat (i64 8), ptr %.1.i.i249, align 16
  %i.st = ptrtoint ptr %.1.i.i249 to i64
  %i.su = or i64 %i.st, 6
  %i.sv = load i64, ptr %i.ck, align 8
  %i.sw = load i64, ptr %i.cn, align 16
  %i.sx = sub i64 %i.sv, %i.sw
  %i.sy = icmp ugt i64 %i.sx, 4096
  %i.sz = load i64, ptr %i.dd, align 16           ; 2 uses
  br i1 %i.sy, label %bb.bt, label %.preheader1264

.preheader1264:                                   ; preds = %.noexc167
  %.not1357 = icmp eq i64 %i.sz, 0
  br i1 %.not1357, label %_ZNK6embree14AABBNodeMB4D_tINS_10NodeRefPtrILi4EEELi4EE3SetclINS_4sse221BVHBuilderHairMSMBlur11BuildRecordEEEvRKT_PSA_S2_PNS_17BVHNodeRecordMB4DIS2_EEm.exit185, label %.lr.ph1343

.lr.ph1343:                                       ; preds = %.preheader1264
  %i.ta = getelementptr inbounds nuw i8, ptr %43, i64 16
  %i.tb = getelementptr inbounds nuw i8, ptr %43, i64 32
  %i.tc = getelementptr inbounds nuw i8, ptr %43, i64 48
  %i.td = getelementptr inbounds nuw i8, ptr %43, i64 64
  %i.te = getelementptr inbounds nuw i8, ptr %43, i64 80
  br label %bb.cb

bb.bt:                                            ; preds = %.noexc167
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #11
  store ptr %37, ptr %42, align 8
  %i.tf = getelementptr inbounds nuw i8, ptr %42, i64 8
  store ptr %1, ptr %i.tf, align 8
  %i.tg = getelementptr inbounds nuw i8, ptr %42, i64 16
  store ptr %38, ptr %i.tg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #11
  store ptr null, ptr %18, align 8
  invoke void @_ZN6embree13TaskScheduler5spawnImZNS_4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS2_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS6_Li4EE6CreateENSC_3SetENS_11OBBNodeMB_tIS6_Li4EE6CreateENSG_3SetEZNS2_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE7recurseERNS3_11BuildRecordESV_bEUlRKNS_5rangeImEEE_EEvT_S19_S19_RKT0_PNS0_16TaskGroupContextE(i64 noundef 0, i64 noundef %i.sz, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %42, ptr noundef nonnull %18)
          to label %bb.bu unwind label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZN6embree13TaskScheduler4waitEv()
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit unwind label %bb.bw

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.bu
  %i.th = load ptr, ptr %18, align 8              ; 2 uses
  %.not1257 = icmp eq ptr %i.th, null
  br i1 %.not1257, label %_ZN6embree12parallel_forImZNS_4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS1_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS5_Li4EE6CreateENSB_3SetENS_11OBBNodeMB_tIS5_Li4EE6CreateENSF_3SetEZNS1_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE7recurseERNS2_11BuildRecordESU_bEUlRKNS_5rangeImEEE_EEvT_S18_S18_RKT0_.exit._crit_edge, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  store ptr %i.th, ptr %19, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #11
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %19) #27
          to label %bb.bv unwind label %bb.bx

bb.bv:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  unreachable

bb.bw:                                            ; preds = %bb.bu, %bb.bt
  %i.ti = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit470

bb.bx:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %i.tj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tk = load ptr, ptr %19, align 8
  %.not.i469 = icmp eq ptr %i.tk, null
  br i1 %.not.i469, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit470, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #11
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit470

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit470: ; preds = %bb.by, %bb.bx, %bb.bw
  %.pn.i287 = phi { ptr, i32 } [ %i.ti, %bb.bw ], [ %i.tj, %bb.bx ], [ %i.tj, %bb.by ]
  %i.tl = load ptr, ptr %18, align 8
  %.not.i.i471 = icmp eq ptr %i.tl, null
  br i1 %.not.i.i471, label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit470
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #11
  br label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit

_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit470, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #11
  br label %.body254

_ZN6embree12parallel_forImZNS_4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS1_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS5_Li4EE6CreateENSB_3SetENS_11OBBNodeMB_tIS5_Li4EE6CreateENSF_3SetEZNS1_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE7recurseERNS2_11BuildRecordESU_bEUlRKNS_5rangeImEEE_EEvT_S18_S18_RKT0_.exit._crit_edge: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  %.pre1404.pre = load i64, ptr %i.dd, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #11
  br label %.loopexit1265

bb.ca:                                            ; preds = %bb.aw, %bb.bp, %bb.bn, %bb.bm
  %i.tm = landingpad { ptr, i32 }
          cleanup
  br label %.body254

bb.cb:                                            ; preds = %.lr.ph1343, %bb.cc
  %.01041342 = phi i64 [ 0, %.lr.ph1343 ], [ %i.ua, %bb.cc ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #11
  %i.tn = getelementptr inbounds nuw [176 x i8], ptr %38, i64 %.01041342
  invoke void @_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE7recurseERNS1_11BuildRecordEST_b(ptr dead_on_unwind nonnull writable sret(%"struct.embree::BVHNodeRecordMB4D") align 16 %43, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 16 dereferenceable(176) %i.tn, ptr noundef nonnull byval(%"struct.embree::FastAllocator::CachedAllocator") align 8 %3, i1 noundef zeroext false)
          to label %bb.cc unwind label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.to = getelementptr inbounds nuw [96 x i8], ptr %37, i64 %.01041342 ; 6 uses
  %i.tp = load i64, ptr %43, align 16
  store i64 %i.tp, ptr %i.to, align 16
  %i.tq = getelementptr inbounds nuw i8, ptr %i.to, i64 16
  %i.tr = load <4 x float>, ptr %i.ta, align 16
  store <4 x float> %i.tr, ptr %i.tq, align 16
  %i.ts = getelementptr inbounds nuw i8, ptr %i.to, i64 32
  %i.tt = load <4 x float>, ptr %i.tb, align 16
  store <4 x float> %i.tt, ptr %i.ts, align 16
  %i.tu = getelementptr inbounds nuw i8, ptr %i.to, i64 48
  %i.tv = load <4 x float>, ptr %i.tc, align 16
  store <4 x float> %i.tv, ptr %i.tu, align 16
  %i.tw = getelementptr inbounds nuw i8, ptr %i.to, i64 64
  %i.tx = load <4 x float>, ptr %i.td, align 16
  store <4 x float> %i.tx, ptr %i.tw, align 16
  %i.ty = getelementptr inbounds nuw i8, ptr %i.to, i64 80
  %i.tz = load <2 x float>, ptr %i.te, align 16
  store <2 x float> %i.tz, ptr %i.ty, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #11
  %i.ua = add nuw i64 %.01041342, 1               ; 2 uses
  %i.ub = load i64, ptr %i.dd, align 16           ; 2 uses
  %i.uc = icmp ult i64 %i.ua, %i.ub
  br i1 %i.uc, label %bb.cb, label %.loopexit1265, !llvm.loop !98

bb.cd:                                            ; preds = %bb.cb
  %i.ud = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #11
  br label %.body254

.loopexit1265:                                    ; preds = %bb.cc, %_ZN6embree12parallel_forImZNS_4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS1_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS5_Li4EE6CreateENSB_3SetENS_11OBBNodeMB_tIS5_Li4EE6CreateENSF_3SetEZNS1_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE7recurseERNS2_11BuildRecordESU_bEUlRKNS_5rangeImEEE_EEvT_S18_S18_RKT0_.exit._crit_edge
  %i.ue = phi i64 [ %.pre1404.pre, %_ZN6embree12parallel_forImZNS_4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS1_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS5_Li4EE6CreateENSB_3SetENS_11OBBNodeMB_tIS5_Li4EE6CreateENSF_3SetEZNS1_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE7recurseERNS2_11BuildRecordESU_bEUlRKNS_5rangeImEEE_EEvT_S18_S18_RKT0_.exit._crit_edge ], [ %i.ub, %bb.cc ] ; 2 uses
  %.not1358 = icmp eq i64 %i.ue, 0
  br i1 %.not1358, label %_ZNK6embree14AABBNodeMB4D_tINS_10NodeRefPtrILi4EEELi4EE3SetclINS_4sse221BVHBuilderHairMSMBlur11BuildRecordEEEvRKT_PSA_S2_PNS_17BVHNodeRecordMB4DIS2_EEm.exit185, label %.noexc367.lr.ph

.noexc367.lr.ph:                                  ; preds = %.loopexit1265
  %i.uf = getelementptr inbounds nuw i8, ptr %.1.i.i249, i64 32
  %i.ug = getelementptr inbounds nuw i8, ptr %.1.i.i249, i64 64
  %i.uh = getelementptr inbounds nuw i8, ptr %.1.i.i249, i64 96
  %i.ui = getelementptr inbounds nuw i8, ptr %.1.i.i249, i64 48
  %i.uj = getelementptr inbounds nuw i8, ptr %.1.i.i249, i64 80
  %i.uk = getelementptr inbounds nuw i8, ptr %.1.i.i249, i64 112
  %i.ul = getelementptr inbounds nuw i8, ptr %.1.i.i249, i64 128
  %i.um = getelementptr inbounds nuw i8, ptr %.1.i.i249, i64 160
  %i.un = getelementptr inbounds nuw i8, ptr %.1.i.i249, i64 192
  %i.uo = getelementptr inbounds nuw i8, ptr %.1.i.i249, i64 144
  %i.up = getelementptr inbounds nuw i8, ptr %.1.i.i249, i64 176
  %i.uq = getelementptr inbounds nuw i8, ptr %.1.i.i249, i64 208
  %i.ur = getelementptr inbounds nuw i8, ptr %.1.i.i249, i64 224
  %i.us = getelementptr inbounds nuw i8, ptr %.1.i.i249, i64 240
  br label %.noexc367

.noexc367:                                        ; preds = %.noexc367.lr.ph, %.noexc367
  %.0.i1821344 = phi i64 [ 0, %.noexc367.lr.ph ], [ %i.xt, %.noexc367 ] ; 17 uses
  %i.ut = getelementptr inbounds nuw [96 x i8], ptr %37, i64 %.0.i1821344 ; 7 uses
  %.sroa.0.0.copyload.i297 = load i64, ptr %i.ut, align 16
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %.1.i.i249, i64 %.0.i1821344
  store i64 %.sroa.0.0.copyload.i297, ptr %i.uu, align 8
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ut, i64 16
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ut, i64 80 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ut, i64 84 ; 2 uses
  %i.uy = load float, ptr %i.ux, align 4, !noalias !258
  %i.uz = load float, ptr %i.uw, align 16, !noalias !258 ; 3 uses
  %i.va = fsub float %i.uy, %i.uz
  %i.vb = fdiv float 1.000000e+00, %i.va          ; 2 uses
  %i.vc = fneg float %i.uz
  %i.vd = fmul float %i.vb, %i.vc                 ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.ut, i64 48
  %i.vf = fsub float 1.000000e+00, %i.vd
  %i.vg = insertelement <4 x float> poison, float %i.vd, i64 0
  %i.vh = shufflevector <4 x float> %i.vg, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.vi = load <4 x float>, ptr %i.ve, align 16, !noalias !259 ; 2 uses
  %i.vj = fmul <4 x float> %i.vi, %i.vh
  %i.vk = insertelement <4 x float> poison, float %i.vf, i64 0
  %i.vl = shufflevector <4 x float> %i.vk, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.vm = load <4 x float>, ptr %i.uv, align 16, !noalias !260 ; 2 uses
  %i.vn = fmul <4 x float> %i.vm, %i.vl
  %i.vo = fadd <4 x float> %i.vj, %i.vn
  %i.vp = getelementptr inbounds nuw i8, ptr %i.ut, i64 32
  %i.vq = getelementptr inbounds nuw i8, ptr %i.ut, i64 64
  %i.vr = load <4 x float>, ptr %i.vq, align 16, !noalias !261 ; 2 uses
  %i.vs = fmul <4 x float> %i.vr, %i.vh
  %i.vt = load <4 x float>, ptr %i.vp, align 16, !noalias !262 ; 2 uses
  %i.vu = fmul <4 x float> %i.vt, %i.vl
  %i.vv = fadd <4 x float> %i.vs, %i.vu
  %i.vw = fsub float 1.000000e+00, %i.uz
  %i.vx = fmul float %i.vw, %i.vb                 ; 2 uses
  %i.vy = fsub float 1.000000e+00, %i.vx
  %i.vz = insertelement <4 x float> poison, float %i.vx, i64 0
  %i.wa = shufflevector <4 x float> %i.vz, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.wb = fmul <4 x float> %i.vi, %i.wa
  %i.wc = insertelement <4 x float> poison, float %i.vy, i64 0
  %i.wd = shufflevector <4 x float> %i.wc, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.we = fmul <4 x float> %i.vm, %i.wd
  %i.wf = fadd <4 x float> %i.wb, %i.we
  %i.wg = fmul <4 x float> %i.vr, %i.wa
  %i.wh = fmul <4 x float> %i.vt, %i.wd
  %i.wi = fadd <4 x float> %i.wg, %i.wh
  %i.wj = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.vo, <4 x float> splat (float f0x7F7FFFFF)) ; 2 uses
  %i.wk = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.vv, <4 x float> splat (float f0xFF7FFFFF)) ; 2 uses
  %i.wl = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.wf, <4 x float> splat (float f0x7F7FFFFF)) ; 2 uses
  %i.wm = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.wi, <4 x float> splat (float f0xFF7FFFFF)) ; 2 uses
  %i.wn = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.wj)
  %i.wo = fmul <4 x float> %i.wn, splat (float f0x35000000)
  %i.wp = fsub <4 x float> %i.wj, %i.wo           ; 4 uses
  %i.wq = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.wk)
  %i.wr = fmul <4 x float> %i.wq, splat (float f0x35000000)
  %i.ws = fadd <4 x float> %i.wk, %i.wr           ; 4 uses
  %i.wt = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.wl)
  %i.wu = fmul <4 x float> %i.wt, <float f0x35000000, float f0x35000000, float f0x35000000, float poison>
  %i.wv = fsub <4 x float> %i.wl, %i.wu
  %i.ww = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.wm)
  %i.wx = fmul <4 x float> %i.ww, <float f0x35000000, float f0x35000000, float f0x35000000, float poison>
  %i.wy = fadd <4 x float> %i.wm, %i.wx
  %i.wz = fsub <4 x float> %i.wv, %i.wp           ; 3 uses
  %i.xa = fsub <4 x float> %i.wy, %i.ws           ; 3 uses
  %.sroa.01071.0.vec.extract = extractelement <4 x float> %i.wp, i64 0
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.uf, i64 %.0.i1821344
  store float %.sroa.01071.0.vec.extract, ptr %i.xb, align 4
  %.sroa.01071.4.vec.extract = extractelement <4 x float> %i.wp, i64 1
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.ug, i64 %.0.i1821344
  store float %.sroa.01071.4.vec.extract, ptr %i.xc, align 4
  %.sroa.01071.8.vec.extract = extractelement <4 x float> %i.wp, i64 2
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %.0.i1821344
  store float %.sroa.01071.8.vec.extract, ptr %i.xd, align 4
  %.sroa.101075.16.vec.extract = extractelement <4 x float> %i.ws, i64 0
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.ui, i64 %.0.i1821344
  store float %.sroa.101075.16.vec.extract, ptr %i.xe, align 4
  %.sroa.101075.20.vec.extract = extractelement <4 x float> %i.ws, i64 1
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %.0.i1821344
  store float %.sroa.101075.20.vec.extract, ptr %i.xf, align 4
  %.sroa.101075.24.vec.extract = extractelement <4 x float> %i.ws, i64 2
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.uk, i64 %.0.i1821344
  store float %.sroa.101075.24.vec.extract, ptr %i.xg, align 4
  %.sroa.01052.0.vec.extract = extractelement <4 x float> %i.wz, i64 0
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.ul, i64 %.0.i1821344
  store float %.sroa.01052.0.vec.extract, ptr %i.xh, align 4
  %.sroa.01052.4.vec.extract = extractelement <4 x float> %i.wz, i64 1
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.um, i64 %.0.i1821344
  store float %.sroa.01052.4.vec.extract, ptr %i.xi, align 4
  %.sroa.01052.8.vec.extract = extractelement <4 x float> %i.wz, i64 2
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %.0.i1821344
  store float %.sroa.01052.8.vec.extract, ptr %i.xj, align 4
  %.sroa.01051.0.vec.extract = extractelement <4 x float> %i.xa, i64 0
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.uo, i64 %.0.i1821344
  store float %.sroa.01051.0.vec.extract, ptr %i.xk, align 4
  %.sroa.01051.4.vec.extract = extractelement <4 x float> %i.xa, i64 1
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.up, i64 %.0.i1821344
  store float %.sroa.01051.4.vec.extract, ptr %i.xl, align 4
  %.sroa.01051.8.vec.extract = extractelement <4 x float> %i.xa, i64 2
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %.0.i1821344
  store float %.sroa.01051.8.vec.extract, ptr %i.xm, align 4
  %i.xn = load float, ptr %i.uw, align 16
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.ur, i64 %.0.i1821344
  store float %i.xn, ptr %i.xo, align 4
  %i.xp = load float, ptr %i.ux, align 4          ; 2 uses
  %i.xq = fcmp oeq float %i.xp, 1.000000e+00
  %i.xr = select i1 %i.xq, float f0x3F800001, float %i.xp
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.us, i64 %.0.i1821344
  store float %i.xr, ptr %i.xs, align 4
  %i.xt = add nuw i64 %.0.i1821344, 1             ; 2 uses
  %exitcond1392.not = icmp eq i64 %i.xt, %i.ue
  br i1 %exitcond1392.not, label %_ZNK6embree14AABBNodeMB4D_tINS_10NodeRefPtrILi4EEELi4EE3SetclINS_4sse221BVHBuilderHairMSMBlur11BuildRecordEEEvRKT_PSA_S2_PNS_17BVHNodeRecordMB4DIS2_EEm.exit185, label %.noexc367, !llvm.loop !1

_ZNK6embree14AABBNodeMB4D_tINS_10NodeRefPtrILi4EEELi4EE3SetclINS_4sse221BVHBuilderHairMSMBlur11BuildRecordEEEvRKT_PSA_S2_PNS_17BVHNodeRecordMB4DIS2_EEm.exit185: ; preds = %.noexc367, %.preheader1264, %.loopexit1265
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #11
  %i.xu = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.xv = load ptr, ptr %i.xu, align 8, !nonnull !35, !align !37
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #11, !noalias !263
  store ptr %i.cm, ptr %31, align 8, !noalias !263
  %i.xw = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  store ptr %i.xv, ptr %i.xw, align 8, !noalias !263
  %i.xx = load i64, ptr %i.cn, align 16, !noalias !263 ; 5 uses
  %i.xy = load i64, ptr %i.ck, align 8, !noalias !263 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #11, !noalias !263
  store <4 x float> splat (float +inf), ptr %32, align 16, !noalias !263
  %i.xz = getelementptr inbounds nuw i8, ptr %32, i64 16
  store <4 x float> splat (float -inf), ptr %i.xz, align 16, !noalias !263
  %i.ya = getelementptr inbounds nuw i8, ptr %32, i64 32
  store <4 x float> splat (float +inf), ptr %i.ya, align 16, !noalias !263
  %i.yb = getelementptr inbounds nuw i8, ptr %32, i64 48
  store <4 x float> splat (float -inf), ptr %i.yb, align 16, !noalias !263
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #11, !noalias !263
  %i.yc = sub i64 %i.xy, %i.xx                    ; 2 uses
  %i.yd = icmp ult i64 %i.yc, 3072
  br i1 %i.yd, label %bb.ce, label %bb.cg, !prof !41

bb.ce:                                            ; preds = %_ZNK6embree14AABBNodeMB4D_tINS_10NodeRefPtrILi4EEELi4EE3SetclINS_4sse221BVHBuilderHairMSMBlur11BuildRecordEEEvRKT_PSA_S2_PNS_17BVHNodeRecordMB4DIS2_EEm.exit185
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.ye = icmp ult i64 %i.xx, %i.xy
  br i1 %i.ye, label %.lr.ph.i, label %.noexc369

.lr.ph.i:                                         ; preds = %bb.ce
  %i.yf = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.yg = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.yh = getelementptr inbounds nuw i8, ptr %10, i64 48
  br label %bb.cf

bb.cf:                                            ; preds = %.noexc475, %.lr.ph.i
  %.015.i = phi i64 [ %i.xx, %.lr.ph.i ], [ %i.zp, %.noexc475 ] ; 2 uses
  %i.yi = phi <4 x float> [ splat (float +inf), %.lr.ph.i ], [ %i.zi, %.noexc475 ]
  %i.yj = phi <4 x float> [ splat (float -inf), %.lr.ph.i ], [ %i.zk, %.noexc475 ]
  %i.yk = phi <4 x float> [ splat (float +inf), %.lr.ph.i ], [ %i.zm, %.noexc475 ]
  %i.yl = phi <4 x float> [ splat (float -inf), %.lr.ph.i ], [ %i.zo, %.noexc475 ]
  %i.ym = load ptr, ptr %i.ed, align 16, !noalias !264
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 32
  %i.yo = load ptr, ptr %i.yn, align 8, !noalias !264
  %i.yp = getelementptr inbounds nuw [80 x i8], ptr %i.yo, i64 %.015.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11, !noalias !264
  %i.yq = load ptr, ptr %i.xw, align 8, !noalias !264, !nonnull !35, !align !37 ; 2 uses
  %.sroa.0.0.copyload.i474 = load <2 x float>, ptr %i.ea, align 8, !noalias !264
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !264
  store <2 x float> %.sroa.0.0.copyload.i474, ptr %9, align 8, !noalias !265
  %i.yr = load ptr, ptr %i.yq, align 8, !noalias !265
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yp, i64 12
  %i.yt = load i32, ptr %i.ys, align 4, !noalias !265
  %i.yu = zext i32 %i.yt to i64
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yr, i64 488
  %i.yw = load ptr, ptr %i.yv, align 8, !noalias !265
  %i.yx = getelementptr inbounds nuw [8 x i8], ptr %i.yw, i64 %i.yu
  %i.yy = load ptr, ptr %i.yx, align 8, !noalias !265 ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yp, i64 28
  %i.za = load i32, ptr %i.yz, align 4, !noalias !265
  %i.zb = zext i32 %i.za to i64
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yq, i64 8
  %i.zd = load ptr, ptr %i.zc, align 8, !noalias !265
  %i.ze = load ptr, ptr %i.yy, align 16, !noalias !265
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 488
  %i.zg = load ptr, ptr %i.zf, align 8, !noalias !265
  invoke void %i.zg(ptr dead_on_unwind nonnull writable sret(%"struct.embree::LBBox") align 16 %10, ptr noundef nonnull align 16 dereferenceable(88) %i.yy, i64 noundef %i.zb, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef %i.zd)
          to label %.noexc475 unwind label %.loopexit, !inline_history !42

.noexc475:                                        ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !264
  %i.zh = load <4 x float>, ptr %10, align 16, !noalias !266
  %i.zi = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.yi, <4 x float> %i.zh) ; 2 uses
  %i.zj = load <4 x float>, ptr %i.yf, align 16, !noalias !267
  %i.zk = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.yj, <4 x float> %i.zj) ; 2 uses
  %i.zl = load <4 x float>, ptr %i.yg, align 16, !noalias !268
  %i.zm = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.yk, <4 x float> %i.zl) ; 2 uses
  %i.zn = load <4 x float>, ptr %i.yh, align 16, !noalias !269
  %i.zo = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.yl, <4 x float> %i.zn) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11, !noalias !264
  %i.zp = add i64 %.015.i, 1                      ; 2 uses
  %exitcond1393.not = icmp eq i64 %i.zp, %i.xy
  br i1 %exitcond1393.not, label %.noexc369, label %bb.cf, !llvm.loop !2

.noexc369:                                        ; preds = %.noexc475, %bb.ce
  %.lcssa14.i = phi <4 x float> [ splat (float -inf), %bb.ce ], [ %i.zo, %.noexc475 ]
  %.lcssa12.i = phi <4 x float> [ splat (float +inf), %bb.ce ], [ %i.zm, %.noexc475 ]
  %.lcssa10.i = phi <4 x float> [ splat (float -inf), %bb.ce ], [ %i.zk, %.noexc475 ]
  %.lcssa.i = phi <4 x float> [ splat (float +inf), %bb.ce ], [ %i.zi, %.noexc475 ]
  %i.zq = getelementptr inbounds nuw i8, ptr %44, i64 48
  %i.zr = getelementptr inbounds nuw i8, ptr %44, i64 32
  %i.zs = getelementptr inbounds nuw i8, ptr %44, i64 16
  store <4 x float> %.lcssa.i, ptr %44, align 16, !alias.scope !264
  store <4 x float> %.lcssa10.i, ptr %i.zs, align 16, !alias.scope !264
  store <4 x float> %.lcssa12.i, ptr %i.zr, align 16, !alias.scope !264
  store <4 x float> %.lcssa14.i, ptr %i.zq, align 16, !alias.scope !264
  br label %bb.cj

bb.cg:                                            ; preds = %_ZNK6embree14AABBNodeMB4D_tINS_10NodeRefPtrILi4EEELi4EE3SetclINS_4sse221BVHBuilderHairMSMBlur11BuildRecordEEEvRKT_PSA_S2_PNS_17BVHNodeRecordMB4DIS2_EEm.exit185
  %i.zt = add i64 %i.yc, 1023
  %i.zu = lshr i64 %i.zt, 10                      ; 2 uses
  %i.zv = icmp eq i64 %i.zu, 1
  br i1 %i.zv, label %bb.ch, label %bb.ci, !prof !41

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #11, !noalias !270
  store i64 %i.xx, ptr %16, align 8, !noalias !270
  %i.zw = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.xy, ptr %i.zw, align 8, !noalias !270
  invoke void @_ZZNK6embree5SetMB12linearBoundsINS_4sse225VirtualRecalculatePrimRefEEENS_5LBBoxINS_6Vec3faEEERKT_ENKUlRKNS_5rangeImEEE_clESD_(ptr dead_on_unwind nonnull writable sret(%"struct.embree::LBBox") align 16 %44, ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %.noexc376 unwind label %.loopexit.split-lp

.noexc376:                                        ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11, !noalias !270
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cg
  invoke void @_ZN6embree24parallel_reduce_internalImNS_5LBBoxINS_6Vec3faEEEZNKS_5SetMB12linearBoundsINS_4sse225VirtualRecalculatePrimRefEEES3_RKT_EUlRKNS_5rangeImEEE_ZNKS5_IS7_EES3_SA_EUlRKS3_SH_E_EET0_S8_S8_S8_S8_RKSJ_RKT1_RKT2_(ptr dead_on_unwind nonnull writable sret(%"struct.embree::LBBox") align 16 %44, i64 noundef %i.zu, i64 noundef %i.xx, i64 noundef %i.xy, i64 noundef 1024, ptr noundef nonnull align 16 dereferenceable(64) %32, ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 1 dereferenceable(1) %33)
          to label %bb.cj unwind label %.loopexit.split-lp

bb.cj:                                            ; preds = %bb.ci, %.noexc376, %.noexc369
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #11, !noalias !263
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #11, !noalias !263
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #11, !noalias !263
  store i64 %i.su, ptr %0, align 16
  %i.zx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.zy = load <4 x float>, ptr %44, align 16
  store <4 x float> %i.zy, ptr %i.zx, align 16
  %i.zz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aaa = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.aab = load <4 x float>, ptr %i.aaa, align 16
  store <4 x float> %i.aab, ptr %i.zz, align 16
  %i.aac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aad = getelementptr inbounds nuw i8, ptr %44, i64 32
  %i.aae = load <4 x float>, ptr %i.aad, align 16
  store <4 x float> %i.aae, ptr %i.aac, align 16
  %i.aaf = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aag = getelementptr inbounds nuw i8, ptr %44, i64 48
  %i.aah = load <4 x float>, ptr %i.aag, align 16
  store <4 x float> %i.aah, ptr %i.aaf, align 16
  %i.aai = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aaj = load i64, ptr %i.ea, align 8
  store i64 %i.aaj, ptr %i.aai, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #11
  br label %bb.fu

.loopexit:                                        ; preds = %bb.cf
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

.loopexit.split-lp:                               ; preds = %bb.ch, %bb.ci
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.ck:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #11
  br label %.body254

bb.cl:                                            ; preds = %bb.at
  %i.aak = load i8, ptr %i.g, align 1, !range !34, !noundef !35
  %i.aal = trunc nuw i8 %i.aak to i1
  br i1 %i.aal, label %bb.cm, label %bb.du

bb.cm:                                            ; preds = %bb.cl
  %i.aam = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aan = load ptr, ptr %i.aam, align 8          ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 256, ptr %i.a, align 8
  %i.aao = load ptr, ptr %i.aan, align 64         ; 18 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 8 ; 6 uses
  %i.aaq = load atomic ptr, ptr %i.aap seq_cst, align 8
  %i.aar = icmp eq ptr %i.aaq, %i.bv
  br i1 %i.aar, label %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i265, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #11
  store ptr %i.aao, ptr %21, align 8
  %i.aas = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store i8 1, ptr %i.aas, align 8
  invoke void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 64 dereferenceable(192) %i.aao)
          to label %.noexc271 unwind label %bb.dr

.noexc271:                                        ; preds = %bb.cn
  %i.aat = load atomic ptr, ptr %i.aap seq_cst, align 8
  %.not.i2.i260 = icmp eq ptr %i.aat, null
  br i1 %.not.i2.i260, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %.noexc271
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aao, i64 104
  %i.aav = load i64, ptr %i.aau, align 8
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aao, i64 168
  %i.aax = load i64, ptr %i.aaw, align 8
  %i.aay = add i64 %i.aax, %i.aav
  %i.aaz = load atomic ptr, ptr %i.aap seq_cst, align 8
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 280
end_hunk_1
begin_hunk_2_@_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE7recurseERNS1_11BuildRecordEST_b:bb.a

bb.do:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit504
  %i.agf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.agg = load ptr, ptr %15, align 8
  %.not.i505 = icmp eq ptr %i.agg, null
  br i1 %.not.i505, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit506, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #11
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit506

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit506: ; preds = %bb.dp, %bb.do, %bb.dn
  %.pn.i379 = phi { ptr, i32 } [ %i.age, %bb.dn ], [ %i.agf, %bb.do ], [ %i.agf, %bb.dp ]
  %i.agh = load ptr, ptr %14, align 8
  %.not.i.i507 = icmp eq ptr %i.agh, null
  br i1 %.not.i.i507, label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit508, label %bb.dq

bb.dq:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit506
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #11
  br label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit508

_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit508: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit506, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #11
  br label %.body254

_ZN6embree5LBBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit137: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit502
  %.pre1403 = load i64, ptr %i.dd, align 16       ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #11
  %.not1355 = icmp eq i64 %.pre1403, 0
  br i1 %.not1355, label %._crit_edge1340, label %.lr.ph1333.preheader

.lr.ph1333.preheader:                             ; preds = %_ZN6embree5LBBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit137
  %xtraiter = and i64 %.pre1403, 1
  %i.agi = icmp eq i64 %.pre1403, 1
  br i1 %i.agi, label %.lr.ph1333.epil.preheader, label %.lr.ph1333.preheader.new

.lr.ph1333.preheader.new:                         ; preds = %.lr.ph1333.preheader
  %unroll_iter = and i64 %.pre1403, -2
  br label %.lr.ph1333

.noexc364.lr.ph.unr-lcssa:                        ; preds = %.lr.ph1333
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.noexc364.lr.ph, label %.lr.ph1333.epil.preheader

.lr.ph1333.epil.preheader:                        ; preds = %.noexc364.lr.ph.unr-lcssa, %.lr.ph1333.preheader
  %.01031332.epil.init = phi i64 [ 0, %.lr.ph1333.preheader ], [ %i.alk, %.noexc364.lr.ph.unr-lcssa ]
  %.sroa.0567.01331.epil.init = phi <4 x float> [ splat (float +inf), %.lr.ph1333.preheader ], [ %i.ala, %.noexc364.lr.ph.unr-lcssa ]
  %.sroa.7569.01330.epil.init = phi <4 x float> [ splat (float -inf), %.lr.ph1333.preheader ], [ %i.ald, %.noexc364.lr.ph.unr-lcssa ]
  %.sroa.11571.01329.epil.init = phi <4 x float> [ splat (float +inf), %.lr.ph1333.preheader ], [ %i.alg, %.noexc364.lr.ph.unr-lcssa ]
  %.sroa.15573.01328.epil.init = phi <4 x float> [ splat (float -inf), %.lr.ph1333.preheader ], [ %i.alj, %.noexc364.lr.ph.unr-lcssa ]
  %lcmp.mod1631 = trunc i64 %.pre1403 to i1
  call void @llvm.assume(i1 %lcmp.mod1631)
  %i.agj = getelementptr inbounds nuw [64 x i8], ptr %45, i64 %.01031332.epil.init ; 4 uses
  %i.agk = load <4 x float>, ptr %i.agj, align 16, !noalias !271
  %i.agl = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0567.01331.epil.init, <4 x float> %i.agk)
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agj, i64 16
  %i.agn = load <4 x float>, ptr %i.agm, align 16, !noalias !272
  %i.ago = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.7569.01330.epil.init, <4 x float> %i.agn)
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agj, i64 32
  %i.agq = load <4 x float>, ptr %i.agp, align 16, !noalias !273
  %i.agr = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.11571.01329.epil.init, <4 x float> %i.agq)
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agj, i64 48
  %i.agt = load <4 x float>, ptr %i.ags, align 16, !noalias !274
  %i.agu = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.15573.01328.epil.init, <4 x float> %i.agt)
  br label %.noexc364.lr.ph

.noexc364.lr.ph:                                  ; preds = %.noexc364.lr.ph.unr-lcssa, %.lr.ph1333.epil.preheader
  %.lcssa1601 = phi <4 x float> [ %i.ala, %.noexc364.lr.ph.unr-lcssa ], [ %i.agl, %.lr.ph1333.epil.preheader ]
  %.lcssa1600 = phi <4 x float> [ %i.ald, %.noexc364.lr.ph.unr-lcssa ], [ %i.ago, %.lr.ph1333.epil.preheader ]
  %.lcssa1599 = phi <4 x float> [ %i.alg, %.noexc364.lr.ph.unr-lcssa ], [ %i.agr, %.lr.ph1333.epil.preheader ]
  %.lcssa1598 = phi <4 x float> [ %i.alj, %.noexc364.lr.ph.unr-lcssa ], [ %i.agu, %.lr.ph1333.epil.preheader ]
  %i.agv = getelementptr inbounds nuw i8, ptr %.1.i.i267, i64 32
  %i.agw = getelementptr inbounds nuw i8, ptr %.1.i.i267, i64 64
  %i.agx = getelementptr inbounds nuw i8, ptr %.1.i.i267, i64 96
  %i.agy = getelementptr inbounds nuw i8, ptr %.1.i.i267, i64 48
  %i.agz = getelementptr inbounds nuw i8, ptr %.1.i.i267, i64 80
  %i.aha = getelementptr inbounds nuw i8, ptr %.1.i.i267, i64 112
  %i.ahb = getelementptr inbounds nuw i8, ptr %.1.i.i267, i64 128
  %i.ahc = getelementptr inbounds nuw i8, ptr %.1.i.i267, i64 160
  %i.ahd = getelementptr inbounds nuw i8, ptr %.1.i.i267, i64 192
  %i.ahe = getelementptr inbounds nuw i8, ptr %.1.i.i267, i64 144
  %i.ahf = getelementptr inbounds nuw i8, ptr %.1.i.i267, i64 176
  %i.ahg = getelementptr inbounds nuw i8, ptr %.1.i.i267, i64 208
  %i.ahh = getelementptr inbounds nuw i8, ptr %.1.i.i267, i64 224
  %i.ahi = getelementptr inbounds nuw i8, ptr %.1.i.i267, i64 240
  br label %.noexc364

.noexc364:                                        ; preds = %.noexc364.lr.ph, %.noexc364
  %.0.i1761339 = phi i64 [ 0, %.noexc364.lr.ph ], [ %i.akj, %.noexc364 ] ; 17 uses
  %i.ahj = getelementptr inbounds nuw [96 x i8], ptr %37, i64 %.0.i1761339 ; 7 uses
  %.sroa.0.0.copyload.i299 = load i64, ptr %i.ahj, align 16
  %i.ahk = getelementptr inbounds nuw [8 x i8], ptr %.1.i.i267, i64 %.0.i1761339
  store i64 %.sroa.0.0.copyload.i299, ptr %i.ahk, align 8
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahj, i64 16
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahj, i64 80 ; 2 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahj, i64 84 ; 2 uses
  %i.aho = load float, ptr %i.ahn, align 4, !noalias !275
  %i.ahp = load float, ptr %i.ahm, align 16, !noalias !275 ; 3 uses
  %i.ahq = fsub float %i.aho, %i.ahp
  %i.ahr = fdiv float 1.000000e+00, %i.ahq        ; 2 uses
  %i.ahs = fneg float %i.ahp
  %i.aht = fmul float %i.ahr, %i.ahs              ; 2 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahj, i64 48
  %i.ahv = fsub float 1.000000e+00, %i.aht
  %i.ahw = insertelement <4 x float> poison, float %i.aht, i64 0
  %i.ahx = shufflevector <4 x float> %i.ahw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ahy = load <4 x float>, ptr %i.ahu, align 16, !noalias !276 ; 2 uses
  %i.ahz = fmul <4 x float> %i.ahy, %i.ahx
  %i.aia = insertelement <4 x float> poison, float %i.ahv, i64 0
  %i.aib = shufflevector <4 x float> %i.aia, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aic = load <4 x float>, ptr %i.ahl, align 16, !noalias !277 ; 2 uses
  %i.aid = fmul <4 x float> %i.aic, %i.aib
  %i.aie = fadd <4 x float> %i.ahz, %i.aid
  %i.aif = getelementptr inbounds nuw i8, ptr %i.ahj, i64 32
  %i.aig = getelementptr inbounds nuw i8, ptr %i.ahj, i64 64
  %i.aih = load <4 x float>, ptr %i.aig, align 16, !noalias !278 ; 2 uses
  %i.aii = fmul <4 x float> %i.aih, %i.ahx
  %i.aij = load <4 x float>, ptr %i.aif, align 16, !noalias !279 ; 2 uses
  %i.aik = fmul <4 x float> %i.aij, %i.aib
  %i.ail = fadd <4 x float> %i.aii, %i.aik
  %i.aim = fsub float 1.000000e+00, %i.ahp
  %i.ain = fmul float %i.aim, %i.ahr              ; 2 uses
  %i.aio = fsub float 1.000000e+00, %i.ain
  %i.aip = insertelement <4 x float> poison, float %i.ain, i64 0
  %i.aiq = shufflevector <4 x float> %i.aip, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.air = fmul <4 x float> %i.ahy, %i.aiq
  %i.ais = insertelement <4 x float> poison, float %i.aio, i64 0
  %i.ait = shufflevector <4 x float> %i.ais, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aiu = fmul <4 x float> %i.aic, %i.ait
  %i.aiv = fadd <4 x float> %i.air, %i.aiu
  %i.aiw = fmul <4 x float> %i.aih, %i.aiq
  %i.aix = fmul <4 x float> %i.aij, %i.ait
  %i.aiy = fadd <4 x float> %i.aiw, %i.aix
  %i.aiz = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aie, <4 x float> splat (float f0x7F7FFFFF)) ; 2 uses
  %i.aja = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ail, <4 x float> splat (float f0xFF7FFFFF)) ; 2 uses
  %i.ajb = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aiv, <4 x float> splat (float f0x7F7FFFFF)) ; 2 uses
  %i.ajc = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.aiy, <4 x float> splat (float f0xFF7FFFFF)) ; 2 uses
  %i.ajd = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.aiz)
  %i.aje = fmul <4 x float> %i.ajd, splat (float f0x35000000)
  %i.ajf = fsub <4 x float> %i.aiz, %i.aje        ; 4 uses
  %i.ajg = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.aja)
  %i.ajh = fmul <4 x float> %i.ajg, splat (float f0x35000000)
  %i.aji = fadd <4 x float> %i.aja, %i.ajh        ; 4 uses
  %i.ajj = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ajb)
  %i.ajk = fmul <4 x float> %i.ajj, <float f0x35000000, float f0x35000000, float f0x35000000, float poison>
  %i.ajl = fsub <4 x float> %i.ajb, %i.ajk
  %i.ajm = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ajc)
  %i.ajn = fmul <4 x float> %i.ajm, <float f0x35000000, float f0x35000000, float f0x35000000, float poison>
  %i.ajo = fadd <4 x float> %i.ajc, %i.ajn
  %i.ajp = fsub <4 x float> %i.ajl, %i.ajf        ; 3 uses
  %i.ajq = fsub <4 x float> %i.ajo, %i.aji        ; 3 uses
  %.sroa.0999.0.vec.extract = extractelement <4 x float> %i.ajf, i64 0
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr %i.agv, i64 %.0.i1761339
  store float %.sroa.0999.0.vec.extract, ptr %i.ajr, align 4
  %.sroa.0999.4.vec.extract = extractelement <4 x float> %i.ajf, i64 1
  %i.ajs = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %.0.i1761339
  store float %.sroa.0999.4.vec.extract, ptr %i.ajs, align 4
  %.sroa.0999.8.vec.extract = extractelement <4 x float> %i.ajf, i64 2
  %i.ajt = getelementptr inbounds nuw [4 x i8], ptr %i.agx, i64 %.0.i1761339
  store float %.sroa.0999.8.vec.extract, ptr %i.ajt, align 4
  %.sroa.101003.16.vec.extract = extractelement <4 x float> %i.aji, i64 0
  %i.aju = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %.0.i1761339
  store float %.sroa.101003.16.vec.extract, ptr %i.aju, align 4
  %.sroa.101003.20.vec.extract = extractelement <4 x float> %i.aji, i64 1
  %i.ajv = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %.0.i1761339
  store float %.sroa.101003.20.vec.extract, ptr %i.ajv, align 4
  %.sroa.101003.24.vec.extract = extractelement <4 x float> %i.aji, i64 2
  %i.ajw = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %.0.i1761339
  store float %.sroa.101003.24.vec.extract, ptr %i.ajw, align 4
  %.sroa.0980.0.vec.extract = extractelement <4 x float> %i.ajp, i64 0
  %i.ajx = getelementptr inbounds nuw [4 x i8], ptr %i.ahb, i64 %.0.i1761339
  store float %.sroa.0980.0.vec.extract, ptr %i.ajx, align 4
  %.sroa.0980.4.vec.extract = extractelement <4 x float> %i.ajp, i64 1
  %i.ajy = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %.0.i1761339
  store float %.sroa.0980.4.vec.extract, ptr %i.ajy, align 4
  %.sroa.0980.8.vec.extract = extractelement <4 x float> %i.ajp, i64 2
  %i.ajz = getelementptr inbounds nuw [4 x i8], ptr %i.ahd, i64 %.0.i1761339
  store float %.sroa.0980.8.vec.extract, ptr %i.ajz, align 4
  %.sroa.0979.0.vec.extract = extractelement <4 x float> %i.ajq, i64 0
  %i.aka = getelementptr inbounds nuw [4 x i8], ptr %i.ahe, i64 %.0.i1761339
  store float %.sroa.0979.0.vec.extract, ptr %i.aka, align 4
  %.sroa.0979.4.vec.extract = extractelement <4 x float> %i.ajq, i64 1
  %i.akb = getelementptr inbounds nuw [4 x i8], ptr %i.ahf, i64 %.0.i1761339
  store float %.sroa.0979.4.vec.extract, ptr %i.akb, align 4
  %.sroa.0979.8.vec.extract = extractelement <4 x float> %i.ajq, i64 2
  %i.akc = getelementptr inbounds nuw [4 x i8], ptr %i.ahg, i64 %.0.i1761339
  store float %.sroa.0979.8.vec.extract, ptr %i.akc, align 4
  %i.akd = load float, ptr %i.ahm, align 16
  %i.ake = getelementptr inbounds nuw [4 x i8], ptr %i.ahh, i64 %.0.i1761339
  store float %i.akd, ptr %i.ake, align 4
  %i.akf = load float, ptr %i.ahn, align 4        ; 2 uses
  %i.akg = fcmp oeq float %i.akf, 1.000000e+00
  %i.akh = select i1 %i.akg, float f0x3F800001, float %i.akf
  %i.aki = getelementptr inbounds nuw [4 x i8], ptr %i.ahi, i64 %.0.i1761339
  store float %i.akh, ptr %i.aki, align 4
  %i.akj = add nuw i64 %.0.i1761339, 1            ; 2 uses
  %exitcond1390.not = icmp eq i64 %i.akj, %.pre1403
  br i1 %exitcond1390.not, label %._crit_edge1340, label %.noexc364, !llvm.loop !1

bb.dr:                                            ; preds = %bb.cn, %bb.dg, %bb.de, %bb.dd
  %i.akk = landingpad { ptr, i32 }
          cleanup
  br label %.body254

.lr.ph1333:                                       ; preds = %.lr.ph1333, %.lr.ph1333.preheader.new
  %.01031332 = phi i64 [ 0, %.lr.ph1333.preheader.new ], [ %i.alk, %.lr.ph1333 ] ; 3 uses
  %.sroa.0567.01331 = phi <4 x float> [ splat (float +inf), %.lr.ph1333.preheader.new ], [ %i.ala, %.lr.ph1333 ]
  %.sroa.7569.01330 = phi <4 x float> [ splat (float -inf), %.lr.ph1333.preheader.new ], [ %i.ald, %.lr.ph1333 ]
  %.sroa.11571.01329 = phi <4 x float> [ splat (float +inf), %.lr.ph1333.preheader.new ], [ %i.alg, %.lr.ph1333 ]
  %.sroa.15573.01328 = phi <4 x float> [ splat (float -inf), %.lr.ph1333.preheader.new ], [ %i.alj, %.lr.ph1333 ]
  %niter = phi i64 [ 0, %.lr.ph1333.preheader.new ], [ %niter.next.1, %.lr.ph1333 ]
  %i.akl = getelementptr inbounds nuw [64 x i8], ptr %45, i64 %.01031332 ; 4 uses
  %i.akm = load <4 x float>, ptr %i.akl, align 16, !noalias !271
  %i.akn = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0567.01331, <4 x float> %i.akm)
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akl, i64 16
  %i.akp = load <4 x float>, ptr %i.ako, align 16, !noalias !272
  %i.akq = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.7569.01330, <4 x float> %i.akp)
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akl, i64 32
  %i.aks = load <4 x float>, ptr %i.akr, align 16, !noalias !273
  %i.akt = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.11571.01329, <4 x float> %i.aks)
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akl, i64 48
  %i.akv = load <4 x float>, ptr %i.aku, align 16, !noalias !274
  %i.akw = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.15573.01328, <4 x float> %i.akv)
  %i.akx = getelementptr inbounds nuw [64 x i8], ptr %45, i64 %.01031332 ; 4 uses
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akx, i64 64
  %i.akz = load <4 x float>, ptr %i.aky, align 16, !noalias !271
  %i.ala = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.akn, <4 x float> %i.akz) ; 3 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %i.akx, i64 80
  %i.alc = load <4 x float>, ptr %i.alb, align 16, !noalias !272
  %i.ald = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.akq, <4 x float> %i.alc) ; 3 uses
  %i.ale = getelementptr inbounds nuw i8, ptr %i.akx, i64 96
  %i.alf = load <4 x float>, ptr %i.ale, align 16, !noalias !273
  %i.alg = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.akt, <4 x float> %i.alf) ; 3 uses
  %i.alh = getelementptr inbounds nuw i8, ptr %i.akx, i64 112
  %i.ali = load <4 x float>, ptr %i.alh, align 16, !noalias !274
  %i.alj = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.akw, <4 x float> %i.ali) ; 3 uses
  %i.alk = add nuw i64 %.01031332, 2              ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.noexc364.lr.ph.unr-lcssa, label %.lr.ph1333, !llvm.loop !167

._crit_edge1340:                                  ; preds = %.noexc364, %_ZN6embree5LBBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit137
  %.sroa.0567.0.lcssa1502 = phi <4 x float> [ splat (float +inf), %_ZN6embree5LBBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit137 ], [ %.lcssa1601, %.noexc364 ]
  %.sroa.7569.0.lcssa1501 = phi <4 x float> [ splat (float -inf), %_ZN6embree5LBBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit137 ], [ %.lcssa1600, %.noexc364 ]
  %.sroa.11571.0.lcssa1500 = phi <4 x float> [ splat (float +inf), %_ZN6embree5LBBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit137 ], [ %.lcssa1599, %.noexc364 ]
  %.sroa.15573.0.lcssa1499 = phi <4 x float> [ splat (float -inf), %_ZN6embree5LBBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit137 ], [ %.lcssa1598, %.noexc364 ]
  store i64 %i.afo, ptr %0, align 16
  %i.all = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %.sroa.0567.0.lcssa1502, ptr %i.all, align 16
  %i.alm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> %.sroa.7569.0.lcssa1501, ptr %i.alm, align 16
  %i.aln = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> %.sroa.11571.0.lcssa1500, ptr %i.aln, align 16
  %i.alo = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x float> %.sroa.15573.0.lcssa1499, ptr %i.alo, align 16
  %i.alp = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.alq = load i64, ptr %i.ea, align 8
  store i64 %i.alq, ptr %i.alp, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #11
  br label %bb.fu

.preheader1267:                                   ; preds = %_ZN6embree5LBBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit
  %.not1354 = icmp eq i64 %i.apy, 0
  br i1 %.not1354, label %._crit_edge1327, label %.noexc362.lr.ph

.noexc362.lr.ph:                                  ; preds = %.preheader1267
  %i.alr = getelementptr inbounds nuw i8, ptr %.1.i.i267, i64 32
  %i.als = getelementptr inbounds nuw i8, ptr %.1.i.i267, i64 64
  %i.alt = getelementptr inbounds nuw i8, ptr %.1.i.i267, i64 96
  %i.alu = getelementptr inbounds nuw i8, ptr %.1.i.i267, i64 48
  %i.alv = getelementptr inbounds nuw i8, ptr %.1.i.i267, i64 80
  %i.alw = getelementptr inbounds nuw i8, ptr %.1.i.i267, i64 112
  %i.alx = getelementptr inbounds nuw i8, ptr %.1.i.i267, i64 128
  %i.aly = getelementptr inbounds nuw i8, ptr %.1.i.i267, i64 160
  %i.alz = getelementptr inbounds nuw i8, ptr %.1.i.i267, i64 192
  %i.ama = getelementptr inbounds nuw i8, ptr %.1.i.i267, i64 144
  %i.amb = getelementptr inbounds nuw i8, ptr %.1.i.i267, i64 176
  %i.amc = getelementptr inbounds nuw i8, ptr %.1.i.i267, i64 208
  %i.amd = getelementptr inbounds nuw i8, ptr %.1.i.i267, i64 224
  %i.ame = getelementptr inbounds nuw i8, ptr %.1.i.i267, i64 240
  br label %.noexc362

.noexc362:                                        ; preds = %.noexc362.lr.ph, %.noexc362
  %.0.i1326 = phi i64 [ 0, %.noexc362.lr.ph ], [ %i.apf, %.noexc362 ] ; 17 uses
  %i.amf = getelementptr inbounds nuw [96 x i8], ptr %37, i64 %.0.i1326 ; 7 uses
  %.sroa.0.0.copyload.i302 = load i64, ptr %i.amf, align 16
  %i.amg = getelementptr inbounds nuw [8 x i8], ptr %.1.i.i267, i64 %.0.i1326
  store i64 %.sroa.0.0.copyload.i302, ptr %i.amg, align 8
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amf, i64 16
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amf, i64 80 ; 2 uses
  %i.amj = getelementptr inbounds nuw i8, ptr %i.amf, i64 84 ; 2 uses
  %i.amk = load float, ptr %i.amj, align 4, !noalias !280
  %i.aml = load float, ptr %i.ami, align 16, !noalias !280 ; 3 uses
  %i.amm = fsub float %i.amk, %i.aml
  %i.amn = fdiv float 1.000000e+00, %i.amm        ; 2 uses
  %i.amo = fneg float %i.aml
  %i.amp = fmul float %i.amn, %i.amo              ; 2 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amf, i64 48
  %i.amr = fsub float 1.000000e+00, %i.amp
  %i.ams = insertelement <4 x float> poison, float %i.amp, i64 0
  %i.amt = shufflevector <4 x float> %i.ams, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.amu = load <4 x float>, ptr %i.amq, align 16, !noalias !281 ; 2 uses
  %i.amv = fmul <4 x float> %i.amu, %i.amt
  %i.amw = insertelement <4 x float> poison, float %i.amr, i64 0
  %i.amx = shufflevector <4 x float> %i.amw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.amy = load <4 x float>, ptr %i.amh, align 16, !noalias !282 ; 2 uses
  %i.amz = fmul <4 x float> %i.amy, %i.amx
  %i.ana = fadd <4 x float> %i.amv, %i.amz
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amf, i64 32
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amf, i64 64
  %i.and = load <4 x float>, ptr %i.anc, align 16, !noalias !283 ; 2 uses
  %i.ane = fmul <4 x float> %i.and, %i.amt
  %i.anf = load <4 x float>, ptr %i.anb, align 16, !noalias !284 ; 2 uses
  %i.ang = fmul <4 x float> %i.anf, %i.amx
  %i.anh = fadd <4 x float> %i.ane, %i.ang
  %i.ani = fsub float 1.000000e+00, %i.aml
  %i.anj = fmul float %i.ani, %i.amn              ; 2 uses
  %i.ank = fsub float 1.000000e+00, %i.anj
  %i.anl = insertelement <4 x float> poison, float %i.anj, i64 0
  %i.anm = shufflevector <4 x float> %i.anl, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ann = fmul <4 x float> %i.amu, %i.anm
  %i.ano = insertelement <4 x float> poison, float %i.ank, i64 0
  %i.anp = shufflevector <4 x float> %i.ano, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.anq = fmul <4 x float> %i.amy, %i.anp
  %i.anr = fadd <4 x float> %i.ann, %i.anq
  %i.ans = fmul <4 x float> %i.and, %i.anm
  %i.ant = fmul <4 x float> %i.anf, %i.anp
  %i.anu = fadd <4 x float> %i.ans, %i.ant
  %i.anv = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ana, <4 x float> splat (float f0x7F7FFFFF)) ; 2 uses
  %i.anw = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.anh, <4 x float> splat (float f0xFF7FFFFF)) ; 2 uses
  %i.anx = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.anr, <4 x float> splat (float f0x7F7FFFFF)) ; 2 uses
  %i.any = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.anu, <4 x float> splat (float f0xFF7FFFFF)) ; 2 uses
  %i.anz = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.anv)
  %i.aoa = fmul <4 x float> %i.anz, splat (float f0x35000000)
  %i.aob = fsub <4 x float> %i.anv, %i.aoa        ; 4 uses
  %i.aoc = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.anw)
  %i.aod = fmul <4 x float> %i.aoc, splat (float f0x35000000)
  %i.aoe = fadd <4 x float> %i.anw, %i.aod        ; 4 uses
  %i.aof = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.anx)
  %i.aog = fmul <4 x float> %i.aof, <float f0x35000000, float f0x35000000, float f0x35000000, float poison>
  %i.aoh = fsub <4 x float> %i.anx, %i.aog
  %i.aoi = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.any)
  %i.aoj = fmul <4 x float> %i.aoi, <float f0x35000000, float f0x35000000, float f0x35000000, float poison>
  %i.aok = fadd <4 x float> %i.any, %i.aoj
  %i.aol = fsub <4 x float> %i.aoh, %i.aob        ; 3 uses
  %i.aom = fsub <4 x float> %i.aok, %i.aoe        ; 3 uses
  %.sroa.0927.0.vec.extract = extractelement <4 x float> %i.aob, i64 0
  %i.aon = getelementptr inbounds nuw [4 x i8], ptr %i.alr, i64 %.0.i1326
  store float %.sroa.0927.0.vec.extract, ptr %i.aon, align 4
  %.sroa.0927.4.vec.extract = extractelement <4 x float> %i.aob, i64 1
  %i.aoo = getelementptr inbounds nuw [4 x i8], ptr %i.als, i64 %.0.i1326
  store float %.sroa.0927.4.vec.extract, ptr %i.aoo, align 4
  %.sroa.0927.8.vec.extract = extractelement <4 x float> %i.aob, i64 2
  %i.aop = getelementptr inbounds nuw [4 x i8], ptr %i.alt, i64 %.0.i1326
  store float %.sroa.0927.8.vec.extract, ptr %i.aop, align 4
  %.sroa.10931.16.vec.extract = extractelement <4 x float> %i.aoe, i64 0
  %i.aoq = getelementptr inbounds nuw [4 x i8], ptr %i.alu, i64 %.0.i1326
  store float %.sroa.10931.16.vec.extract, ptr %i.aoq, align 4
  %.sroa.10931.20.vec.extract = extractelement <4 x float> %i.aoe, i64 1
  %i.aor = getelementptr inbounds nuw [4 x i8], ptr %i.alv, i64 %.0.i1326
  store float %.sroa.10931.20.vec.extract, ptr %i.aor, align 4
  %.sroa.10931.24.vec.extract = extractelement <4 x float> %i.aoe, i64 2
  %i.aos = getelementptr inbounds nuw [4 x i8], ptr %i.alw, i64 %.0.i1326
  store float %.sroa.10931.24.vec.extract, ptr %i.aos, align 4
  %.sroa.0908.0.vec.extract = extractelement <4 x float> %i.aol, i64 0
  %i.aot = getelementptr inbounds nuw [4 x i8], ptr %i.alx, i64 %.0.i1326
  store float %.sroa.0908.0.vec.extract, ptr %i.aot, align 4
  %.sroa.0908.4.vec.extract = extractelement <4 x float> %i.aol, i64 1
  %i.aou = getelementptr inbounds nuw [4 x i8], ptr %i.aly, i64 %.0.i1326
  store float %.sroa.0908.4.vec.extract, ptr %i.aou, align 4
  %.sroa.0908.8.vec.extract = extractelement <4 x float> %i.aol, i64 2
  %i.aov = getelementptr inbounds nuw [4 x i8], ptr %i.alz, i64 %.0.i1326
  store float %.sroa.0908.8.vec.extract, ptr %i.aov, align 4
  %.sroa.0907.0.vec.extract = extractelement <4 x float> %i.aom, i64 0
  %i.aow = getelementptr inbounds nuw [4 x i8], ptr %i.ama, i64 %.0.i1326
  store float %.sroa.0907.0.vec.extract, ptr %i.aow, align 4
  %.sroa.0907.4.vec.extract = extractelement <4 x float> %i.aom, i64 1
  %i.aox = getelementptr inbounds nuw [4 x i8], ptr %i.amb, i64 %.0.i1326
  store float %.sroa.0907.4.vec.extract, ptr %i.aox, align 4
  %.sroa.0907.8.vec.extract = extractelement <4 x float> %i.aom, i64 2
  %i.aoy = getelementptr inbounds nuw [4 x i8], ptr %i.amc, i64 %.0.i1326
  store float %.sroa.0907.8.vec.extract, ptr %i.aoy, align 4
  %i.aoz = load float, ptr %i.ami, align 16
  %i.apa = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.0.i1326
  store float %i.aoz, ptr %i.apa, align 4
  %i.apb = load float, ptr %i.amj, align 4        ; 2 uses
  %i.apc = fcmp oeq float %i.apb, 1.000000e+00
  %i.apd = select i1 %i.apc, float f0x3F800001, float %i.apb
  %i.ape = getelementptr inbounds nuw [4 x i8], ptr %i.ame, i64 %.0.i1326
  store float %i.apd, ptr %i.ape, align 4
  %i.apf = add nuw i64 %.0.i1326, 1               ; 2 uses
  %exitcond1388.not = icmp eq i64 %i.apf, %i.apy
  br i1 %exitcond1388.not, label %._crit_edge1327, label %.noexc362, !llvm.loop !1

bb.ds:                                            ; preds = %.lr.ph1320, %_ZN6embree5LBBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit
  %.01001319 = phi i64 [ 0, %.lr.ph1320 ], [ %i.apx, %_ZN6embree5LBBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit ] ; 3 uses
  %.sroa.0.01318 = phi <4 x float> [ splat (float +inf), %.lr.ph1320 ], [ %i.apt, %_ZN6embree5LBBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit ]
  %.sroa.7.01317 = phi <4 x float> [ splat (float -inf), %.lr.ph1320 ], [ %i.apu, %_ZN6embree5LBBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit ]
  %.sroa.11.01316 = phi <4 x float> [ splat (float +inf), %.lr.ph1320 ], [ %i.apv, %_ZN6embree5LBBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit ]
  %.sroa.15.01315 = phi <4 x float> [ splat (float -inf), %.lr.ph1320 ], [ %i.apw, %_ZN6embree5LBBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #11
  %i.apg = getelementptr inbounds nuw [176 x i8], ptr %38, i64 %.01001319
  invoke void @_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE7recurseERNS1_11BuildRecordEST_b(ptr dead_on_unwind nonnull writable sret(%"struct.embree::BVHNodeRecordMB4D") align 16 %47, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 16 dereferenceable(176) %i.apg, ptr noundef nonnull byval(%"struct.embree::FastAllocator::CachedAllocator") align 8 %3, i1 noundef zeroext false)
          to label %_ZN6embree5LBBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit unwind label %bb.dt

_ZN6embree5LBBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit: ; preds = %bb.ds
  %i.aph = getelementptr inbounds nuw [96 x i8], ptr %37, i64 %.01001319 ; 6 uses
  %i.api = load i64, ptr %47, align 16
  store i64 %i.api, ptr %i.aph, align 16
  %i.apj = getelementptr inbounds nuw i8, ptr %i.aph, i64 16
  %i.apk = load <4 x float>, ptr %i.afu, align 16 ; 2 uses
  store <4 x float> %i.apk, ptr %i.apj, align 16
  %i.apl = getelementptr inbounds nuw i8, ptr %i.aph, i64 32
  %i.apm = load <4 x float>, ptr %i.afv, align 16 ; 2 uses
  store <4 x float> %i.apm, ptr %i.apl, align 16
  %i.apn = getelementptr inbounds nuw i8, ptr %i.aph, i64 48
  %i.apo = load <4 x float>, ptr %i.afw, align 16 ; 2 uses
  store <4 x float> %i.apo, ptr %i.apn, align 16
  %i.app = getelementptr inbounds nuw i8, ptr %i.aph, i64 64
  %i.apq = load <4 x float>, ptr %i.afx, align 16 ; 2 uses
  store <4 x float> %i.apq, ptr %i.app, align 16
  %i.apr = getelementptr inbounds nuw i8, ptr %i.aph, i64 80
  %i.aps = load <2 x float>, ptr %i.afy, align 16
  store <2 x float> %i.aps, ptr %i.apr, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #11
  %i.apt = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0.01318, <4 x float> %i.apk) ; 3 uses
  %i.apu = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.7.01317, <4 x float> %i.apm) ; 3 uses
  %i.apv = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.11.01316, <4 x float> %i.apo) ; 3 uses
  %i.apw = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.15.01315, <4 x float> %i.apq) ; 3 uses
  %i.apx = add nuw i64 %.01001319, 1              ; 2 uses
  %i.apy = load i64, ptr %i.dd, align 16          ; 3 uses
  %i.apz = icmp ult i64 %i.apx, %i.apy
  br i1 %i.apz, label %bb.ds, label %.preheader1267, !llvm.loop !190

bb.dt:                                            ; preds = %bb.ds
  %i.aqa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #11
  br label %.body254

._crit_edge1327:                                  ; preds = %.noexc362, %_ZN6embree5LBBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit.preheader, %.preheader1267
  %.sroa.0.0.lcssa1512 = phi <4 x float> [ splat (float +inf), %_ZN6embree5LBBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit.preheader ], [ %i.apt, %.preheader1267 ], [ %i.apt, %.noexc362 ]
  %.sroa.7.0.lcssa1511 = phi <4 x float> [ splat (float -inf), %_ZN6embree5LBBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit.preheader ], [ %i.apu, %.preheader1267 ], [ %i.apu, %.noexc362 ]
  %.sroa.11.0.lcssa1510 = phi <4 x float> [ splat (float +inf), %_ZN6embree5LBBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit.preheader ], [ %i.apv, %.preheader1267 ], [ %i.apv, %.noexc362 ]
  %.sroa.15.0.lcssa1509 = phi <4 x float> [ splat (float -inf), %_ZN6embree5LBBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit.preheader ], [ %i.apw, %.preheader1267 ], [ %i.apw, %.noexc362 ]
  store i64 %i.afo, ptr %0, align 16
  %i.aqb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %.sroa.0.0.lcssa1512, ptr %i.aqb, align 16
  %i.aqc = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> %.sroa.7.0.lcssa1511, ptr %i.aqc, align 16
  %i.aqd = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> %.sroa.11.0.lcssa1510, ptr %i.aqd, align 16
  %i.aqe = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x float> %.sroa.15.0.lcssa1509, ptr %i.aqe, align 16
  %i.aqf = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aqg = load i64, ptr %i.ea, align 8
  store i64 %i.aqg, ptr %i.aqf, align 16
  br label %bb.fu

bb.du:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #11
  %i.aqh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aqi = load ptr, ptr %i.aqh, align 8          ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 320, ptr %i.e, align 8
  %i.aqj = load ptr, ptr %i.aqi, align 64         ; 18 uses
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqj, i64 8 ; 6 uses
  %i.aql = load atomic ptr, ptr %i.aqk seq_cst, align 8
  %i.aqm = icmp eq ptr %i.aql, %i.bv
  br i1 %i.aqm, label %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #11
  store ptr %i.aqj, ptr %25, align 8
  %i.aqn = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  store i8 1, ptr %i.aqn, align 8
  invoke void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 64 dereferenceable(192) %i.aqj)
          to label %.noexc238 unwind label %bb.ez

.noexc238:                                        ; preds = %bb.dv
  %i.aqo = load atomic ptr, ptr %i.aqk seq_cst, align 8
  %.not.i2.i = icmp eq ptr %i.aqo, null
  br i1 %.not.i2.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %.noexc238
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqj, i64 104
  %i.aqq = load i64, ptr %i.aqp, align 8
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqj, i64 168
  %i.aqs = load i64, ptr %i.aqr, align 8
  %i.aqt = add i64 %i.aqs, %i.aqq
  %i.aqu = load atomic ptr, ptr %i.aqk seq_cst, align 8
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqu, i64 280
  %i.aqw = atomicrmw add ptr %i.aqv, i64 %i.aqt seq_cst, align 8 ; 0 uses
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqj, i64 88
  %i.aqy = load i64, ptr %i.aqx, align 8
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqj, i64 80
  %i.ara = load i64, ptr %i.aqz, align 16
  %i.arb = getelementptr inbounds nuw i8, ptr %i.aqj, i64 152
  %i.arc = load i64, ptr %i.arb, align 8
  %i.ard = getelementptr inbounds nuw i8, ptr %i.aqj, i64 144
  %i.are = load i64, ptr %i.ard, align 16
  %i.arf = add i64 %i.aqy, %i.arc
  %i.arg = add i64 %i.ara, %i.are
  %i.arh = sub i64 %i.arf, %i.arg
  %i.ari = load atomic ptr, ptr %i.aqk seq_cst, align 8
  %i.arj = getelementptr inbounds nuw i8, ptr %i.ari, i64 288
  %i.ark = atomicrmw add ptr %i.arj, i64 %i.arh seq_cst, align 8 ; 0 uses
  %i.arl = getelementptr inbounds nuw i8, ptr %i.aqj, i64 112
  %i.arm = load i64, ptr %i.arl, align 16
  %i.arn = getelementptr inbounds nuw i8, ptr %i.aqj, i64 176
  %i.aro = load i64, ptr %i.arn, align 16
  %i.arp = add i64 %i.aro, %i.arm
  %i.arq = load atomic ptr, ptr %i.aqk seq_cst, align 8
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arq, i64 296
  %i.ars = atomicrmw add ptr %i.arr, i64 %i.arp seq_cst, align 8 ; 0 uses
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %.noexc238
  %i.art = getelementptr inbounds nuw i8, ptr %i.aqj, i64 72
  %.not.i518 = icmp eq ptr %i.bv, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.art, i8 0, i64 48, i1 false)
  br i1 %.not.i518, label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit519.thread, label %bb.dy

_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit519.thread: ; preds = %bb.dx
  %i.aru = getelementptr inbounds nuw i8, ptr %i.aqj, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aru, i8 0, i64 48, i1 false)
  br label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit521

bb.dy:                                            ; preds = %bb.dx
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aqj, i64 96
  %i.arw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %i.arx = load i64, ptr %i.arw, align 8
  store i64 %i.arx, ptr %i.arv, align 32
  %i.ary = getelementptr inbounds nuw i8, ptr %i.aqj, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ary, i8 0, i64 48, i1 false)
  %i.arz = getelementptr inbounds nuw i8, ptr %i.aqj, i64 160
  %i.asa = load i64, ptr %i.arw, align 8
  store i64 %i.asa, ptr %i.arz, align 32
  br label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit521

_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit521: ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit519.thread, %bb.dy
  store atomic ptr %i.bv, ptr %i.aqk seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #11
  store ptr @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE, ptr %24, align 8
  %i.asb = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i8 1, ptr %i.asb, align 8
  invoke void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %.noexc.i unwind label %bb.ei

.noexc.i:                                         ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit521
  %i.asc = getelementptr inbounds nuw i8, ptr %i.bv, i64 304 ; 2 uses
  %i.asd = getelementptr inbounds nuw i8, ptr %i.bv, i64 312 ; 4 uses
  %i.ase = load ptr, ptr %i.asd, align 8          ; 3 uses
  %i.asf = getelementptr inbounds nuw i8, ptr %i.bv, i64 320 ; 2 uses
  %i.asg = load ptr, ptr %i.asf, align 8
  %.not.i524 = icmp eq ptr %i.ase, %i.asg
  br i1 %.not.i524, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %.noexc.i
  store ptr %i.aqj, ptr %i.ase, align 8
  %i.ash = load ptr, ptr %i.asd, align 8
  %i.asi = getelementptr inbounds nuw i8, ptr %i.ash, i64 8
  store ptr %i.asi, ptr %i.asd, align 8
  br label %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i

bb.ea:                                            ; preds = %.noexc.i
  %i.asj = load ptr, ptr %i.asc, align 8          ; 4 uses
  %i.ask = ptrtoint ptr %i.ase to i64
  %i.asl = ptrtoint ptr %i.asj to i64
  %i.asm = sub i64 %i.ask, %i.asl                 ; 5 uses
  %i.asn = icmp eq i64 %i.asm, 9223372036854775800
  br i1 %i.asn, label %bb.eb, label %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i525

bb.eb:                                            ; preds = %bb.ea
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #27
          to label %.noexc531 unwind label %bb.ee

.noexc531:                                        ; preds = %bb.eb
  unreachable

_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i525: ; preds = %bb.ea
  %i.aso = ashr exact i64 %i.asm, 3               ; 3 uses
  %.sroa.speculated.i.i.i526 = call i64 @llvm.umax.i64(i64 %i.aso, i64 1)
  %i.asp = add nsw i64 %.sroa.speculated.i.i.i526, %i.aso ; 2 uses
  %i.asq = icmp ult i64 %i.asp, %i.aso
  %i.asr = call i64 @llvm.umin.i64(i64 %i.asp, i64 1152921504606846975)
  %i.ass = select i1 %i.asq, i64 1152921504606846975, i64 %i.asr ; 3 uses
  %.not.i.i.i527 = icmp ne i64 %i.ass, 0
  call void @llvm.assume(i1 %.not.i.i.i527)
  %i.ast = shl nuw nsw i64 %i.ass, 3
  %i.asu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ast) #25
          to label %.noexc532 unwind label %bb.ee ; 4 uses

.noexc532:                                        ; preds = %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i525
  %i.asv = getelementptr inbounds i8, ptr %i.asu, i64 %i.asm ; 2 uses
  store ptr %i.aqj, ptr %i.asv, align 8
  %i.asw = icmp sgt i64 %i.asm, 0
  br i1 %i.asw, label %bb.ec, label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i528

bb.ec:                                            ; preds = %.noexc532
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.asu, ptr align 8 %i.asj, i64 %i.asm, i1 false)
  br label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i528

_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i528: ; preds = %bb.ec, %.noexc532
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asv, i64 8
  %.not.i17.i.i529 = icmp eq ptr %i.asj, null
  br i1 %.not.i17.i.i529, label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i530, label %bb.ed

bb.ed:                                            ; preds = %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i528
  call void @_ZdlPv(ptr noundef nonnull %i.asj) #26
  br label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i530

_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i530: ; preds = %bb.ed, %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i528
  store ptr %i.asu, ptr %i.asc, align 8
  store ptr %i.asx, ptr %i.asd, align 8
  %i.asy = getelementptr inbounds nuw [8 x i8], ptr %i.asu, i64 %i.ass
  store ptr %i.asy, ptr %i.asf, align 8
  br label %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i

bb.ee:                                            ; preds = %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i525, %bb.eb
  %i.asz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %24) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #11
  br label %.body.i

_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i: ; preds = %bb.dz, %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i530
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit534 unwind label %bb.ef

end_hunk_2
begin_hunk_3_@_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE7recurseERNS1_11BuildRecordEST_b:bb.a
  store <4 x float> %.lcssa10.i548, ptr %i.awg, align 16, !alias.scope !286
  store <4 x float> %.lcssa12.i547, ptr %i.awf, align 16, !alias.scope !286
  store <4 x float> %.lcssa14.i546, ptr %i.awe, align 16, !alias.scope !286
  br label %bb.fh

bb.fe:                                            ; preds = %bb.fb
  %i.ayl = add i64 %i.awz, 1023
  %i.aym = lshr i64 %i.ayl, 10                    ; 2 uses
  %i.ayn = icmp eq i64 %i.aym, 1
  br i1 %i.ayn, label %bb.ff, label %bb.fg, !prof !41

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11, !noalias !292
  store i64 %i.aww, ptr %11, align 8, !noalias !292
  store i64 %i.awy, ptr %i.awa, align 8, !noalias !292
  invoke void @_ZZNK6embree5SetMB12linearBoundsINS_4sse225VirtualRecalculatePrimRefEEENS_5LBBoxINS_6Vec3faEEERKT_RKNS_12LinearSpace3IS5_EEENKUlRKNS_5rangeImEEE_clESH_(ptr dead_on_unwind nonnull writable sret(%"struct.embree::LBBox") align 16 %51, ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %.noexc398 unwind label %.loopexit.split-lp1274

.noexc398:                                        ; preds = %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11, !noalias !292
  br label %bb.fh

bb.fg:                                            ; preds = %bb.fe
  invoke void @_ZN6embree24parallel_reduce_internalImNS_5LBBoxINS_6Vec3faEEEZNKS_5SetMB12linearBoundsINS_4sse225VirtualRecalculatePrimRefEEES3_RKT_RKNS_12LinearSpace3IS2_EEEUlRKNS_5rangeImEEE_ZNKS5_IS7_EES3_SA_SE_EUlRKS3_SL_E_EET0_S8_S8_S8_S8_RKSN_RKT1_RKT2_(ptr dead_on_unwind nonnull writable sret(%"struct.embree::LBBox") align 16 %51, i64 noundef %i.aym, i64 noundef %i.aww, i64 noundef %i.awy, i64 noundef 1024, ptr noundef nonnull align 16 dereferenceable(64) %29, ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 1 dereferenceable(1) %30)
          to label %bb.fh unwind label %.loopexit.split-lp1274

bb.fh:                                            ; preds = %bb.fg, %.noexc398, %.noexc396
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #11, !noalias !285
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #11, !noalias !285
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #11, !noalias !285
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #11
  invoke void @_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE7recurseERNS1_11BuildRecordEST_b(ptr dead_on_unwind nonnull writable sret(%"struct.embree::BVHNodeRecordMB4D") align 16 %52, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 16 dereferenceable(176) %i.aws, ptr noundef nonnull byval(%"struct.embree::FastAllocator::CachedAllocator") align 8 %3, i1 noundef zeroext false)
          to label %bb.fi unwind label %bb.fk

bb.fi:                                            ; preds = %bb.fh
  %.sroa.03.0.copyload = load i64, ptr %48, align 8
  %.sroa.02.0.copyload = load i64, ptr %52, align 16
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.aws, i64 152
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.ayo, align 8 ; 3 uses
  %i.ayp = and i64 %.sroa.03.0.copyload, -16
  %i.ayq = inttoptr i64 %i.ayp to ptr             ; 19 uses
  %i.ayr = getelementptr inbounds nuw [8 x i8], ptr %i.ayq, i64 %.0841312
  store i64 %.sroa.02.0.copyload, ptr %i.ayr, align 8
  %i.ays = load <3 x float>, ptr %50, align 16    ; 3 uses
  %i.ayt = load <3 x float>, ptr %i.awh, align 16 ; 3 uses
  %i.ayu = load <3 x float>, ptr %i.awi, align 16 ; 3 uses
  %.sroa.0598.0.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload, i64 0 ; 2 uses
  %shift1591 = shufflevector <2 x float> %.sroa.01.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1592 = fsub <2 x float> %shift1591, %.sroa.01.0.copyload
  %i.ayv = extractelement <2 x float> %foldExtExtBinop1592, i64 0
  %i.ayw = fdiv float 1.000000e+00, %i.ayv        ; 2 uses
  %i.ayx = fneg float %.sroa.0598.0.vec.extract
  %i.ayy = fmul float %i.ayw, %i.ayx              ; 2 uses
  %i.ayz = fsub float 1.000000e+00, %i.ayy
  %i.aza = insertelement <4 x float> poison, float %i.ayy, i64 0
  %i.azb = shufflevector <4 x float> %i.aza, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.azc = load <4 x float>, ptr %i.awf, align 16, !noalias !293 ; 2 uses
  %i.azd = fmul <4 x float> %i.azc, %i.azb
  %i.aze = insertelement <4 x float> poison, float %i.ayz, i64 0
  %i.azf = shufflevector <4 x float> %i.aze, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.azg = load <4 x float>, ptr %51, align 16, !noalias !294 ; 2 uses
  %i.azh = fmul <4 x float> %i.azg, %i.azf
  %i.azi = fadd <4 x float> %i.azd, %i.azh        ; 4 uses
  %i.azj = load <4 x float>, ptr %i.awe, align 16, !noalias !295 ; 2 uses
  %i.azk = fmul <4 x float> %i.azb, %i.azj
  %i.azl = load <4 x float>, ptr %i.awg, align 16, !noalias !296 ; 2 uses
  %i.azm = fmul <4 x float> %i.azf, %i.azl
  %i.azn = fadd <4 x float> %i.azk, %i.azm
  %i.azo = fsub float 1.000000e+00, %.sroa.0598.0.vec.extract
  %i.azp = fmul float %i.azo, %i.ayw              ; 2 uses
  %i.azq = fsub float 1.000000e+00, %i.azp
  %i.azr = insertelement <4 x float> poison, float %i.azp, i64 0
  %i.azs = shufflevector <4 x float> %i.azr, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.azt = fmul <4 x float> %i.azc, %i.azs
  %i.azu = insertelement <4 x float> poison, float %i.azq, i64 0
  %i.azv = shufflevector <4 x float> %i.azu, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.azw = fmul <4 x float> %i.azg, %i.azv
  %i.azx = fadd <4 x float> %i.azt, %i.azw
  %i.azy = fmul <4 x float> %i.azs, %i.azj
  %i.azz = fmul <4 x float> %i.azv, %i.azl
  %i.baa = fadd <4 x float> %i.azy, %i.azz
  %i.bab = fsub <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, %i.azi ; 3 uses
  %i.bac = fsub <4 x float> %i.azn, %i.azi
  %i.bad = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float f0x1FEC1E4A), <4 x float> %i.bac)
  %i.bae = fdiv <4 x float> splat (float 1.000000e+00), %i.bad ; 5 uses
  %i.baf = shufflevector <4 x float> %i.bae, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 4 uses
  %i.bag = shufflevector <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.bae, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 4 uses
  %i.bah = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x float> %i.bae, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 4 uses
  %i.bai = shufflevector <3 x float> %i.ays, <3 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.baj = shufflevector <3 x float> %i.ays, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.bak = shufflevector <3 x float> %i.ays, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 poison>
  %i.bal = fmul <4 x float> %i.bak, %i.bah
  %i.bam = fmul <4 x float> %i.baj, %i.bag
  %i.ban = fadd <4 x float> %i.bam, %i.bal
  %i.bao = fmul <4 x float> %i.bai, %i.baf
  %i.bap = fadd <4 x float> %i.bao, %i.ban        ; 3 uses
  %i.baq = shufflevector <3 x float> %i.ayt, <3 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.bar = shufflevector <3 x float> %i.ayt, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.bas = shufflevector <3 x float> %i.ayt, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 poison>
  %i.bat = fmul <4 x float> %i.bas, %i.bah
  %i.bau = fmul <4 x float> %i.bar, %i.bag
  %i.bav = fadd <4 x float> %i.bau, %i.bat
  %i.baw = fmul <4 x float> %i.baq, %i.baf
  %i.bax = fadd <4 x float> %i.baw, %i.bav        ; 3 uses
  %i.bay = shufflevector <3 x float> %i.ayu, <3 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.baz = shufflevector <3 x float> %i.ayu, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.bba = shufflevector <3 x float> %i.ayu, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 poison>
  %i.bbb = fmul <4 x float> %i.bba, %i.bah
  %i.bbc = fmul <4 x float> %i.baz, %i.bag
  %i.bbd = fadd <4 x float> %i.bbc, %i.bbb
  %i.bbe = fmul <4 x float> %i.bay, %i.baf
  %i.bbf = fadd <4 x float> %i.bbe, %i.bbd        ; 3 uses
  %i.bbg = shufflevector <4 x float> %i.bab, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.bbh = shufflevector <4 x float> %i.bab, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.bbi = shufflevector <4 x float> %i.bab, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 poison>
  %i.bbj = fmul <4 x float> %i.bbi, %i.bah
  %i.bbk = fmul <4 x float> %i.bbh, %i.bag
  %i.bbl = fadd <4 x float> %i.bbk, %i.bbj
  %i.bbm = fmul <4 x float> %i.bbg, %i.baf
  %i.bbn = fadd <4 x float> %i.bbm, %i.bbl
  %i.bbo = fadd <4 x float> %i.bbn, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison> ; 3 uses
  %i.bbp = fsub <4 x float> %i.azx, %i.azi
  %i.bbq = fmul <4 x float> %i.bbp, %i.bae        ; 3 uses
  %i.bbr = fsub <4 x float> %i.baa, %i.azi
  %i.bbs = fmul <4 x float> %i.bae, %i.bbr        ; 3 uses
  %.sroa.01177.0.vec.extract = extractelement <4 x float> %i.bap, i64 0
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.ayq, i64 32
  %i.bbu = getelementptr inbounds nuw [4 x i8], ptr %i.bbt, i64 %.0841312
  store float %.sroa.01177.0.vec.extract, ptr %i.bbu, align 4
  %.sroa.01177.4.vec.extract = extractelement <4 x float> %i.bap, i64 1
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.ayq, i64 48
  %i.bbw = getelementptr inbounds nuw [4 x i8], ptr %i.bbv, i64 %.0841312
  store float %.sroa.01177.4.vec.extract, ptr %i.bbw, align 4
  %.sroa.01177.8.vec.extract = extractelement <4 x float> %i.bap, i64 2
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.ayq, i64 64
  %i.bby = getelementptr inbounds nuw [4 x i8], ptr %i.bbx, i64 %.0841312
  store float %.sroa.01177.8.vec.extract, ptr %i.bby, align 4
  %.sroa.101184.16.vec.extract = extractelement <4 x float> %i.bax, i64 0
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.ayq, i64 80
  %i.bca = getelementptr inbounds nuw [4 x i8], ptr %i.bbz, i64 %.0841312
  store float %.sroa.101184.16.vec.extract, ptr %i.bca, align 4
  %.sroa.101184.20.vec.extract = extractelement <4 x float> %i.bax, i64 1
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.ayq, i64 96
  %i.bcc = getelementptr inbounds nuw [4 x i8], ptr %i.bcb, i64 %.0841312
  store float %.sroa.101184.20.vec.extract, ptr %i.bcc, align 4
  %.sroa.101184.24.vec.extract = extractelement <4 x float> %i.bax, i64 2
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.ayq, i64 112
  %i.bce = getelementptr inbounds nuw [4 x i8], ptr %i.bcd, i64 %.0841312
  store float %.sroa.101184.24.vec.extract, ptr %i.bce, align 4
  %.sroa.181191.32.vec.extract = extractelement <4 x float> %i.bbf, i64 0
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.ayq, i64 128
  %i.bcg = getelementptr inbounds nuw [4 x i8], ptr %i.bcf, i64 %.0841312
  store float %.sroa.181191.32.vec.extract, ptr %i.bcg, align 4
  %.sroa.181191.36.vec.extract = extractelement <4 x float> %i.bbf, i64 1
  %i.bch = getelementptr inbounds nuw i8, ptr %i.ayq, i64 144
  %i.bci = getelementptr inbounds nuw [4 x i8], ptr %i.bch, i64 %.0841312
  store float %.sroa.181191.36.vec.extract, ptr %i.bci, align 4
  %.sroa.181191.40.vec.extract = extractelement <4 x float> %i.bbf, i64 2
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.ayq, i64 160
  %i.bck = getelementptr inbounds nuw [4 x i8], ptr %i.bcj, i64 %.0841312
  store float %.sroa.181191.40.vec.extract, ptr %i.bck, align 4
  %.sroa.26.48.vec.extract = extractelement <4 x float> %i.bbo, i64 0
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.ayq, i64 176
  %i.bcm = getelementptr inbounds nuw [4 x i8], ptr %i.bcl, i64 %.0841312
  store float %.sroa.26.48.vec.extract, ptr %i.bcm, align 4
  %.sroa.26.52.vec.extract = extractelement <4 x float> %i.bbo, i64 1
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.ayq, i64 192
  %i.bco = getelementptr inbounds nuw [4 x i8], ptr %i.bcn, i64 %.0841312
  store float %.sroa.26.52.vec.extract, ptr %i.bco, align 4
  %.sroa.26.56.vec.extract = extractelement <4 x float> %i.bbo, i64 2
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.ayq, i64 208
  %i.bcq = getelementptr inbounds nuw [4 x i8], ptr %i.bcp, i64 %.0841312
  store float %.sroa.26.56.vec.extract, ptr %i.bcq, align 4
  %.sroa.01146.0.vec.extract = extractelement <4 x float> %i.bbq, i64 0
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.ayq, i64 224
  %i.bcs = getelementptr inbounds nuw [4 x i8], ptr %i.bcr, i64 %.0841312
  store float %.sroa.01146.0.vec.extract, ptr %i.bcs, align 4
  %.sroa.01146.4.vec.extract = extractelement <4 x float> %i.bbq, i64 1
  %i.bct = getelementptr inbounds nuw i8, ptr %i.ayq, i64 240
  %i.bcu = getelementptr inbounds nuw [4 x i8], ptr %i.bct, i64 %.0841312
  store float %.sroa.01146.4.vec.extract, ptr %i.bcu, align 4
  %.sroa.01146.8.vec.extract = extractelement <4 x float> %i.bbq, i64 2
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.ayq, i64 256
  %i.bcw = getelementptr inbounds nuw [4 x i8], ptr %i.bcv, i64 %.0841312
  store float %.sroa.01146.8.vec.extract, ptr %i.bcw, align 4
  %.sroa.61147.16.vec.extract = extractelement <4 x float> %i.bbs, i64 0
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.ayq, i64 272
  %i.bcy = getelementptr inbounds nuw [4 x i8], ptr %i.bcx, i64 %.0841312
  store float %.sroa.61147.16.vec.extract, ptr %i.bcy, align 4
  %.sroa.61147.20.vec.extract = extractelement <4 x float> %i.bbs, i64 1
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.ayq, i64 288
  %i.bda = getelementptr inbounds nuw [4 x i8], ptr %i.bcz, i64 %.0841312
  store float %.sroa.61147.20.vec.extract, ptr %i.bda, align 4
  %.sroa.61147.24.vec.extract = extractelement <4 x float> %i.bbs, i64 2
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.ayq, i64 304
  %i.bdc = getelementptr inbounds nuw [4 x i8], ptr %i.bdb, i64 %.0841312
  store float %.sroa.61147.24.vec.extract, ptr %i.bdc, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #11
  %i.bdd = add nuw i64 %.0841312, 1               ; 2 uses
  %i.bde = load i64, ptr %i.dd, align 16
  %i.bdf = icmp ult i64 %i.bdd, %i.bde
  br i1 %i.bdf, label %bb.fa, label %.loopexit1279, !llvm.loop !229

bb.fj:                                            ; preds = %bb.fa
  %i.bdg = landingpad { ptr, i32 }
          cleanup
  br label %bb.fm

.loopexit1273:                                    ; preds = %bb.fd
  %lpad.loopexit1275 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl

.loopexit.split-lp1274:                           ; preds = %bb.ff, %bb.fg
  %lpad.loopexit.split-lp1276 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl

bb.fk:                                            ; preds = %bb.fh
  %i.bdh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #11
  br label %bb.fl

bb.fl:                                            ; preds = %.loopexit1273, %.loopexit.split-lp1274, %bb.fk
  %.pn111 = phi { ptr, i32 } [ %i.bdh, %bb.fk ], [ %lpad.loopexit1275, %.loopexit1273 ], [ %lpad.loopexit.split-lp1276, %.loopexit.split-lp1274 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #11
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fj
  %.pn111.pn = phi { ptr, i32 } [ %.pn111, %bb.fl ], [ %i.bdg, %bb.fj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #11
  br label %.body

.loopexit1279:                                    ; preds = %bb.fi, %.preheader1278, %_ZN6embree12parallel_forImZNS_4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS1_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS5_Li4EE6CreateENSB_3SetENS_11OBBNodeMB_tIS5_Li4EE6CreateENSF_3SetEZNS1_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE7recurseERNS2_11BuildRecordESU_bEUlRKNS_5rangeImEEE1_EEvT_S18_S18_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #11
  %i.bdi = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bdj = load ptr, ptr %i.bdi, align 8, !nonnull !35, !align !37
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #11, !noalias !297
  store ptr %i.cm, ptr %34, align 8, !noalias !297
  %i.bdk = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  store ptr %i.bdj, ptr %i.bdk, align 8, !noalias !297
  %i.bdl = load i64, ptr %i.cn, align 16, !noalias !297 ; 5 uses
  %i.bdm = load i64, ptr %i.ck, align 8, !noalias !297 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #11, !noalias !297
  store <4 x float> splat (float +inf), ptr %35, align 16, !noalias !297
  %i.bdn = getelementptr inbounds nuw i8, ptr %35, i64 16
  store <4 x float> splat (float -inf), ptr %i.bdn, align 16, !noalias !297
  %i.bdo = getelementptr inbounds nuw i8, ptr %35, i64 32
  store <4 x float> splat (float +inf), ptr %i.bdo, align 16, !noalias !297
  %i.bdp = getelementptr inbounds nuw i8, ptr %35, i64 48
  store <4 x float> splat (float -inf), ptr %i.bdp, align 16, !noalias !297
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #11, !noalias !297
  %i.bdq = sub i64 %i.bdm, %i.bdl                 ; 2 uses
  %i.bdr = icmp ult i64 %i.bdq, 3072
  br i1 %i.bdr, label %bb.fn, label %bb.fp, !prof !41

bb.fn:                                            ; preds = %.loopexit1279
  call void @llvm.experimental.noalias.scope.decl(metadata !298)
  %i.bds = icmp ult i64 %i.bdl, %i.bdm
  br i1 %i.bds, label %.lr.ph.i558, label %.noexc371

.lr.ph.i558:                                      ; preds = %bb.fn
  %i.bdt = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bdu = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bdv = getelementptr inbounds nuw i8, ptr %6, i64 48
  br label %bb.fo

bb.fo:                                            ; preds = %.noexc561, %.lr.ph.i558
  %.015.i559 = phi i64 [ %i.bdl, %.lr.ph.i558 ], [ %i.bfd, %.noexc561 ] ; 2 uses
  %i.bdw = phi <4 x float> [ splat (float +inf), %.lr.ph.i558 ], [ %i.bew, %.noexc561 ]
  %i.bdx = phi <4 x float> [ splat (float -inf), %.lr.ph.i558 ], [ %i.bey, %.noexc561 ]
  %i.bdy = phi <4 x float> [ splat (float +inf), %.lr.ph.i558 ], [ %i.bfa, %.noexc561 ]
  %i.bdz = phi <4 x float> [ splat (float -inf), %.lr.ph.i558 ], [ %i.bfc, %.noexc561 ]
  %i.bea = load ptr, ptr %i.ed, align 16, !noalias !298
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bea, i64 32
  %i.bec = load ptr, ptr %i.beb, align 8, !noalias !298
  %i.bed = getelementptr inbounds nuw [80 x i8], ptr %i.bec, i64 %.015.i559 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11, !noalias !298
  %i.bee = load ptr, ptr %i.bdk, align 8, !noalias !298, !nonnull !35, !align !37 ; 2 uses
  %.sroa.0.0.copyload.i560 = load <2 x float>, ptr %i.ea, align 8, !noalias !298
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !298
  store <2 x float> %.sroa.0.0.copyload.i560, ptr %5, align 8, !noalias !299
  %i.bef = load ptr, ptr %i.bee, align 8, !noalias !299
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bed, i64 12
  %i.beh = load i32, ptr %i.beg, align 4, !noalias !299
  %i.bei = zext i32 %i.beh to i64
  %i.bej = getelementptr inbounds nuw i8, ptr %i.bef, i64 488
  %i.bek = load ptr, ptr %i.bej, align 8, !noalias !299
  %i.bel = getelementptr inbounds nuw [8 x i8], ptr %i.bek, i64 %i.bei
  %i.bem = load ptr, ptr %i.bel, align 8, !noalias !299 ; 2 uses
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bed, i64 28
  %i.beo = load i32, ptr %i.ben, align 4, !noalias !299
  %i.bep = zext i32 %i.beo to i64
  %i.beq = getelementptr inbounds nuw i8, ptr %i.bee, i64 8
  %i.ber = load ptr, ptr %i.beq, align 8, !noalias !299
  %i.bes = load ptr, ptr %i.bem, align 16, !noalias !299
  %i.bet = getelementptr inbounds nuw i8, ptr %i.bes, i64 488
  %i.beu = load ptr, ptr %i.bet, align 8, !noalias !299
  invoke void %i.beu(ptr dead_on_unwind nonnull writable sret(%"struct.embree::LBBox") align 16 %6, ptr noundef nonnull align 16 dereferenceable(88) %i.bem, i64 noundef %i.bep, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef %i.ber)
          to label %.noexc561 unwind label %.loopexit1268, !inline_history !42

.noexc561:                                        ; preds = %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !298
  %i.bev = load <4 x float>, ptr %6, align 16, !noalias !300
  %i.bew = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bdw, <4 x float> %i.bev) ; 2 uses
  %i.bex = load <4 x float>, ptr %i.bdt, align 16, !noalias !301
  %i.bey = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bdx, <4 x float> %i.bex) ; 2 uses
  %i.bez = load <4 x float>, ptr %i.bdu, align 16, !noalias !302
  %i.bfa = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bdy, <4 x float> %i.bez) ; 2 uses
  %i.bfb = load <4 x float>, ptr %i.bdv, align 16, !noalias !303
  %i.bfc = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bdz, <4 x float> %i.bfb) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11, !noalias !298
  %i.bfd = add i64 %.015.i559, 1                  ; 2 uses
  %exitcond1386.not = icmp eq i64 %i.bfd, %i.bdm
  br i1 %exitcond1386.not, label %.noexc371, label %bb.fo, !llvm.loop !2

.noexc371:                                        ; preds = %.noexc561, %bb.fn
  %.lcssa14.i554 = phi <4 x float> [ splat (float -inf), %bb.fn ], [ %i.bfc, %.noexc561 ]
  %.lcssa12.i555 = phi <4 x float> [ splat (float +inf), %bb.fn ], [ %i.bfa, %.noexc561 ]
  %.lcssa10.i556 = phi <4 x float> [ splat (float -inf), %bb.fn ], [ %i.bey, %.noexc561 ]
  %.lcssa.i557 = phi <4 x float> [ splat (float +inf), %bb.fn ], [ %i.bew, %.noexc561 ]
  %i.bfe = getelementptr inbounds nuw i8, ptr %53, i64 48
  %i.bff = getelementptr inbounds nuw i8, ptr %53, i64 32
  %i.bfg = getelementptr inbounds nuw i8, ptr %53, i64 16
  store <4 x float> %.lcssa.i557, ptr %53, align 16, !alias.scope !298
  store <4 x float> %.lcssa10.i556, ptr %i.bfg, align 16, !alias.scope !298
  store <4 x float> %.lcssa12.i555, ptr %i.bff, align 16, !alias.scope !298
  store <4 x float> %.lcssa14.i554, ptr %i.bfe, align 16, !alias.scope !298
  br label %bb.fs

bb.fp:                                            ; preds = %.loopexit1279
  %i.bfh = add i64 %i.bdq, 1023
  %i.bfi = lshr i64 %i.bfh, 10                    ; 2 uses
  %i.bfj = icmp eq i64 %i.bfi, 1
  br i1 %i.bfj, label %bb.fq, label %bb.fr, !prof !41

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #11, !noalias !304
  store i64 %i.bdl, ptr %17, align 8, !noalias !304
  %i.bfk = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.bdm, ptr %i.bfk, align 8, !noalias !304
  invoke void @_ZZNK6embree5SetMB12linearBoundsINS_4sse225VirtualRecalculatePrimRefEEENS_5LBBoxINS_6Vec3faEEERKT_ENKUlRKNS_5rangeImEEE_clESD_(ptr dead_on_unwind nonnull writable sret(%"struct.embree::LBBox") align 16 %53, ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %.noexc374 unwind label %.loopexit.split-lp1269

.noexc374:                                        ; preds = %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11, !noalias !304
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fp
  invoke void @_ZN6embree24parallel_reduce_internalImNS_5LBBoxINS_6Vec3faEEEZNKS_5SetMB12linearBoundsINS_4sse225VirtualRecalculatePrimRefEEES3_RKT_EUlRKNS_5rangeImEEE_ZNKS5_IS7_EES3_SA_EUlRKS3_SH_E_EET0_S8_S8_S8_S8_RKSJ_RKT1_RKT2_(ptr dead_on_unwind nonnull writable sret(%"struct.embree::LBBox") align 16 %53, i64 noundef %i.bfi, i64 noundef %i.bdl, i64 noundef %i.bdm, i64 noundef 1024, ptr noundef nonnull align 16 dereferenceable(64) %35, ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 1 dereferenceable(1) %36)
          to label %bb.fs unwind label %.loopexit.split-lp1269

bb.fs:                                            ; preds = %bb.fr, %.noexc374, %.noexc371
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #11, !noalias !297
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #11, !noalias !297
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #11, !noalias !297
  %.sroa.0.0.copyload = load i64, ptr %48, align 8
  store i64 %.sroa.0.0.copyload, ptr %0, align 16
  %i.bfl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bfm = load <4 x float>, ptr %53, align 16
  store <4 x float> %i.bfm, ptr %i.bfl, align 16
  %i.bfn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bfo = getelementptr inbounds nuw i8, ptr %53, i64 16
  %i.bfp = load <4 x float>, ptr %i.bfo, align 16
  store <4 x float> %i.bfp, ptr %i.bfn, align 16
  %i.bfq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bfr = getelementptr inbounds nuw i8, ptr %53, i64 32
  %i.bfs = load <4 x float>, ptr %i.bfr, align 16
  store <4 x float> %i.bfs, ptr %i.bfq, align 16
  %i.bft = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bfu = getelementptr inbounds nuw i8, ptr %53, i64 48
  %i.bfv = load <4 x float>, ptr %i.bfu, align 16
  store <4 x float> %i.bfv, ptr %i.bft, align 16
  %i.bfw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bfx = load i64, ptr %i.ea, align 8
  store i64 %i.bfx, ptr %i.bfw, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #11
  br label %bb.fu

.loopexit1268:                                    ; preds = %bb.fo
  %lpad.loopexit1270 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

.loopexit.split-lp1269:                           ; preds = %bb.fq, %bb.fr
  %lpad.loopexit.split-lp1271 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.ft:                                            ; preds = %.loopexit.split-lp1269, %.loopexit1268
  %lpad.phi1272 = phi { ptr, i32 } [ %lpad.loopexit1270, %.loopexit1268 ], [ %lpad.loopexit.split-lp1271, %.loopexit.split-lp1269 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #11
  br label %.body

.body:                                            ; preds = %bb.ez, %.body.i, %bb.ft, %bb.fm, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit543
  %.pn114 = phi { ptr, i32 } [ %lpad.phi1272, %bb.ft ], [ %.pn.i393, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit543 ], [ %.pn111.pn, %bb.fm ], [ %i.awq, %bb.ez ], [ %eh.lpad-body.i, %.body.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #11
  br label %.body254

bb.fu:                                            ; preds = %._crit_edge1340, %._crit_edge1327, %bb.fs, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  %i.bfy = load i64, ptr %i.dd, align 16
  %.not1360 = icmp eq i64 %i.bfy, 0
  br i1 %.not1360, label %_ZN6embree4sse215LocalChildListTINS0_21BVHBuilderHairMSMBlur11BuildRecordELi8EED2Ev.exit214, label %.lr.ph1349

.lr.ph1349:                                       ; preds = %bb.fu, %_ZN6embree4sse212SharedVectorINS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS3_Lm16EEEEEE6decRefEv.exit
  %.0.i2131347 = phi i64 [ %i.bgw, %_ZN6embree4sse212SharedVectorINS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS3_Lm16EEEEEE6decRefEv.exit ], [ 0, %bb.fu ] ; 2 uses
  %i.bfz = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.0.i2131347
  %i.bga = load ptr, ptr %i.bfz, align 8          ; 2 uses
  %i.bgb = getelementptr inbounds nuw i8, ptr %i.bga, i64 8 ; 2 uses
  %i.bgc = load i64, ptr %i.bgb, align 8
  %i.bgd = add i64 %i.bgc, -1                     ; 2 uses
  store i64 %i.bgd, ptr %i.bgb, align 8
  %i.bge = icmp eq i64 %i.bgd, 0
  br i1 %i.bge, label %bb.fv, label %_ZN6embree4sse212SharedVectorINS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS3_Lm16EEEEEE6decRefEv.exit

bb.fv:                                            ; preds = %.lr.ph1349
  %i.bgf = load ptr, ptr %i.bga, align 8          ; 6 uses
  %i.bgg = icmp eq ptr %i.bgf, null
  br i1 %i.bgg, label %_ZN6embree4sse212SharedVectorINS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS3_Lm16EEEEEE6decRefEv.exit, label %.preheader

.preheader:                                       ; preds = %bb.fv
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.bgf, i64 32
  %i.bgi = load ptr, ptr %i.bgh, align 8          ; 3 uses
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bgf, i64 24
  %i.bgk = load i64, ptr %i.bgj, align 8          ; 3 uses
  %.not.i421 = icmp eq ptr %i.bgi, null
  br i1 %.not.i421, label %.noexc422, label %bb.fw

bb.fw:                                            ; preds = %.preheader
  %i.bgl = mul i64 %i.bgk, 80                     ; 2 uses
  %i.bgm = icmp ugt i64 %i.bgl, 29360127
  br i1 %i.bgm, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.bgf, i64 8
  %i.bgo = load i8, ptr %i.bgn, align 8, !range !34, !noundef !35
  %i.bgp = trunc nuw i8 %i.bgo to i1
  invoke void @_ZN6embree7os_freeEPvmb(ptr noundef nonnull %i.bgi, i64 noundef %i.bgl, i1 noundef zeroext %i.bgp)
          to label %.noexc422 unwind label %bb.ga

bb.fy:                                            ; preds = %bb.fw
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.bgi)
          to label %.noexc422 unwind label %bb.ga

.noexc422:                                        ; preds = %bb.fy, %bb.fx, %.preheader
  %.not9.i = icmp eq i64 %i.bgk, 0
  br i1 %.not9.i, label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i, label %bb.fz

bb.fz:                                            ; preds = %.noexc422
  %i.bgq = load ptr, ptr %i.bgf, align 8          ; 2 uses
  %i.bgr = mul i64 %i.bgk, -80
  %i.bgs = load ptr, ptr %i.bgq, align 8
  %i.bgt = load ptr, ptr %i.bgs, align 8
  invoke void %i.bgt(ptr noundef nonnull align 8 dereferenceable(8) %i.bgq, i64 noundef %i.bgr, i1 noundef zeroext true)
          to label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i unwind label %bb.ga, !inline_history !0

bb.ga:                                            ; preds = %bb.fz, %bb.fy, %bb.fx
  %i.bgu = landingpad { ptr, i32 }
          catch ptr null
  %i.bgv = extractvalue { ptr, i32 } %i.bgu, 0
  call void @__clang_call_terminate(ptr %i.bgv) #29
  unreachable

_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i: ; preds = %bb.fz, %.noexc422
  call void @_ZdlPv(ptr noundef nonnull %i.bgf) #26
  br label %_ZN6embree4sse212SharedVectorINS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS3_Lm16EEEEEE6decRefEv.exit

_ZN6embree4sse212SharedVectorINS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS3_Lm16EEEEEE6decRefEv.exit: ; preds = %.lr.ph1349, %bb.fv, %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i
  %i.bgw = add nuw i64 %.0.i2131347, 1            ; 2 uses
  %i.bgx = load i64, ptr %i.dd, align 16
  %i.bgy = icmp ult i64 %i.bgw, %i.bgx
  br i1 %i.bgy, label %.lr.ph1349, label %_ZN6embree4sse215LocalChildListTINS0_21BVHBuilderHairMSMBlur11BuildRecordELi8EED2Ev.exit214, !llvm.loop !4

_ZN6embree4sse215LocalChildListTINS0_21BVHBuilderHairMSMBlur11BuildRecordELi8EED2Ev.exit214: ; preds = %_ZN6embree4sse212SharedVectorINS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS3_Lm16EEEEEE6decRefEv.exit, %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #11
  br label %bb.gh

.body254:                                         ; preds = %bb.dt, %bb.dr, %.body.i261, %bb.ca, %.body.i243, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit508, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit, %bb.cd, %bb.ck, %bb.au, %.body
  %.pn130.pn.pn = phi { ptr, i32 } [ %.pn114, %.body ], [ %i.aqa, %bb.dt ], [ %i.ud, %bb.cd ], [ %i.ni, %bb.au ], [ %i.akk, %bb.dr ], [ %lpad.phi, %bb.ck ], [ %eh.lpad-body.i244, %.body.i243 ], [ %.pn.i287, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit ], [ %.pn.i379, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit508 ], [ %eh.lpad-body.i262, %.body.i261 ], [ %i.tm, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  %i.bgz = load i64, ptr %i.dd, align 16
  %.not1359 = icmp eq i64 %i.bgz, 0
  br i1 %.not1359, label %_ZN6embree4sse215LocalChildListTINS0_21BVHBuilderHairMSMBlur11BuildRecordELi8EED2Ev.exit, label %.lr.ph1346

.lr.ph1346:                                       ; preds = %.body254, %_ZN6embree4sse212SharedVectorINS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS3_Lm16EEEEEE6decRefEv.exit235
  %.0.i2121345 = phi i64 [ %i.bhx, %_ZN6embree4sse212SharedVectorINS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS3_Lm16EEEEEE6decRefEv.exit235 ], [ 0, %.body254 ] ; 2 uses
  %i.bha = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.0.i2121345
  %i.bhb = load ptr, ptr %i.bha, align 8          ; 2 uses
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.bhb, i64 8 ; 2 uses
  %i.bhd = load i64, ptr %i.bhc, align 8
  %i.bhe = add i64 %i.bhd, -1                     ; 2 uses
  store i64 %i.bhe, ptr %i.bhc, align 8
  %i.bhf = icmp eq i64 %i.bhe, 0
  br i1 %i.bhf, label %bb.gb, label %_ZN6embree4sse212SharedVectorINS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS3_Lm16EEEEEE6decRefEv.exit235

bb.gb:                                            ; preds = %.lr.ph1346
  %i.bhg = load ptr, ptr %i.bhb, align 8          ; 6 uses
  %i.bhh = icmp eq ptr %i.bhg, null
  br i1 %i.bhh, label %_ZN6embree4sse212SharedVectorINS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS3_Lm16EEEEEE6decRefEv.exit235, label %.preheader1263

.preheader1263:                                   ; preds = %bb.gb
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bhg, i64 32
  %i.bhj = load ptr, ptr %i.bhi, align 8          ; 3 uses
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.bhg, i64 24
  %i.bhl = load i64, ptr %i.bhk, align 8          ; 3 uses
  %.not.i425 = icmp eq ptr %i.bhj, null
  br i1 %.not.i425, label %.noexc427, label %bb.gc

bb.gc:                                            ; preds = %.preheader1263
  %i.bhm = mul i64 %i.bhl, 80                     ; 2 uses
  %i.bhn = icmp ugt i64 %i.bhm, 29360127
  br i1 %i.bhn, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %i.bho = getelementptr inbounds nuw i8, ptr %i.bhg, i64 8
  %i.bhp = load i8, ptr %i.bho, align 8, !range !34, !noundef !35
  %i.bhq = trunc nuw i8 %i.bhp to i1
  invoke void @_ZN6embree7os_freeEPvmb(ptr noundef nonnull %i.bhj, i64 noundef %i.bhm, i1 noundef zeroext %i.bhq)
          to label %.noexc427 unwind label %bb.gg

bb.ge:                                            ; preds = %bb.gc
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.bhj)
          to label %.noexc427 unwind label %bb.gg

.noexc427:                                        ; preds = %bb.ge, %bb.gd, %.preheader1263
  %.not9.i426 = icmp eq i64 %i.bhl, 0
  br i1 %.not9.i426, label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i234, label %bb.gf

bb.gf:                                            ; preds = %.noexc427
  %i.bhr = load ptr, ptr %i.bhg, align 8          ; 2 uses
  %i.bhs = mul i64 %i.bhl, -80
  %i.bht = load ptr, ptr %i.bhr, align 8
  %i.bhu = load ptr, ptr %i.bht, align 8
  invoke void %i.bhu(ptr noundef nonnull align 8 dereferenceable(8) %i.bhr, i64 noundef %i.bhs, i1 noundef zeroext true)
          to label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i234 unwind label %bb.gg, !inline_history !0

bb.gg:                                            ; preds = %bb.gf, %bb.ge, %bb.gd
  %i.bhv = landingpad { ptr, i32 }
          catch ptr null
  %i.bhw = extractvalue { ptr, i32 } %i.bhv, 0
  call void @__clang_call_terminate(ptr %i.bhw) #29
  unreachable

_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i234: ; preds = %bb.gf, %.noexc427
  call void @_ZdlPv(ptr noundef nonnull %i.bhg) #26
  br label %_ZN6embree4sse212SharedVectorINS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS3_Lm16EEEEEE6decRefEv.exit235

_ZN6embree4sse212SharedVectorINS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS3_Lm16EEEEEE6decRefEv.exit235: ; preds = %.lr.ph1346, %bb.gb, %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i234
  %i.bhx = add nuw i64 %.0.i2121345, 1            ; 2 uses
  %i.bhy = load i64, ptr %i.dd, align 16
  %i.bhz = icmp ult i64 %i.bhx, %i.bhy
  br i1 %i.bhz, label %.lr.ph1346, label %_ZN6embree4sse215LocalChildListTINS0_21BVHBuilderHairMSMBlur11BuildRecordELi8EED2Ev.exit, !llvm.loop !4

_ZN6embree4sse215LocalChildListTINS0_21BVHBuilderHairMSMBlur11BuildRecordELi8EED2Ev.exit: ; preds = %_ZN6embree4sse212SharedVectorINS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS3_Lm16EEEEEE6decRefEv.exit235, %.body254
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #11
  br label %common.resume

bb.gh:                                            ; preds = %_ZN6embree4sse215LocalChildListTINS0_21BVHBuilderHairMSMBlur11BuildRecordELi8EED2Ev.exit214, %_ZNK6embree5SetMB19deterministic_orderEv.exit
  ret void
}

; Function Attrs: nounwind
declare void @llvm.x86.sse2.mfence() #11

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6embree5SetMB19deterministic_orderEv(ptr noundef nonnull align 16 dereferenceable(152) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i64, ptr %i.a, align 16             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %.not.i.i = icmp samesign eq i64 %i.b, %i.d
  br i1 %.not.i.i, label %_ZSt4sortIPN6embree9PrimRefMBEEvT_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = load ptr, ptr %i.e, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 80                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx ; 2 uses
  %.idx3 = mul nuw nsw i64 %i.b, 80               ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx3 ; 2 uses
  %gepdiff = sub nsw i64 %.idx, %.idx3
  %i.k = sdiv exact i64 %gepdiff, 80
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = shl nuw nsw i64 %i.l, 1
  %i.n = xor i64 %i.m, 126
  tail call void @_ZSt16__introsort_loopIPN6embree9PrimRefMBElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_(ptr noundef %i.j, ptr noundef %i.i, i64 noundef %i.n)
  tail call void @_ZSt22__final_insertion_sortIPN6embree9PrimRefMBEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_(ptr noundef %i.j, ptr noundef %i.i)
  br label %_ZSt4sortIPN6embree9PrimRefMBEEvT_S3_.exit

_ZSt4sortIPN6embree9PrimRefMBEEvT_S3_.exit:       ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15createLargeLeafERNS1_11BuildRecordEST_(ptr dead_on_unwind noalias writable sret(%"struct.embree::BVHNodeRecordMB4D") align 16 %0, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 16 dereferenceable(176) %2, ptr noundef byval(%"struct.embree::FastAllocator::CachedAllocator") align 8 %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.embree::BBox.29", align 8  ; 4 uses
  %5 = alloca %"struct.embree::LBBox", align 16   ; 7 uses
  %6 = alloca %"struct.embree::range", align 8    ; 5 uses
  %7 = alloca %"class.embree::Lock", align 8      ; 6 uses
  %8 = alloca %"class.embree::Lock", align 8      ; 7 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %9 = alloca %"class.embree::Lock", align 8      ; 6 uses
  %10 = alloca %"class.embree::Lock", align 8     ; 7 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  %11 = alloca %class.anon.239, align 8           ; 6 uses
  %12 = alloca %"struct.embree::LBBox", align 16  ; 7 uses
  %13 = alloca %class.anon.240, align 1           ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::allocator.22", align 1 ; 5 uses
  %16 = alloca %"struct.embree::sse2::LocalChildListT", align 16 ; 31 uses
  %17 = alloca [8 x %"struct.embree::BVHNodeRecordMB4D"], align 16 ; 6 uses
  %18 = alloca %"struct.embree::sse2::BVHBuilderHairMSMBlur::BuildRecord", align 16 ; 19 uses
  %19 = alloca %"struct.embree::sse2::BVHBuilderHairMSMBlur::BuildRecord", align 16 ; 19 uses
  %20 = alloca %"struct.embree::BVHNodeRecordMB4D", align 16 ; 10 uses
  %21 = alloca %"struct.embree::LBBox", align 16  ; 13 uses
  %i.e = load i64, ptr %2, align 16               ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 48) #11 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6embree12rtcore_errorE, i64 16), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %.body

_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN6embree12rtcore_errorE, ptr nonnull @_ZN6embree12rtcore_errorD2Ev) #27
          to label %bb.dd unwind label %.body.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.body:                                            ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %i.i) #11
  %i.n = load ptr, ptr %14, align 8               ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.n) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.body.thread:                                     ; preds = %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %14, align 8               ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread471, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread471: ; preds = %.body.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  br label %bb.dc

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body.thread
  call void @_ZdlPv(ptr noundef %i.r) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  br label %bb.dc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %.pn104464 = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread ], [ %i.m, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  call void @__cxa_free_exception(ptr %i.i) #11
  br label %bb.dc

bb.d:                                             ; preds = %bb.a
  %i.u = icmp eq i64 %i.e, 1
  br i1 %i.u, label %bb.e, label %._crit_edge603

._crit_edge603:                                   ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 120
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert604 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %.pre605 = load i64, ptr %.phi.trans.insert604, align 16
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.x = load i64, ptr %i.w, align 8              ; 8 uses
  %i.y = load i64, ptr %i.v, align 16             ; 8 uses
  %.not91 = icmp eq i64 %i.x, %i.y
  br i1 %.not91, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 152
  %.sroa.038.0.copyload = load float, ptr %i.z, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 156
  %.sroa.439.0.copyload = load float, ptr %.sroa.439.0..sroa_idx, align 4
  %i.aa = icmp ult i64 %i.y, %i.x
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.ac = load ptr, ptr %i.ab, align 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.af = sub nuw i64 %i.x, %i.y
  %.neg = add i64 %i.y, 1
  %xtraiter = and i64 %i.af, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw [80 x i8], ptr %i.ae, i64 %i.y ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.ai = load float, ptr %i.ah, align 4          ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 68
  %i.ak = load float, ptr %i.aj, align 4          ; 2 uses
  %i.al = fcmp ogt float %i.ak, -inf
  %i.am = select i1 %i.al, float %i.ak, float -inf ; 2 uses
  %i.an = add nuw i64 %i.y, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.lcssa830.unr = phi float [ poison, %.lr.ph ], [ %i.ai, %.prol.loopexit.unr-lcssa ]
  %.lcssa829.unr = phi float [ poison, %.lr.ph ], [ %i.am, %.prol.loopexit.unr-lcssa ]
  %.087522.unr = phi i64 [ %i.y, %.lr.ph ], [ %i.an, %.prol.loopexit.unr-lcssa ]
  %.sroa.0288.0521.unr = phi float [ +inf, %.lr.ph ], [ %i.ai, %.prol.loopexit.unr-lcssa ]
  %.sroa.6.0520.unr = phi float [ -inf, %.lr.ph ], [ %i.am, %.prol.loopexit.unr-lcssa ]
  %i.ao = icmp eq i64 %i.x, %.neg
  br i1 %i.ao, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.f
  %.sroa.6.0.lcssa = phi float [ -inf, %bb.f ], [ %.lcssa829.unr, %.prol.loopexit ], [ %i.bj, %.lr.ph.new ]
  %.sroa.0288.0.lcssa = phi float [ +inf, %bb.f ], [ %.lcssa830.unr, %.prol.loopexit ], [ %i.bf, %.lr.ph.new ]
  %i.ap = fcmp ogt float %.sroa.0288.0.lcssa, %.sroa.038.0.copyload
  %i.aq = fcmp olt float %.sroa.6.0.lcssa, %.sroa.439.0.copyload
  %i.ar = select i1 %i.ap, i1 true, i1 %i.aq
  br label %bb.g

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.087522 = phi i64 [ %i.bk, %.lr.ph.new ], [ %.087522.unr, %.prol.loopexit ] ; 3 uses
  %.sroa.0288.0521 = phi float [ %i.bf, %.lr.ph.new ], [ %.sroa.0288.0521.unr, %.prol.loopexit ] ; 2 uses
  %.sroa.6.0520 = phi float [ %i.bj, %.lr.ph.new ], [ %.sroa.6.0520.unr, %.prol.loopexit ] ; 2 uses
  %i.as = getelementptr inbounds nuw [80 x i8], ptr %i.ae, i64 %.087522 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.au = load float, ptr %i.at, align 4          ; 2 uses
  %i.av = fcmp olt float %.sroa.0288.0521, %i.au
  %i.aw = select i1 %i.av, float %.sroa.0288.0521, float %i.au ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 68
  %i.ay = load float, ptr %i.ax, align 4          ; 2 uses
  %i.az = fcmp olt float %.sroa.6.0520, %i.ay
  %i.ba = select i1 %i.az, float %i.ay, float %.sroa.6.0520 ; 2 uses
  %i.bb = getelementptr inbounds nuw [80 x i8], ptr %i.ae, i64 %.087522 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 144
  %i.bd = load float, ptr %i.bc, align 4          ; 2 uses
  %i.be = fcmp olt float %i.aw, %i.bd
  %i.bf = select i1 %i.be, float %i.aw, float %i.bd ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 148
  %i.bh = load float, ptr %i.bg, align 4          ; 2 uses
  %i.bi = fcmp olt float %i.ba, %i.bh
  %i.bj = select i1 %i.bi, float %i.bh, float %i.ba ; 2 uses
  %i.bk = add nuw i64 %.087522, 2                 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bk, %i.x
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.new, !llvm.loop !305

bb.g:                                             ; preds = %._crit_edge603, %._crit_edge, %bb.e
  %i.bl = phi i64 [ %i.y, %._crit_edge ], [ %i.x, %bb.e ], [ %.pre605, %._crit_edge603 ] ; 3 uses
  %i.bm = phi i64 [ %i.x, %._crit_edge ], [ %i.x, %bb.e ], [ %.pre, %._crit_edge603 ] ; 3 uses
  %.075 = phi i1 [ %i.ar, %._crit_edge ], [ false, %bb.e ], [ false, %._crit_edge603 ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bq = sub i64 %i.bm, %i.bl
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8
  %.not92 = icmp ugt i64 %i.bq, %i.bs
  %.phi.trans.insert606 = getelementptr inbounds nuw i8, ptr %2, i64 160
  %.pre607 = load ptr, ptr %.phi.trans.insert606, align 16 ; 3 uses
  br i1 %.not92, label %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit152.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %.pre607, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.bv = getelementptr inbounds nuw [80 x i8], ptr %i.bu, i64 %i.bl
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %i.bx = load i32, ptr %i.bw, align 4
  %.011.i149778 = add i64 %i.bl, 1                ; 2 uses
  %.not13.i150.not779 = icmp ult i64 %.011.i149778, %i.bm
  br i1 %.not13.i150.not779, label %.lr.ph782, label %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit152

bb.i:                                             ; preds = %.lr.ph782
  %.011.i149 = add i64 %.011.i149780, 1           ; 2 uses
  %.not13.i150.not = icmp ult i64 %.011.i149, %i.bm
  br i1 %.not13.i150.not, label %.lr.ph782, label %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit152, !llvm.loop !306

.lr.ph782:                                        ; preds = %bb.h, %bb.i
  %.011.i149780 = phi i64 [ %.011.i149, %bb.i ], [ %.011.i149778, %bb.h ] ; 2 uses
  %i.by = getelementptr inbounds nuw [80 x i8], ptr %i.bu, i64 %.011.i149780
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  %i.ca = load i32, ptr %i.bz, align 4
  %.not.i151 = icmp eq i32 %i.ca, %i.bx
  br i1 %.not.i151, label %bb.i, label %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit152.thread, !llvm.loop !306

_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit152: ; preds = %bb.i, %bb.h
  br i1 %.075, label %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit152.thread, label %bb.j

bb.j:                                             ; preds = %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit152
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !35, !align !37
  call void @_ZZN6embree4sse223BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvENKUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_clESB_SF_(ptr dead_on_unwind writable sret(%"struct.embree::BVHNodeRecordMB4D") align 16 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef nonnull align 16 dereferenceable(152) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %bb.db

_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit152.thread: ; preds = %.lr.ph782, %bb.g, %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit152
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #11
  %i.cd = getelementptr inbounds nuw i8, ptr %16, i64 1472 ; 12 uses
  store i64 1, ptr %i.cd, align 16
  %i.ce = getelementptr inbounds nuw i8, ptr %16, i64 1480 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %16, i64 1736 ; 5 uses
  store i64 1, ptr %i.cf, align 8
  store i64 %i.e, ptr %16, align 16
  %i.cg = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ch = load <4 x float>, ptr %i.bn, align 16
  store <4 x float> %i.ch, ptr %i.cg, align 16
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cj = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.ck = load <4 x float>, ptr %i.ci, align 16
  store <4 x float> %i.ck, ptr %i.cj, align 16
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cm = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.cn = load <4 x float>, ptr %i.cl, align 16
  store <4 x float> %i.cn, ptr %i.cm, align 16
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.cp = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.cq = load <4 x float>, ptr %i.co, align 16
  store <4 x float> %i.cq, ptr %i.cp, align 16
  %i.cr = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ct = load <4 x float>, ptr %i.cs, align 16
  store <4 x float> %i.ct, ptr %i.cr, align 16
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.cv = getelementptr inbounds nuw i8, ptr %16, i64 96
  %i.cw = load <4 x float>, ptr %i.cu, align 16
  store <4 x float> %i.cw, ptr %i.cv, align 16
  %i.cx = getelementptr inbounds nuw i8, ptr %16, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.cx, ptr noundef nonnull align 16 dereferenceable(32) %i.bo, i64 32, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %16, i64 144
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 156
  %i.dc = load <4 x float>, ptr %i.cz, align 16
  store <4 x float> %i.dc, ptr %i.cy, align 16
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.de = getelementptr inbounds nuw i8, ptr %16, i64 160
  store ptr %.pre607, ptr %i.de, align 16
  store ptr %.pre607, ptr %i.ce, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %16, i64 1488
  store i64 2, ptr %i.df, align 16
  %i.dg = getelementptr inbounds nuw i8, ptr %16, i64 1408 ; 6 uses
  store ptr %i.ce, ptr %i.dg, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #11
  %i.dh = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %18, i64 48 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %18, i64 80 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %19, i64 48 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %19, i64 80 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %18, i64 64 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %18, i64 96 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %18, i64 112 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %18, i64 120
  %i.ds = getelementptr inbounds nuw i8, ptr %18, i64 128
  %.sroa.3646.112..sroa_idx.i = getelementptr inbounds nuw i8, ptr %18, i64 136
  %.sroa.3947.112..sroa_idx.i = getelementptr inbounds nuw i8, ptr %18, i64 144 ; 2 uses
  %.sroa.4349.112..sroa_idx.i = getelementptr inbounds nuw i8, ptr %18, i64 152
  %.sroa.4650.112..sroa_idx.i = getelementptr inbounds nuw i8, ptr %18, i64 156
  %i.dt = getelementptr inbounds nuw i8, ptr %18, i64 160 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %19, i64 64 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %19, i64 96 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %19, i64 112 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %19, i64 120
  %i.dz = getelementptr inbounds nuw i8, ptr %19, i64 128
  %.sroa.36.112..sroa_idx.i = getelementptr inbounds nuw i8, ptr %19, i64 136
  %.sroa.39.112..sroa_idx.i = getelementptr inbounds nuw i8, ptr %19, i64 144 ; 2 uses
  %.sroa.43.112..sroa_idx.i = getelementptr inbounds nuw i8, ptr %19, i64 152
  %.sroa.46.112..sroa_idx.i = getelementptr inbounds nuw i8, ptr %19, i64 156
  %i.ea = getelementptr inbounds nuw i8, ptr %19, i64 160 ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit152.thread, %bb.af
  %i.eb = phi i64 [ %i.mo, %bb.af ], [ 1, %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit152.thread ] ; 3 uses
  %.176 = phi i1 [ false, %bb.af ], [ %.075, %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit152.thread ]
  %.not560 = icmp eq i64 %i.eb, 0
  br i1 %.not560, label %._crit_edge537.thread, label %.lr.ph529

.lr.ph529:                                        ; preds = %bb.k
  %i.ec = load i64, ptr %i.br, align 8
  br label %bb.l

._crit_edge530:                                   ; preds = %bb.o
  %i.ed = icmp eq i32 %.185, -1
  br i1 %i.ed, label %bb.ag, label %bb.p

bb.l:                                             ; preds = %.lr.ph529, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph529 ], [ %indvars.iv.next, %bb.o ] ; 4 uses
  %.277527 = phi i1 [ %.176, %.lr.ph529 ], [ false, %bb.o ]
  %.082525 = phi i64 [ 0, %.lr.ph529 ], [ %.183, %bb.o ] ; 4 uses
  %.084524 = phi i32 [ -1, %.lr.ph529 ], [ %.185, %bb.o ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [176 x i8], ptr %16, i64 %indvars.iv ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 112
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 120
  %i.eh = load i64, ptr %i.eg, align 8            ; 3 uses
  %i.ei = load i64, ptr %i.ef, align 16           ; 3 uses
  %i.ej = sub i64 %i.eh, %i.ei                    ; 4 uses
  %.not100 = icmp ugt i64 %i.ej, %i.ec
  br i1 %.not100, label %_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit115, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 160
  %i.el = load ptr, ptr %i.ek, align 16
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %i.en = load ptr, ptr %i.em, align 8            ; 2 uses
  %i.eo = getelementptr inbounds nuw [80 x i8], ptr %i.en, i64 %i.ei
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  %i.eq = load i32, ptr %i.ep, align 4
  %.011.i141783 = add i64 %i.ei, 1                ; 2 uses
  %.not13.i.not784 = icmp ult i64 %.011.i141783, %i.eh
  br i1 %.not13.i.not784, label %.lr.ph787, label %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit

bb.n:                                             ; preds = %.lr.ph787
  %.011.i141 = add i64 %.011.i141785, 1           ; 2 uses
  %.not13.i.not = icmp ult i64 %.011.i141, %i.eh
  br i1 %.not13.i.not, label %.lr.ph787, label %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit, !llvm.loop !306

.lr.ph787:                                        ; preds = %bb.m, %bb.n
  %.011.i141785 = phi i64 [ %.011.i141, %bb.n ], [ %.011.i141783, %bb.m ] ; 2 uses
  %i.er = getelementptr inbounds nuw [80 x i8], ptr %i.en, i64 %.011.i141785
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  %i.et = load i32, ptr %i.es, align 4
  %.not.i142 = icmp eq i32 %i.et, %i.eq
  br i1 %.not.i142, label %bb.n, label %_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit115, !llvm.loop !306

_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit: ; preds = %bb.n, %bb.m
  %i.eu = icmp ugt i64 %i.ej, %.082525
  %or.cond = select i1 %.277527, i1 %i.eu, i1 false
  br i1 %or.cond, label %_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit, label %bb.o

_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit115: ; preds = %.lr.ph787, %bb.l
  %.old = icmp ugt i64 %i.ej, %.082525
  br i1 %.old, label %_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit, label %bb.o

_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit: ; preds = %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit, %_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit115
  %i.ev = trunc nuw i64 %indvars.iv to i32
  br label %bb.o

bb.o:                                             ; preds = %_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit, %_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit115, %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit
  %.185 = phi i32 [ %.084524, %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit ], [ %.084524, %_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit115 ], [ %i.ev, %_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit ] ; 3 uses
  %.183 = phi i64 [ %.082525, %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit ], [ %.082525, %_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit115 ], [ %i.ej, %_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit ]
  %i.ew = add i64 %indvars.iv, 1
  %22 = and i64 %i.ew, 4294967295
  %i.ex = icmp ugt i64 %i.eb, %22
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %i.ex, label %bb.l, label %._crit_edge530, !llvm.loop !307

bb.p:                                             ; preds = %._crit_edge530
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #11
  %i.ey = load i64, ptr %2, align 16
  %i.ez = add i64 %i.ey, 1                        ; 2 uses
  store i64 %i.ez, ptr %18, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #11
  store i64 %i.ez, ptr %19, align 16
  %i.fa = sext i32 %.185 to i64                   ; 2 uses
  %i.fb = getelementptr inbounds nuw [176 x i8], ptr %16, i64 %i.fa ; 12 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 160 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 16           ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 112 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 16           ; 6 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  %i.fi = load ptr, ptr %i.fh, align 8            ; 4 uses
  %i.fj = getelementptr inbounds nuw [80 x i8], ptr %i.fi, i64 %i.fg
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  %i.fl = load i32, ptr %i.fk, align 4
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fb, i64 120
  %i.fn = load i64, ptr %i.fm, align 8            ; 6 uses
  %.011.i144788 = add i64 %i.fg, 1                ; 2 uses
  %.not13.i145.not789 = icmp ult i64 %.011.i144788, %i.fn
  br i1 %.not13.i145.not789, label %.lr.ph792, label %._crit_edge793

bb.q:                                             ; preds = %.lr.ph792
  %.011.i144 = add i64 %.011.i144790, 1           ; 2 uses
  %.not13.i145.not = icmp ult i64 %.011.i144, %i.fn
  br i1 %.not13.i145.not, label %.lr.ph792, label %._crit_edge793, !llvm.loop !306

.lr.ph792:                                        ; preds = %bb.p, %bb.q
  %.011.i144790 = phi i64 [ %.011.i144, %bb.q ], [ %.011.i144788, %bb.p ] ; 2 uses
  %i.fo = getelementptr inbounds nuw [80 x i8], ptr %i.fi, i64 %.011.i144790
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  %i.fq = load i32, ptr %i.fp, align 4
  %.not.i146 = icmp eq i32 %i.fq, %i.fl
  br i1 %.not.i146, label %bb.q, label %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit147, !llvm.loop !306

_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit147: ; preds = %.lr.ph792
  invoke void @_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.fc, ptr noundef nonnull align 16 dereferenceable(152) %i.dh, ptr noundef nonnull align 16 dereferenceable(152) %i.dk)
          to label %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit147._crit_edge unwind label %bb.r

_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit147._crit_edge: ; preds = %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit147
  %.pre608 = load ptr, ptr %i.dt, align 16
  br label %bb.s

bb.r:                                             ; preds = %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit147
  %i.fr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  br label %.body163

._crit_edge793:                                   ; preds = %bb.q, %bb.p
  %i.fs = add i64 %i.fn, %i.fg
  %i.ft = lshr i64 %i.fs, 1                       ; 6 uses
  %i.fu = icmp ult i64 %i.fg, %i.ft
  br i1 %i.fu, label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i, %._crit_edge793
  %.sroa.4349.0.lcssa.i = phi float [ 1.000000e+00, %._crit_edge793 ], [ %i.gx, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ] ; 2 uses
  %.sroa.3646.0.lcssa.i = phi i64 [ 0, %._crit_edge793 ], [ %.sroa.3646.1.i, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ]
  %.sroa.3245.0.lcssa.i = phi i64 [ 0, %._crit_edge793 ], [ %i.hd, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ]
  %.sroa.2240.0.lcssa.i = phi <4 x float> [ splat (float -inf), %._crit_edge793 ], [ %i.gs, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ]
  %.sroa.1838.0.lcssa.i = phi <4 x float> [ splat (float +inf), %._crit_edge793 ], [ %i.gr, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ]
  %.sroa.1436.0.lcssa.i = phi <4 x float> [ splat (float -inf), %._crit_edge793 ], [ %i.gq, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ]
  %.sroa.1034.0.lcssa.i = phi <4 x float> [ splat (float +inf), %._crit_edge793 ], [ %i.gp, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ]
  %.sroa.632.0.lcssa.i = phi <4 x float> [ splat (float -inf), %._crit_edge793 ], [ %i.go, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ]
  %.sroa.030.0.lcssa.i = phi <4 x float> [ splat (float +inf), %._crit_edge793 ], [ %i.gn, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ]
  %.sroa.4650.0.lcssa.i = phi float [ 0.000000e+00, %._crit_edge793 ], [ %i.ha, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ] ; 2 uses
  %i.fv = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %._crit_edge793 ], [ %i.hj, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ]
  %i.fw = icmp ult i64 %i.ft, %i.fn
  br i1 %i.fw, label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i, label %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE13splitFallbackESR_RSP_S10_.exit

_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i: ; preds = %._crit_edge793, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i
  %.0153.i = phi i64 [ %i.hk, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ], [ %i.fg, %._crit_edge793 ] ; 2 uses
  %.sroa.4650.0152.i = phi float [ %i.ha, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ], [ 0.000000e+00, %._crit_edge793 ] ; 2 uses
  %.sroa.030.0151.i = phi <4 x float> [ %i.gn, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ], [ splat (float +inf), %._crit_edge793 ]
  %.sroa.632.0150.i = phi <4 x float> [ %i.go, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ], [ splat (float -inf), %._crit_edge793 ]
  %.sroa.1034.0149.i = phi <4 x float> [ %i.gp, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ], [ splat (float +inf), %._crit_edge793 ]
  %.sroa.1436.0148.i = phi <4 x float> [ %i.gq, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ], [ splat (float -inf), %._crit_edge793 ]
  %.sroa.1838.0147.i = phi <4 x float> [ %i.gr, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ], [ splat (float +inf), %._crit_edge793 ]
  %.sroa.2240.0146.i = phi <4 x float> [ %i.gs, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ], [ splat (float -inf), %._crit_edge793 ]
  %.sroa.3245.0144.i = phi i64 [ %i.hd, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ], [ 0, %._crit_edge793 ]
  %.sroa.3646.0143.i = phi i64 [ %.sroa.3646.1.i, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ], [ 0, %._crit_edge793 ] ; 2 uses
  %.sroa.4349.0140.i = phi float [ %i.gx, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ], [ 1.000000e+00, %._crit_edge793 ] ; 2 uses
  %i.fx = phi <2 x float> [ %i.hj, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ], [ <float 0.000000e+00, float 1.000000e+00>, %._crit_edge793 ]
  %i.fy = getelementptr inbounds nuw [80 x i8], ptr %i.fi, i64 %.0153.i ; 5 uses
  %i.fz = load <4 x float>, ptr %i.fy, align 16, !noalias !389 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.gb = load <4 x float>, ptr %i.ga, align 16, !noalias !390 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  %i.gd = load <4 x float>, ptr %i.gc, align 16, !noalias !391 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fy, i64 48
  %i.gf = load <4 x float>, ptr %i.ge, align 16, !noalias !392 ; 3 uses
  %i.gg = fmul <4 x float> %i.gd, splat (float 5.000000e-01)
  %i.gh = fmul <4 x float> %i.fz, splat (float 5.000000e-01)
  %i.gi = fadd <4 x float> %i.gh, %i.gg
  %i.gj = fmul <4 x float> %i.gf, splat (float 5.000000e-01)
  %i.gk = fmul <4 x float> %i.gb, splat (float 5.000000e-01)
  %i.gl = fadd <4 x float> %i.gk, %i.gj
  %i.gm = fadd <4 x float> %i.gi, %i.gl           ; 2 uses
  %i.gn = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.030.0151.i, <4 x float> %i.fz) ; 2 uses
  %i.go = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.632.0150.i, <4 x float> %i.gb) ; 2 uses
  %i.gp = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1034.0149.i, <4 x float> %i.gd) ; 2 uses
  %i.gq = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1436.0148.i, <4 x float> %i.gf) ; 2 uses
  %i.gr = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1838.0147.i, <4 x float> %i.gm) ; 2 uses
  %i.gs = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.2240.0146.i, <4 x float> %i.gm) ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fy, i64 64
  %i.gu = load <2 x float>, ptr %i.gt, align 16   ; 3 uses
  %i.gv = extractelement <2 x float> %i.gu, i64 0 ; 2 uses
  %i.gw = fcmp olt float %.sroa.4349.0140.i, %i.gv
  %i.gx = select i1 %i.gw, float %.sroa.4349.0140.i, float %i.gv ; 2 uses
  %i.gy = extractelement <2 x float> %i.gu, i64 1 ; 2 uses
  %i.gz = fcmp olt float %.sroa.4650.0152.i, %i.gy
  %i.ha = select i1 %i.gz, float %i.gy, float %.sroa.4650.0152.i ; 2 uses
  %bc.i = bitcast <4 x float> %i.gd to <4 x i32>
  %i.hb = extractelement <4 x i32> %bc.i, i64 3
  %i.hc = zext i32 %i.hb to i64
  %i.hd = add i64 %.sroa.3245.0144.i, %i.hc       ; 2 uses
  %bc215.i = bitcast <4 x float> %i.gf to <4 x i32>
  %i.he = extractelement <4 x i32> %bc215.i, i64 3
  %i.hf = zext i32 %i.he to i64                   ; 2 uses
  %i.hg = icmp samesign ult i64 %.sroa.3646.0143.i, %i.hf
  %i.hh = insertelement <2 x i1> poison, i1 %i.hg, i64 0
  %i.hi = shufflevector <2 x i1> %i.hh, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.hj = select <2 x i1> %i.hi, <2 x float> %i.gu, <2 x float> %i.fx ; 2 uses
  %.sroa.3646.1.i = call i64 @llvm.umax.i64(i64 %.sroa.3646.0143.i, i64 %i.hf) ; 2 uses
  %i.hk = add nuw nsw i64 %.0153.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.hk, %i.ft
  br i1 %exitcond.not.i, label %.preheader.i, label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i, !llvm.loop !5

_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i: ; preds = %.preheader.i, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i
  %.017179.i = phi i64 [ %i.iy, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ], [ %i.ft, %.preheader.i ] ; 2 uses
  %.sroa.022.0178.i = phi <4 x float> [ %i.ib, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ], [ splat (float +inf), %.preheader.i ]
  %.sroa.6.0177.i = phi <4 x float> [ %i.ic, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ], [ splat (float -inf), %.preheader.i ]
  %.sroa.10.0176.i = phi <4 x float> [ %i.id, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ], [ splat (float +inf), %.preheader.i ]
  %.sroa.14.0175.i = phi <4 x float> [ %i.ie, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ], [ splat (float -inf), %.preheader.i ]
  %.sroa.18.0174.i = phi <4 x float> [ %i.if, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ], [ splat (float +inf), %.preheader.i ]
  %.sroa.22.0173.i = phi <4 x float> [ %i.ig, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ], [ splat (float -inf), %.preheader.i ]
  %.sroa.32.0171.i = phi i64 [ %i.ir, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ], [ 0, %.preheader.i ]
  %.sroa.36.0170.i = phi i64 [ %.sroa.36.1.i, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ], [ 0, %.preheader.i ] ; 2 uses
  %.sroa.43.0167.i = phi float [ %i.il, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ], [ 1.000000e+00, %.preheader.i ] ; 2 uses
  %.sroa.46.0166.i = phi float [ %i.io, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ], [ 0.000000e+00, %.preheader.i ] ; 2 uses
  %i.hl = phi <2 x float> [ %i.ix, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ], [ <float 0.000000e+00, float 1.000000e+00>, %.preheader.i ]
  %i.hm = getelementptr inbounds nuw [80 x i8], ptr %i.fi, i64 %.017179.i ; 5 uses
  %i.hn = load <4 x float>, ptr %i.hm, align 16, !noalias !393 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.hp = load <4 x float>, ptr %i.ho, align 16, !noalias !394 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  %i.hr = load <4 x float>, ptr %i.hq, align 16, !noalias !395 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hm, i64 48
  %i.ht = load <4 x float>, ptr %i.hs, align 16, !noalias !396 ; 3 uses
  %i.hu = fmul <4 x float> %i.hr, splat (float 5.000000e-01)
  %i.hv = fmul <4 x float> %i.hn, splat (float 5.000000e-01)
  %i.hw = fadd <4 x float> %i.hv, %i.hu
  %i.hx = fmul <4 x float> %i.ht, splat (float 5.000000e-01)
  %i.hy = fmul <4 x float> %i.hp, splat (float 5.000000e-01)
  %i.hz = fadd <4 x float> %i.hy, %i.hx
  %i.ia = fadd <4 x float> %i.hw, %i.hz           ; 2 uses
  %i.ib = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.022.0178.i, <4 x float> %i.hn) ; 2 uses
  %i.ic = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6.0177.i, <4 x float> %i.hp) ; 2 uses
  %i.id = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.10.0176.i, <4 x float> %i.hr) ; 2 uses
  %i.ie = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.14.0175.i, <4 x float> %i.ht) ; 2 uses
  %i.if = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.18.0174.i, <4 x float> %i.ia) ; 2 uses
  %i.ig = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.22.0173.i, <4 x float> %i.ia) ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hm, i64 64
  %i.ii = load <2 x float>, ptr %i.ih, align 16   ; 3 uses
  %i.ij = extractelement <2 x float> %i.ii, i64 0 ; 2 uses
  %i.ik = fcmp olt float %.sroa.43.0167.i, %i.ij
  %i.il = select i1 %i.ik, float %.sroa.43.0167.i, float %i.ij ; 2 uses
  %i.im = extractelement <2 x float> %i.ii, i64 1 ; 2 uses
  %i.in = fcmp olt float %.sroa.46.0166.i, %i.im
  %i.io = select i1 %i.in, float %i.im, float %.sroa.46.0166.i ; 2 uses
  %bc216.i = bitcast <4 x float> %i.hr to <4 x i32>
  %i.ip = extractelement <4 x i32> %bc216.i, i64 3
  %i.iq = zext i32 %i.ip to i64
  %i.ir = add i64 %.sroa.32.0171.i, %i.iq         ; 2 uses
  %bc217.i = bitcast <4 x float> %i.ht to <4 x i32>
  %i.is = extractelement <4 x i32> %bc217.i, i64 3
  %i.it = zext i32 %i.is to i64                   ; 2 uses
  %i.iu = icmp samesign ult i64 %.sroa.36.0170.i, %i.it
  %i.iv = insertelement <2 x i1> poison, i1 %i.iu, i64 0
  %i.iw = shufflevector <2 x i1> %i.iv, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ix = select <2 x i1> %i.iw, <2 x float> %i.ii, <2 x float> %i.hl ; 2 uses
  %.sroa.36.1.i = call i64 @llvm.umax.i64(i64 %.sroa.36.0170.i, i64 %i.it) ; 2 uses
  %i.iy = add nuw i64 %.017179.i, 1               ; 2 uses
  %exitcond212.not.i = icmp eq i64 %i.iy, %i.fn
  br i1 %exitcond212.not.i, label %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE13splitFallbackESR_RSP_S10_.exit, label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i, !llvm.loop !6

_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE13splitFallbackESR_RSP_S10_.exit: ; preds = %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i, %.preheader.i
  %.sroa.46.0.lcssa.i = phi float [ 0.000000e+00, %.preheader.i ], [ %i.io, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ] ; 2 uses
  %.sroa.43.0.lcssa.i = phi float [ 1.000000e+00, %.preheader.i ], [ %i.il, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ] ; 2 uses
  %.sroa.36.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %.sroa.36.1.i, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %.sroa.32.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.ir, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %.sroa.22.0.lcssa.i = phi <4 x float> [ splat (float -inf), %.preheader.i ], [ %i.ig, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %.sroa.18.0.lcssa.i = phi <4 x float> [ splat (float +inf), %.preheader.i ], [ %i.if, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %.sroa.14.0.lcssa.i = phi <4 x float> [ splat (float -inf), %.preheader.i ], [ %i.ie, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %.sroa.10.0.lcssa.i = phi <4 x float> [ splat (float +inf), %.preheader.i ], [ %i.id, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %.sroa.6.0.lcssa.i = phi <4 x float> [ splat (float -inf), %.preheader.i ], [ %i.ic, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %.sroa.022.0.lcssa.i = phi <4 x float> [ splat (float +inf), %.preheader.i ], [ %i.ib, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %i.iz = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %.preheader.i ], [ %i.ix, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %i.ja = getelementptr inbounds nuw i8, ptr %i.fb, i64 152
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.ja, align 8 ; 2 uses
  store <4 x float> %.sroa.030.0.lcssa.i, ptr %i.dh, align 16
  store <4 x float> %.sroa.632.0.lcssa.i, ptr %i.dn, align 16
  store <4 x float> %.sroa.1034.0.lcssa.i, ptr %i.di, align 16
  store <4 x float> %.sroa.1436.0.lcssa.i, ptr %i.do, align 16
  store <4 x float> %.sroa.1838.0.lcssa.i, ptr %i.dj, align 16
  store <4 x float> %.sroa.2240.0.lcssa.i, ptr %i.dp, align 16
  store i64 %.sroa.3245.0.lcssa.i, ptr %i.ds, align 16
  store i64 %.sroa.3646.0.lcssa.i, ptr %.sroa.3646.112..sroa_idx.i, align 8
  store <2 x float> %i.fv, ptr %.sroa.3947.112..sroa_idx.i, align 16
  store ptr %i.fe, ptr %i.dt, align 16
  store i64 %i.fg, ptr %i.dq, align 16
  store i64 %i.ft, ptr %i.dr, align 8
  %.sroa.073.0.vec.extract.i = extractelement <2 x float> %.sroa.01.0.copyload.i, i64 0 ; 4 uses
  %i.jb = fcmp olt float %.sroa.4349.0.lcssa.i, %.sroa.073.0.vec.extract.i
  %i.jc = select i1 %i.jb, float %.sroa.073.0.vec.extract.i, float %.sroa.4349.0.lcssa.i
  %.sroa.073.4.vec.extract.i = extractelement <2 x float> %.sroa.01.0.copyload.i, i64 1 ; 4 uses
  %i.jd = fcmp olt float %.sroa.4650.0.lcssa.i, %.sroa.073.4.vec.extract.i
  %i.je = select i1 %i.jd, float %.sroa.4650.0.lcssa.i, float %.sroa.073.4.vec.extract.i
  store float %i.jc, ptr %.sroa.4349.112..sroa_idx.i, align 8
  store float %i.je, ptr %.sroa.4650.112..sroa_idx.i, align 4
  store <4 x float> %.sroa.022.0.lcssa.i, ptr %i.dk, align 16
  store <4 x float> %.sroa.6.0.lcssa.i, ptr %i.du, align 16
  store <4 x float> %.sroa.10.0.lcssa.i, ptr %i.dl, align 16
  store <4 x float> %.sroa.14.0.lcssa.i, ptr %i.dv, align 16
  store <4 x float> %.sroa.18.0.lcssa.i, ptr %i.dm, align 16
  store <4 x float> %.sroa.22.0.lcssa.i, ptr %i.dw, align 16
  store i64 %.sroa.32.0.lcssa.i, ptr %i.dz, align 16
  store i64 %.sroa.36.0.lcssa.i, ptr %.sroa.36.112..sroa_idx.i, align 8
  store <2 x float> %i.iz, ptr %.sroa.39.112..sroa_idx.i, align 16
  store ptr %i.fe, ptr %i.ea, align 16
  store i64 %i.ft, ptr %i.dx, align 16
  store i64 %i.fn, ptr %i.dy, align 8
  %i.jf = fcmp olt float %.sroa.43.0.lcssa.i, %.sroa.073.0.vec.extract.i
  %i.jg = select i1 %i.jf, float %.sroa.073.0.vec.extract.i, float %.sroa.43.0.lcssa.i
  %i.jh = fcmp olt float %.sroa.46.0.lcssa.i, %.sroa.073.4.vec.extract.i
  %i.ji = select i1 %i.jh, float %.sroa.46.0.lcssa.i, float %.sroa.073.4.vec.extract.i
  store float %i.jg, ptr %.sroa.43.112..sroa_idx.i, align 8
  store float %i.ji, ptr %.sroa.46.112..sroa_idx.i, align 4
  br label %bb.s

bb.s:                                             ; preds = %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit147._crit_edge, %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE13splitFallbackESR_RSP_S10_.exit
  %i.jj = phi ptr [ %.pre608, %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit147._crit_edge ], [ %i.fe, %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE13splitFallbackESR_RSP_S10_.exit ] ; 3 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.fa ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8            ; 8 uses
  %i.jm = load ptr, ptr %i.jl, align 8
  %i.jn = icmp eq ptr %i.jj, %i.jm
  br i1 %i.jn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 8 ; 2 uses
  %i.jp = load i64, ptr %i.jo, align 8
  %i.jq = add i64 %i.jp, 1
  store i64 %i.jq, ptr %i.jo, align 8
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.jr = load i64, ptr %i.cf, align 8            ; 2 uses
  %i.js = add i64 %i.jr, 1
  store i64 %i.js, ptr %i.cf, align 8
  %i.jt = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.jr ; 3 uses
  store ptr %i.jj, ptr %i.jt, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  store i64 1, ptr %i.ju, align 16
  store ptr %i.jt, ptr %i.jk, align 8
  %.pre609 = load ptr, ptr %i.jl, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.jv = phi ptr [ %.pre609, %bb.u ], [ %i.jj, %bb.t ]
  %i.jw = load ptr, ptr %i.ea, align 16           ; 2 uses
  %i.jx = icmp eq ptr %i.jw, %i.jv
  br i1 %i.jx, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.jy = load i64, ptr %i.cd, align 16
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.jy
  store ptr %i.jl, ptr %i.jz, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jl, i64 8 ; 2 uses
  %i.kb = load i64, ptr %i.ka, align 8            ; 2 uses
  %i.kc = add i64 %i.kb, 1
  store i64 %i.kc, ptr %i.ka, align 8
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.kd = load i64, ptr %i.cf, align 8            ; 2 uses
  %i.ke = add i64 %i.kd, 1
  store i64 %i.ke, ptr %i.cf, align 8
  %i.kf = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.kd ; 3 uses
  store ptr %i.jw, ptr %i.kf, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  store i64 1, ptr %i.kg, align 16
  %i.kh = load i64, ptr %i.cd, align 16
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.kh
  store ptr %i.kf, ptr %i.ki, align 8
  %.phi.trans.insert610 = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %.pre611 = load i64, ptr %.phi.trans.insert610, align 8
  %i.kj = add i64 %.pre611, -1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.kk = phi i64 [ %i.kj, %bb.x ], [ %i.kb, %bb.w ] ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  store i64 %i.kk, ptr %i.kl, align 8
  %i.km = icmp eq i64 %i.kk, 0
  br i1 %i.km, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  %i.kn = load ptr, ptr %i.jl, align 8            ; 6 uses
  %i.ko = icmp eq ptr %i.kn, null
  br i1 %i.ko, label %bb.af, label %.preheader488

.preheader488:                                    ; preds = %bb.z
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 32
  %i.kq = load ptr, ptr %i.kp, align 8            ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.ks = load i64, ptr %i.kr, align 8            ; 3 uses
  %.not.i233 = icmp eq ptr %i.kq, null
  br i1 %.not.i233, label %.noexc235, label %bb.aa

bb.aa:                                            ; preds = %.preheader488
  %i.kt = mul i64 %i.ks, 80                       ; 2 uses
  %i.ku = icmp ugt i64 %i.kt, 29360127
  br i1 %i.ku, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kw = load i8, ptr %i.kv, align 8, !range !34, !noundef !35
  %i.kx = trunc nuw i8 %i.kw to i1
  invoke void @_ZN6embree7os_freeEPvmb(ptr noundef nonnull %i.kq, i64 noundef %i.kt, i1 noundef zeroext %i.kx)
          to label %.noexc235 unwind label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.kq)
          to label %.noexc235 unwind label %bb.ae

.noexc235:                                        ; preds = %bb.ac, %bb.ab, %.preheader488
  %.not9.i234 = icmp eq i64 %i.ks, 0
  br i1 %.not9.i234, label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i160, label %bb.ad

bb.ad:                                            ; preds = %.noexc235
  %i.ky = load ptr, ptr %i.kn, align 8            ; 2 uses
  %i.kz = mul i64 %i.ks, -80
  %i.la = load ptr, ptr %i.ky, align 8
  %i.lb = load ptr, ptr %i.la, align 8
  invoke void %i.lb(ptr noundef nonnull align 8 dereferenceable(8) %i.ky, i64 noundef %i.kz, i1 noundef zeroext true)
          to label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i160 unwind label %bb.ae, !inline_history !0

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.lc = landingpad { ptr, i32 }
          catch ptr null
  %i.ld = extractvalue { ptr, i32 } %i.lc, 0
  call void @__clang_call_terminate(ptr %i.ld) #29
  unreachable

_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i160: ; preds = %bb.ad, %.noexc235
  call void @_ZdlPv(ptr noundef nonnull %i.kn) #26
  br label %bb.af

bb.af:                                            ; preds = %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i160, %bb.z, %bb.y
  %i.le = load i64, ptr %18, align 16
  store i64 %i.le, ptr %i.fb, align 16
  %i.lf = load <4 x float>, ptr %i.dh, align 16
  store <4 x float> %i.lf, ptr %i.fc, align 16
  %i.lg = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  %i.lh = load <4 x float>, ptr %i.dn, align 16
  store <4 x float> %i.lh, ptr %i.lg, align 16
  %i.li = getelementptr inbounds nuw i8, ptr %i.fb, i64 48
  %i.lj = load <4 x float>, ptr %i.di, align 16
  store <4 x float> %i.lj, ptr %i.li, align 16
  %i.lk = getelementptr inbounds nuw i8, ptr %i.fb, i64 64
  %i.ll = load <4 x float>, ptr %i.do, align 16
  store <4 x float> %i.ll, ptr %i.lk, align 16
  %i.lm = getelementptr inbounds nuw i8, ptr %i.fb, i64 80
  %i.ln = load <4 x float>, ptr %i.dj, align 16
  store <4 x float> %i.ln, ptr %i.lm, align 16
  %i.lo = getelementptr inbounds nuw i8, ptr %i.fb, i64 96
  %i.lp = load <4 x float>, ptr %i.dp, align 16
  store <4 x float> %i.lp, ptr %i.lo, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ff, ptr noundef nonnull align 16 dereferenceable(32) %i.dq, i64 32, i1 false)
  %i.lq = getelementptr inbounds nuw i8, ptr %i.fb, i64 144
  %i.lr = load <4 x float>, ptr %.sroa.3947.112..sroa_idx.i, align 16
  store <4 x float> %i.lr, ptr %i.lq, align 16
  %i.ls = load ptr, ptr %i.dt, align 16
  store ptr %i.ls, ptr %i.fd, align 16
  %i.lt = load i64, ptr %i.cd, align 16
  %i.lu = getelementptr inbounds nuw [176 x i8], ptr %16, i64 %i.lt ; 10 uses
  %i.lv = load i64, ptr %19, align 16
  store i64 %i.lv, ptr %i.lu, align 16
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.lx = load <4 x float>, ptr %i.dk, align 16
  store <4 x float> %i.lx, ptr %i.lw, align 16
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lu, i64 32
  %i.lz = load <4 x float>, ptr %i.du, align 16
  store <4 x float> %i.lz, ptr %i.ly, align 16
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lu, i64 48
  %i.mb = load <4 x float>, ptr %i.dl, align 16
  store <4 x float> %i.mb, ptr %i.ma, align 16
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lu, i64 64
  %i.md = load <4 x float>, ptr %i.dv, align 16
  store <4 x float> %i.md, ptr %i.mc, align 16
  %i.me = getelementptr inbounds nuw i8, ptr %i.lu, i64 80
  %i.mf = load <4 x float>, ptr %i.dm, align 16
  store <4 x float> %i.mf, ptr %i.me, align 16
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lu, i64 96
  %i.mh = load <4 x float>, ptr %i.dw, align 16
  store <4 x float> %i.mh, ptr %i.mg, align 16
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lu, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.mi, ptr noundef nonnull align 16 dereferenceable(32) %i.dx, i64 32, i1 false)
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lu, i64 144
  %i.mk = load <4 x float>, ptr %.sroa.39.112..sroa_idx.i, align 16
  store <4 x float> %i.mk, ptr %i.mj, align 16
  %i.ml = load ptr, ptr %i.ea, align 16
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lu, i64 160
  store ptr %i.ml, ptr %i.mm, align 16
  %i.mn = load i64, ptr %i.cd, align 16
  %i.mo = add i64 %i.mn, 1                        ; 4 uses
  store i64 %i.mo, ptr %i.cd, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  %i.mp = load i64, ptr %1, align 8
  %i.mq = icmp ult i64 %i.mo, %i.mp
  br i1 %i.mq, label %bb.k, label %bb.ag, !llvm.loop !324

bb.ag:                                            ; preds = %._crit_edge530, %bb.af
  %i.mr = phi i64 [ %i.eb, %._crit_edge530 ], [ %i.mo, %bb.af ] ; 5 uses
  %.not561 = icmp eq i64 %i.mr, 0
  br i1 %.not561, label %._crit_edge537.thread, label %.lr.ph536

.lr.ph536:                                        ; preds = %bb.ag
  %.sroa.012.0.copyload = load float, ptr %i.da, align 8 ; 2 uses
  %.sroa.4.0.copyload = load float, ptr %i.db, align 4 ; 2 uses
  %min.iters.check = icmp ult i64 %i.mr, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph536
  %n.vec = and i64 %i.mr, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.012.0.copyload, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert794 = insertelement <4 x float> poison, float %.sroa.4.0.copyload, i64 0
  %broadcast.splat795 = shufflevector <4 x float> %broadcast.splatinsert794, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.pc, %vector.body ]
  %vec.phi796 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.pd, %vector.body ]
  %i.ms = getelementptr inbounds nuw [176 x i8], ptr %16, i64 %index ; 2 uses
  %i.mt = getelementptr inbounds nuw [176 x i8], ptr %16, i64 %index ; 2 uses
  %i.mu = getelementptr inbounds nuw [176 x i8], ptr %16, i64 %index ; 2 uses
  %i.mv = getelementptr inbounds nuw [176 x i8], ptr %16, i64 %index ; 2 uses
  %i.mw = getelementptr inbounds nuw [176 x i8], ptr %16, i64 %index ; 2 uses
  %i.mx = getelementptr inbounds nuw [176 x i8], ptr %16, i64 %index ; 2 uses
  %i.my = getelementptr inbounds nuw [176 x i8], ptr %16, i64 %index ; 2 uses
  %i.mz = getelementptr inbounds nuw [176 x i8], ptr %16, i64 %index ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.ms, i64 152
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mt, i64 328
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mu, i64 504
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mv, i64 680
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mw, i64 856
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mx, i64 1032
  %i.ng = getelementptr inbounds nuw i8, ptr %i.my, i64 1208
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mz, i64 1384
  %i.ni = load float, ptr %i.na, align 8
  %i.nj = load float, ptr %i.nb, align 8
  %i.nk = load float, ptr %i.nc, align 8
  %i.nl = load float, ptr %i.nd, align 8
  %i.nm = insertelement <4 x float> poison, float %i.ni, i64 0
  %i.nn = insertelement <4 x float> %i.nm, float %i.nj, i64 1
  %i.no = insertelement <4 x float> %i.nn, float %i.nk, i64 2
  %i.np = insertelement <4 x float> %i.no, float %i.nl, i64 3
  %i.nq = load float, ptr %i.ne, align 8
  %i.nr = load float, ptr %i.nf, align 8
  %i.ns = load float, ptr %i.ng, align 8
  %i.nt = load float, ptr %i.nh, align 8
  %i.nu = insertelement <4 x float> poison, float %i.nq, i64 0
  %i.nv = insertelement <4 x float> %i.nu, float %i.nr, i64 1
  %i.nw = insertelement <4 x float> %i.nv, float %i.ns, i64 2
  %i.nx = insertelement <4 x float> %i.nw, float %i.nt, i64 3
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ms, i64 156
  %i.nz = getelementptr inbounds nuw i8, ptr %i.mt, i64 332
  %i.oa = getelementptr inbounds nuw i8, ptr %i.mu, i64 508
  %i.ob = getelementptr inbounds nuw i8, ptr %i.mv, i64 684
  %i.oc = getelementptr inbounds nuw i8, ptr %i.mw, i64 860
  %i.od = getelementptr inbounds nuw i8, ptr %i.mx, i64 1036
  %i.oe = getelementptr inbounds nuw i8, ptr %i.my, i64 1212
  %i.of = getelementptr inbounds nuw i8, ptr %i.mz, i64 1388
end_hunk_3
begin_hunk_4_@_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15createLargeLeafERNS1_11BuildRecordEST_:bb.a
  %i.wq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wp) #25
          to label %.noexc278 unwind label %bb.bo ; 4 uses

.noexc278:                                        ; preds = %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i271
  %i.wr = getelementptr inbounds i8, ptr %i.wq, i64 %i.wi ; 2 uses
  store ptr %i.uf, ptr %i.wr, align 8
  %i.ws = icmp sgt i64 %i.wi, 0
  br i1 %i.ws, label %bb.bm, label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i274

bb.bm:                                            ; preds = %.noexc278
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.wq, ptr align 8 %i.wf, i64 %i.wi, i1 false)
  br label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i274

_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i274: ; preds = %bb.bm, %.noexc278
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  %.not.i17.i.i275 = icmp eq ptr %i.wf, null
  br i1 %.not.i17.i.i275, label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i276, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i274
  call void @_ZdlPv(ptr noundef nonnull %i.wf) #26
  br label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i276

_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i276: ; preds = %bb.bn, %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i274
  store ptr %i.wq, ptr %i.vy, align 8
  store ptr %i.wt, ptr %i.vz, align 8
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %i.wq, i64 %i.wo
  store ptr %i.wu, ptr %i.wb, align 8
  br label %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i

bb.bo:                                            ; preds = %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i271, %bb.bl
  %i.wv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %.body.i

_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i: ; preds = %bb.bj, %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i276
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit280 unwind label %bb.bp

bb.bp:                                            ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i
  %i.ww = landingpad { ptr, i32 }
          catch ptr null
  %i.wx = extractvalue { ptr, i32 } %i.ww, 0
  call void @__clang_call_terminate(ptr %i.wx) #29
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit280:       ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  %i.wy = load i8, ptr %i.uj, align 8, !range !34, !noundef !35
  %i.wz = trunc nuw i8 %i.wy to i1
  br i1 %i.wz, label %bb.bq, label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit281

bb.bq:                                            ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit280
  %i.xa = load ptr, ptr %10, align 8, !nonnull !35, !align !37
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.xa)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit281 unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.xb = landingpad { ptr, i32 }
          catch ptr null
  %i.xc = extractvalue { ptr, i32 } %i.xb, 0
  call void @__clang_call_terminate(ptr %i.xc) #29
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit281:       ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit280, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  br label %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i

bb.bs:                                            ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit267
  %i.xd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.bs, %bb.bo
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.xd, %bb.bs ], [ %i.wv, %bb.bo ]
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %10) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  br label %.body163

_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i: ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit281, %._crit_edge537.thread
  %i.xe = load i64, ptr %i.c, align 8             ; 4 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.ud, i64 40 ; 2 uses
  %i.xg = load i64, ptr %i.xf, align 8
  %i.xh = add i64 %i.xg, %i.xe
  store i64 %i.xh, ptr %i.xf, align 8
  %i.xi = getelementptr inbounds nuw i8, ptr %i.ud, i64 16 ; 9 uses
  %i.xj = load i64, ptr %i.xi, align 16           ; 3 uses
  %i.xk = sub i64 0, %i.xj
  %i.xl = and i64 %i.xk, 15                       ; 2 uses
  %i.xm = add i64 %i.xj, %i.xe
  %i.xn = add i64 %i.xm, %i.xl                    ; 3 uses
  store i64 %i.xn, ptr %i.xi, align 16
  %i.xo = getelementptr inbounds nuw i8, ptr %i.ud, i64 24 ; 5 uses
  %i.xp = load i64, ptr %i.xo, align 8
  %.not.i.i = icmp ugt i64 %i.xn, %i.xp
  br i1 %.not.i.i, label %bb.bu, label %bb.bt, !prof !40

bb.bt:                                            ; preds = %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i
  %i.xq = getelementptr inbounds nuw i8, ptr %i.ud, i64 48 ; 2 uses
  %i.xr = load i64, ptr %i.xq, align 16
  %i.xs = add i64 %i.xr, %i.xl
  store i64 %i.xs, ptr %i.xq, align 16
  %i.xt = getelementptr inbounds nuw i8, ptr %i.ud, i64 8
  %i.xu = load ptr, ptr %i.xt, align 8
  %i.xv = sub i64 %i.xn, %i.xe
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xu, i64 %i.xv
  br label %.noexc127

bb.bu:                                            ; preds = %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i
  store i64 %i.xj, ptr %i.xi, align 16
  %i.xx = shl i64 %i.xe, 2
  %i.xy = getelementptr inbounds nuw i8, ptr %i.ud, i64 32 ; 2 uses
  %i.xz = load i64, ptr %i.xy, align 32           ; 2 uses
  %i.ya = icmp ugt i64 %i.xx, %i.xz
  br i1 %i.ya, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.yb = invoke noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.ue, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 64, i1 noundef zeroext false)
          to label %.noexc127 unwind label %bb.cc

bb.bw:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i64 %i.xz, ptr %i.d, align 8
  %i.yc = invoke noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.ue, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 64, i1 noundef zeroext true)
          to label %.noexc166 unwind label %bb.cc ; 2 uses

.noexc166:                                        ; preds = %bb.bw
  %i.yd = getelementptr inbounds nuw i8, ptr %i.ud, i64 8 ; 2 uses
  store ptr %i.yc, ptr %i.yd, align 8
  %i.ye = load i64, ptr %i.xo, align 8
  %i.yf = load i64, ptr %i.xi, align 16
  %i.yg = sub i64 %i.ye, %i.yf
  %i.yh = getelementptr inbounds nuw i8, ptr %i.ud, i64 48 ; 6 uses
  %i.yi = load i64, ptr %i.yh, align 16
  %i.yj = add i64 %i.yi, %i.yg                    ; 2 uses
  store i64 %i.yj, ptr %i.yh, align 16
  %i.yk = load i64, ptr %i.d, align 8             ; 2 uses
  store i64 %i.yk, ptr %i.xo, align 8
  %i.yl = load i64, ptr %i.c, align 8             ; 2 uses
  store i64 %i.yl, ptr %i.xi, align 16
  %.not23.i.i = icmp ugt i64 %i.yl, %i.yk
  br i1 %.not23.i.i, label %bb.by, label %bb.bx, !prof !40

bb.bx:                                            ; preds = %.noexc166
  store i64 %i.yj, ptr %i.yh, align 16
  br label %bb.cb

bb.by:                                            ; preds = %.noexc166
  store i64 0, ptr %i.xi, align 16
  %i.ym = load i64, ptr %i.xy, align 32
  store i64 %i.ym, ptr %i.d, align 8
  %i.yn = invoke noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.ue, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 64, i1 noundef zeroext false)
          to label %.noexc167 unwind label %bb.cc ; 2 uses

.noexc167:                                        ; preds = %bb.by
  store ptr %i.yn, ptr %i.yd, align 8
  %i.yo = load i64, ptr %i.xo, align 8
  %i.yp = load i64, ptr %i.xi, align 16
  %i.yq = sub i64 %i.yo, %i.yp
  %i.yr = load i64, ptr %i.yh, align 16
  %i.ys = add i64 %i.yr, %i.yq                    ; 2 uses
  store i64 %i.ys, ptr %i.yh, align 16
  %i.yt = load i64, ptr %i.d, align 8             ; 2 uses
  store i64 %i.yt, ptr %i.xo, align 8
  %i.yu = load i64, ptr %i.c, align 8             ; 2 uses
  store i64 %i.yu, ptr %i.xi, align 16
  %.not24.i.i = icmp ugt i64 %i.yu, %i.yt
  br i1 %.not24.i.i, label %bb.ca, label %bb.bz, !prof !40

bb.bz:                                            ; preds = %.noexc167
  store i64 %i.ys, ptr %i.yh, align 16
  br label %bb.cb

bb.ca:                                            ; preds = %.noexc167
  store i64 0, ptr %i.xi, align 16
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.bx
  %.0.i.i = phi ptr [ %i.yc, %bb.bx ], [ %i.yn, %bb.bz ], [ null, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %.noexc127

.noexc127:                                        ; preds = %bb.cb, %bb.bt, %bb.bv
  %.1.i.i = phi ptr [ %i.xw, %bb.bt ], [ %.0.i.i, %bb.cb ], [ %i.yb, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN6embree5LBBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.079534 = phi i64 [ %i.zb, %scalar.ph ], [ %.079534.ph, %scalar.ph.preheader ] ; 2 uses
  %.080533 = phi i1 [ %i.za, %scalar.ph ], [ %.080533.ph, %scalar.ph.preheader ]
  %i.yv = getelementptr inbounds nuw [176 x i8], ptr %16, i64 %.079534 ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 152
  %.sroa.013.0.copyload = load float, ptr %i.yw, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yv, i64 156
  %.sroa.414.0.copyload = load float, ptr %.sroa.414.0..sroa_idx, align 4
  %i.yx = fcmp ogt float %.sroa.013.0.copyload, %.sroa.012.0.copyload
  %i.yy = fcmp olt float %.sroa.414.0.copyload, %.sroa.4.0.copyload
  %i.yz = select i1 %i.yx, i1 true, i1 %i.yy
  %i.za = or i1 %.080533, %i.yz                   ; 2 uses
  %i.zb = add nuw i64 %.079534, 1                 ; 2 uses
  %exitcond597.not = icmp eq i64 %i.zb, %i.mr
  br i1 %exitcond597.not, label %._crit_edge537, label %scalar.ph, !llvm.loop !326

_ZN6embree5LBBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit: ; preds = %.noexc127, %.noexc124
  %.1.i.i.sink747 = phi ptr [ %.1.i.i, %.noexc127 ], [ %.1.i.i175, %.noexc124 ] ; 37 uses
  %.sink731 = phi i64 [ 1, %.noexc127 ], [ 6, %.noexc124 ]
  %.080.lcssa667 = phi i1 [ false, %.noexc127 ], [ true, %.noexc124 ]
  %i.zc = getelementptr inbounds nuw i8, ptr %.1.i.i.sink747, i64 96
  store <4 x float> splat (float +inf), ptr %i.zc, align 16
  %i.zd = getelementptr inbounds nuw i8, ptr %.1.i.i.sink747, i64 64
  store <4 x float> splat (float +inf), ptr %i.zd, align 16
  %i.ze = getelementptr inbounds nuw i8, ptr %.1.i.i.sink747, i64 32
  store <4 x float> splat (float +inf), ptr %i.ze, align 16
  %i.zf = getelementptr inbounds nuw i8, ptr %.1.i.i.sink747, i64 112
  store <4 x float> splat (float -inf), ptr %i.zf, align 16
  %i.zg = getelementptr inbounds nuw i8, ptr %.1.i.i.sink747, i64 80
  store <4 x float> splat (float -inf), ptr %i.zg, align 16
  %i.zh = getelementptr inbounds nuw i8, ptr %.1.i.i.sink747, i64 48
  store <4 x float> splat (float -inf), ptr %i.zh, align 16
  %i.zi = getelementptr inbounds nuw i8, ptr %.1.i.i.sink747, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.zi, i8 0, i64 96, i1 false)
  store <4 x i64> splat (i64 8), ptr %.1.i.i.sink747, align 16
  %i.zj = ptrtoint ptr %.1.i.i.sink747 to i64
  %i.zk = or i64 %.sink731, %i.zj                 ; 2 uses
  %i.zl = load i64, ptr %i.cd, align 16
  %.not562 = icmp eq i64 %i.zl, 0
  br i1 %.not562, label %_ZNK6embree14AABBNodeMB4D_tINS_10NodeRefPtrILi4EEELi4EE3SetclINS_4sse221BVHBuilderHairMSMBlur11BuildRecordEEEvRKT_PSA_S2_PNS_17BVHNodeRecordMB4DIS2_EEm.exit, label %.lr.ph546

.lr.ph546:                                        ; preds = %_ZN6embree5LBBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit
  %i.zm = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.zn = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.zo = getelementptr inbounds nuw i8, ptr %20, i64 48
  %i.zp = getelementptr inbounds nuw i8, ptr %20, i64 64
  %i.zq = getelementptr inbounds nuw i8, ptr %20, i64 80
  br label %bb.cd

._crit_edge547:                                   ; preds = %bb.ce
  %i.zr = and i64 %i.zk, 15
  %.not = icmp eq i64 %i.zr, 1
  %.not564 = icmp eq i64 %i.ahf, 0                ; 2 uses
  br i1 %.not, label %.preheader485, label %.preheader486, !prof !41

.preheader486:                                    ; preds = %._crit_edge547
  br i1 %.not564, label %_ZNK6embree14AABBNodeMB4D_tINS_10NodeRefPtrILi4EEELi4EE3SetclINS_4sse221BVHBuilderHairMSMBlur11BuildRecordEEEvRKT_PSA_S2_PNS_17BVHNodeRecordMB4DIS2_EEm.exit, label %.noexc210.lr.ph

.noexc210.lr.ph:                                  ; preds = %.preheader486
  %i.zs = getelementptr inbounds nuw i8, ptr %.1.i.i.sink747, i64 32
  %i.zt = getelementptr inbounds nuw i8, ptr %.1.i.i.sink747, i64 64
  %i.zu = getelementptr inbounds nuw i8, ptr %.1.i.i.sink747, i64 96
  %i.zv = getelementptr inbounds nuw i8, ptr %.1.i.i.sink747, i64 48
  %i.zw = getelementptr inbounds nuw i8, ptr %.1.i.i.sink747, i64 80
  %i.zx = getelementptr inbounds nuw i8, ptr %.1.i.i.sink747, i64 112
  %i.zy = getelementptr inbounds nuw i8, ptr %.1.i.i.sink747, i64 128
  %i.zz = getelementptr inbounds nuw i8, ptr %.1.i.i.sink747, i64 160
  %i.aaa = getelementptr inbounds nuw i8, ptr %.1.i.i.sink747, i64 192
  %i.aab = getelementptr inbounds nuw i8, ptr %.1.i.i.sink747, i64 144
  %i.aac = getelementptr inbounds nuw i8, ptr %.1.i.i.sink747, i64 176
  %i.aad = getelementptr inbounds nuw i8, ptr %.1.i.i.sink747, i64 208
  %i.aae = getelementptr inbounds nuw i8, ptr %.1.i.i.sink747, i64 224
  %i.aaf = getelementptr inbounds nuw i8, ptr %.1.i.i.sink747, i64 240
  br label %.noexc210

.preheader485:                                    ; preds = %._crit_edge547
  br i1 %.not564, label %_ZNK6embree14AABBNodeMB4D_tINS_10NodeRefPtrILi4EEELi4EE3SetclINS_4sse221BVHBuilderHairMSMBlur11BuildRecordEEEvRKT_PSA_S2_PNS_17BVHNodeRecordMB4DIS2_EEm.exit, label %.noexc130.lr.ph

.noexc130.lr.ph:                                  ; preds = %.preheader485
  %i.aag = getelementptr inbounds nuw i8, ptr %.1.i.i.sink747, i64 32
  %i.aah = getelementptr inbounds nuw i8, ptr %.1.i.i.sink747, i64 64
  %i.aai = getelementptr inbounds nuw i8, ptr %.1.i.i.sink747, i64 96
  %i.aaj = getelementptr inbounds nuw i8, ptr %.1.i.i.sink747, i64 48
  %i.aak = getelementptr inbounds nuw i8, ptr %.1.i.i.sink747, i64 80
  %i.aal = getelementptr inbounds nuw i8, ptr %.1.i.i.sink747, i64 112
  %i.aam = getelementptr inbounds nuw i8, ptr %.1.i.i.sink747, i64 128
  %i.aan = getelementptr inbounds nuw i8, ptr %.1.i.i.sink747, i64 160
  %i.aao = getelementptr inbounds nuw i8, ptr %.1.i.i.sink747, i64 192
  %i.aap = getelementptr inbounds nuw i8, ptr %.1.i.i.sink747, i64 144
  %i.aaq = getelementptr inbounds nuw i8, ptr %.1.i.i.sink747, i64 176
  %i.aar = getelementptr inbounds nuw i8, ptr %.1.i.i.sink747, i64 208
  br label %.noexc130

.noexc130:                                        ; preds = %.noexc130.lr.ph, %.noexc130
  %.011.i554 = phi i64 [ 0, %.noexc130.lr.ph ], [ %i.adm, %.noexc130 ] ; 15 uses
  %i.aas = getelementptr inbounds nuw [96 x i8], ptr %17, i64 %.011.i554 ; 7 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.aas, align 16
  %i.aat = getelementptr inbounds nuw [8 x i8], ptr %.1.i.i.sink747, i64 %.011.i554
  store i64 %.sroa.0.0.copyload.i, ptr %i.aat, align 8
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aas, i64 16
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aas, i64 80
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aas, i64 84
  %i.aax = load float, ptr %i.aaw, align 4, !noalias !397
  %i.aay = load float, ptr %i.aav, align 16, !noalias !397 ; 3 uses
  %i.aaz = fsub float %i.aax, %i.aay
  %i.aba = fdiv float 1.000000e+00, %i.aaz        ; 2 uses
  %i.abb = fneg float %i.aay
  %i.abc = fmul float %i.aba, %i.abb              ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aas, i64 48
  %i.abe = fsub float 1.000000e+00, %i.abc
  %i.abf = insertelement <4 x float> poison, float %i.abc, i64 0
  %i.abg = shufflevector <4 x float> %i.abf, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.abh = load <4 x float>, ptr %i.abd, align 16, !noalias !398 ; 2 uses
  %i.abi = fmul <4 x float> %i.abh, %i.abg
  %i.abj = insertelement <4 x float> poison, float %i.abe, i64 0
  %i.abk = shufflevector <4 x float> %i.abj, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.abl = load <4 x float>, ptr %i.aau, align 16, !noalias !399 ; 2 uses
  %i.abm = fmul <4 x float> %i.abl, %i.abk
  %i.abn = fadd <4 x float> %i.abi, %i.abm
  %i.abo = getelementptr inbounds nuw i8, ptr %i.aas, i64 32
  %i.abp = getelementptr inbounds nuw i8, ptr %i.aas, i64 64
  %i.abq = load <4 x float>, ptr %i.abp, align 16, !noalias !400 ; 2 uses
  %i.abr = fmul <4 x float> %i.abq, %i.abg
  %i.abs = load <4 x float>, ptr %i.abo, align 16, !noalias !401 ; 2 uses
  %i.abt = fmul <4 x float> %i.abs, %i.abk
  %i.abu = fadd <4 x float> %i.abr, %i.abt
  %i.abv = fsub float 1.000000e+00, %i.aay
  %i.abw = fmul float %i.abv, %i.aba              ; 2 uses
  %i.abx = fsub float 1.000000e+00, %i.abw
  %i.aby = insertelement <4 x float> poison, float %i.abw, i64 0
  %i.abz = shufflevector <4 x float> %i.aby, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aca = fmul <4 x float> %i.abh, %i.abz
  %i.acb = insertelement <4 x float> poison, float %i.abx, i64 0
  %i.acc = shufflevector <4 x float> %i.acb, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.acd = fmul <4 x float> %i.abl, %i.acc
  %i.ace = fadd <4 x float> %i.aca, %i.acd
  %i.acf = fmul <4 x float> %i.abq, %i.abz
  %i.acg = fmul <4 x float> %i.abs, %i.acc
  %i.ach = fadd <4 x float> %i.acf, %i.acg
  %i.aci = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.abn, <4 x float> splat (float f0x7F7FFFFF)) ; 2 uses
  %i.acj = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.abu, <4 x float> splat (float f0xFF7FFFFF)) ; 2 uses
  %i.ack = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ace, <4 x float> splat (float f0x7F7FFFFF)) ; 2 uses
  %i.acl = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ach, <4 x float> splat (float f0xFF7FFFFF)) ; 2 uses
  %i.acm = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.aci)
  %i.acn = fmul <4 x float> %i.acm, splat (float f0x35000000)
  %i.aco = fsub <4 x float> %i.aci, %i.acn        ; 4 uses
  %i.acp = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.acj)
  %i.acq = fmul <4 x float> %i.acp, splat (float f0x35000000)
  %i.acr = fadd <4 x float> %i.acj, %i.acq        ; 4 uses
  %i.acs = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ack)
  %i.act = fmul <4 x float> %i.acs, <float f0x35000000, float f0x35000000, float f0x35000000, float poison>
  %i.acu = fsub <4 x float> %i.ack, %i.act
  %i.acv = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.acl)
  %i.acw = fmul <4 x float> %i.acv, <float f0x35000000, float f0x35000000, float f0x35000000, float poison>
  %i.acx = fadd <4 x float> %i.acl, %i.acw
  %i.acy = fsub <4 x float> %i.acu, %i.aco        ; 3 uses
  %i.acz = fsub <4 x float> %i.acx, %i.acr        ; 3 uses
  %.sroa.0361.0.vec.extract = extractelement <4 x float> %i.aco, i64 0
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %i.aag, i64 %.011.i554
  store float %.sroa.0361.0.vec.extract, ptr %i.ada, align 4
  %.sroa.0361.4.vec.extract = extractelement <4 x float> %i.aco, i64 1
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %i.aah, i64 %.011.i554
  store float %.sroa.0361.4.vec.extract, ptr %i.adb, align 4
  %.sroa.0361.8.vec.extract = extractelement <4 x float> %i.aco, i64 2
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %i.aai, i64 %.011.i554
  store float %.sroa.0361.8.vec.extract, ptr %i.adc, align 4
  %.sroa.10.16.vec.extract = extractelement <4 x float> %i.acr, i64 0
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %i.aaj, i64 %.011.i554
  store float %.sroa.10.16.vec.extract, ptr %i.add, align 4
  %.sroa.10.20.vec.extract = extractelement <4 x float> %i.acr, i64 1
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %i.aak, i64 %.011.i554
  store float %.sroa.10.20.vec.extract, ptr %i.ade, align 4
  %.sroa.10.24.vec.extract = extractelement <4 x float> %i.acr, i64 2
  %i.adf = getelementptr inbounds nuw [4 x i8], ptr %i.aal, i64 %.011.i554
  store float %.sroa.10.24.vec.extract, ptr %i.adf, align 4
  %.sroa.0343.0.vec.extract = extractelement <4 x float> %i.acy, i64 0
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %i.aam, i64 %.011.i554
  store float %.sroa.0343.0.vec.extract, ptr %i.adg, align 4
  %.sroa.0343.4.vec.extract = extractelement <4 x float> %i.acy, i64 1
  %i.adh = getelementptr inbounds nuw [4 x i8], ptr %i.aan, i64 %.011.i554
  store float %.sroa.0343.4.vec.extract, ptr %i.adh, align 4
  %.sroa.0343.8.vec.extract = extractelement <4 x float> %i.acy, i64 2
  %i.adi = getelementptr inbounds nuw [4 x i8], ptr %i.aao, i64 %.011.i554
  store float %.sroa.0343.8.vec.extract, ptr %i.adi, align 4
  %.sroa.0342.0.vec.extract = extractelement <4 x float> %i.acz, i64 0
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %i.aap, i64 %.011.i554
  store float %.sroa.0342.0.vec.extract, ptr %i.adj, align 4
  %.sroa.0342.4.vec.extract = extractelement <4 x float> %i.acz, i64 1
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %i.aaq, i64 %.011.i554
  store float %.sroa.0342.4.vec.extract, ptr %i.adk, align 4
  %.sroa.0342.8.vec.extract = extractelement <4 x float> %i.acz, i64 2
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %i.aar, i64 %.011.i554
  store float %.sroa.0342.8.vec.extract, ptr %i.adl, align 4
  %i.adm = add nuw i64 %.011.i554, 1              ; 2 uses
  %exitcond601.not = icmp eq i64 %i.adm, %i.ahf
  br i1 %exitcond601.not, label %_ZNK6embree14AABBNodeMB4D_tINS_10NodeRefPtrILi4EEELi4EE3SetclINS_4sse221BVHBuilderHairMSMBlur11BuildRecordEEEvRKT_PSA_S2_PNS_17BVHNodeRecordMB4DIS2_EEm.exit, label %.noexc130, !llvm.loop !349

.noexc210:                                        ; preds = %.noexc210.lr.ph, %.noexc210
  %.0.i553 = phi i64 [ 0, %.noexc210.lr.ph ], [ %i.agl, %.noexc210 ] ; 17 uses
  %i.adn = getelementptr inbounds nuw [96 x i8], ptr %17, i64 %.0.i553 ; 7 uses
  %.sroa.0.0.copyload.i194 = load i64, ptr %i.adn, align 16
  %i.ado = getelementptr inbounds nuw [8 x i8], ptr %.1.i.i.sink747, i64 %.0.i553
  store i64 %.sroa.0.0.copyload.i194, ptr %i.ado, align 8
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adn, i64 16
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adn, i64 80
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adn, i64 84
  %i.ads = load float, ptr %i.adr, align 4, !noalias !402 ; 3 uses
  %i.adt = load float, ptr %i.adq, align 16, !noalias !402 ; 4 uses
  %i.adu = fsub float %i.ads, %i.adt
  %i.adv = fdiv float 1.000000e+00, %i.adu        ; 2 uses
  %i.adw = fneg float %i.adt
  %i.adx = fmul float %i.adv, %i.adw              ; 2 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adn, i64 48
  %i.adz = fsub float 1.000000e+00, %i.adx
  %i.aea = insertelement <4 x float> poison, float %i.adx, i64 0
  %i.aeb = shufflevector <4 x float> %i.aea, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aec = load <4 x float>, ptr %i.ady, align 16, !noalias !403 ; 2 uses
  %i.aed = fmul <4 x float> %i.aec, %i.aeb
  %i.aee = insertelement <4 x float> poison, float %i.adz, i64 0
  %i.aef = shufflevector <4 x float> %i.aee, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aeg = load <4 x float>, ptr %i.adp, align 16, !noalias !404 ; 2 uses
  %i.aeh = fmul <4 x float> %i.aeg, %i.aef
  %i.aei = fadd <4 x float> %i.aed, %i.aeh
  %i.aej = getelementptr inbounds nuw i8, ptr %i.adn, i64 32
  %i.aek = getelementptr inbounds nuw i8, ptr %i.adn, i64 64
  %i.ael = load <4 x float>, ptr %i.aek, align 16, !noalias !405 ; 2 uses
  %i.aem = fmul <4 x float> %i.ael, %i.aeb
  %i.aen = load <4 x float>, ptr %i.aej, align 16, !noalias !406 ; 2 uses
  %i.aeo = fmul <4 x float> %i.aen, %i.aef
  %i.aep = fadd <4 x float> %i.aem, %i.aeo
  %i.aeq = fsub float 1.000000e+00, %i.adt
  %i.aer = fmul float %i.aeq, %i.adv              ; 2 uses
  %i.aes = fsub float 1.000000e+00, %i.aer
  %i.aet = insertelement <4 x float> poison, float %i.aer, i64 0
  %i.aeu = shufflevector <4 x float> %i.aet, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aev = fmul <4 x float> %i.aec, %i.aeu
  %i.aew = insertelement <4 x float> poison, float %i.aes, i64 0
  %i.aex = shufflevector <4 x float> %i.aew, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aey = fmul <4 x float> %i.aeg, %i.aex
  %i.aez = fadd <4 x float> %i.aev, %i.aey
  %i.afa = fmul <4 x float> %i.ael, %i.aeu
  %i.afb = fmul <4 x float> %i.aen, %i.aex
  %i.afc = fadd <4 x float> %i.afa, %i.afb
  %i.afd = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aei, <4 x float> splat (float f0x7F7FFFFF)) ; 2 uses
  %i.afe = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.aep, <4 x float> splat (float f0xFF7FFFFF)) ; 2 uses
  %i.aff = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aez, <4 x float> splat (float f0x7F7FFFFF)) ; 2 uses
  %i.afg = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.afc, <4 x float> splat (float f0xFF7FFFFF)) ; 2 uses
  %i.afh = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.afd)
  %i.afi = fmul <4 x float> %i.afh, splat (float f0x35000000)
  %i.afj = fsub <4 x float> %i.afd, %i.afi        ; 4 uses
  %i.afk = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.afe)
  %i.afl = fmul <4 x float> %i.afk, splat (float f0x35000000)
  %i.afm = fadd <4 x float> %i.afe, %i.afl        ; 4 uses
  %i.afn = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.aff)
  %i.afo = fmul <4 x float> %i.afn, <float f0x35000000, float f0x35000000, float f0x35000000, float poison>
  %i.afp = fsub <4 x float> %i.aff, %i.afo
  %i.afq = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.afg)
  %i.afr = fmul <4 x float> %i.afq, <float f0x35000000, float f0x35000000, float f0x35000000, float poison>
  %i.afs = fadd <4 x float> %i.afg, %i.afr
  %i.aft = fsub <4 x float> %i.afp, %i.afj        ; 3 uses
  %i.afu = fsub <4 x float> %i.afs, %i.afm        ; 3 uses
  %.sroa.0432.0.vec.extract = extractelement <4 x float> %i.afj, i64 0
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %i.zs, i64 %.0.i553
  store float %.sroa.0432.0.vec.extract, ptr %i.afv, align 4
  %.sroa.0432.4.vec.extract = extractelement <4 x float> %i.afj, i64 1
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.zt, i64 %.0.i553
  store float %.sroa.0432.4.vec.extract, ptr %i.afw, align 4
  %.sroa.0432.8.vec.extract = extractelement <4 x float> %i.afj, i64 2
  %i.afx = getelementptr inbounds nuw [4 x i8], ptr %i.zu, i64 %.0.i553
  store float %.sroa.0432.8.vec.extract, ptr %i.afx, align 4
  %.sroa.10436.16.vec.extract = extractelement <4 x float> %i.afm, i64 0
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %i.zv, i64 %.0.i553
  store float %.sroa.10436.16.vec.extract, ptr %i.afy, align 4
  %.sroa.10436.20.vec.extract = extractelement <4 x float> %i.afm, i64 1
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %.0.i553
  store float %.sroa.10436.20.vec.extract, ptr %i.afz, align 4
  %.sroa.10436.24.vec.extract = extractelement <4 x float> %i.afm, i64 2
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr %i.zx, i64 %.0.i553
  store float %.sroa.10436.24.vec.extract, ptr %i.aga, align 4
  %.sroa.0413.0.vec.extract = extractelement <4 x float> %i.aft, i64 0
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr %i.zy, i64 %.0.i553
  store float %.sroa.0413.0.vec.extract, ptr %i.agb, align 4
  %.sroa.0413.4.vec.extract = extractelement <4 x float> %i.aft, i64 1
  %i.agc = getelementptr inbounds nuw [4 x i8], ptr %i.zz, i64 %.0.i553
  store float %.sroa.0413.4.vec.extract, ptr %i.agc, align 4
  %.sroa.0413.8.vec.extract = extractelement <4 x float> %i.aft, i64 2
  %i.agd = getelementptr inbounds nuw [4 x i8], ptr %i.aaa, i64 %.0.i553
  store float %.sroa.0413.8.vec.extract, ptr %i.agd, align 4
  %.sroa.0412.0.vec.extract = extractelement <4 x float> %i.afu, i64 0
  %i.age = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %.0.i553
  store float %.sroa.0412.0.vec.extract, ptr %i.age, align 4
  %.sroa.0412.4.vec.extract = extractelement <4 x float> %i.afu, i64 1
  %i.agf = getelementptr inbounds nuw [4 x i8], ptr %i.aac, i64 %.0.i553
  store float %.sroa.0412.4.vec.extract, ptr %i.agf, align 4
  %.sroa.0412.8.vec.extract = extractelement <4 x float> %i.afu, i64 2
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %i.aad, i64 %.0.i553
  store float %.sroa.0412.8.vec.extract, ptr %i.agg, align 4
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %i.aae, i64 %.0.i553
  store float %i.adt, ptr %i.agh, align 4
  %i.agi = fcmp oeq float %i.ads, 1.000000e+00
  %i.agj = select i1 %i.agi, float f0x3F800001, float %i.ads
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %i.aaf, i64 %.0.i553
  store float %i.agj, ptr %i.agk, align 4
  %i.agl = add nuw i64 %.0.i553, 1                ; 2 uses
  %exitcond600.not = icmp eq i64 %i.agl, %i.ahf
  br i1 %exitcond600.not, label %_ZNK6embree14AABBNodeMB4D_tINS_10NodeRefPtrILi4EEELi4EE3SetclINS_4sse221BVHBuilderHairMSMBlur11BuildRecordEEEvRKT_PSA_S2_PNS_17BVHNodeRecordMB4DIS2_EEm.exit, label %.noexc210, !llvm.loop !1

bb.cc:                                            ; preds = %bb.bf, %bb.ai, %bb.bb, %bb.az, %bb.ay, %bb.by, %bb.bw, %bb.bv
  %i.agm = landingpad { ptr, i32 }
          cleanup
  br label %.body163

bb.cd:                                            ; preds = %.lr.ph546, %bb.ce
  %.072545 = phi i64 [ 0, %.lr.ph546 ], [ %i.ahe, %bb.ce ] ; 3 uses
  %.sroa.0.0544 = phi <4 x float> [ splat (float +inf), %.lr.ph546 ], [ %i.aha, %bb.ce ]
  %.sroa.8.0543 = phi <4 x float> [ splat (float -inf), %.lr.ph546 ], [ %i.ahb, %bb.ce ]
  %.sroa.13.0542 = phi <4 x float> [ splat (float +inf), %.lr.ph546 ], [ %i.ahc, %bb.ce ]
  %.sroa.18.0541 = phi <4 x float> [ splat (float -inf), %.lr.ph546 ], [ %i.ahd, %bb.ce ]
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #11
  %i.agn = getelementptr inbounds nuw [176 x i8], ptr %16, i64 %.072545
  invoke void @_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15createLargeLeafERNS1_11BuildRecordEST_(ptr dead_on_unwind nonnull writable sret(%"struct.embree::BVHNodeRecordMB4D") align 16 %20, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 16 dereferenceable(176) %i.agn, ptr noundef nonnull byval(%"struct.embree::FastAllocator::CachedAllocator") align 8 %3)
          to label %bb.ce unwind label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.ago = getelementptr inbounds nuw [96 x i8], ptr %17, i64 %.072545 ; 6 uses
  %i.agp = load i64, ptr %20, align 16
  store i64 %i.agp, ptr %i.ago, align 16
  %i.agq = getelementptr inbounds nuw i8, ptr %i.ago, i64 16
  %i.agr = load <4 x float>, ptr %i.zm, align 16  ; 2 uses
  store <4 x float> %i.agr, ptr %i.agq, align 16
  %i.ags = getelementptr inbounds nuw i8, ptr %i.ago, i64 32
  %i.agt = load <4 x float>, ptr %i.zn, align 16  ; 2 uses
  store <4 x float> %i.agt, ptr %i.ags, align 16
  %i.agu = getelementptr inbounds nuw i8, ptr %i.ago, i64 48
  %i.agv = load <4 x float>, ptr %i.zo, align 16  ; 2 uses
  store <4 x float> %i.agv, ptr %i.agu, align 16
  %i.agw = getelementptr inbounds nuw i8, ptr %i.ago, i64 64
  %i.agx = load <4 x float>, ptr %i.zp, align 16  ; 2 uses
  store <4 x float> %i.agx, ptr %i.agw, align 16
  %i.agy = getelementptr inbounds nuw i8, ptr %i.ago, i64 80
  %i.agz = load <2 x float>, ptr %i.zq, align 16
  store <2 x float> %i.agz, ptr %i.agy, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #11
  %i.aha = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0.0544, <4 x float> %i.agr) ; 5 uses
  %i.ahb = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.8.0543, <4 x float> %i.agt) ; 5 uses
  %i.ahc = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.13.0542, <4 x float> %i.agv) ; 5 uses
  %i.ahd = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.18.0541, <4 x float> %i.agx) ; 5 uses
  %i.ahe = add nuw i64 %.072545, 1                ; 2 uses
  %i.ahf = load i64, ptr %i.cd, align 16          ; 4 uses
  %i.ahg = icmp ult i64 %i.ahe, %i.ahf
  br i1 %i.ahg, label %bb.cd, label %._crit_edge547, !llvm.loop !372

bb.cf:                                            ; preds = %bb.cd
  %i.ahh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #11
  br label %.body163

_ZNK6embree14AABBNodeMB4D_tINS_10NodeRefPtrILi4EEELi4EE3SetclINS_4sse221BVHBuilderHairMSMBlur11BuildRecordEEEvRKT_PSA_S2_PNS_17BVHNodeRecordMB4DIS2_EEm.exit: ; preds = %.noexc210, %.noexc130, %_ZN6embree5LBBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit, %.preheader486, %.preheader485
  %.sroa.0.0.lcssa684 = phi <4 x float> [ %i.aha, %.noexc130 ], [ splat (float +inf), %_ZN6embree5LBBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit ], [ %i.aha, %.preheader486 ], [ %i.aha, %.preheader485 ], [ %i.aha, %.noexc210 ]
  %.sroa.8.0.lcssa681 = phi <4 x float> [ %i.ahb, %.noexc130 ], [ splat (float -inf), %_ZN6embree5LBBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit ], [ %i.ahb, %.preheader486 ], [ %i.ahb, %.preheader485 ], [ %i.ahb, %.noexc210 ]
  %.sroa.13.0.lcssa678 = phi <4 x float> [ %i.ahc, %.noexc130 ], [ splat (float +inf), %_ZN6embree5LBBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit ], [ %i.ahc, %.preheader486 ], [ %i.ahc, %.preheader485 ], [ %i.ahc, %.noexc210 ]
  %.sroa.18.0.lcssa675 = phi <4 x float> [ %i.ahd, %.noexc130 ], [ splat (float -inf), %_ZN6embree5LBBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit ], [ %i.ahd, %.preheader486 ], [ %i.ahd, %.preheader485 ], [ %i.ahd, %.noexc210 ]
  br i1 %.080.lcssa667, label %bb.cg, label %bb.co

bb.cg:                                            ; preds = %_ZNK6embree14AABBNodeMB4D_tINS_10NodeRefPtrILi4EEELi4EE3SetclINS_4sse221BVHBuilderHairMSMBlur11BuildRecordEEEvRKT_PSA_S2_PNS_17BVHNodeRecordMB4DIS2_EEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #11
  %i.ahi = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ahj = load ptr, ptr %i.ahi, align 8, !nonnull !35, !align !37
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11, !noalias !407
  store ptr %i.bn, ptr %11, align 8, !noalias !407
  %i.ahk = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr %i.ahj, ptr %i.ahk, align 8, !noalias !407
  %i.ahl = load i64, ptr %i.bo, align 16, !noalias !407 ; 5 uses
  %i.ahm = load i64, ptr %i.bp, align 8, !noalias !407 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11, !noalias !407
  store <4 x float> splat (float +inf), ptr %12, align 16, !noalias !407
  %i.ahn = getelementptr inbounds nuw i8, ptr %12, i64 16
  store <4 x float> splat (float -inf), ptr %i.ahn, align 16, !noalias !407
  %i.aho = getelementptr inbounds nuw i8, ptr %12, i64 32
  store <4 x float> splat (float +inf), ptr %i.aho, align 16, !noalias !407
  %i.ahp = getelementptr inbounds nuw i8, ptr %12, i64 48
  store <4 x float> splat (float -inf), ptr %i.ahp, align 16, !noalias !407
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11, !noalias !407
  %i.ahq = sub i64 %i.ahm, %i.ahl                 ; 2 uses
  %i.ahr = icmp ult i64 %i.ahq, 3072
  br i1 %i.ahr, label %bb.ch, label %bb.cj, !prof !41

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %i.ahs = icmp ult i64 %i.ahl, %i.ahm
  br i1 %i.ahs, label %.lr.ph.i, label %.noexc211

.lr.ph.i:                                         ; preds = %bb.ch
  %i.aht = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ahu = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ahv = getelementptr inbounds nuw i8, ptr %5, i64 48
  br label %bb.ci

bb.ci:                                            ; preds = %.noexc283, %.lr.ph.i
  %.015.i = phi i64 [ %i.ahl, %.lr.ph.i ], [ %i.ajd, %.noexc283 ] ; 2 uses
  %i.ahw = phi <4 x float> [ splat (float +inf), %.lr.ph.i ], [ %i.aiw, %.noexc283 ]
  %i.ahx = phi <4 x float> [ splat (float -inf), %.lr.ph.i ], [ %i.aiy, %.noexc283 ]
  %i.ahy = phi <4 x float> [ splat (float +inf), %.lr.ph.i ], [ %i.aja, %.noexc283 ]
  %i.ahz = phi <4 x float> [ splat (float -inf), %.lr.ph.i ], [ %i.ajc, %.noexc283 ]
  %i.aia = load ptr, ptr %i.dd, align 16, !noalias !408
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aia, i64 32
  %i.aic = load ptr, ptr %i.aib, align 8, !noalias !408
  %i.aid = getelementptr inbounds nuw [80 x i8], ptr %i.aic, i64 %.015.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11, !noalias !408
  %i.aie = load ptr, ptr %i.ahk, align 8, !noalias !408, !nonnull !35, !align !37 ; 2 uses
  %.sroa.0.0.copyload.i282 = load <2 x float>, ptr %i.da, align 8, !noalias !408
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !408
  store <2 x float> %.sroa.0.0.copyload.i282, ptr %4, align 8, !noalias !409
  %i.aif = load ptr, ptr %i.aie, align 8, !noalias !409
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aid, i64 12
  %i.aih = load i32, ptr %i.aig, align 4, !noalias !409
  %i.aii = zext i32 %i.aih to i64
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aif, i64 488
  %i.aik = load ptr, ptr %i.aij, align 8, !noalias !409
  %i.ail = getelementptr inbounds nuw [8 x i8], ptr %i.aik, i64 %i.aii
  %i.aim = load ptr, ptr %i.ail, align 8, !noalias !409 ; 2 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aid, i64 28
  %i.aio = load i32, ptr %i.ain, align 4, !noalias !409
  %i.aip = zext i32 %i.aio to i64
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aie, i64 8
  %i.air = load ptr, ptr %i.aiq, align 8, !noalias !409
  %i.ais = load ptr, ptr %i.aim, align 16, !noalias !409
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 488
  %i.aiu = load ptr, ptr %i.ait, align 8, !noalias !409
  invoke void %i.aiu(ptr dead_on_unwind nonnull writable sret(%"struct.embree::LBBox") align 16 %5, ptr noundef nonnull align 16 dereferenceable(88) %i.aim, i64 noundef %i.aip, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef %i.air)
          to label %.noexc283 unwind label %.loopexit, !inline_history !42

.noexc283:                                        ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !408
  %i.aiv = load <4 x float>, ptr %5, align 16, !noalias !410
  %i.aiw = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ahw, <4 x float> %i.aiv) ; 2 uses
  %i.aix = load <4 x float>, ptr %i.aht, align 16, !noalias !411
  %i.aiy = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ahx, <4 x float> %i.aix) ; 2 uses
  %i.aiz = load <4 x float>, ptr %i.ahu, align 16, !noalias !412
  %i.aja = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ahy, <4 x float> %i.aiz) ; 2 uses
  %i.ajb = load <4 x float>, ptr %i.ahv, align 16, !noalias !413
  %i.ajc = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ahz, <4 x float> %i.ajb) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11, !noalias !408
  %i.ajd = add i64 %.015.i, 1                     ; 2 uses
  %exitcond602.not = icmp eq i64 %i.ajd, %i.ahm
  br i1 %exitcond602.not, label %.noexc211, label %bb.ci, !llvm.loop !2

.noexc211:                                        ; preds = %.noexc283, %bb.ch
  %.lcssa14.i = phi <4 x float> [ splat (float -inf), %bb.ch ], [ %i.ajc, %.noexc283 ]
  %.lcssa12.i = phi <4 x float> [ splat (float +inf), %bb.ch ], [ %i.aja, %.noexc283 ]
  %.lcssa10.i = phi <4 x float> [ splat (float -inf), %bb.ch ], [ %i.aiy, %.noexc283 ]
  %.lcssa.i = phi <4 x float> [ splat (float +inf), %bb.ch ], [ %i.aiw, %.noexc283 ]
  %i.aje = getelementptr inbounds nuw i8, ptr %21, i64 48
  %i.ajf = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.ajg = getelementptr inbounds nuw i8, ptr %21, i64 16
  store <4 x float> %.lcssa.i, ptr %21, align 16, !alias.scope !408
  store <4 x float> %.lcssa10.i, ptr %i.ajg, align 16, !alias.scope !408
  store <4 x float> %.lcssa12.i, ptr %i.ajf, align 16, !alias.scope !408
  store <4 x float> %.lcssa14.i, ptr %i.aje, align 16, !alias.scope !408
  br label %bb.cm

bb.cj:                                            ; preds = %bb.cg
  %i.ajh = add i64 %i.ahq, 1023
  %i.aji = lshr i64 %i.ajh, 10                    ; 2 uses
  %i.ajj = icmp eq i64 %i.aji, 1
  br i1 %i.ajj, label %bb.ck, label %bb.cl, !prof !41

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11, !noalias !414
  store i64 %i.ahl, ptr %6, align 8, !noalias !414
  %i.ajk = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ahm, ptr %i.ajk, align 8, !noalias !414
  invoke void @_ZZNK6embree5SetMB12linearBoundsINS_4sse225VirtualRecalculatePrimRefEEENS_5LBBoxINS_6Vec3faEEERKT_ENKUlRKNS_5rangeImEEE_clESD_(ptr dead_on_unwind nonnull writable sret(%"struct.embree::LBBox") align 16 %21, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.noexc213 unwind label %.loopexit.split-lp

.noexc213:                                        ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11, !noalias !414
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cj
  invoke void @_ZN6embree24parallel_reduce_internalImNS_5LBBoxINS_6Vec3faEEEZNKS_5SetMB12linearBoundsINS_4sse225VirtualRecalculatePrimRefEEES3_RKT_EUlRKNS_5rangeImEEE_ZNKS5_IS7_EES3_SA_EUlRKS3_SH_E_EET0_S8_S8_S8_S8_RKSJ_RKT1_RKT2_(ptr dead_on_unwind nonnull writable sret(%"struct.embree::LBBox") align 16 %21, i64 noundef %i.aji, i64 noundef %i.ahl, i64 noundef %i.ahm, i64 noundef 1024, ptr noundef nonnull align 16 dereferenceable(64) %12, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.cm unwind label %.loopexit.split-lp

bb.cm:                                            ; preds = %.noexc211, %.noexc213, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11, !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11, !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11, !noalias !407
  %i.ajl = load <4 x float>, ptr %21, align 16
  %i.ajm = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.ajn = load <4 x float>, ptr %i.ajm, align 16
  %i.ajo = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.ajp = load <4 x float>, ptr %i.ajo, align 16
  %i.ajq = getelementptr inbounds nuw i8, ptr %21, i64 48
  %i.ajr = load <4 x float>, ptr %i.ajq, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #11
  br label %bb.co

.loopexit:                                        ; preds = %bb.ci
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

.loopexit.split-lp:                               ; preds = %bb.ck, %bb.cl
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.cn:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #11
  br label %.body163

bb.co:                                            ; preds = %bb.cm, %_ZNK6embree14AABBNodeMB4D_tINS_10NodeRefPtrILi4EEELi4EE3SetclINS_4sse221BVHBuilderHairMSMBlur11BuildRecordEEEvRKT_PSA_S2_PNS_17BVHNodeRecordMB4DIS2_EEm.exit
  %.sroa.18.1 = phi <4 x float> [ %i.ajr, %bb.cm ], [ %.sroa.18.0.lcssa675, %_ZNK6embree14AABBNodeMB4D_tINS_10NodeRefPtrILi4EEELi4EE3SetclINS_4sse221BVHBuilderHairMSMBlur11BuildRecordEEEvRKT_PSA_S2_PNS_17BVHNodeRecordMB4DIS2_EEm.exit ]
  %.sroa.13.1 = phi <4 x float> [ %i.ajp, %bb.cm ], [ %.sroa.13.0.lcssa678, %_ZNK6embree14AABBNodeMB4D_tINS_10NodeRefPtrILi4EEELi4EE3SetclINS_4sse221BVHBuilderHairMSMBlur11BuildRecordEEEvRKT_PSA_S2_PNS_17BVHNodeRecordMB4DIS2_EEm.exit ]
  %.sroa.8.1 = phi <4 x float> [ %i.ajn, %bb.cm ], [ %.sroa.8.0.lcssa681, %_ZNK6embree14AABBNodeMB4D_tINS_10NodeRefPtrILi4EEELi4EE3SetclINS_4sse221BVHBuilderHairMSMBlur11BuildRecordEEEvRKT_PSA_S2_PNS_17BVHNodeRecordMB4DIS2_EEm.exit ]
  %.sroa.0.1 = phi <4 x float> [ %i.ajl, %bb.cm ], [ %.sroa.0.0.lcssa684, %_ZNK6embree14AABBNodeMB4D_tINS_10NodeRefPtrILi4EEELi4EE3SetclINS_4sse221BVHBuilderHairMSMBlur11BuildRecordEEEvRKT_PSA_S2_PNS_17BVHNodeRecordMB4DIS2_EEm.exit ]
  store i64 %i.zk, ptr %0, align 16
  %i.ajs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %.sroa.0.1, ptr %i.ajs, align 16
  %i.ajt = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> %.sroa.8.1, ptr %i.ajt, align 16
  %i.aju = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> %.sroa.13.1, ptr %i.aju, align 16
  %i.ajv = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x float> %.sroa.18.1, ptr %i.ajv, align 16
  %i.ajw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ajx = load i64, ptr %i.da, align 8
  store i64 %i.ajx, ptr %i.ajw, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  %i.ajy = load i64, ptr %i.cd, align 16
  %.not566 = icmp eq i64 %i.ajy, 0
  br i1 %.not566, label %_ZN6embree4sse215LocalChildListTINS0_21BVHBuilderHairMSMBlur11BuildRecordELi8EED2Ev.exit140, label %.lr.ph557

.lr.ph557:                                        ; preds = %bb.co, %_ZN6embree4sse212SharedVectorINS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS3_Lm16EEEEEE6decRefEv.exit
  %.0.i139555 = phi i64 [ %i.akw, %_ZN6embree4sse212SharedVectorINS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS3_Lm16EEEEEE6decRefEv.exit ], [ 0, %bb.co ] ; 2 uses
  %i.ajz = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.0.i139555
  %i.aka = load ptr, ptr %i.ajz, align 8          ; 2 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aka, i64 8 ; 2 uses
  %i.akc = load i64, ptr %i.akb, align 8
  %i.akd = add i64 %i.akc, -1                     ; 2 uses
  store i64 %i.akd, ptr %i.akb, align 8
  %i.ake = icmp eq i64 %i.akd, 0
  br i1 %i.ake, label %bb.cp, label %_ZN6embree4sse212SharedVectorINS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS3_Lm16EEEEEE6decRefEv.exit

bb.cp:                                            ; preds = %.lr.ph557
  %i.akf = load ptr, ptr %i.aka, align 8          ; 6 uses
  %i.akg = icmp eq ptr %i.akf, null
  br i1 %i.akg, label %_ZN6embree4sse212SharedVectorINS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS3_Lm16EEEEEE6decRefEv.exit, label %.preheader484

.preheader484:                                    ; preds = %bb.cp
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akf, i64 32
  %i.aki = load ptr, ptr %i.akh, align 8          ; 3 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %i.akf, i64 24
  %i.akk = load i64, ptr %i.akj, align 8          ; 3 uses
  %.not.i223 = icmp eq ptr %i.aki, null
  br i1 %.not.i223, label %.noexc224, label %bb.cq

bb.cq:                                            ; preds = %.preheader484
  %i.akl = mul i64 %i.akk, 80                     ; 2 uses
  %i.akm = icmp ugt i64 %i.akl, 29360127
  br i1 %i.akm, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akf, i64 8
  %i.ako = load i8, ptr %i.akn, align 8, !range !34, !noundef !35
  %i.akp = trunc nuw i8 %i.ako to i1
  invoke void @_ZN6embree7os_freeEPvmb(ptr noundef nonnull %i.aki, i64 noundef %i.akl, i1 noundef zeroext %i.akp)
          to label %.noexc224 unwind label %bb.cu

bb.cs:                                            ; preds = %bb.cq
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.aki)
          to label %.noexc224 unwind label %bb.cu

.noexc224:                                        ; preds = %bb.cs, %bb.cr, %.preheader484
  %.not9.i = icmp eq i64 %i.akk, 0
  br i1 %.not9.i, label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i, label %bb.ct

bb.ct:                                            ; preds = %.noexc224
  %i.akq = load ptr, ptr %i.akf, align 8          ; 2 uses
  %i.akr = mul i64 %i.akk, -80
  %i.aks = load ptr, ptr %i.akq, align 8
  %i.akt = load ptr, ptr %i.aks, align 8
  invoke void %i.akt(ptr noundef nonnull align 8 dereferenceable(8) %i.akq, i64 noundef %i.akr, i1 noundef zeroext true)
          to label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i unwind label %bb.cu, !inline_history !0

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %bb.cr
  %i.aku = landingpad { ptr, i32 }
          catch ptr null
  %i.akv = extractvalue { ptr, i32 } %i.aku, 0
  call void @__clang_call_terminate(ptr %i.akv) #29
  unreachable

_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i: ; preds = %bb.ct, %.noexc224
  call void @_ZdlPv(ptr noundef nonnull %i.akf) #26
  br label %_ZN6embree4sse212SharedVectorINS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS3_Lm16EEEEEE6decRefEv.exit

_ZN6embree4sse212SharedVectorINS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS3_Lm16EEEEEE6decRefEv.exit: ; preds = %.lr.ph557, %bb.cp, %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i
  %i.akw = add nuw i64 %.0.i139555, 1             ; 2 uses
  %i.akx = load i64, ptr %i.cd, align 16
  %i.aky = icmp ult i64 %i.akw, %i.akx
  br i1 %i.aky, label %.lr.ph557, label %_ZN6embree4sse215LocalChildListTINS0_21BVHBuilderHairMSMBlur11BuildRecordELi8EED2Ev.exit140, !llvm.loop !4

_ZN6embree4sse215LocalChildListTINS0_21BVHBuilderHairMSMBlur11BuildRecordELi8EED2Ev.exit140: ; preds = %_ZN6embree4sse212SharedVectorINS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS3_Lm16EEEEEE6decRefEv.exit, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  br label %bb.db

.body163:                                         ; preds = %bb.cn, %bb.cf, %.body.i, %.body.i169, %bb.cc, %bb.r
  %.pn101.pn = phi { ptr, i32 } [ %i.ahh, %bb.cf ], [ %i.fr, %bb.r ], [ %lpad.phi, %bb.cn ], [ %eh.lpad-body.i170, %.body.i169 ], [ %eh.lpad-body.i, %.body.i ], [ %i.agm, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  %i.akz = load i64, ptr %i.cd, align 16
  %.not565 = icmp eq i64 %i.akz, 0
  br i1 %.not565, label %_ZN6embree4sse215LocalChildListTINS0_21BVHBuilderHairMSMBlur11BuildRecordELi8EED2Ev.exit, label %.lr.ph559

.lr.ph559:                                        ; preds = %.body163, %_ZN6embree4sse212SharedVectorINS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS3_Lm16EEEEEE6decRefEv.exit159
  %.0.i138558 = phi i64 [ %i.alx, %_ZN6embree4sse212SharedVectorINS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS3_Lm16EEEEEE6decRefEv.exit159 ], [ 0, %.body163 ] ; 2 uses
  %i.ala = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.0.i138558
  %i.alb = load ptr, ptr %i.ala, align 8          ; 2 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 8 ; 2 uses
  %i.ald = load i64, ptr %i.alc, align 8
  %i.ale = add i64 %i.ald, -1                     ; 2 uses
  store i64 %i.ale, ptr %i.alc, align 8
  %i.alf = icmp eq i64 %i.ale, 0
  br i1 %i.alf, label %bb.cv, label %_ZN6embree4sse212SharedVectorINS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS3_Lm16EEEEEE6decRefEv.exit159

bb.cv:                                            ; preds = %.lr.ph559
  %i.alg = load ptr, ptr %i.alb, align 8          ; 6 uses
  %i.alh = icmp eq ptr %i.alg, null
  br i1 %i.alh, label %_ZN6embree4sse212SharedVectorINS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS3_Lm16EEEEEE6decRefEv.exit159, label %.preheader

.preheader:                                       ; preds = %bb.cv
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alg, i64 32
  %i.alj = load ptr, ptr %i.ali, align 8          ; 3 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alg, i64 24
  %i.all = load i64, ptr %i.alk, align 8          ; 3 uses
  %.not.i227 = icmp eq ptr %i.alj, null
  br i1 %.not.i227, label %.noexc229, label %bb.cw

bb.cw:                                            ; preds = %.preheader
  %i.alm = mul i64 %i.all, 80                     ; 2 uses
  %i.aln = icmp ugt i64 %i.alm, 29360127
  br i1 %i.aln, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.alo = getelementptr inbounds nuw i8, ptr %i.alg, i64 8
  %i.alp = load i8, ptr %i.alo, align 8, !range !34, !noundef !35
  %i.alq = trunc nuw i8 %i.alp to i1
  invoke void @_ZN6embree7os_freeEPvmb(ptr noundef nonnull %i.alj, i64 noundef %i.alm, i1 noundef zeroext %i.alq)
          to label %.noexc229 unwind label %bb.da

bb.cy:                                            ; preds = %bb.cw
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.alj)
          to label %.noexc229 unwind label %bb.da

.noexc229:                                        ; preds = %bb.cy, %bb.cx, %.preheader
  %.not9.i228 = icmp eq i64 %i.all, 0
  br i1 %.not9.i228, label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i158, label %bb.cz

bb.cz:                                            ; preds = %.noexc229
  %i.alr = load ptr, ptr %i.alg, align 8          ; 2 uses
  %i.als = mul i64 %i.all, -80
  %i.alt = load ptr, ptr %i.alr, align 8
  %i.alu = load ptr, ptr %i.alt, align 8
  invoke void %i.alu(ptr noundef nonnull align 8 dereferenceable(8) %i.alr, i64 noundef %i.als, i1 noundef zeroext true)
          to label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i158 unwind label %bb.da, !inline_history !0

bb.da:                                            ; preds = %bb.cz, %bb.cy, %bb.cx
  %i.alv = landingpad { ptr, i32 }
          catch ptr null
  %i.alw = extractvalue { ptr, i32 } %i.alv, 0
  call void @__clang_call_terminate(ptr %i.alw) #29
  unreachable

_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i158: ; preds = %bb.cz, %.noexc229
  call void @_ZdlPv(ptr noundef nonnull %i.alg) #26
  br label %_ZN6embree4sse212SharedVectorINS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS3_Lm16EEEEEE6decRefEv.exit159

_ZN6embree4sse212SharedVectorINS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS3_Lm16EEEEEE6decRefEv.exit159: ; preds = %.lr.ph559, %bb.cv, %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i158
  %i.alx = add nuw i64 %.0.i138558, 1             ; 2 uses
  %i.aly = load i64, ptr %i.cd, align 16
  %i.alz = icmp ult i64 %i.alx, %i.aly
  br i1 %i.alz, label %.lr.ph559, label %_ZN6embree4sse215LocalChildListTINS0_21BVHBuilderHairMSMBlur11BuildRecordELi8EED2Ev.exit, !llvm.loop !4

_ZN6embree4sse215LocalChildListTINS0_21BVHBuilderHairMSMBlur11BuildRecordELi8EED2Ev.exit: ; preds = %_ZN6embree4sse212SharedVectorINS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS3_Lm16EEEEEE6decRefEv.exit159, %.body163
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  br label %bb.dc

bb.db:                                            ; preds = %_ZN6embree4sse215LocalChildListTINS0_21BVHBuilderHairMSMBlur11BuildRecordELi8EED2Ev.exit140, %bb.j
  ret void

bb.dc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread471, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN6embree4sse215LocalChildListTINS0_21BVHBuilderHairMSMBlur11BuildRecordELi8EED2Ev.exit
  %.pn104.pn = phi { ptr, i32 } [ %.pn104464, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread471 ], [ %.pn101.pn, %_ZN6embree4sse215LocalChildListTINS0_21BVHBuilderHairMSMBlur11BuildRecordELi8EED2Ev.exit ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn104.pn

bb.dd:                                            ; preds = %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS1_11BuildRecordERS10_S13_RbS14_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 16 dereferenceable(176) %2, ptr noundef nonnull align 16 dereferenceable(176) %3, ptr noundef nonnull align 16 dereferenceable(176) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.embree::range", align 8    ; 5 uses
  %8 = alloca %"struct.embree::range", align 8    ; 5 uses
  %9 = alloca %"struct.embree::range", align 8    ; 5 uses
  %10 = alloca %"struct.embree::range", align 8   ; 5 uses
  %11 = alloca %"struct.embree::BBox.29", align 8 ; 8 uses
  %12 = alloca %"struct.embree::BBox.29", align 8 ; 8 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %13 = alloca %class.anon.209, align 8           ; 11 uses
  %14 = alloca %"class.embree::PrimInfoMBT", align 16 ; 17 uses
  %15 = alloca %"class.embree::PrimInfoMBT", align 16 ; 13 uses
  %16 = alloca %class.anon.210, align 8           ; 5 uses
  %17 = alloca %class.anon.211, align 8           ; 9 uses
  %18 = alloca %"class.embree::PrimInfoMBT", align 16 ; 17 uses
  %19 = alloca %"class.embree::PrimInfoMBT", align 16 ; 13 uses
  %20 = alloca %class.anon.212, align 8           ; 5 uses
  %21 = alloca %"struct.embree::sse2::UnalignedHeuristicArrayBinningMB<embree::PrimRefMB, 32>::BinBoundsAndCenter", align 16 ; 8 uses
  %22 = alloca %"class.embree::PrimInfoMBT", align 16 ; 14 uses
  %23 = alloca %"class.embree::PrimInfoMBT", align 16 ; 14 uses
  %24 = alloca %"struct.embree::vint_impl", align 16 ; 4 uses
  %25 = alloca %"struct.embree::vboolf_impl", align 16 ; 4 uses
  %26 = alloca %class.anon.185, align 8           ; 7 uses
  %27 = alloca %class.anon.186, align 1           ; 3 uses
  %28 = alloca %class.anon.188, align 1           ; 3 uses
  %29 = alloca %"struct.embree::EmptyTy", align 1 ; 3 uses
  %30 = alloca %"class.embree::PrimInfoMBT", align 16 ; 14 uses
  %31 = alloca %"class.embree::PrimInfoMBT", align 16 ; 14 uses
  %32 = alloca %"struct.embree::vint_impl", align 16 ; 4 uses
  %33 = alloca %"struct.embree::vboolf_impl", align 16 ; 4 uses
  %34 = alloca %class.anon.161, align 8           ; 6 uses
  %35 = alloca %class.anon.162, align 1           ; 3 uses
  %36 = alloca %class.anon.164, align 1           ; 3 uses
  %37 = alloca %"struct.embree::EmptyTy", align 1 ; 3 uses
  %38 = alloca %"struct.embree::sse2::BinSplit", align 16 ; 7 uses
  %39 = alloca %"struct.embree::sse2::BinSplit", align 16 ; 12 uses
  %40 = alloca %"struct.embree::LinearSpace3", align 16 ; 10 uses
  %41 = alloca %"struct.embree::LinearSpace3", align 16 ; 6 uses
  %42 = alloca %"struct.embree::SetMB", align 16  ; 4 uses
  %43 = alloca %"struct.embree::sse2::BinSplit", align 16 ; 7 uses
  %44 = alloca %"struct.embree::sse2::BinSplit", align 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 156 ; 3 uses
  %i.g = load float, ptr %i.f, align 4
  %i.h = load float, ptr %i.e, align 8
  %i.i = fsub float %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = load <4 x float>, ptr %i.j, align 16, !noalias !434
  %i.l = load <4 x float>, ptr %i.b, align 16, !noalias !434
  %i.m = fsub <4 x float> %i.k, %i.l              ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.p = load <4 x float>, ptr %i.o, align 16, !noalias !435
  %i.q = load <4 x float>, ptr %i.n, align 16, !noalias !435
  %i.r = fsub <4 x float> %i.p, %i.q              ; 3 uses
  %i.s = shufflevector <4 x float> %i.m, <4 x float> %i.r, <2 x i32> <i32 1, i32 5> ; 2 uses
  %i.t = shufflevector <4 x float> %i.m, <4 x float> %i.r, <2 x i32> <i32 2, i32 6> ; 2 uses
  %i.u = fadd <2 x float> %i.s, %i.t
  %i.v = fmul <2 x float> %i.s, %i.t
  %i.w = shufflevector <4 x float> %i.m, <4 x float> %i.r, <2 x i32> <i32 0, i32 4>
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.u, <2 x float> %i.v) ; 2 uses
  %shift = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.x, %shift
  %i.y = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.z = fmul float %i.y, 5.000000e-01
  %i.aa = fmul float %i.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ac = load i64, ptr %i.ab, align 16
  %notmask = shl nsw i64 -1, %i.d
  %i.ad = xor i64 %notmask, -1
  %i.ae = add i64 %i.ac, %i.ad
  %i.af = lshr i64 %i.ae, %i.d
  %i.ag = uitofp i64 %i.af to float
  %i.ah = fmul float %i.aa, %i.ag                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #11
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @_ZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE4findERKNS_5SetMBEm(ptr dead_on_unwind nonnull writable sret(%"struct.embree::sse2::BinSplit") align 16 %38, ptr noundef nonnull align 1 dereferenceable(1) %i.ai, ptr noundef nonnull align 16 dereferenceable(152) %i.b, i64 noundef %i.d)
  %i.aj = load float, ptr %38, align 16           ; 4 uses
  %i.ak = fcmp olt float %i.aj, +inf
  %i.al = select i1 %i.ak, float %i.aj, float +inf ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #11
  store float +inf, ptr %39, align 16
  %i.am = getelementptr inbounds nuw i8, ptr %39, i64 4 ; 2 uses
  store i32 -1, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  store i32 0, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %39, i64 12
  store i32 0, ptr %i.ao, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #11
  %i.ap = fmul float %i.ah, f0x3F333333
  %i.aq = fcmp ogt float %i.aj, %i.ap
  br i1 %i.aq, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %39, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #11
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = load ptr, ptr %i.at, align 8
  call void @_ZN6embree4sse232UnalignedHeuristicArrayBinningMBINS_9PrimRefMBELm32EE21computeAlignedSpaceMBEPNS_5SceneERKNS_5SetMBE(ptr dead_on_unwind nonnull writable sret(%"struct.embree::LinearSpace3") align 16 %41, ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef %i.au, ptr noundef nonnull align 16 dereferenceable(152) %i.b)
  %i.av = load <4 x float>, ptr %41, align 16
  store <4 x float> %i.av, ptr %40, align 16
  %i.aw = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %40, i64 16
  %i.ay = load <4 x float>, ptr %i.aw, align 16
  store <4 x float> %i.ay, ptr %i.ax, align 16
  %i.az = getelementptr inbounds nuw i8, ptr %41, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %40, i64 32
  %i.bb = load <4 x float>, ptr %i.az, align 16
  store <4 x float> %i.bb, ptr %i.ba, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #11
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !35, !align !37
  call void @_ZNK6embree5SetMB8primInfoINS_4sse225VirtualRecalculatePrimRefEEEKS0_RKT_RKNS_12LinearSpace3INS_6Vec3faEEE(ptr dead_on_unwind nonnull writable sret(%"struct.embree::SetMB") align 16 %42, ptr noundef nonnull align 16 dereferenceable(152) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 16 dereferenceable(48) %40)
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #11
  %i.be = load i64, ptr %i.c, align 8
  call void @_ZN6embree4sse232UnalignedHeuristicArrayBinningMBINS_9PrimRefMBELm32EE4findERKNS_5SetMBEmRKNS_12LinearSpace3INS_6Vec3faEEE(ptr dead_on_unwind nonnull writable sret(%"struct.embree::sse2::BinSplit") align 16 %43, ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull align 16 dereferenceable(152) %42, i64 noundef %i.be, ptr noundef nonnull align 16 dereferenceable(48) %40)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %39, ptr noundef nonnull align 16 dereferenceable(64) %43, i64 16, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %43, i64 16
  %i.bg = load i64, ptr %i.bf, align 16
  store i64 %i.bg, ptr %i.ar, align 16
  %i.bh = getelementptr inbounds nuw i8, ptr %39, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %43, i64 32
  %i.bj = load <4 x float>, ptr %i.bi, align 16
  store <4 x float> %i.bj, ptr %i.bh, align 16
  %i.bk = getelementptr inbounds nuw i8, ptr %39, i64 48
  %i.bl = getelementptr inbounds nuw i8, ptr %43, i64 48
  %i.bm = load <4 x float>, ptr %i.bl, align 16
  store <4 x float> %i.bm, ptr %i.bk, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #11
  %i.bn = load float, ptr %39, align 16
  %i.bo = fmul float %i.bn, 1.300000e+00          ; 3 uses
  %i.bp = fcmp olt float %i.bo, %i.al
  %i.bq = select i1 %i.bp, float %i.bo, float %i.al
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.041 = phi float [ %i.bq, %bb.b ], [ %i.al, %bb.a ] ; 5 uses
  %.040 = phi float [ %i.bo, %bb.b ], [ +inf, %bb.a ]
  %i.br = fmul float %i.ah, 5.000000e-01
  %i.bs = fcmp ogt float %.041, %i.br
  br i1 %i.bs, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.bt = load float, ptr %i.f, align 4
  %i.bu = load float, ptr %i.e, align 8
  %i.bv = fsub float %i.bt, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = uitofp i64 %i.bx to float
  %i.bz = fdiv float 1.010000e+00, %i.by
  %i.ca = fcmp ogt float %i.bv, %i.bz
  br i1 %i.ca, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #11
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cc = load i64, ptr %i.c, align 8
  call void @_ZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_25VirtualRecalculatePrimRefELm2EE4findERKNS_5SetMBEm(ptr dead_on_unwind nonnull writable sret(%"struct.embree::sse2::BinSplit") align 16 %44, ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 16 dereferenceable(152) %i.b, i64 noundef %i.cc)
  %.sroa.0.0.copyload = load float, ptr %44, align 16 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %44, i64 8
  %.sroa.6.0.copyload194 = load float, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #11
  %i.cd = fcmp olt float %.sroa.0.0.copyload, %.041
  %i.ce = select i1 %i.cd, float %.sroa.0.0.copyload, float %.041
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.6.0 = phi float [ %.sroa.6.0.copyload194, %bb.e ], [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %.1 = phi float [ %i.ce, %bb.e ], [ %.041, %bb.d ], [ %.041, %bb.c ] ; 4 uses
  %.0 = phi float [ %.sroa.0.0.copyload, %bb.e ], [ +inf, %bb.d ], [ +inf, %bb.c ]
  %i.cf = call float @llvm.fabs.f32(float %.1)
  %i.cg = fcmp ueq float %i.cf, +inf
  br i1 %i.cg, label %bb.g, label %bb.h, !prof !40

end_hunk_4
begin_hunk_5_@_ZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE4findERKNS_5SetMBEm:.preheader346.preheader
  %i.jj = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8 ; 2 uses
  %i.jl = load i32, ptr %i.jk, align 8
  %i.jm = add i32 %i.jl, %i.hy
  store i32 %i.jm, ptr %i.jk, align 8
  %i.jn = getelementptr inbounds nuw [192 x i8], ptr %10, i64 %i.ji ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 128 ; 2 uses
  %i.jp = load <4 x float>, ptr %i.jo, align 64, !noalias !872
  %i.jq = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.jp, <4 x float> %i.ha)
  store <4 x float> %i.jq, ptr %i.jo, align 64
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jn, i64 144 ; 2 uses
  %i.js = load <4 x float>, ptr %i.jr, align 16, !noalias !873
  %i.jt = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.js, <4 x float> %i.hc)
  store <4 x float> %i.jt, ptr %i.jr, align 16
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jn, i64 160 ; 2 uses
  %i.jv = load <4 x float>, ptr %i.ju, align 32, !noalias !874
  %i.jw = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.jv, <4 x float> %i.he)
  store <4 x float> %i.jw, ptr %i.ju, align 32
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jn, i64 176 ; 2 uses
  %i.jy = load <4 x float>, ptr %i.jx, align 16, !noalias !875
  %i.jz = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.jy, <4 x float> %i.hg)
  store <4 x float> %i.jz, ptr %i.jx, align 16
  br label %_ZN6embree12bin_parallelINS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT_PKT1_mmmmRKT0_.exit

bb.d:                                             ; preds = %_ZN6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEE5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  store ptr %i.a, ptr %8, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %11, ptr %i.ka, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  store ptr %11, ptr %9, align 8
  %i.kb = add i64 %i.u, 1023
  %i.kc = lshr i64 %i.kb, 10                      ; 2 uses
  %i.kd = icmp eq i64 %i.kc, 1
  br i1 %i.kd, label %bb.e, label %bb.f, !prof !41

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11, !noalias !876
  store i64 %i.t, ptr %4, align 8, !noalias !876
  %i.ke = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.s, ptr %i.ke, align 8, !noalias !876
  call void @_ZZN6embree12bin_parallelINS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT_PKT1_mmmmRKT0_ENKUlRKNS_5rangeImEEE_clESL_(ptr dead_on_unwind nonnull writable sret(%"struct.embree::sse2::BinInfoT") align 64 %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11, !noalias !876
  br label %_ZN6embree15parallel_reduceImNS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEEZNS_12bin_parallelIS7_NS1_10BinMappingILm32EEES3_EEvRT_PKT1_mmmmRKT0_EUlRKNS_5rangeImEEE_ZNS8_IS7_SA_S3_EEvSC_SF_mmmmSI_EUlRKS7_SP_E_EESG_SB_SB_SB_SI_RSE_RKT2_.exit

bb.f:                                             ; preds = %bb.d
  call void @_ZN6embree24parallel_reduce_internalImNS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEEZNS_12bin_parallelIS7_NS1_10BinMappingILm32EEES3_EEvRT_PKT1_mmmmRKT0_EUlRKNS_5rangeImEEE_ZNS8_IS7_SA_S3_EEvSC_SF_mmmmSI_EUlRKS7_SP_E_EESG_SB_SB_SB_SB_SI_RSE_RKT2_(ptr dead_on_unwind nonnull writable sret(%"struct.embree::sse2::BinInfoT") align 64 %7, i64 noundef %i.kc, i64 noundef %i.t, i64 noundef %i.s, i64 noundef 1024, ptr noundef nonnull align 64 dereferenceable(6656) %10, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %_ZN6embree15parallel_reduceImNS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEEZNS_12bin_parallelIS7_NS1_10BinMappingILm32EEES3_EEvRT_PKT1_mmmmRKT0_EUlRKNS_5rangeImEEE_ZNS8_IS7_SA_S3_EEvSC_SF_mmmmSI_EUlRKS7_SP_E_EESG_SB_SB_SB_SI_RSE_RKT2_.exit

_ZN6embree15parallel_reduceImNS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEEZNS_12bin_parallelIS7_NS1_10BinMappingILm32EEES3_EEvRT_PKT1_mmmmRKT0_EUlRKNS_5rangeImEEE_ZNS8_IS7_SA_S3_EEvSC_SF_mmmmSI_EUlRKS7_SP_E_EESG_SB_SB_SB_SI_RSE_RKT2_.exit: ; preds = %bb.e, %bb.f
  %i.kf = call noundef nonnull align 64 dereferenceable(6656) ptr @_ZN6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEaSEOS6_(ptr noundef nonnull align 64 dereferenceable(6656) %10, ptr noundef nonnull align 64 dereferenceable(6656) %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %_ZN6embree12bin_parallelINS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT_PKT1_mmmmRKT0_.exit

_ZN6embree12bin_parallelINS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT_PKT1_mmmmRKT0_.exit: ; preds = %bb.c, %._crit_edge, %bb.a, %_ZN6embree15parallel_reduceImNS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEEZNS_12bin_parallelIS7_NS1_10BinMappingILm32EEES3_EEvRT_PKT1_mmmmRKT0_EUlRKNS_5rangeImEEE_ZNS8_IS7_SA_S3_EEvSC_SF_mmmmSI_EUlRKS7_SP_E_EESG_SB_SB_SB_SI_RSE_RKT2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11, !noalias !877
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11, !noalias !877
  %i.kg = load i64, ptr %11, align 16, !noalias !877 ; 4 uses
  %.047.i349 = add i64 %i.kg, -1                  ; 2 uses
  %.not.i350 = icmp eq i64 %.047.i349, 0
  br i1 %.not.i350, label %.preheader, label %.lr.ph365

._crit_edge366:                                   ; preds = %.lr.ph365
  %i.kh = trunc i64 %3 to i32                     ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.kh
  %i.ki = xor i32 %notmask.i, -1
  %i.kj = insertelement <4 x i32> poison, i32 %i.ki, i64 0
  %i.kk = shufflevector <4 x i32> %i.kj, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kl = icmp ugt i64 %i.kg, 1
  br i1 %i.kl, label %.lr.ph384, label %.preheader

.lr.ph365:                                        ; preds = %_ZN6embree12bin_parallelINS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT_PKT1_mmmmRKT0_.exit, %.lr.ph365
  %.047.i363 = phi i64 [ %.047.i, %.lr.ph365 ], [ %.047.i349, %_ZN6embree12bin_parallelINS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT_PKT1_mmmmRKT0_.exit ] ; 5 uses
  %i.km = phi <4 x i32> [ %i.kp, %.lr.ph365 ], [ zeroinitializer, %_ZN6embree12bin_parallelINS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT_PKT1_mmmmRKT0_.exit ]
  %.sroa.2699.0362 = phi <4 x float> [ %i.lc, %.lr.ph365 ], [ splat (float -inf), %_ZN6embree12bin_parallelINS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT_PKT1_mmmmRKT0_.exit ]
  %.sroa.1895.0361 = phi <4 x float> [ %i.kz, %.lr.ph365 ], [ splat (float +inf), %_ZN6embree12bin_parallelINS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT_PKT1_mmmmRKT0_.exit ]
  %.sroa.1091.0360 = phi <4 x float> [ %i.kw, %.lr.ph365 ], [ splat (float -inf), %_ZN6embree12bin_parallelINS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT_PKT1_mmmmRKT0_.exit ]
  %.sroa.087.0359 = phi <4 x float> [ %i.kt, %.lr.ph365 ], [ splat (float +inf), %_ZN6embree12bin_parallelINS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT_PKT1_mmmmRKT0_.exit ]
  %.sroa.2683.0358 = phi <4 x float> [ %i.lr, %.lr.ph365 ], [ splat (float -inf), %_ZN6embree12bin_parallelINS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT_PKT1_mmmmRKT0_.exit ]
  %.sroa.1879.0357 = phi <4 x float> [ %i.lo, %.lr.ph365 ], [ splat (float +inf), %_ZN6embree12bin_parallelINS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT_PKT1_mmmmRKT0_.exit ]
  %.sroa.1075.0356 = phi <4 x float> [ %i.ll, %.lr.ph365 ], [ splat (float -inf), %_ZN6embree12bin_parallelINS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT_PKT1_mmmmRKT0_.exit ]
  %.sroa.071.0355 = phi <4 x float> [ %i.li, %.lr.ph365 ], [ splat (float +inf), %_ZN6embree12bin_parallelINS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT_PKT1_mmmmRKT0_.exit ]
  %.sroa.26.0354 = phi <4 x float> [ %i.mf, %.lr.ph365 ], [ splat (float -inf), %_ZN6embree12bin_parallelINS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT_PKT1_mmmmRKT0_.exit ]
  %.sroa.18.0353 = phi <4 x float> [ %i.mc, %.lr.ph365 ], [ splat (float +inf), %_ZN6embree12bin_parallelINS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT_PKT1_mmmmRKT0_.exit ]
  %.sroa.10.0352 = phi <4 x float> [ %i.lz, %.lr.ph365 ], [ splat (float -inf), %_ZN6embree12bin_parallelINS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT_PKT1_mmmmRKT0_.exit ]
  %.sroa.058.0351 = phi <4 x float> [ %i.lw, %.lr.ph365 ], [ splat (float +inf), %_ZN6embree12bin_parallelINS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT_PKT1_mmmmRKT0_.exit ]
  %i.kn = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.047.i363
  %i.ko = load <4 x i32>, ptr %i.kn, align 16, !noalias !878
  %i.kp = add <4 x i32> %i.ko, %i.km              ; 2 uses
  %i.kq = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.047.i363
  store <4 x i32> %i.kp, ptr %i.kq, align 16, !noalias !877
  %i.kr = getelementptr inbounds nuw [192 x i8], ptr %10, i64 %.047.i363 ; 12 uses
  %i.ks = load <4 x float>, ptr %i.kr, align 64, !noalias !879
  %i.kt = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.087.0359, <4 x float> %i.ks) ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.kv = load <4 x float>, ptr %i.ku, align 16, !noalias !880
  %i.kw = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1091.0360, <4 x float> %i.kv) ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kr, i64 32
  %i.ky = load <4 x float>, ptr %i.kx, align 32, !noalias !881
  %i.kz = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1895.0361, <4 x float> %i.ky) ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kr, i64 48
  %i.lb = load <4 x float>, ptr %i.la, align 16, !noalias !882
  %i.lc = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.2699.0362, <4 x float> %i.lb) ; 2 uses
  %i.ld = fsub <4 x float> %i.kw, %i.kt           ; 3 uses
  %i.le = fsub <4 x float> %i.lc, %i.kz           ; 3 uses
  %i.lf = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.047.i363
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kr, i64 64
  %i.lh = load <4 x float>, ptr %i.lg, align 64, !noalias !883
  %i.li = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.071.0355, <4 x float> %i.lh) ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kr, i64 80
  %i.lk = load <4 x float>, ptr %i.lj, align 16, !noalias !884
  %i.ll = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1075.0356, <4 x float> %i.lk) ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kr, i64 96
  %i.ln = load <4 x float>, ptr %i.lm, align 32, !noalias !885
  %i.lo = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1879.0357, <4 x float> %i.ln) ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kr, i64 112
  %i.lq = load <4 x float>, ptr %i.lp, align 16, !noalias !886
  %i.lr = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.2683.0358, <4 x float> %i.lq) ; 2 uses
  %i.ls = fsub <4 x float> %i.ll, %i.li           ; 3 uses
  %i.lt = fsub <4 x float> %i.lr, %i.lo           ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.kr, i64 128
  %i.lv = load <4 x float>, ptr %i.lu, align 64, !noalias !887
  %i.lw = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.058.0351, <4 x float> %i.lv) ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.kr, i64 144
  %i.ly = load <4 x float>, ptr %i.lx, align 16, !noalias !888
  %i.lz = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.10.0352, <4 x float> %i.ly) ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kr, i64 160
  %i.mb = load <4 x float>, ptr %i.ma, align 32, !noalias !889
  %i.mc = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.18.0353, <4 x float> %i.mb) ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.kr, i64 176
  %i.me = load <4 x float>, ptr %i.md, align 16, !noalias !890
  %i.mf = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.26.0354, <4 x float> %i.me) ; 2 uses
  %i.mg = fsub <4 x float> %i.lz, %i.lw           ; 5 uses
  %i.mh = fsub <4 x float> %i.mf, %i.mc           ; 4 uses
  %i.mi = shufflevector <4 x float> %i.ld, <4 x float> %i.ls, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison> ; 2 uses
  %i.mj = insertelement <4 x float> %i.mi, float -0.000000e+00, i64 3
  %i.mk = shufflevector <4 x float> %i.mj, <4 x float> %i.mg, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ml = shufflevector <4 x float> %i.ld, <4 x float> %i.ls, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison> ; 2 uses
  %i.mm = insertelement <4 x float> %i.ml, float -0.000000e+00, i64 3
  %i.mn = shufflevector <4 x float> %i.mm, <4 x float> %i.mg, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.mo = fadd <4 x float> %i.mk, %i.mn
  %i.mp = insertelement <4 x float> %i.mi, float 1.000000e+00, i64 3
  %i.mq = shufflevector <4 x float> %i.mp, <4 x float> %i.mg, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.mr = insertelement <4 x float> %i.ml, float 1.000000e+00, i64 3
  %i.ms = shufflevector <4 x float> %i.mr, <4 x float> %i.mg, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.mt = fmul <4 x float> %i.mq, %i.ms
  %i.mu = shufflevector <4 x float> %i.ld, <4 x float> %i.ls, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.mv = insertelement <4 x float> %i.mu, float 0.000000e+00, i64 3
  %i.mw = shufflevector <4 x float> %i.mv, <4 x float> %i.mg, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.mx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mw, <4 x float> %i.mo, <4 x float> %i.mt)
  %i.my = shufflevector <4 x float> %i.le, <4 x float> %i.lt, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.mz = insertelement <4 x float> %i.my, float -0.000000e+00, i64 3
  %i.na = shufflevector <4 x float> %i.mz, <4 x float> %i.mh, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.nb = shufflevector <4 x float> %i.le, <4 x float> %i.lt, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison> ; 2 uses
  %i.nc = insertelement <4 x float> %i.nb, float -0.000000e+00, i64 3
  %i.nd = shufflevector <4 x float> %i.nc, <4 x float> %i.mh, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.ne = fadd <4 x float> %i.na, %i.nd
  %i.nf = insertelement <4 x float> %i.nb, float 1.000000e+00, i64 3
  %i.ng = shufflevector <4 x float> %i.nf, <4 x float> %i.mh, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.nh = fmul <4 x float> %i.na, %i.ng
  %i.ni = shufflevector <4 x float> %i.le, <4 x float> %i.lt, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.nj = insertelement <4 x float> %i.ni, float 0.000000e+00, i64 3
  %i.nk = shufflevector <4 x float> %i.nj, <4 x float> %i.mh, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.nl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nk, <4 x float> %i.ne, <4 x float> %i.nh)
  %i.nm = fadd <4 x float> %i.mx, %i.nl
  %i.nn = fmul <4 x float> %i.nm, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 0.000000e+00>
  store <4 x float> %i.nn, ptr %i.lf, align 16, !noalias !877
  %.047.i = add i64 %.047.i363, -1                ; 2 uses
  %.not.i = icmp eq i64 %.047.i, 0
  br i1 %.not.i, label %._crit_edge366, label %.lr.ph365, !llvm.loop !11

.preheader:                                       ; preds = %.lr.ph384, %_ZN6embree12bin_parallelINS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT_PKT1_mmmmRKT0_.exit, %._crit_edge366
  %.v368.lcssa = phi <4 x float> [ splat (float +inf), %._crit_edge366 ], [ splat (float +inf), %_ZN6embree12bin_parallelINS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT_PKT1_mmmmRKT0_.exit ], [ %.v, %.lr.ph384 ] ; 3 uses
  %.lcssa = phi <4 x i32> [ zeroinitializer, %._crit_edge366 ], [ zeroinitializer, %_ZN6embree12bin_parallelINS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT_PKT1_mmmmRKT0_.exit ], [ %i.re, %.lr.ph384 ] ; 3 uses
  %i.no = load float, ptr %i.x, align 16, !noalias !877
  %i.np = fcmp oeq float %i.no, 0.000000e+00
  br i1 %i.np, label %bb.j, label %bb.g, !prof !40

.lr.ph384:                                        ; preds = %._crit_edge366, %.lr.ph384
  %.048.i382 = phi i64 [ %i.rf, %.lr.ph384 ], [ 1, %._crit_edge366 ] ; 4 uses
  %i.nq = phi <4 x i32> [ %i.re, %.lr.ph384 ], [ zeroinitializer, %._crit_edge366 ]
  %.sroa.025.0.load53381 = phi <4 x float> [ %.v, %.lr.ph384 ], [ splat (float +inf), %._crit_edge366 ] ; 2 uses
  %i.nr = phi <4 x i32> [ %i.nw, %.lr.ph384 ], [ zeroinitializer, %._crit_edge366 ]
  %.sroa.2699.1380 = phi <4 x float> [ %i.oi, %.lr.ph384 ], [ splat (float -inf), %._crit_edge366 ]
  %.sroa.1895.1379 = phi <4 x float> [ %i.of, %.lr.ph384 ], [ splat (float +inf), %._crit_edge366 ]
  %.sroa.1091.1378 = phi <4 x float> [ %i.oc, %.lr.ph384 ], [ splat (float -inf), %._crit_edge366 ]
  %.sroa.087.1377 = phi <4 x float> [ %i.nz, %.lr.ph384 ], [ splat (float +inf), %._crit_edge366 ]
  %.sroa.2683.1376 = phi <4 x float> [ %i.ow, %.lr.ph384 ], [ splat (float -inf), %._crit_edge366 ]
  %.sroa.1879.1375 = phi <4 x float> [ %i.ot, %.lr.ph384 ], [ splat (float +inf), %._crit_edge366 ]
  %.sroa.1075.1374 = phi <4 x float> [ %i.oq, %.lr.ph384 ], [ splat (float -inf), %._crit_edge366 ]
  %.sroa.071.1373 = phi <4 x float> [ %i.on, %.lr.ph384 ], [ splat (float +inf), %._crit_edge366 ]
  %.sroa.26.1372 = phi <4 x float> [ %i.pk, %.lr.ph384 ], [ splat (float -inf), %._crit_edge366 ]
  %.sroa.18.1371 = phi <4 x float> [ %i.ph, %.lr.ph384 ], [ splat (float +inf), %._crit_edge366 ]
  %.sroa.10.1370 = phi <4 x float> [ %i.pe, %.lr.ph384 ], [ splat (float -inf), %._crit_edge366 ]
  %.sroa.058.1369 = phi <4 x float> [ %i.pb, %.lr.ph384 ], [ splat (float +inf), %._crit_edge366 ]
  %i.ns = phi <4 x i32> [ %i.rg, %.lr.ph384 ], [ splat (i32 1), %._crit_edge366 ] ; 2 uses
  %i.nt = add i64 %.048.i382, -1                  ; 2 uses
  %i.nu = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.nt
  %i.nv = load <4 x i32>, ptr %i.nu, align 16, !noalias !891
  %i.nw = add <4 x i32> %i.nv, %i.nr              ; 2 uses
  %i.nx = getelementptr inbounds nuw [192 x i8], ptr %10, i64 %i.nt ; 12 uses
  %i.ny = load <4 x float>, ptr %i.nx, align 64, !noalias !892
  %i.nz = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.087.1377, <4 x float> %i.ny) ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  %i.ob = load <4 x float>, ptr %i.oa, align 16, !noalias !893
  %i.oc = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1091.1378, <4 x float> %i.ob) ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.nx, i64 32
  %i.oe = load <4 x float>, ptr %i.od, align 32, !noalias !894
  %i.of = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1895.1379, <4 x float> %i.oe) ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.nx, i64 48
  %i.oh = load <4 x float>, ptr %i.og, align 16, !noalias !895
  %i.oi = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.2699.1380, <4 x float> %i.oh) ; 2 uses
  %i.oj = fsub <4 x float> %i.oc, %i.nz           ; 3 uses
  %i.ok = fsub <4 x float> %i.oi, %i.of           ; 3 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.nx, i64 64
  %i.om = load <4 x float>, ptr %i.ol, align 64, !noalias !896
  %i.on = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.071.1373, <4 x float> %i.om) ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.nx, i64 80
  %i.op = load <4 x float>, ptr %i.oo, align 16, !noalias !897
  %i.oq = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1075.1374, <4 x float> %i.op) ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.nx, i64 96
  %i.os = load <4 x float>, ptr %i.or, align 32, !noalias !898
  %i.ot = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1879.1375, <4 x float> %i.os) ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.nx, i64 112
  %i.ov = load <4 x float>, ptr %i.ou, align 16, !noalias !899
  %i.ow = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.2683.1376, <4 x float> %i.ov) ; 2 uses
  %i.ox = fsub <4 x float> %i.oq, %i.on           ; 3 uses
  %i.oy = fsub <4 x float> %i.ow, %i.ot           ; 3 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.nx, i64 128
  %i.pa = load <4 x float>, ptr %i.oz, align 64, !noalias !900
  %i.pb = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.058.1369, <4 x float> %i.pa) ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.nx, i64 144
  %i.pd = load <4 x float>, ptr %i.pc, align 16, !noalias !901
  %i.pe = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.10.1370, <4 x float> %i.pd) ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.nx, i64 160
  %i.pg = load <4 x float>, ptr %i.pf, align 32, !noalias !902
  %i.ph = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.18.1371, <4 x float> %i.pg) ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.nx, i64 176
  %i.pj = load <4 x float>, ptr %i.pi, align 16, !noalias !903
  %i.pk = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.26.1372, <4 x float> %i.pj) ; 2 uses
  %i.pl = fsub <4 x float> %i.pe, %i.pb           ; 3 uses
  %i.pm = fsub <4 x float> %i.pk, %i.ph           ; 3 uses
  %i.pn = shufflevector <4 x float> %i.oj, <4 x float> %i.ox, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.po = shufflevector <4 x float> %i.pn, <4 x float> %i.pm, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.pp = shufflevector <4 x float> %i.po, <4 x float> %i.pl, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 3 uses
  %i.pq = shufflevector <4 x float> %i.oj, <4 x float> %i.ox, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.pr = shufflevector <4 x float> %i.pq, <4 x float> %i.pm, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.ps = shufflevector <4 x float> %i.pr, <4 x float> %i.pl, <4 x i32> <i32 0, i32 1, i32 2, i32 6> ; 3 uses
  %i.pt = fadd <4 x float> %i.pp, %i.ps
  %i.pu = shufflevector <4 x float> %i.ok, <4 x float> %i.oy, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.pv = shufflevector <4 x float> %i.pu, <4 x float> %i.pp, <4 x i32> <i32 0, i32 1, i32 7, i32 6> ; 2 uses
  %i.pw = shufflevector <4 x float> %i.ok, <4 x float> %i.oy, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.px = shufflevector <4 x float> %i.pw, <4 x float> %i.ps, <4 x i32> <i32 0, i32 1, i32 7, i32 6> ; 2 uses
  %i.py = fadd <4 x float> %i.pv, %i.px
  %i.pz = fmul <4 x float> %i.pp, %i.ps
  %i.qa = fmul <4 x float> %i.pv, %i.px
  %i.qb = shufflevector <4 x float> %i.oj, <4 x float> %i.ox, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.qc = shufflevector <4 x float> %i.qb, <4 x float> %i.pm, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.qd = shufflevector <4 x float> %i.qc, <4 x float> %i.pl, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %i.qe = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.qd, <4 x float> %i.pt, <4 x float> %i.pz)
  %i.qf = shufflevector <4 x float> %i.ok, <4 x float> %i.oy, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.qg = shufflevector <4 x float> %i.qf, <4 x float> %i.qd, <4 x i32> <i32 0, i32 1, i32 7, i32 6>
  %i.qh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.qg, <4 x float> %i.py, <4 x float> %i.qa)
  %i.qi = fadd <4 x float> %i.qe, %i.qh
  %i.qj = fmul <4 x float> %i.qi, splat (float 5.000000e-01)
  %i.qk = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.048.i382
  %i.ql = load <4 x float>, ptr %i.qk, align 16, !noalias !877
  %i.qm = add <4 x i32> %i.nw, %i.kk
  %i.qn = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %i.qm, i32 %i.kh) ; 2 uses
  %i.qo = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.048.i382
  %i.qp = load <4 x i32>, ptr %i.qo, align 16, !noalias !904
  %i.qq = add <4 x i32> %i.qp, %i.kk
  %i.qr = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %i.qq, i32 %i.kh) ; 2 uses
  %isneg = icmp slt <4 x i32> %i.qn, zeroinitializer
  %i.qs = and <4 x i32> %i.qn, splat (i32 2147483647)
  %i.qt = uitofp nneg <4 x i32> %i.qs to <4 x float>
  %i.qu = select <4 x i1> %isneg, <4 x float> splat (float f0x4F000000), <4 x float> zeroinitializer
  %i.qv = fadd nnan <4 x float> %i.qu, %i.qt
  %isneg410 = icmp slt <4 x i32> %i.qr, zeroinitializer
  %i.qw = and <4 x i32> %i.qr, splat (i32 2147483647)
  %i.qx = uitofp nneg <4 x i32> %i.qw to <4 x float>
  %i.qy = select <4 x i1> %isneg410, <4 x float> splat (float f0x4F000000), <4 x float> zeroinitializer
  %i.qz = fadd nnan <4 x float> %i.qy, %i.qx
  %i.ra = fmul <4 x float> %i.ql, %i.qz
  %i.rb = fmul <4 x float> %i.qv, %i.qj
  %i.rc = fadd <4 x float> %i.rb, %i.ra           ; 2 uses
  %i.rd = fcmp uge <4 x float> %i.rc, %.sroa.025.0.load53381 ; 2 uses
  %i.re = select <4 x i1> %i.rd, <4 x i32> %i.nq, <4 x i32> %i.ns ; 2 uses
  %.v = select <4 x i1> %i.rd, <4 x float> %.sroa.025.0.load53381, <4 x float> %i.rc ; 2 uses
  %i.rf = add nuw i64 %.048.i382, 1               ; 2 uses
  %i.rg = add <4 x i32> %i.ns, splat (i32 1)
  %exitcond394.not = icmp eq i64 %i.rf, %i.kg
  br i1 %exitcond394.not, label %.preheader, label %.lr.ph384, !llvm.loop !12

bb.g:                                             ; preds = %.preheader
  %.sroa.0398.0.vec.extract = extractelement <4 x float> %.v368.lcssa, i64 0 ; 2 uses
  %i.rh = fcmp ueq float %.sroa.0398.0.vec.extract, +inf
  br i1 %i.rh, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.vec.extract = extractelement <4 x i32> %.lcssa, i64 0 ; 2 uses
  %.not54.i = icmp eq i32 %.sroa.0.0.vec.extract, 0
  br i1 %.not54.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %.preheader
  %.146.i = phi float [ +inf, %.preheader ], [ %.sroa.0398.0.vec.extract, %bb.i ], [ +inf, %bb.h ], [ +inf, %bb.g ] ; 4 uses
  %.144.i = phi i32 [ -1, %.preheader ], [ 0, %bb.i ], [ -1, %bb.h ], [ -1, %bb.g ] ; 3 uses
  %.1.i = phi i32 [ 0, %.preheader ], [ %.sroa.0.0.vec.extract, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %11, i64 36
  %i.rj = load float, ptr %i.ri, align 4, !noalias !877
  %i.rk = fcmp oeq float %i.rj, 0.000000e+00
  br i1 %i.rk, label %bb.n, label %bb.k, !prof !40

bb.k:                                             ; preds = %bb.j
  %.sroa.0398.4.vec.extract = extractelement <4 x float> %.v368.lcssa, i64 1 ; 2 uses
  %i.rl = fcmp olt float %.sroa.0398.4.vec.extract, %.146.i
  br i1 %i.rl, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %.sroa.0.4.vec.extract = extractelement <4 x i32> %.lcssa, i64 1 ; 2 uses
  %.not54.i.1 = icmp eq i32 %.sroa.0.4.vec.extract, 0
  br i1 %.not54.i.1, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.146.i.1 = phi float [ %.146.i, %bb.j ], [ %.sroa.0398.4.vec.extract, %bb.m ], [ %.146.i, %bb.l ], [ %.146.i, %bb.k ] ; 4 uses
  %.144.i.1 = phi i32 [ %.144.i, %bb.j ], [ 1, %bb.m ], [ %.144.i, %bb.l ], [ %.144.i, %bb.k ] ; 3 uses
  %.1.i.1 = phi i32 [ %.1.i, %bb.j ], [ %.sroa.0.4.vec.extract, %bb.m ], [ %.1.i, %bb.l ], [ %.1.i, %bb.k ] ; 3 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.rn = load float, ptr %i.rm, align 8, !noalias !877
  %i.ro = fcmp oeq float %i.rn, 0.000000e+00
  br i1 %i.ro, label %_ZNK6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit, label %bb.o, !prof !40

bb.o:                                             ; preds = %bb.n
  %.sroa.0398.8.vec.extract = extractelement <4 x float> %.v368.lcssa, i64 2 ; 2 uses
  %i.rp = fcmp olt float %.sroa.0398.8.vec.extract, %.146.i.1
  br i1 %i.rp, label %bb.p, label %_ZNK6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit

bb.p:                                             ; preds = %bb.o
  %.sroa.0.8.vec.extract = extractelement <4 x i32> %.lcssa, i64 2 ; 2 uses
  %.not54.i.2 = icmp eq i32 %.sroa.0.8.vec.extract, 0
  br i1 %.not54.i.2, label %_ZNK6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  br label %_ZNK6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit

_ZNK6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %.146.i.2 = phi float [ %.146.i.1, %bb.n ], [ %.sroa.0398.8.vec.extract, %bb.q ], [ %.146.i.1, %bb.p ], [ %.146.i.1, %bb.o ]
  %.144.i.2 = phi i32 [ %.144.i.1, %bb.n ], [ 2, %bb.q ], [ %.144.i.1, %bb.p ], [ %.144.i.1, %bb.o ] ; 2 uses
  %.1.i.2 = phi i32 [ %.1.i.1, %bb.n ], [ %.sroa.0.8.vec.extract, %bb.q ], [ %.1.i.1, %bb.p ], [ %.1.i.1, %bb.o ]
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.144.i.2, ptr %i.rq, align 4
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.1.i.2, ptr %i.rr, align 8
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 0, ptr %i.rs, align 4
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.kg, ptr %i.rt, align 16
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.rv = load <4 x float>, ptr %i.w, align 16
  store <4 x float> %i.rv, ptr %i.ru, align 16
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.rx = load <4 x float>, ptr %i.x, align 16
  store <4 x float> %i.rx, ptr %i.rw, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11, !noalias !877
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11, !noalias !877
  %i.ry = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.rz = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.sa = load float, ptr %i.rz, align 4
  %i.sb = load float, ptr %i.ry, align 8
  %i.sc = fsub float %i.sa, %i.sb
  %i.sd = fmul float %.146.i.2, %i.sc
  store float %i.sd, ptr %0, align 16
  %.not = icmp eq i32 %.144.i.2, -1
  br i1 %.not, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNK6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit
  store i32 1, ptr %i.rs, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNK6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6embree5SetMB8primInfoINS_4sse225VirtualRecalculatePrimRefEEEKS0_RKT_RKNS_12LinearSpace3INS_6Vec3faEEE(ptr dead_on_unwind noalias writable sret(%"struct.embree::SetMB") align 16 %0, ptr noundef nonnull align 16 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(48) %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %4 = alloca %"struct.embree::BBox.29", align 8  ; 5 uses
  %5 = alloca %"struct.embree::LBBox", align 16   ; 7 uses
  %6 = alloca %"struct.embree::range", align 8    ; 5 uses
  %7 = alloca %class.anon.140, align 8            ; 7 uses
  %8 = alloca %"class.embree::PrimInfoMBT", align 16 ; 22 uses
  %9 = alloca %"class.embree::PrimInfoMBT", align 16 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  store ptr %1, ptr %7, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %3, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.d = load i64, ptr %i.c, align 16             ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.f = load i64, ptr %i.e, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  store <4 x float> splat (float +inf), ptr %9, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 16
  store <4 x float> splat (float -inf), ptr %i.g, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 32
  store <4 x float> splat (float +inf), ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 48
  store <4 x float> splat (float -inf), ptr %i.i, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 64
  store <4 x float> splat (float +inf), ptr %i.j, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 80
  store <4 x float> splat (float -inf), ptr %i.k, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.l, i8 0, i64 36, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 140
  store float 0.000000e+00, ptr %i.n, align 4
  %i.o = sub i64 %i.f, %i.d                       ; 2 uses
  %i.p = icmp ult i64 %i.o, 3072
  br i1 %i.p, label %bb.b, label %bb.c, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !915)
  %i.q = icmp ult i64 %i.d, %i.f
  br i1 %i.q, label %.lr.ph.i, label %_ZZNK6embree5SetMB8primInfoINS_4sse225VirtualRecalculatePrimRefEEEKS0_RKT_RKNS_12LinearSpace3INS_6Vec3faEEEENKUlRKNS_5rangeImEEE_clESG_.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 48
  br label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i

_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i: ; preds = %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i, %.lr.ph.i
  %.094.i = phi i64 [ %i.d, %.lr.ph.i ], [ %i.di, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ] ; 2 uses
  %i.w = phi <4 x float> [ splat (float +inf), %.lr.ph.i ], [ %i.cq, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %i.x = phi <4 x float> [ splat (float -inf), %.lr.ph.i ], [ %i.cr, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %i.y = phi <4 x float> [ splat (float +inf), %.lr.ph.i ], [ %i.cs, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %i.z = phi <4 x float> [ splat (float -inf), %.lr.ph.i ], [ %i.ct, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %i.aa = phi <4 x float> [ splat (float +inf), %.lr.ph.i ], [ %i.cu, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %i.ab = phi <4 x float> [ splat (float -inf), %.lr.ph.i ], [ %i.cv, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %i.ac = phi float [ 1.000000e+00, %.lr.ph.i ], [ %i.cx, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ] ; 2 uses
  %i.ad = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.cz, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ] ; 2 uses
  %i.ae = phi i64 [ 0, %.lr.ph.i ], [ %i.db, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %i.af = phi i64 [ 0, %.lr.ph.i ], [ %i.dh, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ] ; 2 uses
  %i.ag = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %.lr.ph.i ], [ %i.dg, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %i.ah = load ptr, ptr %i.r, align 16, !noalias !915
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !915
  %i.ak = getelementptr inbounds nuw [80 x i8], ptr %i.aj, i64 %.094.i ; 2 uses
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.s, align 8, !noalias !915
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !915
  store <2 x float> %.sroa.0.0.copyload.i, ptr %4, align 8, !noalias !916
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.am = load i32, ptr %i.al, align 4, !noalias !916 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  %i.ao = load i32, ptr %i.an, align 4, !noalias !916 ; 2 uses
  %i.ap = load ptr, ptr %2, align 8, !noalias !916
  %i.aq = zext i32 %i.am to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 488
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !916
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.aq
  %i.au = load ptr, ptr %i.at, align 8, !noalias !916 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11, !noalias !916
  %i.av = zext i32 %i.ao to i64
  %i.aw = load ptr, ptr %i.au, align 16, !noalias !916
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 496
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !916
  call void %i.ay(ptr dead_on_unwind nonnull writable sret(%"struct.embree::LBBox") align 16 %5, ptr noundef nonnull align 16 dereferenceable(88) %i.au, ptr noundef nonnull align 16 dereferenceable(48) %3, i64 noundef %i.av, ptr noundef nonnull align 4 dereferenceable(8) %4), !noalias !916, !inline_history !917
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 44
  %.sroa.0.0.copyload.i6.i = load <2 x float>, ptr %i.az, align 4, !noalias !918 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.bb = load float, ptr %i.ba, align 8, !noalias !918 ; 4 uses
  %.sroa.053.0.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload.i6.i, i64 0 ; 3 uses
  %.sroa.053.4.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload.i6.i, i64 1 ; 3 uses
  %i.bc = fsub float %.sroa.053.4.vec.extract.i, %.sroa.053.0.vec.extract.i
  %i.bd = load <2 x float>, ptr %4, align 8, !noalias !919
end_hunk_5
begin_hunk_6_@_ZN6embree4sse232UnalignedHeuristicArrayBinningMBINS_9PrimRefMBELm32EE4findERKNS_5SetMBEmRKNS_12LinearSpace3INS_6Vec3faEEE:.preheader257.preheader
  store i32 %i.jm, ptr %i.jk, align 8
  %i.jn = getelementptr inbounds nuw [192 x i8], ptr %18, i64 %i.ji ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 128 ; 2 uses
  %i.jp = load <4 x float>, ptr %i.jo, align 64, !noalias !1117
  %i.jq = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.jp, <4 x float> %i.ia)
  store <4 x float> %i.jq, ptr %i.jo, align 64
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jn, i64 144 ; 2 uses
  %i.js = load <4 x float>, ptr %i.jr, align 16, !noalias !1118
  %i.jt = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.js, <4 x float> %i.if)
  store <4 x float> %i.jt, ptr %i.jr, align 16
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jn, i64 160 ; 2 uses
  %i.jv = load <4 x float>, ptr %i.ju, align 32, !noalias !1119
  %i.jw = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.jv, <4 x float> %i.ij)
  store <4 x float> %i.jw, ptr %i.ju, align 32
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jn, i64 176 ; 2 uses
  %i.jy = load <4 x float>, ptr %i.jx, align 16, !noalias !1120
  %i.jz = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.jy, <4 x float> %i.io)
  store <4 x float> %i.jz, ptr %i.jx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %_ZN6embree12bin_parallelINS_4sse232UnalignedHeuristicArrayBinningMBINS_9PrimRefMBELm32EE18BinBoundsAndCenterENS1_8BinInfoTILm32ES3_NS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmmRKT1_RKT_.exit

bb.d:                                             ; preds = %_ZN6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEE5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  store ptr %i.a, ptr %13, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %19, ptr %i.ka, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %17, ptr %i.kb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #11
  store ptr %19, ptr %14, align 8
  %i.kc = add i64 %i.af, 1023
  %i.kd = lshr i64 %i.kc, 10                      ; 2 uses
  %i.ke = icmp eq i64 %i.kd, 1
  br i1 %i.ke, label %bb.e, label %bb.f, !prof !41

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11, !noalias !1121
  store i64 %i.ae, ptr %11, align 8, !noalias !1121
  %i.kf = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.ad, ptr %i.kf, align 8, !noalias !1121
  call void @_ZZN6embree12bin_parallelINS_4sse232UnalignedHeuristicArrayBinningMBINS_9PrimRefMBELm32EE18BinBoundsAndCenterENS1_8BinInfoTILm32ES3_NS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmmRKT1_RKT_ENKUlRKNS_5rangeImEEE_clESR_(ptr dead_on_unwind nonnull writable sret(%"struct.embree::sse2::BinInfoT") align 64 %12, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(16) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11, !noalias !1121
  br label %_ZN6embree15parallel_reduceImNS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEEZNS_12bin_parallelINS1_32UnalignedHeuristicArrayBinningMBIS3_Lm32EE18BinBoundsAndCenterES7_NS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmmRKT1_RKT_EUlRKNS_5rangeImEEE_ZNS8_ISB_S7_SD_S3_EEvSF_SI_mmmmSL_SO_EUlRKS7_SV_E_EESE_SM_SM_SM_RKSE_SL_RSH_.exit

bb.f:                                             ; preds = %bb.d
  call void @_ZN6embree24parallel_reduce_internalImNS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEEZNS_12bin_parallelINS1_32UnalignedHeuristicArrayBinningMBIS3_Lm32EE18BinBoundsAndCenterES7_NS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmmRKT1_RKT_EUlRKNS_5rangeImEEE_ZNS8_ISB_S7_SD_S3_EEvSF_SI_mmmmSL_SO_EUlRKS7_SV_E_EESE_SM_SM_SM_SM_RKSE_SL_RSH_(ptr dead_on_unwind nonnull writable sret(%"struct.embree::sse2::BinInfoT") align 64 %12, i64 noundef %i.kd, i64 noundef %i.ae, i64 noundef %i.ad, i64 noundef 1024, ptr noundef nonnull align 64 dereferenceable(6656) %18, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(8) %14)
  br label %_ZN6embree15parallel_reduceImNS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEEZNS_12bin_parallelINS1_32UnalignedHeuristicArrayBinningMBIS3_Lm32EE18BinBoundsAndCenterES7_NS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmmRKT1_RKT_EUlRKNS_5rangeImEEE_ZNS8_ISB_S7_SD_S3_EEvSF_SI_mmmmSL_SO_EUlRKS7_SV_E_EESE_SM_SM_SM_RKSE_SL_RSH_.exit

_ZN6embree15parallel_reduceImNS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEEZNS_12bin_parallelINS1_32UnalignedHeuristicArrayBinningMBIS3_Lm32EE18BinBoundsAndCenterES7_NS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmmRKT1_RKT_EUlRKNS_5rangeImEEE_ZNS8_ISB_S7_SD_S3_EEvSF_SI_mmmmSL_SO_EUlRKS7_SV_E_EESE_SM_SM_SM_RKSE_SL_RSH_.exit: ; preds = %bb.e, %bb.f
  %i.kg = call noundef nonnull align 64 dereferenceable(6656) ptr @_ZN6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEaSEOS6_(ptr noundef nonnull align 64 dereferenceable(6656) %18, ptr noundef nonnull align 64 dereferenceable(6656) %12) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  br label %_ZN6embree12bin_parallelINS_4sse232UnalignedHeuristicArrayBinningMBINS_9PrimRefMBELm32EE18BinBoundsAndCenterENS1_8BinInfoTILm32ES3_NS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmmRKT1_RKT_.exit

_ZN6embree12bin_parallelINS_4sse232UnalignedHeuristicArrayBinningMBINS_9PrimRefMBELm32EE18BinBoundsAndCenterENS1_8BinInfoTILm32ES3_NS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmmRKT1_RKT_.exit: ; preds = %bb.c, %._crit_edge, %bb.a, %_ZN6embree15parallel_reduceImNS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEEZNS_12bin_parallelINS1_32UnalignedHeuristicArrayBinningMBIS3_Lm32EE18BinBoundsAndCenterES7_NS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmmRKT1_RKT_EUlRKNS_5rangeImEEE_ZNS8_ISB_S7_SD_S3_EEvSF_SI_mmmmSL_SO_EUlRKS7_SV_E_EESE_SM_SM_SM_RKSE_SL_RSH_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11, !noalias !1122
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #11, !noalias !1122
  %i.kh = load i64, ptr %19, align 16, !noalias !1122 ; 4 uses
  %.047.i260 = add i64 %i.kh, -1                  ; 2 uses
  %.not.i261 = icmp eq i64 %.047.i260, 0
  br i1 %.not.i261, label %.preheader, label %.lr.ph276

._crit_edge277:                                   ; preds = %.lr.ph276
  %i.ki = trunc i64 %3 to i32                     ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.ki
  %i.kj = xor i32 %notmask.i, -1
  %i.kk = insertelement <4 x i32> poison, i32 %i.kj, i64 0
  %i.kl = shufflevector <4 x i32> %i.kk, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.km = icmp ugt i64 %i.kh, 1
  br i1 %i.km, label %.lr.ph295, label %.preheader

.lr.ph276:                                        ; preds = %_ZN6embree12bin_parallelINS_4sse232UnalignedHeuristicArrayBinningMBINS_9PrimRefMBELm32EE18BinBoundsAndCenterENS1_8BinInfoTILm32ES3_NS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmmRKT1_RKT_.exit, %.lr.ph276
  %.047.i274 = phi i64 [ %.047.i, %.lr.ph276 ], [ %.047.i260, %_ZN6embree12bin_parallelINS_4sse232UnalignedHeuristicArrayBinningMBINS_9PrimRefMBELm32EE18BinBoundsAndCenterENS1_8BinInfoTILm32ES3_NS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmmRKT1_RKT_.exit ] ; 5 uses
  %i.kn = phi <4 x i32> [ %i.kq, %.lr.ph276 ], [ zeroinitializer, %_ZN6embree12bin_parallelINS_4sse232UnalignedHeuristicArrayBinningMBINS_9PrimRefMBELm32EE18BinBoundsAndCenterENS1_8BinInfoTILm32ES3_NS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmmRKT1_RKT_.exit ]
  %.sroa.26102.0273 = phi <4 x float> [ %i.ld, %.lr.ph276 ], [ splat (float -inf), %_ZN6embree12bin_parallelINS_4sse232UnalignedHeuristicArrayBinningMBINS_9PrimRefMBELm32EE18BinBoundsAndCenterENS1_8BinInfoTILm32ES3_NS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmmRKT1_RKT_.exit ]
  %.sroa.1898.0272 = phi <4 x float> [ %i.la, %.lr.ph276 ], [ splat (float +inf), %_ZN6embree12bin_parallelINS_4sse232UnalignedHeuristicArrayBinningMBINS_9PrimRefMBELm32EE18BinBoundsAndCenterENS1_8BinInfoTILm32ES3_NS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmmRKT1_RKT_.exit ]
  %.sroa.1094.0271 = phi <4 x float> [ %i.kx, %.lr.ph276 ], [ splat (float -inf), %_ZN6embree12bin_parallelINS_4sse232UnalignedHeuristicArrayBinningMBINS_9PrimRefMBELm32EE18BinBoundsAndCenterENS1_8BinInfoTILm32ES3_NS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmmRKT1_RKT_.exit ]
  %.sroa.090.0270 = phi <4 x float> [ %i.ku, %.lr.ph276 ], [ splat (float +inf), %_ZN6embree12bin_parallelINS_4sse232UnalignedHeuristicArrayBinningMBINS_9PrimRefMBELm32EE18BinBoundsAndCenterENS1_8BinInfoTILm32ES3_NS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmmRKT1_RKT_.exit ]
  %.sroa.2686.0269 = phi <4 x float> [ %i.ls, %.lr.ph276 ], [ splat (float -inf), %_ZN6embree12bin_parallelINS_4sse232UnalignedHeuristicArrayBinningMBINS_9PrimRefMBELm32EE18BinBoundsAndCenterENS1_8BinInfoTILm32ES3_NS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmmRKT1_RKT_.exit ]
  %.sroa.1882.0268 = phi <4 x float> [ %i.lp, %.lr.ph276 ], [ splat (float +inf), %_ZN6embree12bin_parallelINS_4sse232UnalignedHeuristicArrayBinningMBINS_9PrimRefMBELm32EE18BinBoundsAndCenterENS1_8BinInfoTILm32ES3_NS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmmRKT1_RKT_.exit ]
  %.sroa.1078.0267 = phi <4 x float> [ %i.lm, %.lr.ph276 ], [ splat (float -inf), %_ZN6embree12bin_parallelINS_4sse232UnalignedHeuristicArrayBinningMBINS_9PrimRefMBELm32EE18BinBoundsAndCenterENS1_8BinInfoTILm32ES3_NS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmmRKT1_RKT_.exit ]
  %.sroa.074.0266 = phi <4 x float> [ %i.lj, %.lr.ph276 ], [ splat (float +inf), %_ZN6embree12bin_parallelINS_4sse232UnalignedHeuristicArrayBinningMBINS_9PrimRefMBELm32EE18BinBoundsAndCenterENS1_8BinInfoTILm32ES3_NS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmmRKT1_RKT_.exit ]
  %.sroa.26.0265 = phi <4 x float> [ %i.mg, %.lr.ph276 ], [ splat (float -inf), %_ZN6embree12bin_parallelINS_4sse232UnalignedHeuristicArrayBinningMBINS_9PrimRefMBELm32EE18BinBoundsAndCenterENS1_8BinInfoTILm32ES3_NS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmmRKT1_RKT_.exit ]
  %.sroa.18.0264 = phi <4 x float> [ %i.md, %.lr.ph276 ], [ splat (float +inf), %_ZN6embree12bin_parallelINS_4sse232UnalignedHeuristicArrayBinningMBINS_9PrimRefMBELm32EE18BinBoundsAndCenterENS1_8BinInfoTILm32ES3_NS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmmRKT1_RKT_.exit ]
  %.sroa.10.0263 = phi <4 x float> [ %i.ma, %.lr.ph276 ], [ splat (float -inf), %_ZN6embree12bin_parallelINS_4sse232UnalignedHeuristicArrayBinningMBINS_9PrimRefMBELm32EE18BinBoundsAndCenterENS1_8BinInfoTILm32ES3_NS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmmRKT1_RKT_.exit ]
  %.sroa.061.0262 = phi <4 x float> [ %i.lx, %.lr.ph276 ], [ splat (float +inf), %_ZN6embree12bin_parallelINS_4sse232UnalignedHeuristicArrayBinningMBINS_9PrimRefMBELm32EE18BinBoundsAndCenterENS1_8BinInfoTILm32ES3_NS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmmRKT1_RKT_.exit ]
  %i.ko = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.047.i274
  %i.kp = load <4 x i32>, ptr %i.ko, align 16, !noalias !1123
  %i.kq = add <4 x i32> %i.kp, %i.kn              ; 2 uses
  %i.kr = getelementptr inbounds nuw [16 x i8], ptr %16, i64 %.047.i274
  store <4 x i32> %i.kq, ptr %i.kr, align 16, !noalias !1122
  %i.ks = getelementptr inbounds nuw [192 x i8], ptr %18, i64 %.047.i274 ; 12 uses
  %i.kt = load <4 x float>, ptr %i.ks, align 64, !noalias !1124
  %i.ku = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.090.0270, <4 x float> %i.kt) ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %i.kw = load <4 x float>, ptr %i.kv, align 16, !noalias !1125
  %i.kx = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1094.0271, <4 x float> %i.kw) ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ks, i64 32
  %i.kz = load <4 x float>, ptr %i.ky, align 32, !noalias !1126
  %i.la = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1898.0272, <4 x float> %i.kz) ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ks, i64 48
  %i.lc = load <4 x float>, ptr %i.lb, align 16, !noalias !1127
  %i.ld = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.26102.0273, <4 x float> %i.lc) ; 2 uses
  %i.le = fsub <4 x float> %i.kx, %i.ku           ; 3 uses
  %i.lf = fsub <4 x float> %i.ld, %i.la           ; 3 uses
  %i.lg = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.047.i274
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ks, i64 64
  %i.li = load <4 x float>, ptr %i.lh, align 64, !noalias !1128
  %i.lj = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.074.0266, <4 x float> %i.li) ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ks, i64 80
  %i.ll = load <4 x float>, ptr %i.lk, align 16, !noalias !1129
  %i.lm = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1078.0267, <4 x float> %i.ll) ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ks, i64 96
  %i.lo = load <4 x float>, ptr %i.ln, align 32, !noalias !1130
  %i.lp = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1882.0268, <4 x float> %i.lo) ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ks, i64 112
  %i.lr = load <4 x float>, ptr %i.lq, align 16, !noalias !1131
  %i.ls = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.2686.0269, <4 x float> %i.lr) ; 2 uses
  %i.lt = fsub <4 x float> %i.lm, %i.lj           ; 3 uses
  %i.lu = fsub <4 x float> %i.ls, %i.lp           ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ks, i64 128
  %i.lw = load <4 x float>, ptr %i.lv, align 64, !noalias !1132
  %i.lx = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.061.0262, <4 x float> %i.lw) ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ks, i64 144
  %i.lz = load <4 x float>, ptr %i.ly, align 16, !noalias !1133
  %i.ma = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.10.0263, <4 x float> %i.lz) ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ks, i64 160
  %i.mc = load <4 x float>, ptr %i.mb, align 32, !noalias !1134
  %i.md = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.18.0264, <4 x float> %i.mc) ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.ks, i64 176
  %i.mf = load <4 x float>, ptr %i.me, align 16, !noalias !1135
  %i.mg = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.26.0265, <4 x float> %i.mf) ; 2 uses
  %i.mh = fsub <4 x float> %i.ma, %i.lx           ; 5 uses
  %i.mi = fsub <4 x float> %i.mg, %i.md           ; 4 uses
  %i.mj = shufflevector <4 x float> %i.le, <4 x float> %i.lt, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison> ; 2 uses
  %i.mk = insertelement <4 x float> %i.mj, float -0.000000e+00, i64 3
  %i.ml = shufflevector <4 x float> %i.mk, <4 x float> %i.mh, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.mm = shufflevector <4 x float> %i.le, <4 x float> %i.lt, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison> ; 2 uses
  %i.mn = insertelement <4 x float> %i.mm, float -0.000000e+00, i64 3
  %i.mo = shufflevector <4 x float> %i.mn, <4 x float> %i.mh, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.mp = fadd <4 x float> %i.ml, %i.mo
  %i.mq = insertelement <4 x float> %i.mj, float 1.000000e+00, i64 3
  %i.mr = shufflevector <4 x float> %i.mq, <4 x float> %i.mh, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ms = insertelement <4 x float> %i.mm, float 1.000000e+00, i64 3
  %i.mt = shufflevector <4 x float> %i.ms, <4 x float> %i.mh, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.mu = fmul <4 x float> %i.mr, %i.mt
  %i.mv = shufflevector <4 x float> %i.le, <4 x float> %i.lt, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.mw = insertelement <4 x float> %i.mv, float 0.000000e+00, i64 3
  %i.mx = shufflevector <4 x float> %i.mw, <4 x float> %i.mh, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.my = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mx, <4 x float> %i.mp, <4 x float> %i.mu)
  %i.mz = shufflevector <4 x float> %i.lf, <4 x float> %i.lu, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.na = insertelement <4 x float> %i.mz, float -0.000000e+00, i64 3
  %i.nb = shufflevector <4 x float> %i.na, <4 x float> %i.mi, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.nc = shufflevector <4 x float> %i.lf, <4 x float> %i.lu, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison> ; 2 uses
  %i.nd = insertelement <4 x float> %i.nc, float -0.000000e+00, i64 3
  %i.ne = shufflevector <4 x float> %i.nd, <4 x float> %i.mi, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.nf = fadd <4 x float> %i.nb, %i.ne
  %i.ng = insertelement <4 x float> %i.nc, float 1.000000e+00, i64 3
  %i.nh = shufflevector <4 x float> %i.ng, <4 x float> %i.mi, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.ni = fmul <4 x float> %i.nb, %i.nh
  %i.nj = shufflevector <4 x float> %i.lf, <4 x float> %i.lu, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.nk = insertelement <4 x float> %i.nj, float 0.000000e+00, i64 3
  %i.nl = shufflevector <4 x float> %i.nk, <4 x float> %i.mi, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.nm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nl, <4 x float> %i.nf, <4 x float> %i.ni)
  %i.nn = fadd <4 x float> %i.my, %i.nm
  %i.no = fmul <4 x float> %i.nn, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 0.000000e+00>
  store <4 x float> %i.no, ptr %i.lg, align 16, !noalias !1122
  %.047.i = add i64 %.047.i274, -1                ; 2 uses
  %.not.i = icmp eq i64 %.047.i, 0
  br i1 %.not.i, label %._crit_edge277, label %.lr.ph276, !llvm.loop !11

.preheader:                                       ; preds = %.lr.ph295, %_ZN6embree12bin_parallelINS_4sse232UnalignedHeuristicArrayBinningMBINS_9PrimRefMBELm32EE18BinBoundsAndCenterENS1_8BinInfoTILm32ES3_NS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmmRKT1_RKT_.exit, %._crit_edge277
  %.v279.lcssa = phi <4 x float> [ splat (float +inf), %._crit_edge277 ], [ splat (float +inf), %_ZN6embree12bin_parallelINS_4sse232UnalignedHeuristicArrayBinningMBINS_9PrimRefMBELm32EE18BinBoundsAndCenterENS1_8BinInfoTILm32ES3_NS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmmRKT1_RKT_.exit ], [ %.v, %.lr.ph295 ] ; 3 uses
  %.lcssa = phi <4 x i32> [ zeroinitializer, %._crit_edge277 ], [ zeroinitializer, %_ZN6embree12bin_parallelINS_4sse232UnalignedHeuristicArrayBinningMBINS_9PrimRefMBELm32EE18BinBoundsAndCenterENS1_8BinInfoTILm32ES3_NS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmmRKT1_RKT_.exit ], [ %i.rf, %.lr.ph295 ] ; 3 uses
  %i.np = load float, ptr %i.ai, align 16, !noalias !1122
  %i.nq = fcmp oeq float %i.np, 0.000000e+00
  br i1 %i.nq, label %bb.j, label %bb.g, !prof !40

.lr.ph295:                                        ; preds = %._crit_edge277, %.lr.ph295
  %.048.i293 = phi i64 [ %i.rg, %.lr.ph295 ], [ 1, %._crit_edge277 ] ; 4 uses
  %i.nr = phi <4 x i32> [ %i.rf, %.lr.ph295 ], [ zeroinitializer, %._crit_edge277 ]
  %.sroa.028.0.load56292 = phi <4 x float> [ %.v, %.lr.ph295 ], [ splat (float +inf), %._crit_edge277 ] ; 2 uses
  %i.ns = phi <4 x i32> [ %i.nx, %.lr.ph295 ], [ zeroinitializer, %._crit_edge277 ]
  %.sroa.26102.1291 = phi <4 x float> [ %i.oj, %.lr.ph295 ], [ splat (float -inf), %._crit_edge277 ]
  %.sroa.1898.1290 = phi <4 x float> [ %i.og, %.lr.ph295 ], [ splat (float +inf), %._crit_edge277 ]
  %.sroa.1094.1289 = phi <4 x float> [ %i.od, %.lr.ph295 ], [ splat (float -inf), %._crit_edge277 ]
  %.sroa.090.1288 = phi <4 x float> [ %i.oa, %.lr.ph295 ], [ splat (float +inf), %._crit_edge277 ]
  %.sroa.2686.1287 = phi <4 x float> [ %i.ox, %.lr.ph295 ], [ splat (float -inf), %._crit_edge277 ]
  %.sroa.1882.1286 = phi <4 x float> [ %i.ou, %.lr.ph295 ], [ splat (float +inf), %._crit_edge277 ]
  %.sroa.1078.1285 = phi <4 x float> [ %i.or, %.lr.ph295 ], [ splat (float -inf), %._crit_edge277 ]
  %.sroa.074.1284 = phi <4 x float> [ %i.oo, %.lr.ph295 ], [ splat (float +inf), %._crit_edge277 ]
  %.sroa.26.1283 = phi <4 x float> [ %i.pl, %.lr.ph295 ], [ splat (float -inf), %._crit_edge277 ]
  %.sroa.18.1282 = phi <4 x float> [ %i.pi, %.lr.ph295 ], [ splat (float +inf), %._crit_edge277 ]
  %.sroa.10.1281 = phi <4 x float> [ %i.pf, %.lr.ph295 ], [ splat (float -inf), %._crit_edge277 ]
  %.sroa.061.1280 = phi <4 x float> [ %i.pc, %.lr.ph295 ], [ splat (float +inf), %._crit_edge277 ]
  %i.nt = phi <4 x i32> [ %i.rh, %.lr.ph295 ], [ splat (i32 1), %._crit_edge277 ] ; 2 uses
  %i.nu = add i64 %.048.i293, -1                  ; 2 uses
  %i.nv = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.nu
  %i.nw = load <4 x i32>, ptr %i.nv, align 16, !noalias !1136
  %i.nx = add <4 x i32> %i.nw, %i.ns              ; 2 uses
  %i.ny = getelementptr inbounds nuw [192 x i8], ptr %18, i64 %i.nu ; 12 uses
  %i.nz = load <4 x float>, ptr %i.ny, align 64, !noalias !1137
  %i.oa = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.090.1288, <4 x float> %i.nz) ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %i.oc = load <4 x float>, ptr %i.ob, align 16, !noalias !1138
  %i.od = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1094.1289, <4 x float> %i.oc) ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ny, i64 32
  %i.of = load <4 x float>, ptr %i.oe, align 32, !noalias !1139
  %i.og = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1898.1290, <4 x float> %i.of) ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ny, i64 48
  %i.oi = load <4 x float>, ptr %i.oh, align 16, !noalias !1140
  %i.oj = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.26102.1291, <4 x float> %i.oi) ; 2 uses
  %i.ok = fsub <4 x float> %i.od, %i.oa           ; 3 uses
  %i.ol = fsub <4 x float> %i.oj, %i.og           ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ny, i64 64
  %i.on = load <4 x float>, ptr %i.om, align 64, !noalias !1141
  %i.oo = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.074.1284, <4 x float> %i.on) ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.ny, i64 80
  %i.oq = load <4 x float>, ptr %i.op, align 16, !noalias !1142
  %i.or = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1078.1285, <4 x float> %i.oq) ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.ny, i64 96
  %i.ot = load <4 x float>, ptr %i.os, align 32, !noalias !1143
  %i.ou = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1882.1286, <4 x float> %i.ot) ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ny, i64 112
  %i.ow = load <4 x float>, ptr %i.ov, align 16, !noalias !1144
  %i.ox = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.2686.1287, <4 x float> %i.ow) ; 2 uses
  %i.oy = fsub <4 x float> %i.or, %i.oo           ; 3 uses
  %i.oz = fsub <4 x float> %i.ox, %i.ou           ; 3 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ny, i64 128
  %i.pb = load <4 x float>, ptr %i.pa, align 64, !noalias !1145
  %i.pc = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.061.1280, <4 x float> %i.pb) ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ny, i64 144
  %i.pe = load <4 x float>, ptr %i.pd, align 16, !noalias !1146
  %i.pf = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.10.1281, <4 x float> %i.pe) ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ny, i64 160
  %i.ph = load <4 x float>, ptr %i.pg, align 32, !noalias !1147
  %i.pi = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.18.1282, <4 x float> %i.ph) ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ny, i64 176
  %i.pk = load <4 x float>, ptr %i.pj, align 16, !noalias !1148
  %i.pl = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.26.1283, <4 x float> %i.pk) ; 2 uses
  %i.pm = fsub <4 x float> %i.pf, %i.pc           ; 3 uses
  %i.pn = fsub <4 x float> %i.pl, %i.pi           ; 3 uses
  %i.po = shufflevector <4 x float> %i.ok, <4 x float> %i.oy, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.pp = shufflevector <4 x float> %i.po, <4 x float> %i.pn, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.pq = shufflevector <4 x float> %i.pp, <4 x float> %i.pm, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 3 uses
  %i.pr = shufflevector <4 x float> %i.ok, <4 x float> %i.oy, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.ps = shufflevector <4 x float> %i.pr, <4 x float> %i.pn, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.pt = shufflevector <4 x float> %i.ps, <4 x float> %i.pm, <4 x i32> <i32 0, i32 1, i32 2, i32 6> ; 3 uses
  %i.pu = fadd <4 x float> %i.pq, %i.pt
  %i.pv = shufflevector <4 x float> %i.ol, <4 x float> %i.oz, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.pw = shufflevector <4 x float> %i.pv, <4 x float> %i.pq, <4 x i32> <i32 0, i32 1, i32 7, i32 6> ; 2 uses
  %i.px = shufflevector <4 x float> %i.ol, <4 x float> %i.oz, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.py = shufflevector <4 x float> %i.px, <4 x float> %i.pt, <4 x i32> <i32 0, i32 1, i32 7, i32 6> ; 2 uses
  %i.pz = fadd <4 x float> %i.pw, %i.py
  %i.qa = fmul <4 x float> %i.pq, %i.pt
  %i.qb = fmul <4 x float> %i.pw, %i.py
  %i.qc = shufflevector <4 x float> %i.ok, <4 x float> %i.oy, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.qd = shufflevector <4 x float> %i.qc, <4 x float> %i.pn, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.qe = shufflevector <4 x float> %i.qd, <4 x float> %i.pm, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %i.qf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.qe, <4 x float> %i.pu, <4 x float> %i.qa)
  %i.qg = shufflevector <4 x float> %i.ol, <4 x float> %i.oz, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.qh = shufflevector <4 x float> %i.qg, <4 x float> %i.qe, <4 x i32> <i32 0, i32 1, i32 7, i32 6>
  %i.qi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.qh, <4 x float> %i.pz, <4 x float> %i.qb)
  %i.qj = fadd <4 x float> %i.qf, %i.qi
  %i.qk = fmul <4 x float> %i.qj, splat (float 5.000000e-01)
  %i.ql = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.048.i293
  %i.qm = load <4 x float>, ptr %i.ql, align 16, !noalias !1122
  %i.qn = add <4 x i32> %i.nx, %i.kl
  %i.qo = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %i.qn, i32 %i.ki) ; 2 uses
  %i.qp = getelementptr inbounds nuw [16 x i8], ptr %16, i64 %.048.i293
  %i.qq = load <4 x i32>, ptr %i.qp, align 16, !noalias !1149
  %i.qr = add <4 x i32> %i.qq, %i.kl
  %i.qs = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %i.qr, i32 %i.ki) ; 2 uses
  %isneg = icmp slt <4 x i32> %i.qo, zeroinitializer
  %i.qt = and <4 x i32> %i.qo, splat (i32 2147483647)
  %i.qu = uitofp nneg <4 x i32> %i.qt to <4 x float>
  %i.qv = select <4 x i1> %isneg, <4 x float> splat (float f0x4F000000), <4 x float> zeroinitializer
  %i.qw = fadd nnan <4 x float> %i.qv, %i.qu
  %isneg321 = icmp slt <4 x i32> %i.qs, zeroinitializer
  %i.qx = and <4 x i32> %i.qs, splat (i32 2147483647)
  %i.qy = uitofp nneg <4 x i32> %i.qx to <4 x float>
  %i.qz = select <4 x i1> %isneg321, <4 x float> splat (float f0x4F000000), <4 x float> zeroinitializer
  %i.ra = fadd nnan <4 x float> %i.qz, %i.qy
  %i.rb = fmul <4 x float> %i.qm, %i.ra
  %i.rc = fmul <4 x float> %i.qw, %i.qk
  %i.rd = fadd <4 x float> %i.rc, %i.rb           ; 2 uses
  %i.re = fcmp uge <4 x float> %i.rd, %.sroa.028.0.load56292 ; 2 uses
  %i.rf = select <4 x i1> %i.re, <4 x i32> %i.nr, <4 x i32> %i.nt ; 2 uses
  %.v = select <4 x i1> %i.re, <4 x float> %.sroa.028.0.load56292, <4 x float> %i.rd ; 2 uses
  %i.rg = add nuw i64 %.048.i293, 1               ; 2 uses
  %i.rh = add <4 x i32> %i.nt, splat (i32 1)
  %exitcond305.not = icmp eq i64 %i.rg, %i.kh
  br i1 %exitcond305.not, label %.preheader, label %.lr.ph295, !llvm.loop !12

bb.g:                                             ; preds = %.preheader
  %.sroa.0309.0.vec.extract = extractelement <4 x float> %.v279.lcssa, i64 0 ; 2 uses
  %i.ri = fcmp ueq float %.sroa.0309.0.vec.extract, +inf
  br i1 %i.ri, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.vec.extract = extractelement <4 x i32> %.lcssa, i64 0 ; 2 uses
  %.not54.i = icmp eq i32 %.sroa.0.0.vec.extract, 0
  br i1 %.not54.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %.preheader
  %.146.i = phi float [ +inf, %.preheader ], [ %.sroa.0309.0.vec.extract, %bb.i ], [ +inf, %bb.h ], [ +inf, %bb.g ] ; 4 uses
  %.144.i = phi i32 [ -1, %.preheader ], [ 0, %bb.i ], [ -1, %bb.h ], [ -1, %bb.g ] ; 3 uses
  %.1.i = phi i32 [ 0, %.preheader ], [ %.sroa.0.0.vec.extract, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %19, i64 36
  %i.rk = load float, ptr %i.rj, align 4, !noalias !1122
  %i.rl = fcmp oeq float %i.rk, 0.000000e+00
  br i1 %i.rl, label %bb.n, label %bb.k, !prof !40

bb.k:                                             ; preds = %bb.j
  %.sroa.0309.4.vec.extract = extractelement <4 x float> %.v279.lcssa, i64 1 ; 2 uses
  %i.rm = fcmp olt float %.sroa.0309.4.vec.extract, %.146.i
  br i1 %i.rm, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %.sroa.0.4.vec.extract = extractelement <4 x i32> %.lcssa, i64 1 ; 2 uses
  %.not54.i.1 = icmp eq i32 %.sroa.0.4.vec.extract, 0
  br i1 %.not54.i.1, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.146.i.1 = phi float [ %.146.i, %bb.j ], [ %.sroa.0309.4.vec.extract, %bb.m ], [ %.146.i, %bb.l ], [ %.146.i, %bb.k ] ; 4 uses
  %.144.i.1 = phi i32 [ %.144.i, %bb.j ], [ 1, %bb.m ], [ %.144.i, %bb.l ], [ %.144.i, %bb.k ] ; 3 uses
  %.1.i.1 = phi i32 [ %.1.i, %bb.j ], [ %.sroa.0.4.vec.extract, %bb.m ], [ %.1.i, %bb.l ], [ %.1.i, %bb.k ] ; 3 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.ro = load float, ptr %i.rn, align 8, !noalias !1122
  %i.rp = fcmp oeq float %i.ro, 0.000000e+00
  br i1 %i.rp, label %_ZNK6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit, label %bb.o, !prof !40

bb.o:                                             ; preds = %bb.n
  %.sroa.0309.8.vec.extract = extractelement <4 x float> %.v279.lcssa, i64 2 ; 2 uses
  %i.rq = fcmp olt float %.sroa.0309.8.vec.extract, %.146.i.1
  br i1 %i.rq, label %bb.p, label %_ZNK6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit

bb.p:                                             ; preds = %bb.o
  %.sroa.0.8.vec.extract = extractelement <4 x i32> %.lcssa, i64 2 ; 2 uses
  %.not54.i.2 = icmp eq i32 %.sroa.0.8.vec.extract, 0
  br i1 %.not54.i.2, label %_ZNK6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  br label %_ZNK6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit

_ZNK6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %.146.i.2 = phi float [ %.146.i.1, %bb.n ], [ %.sroa.0309.8.vec.extract, %bb.q ], [ %.146.i.1, %bb.p ], [ %.146.i.1, %bb.o ]
  %.144.i.2 = phi i32 [ %.144.i.1, %bb.n ], [ 2, %bb.q ], [ %.144.i.1, %bb.p ], [ %.144.i.1, %bb.o ] ; 2 uses
  %.1.i.2 = phi i32 [ %.1.i.1, %bb.n ], [ %.sroa.0.8.vec.extract, %bb.q ], [ %.1.i.1, %bb.p ], [ %.1.i.1, %bb.o ]
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.144.i.2, ptr %i.rr, align 4
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.1.i.2, ptr %i.rs, align 8
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 0, ptr %i.rt, align 4
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.kh, ptr %i.ru, align 16
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.rw = load <4 x float>, ptr %i.ah, align 16
  store <4 x float> %i.rw, ptr %i.rv, align 16
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ry = load <4 x float>, ptr %i.ai, align 16
  store <4 x float> %i.ry, ptr %i.rx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11, !noalias !1122
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11, !noalias !1122
  %i.rz = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.sa = load float, ptr %i.rz, align 4
  %i.sb = load float, ptr %i.c, align 8
  %i.sc = fsub float %i.sa, %i.sb
  %i.sd = fmul float %.146.i.2, %i.sc
  store float %i.sd, ptr %0, align 16
  %.not = icmp eq i32 %.144.i.2, -1
  br i1 %.not, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNK6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit
  store i32 1, ptr %i.rt, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNK6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_25VirtualRecalculatePrimRefELm2EE4findERKNS_5SetMBEm(ptr dead_on_unwind noalias writable sret(%"struct.embree::sse2::BinSplit") align 16 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 16 dereferenceable(152) %2, i64 noundef %3) local_unnamed_addr #5 comdat align 2 {
.preheader14:
  %4 = alloca %"struct.embree::range", align 8    ; 5 uses
  %5 = alloca %"struct.embree::BBox.29", align 8  ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %class.anon.154, align 8            ; 8 uses
  %7 = alloca %"struct.embree::sse2::HeuristicMBlurTemporalSplit<embree::PrimRefMB, embree::sse2::VirtualRecalculatePrimRef, 2>::TemporalBinInfo", align 16 ; 13 uses
  %8 = alloca %"struct.embree::sse2::HeuristicMBlurTemporalSplit<embree::PrimRefMB, embree::sse2::VirtualRecalculatePrimRef, 2>::TemporalBinInfo", align 16 ; 13 uses
  %9 = alloca %"struct.embree::sse2::HeuristicMBlurTemporalSplit<embree::PrimRefMB, embree::sse2::VirtualRecalculatePrimRef, 2>::TemporalBinInfo", align 16 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %.ptr7.i = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %.ptr12.i = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 3 uses
  store <4 x float> splat (float -inf), ptr %i.c, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 3 uses
  store <4 x float> splat (float +inf), ptr %i.d, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 128 ; 3 uses
  store <4 x float> splat (float -inf), ptr %i.e, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  store <4 x float> splat (float -inf), ptr %i.f, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  store <4 x float> splat (float +inf), ptr %i.g, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 3 uses
  store <4 x float> splat (float -inf), ptr %i.h, align 16
  store i64 0, ptr %9, align 16
  store <4 x float> splat (float +inf), ptr %.ptr12.i, align 16
  store <4 x float> splat (float +inf), ptr %.ptr7.i, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.j = load ptr, ptr %i.i, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.n = load i64, ptr %i.m, align 16             ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.p = load i64, ptr %i.o, align 8              ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.q, align 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store <2 x float> %.sroa.01.0.copyload, ptr %5, align 8
  store ptr %i.l, ptr %i.a, align 8
  %i.s = sub i64 %i.p, %i.n                       ; 2 uses
  %i.t = icmp ult i64 %i.s, 3072
  br i1 %i.t, label %bb.a, label %.preheader, !prof !41

bb.a:                                             ; preds = %.preheader14
  call void @_ZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_25VirtualRecalculatePrimRefELm2EE15TemporalBinInfo3binEPKS2_mmNS_4BBoxIfEERKNS_5SetMBERKS3_(ptr noundef nonnull align 16 dereferenceable(144) %9, ptr noundef %i.l, i64 noundef %i.n, i64 noundef %i.p, <2 x float> %.sroa.01.0.copyload, ptr noundef nonnull align 16 dereferenceable(152) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
  br label %_ZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_25VirtualRecalculatePrimRefELm2EE15TemporalBinInfo12bin_parallelEPKS2_mmmmNS_4BBoxIfEERKNS_5SetMBERKS3_.exit

.preheader:                                       ; preds = %.preheader14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  store ptr %i.a, ptr %6, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %2, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.r, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %.ptr7.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.ptr12.i.i = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 96
  store <4 x float> splat (float -inf), ptr %i.y, align 16
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 112
  store <4 x float> splat (float +inf), ptr %i.z, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 128
  store <4 x float> splat (float -inf), ptr %i.aa, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 32
  store <4 x float> splat (float -inf), ptr %i.ab, align 16
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 48
  store <4 x float> splat (float +inf), ptr %i.ac, align 16
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 64
  store <4 x float> splat (float -inf), ptr %i.ad, align 16
  store i64 0, ptr %8, align 16
  store <4 x float> splat (float +inf), ptr %.ptr12.i.i, align 16
  store <4 x float> splat (float +inf), ptr %.ptr7.i.i, align 16
  %i.ae = add i64 %i.s, 1023
  %i.af = lshr i64 %i.ae, 10                      ; 2 uses
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.b, label %bb.c, !prof !41

bb.b:                                             ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11, !noalias !1170
  store i64 %i.n, ptr %4, align 8, !noalias !1170
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.p, ptr %i.ah, align 8, !noalias !1170
  call void @_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_25VirtualRecalculatePrimRefELm2EE15TemporalBinInfo12bin_parallelEPKS2_mmmmNS_4BBoxIfEERKNS_5SetMBERKS3_ENKUlRKNS_5rangeImEEE_clESI_(ptr dead_on_unwind nonnull writable sret(%"struct.embree::sse2::HeuristicMBlurTemporalSplit<embree::PrimRefMB, embree::sse2::VirtualRecalculatePrimRef, 2>::TemporalBinInfo") align 16 %7, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11, !noalias !1170
  br label %_ZN6embree15parallel_reduceImNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS1_25VirtualRecalculatePrimRefELm2EE15TemporalBinInfoEZNS6_12bin_parallelEPKS3_mmmmNS_4BBoxIfEERKNS_5SetMBERKS4_EUlRKNS_5rangeImEEE_FKS6_RSL_SM_EEET0_T_SP_SP_RKSO_RKT1_RKT2_.exit

bb.c:                                             ; preds = %.preheader
  call void @_ZN6embree24parallel_reduce_internalImNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS1_25VirtualRecalculatePrimRefELm2EE15TemporalBinInfoEZNS6_12bin_parallelEPKS3_mmmmNS_4BBoxIfEERKNS_5SetMBERKS4_EUlRKNS_5rangeImEEE_FKS6_RSL_SM_EEET0_T_SP_SP_SP_RKSO_RKT1_RKT2_(ptr dead_on_unwind nonnull writable sret(%"struct.embree::sse2::HeuristicMBlurTemporalSplit<embree::PrimRefMB, embree::sse2::VirtualRecalculatePrimRef, 2>::TemporalBinInfo") align 16 %7, i64 noundef %i.af, i64 noundef %i.n, i64 noundef %i.p, i64 noundef 1024, ptr noundef nonnull align 16 dereferenceable(144) %8, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @_ZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_25VirtualRecalculatePrimRefELm2EE15TemporalBinInfo6merge2ERKS5_S7_)
end_hunk_6
begin_hunk_7_@_ZN6embree15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS1_NS2_25VirtualRecalculatePrimRefELm2EE5splitERKNS2_8BinSplitILm32EEERKNS_5SetMBERSA_SD_EUlRKS1_E_EET0_PT_SH_SH_SH_RKT1_:bb.a
  %i.w = fcmp ult float %i.t, %i.v
  br i1 %i.w, label %bb.c, label %_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_25VirtualRecalculatePrimRefELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS9_SC_ENKUlRKS2_E_clESE_.exit.thread.i

bb.c:                                             ; preds = %_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_25VirtualRecalculatePrimRefELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS9_SC_ENKUlRKS2_E_clESE_.exit.i
  %i.x = add i64 %.01214.i, 1
  %i.y = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.01214.i ; 6 uses
  %i.z = load <4 x float>, ptr %i.k, align 16
  store <4 x float> %i.z, ptr %i.y, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = load <4 x float>, ptr %i.aa, align 16
  store <4 x float> %i.ac, ptr %i.ab, align 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.af = load <4 x float>, ptr %i.ad, align 16
  store <4 x float> %i.af, ptr %i.ae, align 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.ai = load <4 x float>, ptr %i.ag, align 16
  store <4 x float> %i.ai, ptr %i.ah, align 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  store float %i.s, ptr %i.aj, align 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 68
  store float %i.n, ptr %i.ak, align 4
  br label %_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_25VirtualRecalculatePrimRefELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS9_SC_ENKUlRKS2_E_clESE_.exit.thread.i

_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_25VirtualRecalculatePrimRefELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS9_SC_ENKUlRKS2_E_clESE_.exit.thread.i: ; preds = %bb.c, %_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_25VirtualRecalculatePrimRefELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS9_SC_ENKUlRKS2_E_clESE_.exit.i, %.lr.ph.i
  %.1.i = phi i64 [ %i.x, %bb.c ], [ %.01214.i, %_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_25VirtualRecalculatePrimRefELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS9_SC_ENKUlRKS2_E_clESE_.exit.i ], [ %.01214.i, %.lr.ph.i ] ; 2 uses
  %i.al = add nuw i64 %.015.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.al, %2
  br i1 %exitcond.not.i, label %_ZN6embree17sequential_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS1_NS2_25VirtualRecalculatePrimRefELm2EE5splitERKNS2_8BinSplitILm32EEERKNS_5SetMBERSA_SD_EUlRKS1_E_EET0_PT_SH_SH_RKT1_.exit, label %.lr.ph.i, !llvm.loop !27

bb.d:                                             ; preds = %bb.a
  %i.am = tail call noundef i64 @_ZN6embree13TaskScheduler11threadCountEv()
  %i.an = add i64 %3, -1
  %i.ao = add i64 %i.an, %2
  %i.ap = sub i64 %i.ao, %1
  %i.aq = udiv i64 %i.ap, %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.ar = tail call noundef i64 @llvm.umin.i64(i64 %i.am, i64 %i.aq) ; 2 uses
  %i.as = tail call noundef i64 @llvm.umin.i64(i64 %i.ar, i64 64) ; 3 uses
  store i64 %i.as, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  store ptr %i.b, ptr %11, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.c, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.d, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.a, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %4, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr %i.e, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 48
  store ptr %i.f, ptr %i.ay, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %.not.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i, label %_ZN6embree12parallel_forImZNS_15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS2_NS3_25VirtualRecalculatePrimRefELm2EE5splitERKNS3_8BinSplitILm32EEERKNS_5SetMBERSB_SE_EUlRKS2_E_EET0_PT_SI_SI_SI_RKT1_EUlmE_EEvSJ_RKSI_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  store ptr null, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  store ptr %11, ptr %9, align 8
  invoke void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS4_NS5_25VirtualRecalculatePrimRefELm2EE5splitERKNS5_8BinSplitILm32EEERKNS_5SetMBERSD_SG_EUlRKS4_E_EET0_PT_SK_SK_SK_RKT1_EUlmE_EEvSL_RKSK_EUlRKNS_5rangeImEEE_EEvSL_SL_SL_SS_PNS0_16TaskGroupContextE(i64 noundef 0, i64 noundef %i.as, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %8)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  invoke void @_ZN6embree13TaskScheduler4waitEv()
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit unwind label %bb.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.f
  %i.az = load ptr, ptr %8, align 8               ; 2 uses
  %.not37 = icmp eq ptr %i.az, null
  br i1 %.not37, label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  store ptr %i.az, ptr %10, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #11
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %10) #27
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22

bb.i:                                             ; preds = %bb.f
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22

bb.j:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %10, align 8
  %.not.i21 = icmp eq ptr %i.bd, null
  br i1 %.not.i21, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #11
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22

_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  %.pre.pre = load i64, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %_ZN6embree12parallel_forImZNS_15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS2_NS3_25VirtualRecalculatePrimRefELm2EE5splitERKNS3_8BinSplitILm32EEERKNS_5SetMBERSB_SE_EUlRKS2_E_EET0_PT_SI_SI_SI_RKT1_EUlmE_EEvSJ_RKSI_.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22: ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.pn.i = phi { ptr, i32 } [ %i.ba, %bb.h ], [ %i.bb, %bb.i ], [ %i.bc, %bb.j ], [ %i.bc, %bb.k ]
  %i.be = load ptr, ptr %8, align 8
  %.not.i.i23 = icmp eq ptr %i.be, null
  br i1 %.not.i.i23, label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit24, label %bb.l

bb.l:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #11
  br label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit24

common.resume:                                    ; preds = %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit34, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit24
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit24 ], [ %.pn.i18, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit34 ]
  resume { ptr, i32 } %common.resume.op

_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit24: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %common.resume

_ZN6embree12parallel_forImZNS_15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS2_NS3_25VirtualRecalculatePrimRefELm2EE5splitERKNS3_8BinSplitILm32EEERKNS_5SetMBERSB_SE_EUlRKS2_E_EET0_PT_SI_SI_SI_RKT1_EUlmE_EEvSJ_RKSI_.exit: ; preds = %bb.d, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit
  %i.bf = phi i64 [ %i.as, %bb.d ], [ %.pre.pre, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  %.not43 = icmp eq i64 %i.bf, 0                  ; 2 uses
  br i1 %.not43, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6embree12parallel_forImZNS_15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS2_NS3_25VirtualRecalculatePrimRefELm2EE5splitERKNS3_8BinSplitILm32EEERKNS_5SetMBERSB_SE_EUlRKS2_E_EET0_PT_SI_SI_SI_RKT1_EUlmE_EEvSJ_RKSI_.exit
  %xtraiter = and i64 %i.bf, 1
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.bf, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.01341.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cf, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.01440.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ce, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ca, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod59 = trunc i64 %i.bf to i1
  call void @llvm.assume(i1 %lcmp.mod59)
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.01341.epil.init
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = add i64 %.epil.init, %i.bi
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.01341.epil.init
  store i64 %.01440.epil.init, ptr %i.bk, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZN6embree12parallel_forImZNS_15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS2_NS3_25VirtualRecalculatePrimRefELm2EE5splitERKNS3_8BinSplitILm32EEERKNS_5SetMBERSB_SE_EUlRKS2_E_EET0_PT_SI_SI_SI_RKT1_EUlmE_EEvSJ_RKSI_.exit
  %.lcssa39 = phi i64 [ 0, %_ZN6embree12parallel_forImZNS_15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS2_NS3_25VirtualRecalculatePrimRefELm2EE5splitERKNS3_8BinSplitILm32EEERKNS_5SetMBERSB_SE_EUlRKS2_E_EET0_PT_SI_SI_SI_RKT1_EUlmE_EEvSJ_RKSI_.exit ], [ %i.ca, %._crit_edge.loopexit.unr-lcssa ], [ %i.bj, %.lr.ph.epil.preheader ] ; 3 uses
  store i64 %.lcssa39, ptr %i.g, align 8
  %i.bl = load i64, ptr %i.c, align 8             ; 2 uses
  %i.bm = load i64, ptr %i.b, align 8             ; 2 uses
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = icmp eq i64 %.lcssa39, %i.bn
  br i1 %i.bo, label %bb.v, label %bb.m

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.01341 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cf, %.lr.ph ] ; 5 uses
  %.01440 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ce, %.lr.ph ] ; 2 uses
  %i.bp = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ca, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.01341
  %i.br = load i64, ptr %i.bq, align 16
  %i.bs = add i64 %i.bp, %i.br
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.01341
  %i.bu = load i64, ptr %i.bt, align 16
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.01341
  store i64 %.01440, ptr %i.bv, align 16
  %i.bw = add i64 %i.bu, %.01440                  ; 2 uses
  %i.bx = or disjoint i64 %.01341, 1              ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = add i64 %i.bs, %i.bz                    ; 3 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.bx
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bx
  store i64 %i.bw, ptr %i.cd, align 8
  %i.ce = add i64 %i.cc, %i.bw                    ; 2 uses
  %i.cf = add nuw i64 %.01341, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !2301

bb.m:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  store ptr %i.b, ptr %12, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.c, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.d, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.e, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %i.f, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %12, i64 40
  store ptr %i.g, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %12, i64 48
  store ptr %i.h, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 56
  store ptr %i.a, ptr %i.cm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  br i1 %.not43, label %_ZN6embree12parallel_forImZNS_15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS2_NS3_25VirtualRecalculatePrimRefELm2EE5splitERKNS3_8BinSplitILm32EEERKNS_5SetMBERSB_SE_EUlRKS2_E_EET0_PT_SI_SI_SI_RKT1_EUlmE0_EEvSJ_RKSI_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store ptr null, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  store ptr %12, ptr %6, align 8
  invoke void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS4_NS5_25VirtualRecalculatePrimRefELm2EE5splitERKNS5_8BinSplitILm32EEERKNS_5SetMBERSD_SG_EUlRKS4_E_EET0_PT_SK_SK_SK_RKT1_EUlmE0_EEvSL_RKSK_EUlRKNS_5rangeImEEE_EEvSL_SL_SL_SS_PNS0_16TaskGroupContextE(i64 noundef 0, i64 noundef %i.bf, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %5)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  invoke void @_ZN6embree13TaskScheduler4waitEv()
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit26 unwind label %bb.r

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit26: ; preds = %bb.o
  %i.cn = load ptr, ptr %5, align 8               ; 2 uses
  %.not38 = icmp eq ptr %i.cn, null
  br i1 %.not38, label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit32, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit28

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit28: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit26
  store ptr %i.cn, ptr %7, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #11
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %7) #27
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit28
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit30

bb.r:                                             ; preds = %bb.o
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit30

bb.s:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit28
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cr = load ptr, ptr %7, align 8
  %.not.i29 = icmp eq ptr %i.cr, null
  br i1 %.not.i29, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit30, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #11
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit30

_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit32: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit26
  %.pre45.pre = load i64, ptr %i.g, align 8
  %.pre44.pre = load i64, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %_ZN6embree12parallel_forImZNS_15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS2_NS3_25VirtualRecalculatePrimRefELm2EE5splitERKNS3_8BinSplitILm32EEERKNS_5SetMBERSB_SE_EUlRKS2_E_EET0_PT_SI_SI_SI_RKT1_EUlmE0_EEvSJ_RKSI_.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit30: ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %.pn.i18 = phi { ptr, i32 } [ %i.co, %bb.q ], [ %i.cp, %bb.r ], [ %i.cq, %bb.s ], [ %i.cq, %bb.t ]
  %i.cs = load ptr, ptr %5, align 8
  %.not.i.i33 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i33, label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit34, label %bb.u

bb.u:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit30
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  br label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit34

_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit34: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit30, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %common.resume

_ZN6embree12parallel_forImZNS_15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS2_NS3_25VirtualRecalculatePrimRefELm2EE5splitERKNS3_8BinSplitILm32EEERKNS_5SetMBERSB_SE_EUlRKS2_E_EET0_PT_SI_SI_SI_RKT1_EUlmE0_EEvSJ_RKSI_.exit: ; preds = %bb.m, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit32
  %i.ct = phi i64 [ %.lcssa39, %bb.m ], [ %.pre45.pre, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit32 ]
  %i.cu = phi i64 [ %i.bm, %bb.m ], [ %.pre44.pre, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit32 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  %i.cv = add i64 %i.ct, %i.cu
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge, %_ZN6embree12parallel_forImZNS_15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS2_NS3_25VirtualRecalculatePrimRefELm2EE5splitERKNS3_8BinSplitILm32EEERKNS_5SetMBERSB_SE_EUlRKS2_E_EET0_PT_SI_SI_SI_RKT1_EUlmE0_EEvSJ_RKSI_.exit
  %.0 = phi i64 [ %i.cv, %_ZN6embree12parallel_forImZNS_15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS2_NS3_25VirtualRecalculatePrimRefELm2EE5splitERKNS3_8BinSplitILm32EEERKNS_5SetMBERSB_SE_EUlRKS2_E_EET0_PT_SI_SI_SI_RKT1_EUlmE0_EEvSJ_RKSI_.exit ], [ %i.bl, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %_ZN6embree17sequential_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS1_NS2_25VirtualRecalculatePrimRefELm2EE5splitERKNS2_8BinSplitILm32EEERKNS_5SetMBERSA_SD_EUlRKS1_E_EET0_PT_SH_SH_RKT1_.exit

_ZN6embree17sequential_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS1_NS2_25VirtualRecalculatePrimRefELm2EE5splitERKNS2_8BinSplitILm32EEERKNS_5SetMBERSA_SD_EUlRKS1_E_EET0_PT_SH_SH_RKT1_.exit: ; preds = %_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_25VirtualRecalculatePrimRefELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS9_SC_ENKUlRKS2_E_clESE_.exit.thread.i, %bb.b, %bb.v
  %.1 = phi i64 [ %.0, %bb.v ], [ %1, %bb.b ], [ %.1.i, %_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_25VirtualRecalculatePrimRefELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS9_SC_ENKUlRKS2_E_clESE_.exit.thread.i ]
  ret i64 %.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN6embree15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS1_NS2_25VirtualRecalculatePrimRefELm2EE5splitERKNS2_8BinSplitILm32EEERKNS_5SetMBERSA_SD_EUlRKS1_E0_EET0_PT_SH_SH_SH_RKT1_(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #19 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %6 = alloca %class.anon.234, align 8            ; 5 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %8 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %9 = alloca %class.anon.231, align 8            ; 5 uses
  %10 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca [64 x i64], align 16              ; 7 uses
  %i.f = alloca [64 x i64], align 16              ; 6 uses
  %11 = alloca %class.anon.229, align 8           ; 10 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca [64 x i64], align 16              ; 6 uses
  %12 = alloca %class.anon.230, align 8           ; 11 uses
  store ptr %0, ptr %i.a, align 8
  store i64 %1, ptr %i.b, align 8
  store i64 %2, ptr %i.c, align 8
  %i.i = sub i64 %2, %1
  %.not = icmp ugt i64 %i.i, %3
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %1, %2
  br i1 %i.j, label %.lr.ph.i, label %_ZN6embree17sequential_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS1_NS2_25VirtualRecalculatePrimRefELm2EE5splitERKNS2_8BinSplitILm32EEERKNS_5SetMBERSA_SD_EUlRKS1_E0_EET0_PT_SH_SH_RKT1_.exit

.lr.ph.i:                                         ; preds = %bb.b, %_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_25VirtualRecalculatePrimRefELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS9_SC_ENKUlRKS2_E0_clESE_.exit.thread.i
  %.015.i = phi i64 [ %i.al, %_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_25VirtualRecalculatePrimRefELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS9_SC_ENKUlRKS2_E0_clESE_.exit.thread.i ], [ %1, %bb.b ] ; 2 uses
  %.01214.i = phi i64 [ %.1.i, %_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_25VirtualRecalculatePrimRefELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS9_SC_ENKUlRKS2_E0_clESE_.exit.thread.i ], [ %1, %bb.b ] ; 4 uses
  %i.k = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.015.i ; 6 uses
  %i.l = load ptr, ptr %4, align 8, !nonnull !35, !align !49 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 68
  %i.n = load float, ptr %i.m, align 4            ; 2 uses
  %i.o = fmul float %i.n, f0x3F7FF972
  %i.p = load float, ptr %i.l, align 4
  %i.q = fcmp ugt float %i.o, %i.p
  br i1 %i.q, label %_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_25VirtualRecalculatePrimRefELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS9_SC_ENKUlRKS2_E0_clESE_.exit.i, label %_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_25VirtualRecalculatePrimRefELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS9_SC_ENKUlRKS2_E0_clESE_.exit.thread.i

_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_25VirtualRecalculatePrimRefELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS9_SC_ENKUlRKS2_E0_clESE_.exit.i: ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.s = load float, ptr %i.r, align 16           ; 2 uses
  %i.t = fmul float %i.s, 1.000100e+00
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.v = load float, ptr %i.u, align 4
  %i.w = fcmp ult float %i.t, %i.v
  br i1 %i.w, label %bb.c, label %_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_25VirtualRecalculatePrimRefELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS9_SC_ENKUlRKS2_E0_clESE_.exit.thread.i

bb.c:                                             ; preds = %_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_25VirtualRecalculatePrimRefELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS9_SC_ENKUlRKS2_E0_clESE_.exit.i
  %i.x = add i64 %.01214.i, 1
  %i.y = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.01214.i ; 6 uses
  %i.z = load <4 x float>, ptr %i.k, align 16
  store <4 x float> %i.z, ptr %i.y, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = load <4 x float>, ptr %i.aa, align 16
  store <4 x float> %i.ac, ptr %i.ab, align 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.af = load <4 x float>, ptr %i.ad, align 16
  store <4 x float> %i.af, ptr %i.ae, align 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.ai = load <4 x float>, ptr %i.ag, align 16
  store <4 x float> %i.ai, ptr %i.ah, align 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  store float %i.s, ptr %i.aj, align 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 68
  store float %i.n, ptr %i.ak, align 4
  br label %_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_25VirtualRecalculatePrimRefELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS9_SC_ENKUlRKS2_E0_clESE_.exit.thread.i

_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_25VirtualRecalculatePrimRefELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS9_SC_ENKUlRKS2_E0_clESE_.exit.thread.i: ; preds = %bb.c, %_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_25VirtualRecalculatePrimRefELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS9_SC_ENKUlRKS2_E0_clESE_.exit.i, %.lr.ph.i
  %.1.i = phi i64 [ %i.x, %bb.c ], [ %.01214.i, %_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_25VirtualRecalculatePrimRefELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS9_SC_ENKUlRKS2_E0_clESE_.exit.i ], [ %.01214.i, %.lr.ph.i ] ; 2 uses
  %i.al = add nuw i64 %.015.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.al, %2
  br i1 %exitcond.not.i, label %_ZN6embree17sequential_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS1_NS2_25VirtualRecalculatePrimRefELm2EE5splitERKNS2_8BinSplitILm32EEERKNS_5SetMBERSA_SD_EUlRKS1_E0_EET0_PT_SH_SH_RKT1_.exit, label %.lr.ph.i, !llvm.loop !28

bb.d:                                             ; preds = %bb.a
  %i.am = tail call noundef i64 @_ZN6embree13TaskScheduler11threadCountEv()
  %i.an = add i64 %3, -1
  %i.ao = add i64 %i.an, %2
  %i.ap = sub i64 %i.ao, %1
  %i.aq = udiv i64 %i.ap, %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.ar = tail call noundef i64 @llvm.umin.i64(i64 %i.am, i64 %i.aq) ; 2 uses
  %i.as = tail call noundef i64 @llvm.umin.i64(i64 %i.ar, i64 64) ; 3 uses
  store i64 %i.as, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  store ptr %i.b, ptr %11, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.c, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.d, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.a, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %4, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr %i.e, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 48
  store ptr %i.f, ptr %i.ay, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %.not.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i, label %_ZN6embree12parallel_forImZNS_15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS2_NS3_25VirtualRecalculatePrimRefELm2EE5splitERKNS3_8BinSplitILm32EEERKNS_5SetMBERSB_SE_EUlRKS2_E0_EET0_PT_SI_SI_SI_RKT1_EUlmE_EEvSJ_RKSI_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  store ptr null, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  store ptr %11, ptr %9, align 8
  invoke void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS4_NS5_25VirtualRecalculatePrimRefELm2EE5splitERKNS5_8BinSplitILm32EEERKNS_5SetMBERSD_SG_EUlRKS4_E0_EET0_PT_SK_SK_SK_RKT1_EUlmE_EEvSL_RKSK_EUlRKNS_5rangeImEEE_EEvSL_SL_SL_SS_PNS0_16TaskGroupContextE(i64 noundef 0, i64 noundef %i.as, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %8)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  invoke void @_ZN6embree13TaskScheduler4waitEv()
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit unwind label %bb.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.f
  %i.az = load ptr, ptr %8, align 8               ; 2 uses
  %.not37 = icmp eq ptr %i.az, null
  br i1 %.not37, label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  store ptr %i.az, ptr %10, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #11
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %10) #27
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22

bb.i:                                             ; preds = %bb.f
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22

bb.j:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %10, align 8
  %.not.i21 = icmp eq ptr %i.bd, null
  br i1 %.not.i21, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #11
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22

_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  %.pre.pre = load i64, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %_ZN6embree12parallel_forImZNS_15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS2_NS3_25VirtualRecalculatePrimRefELm2EE5splitERKNS3_8BinSplitILm32EEERKNS_5SetMBERSB_SE_EUlRKS2_E0_EET0_PT_SI_SI_SI_RKT1_EUlmE_EEvSJ_RKSI_.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22: ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.pn.i = phi { ptr, i32 } [ %i.ba, %bb.h ], [ %i.bb, %bb.i ], [ %i.bc, %bb.j ], [ %i.bc, %bb.k ]
  %i.be = load ptr, ptr %8, align 8
  %.not.i.i23 = icmp eq ptr %i.be, null
  br i1 %.not.i.i23, label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit24, label %bb.l

bb.l:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #11
  br label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit24

common.resume:                                    ; preds = %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit34, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit24
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit24 ], [ %.pn.i18, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit34 ]
  resume { ptr, i32 } %common.resume.op

_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit24: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %common.resume

_ZN6embree12parallel_forImZNS_15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS2_NS3_25VirtualRecalculatePrimRefELm2EE5splitERKNS3_8BinSplitILm32EEERKNS_5SetMBERSB_SE_EUlRKS2_E0_EET0_PT_SI_SI_SI_RKT1_EUlmE_EEvSJ_RKSI_.exit: ; preds = %bb.d, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit
  %i.bf = phi i64 [ %i.as, %bb.d ], [ %.pre.pre, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  %.not43 = icmp eq i64 %i.bf, 0                  ; 2 uses
  br i1 %.not43, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6embree12parallel_forImZNS_15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS2_NS3_25VirtualRecalculatePrimRefELm2EE5splitERKNS3_8BinSplitILm32EEERKNS_5SetMBERSB_SE_EUlRKS2_E0_EET0_PT_SI_SI_SI_RKT1_EUlmE_EEvSJ_RKSI_.exit
  %xtraiter = and i64 %i.bf, 1
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.bf, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.01341.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cf, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.01440.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ce, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ca, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod59 = trunc i64 %i.bf to i1
  call void @llvm.assume(i1 %lcmp.mod59)
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.01341.epil.init
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = add i64 %.epil.init, %i.bi
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.01341.epil.init
  store i64 %.01440.epil.init, ptr %i.bk, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZN6embree12parallel_forImZNS_15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS2_NS3_25VirtualRecalculatePrimRefELm2EE5splitERKNS3_8BinSplitILm32EEERKNS_5SetMBERSB_SE_EUlRKS2_E0_EET0_PT_SI_SI_SI_RKT1_EUlmE_EEvSJ_RKSI_.exit
  %.lcssa39 = phi i64 [ 0, %_ZN6embree12parallel_forImZNS_15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS2_NS3_25VirtualRecalculatePrimRefELm2EE5splitERKNS3_8BinSplitILm32EEERKNS_5SetMBERSB_SE_EUlRKS2_E0_EET0_PT_SI_SI_SI_RKT1_EUlmE_EEvSJ_RKSI_.exit ], [ %i.ca, %._crit_edge.loopexit.unr-lcssa ], [ %i.bj, %.lr.ph.epil.preheader ] ; 3 uses
  store i64 %.lcssa39, ptr %i.g, align 8
  %i.bl = load i64, ptr %i.c, align 8             ; 2 uses
  %i.bm = load i64, ptr %i.b, align 8             ; 2 uses
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = icmp eq i64 %.lcssa39, %i.bn
  br i1 %i.bo, label %bb.v, label %bb.m

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.01341 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cf, %.lr.ph ] ; 5 uses
  %.01440 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ce, %.lr.ph ] ; 2 uses
  %i.bp = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ca, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.01341
  %i.br = load i64, ptr %i.bq, align 16
  %i.bs = add i64 %i.bp, %i.br
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.01341
  %i.bu = load i64, ptr %i.bt, align 16
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.01341
  store i64 %.01440, ptr %i.bv, align 16
  %i.bw = add i64 %i.bu, %.01440                  ; 2 uses
  %i.bx = or disjoint i64 %.01341, 1              ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = add i64 %i.bs, %i.bz                    ; 3 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.bx
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bx
  store i64 %i.bw, ptr %i.cd, align 8
  %i.ce = add i64 %i.cc, %i.bw                    ; 2 uses
  %i.cf = add nuw i64 %.01341, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !2302

bb.m:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  store ptr %i.b, ptr %12, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.c, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.d, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.e, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %i.f, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %12, i64 40
  store ptr %i.g, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %12, i64 48
  store ptr %i.h, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 56
  store ptr %i.a, ptr %i.cm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  br i1 %.not43, label %_ZN6embree12parallel_forImZNS_15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS2_NS3_25VirtualRecalculatePrimRefELm2EE5splitERKNS3_8BinSplitILm32EEERKNS_5SetMBERSB_SE_EUlRKS2_E0_EET0_PT_SI_SI_SI_RKT1_EUlmE0_EEvSJ_RKSI_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store ptr null, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  store ptr %12, ptr %6, align 8
  invoke void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS4_NS5_25VirtualRecalculatePrimRefELm2EE5splitERKNS5_8BinSplitILm32EEERKNS_5SetMBERSD_SG_EUlRKS4_E0_EET0_PT_SK_SK_SK_RKT1_EUlmE0_EEvSL_RKSK_EUlRKNS_5rangeImEEE_EEvSL_SL_SL_SS_PNS0_16TaskGroupContextE(i64 noundef 0, i64 noundef %i.bf, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %5)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  invoke void @_ZN6embree13TaskScheduler4waitEv()
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit26 unwind label %bb.r

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit26: ; preds = %bb.o
  %i.cn = load ptr, ptr %5, align 8               ; 2 uses
  %.not38 = icmp eq ptr %i.cn, null
  br i1 %.not38, label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit32, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit28

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit28: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit26
  store ptr %i.cn, ptr %7, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #11
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %7) #27
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit28
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit30

bb.r:                                             ; preds = %bb.o
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit30

bb.s:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit28
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cr = load ptr, ptr %7, align 8
  %.not.i29 = icmp eq ptr %i.cr, null
  br i1 %.not.i29, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit30, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #11
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit30

_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit32: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit26
  %.pre45.pre = load i64, ptr %i.g, align 8
  %.pre44.pre = load i64, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %_ZN6embree12parallel_forImZNS_15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS2_NS3_25VirtualRecalculatePrimRefELm2EE5splitERKNS3_8BinSplitILm32EEERKNS_5SetMBERSB_SE_EUlRKS2_E0_EET0_PT_SI_SI_SI_RKT1_EUlmE0_EEvSJ_RKSI_.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit30: ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %.pn.i18 = phi { ptr, i32 } [ %i.co, %bb.q ], [ %i.cp, %bb.r ], [ %i.cq, %bb.s ], [ %i.cq, %bb.t ]
  %i.cs = load ptr, ptr %5, align 8
  %.not.i.i33 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i33, label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit34, label %bb.u

bb.u:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit30
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  br label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit34

_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit34: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit30, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %common.resume

_ZN6embree12parallel_forImZNS_15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS2_NS3_25VirtualRecalculatePrimRefELm2EE5splitERKNS3_8BinSplitILm32EEERKNS_5SetMBERSB_SE_EUlRKS2_E0_EET0_PT_SI_SI_SI_RKT1_EUlmE0_EEvSJ_RKSI_.exit: ; preds = %bb.m, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit32
  %i.ct = phi i64 [ %.lcssa39, %bb.m ], [ %.pre45.pre, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit32 ]
  %i.cu = phi i64 [ %i.bm, %bb.m ], [ %.pre44.pre, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit32 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  %i.cv = add i64 %i.ct, %i.cu
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge, %_ZN6embree12parallel_forImZNS_15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS2_NS3_25VirtualRecalculatePrimRefELm2EE5splitERKNS3_8BinSplitILm32EEERKNS_5SetMBERSB_SE_EUlRKS2_E0_EET0_PT_SI_SI_SI_RKT1_EUlmE0_EEvSJ_RKSI_.exit
  %.0 = phi i64 [ %i.cv, %_ZN6embree12parallel_forImZNS_15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS2_NS3_25VirtualRecalculatePrimRefELm2EE5splitERKNS3_8BinSplitILm32EEERKNS_5SetMBERSB_SE_EUlRKS2_E0_EET0_PT_SI_SI_SI_RKT1_EUlmE0_EEvSJ_RKSI_.exit ], [ %i.bl, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %_ZN6embree17sequential_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS1_NS2_25VirtualRecalculatePrimRefELm2EE5splitERKNS2_8BinSplitILm32EEERKNS_5SetMBERSA_SD_EUlRKS1_E0_EET0_PT_SH_SH_RKT1_.exit

_ZN6embree17sequential_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS1_NS2_25VirtualRecalculatePrimRefELm2EE5splitERKNS2_8BinSplitILm32EEERKNS_5SetMBERSA_SD_EUlRKS1_E0_EET0_PT_SH_SH_RKT1_.exit: ; preds = %_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_25VirtualRecalculatePrimRefELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS9_SC_ENKUlRKS2_E0_clESE_.exit.thread.i, %bb.b, %bb.v
  %.1 = phi i64 [ %.0, %bb.v ], [ %1, %bb.b ], [ %.1.i, %_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_25VirtualRecalculatePrimRefELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS9_SC_ENKUlRKS2_E0_clESE_.exit.thread.i ]
  ret i64 %.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_25VirtualRecalculatePrimRefELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS9_SC_ENKUlRKNS_5rangeImEEE_clESG_(ptr dead_on_unwind noalias writable sret(%"class.embree::PrimInfoMBT") align 16 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %3 = alloca %"struct.embree::BBox.29", align 8  ; 5 uses
  %4 = alloca %"struct.embree::LBBox", align 16   ; 7 uses
  %i.a = load i64, ptr %2, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp ult i64 %i.a, %i.c
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit, %bb.a
  %.sroa.43.0.lcssa = phi float [ 1.000000e+00, %bb.a ], [ %.sroa.43.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.36.0.lcssa = phi i64 [ 0, %bb.a ], [ %.sroa.36.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.3240.0.lcssa = phi i64 [ 0, %bb.a ], [ %.sroa.3240.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.28.0.lcssa = phi i64 [ 0, %bb.a ], [ %.sroa.28.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.22.0.lcssa = phi <4 x float> [ splat (float -inf), %bb.a ], [ %.sroa.22.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.1836.0.lcssa = phi <4 x float> [ splat (float +inf), %bb.a ], [ %.sroa.1836.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.14.0.lcssa = phi <4 x float> [ splat (float -inf), %bb.a ], [ %.sroa.14.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.10.0.lcssa = phi <4 x float> [ splat (float +inf), %bb.a ], [ %.sroa.10.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.6.0.lcssa = phi <4 x float> [ splat (float -inf), %bb.a ], [ %.sroa.6.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.031.0.lcssa = phi <4 x float> [ splat (float +inf), %bb.a ], [ %.sroa.031.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.46.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.46.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %i.o = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %bb.a ], [ %i.eu, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  store <4 x float> %.sroa.031.0.lcssa, ptr %0, align 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %.sroa.6.0.lcssa, ptr %i.p, align 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> %.sroa.10.0.lcssa, ptr %i.q, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> %.sroa.14.0.lcssa, ptr %i.r, align 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x float> %.sroa.1836.0.lcssa, ptr %i.s, align 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x float> %.sroa.22.0.lcssa, ptr %i.t, align 16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.u, align 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sroa.28.0.lcssa, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.3240.0.lcssa, ptr %i.w, align 16
  %.sroa.36.112..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.36.0.lcssa, ptr %.sroa.36.112..sroa_idx, align 8
  %.sroa.39.112..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <2 x float> %i.o, ptr %.sroa.39.112..sroa_idx, align 16
  %.sroa.43.112..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store float %.sroa.43.0.lcssa, ptr %.sroa.43.112..sroa_idx, align 8
  %.sroa.46.112..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 140
  store float %.sroa.46.0.lcssa, ptr %.sroa.46.112..sroa_idx, align 4
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit
  %.0104 = phi i64 [ %i.a, %.lr.ph ], [ %i.ev, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 4 uses
  %.sroa.46.0103 = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.46.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 3 uses
  %.sroa.031.0102 = phi <4 x float> [ splat (float +inf), %.lr.ph ], [ %.sroa.031.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 2 uses
  %.sroa.6.0101 = phi <4 x float> [ splat (float -inf), %.lr.ph ], [ %.sroa.6.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 2 uses
  %.sroa.10.0100 = phi <4 x float> [ splat (float +inf), %.lr.ph ], [ %.sroa.10.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 2 uses
  %.sroa.14.099 = phi <4 x float> [ splat (float -inf), %.lr.ph ], [ %.sroa.14.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 2 uses
  %.sroa.1836.098 = phi <4 x float> [ splat (float +inf), %.lr.ph ], [ %.sroa.1836.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 2 uses
  %.sroa.22.097 = phi <4 x float> [ splat (float -inf), %.lr.ph ], [ %.sroa.22.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 2 uses
  %.sroa.28.096 = phi i64 [ 0, %.lr.ph ], [ %.sroa.28.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 2 uses
  %.sroa.3240.095 = phi i64 [ 0, %.lr.ph ], [ %.sroa.3240.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 2 uses
  %.sroa.36.094 = phi i64 [ 0, %.lr.ph ], [ %.sroa.36.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 3 uses
  %.sroa.43.091 = phi float [ 1.000000e+00, %.lr.ph ], [ %.sroa.43.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 3 uses
  %i.x = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %.lr.ph ], [ %i.eu, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 2 uses
  %i.y = load ptr, ptr %1, align 8, !nonnull !35, !align !37
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw [80 x i8], ptr %i.aa, i64 %.0104 ; 9 uses
  %i.ac = load ptr, ptr %i.g, align 8, !nonnull !35, !align !49 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 68 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4
end_hunk_7
