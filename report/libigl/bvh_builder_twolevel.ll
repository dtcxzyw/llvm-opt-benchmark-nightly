Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_builder_twolevel?download=true
inline.NumInlined: 11316
inline.NumDeleted: 1655
loop-unroll.NumCompletelyUnrolled: 69
loop-unroll.NumRuntimeUnrolled: 119
loop-unroll.NumUnrolled: 307
begin_hunk_0_@_ZN6embree21parallel_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EEmPT_mmRKT1_RT0_S15_RKT2_RKT3_RKT4_m:bb.a
  store i64 0, ptr %i.dp, align 8
  %.not119 = icmp eq i64 %i.dm, 0
  br i1 %.not119, label %._crit_edge101.thread, label %.noexc33.lr.ph

._crit_edge101.thread:                            ; preds = %.noexc31
  %i.dq = load i64, ptr %i.do, align 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  br label %._crit_edge105.thread

.noexc33.lr.ph:                                   ; preds = %.noexc31
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cq, i64 3264
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cq, i64 8384
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  br label %.noexc33

._crit_edge:                                      ; preds = %.noexc33
  %i.ed = load i64, ptr %i.do, align 64           ; 4 uses
  %i.ee = icmp ugt i64 %i.gm, 1
  br i1 %i.ee, label %.lr.ph.preheader, label %._crit_edge101

.lr.ph.preheader:                                 ; preds = %._crit_edge
  %i.ef = add i64 %i.gm, -1                       ; 2 uses
  %min.iters.check = icmp ult i64 %i.gm, 5
  br i1 %min.iters.check, label %.lr.ph.preheader172, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ef, -4                      ; 3 uses
  %i.eg = or disjoint i64 %n.vec, 1
  %i.eh = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ed, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.eh, %vector.ph ], [ %i.el, %vector.body ]
  %vec.phi166 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.em, %vector.body ]
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %index ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %wide.load = load <2 x i64>, ptr %i.ej, align 8
  %wide.load167 = load <2 x i64>, ptr %i.ek, align 8
  %i.el = add <2 x i64> %wide.load, %vec.phi      ; 2 uses
  %i.em = add <2 x i64> %wide.load167, %vec.phi166 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.en = icmp eq i64 %index.next, %n.vec
  br i1 %i.en, label %middle.block, label %vector.body, !llvm.loop !930

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.em, %i.el
  %i.eo = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ef, %n.vec
  br i1 %cmp.n, label %._crit_edge101.thread144, label %.lr.ph.preheader172

.lr.ph.preheader172:                              ; preds = %.lr.ph.preheader, %middle.block
  %.025.i99.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.eg, %middle.block ]
  %.026.i98.ph = phi i64 [ %i.ed, %.lr.ph.preheader ], [ %i.eo, %middle.block ]
  br label %.lr.ph

.noexc33:                                         ; preds = %.noexc33.lr.ph, %.noexc33
  %.027.i97 = phi i64 [ 0, %.noexc33.lr.ph ], [ %i.gl, %.noexc33 ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [80 x i8], ptr %i.dr, i64 %.027.i97 ; 6 uses
  %i.eq = load <4 x float>, ptr %4, align 16, !noalias !970
  %i.er = load <4 x float>, ptr %i.ep, align 16, !noalias !970
  %i.es = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.eq, <4 x float> %i.er)
  store <4 x float> %i.es, ptr %4, align 16
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.eu = load <4 x float>, ptr %i.ds, align 16, !noalias !971
  %i.ev = load <4 x float>, ptr %i.et, align 16, !noalias !971
  %i.ew = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.eu, <4 x float> %i.ev)
  store <4 x float> %i.ew, ptr %i.ds, align 16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.ey = load <4 x float>, ptr %i.dt, align 16, !noalias !972
  %i.ez = load <4 x float>, ptr %i.ex, align 16, !noalias !972
  %i.fa = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ey, <4 x float> %i.ez)
  store <4 x float> %i.fa, ptr %i.dt, align 16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ep, i64 48
  %i.fc = load <4 x float>, ptr %i.du, align 16, !noalias !973
  %i.fd = load <4 x float>, ptr %i.fb, align 16, !noalias !973
  %i.fe = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fc, <4 x float> %i.fd)
  store <4 x float> %i.fe, ptr %i.du, align 16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ep, i64 64
  %i.fg = load i64, ptr %i.ff, align 16
  %i.fh = load i64, ptr %i.dv, align 16
  %i.fi = add i64 %i.fh, %i.fg
  store i64 %i.fi, ptr %i.dv, align 16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ep, i64 72
  %i.fk = load i64, ptr %i.fj, align 8
  %i.fl = load i64, ptr %i.dw, align 8
  %i.fm = add i64 %i.fl, %i.fk
  store i64 %i.fm, ptr %i.dw, align 8
  %i.fn = getelementptr inbounds nuw [80 x i8], ptr %i.dx, i64 %.027.i97 ; 6 uses
  %i.fo = load <4 x float>, ptr %5, align 16, !noalias !974
  %i.fp = load <4 x float>, ptr %i.fn, align 16, !noalias !974
  %i.fq = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fo, <4 x float> %i.fp)
  store <4 x float> %i.fq, ptr %5, align 16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fs = load <4 x float>, ptr %i.dy, align 16, !noalias !975
  %i.ft = load <4 x float>, ptr %i.fr, align 16, !noalias !975
  %i.fu = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fs, <4 x float> %i.ft)
  store <4 x float> %i.fu, ptr %i.dy, align 16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fw = load <4 x float>, ptr %i.dz, align 16, !noalias !976
  %i.fx = load <4 x float>, ptr %i.fv, align 16, !noalias !976
  %i.fy = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fw, <4 x float> %i.fx)
  store <4 x float> %i.fy, ptr %i.dz, align 16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fn, i64 48
  %i.ga = load <4 x float>, ptr %i.ea, align 16, !noalias !977
  %i.gb = load <4 x float>, ptr %i.fz, align 16, !noalias !977
  %i.gc = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ga, <4 x float> %i.gb)
  store <4 x float> %i.gc, ptr %i.ea, align 16
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fn, i64 64
  %i.ge = load i64, ptr %i.gd, align 16
  %i.gf = load i64, ptr %i.eb, align 16
  %i.gg = add i64 %i.gf, %i.ge
  store i64 %i.gg, ptr %i.eb, align 16
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fn, i64 72
  %i.gi = load i64, ptr %i.gh, align 8
  %i.gj = load i64, ptr %i.ec, align 8
  %i.gk = add i64 %i.gj, %i.gi
  store i64 %i.gk, ptr %i.ec, align 8
  %i.gl = add nuw i64 %.027.i97, 1                ; 2 uses
  %i.gm = load i64, ptr %i.cx, align 16           ; 7 uses
  %i.gn = icmp ult i64 %i.gl, %i.gm
  br i1 %i.gn, label %.noexc33, label %._crit_edge, !llvm.loop !947

._crit_edge101:                                   ; preds = %._crit_edge
  %i.go = load i64, ptr %i.cs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 0, ptr %i.c, align 8
  %.not120 = icmp eq i64 %i.gm, 0
  br i1 %.not120, label %._crit_edge105.thread, label %.noexc35.lr.ph

.noexc35.lr.ph:                                   ; preds = %._crit_edge101.thread144, %._crit_edge101
  %i.gp = phi i64 [ %i.gx, %._crit_edge101.thread144 ], [ %i.go, %._crit_edge101 ]
  %.026.i.lcssa147 = phi i64 [ %.lcssa164, %._crit_edge101.thread144 ], [ %i.ed, %._crit_edge101 ] ; 4 uses
  %i.gq = phi i64 [ %i.gm, %._crit_edge101.thread144 ], [ 1, %._crit_edge101 ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1216
  %i.gs = getelementptr inbounds nuw i8, ptr %i.cq, i64 2240
  br label %.noexc35

.lr.ph:                                           ; preds = %.lr.ph.preheader172, %.lr.ph
  %.025.i99 = phi i64 [ %i.gw, %.lr.ph ], [ %.025.i99.ph, %.lr.ph.preheader172 ] ; 2 uses
  %.026.i98 = phi i64 [ %i.gv, %.lr.ph ], [ %.026.i98.ph, %.lr.ph.preheader172 ]
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.025.i99
  %i.gu = load i64, ptr %i.gt, align 8
  %i.gv = add i64 %i.gu, %.026.i98                ; 2 uses
  %i.gw = add nuw i64 %.025.i99, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.gw, %i.gm
  br i1 %exitcond.not, label %._crit_edge101.thread144, label %.lr.ph, !llvm.loop !948

._crit_edge101.thread144:                         ; preds = %.lr.ph, %middle.block
  %.lcssa164 = phi i64 [ %i.eo, %middle.block ], [ %i.gv, %.lr.ph ]
  %i.gx = load i64, ptr %i.cs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 0, ptr %i.c, align 8
  br label %.noexc35.lr.ph

._crit_edge105:                                   ; preds = %bb.q
  %i.gy = icmp eq i64 %i.ht, 0
  br i1 %i.gy, label %._crit_edge105.thread, label %bb.r

.noexc35:                                         ; preds = %.noexc35.lr.ph, %bb.q
  %i.gz = phi i64 [ 0, %.noexc35.lr.ph ], [ %i.hw, %bb.q ] ; 3 uses
  %i.ha = phi i64 [ 0, %.noexc35.lr.ph ], [ %i.hs, %bb.q ] ; 3 uses
  %i.hb = phi i64 [ 0, %.noexc35.lr.ph ], [ %i.ht, %bb.q ] ; 2 uses
  %.0.i29104 = phi i64 [ 0, %.noexc35.lr.ph ], [ %i.hh, %bb.q ] ; 3 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %.0.i29104
  %i.hd = load i64, ptr %i.hc, align 8            ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.0.i29104
  %i.hf = load i64, ptr %i.he, align 8
  %i.hg = add i64 %i.hf, %i.hd                    ; 2 uses
  %i.hh = add nuw i64 %.0.i29104, 1               ; 3 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.hh
  %i.hj = load i64, ptr %i.hi, align 8
  %i.hk = call noundef i64 @llvm.smax.i64(i64 %i.hg, i64 0) ; 3 uses
  %i.hl = call noundef i64 @llvm.smin.i64(i64 %.026.i.lcssa147, i64 %i.hj) ; 3 uses
  %i.hm = call noundef i64 @llvm.smax.i64(i64 %.026.i.lcssa147, i64 %i.hd) ; 2 uses
  %i.hn = call noundef i64 @llvm.smin.i64(i64 %i.gp, i64 %i.hg) ; 2 uses
  %.not88 = icmp sgt i64 %i.hl, %i.hk
  br i1 %.not88, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.noexc35
  %i.ho = sub nsw i64 %i.hl, %i.hk
  %i.hp = add i64 %i.ho, %i.hb                    ; 2 uses
  store i64 %i.hp, ptr %i.c, align 8
  %i.hq = add i64 %i.ha, 1                        ; 2 uses
  store i64 %i.hq, ptr %i.a, align 8
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.gr, i64 %i.ha ; 2 uses
  store i64 %i.hk, ptr %i.hr, align 16
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store i64 %i.hl, ptr %.sroa.666.0..sroa_idx, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.noexc35
  %i.hs = phi i64 [ %i.hq, %bb.n ], [ %i.ha, %.noexc35 ]
  %i.ht = phi i64 [ %i.hp, %bb.n ], [ %i.hb, %.noexc35 ] ; 2 uses
  %.not89 = icmp sgt i64 %i.hn, %i.hm
  br i1 %.not89, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.hu = add i64 %i.gz, 1                        ; 2 uses
  store i64 %i.hu, ptr %i.b, align 8
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %i.gs, i64 %i.gz ; 2 uses
  store i64 %i.hm, ptr %i.hv, align 16
  %.sroa.662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store i64 %i.hn, ptr %.sroa.662.0..sroa_idx, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.hw = phi i64 [ %i.gz, %bb.o ], [ %i.hu, %bb.p ]
  %i.hx = icmp ult i64 %i.hh, %i.gq
  br i1 %i.hx, label %.noexc35, label %._crit_edge105, !llvm.loop !949

bb.r:                                             ; preds = %._crit_edge105
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  store ptr %i.c, ptr %17, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.cq, ptr %i.hy, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.a, ptr %i.hz, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %i.b, ptr %i.ia, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store ptr null, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr %17, ptr %11, align 8
  invoke void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_23parallel_partition_taskINS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS4_26HeuristicArrayOpenMergeSAHIZNS9_5buildEvEUlRSA_PSA_E_SA_Lm32EE21parallel_object_splitERKNS4_8BinSplitILm32EEERKNS4_16PrimInfoExtRangeERSQ_ST_EUlRKSA_E_ZNSL_21parallel_object_splitESP_SS_ST_ST_EUlRSF_SV_E_ZNSL_21parallel_object_splitESP_SS_ST_ST_EUlSX_RKSF_E_E9partitionESX_SX_EUlmE0_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvS14_S14_S14_S17_PNS0_16TaskGroupContextE(i64 noundef 0, i64 noundef %i.gq, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %10)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  invoke void @_ZN6embree13TaskScheduler4waitEv()
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit50 unwind label %bb.v

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit50: ; preds = %bb.s
  %i.ib = load ptr, ptr %10, align 8              ; 2 uses
  %.not87 = icmp eq ptr %i.ib, null
  br i1 %.not87, label %.noexc36, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit52

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit52: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit50
  store ptr %i.ib, ptr %12, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %12) #28
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit52
  unreachable

bb.u:                                             ; preds = %bb.r
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit54

bb.v:                                             ; preds = %bb.s
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit54

bb.w:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit52
  %i.ie = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.if = load ptr, ptr %12, align 8
  %.not.i53 = icmp eq ptr %i.if, null
  br i1 %.not.i53, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit54, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit54

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit54: ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %.pn.i40 = phi { ptr, i32 } [ %i.ic, %bb.u ], [ %i.id, %bb.v ], [ %i.ie, %bb.w ], [ %i.ie, %bb.x ]
  %i.ig = load ptr, ptr %10, align 8
  %.not.i.i57 = icmp eq ptr %i.ig, null
  br i1 %.not.i.i57, label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit58, label %bb.y

bb.y:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit54
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #21
  br label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit58

_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit58: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit54, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %.body

.noexc36:                                         ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit50
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %._crit_edge105.thread

._crit_edge105.thread:                            ; preds = %._crit_edge101.thread, %._crit_edge101, %._crit_edge105, %.noexc36
  %.026.i.lcssa143150 = phi i64 [ %.026.i.lcssa147, %._crit_edge105 ], [ %.026.i.lcssa147, %.noexc36 ], [ %i.dq, %._crit_edge101.thread ], [ %i.ed, %._crit_edge101 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.cq)
          to label %_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_12TriangleMeshENS0_9TriangleMILi4EEEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS7_5buildEvEUlRS8_PS8_E_S8_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSO_SR_EUlRKS8_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlRSD_ST_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlSV_RKSD_E_EESt14default_deleteIS10_EED2Ev.exit unwind label %bb.z

bb.z:                                             ; preds = %._crit_edge105.thread
  %i.ih = landingpad { ptr, i32 }
          catch ptr null
  %i.ii = extractvalue { ptr, i32 } %i.ih, 0
  call void @__clang_call_terminate(ptr %i.ii) #26
  unreachable

_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_12TriangleMeshENS0_9TriangleMILi4EEEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS7_5buildEvEUlRS8_PS8_E_S8_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSO_SR_EUlRKS8_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlRSD_ST_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlSV_RKSD_E_EESt14default_deleteIS10_EED2Ev.exit: ; preds = %._crit_edge105.thread
  %i.ij = add i64 %.026.i.lcssa143150, %1
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %bb.ac

bb.aa:                                            ; preds = %bb.e
  %i.ik = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.cq)
          to label %_ZN6embree23parallel_partition_taskINS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EdlEPv.exit unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.il = landingpad { ptr, i32 }
          catch ptr null
  %i.im = extractvalue { ptr, i32 } %i.il, 0
  tail call void @__clang_call_terminate(ptr %i.im) #26
  unreachable

.body:                                            ; preds = %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit58, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit48
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i38, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit48 ], [ %.pn.i40, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit58 ]
  call void @_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_12TriangleMeshENS0_9TriangleMILi4EEEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS7_5buildEvEUlRS8_PS8_E_S8_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSO_SR_EUlRKS8_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlRSD_ST_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlSV_RKSD_E_EESt14default_deleteIS10_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #21
  br label %_ZN6embree23parallel_partition_taskINS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EdlEPv.exit

_ZN6embree23parallel_partition_taskINS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EdlEPv.exit: ; preds = %bb.aa, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ik, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  resume { ptr, i32 } %.pn

bb.ac:                                            ; preds = %_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_12TriangleMeshENS0_9TriangleMILi4EEEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS7_5buildEvEUlRS8_PS8_E_S8_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSO_SR_EUlRKS8_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlRSD_ST_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlSV_RKSD_E_EESt14default_deleteIS10_EED2Ev.exit, %_ZN6embree19serial_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS1_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSM_SP_EUlRKS7_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlRSC_SR_E_EEmPT_mmRT0_SY_RKT1_RKT2_.exit
  %.025 = phi i64 [ %i.cp, %_ZN6embree19serial_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS1_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSM_SP_EUlRKS7_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlRSC_SR_E_EEmPT_mmRT0_SY_RKT1_RKT2_.exit ], [ %i.ij, %_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_12TriangleMeshENS0_9TriangleMILi4EEEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS7_5buildEvEUlRS8_PS8_E_S8_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSO_SR_EUlRKS8_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlRSD_ST_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlSV_RKSD_E_EESt14default_deleteIS10_EED2Ev.exit ]
  ret i64 %.025
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_12TriangleMeshENS0_9TriangleMILi4EEEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS7_5buildEvEUlRS8_PS8_E_S8_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSO_SR_EUlRKS8_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlRSD_ST_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlSV_RKSD_E_EESt14default_deleteIS10_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNKSt14default_deleteIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_12TriangleMeshENS0_9TriangleMILi4EEEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS7_5buildEvEUlRS8_PS8_E_S8_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSO_SR_EUlRKS8_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlRSD_ST_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlSV_RKSD_E_EEEclEPS10_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.a)
          to label %_ZNKSt14default_deleteIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_12TriangleMeshENS0_9TriangleMILi4EEEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS7_5buildEvEUlRS8_PS8_E_S8_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSO_SR_EUlRKS8_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlRSD_ST_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlSV_RKSD_E_EEEclEPS10_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #26
  unreachable

_ZNKSt14default_deleteIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_12TriangleMeshENS0_9TriangleMILi4EEEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS7_5buildEvEUlRS8_PS8_E_S8_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSO_SR_EUlRKS8_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlRSD_ST_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlSV_RKSD_E_EEEclEPS10_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree4sse226HeuristicArrayOpenMergeSAHIZNS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE5buildEvEUlRNS6_8BuildRefEPS7_E_S7_Lm32EE21parallel_object_splitERKNS0_8BinSplitILm32EEERKNS0_16PrimInfoExtRangeERSG_SJ_ENKUlRNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEERKS7_E_clESP_SR_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 16 dereferenceable(80) %1, ptr noundef nonnull align 32 dereferenceable(44) %2) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = load <4 x float>, ptr %2, align 32, !noalias !992 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load <4 x float>, ptr %i.b, align 16, !noalias !993 ; 2 uses
  %i.d = load <4 x float>, ptr %1, align 16, !noalias !994
  %i.e = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.d, <4 x float> %i.a)
  store <4 x float> %i.e, ptr %1, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load <4 x float>, ptr %i.f, align 16, !noalias !995
  %i.h = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.g, <4 x float> %i.c)
  store <4 x float> %i.h, ptr %i.f, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.j = fadd <4 x float> %i.a, %i.c              ; 2 uses
  %i.k = load <4 x float>, ptr %i.i, align 16, !noalias !996
  %i.l = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.k, <4 x float> %i.j)
  store <4 x float> %i.l, ptr %i.i, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.n = load <4 x float>, ptr %i.m, align 16, !noalias !997
  %i.o = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.n, <4 x float> %i.j)
  store <4 x float> %i.o, ptr %i.m, align 16
end_hunk_0
begin_hunk_1_@_ZN6embree21parallel_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EEmPT_mmRKT1_RT0_S15_RKT2_RKT3_RKT4_m:bb.a
  store i64 0, ptr %i.dp, align 8
  %.not119 = icmp eq i64 %i.dm, 0
  br i1 %.not119, label %._crit_edge99.thread, label %.noexc33.lr.ph

._crit_edge99.thread:                             ; preds = %.noexc31
  %i.dq = load i64, ptr %i.do, align 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  br label %._crit_edge105.thread

.noexc33.lr.ph:                                   ; preds = %.noexc31
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cq, i64 3264
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cq, i64 8384
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  br label %.noexc33

._crit_edge:                                      ; preds = %.noexc33
  %i.ed = load i64, ptr %i.do, align 64           ; 4 uses
  %i.ee = icmp ugt i64 %i.gm, 1
  br i1 %i.ee, label %.lr.ph.preheader, label %._crit_edge99

.lr.ph.preheader:                                 ; preds = %._crit_edge
  %i.ef = add i64 %i.gm, -1                       ; 2 uses
  %min.iters.check = icmp ult i64 %i.gm, 5
  br i1 %min.iters.check, label %.lr.ph.preheader172, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ef, -4                      ; 3 uses
  %i.eg = or disjoint i64 %n.vec, 1
  %i.eh = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ed, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.eh, %vector.ph ], [ %i.el, %vector.body ]
  %vec.phi166 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.em, %vector.body ]
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %index ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %wide.load = load <2 x i64>, ptr %i.ej, align 8
  %wide.load167 = load <2 x i64>, ptr %i.ek, align 8
  %i.el = add <2 x i64> %wide.load, %vec.phi      ; 2 uses
  %i.em = add <2 x i64> %wide.load167, %vec.phi166 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.en = icmp eq i64 %index.next, %n.vec
  br i1 %i.en, label %middle.block, label %vector.body, !llvm.loop !1830

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.em, %i.el
  %i.eo = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ef, %n.vec
  br i1 %cmp.n, label %._crit_edge99.thread144, label %.lr.ph.preheader172

.lr.ph.preheader172:                              ; preds = %.lr.ph.preheader, %middle.block
  %.025.i97.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.eg, %middle.block ]
  %.026.i96.ph = phi i64 [ %i.ed, %.lr.ph.preheader ], [ %i.eo, %middle.block ]
  br label %.lr.ph

.noexc33:                                         ; preds = %.noexc33.lr.ph, %.noexc33
  %.027.i95 = phi i64 [ 0, %.noexc33.lr.ph ], [ %i.gl, %.noexc33 ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [80 x i8], ptr %i.dr, i64 %.027.i95 ; 6 uses
  %i.eq = load <4 x float>, ptr %4, align 16, !noalias !1870
  %i.er = load <4 x float>, ptr %i.ep, align 16, !noalias !1870
  %i.es = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.eq, <4 x float> %i.er)
  store <4 x float> %i.es, ptr %4, align 16
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.eu = load <4 x float>, ptr %i.ds, align 16, !noalias !1871
  %i.ev = load <4 x float>, ptr %i.et, align 16, !noalias !1871
  %i.ew = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.eu, <4 x float> %i.ev)
  store <4 x float> %i.ew, ptr %i.ds, align 16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.ey = load <4 x float>, ptr %i.dt, align 16, !noalias !1872
  %i.ez = load <4 x float>, ptr %i.ex, align 16, !noalias !1872
  %i.fa = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ey, <4 x float> %i.ez)
  store <4 x float> %i.fa, ptr %i.dt, align 16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ep, i64 48
  %i.fc = load <4 x float>, ptr %i.du, align 16, !noalias !1873
  %i.fd = load <4 x float>, ptr %i.fb, align 16, !noalias !1873
  %i.fe = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fc, <4 x float> %i.fd)
  store <4 x float> %i.fe, ptr %i.du, align 16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ep, i64 64
  %i.fg = load i64, ptr %i.ff, align 16
  %i.fh = load i64, ptr %i.dv, align 16
  %i.fi = add i64 %i.fh, %i.fg
  store i64 %i.fi, ptr %i.dv, align 16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ep, i64 72
  %i.fk = load i64, ptr %i.fj, align 8
  %i.fl = load i64, ptr %i.dw, align 8
  %i.fm = add i64 %i.fl, %i.fk
  store i64 %i.fm, ptr %i.dw, align 8
  %i.fn = getelementptr inbounds nuw [80 x i8], ptr %i.dx, i64 %.027.i95 ; 6 uses
  %i.fo = load <4 x float>, ptr %5, align 16, !noalias !1874
  %i.fp = load <4 x float>, ptr %i.fn, align 16, !noalias !1874
  %i.fq = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fo, <4 x float> %i.fp)
  store <4 x float> %i.fq, ptr %5, align 16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fs = load <4 x float>, ptr %i.dy, align 16, !noalias !1875
  %i.ft = load <4 x float>, ptr %i.fr, align 16, !noalias !1875
  %i.fu = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fs, <4 x float> %i.ft)
  store <4 x float> %i.fu, ptr %i.dy, align 16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fw = load <4 x float>, ptr %i.dz, align 16, !noalias !1876
  %i.fx = load <4 x float>, ptr %i.fv, align 16, !noalias !1876
  %i.fy = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fw, <4 x float> %i.fx)
  store <4 x float> %i.fy, ptr %i.dz, align 16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fn, i64 48
  %i.ga = load <4 x float>, ptr %i.ea, align 16, !noalias !1877
  %i.gb = load <4 x float>, ptr %i.fz, align 16, !noalias !1877
  %i.gc = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ga, <4 x float> %i.gb)
  store <4 x float> %i.gc, ptr %i.ea, align 16
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fn, i64 64
  %i.ge = load i64, ptr %i.gd, align 16
  %i.gf = load i64, ptr %i.eb, align 16
  %i.gg = add i64 %i.gf, %i.ge
  store i64 %i.gg, ptr %i.eb, align 16
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fn, i64 72
  %i.gi = load i64, ptr %i.gh, align 8
  %i.gj = load i64, ptr %i.ec, align 8
  %i.gk = add i64 %i.gj, %i.gi
  store i64 %i.gk, ptr %i.ec, align 8
  %i.gl = add nuw i64 %.027.i95, 1                ; 2 uses
  %i.gm = load i64, ptr %i.cx, align 16           ; 7 uses
  %i.gn = icmp ult i64 %i.gl, %i.gm
  br i1 %i.gn, label %.noexc33, label %._crit_edge, !llvm.loop !1847

._crit_edge99:                                    ; preds = %._crit_edge
  %i.go = load i64, ptr %i.cs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 0, ptr %i.c, align 8
  %.not120 = icmp eq i64 %i.gm, 0
  br i1 %.not120, label %._crit_edge105.thread, label %.lr.ph104

.lr.ph104:                                        ; preds = %._crit_edge99.thread144, %._crit_edge99
  %i.gp = phi i64 [ %i.gx, %._crit_edge99.thread144 ], [ %i.go, %._crit_edge99 ]
  %.026.i.lcssa147 = phi i64 [ %.lcssa164, %._crit_edge99.thread144 ], [ %i.ed, %._crit_edge99 ] ; 4 uses
  %i.gq = phi i64 [ %i.gm, %._crit_edge99.thread144 ], [ 1, %._crit_edge99 ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1216
  %i.gs = getelementptr inbounds nuw i8, ptr %i.cq, i64 2240
  br label %bb.n

.lr.ph:                                           ; preds = %.lr.ph.preheader172, %.lr.ph
  %.025.i97 = phi i64 [ %i.gw, %.lr.ph ], [ %.025.i97.ph, %.lr.ph.preheader172 ] ; 2 uses
  %.026.i96 = phi i64 [ %i.gv, %.lr.ph ], [ %.026.i96.ph, %.lr.ph.preheader172 ]
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.025.i97
  %i.gu = load i64, ptr %i.gt, align 8
  %i.gv = add i64 %i.gu, %.026.i96                ; 2 uses
  %i.gw = add nuw i64 %.025.i97, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.gw, %i.gm
  br i1 %exitcond.not, label %._crit_edge99.thread144, label %.lr.ph, !llvm.loop !1848

._crit_edge99.thread144:                          ; preds = %.lr.ph, %middle.block
  %.lcssa164 = phi i64 [ %i.eo, %middle.block ], [ %i.gv, %.lr.ph ]
  %i.gx = load i64, ptr %i.cs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 0, ptr %i.c, align 8
  br label %.lr.ph104

._crit_edge105:                                   ; preds = %bb.r
  %i.gy = icmp eq i64 %i.ht, 0
  br i1 %i.gy, label %._crit_edge105.thread, label %bb.s

bb.n:                                             ; preds = %.lr.ph104, %bb.r
  %i.gz = phi i64 [ 0, %.lr.ph104 ], [ %i.hw, %bb.r ] ; 3 uses
  %i.ha = phi i64 [ 0, %.lr.ph104 ], [ %i.hs, %bb.r ] ; 3 uses
  %i.hb = phi i64 [ 0, %.lr.ph104 ], [ %i.ht, %bb.r ] ; 2 uses
  %.0.i29102 = phi i64 [ 0, %.lr.ph104 ], [ %i.hh, %bb.r ] ; 3 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %.0.i29102
  %i.hd = load i64, ptr %i.hc, align 8            ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.0.i29102
  %i.hf = load i64, ptr %i.he, align 8
  %i.hg = add i64 %i.hf, %i.hd                    ; 2 uses
  %i.hh = add nuw i64 %.0.i29102, 1               ; 3 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.hh
  %i.hj = load i64, ptr %i.hi, align 8
  %i.hk = call noundef i64 @llvm.smax.i64(i64 %i.hg, i64 0) ; 3 uses
  %i.hl = call noundef i64 @llvm.smin.i64(i64 %.026.i.lcssa147, i64 %i.hj) ; 3 uses
  %i.hm = call noundef i64 @llvm.smax.i64(i64 %.026.i.lcssa147, i64 %i.hd) ; 2 uses
  %i.hn = call noundef i64 @llvm.smin.i64(i64 %i.gp, i64 %i.hg) ; 2 uses
  %.not86 = icmp sgt i64 %i.hl, %i.hk
  br i1 %.not86, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ho = sub nsw i64 %i.hl, %i.hk
  %i.hp = add i64 %i.ho, %i.hb                    ; 2 uses
  store i64 %i.hp, ptr %i.c, align 8
  %i.hq = add i64 %i.ha, 1                        ; 2 uses
  store i64 %i.hq, ptr %i.a, align 8
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.gr, i64 %i.ha ; 2 uses
  store i64 %i.hk, ptr %i.hr, align 16
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store i64 %i.hl, ptr %.sroa.664.0..sroa_idx, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.hs = phi i64 [ %i.hq, %bb.o ], [ %i.ha, %bb.n ]
  %i.ht = phi i64 [ %i.hp, %bb.o ], [ %i.hb, %bb.n ] ; 2 uses
  %.not87 = icmp sgt i64 %i.hn, %i.hm
  br i1 %.not87, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.hu = add i64 %i.gz, 1                        ; 2 uses
  store i64 %i.hu, ptr %i.b, align 8
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %i.gs, i64 %i.gz ; 2 uses
  store i64 %i.hm, ptr %i.hv, align 16
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store i64 %i.hn, ptr %.sroa.660.0..sroa_idx, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.hw = phi i64 [ %i.gz, %bb.p ], [ %i.hu, %bb.q ]
  %i.hx = icmp ult i64 %i.hh, %i.gq
  br i1 %i.hx, label %bb.n, label %._crit_edge105, !llvm.loop !1849

bb.s:                                             ; preds = %._crit_edge105
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  store ptr %i.c, ptr %17, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.cq, ptr %i.hy, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.a, ptr %i.hz, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %i.b, ptr %i.ia, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store ptr null, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr %17, ptr %11, align 8
  invoke void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_23parallel_partition_taskINS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS4_26HeuristicArrayOpenMergeSAHIZNS9_5buildEvEUlRSA_PSA_E_SA_Lm32EE21parallel_object_splitERKNS4_8BinSplitILm32EEERKNS4_16PrimInfoExtRangeERSQ_ST_EUlRKSA_E_ZNSL_21parallel_object_splitESP_SS_ST_ST_EUlRSF_SV_E_ZNSL_21parallel_object_splitESP_SS_ST_ST_EUlSX_RKSF_E_E9partitionESX_SX_EUlmE0_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvS14_S14_S14_S17_PNS0_16TaskGroupContextE(i64 noundef 0, i64 noundef %i.gq, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %10)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  invoke void @_ZN6embree13TaskScheduler4waitEv()
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48 unwind label %bb.w

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48: ; preds = %bb.t
  %i.ib = load ptr, ptr %10, align 8              ; 2 uses
  %.not85 = icmp eq ptr %i.ib, null
  br i1 %.not85, label %.noexc34, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit50

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit50: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48
  store ptr %i.ib, ptr %12, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %12) #28
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit50
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52

bb.w:                                             ; preds = %bb.t
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52

bb.x:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit50
  %i.ie = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.if = load ptr, ptr %12, align 8
  %.not.i51 = icmp eq ptr %i.if, null
  br i1 %.not.i51, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52: ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %.pn.i38 = phi { ptr, i32 } [ %i.ic, %bb.v ], [ %i.id, %bb.w ], [ %i.ie, %bb.x ], [ %i.ie, %bb.y ]
  %i.ig = load ptr, ptr %10, align 8
  %.not.i.i55 = icmp eq ptr %i.ig, null
  br i1 %.not.i.i55, label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit56, label %bb.z

bb.z:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #21
  br label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit56

_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit56: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %.body

.noexc34:                                         ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %._crit_edge105.thread

._crit_edge105.thread:                            ; preds = %._crit_edge99.thread, %._crit_edge99, %._crit_edge105, %.noexc34
  %.026.i.lcssa143150 = phi i64 [ %.026.i.lcssa147, %._crit_edge105 ], [ %.026.i.lcssa147, %.noexc34 ], [ %i.dq, %._crit_edge99.thread ], [ %i.ed, %._crit_edge99 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.cq)
          to label %_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_12TriangleMeshENS0_10TriangleMvILi4EEEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS7_5buildEvEUlRS8_PS8_E_S8_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSO_SR_EUlRKS8_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlRSD_ST_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlSV_RKSD_E_EESt14default_deleteIS10_EED2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %._crit_edge105.thread
  %i.ih = landingpad { ptr, i32 }
          catch ptr null
  %i.ii = extractvalue { ptr, i32 } %i.ih, 0
  call void @__clang_call_terminate(ptr %i.ii) #26
  unreachable

_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_12TriangleMeshENS0_10TriangleMvILi4EEEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS7_5buildEvEUlRS8_PS8_E_S8_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSO_SR_EUlRKS8_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlRSD_ST_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlSV_RKSD_E_EESt14default_deleteIS10_EED2Ev.exit: ; preds = %._crit_edge105.thread
  %i.ij = add i64 %.026.i.lcssa143150, %1
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %bb.ad

bb.ab:                                            ; preds = %bb.e
  %i.ik = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.cq)
          to label %_ZN6embree23parallel_partition_taskINS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EdlEPv.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.il = landingpad { ptr, i32 }
          catch ptr null
  %i.im = extractvalue { ptr, i32 } %i.il, 0
  tail call void @__clang_call_terminate(ptr %i.im) #26
  unreachable

.body:                                            ; preds = %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit56, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit46
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i36, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit46 ], [ %.pn.i38, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit56 ]
  call void @_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_12TriangleMeshENS0_10TriangleMvILi4EEEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS7_5buildEvEUlRS8_PS8_E_S8_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSO_SR_EUlRKS8_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlRSD_ST_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlSV_RKSD_E_EESt14default_deleteIS10_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #21
  br label %_ZN6embree23parallel_partition_taskINS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EdlEPv.exit

_ZN6embree23parallel_partition_taskINS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EdlEPv.exit: ; preds = %bb.ab, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ik, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  resume { ptr, i32 } %.pn

bb.ad:                                            ; preds = %_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_12TriangleMeshENS0_10TriangleMvILi4EEEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS7_5buildEvEUlRS8_PS8_E_S8_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSO_SR_EUlRKS8_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlRSD_ST_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlSV_RKSD_E_EESt14default_deleteIS10_EED2Ev.exit, %_ZN6embree19serial_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS1_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSM_SP_EUlRKS7_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlRSC_SR_E_EEmPT_mmRT0_SY_RKT1_RKT2_.exit
  %.025 = phi i64 [ %i.cp, %_ZN6embree19serial_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS1_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSM_SP_EUlRKS7_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlRSC_SR_E_EEmPT_mmRT0_SY_RKT1_RKT2_.exit ], [ %i.ij, %_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_12TriangleMeshENS0_10TriangleMvILi4EEEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS7_5buildEvEUlRS8_PS8_E_S8_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSO_SR_EUlRKS8_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlRSD_ST_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlSV_RKSD_E_EESt14default_deleteIS10_EED2Ev.exit ]
  ret i64 %.025
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_12TriangleMeshENS0_10TriangleMvILi4EEEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS7_5buildEvEUlRS8_PS8_E_S8_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSO_SR_EUlRKS8_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlRSD_ST_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlSV_RKSD_E_EESt14default_deleteIS10_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNKSt14default_deleteIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_12TriangleMeshENS0_10TriangleMvILi4EEEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS7_5buildEvEUlRS8_PS8_E_S8_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSO_SR_EUlRKS8_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlRSD_ST_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlSV_RKSD_E_EEEclEPS10_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.a)
          to label %_ZNKSt14default_deleteIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_12TriangleMeshENS0_10TriangleMvILi4EEEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS7_5buildEvEUlRS8_PS8_E_S8_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSO_SR_EUlRKS8_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlRSD_ST_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlSV_RKSD_E_EEEclEPS10_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #26
  unreachable

_ZNKSt14default_deleteIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_12TriangleMeshENS0_10TriangleMvILi4EEEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS7_5buildEvEUlRS8_PS8_E_S8_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSO_SR_EUlRKS8_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlRSD_ST_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlSV_RKSD_E_EEEclEPS10_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree4sse226HeuristicArrayOpenMergeSAHIZNS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE5buildEvEUlRNS6_8BuildRefEPS7_E_S7_Lm32EE21parallel_object_splitERKNS0_8BinSplitILm32EEERKNS0_16PrimInfoExtRangeERSG_SJ_ENKUlRNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEERKS7_E_clESP_SR_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 16 dereferenceable(80) %1, ptr noundef nonnull align 32 dereferenceable(44) %2) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = load <4 x float>, ptr %2, align 32, !noalias !1892 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load <4 x float>, ptr %i.b, align 16, !noalias !1893 ; 2 uses
  %i.d = load <4 x float>, ptr %1, align 16, !noalias !1894
  %i.e = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.d, <4 x float> %i.a)
  store <4 x float> %i.e, ptr %1, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load <4 x float>, ptr %i.f, align 16, !noalias !1895
  %i.h = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.g, <4 x float> %i.c)
  store <4 x float> %i.h, ptr %i.f, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.j = fadd <4 x float> %i.a, %i.c              ; 2 uses
  %i.k = load <4 x float>, ptr %i.i, align 16, !noalias !1896
  %i.l = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.k, <4 x float> %i.j)
  store <4 x float> %i.l, ptr %i.i, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.n = load <4 x float>, ptr %i.m, align 16, !noalias !1897
  %i.o = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.n, <4 x float> %i.j)
  store <4 x float> %i.o, ptr %i.m, align 16
end_hunk_1
begin_hunk_2_@_ZN6embree21parallel_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EEmPT_mmRKT1_RT0_S15_RKT2_RKT3_RKT4_m:bb.a
  store i64 0, ptr %i.dp, align 8
  %.not119 = icmp eq i64 %i.dm, 0
  br i1 %.not119, label %._crit_edge99.thread, label %.noexc33.lr.ph

._crit_edge99.thread:                             ; preds = %.noexc31
  %i.dq = load i64, ptr %i.do, align 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  br label %._crit_edge105.thread

.noexc33.lr.ph:                                   ; preds = %.noexc31
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cq, i64 3264
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cq, i64 8384
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  br label %.noexc33

._crit_edge:                                      ; preds = %.noexc33
  %i.ed = load i64, ptr %i.do, align 64           ; 4 uses
  %i.ee = icmp ugt i64 %i.gm, 1
  br i1 %i.ee, label %.lr.ph.preheader, label %._crit_edge99

.lr.ph.preheader:                                 ; preds = %._crit_edge
  %i.ef = add i64 %i.gm, -1                       ; 2 uses
  %min.iters.check = icmp ult i64 %i.gm, 5
  br i1 %min.iters.check, label %.lr.ph.preheader172, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ef, -4                      ; 3 uses
  %i.eg = or disjoint i64 %n.vec, 1
  %i.eh = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ed, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.eh, %vector.ph ], [ %i.el, %vector.body ]
  %vec.phi166 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.em, %vector.body ]
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %index ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %wide.load = load <2 x i64>, ptr %i.ej, align 8
  %wide.load167 = load <2 x i64>, ptr %i.ek, align 8
  %i.el = add <2 x i64> %wide.load, %vec.phi      ; 2 uses
  %i.em = add <2 x i64> %wide.load167, %vec.phi166 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.en = icmp eq i64 %index.next, %n.vec
  br i1 %i.en, label %middle.block, label %vector.body, !llvm.loop !2704

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.em, %i.el
  %i.eo = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ef, %n.vec
  br i1 %cmp.n, label %._crit_edge99.thread144, label %.lr.ph.preheader172

.lr.ph.preheader172:                              ; preds = %.lr.ph.preheader, %middle.block
  %.025.i97.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.eg, %middle.block ]
  %.026.i96.ph = phi i64 [ %i.ed, %.lr.ph.preheader ], [ %i.eo, %middle.block ]
  br label %.lr.ph

.noexc33:                                         ; preds = %.noexc33.lr.ph, %.noexc33
  %.027.i95 = phi i64 [ 0, %.noexc33.lr.ph ], [ %i.gl, %.noexc33 ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [80 x i8], ptr %i.dr, i64 %.027.i95 ; 6 uses
  %i.eq = load <4 x float>, ptr %4, align 16, !noalias !2744
  %i.er = load <4 x float>, ptr %i.ep, align 16, !noalias !2744
  %i.es = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.eq, <4 x float> %i.er)
  store <4 x float> %i.es, ptr %4, align 16
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.eu = load <4 x float>, ptr %i.ds, align 16, !noalias !2745
  %i.ev = load <4 x float>, ptr %i.et, align 16, !noalias !2745
  %i.ew = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.eu, <4 x float> %i.ev)
  store <4 x float> %i.ew, ptr %i.ds, align 16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.ey = load <4 x float>, ptr %i.dt, align 16, !noalias !2746
  %i.ez = load <4 x float>, ptr %i.ex, align 16, !noalias !2746
  %i.fa = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ey, <4 x float> %i.ez)
  store <4 x float> %i.fa, ptr %i.dt, align 16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ep, i64 48
  %i.fc = load <4 x float>, ptr %i.du, align 16, !noalias !2747
  %i.fd = load <4 x float>, ptr %i.fb, align 16, !noalias !2747
  %i.fe = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fc, <4 x float> %i.fd)
  store <4 x float> %i.fe, ptr %i.du, align 16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ep, i64 64
  %i.fg = load i64, ptr %i.ff, align 16
  %i.fh = load i64, ptr %i.dv, align 16
  %i.fi = add i64 %i.fh, %i.fg
  store i64 %i.fi, ptr %i.dv, align 16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ep, i64 72
  %i.fk = load i64, ptr %i.fj, align 8
  %i.fl = load i64, ptr %i.dw, align 8
  %i.fm = add i64 %i.fl, %i.fk
  store i64 %i.fm, ptr %i.dw, align 8
  %i.fn = getelementptr inbounds nuw [80 x i8], ptr %i.dx, i64 %.027.i95 ; 6 uses
  %i.fo = load <4 x float>, ptr %5, align 16, !noalias !2748
  %i.fp = load <4 x float>, ptr %i.fn, align 16, !noalias !2748
  %i.fq = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fo, <4 x float> %i.fp)
  store <4 x float> %i.fq, ptr %5, align 16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fs = load <4 x float>, ptr %i.dy, align 16, !noalias !2749
  %i.ft = load <4 x float>, ptr %i.fr, align 16, !noalias !2749
  %i.fu = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fs, <4 x float> %i.ft)
  store <4 x float> %i.fu, ptr %i.dy, align 16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fw = load <4 x float>, ptr %i.dz, align 16, !noalias !2750
  %i.fx = load <4 x float>, ptr %i.fv, align 16, !noalias !2750
  %i.fy = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fw, <4 x float> %i.fx)
  store <4 x float> %i.fy, ptr %i.dz, align 16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fn, i64 48
  %i.ga = load <4 x float>, ptr %i.ea, align 16, !noalias !2751
  %i.gb = load <4 x float>, ptr %i.fz, align 16, !noalias !2751
  %i.gc = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ga, <4 x float> %i.gb)
  store <4 x float> %i.gc, ptr %i.ea, align 16
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fn, i64 64
  %i.ge = load i64, ptr %i.gd, align 16
  %i.gf = load i64, ptr %i.eb, align 16
  %i.gg = add i64 %i.gf, %i.ge
  store i64 %i.gg, ptr %i.eb, align 16
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fn, i64 72
  %i.gi = load i64, ptr %i.gh, align 8
  %i.gj = load i64, ptr %i.ec, align 8
  %i.gk = add i64 %i.gj, %i.gi
  store i64 %i.gk, ptr %i.ec, align 8
  %i.gl = add nuw i64 %.027.i95, 1                ; 2 uses
  %i.gm = load i64, ptr %i.cx, align 16           ; 7 uses
  %i.gn = icmp ult i64 %i.gl, %i.gm
  br i1 %i.gn, label %.noexc33, label %._crit_edge, !llvm.loop !2721

._crit_edge99:                                    ; preds = %._crit_edge
  %i.go = load i64, ptr %i.cs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 0, ptr %i.c, align 8
  %.not120 = icmp eq i64 %i.gm, 0
  br i1 %.not120, label %._crit_edge105.thread, label %.lr.ph104

.lr.ph104:                                        ; preds = %._crit_edge99.thread144, %._crit_edge99
  %i.gp = phi i64 [ %i.gx, %._crit_edge99.thread144 ], [ %i.go, %._crit_edge99 ]
  %.026.i.lcssa147 = phi i64 [ %.lcssa164, %._crit_edge99.thread144 ], [ %i.ed, %._crit_edge99 ] ; 4 uses
  %i.gq = phi i64 [ %i.gm, %._crit_edge99.thread144 ], [ 1, %._crit_edge99 ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1216
  %i.gs = getelementptr inbounds nuw i8, ptr %i.cq, i64 2240
  br label %bb.n

.lr.ph:                                           ; preds = %.lr.ph.preheader172, %.lr.ph
  %.025.i97 = phi i64 [ %i.gw, %.lr.ph ], [ %.025.i97.ph, %.lr.ph.preheader172 ] ; 2 uses
  %.026.i96 = phi i64 [ %i.gv, %.lr.ph ], [ %.026.i96.ph, %.lr.ph.preheader172 ]
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.025.i97
  %i.gu = load i64, ptr %i.gt, align 8
  %i.gv = add i64 %i.gu, %.026.i96                ; 2 uses
  %i.gw = add nuw i64 %.025.i97, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.gw, %i.gm
  br i1 %exitcond.not, label %._crit_edge99.thread144, label %.lr.ph, !llvm.loop !2722

._crit_edge99.thread144:                          ; preds = %.lr.ph, %middle.block
  %.lcssa164 = phi i64 [ %i.eo, %middle.block ], [ %i.gv, %.lr.ph ]
  %i.gx = load i64, ptr %i.cs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 0, ptr %i.c, align 8
  br label %.lr.ph104

._crit_edge105:                                   ; preds = %bb.r
  %i.gy = icmp eq i64 %i.ht, 0
  br i1 %i.gy, label %._crit_edge105.thread, label %bb.s

bb.n:                                             ; preds = %.lr.ph104, %bb.r
  %i.gz = phi i64 [ 0, %.lr.ph104 ], [ %i.hw, %bb.r ] ; 3 uses
  %i.ha = phi i64 [ 0, %.lr.ph104 ], [ %i.hs, %bb.r ] ; 3 uses
  %i.hb = phi i64 [ 0, %.lr.ph104 ], [ %i.ht, %bb.r ] ; 2 uses
  %.0.i29102 = phi i64 [ 0, %.lr.ph104 ], [ %i.hh, %bb.r ] ; 3 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %.0.i29102
  %i.hd = load i64, ptr %i.hc, align 8            ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.0.i29102
  %i.hf = load i64, ptr %i.he, align 8
  %i.hg = add i64 %i.hf, %i.hd                    ; 2 uses
  %i.hh = add nuw i64 %.0.i29102, 1               ; 3 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.hh
  %i.hj = load i64, ptr %i.hi, align 8
  %i.hk = call noundef i64 @llvm.smax.i64(i64 %i.hg, i64 0) ; 3 uses
  %i.hl = call noundef i64 @llvm.smin.i64(i64 %.026.i.lcssa147, i64 %i.hj) ; 3 uses
  %i.hm = call noundef i64 @llvm.smax.i64(i64 %.026.i.lcssa147, i64 %i.hd) ; 2 uses
  %i.hn = call noundef i64 @llvm.smin.i64(i64 %i.gp, i64 %i.hg) ; 2 uses
  %.not86 = icmp sgt i64 %i.hl, %i.hk
  br i1 %.not86, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ho = sub nsw i64 %i.hl, %i.hk
  %i.hp = add i64 %i.ho, %i.hb                    ; 2 uses
  store i64 %i.hp, ptr %i.c, align 8
  %i.hq = add i64 %i.ha, 1                        ; 2 uses
  store i64 %i.hq, ptr %i.a, align 8
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.gr, i64 %i.ha ; 2 uses
  store i64 %i.hk, ptr %i.hr, align 16
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store i64 %i.hl, ptr %.sroa.664.0..sroa_idx, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.hs = phi i64 [ %i.hq, %bb.o ], [ %i.ha, %bb.n ]
  %i.ht = phi i64 [ %i.hp, %bb.o ], [ %i.hb, %bb.n ] ; 2 uses
  %.not87 = icmp sgt i64 %i.hn, %i.hm
  br i1 %.not87, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.hu = add i64 %i.gz, 1                        ; 2 uses
  store i64 %i.hu, ptr %i.b, align 8
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %i.gs, i64 %i.gz ; 2 uses
  store i64 %i.hm, ptr %i.hv, align 16
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store i64 %i.hn, ptr %.sroa.660.0..sroa_idx, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.hw = phi i64 [ %i.gz, %bb.p ], [ %i.hu, %bb.q ]
  %i.hx = icmp ult i64 %i.hh, %i.gq
  br i1 %i.hx, label %bb.n, label %._crit_edge105, !llvm.loop !2723

bb.s:                                             ; preds = %._crit_edge105
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  store ptr %i.c, ptr %17, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.cq, ptr %i.hy, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.a, ptr %i.hz, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %i.b, ptr %i.ia, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store ptr null, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr %17, ptr %11, align 8
  invoke void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_23parallel_partition_taskINS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS4_26HeuristicArrayOpenMergeSAHIZNS9_5buildEvEUlRSA_PSA_E_SA_Lm32EE21parallel_object_splitERKNS4_8BinSplitILm32EEERKNS4_16PrimInfoExtRangeERSQ_ST_EUlRKSA_E_ZNSL_21parallel_object_splitESP_SS_ST_ST_EUlRSF_SV_E_ZNSL_21parallel_object_splitESP_SS_ST_ST_EUlSX_RKSF_E_E9partitionESX_SX_EUlmE0_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvS14_S14_S14_S17_PNS0_16TaskGroupContextE(i64 noundef 0, i64 noundef %i.gq, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %10)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  invoke void @_ZN6embree13TaskScheduler4waitEv()
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48 unwind label %bb.w

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48: ; preds = %bb.t
  %i.ib = load ptr, ptr %10, align 8              ; 2 uses
  %.not85 = icmp eq ptr %i.ib, null
  br i1 %.not85, label %.noexc34, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit50

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit50: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48
  store ptr %i.ib, ptr %12, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %12) #28
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit50
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52

bb.w:                                             ; preds = %bb.t
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52

bb.x:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit50
  %i.ie = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.if = load ptr, ptr %12, align 8
  %.not.i51 = icmp eq ptr %i.if, null
  br i1 %.not.i51, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52: ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %.pn.i38 = phi { ptr, i32 } [ %i.ic, %bb.v ], [ %i.id, %bb.w ], [ %i.ie, %bb.x ], [ %i.ie, %bb.y ]
  %i.ig = load ptr, ptr %10, align 8
  %.not.i.i55 = icmp eq ptr %i.ig, null
  br i1 %.not.i.i55, label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit56, label %bb.z

bb.z:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #21
  br label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit56

_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit56: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %.body

.noexc34:                                         ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %._crit_edge105.thread

._crit_edge105.thread:                            ; preds = %._crit_edge99.thread, %._crit_edge99, %._crit_edge105, %.noexc34
  %.026.i.lcssa143150 = phi i64 [ %.026.i.lcssa147, %._crit_edge105 ], [ %.026.i.lcssa147, %.noexc34 ], [ %i.dq, %._crit_edge99.thread ], [ %i.ed, %._crit_edge99 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.cq)
          to label %_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_12TriangleMeshENS0_10TriangleMiILi4EEEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS7_5buildEvEUlRS8_PS8_E_S8_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSO_SR_EUlRKS8_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlRSD_ST_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlSV_RKSD_E_EESt14default_deleteIS10_EED2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %._crit_edge105.thread
  %i.ih = landingpad { ptr, i32 }
          catch ptr null
  %i.ii = extractvalue { ptr, i32 } %i.ih, 0
  call void @__clang_call_terminate(ptr %i.ii) #26
  unreachable

_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_12TriangleMeshENS0_10TriangleMiILi4EEEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS7_5buildEvEUlRS8_PS8_E_S8_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSO_SR_EUlRKS8_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlRSD_ST_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlSV_RKSD_E_EESt14default_deleteIS10_EED2Ev.exit: ; preds = %._crit_edge105.thread
  %i.ij = add i64 %.026.i.lcssa143150, %1
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %bb.ad

bb.ab:                                            ; preds = %bb.e
  %i.ik = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.cq)
          to label %_ZN6embree23parallel_partition_taskINS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EdlEPv.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.il = landingpad { ptr, i32 }
          catch ptr null
  %i.im = extractvalue { ptr, i32 } %i.il, 0
  tail call void @__clang_call_terminate(ptr %i.im) #26
  unreachable

.body:                                            ; preds = %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit56, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit46
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i36, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit46 ], [ %.pn.i38, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit56 ]
  call void @_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_12TriangleMeshENS0_10TriangleMiILi4EEEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS7_5buildEvEUlRS8_PS8_E_S8_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSO_SR_EUlRKS8_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlRSD_ST_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlSV_RKSD_E_EESt14default_deleteIS10_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #21
  br label %_ZN6embree23parallel_partition_taskINS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EdlEPv.exit

_ZN6embree23parallel_partition_taskINS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EdlEPv.exit: ; preds = %bb.ab, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ik, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  resume { ptr, i32 } %.pn

bb.ad:                                            ; preds = %_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_12TriangleMeshENS0_10TriangleMiILi4EEEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS7_5buildEvEUlRS8_PS8_E_S8_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSO_SR_EUlRKS8_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlRSD_ST_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlSV_RKSD_E_EESt14default_deleteIS10_EED2Ev.exit, %_ZN6embree19serial_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS1_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSM_SP_EUlRKS7_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlRSC_SR_E_EEmPT_mmRT0_SY_RKT1_RKT2_.exit
  %.025 = phi i64 [ %i.cp, %_ZN6embree19serial_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS1_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSM_SP_EUlRKS7_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlRSC_SR_E_EEmPT_mmRT0_SY_RKT1_RKT2_.exit ], [ %i.ij, %_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_12TriangleMeshENS0_10TriangleMiILi4EEEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS7_5buildEvEUlRS8_PS8_E_S8_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSO_SR_EUlRKS8_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlRSD_ST_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlSV_RKSD_E_EESt14default_deleteIS10_EED2Ev.exit ]
  ret i64 %.025
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_12TriangleMeshENS0_10TriangleMiILi4EEEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS7_5buildEvEUlRS8_PS8_E_S8_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSO_SR_EUlRKS8_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlRSD_ST_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlSV_RKSD_E_EESt14default_deleteIS10_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNKSt14default_deleteIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_12TriangleMeshENS0_10TriangleMiILi4EEEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS7_5buildEvEUlRS8_PS8_E_S8_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSO_SR_EUlRKS8_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlRSD_ST_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlSV_RKSD_E_EEEclEPS10_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.a)
          to label %_ZNKSt14default_deleteIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_12TriangleMeshENS0_10TriangleMiILi4EEEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS7_5buildEvEUlRS8_PS8_E_S8_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSO_SR_EUlRKS8_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlRSD_ST_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlSV_RKSD_E_EEEclEPS10_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #26
  unreachable

_ZNKSt14default_deleteIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_12TriangleMeshENS0_10TriangleMiILi4EEEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS7_5buildEvEUlRS8_PS8_E_S8_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSO_SR_EUlRKS8_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlRSD_ST_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlSV_RKSD_E_EEEclEPS10_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree4sse226HeuristicArrayOpenMergeSAHIZNS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE5buildEvEUlRNS6_8BuildRefEPS7_E_S7_Lm32EE21parallel_object_splitERKNS0_8BinSplitILm32EEERKNS0_16PrimInfoExtRangeERSG_SJ_ENKUlRNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEERKS7_E_clESP_SR_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 16 dereferenceable(80) %1, ptr noundef nonnull align 32 dereferenceable(44) %2) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = load <4 x float>, ptr %2, align 32, !noalias !2766 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load <4 x float>, ptr %i.b, align 16, !noalias !2767 ; 2 uses
  %i.d = load <4 x float>, ptr %1, align 16, !noalias !2768
  %i.e = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.d, <4 x float> %i.a)
  store <4 x float> %i.e, ptr %1, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load <4 x float>, ptr %i.f, align 16, !noalias !2769
  %i.h = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.g, <4 x float> %i.c)
  store <4 x float> %i.h, ptr %i.f, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.j = fadd <4 x float> %i.a, %i.c              ; 2 uses
  %i.k = load <4 x float>, ptr %i.i, align 16, !noalias !2770
  %i.l = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.k, <4 x float> %i.j)
  store <4 x float> %i.l, ptr %i.i, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.n = load <4 x float>, ptr %i.m, align 16, !noalias !2771
  %i.o = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.n, <4 x float> %i.j)
  store <4 x float> %i.o, ptr %i.m, align 16
end_hunk_2
begin_hunk_3_@_ZN6embree21parallel_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EEmPT_mmRKT1_RT0_S15_RKT2_RKT3_RKT4_m:bb.a
  store i64 0, ptr %i.dp, align 8
  %.not119 = icmp eq i64 %i.dm, 0
  br i1 %.not119, label %._crit_edge99.thread, label %.noexc33.lr.ph

._crit_edge99.thread:                             ; preds = %.noexc31
  %i.dq = load i64, ptr %i.do, align 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  br label %._crit_edge105.thread

.noexc33.lr.ph:                                   ; preds = %.noexc31
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cq, i64 3264
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cq, i64 8384
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  br label %.noexc33

._crit_edge:                                      ; preds = %.noexc33
  %i.ed = load i64, ptr %i.do, align 64           ; 4 uses
  %i.ee = icmp ugt i64 %i.gm, 1
  br i1 %i.ee, label %.lr.ph.preheader, label %._crit_edge99

.lr.ph.preheader:                                 ; preds = %._crit_edge
  %i.ef = add i64 %i.gm, -1                       ; 2 uses
  %min.iters.check = icmp ult i64 %i.gm, 5
  br i1 %min.iters.check, label %.lr.ph.preheader172, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ef, -4                      ; 3 uses
  %i.eg = or disjoint i64 %n.vec, 1
  %i.eh = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ed, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.eh, %vector.ph ], [ %i.el, %vector.body ]
  %vec.phi166 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.em, %vector.body ]
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %index ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %wide.load = load <2 x i64>, ptr %i.ej, align 8
  %wide.load167 = load <2 x i64>, ptr %i.ek, align 8
  %i.el = add <2 x i64> %wide.load, %vec.phi      ; 2 uses
  %i.em = add <2 x i64> %wide.load167, %vec.phi166 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.en = icmp eq i64 %index.next, %n.vec
  br i1 %i.en, label %middle.block, label %vector.body, !llvm.loop !3607

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.em, %i.el
  %i.eo = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ef, %n.vec
  br i1 %cmp.n, label %._crit_edge99.thread144, label %.lr.ph.preheader172

.lr.ph.preheader172:                              ; preds = %.lr.ph.preheader, %middle.block
  %.025.i97.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.eg, %middle.block ]
  %.026.i96.ph = phi i64 [ %i.ed, %.lr.ph.preheader ], [ %i.eo, %middle.block ]
  br label %.lr.ph

.noexc33:                                         ; preds = %.noexc33.lr.ph, %.noexc33
  %.027.i95 = phi i64 [ 0, %.noexc33.lr.ph ], [ %i.gl, %.noexc33 ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [80 x i8], ptr %i.dr, i64 %.027.i95 ; 6 uses
  %i.eq = load <4 x float>, ptr %4, align 16, !noalias !3647
  %i.er = load <4 x float>, ptr %i.ep, align 16, !noalias !3647
  %i.es = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.eq, <4 x float> %i.er)
  store <4 x float> %i.es, ptr %4, align 16
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.eu = load <4 x float>, ptr %i.ds, align 16, !noalias !3648
  %i.ev = load <4 x float>, ptr %i.et, align 16, !noalias !3648
  %i.ew = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.eu, <4 x float> %i.ev)
  store <4 x float> %i.ew, ptr %i.ds, align 16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.ey = load <4 x float>, ptr %i.dt, align 16, !noalias !3649
  %i.ez = load <4 x float>, ptr %i.ex, align 16, !noalias !3649
  %i.fa = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ey, <4 x float> %i.ez)
  store <4 x float> %i.fa, ptr %i.dt, align 16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ep, i64 48
  %i.fc = load <4 x float>, ptr %i.du, align 16, !noalias !3650
  %i.fd = load <4 x float>, ptr %i.fb, align 16, !noalias !3650
  %i.fe = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fc, <4 x float> %i.fd)
  store <4 x float> %i.fe, ptr %i.du, align 16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ep, i64 64
  %i.fg = load i64, ptr %i.ff, align 16
  %i.fh = load i64, ptr %i.dv, align 16
  %i.fi = add i64 %i.fh, %i.fg
  store i64 %i.fi, ptr %i.dv, align 16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ep, i64 72
  %i.fk = load i64, ptr %i.fj, align 8
  %i.fl = load i64, ptr %i.dw, align 8
  %i.fm = add i64 %i.fl, %i.fk
  store i64 %i.fm, ptr %i.dw, align 8
  %i.fn = getelementptr inbounds nuw [80 x i8], ptr %i.dx, i64 %.027.i95 ; 6 uses
  %i.fo = load <4 x float>, ptr %5, align 16, !noalias !3651
  %i.fp = load <4 x float>, ptr %i.fn, align 16, !noalias !3651
  %i.fq = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fo, <4 x float> %i.fp)
  store <4 x float> %i.fq, ptr %5, align 16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fs = load <4 x float>, ptr %i.dy, align 16, !noalias !3652
  %i.ft = load <4 x float>, ptr %i.fr, align 16, !noalias !3652
  %i.fu = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fs, <4 x float> %i.ft)
  store <4 x float> %i.fu, ptr %i.dy, align 16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fw = load <4 x float>, ptr %i.dz, align 16, !noalias !3653
  %i.fx = load <4 x float>, ptr %i.fv, align 16, !noalias !3653
  %i.fy = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fw, <4 x float> %i.fx)
  store <4 x float> %i.fy, ptr %i.dz, align 16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fn, i64 48
  %i.ga = load <4 x float>, ptr %i.ea, align 16, !noalias !3654
  %i.gb = load <4 x float>, ptr %i.fz, align 16, !noalias !3654
  %i.gc = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ga, <4 x float> %i.gb)
  store <4 x float> %i.gc, ptr %i.ea, align 16
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fn, i64 64
  %i.ge = load i64, ptr %i.gd, align 16
  %i.gf = load i64, ptr %i.eb, align 16
  %i.gg = add i64 %i.gf, %i.ge
  store i64 %i.gg, ptr %i.eb, align 16
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fn, i64 72
  %i.gi = load i64, ptr %i.gh, align 8
  %i.gj = load i64, ptr %i.ec, align 8
  %i.gk = add i64 %i.gj, %i.gi
  store i64 %i.gk, ptr %i.ec, align 8
  %i.gl = add nuw i64 %.027.i95, 1                ; 2 uses
  %i.gm = load i64, ptr %i.cx, align 16           ; 7 uses
  %i.gn = icmp ult i64 %i.gl, %i.gm
  br i1 %i.gn, label %.noexc33, label %._crit_edge, !llvm.loop !3624

._crit_edge99:                                    ; preds = %._crit_edge
  %i.go = load i64, ptr %i.cs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 0, ptr %i.c, align 8
  %.not120 = icmp eq i64 %i.gm, 0
  br i1 %.not120, label %._crit_edge105.thread, label %.lr.ph104

.lr.ph104:                                        ; preds = %._crit_edge99.thread144, %._crit_edge99
  %i.gp = phi i64 [ %i.gx, %._crit_edge99.thread144 ], [ %i.go, %._crit_edge99 ]
  %.026.i.lcssa147 = phi i64 [ %.lcssa164, %._crit_edge99.thread144 ], [ %i.ed, %._crit_edge99 ] ; 4 uses
  %i.gq = phi i64 [ %i.gm, %._crit_edge99.thread144 ], [ 1, %._crit_edge99 ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1216
  %i.gs = getelementptr inbounds nuw i8, ptr %i.cq, i64 2240
  br label %bb.n

.lr.ph:                                           ; preds = %.lr.ph.preheader172, %.lr.ph
  %.025.i97 = phi i64 [ %i.gw, %.lr.ph ], [ %.025.i97.ph, %.lr.ph.preheader172 ] ; 2 uses
  %.026.i96 = phi i64 [ %i.gv, %.lr.ph ], [ %.026.i96.ph, %.lr.ph.preheader172 ]
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.025.i97
  %i.gu = load i64, ptr %i.gt, align 8
  %i.gv = add i64 %i.gu, %.026.i96                ; 2 uses
  %i.gw = add nuw i64 %.025.i97, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.gw, %i.gm
  br i1 %exitcond.not, label %._crit_edge99.thread144, label %.lr.ph, !llvm.loop !3625

._crit_edge99.thread144:                          ; preds = %.lr.ph, %middle.block
  %.lcssa164 = phi i64 [ %i.eo, %middle.block ], [ %i.gv, %.lr.ph ]
  %i.gx = load i64, ptr %i.cs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 0, ptr %i.c, align 8
  br label %.lr.ph104

._crit_edge105:                                   ; preds = %bb.r
  %i.gy = icmp eq i64 %i.ht, 0
  br i1 %i.gy, label %._crit_edge105.thread, label %bb.s

bb.n:                                             ; preds = %.lr.ph104, %bb.r
  %i.gz = phi i64 [ 0, %.lr.ph104 ], [ %i.hw, %bb.r ] ; 3 uses
  %i.ha = phi i64 [ 0, %.lr.ph104 ], [ %i.hs, %bb.r ] ; 3 uses
  %i.hb = phi i64 [ 0, %.lr.ph104 ], [ %i.ht, %bb.r ] ; 2 uses
  %.0.i29102 = phi i64 [ 0, %.lr.ph104 ], [ %i.hh, %bb.r ] ; 3 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %.0.i29102
  %i.hd = load i64, ptr %i.hc, align 8            ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.0.i29102
  %i.hf = load i64, ptr %i.he, align 8
  %i.hg = add i64 %i.hf, %i.hd                    ; 2 uses
  %i.hh = add nuw i64 %.0.i29102, 1               ; 3 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.hh
  %i.hj = load i64, ptr %i.hi, align 8
  %i.hk = call noundef i64 @llvm.smax.i64(i64 %i.hg, i64 0) ; 3 uses
  %i.hl = call noundef i64 @llvm.smin.i64(i64 %.026.i.lcssa147, i64 %i.hj) ; 3 uses
  %i.hm = call noundef i64 @llvm.smax.i64(i64 %.026.i.lcssa147, i64 %i.hd) ; 2 uses
  %i.hn = call noundef i64 @llvm.smin.i64(i64 %i.gp, i64 %i.hg) ; 2 uses
  %.not86 = icmp sgt i64 %i.hl, %i.hk
  br i1 %.not86, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ho = sub nsw i64 %i.hl, %i.hk
  %i.hp = add i64 %i.ho, %i.hb                    ; 2 uses
  store i64 %i.hp, ptr %i.c, align 8
  %i.hq = add i64 %i.ha, 1                        ; 2 uses
  store i64 %i.hq, ptr %i.a, align 8
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.gr, i64 %i.ha ; 2 uses
  store i64 %i.hk, ptr %i.hr, align 16
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store i64 %i.hl, ptr %.sroa.664.0..sroa_idx, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.hs = phi i64 [ %i.hq, %bb.o ], [ %i.ha, %bb.n ]
  %i.ht = phi i64 [ %i.hp, %bb.o ], [ %i.hb, %bb.n ] ; 2 uses
  %.not87 = icmp sgt i64 %i.hn, %i.hm
  br i1 %.not87, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.hu = add i64 %i.gz, 1                        ; 2 uses
  store i64 %i.hu, ptr %i.b, align 8
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %i.gs, i64 %i.gz ; 2 uses
  store i64 %i.hm, ptr %i.hv, align 16
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store i64 %i.hn, ptr %.sroa.660.0..sroa_idx, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.hw = phi i64 [ %i.gz, %bb.p ], [ %i.hu, %bb.q ]
  %i.hx = icmp ult i64 %i.hh, %i.gq
  br i1 %i.hx, label %bb.n, label %._crit_edge105, !llvm.loop !3626

bb.s:                                             ; preds = %._crit_edge105
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  store ptr %i.c, ptr %17, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.cq, ptr %i.hy, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.a, ptr %i.hz, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %i.b, ptr %i.ia, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store ptr null, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr %17, ptr %11, align 8
  invoke void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_23parallel_partition_taskINS_4sse219BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS4_26HeuristicArrayOpenMergeSAHIZNS9_5buildEvEUlRSA_PSA_E_SA_Lm32EE21parallel_object_splitERKNS4_8BinSplitILm32EEERKNS4_16PrimInfoExtRangeERSQ_ST_EUlRKSA_E_ZNSL_21parallel_object_splitESP_SS_ST_ST_EUlRSF_SV_E_ZNSL_21parallel_object_splitESP_SS_ST_ST_EUlSX_RKSF_E_E9partitionESX_SX_EUlmE0_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvS14_S14_S14_S17_PNS0_16TaskGroupContextE(i64 noundef 0, i64 noundef %i.gq, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %10)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  invoke void @_ZN6embree13TaskScheduler4waitEv()
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48 unwind label %bb.w

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48: ; preds = %bb.t
  %i.ib = load ptr, ptr %10, align 8              ; 2 uses
  %.not85 = icmp eq ptr %i.ib, null
  br i1 %.not85, label %.noexc34, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit50

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit50: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48
  store ptr %i.ib, ptr %12, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %12) #28
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit50
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52

bb.w:                                             ; preds = %bb.t
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52

bb.x:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit50
  %i.ie = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.if = load ptr, ptr %12, align 8
  %.not.i51 = icmp eq ptr %i.if, null
  br i1 %.not.i51, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52: ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %.pn.i38 = phi { ptr, i32 } [ %i.ic, %bb.v ], [ %i.id, %bb.w ], [ %i.ie, %bb.x ], [ %i.ie, %bb.y ]
  %i.ig = load ptr, ptr %10, align 8
  %.not.i.i55 = icmp eq ptr %i.ig, null
  br i1 %.not.i.i55, label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit56, label %bb.z

bb.z:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #21
  br label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit56

_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit56: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %.body

.noexc34:                                         ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %._crit_edge105.thread

._crit_edge105.thread:                            ; preds = %._crit_edge99.thread, %._crit_edge99, %._crit_edge105, %.noexc34
  %.026.i.lcssa143150 = phi i64 [ %.026.i.lcssa147, %._crit_edge105 ], [ %.026.i.lcssa147, %.noexc34 ], [ %i.dq, %._crit_edge99.thread ], [ %i.ed, %._crit_edge99 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.cq)
          to label %_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_8QuadMeshENS0_6QuadMvILi4EEEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS7_5buildEvEUlRS8_PS8_E_S8_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSO_SR_EUlRKS8_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlRSD_ST_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlSV_RKSD_E_EESt14default_deleteIS10_EED2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %._crit_edge105.thread
  %i.ih = landingpad { ptr, i32 }
          catch ptr null
  %i.ii = extractvalue { ptr, i32 } %i.ih, 0
  call void @__clang_call_terminate(ptr %i.ii) #26
  unreachable

_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_8QuadMeshENS0_6QuadMvILi4EEEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS7_5buildEvEUlRS8_PS8_E_S8_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSO_SR_EUlRKS8_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlRSD_ST_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlSV_RKSD_E_EESt14default_deleteIS10_EED2Ev.exit: ; preds = %._crit_edge105.thread
  %i.ij = add i64 %.026.i.lcssa143150, %1
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %bb.ad

bb.ab:                                            ; preds = %bb.e
  %i.ik = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.cq)
          to label %_ZN6embree23parallel_partition_taskINS_4sse219BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EdlEPv.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.il = landingpad { ptr, i32 }
          catch ptr null
  %i.im = extractvalue { ptr, i32 } %i.il, 0
  tail call void @__clang_call_terminate(ptr %i.im) #26
  unreachable

.body:                                            ; preds = %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit56, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit46
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i36, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit46 ], [ %.pn.i38, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit56 ]
  call void @_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_8QuadMeshENS0_6QuadMvILi4EEEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS7_5buildEvEUlRS8_PS8_E_S8_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSO_SR_EUlRKS8_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlRSD_ST_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlSV_RKSD_E_EESt14default_deleteIS10_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #21
  br label %_ZN6embree23parallel_partition_taskINS_4sse219BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EdlEPv.exit

_ZN6embree23parallel_partition_taskINS_4sse219BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EdlEPv.exit: ; preds = %bb.ab, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ik, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  resume { ptr, i32 } %.pn

bb.ad:                                            ; preds = %_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_8QuadMeshENS0_6QuadMvILi4EEEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS7_5buildEvEUlRS8_PS8_E_S8_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSO_SR_EUlRKS8_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlRSD_ST_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlSV_RKSD_E_EESt14default_deleteIS10_EED2Ev.exit, %_ZN6embree19serial_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS1_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSM_SP_EUlRKS7_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlRSC_SR_E_EEmPT_mmRT0_SY_RKT1_RKT2_.exit
  %.025 = phi i64 [ %i.cp, %_ZN6embree19serial_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS1_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSM_SP_EUlRKS7_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlRSC_SR_E_EEmPT_mmRT0_SY_RKT1_RKT2_.exit ], [ %i.ij, %_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_8QuadMeshENS0_6QuadMvILi4EEEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS7_5buildEvEUlRS8_PS8_E_S8_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSO_SR_EUlRKS8_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlRSD_ST_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlSV_RKSD_E_EESt14default_deleteIS10_EED2Ev.exit ]
  ret i64 %.025
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_8QuadMeshENS0_6QuadMvILi4EEEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS7_5buildEvEUlRS8_PS8_E_S8_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSO_SR_EUlRKS8_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlRSD_ST_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlSV_RKSD_E_EESt14default_deleteIS10_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNKSt14default_deleteIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_8QuadMeshENS0_6QuadMvILi4EEEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS7_5buildEvEUlRS8_PS8_E_S8_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSO_SR_EUlRKS8_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlRSD_ST_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlSV_RKSD_E_EEEclEPS10_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.a)
          to label %_ZNKSt14default_deleteIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_8QuadMeshENS0_6QuadMvILi4EEEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS7_5buildEvEUlRS8_PS8_E_S8_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSO_SR_EUlRKS8_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlRSD_ST_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlSV_RKSD_E_EEEclEPS10_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #26
  unreachable

_ZNKSt14default_deleteIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_8QuadMeshENS0_6QuadMvILi4EEEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS7_5buildEvEUlRS8_PS8_E_S8_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSO_SR_EUlRKS8_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlRSD_ST_E_ZNSJ_21parallel_object_splitESN_SQ_SR_SR_EUlSV_RKSD_E_EEEclEPS10_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree4sse226HeuristicArrayOpenMergeSAHIZNS0_19BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE5buildEvEUlRNS6_8BuildRefEPS7_E_S7_Lm32EE21parallel_object_splitERKNS0_8BinSplitILm32EEERKNS0_16PrimInfoExtRangeERSG_SJ_ENKUlRNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEERKS7_E_clESP_SR_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 16 dereferenceable(80) %1, ptr noundef nonnull align 32 dereferenceable(44) %2) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = load <4 x float>, ptr %2, align 32, !noalias !3669 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load <4 x float>, ptr %i.b, align 16, !noalias !3670 ; 2 uses
  %i.d = load <4 x float>, ptr %1, align 16, !noalias !3671
  %i.e = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.d, <4 x float> %i.a)
  store <4 x float> %i.e, ptr %1, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load <4 x float>, ptr %i.f, align 16, !noalias !3672
  %i.h = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.g, <4 x float> %i.c)
  store <4 x float> %i.h, ptr %i.f, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.j = fadd <4 x float> %i.a, %i.c              ; 2 uses
  %i.k = load <4 x float>, ptr %i.i, align 16, !noalias !3673
  %i.l = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.k, <4 x float> %i.j)
  store <4 x float> %i.l, ptr %i.i, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.n = load <4 x float>, ptr %i.m, align 16, !noalias !3674
  %i.o = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.n, <4 x float> %i.j)
  store <4 x float> %i.o, ptr %i.m, align 16
end_hunk_3
begin_hunk_4_@_ZN6embree21parallel_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS5_5buildEvEUlRS6_PS6_E_S6_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSM_SP_EUlRKS6_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlRSB_SR_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlST_RKSB_E_EEmPT_mmRKT1_RT0_S14_RKT2_RKT3_RKT4_m:bb.a
  store i64 0, ptr %i.dp, align 8
  %.not119 = icmp eq i64 %i.dm, 0
  br i1 %.not119, label %._crit_edge99.thread, label %.noexc33.lr.ph

._crit_edge99.thread:                             ; preds = %.noexc31
  %i.dq = load i64, ptr %i.do, align 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  br label %._crit_edge105.thread

.noexc33.lr.ph:                                   ; preds = %.noexc31
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cq, i64 3264
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cq, i64 8384
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  br label %.noexc33

._crit_edge:                                      ; preds = %.noexc33
  %i.ed = load i64, ptr %i.do, align 64           ; 4 uses
  %i.ee = icmp ugt i64 %i.gm, 1
  br i1 %i.ee, label %.lr.ph.preheader, label %._crit_edge99

.lr.ph.preheader:                                 ; preds = %._crit_edge
  %i.ef = add i64 %i.gm, -1                       ; 2 uses
  %min.iters.check = icmp ult i64 %i.gm, 5
  br i1 %min.iters.check, label %.lr.ph.preheader172, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ef, -4                      ; 3 uses
  %i.eg = or disjoint i64 %n.vec, 1
  %i.eh = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ed, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.eh, %vector.ph ], [ %i.el, %vector.body ]
  %vec.phi166 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.em, %vector.body ]
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %index ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %wide.load = load <2 x i64>, ptr %i.ej, align 8
  %wide.load167 = load <2 x i64>, ptr %i.ek, align 8
  %i.el = add <2 x i64> %wide.load, %vec.phi      ; 2 uses
  %i.em = add <2 x i64> %wide.load167, %vec.phi166 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.en = icmp eq i64 %index.next, %n.vec
  br i1 %i.en, label %middle.block, label %vector.body, !llvm.loop !4481

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.em, %i.el
  %i.eo = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ef, %n.vec
  br i1 %cmp.n, label %._crit_edge99.thread144, label %.lr.ph.preheader172

.lr.ph.preheader172:                              ; preds = %.lr.ph.preheader, %middle.block
  %.025.i97.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.eg, %middle.block ]
  %.026.i96.ph = phi i64 [ %i.ed, %.lr.ph.preheader ], [ %i.eo, %middle.block ]
  br label %.lr.ph

.noexc33:                                         ; preds = %.noexc33.lr.ph, %.noexc33
  %.027.i95 = phi i64 [ 0, %.noexc33.lr.ph ], [ %i.gl, %.noexc33 ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [80 x i8], ptr %i.dr, i64 %.027.i95 ; 6 uses
  %i.eq = load <4 x float>, ptr %4, align 16, !noalias !4521
  %i.er = load <4 x float>, ptr %i.ep, align 16, !noalias !4521
  %i.es = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.eq, <4 x float> %i.er)
  store <4 x float> %i.es, ptr %4, align 16
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.eu = load <4 x float>, ptr %i.ds, align 16, !noalias !4522
  %i.ev = load <4 x float>, ptr %i.et, align 16, !noalias !4522
  %i.ew = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.eu, <4 x float> %i.ev)
  store <4 x float> %i.ew, ptr %i.ds, align 16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.ey = load <4 x float>, ptr %i.dt, align 16, !noalias !4523
  %i.ez = load <4 x float>, ptr %i.ex, align 16, !noalias !4523
  %i.fa = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ey, <4 x float> %i.ez)
  store <4 x float> %i.fa, ptr %i.dt, align 16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ep, i64 48
  %i.fc = load <4 x float>, ptr %i.du, align 16, !noalias !4524
  %i.fd = load <4 x float>, ptr %i.fb, align 16, !noalias !4524
  %i.fe = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fc, <4 x float> %i.fd)
  store <4 x float> %i.fe, ptr %i.du, align 16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ep, i64 64
  %i.fg = load i64, ptr %i.ff, align 16
  %i.fh = load i64, ptr %i.dv, align 16
  %i.fi = add i64 %i.fh, %i.fg
  store i64 %i.fi, ptr %i.dv, align 16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ep, i64 72
  %i.fk = load i64, ptr %i.fj, align 8
  %i.fl = load i64, ptr %i.dw, align 8
  %i.fm = add i64 %i.fl, %i.fk
  store i64 %i.fm, ptr %i.dw, align 8
  %i.fn = getelementptr inbounds nuw [80 x i8], ptr %i.dx, i64 %.027.i95 ; 6 uses
  %i.fo = load <4 x float>, ptr %5, align 16, !noalias !4525
  %i.fp = load <4 x float>, ptr %i.fn, align 16, !noalias !4525
  %i.fq = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fo, <4 x float> %i.fp)
  store <4 x float> %i.fq, ptr %5, align 16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fs = load <4 x float>, ptr %i.dy, align 16, !noalias !4526
  %i.ft = load <4 x float>, ptr %i.fr, align 16, !noalias !4526
  %i.fu = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fs, <4 x float> %i.ft)
  store <4 x float> %i.fu, ptr %i.dy, align 16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fw = load <4 x float>, ptr %i.dz, align 16, !noalias !4527
  %i.fx = load <4 x float>, ptr %i.fv, align 16, !noalias !4527
  %i.fy = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fw, <4 x float> %i.fx)
  store <4 x float> %i.fy, ptr %i.dz, align 16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fn, i64 48
  %i.ga = load <4 x float>, ptr %i.ea, align 16, !noalias !4528
  %i.gb = load <4 x float>, ptr %i.fz, align 16, !noalias !4528
  %i.gc = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ga, <4 x float> %i.gb)
  store <4 x float> %i.gc, ptr %i.ea, align 16
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fn, i64 64
  %i.ge = load i64, ptr %i.gd, align 16
  %i.gf = load i64, ptr %i.eb, align 16
  %i.gg = add i64 %i.gf, %i.ge
  store i64 %i.gg, ptr %i.eb, align 16
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fn, i64 72
  %i.gi = load i64, ptr %i.gh, align 8
  %i.gj = load i64, ptr %i.ec, align 8
  %i.gk = add i64 %i.gj, %i.gi
  store i64 %i.gk, ptr %i.ec, align 8
  %i.gl = add nuw i64 %.027.i95, 1                ; 2 uses
  %i.gm = load i64, ptr %i.cx, align 16           ; 7 uses
  %i.gn = icmp ult i64 %i.gl, %i.gm
  br i1 %i.gn, label %.noexc33, label %._crit_edge, !llvm.loop !4498

._crit_edge99:                                    ; preds = %._crit_edge
  %i.go = load i64, ptr %i.cs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 0, ptr %i.c, align 8
  %.not120 = icmp eq i64 %i.gm, 0
  br i1 %.not120, label %._crit_edge105.thread, label %.lr.ph104

.lr.ph104:                                        ; preds = %._crit_edge99.thread144, %._crit_edge99
  %i.gp = phi i64 [ %i.gx, %._crit_edge99.thread144 ], [ %i.go, %._crit_edge99 ]
  %.026.i.lcssa147 = phi i64 [ %.lcssa164, %._crit_edge99.thread144 ], [ %i.ed, %._crit_edge99 ] ; 4 uses
  %i.gq = phi i64 [ %i.gm, %._crit_edge99.thread144 ], [ 1, %._crit_edge99 ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1216
  %i.gs = getelementptr inbounds nuw i8, ptr %i.cq, i64 2240
  br label %bb.n

.lr.ph:                                           ; preds = %.lr.ph.preheader172, %.lr.ph
  %.025.i97 = phi i64 [ %i.gw, %.lr.ph ], [ %.025.i97.ph, %.lr.ph.preheader172 ] ; 2 uses
  %.026.i96 = phi i64 [ %i.gv, %.lr.ph ], [ %.026.i96.ph, %.lr.ph.preheader172 ]
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.025.i97
  %i.gu = load i64, ptr %i.gt, align 8
  %i.gv = add i64 %i.gu, %.026.i96                ; 2 uses
  %i.gw = add nuw i64 %.025.i97, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.gw, %i.gm
  br i1 %exitcond.not, label %._crit_edge99.thread144, label %.lr.ph, !llvm.loop !4499

._crit_edge99.thread144:                          ; preds = %.lr.ph, %middle.block
  %.lcssa164 = phi i64 [ %i.eo, %middle.block ], [ %i.gv, %.lr.ph ]
  %i.gx = load i64, ptr %i.cs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 0, ptr %i.c, align 8
  br label %.lr.ph104

._crit_edge105:                                   ; preds = %bb.r
  %i.gy = icmp eq i64 %i.ht, 0
  br i1 %i.gy, label %._crit_edge105.thread, label %bb.s

bb.n:                                             ; preds = %.lr.ph104, %bb.r
  %i.gz = phi i64 [ 0, %.lr.ph104 ], [ %i.hw, %bb.r ] ; 3 uses
  %i.ha = phi i64 [ 0, %.lr.ph104 ], [ %i.hs, %bb.r ] ; 3 uses
  %i.hb = phi i64 [ 0, %.lr.ph104 ], [ %i.ht, %bb.r ] ; 2 uses
  %.0.i29102 = phi i64 [ 0, %.lr.ph104 ], [ %i.hh, %bb.r ] ; 3 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %.0.i29102
  %i.hd = load i64, ptr %i.hc, align 8            ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.0.i29102
  %i.hf = load i64, ptr %i.he, align 8
  %i.hg = add i64 %i.hf, %i.hd                    ; 2 uses
  %i.hh = add nuw i64 %.0.i29102, 1               ; 3 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.hh
  %i.hj = load i64, ptr %i.hi, align 8
  %i.hk = call noundef i64 @llvm.smax.i64(i64 %i.hg, i64 0) ; 3 uses
  %i.hl = call noundef i64 @llvm.smin.i64(i64 %.026.i.lcssa147, i64 %i.hj) ; 3 uses
  %i.hm = call noundef i64 @llvm.smax.i64(i64 %.026.i.lcssa147, i64 %i.hd) ; 2 uses
  %i.hn = call noundef i64 @llvm.smin.i64(i64 %i.gp, i64 %i.hg) ; 2 uses
  %.not86 = icmp sgt i64 %i.hl, %i.hk
  br i1 %.not86, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ho = sub nsw i64 %i.hl, %i.hk
  %i.hp = add i64 %i.ho, %i.hb                    ; 2 uses
  store i64 %i.hp, ptr %i.c, align 8
  %i.hq = add i64 %i.ha, 1                        ; 2 uses
  store i64 %i.hq, ptr %i.a, align 8
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.gr, i64 %i.ha ; 2 uses
  store i64 %i.hk, ptr %i.hr, align 16
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store i64 %i.hl, ptr %.sroa.664.0..sroa_idx, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.hs = phi i64 [ %i.hq, %bb.o ], [ %i.ha, %bb.n ]
  %i.ht = phi i64 [ %i.hp, %bb.o ], [ %i.hb, %bb.n ] ; 2 uses
  %.not87 = icmp sgt i64 %i.hn, %i.hm
  br i1 %.not87, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.hu = add i64 %i.gz, 1                        ; 2 uses
  store i64 %i.hu, ptr %i.b, align 8
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %i.gs, i64 %i.gz ; 2 uses
  store i64 %i.hm, ptr %i.hv, align 16
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store i64 %i.hn, ptr %.sroa.660.0..sroa_idx, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.hw = phi i64 [ %i.gz, %bb.p ], [ %i.hu, %bb.q ]
  %i.hx = icmp ult i64 %i.hh, %i.gq
  br i1 %i.hx, label %bb.n, label %._crit_edge105, !llvm.loop !4500

bb.s:                                             ; preds = %._crit_edge105
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  store ptr %i.c, ptr %17, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.cq, ptr %i.hy, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.a, ptr %i.hz, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %i.b, ptr %i.ia, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store ptr null, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr %17, ptr %11, align 8
  invoke void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_23parallel_partition_taskINS_4sse219BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS4_26HeuristicArrayOpenMergeSAHIZNS8_5buildEvEUlRS9_PS9_E_S9_Lm32EE21parallel_object_splitERKNS4_8BinSplitILm32EEERKNS4_16PrimInfoExtRangeERSP_SS_EUlRKS9_E_ZNSK_21parallel_object_splitESO_SR_SS_SS_EUlRSE_SU_E_ZNSK_21parallel_object_splitESO_SR_SS_SS_EUlSW_RKSE_E_E9partitionESW_SW_EUlmE0_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvS13_S13_S13_S16_PNS0_16TaskGroupContextE(i64 noundef 0, i64 noundef %i.gq, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %10)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  invoke void @_ZN6embree13TaskScheduler4waitEv()
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48 unwind label %bb.w

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48: ; preds = %bb.t
  %i.ib = load ptr, ptr %10, align 8              ; 2 uses
  %.not85 = icmp eq ptr %i.ib, null
  br i1 %.not85, label %.noexc34, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit50

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit50: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48
  store ptr %i.ib, ptr %12, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %12) #28
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit50
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52

bb.w:                                             ; preds = %bb.t
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52

bb.x:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit50
  %i.ie = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.if = load ptr, ptr %12, align 8
  %.not.i51 = icmp eq ptr %i.if, null
  br i1 %.not.i51, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52: ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %.pn.i38 = phi { ptr, i32 } [ %i.ic, %bb.v ], [ %i.id, %bb.w ], [ %i.ie, %bb.x ], [ %i.ie, %bb.y ]
  %i.ig = load ptr, ptr %10, align 8
  %.not.i.i55 = icmp eq ptr %i.ig, null
  br i1 %.not.i.i55, label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit56, label %bb.z

bb.z:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #21
  br label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit56

_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit56: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %.body

.noexc34:                                         ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %._crit_edge105.thread

._crit_edge105.thread:                            ; preds = %._crit_edge99.thread, %._crit_edge99, %._crit_edge105, %.noexc34
  %.026.i.lcssa143150 = phi i64 [ %.026.i.lcssa147, %._crit_edge105 ], [ %.026.i.lcssa147, %.noexc34 ], [ %i.dq, %._crit_edge99.thread ], [ %i.ed, %._crit_edge99 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.cq)
          to label %_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_12UserGeometryENS0_6ObjectEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EESt14default_deleteISZ_EED2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %._crit_edge105.thread
  %i.ih = landingpad { ptr, i32 }
          catch ptr null
  %i.ii = extractvalue { ptr, i32 } %i.ih, 0
  call void @__clang_call_terminate(ptr %i.ii) #26
  unreachable

_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_12UserGeometryENS0_6ObjectEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EESt14default_deleteISZ_EED2Ev.exit: ; preds = %._crit_edge105.thread
  %i.ij = add i64 %.026.i.lcssa143150, %1
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %bb.ad

bb.ab:                                            ; preds = %bb.e
  %i.ik = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.cq)
          to label %_ZN6embree23parallel_partition_taskINS_4sse219BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS5_5buildEvEUlRS6_PS6_E_S6_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSM_SP_EUlRKS6_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlRSB_SR_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlST_RKSB_E_EdlEPv.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.il = landingpad { ptr, i32 }
          catch ptr null
  %i.im = extractvalue { ptr, i32 } %i.il, 0
  tail call void @__clang_call_terminate(ptr %i.im) #26
  unreachable

.body:                                            ; preds = %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit56, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit46
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i36, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit46 ], [ %.pn.i38, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit56 ]
  call void @_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_12UserGeometryENS0_6ObjectEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EESt14default_deleteISZ_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #21
  br label %_ZN6embree23parallel_partition_taskINS_4sse219BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS5_5buildEvEUlRS6_PS6_E_S6_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSM_SP_EUlRKS6_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlRSB_SR_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlST_RKSB_E_EdlEPv.exit

_ZN6embree23parallel_partition_taskINS_4sse219BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS5_5buildEvEUlRS6_PS6_E_S6_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSM_SP_EUlRKS6_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlRSB_SR_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlST_RKSB_E_EdlEPv.exit: ; preds = %bb.ab, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ik, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  resume { ptr, i32 } %.pn

bb.ad:                                            ; preds = %_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_12UserGeometryENS0_6ObjectEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EESt14default_deleteISZ_EED2Ev.exit, %_ZN6embree19serial_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS1_26HeuristicArrayOpenMergeSAHIZNS5_5buildEvEUlRS6_PS6_E_S6_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSL_SO_EUlRKS6_E_ZNSG_21parallel_object_splitESK_SN_SO_SO_EUlRSB_SQ_E_EEmPT_mmRT0_SX_RKT1_RKT2_.exit
  %.025 = phi i64 [ %i.cp, %_ZN6embree19serial_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS1_26HeuristicArrayOpenMergeSAHIZNS5_5buildEvEUlRS6_PS6_E_S6_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSL_SO_EUlRKS6_E_ZNSG_21parallel_object_splitESK_SN_SO_SO_EUlRSB_SQ_E_EEmPT_mmRT0_SX_RKT1_RKT2_.exit ], [ %i.ij, %_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_12UserGeometryENS0_6ObjectEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EESt14default_deleteISZ_EED2Ev.exit ]
  ret i64 %.025
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_12UserGeometryENS0_6ObjectEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EESt14default_deleteISZ_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNKSt14default_deleteIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_12UserGeometryENS0_6ObjectEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EEEclEPSZ_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.a)
          to label %_ZNKSt14default_deleteIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_12UserGeometryENS0_6ObjectEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EEEclEPSZ_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #26
  unreachable

_ZNKSt14default_deleteIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_12UserGeometryENS0_6ObjectEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EEEclEPSZ_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree4sse226HeuristicArrayOpenMergeSAHIZNS0_19BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE5buildEvEUlRNS5_8BuildRefEPS6_E_S6_Lm32EE21parallel_object_splitERKNS0_8BinSplitILm32EEERKNS0_16PrimInfoExtRangeERSF_SI_ENKUlRNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEERKS6_E_clESO_SQ_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 16 dereferenceable(80) %1, ptr noundef nonnull align 32 dereferenceable(44) %2) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = load <4 x float>, ptr %2, align 32, !noalias !4543 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load <4 x float>, ptr %i.b, align 16, !noalias !4544 ; 2 uses
  %i.d = load <4 x float>, ptr %1, align 16, !noalias !4545
  %i.e = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.d, <4 x float> %i.a)
  store <4 x float> %i.e, ptr %1, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load <4 x float>, ptr %i.f, align 16, !noalias !4546
  %i.h = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.g, <4 x float> %i.c)
  store <4 x float> %i.h, ptr %i.f, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.j = fadd <4 x float> %i.a, %i.c              ; 2 uses
  %i.k = load <4 x float>, ptr %i.i, align 16, !noalias !4547
  %i.l = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.k, <4 x float> %i.j)
  store <4 x float> %i.l, ptr %i.i, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.n = load <4 x float>, ptr %i.m, align 16, !noalias !4548
  %i.o = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.n, <4 x float> %i.j)
  store <4 x float> %i.o, ptr %i.m, align 16
end_hunk_4
begin_hunk_5_@_ZN6embree21parallel_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS5_5buildEvEUlRS6_PS6_E_S6_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSM_SP_EUlRKS6_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlRSB_SR_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlST_RKSB_E_EEmPT_mmRKT1_RT0_S14_RKT2_RKT3_RKT4_m:bb.a
  store i64 0, ptr %i.dp, align 8
  %.not119 = icmp eq i64 %i.dm, 0
  br i1 %.not119, label %._crit_edge99.thread, label %.noexc33.lr.ph

._crit_edge99.thread:                             ; preds = %.noexc31
  %i.dq = load i64, ptr %i.do, align 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  br label %._crit_edge105.thread

.noexc33.lr.ph:                                   ; preds = %.noexc31
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cq, i64 3264
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cq, i64 8384
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  br label %.noexc33

._crit_edge:                                      ; preds = %.noexc33
  %i.ed = load i64, ptr %i.do, align 64           ; 4 uses
  %i.ee = icmp ugt i64 %i.gm, 1
  br i1 %i.ee, label %.lr.ph.preheader, label %._crit_edge99

.lr.ph.preheader:                                 ; preds = %._crit_edge
  %i.ef = add i64 %i.gm, -1                       ; 2 uses
  %min.iters.check = icmp ult i64 %i.gm, 5
  br i1 %min.iters.check, label %.lr.ph.preheader172, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ef, -4                      ; 3 uses
  %i.eg = or disjoint i64 %n.vec, 1
  %i.eh = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ed, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.eh, %vector.ph ], [ %i.el, %vector.body ]
  %vec.phi166 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.em, %vector.body ]
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %index ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %wide.load = load <2 x i64>, ptr %i.ej, align 8
  %wide.load167 = load <2 x i64>, ptr %i.ek, align 8
  %i.el = add <2 x i64> %wide.load, %vec.phi      ; 2 uses
  %i.em = add <2 x i64> %wide.load167, %vec.phi166 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.en = icmp eq i64 %index.next, %n.vec
  br i1 %i.en, label %middle.block, label %vector.body, !llvm.loop !5355

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.em, %i.el
  %i.eo = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ef, %n.vec
  br i1 %cmp.n, label %._crit_edge99.thread144, label %.lr.ph.preheader172

.lr.ph.preheader172:                              ; preds = %.lr.ph.preheader, %middle.block
  %.025.i97.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.eg, %middle.block ]
  %.026.i96.ph = phi i64 [ %i.ed, %.lr.ph.preheader ], [ %i.eo, %middle.block ]
  br label %.lr.ph

.noexc33:                                         ; preds = %.noexc33.lr.ph, %.noexc33
  %.027.i95 = phi i64 [ 0, %.noexc33.lr.ph ], [ %i.gl, %.noexc33 ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [80 x i8], ptr %i.dr, i64 %.027.i95 ; 6 uses
  %i.eq = load <4 x float>, ptr %4, align 16, !noalias !5395
  %i.er = load <4 x float>, ptr %i.ep, align 16, !noalias !5395
  %i.es = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.eq, <4 x float> %i.er)
  store <4 x float> %i.es, ptr %4, align 16
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.eu = load <4 x float>, ptr %i.ds, align 16, !noalias !5396
  %i.ev = load <4 x float>, ptr %i.et, align 16, !noalias !5396
  %i.ew = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.eu, <4 x float> %i.ev)
  store <4 x float> %i.ew, ptr %i.ds, align 16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.ey = load <4 x float>, ptr %i.dt, align 16, !noalias !5397
  %i.ez = load <4 x float>, ptr %i.ex, align 16, !noalias !5397
  %i.fa = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ey, <4 x float> %i.ez)
  store <4 x float> %i.fa, ptr %i.dt, align 16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ep, i64 48
  %i.fc = load <4 x float>, ptr %i.du, align 16, !noalias !5398
  %i.fd = load <4 x float>, ptr %i.fb, align 16, !noalias !5398
  %i.fe = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fc, <4 x float> %i.fd)
  store <4 x float> %i.fe, ptr %i.du, align 16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ep, i64 64
  %i.fg = load i64, ptr %i.ff, align 16
  %i.fh = load i64, ptr %i.dv, align 16
  %i.fi = add i64 %i.fh, %i.fg
  store i64 %i.fi, ptr %i.dv, align 16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ep, i64 72
  %i.fk = load i64, ptr %i.fj, align 8
  %i.fl = load i64, ptr %i.dw, align 8
  %i.fm = add i64 %i.fl, %i.fk
  store i64 %i.fm, ptr %i.dw, align 8
  %i.fn = getelementptr inbounds nuw [80 x i8], ptr %i.dx, i64 %.027.i95 ; 6 uses
  %i.fo = load <4 x float>, ptr %5, align 16, !noalias !5399
  %i.fp = load <4 x float>, ptr %i.fn, align 16, !noalias !5399
  %i.fq = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fo, <4 x float> %i.fp)
  store <4 x float> %i.fq, ptr %5, align 16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fs = load <4 x float>, ptr %i.dy, align 16, !noalias !5400
  %i.ft = load <4 x float>, ptr %i.fr, align 16, !noalias !5400
  %i.fu = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fs, <4 x float> %i.ft)
  store <4 x float> %i.fu, ptr %i.dy, align 16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fw = load <4 x float>, ptr %i.dz, align 16, !noalias !5401
  %i.fx = load <4 x float>, ptr %i.fv, align 16, !noalias !5401
  %i.fy = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fw, <4 x float> %i.fx)
  store <4 x float> %i.fy, ptr %i.dz, align 16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fn, i64 48
  %i.ga = load <4 x float>, ptr %i.ea, align 16, !noalias !5402
  %i.gb = load <4 x float>, ptr %i.fz, align 16, !noalias !5402
  %i.gc = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ga, <4 x float> %i.gb)
  store <4 x float> %i.gc, ptr %i.ea, align 16
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fn, i64 64
  %i.ge = load i64, ptr %i.gd, align 16
  %i.gf = load i64, ptr %i.eb, align 16
  %i.gg = add i64 %i.gf, %i.ge
  store i64 %i.gg, ptr %i.eb, align 16
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fn, i64 72
  %i.gi = load i64, ptr %i.gh, align 8
  %i.gj = load i64, ptr %i.ec, align 8
  %i.gk = add i64 %i.gj, %i.gi
  store i64 %i.gk, ptr %i.ec, align 8
  %i.gl = add nuw i64 %.027.i95, 1                ; 2 uses
  %i.gm = load i64, ptr %i.cx, align 16           ; 7 uses
  %i.gn = icmp ult i64 %i.gl, %i.gm
  br i1 %i.gn, label %.noexc33, label %._crit_edge, !llvm.loop !5372

._crit_edge99:                                    ; preds = %._crit_edge
  %i.go = load i64, ptr %i.cs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 0, ptr %i.c, align 8
  %.not120 = icmp eq i64 %i.gm, 0
  br i1 %.not120, label %._crit_edge105.thread, label %.lr.ph104

.lr.ph104:                                        ; preds = %._crit_edge99.thread144, %._crit_edge99
  %i.gp = phi i64 [ %i.gx, %._crit_edge99.thread144 ], [ %i.go, %._crit_edge99 ]
  %.026.i.lcssa147 = phi i64 [ %.lcssa164, %._crit_edge99.thread144 ], [ %i.ed, %._crit_edge99 ] ; 4 uses
  %i.gq = phi i64 [ %i.gm, %._crit_edge99.thread144 ], [ 1, %._crit_edge99 ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1216
  %i.gs = getelementptr inbounds nuw i8, ptr %i.cq, i64 2240
  br label %bb.n

.lr.ph:                                           ; preds = %.lr.ph.preheader172, %.lr.ph
  %.025.i97 = phi i64 [ %i.gw, %.lr.ph ], [ %.025.i97.ph, %.lr.ph.preheader172 ] ; 2 uses
  %.026.i96 = phi i64 [ %i.gv, %.lr.ph ], [ %.026.i96.ph, %.lr.ph.preheader172 ]
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.025.i97
  %i.gu = load i64, ptr %i.gt, align 8
  %i.gv = add i64 %i.gu, %.026.i96                ; 2 uses
  %i.gw = add nuw i64 %.025.i97, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.gw, %i.gm
  br i1 %exitcond.not, label %._crit_edge99.thread144, label %.lr.ph, !llvm.loop !5373

._crit_edge99.thread144:                          ; preds = %.lr.ph, %middle.block
  %.lcssa164 = phi i64 [ %i.eo, %middle.block ], [ %i.gv, %.lr.ph ]
  %i.gx = load i64, ptr %i.cs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 0, ptr %i.c, align 8
  br label %.lr.ph104

._crit_edge105:                                   ; preds = %bb.r
  %i.gy = icmp eq i64 %i.ht, 0
  br i1 %i.gy, label %._crit_edge105.thread, label %bb.s

bb.n:                                             ; preds = %.lr.ph104, %bb.r
  %i.gz = phi i64 [ 0, %.lr.ph104 ], [ %i.hw, %bb.r ] ; 3 uses
  %i.ha = phi i64 [ 0, %.lr.ph104 ], [ %i.hs, %bb.r ] ; 3 uses
  %i.hb = phi i64 [ 0, %.lr.ph104 ], [ %i.ht, %bb.r ] ; 2 uses
  %.0.i29102 = phi i64 [ 0, %.lr.ph104 ], [ %i.hh, %bb.r ] ; 3 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %.0.i29102
  %i.hd = load i64, ptr %i.hc, align 8            ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.0.i29102
  %i.hf = load i64, ptr %i.he, align 8
  %i.hg = add i64 %i.hf, %i.hd                    ; 2 uses
  %i.hh = add nuw i64 %.0.i29102, 1               ; 3 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.hh
  %i.hj = load i64, ptr %i.hi, align 8
  %i.hk = call noundef i64 @llvm.smax.i64(i64 %i.hg, i64 0) ; 3 uses
  %i.hl = call noundef i64 @llvm.smin.i64(i64 %.026.i.lcssa147, i64 %i.hj) ; 3 uses
  %i.hm = call noundef i64 @llvm.smax.i64(i64 %.026.i.lcssa147, i64 %i.hd) ; 2 uses
  %i.hn = call noundef i64 @llvm.smin.i64(i64 %i.gp, i64 %i.hg) ; 2 uses
  %.not86 = icmp sgt i64 %i.hl, %i.hk
  br i1 %.not86, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ho = sub nsw i64 %i.hl, %i.hk
  %i.hp = add i64 %i.ho, %i.hb                    ; 2 uses
  store i64 %i.hp, ptr %i.c, align 8
  %i.hq = add i64 %i.ha, 1                        ; 2 uses
  store i64 %i.hq, ptr %i.a, align 8
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.gr, i64 %i.ha ; 2 uses
  store i64 %i.hk, ptr %i.hr, align 16
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store i64 %i.hl, ptr %.sroa.664.0..sroa_idx, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.hs = phi i64 [ %i.hq, %bb.o ], [ %i.ha, %bb.n ]
  %i.ht = phi i64 [ %i.hp, %bb.o ], [ %i.hb, %bb.n ] ; 2 uses
  %.not87 = icmp sgt i64 %i.hn, %i.hm
  br i1 %.not87, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.hu = add i64 %i.gz, 1                        ; 2 uses
  store i64 %i.hu, ptr %i.b, align 8
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %i.gs, i64 %i.gz ; 2 uses
  store i64 %i.hm, ptr %i.hv, align 16
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store i64 %i.hn, ptr %.sroa.660.0..sroa_idx, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.hw = phi i64 [ %i.gz, %bb.p ], [ %i.hu, %bb.q ]
  %i.hx = icmp ult i64 %i.hh, %i.gq
  br i1 %i.hx, label %bb.n, label %._crit_edge105, !llvm.loop !5374

bb.s:                                             ; preds = %._crit_edge105
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  store ptr %i.c, ptr %17, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.cq, ptr %i.hy, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.a, ptr %i.hz, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %i.b, ptr %i.ia, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store ptr null, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr %17, ptr %11, align 8
  invoke void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_23parallel_partition_taskINS_4sse219BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS4_26HeuristicArrayOpenMergeSAHIZNS8_5buildEvEUlRS9_PS9_E_S9_Lm32EE21parallel_object_splitERKNS4_8BinSplitILm32EEERKNS4_16PrimInfoExtRangeERSP_SS_EUlRKS9_E_ZNSK_21parallel_object_splitESO_SR_SS_SS_EUlRSE_SU_E_ZNSK_21parallel_object_splitESO_SR_SS_SS_EUlSW_RKSE_E_E9partitionESW_SW_EUlmE0_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvS13_S13_S13_S16_PNS0_16TaskGroupContextE(i64 noundef 0, i64 noundef %i.gq, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %10)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  invoke void @_ZN6embree13TaskScheduler4waitEv()
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48 unwind label %bb.w

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48: ; preds = %bb.t
  %i.ib = load ptr, ptr %10, align 8              ; 2 uses
  %.not85 = icmp eq ptr %i.ib, null
  br i1 %.not85, label %.noexc34, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit50

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit50: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48
  store ptr %i.ib, ptr %12, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %12) #28
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit50
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52

bb.w:                                             ; preds = %bb.t
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52

bb.x:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit50
  %i.ie = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.if = load ptr, ptr %12, align 8
  %.not.i51 = icmp eq ptr %i.if, null
  br i1 %.not.i51, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52: ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %.pn.i38 = phi { ptr, i32 } [ %i.ic, %bb.v ], [ %i.id, %bb.w ], [ %i.ie, %bb.x ], [ %i.ie, %bb.y ]
  %i.ig = load ptr, ptr %10, align 8
  %.not.i.i55 = icmp eq ptr %i.ig, null
  br i1 %.not.i.i55, label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit56, label %bb.z

bb.z:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #21
  br label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit56

_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit56: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %.body

.noexc34:                                         ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %._crit_edge105.thread

._crit_edge105.thread:                            ; preds = %._crit_edge99.thread, %._crit_edge99, %._crit_edge105, %.noexc34
  %.026.i.lcssa143150 = phi i64 [ %.026.i.lcssa147, %._crit_edge105 ], [ %.026.i.lcssa147, %.noexc34 ], [ %i.dq, %._crit_edge99.thread ], [ %i.ed, %._crit_edge99 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.cq)
          to label %_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_8InstanceENS0_17InstancePrimitiveEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EESt14default_deleteISZ_EED2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %._crit_edge105.thread
  %i.ih = landingpad { ptr, i32 }
          catch ptr null
  %i.ii = extractvalue { ptr, i32 } %i.ih, 0
  call void @__clang_call_terminate(ptr %i.ii) #26
  unreachable

_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_8InstanceENS0_17InstancePrimitiveEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EESt14default_deleteISZ_EED2Ev.exit: ; preds = %._crit_edge105.thread
  %i.ij = add i64 %.026.i.lcssa143150, %1
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %bb.ad

bb.ab:                                            ; preds = %bb.e
  %i.ik = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.cq)
          to label %_ZN6embree23parallel_partition_taskINS_4sse219BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS5_5buildEvEUlRS6_PS6_E_S6_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSM_SP_EUlRKS6_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlRSB_SR_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlST_RKSB_E_EdlEPv.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.il = landingpad { ptr, i32 }
          catch ptr null
  %i.im = extractvalue { ptr, i32 } %i.il, 0
  tail call void @__clang_call_terminate(ptr %i.im) #26
  unreachable

.body:                                            ; preds = %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit56, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit46
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i36, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit46 ], [ %.pn.i38, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit56 ]
  call void @_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_8InstanceENS0_17InstancePrimitiveEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EESt14default_deleteISZ_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #21
  br label %_ZN6embree23parallel_partition_taskINS_4sse219BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS5_5buildEvEUlRS6_PS6_E_S6_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSM_SP_EUlRKS6_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlRSB_SR_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlST_RKSB_E_EdlEPv.exit

_ZN6embree23parallel_partition_taskINS_4sse219BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS5_5buildEvEUlRS6_PS6_E_S6_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSM_SP_EUlRKS6_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlRSB_SR_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlST_RKSB_E_EdlEPv.exit: ; preds = %bb.ab, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ik, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  resume { ptr, i32 } %.pn

bb.ad:                                            ; preds = %_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_8InstanceENS0_17InstancePrimitiveEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EESt14default_deleteISZ_EED2Ev.exit, %_ZN6embree19serial_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS1_26HeuristicArrayOpenMergeSAHIZNS5_5buildEvEUlRS6_PS6_E_S6_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSL_SO_EUlRKS6_E_ZNSG_21parallel_object_splitESK_SN_SO_SO_EUlRSB_SQ_E_EEmPT_mmRT0_SX_RKT1_RKT2_.exit
  %.025 = phi i64 [ %i.cp, %_ZN6embree19serial_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS1_26HeuristicArrayOpenMergeSAHIZNS5_5buildEvEUlRS6_PS6_E_S6_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSL_SO_EUlRKS6_E_ZNSG_21parallel_object_splitESK_SN_SO_SO_EUlRSB_SQ_E_EEmPT_mmRT0_SX_RKT1_RKT2_.exit ], [ %i.ij, %_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_8InstanceENS0_17InstancePrimitiveEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EESt14default_deleteISZ_EED2Ev.exit ]
  ret i64 %.025
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_8InstanceENS0_17InstancePrimitiveEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EESt14default_deleteISZ_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNKSt14default_deleteIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_8InstanceENS0_17InstancePrimitiveEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EEEclEPSZ_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.a)
          to label %_ZNKSt14default_deleteIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_8InstanceENS0_17InstancePrimitiveEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EEEclEPSZ_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #26
  unreachable

_ZNKSt14default_deleteIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_8InstanceENS0_17InstancePrimitiveEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EEEclEPSZ_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree4sse226HeuristicArrayOpenMergeSAHIZNS0_19BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE5buildEvEUlRNS5_8BuildRefEPS6_E_S6_Lm32EE21parallel_object_splitERKNS0_8BinSplitILm32EEERKNS0_16PrimInfoExtRangeERSF_SI_ENKUlRNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEERKS6_E_clESO_SQ_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 16 dereferenceable(80) %1, ptr noundef nonnull align 32 dereferenceable(44) %2) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = load <4 x float>, ptr %2, align 32, !noalias !5417 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load <4 x float>, ptr %i.b, align 16, !noalias !5418 ; 2 uses
  %i.d = load <4 x float>, ptr %1, align 16, !noalias !5419
  %i.e = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.d, <4 x float> %i.a)
  store <4 x float> %i.e, ptr %1, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load <4 x float>, ptr %i.f, align 16, !noalias !5420
  %i.h = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.g, <4 x float> %i.c)
  store <4 x float> %i.h, ptr %i.f, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.j = fadd <4 x float> %i.a, %i.c              ; 2 uses
  %i.k = load <4 x float>, ptr %i.i, align 16, !noalias !5421
  %i.l = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.k, <4 x float> %i.j)
  store <4 x float> %i.l, ptr %i.i, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.n = load <4 x float>, ptr %i.m, align 16, !noalias !5422
  %i.o = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.n, <4 x float> %i.j)
  store <4 x float> %i.o, ptr %i.m, align 16
end_hunk_5
begin_hunk_6_@_ZN6embree21parallel_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS5_5buildEvEUlRS6_PS6_E_S6_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSM_SP_EUlRKS6_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlRSB_SR_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlST_RKSB_E_EEmPT_mmRKT1_RT0_S14_RKT2_RKT3_RKT4_m:bb.a
  store i64 0, ptr %i.dp, align 8
  %.not119 = icmp eq i64 %i.dm, 0
  br i1 %.not119, label %._crit_edge99.thread, label %.noexc33.lr.ph

._crit_edge99.thread:                             ; preds = %.noexc31
  %i.dq = load i64, ptr %i.do, align 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  br label %._crit_edge105.thread

.noexc33.lr.ph:                                   ; preds = %.noexc31
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cq, i64 3264
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cq, i64 8384
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  br label %.noexc33

._crit_edge:                                      ; preds = %.noexc33
  %i.ed = load i64, ptr %i.do, align 64           ; 4 uses
  %i.ee = icmp ugt i64 %i.gm, 1
  br i1 %i.ee, label %.lr.ph.preheader, label %._crit_edge99

.lr.ph.preheader:                                 ; preds = %._crit_edge
  %i.ef = add i64 %i.gm, -1                       ; 2 uses
  %min.iters.check = icmp ult i64 %i.gm, 5
  br i1 %min.iters.check, label %.lr.ph.preheader172, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ef, -4                      ; 3 uses
  %i.eg = or disjoint i64 %n.vec, 1
  %i.eh = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ed, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.eh, %vector.ph ], [ %i.el, %vector.body ]
  %vec.phi166 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.em, %vector.body ]
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %index ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %wide.load = load <2 x i64>, ptr %i.ej, align 8
  %wide.load167 = load <2 x i64>, ptr %i.ek, align 8
  %i.el = add <2 x i64> %wide.load, %vec.phi      ; 2 uses
  %i.em = add <2 x i64> %wide.load167, %vec.phi166 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.en = icmp eq i64 %index.next, %n.vec
  br i1 %i.en, label %middle.block, label %vector.body, !llvm.loop !6229

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.em, %i.el
  %i.eo = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ef, %n.vec
  br i1 %cmp.n, label %._crit_edge99.thread144, label %.lr.ph.preheader172

.lr.ph.preheader172:                              ; preds = %.lr.ph.preheader, %middle.block
  %.025.i97.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.eg, %middle.block ]
  %.026.i96.ph = phi i64 [ %i.ed, %.lr.ph.preheader ], [ %i.eo, %middle.block ]
  br label %.lr.ph

.noexc33:                                         ; preds = %.noexc33.lr.ph, %.noexc33
  %.027.i95 = phi i64 [ 0, %.noexc33.lr.ph ], [ %i.gl, %.noexc33 ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [80 x i8], ptr %i.dr, i64 %.027.i95 ; 6 uses
  %i.eq = load <4 x float>, ptr %4, align 16, !noalias !6269
  %i.er = load <4 x float>, ptr %i.ep, align 16, !noalias !6269
  %i.es = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.eq, <4 x float> %i.er)
  store <4 x float> %i.es, ptr %4, align 16
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.eu = load <4 x float>, ptr %i.ds, align 16, !noalias !6270
  %i.ev = load <4 x float>, ptr %i.et, align 16, !noalias !6270
  %i.ew = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.eu, <4 x float> %i.ev)
  store <4 x float> %i.ew, ptr %i.ds, align 16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.ey = load <4 x float>, ptr %i.dt, align 16, !noalias !6271
  %i.ez = load <4 x float>, ptr %i.ex, align 16, !noalias !6271
  %i.fa = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ey, <4 x float> %i.ez)
  store <4 x float> %i.fa, ptr %i.dt, align 16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ep, i64 48
  %i.fc = load <4 x float>, ptr %i.du, align 16, !noalias !6272
  %i.fd = load <4 x float>, ptr %i.fb, align 16, !noalias !6272
  %i.fe = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fc, <4 x float> %i.fd)
  store <4 x float> %i.fe, ptr %i.du, align 16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ep, i64 64
  %i.fg = load i64, ptr %i.ff, align 16
  %i.fh = load i64, ptr %i.dv, align 16
  %i.fi = add i64 %i.fh, %i.fg
  store i64 %i.fi, ptr %i.dv, align 16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ep, i64 72
  %i.fk = load i64, ptr %i.fj, align 8
  %i.fl = load i64, ptr %i.dw, align 8
  %i.fm = add i64 %i.fl, %i.fk
  store i64 %i.fm, ptr %i.dw, align 8
  %i.fn = getelementptr inbounds nuw [80 x i8], ptr %i.dx, i64 %.027.i95 ; 6 uses
  %i.fo = load <4 x float>, ptr %5, align 16, !noalias !6273
  %i.fp = load <4 x float>, ptr %i.fn, align 16, !noalias !6273
  %i.fq = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fo, <4 x float> %i.fp)
  store <4 x float> %i.fq, ptr %5, align 16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fs = load <4 x float>, ptr %i.dy, align 16, !noalias !6274
  %i.ft = load <4 x float>, ptr %i.fr, align 16, !noalias !6274
  %i.fu = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fs, <4 x float> %i.ft)
  store <4 x float> %i.fu, ptr %i.dy, align 16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fw = load <4 x float>, ptr %i.dz, align 16, !noalias !6275
  %i.fx = load <4 x float>, ptr %i.fv, align 16, !noalias !6275
  %i.fy = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fw, <4 x float> %i.fx)
  store <4 x float> %i.fy, ptr %i.dz, align 16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fn, i64 48
  %i.ga = load <4 x float>, ptr %i.ea, align 16, !noalias !6276
  %i.gb = load <4 x float>, ptr %i.fz, align 16, !noalias !6276
  %i.gc = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ga, <4 x float> %i.gb)
  store <4 x float> %i.gc, ptr %i.ea, align 16
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fn, i64 64
  %i.ge = load i64, ptr %i.gd, align 16
  %i.gf = load i64, ptr %i.eb, align 16
  %i.gg = add i64 %i.gf, %i.ge
  store i64 %i.gg, ptr %i.eb, align 16
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fn, i64 72
  %i.gi = load i64, ptr %i.gh, align 8
  %i.gj = load i64, ptr %i.ec, align 8
  %i.gk = add i64 %i.gj, %i.gi
  store i64 %i.gk, ptr %i.ec, align 8
  %i.gl = add nuw i64 %.027.i95, 1                ; 2 uses
  %i.gm = load i64, ptr %i.cx, align 16           ; 7 uses
  %i.gn = icmp ult i64 %i.gl, %i.gm
  br i1 %i.gn, label %.noexc33, label %._crit_edge, !llvm.loop !6246

._crit_edge99:                                    ; preds = %._crit_edge
  %i.go = load i64, ptr %i.cs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 0, ptr %i.c, align 8
  %.not120 = icmp eq i64 %i.gm, 0
  br i1 %.not120, label %._crit_edge105.thread, label %.lr.ph104

.lr.ph104:                                        ; preds = %._crit_edge99.thread144, %._crit_edge99
  %i.gp = phi i64 [ %i.gx, %._crit_edge99.thread144 ], [ %i.go, %._crit_edge99 ]
  %.026.i.lcssa147 = phi i64 [ %.lcssa164, %._crit_edge99.thread144 ], [ %i.ed, %._crit_edge99 ] ; 4 uses
  %i.gq = phi i64 [ %i.gm, %._crit_edge99.thread144 ], [ 1, %._crit_edge99 ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1216
  %i.gs = getelementptr inbounds nuw i8, ptr %i.cq, i64 2240
  br label %bb.n

.lr.ph:                                           ; preds = %.lr.ph.preheader172, %.lr.ph
  %.025.i97 = phi i64 [ %i.gw, %.lr.ph ], [ %.025.i97.ph, %.lr.ph.preheader172 ] ; 2 uses
  %.026.i96 = phi i64 [ %i.gv, %.lr.ph ], [ %.026.i96.ph, %.lr.ph.preheader172 ]
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.025.i97
  %i.gu = load i64, ptr %i.gt, align 8
  %i.gv = add i64 %i.gu, %.026.i96                ; 2 uses
  %i.gw = add nuw i64 %.025.i97, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.gw, %i.gm
  br i1 %exitcond.not, label %._crit_edge99.thread144, label %.lr.ph, !llvm.loop !6247

._crit_edge99.thread144:                          ; preds = %.lr.ph, %middle.block
  %.lcssa164 = phi i64 [ %i.eo, %middle.block ], [ %i.gv, %.lr.ph ]
  %i.gx = load i64, ptr %i.cs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 0, ptr %i.c, align 8
  br label %.lr.ph104

._crit_edge105:                                   ; preds = %bb.r
  %i.gy = icmp eq i64 %i.ht, 0
  br i1 %i.gy, label %._crit_edge105.thread, label %bb.s

bb.n:                                             ; preds = %.lr.ph104, %bb.r
  %i.gz = phi i64 [ 0, %.lr.ph104 ], [ %i.hw, %bb.r ] ; 3 uses
  %i.ha = phi i64 [ 0, %.lr.ph104 ], [ %i.hs, %bb.r ] ; 3 uses
  %i.hb = phi i64 [ 0, %.lr.ph104 ], [ %i.ht, %bb.r ] ; 2 uses
  %.0.i29102 = phi i64 [ 0, %.lr.ph104 ], [ %i.hh, %bb.r ] ; 3 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %.0.i29102
  %i.hd = load i64, ptr %i.hc, align 8            ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.0.i29102
  %i.hf = load i64, ptr %i.he, align 8
  %i.hg = add i64 %i.hf, %i.hd                    ; 2 uses
  %i.hh = add nuw i64 %.0.i29102, 1               ; 3 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.hh
  %i.hj = load i64, ptr %i.hi, align 8
  %i.hk = call noundef i64 @llvm.smax.i64(i64 %i.hg, i64 0) ; 3 uses
  %i.hl = call noundef i64 @llvm.smin.i64(i64 %.026.i.lcssa147, i64 %i.hj) ; 3 uses
  %i.hm = call noundef i64 @llvm.smax.i64(i64 %.026.i.lcssa147, i64 %i.hd) ; 2 uses
  %i.hn = call noundef i64 @llvm.smin.i64(i64 %i.gp, i64 %i.hg) ; 2 uses
  %.not86 = icmp sgt i64 %i.hl, %i.hk
  br i1 %.not86, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ho = sub nsw i64 %i.hl, %i.hk
  %i.hp = add i64 %i.ho, %i.hb                    ; 2 uses
  store i64 %i.hp, ptr %i.c, align 8
  %i.hq = add i64 %i.ha, 1                        ; 2 uses
  store i64 %i.hq, ptr %i.a, align 8
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.gr, i64 %i.ha ; 2 uses
  store i64 %i.hk, ptr %i.hr, align 16
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store i64 %i.hl, ptr %.sroa.664.0..sroa_idx, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.hs = phi i64 [ %i.hq, %bb.o ], [ %i.ha, %bb.n ]
  %i.ht = phi i64 [ %i.hp, %bb.o ], [ %i.hb, %bb.n ] ; 2 uses
  %.not87 = icmp sgt i64 %i.hn, %i.hm
  br i1 %.not87, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.hu = add i64 %i.gz, 1                        ; 2 uses
  store i64 %i.hu, ptr %i.b, align 8
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %i.gs, i64 %i.gz ; 2 uses
  store i64 %i.hm, ptr %i.hv, align 16
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store i64 %i.hn, ptr %.sroa.660.0..sroa_idx, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.hw = phi i64 [ %i.gz, %bb.p ], [ %i.hu, %bb.q ]
  %i.hx = icmp ult i64 %i.hh, %i.gq
  br i1 %i.hx, label %bb.n, label %._crit_edge105, !llvm.loop !6248

bb.s:                                             ; preds = %._crit_edge105
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  store ptr %i.c, ptr %17, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.cq, ptr %i.hy, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.a, ptr %i.hz, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %i.b, ptr %i.ia, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store ptr null, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr %17, ptr %11, align 8
  invoke void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_23parallel_partition_taskINS_4sse219BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS4_26HeuristicArrayOpenMergeSAHIZNS8_5buildEvEUlRS9_PS9_E_S9_Lm32EE21parallel_object_splitERKNS4_8BinSplitILm32EEERKNS4_16PrimInfoExtRangeERSP_SS_EUlRKS9_E_ZNSK_21parallel_object_splitESO_SR_SS_SS_EUlRSE_SU_E_ZNSK_21parallel_object_splitESO_SR_SS_SS_EUlSW_RKSE_E_E9partitionESW_SW_EUlmE0_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvS13_S13_S13_S16_PNS0_16TaskGroupContextE(i64 noundef 0, i64 noundef %i.gq, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %10)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  invoke void @_ZN6embree13TaskScheduler4waitEv()
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48 unwind label %bb.w

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48: ; preds = %bb.t
  %i.ib = load ptr, ptr %10, align 8              ; 2 uses
  %.not85 = icmp eq ptr %i.ib, null
  br i1 %.not85, label %.noexc34, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit50

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit50: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48
  store ptr %i.ib, ptr %12, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %12) #28
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit50
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52

bb.w:                                             ; preds = %bb.t
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52

bb.x:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit50
  %i.ie = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.if = load ptr, ptr %12, align 8
  %.not.i51 = icmp eq ptr %i.if, null
  br i1 %.not.i51, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52: ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %.pn.i38 = phi { ptr, i32 } [ %i.ic, %bb.v ], [ %i.id, %bb.w ], [ %i.ie, %bb.x ], [ %i.ie, %bb.y ]
  %i.ig = load ptr, ptr %10, align 8
  %.not.i.i55 = icmp eq ptr %i.ig, null
  br i1 %.not.i.i55, label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit56, label %bb.z

bb.z:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #21
  br label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit56

_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit56: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %.body

.noexc34:                                         ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %._crit_edge105.thread

._crit_edge105.thread:                            ; preds = %._crit_edge99.thread, %._crit_edge99, %._crit_edge105, %.noexc34
  %.026.i.lcssa143150 = phi i64 [ %.026.i.lcssa147, %._crit_edge105 ], [ %.026.i.lcssa147, %.noexc34 ], [ %i.dq, %._crit_edge99.thread ], [ %i.ed, %._crit_edge99 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.cq)
          to label %_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_13InstanceArrayENS0_22InstanceArrayPrimitiveEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EESt14default_deleteISZ_EED2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %._crit_edge105.thread
  %i.ih = landingpad { ptr, i32 }
          catch ptr null
  %i.ii = extractvalue { ptr, i32 } %i.ih, 0
  call void @__clang_call_terminate(ptr %i.ii) #26
  unreachable

_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_13InstanceArrayENS0_22InstanceArrayPrimitiveEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EESt14default_deleteISZ_EED2Ev.exit: ; preds = %._crit_edge105.thread
  %i.ij = add i64 %.026.i.lcssa143150, %1
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %bb.ad

bb.ab:                                            ; preds = %bb.e
  %i.ik = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.cq)
          to label %_ZN6embree23parallel_partition_taskINS_4sse219BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS5_5buildEvEUlRS6_PS6_E_S6_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSM_SP_EUlRKS6_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlRSB_SR_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlST_RKSB_E_EdlEPv.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.il = landingpad { ptr, i32 }
          catch ptr null
  %i.im = extractvalue { ptr, i32 } %i.il, 0
  tail call void @__clang_call_terminate(ptr %i.im) #26
  unreachable

.body:                                            ; preds = %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit56, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit46
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i36, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit46 ], [ %.pn.i38, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit56 ]
  call void @_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_13InstanceArrayENS0_22InstanceArrayPrimitiveEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EESt14default_deleteISZ_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #21
  br label %_ZN6embree23parallel_partition_taskINS_4sse219BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS5_5buildEvEUlRS6_PS6_E_S6_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSM_SP_EUlRKS6_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlRSB_SR_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlST_RKSB_E_EdlEPv.exit

_ZN6embree23parallel_partition_taskINS_4sse219BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS5_5buildEvEUlRS6_PS6_E_S6_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSM_SP_EUlRKS6_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlRSB_SR_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlST_RKSB_E_EdlEPv.exit: ; preds = %bb.ab, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ik, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  resume { ptr, i32 } %.pn

bb.ad:                                            ; preds = %_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_13InstanceArrayENS0_22InstanceArrayPrimitiveEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EESt14default_deleteISZ_EED2Ev.exit, %_ZN6embree19serial_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS1_26HeuristicArrayOpenMergeSAHIZNS5_5buildEvEUlRS6_PS6_E_S6_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSL_SO_EUlRKS6_E_ZNSG_21parallel_object_splitESK_SN_SO_SO_EUlRSB_SQ_E_EEmPT_mmRT0_SX_RKT1_RKT2_.exit
  %.025 = phi i64 [ %i.cp, %_ZN6embree19serial_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS1_26HeuristicArrayOpenMergeSAHIZNS5_5buildEvEUlRS6_PS6_E_S6_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSL_SO_EUlRKS6_E_ZNSG_21parallel_object_splitESK_SN_SO_SO_EUlRSB_SQ_E_EEmPT_mmRT0_SX_RKT1_RKT2_.exit ], [ %i.ij, %_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_13InstanceArrayENS0_22InstanceArrayPrimitiveEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EESt14default_deleteISZ_EED2Ev.exit ]
  ret i64 %.025
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_13InstanceArrayENS0_22InstanceArrayPrimitiveEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EESt14default_deleteISZ_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNKSt14default_deleteIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_13InstanceArrayENS0_22InstanceArrayPrimitiveEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EEEclEPSZ_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.a)
          to label %_ZNKSt14default_deleteIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_13InstanceArrayENS0_22InstanceArrayPrimitiveEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EEEclEPSZ_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #26
  unreachable

_ZNKSt14default_deleteIN6embree23parallel_partition_taskINS0_4sse219BVHNBuilderTwoLevelILi4ENS0_13InstanceArrayENS0_22InstanceArrayPrimitiveEE8BuildRefENS0_9PrimInfoTINS0_4BBoxINS0_6Vec3faEEEEENS0_7EmptyTyEZNS2_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS2_8BinSplitILm32EEERKNS2_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EEEclEPSZ_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree4sse226HeuristicArrayOpenMergeSAHIZNS0_19BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE5buildEvEUlRNS5_8BuildRefEPS6_E_S6_Lm32EE21parallel_object_splitERKNS0_8BinSplitILm32EEERKNS0_16PrimInfoExtRangeERSF_SI_ENKUlRNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEERKS6_E_clESO_SQ_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 16 dereferenceable(80) %1, ptr noundef nonnull align 32 dereferenceable(44) %2) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = load <4 x float>, ptr %2, align 32, !noalias !6291 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load <4 x float>, ptr %i.b, align 16, !noalias !6292 ; 2 uses
  %i.d = load <4 x float>, ptr %1, align 16, !noalias !6293
  %i.e = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.d, <4 x float> %i.a)
  store <4 x float> %i.e, ptr %1, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load <4 x float>, ptr %i.f, align 16, !noalias !6294
  %i.h = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.g, <4 x float> %i.c)
  store <4 x float> %i.h, ptr %i.f, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.j = fadd <4 x float> %i.a, %i.c              ; 2 uses
  %i.k = load <4 x float>, ptr %i.i, align 16, !noalias !6295
  %i.l = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.k, <4 x float> %i.j)
  store <4 x float> %i.l, ptr %i.i, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.n = load <4 x float>, ptr %i.m, align 16, !noalias !6296
  %i.o = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.n, <4 x float> %i.j)
  store <4 x float> %i.o, ptr %i.m, align 16
end_hunk_6
