Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/metric?download=true
inline.NumInlined: 3370
inline.NumDeleted: 931
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZNK8LightGBM11AucMuMetric7GetNameB5cxx11Ev:bb.a

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef double @_ZNK8LightGBM11AucMuMetric23factor_to_bigger_betterEv(ptr noundef nonnull align 8 dereferenceable(1824) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret double 1.000000e+00
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8LightGBM11AucMuMetric4EvalEPKdPKNS_17ObjectiveFunctionE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.8") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1824) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.69", align 8 ; 5 uses
  %5 = alloca %class.anon.70, align 8             ; 5 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.69", align 8 ; 4 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %7 = alloca %"class.std::vector.8", align 8     ; 12 uses
  %8 = alloca %"class.std::vector.13", align 8    ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !79   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.h = sext i32 %i.g to i64                     ; 7 uses
  %i.i = icmp slt i32 %i.g, 0
  br i1 %i.i, label %bb.b, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #32
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EEC2EmRKS3_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = shl nuw nsw i64 %i.h, 3                  ; 3 uses
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #30
          to label %.noexc144 unwind label %bb.g  ; 4 uses

.noexc144:                                        ; preds = %bb.c
  store ptr %i.k, ptr %7, align 8, !tbaa !82
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !83
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.j, i1 false), !tbaa !88
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !84
  %i.p = mul nuw nsw i64 %i.h, 24
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #30
          to label %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EEC2EmRKS3_.exit.i unwind label %bb.h

_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EEC2EmRKS3_.exit.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i, %.noexc144
  %i.r = phi ptr [ %i.q, %.noexc144 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ] ; 13 uses
  %i.s = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIdSaIdEEmS2_ET_S4_T0_RKT1_(ptr noundef %i.r, i64 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %_ZNSt6vectorIS_IdSaIdEESaIS1_EEC2EmRKS1_RKS2_.exit unwind label %bb.d ; 4 uses

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EEC2EmRKS3_.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.idx = mul nuw nsw i64 %i.h, 24
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %.idx) #31
  br label %.body

_ZNSt6vectorIS_IdSaIdEESaIS1_EEC2EmRKS1_RKS2_.exit: ; preds = %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EEC2EmRKS3_.exit.i
  %i.u = load ptr, ptr %7, align 8, !tbaa !82     ; 3 uses
  %.not.i.i.i148 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i148, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EEC2EmRKS1_RKS2_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !83
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #31
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EEC2EmRKS1_RKS2_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.aa = load i32, ptr %i.f, align 8, !tbaa !79  ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph394, label %._crit_edge404

.lr.ph394:                                        ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 1800 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.pre482.pre = load ptr, ptr %i.ac, align 8, !tbaa !80
  br label %bb.j

.preheader:                                       ; preds = %bb.j, %._crit_edge391
  %.lcssa349 = phi i32 [ %i.lo, %._crit_edge391 ], [ %i.ay, %bb.j ] ; 5 uses
  %i.ak = icmp sgt i32 %.lcssa349, 0
  br i1 %i.ak, label %.lr.ph403, label %._crit_edge404

.lr.ph403:                                        ; preds = %.preheader
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ao = zext nneg i32 %.lcssa349 to i64
  %wide.trip.count475 = zext nneg i32 %.lcssa349 to i64 ; 5 uses
  %i.ap = add nsw i64 %wide.trip.count475, -2     ; 2 uses
  br label %bb.bc

bb.g:                                             ; preds = %bb.c, %bb.b
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit150

bb.h:                                             ; preds = %.noexc144
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.e, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.ar, %bb.h ], [ %i.t, %bb.e ], [ %i.t, %bb.d ] ; 2 uses
  %i.as = load ptr, ptr %7, align 8, !tbaa !82    ; 3 uses
  %.not.i.i.i149 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i149, label %_ZNSt6vectorIdSaIdEED2Ev.exit150, label %bb.i

bb.i:                                             ; preds = %.body
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !83
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #31
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit150

_ZNSt6vectorIdSaIdEED2Ev.exit150:                 ; preds = %bb.i, %.body, %bb.g
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.g ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit197

bb.j:                                             ; preds = %.lr.ph394, %._crit_edge391
  %.pre482 = phi ptr [ %.pre482.pre, %.lr.ph394 ], [ %.pre481, %._crit_edge391 ]
  %i.ay = phi i32 [ %i.aa, %.lr.ph394 ], [ %i.lo, %._crit_edge391 ] ; 3 uses
  %indvars.iv457 = phi i64 [ 0, %.lr.ph394 ], [ %indvars.iv.next458, %._crit_edge391 ] ; 8 uses
  %indvars.iv452 = phi i64 [ 1, %.lr.ph394 ], [ %indvars.iv.next453, %._crit_edge391 ] ; 2 uses
  %.0126393 = phi i32 [ 0, %.lr.ph394 ], [ %i.bn, %._crit_edge391 ] ; 3 uses
  %indvars.iv.next458 = add nuw nsw i64 %indvars.iv457, 1 ; 3 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = icmp slt i64 %indvars.iv.next458, %i.az
  br i1 %i.ba, label %.preheader282.lr.ph, label %.preheader

.preheader282.lr.ph:                              ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.pre482, i64 %indvars.iv457
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !117
  %i.bd = add nsw i32 %i.bc, %.0126393
  %i.be = sext i32 %.0126393 to i64
  %i.bf = trunc nuw nsw i64 %indvars.iv457 to i32
  %i.bg = uitofp nneg i32 %i.bf to float          ; 2 uses
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %indvars.iv457 ; 4 uses
  br label %.preheader282

.preheader282:                                    ; preds = %.preheader282.lr.ph, %_ZNSt6vectorIdSaIdEED2Ev.exit169
  %i.bi = phi i32 [ %i.ay, %.preheader282.lr.ph ], [ %i.lo, %_ZNSt6vectorIdSaIdEED2Ev.exit169 ] ; 2 uses
  %indvars.iv454 = phi i64 [ %indvars.iv452, %.preheader282.lr.ph ], [ %indvars.iv.next455, %_ZNSt6vectorIdSaIdEED2Ev.exit169 ] ; 10 uses
  %.0131390 = phi i32 [ %i.bd, %.preheader282.lr.ph ], [ %i.lf, %_ZNSt6vectorIdSaIdEED2Ev.exit169 ] ; 3 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  call void @llvm.assume(i1 %i.bj)
  br label %bb.p

._crit_edge391:                                   ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit169
  %.pre481 = load ptr, ptr %i.ac, align 8, !tbaa !80 ; 2 uses
  %.pre485 = sext i32 %i.lo to i64
  %i.bk = icmp slt i64 %indvars.iv.next458, %.pre485
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.pre481, i64 %indvars.iv457
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !117
  %i.bn = add nsw i32 %i.bm, %.0126393
  %indvars.iv.next453 = add nuw nsw i64 %indvars.iv452, 1
  br i1 %i.bk, label %bb.j, label %.preheader, !llvm.loop !393

._crit_edge:                                      ; preds = %_ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_.exit
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0243.1, i64 %indvars.iv457
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !88
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0243.1, i64 %indvars.iv454
  %i.br = load double, ptr %i.bq, align 8, !tbaa !88
  %i.bs = fsub double %i.bp, %i.br
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.bt = load ptr, ptr %i.ae, align 8, !tbaa !116 ; 2 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.be ; 2 uses
  %i.bv = load ptr, ptr %i.ac, align 8, !tbaa !80 ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv457
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !117 ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %.idx273 = shl nsw i64 %i.by, 2                 ; 5 uses
  %.not518 = icmp eq i32 %i.bx, 0
  br i1 %.not518, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPKiS1_EEvEEvT_S8_.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.bz = icmp ugt i64 %.idx273, 9223372036854775804
  br i1 %i.bz, label %bb.l, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #32
          to label %.noexc200 unwind label %.loopexit.split-lp289

.noexc200:                                        ; preds = %bb.l
  unreachable

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i: ; preds = %bb.k
  %i.ca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx273) #30
          to label %.noexc201 unwind label %.loopexit288 ; 5 uses

.noexc201:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
  %i.cb = icmp samesign ugt i64 %.idx273, 4
  br i1 %i.cb, label %bb.m, label %bb.n, !prof !87

bb.m:                                             ; preds = %.noexc201
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ca, ptr align 4 %i.bu, i64 %.idx273, i1 false)
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit.i

bb.n:                                             ; preds = %.noexc201
  %i.cc = load i32, ptr %i.bu, align 4, !tbaa !117
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !117
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit.i

_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit.i: ; preds = %bb.n, %bb.m
  %i.cd = load ptr, ptr %8, align 8, !tbaa !80    ; 3 uses
  %.not.i.i199 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i199, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit.i
  %i.ce = load ptr, ptr %i.af, align 8, !tbaa !81
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cd to i64
  %i.ch = sub i64 %i.cf, %i.cg
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.ch) #31
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.o, %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit.i
  store ptr %i.ca, ptr %8, align 8, !tbaa !80
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx273 ; 3 uses
  store ptr %i.ci, ptr %i.ag, align 8, !tbaa !115
  store ptr %i.ci, ptr %i.af, align 8, !tbaa !81
  %.pre477 = load ptr, ptr %i.ae, align 8, !tbaa !116
  %.pre478 = load ptr, ptr %i.ac, align 8, !tbaa !80
  %i.cj = ptrtoint ptr %i.ci to i64
  br label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPKiS1_EEvEEvT_S8_.exit

bb.p:                                             ; preds = %.preheader282, %_ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_.exit
  %i.ck = phi i32 [ %i.bi, %.preheader282 ], [ %i.dj, %_ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_.exit ]
  %indvars.iv = phi i64 [ 0, %.preheader282 ], [ %indvars.iv.next, %_ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_.exit ] ; 3 uses
  %.sroa.14.0361 = phi ptr [ null, %.preheader282 ], [ %.sroa.14.1, %_ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_.exit ] ; 5 uses
  %.sroa.11.0360 = phi ptr [ null, %.preheader282 ], [ %.sroa.11.1, %_ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_.exit ] ; 3 uses
  %.sroa.0243.0359 = phi ptr [ null, %.preheader282 ], [ %.sroa.0243.1, %_ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_.exit ] ; 7 uses
  %i.cl = load ptr, ptr %i.ad, align 8, !tbaa !120 ; 2 uses
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %indvars.iv457
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !82
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv
  %i.cp = load double, ptr %i.co, align 8, !tbaa !88
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %indvars.iv454
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !82
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !88
  %i.cu = fsub double %i.cp, %i.ct                ; 2 uses
  %.not.i = icmp eq ptr %.sroa.11.0360, %.sroa.14.0361
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store double %i.cu, ptr %.sroa.11.0360, align 8, !tbaa !88
  br label %_ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_.exit

bb.r:                                             ; preds = %bb.p
  %i.cv = ptrtoint ptr %.sroa.14.0361 to i64
  %i.cw = ptrtoint ptr %.sroa.0243.0359 to i64
  %i.cx = sub i64 %i.cv, %i.cw                    ; 6 uses
  %i.cy = icmp eq i64 %i.cx, 9223372036854775800
  br i1 %i.cy, label %bb.s, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #32
          to label %.noexc153 unwind label %.loopexit.split-lp284

.noexc153:                                        ; preds = %bb.s
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.r
  %i.cz = ashr exact i64 %i.cx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cz, i64 1)
  %i.da = add nsw i64 %.sroa.speculated.i.i.i, %i.cz ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.cz
  %i.dc = call i64 @llvm.umin.i64(i64 %i.da, i64 1152921504606846975)
  %i.dd = select i1 %i.db, i64 1152921504606846975, i64 %i.dc ; 3 uses
  %.not.i.i.i152 = icmp ne i64 %i.dd, 0
  call void @llvm.assume(i1 %.not.i.i.i152)
  %i.de = shl nuw nsw i64 %i.dd, 3
  %i.df = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #30
          to label %.noexc154 unwind label %.loopexit283 ; 4 uses

.noexc154:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 %i.cx ; 2 uses
  store double %i.cu, ptr %i.dg, align 8, !tbaa !88
  %i.dh = icmp sgt i64 %i.cx, 0
  br i1 %i.dh, label %bb.t, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

bb.t:                                             ; preds = %.noexc154
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.df, ptr align 8 %.sroa.0243.0359, i64 %i.cx, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i: ; preds = %bb.t, %.noexc154
  %.not.i17.i.i = icmp eq ptr %.sroa.0243.0359, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0243.0359, i64 noundef %i.cx) #31
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i: ; preds = %bb.u, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dd
  %.pre = load i32, ptr %i.f, align 8, !tbaa !79
  br label %_ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_.exit

_ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_.exit: ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, %bb.q
  %i.dj = phi i32 [ %.pre, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ], [ %i.ck, %bb.q ] ; 2 uses
  %.sroa.0243.1 = phi ptr [ %i.df, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ], [ %.sroa.0243.0359, %bb.q ] ; 12 uses
  %.pn274 = phi ptr [ %i.dg, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ], [ %.sroa.11.0360, %bb.q ]
  %.sroa.14.1 = phi ptr [ %i.di, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ], [ %.sroa.14.0361, %bb.q ] ; 3 uses
  %.sroa.11.1 = getelementptr inbounds nuw i8, ptr %.pn274, i64 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dk = sext i32 %i.dj to i64
  %i.dl = icmp slt i64 %indvars.iv.next, %i.dk
  br i1 %i.dl, label %bb.p, label %._crit_edge, !llvm.loop !394

.loopexit283:                                     ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit285 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

.loopexit.split-lp284:                            ; preds = %bb.s
  %lpad.loopexit.split-lp286 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPKiS1_EEvEEvT_S8_.exit: ; preds = %._crit_edge, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i
  %i.dm = phi ptr [ %i.ca, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ null, %._crit_edge ] ; 2 uses
  %i.dn = phi ptr [ %.pre478, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %i.bv, %._crit_edge ]
  %i.do = phi ptr [ %.pre477, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %i.bt, %._crit_edge ]
  %i.dp = phi i64 [ %i.cj, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ 0, %._crit_edge ]
  %i.dq = sext i32 %.0131390 to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.dq ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv454
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !117
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.du
  %i.dw = ptrtoint ptr %i.dm to i64
  %i.dx = sub i64 %i.dp, %i.dw
  %i.dy = getelementptr inbounds i8, ptr %i.dm, i64 %i.dx
  invoke void @_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEvNS4_IPiS1_EET_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %i.dy, ptr %i.dr, ptr %i.dv)
          to label %.preheader280 unwind label %bb.y

.preheader280:                                    ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPKiS1_EEvEEvT_S8_.exit
  %i.dz = load ptr, ptr %i.ag, align 8, !tbaa !115 ; 2 uses
  %i.ea = load ptr, ptr %8, align 8, !tbaa !80    ; 2 uses
  %.not = icmp eq ptr %i.dz, %i.ea
  br i1 %.not, label %._crit_edge375, label %.lr.ph374

._crit_edge375:                                   ; preds = %_ZNSt6vectorISt4pairIidESaIS1_EE9push_backEOS1_.exit, %.preheader280
  %.sroa.0214.0.lcssa = phi ptr [ null, %.preheader280 ], [ %.sroa.0214.1, %_ZNSt6vectorISt4pairIidESaIS1_EE9push_backEOS1_.exit ] ; 12 uses
  %.sroa.17.0.lcssa = phi ptr [ null, %.preheader280 ], [ %.sroa.17.1, %_ZNSt6vectorISt4pairIidESaIS1_EE9push_backEOS1_.exit ] ; 5 uses
  %.sroa.24.0.lcssa = phi ptr [ null, %.preheader280 ], [ %.sroa.24.1, %_ZNSt6vectorISt4pairIidESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.eb = call i32 @__kmpc_global_thread_num(ptr nonnull @3) ; 2 uses
  store ptr %.sroa.0214.0.lcssa, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.ec = ptrtoint ptr %.sroa.17.0.lcssa to i64
  %i.ed = ptrtoint ptr %.sroa.0214.0.lcssa to i64 ; 2 uses
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = ashr exact i64 %i.ee, 4                 ; 6 uses
  store i64 %i.ef, ptr %i.a, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.eg = invoke i32 @OMP_NUM_THREADS()
          to label %.noexc157 unwind label %.loopexit293 ; 2 uses

.noexc157:                                        ; preds = %._crit_edge375
  %i.eh = icmp ult i64 %i.ef, 1025
  %i.ei = icmp slt i32 %i.eg, 2
  %or.cond.i.i = select i1 %i.eh, i1 true, i1 %i.ei
  br i1 %or.cond.i.i, label %bb.v, label %bb.x

bb.v:                                             ; preds = %.noexc157
  %.not.i.i.i.i156 = icmp eq ptr %.sroa.0214.0.lcssa, %.sroa.17.0.lcssa
  br i1 %.not.i.i.i.i156, label %bb.af, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ej = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ef, i1 true)
  %i.ek = shl nuw nsw i64 %i.ej, 1
  %i.el = xor i64 %i.ek, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIidESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNK8LightGBM11AucMuMetric4EvalEPKdPKNSB_17ObjectiveFunctionEEUlS3_S3_E_EEEvT_SK_T0_T1_(ptr %.sroa.0214.0.lcssa, ptr %.sroa.17.0.lcssa, i64 noundef %i.el, ptr nonnull %1)
          to label %.noexc158 unwind label %.loopexit293

.noexc158:                                        ; preds = %bb.w
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM11AucMuMetric4EvalEPKdPKNSB_17ObjectiveFunctionEEUlS3_S3_E_EEEvT_SK_T0_(ptr %.sroa.0214.0.lcssa, ptr %.sroa.17.0.lcssa, ptr nonnull %1)
          to label %bb.af unwind label %.loopexit293

bb.x:                                             ; preds = %.noexc157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.em = zext nneg i32 %i.eg to i64              ; 2 uses
  %i.en = add nsw i64 %i.ef, -1                   ; 2 uses
  %i.eo = add nsw i64 %i.en, %i.em
  %i.ep = udiv i64 %i.eo, %i.em
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ep, i64 1024) ; 3 uses
  store i64 %.sroa.speculated.i.i, ptr %i.c, align 8, !tbaa !41
  %i.eq = add i64 %.sroa.speculated.i.i, %i.en
  %i.er = udiv i64 %i.eq, %.sroa.speculated.i.i
  %i.es = trunc i64 %i.er to i32                  ; 2 uses
  store i32 %i.es, ptr %i.b, align 4, !tbaa !117
  call void @__kmpc_push_num_threads(ptr nonnull @3, i32 %i.eb, i32 %i.es)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @3, i32 5, ptr nonnull @_ZN8LightGBM6CommonL12ParallelSortIN9__gnu_cxx17__normal_iteratorIPSt4pairIidESt6vectorIS5_SaIS5_EEEEZNKS_11AucMuMetric4EvalEPKdPKNS_17ObjectiveFunctionEEUlS5_S5_E_S5_EEvT_SI_T0_PT1_.omp_outlined, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %i.a, ptr nonnull %4, ptr nonnull %5)
  %i.et = load i64, ptr %i.a, align 8, !tbaa !41  ; 7 uses
  %i.eu = icmp ugt i64 %i.et, 576460752303423487
  br i1 %i.eu, label %.noexc.i.i, label %_ZNSt6vectorISt4pairIidESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i.i

.noexc.i.i:                                       ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #32
          to label %.noexc160 unwind label %.loopexit.split-lp294
end_hunk_0
