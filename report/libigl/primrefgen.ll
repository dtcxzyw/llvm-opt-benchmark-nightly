Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/primrefgen?download=true
inline.NumInlined: 3236
inline.NumDeleted: 275
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 81
begin_hunk_0_@_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_4sse221createMortonCodeArrayINS_12TriangleMeshEEEmPT_RNS_8vector_tINS3_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorISA_Lm8EEEEERNS_20BuildProgressMonitorEEUlRKNS_5rangeImEEE0_EEvS6_S6_S6_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvRKS6_SQ_mb:bb.a
  %.not.i.i59 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i59, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.ax
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63: ; preds = %bb.ax, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.eg = load ptr, ptr %11, align 8              ; 2 uses
  %.not81 = icmp eq ptr %i.eg, null
  br i1 %.not81, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  store ptr %i.eg, ptr %12, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #18
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %12) #19
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  unreachable

bb.az:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %12, align 8
  %.not.i65 = icmp eq ptr %i.ei, null
  br i1 %.not.i65, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.ej = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i69 = icmp eq ptr %i.ej, null
  br i1 %.not.i69, label %_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 786696
  %i.el = load ptr, ptr %i.ek, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i.i, label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load ptr, ptr %i.en, align 8
  invoke void %i.eo(ptr noundef nonnull align 8 dereferenceable(16) %i.el)
          to label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #20
  unreachable

_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i:    ; preds = %bb.bc, %bb.bb
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.ej)
          to label %_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit unwind label %bb.be

bb.be:                                            ; preds = %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  call void @__clang_call_terminate(ptr %i.es) #20
  unreachable

_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  ret void

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66: ; preds = %bb.ba, %bb.az, %bb.aw
  %.pn36 = phi { ptr, i32 } [ %i.ee, %bb.aw ], [ %i.eh, %bb.az ], [ %i.eh, %bb.ba ]
  %i.et = load ptr, ptr %11, align 8
  %.not.i70 = icmp eq ptr %i.et, null
  br i1 %.not.i70, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.j, %bb.m, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45, %bb.ac
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71 ], [ %.pn30, %bb.ac ], [ %.pn34, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit ], [ %.pn32, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45 ], [ %i.at, %bb.m ], [ %i.al, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #18
  br label %_ZN6embree13TaskScheduler6ThreaddlEPv.exit

_ZN6embree13TaskScheduler6ThreaddlEPv.exit:       ; preds = %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47, %.body
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %.body ], [ %.pn, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  resume { ptr, i32 } %.pn36.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_4sse221createMortonCodeArrayINS_12TriangleMeshEEEmPT_RNS_8vector_tINS3_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorISA_Lm8EEEEERNS_20BuildProgressMonitorEEUlRKNS_5rangeImEEE0_EEvS6_S6_S6_RKT0_PNS0_16TaskGroupContextEEUlvE_E7executeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZZN6embree13TaskScheduler5spawnImZNS_4sse221createMortonCodeArrayINS_12TriangleMeshEEEmPT_RNS_8vector_tINS2_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS9_Lm8EEEEERNS_20BuildProgressMonitorEEUlRKNS_5rangeImEEE0_EEvS5_S5_S5_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree13TaskScheduler5spawnImZNS_4sse221createMortonCodeArrayINS_12TriangleMeshEEEmPT_RNS_8vector_tINS2_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS9_Lm8EEEEERNS_20BuildProgressMonitorEEUlRKNS_5rangeImEEE0_EEvS5_S5_S5_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.embree::vint_impl", align 16 ; 9 uses
  %2 = alloca %"struct.embree::sse2::BVHBuilderMorton::MortonCodeGenerator", align 16 ; 6 uses
  %i.a = load i64, ptr %0, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 6 uses
  %i.d = sub i64 %i.a, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %.not = icmp ugt i64 %i.d, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !28, !align !34 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !28, !align !29
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.c ; 2 uses
  %i.n = load <4 x float>, ptr %i.h, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.p = load <4 x float>, ptr %i.o, align 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.q, i8 0, i64 64, i1 false)
  %i.u = icmp ult i64 %i.c, %i.a
  br i1 %i.u, label %.noexc15.lr.ph.i, label %_ZZN6embree4sse221createMortonCodeArrayINS_12TriangleMeshEEEmPT_RNS_8vector_tINS0_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS7_Lm8EEEEERNS_20BuildProgressMonitorEENKUlRKNS_5rangeImEEE0_clESH_.exit

.noexc15.lr.ph.i:                                 ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %.noexc15.i

_ZN6embree13bitInterleaveINS_9vint_implILi4EEEEET_RKS3_S5_S5_.exit106.i: ; preds = %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.w = load <2 x i64>, ptr %i.q, align 16, !noalias !870 ; 2 uses
  %i.x = load <2 x i64>, ptr %i.r, align 16, !noalias !870 ; 2 uses
  %i.y = load <2 x i64>, ptr %i.s, align 16, !noalias !870 ; 2 uses
  %i.z = bitcast <2 x i64> %i.w to <4 x i32>
  %i.aa = shl <4 x i32> %i.z, splat (i32 16)
  %i.ab = bitcast <4 x i32> %i.aa to <2 x i64>
  %i.ac = or <2 x i64> %i.w, %i.ab
  %i.ad = and <2 x i64> %i.ac, splat (i64 216173877380776191) ; 2 uses
  %i.ae = bitcast <2 x i64> %i.ad to <4 x i32>
  %i.af = shl <4 x i32> %i.ae, splat (i32 8)
  %i.ag = bitcast <4 x i32> %i.af to <2 x i64>
  %i.ah = or disjoint <2 x i64> %i.ad, %i.ag
  %i.ai = and <2 x i64> %i.ah, splat (i64 216436729379352591) ; 2 uses
  %i.aj = bitcast <2 x i64> %i.ai to <4 x i32>
  %i.ak = shl nuw nsw <4 x i32> %i.aj, splat (i32 4)
  %i.al = bitcast <4 x i32> %i.ak to <2 x i64>
  %i.am = or disjoint <2 x i64> %i.ai, %i.al
  %i.an = and <2 x i64> %i.am, splat (i64 219604095962198211) ; 2 uses
  %i.ao = bitcast <2 x i64> %i.an to <4 x i32>
  %i.ap = shl nuw nsw <4 x i32> %i.ao, splat (i32 2)
  %i.aq = bitcast <4 x i32> %i.ap to <2 x i64>
  %i.ar = or disjoint <2 x i64> %i.an, %i.aq
  %i.as = and <2 x i64> %i.ar, splat (i64 658812287886594633)
  %i.at = bitcast <2 x i64> %i.x to <4 x i32>
  %i.au = shl <4 x i32> %i.at, splat (i32 16)
  %i.av = bitcast <2 x i64> %i.x to <4 x i32>
  %i.aw = or <4 x i32> %i.au, %i.av
  %i.ax = and <4 x i32> %i.aw, splat (i32 50331903) ; 2 uses
  %i.ay = shl <4 x i32> %i.ax, splat (i32 8)
  %i.az = or disjoint <4 x i32> %i.ay, %i.ax
  %i.ba = and <4 x i32> %i.az, splat (i32 50393103)
  %i.bb = mul nuw nsw <4 x i32> %i.ba, splat (i32 17)
  %i.bc = and <4 x i32> %i.bb, splat (i32 51130563)
  %i.bd = bitcast <2 x i64> %i.y to <4 x i32>
  %i.be = shl <4 x i32> %i.bd, splat (i32 16)
  %i.bf = bitcast <2 x i64> %i.y to <4 x i32>
  %i.bg = or <4 x i32> %i.be, %i.bf
  %i.bh = and <4 x i32> %i.bg, splat (i32 50331903) ; 2 uses
  %i.bi = shl <4 x i32> %i.bh, splat (i32 8)
  %i.bj = or disjoint <4 x i32> %i.bi, %i.bh
  %i.bk = and <4 x i32> %i.bj, splat (i32 50393103)
  %i.bl = mul nuw nsw <4 x i32> %i.bk, splat (i32 17)
  %i.bm = and <4 x i32> %i.bl, splat (i32 51130563)
  %i.bn = mul nuw nsw <4 x i32> %i.bc, splat (i32 10)
  %.inner = and <4 x i32> %i.bn, splat (i32 306783378)
  %i.bo = mul nuw nsw <4 x i32> %i.bm, splat (i32 20)
  %.inner26 = and <4 x i32> %i.bo, splat (i32 613566756)
  %.inner27 = or disjoint <4 x i32> %.inner26, %.inner
  %i.bp = bitcast <4 x i32> %.inner27 to <2 x i64>
  %i.bq = or disjoint <2 x i64> %i.as, %i.bp
  store <2 x i64> %i.bq, ptr %1, align 16
  %i.br = sub i64 %i.dr, %i.dq
  %i.bs = getelementptr [8 x i8], ptr %i.m, i64 %i.br ; 9 uses
  %min.iters.check = icmp ult i64 %i.fj, 18
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_ZN6embree13bitInterleaveINS_9vint_implILi4EEEEET_RKS3_S5_S5_.exit106.i
  %mul.result = shl i64 %i.dq, 3
  %mul.overflow = icmp ugt i64 %i.dq, 2305843009213693951
  %i.bt = getelementptr i8, ptr %i.bs, i64 %mul.result
  %i.bu = icmp ult ptr %i.bt, %i.bs
  %i.bv = or i1 %i.bu, %mul.overflow
  br i1 %i.bv, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.fj, 4611686018427387900     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %wide.load = load <2 x i32>, ptr %i.bw, align 16
  %wide.load22 = load <2 x i32>, ptr %i.bx, align 8
  %i.by = getelementptr [8 x i8], ptr %i.bs, i64 %index
  %i.bz = getelementptr [8 x i8], ptr %i.bs, i64 %index
  %i.ca = getelementptr i8, ptr %i.bz, i64 16
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %wide.load23 = load <2 x i32>, ptr %i.cb, align 16
  %wide.load24 = load <2 x i32>, ptr %i.cc, align 8
  %interleaved.vec = shufflevector <2 x i32> %wide.load23, <2 x i32> %wide.load, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.by, align 4
  %interleaved.vec25 = shufflevector <2 x i32> %wide.load24, <2 x i32> %wide.load22, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec25, ptr %i.ca, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !842

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fj, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %_ZN6embree13bitInterleaveINS_9vint_implILi4EEEEET_RKS3_S5_S5_.exit106.i, %middle.block
  %.0.i481.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %_ZN6embree13bitInterleaveINS_9vint_implILi4EEEEET_RKS3_S5_S5_.exit106.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.ce = add i64 %i.dq, 1
  %i.cf = sub i64 %i.dq, %.0.i481.i.ph
  %xtraiter = and i64 %i.ce, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.0.i481.i.prol = phi i64 [ %i.cm, %scalar.ph.prol ], [ %.0.i481.i.ph, %scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.0.i481.i.prol
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = getelementptr [8 x i8], ptr %i.bs, i64 %.0.i481.i.prol ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store i32 %i.ch, ptr %i.cj, align 4
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0.i481.i.prol
  %i.cl = load i32, ptr %i.ck, align 4
  store i32 %i.cl, ptr %i.ci, align 8
  %i.cm = add nuw nsw i64 %.0.i481.i.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !843

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0.i481.i.unr = phi i64 [ %.0.i481.i.ph, %scalar.ph.preheader ], [ %i.cm, %scalar.ph.prol ]
  %i.cn = icmp ult i64 %i.cf, 3
  br i1 %i.cn, label %.loopexit, label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %_ZZN6embree4sse221createMortonCodeArrayINS_12TriangleMeshEEEmPT_RNS_8vector_tINS0_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS7_Lm8EEEEERNS_20BuildProgressMonitorEENKUlRKNS_5rangeImEEE0_clESH_.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0.i481.i = phi i64 [ %i.dp, %scalar.ph ], [ %.0.i481.i.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.0.i481.i
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = getelementptr [8 x i8], ptr %i.bs, i64 %.0.i481.i ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  store i32 %i.cp, ptr %i.cr, align 4
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0.i481.i
  %i.ct = load i32, ptr %i.cs, align 4
  store i32 %i.ct, ptr %i.cq, align 8
  %i.cu = add nuw nsw i64 %.0.i481.i, 1           ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = getelementptr [8 x i8], ptr %i.bs, i64 %i.cu ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  store i32 %i.cw, ptr %i.cy, align 4
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cu
  %i.da = load i32, ptr %i.cz, align 4
  store i32 %i.da, ptr %i.cx, align 8
  %i.db = add nuw nsw i64 %.0.i481.i, 2           ; 3 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = getelementptr [8 x i8], ptr %i.bs, i64 %i.db ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store i32 %i.dd, ptr %i.df, align 4
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.db
  %i.dh = load i32, ptr %i.dg, align 4
  store i32 %i.dh, ptr %i.de, align 8
  %i.di = add nuw nsw i64 %.0.i481.i, 3           ; 4 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = getelementptr [8 x i8], ptr %i.bs, i64 %i.di ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store i32 %i.dk, ptr %i.dm, align 4
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.di
  %i.do = load i32, ptr %i.dn, align 4
  store i32 %i.do, ptr %i.dl, align 8
  %i.dp = add nuw nsw i64 %.0.i481.i, 4
  %exitcond.not.i.3 = icmp eq i64 %i.di, %i.dq
  br i1 %exitcond.not.i.3, label %.loopexit, label %scalar.ph, !llvm.loop !844

.noexc15.i:                                       ; preds = %.noexc15.i.backedge, %.noexc15.lr.ph.i
  %.0479.i = phi i64 [ %i.c, %.noexc15.lr.ph.i ], [ %.0479.i.be, %.noexc15.i.backedge ] ; 4 uses
  %i.dq = phi i64 [ 0, %.noexc15.lr.ph.i ], [ %.be, %.noexc15.i.backedge ] ; 11 uses
  %i.dr = phi i64 [ 0, %.noexc15.lr.ph.i ], [ %i.fk, %.noexc15.i.backedge ] ; 2 uses
  %i.ds = load ptr, ptr %i.v, align 8, !nonnull !28, !align !29
  %i.dt = load ptr, ptr %i.ds, align 8            ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 88
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !871
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 104
  %i.dx = load i64, ptr %i.dw, align 8, !noalias !871
  %i.dy = mul i64 %i.dx, %.0479.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dy ; 3 uses
  %i.ea = load i32, ptr %i.dz, align 4, !noalias !871
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dt, i64 144
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !872 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dt, i64 160
  %i.ef = load i64, ptr %i.ee, align 8, !noalias !872 ; 3 uses
  %i.eg = mul i64 %i.ef, %i.eb
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.eg
  %i.ei = load <4 x float>, ptr %i.eh, align 1, !noalias !873 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.ek = load i32, ptr %i.ej, align 4, !noalias !871
  %i.el = zext i32 %i.ek to i64
  %i.em = mul i64 %i.ef, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.em
  %i.eo = load <4 x float>, ptr %i.en, align 1, !noalias !874 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eq = load i32, ptr %i.ep, align 4, !noalias !871
  %i.er = zext i32 %i.eq to i64
  %i.es = mul i64 %i.ef, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.es
  %i.eu = load <4 x float>, ptr %i.et, align 1, !noalias !875 ; 2 uses
  %i.ev = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ei, <4 x float> %i.eo)
  %i.ew = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ev, <4 x float> %i.eu)
  %i.ex = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ei, <4 x float> %i.eo)
  %i.ey = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ex, <4 x float> %i.eu)
  %i.ez = trunc i64 %.0479.i to i32
  %i.fa = fadd <4 x float> %i.ew, %i.ey
  %i.fb = fsub <4 x float> %i.fa, %i.n
  %i.fc = fmul <4 x float> %i.p, %i.fb
  %i.fd = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.fc) ; 3 uses
  %i.fe = extractelement <4 x i32> %i.fd, i64 0
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.dq
  store i32 %i.fe, ptr %i.ff, align 4
  %.sroa.0236.4.vec.extract.i = extractelement <4 x i32> %i.fd, i64 1
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.dq
  store i32 %.sroa.0236.4.vec.extract.i, ptr %i.fg, align 4
  %.sroa.0236.8.vec.extract.i = extractelement <4 x i32> %i.fd, i64 2
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.dq
  store i32 %.sroa.0236.8.vec.extract.i, ptr %i.fh, align 4
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.dq
  store i32 %i.ez, ptr %i.fi, align 4
  %i.fj = add nsw i64 %i.dq, 1                    ; 5 uses
  %i.fk = add i64 %i.dr, 1                        ; 2 uses
  %i.fl = icmp eq i64 %i.fj, 4
  br i1 %i.fl, label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit.i.thread, label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit.i

_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit.i: ; preds = %.noexc15.i
  %i.fm = add nuw i64 %.0479.i, 1                 ; 2 uses
  %i.fn = icmp ult i64 %i.fm, %i.a
  br i1 %i.fn, label %.noexc15.i.backedge, label %_ZN6embree13bitInterleaveINS_9vint_implILi4EEEEET_RKS3_S5_S5_.exit106.i

.noexc15.i.backedge:                              ; preds = %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit.i, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit.i.thread
  %.0479.i.be = phi i64 [ %i.fm, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit.i ], [ %i.hq, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit.i.thread ]
  %.be = phi i64 [ %i.fj, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit.i ], [ 0, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit.i.thread ]
  br label %.noexc15.i, !llvm.loop !865

_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit.i.thread: ; preds = %.noexc15.i
  %i.fo = load <2 x i64>, ptr %i.q, align 16, !noalias !876 ; 2 uses
  %i.fp = load <2 x i64>, ptr %i.r, align 16, !noalias !876 ; 2 uses
  %i.fq = load <2 x i64>, ptr %i.s, align 16, !noalias !876 ; 2 uses
  %i.fr = bitcast <2 x i64> %i.fo to <4 x i32>
  %i.fs = shl <4 x i32> %i.fr, splat (i32 16)
  %i.ft = bitcast <4 x i32> %i.fs to <2 x i64>
  %i.fu = or <2 x i64> %i.fo, %i.ft
  %i.fv = and <2 x i64> %i.fu, splat (i64 216173877380776191) ; 2 uses
  %i.fw = bitcast <2 x i64> %i.fv to <4 x i32>
  %i.fx = shl <4 x i32> %i.fw, splat (i32 8)
  %i.fy = bitcast <4 x i32> %i.fx to <2 x i64>
  %i.fz = or disjoint <2 x i64> %i.fv, %i.fy
  %i.ga = and <2 x i64> %i.fz, splat (i64 216436729379352591) ; 2 uses
  %i.gb = bitcast <2 x i64> %i.ga to <4 x i32>
  %i.gc = shl nuw nsw <4 x i32> %i.gb, splat (i32 4)
  %i.gd = bitcast <4 x i32> %i.gc to <2 x i64>
  %i.ge = or disjoint <2 x i64> %i.ga, %i.gd
  %i.gf = and <2 x i64> %i.ge, splat (i64 219604095962198211) ; 2 uses
  %i.gg = bitcast <2 x i64> %i.gf to <4 x i32>
  %i.gh = shl nuw nsw <4 x i32> %i.gg, splat (i32 2)
  %i.gi = bitcast <4 x i32> %i.gh to <2 x i64>
  %i.gj = or disjoint <2 x i64> %i.gf, %i.gi
  %i.gk = and <2 x i64> %i.gj, splat (i64 658812287886594633)
  %i.gl = bitcast <2 x i64> %i.fp to <4 x i32>
  %i.gm = shl <4 x i32> %i.gl, splat (i32 16)
  %i.gn = bitcast <2 x i64> %i.fp to <4 x i32>
  %i.go = or <4 x i32> %i.gm, %i.gn
  %i.gp = and <4 x i32> %i.go, splat (i32 50331903) ; 2 uses
  %i.gq = shl <4 x i32> %i.gp, splat (i32 8)
  %i.gr = or disjoint <4 x i32> %i.gq, %i.gp
  %i.gs = and <4 x i32> %i.gr, splat (i32 50393103)
  %i.gt = mul nuw nsw <4 x i32> %i.gs, splat (i32 17)
  %i.gu = and <4 x i32> %i.gt, splat (i32 51130563)
  %i.gv = bitcast <2 x i64> %i.fq to <4 x i32>
  %i.gw = shl <4 x i32> %i.gv, splat (i32 16)
  %i.gx = bitcast <2 x i64> %i.fq to <4 x i32>
  %i.gy = or <4 x i32> %i.gw, %i.gx
  %i.gz = and <4 x i32> %i.gy, splat (i32 50331903) ; 2 uses
  %i.ha = shl <4 x i32> %i.gz, splat (i32 8)
  %i.hb = or disjoint <4 x i32> %i.ha, %i.gz
  %i.hc = and <4 x i32> %i.hb, splat (i32 50393103)
  %i.hd = mul nuw nsw <4 x i32> %i.hc, splat (i32 17)
  %i.he = and <4 x i32> %i.hd, splat (i32 51130563)
  %i.hf = mul nuw nsw <4 x i32> %i.gu, splat (i32 10)
  %.inner28 = and <4 x i32> %i.hf, splat (i32 306783378)
  %i.hg = mul nuw nsw <4 x i32> %i.he, splat (i32 20)
  %.inner29 = and <4 x i32> %i.hg, splat (i32 613566756)
  %.inner30 = or disjoint <4 x i32> %.inner29, %.inner28
  %i.hh = bitcast <4 x i32> %.inner30 to <2 x i64>
  %i.hi = or disjoint <2 x i64> %i.gk, %i.hh
  %i.hj = getelementptr [8 x i8], ptr %i.m, i64 %i.fk ; 2 uses
  %i.hk = getelementptr i8, ptr %i.hj, i64 -32
  %i.hl = bitcast <2 x i64> %i.hi to <4 x float>  ; 2 uses
  %i.hm = load <4 x float>, ptr %i.t, align 16, !noalias !877 ; 2 uses
  %i.hn = shufflevector <4 x float> %i.hl, <4 x float> %i.hm, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.hn, ptr %i.hk, align 1
  %i.ho = getelementptr i8, ptr %i.hj, i64 -16
  %i.hp = shufflevector <4 x float> %i.hl, <4 x float> %i.hm, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.hp, ptr %i.ho, align 1
  %i.hq = add nuw i64 %.0479.i, 1                 ; 2 uses
  %i.hr = icmp ult i64 %i.hq, %i.a
  br i1 %i.hr, label %.noexc15.i.backedge, label %_ZZN6embree4sse221createMortonCodeArrayINS_12TriangleMeshEEEmPT_RNS_8vector_tINS0_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS7_Lm8EEEEERNS_20BuildProgressMonitorEENKUlRKNS_5rangeImEEE0_clESH_.exit

_ZZN6embree4sse221createMortonCodeArrayINS_12TriangleMeshEEEmPT_RNS_8vector_tINS0_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS7_Lm8EEEEERNS_20BuildProgressMonitorEENKUlRKNS_5rangeImEEE0_clESH_.exit: ; preds = %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit.i.thread, %bb.b, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.hs = add i64 %i.c, %i.a
  %i.ht = lshr i64 %i.hs, 1                       ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_4sse221createMortonCodeArrayINS_12TriangleMeshEEEmPT_RNS_8vector_tINS2_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS9_Lm8EEEEERNS_20BuildProgressMonitorEEUlRKNS_5rangeImEEE0_EEvS5_S5_S5_RKT0_PNS0_16TaskGroupContextE(i64 noundef %i.c, i64 noundef %i.ht, i64 noundef %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.hu, ptr noundef %i.hw)
  %i.hx = load i64, ptr %0, align 8
  %i.hy = load i64, ptr %i.e, align 8
  %i.hz = load ptr, ptr %i.hv, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_4sse221createMortonCodeArrayINS_12TriangleMeshEEEmPT_RNS_8vector_tINS2_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS9_Lm8EEEEERNS_20BuildProgressMonitorEEUlRKNS_5rangeImEEE0_EEvS5_S5_S5_RKT0_PNS0_16TaskGroupContextE(i64 noundef %i.ht, i64 noundef %i.hx, i64 noundef %i.hy, ptr noundef nonnull align 8 dereferenceable(24) %i.hu, ptr noundef %i.hz)
  tail call void @_ZN6embree13TaskScheduler4waitEv()
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZZN6embree4sse221createMortonCodeArrayINS_12TriangleMeshEEEmPT_RNS_8vector_tINS0_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS7_Lm8EEEEERNS_20BuildProgressMonitorEENKUlRKNS_5rangeImEEE0_clESH_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float>) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_19parallel_prefix_sumImmZNS_4sse221createMortonCodeArrayINS_12TriangleMeshEEEmPT_RNS_8vector_tINS4_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorISB_Lm8EEEEERNS_20BuildProgressMonitorEEUlRKNS_5rangeImEEmE_St4plusImEEET0_RNS_22ParallelPrefixSumStateISP_EES7_S7_S7_RKSP_RKT1_RKT2_EUlmE_EEvS7_SU_EUlSL_E_EEvS7_S7_S7_SU_PNS0_16TaskGroupContextE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.260, align 8            ; 9 uses
  %i.a = sub i64 %1, %0                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store i64 %1, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.e = load i64, ptr %3, align 8
  store i64 %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %4, ptr %i.f, align 8
  %i.g = tail call noundef ptr @_ZN6embree13TaskScheduler6threadEv() ; 7 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.l, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 262272 ; 5 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 8
  %i.k = icmp ugt i64 %i.j, 4095
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #19
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.u, %bb.i ], [ %i.l, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.m, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #18
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.f:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 786624 ; 2 uses
  %i.o = load i64, ptr %i.n, align 64             ; 4 uses
  %i.p = sub i64 0, %i.o
  %i.q = and i64 %i.p, 63                         ; 2 uses
  %i.r = add i64 %i.o, 48
  %i.s = add i64 %i.r, %i.q                       ; 2 uses
  %i.t = icmp ugt i64 %i.s, 524288
  br i1 %i.t, label %bb.g, label %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i

bb.g:                                             ; preds = %bb.f
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull @.str.1)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #19
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i: ; preds = %bb.f
  store i64 %i.s, ptr %i.n, align 64
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 262336
  %i.x = getelementptr i8, ptr %i.w, i64 %i.o
  %i.y = getelementptr i8, ptr %i.x, i64 %i.q     ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_12parallel_forImZNS_19parallel_prefix_sumImmZNS_4sse221createMortonCodeArrayINS_12TriangleMeshEEEmPT_RNS_8vector_tINS5_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorISC_Lm8EEEEERNS_20BuildProgressMonitorEEUlRKNS_5rangeImEEmE_St4plusImEEET0_RNS_22ParallelPrefixSumStateISQ_EES8_S8_S8_RKSQ_RKT1_RKT2_EUlmE_EEvS8_SV_EUlSM_E_EEvS8_S8_S8_SV_PNS0_16TaskGroupContextEEUlvE_EE, i64 16), ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false)
  %i.aa = load atomic i64, ptr %i.i seq_cst, align 64
  %i.ab = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %i.aa ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 786688
  %i.ad = load ptr, ptr %i.ac, align 64           ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 1, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i8 1, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.y, ptr %i.ag, align 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.ad, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %4, ptr %i.ai, align 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store i64 %i.o, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store i64 %i.a, ptr %i.ak, align 16
end_hunk_0
begin_hunk_1_@_ZZN6embree4sse221createMortonCodeArrayINS_12TriangleMeshEEEmPT_RNS_8vector_tINS0_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS7_Lm8EEEEERNS_20BuildProgressMonitorEENKUlRKNS_5rangeImEEmE_clESH_m:bb.a
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.0.i32525.prol = phi i64 [ %i.cz, %scalar.ph.prol ], [ %.0.i32525.ph, %scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.0.i32525.prol
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = getelementptr [8 x i8], ptr %i.cg, i64 %.0.i32525.prol ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  store i32 %i.cu, ptr %i.cw, align 4
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0.i32525.prol
  %i.cy = load i32, ptr %i.cx, align 4
  store i32 %i.cy, ptr %i.cv, align 8
  %i.cz = add nuw nsw i64 %.0.i32525.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !883

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0.i32525.unr = phi i64 [ %.0.i32525.ph, %scalar.ph.preheader ], [ %i.cz, %scalar.ph.prol ]
  %i.da = sub i64 %.0.i32525.ph, %i.kl
  %i.db = icmp ugt i64 %i.da, -4
  br i1 %i.db, label %.loopexit, label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorD2Ev.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0.i32525 = phi i64 [ %i.ed, %scalar.ph ], [ %.0.i32525.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.0.i32525
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = getelementptr [8 x i8], ptr %i.cg, i64 %.0.i32525 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store i32 %i.dd, ptr %i.df, align 4
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0.i32525
  %i.dh = load i32, ptr %i.dg, align 4
  store i32 %i.dh, ptr %i.de, align 8
  %i.di = add nuw nsw i64 %.0.i32525, 1           ; 3 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = getelementptr [8 x i8], ptr %i.cg, i64 %i.di ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store i32 %i.dk, ptr %i.dm, align 4
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.di
  %i.do = load i32, ptr %i.dn, align 4
  store i32 %i.do, ptr %i.dl, align 8
  %i.dp = add nuw nsw i64 %.0.i32525, 2           ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = getelementptr [8 x i8], ptr %i.cg, i64 %i.dp ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 %i.dr, ptr %i.dt, align 4
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dp
  %i.dv = load i32, ptr %i.du, align 4
  store i32 %i.dv, ptr %i.ds, align 8
  %i.dw = add nuw nsw i64 %.0.i32525, 3           ; 3 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4
  %i.dz = getelementptr [8 x i8], ptr %i.cg, i64 %i.dw ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  store i32 %i.dy, ptr %i.ea, align 4
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dw
  %i.ec = load i32, ptr %i.eb, align 4
  store i32 %i.ec, ptr %i.dz, align 8
  %i.ed = add nuw nsw i64 %.0.i32525, 4           ; 2 uses
  %exitcond528.not.3 = icmp eq i64 %i.ed, %i.kl
  br i1 %exitcond528.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !884

_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorD2Ev.exit: ; preds = %bb.a, %._crit_edge, %.loopexit
  %.0.lcssa544 = phi i64 [ %.1, %.loopexit ], [ %.1, %._crit_edge ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i64 %.0.lcssa544

.noexc13:                                         ; preds = %.noexc13.lr.ph, %_ZNK6embree12TriangleMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread
  %.pre529 = phi i64 [ %i.p, %.noexc13.lr.ph ], [ %.pre530, %_ZNK6embree12TriangleMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 7 uses
  %i.ee = phi i64 [ %i.p, %.noexc13.lr.ph ], [ %i.kj, %_ZNK6embree12TriangleMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 6 uses
  %.0522 = phi i64 [ 0, %.noexc13.lr.ph ], [ %.1, %_ZNK6embree12TriangleMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 7 uses
  %.011521 = phi i64 [ %i.f, %.noexc13.lr.ph ], [ %i.km, %_ZNK6embree12TriangleMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 3 uses
  %i.ef = phi i64 [ 0, %.noexc13.lr.ph ], [ %i.kl, %_ZNK6embree12TriangleMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 11 uses
  %i.eg = phi i64 [ 0, %.noexc13.lr.ph ], [ %i.kk, %_ZNK6embree12TriangleMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 7 uses
  %i.eh = load ptr, ptr %i.r, align 8, !nonnull !28, !align !29
  %i.ei = load ptr, ptr %i.eh, align 8            ; 6 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 88
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 104
  %i.em = load i64, ptr %i.el, align 8
  %i.en = mul i64 %i.em, %.011521
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.en ; 3 uses
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = zext i32 %i.ep to i64                   ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ei, i64 224
  %i.es = load ptr, ptr %i.er, align 8            ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.eu = load i64, ptr %i.et, align 8            ; 3 uses
  %.not.i = icmp ugt i64 %i.eu, %i.eq
  br i1 %.not.i, label %bb.b, label %_ZNK6embree12TriangleMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread, !prof !24

bb.b:                                             ; preds = %.noexc13
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.ew = load i32, ptr %i.ev, align 4
  %i.ex = zext i32 %i.ew to i64                   ; 3 uses
  %.not23.i = icmp ugt i64 %i.eu, %i.ex
  br i1 %.not23.i, label %bb.c, label %_ZNK6embree12TriangleMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread, !prof !24

bb.c:                                             ; preds = %bb.b
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.ez = load i32, ptr %i.ey, align 4
  %i.fa = zext i32 %i.ez to i64                   ; 3 uses
  %.not24.i = icmp ugt i64 %i.eu, %i.fa
  br i1 %.not24.i, label %.preheader, label %_ZNK6embree12TriangleMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread, !prof !24

.preheader:                                       ; preds = %bb.c
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ei, i64 36
  %i.fc = load i32, ptr %i.fb, align 4            ; 2 uses
  %i.fd = zext i32 %i.fc to i64
  %.not25.i517.not = icmp eq i32 %i.fc, 0
  br i1 %.not25.i517.not, label %.noexc25, label %.noexc16

bb.d:                                             ; preds = %bb.f
  %i.fe = add nuw nsw i64 %.0.i518, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.fe, %i.fd
  br i1 %exitcond.not, label %.noexc25, label %.noexc16, !llvm.loop !0

.noexc16:                                         ; preds = %.preheader, %bb.d
  %.0.i518 = phi i64 [ %i.fe, %bb.d ], [ 0, %.preheader ] ; 2 uses
  %i.ff = getelementptr inbounds nuw [56 x i8], ptr %i.es, i64 %.0.i518 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !noalias !927 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fi = load i64, ptr %i.fh, align 8, !noalias !927 ; 3 uses
  %i.fj = mul i64 %i.fi, %i.eq
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fj
  %i.fl = load <4 x float>, ptr %i.fk, align 1, !noalias !928 ; 2 uses
  %i.fm = mul i64 %i.fi, %i.fa
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fm
  %i.fo = load <4 x float>, ptr %i.fn, align 1, !noalias !929 ; 2 uses
  %i.fp = fcmp ugt <4 x float> %i.fl, splat (float -1.844000e+18)
  %i.fq = fcmp olt <4 x float> %i.fl, splat (float 1.844000e+18)
  %i.fr = and <4 x i1> %i.fp, %i.fq
  %i.fs = bitcast <4 x i1> %i.fr to i4
  %i.ft = and i4 %i.fs, 7
  %i.fu = icmp eq i4 %i.ft, 7
  br i1 %i.fu, label %bb.e, label %_ZNK6embree12TriangleMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread, !prof !24

bb.e:                                             ; preds = %.noexc16
  %i.fv = mul i64 %i.fi, %i.ex
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fv
  %i.fx = load <4 x float>, ptr %i.fw, align 1, !noalias !930 ; 2 uses
  %i.fy = fcmp ugt <4 x float> %i.fx, splat (float -1.844000e+18)
  %i.fz = fcmp olt <4 x float> %i.fx, splat (float 1.844000e+18)
  %i.ga = and <4 x i1> %i.fy, %i.fz
  %i.gb = bitcast <4 x i1> %i.ga to i4
  %i.gc = and i4 %i.gb, 7
  %i.gd = icmp eq i4 %i.gc, 7
  br i1 %i.gd, label %bb.f, label %_ZNK6embree12TriangleMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread, !prof !24

bb.f:                                             ; preds = %bb.e
  %i.ge = fcmp ugt <4 x float> %i.fo, splat (float -1.844000e+18)
  %i.gf = fcmp olt <4 x float> %i.fo, splat (float 1.844000e+18)
  %i.gg = and <4 x i1> %i.ge, %i.gf
  %i.gh = bitcast <4 x i1> %i.gg to i4
  %i.gi = and i4 %i.gh, 7
  %.not = icmp eq i4 %i.gi, 7
  br i1 %.not, label %bb.d, label %_ZNK6embree12TriangleMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread, !prof !26

.noexc25:                                         ; preds = %bb.d, %.preheader
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ei, i64 144
  %i.gk = load ptr, ptr %i.gj, align 8, !noalias !931 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ei, i64 160
  %i.gm = load i64, ptr %i.gl, align 8, !noalias !931 ; 3 uses
  %i.gn = mul i64 %i.gm, %i.eq
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gn
  %i.gp = load <4 x float>, ptr %i.go, align 1, !noalias !932 ; 2 uses
  %i.gq = mul i64 %i.gm, %i.ex
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gq
  %i.gs = load <4 x float>, ptr %i.gr, align 1, !noalias !933 ; 2 uses
  %i.gt = mul i64 %i.gm, %i.fa
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gt
  %i.gv = load <4 x float>, ptr %i.gu, align 1, !noalias !934 ; 2 uses
  %i.gw = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gp, <4 x float> %i.gs)
  %i.gx = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gw, <4 x float> %i.gv)
  %i.gy = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gp, <4 x float> %i.gs)
  %i.gz = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gy, <4 x float> %i.gv)
  %i.ha = trunc i64 %.011521 to i32
  %i.hb = fadd <4 x float> %i.gx, %i.gz
  %i.hc = fsub <4 x float> %i.hb, %i.h
  %i.hd = fmul <4 x float> %i.j, %i.hc
  %i.he = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.hd) ; 3 uses
  %i.hf = extractelement <4 x i32> %i.he, i64 0
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ef
  store i32 %i.hf, ptr %i.hg, align 4
  %.sroa.0273.4.vec.extract = extractelement <4 x i32> %i.he, i64 1
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ef
  store i32 %.sroa.0273.4.vec.extract, ptr %i.hh, align 4
  %.sroa.0273.8.vec.extract = extractelement <4 x i32> %i.he, i64 2
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ef
  store i32 %.sroa.0273.8.vec.extract, ptr %i.hi, align 4
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ef
  store i32 %i.ha, ptr %i.hj, align 4
  %i.hk = add nsw i64 %i.ef, 1                    ; 2 uses
  %i.hl = add i64 %i.eg, 1                        ; 2 uses
  %i.hm = icmp eq i64 %i.hk, 4
  br i1 %i.hm, label %.noexc30, label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit

.noexc30:                                         ; preds = %.noexc25
  %i.hn = load <2 x i64>, ptr %i.k, align 16, !noalias !935 ; 2 uses
  %i.ho = load <2 x i64>, ptr %i.l, align 16, !noalias !935 ; 2 uses
  %i.hp = load <2 x i64>, ptr %i.m, align 16, !noalias !935 ; 2 uses
  %i.hq = bitcast <2 x i64> %i.hn to <4 x i32>
  %i.hr = shl <4 x i32> %i.hq, splat (i32 16)
  %i.hs = bitcast <4 x i32> %i.hr to <2 x i64>
  %i.ht = or <2 x i64> %i.hn, %i.hs
  %i.hu = and <2 x i64> %i.ht, splat (i64 216173877380776191) ; 2 uses
  %i.hv = bitcast <2 x i64> %i.hu to <4 x i32>
  %i.hw = shl <4 x i32> %i.hv, splat (i32 8)
  %i.hx = bitcast <4 x i32> %i.hw to <2 x i64>
  %i.hy = or disjoint <2 x i64> %i.hu, %i.hx
  %i.hz = and <2 x i64> %i.hy, splat (i64 216436729379352591) ; 2 uses
  %i.ia = bitcast <2 x i64> %i.hz to <4 x i32>
  %i.ib = shl nuw nsw <4 x i32> %i.ia, splat (i32 4)
  %i.ic = bitcast <4 x i32> %i.ib to <2 x i64>
  %i.id = or disjoint <2 x i64> %i.hz, %i.ic
  %i.ie = and <2 x i64> %i.id, splat (i64 219604095962198211) ; 2 uses
  %i.if = bitcast <2 x i64> %i.ie to <4 x i32>
  %i.ig = shl nuw nsw <4 x i32> %i.if, splat (i32 2)
  %i.ih = bitcast <4 x i32> %i.ig to <2 x i64>
  %i.ii = or disjoint <2 x i64> %i.ie, %i.ih
  %i.ij = and <2 x i64> %i.ii, splat (i64 658812287886594633)
  %i.ik = bitcast <2 x i64> %i.ho to <4 x i32>
  %i.il = shl <4 x i32> %i.ik, splat (i32 16)
  %i.im = bitcast <4 x i32> %i.il to <2 x i64>
  %i.in = or <2 x i64> %i.ho, %i.im
  %i.io = and <2 x i64> %i.in, splat (i64 216173877380776191) ; 2 uses
  %i.ip = bitcast <2 x i64> %i.io to <4 x i32>
  %i.iq = shl <4 x i32> %i.ip, splat (i32 8)
  %i.ir = bitcast <4 x i32> %i.iq to <2 x i64>
  %i.is = or disjoint <2 x i64> %i.io, %i.ir
  %i.it = and <2 x i64> %i.is, splat (i64 216436729379352591) ; 2 uses
  %i.iu = bitcast <2 x i64> %i.it to <4 x i32>
  %i.iv = shl nuw nsw <4 x i32> %i.iu, splat (i32 4)
  %i.iw = bitcast <2 x i64> %i.it to <4 x i32>
  %i.ix = or disjoint <4 x i32> %i.iv, %i.iw
  %i.iy = and <4 x i32> %i.ix, splat (i32 51130563) ; 2 uses
  %i.iz = bitcast <2 x i64> %i.hp to <4 x i32>
  %i.ja = shl <4 x i32> %i.iz, splat (i32 16)
  %i.jb = bitcast <4 x i32> %i.ja to <2 x i64>
  %i.jc = or <2 x i64> %i.hp, %i.jb
  %i.jd = and <2 x i64> %i.jc, splat (i64 216173877380776191) ; 2 uses
  %i.je = bitcast <2 x i64> %i.jd to <4 x i32>
  %i.jf = shl <4 x i32> %i.je, splat (i32 8)
  %i.jg = bitcast <4 x i32> %i.jf to <2 x i64>
  %i.jh = or disjoint <2 x i64> %i.jd, %i.jg
  %i.ji = and <2 x i64> %i.jh, splat (i64 216436729379352591) ; 2 uses
  %i.jj = bitcast <2 x i64> %i.ji to <4 x i32>
  %i.jk = shl nuw nsw <4 x i32> %i.jj, splat (i32 4)
  %i.jl = bitcast <2 x i64> %i.ji to <4 x i32>
  %i.jm = or disjoint <4 x i32> %i.jk, %i.jl
  %i.jn = and <4 x i32> %i.jm, splat (i32 51130563) ; 2 uses
  %i.jo = shl nuw nsw <4 x i32> %i.iy, splat (i32 3)
  %i.jp = shl nuw nsw <4 x i32> %i.iy, splat (i32 1)
  %i.jq = or disjoint <4 x i32> %i.jo, %i.jp
  %i.jr = bitcast <4 x i32> %i.jq to <2 x i64>
  %i.js = and <2 x i64> %i.jr, splat (i64 1317624575773189266)
  %i.jt = or disjoint <2 x i64> %i.js, %i.ij
  %i.ju = shl nuw nsw <4 x i32> %i.jn, splat (i32 4)
  %i.jv = shl nuw nsw <4 x i32> %i.jn, splat (i32 2)
  %i.jw = or disjoint <4 x i32> %i.ju, %i.jv
  %i.jx = bitcast <4 x i32> %i.jw to <2 x i64>
  %i.jy = and <2 x i64> %i.jx, splat (i64 2635249151546378532)
  %i.jz = or disjoint <2 x i64> %i.jt, %i.jy
  %i.ka = getelementptr [8 x i8], ptr %i.g, i64 %i.hl ; 2 uses
  %i.kb = getelementptr i8, ptr %i.ka, i64 -32
  %i.kc = bitcast <2 x i64> %i.jz to <4 x float>  ; 2 uses
  %i.kd = load <4 x float>, ptr %i.n, align 16, !noalias !936 ; 2 uses
  %i.ke = shufflevector <4 x float> %i.kc, <4 x float> %i.kd, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.ke, ptr %i.kb, align 1
  %i.kf = getelementptr i8, ptr %i.ka, i64 -16
  %i.kg = shufflevector <4 x float> %i.kc, <4 x float> %i.kd, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.kg, ptr %i.kf, align 1
  %.pre.pre = load i64, ptr %i.o, align 8
  br label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit

_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit: ; preds = %.noexc30, %.noexc25
  %.pre = phi i64 [ %.pre.pre, %.noexc30 ], [ %.pre529, %.noexc25 ] ; 2 uses
  %i.kh = phi i64 [ 0, %.noexc30 ], [ %i.hk, %.noexc25 ]
  %i.ki = add i64 %.0522, 1
  br label %_ZNK6embree12TriangleMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread

_ZNK6embree12TriangleMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread: ; preds = %bb.f, %bb.e, %.noexc16, %bb.c, %bb.b, %.noexc13, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit
  %.pre530 = phi i64 [ %.pre, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %.pre529, %.noexc13 ], [ %.pre529, %bb.b ], [ %.pre529, %bb.c ], [ %.pre529, %.noexc16 ], [ %.pre529, %bb.e ], [ %.pre529, %bb.f ]
  %i.kj = phi i64 [ %.pre, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %i.ee, %.noexc13 ], [ %i.ee, %bb.b ], [ %i.ee, %bb.c ], [ %i.ee, %.noexc16 ], [ %i.ee, %bb.e ], [ %i.ee, %bb.f ] ; 2 uses
  %i.kk = phi i64 [ %i.hl, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %i.eg, %.noexc13 ], [ %i.eg, %bb.b ], [ %i.eg, %bb.c ], [ %i.eg, %.noexc16 ], [ %i.eg, %bb.e ], [ %i.eg, %bb.f ] ; 2 uses
  %i.kl = phi i64 [ %i.kh, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %i.ef, %.noexc13 ], [ %i.ef, %bb.b ], [ %i.ef, %bb.c ], [ %i.ef, %.noexc16 ], [ %i.ef, %bb.e ], [ %i.ef, %bb.f ] ; 10 uses
  %.1 = phi i64 [ %i.ki, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %.0522, %.noexc13 ], [ %.0522, %bb.b ], [ %.0522, %bb.c ], [ %.0522, %.noexc16 ], [ %.0522, %bb.e ], [ %.0522, %bb.f ] ; 3 uses
  %i.km = add nuw i64 %.011521, 1                 ; 2 uses
  %i.kn = icmp ult i64 %i.km, %i.kj
  br i1 %i.kn, label %.noexc13, label %._crit_edge, !llvm.loop !925
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_19parallel_prefix_sumImmZNS_4sse221createMortonCodeArrayINS_12TriangleMeshEEEmPT_RNS_8vector_tINS4_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorISB_Lm8EEEEERNS_20BuildProgressMonitorEEUlRKNS_5rangeImEEmE0_St4plusImEEET0_RNS_22ParallelPrefixSumStateISP_EES7_S7_S7_RKSP_RKT1_RKT2_EUlmE_EEvS7_SU_EUlSL_E_EEvS7_S7_S7_SU_PNS0_16TaskGroupContextE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.264, align 8            ; 9 uses
  %i.a = sub i64 %1, %0                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store i64 %1, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.e = load i64, ptr %3, align 8
  store i64 %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %4, ptr %i.f, align 8
  %i.g = tail call noundef ptr @_ZN6embree13TaskScheduler6threadEv() ; 7 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.l, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 262272 ; 5 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 8
  %i.k = icmp ugt i64 %i.j, 4095
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #19
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.u, %bb.i ], [ %i.l, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.m, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #18
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.f:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 786624 ; 2 uses
  %i.o = load i64, ptr %i.n, align 64             ; 4 uses
  %i.p = sub i64 0, %i.o
  %i.q = and i64 %i.p, 63                         ; 2 uses
  %i.r = add i64 %i.o, 48
  %i.s = add i64 %i.r, %i.q                       ; 2 uses
  %i.t = icmp ugt i64 %i.s, 524288
  br i1 %i.t, label %bb.g, label %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i

bb.g:                                             ; preds = %bb.f
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull @.str.1)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #19
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i: ; preds = %bb.f
  store i64 %i.s, ptr %i.n, align 64
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 262336
  %i.x = getelementptr i8, ptr %i.w, i64 %i.o
  %i.y = getelementptr i8, ptr %i.x, i64 %i.q     ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_12parallel_forImZNS_19parallel_prefix_sumImmZNS_4sse221createMortonCodeArrayINS_12TriangleMeshEEEmPT_RNS_8vector_tINS5_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorISC_Lm8EEEEERNS_20BuildProgressMonitorEEUlRKNS_5rangeImEEmE0_St4plusImEEET0_RNS_22ParallelPrefixSumStateISQ_EES8_S8_S8_RKSQ_RKT1_RKT2_EUlmE_EEvS8_SV_EUlSM_E_EEvS8_S8_S8_SV_PNS0_16TaskGroupContextEEUlvE_EE, i64 16), ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false)
  %i.aa = load atomic i64, ptr %i.i seq_cst, align 64
  %i.ab = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %i.aa ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 786688
  %i.ad = load ptr, ptr %i.ac, align 64           ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 1, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i8 1, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.y, ptr %i.ag, align 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.ad, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %4, ptr %i.ai, align 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store i64 %i.o, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store i64 %i.a, ptr %i.ak, align 16
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i
end_hunk_1
begin_hunk_2_@_ZZN6embree4sse221createMortonCodeArrayINS_12TriangleMeshEEEmPT_RNS_8vector_tINS0_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS7_Lm8EEEEERNS_20BuildProgressMonitorEENKUlRKNS_5rangeImEEmE0_clESH_m:bb.a
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.0.i32526.prol = phi i64 [ %i.cz, %scalar.ph.prol ], [ %.0.i32526.ph, %scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.0.i32526.prol
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = getelementptr [8 x i8], ptr %i.cg, i64 %.0.i32526.prol ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  store i32 %i.cu, ptr %i.cw, align 4
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0.i32526.prol
  %i.cy = load i32, ptr %i.cx, align 4
  store i32 %i.cy, ptr %i.cv, align 8
  %i.cz = add nuw nsw i64 %.0.i32526.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !942

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0.i32526.unr = phi i64 [ %.0.i32526.ph, %scalar.ph.preheader ], [ %i.cz, %scalar.ph.prol ]
  %i.da = sub i64 %.0.i32526.ph, %i.kl
  %i.db = icmp ugt i64 %i.da, -4
  br i1 %i.db, label %.loopexit, label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorD2Ev.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0.i32526 = phi i64 [ %i.ed, %scalar.ph ], [ %.0.i32526.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.0.i32526
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = getelementptr [8 x i8], ptr %i.cg, i64 %.0.i32526 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store i32 %i.dd, ptr %i.df, align 4
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0.i32526
  %i.dh = load i32, ptr %i.dg, align 4
  store i32 %i.dh, ptr %i.de, align 8
  %i.di = add nuw nsw i64 %.0.i32526, 1           ; 3 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = getelementptr [8 x i8], ptr %i.cg, i64 %i.di ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store i32 %i.dk, ptr %i.dm, align 4
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.di
  %i.do = load i32, ptr %i.dn, align 4
  store i32 %i.do, ptr %i.dl, align 8
  %i.dp = add nuw nsw i64 %.0.i32526, 2           ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = getelementptr [8 x i8], ptr %i.cg, i64 %i.dp ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 %i.dr, ptr %i.dt, align 4
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dp
  %i.dv = load i32, ptr %i.du, align 4
  store i32 %i.dv, ptr %i.ds, align 8
  %i.dw = add nuw nsw i64 %.0.i32526, 3           ; 3 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4
  %i.dz = getelementptr [8 x i8], ptr %i.cg, i64 %i.dw ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  store i32 %i.dy, ptr %i.ea, align 4
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dw
  %i.ec = load i32, ptr %i.eb, align 4
  store i32 %i.ec, ptr %i.dz, align 8
  %i.ed = add nuw nsw i64 %.0.i32526, 4           ; 2 uses
  %exitcond529.not.3 = icmp eq i64 %i.ed, %i.kl
  br i1 %exitcond529.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !943

_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorD2Ev.exit: ; preds = %bb.a, %._crit_edge, %.loopexit
  %.0.lcssa545 = phi i64 [ %.1, %.loopexit ], [ %.1, %._crit_edge ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i64 %.0.lcssa545

.noexc13:                                         ; preds = %.noexc13.lr.ph, %_ZNK6embree12TriangleMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread
  %.pre530 = phi i64 [ %i.p, %.noexc13.lr.ph ], [ %.pre531, %_ZNK6embree12TriangleMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 7 uses
  %i.ee = phi i64 [ %i.p, %.noexc13.lr.ph ], [ %i.kj, %_ZNK6embree12TriangleMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 6 uses
  %.0523 = phi i64 [ 0, %.noexc13.lr.ph ], [ %.1, %_ZNK6embree12TriangleMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 7 uses
  %.011521 = phi i64 [ %i.n, %.noexc13.lr.ph ], [ %i.km, %_ZNK6embree12TriangleMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 3 uses
  %i.ef = phi i64 [ 0, %.noexc13.lr.ph ], [ %i.kl, %_ZNK6embree12TriangleMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 11 uses
  %i.eg = phi i64 [ 0, %.noexc13.lr.ph ], [ %i.kk, %_ZNK6embree12TriangleMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 7 uses
  %i.eh = load ptr, ptr %i.r, align 8, !nonnull !28, !align !29
  %i.ei = load ptr, ptr %i.eh, align 8            ; 6 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 88
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 104
  %i.em = load i64, ptr %i.el, align 8
  %i.en = mul i64 %i.em, %.011521
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.en ; 3 uses
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = zext i32 %i.ep to i64                   ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ei, i64 224
  %i.es = load ptr, ptr %i.er, align 8            ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.eu = load i64, ptr %i.et, align 8            ; 3 uses
  %.not.i = icmp ugt i64 %i.eu, %i.eq
  br i1 %.not.i, label %bb.b, label %_ZNK6embree12TriangleMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread, !prof !24

bb.b:                                             ; preds = %.noexc13
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.ew = load i32, ptr %i.ev, align 4
  %i.ex = zext i32 %i.ew to i64                   ; 3 uses
  %.not23.i = icmp ugt i64 %i.eu, %i.ex
  br i1 %.not23.i, label %bb.c, label %_ZNK6embree12TriangleMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread, !prof !24

bb.c:                                             ; preds = %bb.b
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.ez = load i32, ptr %i.ey, align 4
  %i.fa = zext i32 %i.ez to i64                   ; 3 uses
  %.not24.i = icmp ugt i64 %i.eu, %i.fa
  br i1 %.not24.i, label %.preheader, label %_ZNK6embree12TriangleMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread, !prof !24

.preheader:                                       ; preds = %bb.c
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ei, i64 36
  %i.fc = load i32, ptr %i.fb, align 4            ; 2 uses
  %i.fd = zext i32 %i.fc to i64
  %.not25.i517.not = icmp eq i32 %i.fc, 0
  br i1 %.not25.i517.not, label %.noexc25, label %.noexc16

bb.d:                                             ; preds = %bb.f
  %i.fe = add nuw nsw i64 %.0.i518, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.fe, %i.fd
  br i1 %exitcond.not, label %.noexc25, label %.noexc16, !llvm.loop !0

.noexc16:                                         ; preds = %.preheader, %bb.d
  %.0.i518 = phi i64 [ %i.fe, %bb.d ], [ 0, %.preheader ] ; 2 uses
  %i.ff = getelementptr inbounds nuw [56 x i8], ptr %i.es, i64 %.0.i518 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !noalias !986 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fi = load i64, ptr %i.fh, align 8, !noalias !986 ; 3 uses
  %i.fj = mul i64 %i.fi, %i.eq
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fj
  %i.fl = load <4 x float>, ptr %i.fk, align 1, !noalias !987 ; 2 uses
  %i.fm = mul i64 %i.fi, %i.fa
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fm
  %i.fo = load <4 x float>, ptr %i.fn, align 1, !noalias !988 ; 2 uses
  %i.fp = fcmp ugt <4 x float> %i.fl, splat (float -1.844000e+18)
  %i.fq = fcmp olt <4 x float> %i.fl, splat (float 1.844000e+18)
  %i.fr = and <4 x i1> %i.fp, %i.fq
  %i.fs = bitcast <4 x i1> %i.fr to i4
  %i.ft = and i4 %i.fs, 7
  %i.fu = icmp eq i4 %i.ft, 7
  br i1 %i.fu, label %bb.e, label %_ZNK6embree12TriangleMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread, !prof !24

bb.e:                                             ; preds = %.noexc16
  %i.fv = mul i64 %i.fi, %i.ex
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fv
  %i.fx = load <4 x float>, ptr %i.fw, align 1, !noalias !989 ; 2 uses
  %i.fy = fcmp ugt <4 x float> %i.fx, splat (float -1.844000e+18)
  %i.fz = fcmp olt <4 x float> %i.fx, splat (float 1.844000e+18)
  %i.ga = and <4 x i1> %i.fy, %i.fz
  %i.gb = bitcast <4 x i1> %i.ga to i4
  %i.gc = and i4 %i.gb, 7
  %i.gd = icmp eq i4 %i.gc, 7
  br i1 %i.gd, label %bb.f, label %_ZNK6embree12TriangleMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread, !prof !24

bb.f:                                             ; preds = %bb.e
  %i.ge = fcmp ugt <4 x float> %i.fo, splat (float -1.844000e+18)
  %i.gf = fcmp olt <4 x float> %i.fo, splat (float 1.844000e+18)
  %i.gg = and <4 x i1> %i.ge, %i.gf
  %i.gh = bitcast <4 x i1> %i.gg to i4
  %i.gi = and i4 %i.gh, 7
  %.not = icmp eq i4 %i.gi, 7
  br i1 %.not, label %bb.d, label %_ZNK6embree12TriangleMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread

.noexc25:                                         ; preds = %bb.d, %.preheader
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ei, i64 144
  %i.gk = load ptr, ptr %i.gj, align 8, !noalias !990 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ei, i64 160
  %i.gm = load i64, ptr %i.gl, align 8, !noalias !990 ; 3 uses
  %i.gn = mul i64 %i.gm, %i.eq
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gn
  %i.gp = load <4 x float>, ptr %i.go, align 1, !noalias !991 ; 2 uses
  %i.gq = mul i64 %i.gm, %i.ex
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gq
  %i.gs = load <4 x float>, ptr %i.gr, align 1, !noalias !992 ; 2 uses
  %i.gt = mul i64 %i.gm, %i.fa
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gt
  %i.gv = load <4 x float>, ptr %i.gu, align 1, !noalias !993 ; 2 uses
  %i.gw = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gp, <4 x float> %i.gs)
  %i.gx = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gw, <4 x float> %i.gv)
  %i.gy = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gp, <4 x float> %i.gs)
  %i.gz = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gy, <4 x float> %i.gv)
  %i.ha = trunc i64 %.011521 to i32
  %i.hb = fadd <4 x float> %i.gx, %i.gz
  %i.hc = fsub <4 x float> %i.hb, %i.g
  %i.hd = fmul <4 x float> %i.i, %i.hc
  %i.he = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.hd) ; 3 uses
  %i.hf = extractelement <4 x i32> %i.he, i64 0
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ef
  store i32 %i.hf, ptr %i.hg, align 4
  %.sroa.0273.4.vec.extract = extractelement <4 x i32> %i.he, i64 1
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ef
  store i32 %.sroa.0273.4.vec.extract, ptr %i.hh, align 4
  %.sroa.0273.8.vec.extract = extractelement <4 x i32> %i.he, i64 2
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ef
  store i32 %.sroa.0273.8.vec.extract, ptr %i.hi, align 4
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ef
  store i32 %i.ha, ptr %i.hj, align 4
  %i.hk = add nsw i64 %i.ef, 1                    ; 2 uses
  %i.hl = add i64 %i.eg, 1                        ; 2 uses
  %i.hm = icmp eq i64 %i.hk, 4
  br i1 %i.hm, label %.noexc30, label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit

.noexc30:                                         ; preds = %.noexc25
  %i.hn = load <2 x i64>, ptr %i.j, align 16, !noalias !994 ; 2 uses
  %i.ho = load <2 x i64>, ptr %i.k, align 16, !noalias !994 ; 2 uses
  %i.hp = load <2 x i64>, ptr %i.l, align 16, !noalias !994 ; 2 uses
  %i.hq = bitcast <2 x i64> %i.hn to <4 x i32>
  %i.hr = shl <4 x i32> %i.hq, splat (i32 16)
  %i.hs = bitcast <4 x i32> %i.hr to <2 x i64>
  %i.ht = or <2 x i64> %i.hn, %i.hs
  %i.hu = and <2 x i64> %i.ht, splat (i64 216173877380776191) ; 2 uses
  %i.hv = bitcast <2 x i64> %i.hu to <4 x i32>
  %i.hw = shl <4 x i32> %i.hv, splat (i32 8)
  %i.hx = bitcast <4 x i32> %i.hw to <2 x i64>
  %i.hy = or disjoint <2 x i64> %i.hu, %i.hx
  %i.hz = and <2 x i64> %i.hy, splat (i64 216436729379352591) ; 2 uses
  %i.ia = bitcast <2 x i64> %i.hz to <4 x i32>
  %i.ib = shl nuw nsw <4 x i32> %i.ia, splat (i32 4)
  %i.ic = bitcast <4 x i32> %i.ib to <2 x i64>
  %i.id = or disjoint <2 x i64> %i.hz, %i.ic
  %i.ie = and <2 x i64> %i.id, splat (i64 219604095962198211) ; 2 uses
  %i.if = bitcast <2 x i64> %i.ie to <4 x i32>
  %i.ig = shl nuw nsw <4 x i32> %i.if, splat (i32 2)
  %i.ih = bitcast <4 x i32> %i.ig to <2 x i64>
  %i.ii = or disjoint <2 x i64> %i.ie, %i.ih
  %i.ij = and <2 x i64> %i.ii, splat (i64 658812287886594633)
  %i.ik = bitcast <2 x i64> %i.ho to <4 x i32>
  %i.il = shl <4 x i32> %i.ik, splat (i32 16)
  %i.im = bitcast <4 x i32> %i.il to <2 x i64>
  %i.in = or <2 x i64> %i.ho, %i.im
  %i.io = and <2 x i64> %i.in, splat (i64 216173877380776191) ; 2 uses
  %i.ip = bitcast <2 x i64> %i.io to <4 x i32>
  %i.iq = shl <4 x i32> %i.ip, splat (i32 8)
  %i.ir = bitcast <4 x i32> %i.iq to <2 x i64>
  %i.is = or disjoint <2 x i64> %i.io, %i.ir
  %i.it = and <2 x i64> %i.is, splat (i64 216436729379352591) ; 2 uses
  %i.iu = bitcast <2 x i64> %i.it to <4 x i32>
  %i.iv = shl nuw nsw <4 x i32> %i.iu, splat (i32 4)
  %i.iw = bitcast <2 x i64> %i.it to <4 x i32>
  %i.ix = or disjoint <4 x i32> %i.iv, %i.iw
  %i.iy = and <4 x i32> %i.ix, splat (i32 51130563) ; 2 uses
  %i.iz = bitcast <2 x i64> %i.hp to <4 x i32>
  %i.ja = shl <4 x i32> %i.iz, splat (i32 16)
  %i.jb = bitcast <4 x i32> %i.ja to <2 x i64>
  %i.jc = or <2 x i64> %i.hp, %i.jb
  %i.jd = and <2 x i64> %i.jc, splat (i64 216173877380776191) ; 2 uses
  %i.je = bitcast <2 x i64> %i.jd to <4 x i32>
  %i.jf = shl <4 x i32> %i.je, splat (i32 8)
  %i.jg = bitcast <4 x i32> %i.jf to <2 x i64>
  %i.jh = or disjoint <2 x i64> %i.jd, %i.jg
  %i.ji = and <2 x i64> %i.jh, splat (i64 216436729379352591) ; 2 uses
  %i.jj = bitcast <2 x i64> %i.ji to <4 x i32>
  %i.jk = shl nuw nsw <4 x i32> %i.jj, splat (i32 4)
  %i.jl = bitcast <2 x i64> %i.ji to <4 x i32>
  %i.jm = or disjoint <4 x i32> %i.jk, %i.jl
  %i.jn = and <4 x i32> %i.jm, splat (i32 51130563) ; 2 uses
  %i.jo = shl nuw nsw <4 x i32> %i.iy, splat (i32 3)
  %i.jp = shl nuw nsw <4 x i32> %i.iy, splat (i32 1)
  %i.jq = or disjoint <4 x i32> %i.jo, %i.jp
  %i.jr = bitcast <4 x i32> %i.jq to <2 x i64>
  %i.js = and <2 x i64> %i.jr, splat (i64 1317624575773189266)
  %i.jt = or disjoint <2 x i64> %i.js, %i.ij
  %i.ju = shl nuw nsw <4 x i32> %i.jn, splat (i32 4)
  %i.jv = shl nuw nsw <4 x i32> %i.jn, splat (i32 2)
  %i.jw = or disjoint <4 x i32> %i.ju, %i.jv
  %i.jx = bitcast <4 x i32> %i.jw to <2 x i64>
  %i.jy = and <2 x i64> %i.jx, splat (i64 2635249151546378532)
  %i.jz = or disjoint <2 x i64> %i.jt, %i.jy
  %i.ka = getelementptr [8 x i8], ptr %i.f, i64 %i.hl ; 2 uses
  %i.kb = getelementptr i8, ptr %i.ka, i64 -32
  %i.kc = bitcast <2 x i64> %i.jz to <4 x float>  ; 2 uses
  %i.kd = load <4 x float>, ptr %i.m, align 16, !noalias !995 ; 2 uses
  %i.ke = shufflevector <4 x float> %i.kc, <4 x float> %i.kd, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.ke, ptr %i.kb, align 1
  %i.kf = getelementptr i8, ptr %i.ka, i64 -16
  %i.kg = shufflevector <4 x float> %i.kc, <4 x float> %i.kd, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.kg, ptr %i.kf, align 1
  %.pre.pre = load i64, ptr %i.o, align 8
  br label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit

_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit: ; preds = %.noexc30, %.noexc25
  %.pre = phi i64 [ %.pre.pre, %.noexc30 ], [ %.pre530, %.noexc25 ] ; 2 uses
  %i.kh = phi i64 [ 0, %.noexc30 ], [ %i.hk, %.noexc25 ]
  %i.ki = add i64 %.0523, 1
  br label %_ZNK6embree12TriangleMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread

_ZNK6embree12TriangleMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread: ; preds = %bb.f, %bb.e, %.noexc16, %bb.c, %bb.b, %.noexc13, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit
  %.pre531 = phi i64 [ %.pre, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %.pre530, %.noexc13 ], [ %.pre530, %bb.b ], [ %.pre530, %bb.c ], [ %.pre530, %.noexc16 ], [ %.pre530, %bb.e ], [ %.pre530, %bb.f ]
  %i.kj = phi i64 [ %.pre, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %i.ee, %.noexc13 ], [ %i.ee, %bb.b ], [ %i.ee, %bb.c ], [ %i.ee, %.noexc16 ], [ %i.ee, %bb.e ], [ %i.ee, %bb.f ] ; 2 uses
  %i.kk = phi i64 [ %i.hl, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %i.eg, %.noexc13 ], [ %i.eg, %bb.b ], [ %i.eg, %bb.c ], [ %i.eg, %.noexc16 ], [ %i.eg, %bb.e ], [ %i.eg, %bb.f ] ; 2 uses
  %i.kl = phi i64 [ %i.kh, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %i.ef, %.noexc13 ], [ %i.ef, %bb.b ], [ %i.ef, %bb.c ], [ %i.ef, %.noexc16 ], [ %i.ef, %bb.e ], [ %i.ef, %bb.f ] ; 10 uses
  %.1 = phi i64 [ %i.ki, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %.0523, %.noexc13 ], [ %.0523, %bb.b ], [ %.0523, %bb.c ], [ %.0523, %.noexc16 ], [ %.0523, %bb.e ], [ %.0523, %bb.f ] ; 3 uses
  %i.km = add nuw i64 %.011521, 1                 ; 2 uses
  %i.kn = icmp ult i64 %i.km, %i.kj
  br i1 %i.kn, label %.noexc13, label %._crit_edge, !llvm.loop !984
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6embree24parallel_reduce_internalImSt4pairImNS_4BBoxINS_6Vec3faEEEEZNS_4sse221createMortonCodeArrayINS_8QuadMeshEEEmPT_RNS_8vector_tINS6_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorISD_Lm8EEEEERNS_20BuildProgressMonitorEEUlRKNS_5rangeImEEE_ZNS7_IS8_EEmSA_SH_SJ_EUlRKS5_SQ_E_EET0_S9_S9_S9_S9_RKSS_RKT1_RKT2_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair") align 16 %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 16 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %9 = alloca %class.anon.268, align 8            ; 5 uses
  %10 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca i64, align 8                      ; 2 uses
  %11 = alloca %"struct.embree::StackArray", align 64 ; 14 uses
  %12 = alloca %class.anon.267, align 8           ; 9 uses
  store i64 %2, ptr %i.b, align 8
  store i64 %3, ptr %i.c, align 8
  %i.d = tail call noundef i64 @_ZN6embree13TaskScheduler11threadCountEv()
  %i.e = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.d) ; 3 uses
  %i.f = tail call noundef i64 @llvm.umin.i64(i64 %i.e, i64 512) ; 4 uses
  store i64 %i.f, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.idx.i = phi i64 [ 0, %bb.a ], [ %.add.i.4, %bb.b ] ; 6 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr %11, i64 %.idx.i
  store i64 0, ptr %.ptr.i, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 %.idx.i
  %.ptr.i.1 = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 0, ptr %.ptr.i.1, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 %.idx.i
  %.ptr.i.2 = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  store i64 0, ptr %.ptr.i.2, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 %.idx.i
  %.ptr.i.3 = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  store i64 0, ptr %.ptr.i.3, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 %.idx.i
  %.ptr.i.4 = getelementptr inbounds nuw i8, ptr %i.j, i64 192
  store i64 0, ptr %.ptr.i.4, align 16
  %.add.i.4 = add nuw nsw i64 %.idx.i, 240        ; 2 uses
  %i.k = icmp eq i64 %.add.i.4, 8160
  br i1 %i.k, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 8168
  store i64 %i.f, ptr %i.l, align 8
  %i.m = icmp ult i64 %i.e, 171
  br i1 %i.m, label %_ZN6embree10StackArrayISt4pairImNS_4BBoxINS_6Vec3faEEEELm8192EEC2Em.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = mul nuw nsw i64 %i.f, 48
  %i.o = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef %i.n, i64 noundef 64)
  br label %_ZN6embree10StackArrayISt4pairImNS_4BBoxINS_6Vec3faEEEELm8192EEC2Em.exit

_ZN6embree10StackArrayISt4pairImNS_4BBoxINS_6Vec3faEEEELm8192EEC2Em.exit: ; preds = %bb.c, %bb.d
  %storemerge.i = phi ptr [ %i.o, %bb.d ], [ %11, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 8160 ; 3 uses
  store ptr %storemerge.i, ptr %i.p, align 32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  store ptr %i.b, ptr %12, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.c, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.a, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %11, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %6, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %.not.i12 = icmp eq i64 %i.e, 0
  br i1 %.not.i12, label %bb.m, label %bb.e

bb.e:                                             ; preds = %_ZN6embree10StackArrayISt4pairImNS_4BBoxINS_6Vec3faEEEELm8192EEC2Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  store ptr null, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  store ptr %12, ptr %9, align 8
  invoke void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImSt4pairImNS_4BBoxINS_6Vec3faEEEEZNS_4sse221createMortonCodeArrayINS_8QuadMeshEEEmPT_RNS_8vector_tINS9_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorISG_Lm8EEEEERNS_20BuildProgressMonitorEEUlRKNS_5rangeImEEE_ZNSA_ISB_EEmSD_SK_SM_EUlRKS8_ST_E_EET0_SC_SC_SC_SC_RKSV_RKT1_RKT2_EUlmE_EEvSC_SX_EUlSQ_E_EEvSC_SC_SC_SX_PNS0_16TaskGroupContextE(i64 noundef 0, i64 noundef %i.f, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %8)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  invoke void @_ZN6embree13TaskScheduler4waitEv()
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit unwind label %bb.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.f
  %i.u = load ptr, ptr %8, align 8                ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  store ptr %i.u, ptr %10, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #18
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %10) #19
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16
end_hunk_2
begin_hunk_3_@_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_4sse221createMortonCodeArrayINS_8QuadMeshEEEmPT_RNS_8vector_tINS3_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorISA_Lm8EEEEERNS_20BuildProgressMonitorEEUlRKNS_5rangeImEEE0_EEvS6_S6_S6_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvRKS6_SQ_mb:bb.a
  %.not.i.i59 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i59, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.ax
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63: ; preds = %bb.ax, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.eg = load ptr, ptr %11, align 8              ; 2 uses
  %.not81 = icmp eq ptr %i.eg, null
  br i1 %.not81, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  store ptr %i.eg, ptr %12, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #18
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %12) #19
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  unreachable

bb.az:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %12, align 8
  %.not.i65 = icmp eq ptr %i.ei, null
  br i1 %.not.i65, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.ej = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i69 = icmp eq ptr %i.ej, null
  br i1 %.not.i69, label %_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 786696
  %i.el = load ptr, ptr %i.ek, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i.i, label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load ptr, ptr %i.en, align 8
  invoke void %i.eo(ptr noundef nonnull align 8 dereferenceable(16) %i.el)
          to label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #20
  unreachable

_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i:    ; preds = %bb.bc, %bb.bb
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.ej)
          to label %_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit unwind label %bb.be

bb.be:                                            ; preds = %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  call void @__clang_call_terminate(ptr %i.es) #20
  unreachable

_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  ret void

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66: ; preds = %bb.ba, %bb.az, %bb.aw
  %.pn36 = phi { ptr, i32 } [ %i.ee, %bb.aw ], [ %i.eh, %bb.az ], [ %i.eh, %bb.ba ]
  %i.et = load ptr, ptr %11, align 8
  %.not.i70 = icmp eq ptr %i.et, null
  br i1 %.not.i70, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.j, %bb.m, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45, %bb.ac
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71 ], [ %.pn30, %bb.ac ], [ %.pn34, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit ], [ %.pn32, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45 ], [ %i.at, %bb.m ], [ %i.al, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #18
  br label %_ZN6embree13TaskScheduler6ThreaddlEPv.exit

_ZN6embree13TaskScheduler6ThreaddlEPv.exit:       ; preds = %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47, %.body
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %.body ], [ %.pn, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  resume { ptr, i32 } %.pn36.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_4sse221createMortonCodeArrayINS_8QuadMeshEEEmPT_RNS_8vector_tINS3_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorISA_Lm8EEEEERNS_20BuildProgressMonitorEEUlRKNS_5rangeImEEE0_EEvS6_S6_S6_RKT0_PNS0_16TaskGroupContextEEUlvE_E7executeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZZN6embree13TaskScheduler5spawnImZNS_4sse221createMortonCodeArrayINS_8QuadMeshEEEmPT_RNS_8vector_tINS2_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS9_Lm8EEEEERNS_20BuildProgressMonitorEEUlRKNS_5rangeImEEE0_EEvS5_S5_S5_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree13TaskScheduler5spawnImZNS_4sse221createMortonCodeArrayINS_8QuadMeshEEEmPT_RNS_8vector_tINS2_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS9_Lm8EEEEERNS_20BuildProgressMonitorEEUlRKNS_5rangeImEEE0_EEvS5_S5_S5_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.embree::vint_impl", align 16 ; 9 uses
  %2 = alloca %"struct.embree::sse2::BVHBuilderMorton::MortonCodeGenerator", align 16 ; 6 uses
  %i.a = load i64, ptr %0, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 6 uses
  %i.d = sub i64 %i.a, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %.not = icmp ugt i64 %i.d, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !28, !align !34 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !28, !align !29
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.c ; 2 uses
  %i.n = load <4 x float>, ptr %i.h, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.p = load <4 x float>, ptr %i.o, align 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.q, i8 0, i64 64, i1 false)
  %i.u = icmp ult i64 %i.c, %i.a
  br i1 %i.u, label %.noexc10.lr.ph.i, label %_ZZN6embree4sse221createMortonCodeArrayINS_8QuadMeshEEEmPT_RNS_8vector_tINS0_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS7_Lm8EEEEERNS_20BuildProgressMonitorEENKUlRKNS_5rangeImEEE0_clESH_.exit

.noexc10.lr.ph.i:                                 ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %.noexc10.i

_ZN6embree13bitInterleaveINS_9vint_implILi4EEEEET_RKS3_S5_S5_.exit101.i: ; preds = %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.w = load <2 x i64>, ptr %i.q, align 16, !noalias !1111 ; 2 uses
  %i.x = load <2 x i64>, ptr %i.r, align 16, !noalias !1111 ; 2 uses
  %i.y = load <2 x i64>, ptr %i.s, align 16, !noalias !1111 ; 2 uses
  %i.z = bitcast <2 x i64> %i.w to <4 x i32>
  %i.aa = shl <4 x i32> %i.z, splat (i32 16)
  %i.ab = bitcast <4 x i32> %i.aa to <2 x i64>
  %i.ac = or <2 x i64> %i.w, %i.ab
  %i.ad = and <2 x i64> %i.ac, splat (i64 216173877380776191) ; 2 uses
  %i.ae = bitcast <2 x i64> %i.ad to <4 x i32>
  %i.af = shl <4 x i32> %i.ae, splat (i32 8)
  %i.ag = bitcast <4 x i32> %i.af to <2 x i64>
  %i.ah = or disjoint <2 x i64> %i.ad, %i.ag
  %i.ai = and <2 x i64> %i.ah, splat (i64 216436729379352591) ; 2 uses
  %i.aj = bitcast <2 x i64> %i.ai to <4 x i32>
  %i.ak = shl nuw nsw <4 x i32> %i.aj, splat (i32 4)
  %i.al = bitcast <4 x i32> %i.ak to <2 x i64>
  %i.am = or disjoint <2 x i64> %i.ai, %i.al
  %i.an = and <2 x i64> %i.am, splat (i64 219604095962198211) ; 2 uses
  %i.ao = bitcast <2 x i64> %i.an to <4 x i32>
  %i.ap = shl nuw nsw <4 x i32> %i.ao, splat (i32 2)
  %i.aq = bitcast <4 x i32> %i.ap to <2 x i64>
  %i.ar = or disjoint <2 x i64> %i.an, %i.aq
  %i.as = and <2 x i64> %i.ar, splat (i64 658812287886594633)
  %i.at = bitcast <2 x i64> %i.x to <4 x i32>
  %i.au = shl <4 x i32> %i.at, splat (i32 16)
  %i.av = bitcast <2 x i64> %i.x to <4 x i32>
  %i.aw = or <4 x i32> %i.au, %i.av
  %i.ax = and <4 x i32> %i.aw, splat (i32 50331903) ; 2 uses
  %i.ay = shl <4 x i32> %i.ax, splat (i32 8)
  %i.az = or disjoint <4 x i32> %i.ay, %i.ax
  %i.ba = and <4 x i32> %i.az, splat (i32 50393103)
  %i.bb = mul nuw nsw <4 x i32> %i.ba, splat (i32 17)
  %i.bc = and <4 x i32> %i.bb, splat (i32 51130563)
  %i.bd = bitcast <2 x i64> %i.y to <4 x i32>
  %i.be = shl <4 x i32> %i.bd, splat (i32 16)
  %i.bf = bitcast <2 x i64> %i.y to <4 x i32>
  %i.bg = or <4 x i32> %i.be, %i.bf
  %i.bh = and <4 x i32> %i.bg, splat (i32 50331903) ; 2 uses
  %i.bi = shl <4 x i32> %i.bh, splat (i32 8)
  %i.bj = or disjoint <4 x i32> %i.bi, %i.bh
  %i.bk = and <4 x i32> %i.bj, splat (i32 50393103)
  %i.bl = mul nuw nsw <4 x i32> %i.bk, splat (i32 17)
  %i.bm = and <4 x i32> %i.bl, splat (i32 51130563)
  %i.bn = mul nuw nsw <4 x i32> %i.bc, splat (i32 10)
  %.inner = and <4 x i32> %i.bn, splat (i32 306783378)
  %i.bo = mul nuw nsw <4 x i32> %i.bm, splat (i32 20)
  %.inner26 = and <4 x i32> %i.bo, splat (i32 613566756)
  %.inner27 = or disjoint <4 x i32> %.inner26, %.inner
  %i.bp = bitcast <4 x i32> %.inner27 to <2 x i64>
  %i.bq = or disjoint <2 x i64> %i.as, %i.bp
  store <2 x i64> %i.bq, ptr %1, align 16
  %i.br = sub i64 %i.dr, %i.dq
  %i.bs = getelementptr [8 x i8], ptr %i.m, i64 %i.br ; 9 uses
  %min.iters.check = icmp ult i64 %i.fr, 18
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_ZN6embree13bitInterleaveINS_9vint_implILi4EEEEET_RKS3_S5_S5_.exit101.i
  %mul.result = shl i64 %i.dq, 3
  %mul.overflow = icmp ugt i64 %i.dq, 2305843009213693951
  %i.bt = getelementptr i8, ptr %i.bs, i64 %mul.result
  %i.bu = icmp ult ptr %i.bt, %i.bs
  %i.bv = or i1 %i.bu, %mul.overflow
  br i1 %i.bv, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.fr, 4611686018427387900     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %wide.load = load <2 x i32>, ptr %i.bw, align 16
  %wide.load22 = load <2 x i32>, ptr %i.bx, align 8
  %i.by = getelementptr [8 x i8], ptr %i.bs, i64 %index
  %i.bz = getelementptr [8 x i8], ptr %i.bs, i64 %index
  %i.ca = getelementptr i8, ptr %i.bz, i64 16
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %wide.load23 = load <2 x i32>, ptr %i.cb, align 16
  %wide.load24 = load <2 x i32>, ptr %i.cc, align 8
  %interleaved.vec = shufflevector <2 x i32> %wide.load23, <2 x i32> %wide.load, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.by, align 4
  %interleaved.vec25 = shufflevector <2 x i32> %wide.load24, <2 x i32> %wide.load22, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec25, ptr %i.ca, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !1077

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fr, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %_ZN6embree13bitInterleaveINS_9vint_implILi4EEEEET_RKS3_S5_S5_.exit101.i, %middle.block
  %.0.i487.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %_ZN6embree13bitInterleaveINS_9vint_implILi4EEEEET_RKS3_S5_S5_.exit101.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.ce = add i64 %i.dq, 1
  %i.cf = sub i64 %i.dq, %.0.i487.i.ph
  %xtraiter = and i64 %i.ce, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.0.i487.i.prol = phi i64 [ %i.cm, %scalar.ph.prol ], [ %.0.i487.i.ph, %scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.0.i487.i.prol
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = getelementptr [8 x i8], ptr %i.bs, i64 %.0.i487.i.prol ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store i32 %i.ch, ptr %i.cj, align 4
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0.i487.i.prol
  %i.cl = load i32, ptr %i.ck, align 4
  store i32 %i.cl, ptr %i.ci, align 8
  %i.cm = add nuw nsw i64 %.0.i487.i.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1078

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0.i487.i.unr = phi i64 [ %.0.i487.i.ph, %scalar.ph.preheader ], [ %i.cm, %scalar.ph.prol ]
  %i.cn = icmp ult i64 %i.cf, 3
  br i1 %i.cn, label %.loopexit, label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %_ZZN6embree4sse221createMortonCodeArrayINS_8QuadMeshEEEmPT_RNS_8vector_tINS0_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS7_Lm8EEEEERNS_20BuildProgressMonitorEENKUlRKNS_5rangeImEEE0_clESH_.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0.i487.i = phi i64 [ %i.dp, %scalar.ph ], [ %.0.i487.i.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.0.i487.i
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = getelementptr [8 x i8], ptr %i.bs, i64 %.0.i487.i ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  store i32 %i.cp, ptr %i.cr, align 4
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0.i487.i
  %i.ct = load i32, ptr %i.cs, align 4
  store i32 %i.ct, ptr %i.cq, align 8
  %i.cu = add nuw nsw i64 %.0.i487.i, 1           ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = getelementptr [8 x i8], ptr %i.bs, i64 %i.cu ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  store i32 %i.cw, ptr %i.cy, align 4
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cu
  %i.da = load i32, ptr %i.cz, align 4
  store i32 %i.da, ptr %i.cx, align 8
  %i.db = add nuw nsw i64 %.0.i487.i, 2           ; 3 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = getelementptr [8 x i8], ptr %i.bs, i64 %i.db ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store i32 %i.dd, ptr %i.df, align 4
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.db
  %i.dh = load i32, ptr %i.dg, align 4
  store i32 %i.dh, ptr %i.de, align 8
  %i.di = add nuw nsw i64 %.0.i487.i, 3           ; 4 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = getelementptr [8 x i8], ptr %i.bs, i64 %i.di ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store i32 %i.dk, ptr %i.dm, align 4
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.di
  %i.do = load i32, ptr %i.dn, align 4
  store i32 %i.do, ptr %i.dl, align 8
  %i.dp = add nuw nsw i64 %.0.i487.i, 4
  %exitcond.not.i.3 = icmp eq i64 %i.di, %i.dq
  br i1 %exitcond.not.i.3, label %.loopexit, label %scalar.ph, !llvm.loop !1079

.noexc10.i:                                       ; preds = %.noexc10.i.backedge, %.noexc10.lr.ph.i
  %.0485.i = phi i64 [ %i.c, %.noexc10.lr.ph.i ], [ %.0485.i.be, %.noexc10.i.backedge ] ; 4 uses
  %i.dq = phi i64 [ 0, %.noexc10.lr.ph.i ], [ %.be, %.noexc10.i.backedge ] ; 11 uses
  %i.dr = phi i64 [ 0, %.noexc10.lr.ph.i ], [ %i.fs, %.noexc10.i.backedge ] ; 2 uses
  %i.ds = load ptr, ptr %i.v, align 8, !nonnull !28, !align !29
  %i.dt = load ptr, ptr %i.ds, align 8            ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 88
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !1112
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 104
  %i.dx = load i64, ptr %i.dw, align 8, !noalias !1112
  %i.dy = mul i64 %i.dx, %.0485.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dy ; 4 uses
  %i.ea = load i32, ptr %i.dz, align 4, !noalias !1112
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dt, i64 144
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !1113 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dt, i64 160
  %i.ef = load i64, ptr %i.ee, align 8, !noalias !1113 ; 4 uses
  %i.eg = mul i64 %i.ef, %i.eb
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.eg
  %i.ei = load <4 x float>, ptr %i.eh, align 1, !noalias !1114 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.ek = load i32, ptr %i.ej, align 4, !noalias !1112
  %i.el = zext i32 %i.ek to i64
  %i.em = mul i64 %i.ef, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.em
  %i.eo = load <4 x float>, ptr %i.en, align 1, !noalias !1115 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eq = load i32, ptr %i.ep, align 4, !noalias !1112
  %i.er = zext i32 %i.eq to i64
  %i.es = mul i64 %i.ef, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.es
  %i.eu = load <4 x float>, ptr %i.et, align 1, !noalias !1116 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dz, i64 12
  %i.ew = load i32, ptr %i.ev, align 4, !noalias !1112
  %i.ex = zext i32 %i.ew to i64
  %i.ey = mul i64 %i.ef, %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ey
  %i.fa = load <4 x float>, ptr %i.ez, align 1, !noalias !1117 ; 2 uses
  %i.fb = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ei, <4 x float> %i.eo)
  %i.fc = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.eu, <4 x float> %i.fa)
  %i.fd = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fb, <4 x float> %i.fc)
  %i.fe = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ei, <4 x float> %i.eo)
  %i.ff = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.eu, <4 x float> %i.fa)
  %i.fg = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fe, <4 x float> %i.ff)
  %i.fh = trunc i64 %.0485.i to i32
  %i.fi = fadd <4 x float> %i.fd, %i.fg
  %i.fj = fsub <4 x float> %i.fi, %i.n
  %i.fk = fmul <4 x float> %i.p, %i.fj
  %i.fl = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.fk) ; 3 uses
  %i.fm = extractelement <4 x i32> %i.fl, i64 0
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.dq
  store i32 %i.fm, ptr %i.fn, align 4
  %.sroa.0224.4.vec.extract.i = extractelement <4 x i32> %i.fl, i64 1
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.dq
  store i32 %.sroa.0224.4.vec.extract.i, ptr %i.fo, align 4
  %.sroa.0224.8.vec.extract.i = extractelement <4 x i32> %i.fl, i64 2
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.dq
  store i32 %.sroa.0224.8.vec.extract.i, ptr %i.fp, align 4
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.dq
  store i32 %i.fh, ptr %i.fq, align 4
  %i.fr = add nsw i64 %i.dq, 1                    ; 5 uses
  %i.fs = add i64 %i.dr, 1                        ; 2 uses
  %i.ft = icmp eq i64 %i.fr, 4
  br i1 %i.ft, label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit.i.thread, label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit.i

_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit.i: ; preds = %.noexc10.i
  %i.fu = add nuw i64 %.0485.i, 1                 ; 2 uses
  %i.fv = icmp ult i64 %i.fu, %i.a
  br i1 %i.fv, label %.noexc10.i.backedge, label %_ZN6embree13bitInterleaveINS_9vint_implILi4EEEEET_RKS3_S5_S5_.exit101.i

.noexc10.i.backedge:                              ; preds = %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit.i, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit.i.thread
  %.0485.i.be = phi i64 [ %i.fu, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit.i ], [ %i.hy, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit.i.thread ]
  %.be = phi i64 [ %i.fr, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit.i ], [ 0, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit.i.thread ]
  br label %.noexc10.i, !llvm.loop !1106

_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit.i.thread: ; preds = %.noexc10.i
  %i.fw = load <2 x i64>, ptr %i.q, align 16, !noalias !1118 ; 2 uses
  %i.fx = load <2 x i64>, ptr %i.r, align 16, !noalias !1118 ; 2 uses
  %i.fy = load <2 x i64>, ptr %i.s, align 16, !noalias !1118 ; 2 uses
  %i.fz = bitcast <2 x i64> %i.fw to <4 x i32>
  %i.ga = shl <4 x i32> %i.fz, splat (i32 16)
  %i.gb = bitcast <4 x i32> %i.ga to <2 x i64>
  %i.gc = or <2 x i64> %i.fw, %i.gb
  %i.gd = and <2 x i64> %i.gc, splat (i64 216173877380776191) ; 2 uses
  %i.ge = bitcast <2 x i64> %i.gd to <4 x i32>
  %i.gf = shl <4 x i32> %i.ge, splat (i32 8)
  %i.gg = bitcast <4 x i32> %i.gf to <2 x i64>
  %i.gh = or disjoint <2 x i64> %i.gd, %i.gg
  %i.gi = and <2 x i64> %i.gh, splat (i64 216436729379352591) ; 2 uses
  %i.gj = bitcast <2 x i64> %i.gi to <4 x i32>
  %i.gk = shl nuw nsw <4 x i32> %i.gj, splat (i32 4)
  %i.gl = bitcast <4 x i32> %i.gk to <2 x i64>
  %i.gm = or disjoint <2 x i64> %i.gi, %i.gl
  %i.gn = and <2 x i64> %i.gm, splat (i64 219604095962198211) ; 2 uses
  %i.go = bitcast <2 x i64> %i.gn to <4 x i32>
  %i.gp = shl nuw nsw <4 x i32> %i.go, splat (i32 2)
  %i.gq = bitcast <4 x i32> %i.gp to <2 x i64>
  %i.gr = or disjoint <2 x i64> %i.gn, %i.gq
  %i.gs = and <2 x i64> %i.gr, splat (i64 658812287886594633)
  %i.gt = bitcast <2 x i64> %i.fx to <4 x i32>
  %i.gu = shl <4 x i32> %i.gt, splat (i32 16)
  %i.gv = bitcast <2 x i64> %i.fx to <4 x i32>
  %i.gw = or <4 x i32> %i.gu, %i.gv
  %i.gx = and <4 x i32> %i.gw, splat (i32 50331903) ; 2 uses
  %i.gy = shl <4 x i32> %i.gx, splat (i32 8)
  %i.gz = or disjoint <4 x i32> %i.gy, %i.gx
  %i.ha = and <4 x i32> %i.gz, splat (i32 50393103)
  %i.hb = mul nuw nsw <4 x i32> %i.ha, splat (i32 17)
  %i.hc = and <4 x i32> %i.hb, splat (i32 51130563)
  %i.hd = bitcast <2 x i64> %i.fy to <4 x i32>
  %i.he = shl <4 x i32> %i.hd, splat (i32 16)
  %i.hf = bitcast <2 x i64> %i.fy to <4 x i32>
  %i.hg = or <4 x i32> %i.he, %i.hf
  %i.hh = and <4 x i32> %i.hg, splat (i32 50331903) ; 2 uses
  %i.hi = shl <4 x i32> %i.hh, splat (i32 8)
  %i.hj = or disjoint <4 x i32> %i.hi, %i.hh
  %i.hk = and <4 x i32> %i.hj, splat (i32 50393103)
  %i.hl = mul nuw nsw <4 x i32> %i.hk, splat (i32 17)
  %i.hm = and <4 x i32> %i.hl, splat (i32 51130563)
  %i.hn = mul nuw nsw <4 x i32> %i.hc, splat (i32 10)
  %.inner28 = and <4 x i32> %i.hn, splat (i32 306783378)
  %i.ho = mul nuw nsw <4 x i32> %i.hm, splat (i32 20)
  %.inner29 = and <4 x i32> %i.ho, splat (i32 613566756)
  %.inner30 = or disjoint <4 x i32> %.inner29, %.inner28
  %i.hp = bitcast <4 x i32> %.inner30 to <2 x i64>
  %i.hq = or disjoint <2 x i64> %i.gs, %i.hp
  %i.hr = getelementptr [8 x i8], ptr %i.m, i64 %i.fs ; 2 uses
  %i.hs = getelementptr i8, ptr %i.hr, i64 -32
  %i.ht = bitcast <2 x i64> %i.hq to <4 x float>  ; 2 uses
  %i.hu = load <4 x float>, ptr %i.t, align 16, !noalias !1119 ; 2 uses
  %i.hv = shufflevector <4 x float> %i.ht, <4 x float> %i.hu, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.hv, ptr %i.hs, align 1
  %i.hw = getelementptr i8, ptr %i.hr, i64 -16
  %i.hx = shufflevector <4 x float> %i.ht, <4 x float> %i.hu, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.hx, ptr %i.hw, align 1
  %i.hy = add nuw i64 %.0485.i, 1                 ; 2 uses
  %i.hz = icmp ult i64 %i.hy, %i.a
  br i1 %i.hz, label %.noexc10.i.backedge, label %_ZZN6embree4sse221createMortonCodeArrayINS_8QuadMeshEEEmPT_RNS_8vector_tINS0_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS7_Lm8EEEEERNS_20BuildProgressMonitorEENKUlRKNS_5rangeImEEE0_clESH_.exit

_ZZN6embree4sse221createMortonCodeArrayINS_8QuadMeshEEEmPT_RNS_8vector_tINS0_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS7_Lm8EEEEERNS_20BuildProgressMonitorEENKUlRKNS_5rangeImEEE0_clESH_.exit: ; preds = %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit.i.thread, %bb.b, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ia = add i64 %i.c, %i.a
  %i.ib = lshr i64 %i.ia, 1                       ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_4sse221createMortonCodeArrayINS_8QuadMeshEEEmPT_RNS_8vector_tINS2_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS9_Lm8EEEEERNS_20BuildProgressMonitorEEUlRKNS_5rangeImEEE0_EEvS5_S5_S5_RKT0_PNS0_16TaskGroupContextE(i64 noundef %i.c, i64 noundef %i.ib, i64 noundef %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.ic, ptr noundef %i.ie)
  %i.if = load i64, ptr %0, align 8
  %i.ig = load i64, ptr %i.e, align 8
  %i.ih = load ptr, ptr %i.id, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_4sse221createMortonCodeArrayINS_8QuadMeshEEEmPT_RNS_8vector_tINS2_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS9_Lm8EEEEERNS_20BuildProgressMonitorEEUlRKNS_5rangeImEEE0_EEvS5_S5_S5_RKT0_PNS0_16TaskGroupContextE(i64 noundef %i.ib, i64 noundef %i.if, i64 noundef %i.ig, ptr noundef nonnull align 8 dereferenceable(24) %i.ic, ptr noundef %i.ih)
  tail call void @_ZN6embree13TaskScheduler4waitEv()
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZZN6embree4sse221createMortonCodeArrayINS_8QuadMeshEEEmPT_RNS_8vector_tINS0_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS7_Lm8EEEEERNS_20BuildProgressMonitorEENKUlRKNS_5rangeImEEE0_clESH_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_19parallel_prefix_sumImmZNS_4sse221createMortonCodeArrayINS_8QuadMeshEEEmPT_RNS_8vector_tINS4_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorISB_Lm8EEEEERNS_20BuildProgressMonitorEEUlRKNS_5rangeImEEmE_St4plusImEEET0_RNS_22ParallelPrefixSumStateISP_EES7_S7_S7_RKSP_RKT1_RKT2_EUlmE_EEvS7_SU_EUlSL_E_EEvS7_S7_S7_SU_PNS0_16TaskGroupContextE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.275, align 8            ; 9 uses
  %i.a = sub i64 %1, %0                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store i64 %1, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.e = load i64, ptr %3, align 8
  store i64 %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %4, ptr %i.f, align 8
  %i.g = tail call noundef ptr @_ZN6embree13TaskScheduler6threadEv() ; 7 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.l, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 262272 ; 5 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 8
  %i.k = icmp ugt i64 %i.j, 4095
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #19
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.u, %bb.i ], [ %i.l, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.m, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #18
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.f:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 786624 ; 2 uses
  %i.o = load i64, ptr %i.n, align 64             ; 4 uses
  %i.p = sub i64 0, %i.o
  %i.q = and i64 %i.p, 63                         ; 2 uses
  %i.r = add i64 %i.o, 48
  %i.s = add i64 %i.r, %i.q                       ; 2 uses
  %i.t = icmp ugt i64 %i.s, 524288
  br i1 %i.t, label %bb.g, label %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i

bb.g:                                             ; preds = %bb.f
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull @.str.1)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #19
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i: ; preds = %bb.f
  store i64 %i.s, ptr %i.n, align 64
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 262336
  %i.x = getelementptr i8, ptr %i.w, i64 %i.o
  %i.y = getelementptr i8, ptr %i.x, i64 %i.q     ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_12parallel_forImZNS_19parallel_prefix_sumImmZNS_4sse221createMortonCodeArrayINS_8QuadMeshEEEmPT_RNS_8vector_tINS5_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorISC_Lm8EEEEERNS_20BuildProgressMonitorEEUlRKNS_5rangeImEEmE_St4plusImEEET0_RNS_22ParallelPrefixSumStateISQ_EES8_S8_S8_RKSQ_RKT1_RKT2_EUlmE_EEvS8_SV_EUlSM_E_EEvS8_S8_S8_SV_PNS0_16TaskGroupContextEEUlvE_EE, i64 16), ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false)
  %i.aa = load atomic i64, ptr %i.i seq_cst, align 64
  %i.ab = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %i.aa ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 786688
  %i.ad = load ptr, ptr %i.ac, align 64           ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 1, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i8 1, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.y, ptr %i.ag, align 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.ad, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %4, ptr %i.ai, align 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store i64 %i.o, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store i64 %i.a, ptr %i.ak, align 16
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i, label %bb.j

end_hunk_3
begin_hunk_4_@_ZZN6embree4sse221createMortonCodeArrayINS_8QuadMeshEEEmPT_RNS_8vector_tINS0_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS7_Lm8EEEEERNS_20BuildProgressMonitorEENKUlRKNS_5rangeImEEmE_clESH_m:bb.a

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorD2Ev.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0.i540 = phi i64 [ %i.ed, %scalar.ph ], [ %.0.i540.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.0.i540
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = getelementptr [8 x i8], ptr %i.cg, i64 %.0.i540 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store i32 %i.dd, ptr %i.df, align 4
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0.i540
  %i.dh = load i32, ptr %i.dg, align 4
  store i32 %i.dh, ptr %i.de, align 8
  %i.di = add nuw nsw i64 %.0.i540, 1             ; 3 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = getelementptr [8 x i8], ptr %i.cg, i64 %i.di ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store i32 %i.dk, ptr %i.dm, align 4
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.di
  %i.do = load i32, ptr %i.dn, align 4
  store i32 %i.do, ptr %i.dl, align 8
  %i.dp = add nuw nsw i64 %.0.i540, 2             ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = getelementptr [8 x i8], ptr %i.cg, i64 %i.dp ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 %i.dr, ptr %i.dt, align 4
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dp
  %i.dv = load i32, ptr %i.du, align 4
  store i32 %i.dv, ptr %i.ds, align 8
  %i.dw = add nuw nsw i64 %.0.i540, 3             ; 3 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4
  %i.dz = getelementptr [8 x i8], ptr %i.cg, i64 %i.dw ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  store i32 %i.dy, ptr %i.ea, align 4
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dw
  %i.ec = load i32, ptr %i.eb, align 4
  store i32 %i.ec, ptr %i.dz, align 8
  %i.ed = add nuw nsw i64 %.0.i540, 4             ; 2 uses
  %exitcond543.not.3 = icmp eq i64 %i.ed, %i.lc
  br i1 %exitcond543.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1126

_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorD2Ev.exit: ; preds = %bb.a, %._crit_edge, %.loopexit
  %.0.lcssa560 = phi i64 [ %.1, %.loopexit ], [ %.1, %._crit_edge ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i64 %.0.lcssa560

.noexc221:                                        ; preds = %.noexc221.lr.ph, %_ZNK6embree8QuadMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread
  %.pre544 = phi i64 [ %i.p, %.noexc221.lr.ph ], [ %.pre545, %_ZNK6embree8QuadMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 9 uses
  %i.ee = phi i64 [ %i.p, %.noexc221.lr.ph ], [ %i.la, %_ZNK6embree8QuadMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 8 uses
  %.0537 = phi i64 [ 0, %.noexc221.lr.ph ], [ %.1, %_ZNK6embree8QuadMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 9 uses
  %.011536 = phi i64 [ %i.f, %.noexc221.lr.ph ], [ %i.ld, %_ZNK6embree8QuadMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 3 uses
  %i.ef = phi i64 [ 0, %.noexc221.lr.ph ], [ %i.lc, %_ZNK6embree8QuadMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 13 uses
  %i.eg = phi i64 [ 0, %.noexc221.lr.ph ], [ %i.lb, %_ZNK6embree8QuadMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 9 uses
  %i.eh = load ptr, ptr %i.r, align 8, !nonnull !28, !align !29
  %i.ei = load ptr, ptr %i.eh, align 8            ; 6 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 88
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 104
  %i.em = load i64, ptr %i.el, align 8
  %i.en = mul i64 %i.em, %.011536
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.en ; 4 uses
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = zext i32 %i.ep to i64                   ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ei, i64 224
  %i.es = load ptr, ptr %i.er, align 8            ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.eu = load i64, ptr %i.et, align 8            ; 4 uses
  %.not.i219 = icmp ugt i64 %i.eu, %i.eq
  br i1 %.not.i219, label %bb.b, label %_ZNK6embree8QuadMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread, !prof !26

bb.b:                                             ; preds = %.noexc221
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.ew = load i32, ptr %i.ev, align 4
  %i.ex = zext i32 %i.ew to i64                   ; 3 uses
  %.not26.i = icmp ugt i64 %i.eu, %i.ex
  br i1 %.not26.i, label %bb.c, label %_ZNK6embree8QuadMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.ez = load i32, ptr %i.ey, align 4
  %i.fa = zext i32 %i.ez to i64                   ; 3 uses
  %.not27.i = icmp ugt i64 %i.eu, %i.fa
  br i1 %.not27.i, label %bb.d, label %_ZNK6embree8QuadMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread, !prof !26

bb.d:                                             ; preds = %bb.c
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  %i.fc = load i32, ptr %i.fb, align 4
  %i.fd = zext i32 %i.fc to i64                   ; 3 uses
  %.not28.i = icmp ugt i64 %i.eu, %i.fd
  br i1 %.not28.i, label %.preheader, label %_ZNK6embree8QuadMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread, !prof !26

.preheader:                                       ; preds = %bb.d
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ei, i64 36
  %i.ff = load i32, ptr %i.fe, align 4            ; 2 uses
  %i.fg = zext i32 %i.ff to i64
  %.not29.i532.not = icmp eq i32 %i.ff, 0
  br i1 %.not29.i532.not, label %.noexc15, label %.noexc225

bb.e:                                             ; preds = %bb.h
  %i.fh = add nuw nsw i64 %.0.i220533, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.fh, %i.fg
  br i1 %exitcond.not, label %.noexc15, label %.noexc225, !llvm.loop !2

.noexc225:                                        ; preds = %.preheader, %bb.e
  %.0.i220533 = phi i64 [ %i.fh, %bb.e ], [ 0, %.preheader ] ; 2 uses
  %i.fi = getelementptr inbounds nuw [56 x i8], ptr %i.es, i64 %.0.i220533 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !1181 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fl = load i64, ptr %i.fk, align 8, !noalias !1181 ; 4 uses
  %i.fm = mul i64 %i.fl, %i.eq
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fm
  %i.fo = load <4 x float>, ptr %i.fn, align 1, !noalias !1182 ; 2 uses
  %i.fp = mul i64 %i.fl, %i.fa
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fp
  %i.fr = load <4 x float>, ptr %i.fq, align 1, !noalias !1183 ; 2 uses
  %i.fs = mul i64 %i.fl, %i.fd
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fs
  %i.fu = load <4 x float>, ptr %i.ft, align 1, !noalias !1184 ; 2 uses
  %i.fv = fcmp ugt <4 x float> %i.fo, splat (float -1.844000e+18)
  %i.fw = fcmp olt <4 x float> %i.fo, splat (float 1.844000e+18)
  %i.fx = and <4 x i1> %i.fv, %i.fw
  %i.fy = bitcast <4 x i1> %i.fx to i4
  %i.fz = and i4 %i.fy, 7
  %i.ga = icmp eq i4 %i.fz, 7
  br i1 %i.ga, label %bb.f, label %_ZNK6embree8QuadMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread, !prof !24

bb.f:                                             ; preds = %.noexc225
  %i.gb = mul i64 %i.fl, %i.ex
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.gb
  %i.gd = load <4 x float>, ptr %i.gc, align 1, !noalias !1185 ; 2 uses
  %i.ge = fcmp ugt <4 x float> %i.gd, splat (float -1.844000e+18)
  %i.gf = fcmp olt <4 x float> %i.gd, splat (float 1.844000e+18)
  %i.gg = and <4 x i1> %i.ge, %i.gf
  %i.gh = bitcast <4 x i1> %i.gg to i4
  %i.gi = and i4 %i.gh, 7
  %i.gj = icmp eq i4 %i.gi, 7
  br i1 %i.gj, label %bb.g, label %_ZNK6embree8QuadMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread, !prof !24

bb.g:                                             ; preds = %bb.f
  %i.gk = fcmp ugt <4 x float> %i.fr, splat (float -1.844000e+18)
  %i.gl = fcmp olt <4 x float> %i.fr, splat (float 1.844000e+18)
  %i.gm = and <4 x i1> %i.gk, %i.gl
  %i.gn = bitcast <4 x i1> %i.gm to i4
  %i.go = and i4 %i.gn, 7
  %i.gp = icmp eq i4 %i.go, 7
  br i1 %i.gp, label %bb.h, label %_ZNK6embree8QuadMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread, !prof !24

bb.h:                                             ; preds = %bb.g
  %i.gq = fcmp ugt <4 x float> %i.fu, splat (float -1.844000e+18)
  %i.gr = fcmp olt <4 x float> %i.fu, splat (float 1.844000e+18)
  %i.gs = and <4 x i1> %i.gq, %i.gr
  %i.gt = bitcast <4 x i1> %i.gs to i4
  %i.gu = and i4 %i.gt, 7
  %.not = icmp eq i4 %i.gu, 7
  br i1 %.not, label %bb.e, label %_ZNK6embree8QuadMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread, !prof !26

.noexc15:                                         ; preds = %bb.e, %.preheader
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ei, i64 144
  %i.gw = load ptr, ptr %i.gv, align 8, !noalias !1186 ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ei, i64 160
  %i.gy = load i64, ptr %i.gx, align 8, !noalias !1186 ; 4 uses
  %i.gz = mul i64 %i.gy, %i.eq
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.gz
  %i.hb = load <4 x float>, ptr %i.ha, align 1, !noalias !1187 ; 2 uses
  %i.hc = mul i64 %i.gy, %i.ex
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.hc
  %i.he = load <4 x float>, ptr %i.hd, align 1, !noalias !1188 ; 2 uses
  %i.hf = mul i64 %i.gy, %i.fa
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.hf
  %i.hh = load <4 x float>, ptr %i.hg, align 1, !noalias !1189 ; 2 uses
  %i.hi = mul i64 %i.gy, %i.fd
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.hi
  %i.hk = load <4 x float>, ptr %i.hj, align 1, !noalias !1190 ; 2 uses
  %i.hl = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.hb, <4 x float> %i.he)
  %i.hm = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.hh, <4 x float> %i.hk)
  %i.hn = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.hl, <4 x float> %i.hm)
  %i.ho = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.hb, <4 x float> %i.he)
  %i.hp = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.hh, <4 x float> %i.hk)
  %i.hq = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ho, <4 x float> %i.hp)
  %i.hr = trunc i64 %.011536 to i32
  %i.hs = fadd <4 x float> %i.hn, %i.hq
  %i.ht = fsub <4 x float> %i.hs, %i.h
  %i.hu = fmul <4 x float> %i.j, %i.ht
  %i.hv = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.hu) ; 3 uses
  %i.hw = extractelement <4 x i32> %i.hv, i64 0
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ef
  store i32 %i.hw, ptr %i.hx, align 4
  %.sroa.0237.4.vec.extract = extractelement <4 x i32> %i.hv, i64 1
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ef
  store i32 %.sroa.0237.4.vec.extract, ptr %i.hy, align 4
  %.sroa.0237.8.vec.extract = extractelement <4 x i32> %i.hv, i64 2
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ef
  store i32 %.sroa.0237.8.vec.extract, ptr %i.hz, align 4
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ef
  store i32 %i.hr, ptr %i.ia, align 4
  %i.ib = add nsw i64 %i.ef, 1                    ; 2 uses
  %i.ic = add i64 %i.eg, 1                        ; 2 uses
  %i.id = icmp eq i64 %i.ib, 4
  br i1 %i.id, label %.noexc20, label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit

.noexc20:                                         ; preds = %.noexc15
  %i.ie = load <2 x i64>, ptr %i.k, align 16, !noalias !1191 ; 2 uses
  %i.if = load <2 x i64>, ptr %i.l, align 16, !noalias !1191 ; 2 uses
  %i.ig = load <2 x i64>, ptr %i.m, align 16, !noalias !1191 ; 2 uses
  %i.ih = bitcast <2 x i64> %i.ie to <4 x i32>
  %i.ii = shl <4 x i32> %i.ih, splat (i32 16)
  %i.ij = bitcast <4 x i32> %i.ii to <2 x i64>
  %i.ik = or <2 x i64> %i.ie, %i.ij
  %i.il = and <2 x i64> %i.ik, splat (i64 216173877380776191) ; 2 uses
  %i.im = bitcast <2 x i64> %i.il to <4 x i32>
  %i.in = shl <4 x i32> %i.im, splat (i32 8)
  %i.io = bitcast <4 x i32> %i.in to <2 x i64>
  %i.ip = or disjoint <2 x i64> %i.il, %i.io
  %i.iq = and <2 x i64> %i.ip, splat (i64 216436729379352591) ; 2 uses
  %i.ir = bitcast <2 x i64> %i.iq to <4 x i32>
  %i.is = shl nuw nsw <4 x i32> %i.ir, splat (i32 4)
  %i.it = bitcast <4 x i32> %i.is to <2 x i64>
  %i.iu = or disjoint <2 x i64> %i.iq, %i.it
  %i.iv = and <2 x i64> %i.iu, splat (i64 219604095962198211) ; 2 uses
  %i.iw = bitcast <2 x i64> %i.iv to <4 x i32>
  %i.ix = shl nuw nsw <4 x i32> %i.iw, splat (i32 2)
  %i.iy = bitcast <4 x i32> %i.ix to <2 x i64>
  %i.iz = or disjoint <2 x i64> %i.iv, %i.iy
  %i.ja = and <2 x i64> %i.iz, splat (i64 658812287886594633)
  %i.jb = bitcast <2 x i64> %i.if to <4 x i32>
  %i.jc = shl <4 x i32> %i.jb, splat (i32 16)
  %i.jd = bitcast <4 x i32> %i.jc to <2 x i64>
  %i.je = or <2 x i64> %i.if, %i.jd
  %i.jf = and <2 x i64> %i.je, splat (i64 216173877380776191) ; 2 uses
  %i.jg = bitcast <2 x i64> %i.jf to <4 x i32>
  %i.jh = shl <4 x i32> %i.jg, splat (i32 8)
  %i.ji = bitcast <4 x i32> %i.jh to <2 x i64>
  %i.jj = or disjoint <2 x i64> %i.jf, %i.ji
  %i.jk = and <2 x i64> %i.jj, splat (i64 216436729379352591) ; 2 uses
  %i.jl = bitcast <2 x i64> %i.jk to <4 x i32>
  %i.jm = shl nuw nsw <4 x i32> %i.jl, splat (i32 4)
  %i.jn = bitcast <2 x i64> %i.jk to <4 x i32>
  %i.jo = or disjoint <4 x i32> %i.jm, %i.jn
  %i.jp = and <4 x i32> %i.jo, splat (i32 51130563) ; 2 uses
  %i.jq = bitcast <2 x i64> %i.ig to <4 x i32>
  %i.jr = shl <4 x i32> %i.jq, splat (i32 16)
  %i.js = bitcast <4 x i32> %i.jr to <2 x i64>
  %i.jt = or <2 x i64> %i.ig, %i.js
  %i.ju = and <2 x i64> %i.jt, splat (i64 216173877380776191) ; 2 uses
  %i.jv = bitcast <2 x i64> %i.ju to <4 x i32>
  %i.jw = shl <4 x i32> %i.jv, splat (i32 8)
  %i.jx = bitcast <4 x i32> %i.jw to <2 x i64>
  %i.jy = or disjoint <2 x i64> %i.ju, %i.jx
  %i.jz = and <2 x i64> %i.jy, splat (i64 216436729379352591) ; 2 uses
  %i.ka = bitcast <2 x i64> %i.jz to <4 x i32>
  %i.kb = shl nuw nsw <4 x i32> %i.ka, splat (i32 4)
  %i.kc = bitcast <2 x i64> %i.jz to <4 x i32>
  %i.kd = or disjoint <4 x i32> %i.kb, %i.kc
  %i.ke = and <4 x i32> %i.kd, splat (i32 51130563) ; 2 uses
  %i.kf = shl nuw nsw <4 x i32> %i.jp, splat (i32 3)
  %i.kg = shl nuw nsw <4 x i32> %i.jp, splat (i32 1)
  %i.kh = or disjoint <4 x i32> %i.kf, %i.kg
  %i.ki = bitcast <4 x i32> %i.kh to <2 x i64>
  %i.kj = and <2 x i64> %i.ki, splat (i64 1317624575773189266)
  %i.kk = or disjoint <2 x i64> %i.kj, %i.ja
  %i.kl = shl nuw nsw <4 x i32> %i.ke, splat (i32 4)
  %i.km = shl nuw nsw <4 x i32> %i.ke, splat (i32 2)
  %i.kn = or disjoint <4 x i32> %i.kl, %i.km
  %i.ko = bitcast <4 x i32> %i.kn to <2 x i64>
  %i.kp = and <2 x i64> %i.ko, splat (i64 2635249151546378532)
  %i.kq = or disjoint <2 x i64> %i.kk, %i.kp
  %i.kr = getelementptr [8 x i8], ptr %i.g, i64 %i.ic ; 2 uses
  %i.ks = getelementptr i8, ptr %i.kr, i64 -32
  %i.kt = bitcast <2 x i64> %i.kq to <4 x float>  ; 2 uses
  %i.ku = load <4 x float>, ptr %i.n, align 16, !noalias !1192 ; 2 uses
  %i.kv = shufflevector <4 x float> %i.kt, <4 x float> %i.ku, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.kv, ptr %i.ks, align 1
  %i.kw = getelementptr i8, ptr %i.kr, i64 -16
  %i.kx = shufflevector <4 x float> %i.kt, <4 x float> %i.ku, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.kx, ptr %i.kw, align 1
  %.pre.pre = load i64, ptr %i.o, align 8
  br label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit

_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit: ; preds = %.noexc20, %.noexc15
  %.pre = phi i64 [ %.pre.pre, %.noexc20 ], [ %.pre544, %.noexc15 ] ; 2 uses
  %i.ky = phi i64 [ 0, %.noexc20 ], [ %i.ib, %.noexc15 ]
  %i.kz = add i64 %.0537, 1
  br label %_ZNK6embree8QuadMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread

_ZNK6embree8QuadMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread: ; preds = %bb.h, %bb.g, %bb.f, %.noexc225, %bb.d, %bb.c, %bb.b, %.noexc221, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit
  %.pre545 = phi i64 [ %.pre, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %.pre544, %.noexc221 ], [ %.pre544, %bb.b ], [ %.pre544, %bb.c ], [ %.pre544, %bb.d ], [ %.pre544, %.noexc225 ], [ %.pre544, %bb.f ], [ %.pre544, %bb.g ], [ %.pre544, %bb.h ]
  %i.la = phi i64 [ %.pre, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %i.ee, %.noexc221 ], [ %i.ee, %bb.b ], [ %i.ee, %bb.c ], [ %i.ee, %bb.d ], [ %i.ee, %.noexc225 ], [ %i.ee, %bb.f ], [ %i.ee, %bb.g ], [ %i.ee, %bb.h ] ; 2 uses
  %i.lb = phi i64 [ %i.ic, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %i.eg, %.noexc221 ], [ %i.eg, %bb.b ], [ %i.eg, %bb.c ], [ %i.eg, %bb.d ], [ %i.eg, %.noexc225 ], [ %i.eg, %bb.f ], [ %i.eg, %bb.g ], [ %i.eg, %bb.h ] ; 2 uses
  %i.lc = phi i64 [ %i.ky, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %i.ef, %.noexc221 ], [ %i.ef, %bb.b ], [ %i.ef, %bb.c ], [ %i.ef, %bb.d ], [ %i.ef, %.noexc225 ], [ %i.ef, %bb.f ], [ %i.ef, %bb.g ], [ %i.ef, %bb.h ] ; 10 uses
  %.1 = phi i64 [ %i.kz, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %.0537, %.noexc221 ], [ %.0537, %bb.b ], [ %.0537, %bb.c ], [ %.0537, %bb.d ], [ %.0537, %.noexc225 ], [ %.0537, %bb.f ], [ %.0537, %bb.g ], [ %.0537, %bb.h ] ; 3 uses
  %i.ld = add nuw i64 %.011536, 1                 ; 2 uses
  %i.le = icmp ult i64 %i.ld, %i.la
  br i1 %i.le, label %.noexc221, label %._crit_edge, !llvm.loop !1179
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_19parallel_prefix_sumImmZNS_4sse221createMortonCodeArrayINS_8QuadMeshEEEmPT_RNS_8vector_tINS4_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorISB_Lm8EEEEERNS_20BuildProgressMonitorEEUlRKNS_5rangeImEEmE0_St4plusImEEET0_RNS_22ParallelPrefixSumStateISP_EES7_S7_S7_RKSP_RKT1_RKT2_EUlmE_EEvS7_SU_EUlSL_E_EEvS7_S7_S7_SU_PNS0_16TaskGroupContextE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.279, align 8            ; 9 uses
  %i.a = sub i64 %1, %0                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store i64 %1, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.e = load i64, ptr %3, align 8
  store i64 %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %4, ptr %i.f, align 8
  %i.g = tail call noundef ptr @_ZN6embree13TaskScheduler6threadEv() ; 7 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.l, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 262272 ; 5 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 8
  %i.k = icmp ugt i64 %i.j, 4095
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #19
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.u, %bb.i ], [ %i.l, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.m, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #18
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.f:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 786624 ; 2 uses
  %i.o = load i64, ptr %i.n, align 64             ; 4 uses
  %i.p = sub i64 0, %i.o
  %i.q = and i64 %i.p, 63                         ; 2 uses
  %i.r = add i64 %i.o, 48
  %i.s = add i64 %i.r, %i.q                       ; 2 uses
  %i.t = icmp ugt i64 %i.s, 524288
  br i1 %i.t, label %bb.g, label %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i

bb.g:                                             ; preds = %bb.f
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull @.str.1)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #19
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i: ; preds = %bb.f
  store i64 %i.s, ptr %i.n, align 64
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 262336
  %i.x = getelementptr i8, ptr %i.w, i64 %i.o
  %i.y = getelementptr i8, ptr %i.x, i64 %i.q     ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_12parallel_forImZNS_19parallel_prefix_sumImmZNS_4sse221createMortonCodeArrayINS_8QuadMeshEEEmPT_RNS_8vector_tINS5_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorISC_Lm8EEEEERNS_20BuildProgressMonitorEEUlRKNS_5rangeImEEmE0_St4plusImEEET0_RNS_22ParallelPrefixSumStateISQ_EES8_S8_S8_RKSQ_RKT1_RKT2_EUlmE_EEvS8_SV_EUlSM_E_EEvS8_S8_S8_SV_PNS0_16TaskGroupContextEEUlvE_EE, i64 16), ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false)
  %i.aa = load atomic i64, ptr %i.i seq_cst, align 64
  %i.ab = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %i.aa ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 786688
  %i.ad = load ptr, ptr %i.ac, align 64           ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 1, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i8 1, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.y, ptr %i.ag, align 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.ad, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %4, ptr %i.ai, align 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store i64 %i.o, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store i64 %i.a, ptr %i.ak, align 16
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i
end_hunk_4
begin_hunk_5_@_ZZN6embree4sse221createMortonCodeArrayINS_8QuadMeshEEEmPT_RNS_8vector_tINS0_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS7_Lm8EEEEERNS_20BuildProgressMonitorEENKUlRKNS_5rangeImEEmE0_clESH_m:bb.a

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorD2Ev.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0.i541 = phi i64 [ %i.ed, %scalar.ph ], [ %.0.i541.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.0.i541
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = getelementptr [8 x i8], ptr %i.cg, i64 %.0.i541 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store i32 %i.dd, ptr %i.df, align 4
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0.i541
  %i.dh = load i32, ptr %i.dg, align 4
  store i32 %i.dh, ptr %i.de, align 8
  %i.di = add nuw nsw i64 %.0.i541, 1             ; 3 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = getelementptr [8 x i8], ptr %i.cg, i64 %i.di ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store i32 %i.dk, ptr %i.dm, align 4
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.di
  %i.do = load i32, ptr %i.dn, align 4
  store i32 %i.do, ptr %i.dl, align 8
  %i.dp = add nuw nsw i64 %.0.i541, 2             ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = getelementptr [8 x i8], ptr %i.cg, i64 %i.dp ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 %i.dr, ptr %i.dt, align 4
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dp
  %i.dv = load i32, ptr %i.du, align 4
  store i32 %i.dv, ptr %i.ds, align 8
  %i.dw = add nuw nsw i64 %.0.i541, 3             ; 3 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4
  %i.dz = getelementptr [8 x i8], ptr %i.cg, i64 %i.dw ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  store i32 %i.dy, ptr %i.ea, align 4
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dw
  %i.ec = load i32, ptr %i.eb, align 4
  store i32 %i.ec, ptr %i.dz, align 8
  %i.ed = add nuw nsw i64 %.0.i541, 4             ; 2 uses
  %exitcond544.not.3 = icmp eq i64 %i.ed, %i.lc
  br i1 %exitcond544.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1199

_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorD2Ev.exit: ; preds = %bb.a, %._crit_edge, %.loopexit
  %.0.lcssa561 = phi i64 [ %.1, %.loopexit ], [ %.1, %._crit_edge ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i64 %.0.lcssa561

.noexc221:                                        ; preds = %.noexc221.lr.ph, %_ZNK6embree8QuadMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread
  %.pre545 = phi i64 [ %i.p, %.noexc221.lr.ph ], [ %.pre546, %_ZNK6embree8QuadMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 9 uses
  %i.ee = phi i64 [ %i.p, %.noexc221.lr.ph ], [ %i.la, %_ZNK6embree8QuadMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 8 uses
  %.0538 = phi i64 [ 0, %.noexc221.lr.ph ], [ %.1, %_ZNK6embree8QuadMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 9 uses
  %.011536 = phi i64 [ %i.n, %.noexc221.lr.ph ], [ %i.ld, %_ZNK6embree8QuadMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 3 uses
  %i.ef = phi i64 [ 0, %.noexc221.lr.ph ], [ %i.lc, %_ZNK6embree8QuadMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 13 uses
  %i.eg = phi i64 [ 0, %.noexc221.lr.ph ], [ %i.lb, %_ZNK6embree8QuadMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 9 uses
  %i.eh = load ptr, ptr %i.r, align 8, !nonnull !28, !align !29
  %i.ei = load ptr, ptr %i.eh, align 8            ; 6 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 88
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 104
  %i.em = load i64, ptr %i.el, align 8
  %i.en = mul i64 %i.em, %.011536
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.en ; 4 uses
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = zext i32 %i.ep to i64                   ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ei, i64 224
  %i.es = load ptr, ptr %i.er, align 8            ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.eu = load i64, ptr %i.et, align 8            ; 4 uses
  %.not.i219 = icmp ugt i64 %i.eu, %i.eq
  br i1 %.not.i219, label %bb.b, label %_ZNK6embree8QuadMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread

bb.b:                                             ; preds = %.noexc221
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.ew = load i32, ptr %i.ev, align 4
  %i.ex = zext i32 %i.ew to i64                   ; 3 uses
  %.not26.i = icmp ugt i64 %i.eu, %i.ex
  br i1 %.not26.i, label %bb.c, label %_ZNK6embree8QuadMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.ez = load i32, ptr %i.ey, align 4
  %i.fa = zext i32 %i.ez to i64                   ; 3 uses
  %.not27.i = icmp ugt i64 %i.eu, %i.fa
  br i1 %.not27.i, label %bb.d, label %_ZNK6embree8QuadMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  %i.fc = load i32, ptr %i.fb, align 4
  %i.fd = zext i32 %i.fc to i64                   ; 3 uses
  %.not28.i = icmp ugt i64 %i.eu, %i.fd
  br i1 %.not28.i, label %.preheader, label %_ZNK6embree8QuadMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread

.preheader:                                       ; preds = %bb.d
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ei, i64 36
  %i.ff = load i32, ptr %i.fe, align 4            ; 2 uses
  %i.fg = zext i32 %i.ff to i64
  %.not29.i532.not = icmp eq i32 %i.ff, 0
  br i1 %.not29.i532.not, label %.noexc15, label %.noexc225

bb.e:                                             ; preds = %bb.h
  %i.fh = add nuw nsw i64 %.0.i220533, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.fh, %i.fg
  br i1 %exitcond.not, label %.noexc15, label %.noexc225, !llvm.loop !2

.noexc225:                                        ; preds = %.preheader, %bb.e
  %.0.i220533 = phi i64 [ %i.fh, %bb.e ], [ 0, %.preheader ] ; 2 uses
  %i.fi = getelementptr inbounds nuw [56 x i8], ptr %i.es, i64 %.0.i220533 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !1254 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fl = load i64, ptr %i.fk, align 8, !noalias !1254 ; 4 uses
  %i.fm = mul i64 %i.fl, %i.eq
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fm
  %i.fo = load <4 x float>, ptr %i.fn, align 1, !noalias !1255 ; 2 uses
  %i.fp = mul i64 %i.fl, %i.fa
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fp
  %i.fr = load <4 x float>, ptr %i.fq, align 1, !noalias !1256 ; 2 uses
  %i.fs = mul i64 %i.fl, %i.fd
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fs
  %i.fu = load <4 x float>, ptr %i.ft, align 1, !noalias !1257 ; 2 uses
  %i.fv = fcmp ugt <4 x float> %i.fo, splat (float -1.844000e+18)
  %i.fw = fcmp olt <4 x float> %i.fo, splat (float 1.844000e+18)
  %i.fx = and <4 x i1> %i.fv, %i.fw
  %i.fy = bitcast <4 x i1> %i.fx to i4
  %i.fz = and i4 %i.fy, 7
  %i.ga = icmp eq i4 %i.fz, 7
  br i1 %i.ga, label %bb.f, label %_ZNK6embree8QuadMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread, !prof !24

bb.f:                                             ; preds = %.noexc225
  %i.gb = mul i64 %i.fl, %i.ex
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.gb
  %i.gd = load <4 x float>, ptr %i.gc, align 1, !noalias !1258 ; 2 uses
  %i.ge = fcmp ugt <4 x float> %i.gd, splat (float -1.844000e+18)
  %i.gf = fcmp olt <4 x float> %i.gd, splat (float 1.844000e+18)
  %i.gg = and <4 x i1> %i.ge, %i.gf
  %i.gh = bitcast <4 x i1> %i.gg to i4
  %i.gi = and i4 %i.gh, 7
  %i.gj = icmp eq i4 %i.gi, 7
  br i1 %i.gj, label %bb.g, label %_ZNK6embree8QuadMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread, !prof !24

bb.g:                                             ; preds = %bb.f
  %i.gk = fcmp ugt <4 x float> %i.fr, splat (float -1.844000e+18)
  %i.gl = fcmp olt <4 x float> %i.fr, splat (float 1.844000e+18)
  %i.gm = and <4 x i1> %i.gk, %i.gl
  %i.gn = bitcast <4 x i1> %i.gm to i4
  %i.go = and i4 %i.gn, 7
  %i.gp = icmp eq i4 %i.go, 7
  br i1 %i.gp, label %bb.h, label %_ZNK6embree8QuadMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread, !prof !24

bb.h:                                             ; preds = %bb.g
  %i.gq = fcmp ugt <4 x float> %i.fu, splat (float -1.844000e+18)
  %i.gr = fcmp olt <4 x float> %i.fu, splat (float 1.844000e+18)
  %i.gs = and <4 x i1> %i.gq, %i.gr
  %i.gt = bitcast <4 x i1> %i.gs to i4
  %i.gu = and i4 %i.gt, 7
  %.not = icmp eq i4 %i.gu, 7
  br i1 %.not, label %bb.e, label %_ZNK6embree8QuadMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread

.noexc15:                                         ; preds = %bb.e, %.preheader
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ei, i64 144
  %i.gw = load ptr, ptr %i.gv, align 8, !noalias !1259 ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ei, i64 160
  %i.gy = load i64, ptr %i.gx, align 8, !noalias !1259 ; 4 uses
  %i.gz = mul i64 %i.gy, %i.eq
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.gz
  %i.hb = load <4 x float>, ptr %i.ha, align 1, !noalias !1260 ; 2 uses
  %i.hc = mul i64 %i.gy, %i.ex
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.hc
  %i.he = load <4 x float>, ptr %i.hd, align 1, !noalias !1261 ; 2 uses
  %i.hf = mul i64 %i.gy, %i.fa
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.hf
  %i.hh = load <4 x float>, ptr %i.hg, align 1, !noalias !1262 ; 2 uses
  %i.hi = mul i64 %i.gy, %i.fd
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.hi
  %i.hk = load <4 x float>, ptr %i.hj, align 1, !noalias !1263 ; 2 uses
  %i.hl = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.hb, <4 x float> %i.he)
  %i.hm = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.hh, <4 x float> %i.hk)
  %i.hn = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.hl, <4 x float> %i.hm)
  %i.ho = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.hb, <4 x float> %i.he)
  %i.hp = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.hh, <4 x float> %i.hk)
  %i.hq = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ho, <4 x float> %i.hp)
  %i.hr = trunc i64 %.011536 to i32
  %i.hs = fadd <4 x float> %i.hn, %i.hq
  %i.ht = fsub <4 x float> %i.hs, %i.g
  %i.hu = fmul <4 x float> %i.i, %i.ht
  %i.hv = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.hu) ; 3 uses
  %i.hw = extractelement <4 x i32> %i.hv, i64 0
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ef
  store i32 %i.hw, ptr %i.hx, align 4
  %.sroa.0237.4.vec.extract = extractelement <4 x i32> %i.hv, i64 1
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ef
  store i32 %.sroa.0237.4.vec.extract, ptr %i.hy, align 4
  %.sroa.0237.8.vec.extract = extractelement <4 x i32> %i.hv, i64 2
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ef
  store i32 %.sroa.0237.8.vec.extract, ptr %i.hz, align 4
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ef
  store i32 %i.hr, ptr %i.ia, align 4
  %i.ib = add nsw i64 %i.ef, 1                    ; 2 uses
  %i.ic = add i64 %i.eg, 1                        ; 2 uses
  %i.id = icmp eq i64 %i.ib, 4
  br i1 %i.id, label %.noexc20, label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit

.noexc20:                                         ; preds = %.noexc15
  %i.ie = load <2 x i64>, ptr %i.j, align 16, !noalias !1264 ; 2 uses
  %i.if = load <2 x i64>, ptr %i.k, align 16, !noalias !1264 ; 2 uses
  %i.ig = load <2 x i64>, ptr %i.l, align 16, !noalias !1264 ; 2 uses
  %i.ih = bitcast <2 x i64> %i.ie to <4 x i32>
  %i.ii = shl <4 x i32> %i.ih, splat (i32 16)
  %i.ij = bitcast <4 x i32> %i.ii to <2 x i64>
  %i.ik = or <2 x i64> %i.ie, %i.ij
  %i.il = and <2 x i64> %i.ik, splat (i64 216173877380776191) ; 2 uses
  %i.im = bitcast <2 x i64> %i.il to <4 x i32>
  %i.in = shl <4 x i32> %i.im, splat (i32 8)
  %i.io = bitcast <4 x i32> %i.in to <2 x i64>
  %i.ip = or disjoint <2 x i64> %i.il, %i.io
  %i.iq = and <2 x i64> %i.ip, splat (i64 216436729379352591) ; 2 uses
  %i.ir = bitcast <2 x i64> %i.iq to <4 x i32>
  %i.is = shl nuw nsw <4 x i32> %i.ir, splat (i32 4)
  %i.it = bitcast <4 x i32> %i.is to <2 x i64>
  %i.iu = or disjoint <2 x i64> %i.iq, %i.it
  %i.iv = and <2 x i64> %i.iu, splat (i64 219604095962198211) ; 2 uses
  %i.iw = bitcast <2 x i64> %i.iv to <4 x i32>
  %i.ix = shl nuw nsw <4 x i32> %i.iw, splat (i32 2)
  %i.iy = bitcast <4 x i32> %i.ix to <2 x i64>
  %i.iz = or disjoint <2 x i64> %i.iv, %i.iy
  %i.ja = and <2 x i64> %i.iz, splat (i64 658812287886594633)
  %i.jb = bitcast <2 x i64> %i.if to <4 x i32>
  %i.jc = shl <4 x i32> %i.jb, splat (i32 16)
  %i.jd = bitcast <4 x i32> %i.jc to <2 x i64>
  %i.je = or <2 x i64> %i.if, %i.jd
  %i.jf = and <2 x i64> %i.je, splat (i64 216173877380776191) ; 2 uses
  %i.jg = bitcast <2 x i64> %i.jf to <4 x i32>
  %i.jh = shl <4 x i32> %i.jg, splat (i32 8)
  %i.ji = bitcast <4 x i32> %i.jh to <2 x i64>
  %i.jj = or disjoint <2 x i64> %i.jf, %i.ji
  %i.jk = and <2 x i64> %i.jj, splat (i64 216436729379352591) ; 2 uses
  %i.jl = bitcast <2 x i64> %i.jk to <4 x i32>
  %i.jm = shl nuw nsw <4 x i32> %i.jl, splat (i32 4)
  %i.jn = bitcast <2 x i64> %i.jk to <4 x i32>
  %i.jo = or disjoint <4 x i32> %i.jm, %i.jn
  %i.jp = and <4 x i32> %i.jo, splat (i32 51130563) ; 2 uses
  %i.jq = bitcast <2 x i64> %i.ig to <4 x i32>
  %i.jr = shl <4 x i32> %i.jq, splat (i32 16)
  %i.js = bitcast <4 x i32> %i.jr to <2 x i64>
  %i.jt = or <2 x i64> %i.ig, %i.js
  %i.ju = and <2 x i64> %i.jt, splat (i64 216173877380776191) ; 2 uses
  %i.jv = bitcast <2 x i64> %i.ju to <4 x i32>
  %i.jw = shl <4 x i32> %i.jv, splat (i32 8)
  %i.jx = bitcast <4 x i32> %i.jw to <2 x i64>
  %i.jy = or disjoint <2 x i64> %i.ju, %i.jx
  %i.jz = and <2 x i64> %i.jy, splat (i64 216436729379352591) ; 2 uses
  %i.ka = bitcast <2 x i64> %i.jz to <4 x i32>
  %i.kb = shl nuw nsw <4 x i32> %i.ka, splat (i32 4)
  %i.kc = bitcast <2 x i64> %i.jz to <4 x i32>
  %i.kd = or disjoint <4 x i32> %i.kb, %i.kc
  %i.ke = and <4 x i32> %i.kd, splat (i32 51130563) ; 2 uses
  %i.kf = shl nuw nsw <4 x i32> %i.jp, splat (i32 3)
  %i.kg = shl nuw nsw <4 x i32> %i.jp, splat (i32 1)
  %i.kh = or disjoint <4 x i32> %i.kf, %i.kg
  %i.ki = bitcast <4 x i32> %i.kh to <2 x i64>
  %i.kj = and <2 x i64> %i.ki, splat (i64 1317624575773189266)
  %i.kk = or disjoint <2 x i64> %i.kj, %i.ja
  %i.kl = shl nuw nsw <4 x i32> %i.ke, splat (i32 4)
  %i.km = shl nuw nsw <4 x i32> %i.ke, splat (i32 2)
  %i.kn = or disjoint <4 x i32> %i.kl, %i.km
  %i.ko = bitcast <4 x i32> %i.kn to <2 x i64>
  %i.kp = and <2 x i64> %i.ko, splat (i64 2635249151546378532)
  %i.kq = or disjoint <2 x i64> %i.kk, %i.kp
  %i.kr = getelementptr [8 x i8], ptr %i.f, i64 %i.ic ; 2 uses
  %i.ks = getelementptr i8, ptr %i.kr, i64 -32
  %i.kt = bitcast <2 x i64> %i.kq to <4 x float>  ; 2 uses
  %i.ku = load <4 x float>, ptr %i.m, align 16, !noalias !1265 ; 2 uses
  %i.kv = shufflevector <4 x float> %i.kt, <4 x float> %i.ku, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.kv, ptr %i.ks, align 1
  %i.kw = getelementptr i8, ptr %i.kr, i64 -16
  %i.kx = shufflevector <4 x float> %i.kt, <4 x float> %i.ku, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.kx, ptr %i.kw, align 1
  %.pre.pre = load i64, ptr %i.o, align 8
  br label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit

_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit: ; preds = %.noexc20, %.noexc15
  %.pre = phi i64 [ %.pre.pre, %.noexc20 ], [ %.pre545, %.noexc15 ] ; 2 uses
  %i.ky = phi i64 [ 0, %.noexc20 ], [ %i.ib, %.noexc15 ]
  %i.kz = add i64 %.0538, 1
  br label %_ZNK6embree8QuadMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread

_ZNK6embree8QuadMesh11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread: ; preds = %bb.h, %bb.g, %bb.f, %.noexc225, %bb.d, %bb.c, %bb.b, %.noexc221, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit
  %.pre546 = phi i64 [ %.pre, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %.pre545, %.noexc221 ], [ %.pre545, %bb.b ], [ %.pre545, %bb.c ], [ %.pre545, %bb.d ], [ %.pre545, %.noexc225 ], [ %.pre545, %bb.f ], [ %.pre545, %bb.g ], [ %.pre545, %bb.h ]
  %i.la = phi i64 [ %.pre, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %i.ee, %.noexc221 ], [ %i.ee, %bb.b ], [ %i.ee, %bb.c ], [ %i.ee, %bb.d ], [ %i.ee, %.noexc225 ], [ %i.ee, %bb.f ], [ %i.ee, %bb.g ], [ %i.ee, %bb.h ] ; 2 uses
  %i.lb = phi i64 [ %i.ic, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %i.eg, %.noexc221 ], [ %i.eg, %bb.b ], [ %i.eg, %bb.c ], [ %i.eg, %bb.d ], [ %i.eg, %.noexc225 ], [ %i.eg, %bb.f ], [ %i.eg, %bb.g ], [ %i.eg, %bb.h ] ; 2 uses
  %i.lc = phi i64 [ %i.ky, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %i.ef, %.noexc221 ], [ %i.ef, %bb.b ], [ %i.ef, %bb.c ], [ %i.ef, %bb.d ], [ %i.ef, %.noexc225 ], [ %i.ef, %bb.f ], [ %i.ef, %bb.g ], [ %i.ef, %bb.h ] ; 10 uses
  %.1 = phi i64 [ %i.kz, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %.0538, %.noexc221 ], [ %.0538, %bb.b ], [ %.0538, %bb.c ], [ %.0538, %bb.d ], [ %.0538, %.noexc225 ], [ %.0538, %bb.f ], [ %.0538, %bb.g ], [ %.0538, %bb.h ] ; 3 uses
  %i.ld = add nuw i64 %.011536, 1                 ; 2 uses
  %i.le = icmp ult i64 %i.ld, %i.la
  br i1 %i.le, label %.noexc221, label %._crit_edge, !llvm.loop !1252
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6embree24parallel_reduce_internalImSt4pairImNS_4BBoxINS_6Vec3faEEEEZNS_4sse221createMortonCodeArrayINS_12UserGeometryEEEmPT_RNS_8vector_tINS6_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorISD_Lm8EEEEERNS_20BuildProgressMonitorEEUlRKNS_5rangeImEEE_ZNS7_IS8_EEmSA_SH_SJ_EUlRKS5_SQ_E_EET0_S9_S9_S9_S9_RKSS_RKT1_RKT2_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair") align 16 %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 16 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %9 = alloca %class.anon.282, align 8            ; 5 uses
  %10 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca i64, align 8                      ; 2 uses
  %11 = alloca %"struct.embree::StackArray", align 64 ; 14 uses
  %12 = alloca %class.anon.281, align 8           ; 9 uses
  store i64 %2, ptr %i.b, align 8
  store i64 %3, ptr %i.c, align 8
  %i.d = tail call noundef i64 @_ZN6embree13TaskScheduler11threadCountEv()
  %i.e = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.d) ; 3 uses
  %i.f = tail call noundef i64 @llvm.umin.i64(i64 %i.e, i64 512) ; 4 uses
  store i64 %i.f, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.idx.i = phi i64 [ 0, %bb.a ], [ %.add.i.4, %bb.b ] ; 6 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr %11, i64 %.idx.i
  store i64 0, ptr %.ptr.i, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 %.idx.i
  %.ptr.i.1 = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 0, ptr %.ptr.i.1, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 %.idx.i
  %.ptr.i.2 = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  store i64 0, ptr %.ptr.i.2, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 %.idx.i
  %.ptr.i.3 = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  store i64 0, ptr %.ptr.i.3, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 %.idx.i
  %.ptr.i.4 = getelementptr inbounds nuw i8, ptr %i.j, i64 192
  store i64 0, ptr %.ptr.i.4, align 16
  %.add.i.4 = add nuw nsw i64 %.idx.i, 240        ; 2 uses
  %i.k = icmp eq i64 %.add.i.4, 8160
  br i1 %i.k, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 8168
  store i64 %i.f, ptr %i.l, align 8
  %i.m = icmp ult i64 %i.e, 171
  br i1 %i.m, label %_ZN6embree10StackArrayISt4pairImNS_4BBoxINS_6Vec3faEEEELm8192EEC2Em.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = mul nuw nsw i64 %i.f, 48
  %i.o = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef %i.n, i64 noundef 64)
  br label %_ZN6embree10StackArrayISt4pairImNS_4BBoxINS_6Vec3faEEEELm8192EEC2Em.exit

_ZN6embree10StackArrayISt4pairImNS_4BBoxINS_6Vec3faEEEELm8192EEC2Em.exit: ; preds = %bb.c, %bb.d
  %storemerge.i = phi ptr [ %i.o, %bb.d ], [ %11, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 8160 ; 3 uses
  store ptr %storemerge.i, ptr %i.p, align 32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  store ptr %i.b, ptr %12, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.c, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.a, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %11, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %6, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %.not.i12 = icmp eq i64 %i.e, 0
  br i1 %.not.i12, label %bb.m, label %bb.e

bb.e:                                             ; preds = %_ZN6embree10StackArrayISt4pairImNS_4BBoxINS_6Vec3faEEEELm8192EEC2Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  store ptr null, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  store ptr %12, ptr %9, align 8
  invoke void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImSt4pairImNS_4BBoxINS_6Vec3faEEEEZNS_4sse221createMortonCodeArrayINS_12UserGeometryEEEmPT_RNS_8vector_tINS9_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorISG_Lm8EEEEERNS_20BuildProgressMonitorEEUlRKNS_5rangeImEEE_ZNSA_ISB_EEmSD_SK_SM_EUlRKS8_ST_E_EET0_SC_SC_SC_SC_RKSV_RKT1_RKT2_EUlmE_EEvSC_SX_EUlSQ_E_EEvSC_SC_SC_SX_PNS0_16TaskGroupContextE(i64 noundef 0, i64 noundef %i.f, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %8)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  invoke void @_ZN6embree13TaskScheduler4waitEv()
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit unwind label %bb.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.f
  %i.u = load ptr, ptr %8, align 8                ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  store ptr %i.u, ptr %10, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #18
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %10) #19
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16
end_hunk_5
begin_hunk_6_@_ZZN6embree4sse221createMortonCodeArrayINS_12UserGeometryEEEmPT_RNS_8vector_tINS0_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS7_Lm8EEEEERNS_20BuildProgressMonitorEENKUlRKNS_5rangeImEEE0_clESH_:bb.a
  %i.av = bitcast <4 x i32> %i.au to <2 x i64>
  %i.aw = or <2 x i64> %i.x, %i.av
  %i.ax = and <2 x i64> %i.aw, splat (i64 216173877380776191) ; 2 uses
  %i.ay = bitcast <2 x i64> %i.ax to <4 x i32>
  %i.az = shl <4 x i32> %i.ay, splat (i32 8)
  %i.ba = bitcast <4 x i32> %i.az to <2 x i64>
  %i.bb = or disjoint <2 x i64> %i.ax, %i.ba
  %i.bc = and <2 x i64> %i.bb, splat (i64 216436729379352591) ; 2 uses
  %i.bd = bitcast <2 x i64> %i.bc to <4 x i32>
  %i.be = shl nuw nsw <4 x i32> %i.bd, splat (i32 4)
  %i.bf = bitcast <2 x i64> %i.bc to <4 x i32>
  %i.bg = or disjoint <4 x i32> %i.be, %i.bf
  %i.bh = and <4 x i32> %i.bg, splat (i32 51130563) ; 2 uses
  %i.bi = bitcast <2 x i64> %i.y to <4 x i32>
  %i.bj = shl <4 x i32> %i.bi, splat (i32 16)
  %i.bk = bitcast <4 x i32> %i.bj to <2 x i64>
  %i.bl = or <2 x i64> %i.y, %i.bk
  %i.bm = and <2 x i64> %i.bl, splat (i64 216173877380776191) ; 2 uses
  %i.bn = bitcast <2 x i64> %i.bm to <4 x i32>
  %i.bo = shl <4 x i32> %i.bn, splat (i32 8)
  %i.bp = bitcast <4 x i32> %i.bo to <2 x i64>
  %i.bq = or disjoint <2 x i64> %i.bm, %i.bp
  %i.br = and <2 x i64> %i.bq, splat (i64 216436729379352591) ; 2 uses
  %i.bs = bitcast <2 x i64> %i.br to <4 x i32>
  %i.bt = shl nuw nsw <4 x i32> %i.bs, splat (i32 4)
  %i.bu = bitcast <2 x i64> %i.br to <4 x i32>
  %i.bv = or disjoint <4 x i32> %i.bt, %i.bu
  %i.bw = and <4 x i32> %i.bv, splat (i32 51130563) ; 2 uses
  %i.bx = shl nuw nsw <4 x i32> %i.bh, splat (i32 3)
  %i.by = shl nuw nsw <4 x i32> %i.bh, splat (i32 1)
  %i.bz = or disjoint <4 x i32> %i.bx, %i.by
  %i.ca = bitcast <4 x i32> %i.bz to <2 x i64>
  %i.cb = and <2 x i64> %i.ca, splat (i64 1317624575773189266)
  %i.cc = or disjoint <2 x i64> %i.cb, %i.as
  %i.cd = shl nuw nsw <4 x i32> %i.bw, splat (i32 4)
  %i.ce = shl nuw nsw <4 x i32> %i.bw, splat (i32 2)
  %i.cf = or disjoint <4 x i32> %i.cd, %i.ce
  %i.cg = bitcast <4 x i32> %i.cf to <2 x i64>
  %i.ch = and <2 x i64> %i.cg, splat (i64 2635249151546378532)
  %i.ci = or disjoint <2 x i64> %i.cc, %i.ch
  store <2 x i64> %i.ci, ptr %4, align 16
  %i.cj = sub i64 %i.fd, %i.hz
  %i.ck = getelementptr [8 x i8], ptr %i.g, i64 %i.cj ; 9 uses
  %min.iters.check500 = icmp ult i64 %i.hz, 20
  br i1 %min.iters.check500, label %scalar.ph499.preheader, label %vector.scevcheck495

vector.scevcheck495:                              ; preds = %_ZN6embree13bitInterleaveINS_9vint_implILi4EEEEET_RKS3_S5_S5_.exit101
  %i.cl = add i64 %i.hz, -1                       ; 2 uses
  %mul.result497 = shl i64 %i.cl, 3
  %mul.overflow498 = icmp ugt i64 %i.cl, 2305843009213693951
  %i.cm = getelementptr i8, ptr %i.ck, i64 %mul.result497
  %i.cn = icmp ult ptr %i.cm, %i.ck
  %i.co = or i1 %i.cn, %mul.overflow498
  br i1 %i.co, label %scalar.ph499.preheader, label %vector.ph501

vector.ph501:                                     ; preds = %vector.scevcheck495
  %n.vec502 = and i64 %i.hz, 4611686018427387900  ; 3 uses
  br label %vector.body503

vector.body503:                                   ; preds = %vector.body503, %vector.ph501
  %index504 = phi i64 [ 0, %vector.ph501 ], [ %index.next511, %vector.body503 ] ; 5 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index504 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %wide.load505 = load <2 x i32>, ptr %i.cp, align 16
  %wide.load506 = load <2 x i32>, ptr %i.cq, align 8
  %i.cr = getelementptr [8 x i8], ptr %i.ck, i64 %index504
  %i.cs = getelementptr [8 x i8], ptr %i.ck, i64 %index504
  %i.ct = getelementptr i8, ptr %i.cs, i64 16
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index504 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %wide.load507 = load <2 x i32>, ptr %i.cu, align 16
  %wide.load508 = load <2 x i32>, ptr %i.cv, align 8
  %interleaved.vec509 = shufflevector <2 x i32> %wide.load507, <2 x i32> %wide.load505, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec509, ptr %i.cr, align 4
  %interleaved.vec510 = shufflevector <2 x i32> %wide.load508, <2 x i32> %wide.load506, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec510, ptr %i.ct, align 4
  %index.next511 = add nuw i64 %index504, 4       ; 2 uses
  %i.cw = icmp eq i64 %index.next511, %n.vec502
  br i1 %i.cw, label %middle.block512, label %vector.body503, !llvm.loop !1293

middle.block512:                                  ; preds = %vector.body503
  %cmp.n513 = icmp eq i64 %i.hz, %n.vec502
  br i1 %cmp.n513, label %.loopexit, label %scalar.ph499.preheader

scalar.ph499.preheader:                           ; preds = %vector.scevcheck495, %_ZN6embree13bitInterleaveINS_9vint_implILi4EEEEET_RKS3_S5_S5_.exit101, %middle.block512
  %.0.i465.ph = phi i64 [ 0, %vector.scevcheck495 ], [ 0, %_ZN6embree13bitInterleaveINS_9vint_implILi4EEEEET_RKS3_S5_S5_.exit101 ], [ %n.vec502, %middle.block512 ] ; 3 uses
  %xtraiter529 = and i64 %i.hz, 3                 ; 2 uses
  %lcmp.mod530.not = icmp eq i64 %xtraiter529, 0
  br i1 %lcmp.mod530.not, label %scalar.ph499.prol.loopexit, label %scalar.ph499.prol

scalar.ph499.prol:                                ; preds = %scalar.ph499.preheader, %scalar.ph499.prol
  %.0.i465.prol = phi i64 [ %i.dd, %scalar.ph499.prol ], [ %.0.i465.ph, %scalar.ph499.preheader ] ; 4 uses
  %prol.iter531 = phi i64 [ %prol.iter531.next, %scalar.ph499.prol ], [ 0, %scalar.ph499.preheader ]
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.0.i465.prol
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = getelementptr [8 x i8], ptr %i.ck, i64 %.0.i465.prol ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  store i32 %i.cy, ptr %i.da, align 4
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.0.i465.prol
  %i.dc = load i32, ptr %i.db, align 4
  store i32 %i.dc, ptr %i.cz, align 8
  %i.dd = add nuw nsw i64 %.0.i465.prol, 1        ; 2 uses
  %prol.iter531.next = add i64 %prol.iter531, 1   ; 2 uses
  %prol.iter531.cmp.not = icmp eq i64 %prol.iter531.next, %xtraiter529
  br i1 %prol.iter531.cmp.not, label %scalar.ph499.prol.loopexit, label %scalar.ph499.prol, !llvm.loop !1294

scalar.ph499.prol.loopexit:                       ; preds = %scalar.ph499.prol, %scalar.ph499.preheader
  %.0.i465.unr = phi i64 [ %.0.i465.ph, %scalar.ph499.preheader ], [ %i.dd, %scalar.ph499.prol ]
  %i.de = sub i64 %.0.i465.ph, %i.hz
  %i.df = icmp ugt i64 %i.de, -4
  br i1 %i.df, label %.loopexit, label %scalar.ph499

.loopexit:                                        ; preds = %scalar.ph499.prol.loopexit, %scalar.ph499, %middle.block512
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorD2Ev.exit

scalar.ph499:                                     ; preds = %scalar.ph499.prol.loopexit, %scalar.ph499
  %.0.i465 = phi i64 [ %i.eh, %scalar.ph499 ], [ %.0.i465.unr, %scalar.ph499.prol.loopexit ] ; 7 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.0.i465
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = getelementptr [8 x i8], ptr %i.ck, i64 %.0.i465 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  store i32 %i.dh, ptr %i.dj, align 4
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.0.i465
  %i.dl = load i32, ptr %i.dk, align 4
  store i32 %i.dl, ptr %i.di, align 8
  %i.dm = add nuw nsw i64 %.0.i465, 1             ; 3 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4
  %i.dp = getelementptr [8 x i8], ptr %i.ck, i64 %i.dm ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  store i32 %i.do, ptr %i.dq, align 4
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.dm
  %i.ds = load i32, ptr %i.dr, align 4
  store i32 %i.ds, ptr %i.dp, align 8
  %i.dt = add nuw nsw i64 %.0.i465, 2             ; 3 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4
  %i.dw = getelementptr [8 x i8], ptr %i.ck, i64 %i.dt ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  store i32 %i.dv, ptr %i.dx, align 4
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.dt
  %i.dz = load i32, ptr %i.dy, align 4
  store i32 %i.dz, ptr %i.dw, align 8
  %i.ea = add nuw nsw i64 %.0.i465, 3             ; 3 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4
  %i.ed = getelementptr [8 x i8], ptr %i.ck, i64 %i.ea ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store i32 %i.ec, ptr %i.ee, align 4
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ea
  %i.eg = load i32, ptr %i.ef, align 4
  store i32 %i.eg, ptr %i.ed, align 8
  %i.eh = add nuw nsw i64 %.0.i465, 4             ; 2 uses
  %exitcond475.not.3 = icmp eq i64 %i.eh, %i.hz
  br i1 %exitcond475.not.3, label %.loopexit, label %scalar.ph499, !llvm.loop !1295

_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorD2Ev.exit: ; preds = %bb.a, %._crit_edge, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit
  %.0463 = phi i64 [ %i.f, %.lr.ph ], [ %i.ia, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ] ; 2 uses
  %i.ei = phi i64 [ 0, %.lr.ph ], [ %i.hz, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ] ; 14 uses
  %i.ej = phi i64 [ 0, %.lr.ph ], [ %i.fd, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ek = load ptr, ptr %i.r, align 8, !nonnull !28, !align !29
  %i.el = load ptr, ptr %i.ek, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18, !noalias !1315
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !noalias !1315
  store ptr %i.en, ptr %2, align 8, !noalias !1315
  %i.eo = trunc i64 %.0463 to i32                 ; 2 uses
  store i32 %i.eo, ptr %i.s, align 8, !noalias !1315
  store i32 0, ptr %i.t, align 4, !noalias !1315
  store ptr %6, ptr %i.u, align 8, !noalias !1315
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 88
  %i.eq = load ptr, ptr %i.ep, align 8, !noalias !1315
  invoke void %i.eq(ptr noundef nonnull %2)
          to label %.noexc10 unwind label %bb.c, !inline_history !20

.noexc10:                                         ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18, !noalias !1315
  %i.er = load <4 x float>, ptr %6, align 16, !noalias !1316
  %i.es = load <4 x float>, ptr %i.v, align 16, !noalias !1317
  %i.et = fadd <4 x float> %i.er, %i.es
  %i.eu = fsub <4 x float> %i.et, %i.h
  %i.ev = fmul <4 x float> %i.j, %i.eu
  %i.ew = call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.ev) ; 3 uses
  %i.ex = extractelement <4 x i32> %i.ew, i64 0
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ei
  store i32 %i.ex, ptr %i.ey, align 4
  %.sroa.0218.4.vec.extract = extractelement <4 x i32> %i.ew, i64 1
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ei
  store i32 %.sroa.0218.4.vec.extract, ptr %i.ez, align 4
  %.sroa.0218.8.vec.extract = extractelement <4 x i32> %i.ew, i64 2
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ei
  store i32 %.sroa.0218.8.vec.extract, ptr %i.fa, align 4
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ei
  store i32 %i.eo, ptr %i.fb, align 4
  %i.fc = add nsw i64 %i.ei, 1                    ; 2 uses
  %i.fd = add i64 %i.ej, 1                        ; 3 uses
  %i.fe = icmp eq i64 %i.fc, 4
  br i1 %i.fe, label %.noexc15, label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit

.noexc15:                                         ; preds = %.noexc10
  %i.ff = load <2 x i64>, ptr %i.k, align 16, !noalias !1318 ; 2 uses
  %i.fg = load <2 x i64>, ptr %i.l, align 16, !noalias !1318 ; 2 uses
  %i.fh = load <2 x i64>, ptr %i.m, align 16, !noalias !1318 ; 2 uses
  %i.fi = bitcast <2 x i64> %i.ff to <4 x i32>
  %i.fj = shl <4 x i32> %i.fi, splat (i32 16)
  %i.fk = bitcast <4 x i32> %i.fj to <2 x i64>
  %i.fl = or <2 x i64> %i.ff, %i.fk
  %i.fm = and <2 x i64> %i.fl, splat (i64 216173877380776191) ; 2 uses
  %i.fn = bitcast <2 x i64> %i.fm to <4 x i32>
  %i.fo = shl <4 x i32> %i.fn, splat (i32 8)
  %i.fp = bitcast <4 x i32> %i.fo to <2 x i64>
  %i.fq = or disjoint <2 x i64> %i.fm, %i.fp
  %i.fr = and <2 x i64> %i.fq, splat (i64 216436729379352591) ; 2 uses
  %i.fs = bitcast <2 x i64> %i.fr to <4 x i32>
  %i.ft = shl nuw nsw <4 x i32> %i.fs, splat (i32 4)
  %i.fu = bitcast <4 x i32> %i.ft to <2 x i64>
  %i.fv = or disjoint <2 x i64> %i.fr, %i.fu
  %i.fw = and <2 x i64> %i.fv, splat (i64 219604095962198211) ; 2 uses
  %i.fx = bitcast <2 x i64> %i.fw to <4 x i32>
  %i.fy = shl nuw nsw <4 x i32> %i.fx, splat (i32 2)
  %i.fz = bitcast <4 x i32> %i.fy to <2 x i64>
  %i.ga = or disjoint <2 x i64> %i.fw, %i.fz
  %i.gb = and <2 x i64> %i.ga, splat (i64 658812287886594633)
  %i.gc = bitcast <2 x i64> %i.fg to <4 x i32>
  %i.gd = shl <4 x i32> %i.gc, splat (i32 16)
  %i.ge = bitcast <4 x i32> %i.gd to <2 x i64>
  %i.gf = or <2 x i64> %i.fg, %i.ge
  %i.gg = and <2 x i64> %i.gf, splat (i64 216173877380776191) ; 2 uses
  %i.gh = bitcast <2 x i64> %i.gg to <4 x i32>
  %i.gi = shl <4 x i32> %i.gh, splat (i32 8)
  %i.gj = bitcast <4 x i32> %i.gi to <2 x i64>
  %i.gk = or disjoint <2 x i64> %i.gg, %i.gj
  %i.gl = and <2 x i64> %i.gk, splat (i64 216436729379352591) ; 2 uses
  %i.gm = bitcast <2 x i64> %i.gl to <4 x i32>
  %i.gn = shl nuw nsw <4 x i32> %i.gm, splat (i32 4)
  %i.go = bitcast <2 x i64> %i.gl to <4 x i32>
  %i.gp = or disjoint <4 x i32> %i.gn, %i.go
  %i.gq = and <4 x i32> %i.gp, splat (i32 51130563) ; 2 uses
  %i.gr = bitcast <2 x i64> %i.fh to <4 x i32>
  %i.gs = shl <4 x i32> %i.gr, splat (i32 16)
  %i.gt = bitcast <4 x i32> %i.gs to <2 x i64>
  %i.gu = or <2 x i64> %i.fh, %i.gt
  %i.gv = and <2 x i64> %i.gu, splat (i64 216173877380776191) ; 2 uses
  %i.gw = bitcast <2 x i64> %i.gv to <4 x i32>
  %i.gx = shl <4 x i32> %i.gw, splat (i32 8)
  %i.gy = bitcast <4 x i32> %i.gx to <2 x i64>
  %i.gz = or disjoint <2 x i64> %i.gv, %i.gy
  %i.ha = and <2 x i64> %i.gz, splat (i64 216436729379352591) ; 2 uses
  %i.hb = bitcast <2 x i64> %i.ha to <4 x i32>
  %i.hc = shl nuw nsw <4 x i32> %i.hb, splat (i32 4)
  %i.hd = bitcast <2 x i64> %i.ha to <4 x i32>
  %i.he = or disjoint <4 x i32> %i.hc, %i.hd
  %i.hf = and <4 x i32> %i.he, splat (i32 51130563) ; 2 uses
  %i.hg = shl nuw nsw <4 x i32> %i.gq, splat (i32 3)
  %i.hh = shl nuw nsw <4 x i32> %i.gq, splat (i32 1)
  %i.hi = or disjoint <4 x i32> %i.hg, %i.hh
  %i.hj = bitcast <4 x i32> %i.hi to <2 x i64>
  %i.hk = and <2 x i64> %i.hj, splat (i64 1317624575773189266)
  %i.hl = or disjoint <2 x i64> %i.hk, %i.gb
  %i.hm = shl nuw nsw <4 x i32> %i.hf, splat (i32 4)
  %i.hn = shl nuw nsw <4 x i32> %i.hf, splat (i32 2)
  %i.ho = or disjoint <4 x i32> %i.hm, %i.hn
  %i.hp = bitcast <4 x i32> %i.ho to <2 x i64>
  %i.hq = and <2 x i64> %i.hp, splat (i64 2635249151546378532)
  %i.hr = or disjoint <2 x i64> %i.hl, %i.hq
  %i.hs = getelementptr [8 x i8], ptr %i.g, i64 %i.fd ; 2 uses
  %i.ht = getelementptr i8, ptr %i.hs, i64 -32
  %i.hu = bitcast <2 x i64> %i.hr to <4 x float>  ; 2 uses
  %i.hv = load <4 x float>, ptr %i.n, align 16, !noalias !1319 ; 2 uses
  %i.hw = shufflevector <4 x float> %i.hu, <4 x float> %i.hv, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.hw, ptr %i.ht, align 1
  %i.hx = getelementptr i8, ptr %i.hs, i64 -16
  %i.hy = shufflevector <4 x float> %i.hu, <4 x float> %i.hv, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.hy, ptr %i.hx, align 1
  br label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit

_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit: ; preds = %.noexc15, %.noexc10
  %i.hz = phi i64 [ 0, %.noexc15 ], [ %i.fc, %.noexc10 ] ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.ia = add nuw i64 %.0463, 1                   ; 2 uses
  %i.ib = load i64, ptr %i.o, align 8
  %i.ic = icmp ult i64 %i.ia, %i.ib
  br i1 %i.ic, label %bb.b, label %._crit_edge, !llvm.loop !1308

bb.c:                                             ; preds = %bb.b
  %i.id = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %.not.i16 = icmp eq i64 %i.ei, 0
  br i1 %.not.i16, label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorD2Ev.exit18, label %_ZN6embree13bitInterleaveINS_9vint_implILi4EEEEET_RKS3_S5_S5_.exit

_ZN6embree13bitInterleaveINS_9vint_implILi4EEEEET_RKS3_S5_S5_.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.ie = load <2 x i64>, ptr %i.k, align 16, !noalias !1320 ; 2 uses
  %i.if = load <2 x i64>, ptr %i.l, align 16, !noalias !1320 ; 2 uses
  %i.ig = load <2 x i64>, ptr %i.m, align 16, !noalias !1320 ; 2 uses
  %i.ih = bitcast <2 x i64> %i.ie to <4 x i32>
  %i.ii = shl <4 x i32> %i.ih, splat (i32 16)
  %i.ij = bitcast <4 x i32> %i.ii to <2 x i64>
  %i.ik = or <2 x i64> %i.ie, %i.ij
  %i.il = and <2 x i64> %i.ik, splat (i64 216173877380776191) ; 2 uses
  %i.im = bitcast <2 x i64> %i.il to <4 x i32>
  %i.in = shl <4 x i32> %i.im, splat (i32 8)
  %i.io = bitcast <4 x i32> %i.in to <2 x i64>
  %i.ip = or disjoint <2 x i64> %i.il, %i.io
  %i.iq = and <2 x i64> %i.ip, splat (i64 216436729379352591) ; 2 uses
  %i.ir = bitcast <2 x i64> %i.iq to <4 x i32>
  %i.is = shl nuw nsw <4 x i32> %i.ir, splat (i32 4)
  %i.it = bitcast <4 x i32> %i.is to <2 x i64>
  %i.iu = or disjoint <2 x i64> %i.iq, %i.it
  %i.iv = and <2 x i64> %i.iu, splat (i64 219604095962198211) ; 2 uses
  %i.iw = bitcast <2 x i64> %i.iv to <4 x i32>
  %i.ix = shl nuw nsw <4 x i32> %i.iw, splat (i32 2)
  %i.iy = bitcast <4 x i32> %i.ix to <2 x i64>
  %i.iz = or disjoint <2 x i64> %i.iv, %i.iy
  %i.ja = and <2 x i64> %i.iz, splat (i64 658812287886594633)
  %i.jb = bitcast <2 x i64> %i.if to <4 x i32>
  %i.jc = shl <4 x i32> %i.jb, splat (i32 16)
  %i.jd = bitcast <4 x i32> %i.jc to <2 x i64>
  %i.je = or <2 x i64> %i.if, %i.jd
  %i.jf = and <2 x i64> %i.je, splat (i64 216173877380776191) ; 2 uses
  %i.jg = bitcast <2 x i64> %i.jf to <4 x i32>
  %i.jh = shl <4 x i32> %i.jg, splat (i32 8)
  %i.ji = bitcast <4 x i32> %i.jh to <2 x i64>
  %i.jj = or disjoint <2 x i64> %i.jf, %i.ji
  %i.jk = and <2 x i64> %i.jj, splat (i64 216436729379352591) ; 2 uses
  %i.jl = bitcast <2 x i64> %i.jk to <4 x i32>
  %i.jm = shl nuw nsw <4 x i32> %i.jl, splat (i32 4)
  %i.jn = bitcast <2 x i64> %i.jk to <4 x i32>
  %i.jo = or disjoint <4 x i32> %i.jm, %i.jn
  %i.jp = and <4 x i32> %i.jo, splat (i32 51130563) ; 2 uses
  %i.jq = bitcast <2 x i64> %i.ig to <4 x i32>
  %i.jr = shl <4 x i32> %i.jq, splat (i32 16)
  %i.js = bitcast <4 x i32> %i.jr to <2 x i64>
  %i.jt = or <2 x i64> %i.ig, %i.js
  %i.ju = and <2 x i64> %i.jt, splat (i64 216173877380776191) ; 2 uses
  %i.jv = bitcast <2 x i64> %i.ju to <4 x i32>
  %i.jw = shl <4 x i32> %i.jv, splat (i32 8)
  %i.jx = bitcast <4 x i32> %i.jw to <2 x i64>
  %i.jy = or disjoint <2 x i64> %i.ju, %i.jx
  %i.jz = and <2 x i64> %i.jy, splat (i64 216436729379352591) ; 2 uses
  %i.ka = bitcast <2 x i64> %i.jz to <4 x i32>
  %i.kb = shl nuw nsw <4 x i32> %i.ka, splat (i32 4)
  %i.kc = bitcast <2 x i64> %i.jz to <4 x i32>
  %i.kd = or disjoint <4 x i32> %i.kb, %i.kc
  %i.ke = and <4 x i32> %i.kd, splat (i32 51130563) ; 2 uses
  %i.kf = shl nuw nsw <4 x i32> %i.jp, splat (i32 3)
  %i.kg = shl nuw nsw <4 x i32> %i.jp, splat (i32 1)
  %i.kh = or disjoint <4 x i32> %i.kf, %i.kg
  %i.ki = bitcast <4 x i32> %i.kh to <2 x i64>
  %i.kj = and <2 x i64> %i.ki, splat (i64 1317624575773189266)
  %i.kk = or disjoint <2 x i64> %i.kj, %i.ja
  %i.kl = shl nuw nsw <4 x i32> %i.ke, splat (i32 4)
  %i.km = shl nuw nsw <4 x i32> %i.ke, splat (i32 2)
  %i.kn = or disjoint <4 x i32> %i.kl, %i.km
  %i.ko = bitcast <4 x i32> %i.kn to <2 x i64>
  %i.kp = and <2 x i64> %i.ko, splat (i64 2635249151546378532)
  %i.kq = or disjoint <2 x i64> %i.kk, %i.kp
  store <2 x i64> %i.kq, ptr %3, align 16
  %i.kr = sub i64 %i.ej, %i.ei
  %i.ks = getelementptr [8 x i8], ptr %i.g, i64 %i.kr ; 9 uses
  %min.iters.check = icmp ult i64 %i.ei, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_ZN6embree13bitInterleaveINS_9vint_implILi4EEEEET_RKS3_S5_S5_.exit
  %i.kt = add i64 %i.ei, -1                       ; 2 uses
  %mul.result = shl i64 %i.kt, 3
  %mul.overflow = icmp ugt i64 %i.kt, 2305843009213693951
  %i.ku = getelementptr i8, ptr %i.ks, i64 %mul.result
  %i.kv = icmp ult ptr %i.ku, %i.ks
  %i.kw = or i1 %i.kv, %mul.overflow
  br i1 %i.kw, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.ei, 4611686018427387900     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %wide.load = load <2 x i32>, ptr %i.kx, align 16
  %wide.load491 = load <2 x i32>, ptr %i.ky, align 8
  %i.kz = getelementptr [8 x i8], ptr %i.ks, i64 %index
  %i.la = getelementptr [8 x i8], ptr %i.ks, i64 %index
  %i.lb = getelementptr i8, ptr %i.la, i64 16
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %wide.load492 = load <2 x i32>, ptr %i.lc, align 16
  %wide.load493 = load <2 x i32>, ptr %i.ld, align 8
  %interleaved.vec = shufflevector <2 x i32> %wide.load492, <2 x i32> %wide.load, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.kz, align 4
  %interleaved.vec494 = shufflevector <2 x i32> %wide.load493, <2 x i32> %wide.load491, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec494, ptr %i.lb, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
end_hunk_6
begin_hunk_7_@_ZZN6embree4sse221createMortonCodeArrayINS_12UserGeometryEEEmPT_RNS_8vector_tINS0_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS7_Lm8EEEEERNS_20BuildProgressMonitorEENKUlRKNS_5rangeImEEmE_clESH_m:bb.a
  %i.fe = load <2 x i64>, ptr %i.m, align 16, !noalias !1342 ; 2 uses
  %i.ff = bitcast <2 x i64> %i.fc to <4 x i32>
  %i.fg = shl <4 x i32> %i.ff, splat (i32 16)
  %i.fh = bitcast <4 x i32> %i.fg to <2 x i64>
  %i.fi = or <2 x i64> %i.fc, %i.fh
  %i.fj = and <2 x i64> %i.fi, splat (i64 216173877380776191) ; 2 uses
  %i.fk = bitcast <2 x i64> %i.fj to <4 x i32>
  %i.fl = shl <4 x i32> %i.fk, splat (i32 8)
  %i.fm = bitcast <4 x i32> %i.fl to <2 x i64>
  %i.fn = or disjoint <2 x i64> %i.fj, %i.fm
  %i.fo = and <2 x i64> %i.fn, splat (i64 216436729379352591) ; 2 uses
  %i.fp = bitcast <2 x i64> %i.fo to <4 x i32>
  %i.fq = shl nuw nsw <4 x i32> %i.fp, splat (i32 4)
  %i.fr = bitcast <4 x i32> %i.fq to <2 x i64>
  %i.fs = or disjoint <2 x i64> %i.fo, %i.fr
  %i.ft = and <2 x i64> %i.fs, splat (i64 219604095962198211) ; 2 uses
  %i.fu = bitcast <2 x i64> %i.ft to <4 x i32>
  %i.fv = shl nuw nsw <4 x i32> %i.fu, splat (i32 2)
  %i.fw = bitcast <4 x i32> %i.fv to <2 x i64>
  %i.fx = or disjoint <2 x i64> %i.ft, %i.fw
  %i.fy = and <2 x i64> %i.fx, splat (i64 658812287886594633)
  %i.fz = bitcast <2 x i64> %i.fd to <4 x i32>
  %i.ga = shl <4 x i32> %i.fz, splat (i32 16)
  %i.gb = bitcast <4 x i32> %i.ga to <2 x i64>
  %i.gc = or <2 x i64> %i.fd, %i.gb
  %i.gd = and <2 x i64> %i.gc, splat (i64 216173877380776191) ; 2 uses
  %i.ge = bitcast <2 x i64> %i.gd to <4 x i32>
  %i.gf = shl <4 x i32> %i.ge, splat (i32 8)
  %i.gg = bitcast <4 x i32> %i.gf to <2 x i64>
  %i.gh = or disjoint <2 x i64> %i.gd, %i.gg
  %i.gi = and <2 x i64> %i.gh, splat (i64 216436729379352591) ; 2 uses
  %i.gj = bitcast <2 x i64> %i.gi to <4 x i32>
  %i.gk = shl nuw nsw <4 x i32> %i.gj, splat (i32 4)
  %i.gl = bitcast <2 x i64> %i.gi to <4 x i32>
  %i.gm = or disjoint <4 x i32> %i.gk, %i.gl
  %i.gn = and <4 x i32> %i.gm, splat (i32 51130563) ; 2 uses
  %i.go = bitcast <2 x i64> %i.fe to <4 x i32>
  %i.gp = shl <4 x i32> %i.go, splat (i32 16)
  %i.gq = bitcast <4 x i32> %i.gp to <2 x i64>
  %i.gr = or <2 x i64> %i.fe, %i.gq
  %i.gs = and <2 x i64> %i.gr, splat (i64 216173877380776191) ; 2 uses
  %i.gt = bitcast <2 x i64> %i.gs to <4 x i32>
  %i.gu = shl <4 x i32> %i.gt, splat (i32 8)
  %i.gv = bitcast <4 x i32> %i.gu to <2 x i64>
  %i.gw = or disjoint <2 x i64> %i.gs, %i.gv
  %i.gx = and <2 x i64> %i.gw, splat (i64 216436729379352591) ; 2 uses
  %i.gy = bitcast <2 x i64> %i.gx to <4 x i32>
  %i.gz = shl nuw nsw <4 x i32> %i.gy, splat (i32 4)
  %i.ha = bitcast <2 x i64> %i.gx to <4 x i32>
  %i.hb = or disjoint <4 x i32> %i.gz, %i.ha
  %i.hc = and <4 x i32> %i.hb, splat (i32 51130563) ; 2 uses
  %i.hd = shl nuw nsw <4 x i32> %i.gn, splat (i32 3)
  %i.he = shl nuw nsw <4 x i32> %i.gn, splat (i32 1)
  %i.hf = or disjoint <4 x i32> %i.hd, %i.he
  %i.hg = bitcast <4 x i32> %i.hf to <2 x i64>
  %i.hh = and <2 x i64> %i.hg, splat (i64 1317624575773189266)
  %i.hi = or disjoint <2 x i64> %i.hh, %i.fy
  %i.hj = shl nuw nsw <4 x i32> %i.hc, splat (i32 4)
  %i.hk = shl nuw nsw <4 x i32> %i.hc, splat (i32 2)
  %i.hl = or disjoint <4 x i32> %i.hj, %i.hk
  %i.hm = bitcast <4 x i32> %i.hl to <2 x i64>
  %i.hn = and <2 x i64> %i.hm, splat (i64 2635249151546378532)
  %i.ho = or disjoint <2 x i64> %i.hi, %i.hn
  store <2 x i64> %i.ho, ptr %5, align 16
  %i.hp = sub i64 %i.ej, %i.ei
  %i.hq = getelementptr [8 x i8], ptr %i.g, i64 %i.hp ; 9 uses
  %min.iters.check = icmp ult i64 %i.ei, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_ZN6embree13bitInterleaveINS_9vint_implILi4EEEEET_RKS3_S5_S5_.exit
  %i.hr = add i64 %i.ei, -1                       ; 2 uses
  %mul.result = shl i64 %i.hr, 3
  %mul.overflow = icmp ugt i64 %i.hr, 2305843009213693951
  %i.hs = getelementptr i8, ptr %i.hq, i64 %mul.result
  %i.ht = icmp ult ptr %i.hs, %i.hq
  %i.hu = or i1 %i.ht, %mul.overflow
  br i1 %i.hu, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.ei, 4611686018427387900     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %wide.load = load <2 x i32>, ptr %i.hv, align 16
  %wide.load513 = load <2 x i32>, ptr %i.hw, align 8
  %i.hx = getelementptr [8 x i8], ptr %i.hq, i64 %index
  %i.hy = getelementptr [8 x i8], ptr %i.hq, i64 %index
  %i.hz = getelementptr i8, ptr %i.hy, i64 16
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %wide.load514 = load <2 x i32>, ptr %i.ia, align 16
  %wide.load515 = load <2 x i32>, ptr %i.ib, align 8
  %interleaved.vec = shufflevector <2 x i32> %wide.load514, <2 x i32> %wide.load, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.hx, align 4
  %interleaved.vec516 = shufflevector <2 x i32> %wide.load515, <2 x i32> %wide.load513, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec516, ptr %i.hz, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ic = icmp eq i64 %index.next, %n.vec
  br i1 %i.ic, label %middle.block, label %vector.body, !llvm.loop !1332

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ei, %n.vec
  br i1 %cmp.n, label %.loopexit537, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %_ZN6embree13bitInterleaveINS_9vint_implILi4EEEEET_RKS3_S5_S5_.exit, %middle.block
  %.0.i22486.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %_ZN6embree13bitInterleaveINS_9vint_implILi4EEEEET_RKS3_S5_S5_.exit ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ei, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.0.i22486.prol = phi i64 [ %i.ij, %scalar.ph.prol ], [ %.0.i22486.ph, %scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.0.i22486.prol
  %i.ie = load i32, ptr %i.id, align 4
  %i.if = getelementptr [8 x i8], ptr %i.hq, i64 %.0.i22486.prol ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  store i32 %i.ie, ptr %i.ig, align 4
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.0.i22486.prol
  %i.ii = load i32, ptr %i.ih, align 4
  store i32 %i.ii, ptr %i.if, align 8
  %i.ij = add nuw nsw i64 %.0.i22486.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1333

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0.i22486.unr = phi i64 [ %.0.i22486.ph, %scalar.ph.preheader ], [ %i.ij, %scalar.ph.prol ]
  %i.ik = sub i64 %.0.i22486.ph, %i.ei
  %i.il = icmp ugt i64 %i.ik, -4
  br i1 %i.il, label %.loopexit537, label %scalar.ph

.loopexit537:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorD2Ev.exit23

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0.i22486 = phi i64 [ %i.jn, %scalar.ph ], [ %.0.i22486.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.0.i22486
  %i.in = load i32, ptr %i.im, align 4
  %i.io = getelementptr [8 x i8], ptr %i.hq, i64 %.0.i22486 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  store i32 %i.in, ptr %i.ip, align 4
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.0.i22486
  %i.ir = load i32, ptr %i.iq, align 4
  store i32 %i.ir, ptr %i.io, align 8
  %i.is = add nuw nsw i64 %.0.i22486, 1           ; 3 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4
  %i.iv = getelementptr [8 x i8], ptr %i.hq, i64 %i.is ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  store i32 %i.iu, ptr %i.iw, align 4
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.is
  %i.iy = load i32, ptr %i.ix, align 4
  store i32 %i.iy, ptr %i.iv, align 8
  %i.iz = add nuw nsw i64 %.0.i22486, 2           ; 3 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.iz
  %i.jb = load i32, ptr %i.ja, align 4
  %i.jc = getelementptr [8 x i8], ptr %i.hq, i64 %i.iz ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  store i32 %i.jb, ptr %i.jd, align 4
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.iz
  %i.jf = load i32, ptr %i.je, align 4
  store i32 %i.jf, ptr %i.jc, align 8
  %i.jg = add nuw nsw i64 %.0.i22486, 3           ; 3 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.jg
  %i.ji = load i32, ptr %i.jh, align 4
  %i.jj = getelementptr [8 x i8], ptr %i.hq, i64 %i.jg ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  store i32 %i.ji, ptr %i.jk, align 4
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.jg
  %i.jm = load i32, ptr %i.jl, align 4
  store i32 %i.jm, ptr %i.jj, align 8
  %i.jn = add nuw nsw i64 %.0.i22486, 4           ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.jn, %i.ei
  br i1 %exitcond.not.3, label %.loopexit537, label %scalar.ph, !llvm.loop !1334

_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorD2Ev.exit23: ; preds = %bb.c, %.loopexit537
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  resume { ptr, i32 } %i.fb

.noexc15:                                         ; preds = %bb.b
  %i.jo = fadd <4 x float> %i.er, %i.es
  %i.jp = fsub <4 x float> %i.jo, %i.h
  %i.jq = fmul <4 x float> %i.j, %i.jp
  %i.jr = call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.jq) ; 3 uses
  %i.js = extractelement <4 x i32> %i.jr, i64 0
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ei
  store i32 %i.js, ptr %i.jt, align 4
  %.sroa.0228.4.vec.extract = extractelement <4 x i32> %i.jr, i64 1
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ei
  store i32 %.sroa.0228.4.vec.extract, ptr %i.ju, align 4
  %.sroa.0228.8.vec.extract = extractelement <4 x i32> %i.jr, i64 2
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ei
  store i32 %.sroa.0228.8.vec.extract, ptr %i.jv, align 4
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ei
  store i32 %i.eo, ptr %i.jw, align 4
  %i.jx = add nsw i64 %i.ei, 1                    ; 2 uses
  %i.jy = add i64 %i.ej, 1                        ; 2 uses
  %i.jz = icmp eq i64 %i.jx, 4
  br i1 %i.jz, label %.noexc20, label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit

.noexc20:                                         ; preds = %.noexc15
  %i.ka = load <2 x i64>, ptr %i.k, align 16, !noalias !1343 ; 2 uses
  %i.kb = load <2 x i64>, ptr %i.l, align 16, !noalias !1343 ; 2 uses
  %i.kc = load <2 x i64>, ptr %i.m, align 16, !noalias !1343 ; 2 uses
  %i.kd = bitcast <2 x i64> %i.ka to <4 x i32>
  %i.ke = shl <4 x i32> %i.kd, splat (i32 16)
  %i.kf = bitcast <4 x i32> %i.ke to <2 x i64>
  %i.kg = or <2 x i64> %i.ka, %i.kf
  %i.kh = and <2 x i64> %i.kg, splat (i64 216173877380776191) ; 2 uses
  %i.ki = bitcast <2 x i64> %i.kh to <4 x i32>
  %i.kj = shl <4 x i32> %i.ki, splat (i32 8)
  %i.kk = bitcast <4 x i32> %i.kj to <2 x i64>
  %i.kl = or disjoint <2 x i64> %i.kh, %i.kk
  %i.km = and <2 x i64> %i.kl, splat (i64 216436729379352591) ; 2 uses
  %i.kn = bitcast <2 x i64> %i.km to <4 x i32>
  %i.ko = shl nuw nsw <4 x i32> %i.kn, splat (i32 4)
  %i.kp = bitcast <4 x i32> %i.ko to <2 x i64>
  %i.kq = or disjoint <2 x i64> %i.km, %i.kp
  %i.kr = and <2 x i64> %i.kq, splat (i64 219604095962198211) ; 2 uses
  %i.ks = bitcast <2 x i64> %i.kr to <4 x i32>
  %i.kt = shl nuw nsw <4 x i32> %i.ks, splat (i32 2)
  %i.ku = bitcast <4 x i32> %i.kt to <2 x i64>
  %i.kv = or disjoint <2 x i64> %i.kr, %i.ku
  %i.kw = and <2 x i64> %i.kv, splat (i64 658812287886594633)
  %i.kx = bitcast <2 x i64> %i.kb to <4 x i32>
  %i.ky = shl <4 x i32> %i.kx, splat (i32 16)
  %i.kz = bitcast <4 x i32> %i.ky to <2 x i64>
  %i.la = or <2 x i64> %i.kb, %i.kz
  %i.lb = and <2 x i64> %i.la, splat (i64 216173877380776191) ; 2 uses
  %i.lc = bitcast <2 x i64> %i.lb to <4 x i32>
  %i.ld = shl <4 x i32> %i.lc, splat (i32 8)
  %i.le = bitcast <4 x i32> %i.ld to <2 x i64>
  %i.lf = or disjoint <2 x i64> %i.lb, %i.le
  %i.lg = and <2 x i64> %i.lf, splat (i64 216436729379352591) ; 2 uses
  %i.lh = bitcast <2 x i64> %i.lg to <4 x i32>
  %i.li = shl nuw nsw <4 x i32> %i.lh, splat (i32 4)
  %i.lj = bitcast <2 x i64> %i.lg to <4 x i32>
  %i.lk = or disjoint <4 x i32> %i.li, %i.lj
  %i.ll = and <4 x i32> %i.lk, splat (i32 51130563) ; 2 uses
  %i.lm = bitcast <2 x i64> %i.kc to <4 x i32>
  %i.ln = shl <4 x i32> %i.lm, splat (i32 16)
  %i.lo = bitcast <4 x i32> %i.ln to <2 x i64>
  %i.lp = or <2 x i64> %i.kc, %i.lo
  %i.lq = and <2 x i64> %i.lp, splat (i64 216173877380776191) ; 2 uses
  %i.lr = bitcast <2 x i64> %i.lq to <4 x i32>
  %i.ls = shl <4 x i32> %i.lr, splat (i32 8)
  %i.lt = bitcast <4 x i32> %i.ls to <2 x i64>
  %i.lu = or disjoint <2 x i64> %i.lq, %i.lt
  %i.lv = and <2 x i64> %i.lu, splat (i64 216436729379352591) ; 2 uses
  %i.lw = bitcast <2 x i64> %i.lv to <4 x i32>
  %i.lx = shl nuw nsw <4 x i32> %i.lw, splat (i32 4)
  %i.ly = bitcast <2 x i64> %i.lv to <4 x i32>
  %i.lz = or disjoint <4 x i32> %i.lx, %i.ly
  %i.ma = and <4 x i32> %i.lz, splat (i32 51130563) ; 2 uses
  %i.mb = shl nuw nsw <4 x i32> %i.ll, splat (i32 3)
  %i.mc = shl nuw nsw <4 x i32> %i.ll, splat (i32 1)
  %i.md = or disjoint <4 x i32> %i.mb, %i.mc
  %i.me = bitcast <4 x i32> %i.md to <2 x i64>
  %i.mf = and <2 x i64> %i.me, splat (i64 1317624575773189266)
  %i.mg = or disjoint <2 x i64> %i.mf, %i.kw
  %i.mh = shl nuw nsw <4 x i32> %i.ma, splat (i32 4)
  %i.mi = shl nuw nsw <4 x i32> %i.ma, splat (i32 2)
  %i.mj = or disjoint <4 x i32> %i.mh, %i.mi
  %i.mk = bitcast <4 x i32> %i.mj to <2 x i64>
  %i.ml = and <2 x i64> %i.mk, splat (i64 2635249151546378532)
  %i.mm = or disjoint <2 x i64> %i.mg, %i.ml
  %i.mn = getelementptr [8 x i8], ptr %i.g, i64 %i.jy ; 2 uses
  %i.mo = getelementptr i8, ptr %i.mn, i64 -32
  %i.mp = bitcast <2 x i64> %i.mm to <4 x float>  ; 2 uses
  %i.mq = load <4 x float>, ptr %i.n, align 16, !noalias !1344 ; 2 uses
  %i.mr = shufflevector <4 x float> %i.mp, <4 x float> %i.mq, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.mr, ptr %i.mo, align 1
  %i.ms = getelementptr i8, ptr %i.mn, i64 -16
  %i.mt = shufflevector <4 x float> %i.mp, <4 x float> %i.mq, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.mt, ptr %i.ms, align 1
  br label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit

_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit: ; preds = %.noexc20, %.noexc15
  %i.mu = phi i64 [ 0, %.noexc20 ], [ %i.jx, %.noexc15 ]
  %i.mv = add i64 %.0482, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit
  %i.mw = phi i64 [ %i.jy, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %i.ej, %bb.b ] ; 2 uses
  %i.mx = phi i64 [ %i.mu, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %i.ei, %bb.b ] ; 10 uses
  %.1 = phi i64 [ %i.mv, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %.0482, %bb.b ] ; 3 uses
  %i.my = add nuw i64 %.011481, 1                 ; 2 uses
  %i.mz = load i64, ptr %i.o, align 8
  %i.na = icmp ult i64 %i.my, %i.mz
  br i1 %i.na, label %_ZN6embree4BBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit, label %._crit_edge, !llvm.loop !1339
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_19parallel_prefix_sumImmZNS_4sse221createMortonCodeArrayINS_12UserGeometryEEEmPT_RNS_8vector_tINS4_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorISB_Lm8EEEEERNS_20BuildProgressMonitorEEUlRKNS_5rangeImEEmE0_St4plusImEEET0_RNS_22ParallelPrefixSumStateISP_EES7_S7_S7_RKSP_RKT1_RKT2_EUlmE_EEvS7_SU_EUlSL_E_EEvS7_S7_S7_SU_PNS0_16TaskGroupContextE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.293, align 8            ; 9 uses
  %i.a = sub i64 %1, %0                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store i64 %1, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.e = load i64, ptr %3, align 8
  store i64 %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %4, ptr %i.f, align 8
  %i.g = tail call noundef ptr @_ZN6embree13TaskScheduler6threadEv() ; 7 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.l, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 262272 ; 5 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 8
  %i.k = icmp ugt i64 %i.j, 4095
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #19
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.u, %bb.i ], [ %i.l, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.m, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #18
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.f:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 786624 ; 2 uses
  %i.o = load i64, ptr %i.n, align 64             ; 4 uses
  %i.p = sub i64 0, %i.o
  %i.q = and i64 %i.p, 63                         ; 2 uses
  %i.r = add i64 %i.o, 48
  %i.s = add i64 %i.r, %i.q                       ; 2 uses
  %i.t = icmp ugt i64 %i.s, 524288
  br i1 %i.t, label %bb.g, label %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i

bb.g:                                             ; preds = %bb.f
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull @.str.1)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #19
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i: ; preds = %bb.f
  store i64 %i.s, ptr %i.n, align 64
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 262336
  %i.x = getelementptr i8, ptr %i.w, i64 %i.o
  %i.y = getelementptr i8, ptr %i.x, i64 %i.q     ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_12parallel_forImZNS_19parallel_prefix_sumImmZNS_4sse221createMortonCodeArrayINS_12UserGeometryEEEmPT_RNS_8vector_tINS5_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorISC_Lm8EEEEERNS_20BuildProgressMonitorEEUlRKNS_5rangeImEEmE0_St4plusImEEET0_RNS_22ParallelPrefixSumStateISQ_EES8_S8_S8_RKSQ_RKT1_RKT2_EUlmE_EEvS8_SV_EUlSM_E_EEvS8_S8_S8_SV_PNS0_16TaskGroupContextEEUlvE_EE, i64 16), ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false)
  %i.aa = load atomic i64, ptr %i.i seq_cst, align 64
  %i.ab = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %i.aa ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 786688
  %i.ad = load ptr, ptr %i.ac, align 64           ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 1, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i8 1, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.y, ptr %i.ag, align 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.ad, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %4, ptr %i.ai, align 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store i64 %i.o, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store i64 %i.a, ptr %i.ak, align 16
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.am = atomicrmw add ptr %i.al, i32 1 seq_cst, align 4 ; 0 uses
  br label %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i
end_hunk_7
begin_hunk_8_@_ZZN6embree4sse221createMortonCodeArrayINS_12UserGeometryEEEmPT_RNS_8vector_tINS0_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS7_Lm8EEEEERNS_20BuildProgressMonitorEENKUlRKNS_5rangeImEEmE0_clESH_m:bb.a
  %i.fe = load <2 x i64>, ptr %i.l, align 16, !noalias !1366 ; 2 uses
  %i.ff = bitcast <2 x i64> %i.fc to <4 x i32>
  %i.fg = shl <4 x i32> %i.ff, splat (i32 16)
  %i.fh = bitcast <4 x i32> %i.fg to <2 x i64>
  %i.fi = or <2 x i64> %i.fc, %i.fh
  %i.fj = and <2 x i64> %i.fi, splat (i64 216173877380776191) ; 2 uses
  %i.fk = bitcast <2 x i64> %i.fj to <4 x i32>
  %i.fl = shl <4 x i32> %i.fk, splat (i32 8)
  %i.fm = bitcast <4 x i32> %i.fl to <2 x i64>
  %i.fn = or disjoint <2 x i64> %i.fj, %i.fm
  %i.fo = and <2 x i64> %i.fn, splat (i64 216436729379352591) ; 2 uses
  %i.fp = bitcast <2 x i64> %i.fo to <4 x i32>
  %i.fq = shl nuw nsw <4 x i32> %i.fp, splat (i32 4)
  %i.fr = bitcast <4 x i32> %i.fq to <2 x i64>
  %i.fs = or disjoint <2 x i64> %i.fo, %i.fr
  %i.ft = and <2 x i64> %i.fs, splat (i64 219604095962198211) ; 2 uses
  %i.fu = bitcast <2 x i64> %i.ft to <4 x i32>
  %i.fv = shl nuw nsw <4 x i32> %i.fu, splat (i32 2)
  %i.fw = bitcast <4 x i32> %i.fv to <2 x i64>
  %i.fx = or disjoint <2 x i64> %i.ft, %i.fw
  %i.fy = and <2 x i64> %i.fx, splat (i64 658812287886594633)
  %i.fz = bitcast <2 x i64> %i.fd to <4 x i32>
  %i.ga = shl <4 x i32> %i.fz, splat (i32 16)
  %i.gb = bitcast <4 x i32> %i.ga to <2 x i64>
  %i.gc = or <2 x i64> %i.fd, %i.gb
  %i.gd = and <2 x i64> %i.gc, splat (i64 216173877380776191) ; 2 uses
  %i.ge = bitcast <2 x i64> %i.gd to <4 x i32>
  %i.gf = shl <4 x i32> %i.ge, splat (i32 8)
  %i.gg = bitcast <4 x i32> %i.gf to <2 x i64>
  %i.gh = or disjoint <2 x i64> %i.gd, %i.gg
  %i.gi = and <2 x i64> %i.gh, splat (i64 216436729379352591) ; 2 uses
  %i.gj = bitcast <2 x i64> %i.gi to <4 x i32>
  %i.gk = shl nuw nsw <4 x i32> %i.gj, splat (i32 4)
  %i.gl = bitcast <2 x i64> %i.gi to <4 x i32>
  %i.gm = or disjoint <4 x i32> %i.gk, %i.gl
  %i.gn = and <4 x i32> %i.gm, splat (i32 51130563) ; 2 uses
  %i.go = bitcast <2 x i64> %i.fe to <4 x i32>
  %i.gp = shl <4 x i32> %i.go, splat (i32 16)
  %i.gq = bitcast <4 x i32> %i.gp to <2 x i64>
  %i.gr = or <2 x i64> %i.fe, %i.gq
  %i.gs = and <2 x i64> %i.gr, splat (i64 216173877380776191) ; 2 uses
  %i.gt = bitcast <2 x i64> %i.gs to <4 x i32>
  %i.gu = shl <4 x i32> %i.gt, splat (i32 8)
  %i.gv = bitcast <4 x i32> %i.gu to <2 x i64>
  %i.gw = or disjoint <2 x i64> %i.gs, %i.gv
  %i.gx = and <2 x i64> %i.gw, splat (i64 216436729379352591) ; 2 uses
  %i.gy = bitcast <2 x i64> %i.gx to <4 x i32>
  %i.gz = shl nuw nsw <4 x i32> %i.gy, splat (i32 4)
  %i.ha = bitcast <2 x i64> %i.gx to <4 x i32>
  %i.hb = or disjoint <4 x i32> %i.gz, %i.ha
  %i.hc = and <4 x i32> %i.hb, splat (i32 51130563) ; 2 uses
  %i.hd = shl nuw nsw <4 x i32> %i.gn, splat (i32 3)
  %i.he = shl nuw nsw <4 x i32> %i.gn, splat (i32 1)
  %i.hf = or disjoint <4 x i32> %i.hd, %i.he
  %i.hg = bitcast <4 x i32> %i.hf to <2 x i64>
  %i.hh = and <2 x i64> %i.hg, splat (i64 1317624575773189266)
  %i.hi = or disjoint <2 x i64> %i.hh, %i.fy
  %i.hj = shl nuw nsw <4 x i32> %i.hc, splat (i32 4)
  %i.hk = shl nuw nsw <4 x i32> %i.hc, splat (i32 2)
  %i.hl = or disjoint <4 x i32> %i.hj, %i.hk
  %i.hm = bitcast <4 x i32> %i.hl to <2 x i64>
  %i.hn = and <2 x i64> %i.hm, splat (i64 2635249151546378532)
  %i.ho = or disjoint <2 x i64> %i.hi, %i.hn
  store <2 x i64> %i.ho, ptr %5, align 16
  %i.hp = sub i64 %i.ej, %i.ei
  %i.hq = getelementptr [8 x i8], ptr %i.f, i64 %i.hp ; 9 uses
  %min.iters.check = icmp ult i64 %i.ei, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_ZN6embree13bitInterleaveINS_9vint_implILi4EEEEET_RKS3_S5_S5_.exit
  %i.hr = add i64 %i.ei, -1                       ; 2 uses
  %mul.result = shl i64 %i.hr, 3
  %mul.overflow = icmp ugt i64 %i.hr, 2305843009213693951
  %i.hs = getelementptr i8, ptr %i.hq, i64 %mul.result
  %i.ht = icmp ult ptr %i.hs, %i.hq
  %i.hu = or i1 %i.ht, %mul.overflow
  br i1 %i.hu, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.ei, 4611686018427387900     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %wide.load = load <2 x i32>, ptr %i.hv, align 16
  %wide.load513 = load <2 x i32>, ptr %i.hw, align 8
  %i.hx = getelementptr [8 x i8], ptr %i.hq, i64 %index
  %i.hy = getelementptr [8 x i8], ptr %i.hq, i64 %index
  %i.hz = getelementptr i8, ptr %i.hy, i64 16
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %wide.load514 = load <2 x i32>, ptr %i.ia, align 16
  %wide.load515 = load <2 x i32>, ptr %i.ib, align 8
  %interleaved.vec = shufflevector <2 x i32> %wide.load514, <2 x i32> %wide.load, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.hx, align 4
  %interleaved.vec516 = shufflevector <2 x i32> %wide.load515, <2 x i32> %wide.load513, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec516, ptr %i.hz, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ic = icmp eq i64 %index.next, %n.vec
  br i1 %i.ic, label %middle.block, label %vector.body, !llvm.loop !1356

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ei, %n.vec
  br i1 %cmp.n, label %.loopexit537, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %_ZN6embree13bitInterleaveINS_9vint_implILi4EEEEET_RKS3_S5_S5_.exit, %middle.block
  %.0.i22486.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %_ZN6embree13bitInterleaveINS_9vint_implILi4EEEEET_RKS3_S5_S5_.exit ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ei, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.0.i22486.prol = phi i64 [ %i.ij, %scalar.ph.prol ], [ %.0.i22486.ph, %scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.0.i22486.prol
  %i.ie = load i32, ptr %i.id, align 4
  %i.if = getelementptr [8 x i8], ptr %i.hq, i64 %.0.i22486.prol ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  store i32 %i.ie, ptr %i.ig, align 4
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.0.i22486.prol
  %i.ii = load i32, ptr %i.ih, align 4
  store i32 %i.ii, ptr %i.if, align 8
  %i.ij = add nuw nsw i64 %.0.i22486.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1357

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0.i22486.unr = phi i64 [ %.0.i22486.ph, %scalar.ph.preheader ], [ %i.ij, %scalar.ph.prol ]
  %i.ik = sub i64 %.0.i22486.ph, %i.ei
  %i.il = icmp ugt i64 %i.ik, -4
  br i1 %i.il, label %.loopexit537, label %scalar.ph

.loopexit537:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorD2Ev.exit23

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0.i22486 = phi i64 [ %i.jn, %scalar.ph ], [ %.0.i22486.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.0.i22486
  %i.in = load i32, ptr %i.im, align 4
  %i.io = getelementptr [8 x i8], ptr %i.hq, i64 %.0.i22486 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  store i32 %i.in, ptr %i.ip, align 4
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.0.i22486
  %i.ir = load i32, ptr %i.iq, align 4
  store i32 %i.ir, ptr %i.io, align 8
  %i.is = add nuw nsw i64 %.0.i22486, 1           ; 3 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4
  %i.iv = getelementptr [8 x i8], ptr %i.hq, i64 %i.is ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  store i32 %i.iu, ptr %i.iw, align 4
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.is
  %i.iy = load i32, ptr %i.ix, align 4
  store i32 %i.iy, ptr %i.iv, align 8
  %i.iz = add nuw nsw i64 %.0.i22486, 2           ; 3 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.iz
  %i.jb = load i32, ptr %i.ja, align 4
  %i.jc = getelementptr [8 x i8], ptr %i.hq, i64 %i.iz ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  store i32 %i.jb, ptr %i.jd, align 4
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.iz
  %i.jf = load i32, ptr %i.je, align 4
  store i32 %i.jf, ptr %i.jc, align 8
  %i.jg = add nuw nsw i64 %.0.i22486, 3           ; 3 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.jg
  %i.ji = load i32, ptr %i.jh, align 4
  %i.jj = getelementptr [8 x i8], ptr %i.hq, i64 %i.jg ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  store i32 %i.ji, ptr %i.jk, align 4
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.jg
  %i.jm = load i32, ptr %i.jl, align 4
  store i32 %i.jm, ptr %i.jj, align 8
  %i.jn = add nuw nsw i64 %.0.i22486, 4           ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.jn, %i.ei
  br i1 %exitcond.not.3, label %.loopexit537, label %scalar.ph, !llvm.loop !1358

_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorD2Ev.exit23: ; preds = %bb.c, %.loopexit537
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  resume { ptr, i32 } %i.fb

.noexc15:                                         ; preds = %bb.b
  %i.jo = fadd <4 x float> %i.er, %i.es
  %i.jp = fsub <4 x float> %i.jo, %i.g
  %i.jq = fmul <4 x float> %i.i, %i.jp
  %i.jr = call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.jq) ; 3 uses
  %i.js = extractelement <4 x i32> %i.jr, i64 0
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ei
  store i32 %i.js, ptr %i.jt, align 4
  %.sroa.0228.4.vec.extract = extractelement <4 x i32> %i.jr, i64 1
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ei
  store i32 %.sroa.0228.4.vec.extract, ptr %i.ju, align 4
  %.sroa.0228.8.vec.extract = extractelement <4 x i32> %i.jr, i64 2
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ei
  store i32 %.sroa.0228.8.vec.extract, ptr %i.jv, align 4
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ei
  store i32 %i.eo, ptr %i.jw, align 4
  %i.jx = add nsw i64 %i.ei, 1                    ; 2 uses
  %i.jy = add i64 %i.ej, 1                        ; 2 uses
  %i.jz = icmp eq i64 %i.jx, 4
  br i1 %i.jz, label %.noexc20, label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit

.noexc20:                                         ; preds = %.noexc15
  %i.ka = load <2 x i64>, ptr %i.j, align 16, !noalias !1367 ; 2 uses
  %i.kb = load <2 x i64>, ptr %i.k, align 16, !noalias !1367 ; 2 uses
  %i.kc = load <2 x i64>, ptr %i.l, align 16, !noalias !1367 ; 2 uses
  %i.kd = bitcast <2 x i64> %i.ka to <4 x i32>
  %i.ke = shl <4 x i32> %i.kd, splat (i32 16)
  %i.kf = bitcast <4 x i32> %i.ke to <2 x i64>
  %i.kg = or <2 x i64> %i.ka, %i.kf
  %i.kh = and <2 x i64> %i.kg, splat (i64 216173877380776191) ; 2 uses
  %i.ki = bitcast <2 x i64> %i.kh to <4 x i32>
  %i.kj = shl <4 x i32> %i.ki, splat (i32 8)
  %i.kk = bitcast <4 x i32> %i.kj to <2 x i64>
  %i.kl = or disjoint <2 x i64> %i.kh, %i.kk
  %i.km = and <2 x i64> %i.kl, splat (i64 216436729379352591) ; 2 uses
  %i.kn = bitcast <2 x i64> %i.km to <4 x i32>
  %i.ko = shl nuw nsw <4 x i32> %i.kn, splat (i32 4)
  %i.kp = bitcast <4 x i32> %i.ko to <2 x i64>
  %i.kq = or disjoint <2 x i64> %i.km, %i.kp
  %i.kr = and <2 x i64> %i.kq, splat (i64 219604095962198211) ; 2 uses
  %i.ks = bitcast <2 x i64> %i.kr to <4 x i32>
  %i.kt = shl nuw nsw <4 x i32> %i.ks, splat (i32 2)
  %i.ku = bitcast <4 x i32> %i.kt to <2 x i64>
  %i.kv = or disjoint <2 x i64> %i.kr, %i.ku
  %i.kw = and <2 x i64> %i.kv, splat (i64 658812287886594633)
  %i.kx = bitcast <2 x i64> %i.kb to <4 x i32>
  %i.ky = shl <4 x i32> %i.kx, splat (i32 16)
  %i.kz = bitcast <4 x i32> %i.ky to <2 x i64>
  %i.la = or <2 x i64> %i.kb, %i.kz
  %i.lb = and <2 x i64> %i.la, splat (i64 216173877380776191) ; 2 uses
  %i.lc = bitcast <2 x i64> %i.lb to <4 x i32>
  %i.ld = shl <4 x i32> %i.lc, splat (i32 8)
  %i.le = bitcast <4 x i32> %i.ld to <2 x i64>
  %i.lf = or disjoint <2 x i64> %i.lb, %i.le
  %i.lg = and <2 x i64> %i.lf, splat (i64 216436729379352591) ; 2 uses
  %i.lh = bitcast <2 x i64> %i.lg to <4 x i32>
  %i.li = shl nuw nsw <4 x i32> %i.lh, splat (i32 4)
  %i.lj = bitcast <2 x i64> %i.lg to <4 x i32>
  %i.lk = or disjoint <4 x i32> %i.li, %i.lj
  %i.ll = and <4 x i32> %i.lk, splat (i32 51130563) ; 2 uses
  %i.lm = bitcast <2 x i64> %i.kc to <4 x i32>
  %i.ln = shl <4 x i32> %i.lm, splat (i32 16)
  %i.lo = bitcast <4 x i32> %i.ln to <2 x i64>
  %i.lp = or <2 x i64> %i.kc, %i.lo
  %i.lq = and <2 x i64> %i.lp, splat (i64 216173877380776191) ; 2 uses
  %i.lr = bitcast <2 x i64> %i.lq to <4 x i32>
  %i.ls = shl <4 x i32> %i.lr, splat (i32 8)
  %i.lt = bitcast <4 x i32> %i.ls to <2 x i64>
  %i.lu = or disjoint <2 x i64> %i.lq, %i.lt
  %i.lv = and <2 x i64> %i.lu, splat (i64 216436729379352591) ; 2 uses
  %i.lw = bitcast <2 x i64> %i.lv to <4 x i32>
  %i.lx = shl nuw nsw <4 x i32> %i.lw, splat (i32 4)
  %i.ly = bitcast <2 x i64> %i.lv to <4 x i32>
  %i.lz = or disjoint <4 x i32> %i.lx, %i.ly
  %i.ma = and <4 x i32> %i.lz, splat (i32 51130563) ; 2 uses
  %i.mb = shl nuw nsw <4 x i32> %i.ll, splat (i32 3)
  %i.mc = shl nuw nsw <4 x i32> %i.ll, splat (i32 1)
  %i.md = or disjoint <4 x i32> %i.mb, %i.mc
  %i.me = bitcast <4 x i32> %i.md to <2 x i64>
  %i.mf = and <2 x i64> %i.me, splat (i64 1317624575773189266)
  %i.mg = or disjoint <2 x i64> %i.mf, %i.kw
  %i.mh = shl nuw nsw <4 x i32> %i.ma, splat (i32 4)
  %i.mi = shl nuw nsw <4 x i32> %i.ma, splat (i32 2)
  %i.mj = or disjoint <4 x i32> %i.mh, %i.mi
  %i.mk = bitcast <4 x i32> %i.mj to <2 x i64>
  %i.ml = and <2 x i64> %i.mk, splat (i64 2635249151546378532)
  %i.mm = or disjoint <2 x i64> %i.mg, %i.ml
  %i.mn = getelementptr [8 x i8], ptr %i.f, i64 %i.jy ; 2 uses
  %i.mo = getelementptr i8, ptr %i.mn, i64 -32
  %i.mp = bitcast <2 x i64> %i.mm to <4 x float>  ; 2 uses
  %i.mq = load <4 x float>, ptr %i.m, align 16, !noalias !1368 ; 2 uses
  %i.mr = shufflevector <4 x float> %i.mp, <4 x float> %i.mq, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.mr, ptr %i.mo, align 1
  %i.ms = getelementptr i8, ptr %i.mn, i64 -16
  %i.mt = shufflevector <4 x float> %i.mp, <4 x float> %i.mq, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.mt, ptr %i.ms, align 1
  br label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit

_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit: ; preds = %.noexc20, %.noexc15
  %i.mu = phi i64 [ 0, %.noexc20 ], [ %i.jx, %.noexc15 ]
  %i.mv = add i64 %.0482, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit
  %i.mw = phi i64 [ %i.jy, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %i.ej, %bb.b ] ; 2 uses
  %i.mx = phi i64 [ %i.mu, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %i.ei, %bb.b ] ; 10 uses
  %.1 = phi i64 [ %i.mv, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %.0482, %bb.b ] ; 3 uses
  %i.my = add nuw i64 %.011481, 1                 ; 2 uses
  %i.mz = load i64, ptr %i.o, align 8
  %i.na = icmp ult i64 %i.my, %i.mz
  br i1 %i.na, label %_ZN6embree4BBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit, label %._crit_edge, !llvm.loop !1363
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree4sse221createMortonCodeArrayINS_8InstanceEEEmPT_RNS_8vector_tINS0_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS7_Lm8EEEEERNS_20BuildProgressMonitorEENKUlRKNS_5rangeImEEE_clESH_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair") align 16 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 5 uses
  %i.d = icmp ult i64 %i.a, %i.c
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !nonnull !28, !align !29
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  %i.h = load i32, ptr %i.g, align 4, !noalias !1410
  %i.i = and i32 %i.h, 65280
  %i.j = icmp eq i32 %i.i, 256
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.m = load ptr, ptr %i.l, align 16, !noalias !1410 ; 12 uses
  br i1 %i.j, label %.lr.ph.split.us, label %.lr.ph.split, !prof !31

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 60
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 44
  %i.r = load float, ptr %i.n, align 4, !noalias !1411 ; 8 uses
  %i.s = load float, ptr %i.o, align 4, !noalias !1411 ; 8 uses
  %i.t = load float, ptr %i.p, align 4, !noalias !1411 ; 8 uses
  %i.u = load float, ptr %i.q, align 4, !noalias !1411 ; 7 uses
  %i.v = load <4 x float>, ptr %i.m, align 16, !noalias !1412 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.x = load <4 x float>, ptr %i.w, align 16, !noalias !1413 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.z = load <3 x float>, ptr %i.y, align 16, !noalias !1414 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.ab = load <3 x float>, ptr %i.aa, align 16, !noalias !1415 ; 3 uses
  %.sroa.17295.52.vec.insert.us = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.v, <4 x i32> <i32 5, i32 6, i32 poison, i32 3>
  %.sroa.17295.56.vec.insert.us = shufflevector <4 x float> %.sroa.17295.52.vec.insert.us, <4 x float> %i.x, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.ac = fmul float %i.s, %i.s
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.r, float %i.r, float %i.ac)
  %i.ae = fneg float %i.t                         ; 3 uses
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.t, float %i.ad)
  %i.ag = fneg float %i.u                         ; 3 uses
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.u, float %i.af)
  %i.ai = fmul float %i.r, %i.u
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.s, float %i.t, float %i.ai)
  %i.ak = fmul float %i.aj, 2.000000e+00
  %i.al = fmul float %i.r, %i.ae
  %i.am = tail call float @llvm.fmuladd.f32(float %i.s, float %i.u, float %i.al)
  %i.an = fmul float %i.am, 2.000000e+00
  %i.ao = fmul float %i.r, %i.ag
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.s, float %i.t, float %i.ao)
  %i.aq = fmul float %i.ap, 2.000000e+00
  %i.ar = fneg float %i.s                         ; 2 uses
  %i.as = fmul float %i.s, %i.ar
  %i.at = tail call float @llvm.fmuladd.f32(float %i.r, float %i.r, float %i.as) ; 2 uses
  %i.au = tail call float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.at)
  %i.av = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.r, i64 1
  %i.aw = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ax = insertelement <4 x float> poison, float %i.au, i64 0
  %i.ay = insertelement <4 x float> %i.ax, float %i.s, i64 1
  %i.az = insertelement <4 x float> %i.ay, float %i.t, i64 2 ; 2 uses
  %i.ba = insertelement <4 x float> %i.az, float %i.ar, i64 3
  %i.bb = fmul <4 x float> %i.aw, %i.ba
  %i.bc = insertelement <4 x float> poison, float %i.ag, i64 0
  %i.bd = shufflevector <4 x float> %i.bc, <4 x float> %i.az, <4 x i32> <i32 0, i32 6, i32 5, i32 6>
  %i.be = insertelement <4 x float> poison, float %i.u, i64 0
  %i.bf = shufflevector <4 x float> %i.be, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bd, <4 x float> %i.bf, <4 x float> %i.bb) ; 3 uses
  %i.bh = extractelement <4 x float> %i.bg, i64 1
  %i.bi = fmul float %i.bh, 2.000000e+00
  %i.bj = shufflevector <4 x float> %i.bg, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.bk = fmul <2 x float> %i.bj, splat (float 2.000000e+00) ; 2 uses
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.t, float %i.at)
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.u, float %i.u, float %i.bl)
  %i.bn = insertelement <4 x float> poison, float %i.ah, i64 0
  %i.bo = shufflevector <4 x float> %i.bn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bp = insertelement <4 x float> poison, float %i.ak, i64 0
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.br = insertelement <4 x float> poison, float %i.an, i64 0
  %i.bs = shufflevector <4 x float> %i.br, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bt = fmul <4 x float> %i.bs, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.bu = fmul <4 x float> %i.bq, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.bv = fadd <4 x float> %i.bt, %i.bu
  %i.bw = fmul <4 x float> %i.bo, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.bx = fadd <4 x float> %i.bw, %i.bv           ; 4 uses
  %i.by = insertelement <4 x float> poison, float %i.aq, i64 0
  %i.bz = shufflevector <4 x float> %i.by, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ca = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cb = insertelement <4 x float> poison, float %i.bi, i64 0
  %i.cc = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cd = fmul <4 x float> %i.cc, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.ce = fmul <4 x float> %i.ca, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.cf = fadd <4 x float> %i.ce, %i.cd
  %i.cg = fmul <4 x float> %i.bz, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.ch = fadd <4 x float> %i.cg, %i.cf           ; 4 uses
  %i.ci = shufflevector <2 x float> %i.bk, <2 x float> poison, <4 x i32> zeroinitializer
  %i.cj = shufflevector <2 x float> %i.bk, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ck = insertelement <4 x float> poison, float %i.bm, i64 0
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cm = fmul <4 x float> %i.cl, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.cn = fmul <4 x float> %i.cj, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.co = fadd <4 x float> %i.cn, %i.cm
end_hunk_8
begin_hunk_9_@_ZZN6embree4sse221createMortonCodeArrayINS_8InstanceEEEmPT_RNS_8vector_tINS0_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS7_Lm8EEEEERNS_20BuildProgressMonitorEENKUlRKNS_5rangeImEEE0_clESH_:bb.a
  %i.gn = tail call float @llvm.fmuladd.f32(float %i.ev, float %i.ev, float %i.gm)
  %i.go = insertelement <4 x float> poison, float %i.fi, i64 0
  %i.gp = shufflevector <4 x float> %i.go, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gq = insertelement <4 x float> poison, float %i.fl, i64 0
  %i.gr = shufflevector <4 x float> %i.gq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gs = insertelement <4 x float> poison, float %i.fo, i64 0
  %i.gt = shufflevector <4 x float> %i.gs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gu = fmul <4 x float> %i.gt, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.gv = fmul <4 x float> %i.gr, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.gw = fadd <4 x float> %i.gu, %i.gv
  %i.gx = fmul <4 x float> %i.gp, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.gy = fadd <4 x float> %i.gx, %i.gw           ; 4 uses
  %i.gz = insertelement <4 x float> poison, float %i.fr, i64 0
  %i.ha = shufflevector <4 x float> %i.gz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hb = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hc = insertelement <4 x float> poison, float %i.gj, i64 0
  %i.hd = shufflevector <4 x float> %i.hc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.he = fmul <4 x float> %i.hd, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.hf = fmul <4 x float> %i.hb, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.hg = fadd <4 x float> %i.hf, %i.he
  %i.hh = fmul <4 x float> %i.ha, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.hi = fadd <4 x float> %i.hh, %i.hg           ; 4 uses
  %i.hj = shufflevector <2 x float> %i.gl, <2 x float> poison, <4 x i32> zeroinitializer
  %i.hk = shufflevector <2 x float> %i.gl, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.hl = insertelement <4 x float> poison, float %i.gn, i64 0
  %i.hm = shufflevector <4 x float> %i.hl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hn = fmul <4 x float> %i.hm, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.ho = fmul <4 x float> %i.hk, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.hp = fadd <4 x float> %i.ho, %i.hn
  %i.hq = fmul <4 x float> %i.hj, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.hr = fadd <4 x float> %i.hq, %i.hp           ; 3 uses
  %i.hs = fadd <4 x float> %.sroa.17961.56.vec.insert, zeroinitializer
  %i.ht = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hu = fmul <4 x float> %i.hr, zeroinitializer ; 2 uses
  %i.hv = fmul <4 x float> %i.hi, zeroinitializer
  %i.hw = fadd <4 x float> %i.hv, %i.hu
  %i.hx = fmul <4 x float> %i.ht, %i.gy
  %i.hy = fadd <4 x float> %i.hx, %i.hw           ; 2 uses
  %i.hz = shufflevector <4 x float> %i.ey, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ia = shufflevector <4 x float> %i.ey, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ib = fmul <4 x float> %i.ia, %i.hi
  %i.ic = fadd <4 x float> %i.ib, %i.hu
  %i.id = fmul <4 x float> %i.hz, %i.gy
  %i.ie = fadd <4 x float> %i.id, %i.ic           ; 2 uses
  %i.if = shufflevector <3 x float> %i.fa, <3 x float> poison, <4 x i32> zeroinitializer
  %i.ig = shufflevector <3 x float> %i.fa, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ih = shufflevector <3 x float> %i.fa, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ii = fmul <4 x float> %i.ih, %i.hr
  %i.ij = fmul <4 x float> %i.ig, %i.hi
  %i.ik = fadd <4 x float> %i.ij, %i.ii
  %i.il = fmul <4 x float> %i.if, %i.gy
  %i.im = fadd <4 x float> %i.il, %i.ik           ; 2 uses
  %i.in = shufflevector <3 x float> %i.fc, <3 x float> poison, <4 x i32> zeroinitializer
  %i.io = shufflevector <3 x float> %i.fc, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ip = shufflevector <3 x float> %i.fc, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.iq = fmul <4 x float> %i.ip, %i.hr
  %i.ir = fmul <4 x float> %i.io, %i.hi
  %i.is = fadd <4 x float> %i.ir, %i.iq
  %i.it = fmul <4 x float> %i.in, %i.gy
  %i.iu = fadd <4 x float> %i.it, %i.is
  %i.iv = fadd <4 x float> %i.hs, %i.iu           ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.eh, i64 88
  %i.ix = load ptr, ptr %i.iw, align 8, !noalias !1489 ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 48
  %i.ja = load <4 x float>, ptr %i.iy, align 16, !noalias !1495
  %i.jb = load <4 x float>, ptr %i.iz, align 16, !noalias !1495
  %i.jc = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ja, <4 x float> %i.jb) ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  %i.je = getelementptr inbounds nuw i8, ptr %i.ix, i64 64
  %i.jf = load <4 x float>, ptr %i.jd, align 16, !noalias !1496
  %i.jg = load <4 x float>, ptr %i.je, align 16, !noalias !1496
  %i.jh = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.jf, <4 x float> %i.jg) ; 3 uses
  %i.ji = shufflevector <4 x float> %i.jc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jj = shufflevector <4 x float> %i.jc, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.jk = shufflevector <4 x float> %i.jc, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.jl = fmul <4 x float> %i.jk, %i.im
  %i.jm = fadd <4 x float> %i.jl, %i.iv           ; 2 uses
  %i.jn = fmul <4 x float> %i.jj, %i.ie           ; 2 uses
  %i.jo = fadd <4 x float> %i.jn, %i.jm           ; 2 uses
  %i.jp = fmul <4 x float> %i.ji, %i.hy           ; 4 uses
  %i.jq = fadd <4 x float> %i.jp, %i.jo           ; 2 uses
  %i.jr = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.jq)
  %i.js = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.jq)
  %i.jt = shufflevector <4 x float> %i.jh, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ju = fmul <4 x float> %i.im, %i.jt
  %i.jv = fadd <4 x float> %i.iv, %i.ju           ; 2 uses
  %i.jw = fadd <4 x float> %i.jn, %i.jv           ; 2 uses
  %i.jx = fadd <4 x float> %i.jp, %i.jw           ; 2 uses
  %i.jy = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.jr, <4 x float> %i.jx)
  %i.jz = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.js, <4 x float> %i.jx)
  %i.ka = shufflevector <4 x float> %i.jh, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.kb = fmul <4 x float> %i.ie, %i.ka           ; 2 uses
  %i.kc = fadd <4 x float> %i.jm, %i.kb           ; 2 uses
  %i.kd = fadd <4 x float> %i.jp, %i.kc           ; 2 uses
  %i.ke = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.jy, <4 x float> %i.kd)
  %i.kf = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.jz, <4 x float> %i.kd)
  %i.kg = fadd <4 x float> %i.kb, %i.jv           ; 2 uses
  %i.kh = fadd <4 x float> %i.jp, %i.kg           ; 2 uses
  %i.ki = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ke, <4 x float> %i.kh)
  %i.kj = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.kf, <4 x float> %i.kh)
  %i.kk = shufflevector <4 x float> %i.jh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kl = fmul <4 x float> %i.hy, %i.kk           ; 4 uses
  %i.km = fadd <4 x float> %i.kl, %i.jo           ; 2 uses
  %i.kn = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ki, <4 x float> %i.km)
  %i.ko = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.kj, <4 x float> %i.km)
  %i.kp = fadd <4 x float> %i.kl, %i.jw           ; 2 uses
  %i.kq = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.kn, <4 x float> %i.kp)
  %i.kr = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ko, <4 x float> %i.kp)
  %i.ks = fadd <4 x float> %i.kl, %i.kc           ; 2 uses
  %i.kt = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.kq, <4 x float> %i.ks)
  %i.ku = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.kr, <4 x float> %i.ks)
  %i.kv = fadd <4 x float> %i.kl, %i.kg           ; 2 uses
  %i.kw = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.kt, <4 x float> %i.kv)
  %i.kx = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ku, <4 x float> %i.kv)
  br label %.noexc10

.noexc219:                                        ; preds = %bb.b
  %i.ky = load <4 x float>, ptr %i.en, align 16, !noalias !1497 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.la = load <4 x float>, ptr %i.kz, align 16, !noalias !1498 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  %i.lc = load <4 x float>, ptr %i.lb, align 16, !noalias !1499 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.en, i64 48
  %i.le = load <4 x float>, ptr %i.ld, align 16, !noalias !1500 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.eh, i64 88
  %i.lg = load ptr, ptr %i.lf, align 8, !noalias !1489 ; 4 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 48
  %i.lj = load <4 x float>, ptr %i.lh, align 16, !noalias !1501
  %i.lk = load <4 x float>, ptr %i.li, align 16, !noalias !1501
  %i.ll = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.lj, <4 x float> %i.lk) ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lg, i64 32
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lg, i64 64
  %i.lo = load <4 x float>, ptr %i.lm, align 16, !noalias !1502
  %i.lp = load <4 x float>, ptr %i.ln, align 16, !noalias !1502
  %i.lq = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.lo, <4 x float> %i.lp) ; 3 uses
  %i.lr = shufflevector <4 x float> %i.ll, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ls = shufflevector <4 x float> %i.ll, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.lt = shufflevector <4 x float> %i.ll, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.lu = fmul <4 x float> %i.lc, %i.lt
  %i.lv = fadd <4 x float> %i.le, %i.lu           ; 2 uses
  %i.lw = fmul <4 x float> %i.la, %i.ls           ; 2 uses
  %i.lx = fadd <4 x float> %i.lw, %i.lv           ; 2 uses
  %i.ly = fmul <4 x float> %i.ky, %i.lr           ; 4 uses
  %i.lz = fadd <4 x float> %i.ly, %i.lx           ; 2 uses
  %i.ma = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.lz)
  %i.mb = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.lz)
  %i.mc = shufflevector <4 x float> %i.lq, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.md = fmul <4 x float> %i.lc, %i.mc
  %i.me = fadd <4 x float> %i.le, %i.md           ; 2 uses
  %i.mf = fadd <4 x float> %i.lw, %i.me           ; 2 uses
  %i.mg = fadd <4 x float> %i.ly, %i.mf           ; 2 uses
  %i.mh = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ma, <4 x float> %i.mg)
  %i.mi = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.mb, <4 x float> %i.mg)
  %i.mj = shufflevector <4 x float> %i.lq, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.mk = fmul <4 x float> %i.la, %i.mj           ; 2 uses
  %i.ml = fadd <4 x float> %i.lv, %i.mk           ; 2 uses
  %i.mm = fadd <4 x float> %i.ly, %i.ml           ; 2 uses
  %i.mn = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.mh, <4 x float> %i.mm)
  %i.mo = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.mi, <4 x float> %i.mm)
  %i.mp = fadd <4 x float> %i.mk, %i.me           ; 2 uses
  %i.mq = fadd <4 x float> %i.ly, %i.mp           ; 2 uses
  %i.mr = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.mn, <4 x float> %i.mq)
  %i.ms = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.mo, <4 x float> %i.mq)
  %i.mt = shufflevector <4 x float> %i.lq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mu = fmul <4 x float> %i.ky, %i.mt           ; 4 uses
  %i.mv = fadd <4 x float> %i.lx, %i.mu           ; 2 uses
  %i.mw = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.mr, <4 x float> %i.mv)
  %i.mx = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ms, <4 x float> %i.mv)
  %i.my = fadd <4 x float> %i.mu, %i.mf           ; 2 uses
  %i.mz = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.mw, <4 x float> %i.my)
  %i.na = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.mx, <4 x float> %i.my)
  %i.nb = fadd <4 x float> %i.mu, %i.ml           ; 2 uses
  %i.nc = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.mz, <4 x float> %i.nb)
  %i.nd = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.na, <4 x float> %i.nb)
  %i.ne = fadd <4 x float> %i.mu, %i.mp           ; 2 uses
  %i.nf = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.nc, <4 x float> %i.ne)
  %i.ng = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.nd, <4 x float> %i.ne)
  br label %.noexc10

.noexc10:                                         ; preds = %.noexc216, %.noexc219
  %.sroa.38.0 = phi <4 x float> [ %i.kx, %.noexc216 ], [ %i.ng, %.noexc219 ]
  %.sroa.0.0 = phi <4 x float> [ %i.kw, %.noexc216 ], [ %i.nf, %.noexc219 ]
  %i.nh = trunc i64 %.01194 to i32
  %i.ni = fadd <4 x float> %.sroa.38.0, %.sroa.0.0
  %i.nj = fsub <4 x float> %i.ni, %i.h
  %i.nk = fmul <4 x float> %i.j, %i.nj
  %i.nl = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.nk) ; 3 uses
  %i.nm = extractelement <4 x i32> %i.nl, i64 0
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ee
  store i32 %i.nm, ptr %i.nn, align 4
  %.sroa.0479.4.vec.extract = extractelement <4 x i32> %i.nl, i64 1
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ee
  store i32 %.sroa.0479.4.vec.extract, ptr %i.no, align 4
  %.sroa.0479.8.vec.extract = extractelement <4 x i32> %i.nl, i64 2
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ee
  store i32 %.sroa.0479.8.vec.extract, ptr %i.np, align 4
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ee
  store i32 %i.nh, ptr %i.nq, align 4
  %i.nr = add nsw i64 %i.ee, 1                    ; 2 uses
  %i.ns = add i64 %i.ef, 1                        ; 3 uses
  %i.nt = icmp eq i64 %i.nr, 4
  br i1 %i.nt, label %.noexc15, label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit

.noexc15:                                         ; preds = %.noexc10
  %i.nu = load <2 x i64>, ptr %i.k, align 16, !noalias !1503 ; 2 uses
  %i.nv = load <2 x i64>, ptr %i.l, align 16, !noalias !1503 ; 2 uses
  %i.nw = load <2 x i64>, ptr %i.m, align 16, !noalias !1503 ; 2 uses
  %i.nx = bitcast <2 x i64> %i.nu to <4 x i32>
  %i.ny = shl <4 x i32> %i.nx, splat (i32 16)
  %i.nz = bitcast <4 x i32> %i.ny to <2 x i64>
  %i.oa = or <2 x i64> %i.nu, %i.nz
  %i.ob = and <2 x i64> %i.oa, splat (i64 216173877380776191) ; 2 uses
  %i.oc = bitcast <2 x i64> %i.ob to <4 x i32>
  %i.od = shl <4 x i32> %i.oc, splat (i32 8)
  %i.oe = bitcast <4 x i32> %i.od to <2 x i64>
  %i.of = or disjoint <2 x i64> %i.ob, %i.oe
  %i.og = and <2 x i64> %i.of, splat (i64 216436729379352591) ; 2 uses
  %i.oh = bitcast <2 x i64> %i.og to <4 x i32>
  %i.oi = shl nuw nsw <4 x i32> %i.oh, splat (i32 4)
  %i.oj = bitcast <4 x i32> %i.oi to <2 x i64>
  %i.ok = or disjoint <2 x i64> %i.og, %i.oj
  %i.ol = and <2 x i64> %i.ok, splat (i64 219604095962198211) ; 2 uses
  %i.om = bitcast <2 x i64> %i.ol to <4 x i32>
  %i.on = shl nuw nsw <4 x i32> %i.om, splat (i32 2)
  %i.oo = bitcast <4 x i32> %i.on to <2 x i64>
  %i.op = or disjoint <2 x i64> %i.ol, %i.oo
  %i.oq = and <2 x i64> %i.op, splat (i64 658812287886594633)
  %i.or = bitcast <2 x i64> %i.nv to <4 x i32>
  %i.os = shl <4 x i32> %i.or, splat (i32 16)
  %i.ot = bitcast <4 x i32> %i.os to <2 x i64>
  %i.ou = or <2 x i64> %i.nv, %i.ot
  %i.ov = and <2 x i64> %i.ou, splat (i64 216173877380776191) ; 2 uses
  %i.ow = bitcast <2 x i64> %i.ov to <4 x i32>
  %i.ox = shl <4 x i32> %i.ow, splat (i32 8)
  %i.oy = bitcast <4 x i32> %i.ox to <2 x i64>
  %i.oz = or disjoint <2 x i64> %i.ov, %i.oy
  %i.pa = and <2 x i64> %i.oz, splat (i64 216436729379352591) ; 2 uses
  %i.pb = bitcast <2 x i64> %i.pa to <4 x i32>
  %i.pc = shl nuw nsw <4 x i32> %i.pb, splat (i32 4)
  %i.pd = bitcast <2 x i64> %i.pa to <4 x i32>
  %i.pe = or disjoint <4 x i32> %i.pc, %i.pd
  %i.pf = and <4 x i32> %i.pe, splat (i32 51130563) ; 2 uses
  %i.pg = bitcast <2 x i64> %i.nw to <4 x i32>
  %i.ph = shl <4 x i32> %i.pg, splat (i32 16)
  %i.pi = bitcast <4 x i32> %i.ph to <2 x i64>
  %i.pj = or <2 x i64> %i.nw, %i.pi
  %i.pk = and <2 x i64> %i.pj, splat (i64 216173877380776191) ; 2 uses
  %i.pl = bitcast <2 x i64> %i.pk to <4 x i32>
  %i.pm = shl <4 x i32> %i.pl, splat (i32 8)
  %i.pn = bitcast <4 x i32> %i.pm to <2 x i64>
  %i.po = or disjoint <2 x i64> %i.pk, %i.pn
  %i.pp = and <2 x i64> %i.po, splat (i64 216436729379352591) ; 2 uses
  %i.pq = bitcast <2 x i64> %i.pp to <4 x i32>
  %i.pr = shl nuw nsw <4 x i32> %i.pq, splat (i32 4)
  %i.ps = bitcast <2 x i64> %i.pp to <4 x i32>
  %i.pt = or disjoint <4 x i32> %i.pr, %i.ps
  %i.pu = and <4 x i32> %i.pt, splat (i32 51130563) ; 2 uses
  %i.pv = shl nuw nsw <4 x i32> %i.pf, splat (i32 3)
  %i.pw = shl nuw nsw <4 x i32> %i.pf, splat (i32 1)
  %i.px = or disjoint <4 x i32> %i.pv, %i.pw
  %i.py = bitcast <4 x i32> %i.px to <2 x i64>
  %i.pz = and <2 x i64> %i.py, splat (i64 1317624575773189266)
  %i.qa = or disjoint <2 x i64> %i.pz, %i.oq
  %i.qb = shl nuw nsw <4 x i32> %i.pu, splat (i32 4)
  %i.qc = shl nuw nsw <4 x i32> %i.pu, splat (i32 2)
  %i.qd = or disjoint <4 x i32> %i.qb, %i.qc
  %i.qe = bitcast <4 x i32> %i.qd to <2 x i64>
  %i.qf = and <2 x i64> %i.qe, splat (i64 2635249151546378532)
  %i.qg = or disjoint <2 x i64> %i.qa, %i.qf
  %i.qh = getelementptr [8 x i8], ptr %i.g, i64 %i.ns ; 2 uses
  %i.qi = getelementptr i8, ptr %i.qh, i64 -32
  %i.qj = bitcast <2 x i64> %i.qg to <4 x float>  ; 2 uses
  %i.qk = load <4 x float>, ptr %i.n, align 16, !noalias !1504 ; 2 uses
  %i.ql = shufflevector <4 x float> %i.qj, <4 x float> %i.qk, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.ql, ptr %i.qi, align 1
  %i.qm = getelementptr i8, ptr %i.qh, i64 -16
  %i.qn = shufflevector <4 x float> %i.qj, <4 x float> %i.qk, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.qn, ptr %i.qm, align 1
  br label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit

_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit: ; preds = %.noexc15, %.noexc10
  %i.qo = phi i64 [ 0, %.noexc15 ], [ %i.nr, %.noexc10 ] ; 10 uses
  %i.qp = add nuw i64 %.01194, 1                  ; 2 uses
  %i.qq = load i64, ptr %i.o, align 8
  %i.qr = icmp ult i64 %i.qp, %i.qq
  br i1 %i.qr, label %bb.b, label %._crit_edge, !llvm.loop !1487
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_19parallel_prefix_sumImmZNS_4sse221createMortonCodeArrayINS_8InstanceEEEmPT_RNS_8vector_tINS4_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorISB_Lm8EEEEERNS_20BuildProgressMonitorEEUlRKNS_5rangeImEEmE_St4plusImEEET0_RNS_22ParallelPrefixSumStateISP_EES7_S7_S7_RKSP_RKT1_RKT2_EUlmE_EEvS7_SU_EUlSL_E_EEvS7_S7_S7_SU_PNS0_16TaskGroupContextE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.305, align 8            ; 9 uses
  %i.a = sub i64 %1, %0                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store i64 %1, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.e = load i64, ptr %3, align 8
  store i64 %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %4, ptr %i.f, align 8
  %i.g = tail call noundef ptr @_ZN6embree13TaskScheduler6threadEv() ; 7 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.l, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 262272 ; 5 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 8
  %i.k = icmp ugt i64 %i.j, 4095
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #19
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.u, %bb.i ], [ %i.l, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.m, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #18
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.f:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 786624 ; 2 uses
  %i.o = load i64, ptr %i.n, align 64             ; 4 uses
  %i.p = sub i64 0, %i.o
  %i.q = and i64 %i.p, 63                         ; 2 uses
  %i.r = add i64 %i.o, 48
  %i.s = add i64 %i.r, %i.q                       ; 2 uses
  %i.t = icmp ugt i64 %i.s, 524288
  br i1 %i.t, label %bb.g, label %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i

bb.g:                                             ; preds = %bb.f
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull @.str.1)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #19
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i: ; preds = %bb.f
  store i64 %i.s, ptr %i.n, align 64
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 262336
  %i.x = getelementptr i8, ptr %i.w, i64 %i.o
  %i.y = getelementptr i8, ptr %i.x, i64 %i.q     ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_12parallel_forImZNS_19parallel_prefix_sumImmZNS_4sse221createMortonCodeArrayINS_8InstanceEEEmPT_RNS_8vector_tINS5_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorISC_Lm8EEEEERNS_20BuildProgressMonitorEEUlRKNS_5rangeImEEmE_St4plusImEEET0_RNS_22ParallelPrefixSumStateISQ_EES8_S8_S8_RKSQ_RKT1_RKT2_EUlmE_EEvS8_SV_EUlSM_E_EEvS8_S8_S8_SV_PNS0_16TaskGroupContextEEUlvE_EE, i64 16), ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false)
  %i.aa = load atomic i64, ptr %i.i seq_cst, align 64
  %i.ab = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %i.aa ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 786688
  %i.ad = load ptr, ptr %i.ac, align 64           ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 1, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i8 1, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.y, ptr %i.ag, align 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.ad, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %4, ptr %i.ai, align 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store i64 %i.o, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store i64 %i.a, ptr %i.ak, align 16
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.am = atomicrmw add ptr %i.al, i32 1 seq_cst, align 4 ; 0 uses
  br label %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i

_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i: ; preds = %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i, %bb.j
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !32
  %i.an = cmpxchg ptr %i.ab, i32 0, i32 1 seq_cst seq_cst, align 4 ; 0 uses
  %i.ao = atomicrmw add ptr %i.i, i64 1 seq_cst, align 8 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 262208 ; 2 uses
  %i.aq = load atomic i64, ptr %i.ap seq_cst, align 64
end_hunk_9
begin_hunk_10_@_ZZN6embree4sse221createMortonCodeArrayINS_8InstanceEEEmPT_RNS_8vector_tINS0_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS7_Lm8EEEEERNS_20BuildProgressMonitorEENKUlRKNS_5rangeImEEmE_clESH_m:bb.a
  %i.gw = fadd <4 x float> %i.gu, %i.gv
  %i.gx = fmul <4 x float> %i.gp, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.gy = fadd <4 x float> %i.gx, %i.gw           ; 4 uses
  %i.gz = insertelement <4 x float> poison, float %i.fr, i64 0
  %i.ha = shufflevector <4 x float> %i.gz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hb = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hc = insertelement <4 x float> poison, float %i.gj, i64 0
  %i.hd = shufflevector <4 x float> %i.hc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.he = fmul <4 x float> %i.hd, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.hf = fmul <4 x float> %i.hb, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.hg = fadd <4 x float> %i.hf, %i.he
  %i.hh = fmul <4 x float> %i.ha, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.hi = fadd <4 x float> %i.hh, %i.hg           ; 4 uses
  %i.hj = shufflevector <2 x float> %i.gl, <2 x float> poison, <4 x i32> zeroinitializer
  %i.hk = shufflevector <2 x float> %i.gl, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.hl = insertelement <4 x float> poison, float %i.gn, i64 0
  %i.hm = shufflevector <4 x float> %i.hl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hn = fmul <4 x float> %i.hm, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.ho = fmul <4 x float> %i.hk, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.hp = fadd <4 x float> %i.ho, %i.hn
  %i.hq = fmul <4 x float> %i.hj, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.hr = fadd <4 x float> %i.hq, %i.hp           ; 3 uses
  %i.hs = fadd <4 x float> %.sroa.17978.56.vec.insert, zeroinitializer
  %i.ht = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hu = fmul <4 x float> %i.hr, zeroinitializer ; 2 uses
  %i.hv = fmul <4 x float> %i.hi, zeroinitializer
  %i.hw = fadd <4 x float> %i.hv, %i.hu
  %i.hx = fmul <4 x float> %i.ht, %i.gy
  %i.hy = fadd <4 x float> %i.hx, %i.hw           ; 2 uses
  %i.hz = shufflevector <4 x float> %i.ey, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ia = shufflevector <4 x float> %i.ey, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ib = fmul <4 x float> %i.ia, %i.hi
  %i.ic = fadd <4 x float> %i.ib, %i.hu
  %i.id = fmul <4 x float> %i.hz, %i.gy
  %i.ie = fadd <4 x float> %i.id, %i.ic           ; 2 uses
  %i.if = shufflevector <3 x float> %i.fa, <3 x float> poison, <4 x i32> zeroinitializer
  %i.ig = shufflevector <3 x float> %i.fa, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ih = shufflevector <3 x float> %i.fa, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ii = fmul <4 x float> %i.ih, %i.hr
  %i.ij = fmul <4 x float> %i.ig, %i.hi
  %i.ik = fadd <4 x float> %i.ij, %i.ii
  %i.il = fmul <4 x float> %i.if, %i.gy
  %i.im = fadd <4 x float> %i.il, %i.ik           ; 2 uses
  %i.in = shufflevector <3 x float> %i.fc, <3 x float> poison, <4 x i32> zeroinitializer
  %i.io = shufflevector <3 x float> %i.fc, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ip = shufflevector <3 x float> %i.fc, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.iq = fmul <4 x float> %i.ip, %i.hr
  %i.ir = fmul <4 x float> %i.io, %i.hi
  %i.is = fadd <4 x float> %i.ir, %i.iq
  %i.it = fmul <4 x float> %i.in, %i.gy
  %i.iu = fadd <4 x float> %i.it, %i.is
  %i.iv = fadd <4 x float> %i.hs, %i.iu           ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.eh, i64 88
  %i.ix = load ptr, ptr %i.iw, align 8, !noalias !1554 ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 48
  %i.ja = load <4 x float>, ptr %i.iy, align 16, !noalias !1560
  %i.jb = load <4 x float>, ptr %i.iz, align 16, !noalias !1560
  %i.jc = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ja, <4 x float> %i.jb) ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  %i.je = getelementptr inbounds nuw i8, ptr %i.ix, i64 64
  %i.jf = load <4 x float>, ptr %i.jd, align 16, !noalias !1561
  %i.jg = load <4 x float>, ptr %i.je, align 16, !noalias !1561
  %i.jh = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.jf, <4 x float> %i.jg) ; 3 uses
  %i.ji = shufflevector <4 x float> %i.jc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jj = shufflevector <4 x float> %i.jc, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.jk = shufflevector <4 x float> %i.jc, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.jl = fmul <4 x float> %i.jk, %i.im
  %i.jm = fadd <4 x float> %i.jl, %i.iv           ; 2 uses
  %i.jn = fmul <4 x float> %i.jj, %i.ie           ; 2 uses
  %i.jo = fadd <4 x float> %i.jn, %i.jm           ; 2 uses
  %i.jp = fmul <4 x float> %i.ji, %i.hy           ; 4 uses
  %i.jq = fadd <4 x float> %i.jp, %i.jo           ; 2 uses
  %i.jr = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.jq)
  %i.js = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.jq)
  %i.jt = shufflevector <4 x float> %i.jh, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ju = fmul <4 x float> %i.im, %i.jt
  %i.jv = fadd <4 x float> %i.iv, %i.ju           ; 2 uses
  %i.jw = fadd <4 x float> %i.jn, %i.jv           ; 2 uses
  %i.jx = fadd <4 x float> %i.jp, %i.jw           ; 2 uses
  %i.jy = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.jr, <4 x float> %i.jx)
  %i.jz = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.js, <4 x float> %i.jx)
  %i.ka = shufflevector <4 x float> %i.jh, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.kb = fmul <4 x float> %i.ie, %i.ka           ; 2 uses
  %i.kc = fadd <4 x float> %i.jm, %i.kb           ; 2 uses
  %i.kd = fadd <4 x float> %i.jp, %i.kc           ; 2 uses
  %i.ke = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.jy, <4 x float> %i.kd)
  %i.kf = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.jz, <4 x float> %i.kd)
  %i.kg = fadd <4 x float> %i.kb, %i.jv           ; 2 uses
  %i.kh = fadd <4 x float> %i.jp, %i.kg           ; 2 uses
  %i.ki = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ke, <4 x float> %i.kh)
  %i.kj = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.kf, <4 x float> %i.kh)
  %i.kk = shufflevector <4 x float> %i.jh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kl = fmul <4 x float> %i.hy, %i.kk           ; 4 uses
  %i.km = fadd <4 x float> %i.kl, %i.jo           ; 2 uses
  %i.kn = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ki, <4 x float> %i.km)
  %i.ko = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.kj, <4 x float> %i.km)
  %i.kp = fadd <4 x float> %i.kl, %i.jw           ; 2 uses
  %i.kq = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.kn, <4 x float> %i.kp)
  %i.kr = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ko, <4 x float> %i.kp)
  %i.ks = fadd <4 x float> %i.kl, %i.kc           ; 2 uses
  %i.kt = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.kq, <4 x float> %i.ks)
  %i.ku = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.kr, <4 x float> %i.ks)
  %i.kv = fadd <4 x float> %i.kl, %i.kg           ; 2 uses
  %i.kw = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.kt, <4 x float> %i.kv)
  %i.kx = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ku, <4 x float> %i.kv)
  br label %bb.b

.noexc227:                                        ; preds = %_ZN6embree4BBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit
  %i.ky = load <4 x float>, ptr %i.en, align 16, !noalias !1562 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.la = load <4 x float>, ptr %i.kz, align 16, !noalias !1563 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  %i.lc = load <4 x float>, ptr %i.lb, align 16, !noalias !1564 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.en, i64 48
  %i.le = load <4 x float>, ptr %i.ld, align 16, !noalias !1565 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.eh, i64 88
  %i.lg = load ptr, ptr %i.lf, align 8, !noalias !1554 ; 4 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 48
  %i.lj = load <4 x float>, ptr %i.lh, align 16, !noalias !1566
  %i.lk = load <4 x float>, ptr %i.li, align 16, !noalias !1566
  %i.ll = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.lj, <4 x float> %i.lk) ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lg, i64 32
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lg, i64 64
  %i.lo = load <4 x float>, ptr %i.lm, align 16, !noalias !1567
  %i.lp = load <4 x float>, ptr %i.ln, align 16, !noalias !1567
  %i.lq = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.lo, <4 x float> %i.lp) ; 3 uses
  %i.lr = shufflevector <4 x float> %i.ll, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ls = shufflevector <4 x float> %i.ll, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.lt = shufflevector <4 x float> %i.ll, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.lu = fmul <4 x float> %i.lc, %i.lt
  %i.lv = fadd <4 x float> %i.le, %i.lu           ; 2 uses
  %i.lw = fmul <4 x float> %i.la, %i.ls           ; 2 uses
  %i.lx = fadd <4 x float> %i.lw, %i.lv           ; 2 uses
  %i.ly = fmul <4 x float> %i.ky, %i.lr           ; 4 uses
  %i.lz = fadd <4 x float> %i.ly, %i.lx           ; 2 uses
  %i.ma = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.lz)
  %i.mb = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.lz)
  %i.mc = shufflevector <4 x float> %i.lq, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.md = fmul <4 x float> %i.lc, %i.mc
  %i.me = fadd <4 x float> %i.le, %i.md           ; 2 uses
  %i.mf = fadd <4 x float> %i.lw, %i.me           ; 2 uses
  %i.mg = fadd <4 x float> %i.ly, %i.mf           ; 2 uses
  %i.mh = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ma, <4 x float> %i.mg)
  %i.mi = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.mb, <4 x float> %i.mg)
  %i.mj = shufflevector <4 x float> %i.lq, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.mk = fmul <4 x float> %i.la, %i.mj           ; 2 uses
  %i.ml = fadd <4 x float> %i.lv, %i.mk           ; 2 uses
  %i.mm = fadd <4 x float> %i.ly, %i.ml           ; 2 uses
  %i.mn = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.mh, <4 x float> %i.mm)
  %i.mo = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.mi, <4 x float> %i.mm)
  %i.mp = fadd <4 x float> %i.mk, %i.me           ; 2 uses
  %i.mq = fadd <4 x float> %i.ly, %i.mp           ; 2 uses
  %i.mr = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.mn, <4 x float> %i.mq)
  %i.ms = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.mo, <4 x float> %i.mq)
  %i.mt = shufflevector <4 x float> %i.lq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mu = fmul <4 x float> %i.ky, %i.mt           ; 4 uses
  %i.mv = fadd <4 x float> %i.lx, %i.mu           ; 2 uses
  %i.mw = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.mr, <4 x float> %i.mv)
  %i.mx = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ms, <4 x float> %i.mv)
  %i.my = fadd <4 x float> %i.mu, %i.mf           ; 2 uses
  %i.mz = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.mw, <4 x float> %i.my)
  %i.na = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.mx, <4 x float> %i.my)
  %i.nb = fadd <4 x float> %i.mu, %i.ml           ; 2 uses
  %i.nc = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.mz, <4 x float> %i.nb)
  %i.nd = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.na, <4 x float> %i.nb)
  %i.ne = fadd <4 x float> %i.mu, %i.mp           ; 2 uses
  %i.nf = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.nc, <4 x float> %i.ne)
  %i.ng = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.nd, <4 x float> %i.ne)
  br label %bb.b

bb.b:                                             ; preds = %.noexc227, %.noexc224
  %.sroa.38.0 = phi <4 x float> [ %i.kx, %.noexc224 ], [ %i.ng, %.noexc227 ] ; 2 uses
  %.sroa.0696.0 = phi <4 x float> [ %i.kw, %.noexc224 ], [ %i.nf, %.noexc227 ] ; 2 uses
  %i.nh = fcmp ugt <4 x float> %.sroa.0696.0, splat (float -1.844000e+18)
  %i.ni = fcmp olt <4 x float> %.sroa.38.0, splat (float 1.844000e+18)
  %i.nj = and <4 x i1> %i.ni, %i.nh
  %i.nk = bitcast <4 x i1> %i.nj to i4
  %i.nl = and i4 %i.nk, 7
  %i.nm = icmp eq i4 %i.nl, 7
  br i1 %i.nm, label %.noexc15, label %bb.c, !prof !24

.noexc15:                                         ; preds = %bb.b
  %i.nn = trunc i64 %.0111211 to i32
  %i.no = fadd <4 x float> %.sroa.38.0, %.sroa.0696.0
  %i.np = fsub <4 x float> %i.no, %i.h
  %i.nq = fmul <4 x float> %i.j, %i.np
  %i.nr = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.nq) ; 3 uses
  %i.ns = extractelement <4 x i32> %i.nr, i64 0
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ee
  store i32 %i.ns, ptr %i.nt, align 4
  %.sroa.0455.4.vec.extract = extractelement <4 x i32> %i.nr, i64 1
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ee
  store i32 %.sroa.0455.4.vec.extract, ptr %i.nu, align 4
  %.sroa.0455.8.vec.extract = extractelement <4 x i32> %i.nr, i64 2
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ee
  store i32 %.sroa.0455.8.vec.extract, ptr %i.nv, align 4
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ee
  store i32 %i.nn, ptr %i.nw, align 4
  %i.nx = add nsw i64 %i.ee, 1                    ; 2 uses
  %i.ny = add i64 %i.ef, 1                        ; 2 uses
  %i.nz = icmp eq i64 %i.nx, 4
  br i1 %i.nz, label %.noexc20, label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit

.noexc20:                                         ; preds = %.noexc15
  %i.oa = load <2 x i64>, ptr %i.k, align 16, !noalias !1568 ; 2 uses
  %i.ob = load <2 x i64>, ptr %i.l, align 16, !noalias !1568 ; 2 uses
  %i.oc = load <2 x i64>, ptr %i.m, align 16, !noalias !1568 ; 2 uses
  %i.od = bitcast <2 x i64> %i.oa to <4 x i32>
  %i.oe = shl <4 x i32> %i.od, splat (i32 16)
  %i.of = bitcast <4 x i32> %i.oe to <2 x i64>
  %i.og = or <2 x i64> %i.oa, %i.of
  %i.oh = and <2 x i64> %i.og, splat (i64 216173877380776191) ; 2 uses
  %i.oi = bitcast <2 x i64> %i.oh to <4 x i32>
  %i.oj = shl <4 x i32> %i.oi, splat (i32 8)
  %i.ok = bitcast <4 x i32> %i.oj to <2 x i64>
  %i.ol = or disjoint <2 x i64> %i.oh, %i.ok
  %i.om = and <2 x i64> %i.ol, splat (i64 216436729379352591) ; 2 uses
  %i.on = bitcast <2 x i64> %i.om to <4 x i32>
  %i.oo = shl nuw nsw <4 x i32> %i.on, splat (i32 4)
  %i.op = bitcast <4 x i32> %i.oo to <2 x i64>
  %i.oq = or disjoint <2 x i64> %i.om, %i.op
  %i.or = and <2 x i64> %i.oq, splat (i64 219604095962198211) ; 2 uses
  %i.os = bitcast <2 x i64> %i.or to <4 x i32>
  %i.ot = shl nuw nsw <4 x i32> %i.os, splat (i32 2)
  %i.ou = bitcast <4 x i32> %i.ot to <2 x i64>
  %i.ov = or disjoint <2 x i64> %i.or, %i.ou
  %i.ow = and <2 x i64> %i.ov, splat (i64 658812287886594633)
  %i.ox = bitcast <2 x i64> %i.ob to <4 x i32>
  %i.oy = shl <4 x i32> %i.ox, splat (i32 16)
  %i.oz = bitcast <4 x i32> %i.oy to <2 x i64>
  %i.pa = or <2 x i64> %i.ob, %i.oz
  %i.pb = and <2 x i64> %i.pa, splat (i64 216173877380776191) ; 2 uses
  %i.pc = bitcast <2 x i64> %i.pb to <4 x i32>
  %i.pd = shl <4 x i32> %i.pc, splat (i32 8)
  %i.pe = bitcast <4 x i32> %i.pd to <2 x i64>
  %i.pf = or disjoint <2 x i64> %i.pb, %i.pe
  %i.pg = and <2 x i64> %i.pf, splat (i64 216436729379352591) ; 2 uses
  %i.ph = bitcast <2 x i64> %i.pg to <4 x i32>
  %i.pi = shl nuw nsw <4 x i32> %i.ph, splat (i32 4)
  %i.pj = bitcast <2 x i64> %i.pg to <4 x i32>
  %i.pk = or disjoint <4 x i32> %i.pi, %i.pj
  %i.pl = and <4 x i32> %i.pk, splat (i32 51130563) ; 2 uses
  %i.pm = bitcast <2 x i64> %i.oc to <4 x i32>
  %i.pn = shl <4 x i32> %i.pm, splat (i32 16)
  %i.po = bitcast <4 x i32> %i.pn to <2 x i64>
  %i.pp = or <2 x i64> %i.oc, %i.po
  %i.pq = and <2 x i64> %i.pp, splat (i64 216173877380776191) ; 2 uses
  %i.pr = bitcast <2 x i64> %i.pq to <4 x i32>
  %i.ps = shl <4 x i32> %i.pr, splat (i32 8)
  %i.pt = bitcast <4 x i32> %i.ps to <2 x i64>
  %i.pu = or disjoint <2 x i64> %i.pq, %i.pt
  %i.pv = and <2 x i64> %i.pu, splat (i64 216436729379352591) ; 2 uses
  %i.pw = bitcast <2 x i64> %i.pv to <4 x i32>
  %i.px = shl nuw nsw <4 x i32> %i.pw, splat (i32 4)
  %i.py = bitcast <2 x i64> %i.pv to <4 x i32>
  %i.pz = or disjoint <4 x i32> %i.px, %i.py
  %i.qa = and <4 x i32> %i.pz, splat (i32 51130563) ; 2 uses
  %i.qb = shl nuw nsw <4 x i32> %i.pl, splat (i32 3)
  %i.qc = shl nuw nsw <4 x i32> %i.pl, splat (i32 1)
  %i.qd = or disjoint <4 x i32> %i.qb, %i.qc
  %i.qe = bitcast <4 x i32> %i.qd to <2 x i64>
  %i.qf = and <2 x i64> %i.qe, splat (i64 1317624575773189266)
  %i.qg = or disjoint <2 x i64> %i.qf, %i.ow
  %i.qh = shl nuw nsw <4 x i32> %i.qa, splat (i32 4)
  %i.qi = shl nuw nsw <4 x i32> %i.qa, splat (i32 2)
  %i.qj = or disjoint <4 x i32> %i.qh, %i.qi
  %i.qk = bitcast <4 x i32> %i.qj to <2 x i64>
  %i.ql = and <2 x i64> %i.qk, splat (i64 2635249151546378532)
  %i.qm = or disjoint <2 x i64> %i.qg, %i.ql
  %i.qn = getelementptr [8 x i8], ptr %i.g, i64 %i.ny ; 2 uses
  %i.qo = getelementptr i8, ptr %i.qn, i64 -32
  %i.qp = bitcast <2 x i64> %i.qm to <4 x float>  ; 2 uses
  %i.qq = load <4 x float>, ptr %i.n, align 16, !noalias !1569 ; 2 uses
  %i.qr = shufflevector <4 x float> %i.qp, <4 x float> %i.qq, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.qr, ptr %i.qo, align 1
  %i.qs = getelementptr i8, ptr %i.qn, i64 -16
  %i.qt = shufflevector <4 x float> %i.qp, <4 x float> %i.qq, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.qt, ptr %i.qs, align 1
  br label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit

_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit: ; preds = %.noexc20, %.noexc15
  %i.qu = phi i64 [ 0, %.noexc20 ], [ %i.nx, %.noexc15 ]
  %i.qv = add i64 %.01212, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit
  %i.qw = phi i64 [ %i.ny, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %i.ef, %bb.b ] ; 2 uses
  %i.qx = phi i64 [ %i.qu, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %i.ee, %bb.b ] ; 10 uses
  %.1 = phi i64 [ %i.qv, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %.01212, %bb.b ] ; 3 uses
  %i.qy = add nuw i64 %.0111211, 1                ; 2 uses
  %i.qz = load i64, ptr %i.o, align 8
  %i.ra = icmp ult i64 %i.qy, %i.qz
  br i1 %i.ra, label %_ZN6embree4BBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit, label %._crit_edge, !llvm.loop !1552
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_19parallel_prefix_sumImmZNS_4sse221createMortonCodeArrayINS_8InstanceEEEmPT_RNS_8vector_tINS4_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorISB_Lm8EEEEERNS_20BuildProgressMonitorEEUlRKNS_5rangeImEEmE0_St4plusImEEET0_RNS_22ParallelPrefixSumStateISP_EES7_S7_S7_RKSP_RKT1_RKT2_EUlmE_EEvS7_SU_EUlSL_E_EEvS7_S7_S7_SU_PNS0_16TaskGroupContextE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.309, align 8            ; 9 uses
  %i.a = sub i64 %1, %0                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store i64 %1, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.e = load i64, ptr %3, align 8
  store i64 %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %4, ptr %i.f, align 8
  %i.g = tail call noundef ptr @_ZN6embree13TaskScheduler6threadEv() ; 7 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.l, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 262272 ; 5 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 8
  %i.k = icmp ugt i64 %i.j, 4095
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #19
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.u, %bb.i ], [ %i.l, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.m, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #18
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.f:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 786624 ; 2 uses
  %i.o = load i64, ptr %i.n, align 64             ; 4 uses
  %i.p = sub i64 0, %i.o
  %i.q = and i64 %i.p, 63                         ; 2 uses
  %i.r = add i64 %i.o, 48
  %i.s = add i64 %i.r, %i.q                       ; 2 uses
  %i.t = icmp ugt i64 %i.s, 524288
  br i1 %i.t, label %bb.g, label %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i

bb.g:                                             ; preds = %bb.f
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull @.str.1)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #19
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i: ; preds = %bb.f
  store i64 %i.s, ptr %i.n, align 64
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 262336
  %i.x = getelementptr i8, ptr %i.w, i64 %i.o
  %i.y = getelementptr i8, ptr %i.x, i64 %i.q     ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_12parallel_forImZNS_19parallel_prefix_sumImmZNS_4sse221createMortonCodeArrayINS_8InstanceEEEmPT_RNS_8vector_tINS5_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorISC_Lm8EEEEERNS_20BuildProgressMonitorEEUlRKNS_5rangeImEEmE0_St4plusImEEET0_RNS_22ParallelPrefixSumStateISQ_EES8_S8_S8_RKSQ_RKT1_RKT2_EUlmE_EEvS8_SV_EUlSM_E_EEvS8_S8_S8_SV_PNS0_16TaskGroupContextEEUlvE_EE, i64 16), ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false)
  %i.aa = load atomic i64, ptr %i.i seq_cst, align 64
  %i.ab = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %i.aa ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 786688
  %i.ad = load ptr, ptr %i.ac, align 64           ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 1, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i8 1, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.y, ptr %i.ag, align 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.ad, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %4, ptr %i.ai, align 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store i64 %i.o, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store i64 %i.a, ptr %i.ak, align 16
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.am = atomicrmw add ptr %i.al, i32 1 seq_cst, align 4 ; 0 uses
  br label %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i
end_hunk_10
begin_hunk_11_@_ZZN6embree4sse221createMortonCodeArrayINS_8InstanceEEEmPT_RNS_8vector_tINS0_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS7_Lm8EEEEERNS_20BuildProgressMonitorEENKUlRKNS_5rangeImEEmE0_clESH_m:bb.a
  %i.gw = fadd <4 x float> %i.gu, %i.gv
  %i.gx = fmul <4 x float> %i.gp, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.gy = fadd <4 x float> %i.gx, %i.gw           ; 4 uses
  %i.gz = insertelement <4 x float> poison, float %i.fr, i64 0
  %i.ha = shufflevector <4 x float> %i.gz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hb = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hc = insertelement <4 x float> poison, float %i.gj, i64 0
  %i.hd = shufflevector <4 x float> %i.hc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.he = fmul <4 x float> %i.hd, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.hf = fmul <4 x float> %i.hb, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.hg = fadd <4 x float> %i.hf, %i.he
  %i.hh = fmul <4 x float> %i.ha, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.hi = fadd <4 x float> %i.hh, %i.hg           ; 4 uses
  %i.hj = shufflevector <2 x float> %i.gl, <2 x float> poison, <4 x i32> zeroinitializer
  %i.hk = shufflevector <2 x float> %i.gl, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.hl = insertelement <4 x float> poison, float %i.gn, i64 0
  %i.hm = shufflevector <4 x float> %i.hl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hn = fmul <4 x float> %i.hm, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.ho = fmul <4 x float> %i.hk, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.hp = fadd <4 x float> %i.ho, %i.hn
  %i.hq = fmul <4 x float> %i.hj, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.hr = fadd <4 x float> %i.hq, %i.hp           ; 3 uses
  %i.hs = fadd <4 x float> %.sroa.17978.56.vec.insert, zeroinitializer
  %i.ht = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hu = fmul <4 x float> %i.hr, zeroinitializer ; 2 uses
  %i.hv = fmul <4 x float> %i.hi, zeroinitializer
  %i.hw = fadd <4 x float> %i.hv, %i.hu
  %i.hx = fmul <4 x float> %i.ht, %i.gy
  %i.hy = fadd <4 x float> %i.hx, %i.hw           ; 2 uses
  %i.hz = shufflevector <4 x float> %i.ey, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ia = shufflevector <4 x float> %i.ey, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ib = fmul <4 x float> %i.ia, %i.hi
  %i.ic = fadd <4 x float> %i.ib, %i.hu
  %i.id = fmul <4 x float> %i.hz, %i.gy
  %i.ie = fadd <4 x float> %i.id, %i.ic           ; 2 uses
  %i.if = shufflevector <3 x float> %i.fa, <3 x float> poison, <4 x i32> zeroinitializer
  %i.ig = shufflevector <3 x float> %i.fa, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ih = shufflevector <3 x float> %i.fa, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ii = fmul <4 x float> %i.ih, %i.hr
  %i.ij = fmul <4 x float> %i.ig, %i.hi
  %i.ik = fadd <4 x float> %i.ij, %i.ii
  %i.il = fmul <4 x float> %i.if, %i.gy
  %i.im = fadd <4 x float> %i.il, %i.ik           ; 2 uses
  %i.in = shufflevector <3 x float> %i.fc, <3 x float> poison, <4 x i32> zeroinitializer
  %i.io = shufflevector <3 x float> %i.fc, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ip = shufflevector <3 x float> %i.fc, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.iq = fmul <4 x float> %i.ip, %i.hr
  %i.ir = fmul <4 x float> %i.io, %i.hi
  %i.is = fadd <4 x float> %i.ir, %i.iq
  %i.it = fmul <4 x float> %i.in, %i.gy
  %i.iu = fadd <4 x float> %i.it, %i.is
  %i.iv = fadd <4 x float> %i.hs, %i.iu           ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.eh, i64 88
  %i.ix = load ptr, ptr %i.iw, align 8, !noalias !1619 ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 48
  %i.ja = load <4 x float>, ptr %i.iy, align 16, !noalias !1625
  %i.jb = load <4 x float>, ptr %i.iz, align 16, !noalias !1625
  %i.jc = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ja, <4 x float> %i.jb) ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  %i.je = getelementptr inbounds nuw i8, ptr %i.ix, i64 64
  %i.jf = load <4 x float>, ptr %i.jd, align 16, !noalias !1626
  %i.jg = load <4 x float>, ptr %i.je, align 16, !noalias !1626
  %i.jh = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.jf, <4 x float> %i.jg) ; 3 uses
  %i.ji = shufflevector <4 x float> %i.jc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jj = shufflevector <4 x float> %i.jc, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.jk = shufflevector <4 x float> %i.jc, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.jl = fmul <4 x float> %i.jk, %i.im
  %i.jm = fadd <4 x float> %i.jl, %i.iv           ; 2 uses
  %i.jn = fmul <4 x float> %i.jj, %i.ie           ; 2 uses
  %i.jo = fadd <4 x float> %i.jn, %i.jm           ; 2 uses
  %i.jp = fmul <4 x float> %i.ji, %i.hy           ; 4 uses
  %i.jq = fadd <4 x float> %i.jp, %i.jo           ; 2 uses
  %i.jr = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.jq)
  %i.js = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.jq)
  %i.jt = shufflevector <4 x float> %i.jh, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ju = fmul <4 x float> %i.im, %i.jt
  %i.jv = fadd <4 x float> %i.iv, %i.ju           ; 2 uses
  %i.jw = fadd <4 x float> %i.jn, %i.jv           ; 2 uses
  %i.jx = fadd <4 x float> %i.jp, %i.jw           ; 2 uses
  %i.jy = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.jr, <4 x float> %i.jx)
  %i.jz = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.js, <4 x float> %i.jx)
  %i.ka = shufflevector <4 x float> %i.jh, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.kb = fmul <4 x float> %i.ie, %i.ka           ; 2 uses
  %i.kc = fadd <4 x float> %i.jm, %i.kb           ; 2 uses
  %i.kd = fadd <4 x float> %i.jp, %i.kc           ; 2 uses
  %i.ke = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.jy, <4 x float> %i.kd)
  %i.kf = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.jz, <4 x float> %i.kd)
  %i.kg = fadd <4 x float> %i.kb, %i.jv           ; 2 uses
  %i.kh = fadd <4 x float> %i.jp, %i.kg           ; 2 uses
  %i.ki = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ke, <4 x float> %i.kh)
  %i.kj = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.kf, <4 x float> %i.kh)
  %i.kk = shufflevector <4 x float> %i.jh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kl = fmul <4 x float> %i.hy, %i.kk           ; 4 uses
  %i.km = fadd <4 x float> %i.kl, %i.jo           ; 2 uses
  %i.kn = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ki, <4 x float> %i.km)
  %i.ko = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.kj, <4 x float> %i.km)
  %i.kp = fadd <4 x float> %i.kl, %i.jw           ; 2 uses
  %i.kq = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.kn, <4 x float> %i.kp)
  %i.kr = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ko, <4 x float> %i.kp)
  %i.ks = fadd <4 x float> %i.kl, %i.kc           ; 2 uses
  %i.kt = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.kq, <4 x float> %i.ks)
  %i.ku = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.kr, <4 x float> %i.ks)
  %i.kv = fadd <4 x float> %i.kl, %i.kg           ; 2 uses
  %i.kw = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.kt, <4 x float> %i.kv)
  %i.kx = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ku, <4 x float> %i.kv)
  br label %bb.b

.noexc227:                                        ; preds = %_ZN6embree4BBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit
  %i.ky = load <4 x float>, ptr %i.en, align 16, !noalias !1627 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.la = load <4 x float>, ptr %i.kz, align 16, !noalias !1628 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  %i.lc = load <4 x float>, ptr %i.lb, align 16, !noalias !1629 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.en, i64 48
  %i.le = load <4 x float>, ptr %i.ld, align 16, !noalias !1630 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.eh, i64 88
  %i.lg = load ptr, ptr %i.lf, align 8, !noalias !1619 ; 4 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 48
  %i.lj = load <4 x float>, ptr %i.lh, align 16, !noalias !1631
  %i.lk = load <4 x float>, ptr %i.li, align 16, !noalias !1631
  %i.ll = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.lj, <4 x float> %i.lk) ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lg, i64 32
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lg, i64 64
  %i.lo = load <4 x float>, ptr %i.lm, align 16, !noalias !1632
  %i.lp = load <4 x float>, ptr %i.ln, align 16, !noalias !1632
  %i.lq = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.lo, <4 x float> %i.lp) ; 3 uses
  %i.lr = shufflevector <4 x float> %i.ll, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ls = shufflevector <4 x float> %i.ll, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.lt = shufflevector <4 x float> %i.ll, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.lu = fmul <4 x float> %i.lc, %i.lt
  %i.lv = fadd <4 x float> %i.le, %i.lu           ; 2 uses
  %i.lw = fmul <4 x float> %i.la, %i.ls           ; 2 uses
  %i.lx = fadd <4 x float> %i.lw, %i.lv           ; 2 uses
  %i.ly = fmul <4 x float> %i.ky, %i.lr           ; 4 uses
  %i.lz = fadd <4 x float> %i.ly, %i.lx           ; 2 uses
  %i.ma = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.lz)
  %i.mb = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.lz)
  %i.mc = shufflevector <4 x float> %i.lq, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.md = fmul <4 x float> %i.lc, %i.mc
  %i.me = fadd <4 x float> %i.le, %i.md           ; 2 uses
  %i.mf = fadd <4 x float> %i.lw, %i.me           ; 2 uses
  %i.mg = fadd <4 x float> %i.ly, %i.mf           ; 2 uses
  %i.mh = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ma, <4 x float> %i.mg)
  %i.mi = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.mb, <4 x float> %i.mg)
  %i.mj = shufflevector <4 x float> %i.lq, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.mk = fmul <4 x float> %i.la, %i.mj           ; 2 uses
  %i.ml = fadd <4 x float> %i.lv, %i.mk           ; 2 uses
  %i.mm = fadd <4 x float> %i.ly, %i.ml           ; 2 uses
  %i.mn = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.mh, <4 x float> %i.mm)
  %i.mo = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.mi, <4 x float> %i.mm)
  %i.mp = fadd <4 x float> %i.mk, %i.me           ; 2 uses
  %i.mq = fadd <4 x float> %i.ly, %i.mp           ; 2 uses
  %i.mr = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.mn, <4 x float> %i.mq)
  %i.ms = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.mo, <4 x float> %i.mq)
  %i.mt = shufflevector <4 x float> %i.lq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mu = fmul <4 x float> %i.ky, %i.mt           ; 4 uses
  %i.mv = fadd <4 x float> %i.lx, %i.mu           ; 2 uses
  %i.mw = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.mr, <4 x float> %i.mv)
  %i.mx = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ms, <4 x float> %i.mv)
  %i.my = fadd <4 x float> %i.mu, %i.mf           ; 2 uses
  %i.mz = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.mw, <4 x float> %i.my)
  %i.na = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.mx, <4 x float> %i.my)
  %i.nb = fadd <4 x float> %i.mu, %i.ml           ; 2 uses
  %i.nc = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.mz, <4 x float> %i.nb)
  %i.nd = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.na, <4 x float> %i.nb)
  %i.ne = fadd <4 x float> %i.mu, %i.mp           ; 2 uses
  %i.nf = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.nc, <4 x float> %i.ne)
  %i.ng = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.nd, <4 x float> %i.ne)
  br label %bb.b

bb.b:                                             ; preds = %.noexc227, %.noexc224
  %.sroa.38.0 = phi <4 x float> [ %i.kx, %.noexc224 ], [ %i.ng, %.noexc227 ] ; 2 uses
  %.sroa.0696.0 = phi <4 x float> [ %i.kw, %.noexc224 ], [ %i.nf, %.noexc227 ] ; 2 uses
  %i.nh = fcmp ugt <4 x float> %.sroa.0696.0, splat (float -1.844000e+18)
  %i.ni = fcmp olt <4 x float> %.sroa.38.0, splat (float 1.844000e+18)
  %i.nj = and <4 x i1> %i.ni, %i.nh
  %i.nk = bitcast <4 x i1> %i.nj to i4
  %i.nl = and i4 %i.nk, 7
  %i.nm = icmp eq i4 %i.nl, 7
  br i1 %i.nm, label %.noexc15, label %bb.c

.noexc15:                                         ; preds = %bb.b
  %i.nn = trunc i64 %.0111211 to i32
  %i.no = fadd <4 x float> %.sroa.38.0, %.sroa.0696.0
  %i.np = fsub <4 x float> %i.no, %i.g
  %i.nq = fmul <4 x float> %i.i, %i.np
  %i.nr = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.nq) ; 3 uses
  %i.ns = extractelement <4 x i32> %i.nr, i64 0
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ee
  store i32 %i.ns, ptr %i.nt, align 4
  %.sroa.0455.4.vec.extract = extractelement <4 x i32> %i.nr, i64 1
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ee
  store i32 %.sroa.0455.4.vec.extract, ptr %i.nu, align 4
  %.sroa.0455.8.vec.extract = extractelement <4 x i32> %i.nr, i64 2
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ee
  store i32 %.sroa.0455.8.vec.extract, ptr %i.nv, align 4
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ee
  store i32 %i.nn, ptr %i.nw, align 4
  %i.nx = add nsw i64 %i.ee, 1                    ; 2 uses
  %i.ny = add i64 %i.ef, 1                        ; 2 uses
  %i.nz = icmp eq i64 %i.nx, 4
  br i1 %i.nz, label %.noexc20, label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit

.noexc20:                                         ; preds = %.noexc15
  %i.oa = load <2 x i64>, ptr %i.j, align 16, !noalias !1633 ; 2 uses
  %i.ob = load <2 x i64>, ptr %i.k, align 16, !noalias !1633 ; 2 uses
  %i.oc = load <2 x i64>, ptr %i.l, align 16, !noalias !1633 ; 2 uses
  %i.od = bitcast <2 x i64> %i.oa to <4 x i32>
  %i.oe = shl <4 x i32> %i.od, splat (i32 16)
  %i.of = bitcast <4 x i32> %i.oe to <2 x i64>
  %i.og = or <2 x i64> %i.oa, %i.of
  %i.oh = and <2 x i64> %i.og, splat (i64 216173877380776191) ; 2 uses
  %i.oi = bitcast <2 x i64> %i.oh to <4 x i32>
  %i.oj = shl <4 x i32> %i.oi, splat (i32 8)
  %i.ok = bitcast <4 x i32> %i.oj to <2 x i64>
  %i.ol = or disjoint <2 x i64> %i.oh, %i.ok
  %i.om = and <2 x i64> %i.ol, splat (i64 216436729379352591) ; 2 uses
  %i.on = bitcast <2 x i64> %i.om to <4 x i32>
  %i.oo = shl nuw nsw <4 x i32> %i.on, splat (i32 4)
  %i.op = bitcast <4 x i32> %i.oo to <2 x i64>
  %i.oq = or disjoint <2 x i64> %i.om, %i.op
  %i.or = and <2 x i64> %i.oq, splat (i64 219604095962198211) ; 2 uses
  %i.os = bitcast <2 x i64> %i.or to <4 x i32>
  %i.ot = shl nuw nsw <4 x i32> %i.os, splat (i32 2)
  %i.ou = bitcast <4 x i32> %i.ot to <2 x i64>
  %i.ov = or disjoint <2 x i64> %i.or, %i.ou
  %i.ow = and <2 x i64> %i.ov, splat (i64 658812287886594633)
  %i.ox = bitcast <2 x i64> %i.ob to <4 x i32>
  %i.oy = shl <4 x i32> %i.ox, splat (i32 16)
  %i.oz = bitcast <4 x i32> %i.oy to <2 x i64>
  %i.pa = or <2 x i64> %i.ob, %i.oz
  %i.pb = and <2 x i64> %i.pa, splat (i64 216173877380776191) ; 2 uses
  %i.pc = bitcast <2 x i64> %i.pb to <4 x i32>
  %i.pd = shl <4 x i32> %i.pc, splat (i32 8)
  %i.pe = bitcast <4 x i32> %i.pd to <2 x i64>
  %i.pf = or disjoint <2 x i64> %i.pb, %i.pe
  %i.pg = and <2 x i64> %i.pf, splat (i64 216436729379352591) ; 2 uses
  %i.ph = bitcast <2 x i64> %i.pg to <4 x i32>
  %i.pi = shl nuw nsw <4 x i32> %i.ph, splat (i32 4)
  %i.pj = bitcast <2 x i64> %i.pg to <4 x i32>
  %i.pk = or disjoint <4 x i32> %i.pi, %i.pj
  %i.pl = and <4 x i32> %i.pk, splat (i32 51130563) ; 2 uses
  %i.pm = bitcast <2 x i64> %i.oc to <4 x i32>
  %i.pn = shl <4 x i32> %i.pm, splat (i32 16)
  %i.po = bitcast <4 x i32> %i.pn to <2 x i64>
  %i.pp = or <2 x i64> %i.oc, %i.po
  %i.pq = and <2 x i64> %i.pp, splat (i64 216173877380776191) ; 2 uses
  %i.pr = bitcast <2 x i64> %i.pq to <4 x i32>
  %i.ps = shl <4 x i32> %i.pr, splat (i32 8)
  %i.pt = bitcast <4 x i32> %i.ps to <2 x i64>
  %i.pu = or disjoint <2 x i64> %i.pq, %i.pt
  %i.pv = and <2 x i64> %i.pu, splat (i64 216436729379352591) ; 2 uses
  %i.pw = bitcast <2 x i64> %i.pv to <4 x i32>
  %i.px = shl nuw nsw <4 x i32> %i.pw, splat (i32 4)
  %i.py = bitcast <2 x i64> %i.pv to <4 x i32>
  %i.pz = or disjoint <4 x i32> %i.px, %i.py
  %i.qa = and <4 x i32> %i.pz, splat (i32 51130563) ; 2 uses
  %i.qb = shl nuw nsw <4 x i32> %i.pl, splat (i32 3)
  %i.qc = shl nuw nsw <4 x i32> %i.pl, splat (i32 1)
  %i.qd = or disjoint <4 x i32> %i.qb, %i.qc
  %i.qe = bitcast <4 x i32> %i.qd to <2 x i64>
  %i.qf = and <2 x i64> %i.qe, splat (i64 1317624575773189266)
  %i.qg = or disjoint <2 x i64> %i.qf, %i.ow
  %i.qh = shl nuw nsw <4 x i32> %i.qa, splat (i32 4)
  %i.qi = shl nuw nsw <4 x i32> %i.qa, splat (i32 2)
  %i.qj = or disjoint <4 x i32> %i.qh, %i.qi
  %i.qk = bitcast <4 x i32> %i.qj to <2 x i64>
  %i.ql = and <2 x i64> %i.qk, splat (i64 2635249151546378532)
  %i.qm = or disjoint <2 x i64> %i.qg, %i.ql
  %i.qn = getelementptr [8 x i8], ptr %i.f, i64 %i.ny ; 2 uses
  %i.qo = getelementptr i8, ptr %i.qn, i64 -32
  %i.qp = bitcast <2 x i64> %i.qm to <4 x float>  ; 2 uses
  %i.qq = load <4 x float>, ptr %i.m, align 16, !noalias !1634 ; 2 uses
  %i.qr = shufflevector <4 x float> %i.qp, <4 x float> %i.qq, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.qr, ptr %i.qo, align 1
  %i.qs = getelementptr i8, ptr %i.qn, i64 -16
  %i.qt = shufflevector <4 x float> %i.qp, <4 x float> %i.qq, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.qt, ptr %i.qs, align 1
  br label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit

_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit: ; preds = %.noexc20, %.noexc15
  %i.qu = phi i64 [ 0, %.noexc20 ], [ %i.nx, %.noexc15 ]
  %i.qv = add i64 %.01212, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit
  %i.qw = phi i64 [ %i.ny, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %i.ef, %bb.b ] ; 2 uses
  %i.qx = phi i64 [ %i.qu, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %i.ee, %bb.b ] ; 10 uses
  %.1 = phi i64 [ %i.qv, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %.01212, %bb.b ] ; 3 uses
  %i.qy = add nuw i64 %.0111211, 1                ; 2 uses
  %i.qz = load i64, ptr %i.o, align 8
  %i.ra = icmp ult i64 %i.qy, %i.qz
  br i1 %i.ra, label %_ZN6embree4BBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit, label %._crit_edge, !llvm.loop !1617
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree4sse221createMortonCodeArrayINS_13InstanceArrayEEEmPT_RNS_8vector_tINS0_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS7_Lm8EEEEERNS_20BuildProgressMonitorEENKUlRKNS_5rangeImEEE_clESH_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair") align 16 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp ult i64 %i.a, %i.c
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !nonnull !28, !align !29
  %i.f = load ptr, ptr %i.e, align 8              ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.h, null                ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 144 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 160 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread, %bb.a
  %.0615.lcssa = phi i64 [ 0, %bb.a ], [ %.1, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ]
  %.sroa.6.0.lcssa = phi <4 x float> [ splat (float -inf), %bb.a ], [ %.sroa.6.1, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ]
  %.sroa.014.0.lcssa = phi <4 x float> [ splat (float +inf), %bb.a ], [ %.sroa.014.1, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ]
  store i64 %.0615.lcssa, ptr %0, align 16, !alias.scope !1644
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %.sroa.014.0.lcssa, ptr %i.n, align 16, !alias.scope !1644
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> %.sroa.6.0.lcssa, ptr %i.o, align 16, !alias.scope !1644
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread
  %.0625 = phi i64 [ %i.a, %.lr.ph ], [ %i.qq, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 11 uses
  %.sroa.014.0624 = phi <4 x float> [ splat (float +inf), %.lr.ph ], [ %.sroa.014.1, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 3 uses
  %.sroa.6.0623 = phi <4 x float> [ splat (float -inf), %.lr.ph ], [ %.sroa.6.1, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 3 uses
  %.0615622 = phi i64 [ 0, %.lr.ph ], [ %.1, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 3 uses
  br i1 %.not.i, label %_ZNK6embree13InstanceArray5validEm.exit, label %_ZNK6embree13InstanceArray5validEm.exit.i.thread

_ZNK6embree13InstanceArray5validEm.exit:          ; preds = %bb.b
  %i.p = load ptr, ptr %i.i, align 8
  %i.q = load i64, ptr %i.j, align 8
  %i.r = mul i64 %i.q, %.0625
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4
  %.not = icmp eq i32 %i.t, -1
  br i1 %.not, label %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread, label %_ZNK6embree13InstanceArray5validEm.exit.i.thread, !prof !39

_ZNK6embree13InstanceArray5validEm.exit.i.thread: ; preds = %_ZNK6embree13InstanceArray5validEm.exit, %bb.b
  %i.u = load i32, ptr %i.k, align 4, !noalias !1645
  %i.v = and i32 %i.u, 65280
  %i.w = icmp eq i32 %i.v, 256
  %i.x = load ptr, ptr %i.l, align 8, !noalias !1645 ; 17 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load i32, ptr %i.y, align 8, !noalias !1645 ; 2 uses
  br i1 %i.w, label %bb.c, label %bb.h, !prof !31

bb.c:                                             ; preds = %_ZNK6embree13InstanceArray5validEm.exit.i.thread
  switch i32 %i.z, label %_ZNK6embree13InstanceArray3l2wEmm.exit [
    i32 37444, label %bb.d
    i32 45057, label %bb.e
    i32 37428, label %bb.f
    i32 37172, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.x, align 8, !noalias !1646
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !1646
  %i.ad = mul i64 %i.ac, %.0625
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ad ; 4 uses
  %i.af = load <4 x float>, ptr %i.ae, align 16, !noalias !1645
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ah = load <4 x float>, ptr %i.ag, align 16, !noalias !1645
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.aj = load <4 x float>, ptr %i.ai, align 16, !noalias !1645
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.al = load <4 x float>, ptr %i.ak, align 16, !noalias !1645
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.am = load ptr, ptr %i.x, align 8, !noalias !1645
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !noalias !1645
  %i.ap = mul i64 %i.ao, %.0625
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ap ; 12 uses
  %i.ar = load float, ptr %i.aq, align 16, !noalias !1645
  %.sroa.0169.0.vec.insert = insertelement <4 x float> poison, float %i.ar, i64 0
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.at = load float, ptr %i.as, align 4, !noalias !1645
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load float, ptr %i.au, align 8, !noalias !1645
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.ax = load float, ptr %i.aw, align 4, !noalias !1645
  %i.ay = insertelement <4 x float> poison, float %i.ax, i64 0
  %.sroa.11172.16.vec.insert = insertelement <4 x float> %i.ay, float %i.at, i64 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.ba = load <2 x float>, ptr %i.az, align 16, !noalias !1645
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.20175.36.vec.insert = insertelement <4 x float> %i.bb, float %i.av, i64 2
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 52
  %i.bd = load <2 x float>, ptr %i.bc, align 4, !noalias !1645
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
end_hunk_11
begin_hunk_12_@_ZZN6embree4sse221createMortonCodeArrayINS_13InstanceArrayEEEmPT_RNS_8vector_tINS0_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS7_Lm8EEEEERNS_20BuildProgressMonitorEENKUlRKNS_5rangeImEEE0_clESH_:bb.a
  %i.pu = fmul float %i.pp, 5.000000e-01
  %i.pv = fmul float %i.ps, %i.pu
  %foldExtExtBinop1207 = fmul <4 x float> %i.pr, %i.pr
  %i.pw = extractelement <4 x float> %foldExtExtBinop1207, i64 0
  %i.px = fmul float %i.pw, %i.pv
  %i.py = fsub float %i.pt, %i.px                 ; 4 uses
  %i.pz = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.py, i64 3
  %i.qa = fmul <4 x float> %i.pj, %i.pz
  %i.qb = fmul float %i.pl, %i.py
  %i.qc = fmul float %i.pk, %i.py
  %i.qd = fmul float %i.ph, %i.py
  %.sroa.0575.12.vec.insert = insertelement <4 x float> %.sroa.0575.8.vec.insert1204, float %i.qb, i64 3
  %.sroa.10.28.vec.insert = insertelement <4 x float> %.sroa.10.24.vec.insert, float %i.qc, i64 3
  %.sroa.18.44.vec.insert = insertelement <4 x float> %.sroa.18.36.vec.insert, float %i.qd, i64 3
  br label %.noexc215

.noexc219:                                        ; preds = %bb.d
  %i.qe = load ptr, ptr %i.ez, align 8, !noalias !1684
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.qg = load i64, ptr %i.qf, align 8, !noalias !1684
  %i.qh = mul i64 %i.qg, %.01095
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qe, i64 %i.qh ; 8 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 4
  %i.qk = load <2 x float>, ptr %i.qj, align 4
  %i.ql = load float, ptr %i.qi, align 4
  %i.qm = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ql, i64 0
  %i.qn = shufflevector <2 x float> %i.qk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qo = shufflevector <4 x float> %i.qm, <4 x float> %i.qn, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qi, i64 12
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  %i.qr = load <2 x float>, ptr %i.qq, align 4
  %i.qs = load float, ptr %i.qp, align 4
  %i.qt = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.qs, i64 0
  %i.qu = shufflevector <2 x float> %i.qr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qv = shufflevector <4 x float> %i.qt, <4 x float> %i.qu, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qi, i64 24
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qi, i64 28
  %i.qy = load <2 x float>, ptr %i.qx, align 4
  %i.qz = load float, ptr %i.qw, align 4
  %i.ra = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.qz, i64 0
  %i.rb = shufflevector <2 x float> %i.qy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rc = shufflevector <4 x float> %i.ra, <4 x float> %i.rb, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qi, i64 36
  %i.re = getelementptr inbounds nuw i8, ptr %i.qi, i64 40
  %i.rf = load <2 x float>, ptr %i.re, align 4
  %i.rg = load float, ptr %i.rd, align 4
  %i.rh = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.rg, i64 0
  %i.ri = shufflevector <2 x float> %i.rf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rj = shufflevector <4 x float> %i.rh, <4 x float> %i.ri, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %.noexc215

.noexc221:                                        ; preds = %bb.d
  %i.rk = load ptr, ptr %i.ez, align 8, !noalias !1684
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.rm = load i64, ptr %i.rl, align 8, !noalias !1684
  %i.rn = mul i64 %i.rm, %.01095
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rk, i64 %i.rn ; 12 uses
  %i.rp = load float, ptr %i.ro, align 4, !noalias !1684
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ro, i64 4
  %i.rr = load float, ptr %i.rq, align 4, !noalias !1684
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
  %i.rt = load float, ptr %i.rs, align 4, !noalias !1684
  %i.ru = getelementptr inbounds nuw i8, ptr %i.ro, i64 12
  %i.rv = load float, ptr %i.ru, align 4, !noalias !1684
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ro, i64 16
  %i.rx = load float, ptr %i.rw, align 4, !noalias !1684
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ro, i64 20
  %i.rz = load float, ptr %i.ry, align 4, !noalias !1684
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ro, i64 24
  %i.sb = load float, ptr %i.sa, align 4, !noalias !1684
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ro, i64 28
  %i.sd = load float, ptr %i.sc, align 4, !noalias !1684
  %i.se = getelementptr inbounds nuw i8, ptr %i.ro, i64 32
  %i.sf = load float, ptr %i.se, align 4, !noalias !1684
  %i.sg = getelementptr inbounds nuw i8, ptr %i.ro, i64 36
  %i.sh = load float, ptr %i.sg, align 4, !noalias !1684
  %i.si = getelementptr inbounds nuw i8, ptr %i.ro, i64 40
  %i.sj = load float, ptr %i.si, align 4, !noalias !1684
  %i.sk = getelementptr inbounds nuw i8, ptr %i.ro, i64 44
  %i.sl = load float, ptr %i.sk, align 4, !noalias !1684
  %i.sm = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.rp, i64 0
  %i.sn = insertelement <4 x float> %i.sm, float %i.rx, i64 1
  %i.so = insertelement <4 x float> %i.sn, float %i.sf, i64 2
  %i.sp = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.rr, i64 0
  %i.sq = insertelement <4 x float> %i.sp, float %i.rz, i64 1
  %i.sr = insertelement <4 x float> %i.sq, float %i.sh, i64 2
  %i.ss = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.rt, i64 0
  %i.st = insertelement <4 x float> %i.ss, float %i.sb, i64 1
  %i.su = insertelement <4 x float> %i.st, float %i.sj, i64 2
  %i.sv = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.rv, i64 0
  %i.sw = insertelement <4 x float> %i.sv, float %i.sd, i64 1
  %i.sx = insertelement <4 x float> %i.sw, float %i.sl, i64 2
  br label %.noexc215

.noexc215:                                        ; preds = %bb.d, %.noexc221, %.noexc219, %.noexc218, %.noexc216
  %.sroa.26.0 = phi <4 x float> [ %i.og, %.noexc216 ], [ %i.qa, %.noexc218 ], [ %i.rj, %.noexc219 ], [ %i.sx, %.noexc221 ], [ undef, %bb.d ] ; 2 uses
  %.sroa.18.0 = phi <4 x float> [ %i.oe, %.noexc216 ], [ %.sroa.18.44.vec.insert, %.noexc218 ], [ %i.rc, %.noexc219 ], [ %i.su, %.noexc221 ], [ undef, %bb.d ] ; 2 uses
  %.sroa.10.0 = phi <4 x float> [ %i.oc, %.noexc216 ], [ %.sroa.10.28.vec.insert, %.noexc218 ], [ %i.qv, %.noexc219 ], [ %i.sr, %.noexc221 ], [ undef, %bb.d ] ; 2 uses
  %.sroa.0575.0 = phi <4 x float> [ %i.oa, %.noexc216 ], [ %.sroa.0575.12.vec.insert, %.noexc218 ], [ %i.qo, %.noexc219 ], [ %i.so, %.noexc221 ], [ undef, %bb.d ] ; 2 uses
  br i1 %.not.i.i, label %.noexc10.sink.split.sink.split, label %.noexc10.sink.split

.noexc10.sink.split.sink.split:                   ; preds = %.noexc215, %.noexc214
  %.sink1174.ph = phi <4 x float> [ %i.nl, %.noexc214 ], [ %.sroa.18.0, %.noexc215 ]
  %.sink1172.ph = phi <4 x float> [ %i.nu, %.noexc214 ], [ %.sroa.26.0, %.noexc215 ]
  %.sink1170.ph = phi <4 x float> [ %i.nd, %.noexc214 ], [ %.sroa.10.0, %.noexc215 ]
  %.sink1166.ph = phi <4 x float> [ %i.mx, %.noexc214 ], [ %.sroa.0575.0, %.noexc215 ]
  %i.sy = getelementptr inbounds nuw i8, ptr %i.ek, i64 144
  %i.sz = load ptr, ptr %i.sy, align 8, !noalias !1682
  %i.ta = getelementptr inbounds nuw i8, ptr %i.ek, i64 160
  %i.tb = load i64, ptr %i.ta, align 8, !noalias !1682
  %i.tc = mul i64 %i.tb, %.01095
  %i.td = getelementptr inbounds nuw i8, ptr %i.sz, i64 %i.tc
  %i.te = load i32, ptr %i.td, align 4, !noalias !1682 ; 2 uses
  %i.tf = icmp ne i32 %i.te, -1
  tail call void @llvm.assume(i1 %i.tf)
  %i.tg = getelementptr inbounds nuw i8, ptr %i.ek, i64 96
  %i.th = load ptr, ptr %i.tg, align 16, !noalias !1682
  %i.ti = zext i32 %i.te to i64
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %i.ti
  %i.tk = load ptr, ptr %i.tj, align 8, !noalias !1682
  br label %.noexc10.sink.split

.noexc10.sink.split:                              ; preds = %.noexc10.sink.split.sink.split, %.noexc215, %.noexc214
  %.0.i257.sink1187 = phi ptr [ %i.em, %.noexc214 ], [ %i.em, %.noexc215 ], [ %i.tk, %.noexc10.sink.split.sink.split ] ; 4 uses
  %.sink1174 = phi <4 x float> [ %i.nl, %.noexc214 ], [ %.sroa.18.0, %.noexc215 ], [ %.sink1174.ph, %.noexc10.sink.split.sink.split ] ; 2 uses
  %.sink1172 = phi <4 x float> [ %i.nu, %.noexc214 ], [ %.sroa.26.0, %.noexc215 ], [ %.sink1172.ph, %.noexc10.sink.split.sink.split ] ; 2 uses
  %.sink1170 = phi <4 x float> [ %i.nd, %.noexc214 ], [ %.sroa.10.0, %.noexc215 ], [ %.sink1170.ph, %.noexc10.sink.split.sink.split ] ; 2 uses
  %.sink1166 = phi <4 x float> [ %i.mx, %.noexc214 ], [ %.sroa.0575.0, %.noexc215 ], [ %.sink1166.ph, %.noexc10.sink.split.sink.split ] ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %.0.i257.sink1187, i64 16
  %i.tm = getelementptr inbounds nuw i8, ptr %.0.i257.sink1187, i64 48
  %i.tn = load <4 x float>, ptr %i.tl, align 16, !noalias !1682
  %i.to = load <4 x float>, ptr %i.tm, align 16, !noalias !1682
  %i.tp = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.tn, <4 x float> %i.to) ; 3 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %.0.i257.sink1187, i64 32
  %i.tr = getelementptr inbounds nuw i8, ptr %.0.i257.sink1187, i64 64
  %i.ts = load <4 x float>, ptr %i.tq, align 16, !noalias !1682
  %i.tt = load <4 x float>, ptr %i.tr, align 16, !noalias !1682
  %i.tu = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ts, <4 x float> %i.tt) ; 3 uses
  %i.tv = shufflevector <4 x float> %i.tp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tw = shufflevector <4 x float> %i.tp, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.tx = shufflevector <4 x float> %i.tp, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ty = fmul <4 x float> %.sink1174, %i.tx
  %i.tz = fadd <4 x float> %.sink1172, %i.ty      ; 2 uses
  %i.ua = fmul <4 x float> %.sink1170, %i.tw      ; 2 uses
  %i.ub = fadd <4 x float> %i.ua, %i.tz           ; 2 uses
  %i.uc = fmul <4 x float> %.sink1166, %i.tv      ; 4 uses
  %i.ud = fadd <4 x float> %i.uc, %i.ub           ; 2 uses
  %i.ue = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.ud)
  %i.uf = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.ud)
  %i.ug = shufflevector <4 x float> %i.tu, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.uh = fmul <4 x float> %.sink1174, %i.ug
  %i.ui = fadd <4 x float> %.sink1172, %i.uh      ; 2 uses
  %i.uj = fadd <4 x float> %i.ua, %i.ui           ; 2 uses
  %i.uk = fadd <4 x float> %i.uc, %i.uj           ; 2 uses
  %i.ul = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ue, <4 x float> %i.uk)
  %i.um = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.uf, <4 x float> %i.uk)
  %i.un = shufflevector <4 x float> %i.tu, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.uo = fmul <4 x float> %.sink1170, %i.un      ; 2 uses
  %i.up = fadd <4 x float> %i.tz, %i.uo           ; 2 uses
  %i.uq = fadd <4 x float> %i.uc, %i.up           ; 2 uses
  %i.ur = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ul, <4 x float> %i.uq)
  %i.us = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.um, <4 x float> %i.uq)
  %i.ut = fadd <4 x float> %i.uo, %i.ui           ; 2 uses
  %i.uu = fadd <4 x float> %i.uc, %i.ut           ; 2 uses
  %i.uv = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ur, <4 x float> %i.uu)
  %i.uw = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.us, <4 x float> %i.uu)
  %i.ux = shufflevector <4 x float> %i.tu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uy = fmul <4 x float> %.sink1166, %i.ux      ; 4 uses
  %i.uz = fadd <4 x float> %i.ub, %i.uy           ; 2 uses
  %i.va = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.uv, <4 x float> %i.uz)
  %i.vb = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.uw, <4 x float> %i.uz)
  %i.vc = fadd <4 x float> %i.uy, %i.uj           ; 2 uses
  %i.vd = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.va, <4 x float> %i.vc)
  %i.ve = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.vb, <4 x float> %i.vc)
  %i.vf = fadd <4 x float> %i.uy, %i.up           ; 2 uses
  %i.vg = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.vd, <4 x float> %i.vf)
  %i.vh = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ve, <4 x float> %i.vf)
  %i.vi = fadd <4 x float> %i.uy, %i.ut           ; 2 uses
  %i.vj = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.vg, <4 x float> %i.vi)
  %i.vk = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.vh, <4 x float> %i.vi)
  %i.vl = fadd <4 x float> %i.vk, %i.vj
  br label %.noexc10

.noexc10:                                         ; preds = %.noexc10.sink.split, %_ZNK6embree13InstanceArray5validEm.exit.i
  %i.vm = phi <4 x float> [ undef, %_ZNK6embree13InstanceArray5validEm.exit.i ], [ %i.vl, %.noexc10.sink.split ]
  %i.vn = trunc i64 %.01095 to i32
  %i.vo = fsub <4 x float> %i.vm, %i.h
  %i.vp = fmul <4 x float> %i.k, %i.vo
  %i.vq = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.vp) ; 3 uses
  %i.vr = extractelement <4 x i32> %i.vq, i64 0
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.eh
  store i32 %i.vr, ptr %i.vs, align 4
  %.sroa.0297.4.vec.extract = extractelement <4 x i32> %i.vq, i64 1
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.eh
  store i32 %.sroa.0297.4.vec.extract, ptr %i.vt, align 4
  %.sroa.0297.8.vec.extract = extractelement <4 x i32> %i.vq, i64 2
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.eh
  store i32 %.sroa.0297.8.vec.extract, ptr %i.vu, align 4
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.eh
  store i32 %i.vn, ptr %i.vv, align 4
  %i.vw = add nsw i64 %i.eh, 1                    ; 2 uses
  %i.vx = add i64 %i.ei, 1                        ; 3 uses
  %i.vy = icmp eq i64 %i.vw, 4
  br i1 %i.vy, label %.noexc15, label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit

.noexc15:                                         ; preds = %.noexc10
  %i.vz = load <2 x i64>, ptr %i.n, align 16, !noalias !1685 ; 2 uses
  %i.wa = load <2 x i64>, ptr %i.o, align 16, !noalias !1685 ; 2 uses
  %i.wb = load <2 x i64>, ptr %i.p, align 16, !noalias !1685 ; 2 uses
  %i.wc = bitcast <2 x i64> %i.vz to <4 x i32>
  %i.wd = shl <4 x i32> %i.wc, splat (i32 16)
  %i.we = bitcast <4 x i32> %i.wd to <2 x i64>
  %i.wf = or <2 x i64> %i.vz, %i.we
  %i.wg = and <2 x i64> %i.wf, splat (i64 216173877380776191) ; 2 uses
  %i.wh = bitcast <2 x i64> %i.wg to <4 x i32>
  %i.wi = shl <4 x i32> %i.wh, splat (i32 8)
  %i.wj = bitcast <4 x i32> %i.wi to <2 x i64>
  %i.wk = or disjoint <2 x i64> %i.wg, %i.wj
  %i.wl = and <2 x i64> %i.wk, splat (i64 216436729379352591) ; 2 uses
  %i.wm = bitcast <2 x i64> %i.wl to <4 x i32>
  %i.wn = shl nuw nsw <4 x i32> %i.wm, splat (i32 4)
  %i.wo = bitcast <4 x i32> %i.wn to <2 x i64>
  %i.wp = or disjoint <2 x i64> %i.wl, %i.wo
  %i.wq = and <2 x i64> %i.wp, splat (i64 219604095962198211) ; 2 uses
  %i.wr = bitcast <2 x i64> %i.wq to <4 x i32>
  %i.ws = shl nuw nsw <4 x i32> %i.wr, splat (i32 2)
  %i.wt = bitcast <4 x i32> %i.ws to <2 x i64>
  %i.wu = or disjoint <2 x i64> %i.wq, %i.wt
  %i.wv = and <2 x i64> %i.wu, splat (i64 658812287886594633)
  %i.ww = bitcast <2 x i64> %i.wa to <4 x i32>
  %i.wx = shl <4 x i32> %i.ww, splat (i32 16)
  %i.wy = bitcast <4 x i32> %i.wx to <2 x i64>
  %i.wz = or <2 x i64> %i.wa, %i.wy
  %i.xa = and <2 x i64> %i.wz, splat (i64 216173877380776191) ; 2 uses
  %i.xb = bitcast <2 x i64> %i.xa to <4 x i32>
  %i.xc = shl <4 x i32> %i.xb, splat (i32 8)
  %i.xd = bitcast <4 x i32> %i.xc to <2 x i64>
  %i.xe = or disjoint <2 x i64> %i.xa, %i.xd
  %i.xf = and <2 x i64> %i.xe, splat (i64 216436729379352591) ; 2 uses
  %i.xg = bitcast <2 x i64> %i.xf to <4 x i32>
  %i.xh = shl nuw nsw <4 x i32> %i.xg, splat (i32 4)
  %i.xi = bitcast <2 x i64> %i.xf to <4 x i32>
  %i.xj = or disjoint <4 x i32> %i.xh, %i.xi
  %i.xk = and <4 x i32> %i.xj, splat (i32 51130563) ; 2 uses
  %i.xl = bitcast <2 x i64> %i.wb to <4 x i32>
  %i.xm = shl <4 x i32> %i.xl, splat (i32 16)
  %i.xn = bitcast <4 x i32> %i.xm to <2 x i64>
  %i.xo = or <2 x i64> %i.wb, %i.xn
  %i.xp = and <2 x i64> %i.xo, splat (i64 216173877380776191) ; 2 uses
  %i.xq = bitcast <2 x i64> %i.xp to <4 x i32>
  %i.xr = shl <4 x i32> %i.xq, splat (i32 8)
  %i.xs = bitcast <4 x i32> %i.xr to <2 x i64>
  %i.xt = or disjoint <2 x i64> %i.xp, %i.xs
  %i.xu = and <2 x i64> %i.xt, splat (i64 216436729379352591) ; 2 uses
  %i.xv = bitcast <2 x i64> %i.xu to <4 x i32>
  %i.xw = shl nuw nsw <4 x i32> %i.xv, splat (i32 4)
  %i.xx = bitcast <2 x i64> %i.xu to <4 x i32>
  %i.xy = or disjoint <4 x i32> %i.xw, %i.xx
  %i.xz = and <4 x i32> %i.xy, splat (i32 51130563) ; 2 uses
  %i.ya = shl nuw nsw <4 x i32> %i.xk, splat (i32 3)
  %i.yb = shl nuw nsw <4 x i32> %i.xk, splat (i32 1)
  %i.yc = or disjoint <4 x i32> %i.ya, %i.yb
  %i.yd = bitcast <4 x i32> %i.yc to <2 x i64>
  %i.ye = and <2 x i64> %i.yd, splat (i64 1317624575773189266)
  %i.yf = or disjoint <2 x i64> %i.ye, %i.wv
  %i.yg = shl nuw nsw <4 x i32> %i.xz, splat (i32 4)
  %i.yh = shl nuw nsw <4 x i32> %i.xz, splat (i32 2)
  %i.yi = or disjoint <4 x i32> %i.yg, %i.yh
  %i.yj = bitcast <4 x i32> %i.yi to <2 x i64>
  %i.yk = and <2 x i64> %i.yj, splat (i64 2635249151546378532)
  %i.yl = or disjoint <2 x i64> %i.yf, %i.yk
  %i.ym = getelementptr [8 x i8], ptr %i.g, i64 %i.vx ; 2 uses
  %i.yn = getelementptr i8, ptr %i.ym, i64 -32
  %i.yo = bitcast <2 x i64> %i.yl to <4 x float>  ; 2 uses
  %i.yp = load <4 x float>, ptr %i.q, align 16, !noalias !1686 ; 2 uses
  %i.yq = shufflevector <4 x float> %i.yo, <4 x float> %i.yp, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.yq, ptr %i.yn, align 1
  %i.yr = getelementptr i8, ptr %i.ym, i64 -16
  %i.ys = shufflevector <4 x float> %i.yo, <4 x float> %i.yp, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.ys, ptr %i.yr, align 1
  br label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit

_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit: ; preds = %.noexc15, %.noexc10
  %i.yt = phi i64 [ 0, %.noexc15 ], [ %i.vw, %.noexc10 ] ; 10 uses
  %i.yu = add nuw i64 %.01095, 1                  ; 2 uses
  %i.yv = load i64, ptr %i.r, align 8
  %i.yw = icmp ult i64 %i.yu, %i.yv
  br i1 %i.yw, label %bb.b, label %._crit_edge, !llvm.loop !1680
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_19parallel_prefix_sumImmZNS_4sse221createMortonCodeArrayINS_13InstanceArrayEEEmPT_RNS_8vector_tINS4_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorISB_Lm8EEEEERNS_20BuildProgressMonitorEEUlRKNS_5rangeImEEmE_St4plusImEEET0_RNS_22ParallelPrefixSumStateISP_EES7_S7_S7_RKSP_RKT1_RKT2_EUlmE_EEvS7_SU_EUlSL_E_EEvS7_S7_S7_SU_PNS0_16TaskGroupContextE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.324, align 8            ; 9 uses
  %i.a = sub i64 %1, %0                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store i64 %1, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.e = load i64, ptr %3, align 8
  store i64 %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %4, ptr %i.f, align 8
  %i.g = tail call noundef ptr @_ZN6embree13TaskScheduler6threadEv() ; 7 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.l, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 262272 ; 5 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 8
  %i.k = icmp ugt i64 %i.j, 4095
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #19
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.u, %bb.i ], [ %i.l, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.m, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #18
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.f:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 786624 ; 2 uses
  %i.o = load i64, ptr %i.n, align 64             ; 4 uses
  %i.p = sub i64 0, %i.o
  %i.q = and i64 %i.p, 63                         ; 2 uses
  %i.r = add i64 %i.o, 48
  %i.s = add i64 %i.r, %i.q                       ; 2 uses
  %i.t = icmp ugt i64 %i.s, 524288
  br i1 %i.t, label %bb.g, label %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i

bb.g:                                             ; preds = %bb.f
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull @.str.1)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #19
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i: ; preds = %bb.f
  store i64 %i.s, ptr %i.n, align 64
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 262336
  %i.x = getelementptr i8, ptr %i.w, i64 %i.o
  %i.y = getelementptr i8, ptr %i.x, i64 %i.q     ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_12parallel_forImZNS_19parallel_prefix_sumImmZNS_4sse221createMortonCodeArrayINS_13InstanceArrayEEEmPT_RNS_8vector_tINS5_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorISC_Lm8EEEEERNS_20BuildProgressMonitorEEUlRKNS_5rangeImEEmE_St4plusImEEET0_RNS_22ParallelPrefixSumStateISQ_EES8_S8_S8_RKSQ_RKT1_RKT2_EUlmE_EEvS8_SV_EUlSM_E_EEvS8_S8_S8_SV_PNS0_16TaskGroupContextEEUlvE_EE, i64 16), ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false)
  %i.aa = load atomic i64, ptr %i.i seq_cst, align 64
  %i.ab = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %i.aa ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 786688
  %i.ad = load ptr, ptr %i.ac, align 64           ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 1, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i8 1, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.y, ptr %i.ag, align 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.ad, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %4, ptr %i.ai, align 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store i64 %i.o, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store i64 %i.a, ptr %i.ak, align 16
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.am = atomicrmw add ptr %i.al, i32 1 seq_cst, align 4 ; 0 uses
  br label %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i

_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i: ; preds = %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i, %bb.j
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !32
  %i.an = cmpxchg ptr %i.ab, i32 0, i32 1 seq_cst seq_cst, align 4 ; 0 uses
  %i.ao = atomicrmw add ptr %i.i, i64 1 seq_cst, align 8 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 262208 ; 2 uses
  %i.aq = load atomic i64, ptr %i.ap seq_cst, align 64
end_hunk_12
begin_hunk_13_@_ZZN6embree4sse221createMortonCodeArrayINS_13InstanceArrayEEEmPT_RNS_8vector_tINS0_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS7_Lm8EEEEERNS_20BuildProgressMonitorEENKUlRKNS_5rangeImEEmE_clESH_m:bb.a
  %i.py = fsub float %i.pt, %i.px                 ; 4 uses
  %i.pz = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.py, i64 3
  %i.qa = fmul <4 x float> %i.pj, %i.pz
  %i.qb = fmul float %i.pl, %i.py
  %i.qc = fmul float %i.pk, %i.py
  %i.qd = fmul float %i.ph, %i.py
  %.sroa.0594.12.vec.insert = insertelement <4 x float> %.sroa.0594.8.vec.insert1235, float %i.qb, i64 3
  %.sroa.10.28.vec.insert = insertelement <4 x float> %.sroa.10.24.vec.insert, float %i.qc, i64 3
  %.sroa.18.44.vec.insert = insertelement <4 x float> %.sroa.18.36.vec.insert, float %i.qd, i64 3
  br label %.noexc226

.noexc230:                                        ; preds = %bb.c
  %i.qe = load ptr, ptr %i.ez, align 8, !noalias !1708
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.qg = load i64, ptr %i.qf, align 8, !noalias !1708
  %i.qh = mul i64 %i.qg, %.0111120
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qe, i64 %i.qh ; 8 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 4
  %i.qk = load <2 x float>, ptr %i.qj, align 4
  %i.ql = load float, ptr %i.qi, align 4
  %i.qm = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ql, i64 0
  %i.qn = shufflevector <2 x float> %i.qk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qo = shufflevector <4 x float> %i.qm, <4 x float> %i.qn, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qi, i64 12
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  %i.qr = load <2 x float>, ptr %i.qq, align 4
  %i.qs = load float, ptr %i.qp, align 4
  %i.qt = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.qs, i64 0
  %i.qu = shufflevector <2 x float> %i.qr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qv = shufflevector <4 x float> %i.qt, <4 x float> %i.qu, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qi, i64 24
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qi, i64 28
  %i.qy = load <2 x float>, ptr %i.qx, align 4
  %i.qz = load float, ptr %i.qw, align 4
  %i.ra = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.qz, i64 0
  %i.rb = shufflevector <2 x float> %i.qy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rc = shufflevector <4 x float> %i.ra, <4 x float> %i.rb, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qi, i64 36
  %i.re = getelementptr inbounds nuw i8, ptr %i.qi, i64 40
  %i.rf = load <2 x float>, ptr %i.re, align 4
  %i.rg = load float, ptr %i.rd, align 4
  %i.rh = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.rg, i64 0
  %i.ri = shufflevector <2 x float> %i.rf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rj = shufflevector <4 x float> %i.rh, <4 x float> %i.ri, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %.noexc226

.noexc232:                                        ; preds = %bb.c
  %i.rk = load ptr, ptr %i.ez, align 8, !noalias !1708
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.rm = load i64, ptr %i.rl, align 8, !noalias !1708
  %i.rn = mul i64 %i.rm, %.0111120
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rk, i64 %i.rn ; 12 uses
  %i.rp = load float, ptr %i.ro, align 4, !noalias !1708
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ro, i64 4
  %i.rr = load float, ptr %i.rq, align 4, !noalias !1708
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
  %i.rt = load float, ptr %i.rs, align 4, !noalias !1708
  %i.ru = getelementptr inbounds nuw i8, ptr %i.ro, i64 12
  %i.rv = load float, ptr %i.ru, align 4, !noalias !1708
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ro, i64 16
  %i.rx = load float, ptr %i.rw, align 4, !noalias !1708
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ro, i64 20
  %i.rz = load float, ptr %i.ry, align 4, !noalias !1708
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ro, i64 24
  %i.sb = load float, ptr %i.sa, align 4, !noalias !1708
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ro, i64 28
  %i.sd = load float, ptr %i.sc, align 4, !noalias !1708
  %i.se = getelementptr inbounds nuw i8, ptr %i.ro, i64 32
  %i.sf = load float, ptr %i.se, align 4, !noalias !1708
  %i.sg = getelementptr inbounds nuw i8, ptr %i.ro, i64 36
  %i.sh = load float, ptr %i.sg, align 4, !noalias !1708
  %i.si = getelementptr inbounds nuw i8, ptr %i.ro, i64 40
  %i.sj = load float, ptr %i.si, align 4, !noalias !1708
  %i.sk = getelementptr inbounds nuw i8, ptr %i.ro, i64 44
  %i.sl = load float, ptr %i.sk, align 4, !noalias !1708
  %i.sm = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.rp, i64 0
  %i.sn = insertelement <4 x float> %i.sm, float %i.rx, i64 1
  %i.so = insertelement <4 x float> %i.sn, float %i.sf, i64 2
  %i.sp = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.rr, i64 0
  %i.sq = insertelement <4 x float> %i.sp, float %i.rz, i64 1
  %i.sr = insertelement <4 x float> %i.sq, float %i.sh, i64 2
  %i.ss = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.rt, i64 0
  %i.st = insertelement <4 x float> %i.ss, float %i.sb, i64 1
  %i.su = insertelement <4 x float> %i.st, float %i.sj, i64 2
  %i.sv = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.rv, i64 0
  %i.sw = insertelement <4 x float> %i.sv, float %i.sd, i64 1
  %i.sx = insertelement <4 x float> %i.sw, float %i.sl, i64 2
  br label %.noexc226

.noexc226:                                        ; preds = %bb.c, %.noexc232, %.noexc230, %.noexc229, %.noexc227
  %.sroa.26.0 = phi <4 x float> [ %i.og, %.noexc227 ], [ %i.qa, %.noexc229 ], [ %i.rj, %.noexc230 ], [ %i.sx, %.noexc232 ], [ undef, %bb.c ] ; 2 uses
  %.sroa.18.0 = phi <4 x float> [ %i.oe, %.noexc227 ], [ %.sroa.18.44.vec.insert, %.noexc229 ], [ %i.rc, %.noexc230 ], [ %i.su, %.noexc232 ], [ undef, %bb.c ] ; 2 uses
  %.sroa.10.0 = phi <4 x float> [ %i.oc, %.noexc227 ], [ %.sroa.10.28.vec.insert, %.noexc229 ], [ %i.qv, %.noexc230 ], [ %i.sr, %.noexc232 ], [ undef, %bb.c ] ; 2 uses
  %.sroa.0594.0 = phi <4 x float> [ %i.oa, %.noexc227 ], [ %.sroa.0594.12.vec.insert, %.noexc229 ], [ %i.qo, %.noexc230 ], [ %i.so, %.noexc232 ], [ undef, %bb.c ] ; 2 uses
  br i1 %.not.i223, label %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split, label %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit

_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split: ; preds = %.noexc226, %.noexc225
  %.sink1205.ph = phi <4 x float> [ %i.nl, %.noexc225 ], [ %.sroa.18.0, %.noexc226 ]
  %.sink1203.ph = phi <4 x float> [ %i.nu, %.noexc225 ], [ %.sroa.26.0, %.noexc226 ]
  %.sink1201.ph = phi <4 x float> [ %i.nd, %.noexc225 ], [ %.sroa.10.0, %.noexc226 ]
  %.sink1197.ph = phi <4 x float> [ %i.mx, %.noexc225 ], [ %.sroa.0594.0, %.noexc226 ]
  %i.sy = getelementptr inbounds nuw i8, ptr %i.ek, i64 144
  %i.sz = load ptr, ptr %i.sy, align 8, !noalias !1706
  %i.ta = getelementptr inbounds nuw i8, ptr %i.ek, i64 160
  %i.tb = load i64, ptr %i.ta, align 8, !noalias !1706
  %i.tc = mul i64 %i.tb, %.0111120
  %i.td = getelementptr inbounds nuw i8, ptr %i.sz, i64 %i.tc
  %i.te = load i32, ptr %i.td, align 4, !noalias !1706 ; 2 uses
  %i.tf = icmp ne i32 %i.te, -1
  tail call void @llvm.assume(i1 %i.tf)
  %i.tg = getelementptr inbounds nuw i8, ptr %i.ek, i64 96
  %i.th = load ptr, ptr %i.tg, align 16, !noalias !1706
  %i.ti = zext i32 %i.te to i64
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %i.ti
  %i.tk = load ptr, ptr %i.tj, align 8, !noalias !1706
  br label %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit

_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit: ; preds = %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split, %.noexc226, %.noexc225
  %.0.i268.sink1218 = phi ptr [ %i.em, %.noexc225 ], [ %i.em, %.noexc226 ], [ %i.tk, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split ] ; 4 uses
  %.sink1205 = phi <4 x float> [ %i.nl, %.noexc225 ], [ %.sroa.18.0, %.noexc226 ], [ %.sink1205.ph, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split ] ; 2 uses
  %.sink1203 = phi <4 x float> [ %i.nu, %.noexc225 ], [ %.sroa.26.0, %.noexc226 ], [ %.sink1203.ph, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split ] ; 2 uses
  %.sink1201 = phi <4 x float> [ %i.nd, %.noexc225 ], [ %.sroa.10.0, %.noexc226 ], [ %.sink1201.ph, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split ] ; 2 uses
  %.sink1197 = phi <4 x float> [ %i.mx, %.noexc225 ], [ %.sroa.0594.0, %.noexc226 ], [ %.sink1197.ph, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split ] ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %.0.i268.sink1218, i64 16
  %i.tm = getelementptr inbounds nuw i8, ptr %.0.i268.sink1218, i64 48
  %i.tn = load <4 x float>, ptr %i.tl, align 16, !noalias !1706
  %i.to = load <4 x float>, ptr %i.tm, align 16, !noalias !1706
  %i.tp = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.tn, <4 x float> %i.to) ; 3 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %.0.i268.sink1218, i64 32
  %i.tr = getelementptr inbounds nuw i8, ptr %.0.i268.sink1218, i64 64
  %i.ts = load <4 x float>, ptr %i.tq, align 16, !noalias !1706
  %i.tt = load <4 x float>, ptr %i.tr, align 16, !noalias !1706
  %i.tu = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ts, <4 x float> %i.tt) ; 3 uses
  %i.tv = shufflevector <4 x float> %i.tp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tw = shufflevector <4 x float> %i.tp, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.tx = shufflevector <4 x float> %i.tp, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ty = fmul <4 x float> %.sink1205, %i.tx
  %i.tz = fadd <4 x float> %.sink1203, %i.ty      ; 2 uses
  %i.ua = fmul <4 x float> %.sink1201, %i.tw      ; 2 uses
  %i.ub = fadd <4 x float> %i.ua, %i.tz           ; 2 uses
  %i.uc = fmul <4 x float> %.sink1197, %i.tv      ; 4 uses
  %i.ud = fadd <4 x float> %i.uc, %i.ub           ; 2 uses
  %i.ue = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.ud)
  %i.uf = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.ud)
  %i.ug = shufflevector <4 x float> %i.tu, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.uh = fmul <4 x float> %.sink1205, %i.ug
  %i.ui = fadd <4 x float> %.sink1203, %i.uh      ; 2 uses
  %i.uj = fadd <4 x float> %i.ua, %i.ui           ; 2 uses
  %i.uk = fadd <4 x float> %i.uc, %i.uj           ; 2 uses
  %i.ul = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ue, <4 x float> %i.uk)
  %i.um = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.uf, <4 x float> %i.uk)
  %i.un = shufflevector <4 x float> %i.tu, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.uo = fmul <4 x float> %.sink1201, %i.un      ; 2 uses
  %i.up = fadd <4 x float> %i.tz, %i.uo           ; 2 uses
  %i.uq = fadd <4 x float> %i.uc, %i.up           ; 2 uses
  %i.ur = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ul, <4 x float> %i.uq)
  %i.us = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.um, <4 x float> %i.uq)
  %i.ut = fadd <4 x float> %i.uo, %i.ui           ; 2 uses
  %i.uu = fadd <4 x float> %i.uc, %i.ut           ; 2 uses
  %i.uv = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ur, <4 x float> %i.uu)
  %i.uw = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.us, <4 x float> %i.uu)
  %i.ux = shufflevector <4 x float> %i.tu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uy = fmul <4 x float> %.sink1197, %i.ux      ; 4 uses
  %i.uz = fadd <4 x float> %i.ub, %i.uy           ; 2 uses
  %i.va = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.uv, <4 x float> %i.uz)
  %i.vb = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.uw, <4 x float> %i.uz)
  %i.vc = fadd <4 x float> %i.uy, %i.uj           ; 2 uses
  %i.vd = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.va, <4 x float> %i.vc)
  %i.ve = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.vb, <4 x float> %i.vc)
  %i.vf = fadd <4 x float> %i.uy, %i.up           ; 2 uses
  %i.vg = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.vd, <4 x float> %i.vf)
  %i.vh = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ve, <4 x float> %i.vf)
  %i.vi = fadd <4 x float> %i.uy, %i.ut           ; 2 uses
  %i.vj = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.vg, <4 x float> %i.vi) ; 2 uses
  %i.vk = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.vh, <4 x float> %i.vi) ; 2 uses
  %i.vl = fcmp ugt <4 x float> %i.vj, splat (float -1.844000e+18)
  %i.vm = fcmp olt <4 x float> %i.vk, splat (float 1.844000e+18)
  %i.vn = and <4 x i1> %i.vm, %i.vl
  %i.vo = bitcast <4 x i1> %i.vn to i4
  %i.vp = and i4 %i.vo, 7
  %i.vq = icmp eq i4 %i.vp, 7
  br i1 %i.vq, label %.noexc15, label %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread, !prof !40

.noexc15:                                         ; preds = %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit
  %i.vr = trunc i64 %.0111120 to i32
  %i.vs = fadd <4 x float> %i.vk, %i.vj
  %i.vt = fsub <4 x float> %i.vs, %i.h
  %i.vu = fmul <4 x float> %i.k, %i.vt
  %i.vv = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.vu) ; 3 uses
  %i.vw = extractelement <4 x i32> %i.vv, i64 0
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.eh
  store i32 %i.vw, ptr %i.vx, align 4
  %.sroa.0276.4.vec.extract = extractelement <4 x i32> %i.vv, i64 1
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.eh
  store i32 %.sroa.0276.4.vec.extract, ptr %i.vy, align 4
  %.sroa.0276.8.vec.extract = extractelement <4 x i32> %i.vv, i64 2
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.eh
  store i32 %.sroa.0276.8.vec.extract, ptr %i.vz, align 4
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.eh
  store i32 %i.vr, ptr %i.wa, align 4
  %i.wb = add nsw i64 %i.eh, 1                    ; 2 uses
  %i.wc = add i64 %i.ei, 1                        ; 2 uses
  %i.wd = icmp eq i64 %i.wb, 4
  br i1 %i.wd, label %.noexc20, label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit

.noexc20:                                         ; preds = %.noexc15
  %i.we = load <2 x i64>, ptr %i.n, align 16, !noalias !1709 ; 2 uses
  %i.wf = load <2 x i64>, ptr %i.o, align 16, !noalias !1709 ; 2 uses
  %i.wg = load <2 x i64>, ptr %i.p, align 16, !noalias !1709 ; 2 uses
  %i.wh = bitcast <2 x i64> %i.we to <4 x i32>
  %i.wi = shl <4 x i32> %i.wh, splat (i32 16)
  %i.wj = bitcast <4 x i32> %i.wi to <2 x i64>
  %i.wk = or <2 x i64> %i.we, %i.wj
  %i.wl = and <2 x i64> %i.wk, splat (i64 216173877380776191) ; 2 uses
  %i.wm = bitcast <2 x i64> %i.wl to <4 x i32>
  %i.wn = shl <4 x i32> %i.wm, splat (i32 8)
  %i.wo = bitcast <4 x i32> %i.wn to <2 x i64>
  %i.wp = or disjoint <2 x i64> %i.wl, %i.wo
  %i.wq = and <2 x i64> %i.wp, splat (i64 216436729379352591) ; 2 uses
  %i.wr = bitcast <2 x i64> %i.wq to <4 x i32>
  %i.ws = shl nuw nsw <4 x i32> %i.wr, splat (i32 4)
  %i.wt = bitcast <4 x i32> %i.ws to <2 x i64>
  %i.wu = or disjoint <2 x i64> %i.wq, %i.wt
  %i.wv = and <2 x i64> %i.wu, splat (i64 219604095962198211) ; 2 uses
  %i.ww = bitcast <2 x i64> %i.wv to <4 x i32>
  %i.wx = shl nuw nsw <4 x i32> %i.ww, splat (i32 2)
  %i.wy = bitcast <4 x i32> %i.wx to <2 x i64>
  %i.wz = or disjoint <2 x i64> %i.wv, %i.wy
  %i.xa = and <2 x i64> %i.wz, splat (i64 658812287886594633)
  %i.xb = bitcast <2 x i64> %i.wf to <4 x i32>
  %i.xc = shl <4 x i32> %i.xb, splat (i32 16)
  %i.xd = bitcast <4 x i32> %i.xc to <2 x i64>
  %i.xe = or <2 x i64> %i.wf, %i.xd
  %i.xf = and <2 x i64> %i.xe, splat (i64 216173877380776191) ; 2 uses
  %i.xg = bitcast <2 x i64> %i.xf to <4 x i32>
  %i.xh = shl <4 x i32> %i.xg, splat (i32 8)
  %i.xi = bitcast <4 x i32> %i.xh to <2 x i64>
  %i.xj = or disjoint <2 x i64> %i.xf, %i.xi
  %i.xk = and <2 x i64> %i.xj, splat (i64 216436729379352591) ; 2 uses
  %i.xl = bitcast <2 x i64> %i.xk to <4 x i32>
  %i.xm = shl nuw nsw <4 x i32> %i.xl, splat (i32 4)
  %i.xn = bitcast <2 x i64> %i.xk to <4 x i32>
  %i.xo = or disjoint <4 x i32> %i.xm, %i.xn
  %i.xp = and <4 x i32> %i.xo, splat (i32 51130563) ; 2 uses
  %i.xq = bitcast <2 x i64> %i.wg to <4 x i32>
  %i.xr = shl <4 x i32> %i.xq, splat (i32 16)
  %i.xs = bitcast <4 x i32> %i.xr to <2 x i64>
  %i.xt = or <2 x i64> %i.wg, %i.xs
  %i.xu = and <2 x i64> %i.xt, splat (i64 216173877380776191) ; 2 uses
  %i.xv = bitcast <2 x i64> %i.xu to <4 x i32>
  %i.xw = shl <4 x i32> %i.xv, splat (i32 8)
  %i.xx = bitcast <4 x i32> %i.xw to <2 x i64>
  %i.xy = or disjoint <2 x i64> %i.xu, %i.xx
  %i.xz = and <2 x i64> %i.xy, splat (i64 216436729379352591) ; 2 uses
  %i.ya = bitcast <2 x i64> %i.xz to <4 x i32>
  %i.yb = shl nuw nsw <4 x i32> %i.ya, splat (i32 4)
  %i.yc = bitcast <2 x i64> %i.xz to <4 x i32>
  %i.yd = or disjoint <4 x i32> %i.yb, %i.yc
  %i.ye = and <4 x i32> %i.yd, splat (i32 51130563) ; 2 uses
  %i.yf = shl nuw nsw <4 x i32> %i.xp, splat (i32 3)
  %i.yg = shl nuw nsw <4 x i32> %i.xp, splat (i32 1)
  %i.yh = or disjoint <4 x i32> %i.yf, %i.yg
  %i.yi = bitcast <4 x i32> %i.yh to <2 x i64>
  %i.yj = and <2 x i64> %i.yi, splat (i64 1317624575773189266)
  %i.yk = or disjoint <2 x i64> %i.yj, %i.xa
  %i.yl = shl nuw nsw <4 x i32> %i.ye, splat (i32 4)
  %i.ym = shl nuw nsw <4 x i32> %i.ye, splat (i32 2)
  %i.yn = or disjoint <4 x i32> %i.yl, %i.ym
  %i.yo = bitcast <4 x i32> %i.yn to <2 x i64>
  %i.yp = and <2 x i64> %i.yo, splat (i64 2635249151546378532)
  %i.yq = or disjoint <2 x i64> %i.yk, %i.yp
  %i.yr = getelementptr [8 x i8], ptr %i.g, i64 %i.wc ; 2 uses
  %i.ys = getelementptr i8, ptr %i.yr, i64 -32
  %i.yt = bitcast <2 x i64> %i.yq to <4 x float>  ; 2 uses
  %i.yu = load <4 x float>, ptr %i.q, align 16, !noalias !1710 ; 2 uses
  %i.yv = shufflevector <4 x float> %i.yt, <4 x float> %i.yu, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.yv, ptr %i.ys, align 1
  %i.yw = getelementptr i8, ptr %i.yr, i64 -16
  %i.yx = shufflevector <4 x float> %i.yt, <4 x float> %i.yu, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.yx, ptr %i.yw, align 1
  br label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit

_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit: ; preds = %.noexc20, %.noexc15
  %i.yy = phi i64 [ 0, %.noexc20 ], [ %i.wb, %.noexc15 ]
  %i.yz = add i64 %.01123, 1
  br label %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread

_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread: ; preds = %.noexc221, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit
  %i.za = phi i64 [ %i.wc, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %i.ei, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit ], [ %i.ei, %.noexc221 ] ; 2 uses
  %i.zb = phi i64 [ %i.yy, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %i.eh, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit ], [ %i.eh, %.noexc221 ] ; 10 uses
  %.1 = phi i64 [ %i.yz, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %.01123, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit ], [ %.01123, %.noexc221 ] ; 3 uses
  %i.zc = add nuw i64 %.0111120, 1                ; 2 uses
  %i.zd = load i64, ptr %i.r, align 8
  %i.ze = icmp ult i64 %i.zc, %i.zd
  br i1 %i.ze, label %_ZN6embree4BBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit, label %._crit_edge, !llvm.loop !1704
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_19parallel_prefix_sumImmZNS_4sse221createMortonCodeArrayINS_13InstanceArrayEEEmPT_RNS_8vector_tINS4_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorISB_Lm8EEEEERNS_20BuildProgressMonitorEEUlRKNS_5rangeImEEmE0_St4plusImEEET0_RNS_22ParallelPrefixSumStateISP_EES7_S7_S7_RKSP_RKT1_RKT2_EUlmE_EEvS7_SU_EUlSL_E_EEvS7_S7_S7_SU_PNS0_16TaskGroupContextE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.328, align 8            ; 9 uses
  %i.a = sub i64 %1, %0                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store i64 %1, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.e = load i64, ptr %3, align 8
  store i64 %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %4, ptr %i.f, align 8
  %i.g = tail call noundef ptr @_ZN6embree13TaskScheduler6threadEv() ; 7 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.l, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 262272 ; 5 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 8
  %i.k = icmp ugt i64 %i.j, 4095
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #19
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.u, %bb.i ], [ %i.l, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.m, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #18
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.f:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 786624 ; 2 uses
  %i.o = load i64, ptr %i.n, align 64             ; 4 uses
  %i.p = sub i64 0, %i.o
  %i.q = and i64 %i.p, 63                         ; 2 uses
  %i.r = add i64 %i.o, 48
  %i.s = add i64 %i.r, %i.q                       ; 2 uses
  %i.t = icmp ugt i64 %i.s, 524288
  br i1 %i.t, label %bb.g, label %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i

bb.g:                                             ; preds = %bb.f
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull @.str.1)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #19
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i: ; preds = %bb.f
  store i64 %i.s, ptr %i.n, align 64
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 262336
  %i.x = getelementptr i8, ptr %i.w, i64 %i.o
  %i.y = getelementptr i8, ptr %i.x, i64 %i.q     ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_12parallel_forImZNS_19parallel_prefix_sumImmZNS_4sse221createMortonCodeArrayINS_13InstanceArrayEEEmPT_RNS_8vector_tINS5_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorISC_Lm8EEEEERNS_20BuildProgressMonitorEEUlRKNS_5rangeImEEmE0_St4plusImEEET0_RNS_22ParallelPrefixSumStateISQ_EES8_S8_S8_RKSQ_RKT1_RKT2_EUlmE_EEvS8_SV_EUlSM_E_EEvS8_S8_S8_SV_PNS0_16TaskGroupContextEEUlvE_EE, i64 16), ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false)
  %i.aa = load atomic i64, ptr %i.i seq_cst, align 64
  %i.ab = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %i.aa ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 786688
  %i.ad = load ptr, ptr %i.ac, align 64           ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 1, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i8 1, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.y, ptr %i.ag, align 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.ad, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %4, ptr %i.ai, align 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store i64 %i.o, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store i64 %i.a, ptr %i.ak, align 16
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.am = atomicrmw add ptr %i.al, i32 1 seq_cst, align 4 ; 0 uses
  br label %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i
end_hunk_13
begin_hunk_14_@_ZZN6embree4sse221createMortonCodeArrayINS_13InstanceArrayEEEmPT_RNS_8vector_tINS0_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS7_Lm8EEEEERNS_20BuildProgressMonitorEENKUlRKNS_5rangeImEEmE0_clESH_m:bb.a
  %i.py = fsub float %i.pt, %i.px                 ; 4 uses
  %i.pz = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.py, i64 3
  %i.qa = fmul <4 x float> %i.pj, %i.pz
  %i.qb = fmul float %i.pl, %i.py
  %i.qc = fmul float %i.pk, %i.py
  %i.qd = fmul float %i.ph, %i.py
  %.sroa.0594.12.vec.insert = insertelement <4 x float> %.sroa.0594.8.vec.insert1235, float %i.qb, i64 3
  %.sroa.10.28.vec.insert = insertelement <4 x float> %.sroa.10.24.vec.insert, float %i.qc, i64 3
  %.sroa.18.44.vec.insert = insertelement <4 x float> %.sroa.18.36.vec.insert, float %i.qd, i64 3
  br label %.noexc226

.noexc230:                                        ; preds = %bb.c
  %i.qe = load ptr, ptr %i.ez, align 8, !noalias !1732
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.qg = load i64, ptr %i.qf, align 8, !noalias !1732
  %i.qh = mul i64 %i.qg, %.0111120
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qe, i64 %i.qh ; 8 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 4
  %i.qk = load <2 x float>, ptr %i.qj, align 4
  %i.ql = load float, ptr %i.qi, align 4
  %i.qm = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ql, i64 0
  %i.qn = shufflevector <2 x float> %i.qk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qo = shufflevector <4 x float> %i.qm, <4 x float> %i.qn, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qi, i64 12
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  %i.qr = load <2 x float>, ptr %i.qq, align 4
  %i.qs = load float, ptr %i.qp, align 4
  %i.qt = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.qs, i64 0
  %i.qu = shufflevector <2 x float> %i.qr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qv = shufflevector <4 x float> %i.qt, <4 x float> %i.qu, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qi, i64 24
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qi, i64 28
  %i.qy = load <2 x float>, ptr %i.qx, align 4
  %i.qz = load float, ptr %i.qw, align 4
  %i.ra = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.qz, i64 0
  %i.rb = shufflevector <2 x float> %i.qy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rc = shufflevector <4 x float> %i.ra, <4 x float> %i.rb, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qi, i64 36
  %i.re = getelementptr inbounds nuw i8, ptr %i.qi, i64 40
  %i.rf = load <2 x float>, ptr %i.re, align 4
  %i.rg = load float, ptr %i.rd, align 4
  %i.rh = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.rg, i64 0
  %i.ri = shufflevector <2 x float> %i.rf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rj = shufflevector <4 x float> %i.rh, <4 x float> %i.ri, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %.noexc226

.noexc232:                                        ; preds = %bb.c
  %i.rk = load ptr, ptr %i.ez, align 8, !noalias !1732
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.rm = load i64, ptr %i.rl, align 8, !noalias !1732
  %i.rn = mul i64 %i.rm, %.0111120
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rk, i64 %i.rn ; 12 uses
  %i.rp = load float, ptr %i.ro, align 4, !noalias !1732
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ro, i64 4
  %i.rr = load float, ptr %i.rq, align 4, !noalias !1732
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
  %i.rt = load float, ptr %i.rs, align 4, !noalias !1732
  %i.ru = getelementptr inbounds nuw i8, ptr %i.ro, i64 12
  %i.rv = load float, ptr %i.ru, align 4, !noalias !1732
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ro, i64 16
  %i.rx = load float, ptr %i.rw, align 4, !noalias !1732
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ro, i64 20
  %i.rz = load float, ptr %i.ry, align 4, !noalias !1732
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ro, i64 24
  %i.sb = load float, ptr %i.sa, align 4, !noalias !1732
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ro, i64 28
  %i.sd = load float, ptr %i.sc, align 4, !noalias !1732
  %i.se = getelementptr inbounds nuw i8, ptr %i.ro, i64 32
  %i.sf = load float, ptr %i.se, align 4, !noalias !1732
  %i.sg = getelementptr inbounds nuw i8, ptr %i.ro, i64 36
  %i.sh = load float, ptr %i.sg, align 4, !noalias !1732
  %i.si = getelementptr inbounds nuw i8, ptr %i.ro, i64 40
  %i.sj = load float, ptr %i.si, align 4, !noalias !1732
  %i.sk = getelementptr inbounds nuw i8, ptr %i.ro, i64 44
  %i.sl = load float, ptr %i.sk, align 4, !noalias !1732
  %i.sm = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.rp, i64 0
  %i.sn = insertelement <4 x float> %i.sm, float %i.rx, i64 1
  %i.so = insertelement <4 x float> %i.sn, float %i.sf, i64 2
  %i.sp = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.rr, i64 0
  %i.sq = insertelement <4 x float> %i.sp, float %i.rz, i64 1
  %i.sr = insertelement <4 x float> %i.sq, float %i.sh, i64 2
  %i.ss = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.rt, i64 0
  %i.st = insertelement <4 x float> %i.ss, float %i.sb, i64 1
  %i.su = insertelement <4 x float> %i.st, float %i.sj, i64 2
  %i.sv = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.rv, i64 0
  %i.sw = insertelement <4 x float> %i.sv, float %i.sd, i64 1
  %i.sx = insertelement <4 x float> %i.sw, float %i.sl, i64 2
  br label %.noexc226

.noexc226:                                        ; preds = %bb.c, %.noexc232, %.noexc230, %.noexc229, %.noexc227
  %.sroa.26.0 = phi <4 x float> [ %i.og, %.noexc227 ], [ %i.qa, %.noexc229 ], [ %i.rj, %.noexc230 ], [ %i.sx, %.noexc232 ], [ undef, %bb.c ] ; 2 uses
  %.sroa.18.0 = phi <4 x float> [ %i.oe, %.noexc227 ], [ %.sroa.18.44.vec.insert, %.noexc229 ], [ %i.rc, %.noexc230 ], [ %i.su, %.noexc232 ], [ undef, %bb.c ] ; 2 uses
  %.sroa.10.0 = phi <4 x float> [ %i.oc, %.noexc227 ], [ %.sroa.10.28.vec.insert, %.noexc229 ], [ %i.qv, %.noexc230 ], [ %i.sr, %.noexc232 ], [ undef, %bb.c ] ; 2 uses
  %.sroa.0594.0 = phi <4 x float> [ %i.oa, %.noexc227 ], [ %.sroa.0594.12.vec.insert, %.noexc229 ], [ %i.qo, %.noexc230 ], [ %i.so, %.noexc232 ], [ undef, %bb.c ] ; 2 uses
  br i1 %.not.i223, label %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split, label %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit

_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split: ; preds = %.noexc226, %.noexc225
  %.sink1205.ph = phi <4 x float> [ %i.nl, %.noexc225 ], [ %.sroa.18.0, %.noexc226 ]
  %.sink1203.ph = phi <4 x float> [ %i.nu, %.noexc225 ], [ %.sroa.26.0, %.noexc226 ]
  %.sink1201.ph = phi <4 x float> [ %i.nd, %.noexc225 ], [ %.sroa.10.0, %.noexc226 ]
  %.sink1197.ph = phi <4 x float> [ %i.mx, %.noexc225 ], [ %.sroa.0594.0, %.noexc226 ]
  %i.sy = getelementptr inbounds nuw i8, ptr %i.ek, i64 144
  %i.sz = load ptr, ptr %i.sy, align 8, !noalias !1730
  %i.ta = getelementptr inbounds nuw i8, ptr %i.ek, i64 160
  %i.tb = load i64, ptr %i.ta, align 8, !noalias !1730
  %i.tc = mul i64 %i.tb, %.0111120
  %i.td = getelementptr inbounds nuw i8, ptr %i.sz, i64 %i.tc
  %i.te = load i32, ptr %i.td, align 4, !noalias !1730 ; 2 uses
  %i.tf = icmp ne i32 %i.te, -1
  tail call void @llvm.assume(i1 %i.tf)
  %i.tg = getelementptr inbounds nuw i8, ptr %i.ek, i64 96
  %i.th = load ptr, ptr %i.tg, align 16, !noalias !1730
  %i.ti = zext i32 %i.te to i64
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %i.ti
  %i.tk = load ptr, ptr %i.tj, align 8, !noalias !1730
  br label %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit

_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit: ; preds = %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split, %.noexc226, %.noexc225
  %.0.i268.sink1218 = phi ptr [ %i.em, %.noexc225 ], [ %i.em, %.noexc226 ], [ %i.tk, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split ] ; 4 uses
  %.sink1205 = phi <4 x float> [ %i.nl, %.noexc225 ], [ %.sroa.18.0, %.noexc226 ], [ %.sink1205.ph, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split ] ; 2 uses
  %.sink1203 = phi <4 x float> [ %i.nu, %.noexc225 ], [ %.sroa.26.0, %.noexc226 ], [ %.sink1203.ph, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split ] ; 2 uses
  %.sink1201 = phi <4 x float> [ %i.nd, %.noexc225 ], [ %.sroa.10.0, %.noexc226 ], [ %.sink1201.ph, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split ] ; 2 uses
  %.sink1197 = phi <4 x float> [ %i.mx, %.noexc225 ], [ %.sroa.0594.0, %.noexc226 ], [ %.sink1197.ph, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split ] ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %.0.i268.sink1218, i64 16
  %i.tm = getelementptr inbounds nuw i8, ptr %.0.i268.sink1218, i64 48
  %i.tn = load <4 x float>, ptr %i.tl, align 16, !noalias !1730
  %i.to = load <4 x float>, ptr %i.tm, align 16, !noalias !1730
  %i.tp = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.tn, <4 x float> %i.to) ; 3 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %.0.i268.sink1218, i64 32
  %i.tr = getelementptr inbounds nuw i8, ptr %.0.i268.sink1218, i64 64
  %i.ts = load <4 x float>, ptr %i.tq, align 16, !noalias !1730
  %i.tt = load <4 x float>, ptr %i.tr, align 16, !noalias !1730
  %i.tu = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ts, <4 x float> %i.tt) ; 3 uses
  %i.tv = shufflevector <4 x float> %i.tp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tw = shufflevector <4 x float> %i.tp, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.tx = shufflevector <4 x float> %i.tp, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ty = fmul <4 x float> %.sink1205, %i.tx
  %i.tz = fadd <4 x float> %.sink1203, %i.ty      ; 2 uses
  %i.ua = fmul <4 x float> %.sink1201, %i.tw      ; 2 uses
  %i.ub = fadd <4 x float> %i.ua, %i.tz           ; 2 uses
  %i.uc = fmul <4 x float> %.sink1197, %i.tv      ; 4 uses
  %i.ud = fadd <4 x float> %i.uc, %i.ub           ; 2 uses
  %i.ue = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.ud)
  %i.uf = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.ud)
  %i.ug = shufflevector <4 x float> %i.tu, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.uh = fmul <4 x float> %.sink1205, %i.ug
  %i.ui = fadd <4 x float> %.sink1203, %i.uh      ; 2 uses
  %i.uj = fadd <4 x float> %i.ua, %i.ui           ; 2 uses
  %i.uk = fadd <4 x float> %i.uc, %i.uj           ; 2 uses
  %i.ul = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ue, <4 x float> %i.uk)
  %i.um = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.uf, <4 x float> %i.uk)
  %i.un = shufflevector <4 x float> %i.tu, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.uo = fmul <4 x float> %.sink1201, %i.un      ; 2 uses
  %i.up = fadd <4 x float> %i.tz, %i.uo           ; 2 uses
  %i.uq = fadd <4 x float> %i.uc, %i.up           ; 2 uses
  %i.ur = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ul, <4 x float> %i.uq)
  %i.us = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.um, <4 x float> %i.uq)
  %i.ut = fadd <4 x float> %i.uo, %i.ui           ; 2 uses
  %i.uu = fadd <4 x float> %i.uc, %i.ut           ; 2 uses
  %i.uv = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ur, <4 x float> %i.uu)
  %i.uw = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.us, <4 x float> %i.uu)
  %i.ux = shufflevector <4 x float> %i.tu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uy = fmul <4 x float> %.sink1197, %i.ux      ; 4 uses
  %i.uz = fadd <4 x float> %i.ub, %i.uy           ; 2 uses
  %i.va = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.uv, <4 x float> %i.uz)
  %i.vb = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.uw, <4 x float> %i.uz)
  %i.vc = fadd <4 x float> %i.uy, %i.uj           ; 2 uses
  %i.vd = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.va, <4 x float> %i.vc)
  %i.ve = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.vb, <4 x float> %i.vc)
  %i.vf = fadd <4 x float> %i.uy, %i.up           ; 2 uses
  %i.vg = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.vd, <4 x float> %i.vf)
  %i.vh = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ve, <4 x float> %i.vf)
  %i.vi = fadd <4 x float> %i.uy, %i.ut           ; 2 uses
  %i.vj = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.vg, <4 x float> %i.vi) ; 2 uses
  %i.vk = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.vh, <4 x float> %i.vi) ; 2 uses
  %i.vl = fcmp ugt <4 x float> %i.vj, splat (float -1.844000e+18)
  %i.vm = fcmp olt <4 x float> %i.vk, splat (float 1.844000e+18)
  %i.vn = and <4 x i1> %i.vm, %i.vl
  %i.vo = bitcast <4 x i1> %i.vn to i4
  %i.vp = and i4 %i.vo, 7
  %i.vq = icmp eq i4 %i.vp, 7
  br i1 %i.vq, label %.noexc15, label %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread

.noexc15:                                         ; preds = %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit
  %i.vr = trunc i64 %.0111120 to i32
  %i.vs = fadd <4 x float> %i.vk, %i.vj
  %i.vt = fsub <4 x float> %i.vs, %i.g
  %i.vu = fmul <4 x float> %i.j, %i.vt
  %i.vv = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.vu) ; 3 uses
  %i.vw = extractelement <4 x i32> %i.vv, i64 0
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.eh
  store i32 %i.vw, ptr %i.vx, align 4
  %.sroa.0276.4.vec.extract = extractelement <4 x i32> %i.vv, i64 1
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.eh
  store i32 %.sroa.0276.4.vec.extract, ptr %i.vy, align 4
  %.sroa.0276.8.vec.extract = extractelement <4 x i32> %i.vv, i64 2
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.eh
  store i32 %.sroa.0276.8.vec.extract, ptr %i.vz, align 4
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.eh
  store i32 %i.vr, ptr %i.wa, align 4
  %i.wb = add nsw i64 %i.eh, 1                    ; 2 uses
  %i.wc = add i64 %i.ei, 1                        ; 2 uses
  %i.wd = icmp eq i64 %i.wb, 4
  br i1 %i.wd, label %.noexc20, label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit

.noexc20:                                         ; preds = %.noexc15
  %i.we = load <2 x i64>, ptr %i.m, align 16, !noalias !1733 ; 2 uses
  %i.wf = load <2 x i64>, ptr %i.n, align 16, !noalias !1733 ; 2 uses
  %i.wg = load <2 x i64>, ptr %i.o, align 16, !noalias !1733 ; 2 uses
  %i.wh = bitcast <2 x i64> %i.we to <4 x i32>
  %i.wi = shl <4 x i32> %i.wh, splat (i32 16)
  %i.wj = bitcast <4 x i32> %i.wi to <2 x i64>
  %i.wk = or <2 x i64> %i.we, %i.wj
  %i.wl = and <2 x i64> %i.wk, splat (i64 216173877380776191) ; 2 uses
  %i.wm = bitcast <2 x i64> %i.wl to <4 x i32>
  %i.wn = shl <4 x i32> %i.wm, splat (i32 8)
  %i.wo = bitcast <4 x i32> %i.wn to <2 x i64>
  %i.wp = or disjoint <2 x i64> %i.wl, %i.wo
  %i.wq = and <2 x i64> %i.wp, splat (i64 216436729379352591) ; 2 uses
  %i.wr = bitcast <2 x i64> %i.wq to <4 x i32>
  %i.ws = shl nuw nsw <4 x i32> %i.wr, splat (i32 4)
  %i.wt = bitcast <4 x i32> %i.ws to <2 x i64>
  %i.wu = or disjoint <2 x i64> %i.wq, %i.wt
  %i.wv = and <2 x i64> %i.wu, splat (i64 219604095962198211) ; 2 uses
  %i.ww = bitcast <2 x i64> %i.wv to <4 x i32>
  %i.wx = shl nuw nsw <4 x i32> %i.ww, splat (i32 2)
  %i.wy = bitcast <4 x i32> %i.wx to <2 x i64>
  %i.wz = or disjoint <2 x i64> %i.wv, %i.wy
  %i.xa = and <2 x i64> %i.wz, splat (i64 658812287886594633)
  %i.xb = bitcast <2 x i64> %i.wf to <4 x i32>
  %i.xc = shl <4 x i32> %i.xb, splat (i32 16)
  %i.xd = bitcast <4 x i32> %i.xc to <2 x i64>
  %i.xe = or <2 x i64> %i.wf, %i.xd
  %i.xf = and <2 x i64> %i.xe, splat (i64 216173877380776191) ; 2 uses
  %i.xg = bitcast <2 x i64> %i.xf to <4 x i32>
  %i.xh = shl <4 x i32> %i.xg, splat (i32 8)
  %i.xi = bitcast <4 x i32> %i.xh to <2 x i64>
  %i.xj = or disjoint <2 x i64> %i.xf, %i.xi
  %i.xk = and <2 x i64> %i.xj, splat (i64 216436729379352591) ; 2 uses
  %i.xl = bitcast <2 x i64> %i.xk to <4 x i32>
  %i.xm = shl nuw nsw <4 x i32> %i.xl, splat (i32 4)
  %i.xn = bitcast <2 x i64> %i.xk to <4 x i32>
  %i.xo = or disjoint <4 x i32> %i.xm, %i.xn
  %i.xp = and <4 x i32> %i.xo, splat (i32 51130563) ; 2 uses
  %i.xq = bitcast <2 x i64> %i.wg to <4 x i32>
  %i.xr = shl <4 x i32> %i.xq, splat (i32 16)
  %i.xs = bitcast <4 x i32> %i.xr to <2 x i64>
  %i.xt = or <2 x i64> %i.wg, %i.xs
  %i.xu = and <2 x i64> %i.xt, splat (i64 216173877380776191) ; 2 uses
  %i.xv = bitcast <2 x i64> %i.xu to <4 x i32>
  %i.xw = shl <4 x i32> %i.xv, splat (i32 8)
  %i.xx = bitcast <4 x i32> %i.xw to <2 x i64>
  %i.xy = or disjoint <2 x i64> %i.xu, %i.xx
  %i.xz = and <2 x i64> %i.xy, splat (i64 216436729379352591) ; 2 uses
  %i.ya = bitcast <2 x i64> %i.xz to <4 x i32>
  %i.yb = shl nuw nsw <4 x i32> %i.ya, splat (i32 4)
  %i.yc = bitcast <2 x i64> %i.xz to <4 x i32>
  %i.yd = or disjoint <4 x i32> %i.yb, %i.yc
  %i.ye = and <4 x i32> %i.yd, splat (i32 51130563) ; 2 uses
  %i.yf = shl nuw nsw <4 x i32> %i.xp, splat (i32 3)
  %i.yg = shl nuw nsw <4 x i32> %i.xp, splat (i32 1)
  %i.yh = or disjoint <4 x i32> %i.yf, %i.yg
  %i.yi = bitcast <4 x i32> %i.yh to <2 x i64>
  %i.yj = and <2 x i64> %i.yi, splat (i64 1317624575773189266)
  %i.yk = or disjoint <2 x i64> %i.yj, %i.xa
  %i.yl = shl nuw nsw <4 x i32> %i.ye, splat (i32 4)
  %i.ym = shl nuw nsw <4 x i32> %i.ye, splat (i32 2)
  %i.yn = or disjoint <4 x i32> %i.yl, %i.ym
  %i.yo = bitcast <4 x i32> %i.yn to <2 x i64>
  %i.yp = and <2 x i64> %i.yo, splat (i64 2635249151546378532)
  %i.yq = or disjoint <2 x i64> %i.yk, %i.yp
  %i.yr = getelementptr [8 x i8], ptr %i.f, i64 %i.wc ; 2 uses
  %i.ys = getelementptr i8, ptr %i.yr, i64 -32
  %i.yt = bitcast <2 x i64> %i.yq to <4 x float>  ; 2 uses
  %i.yu = load <4 x float>, ptr %i.p, align 16, !noalias !1734 ; 2 uses
  %i.yv = shufflevector <4 x float> %i.yt, <4 x float> %i.yu, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.yv, ptr %i.ys, align 1
  %i.yw = getelementptr i8, ptr %i.yr, i64 -16
  %i.yx = shufflevector <4 x float> %i.yt, <4 x float> %i.yu, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.yx, ptr %i.yw, align 1
  br label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit

_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit: ; preds = %.noexc20, %.noexc15
  %i.yy = phi i64 [ 0, %.noexc20 ], [ %i.wb, %.noexc15 ]
  %i.yz = add i64 %.01123, 1
  br label %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread

_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread: ; preds = %.noexc221, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit
  %i.za = phi i64 [ %i.wc, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %i.ei, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit ], [ %i.ei, %.noexc221 ] ; 2 uses
  %i.zb = phi i64 [ %i.yy, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %i.eh, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit ], [ %i.eh, %.noexc221 ] ; 10 uses
  %.1 = phi i64 [ %i.yz, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %.01123, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit ], [ %.01123, %.noexc221 ] ; 3 uses
  %i.zc = add nuw i64 %.0111120, 1                ; 2 uses
  %i.zd = load i64, ptr %i.r, align 8
  %i.ze = icmp ult i64 %i.zc, %i.zd
  br i1 %i.ze, label %_ZN6embree4BBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit, label %._crit_edge, !llvm.loop !1728
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress noinline uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { noreturn }
attributes #20 = { noreturn nounwind }

!llvm.module.flags = !{!21, !22}
!llvm.ident = !{!23}

!0 = distinct !{!0, !25}
!1 = distinct !{!1, !25}
!2 = distinct !{!2, !25}
!3 = distinct !{!3, !25}
!4 = distinct !{!4, !25}
!5 = distinct !{!5, !25}
!6 = distinct !{!6, !25}
!7 = distinct !{!7, !25}
!8 = distinct !{!8, !25}
!9 = distinct !{null}
!10 = distinct !{!10, !25}
!11 = distinct !{null}
!12 = distinct !{!12, !25}
!13 = distinct !{null}
!14 = distinct !{!14, !25}
!15 = distinct !{null}
!16 = distinct !{null}
!17 = distinct !{null}
!18 = distinct !{!18, !25}
!19 = distinct !{!19, !25}
!20 = distinct !{null}
!21 = !{i32 8, !"PIC Level", i32 2}
!22 = !{i32 7, !"uwtable", i32 2}
!23 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!24 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"branch_weights", i32 2146410443, i32 1073205}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = !{}
!29 = !{i64 8}
!30 = !{i8 0, i8 2}
!31 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!32 = !{i64 2158260488}
!33 = !{i64 4}
!34 = !{i64 16}
!35 = !{!"llvm.loop.peeled.count", i32 1}
!36 = !{i64 64}
!37 = !{!"llvm.loop.isvectorized", i32 1}
!38 = !{!"llvm.loop.unroll.runtime.disable"}
!39 = !{!"branch_weights", i32 1073205, i32 2146410443}
!40 = !{!"branch_weights", !"expected", i32 2146812770, i32 670878}
!41 = distinct !{!41, !"_ZZN6embree4sse221createMortonCodeArrayINS_12TriangleMeshEEEmPT_RNS_8vector_tINS0_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS7_Lm8EEEEERNS_20BuildProgressMonitorEENKUlRKNS_5rangeImEEE_clESH_"}
!42 = distinct !{!42, !41, !"_ZZN6embree4sse221createMortonCodeArrayINS_12TriangleMeshEEEmPT_RNS_8vector_tINS0_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS7_Lm8EEEEERNS_20BuildProgressMonitorEENKUlRKNS_5rangeImEEE_clESH_: argument 0"}
!43 = distinct !{!43, !"_ZNK6embree12TriangleMesh6vertexEmm"}
!44 = distinct !{!44, !43, !"_ZNK6embree12TriangleMesh6vertexEmm: argument 0"}
!45 = distinct !{!45, !"_ZNK6embree10BufferViewINS_6Vec3faEEixEm"}
!46 = distinct !{!46, !45, !"_ZNK6embree10BufferViewINS_6Vec3faEEixEm: argument 0"}
!47 = distinct !{!47, !"_ZN6embree11vfloat_implILi4EE5loaduEPKv"}
!48 = distinct !{!48, !47, !"_ZN6embree11vfloat_implILi4EE5loaduEPKv: argument 0"}
!49 = distinct !{!49, !"_ZNK6embree12TriangleMesh6vertexEmm"}
!50 = distinct !{!50, !49, !"_ZNK6embree12TriangleMesh6vertexEmm: argument 0"}
!51 = distinct !{!51, !"_ZNK6embree10BufferViewINS_6Vec3faEEixEm"}
!52 = distinct !{!52, !51, !"_ZNK6embree10BufferViewINS_6Vec3faEEixEm: argument 0"}
!53 = distinct !{!53, !"_ZN6embree11vfloat_implILi4EE5loaduEPKv"}
!54 = distinct !{!54, !53, !"_ZN6embree11vfloat_implILi4EE5loaduEPKv: argument 0"}
!55 = distinct !{!55, !"_ZNK6embree12TriangleMesh6vertexEmm"}
!56 = distinct !{!56, !55, !"_ZNK6embree12TriangleMesh6vertexEmm: argument 0"}
!57 = distinct !{!57, !"_ZNK6embree10BufferViewINS_6Vec3faEEixEm"}
end_hunk_14
