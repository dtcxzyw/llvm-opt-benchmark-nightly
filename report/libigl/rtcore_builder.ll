Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/rtcore_builder?download=true
inline.NumInlined: 3237
inline.NumDeleted: 617
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 122
begin_hunk_0_@"_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsE3$_1EEvT_S8_S8_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvRKS8_SD_mb":bb.a
  invoke void @_ZN6embree5yieldEv()
          to label %bb.ap unwind label %bb.ar, !llvm.loop !186

bb.ar:                                            ; preds = %bb.aq
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66

bb.as:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.ef = load ptr, ptr %2, align 8               ; 2 uses
  store ptr %i.ef, ptr %4, align 8
  store ptr null, ptr %2, align 8
  %.not.i.i59 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i59, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.as
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63: ; preds = %bb.as, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.eg = load ptr, ptr %10, align 8              ; 2 uses
  %.not81 = icmp eq ptr %i.eg, null
  br i1 %.not81, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  store ptr %i.eg, ptr %11, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #17
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %11) #31
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  unreachable

bb.au:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %11, align 8
  %.not.i65 = icmp eq ptr %i.ei, null
  br i1 %.not.i65, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #17
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.ej = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i69 = icmp eq ptr %i.ej, null
  br i1 %.not.i69, label %_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 786696
  %i.el = load ptr, ptr %i.ek, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i.i, label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load ptr, ptr %i.en, align 8
  invoke void %i.eo(ptr noundef nonnull align 8 dereferenceable(16) %i.el)
          to label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #32
  unreachable

_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i:    ; preds = %bb.ax, %bb.aw
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.ej)
          to label %_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit unwind label %bb.az

bb.az:                                            ; preds = %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  call void @__clang_call_terminate(ptr %i.es) #32
  unreachable

_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret void

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66: ; preds = %bb.av, %bb.au, %bb.ar
  %.pn36 = phi { ptr, i32 } [ %i.ee, %bb.ar ], [ %i.eh, %bb.au ], [ %i.eh, %bb.av ]
  %i.et = load ptr, ptr %10, align 8
  %.not.i70 = icmp eq ptr %i.et, null
  br i1 %.not.i70, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #17
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.h, %bb.k, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45, %bb.z
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71 ], [ %.pn30, %bb.z ], [ %.pn34, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit ], [ %.pn32, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45 ], [ %i.at, %bb.k ], [ %i.al, %bb.h ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #17
  br label %_ZN6embree13TaskScheduler6ThreaddlEPv.exit

_ZN6embree13TaskScheduler6ThreaddlEPv.exit:       ; preds = %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47, %.body
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %.body ], [ %.pn, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  resume { ptr, i32 } %.pn36.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsE3$_1EEvT_S8_S8_RKT0_PNS0_16TaskGroupContextEEUlvE_E7executeEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.embree::vint_impl", align 16 ; 9 uses
  %2 = alloca %"struct.embree::sse2::BVHBuilderMorton::MortonCodeGenerator", align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8              ; 6 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp ugt i64 %i.e, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !50, !align !57 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !50, !align !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.d ; 2 uses
  %i.o = load <4 x float>, ptr %i.i, align 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.q = load <4 x float>, ptr %i.p, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 8 uses
  %i.v = icmp ult i64 %i.d, %i.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.r, i8 0, i64 64, i1 false)
  br i1 %i.v, label %.noexc12.lr.ph.i.i, label %"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_1clERKNS_5rangeImEE.exit.i"

.noexc12.lr.ph.i.i:                               ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %.noexc12.i.i

_ZN6embree13bitInterleaveINS_9vint_implILi4EEEEET_RKS3_S5_S5_.exit103.i.i: ; preds = %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.x = load <2 x i64>, ptr %i.r, align 16, !noalias !202 ; 2 uses
  %i.y = load <4 x i32>, ptr %i.s, align 16, !noalias !202 ; 2 uses
  %i.z = load <4 x i32>, ptr %i.t, align 16, !noalias !202 ; 2 uses
  %i.aa = bitcast <2 x i64> %i.x to <4 x i32>
  %i.ab = shl <4 x i32> %i.aa, splat (i32 16)
  %i.ac = bitcast <4 x i32> %i.ab to <2 x i64>
  %i.ad = or <2 x i64> %i.x, %i.ac
  %i.ae = and <2 x i64> %i.ad, splat (i64 216173877380776191) ; 2 uses
  %i.af = bitcast <2 x i64> %i.ae to <4 x i32>
  %i.ag = shl <4 x i32> %i.af, splat (i32 8)
  %i.ah = bitcast <4 x i32> %i.ag to <2 x i64>
  %i.ai = or disjoint <2 x i64> %i.ae, %i.ah
  %i.aj = and <2 x i64> %i.ai, splat (i64 216436729379352591) ; 2 uses
  %i.ak = bitcast <2 x i64> %i.aj to <4 x i32>
  %i.al = shl nuw nsw <4 x i32> %i.ak, splat (i32 4)
  %i.am = bitcast <4 x i32> %i.al to <2 x i64>
  %i.an = or disjoint <2 x i64> %i.aj, %i.am
  %i.ao = and <2 x i64> %i.an, splat (i64 219604095962198211) ; 2 uses
  %i.ap = bitcast <2 x i64> %i.ao to <4 x i32>
  %i.aq = shl nuw nsw <4 x i32> %i.ap, splat (i32 2)
  %i.ar = bitcast <4 x i32> %i.aq to <2 x i64>
  %i.as = or disjoint <2 x i64> %i.ao, %i.ar
  %i.at = and <2 x i64> %i.as, splat (i64 658812287886594633)
  %i.au = shl <4 x i32> %i.y, splat (i32 16)
  %i.av = or <4 x i32> %i.au, %i.y
  %i.aw = and <4 x i32> %i.av, splat (i32 50331903)
  %i.ax = mul <4 x i32> %i.aw, splat (i32 257)
  %i.ay = and <4 x i32> %i.ax, splat (i32 50393103)
  %i.az = mul nuw nsw <4 x i32> %i.ay, splat (i32 17)
  %i.ba = and <4 x i32> %i.az, splat (i32 51130563)
  %i.bb = shl <4 x i32> %i.z, splat (i32 16)
  %i.bc = or <4 x i32> %i.bb, %i.z
  %i.bd = and <4 x i32> %i.bc, splat (i32 50331903)
  %i.be = mul <4 x i32> %i.bd, splat (i32 257)
  %i.bf = and <4 x i32> %i.be, splat (i32 50393103)
  %i.bg = mul nuw nsw <4 x i32> %i.bf, splat (i32 17)
  %i.bh = and <4 x i32> %i.bg, splat (i32 51130563)
  %i.bi = mul nuw nsw <4 x i32> %i.ba, splat (i32 10)
  %.inner = and <4 x i32> %i.bi, splat (i32 306783378)
  %i.bj = mul nuw nsw <4 x i32> %i.bh, splat (i32 20)
  %.inner22 = and <4 x i32> %i.bj, splat (i32 613566756)
  %.inner23 = or disjoint <4 x i32> %.inner22, %.inner
  %i.bk = bitcast <4 x i32> %.inner23 to <2 x i64>
  %i.bl = or disjoint <2 x i64> %i.at, %i.bk
  store <2 x i64> %i.bl, ptr %1, align 16
  %i.bm = sub i64 %i.dm, %i.dl
  %i.bn = getelementptr [8 x i8], ptr %i.n, i64 %i.bm ; 9 uses
  %min.iters.check = icmp ult i64 %i.ed, 18
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_ZN6embree13bitInterleaveINS_9vint_implILi4EEEEET_RKS3_S5_S5_.exit103.i.i
  %mul.result = shl i64 %i.dl, 3
  %mul.overflow = icmp ugt i64 %i.dl, 2305843009213693951
  %i.bo = getelementptr i8, ptr %i.bn, i64 %mul.result
  %i.bp = icmp ult ptr %i.bo, %i.bn
  %i.bq = or i1 %i.bp, %mul.overflow
  br i1 %i.bq, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.ed, 4611686018427387900     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %wide.load = load <2 x i32>, ptr %i.br, align 16
  %wide.load18 = load <2 x i32>, ptr %i.bs, align 8
  %i.bt = getelementptr [8 x i8], ptr %i.bn, i64 %index
  %i.bu = getelementptr [8 x i8], ptr %i.bn, i64 %index
  %i.bv = getelementptr i8, ptr %i.bu, i64 16
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %wide.load19 = load <2 x i32>, ptr %i.bw, align 16
  %wide.load20 = load <2 x i32>, ptr %i.bx, align 8
  %interleaved.vec = shufflevector <2 x i32> %wide.load19, <2 x i32> %wide.load, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.bt, align 4
  %interleaved.vec21 = shufflevector <2 x i32> %wide.load20, <2 x i32> %wide.load18, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec21, ptr %i.bv, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !189

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ed, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %_ZN6embree13bitInterleaveINS_9vint_implILi4EEEEET_RKS3_S5_S5_.exit103.i.i, %middle.block
  %.0.i252.i.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %_ZN6embree13bitInterleaveINS_9vint_implILi4EEEEET_RKS3_S5_S5_.exit103.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.bz = add i64 %i.dl, 1
  %i.ca = sub i64 %i.dl, %.0.i252.i.i.ph
  %xtraiter = and i64 %i.bz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.0.i252.i.i.prol = phi i64 [ %i.ch, %scalar.ph.prol ], [ %.0.i252.i.i.ph, %scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.0.i252.i.i.prol
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = getelementptr [8 x i8], ptr %i.bn, i64 %.0.i252.i.i.prol ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store i32 %i.cc, ptr %i.ce, align 4
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0.i252.i.i.prol
  %i.cg = load i32, ptr %i.cf, align 4
  store i32 %i.cg, ptr %i.cd, align 8
  %i.ch = add nuw nsw i64 %.0.i252.i.i.prol, 1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !190

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0.i252.i.i.unr = phi i64 [ %.0.i252.i.i.ph, %scalar.ph.preheader ], [ %i.ch, %scalar.ph.prol ]
  %i.ci = icmp ult i64 %i.ca, 3
  br i1 %i.ci, label %.loopexit, label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_1clERKNS_5rangeImEE.exit.i"

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0.i252.i.i = phi i64 [ %i.dk, %scalar.ph ], [ %.0.i252.i.i.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.0.i252.i.i
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = getelementptr [8 x i8], ptr %i.bn, i64 %.0.i252.i.i ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store i32 %i.ck, ptr %i.cm, align 4
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0.i252.i.i
  %i.co = load i32, ptr %i.cn, align 4
  store i32 %i.co, ptr %i.cl, align 8
  %i.cp = add nuw nsw i64 %.0.i252.i.i, 1         ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = getelementptr [8 x i8], ptr %i.bn, i64 %i.cp ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store i32 %i.cr, ptr %i.ct, align 4
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cp
  %i.cv = load i32, ptr %i.cu, align 4
  store i32 %i.cv, ptr %i.cs, align 8
  %i.cw = add nuw nsw i64 %.0.i252.i.i, 2         ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = getelementptr [8 x i8], ptr %i.bn, i64 %i.cw ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  store i32 %i.cy, ptr %i.da, align 4
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cw
  %i.dc = load i32, ptr %i.db, align 4
  store i32 %i.dc, ptr %i.cz, align 8
  %i.dd = add nuw nsw i64 %.0.i252.i.i, 3         ; 4 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4
  %i.dg = getelementptr [8 x i8], ptr %i.bn, i64 %i.dd ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  store i32 %i.df, ptr %i.dh, align 4
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dd
  %i.dj = load i32, ptr %i.di, align 4
  store i32 %i.dj, ptr %i.dg, align 8
  %i.dk = add nuw nsw i64 %.0.i252.i.i, 4
  %exitcond255.not.i.i.3 = icmp eq i64 %i.dd, %i.dl
  br i1 %exitcond255.not.i.i.3, label %.loopexit, label %scalar.ph, !llvm.loop !191

.noexc12.i.i:                                     ; preds = %.noexc12.i.i.backedge, %.noexc12.lr.ph.i.i
  %.0250.i.i = phi i64 [ %i.d, %.noexc12.lr.ph.i.i ], [ %.0250.i.i.be, %.noexc12.i.i.backedge ] ; 4 uses
  %i.dl = phi i64 [ 0, %.noexc12.lr.ph.i.i ], [ %.be, %.noexc12.i.i.backedge ] ; 11 uses
  %i.dm = phi i64 [ 0, %.noexc12.lr.ph.i.i ], [ %i.ee, %.noexc12.i.i.backedge ] ; 2 uses
  %i.dn = load ptr, ptr %i.w, align 8, !nonnull !50, !align !54
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds nuw [32 x i8], ptr %i.do, i64 %.0250.i.i ; 2 uses
  %i.dq = load <4 x float>, ptr %i.dp, align 16, !noalias !203
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.ds = load <4 x float>, ptr %i.dr, align 16, !noalias !204
  %i.dt = trunc i64 %.0250.i.i to i32
  %i.du = fadd <4 x float> %i.dq, %i.ds
  %i.dv = fsub <4 x float> %i.du, %i.o
  %i.dw = fmul <4 x float> %i.q, %i.dv
  %i.dx = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.dw) ; 3 uses
  %i.dy = extractelement <4 x i32> %i.dx, i64 0
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.dl
  store i32 %i.dy, ptr %i.dz, align 4
  %.sroa.07.4.vec.extract.i.i = extractelement <4 x i32> %i.dx, i64 1
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.dl
  store i32 %.sroa.07.4.vec.extract.i.i, ptr %i.ea, align 4
  %.sroa.07.8.vec.extract.i.i = extractelement <4 x i32> %i.dx, i64 2
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.dl
  store i32 %.sroa.07.8.vec.extract.i.i, ptr %i.eb, align 4
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.dl
  store i32 %i.dt, ptr %i.ec, align 4
  %i.ed = add nsw i64 %i.dl, 1                    ; 5 uses
  %i.ee = add i64 %i.dm, 1                        ; 2 uses
  %i.ef = icmp eq i64 %i.ed, 4
  br i1 %i.ef, label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit.i.thread.i, label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit.i.i

_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit.i.i: ; preds = %.noexc12.i.i
  %i.eg = add nuw i64 %.0250.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.eg, %i.b
  br i1 %exitcond.not.i.i, label %_ZN6embree13bitInterleaveINS_9vint_implILi4EEEEET_RKS3_S5_S5_.exit103.i.i, label %.noexc12.i.i.backedge

_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit.i.thread.i: ; preds = %.noexc12.i.i
  %i.eh = load <2 x i64>, ptr %i.r, align 16, !noalias !205 ; 2 uses
  %i.ei = load <4 x i32>, ptr %i.s, align 16, !noalias !205 ; 2 uses
  %i.ej = load <4 x i32>, ptr %i.t, align 16, !noalias !205 ; 2 uses
  %i.ek = bitcast <2 x i64> %i.eh to <4 x i32>
  %i.el = shl <4 x i32> %i.ek, splat (i32 16)
  %i.em = bitcast <4 x i32> %i.el to <2 x i64>
  %i.en = or <2 x i64> %i.eh, %i.em
  %i.eo = and <2 x i64> %i.en, splat (i64 216173877380776191) ; 2 uses
  %i.ep = bitcast <2 x i64> %i.eo to <4 x i32>
  %i.eq = shl <4 x i32> %i.ep, splat (i32 8)
  %i.er = bitcast <4 x i32> %i.eq to <2 x i64>
  %i.es = or disjoint <2 x i64> %i.eo, %i.er
  %i.et = and <2 x i64> %i.es, splat (i64 216436729379352591) ; 2 uses
  %i.eu = bitcast <2 x i64> %i.et to <4 x i32>
  %i.ev = shl nuw nsw <4 x i32> %i.eu, splat (i32 4)
  %i.ew = bitcast <4 x i32> %i.ev to <2 x i64>
  %i.ex = or disjoint <2 x i64> %i.et, %i.ew
  %i.ey = and <2 x i64> %i.ex, splat (i64 219604095962198211) ; 2 uses
  %i.ez = bitcast <2 x i64> %i.ey to <4 x i32>
  %i.fa = shl nuw nsw <4 x i32> %i.ez, splat (i32 2)
  %i.fb = bitcast <4 x i32> %i.fa to <2 x i64>
  %i.fc = or disjoint <2 x i64> %i.ey, %i.fb
  %i.fd = and <2 x i64> %i.fc, splat (i64 658812287886594633)
  %i.fe = shl <4 x i32> %i.ei, splat (i32 16)
  %i.ff = or <4 x i32> %i.fe, %i.ei
  %i.fg = and <4 x i32> %i.ff, splat (i32 50331903)
  %i.fh = mul <4 x i32> %i.fg, splat (i32 257)
  %i.fi = and <4 x i32> %i.fh, splat (i32 50393103)
  %i.fj = mul nuw nsw <4 x i32> %i.fi, splat (i32 17)
  %i.fk = and <4 x i32> %i.fj, splat (i32 51130563)
  %i.fl = shl <4 x i32> %i.ej, splat (i32 16)
  %i.fm = or <4 x i32> %i.fl, %i.ej
  %i.fn = and <4 x i32> %i.fm, splat (i32 50331903)
  %i.fo = mul <4 x i32> %i.fn, splat (i32 257)
  %i.fp = and <4 x i32> %i.fo, splat (i32 50393103)
  %i.fq = mul nuw nsw <4 x i32> %i.fp, splat (i32 17)
  %i.fr = and <4 x i32> %i.fq, splat (i32 51130563)
  %i.fs = mul nuw nsw <4 x i32> %i.fk, splat (i32 10)
  %.inner24 = and <4 x i32> %i.fs, splat (i32 306783378)
  %i.ft = mul nuw nsw <4 x i32> %i.fr, splat (i32 20)
  %.inner25 = and <4 x i32> %i.ft, splat (i32 613566756)
  %.inner26 = or disjoint <4 x i32> %.inner25, %.inner24
  %i.fu = bitcast <4 x i32> %.inner26 to <2 x i64>
  %i.fv = or disjoint <2 x i64> %i.fd, %i.fu
  %i.fw = getelementptr [8 x i8], ptr %i.n, i64 %i.ee ; 2 uses
  %i.fx = getelementptr i8, ptr %i.fw, i64 -32
  %i.fy = bitcast <2 x i64> %i.fv to <4 x float>  ; 2 uses
  %i.fz = load <4 x float>, ptr %i.u, align 16, !noalias !206 ; 2 uses
  %i.ga = shufflevector <4 x float> %i.fy, <4 x float> %i.fz, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.ga, ptr %i.fx, align 1
  %i.gb = getelementptr i8, ptr %i.fw, i64 -16
  %i.gc = shufflevector <4 x float> %i.fy, <4 x float> %i.fz, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.gc, ptr %i.gb, align 1
  %i.gd = add nuw i64 %.0250.i.i, 1               ; 2 uses
  %exitcond.not.i3.i = icmp eq i64 %i.gd, %i.b
  br i1 %exitcond.not.i3.i, label %"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_1clERKNS_5rangeImEE.exit.i", label %.noexc12.i.i.backedge

.noexc12.i.i.backedge:                            ; preds = %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit.i.thread.i, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit.i.i
  %.0250.i.i.be = phi i64 [ %i.eg, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit.i.i ], [ %i.gd, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit.i.thread.i ]
  %.be = phi i64 [ %i.ed, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit.i.i ], [ 0, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit.i.thread.i ]
  br label %.noexc12.i.i, !llvm.loop !200

"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_1clERKNS_5rangeImEE.exit.i": ; preds = %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit.i.thread.i, %.loopexit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %"_ZZN6embree13TaskScheduler5spawnImZNS_4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsE3$_1EEvT_S7_S7_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv.exit"

bb.c:                                             ; preds = %bb.a
  %i.ge = add i64 %i.d, %i.b
  %i.gf = lshr i64 %i.ge, 1                       ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8
  tail call fastcc void @"_ZN6embree13TaskScheduler5spawnImZNS_4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsE3$_1EEvT_S7_S7_RKT0_PNS0_16TaskGroupContextE"(i64 noundef %i.d, i64 noundef %i.gf, i64 noundef %i.g, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.gg, ptr noundef %i.gi), !inline_history !201
  %i.gj = load i64, ptr %i.a, align 8
  %i.gk = load i64, ptr %i.f, align 8
  %i.gl = load ptr, ptr %i.gh, align 8
  tail call fastcc void @"_ZN6embree13TaskScheduler5spawnImZNS_4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsE3$_1EEvT_S7_S7_RKT0_PNS0_16TaskGroupContextE"(i64 noundef %i.gf, i64 noundef %i.gj, i64 noundef %i.gk, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.gg, ptr noundef %i.gl), !inline_history !201
  tail call void @_ZN6embree13TaskScheduler4waitEv(), !inline_history !201
  br label %"_ZZN6embree13TaskScheduler5spawnImZNS_4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsE3$_1EEvT_S7_S7_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv.exit"

"_ZZN6embree13TaskScheduler5spawnImZNS_4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsE3$_1EEvT_S7_S7_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv.exit": ; preds = %"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_1clERKNS_5rangeImEE.exit.i", %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float>) #13

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN6embree4sse216BVHBuilderMorton8BuilderTISt4pairIPvNS_4BBoxINS_6Vec3faEEEENS_13FastAllocator15CachedAllocatorEZNS0_17rtcBuildBVHMortonEPK17RTCBuildArgumentsE3$_2ZNS0_17rtcBuildBVHMortonESD_E3$_3ZNS0_17rtcBuildBVHMortonESD_E3$_4ZNS0_17rtcBuildBVHMortonESD_E3$_5ZNS0_17rtcBuildBVHMortonESD_E3$_6ZNS0_17rtcBuildBVHMortonESD_E3$_7E7recurseEmRKNS_5rangeIjEESA_b"(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 16 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, ptr noundef byval(%"struct.embree::FastAllocator::CachedAllocator") align 8 %4, i1 noundef zeroext %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [8 x ptr], align 16               ; 6 uses
  %i.b = alloca [8 x ptr], align 16               ; 6 uses
  %6 = alloca %"class.embree::Lock", align 8      ; 6 uses
  %7 = alloca %"class.std::unique_ptr.98", align 8 ; 5 uses
  %8 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %9 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %10 = alloca [8 x %"struct.embree::range.83"], align 16 ; 11 uses
  %11 = alloca [8 x %"struct.std::pair"], align 16 ; 15 uses
  %12 = alloca %class.anon.92, align 8            ; 7 uses
  %13 = alloca %"struct.std::pair", align 16      ; 6 uses
  store i64 %2, ptr %i.c, align 8
  %i.d = load ptr, ptr %4, align 8
  %.not116 = icmp eq ptr %i.d, null
  br i1 %.not116, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !50, !align !54
  %.val = load ptr, ptr %i.f, align 8
  %.val.val = load ptr, ptr %.val, align 8        ; 2 uses
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN6embree13FastAllocator23thread_local_allocator2E) ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !noalias !233 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_2clEv.exit"

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 192, i64 noundef 64), !noalias !233 ; 13 uses
  invoke void @_ZN6embree8MutexSysC1Ev(ptr noundef nonnull align 64 dereferenceable(192) %i.j)
          to label %bb.d unwind label %bb.j, !noalias !234

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr null, ptr %i.k, align 8, !noalias !233
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store ptr %i.j, ptr %i.l, align 64, !noalias !233
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, i8 0, i64 48, i1 false), !noalias !234
  store ptr %i.j, ptr %i.n, align 64, !noalias !233
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, i8 0, i64 48, i1 false), !noalias !234
  store ptr %i.j, ptr %i.g, align 8, !noalias !233
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17, !noalias !233
  store ptr @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE, ptr %6, align 8, !noalias !233
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 1, ptr %i.p, align 8, !noalias !233
  tail call void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE), !noalias !233
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17, !noalias !233
  store ptr %i.j, ptr %7, align 8, !alias.scope !235, !noalias !233
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, i64 8), align 8, !noalias !233 ; 5 uses
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, i64 16), align 8, !noalias !233
  %.not.i.i.i = icmp eq ptr %i.q, %i.r
  %i.s = ptrtoint ptr %i.j to i64                 ; 2 uses
  br i1 %.not.i.i.i, label %bb.e, label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread.i

_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread.i: ; preds = %bb.d
  store i64 %i.s, ptr %i.q, align 8, !noalias !233
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, i64 8), align 8, !noalias !233
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.u, ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, i64 8), align 8, !noalias !233
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, align 8, !noalias !233 ; 10 uses
  %i.w = ptrtoint ptr %i.q to i64                 ; 3 uses
  %i.x = ptrtoint ptr %i.v to i64                 ; 3 uses
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #31
          to label %.noexc.i unwind label %bb.l, !noalias !234

.noexc.i:                                         ; preds = %bb.f
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.e
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %i.ae = select i1 %i.ac, i64 1152921504606846975, i64 %i.ad ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i), !noalias !236
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #34
          to label %.noexc1.i unwind label %bb.l, !noalias !234 ; 10 uses

.noexc1.i:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.y
  store i64 %i.s, ptr %i.ah, align 8, !noalias !233
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, %i.q
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.noexc1.i
  %i.ai = add i64 %i.w, -8
  %i.aj = sub i64 %i.ai, %i.x                     ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6embreeL11radixsort32INS_4sse216BVHBuilderMorton9BuildPrimEEEvPT_mj:.preheader88
._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.06292.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ad, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod132 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod132)
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.06292.epil.init
  %i.f = load i32, ptr %i.e, align 8
  %i.g = lshr i32 %i.f, %2
  %i.h = and i32 %i.g, 255
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i32 0, ptr %i.b, align 64
  br label %bb.a

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.06292 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ad, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.06292
  %i.n = load i32, ptr %i.m, align 8
  %i.o = lshr i32 %i.n, %2
  %i.p = and i32 %i.o, 255
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 4
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.06292
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 8
  %i.x = lshr i32 %i.w, %2
  %i.y = and i32 %i.x, 255
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 4
  %i.ad = add nuw nsw i64 %.06292, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !373

bb.a:                                             ; preds = %bb.a, %._crit_edge
  %i.ae = phi i32 [ 0, %._crit_edge ], [ %i.bg, %bb.a ]
  %.06193 = phi i64 [ 1, %._crit_edge ], [ %i.bi, %bb.a ] ; 7 uses
  %i.af = getelementptr [4 x i8], ptr %i.a, i64 %.06193
  %i.ag = getelementptr i8, ptr %i.af, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = add i32 %i.ah, %i.ae                    ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.06193
  store i32 %i.ai, ptr %i.aj, align 4
  %i.ak = add nuw nsw i64 %.06193, 1              ; 2 uses
  %i.al = getelementptr [4 x i8], ptr %i.a, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 -4
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = add i32 %i.an, %i.ai                    ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ak
  store i32 %i.ao, ptr %i.ap, align 4
  %i.aq = add nuw nsw i64 %.06193, 2              ; 2 uses
  %i.ar = getelementptr [4 x i8], ptr %i.a, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 -4
  %i.at = load i32, ptr %i.as, align 4
  %i.au = add i32 %i.at, %i.ao                    ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.aq
  store i32 %i.au, ptr %i.av, align 4
  %i.aw = add nuw nsw i64 %.06193, 3              ; 2 uses
  %i.ax = getelementptr [4 x i8], ptr %i.a, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 -4
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = add i32 %i.az, %i.au                    ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.aw
  store i32 %i.ba, ptr %i.bb, align 4
  %i.bc = add nuw nsw i64 %.06193, 4              ; 2 uses
  %i.bd = getelementptr [4 x i8], ptr %i.a, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 -4
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = add i32 %i.bf, %i.ba                    ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bc
  store i32 %i.bg, ptr %i.bh, align 4
  %i.bi = add nuw nsw i64 %.06193, 5              ; 2 uses
  %exitcond117.not.4 = icmp eq i64 %i.bi, 256
  br i1 %exitcond117.not.4, label %.preheader87.preheader, label %bb.a, !llvm.loop !374

.preheader87.preheader:                           ; preds = %bb.a
  %scevgep = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(1020) %i.c, ptr noundef nonnull align 4 dereferenceable(1020) %scevgep, i64 1020, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 1020
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 1020
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = add i32 %i.bm, %i.bk
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 1020
  store i32 %i.bn, ptr %i.bo, align 4
  br label %.preheader86

.preheader86:                                     ; preds = %.preheader87.preheader, %._crit_edge101
  %.059102 = phi i64 [ 0, %.preheader87.preheader ], [ %i.ct, %._crit_edge101 ] ; 5 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.059102 ; 3 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.059102
  %i.br = load i32, ptr %i.bq, align 4            ; 2 uses
  %i.bs = load i32, ptr %i.bp, align 4            ; 2 uses
  %i.bt = icmp ult i32 %i.bs, %i.br
  br i1 %i.bt, label %.lr.ph100, label %._crit_edge101

bb.b:                                             ; preds = %._crit_edge101
  %i.bu = icmp eq i32 %2, 0
  br i1 %i.bu, label %.loopexit85, label %.preheader84

.preheader84:                                     ; preds = %bb.b
  %i.bv = add i32 %2, -8
  br label %bb.c

.lr.ph100:                                        ; preds = %.preheader86, %._crit_edge99
  %i.bw = phi i32 [ %i.cq, %._crit_edge99 ], [ %i.bs, %.preheader86 ] ; 2 uses
  %i.bx = zext i32 %i.bw to i64                   ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8            ; 3 uses
  %.sroa.0.095 = trunc i64 %i.bz to i32
  %i.ca = lshr i32 %.sroa.0.095, %2
  %i.cb = and i32 %i.ca, 255
  %i.cc = zext nneg i32 %i.cb to i64              ; 2 uses
  %i.cd = icmp eq i64 %.059102, %i.cc
  br i1 %i.cd, label %._crit_edge99, label %.lr.ph98

.lr.ph98:                                         ; preds = %.lr.ph100, %.lr.ph98
  %i.ce = phi i64 [ %i.cn, %.lr.ph98 ], [ %i.cc, %.lr.ph100 ]
  %.sroa.7.0.in.in96 = phi i64 [ %i.ck, %.lr.ph98 ], [ %i.bz, %.lr.ph100 ]
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ce ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4            ; 2 uses
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr %i.cf, align 4
  %i.ci = zext i32 %i.cg to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ci ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8            ; 3 uses
  store i64 %.sroa.7.0.in.in96, ptr %i.cj, align 8
  %.sroa.0.0 = trunc i64 %i.ck to i32
  %i.cl = lshr i32 %.sroa.0.0, %2
  %i.cm = and i32 %i.cl, 255
  %i.cn = zext nneg i32 %i.cm to i64              ; 2 uses
  %i.co = icmp eq i64 %.059102, %i.cn
  br i1 %i.co, label %._crit_edge99.loopexit, label %.lr.ph98

._crit_edge99.loopexit:                           ; preds = %.lr.ph98
  %.pre = load i32, ptr %i.bp, align 4            ; 2 uses
  %.pre121 = zext i32 %.pre to i64
  br label %._crit_edge99

._crit_edge99:                                    ; preds = %._crit_edge99.loopexit, %.lr.ph100
  %.pre-phi = phi i64 [ %.pre121, %._crit_edge99.loopexit ], [ %i.bx, %.lr.ph100 ]
  %i.cp = phi i32 [ %.pre, %._crit_edge99.loopexit ], [ %i.bw, %.lr.ph100 ]
  %.sroa.7.0.in.in.lcssa = phi i64 [ %i.ck, %._crit_edge99.loopexit ], [ %i.bz, %.lr.ph100 ]
  %i.cq = add i32 %i.cp, 1                        ; 3 uses
  store i32 %i.cq, ptr %i.bp, align 4
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.pre-phi
  store i64 %.sroa.7.0.in.in.lcssa, ptr %i.cr, align 8
  %i.cs = icmp ult i32 %i.cq, %i.br
  br i1 %i.cs, label %.lr.ph100, label %._crit_edge101, !llvm.loop !375

._crit_edge101:                                   ; preds = %._crit_edge99, %.preheader86
  %i.ct = add nuw nsw i64 %.059102, 1             ; 2 uses
  %exitcond118.not = icmp eq i64 %i.ct, 256
  br i1 %exitcond118.not, label %bb.b, label %.preheader86, !llvm.loop !376

bb.c:                                             ; preds = %.preheader84, %.loopexit
  %.056114 = phi i64 [ 0, %.preheader84 ], [ %i.dk, %.loopexit ] ; 2 uses
  %.057113 = phi i64 [ 0, %.preheader84 ], [ %.1, %.loopexit ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.056114
  %i.cv = load i32, ptr %i.cu, align 4            ; 4 uses
  %.not = icmp eq i32 %i.cv, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.cw = zext i32 %i.cv to i64                   ; 3 uses
  %i.cx = add i64 %.057113, %i.cw                 ; 3 uses
  %i.cy = icmp ult i32 %i.cv, 16
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.057113 ; 4 uses
  br i1 %i.cy, label %bb.d, label %bb.f, !prof !53

bb.d:                                             ; preds = %.preheader
  %.not116 = icmp eq i32 %i.cv, 1
  br i1 %.not116, label %.loopexit, label %.lr.ph106.preheader

.lr.ph106.preheader:                              ; preds = %bb.d, %.critedge.i
  %.015.i110 = phi i64 [ %i.dj, %.critedge.i ], [ 1, %bb.d ] ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.015.i110
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !382 ; 2 uses
  %.sroa.077.0.extract.trunc = trunc i64 %i.db to i32
  br label %.lr.ph106

.lr.ph106:                                        ; preds = %.lr.ph106.preheader, %bb.e
  %.0.i104 = phi i64 [ %i.dh, %bb.e ], [ %.015.i110, %.lr.ph106.preheader ] ; 3 uses
  %i.dc = getelementptr [8 x i8], ptr %i.cz, i64 %.0.i104 ; 2 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 -8     ; 2 uses
  %i.de = load i32, ptr %i.dd, align 8, !alias.scope !382
  %i.df = icmp ugt i32 %i.de, %.sroa.077.0.extract.trunc
  br i1 %i.df, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.lr.ph106
  %i.dg = load i64, ptr %i.dd, align 8, !alias.scope !382
  store i64 %i.dg, ptr %i.dc, align 8, !alias.scope !382
  %i.dh = add nsw i64 %.0.i104, -1                ; 2 uses
  %.not.i = icmp eq i64 %i.dh, 0
  br i1 %.not.i, label %.critedge.i, label %.lr.ph106, !llvm.loop !379

.critedge.i:                                      ; preds = %bb.e, %.lr.ph106
  %.0.i.lcssa.ph = phi i64 [ 0, %bb.e ], [ %.0.i104, %.lr.ph106 ]
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.0.i.lcssa.ph
  store i64 %i.db, ptr %i.di, align 8, !alias.scope !382
  %i.dj = add nuw nsw i64 %.015.i110, 1           ; 2 uses
  %exitcond119.not = icmp eq i64 %i.dj, %i.cw
  br i1 %exitcond119.not, label %.loopexit, label %.lr.ph106.preheader, !llvm.loop !380

bb.f:                                             ; preds = %.preheader
  tail call fastcc void @_ZN6embreeL11radixsort32INS_4sse216BVHBuilderMorton9BuildPrimEEEvPT_mj(ptr noundef %i.cz, i64 noundef %i.cw, i32 noundef %i.bv)
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge.i, %bb.f, %bb.d, %bb.c
  %.1 = phi i64 [ %.057113, %bb.c ], [ %i.cx, %bb.f ], [ %i.cx, %bb.d ], [ %i.cx, %.critedge.i ]
  %i.dk = add nuw nsw i64 %.056114, 1             ; 2 uses
  %exitcond120.not = icmp eq i64 %i.dk, 256
  br i1 %exitcond120.not, label %.loopexit85, label %bb.c, !llvm.loop !381

.loopexit85:                                      ; preds = %.loopexit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIPN6embree4sse216BVHBuilderMorton9BuildPrimElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph34

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEET_S8_S8_T0_.exit
  %i.g = icmp eq i64 %i.au, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph34, !llvm.loop !383

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.018.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_RT0_(ptr noundef %0, ptr noundef %.018.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_RT0_.exit.i.i ], [ %.018.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -8 ; 4 uses
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %i.h, align 8 ; 2 uses
  %i.i = load i64, ptr %0, align 8
  store i64 %i.i, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.j, %i.a                       ; 3 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = add nsw i64 %i.l, -1
  %i.n = lshr i64 %i.m, 1
  %i.o = icmp sgt i64 %i.l, 2
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.p = shl i64 %.029.i.i.i.i, 1                 ; 3 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr [8 x i8], ptr %0, i64 %i.p
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.r, align 8
  %i.v = load i32, ptr %i.t, align 8
  %i.w = icmp ult i32 %i.u, %i.v
  %i.x = or disjoint i64 %i.p, 1
  %spec.select.i.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.q ; 4 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.i.i.i
  %i.aa = load i64, ptr %i.y, align 8
  store i64 %i.aa, ptr %i.z, align 8
  %i.ab = icmp slt i64 %spec.select.i.i.i.i, %i.n
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !11

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ac = and i64 %i.k, 8
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = add nsw i64 %i.l, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.af
  br i1 %i.ag, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ai
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  %i.al = load i64, ptr %i.aj, align 8
  store i64 %i.al, ptr %i.ak, align 8
  br label %.lr.ph.i.i.preheader.i.i.i

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_RT0_.exit.i.i, label %.lr.ph.i.i.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %bb.d, %.thread.i.i.i
  %.1.i13.i.i.i = phi i64 [ %i.ai, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.d ]
  %.sroa.0.0.extract.trunc.i.i14.i.i.i = trunc i64 %.sroa.01.0.copyload.i.i.i to i32
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.i.i.preheader.i.i.i
  %.01317.i.i.i.i.i = phi i64 [ %.018.i.i78.i.i.i, %bb.e ], [ %.1.i13.i.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i78.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i78.i.i.i ; 2 uses
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = icmp ult i32 %i.an, %.sroa.0.0.extract.trunc.i.i14.i.i.i
  br i1 %i.ao, label %bb.e, label %_ZSt10__pop_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i.i.i.i.i
  %i.aq = load i64, ptr %i.am, align 8
  store i64 %i.aq, ptr %i.ap, align 8
  %.not9.i.i.i = icmp eq i64 %.018.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %_ZSt10__pop_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !12

_ZSt10__pop_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store i64 %.sroa.01.0.copyload.i.i.i, ptr %i.ar, align 8
  %i.as = icmp sgt i64 %i.k, 8
  br i1 %i.as, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_T0_.exit, !llvm.loop !384

.lr.ph34:                                         ; preds = %.lr.ph, %bb.b
  %.0121733 = phi i64 [ %i.au, %bb.b ], [ %2, %.lr.ph ]
  %.01832 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.at = phi i64 [ %i.bw, %bb.b ], [ %i.c, %.lr.ph ]
  %i.au = add nsw i64 %.0121733, -1               ; 3 uses
  %i.av = lshr i64 %i.at, 4
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.av ; 5 uses
  %i.ax = getelementptr inbounds i8, ptr %.01832, i64 -8 ; 5 uses
  %i.ay = load i32, ptr %i.e, align 8             ; 3 uses
  %i.az = load i32, ptr %i.aw, align 8            ; 3 uses
  %i.ba = icmp ult i32 %i.ay, %i.az
  %i.bb = load i32, ptr %i.ax, align 8            ; 4 uses
  br i1 %i.ba, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph34
  %i.bc = icmp ult i32 %i.az, %i.bb
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %0, align 8
  %i.bd = load i64, ptr %i.aw, align 8
  store i64 %i.bd, ptr %0, align 8
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %i.aw, align 8
  br label %_ZSt22__move_median_to_firstIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_S8_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.be = icmp ult i32 %i.ay, %i.bb
  %.sroa.0.0.copyload.i.i22.i.i = load i64, ptr %0, align 8 ; 2 uses
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bf = load i64, ptr %i.ax, align 8
  store i64 %i.bf, ptr %0, align 8
  store i64 %.sroa.0.0.copyload.i.i22.i.i, ptr %i.ax, align 8
  br label %_ZSt22__move_median_to_firstIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_S8_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.bg = load i64, ptr %i.e, align 8
  store i64 %i.bg, ptr %0, align 8
  store i64 %.sroa.0.0.copyload.i.i22.i.i, ptr %i.e, align 8
  br label %_ZSt22__move_median_to_firstIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_S8_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph34
  %i.bh = icmp ult i32 %i.ay, %i.bb
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bi = load <2 x i64>, ptr %0, align 8
  %i.bj = shufflevector <2 x i64> %i.bi, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.bj, ptr %0, align 8
  br label %_ZSt22__move_median_to_firstIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_S8_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bk = icmp ult i32 %i.az, %i.bb
  %.sroa.0.0.copyload.i.i25.i.i = load i64, ptr %0, align 8 ; 2 uses
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bl = load i64, ptr %i.ax, align 8
  store i64 %i.bl, ptr %0, align 8
  store i64 %.sroa.0.0.copyload.i.i25.i.i, ptr %i.ax, align 8
  br label %_ZSt22__move_median_to_firstIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_S8_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.bm = load i64, ptr %i.aw, align 8
end_hunk_1
