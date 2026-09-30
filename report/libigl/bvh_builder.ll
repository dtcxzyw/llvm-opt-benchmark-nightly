Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_builder?download=true
inline.NumInlined: 1431
inline.NumDeleted: 333
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImNS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEEZNS_22bin_serial_or_parallelILb1ESA_NS4_10BinMappingILm32EEES6_EEvRT0_PKT2_mmmRKT1_EUlRKNS_5rangeImEEE_ZNSB_ILb1ESA_SD_S6_EEvSF_SI_mmmSL_EUlRKSA_SS_E_EESE_T_SU_SU_SU_RKSE_SL_RSH_EUlmE_EEvSU_SW_EUlSP_E_EEvSU_SU_SU_SW_PNS0_16TaskGroupContextEENKUlvE_clEv:bb.a
  %i.cf = load <2 x i64>, ptr %i.ce, align 32
  store <2 x i64> %i.cf, ptr %i.cd, align 16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.af, i64 3248
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 3248
  %i.ci = load <2 x i64>, ptr %i.ch, align 16
  store <2 x i64> %i.ci, ptr %i.cg, align 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.af, i64 3264
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 3264
  %i.cl = load <2 x i64>, ptr %i.ck, align 64
  store <2 x i64> %i.cl, ptr %i.cj, align 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.af, i64 3280
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 3280
  %i.co = load <2 x i64>, ptr %i.cn, align 16
  store <2 x i64> %i.co, ptr %i.cm, align 16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.af, i64 3296
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 3296
  %i.cr = load <2 x i64>, ptr %i.cq, align 32
  store <2 x i64> %i.cr, ptr %i.cp, align 16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.af, i64 3312
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 3312
  %i.cu = load <2 x i64>, ptr %i.ct, align 16
  store <2 x i64> %i.cu, ptr %i.cs, align 16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.af, i64 3328
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 3328
  %i.cx = load <2 x i64>, ptr %i.cw, align 64
  store <2 x i64> %i.cx, ptr %i.cv, align 16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.af, i64 3344
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 3344
  %i.da = load <2 x i64>, ptr %i.cz, align 16
  store <2 x i64> %i.da, ptr %i.cy, align 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.af, i64 3360
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 3360
  %i.dd = load <2 x i64>, ptr %i.dc, align 32
  store <2 x i64> %i.dd, ptr %i.db, align 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.af, i64 3376
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 3376
  %i.dg = load <2 x i64>, ptr %i.df, align 16
  store <2 x i64> %i.dg, ptr %i.de, align 16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.af, i64 3392
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 3392
  %i.dj = load <2 x i64>, ptr %i.di, align 64
  store <2 x i64> %i.dj, ptr %i.dh, align 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.af, i64 3408
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 3408
  %i.dm = load <2 x i64>, ptr %i.dl, align 16
  store <2 x i64> %i.dm, ptr %i.dk, align 16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.af, i64 3424
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 3424
  %i.dp = load <2 x i64>, ptr %i.do, align 32
  store <2 x i64> %i.dp, ptr %i.dn, align 16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.af, i64 3440
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 3440
  %i.ds = load <2 x i64>, ptr %i.dr, align 16
  store <2 x i64> %i.ds, ptr %i.dq, align 16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.af, i64 3456
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 3456
  %i.dv = load <2 x i64>, ptr %i.du, align 64
  store <2 x i64> %i.dv, ptr %i.dt, align 16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.af, i64 3472
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 3472
  %i.dy = load <2 x i64>, ptr %i.dx, align 16
  store <2 x i64> %i.dy, ptr %i.dw, align 16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.af, i64 3488
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 3488
  %i.eb = load <2 x i64>, ptr %i.ea, align 32
  store <2 x i64> %i.eb, ptr %i.dz, align 16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.af, i64 3504
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 3504
  %i.ee = load <2 x i64>, ptr %i.ed, align 16
  store <2 x i64> %i.ee, ptr %i.ec, align 16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.af, i64 3520
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 3520
  %i.eh = load <2 x i64>, ptr %i.eg, align 64
  store <2 x i64> %i.eh, ptr %i.ef, align 16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.af, i64 3536
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 3536
  %i.ek = load <2 x i64>, ptr %i.ej, align 16
  store <2 x i64> %i.ek, ptr %i.ei, align 16
  %i.el = getelementptr inbounds nuw i8, ptr %i.af, i64 3552
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 3552
  %i.en = load <2 x i64>, ptr %i.em, align 32
  store <2 x i64> %i.en, ptr %i.el, align 16
  %i.eo = getelementptr inbounds nuw i8, ptr %i.af, i64 3568
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 3568
  %i.eq = load <2 x i64>, ptr %i.ep, align 16
  store <2 x i64> %i.eq, ptr %i.eo, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.er = add i64 %i.c, %i.a
  %i.es = lshr i64 %i.er, 1                       ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImNS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEEZNS_22bin_serial_or_parallelILb1ESA_NS4_10BinMappingILm32EEES6_EEvRT0_PKT2_mmmRKT1_EUlRKNS_5rangeImEEE_ZNSB_ILb1ESA_SD_S6_EEvSF_SI_mmmSL_EUlRKSA_SS_E_EESE_T_SU_SU_SU_RKSE_SL_RSH_EUlmE_EEvSU_SW_EUlSP_E_EEvSU_SU_SU_SW_PNS0_16TaskGroupContextE(i64 noundef %i.c, i64 noundef %i.es, i64 noundef %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.et, ptr noundef %i.ev)
  %i.ew = load i64, ptr %0, align 8
  %i.ex = load i64, ptr %i.e, align 8
  %i.ey = load ptr, ptr %i.eu, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImNS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEEZNS_22bin_serial_or_parallelILb1ESA_NS4_10BinMappingILm32EEES6_EEvRT0_PKT2_mmmRKT1_EUlRKNS_5rangeImEEE_ZNSB_ILb1ESA_SD_S6_EEvSF_SI_mmmSL_EUlRKSA_SS_E_EESE_T_SU_SU_SU_RKSE_SL_RSH_EUlmE_EEvSU_SW_EUlSP_E_EEvSU_SU_SU_SW_PNS0_16TaskGroupContextE(i64 noundef %i.es, i64 noundef %i.ew, i64 noundef %i.ex, ptr noundef nonnull align 8 dereferenceable(8) %i.et, ptr noundef %i.ey)
  tail call void @_ZN6embree13TaskScheduler4waitEv()
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImNS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEEZNS_22bin_serial_or_parallelILb1ES8_NS2_10BinMappingILm32EEES4_EEvRT0_PKT2_mmmRKT1_EUlRKNS_5rangeImEEE_ZNS9_ILb1ES8_SB_S4_EEvSD_SG_mmmSJ_EUlRKS8_SQ_E_EESC_T_SS_SS_SS_RKSC_SJ_RSF_EUlmE_EEvSS_SU_ENKUlSN_E_clESN_.exit
  ret void
}

declare void @_ZN6embree13TaskScheduler12startThreadsEv() local_unnamed_addr #15

declare noundef i64 @_ZN6embree13TaskScheduler16allocThreadIndexEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #15

declare noundef ptr @_ZN6embree13TaskScheduler10swapThreadEPNS0_6ThreadE(ptr noundef) local_unnamed_addr #15

declare void @_ZN6embree12ConditionSys10notify_allEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #15

declare void @_ZN6embree13TaskScheduler12addSchedulerERKNS_3RefIS0_EE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #15

declare noundef zeroext i1 @_ZN6embree13TaskScheduler9TaskQueue13execute_localERNS0_6ThreadEPNS0_4TaskE(ptr noundef nonnull align 64 dereferenceable(786568), ptr noundef nonnull align 64 dereferenceable(786704), ptr noundef) local_unnamed_addr #15

declare void @_ZN6embree13TaskScheduler15removeSchedulerERKNS_3RefIS0_EE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #15

declare void @_ZN6embree5yieldEv() local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNKSt14default_deleteIN6embree13TaskScheduler6ThreadEEclEPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 786696
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #28
  unreachable

_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i:      ; preds = %bb.c, %bb.b
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.a)
          to label %_ZNKSt14default_deleteIN6embree13TaskScheduler6ThreadEEclEPS2_.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #28
  unreachable

_ZNKSt14default_deleteIN6embree13TaskScheduler6ThreadEEclEPS2_.exit: ; preds = %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIPN6embree7PrimRefElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 512
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPN6embree7PrimRefEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = icmp eq i64 %2, 0
  br i1 %i.l, label %._crit_edge, label %.lr.ph44

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPN6embree7PrimRefEN9__gnu_cxx5__ops15_Iter_less_iterEET_S6_S6_T0_.exit
  %i.m = icmp eq i64 %i.fk, 0
  br i1 %i.m, label %._crit_edge, label %.lr.ph44, !llvm.loop !537

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa40 = phi i64 [ %i.c, %.lr.ph ], [ %i.iu, %bb.b ] ; 2 uses
  %.021.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ]
  %i.n = lshr exact i64 %.lcssa40, 5              ; 2 uses
  %i.o = add nsw i64 %i.n, -2
  %i.p = lshr i64 %i.o, 1                         ; 3 uses
  %i.q = add nsw i64 %i.n, -1                     ; 3 uses
  %i.r = lshr i64 %i.q, 1                         ; 2 uses
  %i.s = and i64 %.lcssa40, 32
  %i.t = icmp eq i64 %i.s, 0
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.q ; 2 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.p ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIPN6embree7PrimRefElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit.i.i, %._crit_edge
  %.012.i.i = phi i64 [ %i.p, %._crit_edge ], [ %i.ci, %_ZSt13__adjust_heapIPN6embree7PrimRefElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit.i.i ] ; 8 uses
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.012.i.i ; 2 uses
  %i.z = load <4 x float>, ptr %i.y, align 16     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ab = load <4 x float>, ptr %i.aa, align 16   ; 2 uses
  %i.ac = icmp slt i64 %.012.i.i, %i.r
  br i1 %i.ac, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.012.i.i, %bb.c ] ; 2 uses
  %i.ad = shl i64 %.030.i.i.i, 1                  ; 3 uses
  %i.ae = add i64 %i.ad, 2                        ; 2 uses
  %i.af = getelementptr inbounds [32 x i8], ptr %0, i64 %i.ae ; 2 uses
  %i.ag = getelementptr [32 x i8], ptr %0, i64 %i.ad ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 28
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = zext i32 %i.ai to i64
  %i.ak = shl nuw i64 %i.aj, 32
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.am = load i32, ptr %i.al, align 4
  %i.an = zext i32 %i.am to i64
  %i.ao = or disjoint i64 %i.ak, %i.an
  %i.ap = getelementptr i8, ptr %i.ag, i64 60
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = zext i32 %i.aq to i64
  %i.as = shl nuw i64 %i.ar, 32
  %i.at = getelementptr i8, ptr %i.ag, i64 44
  %i.au = load i32, ptr %i.at, align 4
  %i.av = zext i32 %i.au to i64
  %i.aw = or disjoint i64 %i.as, %i.av
  %i.ax = icmp ult i64 %i.ao, %i.aw
  %i.ay = or disjoint i64 %i.ad, 1
  %spec.select.i.i.i = select i1 %i.ax, i64 %i.ay, i64 %i.ae ; 4 uses
  %i.az = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select.i.i.i ; 2 uses
  %i.ba = getelementptr inbounds [32 x i8], ptr %0, i64 %.030.i.i.i ; 2 uses
  %i.bb = load <4 x float>, ptr %i.az, align 16
  store <4 x float> %i.bb, ptr %i.ba, align 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.be = load <4 x float>, ptr %i.bd, align 16
  store <4 x float> %i.be, ptr %i.bc, align 16
  %i.bf = icmp slt i64 %spec.select.i.i.i, %i.r
  br i1 %i.bf, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !538

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.012.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.bg = icmp eq i64 %.0.lcssa.i.i.i, %i.p
  %or.cond.i.i = select i1 %i.t, i1 %i.bg, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.bh = load <4 x float>, ptr %i.u, align 16
  store <4 x float> %i.bh, ptr %i.v, align 16
  %i.bi = load <4 x float>, ptr %i.x, align 16
  store <4 x float> %i.bi, ptr %i.w, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.127.i.i.i = phi i64 [ %i.q, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.bj = icmp sgt i64 %.127.i.i.i, %.012.i.i
  br i1 %i.bj, label %.lr.ph.i.preheader.i.i.i, label %_ZSt13__adjust_heapIPN6embree7PrimRefElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.e
  %bc.i.i.i = bitcast <4 x float> %i.ab to <4 x i32>
  %i.bk = extractelement <4 x i32> %bc.i.i.i, i64 3
  %i.bl = zext i32 %i.bk to i64
  %i.bm = shl nuw i64 %i.bl, 32
  %bc29.i.i.i = bitcast <4 x float> %i.z to <4 x i32>
  %i.bn = extractelement <4 x i32> %bc29.i.i.i, i64 3
  %i.bo = zext i32 %i.bn to i64
  %i.bp = or disjoint i64 %i.bm, %i.bo
  br label %.lr.ph.i.i.i.i13

.lr.ph.i.i.i.i13:                                 ; preds = %bb.f, %.lr.ph.i.preheader.i.i.i
  %.01316.i.i.i.i = phi i64 [ %.017.i.i.i.i, %bb.f ], [ %.127.i.i.i, %.lr.ph.i.preheader.i.i.i ] ; 3 uses
  %.017.in.i.i.i.i = add nsw i64 %.01316.i.i.i.i, -1
  %.017.i.i.i.i = sdiv i64 %.017.in.i.i.i.i, 2    ; 4 uses
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.017.i.i.i.i ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 28
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = zext i32 %i.bs to i64
  %i.bu = shl nuw i64 %i.bt, 32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = zext i32 %i.bw to i64
  %i.by = or disjoint i64 %i.bu, %i.bx
  %i.bz = icmp ult i64 %i.by, %i.bp
  br i1 %i.bz, label %bb.f, label %_ZSt13__adjust_heapIPN6embree7PrimRefElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i13
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.01316.i.i.i.i ; 2 uses
  %i.cb = load <4 x float>, ptr %i.bq, align 16
  store <4 x float> %i.cb, ptr %i.ca, align 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.ce = load <4 x float>, ptr %i.cd, align 16
  store <4 x float> %i.ce, ptr %i.cc, align 16
  %i.cf = icmp sgt i64 %.017.i.i.i.i, %.012.i.i
  br i1 %i.cf, label %.lr.ph.i.i.i.i13, label %_ZSt13__adjust_heapIPN6embree7PrimRefElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit.i.i, !llvm.loop !539

_ZSt13__adjust_heapIPN6embree7PrimRefElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i13, %bb.e
  %.013.lcssa.i.i.i.i = phi i64 [ %.127.i.i.i, %bb.e ], [ %.017.i.i.i.i, %bb.f ], [ %.01316.i.i.i.i, %.lr.ph.i.i.i.i13 ]
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i ; 2 uses
  store <4 x float> %i.z, ptr %i.cg, align 16
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store <4 x float> %i.ab, ptr %i.ch, align 16
  %.not.i.i = icmp eq i64 %.012.i.i, 0
  %i.ci = add nsw i64 %.012.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !540

.lr.ph.i.i:                                       ; preds = %_ZSt13__adjust_heapIPN6embree7PrimRefElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit.i.i, %_ZSt10__pop_heapIPN6embree7PrimRefEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.cj, %_ZSt10__pop_heapIPN6embree7PrimRefEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit.i.i ], [ %.021.lcssa, %_ZSt13__adjust_heapIPN6embree7PrimRefElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit.i.i ] ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %.07.i.i, i64 -32 ; 4 uses
  %i.ck = load <4 x float>, ptr %i.cj, align 16   ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %.07.i.i, i64 -16 ; 2 uses
  %i.cm = load <4 x float>, ptr %i.cl, align 16   ; 2 uses
  %i.cn = load <4 x float>, ptr %0, align 16
  store <4 x float> %i.cn, ptr %i.cj, align 16
  %i.co = load <4 x float>, ptr %i.h, align 16
  store <4 x float> %i.co, ptr %i.cl, align 16
  %i.cp = ptrtoint ptr %i.cj to i64
  %i.cq = sub i64 %i.cp, %i.a                     ; 3 uses
  %i.cr = ashr exact i64 %i.cq, 5                 ; 3 uses
  %i.cs = add nsw i64 %i.cr, -1
  %i.ct = lshr i64 %i.cs, 1
  %i.cu = icmp sgt i64 %i.cr, 2
  br i1 %i.cu, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.030.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.cv = shl i64 %.030.i.i.i.i, 1                ; 3 uses
  %i.cw = add i64 %i.cv, 2                        ; 2 uses
  %i.cx = getelementptr inbounds [32 x i8], ptr %0, i64 %i.cw ; 2 uses
  %i.cy = getelementptr [32 x i8], ptr %0, i64 %i.cv ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 28
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = zext i32 %i.da to i64
  %i.dc = shl nuw i64 %i.db, 32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = zext i32 %i.de to i64
  %i.dg = or disjoint i64 %i.dc, %i.df
  %i.dh = getelementptr i8, ptr %i.cy, i64 60
  %i.di = load i32, ptr %i.dh, align 4
  %i.dj = zext i32 %i.di to i64
  %i.dk = shl nuw i64 %i.dj, 32
  %i.dl = getelementptr i8, ptr %i.cy, i64 44
  %i.dm = load i32, ptr %i.dl, align 4
  %i.dn = zext i32 %i.dm to i64
  %i.do = or disjoint i64 %i.dk, %i.dn
  %i.dp = icmp ult i64 %i.dg, %i.do
  %i.dq = or disjoint i64 %i.cv, 1
  %spec.select.i.i.i.i = select i1 %i.dp, i64 %i.dq, i64 %i.cw ; 4 uses
  %i.dr = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select.i.i.i.i ; 2 uses
  %i.ds = getelementptr inbounds [32 x i8], ptr %0, i64 %.030.i.i.i.i ; 2 uses
  %i.dt = load <4 x float>, ptr %i.dr, align 16
  store <4 x float> %i.dt, ptr %i.ds, align 16
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dw = load <4 x float>, ptr %i.dv, align 16
  store <4 x float> %i.dw, ptr %i.du, align 16
  %i.dx = icmp slt i64 %spec.select.i.i.i.i, %i.ct
  br i1 %i.dx, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !538

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.dy = and i64 %i.cq, 32
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ea = add nsw i64 %i.cr, -2
  %i.eb = ashr exact i64 %i.ea, 1
  %i.ec = icmp eq i64 %.0.lcssa.i.i.i.i, %i.eb
  br i1 %i.ec, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.ed = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ee = or disjoint i64 %i.ed, 1                ; 2 uses
  %i.ef = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ee ; 2 uses
  %i.eg = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i ; 2 uses
  %i.eh = load <4 x float>, ptr %i.ef, align 16
  store <4 x float> %i.eh, ptr %i.eg, align 16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.ek = load <4 x float>, ptr %i.ej, align 16
  store <4 x float> %i.ek, ptr %i.ei, align 16
  br label %.lr.ph.i.preheader.i.i.i.i

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPN6embree7PrimRefEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.h, %.thread.i.i.i
  %.127.i8.i.i.i = phi i64 [ %i.ee, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.h ]
  %bc.i.i.i.i = bitcast <4 x float> %i.cm to <4 x i32>
  %i.el = extractelement <4 x i32> %bc.i.i.i.i, i64 3
  %i.em = zext i32 %i.el to i64
  %i.en = shl nuw i64 %i.em, 32
  %bc29.i.i.i.i = bitcast <4 x float> %i.ck to <4 x i32>
  %i.eo = extractelement <4 x i32> %bc29.i.i.i.i, i64 3
  %i.ep = zext i32 %i.eo to i64
  %i.eq = or disjoint i64 %i.en, %i.ep
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %.lr.ph.i.preheader.i.i.i.i
  %.01316.i.i.i.i.i = phi i64 [ %.017.i.i910.i.i.i, %bb.i ], [ %.127.i8.i.i.i, %.lr.ph.i.preheader.i.i.i.i ] ; 3 uses
  %.017.in.i.i.i.i.i = add nsw i64 %.01316.i.i.i.i.i, -1
  %.017.i.i910.i.i.i = lshr i64 %.017.in.i.i.i.i.i, 1 ; 3 uses
  %i.er = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.017.i.i910.i.i.i ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 28
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = zext i32 %i.et to i64
  %i.ev = shl nuw i64 %i.eu, 32
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  %i.ex = load i32, ptr %i.ew, align 4
  %i.ey = zext i32 %i.ex to i64
  %i.ez = or disjoint i64 %i.ev, %i.ey
  %i.fa = icmp ult i64 %i.ez, %i.eq
  br i1 %i.fa, label %bb.i, label %_ZSt10__pop_heapIPN6embree7PrimRefEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.fb = getelementptr inbounds [32 x i8], ptr %0, i64 %.01316.i.i.i.i.i ; 2 uses
  %i.fc = load <4 x float>, ptr %i.er, align 16
  store <4 x float> %i.fc, ptr %i.fb, align 16
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.ff = load <4 x float>, ptr %i.fe, align 16
  store <4 x float> %i.ff, ptr %i.fd, align 16
  %.not11.i.i.i = icmp eq i64 %.017.i.i910.i.i.i, 0
  br i1 %.not11.i.i.i, label %_ZSt10__pop_heapIPN6embree7PrimRefEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !539

_ZSt10__pop_heapIPN6embree7PrimRefEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i, %bb.h
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.01316.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.i ]
  %i.fg = getelementptr inbounds [32 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i ; 2 uses
  store <4 x float> %i.ck, ptr %i.fg, align 16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store <4 x float> %i.cm, ptr %i.fh, align 16
  %i.fi = icmp sgt i64 %i.cq, 32
  br i1 %i.fi, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPN6embree7PrimRefEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_T0_.exit, !llvm.loop !541

.lr.ph44:                                         ; preds = %.lr.ph, %bb.b
  %.0122043 = phi i64 [ %i.fk, %bb.b ], [ %2, %.lr.ph ]
  %.02142 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 7 uses
  %i.fj = phi i64 [ %i.iu, %bb.b ], [ %i.c, %.lr.ph ]
  %i.fk = add nsw i64 %.0122043, -1               ; 3 uses
  %i.fl = lshr i64 %i.fj, 6
  %i.fm = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.fl ; 8 uses
  %i.fn = getelementptr inbounds i8, ptr %.02142, i64 -32 ; 4 uses
  %i.fo = load i32, ptr %i.f, align 4
  %i.fp = zext i32 %i.fo to i64
  %i.fq = shl nuw i64 %i.fp, 32
  %i.fr = load i32, ptr %i.g, align 4
  %i.fs = zext i32 %i.fr to i64
  %i.ft = or disjoint i64 %i.fq, %i.fs            ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fm, i64 28
  %i.fv = load i32, ptr %i.fu, align 4
  %i.fw = zext i32 %i.fv to i64
  %i.fx = shl nuw i64 %i.fw, 32
end_hunk_0
begin_hunk_1_@_ZSt11__sort_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_13PrimInfoRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_RT0_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %.sroa.07.i, ptr noundef nonnull align 16 dereferenceable(9) %i.j, i64 9, i1 false)
  %i.k = getelementptr inbounds i8, ptr %.07, i64 -80 ; 2 uses
  %i.l = load <4 x float>, ptr %i.k, align 16
  %i.m = getelementptr inbounds i8, ptr %.07, i64 -64 ; 2 uses
  %i.n = load <4 x float>, ptr %i.m, align 16
  %i.o = getelementptr inbounds i8, ptr %.07, i64 -48 ; 2 uses
  %i.p = load <4 x float>, ptr %i.o, align 16
  %i.q = getelementptr inbounds i8, ptr %.07, i64 -32 ; 2 uses
  %i.r = load <4 x float>, ptr %i.q, align 16
  %i.s = getelementptr inbounds i8, ptr %.07, i64 -16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 16             ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.07, i64 -8
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.j, ptr noundef nonnull align 16 dereferenceable(96) %0, i64 9, i1 false)
  %i.w = load <4 x float>, ptr %i.e, align 16
  store <4 x float> %i.w, ptr %i.k, align 16
  %i.x = load <4 x float>, ptr %i.f, align 16
  store <4 x float> %i.x, ptr %i.m, align 16
  %i.y = load <4 x float>, ptr %i.g, align 16
  store <4 x float> %i.y, ptr %i.o, align 16
  %i.z = load <4 x float>, ptr %i.h, align 16
  store <4 x float> %i.z, ptr %i.q, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.s, ptr noundef nonnull align 16 dereferenceable(16) %i.i, i64 16, i1 false)
  %i.aa = ptrtoint ptr %i.j to i64
  %i.ab = sub i64 %i.aa, %i.a                     ; 3 uses
  %i.ac = sdiv exact i64 %i.ab, 96                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = sdiv i64 %i.ad, 2
  %i.af = icmp sgt i64 %i.ab, 192
  br i1 %i.af, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.029.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.ag = shl i64 %.029.i.i, 1                    ; 3 uses
  %i.ah = add i64 %i.ag, 2                        ; 2 uses
  %i.ai = getelementptr inbounds [96 x i8], ptr %0, i64 %i.ah ; 2 uses
  %i.aj = getelementptr [96 x i8], ptr %0, i64 %i.ag ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  %i.am = load i64, ptr %i.al, align 8
  %i.an = load i64, ptr %i.ak, align 8
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = getelementptr i8, ptr %i.aj, i64 176
  %i.aq = getelementptr i8, ptr %i.aj, i64 184
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = load i64, ptr %i.ap, align 8
  %i.at = sub i64 %i.ar, %i.as
  %i.au = icmp ugt i64 %i.ao, %i.at
  %i.av = or disjoint i64 %i.ag, 1
  %spec.select.i.i = select i1 %i.au, i64 %i.av, i64 %i.ah ; 4 uses
  %i.aw = getelementptr inbounds [96 x i8], ptr %0, i64 %spec.select.i.i ; 6 uses
  %i.ax = getelementptr inbounds [96 x i8], ptr %0, i64 %.029.i.i ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.ax, ptr noundef nonnull align 16 dereferenceable(96) %i.aw, i64 9, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ba = load <4 x float>, ptr %i.az, align 16
  store <4 x float> %i.ba, ptr %i.ay, align 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bd = load <4 x float>, ptr %i.bb, align 16
  store <4 x float> %i.bd, ptr %i.bc, align 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.bg = load <4 x float>, ptr %i.bf, align 16
  store <4 x float> %i.bg, ptr %i.be, align 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.bj = load <4 x float>, ptr %i.bh, align 16
  store <4 x float> %i.bj, ptr %i.bi, align 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bk, ptr noundef nonnull align 16 dereferenceable(16) %i.bl, i64 16, i1 false)
  %i.bm = icmp slt i64 %spec.select.i.i, %i.ae
  br i1 %i.bm, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !14

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.bn = and i64 %i.ac, 1
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.bp = add nsw i64 %i.ac, -2
  %i.bq = ashr exact i64 %i.bp, 1
  %i.br = icmp eq i64 %.0.lcssa.i.i, %i.bq
  br i1 %i.br, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.bs = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.bt = or disjoint i64 %i.bs, 1                ; 2 uses
  %i.bu = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.bt ; 6 uses
  %i.bv = getelementptr inbounds [96 x i8], ptr %0, i64 %.0.lcssa.i.i ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.bv, ptr noundef nonnull align 16 dereferenceable(96) %i.bu, i64 9, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.by = load <4 x float>, ptr %i.bx, align 16
  store <4 x float> %i.by, ptr %i.bw, align 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.cb = load <4 x float>, ptr %i.bz, align 16
  store <4 x float> %i.cb, ptr %i.ca, align 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.ce = load <4 x float>, ptr %i.cd, align 16
  store <4 x float> %i.ce, ptr %i.cc, align 16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %i.ch = load <4 x float>, ptr %i.cf, align 16
  store <4 x float> %i.ch, ptr %i.cg, align 16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bv, i64 80
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bu, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ci, ptr noundef nonnull align 16 dereferenceable(16) %i.cj, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %.sroa.0.i.i, ptr noundef nonnull align 16 dereferenceable(9) %.sroa.07.i, i64 9, i1 false)
  br label %.lr.ph.i.preheader.i.i

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %.sroa.0.i.i, ptr noundef nonnull align 16 dereferenceable(9) %.sroa.07.i, i64 9, i1 false)
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_13PrimInfoRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_SF_RT0_.exit, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.d, %.thread.i
  %.127.i14.i = phi i64 [ %i.bt, %.thread.i ], [ %.0.lcssa.i.i, %bb.d ]
  %i.ck = sub i64 %i.v, %i.t
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.preheader.i.i
  %.01316.i.i.i = phi i64 [ %.017.i.i1516.i, %bb.e ], [ %.127.i14.i, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %.017.in.i.i.i = add nsw i64 %.01316.i.i.i, -1
  %.017.i.i1516.i = lshr i64 %.017.in.i.i.i, 1    ; 3 uses
  %i.cl = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.017.i.i1516.i ; 7 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 80 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 88
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = load i64, ptr %i.cm, align 8
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = icmp ugt i64 %i.cq, %i.ck
  br i1 %i.cr, label %bb.e, label %_ZSt10__pop_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_13PrimInfoRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_SF_RT0_.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.cs = getelementptr inbounds [96 x i8], ptr %0, i64 %.01316.i.i.i ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.cs, ptr noundef nonnull align 16 dereferenceable(96) %i.cl, i64 9, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cv = load <4 x float>, ptr %i.cu, align 16
  store <4 x float> %i.cv, ptr %i.ct, align 16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cy = load <4 x float>, ptr %i.cw, align 16
  store <4 x float> %i.cy, ptr %i.cx, align 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  %i.da = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.db = load <4 x float>, ptr %i.da, align 16
  store <4 x float> %i.db, ptr %i.cz, align 16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  %i.de = load <4 x float>, ptr %i.dc, align 16
  store <4 x float> %i.de, ptr %i.dd, align 16
  %i.df = getelementptr inbounds nuw i8, ptr %i.cs, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.df, ptr noundef nonnull align 16 dereferenceable(16) %i.cm, i64 16, i1 false)
  %.not17.i = icmp eq i64 %.017.i.i1516.i, 0
  br i1 %.not17.i, label %_ZSt10__pop_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_13PrimInfoRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_SF_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !15

_ZSt10__pop_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_13PrimInfoRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_SF_RT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.d
  %.013.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.01316.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %i.dg = getelementptr inbounds [96 x i8], ptr %0, i64 %.013.lcssa.i.i.i ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %i.dg, ptr noundef nonnull align 16 dereferenceable(9) %.sroa.0.i.i, i64 9, i1 false)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store <4 x float> %i.l, ptr %i.dh, align 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  store <4 x float> %i.n, ptr %i.di, align 16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 48
  store <4 x float> %i.p, ptr %i.dj, align 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  store <4 x float> %i.r, ptr %i.dk, align 16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 80
  store i64 %i.t, ptr %i.dl, align 16
  %.sroa.13.80..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 88
  store i64 %i.v, ptr %.sroa.13.80..sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i)
  %i.dm = icmp sgt i64 %i.ab, 96
  br i1 %i.dm, label %bb.b, label %._crit_edge, !llvm.loop !763

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_13PrimInfoRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_SF_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_13PrimInfoRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0 = alloca [9 x i8], align 16            ; 2 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp slt i64 %i.c, 192
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = udiv exact i64 %i.c, 96                  ; 4 uses
  %i.f = add nsw i64 %i.e, -2                     ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.e, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.e, 1
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %3 = add nsw i64 %i.e, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %3 ; 6 uses
  %i.n = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.l ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_13PrimInfoRangeENS1_8BinSplitILm32EEEEElS7_N9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_T0_SG_T1_T2_.exit, %bb.b
  %.013 = phi i64 [ %i.g, %bb.b ], [ %i.dc, %_ZSt13__adjust_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_13PrimInfoRangeENS1_8BinSplitILm32EEEEElS7_N9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_T0_SG_T1_T2_.exit ] ; 8 uses
  %i.y = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.013 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load <4 x float>, ptr %i.z, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ac = load <4 x float>, ptr %i.ab, align 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.ae = load <4 x float>, ptr %i.ad, align 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.ag = load <4 x float>, ptr %i.af, align 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.ai = load i64, ptr %i.ah, align 16           ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %.sroa.0, ptr noundef nonnull align 16 dereferenceable(9) %i.y, i64 9, i1 false)
  %i.al = icmp slt i64 %.013, %i.i
  br i1 %i.al, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.013, %bb.c ] ; 2 uses
  %i.am = shl i64 %.029.i, 1                      ; 3 uses
  %i.an = add i64 %i.am, 2                        ; 2 uses
  %i.ao = getelementptr inbounds [96 x i8], ptr %0, i64 %i.an ; 2 uses
  %i.ap = getelementptr [96 x i8], ptr %0, i64 %i.am ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = load i64, ptr %i.aq, align 8
  %i.au = sub i64 %i.as, %i.at
  %i.av = getelementptr i8, ptr %i.ap, i64 176
  %i.aw = getelementptr i8, ptr %i.ap, i64 184
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = load i64, ptr %i.av, align 8
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = icmp ugt i64 %i.au, %i.az
  %i.bb = or disjoint i64 %i.am, 1
  %spec.select.i = select i1 %i.ba, i64 %i.bb, i64 %i.an ; 4 uses
  %i.bc = getelementptr inbounds [96 x i8], ptr %0, i64 %spec.select.i ; 6 uses
  %i.bd = getelementptr inbounds [96 x i8], ptr %0, i64 %.029.i ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.bd, ptr noundef nonnull align 16 dereferenceable(96) %i.bc, i64 9, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bg = load <4 x float>, ptr %i.bf, align 16
  store <4 x float> %i.bg, ptr %i.be, align 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bj = load <4 x float>, ptr %i.bh, align 16
  store <4 x float> %i.bj, ptr %i.bi, align 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.bm = load <4 x float>, ptr %i.bl, align 16
  store <4 x float> %i.bm, ptr %i.bk, align 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.bp = load <4 x float>, ptr %i.bn, align 16
  store <4 x float> %i.bp, ptr %i.bo, align 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  %i.br = getelementptr inbounds nuw i8, ptr %i.bc, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bq, ptr noundef nonnull align 16 dereferenceable(16) %i.br, i64 16, i1 false)
  %i.bs = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bs, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !14

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.013, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bt = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.bt, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.n, ptr noundef nonnull align 16 dereferenceable(96) %i.m, i64 9, i1 false)
  %i.bu = load <4 x float>, ptr %i.p, align 16
  store <4 x float> %i.bu, ptr %i.o, align 16
  %i.bv = load <4 x float>, ptr %i.q, align 16
  store <4 x float> %i.bv, ptr %i.r, align 16
  %i.bw = load <4 x float>, ptr %i.t, align 16
  store <4 x float> %i.bw, ptr %i.s, align 16
  %i.bx = load <4 x float>, ptr %i.u, align 16
  store <4 x float> %i.bx, ptr %i.v, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.w, ptr noundef nonnull align 16 dereferenceable(16) %i.x, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.127.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.by = icmp sgt i64 %.127.i, %.013
  br i1 %i.by, label %.lr.ph.i.preheader.i, label %_ZSt13__adjust_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_13PrimInfoRangeENS1_8BinSplitILm32EEEEElS7_N9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_T0_SG_T1_T2_.exit

.lr.ph.i.preheader.i:                             ; preds = %bb.e
  %i.bz = sub i64 %i.ak, %i.ai
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.preheader.i
  %.01316.i.i = phi i64 [ %.017.i.i, %bb.f ], [ %.127.i, %.lr.ph.i.preheader.i ] ; 3 uses
  %.017.in.i.i = add nsw i64 %.01316.i.i, -1
  %.017.i.i = sdiv i64 %.017.in.i.i, 2            ; 4 uses
  %i.ca = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.017.i.i ; 7 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 80 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 88
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = load i64, ptr %i.cb, align 8
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = icmp ugt i64 %i.cf, %i.bz
  br i1 %i.cg, label %bb.f, label %_ZSt13__adjust_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_13PrimInfoRangeENS1_8BinSplitILm32EEEEElS7_N9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_T0_SG_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ch = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.01316.i.i ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.ch, ptr noundef nonnull align 16 dereferenceable(96) %i.ca, i64 9, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.ck = load <4 x float>, ptr %i.cj, align 16
  store <4 x float> %i.ck, ptr %i.ci, align 16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.cn = load <4 x float>, ptr %i.cl, align 16
  store <4 x float> %i.cn, ptr %i.cm, align 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cq = load <4 x float>, ptr %i.cp, align 16
  store <4 x float> %i.cq, ptr %i.co, align 16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 64
  %i.ct = load <4 x float>, ptr %i.cr, align 16
  store <4 x float> %i.ct, ptr %i.cs, align 16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ch, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cu, ptr noundef nonnull align 16 dereferenceable(16) %i.cb, i64 16, i1 false)
  %i.cv = icmp sgt i64 %.017.i.i, %.013
  br i1 %i.cv, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_13PrimInfoRangeENS1_8BinSplitILm32EEEEElS7_N9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_T0_SG_T1_T2_.exit, !llvm.loop !15

_ZSt13__adjust_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_13PrimInfoRangeENS1_8BinSplitILm32EEEEElS7_N9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_T0_SG_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.127.i, %bb.e ], [ %.017.i.i, %bb.f ], [ %.01316.i.i, %.lr.ph.i.i ]
  %i.cw = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.013.lcssa.i.i ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %i.cw, ptr noundef nonnull align 16 dereferenceable(9) %.sroa.0, i64 9, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store <4 x float> %i.aa, ptr %i.cx, align 16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  store <4 x float> %i.ac, ptr %i.cy, align 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  store <4 x float> %i.ae, ptr %i.cz, align 16
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 64
  store <4 x float> %i.ag, ptr %i.da, align 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 80
  store i64 %i.ai, ptr %i.db, align 16
  %.sroa.13.80..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 88
  store i64 %i.ak, ptr %.sroa.13.80..sroa_idx.i, align 8
  %.not = icmp eq i64 %.013, 0
  %i.dc = add nsw i64 %.013, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !764

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_13PrimInfoRangeENS1_8BinSplitILm32EEEEElS7_N9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_T0_SG_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_13PrimInfoRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_SF_SF_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.i.i30 = alloca { i64, i8 }, align 16   ; 4 uses
  %.sroa.0.i.i28 = alloca { i64, i8 }, align 16   ; 4 uses
  %.sroa.0.i.i26 = alloca { i64, i8 }, align 16   ; 4 uses
  %.sroa.0.i.i24 = alloca { i64, i8 }, align 16   ; 4 uses
  %.sroa.0.i.i22 = alloca { i64, i8 }, align 16   ; 4 uses
  %.sroa.0.i.i = alloca { i64, i8 }, align 16     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.c = load i64, ptr %i.b, align 8
  %i.d = load i64, ptr %i.a, align 8
  %i.e = sub i64 %i.c, %i.d                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.h = load i64, ptr %i.g, align 8
  %i.i = load i64, ptr %i.f, align 8
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp ugt i64 %i.e, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.n = load i64, ptr %i.m, align 8
  %i.o = load i64, ptr %i.l, align 8
  %i.p = sub i64 %i.n, %i.o                       ; 4 uses
  br i1 %i.k, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.q = icmp ugt i64 %i.j, %i.p
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %.sroa.0.i.i, ptr noundef nonnull align 16 dereferenceable(96) %0, i64 9, i1 false)
end_hunk_1
