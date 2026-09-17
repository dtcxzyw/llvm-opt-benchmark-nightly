Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/flip?download=true
inline.NumInlined: 376
inline.NumDeleted: 124
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN11flip_detail5image24generateDetectionFiltersEfb:bb.a
  %exitcond165.not = icmp eq i64 %indvars.iv.next162, %wide.trip.count164
  br i1 %exitcond165.not, label %._crit_edge136.split, label %.preheader, !llvm.loop !51

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %scalar.ph ], [ %indvars.iv155.ph, %scalar.ph.preheader ] ; 2 uses
  %i.el = getelementptr [12 x i8], ptr %i.db, i64 %indvars.iv155 ; 3 uses
  %i.em = load <2 x float>, ptr %i.el, align 4, !tbaa !15 ; 2 uses
  %i.en = fcmp ogt <2 x float> %i.em, zeroinitializer
  %i.eo = select <2 x i1> %i.en, <2 x float> %i.bq, <2 x float> %i.br
  %i.ep = fdiv <2 x float> %i.em, %i.eo
  store <2 x float> %i.ep, ptr %i.el, align 4, !tbaa !15
  %.sroa.5.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store float 0.000000e+00, ptr %.sroa.5.0..sroa_idx84, align 4, !tbaa !15
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %exitcond160.not = icmp eq i64 %indvars.iv.next156, %wide.trip.count164
  br i1 %exitcond160.not, label %._crit_edge, label %scalar.ph, !llvm.loop !52
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11flip_detail5image24computeFeatureDifferenceERS0_S1_f(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, float noundef %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.flip_detail::color3", align 8 ; 5 uses
  %5 = alloca %"class.flip_detail::color3", align 8 ; 5 uses
  %6 = alloca %"class.flip_detail::color3", align 8 ; 5 uses
  %7 = alloca %"class.flip_detail::color3", align 8 ; 5 uses
  %8 = alloca %"class.flip_detail::color3", align 8 ; 5 uses
  %9 = alloca %"class.flip_detail::image", align 8 ; 9 uses
  %10 = alloca %"class.flip_detail::image", align 8 ; 9 uses
  %11 = alloca %"class.flip_detail::image", align 8 ; 10 uses
  %12 = alloca %"class.flip_detail::image", align 8 ; 10 uses
  %13 = alloca %"class.flip_detail::image", align 8 ; 10 uses
  %14 = alloca %"class.flip_detail::image", align 8 ; 10 uses
  %15 = alloca %"class.flip_detail::image", align 8 ; 11 uses
  %16 = alloca %"class.flip_detail::image", align 8 ; 11 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !24   ; 2 uses
  store i32 %i.a, ptr %0, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  store i32 %i.c, ptr %i.d, align 4, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = mul nsw i32 %i.c, %i.a
  %i.g = sext i32 %i.f to i64                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  store <2 x float> zeroinitializer, ptr %8, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8
  store float 0.000000e+00, ptr %i.h, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25   ; 3 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = sdiv exact i64 %i.n, 12                  ; 3 uses
  %i.p = icmp ult i64 %i.o, %i.g
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = sub nuw nsw i64 %i.g, %i.o
  call void @_ZNSt6vectorIN11flip_detail6color3ESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr %i.j, i64 noundef %i.q, ptr noundef nonnull align 4 dereferenceable(12) %8)
  br label %_ZN11flip_detail5image8allocateEii.exit

bb.c:                                             ; preds = %bb.a
  %i.r = icmp ugt i64 %i.o, %i.g
  br i1 %i.r, label %bb.d, label %_ZN11flip_detail5image8allocateEii.exit

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %i.g ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.s
  br i1 %.not.i.i.i, label %_ZN11flip_detail5image8allocateEii.exit, label %_ZSt8_DestroyIPN11flip_detail6color3ES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN11flip_detail6color3ES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %bb.d
  store ptr %i.s, ptr %i.i, align 8, !tbaa !25
  br label %_ZN11flip_detail5image8allocateEii.exit

_ZN11flip_detail5image8allocateEii.exit:          ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN11flip_detail6color3ES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.t = load i64, ptr %1, align 8
  store i64 %i.t, ptr %9, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !25   ; 3 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !26   ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN11flip_detail5image8allocateEii.exit
  %i.ac = sdiv exact i64 %i.ab, 12
  %i.ad = icmp ugt i64 %i.ac, 768614336404564650
  br i1 %i.ad, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN11flip_detail6color3EE8allocateEmPKv.exit.i.i.i.i.i, !prof !31

.noexc.i.i.i:                                     ; preds = %bb.e
  call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

_ZNSt15__new_allocatorIN11flip_detail6color3EE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.e
  %i.ae = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #19
  %.pre = load ptr, ptr %i.v, align 8, !tbaa !30
  %.pre187 = load ptr, ptr %i.w, align 8, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt15__new_allocatorIN11flip_detail6color3EE8allocateEmPKv.exit.i.i.i.i.i, %_ZN11flip_detail5image8allocateEii.exit
  %i.af = phi ptr [ %i.x, %_ZN11flip_detail5image8allocateEii.exit ], [ %.pre187, %_ZNSt15__new_allocatorIN11flip_detail6color3EE8allocateEmPKv.exit.i.i.i.i.i ] ; 2 uses
  %i.ag = phi ptr [ %i.y, %_ZN11flip_detail5image8allocateEii.exit ], [ %.pre, %_ZNSt15__new_allocatorIN11flip_detail6color3EE8allocateEmPKv.exit.i.i.i.i.i ] ; 2 uses
  %i.ah = phi ptr [ null, %_ZN11flip_detail5image8allocateEii.exit ], [ %i.ae, %_ZNSt15__new_allocatorIN11flip_detail6color3EE8allocateEmPKv.exit.i.i.i.i.i ] ; 16 uses
  store ptr %i.ah, ptr %i.u, align 8, !tbaa !26
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ab
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !32
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.ag, %i.af
  br i1 %.not7.i.i.i.i.i.i, label %_ZN11flip_detail5imageC2ERKS0_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %i.ah, %bb.f ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %i.ag, %bb.f ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.09.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.04.08.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !33
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.al, %i.af
  br i1 %.not.i.i.i.i.i.i, label %_ZN11flip_detail5imageC2ERKS0_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZN11flip_detail5imageC2ERKS0_.exit:              ; preds = %.lr.ph.i.i.i.i.i.i, %bb.f
  %i.an = phi ptr [ %i.ah, %bb.f ], [ %i.am, %.lr.ph.i.i.i.i.i.i ] ; 4 uses
  store ptr %i.an, ptr %i.ai, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.ao = load i64, ptr %2, align 8
  store i64 %i.ao, ptr %10, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !25 ; 3 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !26 ; 3 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 5 uses
  %.not.i.i.i.i.i52 = icmp eq ptr %i.as, %i.at
  br i1 %.not.i.i.i.i.i52, label %.noexc61, label %bb.g

bb.g:                                             ; preds = %_ZN11flip_detail5imageC2ERKS0_.exit
  %i.ax = sdiv exact i64 %i.aw, 12
  %i.ay = icmp ugt i64 %i.ax, 768614336404564650
  br i1 %i.ay, label %.noexc.i.i.i60, label %_ZNSt15__new_allocatorIN11flip_detail6color3EE8allocateEmPKv.exit.i.i.i.i.i53, !prof !31

.noexc.i.i.i60:                                   ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #18
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i.i60
  unreachable

_ZNSt15__new_allocatorIN11flip_detail6color3EE8allocateEmPKv.exit.i.i.i.i.i53: ; preds = %bb.g
  %i.az = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #19
          to label %_ZNSt15__new_allocatorIN11flip_detail6color3EE8allocateEmPKv.exit.i.i.i.i.i53..noexc61_crit_edge unwind label %bb.h

_ZNSt15__new_allocatorIN11flip_detail6color3EE8allocateEmPKv.exit.i.i.i.i.i53..noexc61_crit_edge: ; preds = %_ZNSt15__new_allocatorIN11flip_detail6color3EE8allocateEmPKv.exit.i.i.i.i.i53
  %.pre188 = load ptr, ptr %i.aq, align 8, !tbaa !30
  %.pre189 = load ptr, ptr %i.ar, align 8, !tbaa !30
  br label %.noexc61

.noexc61:                                         ; preds = %_ZNSt15__new_allocatorIN11flip_detail6color3EE8allocateEmPKv.exit.i.i.i.i.i53..noexc61_crit_edge, %_ZN11flip_detail5imageC2ERKS0_.exit
  %i.ba = phi ptr [ %i.as, %_ZN11flip_detail5imageC2ERKS0_.exit ], [ %.pre189, %_ZNSt15__new_allocatorIN11flip_detail6color3EE8allocateEmPKv.exit.i.i.i.i.i53..noexc61_crit_edge ] ; 2 uses
  %i.bb = phi ptr [ %i.at, %_ZN11flip_detail5imageC2ERKS0_.exit ], [ %.pre188, %_ZNSt15__new_allocatorIN11flip_detail6color3EE8allocateEmPKv.exit.i.i.i.i.i53..noexc61_crit_edge ] ; 2 uses
  %i.bc = phi ptr [ null, %_ZN11flip_detail5imageC2ERKS0_.exit ], [ %i.az, %_ZNSt15__new_allocatorIN11flip_detail6color3EE8allocateEmPKv.exit.i.i.i.i.i53..noexc61_crit_edge ] ; 16 uses
  store ptr %i.bc, ptr %i.ap, align 8, !tbaa !26
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.aw
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !32
  %.not7.i.i.i.i.i.i54 = icmp eq ptr %i.bb, %i.ba
  br i1 %.not7.i.i.i.i.i.i54, label %.loopexit, label %.lr.ph.i.i.i.i.i.i55

.lr.ph.i.i.i.i.i.i55:                             ; preds = %.noexc61, %.lr.ph.i.i.i.i.i.i55
  %.09.i.i.i.i.i.i56 = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i55 ], [ %i.bc, %.noexc61 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i57 = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i55 ], [ %i.bb, %.noexc61 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.09.i.i.i.i.i.i56, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.04.08.i.i.i.i.i.i57, i64 12, i1 false), !tbaa.struct !33
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i57, i64 12 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i56, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i58 = icmp eq ptr %i.bg, %i.ba
  br i1 %.not.i.i.i.i.i.i58, label %.loopexit, label %.lr.ph.i.i.i.i.i.i55, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i55, %.noexc61
  %i.bi = phi ptr [ %i.bc, %.noexc61 ], [ %i.bh, %.lr.ph.i.i.i.i.i.i55 ] ; 4 uses
  store ptr %i.bi, ptr %i.bd, align 8, !tbaa !25
  %.not168 = icmp eq ptr %i.ah, %i.an
  br i1 %.not168, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.loopexit
  %i.bj = ptrtoaddr ptr %i.an to i64
  %i.bk = ptrtoaddr ptr %i.ah to i64
  %i.bl = add i64 %i.bj, -12
  %i.bm = sub i64 %i.bl, %i.bk                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.bm, 48
  br i1 %min.iters.check, label %.lr.ph.preheader289, label %vector.ph

.lr.ph.preheader289.loopexit:                     ; preds = %vector.body
  %17 = mul i64 %n.vec, 12
  %18 = getelementptr i8, ptr %i.ah, i64 %17
  br label %.lr.ph.preheader289

.lr.ph.preheader289:                              ; preds = %.lr.ph.preheader289.loopexit, %.lr.ph.preheader
  %.sroa.0160.0169.ph = phi ptr [ %i.ah, %.lr.ph.preheader ], [ %18, %.lr.ph.preheader289.loopexit ]
  br label %.lr.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.bn = udiv i64 %i.bm, 12
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %i.bp = and i64 %i.bo, 3                        ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  %i.br = select i1 %i.bq, i64 4, i64 %i.bp
  %n.vec = sub nsw i64 %i.bo, %i.br               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bs = mul i64 %index, 12                      ; 4 uses
  %next.gep = getelementptr i8, ptr %i.ah, i64 %i.bs ; 2 uses
  %i.bt = getelementptr i8, ptr %i.ah, i64 %i.bs
  %next.gep271 = getelementptr i8, ptr %i.bt, i64 12
  %i.bu = getelementptr i8, ptr %i.ah, i64 %i.bs
  %next.gep272 = getelementptr i8, ptr %i.bu, i64 24
  %i.bv = getelementptr i8, ptr %i.ah, i64 %i.bs
  %next.gep273 = getelementptr i8, ptr %i.bv, i64 36
  %i.bw = load float, ptr %next.gep, align 4, !tbaa !12
  %i.bx = load float, ptr %next.gep271, align 4, !tbaa !12
  %i.by = load float, ptr %next.gep272, align 4, !tbaa !12
  %i.bz = load float, ptr %next.gep273, align 4, !tbaa !12
  %i.ca = insertelement <4 x float> poison, float %i.bw, i64 0
  %i.cb = insertelement <4 x float> %i.ca, float %i.bx, i64 1
  %i.cc = insertelement <4 x float> %i.cb, float %i.by, i64 2
  %i.cd = insertelement <4 x float> %i.cc, float %i.bz, i64 3
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cf = fadd <8 x float> %i.ce, splat (float 1.600000e+01)
  %i.cg = fdiv <8 x float> %i.cf, splat (float 1.160000e+02)
  %interleaved.vec = shufflevector <8 x float> %i.cg, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison>, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !15
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %.lr.ph.preheader289.loopexit, label %vector.body, !llvm.loop !53

._crit_edge:                                      ; preds = %.lr.ph, %.loopexit
  %.not163170 = icmp eq ptr %i.bc, %i.bi
  br i1 %.not163170, label %._crit_edge174, label %.lr.ph173.preheader

.lr.ph173.preheader:                              ; preds = %._crit_edge
  %i.ci = ptrtoaddr ptr %i.bi to i64
  %i.cj = ptrtoaddr ptr %i.bc to i64
  %i.ck = add i64 %i.ci, -12
  %i.cl = sub i64 %i.ck, %i.cj                    ; 2 uses
  %min.iters.check275 = icmp ult i64 %i.cl, 48
  br i1 %min.iters.check275, label %.lr.ph173.preheader288, label %vector.ph276

.lr.ph173.preheader288.loopexit:                  ; preds = %vector.body278
  %19 = mul i64 %n.vec277, 12
  %20 = getelementptr i8, ptr %i.bc, i64 %19
  br label %.lr.ph173.preheader288

.lr.ph173.preheader288:                           ; preds = %.lr.ph173.preheader288.loopexit, %.lr.ph173.preheader
  %.sroa.0153.0171.ph = phi ptr [ %i.bc, %.lr.ph173.preheader ], [ %20, %.lr.ph173.preheader288.loopexit ]
  br label %.lr.ph173

vector.ph276:                                     ; preds = %.lr.ph173.preheader
  %i.cm = udiv i64 %i.cl, 12
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 2 uses
  %i.co = and i64 %i.cn, 3                        ; 2 uses
  %i.cp = icmp eq i64 %i.co, 0
  %i.cq = select i1 %i.cp, i64 4, i64 %i.co
  %n.vec277 = sub nsw i64 %i.cn, %i.cq            ; 2 uses
  br label %vector.body278

vector.body278:                                   ; preds = %vector.body278, %vector.ph276
  %index279 = phi i64 [ 0, %vector.ph276 ], [ %index.next285, %vector.body278 ] ; 2 uses
  %i.cr = mul i64 %index279, 12                   ; 4 uses
  %next.gep280 = getelementptr i8, ptr %i.bc, i64 %i.cr ; 2 uses
  %i.cs = getelementptr i8, ptr %i.bc, i64 %i.cr
  %next.gep281 = getelementptr i8, ptr %i.cs, i64 12
  %i.ct = getelementptr i8, ptr %i.bc, i64 %i.cr
  %next.gep282 = getelementptr i8, ptr %i.ct, i64 24
  %i.cu = getelementptr i8, ptr %i.bc, i64 %i.cr
  %next.gep283 = getelementptr i8, ptr %i.cu, i64 36
  %i.cv = load float, ptr %next.gep280, align 4, !tbaa !12
  %i.cw = load float, ptr %next.gep281, align 4, !tbaa !12
  %i.cx = load float, ptr %next.gep282, align 4, !tbaa !12
  %i.cy = load float, ptr %next.gep283, align 4, !tbaa !12
  %i.cz = insertelement <4 x float> poison, float %i.cv, i64 0
  %i.da = insertelement <4 x float> %i.cz, float %i.cw, i64 1
  %i.db = insertelement <4 x float> %i.da, float %i.cx, i64 2
  %i.dc = insertelement <4 x float> %i.db, float %i.cy, i64 3
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.de = fadd <8 x float> %i.dd, splat (float 1.600000e+01)
  %i.df = fdiv <8 x float> %i.de, splat (float 1.160000e+02)
  %interleaved.vec284 = shufflevector <8 x float> %i.df, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison>, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec284, ptr %next.gep280, align 4, !tbaa !15
  %index.next285 = add nuw i64 %index279, 4       ; 2 uses
  %i.dg = icmp eq i64 %index.next285, %n.vec277
  br i1 %i.dg, label %.lr.ph173.preheader288.loopexit, label %vector.body278, !llvm.loop !54

bb.h:                                             ; preds = %_ZNSt15__new_allocatorIN11flip_detail6color3EE8allocateEmPKv.exit.i.i.i.i.i53, %.noexc.i.i.i60
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11flip_detail5imageD2Ev.exit123

.lr.ph:                                           ; preds = %.lr.ph.preheader289, %.lr.ph
  %.sroa.0160.0169 = phi ptr [ %i.dl, %.lr.ph ], [ %.sroa.0160.0169.ph, %.lr.ph.preheader289 ] ; 5 uses
  %i.di = load float, ptr %.sroa.0160.0169, align 4, !tbaa !12
  %i.dj = fadd float %i.di, 1.600000e+01
  %i.dk = fdiv float %i.dj, 1.160000e+02          ; 2 uses
  store float %i.dk, ptr %.sroa.0160.0169, align 4, !tbaa !15
  %.sroa.4157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0160.0169, i64 4
  store float %i.dk, ptr %.sroa.4157.0..sroa_idx, align 4, !tbaa !15
  %.sroa.5158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0160.0169, i64 8
  store float 0.000000e+00, ptr %.sroa.5158.0..sroa_idx, align 4, !tbaa !15
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0160.0169, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.dl, %i.an
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !55

._crit_edge174:                                   ; preds = %.lr.ph173, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.dm = load i32, ptr %0, align 8, !tbaa !23    ; 3 uses
  %i.dn = load i32, ptr %i.d, align 4, !tbaa !24  ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.dp = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, i8 0, i64 24, i1 false)
  store i32 %i.dm, ptr %11, align 8, !tbaa !23
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !24
  %i.dq = mul nsw i32 %i.dn, %i.dm                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  store <2 x float> zeroinitializer, ptr %7, align 8, !tbaa !15
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float 0.000000e+00, ptr %i.dr, align 8, !tbaa !14
  %.not.i = icmp eq i32 %i.dq, 0
  br i1 %.not.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %._crit_edge174
  %i.ds = sext i32 %i.dq to i64
  invoke void @_ZNSt6vectorIN11flip_detail6color3ESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr null, i64 noundef %i.ds, ptr noundef nonnull align 4 dereferenceable(12) %7)
          to label %._crit_edge190 unwind label %bb.j

._crit_edge190:                                   ; preds = %bb.i
  %.pre191 = load i32, ptr %0, align 8, !tbaa !23 ; 2 uses
  %.pre192 = load i32, ptr %i.d, align 4, !tbaa !24 ; 2 uses
  %.pre199 = mul nsw i32 %.pre192, %.pre191
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load ptr, ptr %i.dp, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i4.i = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i4.i, label %.body, label %.body.sink.split

.lr.ph173:                                        ; preds = %.lr.ph173.preheader288, %.lr.ph173
  %.sroa.0153.0171 = phi ptr [ %i.dy, %.lr.ph173 ], [ %.sroa.0153.0171.ph, %.lr.ph173.preheader288 ] ; 5 uses
  %i.dv = load float, ptr %.sroa.0153.0171, align 4, !tbaa !12
  %i.dw = fadd float %i.dv, 1.600000e+01
  %i.dx = fdiv float %i.dw, 1.160000e+02          ; 2 uses
  store float %i.dx, ptr %.sroa.0153.0171, align 4, !tbaa !15
  %.sroa.4150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0153.0171, i64 4
  store float %i.dx, ptr %.sroa.4150.0..sroa_idx, align 4, !tbaa !15
  %.sroa.5151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0153.0171, i64 8
  store float 0.000000e+00, ptr %.sroa.5151.0..sroa_idx, align 4, !tbaa !15
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0153.0171, i64 12 ; 2 uses
  %.not163 = icmp eq ptr %i.dy, %i.bi
  br i1 %.not163, label %._crit_edge174, label %.lr.ph173, !llvm.loop !56

bb.k:                                             ; preds = %._crit_edge190, %._crit_edge174
  %.pre-phi = phi i32 [ %.pre199, %._crit_edge190 ], [ 0, %._crit_edge174 ] ; 2 uses
  %i.dz = phi i32 [ %.pre192, %._crit_edge190 ], [ %i.dn, %._crit_edge174 ] ; 2 uses
  %i.ea = phi i32 [ %.pre191, %._crit_edge190 ], [ %i.dm, %._crit_edge174 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.eb = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.ec = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, i8 0, i64 24, i1 false)
  store i32 %i.ea, ptr %12, align 8, !tbaa !23
  store i32 %i.dz, ptr %i.eb, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !15
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float 0.000000e+00, ptr %i.ed, align 8, !tbaa !14
  %.not.i63 = icmp eq i32 %.pre-phi, 0
  br i1 %.not.i63, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ee = sext i32 %.pre-phi to i64
  invoke void @_ZNSt6vectorIN11flip_detail6color3ESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, ptr null, i64 noundef %i.ee, ptr noundef nonnull align 4 dereferenceable(12) %6)
          to label %._crit_edge193 unwind label %bb.m

._crit_edge193:                                   ; preds = %bb.l
  %.pre194 = load i32, ptr %0, align 8, !tbaa !23 ; 2 uses
  %.pre195 = load i32, ptr %i.d, align 4, !tbaa !24 ; 2 uses
  %.pre200 = mul nsw i32 %.pre195, %.pre194
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eg = load ptr, ptr %i.ec, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i4.i64 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i4.i64, label %.body66, label %.body66.sink.split

bb.n:                                             ; preds = %._crit_edge193, %bb.k
  %.pre-phi201 = phi i32 [ %.pre200, %._crit_edge193 ], [ 0, %bb.k ] ; 2 uses
  %i.eh = phi i32 [ %.pre195, %._crit_edge193 ], [ %i.dz, %bb.k ] ; 2 uses
  %i.ei = phi i32 [ %.pre194, %._crit_edge193 ], [ %i.ea, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.ej = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.ek = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, i8 0, i64 24, i1 false)
  store i32 %i.ei, ptr %13, align 8, !tbaa !23
  store i32 %i.eh, ptr %i.ej, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store <2 x float> zeroinitializer, ptr %5, align 8, !tbaa !15
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float 0.000000e+00, ptr %i.el, align 8, !tbaa !14
  %.not.i69 = icmp eq i32 %.pre-phi201, 0
  br i1 %.not.i69, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.em = sext i32 %.pre-phi201 to i64
  invoke void @_ZNSt6vectorIN11flip_detail6color3ESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, ptr null, i64 noundef %i.em, ptr noundef nonnull align 4 dereferenceable(12) %5)
          to label %._crit_edge196 unwind label %bb.p

._crit_edge196:                                   ; preds = %bb.o
  %.pre197 = load i32, ptr %0, align 8, !tbaa !23 ; 2 uses
  %.pre198 = load i32, ptr %i.d, align 4, !tbaa !24 ; 2 uses
  %.pre202 = mul nsw i32 %.pre198, %.pre197
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eo = load ptr, ptr %i.ek, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i4.i70 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i4.i70, label %.body72, label %.body72.sink.split

bb.q:                                             ; preds = %._crit_edge196, %bb.n
  %.pre-phi203 = phi i32 [ %.pre202, %._crit_edge196 ], [ 0, %bb.n ] ; 2 uses
  %i.ep = phi i32 [ %.pre198, %._crit_edge196 ], [ %i.eh, %bb.n ]
  %i.eq = phi i32 [ %.pre197, %._crit_edge196 ], [ %i.ei, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %i.er = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.es = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.es, i8 0, i64 24, i1 false)
  store i32 %i.eq, ptr %14, align 8, !tbaa !23
  store i32 %i.ep, ptr %i.er, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !15
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float 0.000000e+00, ptr %i.et, align 8, !tbaa !14
  %.not.i75 = icmp eq i32 %.pre-phi203, 0
  br i1 %.not.i75, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eu = sext i32 %.pre-phi203 to i64
  invoke void @_ZNSt6vectorIN11flip_detail6color3ESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.es, ptr null, i64 noundef %i.eu, ptr noundef nonnull align 4 dereferenceable(12) %4)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ev = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ew = load ptr, ptr %i.es, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i4.i76 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i4.i76, label %.body78, label %.body78.sink.split

bb.t:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, i8 0, i64 32, i1 false)
  invoke void @_ZN11flip_detail5image24generateDetectionFiltersEfb(ptr noundef nonnull align 8 dereferenceable(32) %15, float noundef %3, i1 noundef zeroext false)
          to label %bb.u unwind label %bb.ae

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN11flip_detail5image24generateDetectionFiltersEfb(ptr noundef nonnull align 8 dereferenceable(32) %16, float noundef %3, i1 noundef zeroext true)
          to label %bb.v unwind label %bb.ae

bb.v:                                             ; preds = %bb.u
  call void @_ZN11flip_detail5image8convolveERS0_S1_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %15)
  call void @_ZN11flip_detail5image8convolveERS0_S1_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %15)
  call void @_ZN11flip_detail5image8convolveERS0_S1_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %16)
  call void @_ZN11flip_detail5image8convolveERS0_S1_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %16)
  %i.ex = load i32, ptr %i.d, align 4, !tbaa !24  ; 2 uses
  %i.ey = icmp sgt i32 %i.ex, 0
  br i1 %i.ey, label %.preheader.lr.ph, label %._crit_edge179.split

.preheader.lr.ph:                                 ; preds = %bb.v
  %i.ez = load i32, ptr %0, align 8, !tbaa !23    ; 3 uses
  %i.fa = icmp sgt i32 %i.ez, 0
  %i.fb = load ptr, ptr %i.dp, align 8
  %i.fc = load ptr, ptr %i.ek, align 8
  %i.fd = load ptr, ptr %i.ec, align 8
  %i.fe = load ptr, ptr %i.es, align 8
end_hunk_0
