Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/rocket_landing_mpc?download=true
inline.NumInlined: 2427
inline.NumDeleted: 1235
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi0EEELi0ELb0EdNS2_IdlLi1EEELb0ELi0EE3runEllRKS3_RKS4_Pdld:bb.a
  %i.gy = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gz = mul nsw i64 %.0183446, %.sroa.22.0.copyload ; 2 uses
  %i.ha = getelementptr [8 x i8], ptr %i.gj, i64 %i.gz
  %i.hb = load <2 x double>, ptr %i.ha, align 1, !tbaa !17
  %i.hc = fmul <2 x double> %i.hb, %i.gy
  %i.hd = fadd <2 x double> %.0395444, %i.hc      ; 2 uses
  %i.he = getelementptr [8 x i8], ptr %i.gk, i64 %i.gz
  %i.hf = load <2 x double>, ptr %i.he, align 1, !tbaa !17
  %i.hg = fmul <2 x double> %i.hf, %i.gy
  %i.hh = fadd <2 x double> %.0393445, %i.hg      ; 2 uses
  %i.hi = add nuw nsw i64 %.0183446, 1            ; 2 uses
  %i.hj = icmp slt i64 %i.hi, %.sroa.speculated
  br i1 %i.hj, label %bb.h, label %._crit_edge448, !llvm.loop !193

bb.i:                                             ; preds = %._crit_edge448, %bb.g
  %.3 = phi i64 [ %i.gt, %._crit_edge448 ], [ %.2, %bb.g ] ; 5 uses
  %i.hk = icmp slt i64 %.3, %i.e
  br i1 %i.hk, label %.lr.ph453, label %bb.k

.lr.ph453:                                        ; preds = %bb.i
  %i.hl = load ptr, ptr %3, align 8, !tbaa !63
  %i.hm = load i64, ptr %i.o, align 8, !tbaa !64
  %i.hn = getelementptr [8 x i8], ptr %.sroa.0336.0.copyload, i64 %.3
  br label %bb.j

._crit_edge454:                                   ; preds = %bb.j
  %i.ho = getelementptr inbounds [8 x i8], ptr %4, i64 %.3 ; 2 uses
  %i.hp = load <2 x double>, ptr %i.ho, align 1, !tbaa !17
  %i.hq = fmul <2 x double> %i.l, %i.ic
  %i.hr = fadd <2 x double> %i.hq, %i.hp
  store <2 x double> %i.hr, ptr %i.ho, align 1, !tbaa !17
  %i.hs = add nsw i64 %.3, 2
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph453, %bb.j
  %.0182452 = phi i64 [ %.0188462, %.lr.ph453 ], [ %i.id, %bb.j ] ; 3 uses
  %.0384451 = phi <2 x double> [ zeroinitializer, %.lr.ph453 ], [ %i.ic, %bb.j ]
  %i.ht = mul nsw i64 %i.hm, %.0182452
  %i.hu = getelementptr [8 x i8], ptr %i.hl, i64 %i.ht
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !35
  %i.hw = insertelement <2 x double> poison, double %i.hv, i64 0
  %i.hx = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hy = mul nsw i64 %.0182452, %.sroa.22.0.copyload
  %i.hz = getelementptr [8 x i8], ptr %i.hn, i64 %i.hy
  %i.ia = load <2 x double>, ptr %i.hz, align 1, !tbaa !17
  %i.ib = fmul <2 x double> %i.ia, %i.hx
  %i.ic = fadd <2 x double> %.0384451, %i.ib      ; 2 uses
  %i.id = add nuw nsw i64 %.0182452, 1            ; 2 uses
  %i.ie = icmp slt i64 %i.id, %.sroa.speculated
  br i1 %i.ie, label %bb.j, label %._crit_edge454, !llvm.loop !194

bb.k:                                             ; preds = %._crit_edge454, %bb.i
  %.4 = phi i64 [ %i.hs, %._crit_edge454 ], [ %.3, %bb.i ] ; 2 uses
  %i.if = icmp slt i64 %.4, %0
  br i1 %i.if, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.k
  %i.ig = load ptr, ptr %3, align 8, !tbaa !63
  %i.ih = load i64, ptr %i.o, align 8, !tbaa !64
  br label %.lr.ph458

.lr.ph458:                                        ; preds = %._crit_edge459, %.preheader.lr.ph
  %.5461 = phi i64 [ %.4, %.preheader.lr.ph ], [ %i.im, %._crit_edge459 ] ; 3 uses
  %i.ii = getelementptr [8 x i8], ptr %.sroa.0336.0.copyload, i64 %.5461
  br label %bb.l

._crit_edge459:                                   ; preds = %bb.l
  %i.ij = getelementptr inbounds [8 x i8], ptr %4, i64 %.5461 ; 2 uses
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !35
  %i.il = tail call double @llvm.fmuladd.f64(double %6, double %i.iu, double %i.ik)
  store double %i.il, ptr %i.ij, align 8, !tbaa !35
  %i.im = add nsw i64 %.5461, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.im, %0
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph458, !llvm.loop !195

bb.l:                                             ; preds = %.lr.ph458, %bb.l
  %.0457 = phi i64 [ %.0188462, %.lr.ph458 ], [ %i.iv, %bb.l ] ; 3 uses
  %.0181456 = phi double [ 0.000000e+00, %.lr.ph458 ], [ %i.iu, %bb.l ]
  %i.in = mul nsw i64 %.0457, %.sroa.22.0.copyload
  %i.io = getelementptr [8 x i8], ptr %i.ii, i64 %i.in
  %i.ip = mul nsw i64 %i.ih, %.0457
  %i.iq = getelementptr [8 x i8], ptr %i.ig, i64 %i.ip
  %i.ir = load double, ptr %i.io, align 8, !tbaa !35
  %i.is = load double, ptr %i.iq, align 8, !tbaa !35
  %i.it = fmul double %i.ir, %i.is
  %i.iu = fadd double %.0181456, %i.it            ; 2 uses
  %i.iv = add nuw nsw i64 %.0457, 1               ; 2 uses
  %i.iw = icmp slt i64 %i.iv, %.sroa.speculated
  br i1 %i.iw, label %bb.l, label %._crit_edge459, !llvm.loop !196
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #14

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_7ProductINS2_IdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi6ELi1ELi0ELi6ELi1EEELi1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !212, !nonnull !54, !align !55 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !213, !nonnull !54, !align !56 ; 15 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !26   ; 18 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !33
  %.not.i = icmp eq i64 %i.h, %i.f
  %.pre = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %.pre) #20
  %i.i = icmp sgt i64 %i.f, 0
  br i1 %i.i, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit.i

bb.c:                                             ; preds = %bb.b
  %i.j = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.j, label %.noexc, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i

.noexc:                                           ; preds = %bb.c
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !23
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i: ; preds = %bb.c
  %i.l = shl nuw i64 %i.f, 3
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #22 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.noexc12, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit.i

.noexc12:                                         ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !23
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i, %bb.b
  %.sink.i.i.i = phi ptr [ %i.m, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i ], [ null, %bb.b ] ; 2 uses
  store ptr %.sink.i.i.i, ptr %0, align 8, !tbaa !32
  store i64 %i.f, ptr %i.g, align 8, !tbaa !33
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit.i
  %i.p = phi ptr [ %.pre, %bb.a ], [ %.sink.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit.i ] ; 5 uses
  %i.q = sdiv i64 %i.f, 2                         ; 2 uses
  %i.r = shl nsw i64 %i.q, 1                      ; 7 uses
  %i.s = icmp sgt i64 %i.f, 1
  br i1 %i.s, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.t = getelementptr i8, ptr %i.c, i64 8
  %.idx.i.i.i.i.i.i.i.i = shl nsw i64 %i.f, 4
  %i.u = getelementptr i8, ptr %i.c, i64 16
  %.idx.i.i.i.i.i.i11.i = mul nuw nsw i64 %i.f, 24
  %i.v = getelementptr i8, ptr %i.c, i64 24
  %.idx.i.i.i.i.i.i = shl nsw i64 %i.f, 5
  %i.w = getelementptr i8, ptr %i.c, i64 32
  %.idx.i.i.i.i.i = mul nuw nsw i64 %i.f, 40
  %i.x = getelementptr i8, ptr %i.c, i64 40
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.d
  %i.y = icmp slt i64 %i.r, %i.f
  br i1 %i.y, label %.lr.ph.i.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_7ProductINS4_IdLin1ELin1ELi0ELin1ELin1EEENS4_IdLi6ELi1ELi0ELi6ELi1EEELi1EEEEENS0_9assign_opIddEELi0EEELi3ELi0EE3runERSE_.exit

.lr.ph.i.i:                                       ; preds = %._crit_edge.i
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !25, !noalias !214 ; 14 uses
  %i.aa = load i64, ptr %i.e, align 8, !tbaa !26  ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.idx.i.i.i.i.i.i.i = shl nsw i64 %i.aa, 4      ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.idx11.i.i.i.i.i.i.i = mul nsw i64 %i.aa, 24   ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %.idx12.i.i.i.i.i.i.i = shl nsw i64 %i.aa, 5    ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %.idx13.i.i.i.i.i.i.i = mul nsw i64 %i.aa, 40   ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.ag = sub i64 %i.f, %i.r                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.ag, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.ah = shl i64 %i.q, 4                         ; 7 uses
  %i.ai = getelementptr i8, ptr %i.p, i64 %i.ah   ; 7 uses
  %i.aj = shl i64 %i.f, 3                         ; 6 uses
  %i.ak = getelementptr i8, ptr %i.p, i64 %i.aj   ; 7 uses
  %i.al = getelementptr i8, ptr %i.z, i64 %.idx13.i.i.i.i.i.i.i
  %i.am = getelementptr i8, ptr %i.al, i64 %i.ah
  %i.an = getelementptr i8, ptr %i.z, i64 %.idx13.i.i.i.i.i.i.i
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.aj
  %3 = getelementptr i8, ptr %i.z, i64 %.idx12.i.i.i.i.i.i.i
  %4 = getelementptr i8, ptr %3, i64 %i.ah
  %i.ap = getelementptr i8, ptr %i.z, i64 %.idx12.i.i.i.i.i.i.i
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.aj
  %i.ar = getelementptr i8, ptr %i.z, i64 %.idx11.i.i.i.i.i.i.i
  %i.as = getelementptr i8, ptr %i.ar, i64 %i.ah
  %5 = getelementptr i8, ptr %i.z, i64 %.idx11.i.i.i.i.i.i.i
  %6 = getelementptr i8, ptr %5, i64 %i.aj
  %7 = getelementptr i8, ptr %i.z, i64 %.idx.i.i.i.i.i.i.i
  %i.at = getelementptr i8, ptr %7, i64 %i.ah
  %i.au = getelementptr i8, ptr %i.z, i64 %.idx.i.i.i.i.i.i.i
  %i.av = getelementptr i8, ptr %i.au, i64 %i.aj
  %8 = shl nsw i64 %i.aa, 3
  %9 = getelementptr i8, ptr %i.z, i64 %i.ah
  %10 = getelementptr i8, ptr %9, i64 %8
  %11 = add i64 %i.aa, %i.f
  %12 = shl i64 %11, 3
  %i.aw = getelementptr i8, ptr %i.z, i64 %12
  %i.ax = getelementptr i8, ptr %i.z, i64 %i.ah
  %i.ay = getelementptr i8, ptr %i.z, i64 %i.aj
  %i.az = getelementptr i8, ptr %i.c, i64 48
  %bound0.a = icmp ult ptr %i.ai, %i.ao
  %bound1.a = icmp ult ptr %i.am, %i.ak
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %bound056 = icmp ult ptr %i.ai, %i.aq
  %bound157 = icmp ult ptr %4, %i.ak
  %found.conflict58 = and i1 %bound056, %bound157
  %conflict.rdx = or i1 %found.conflict.a, %found.conflict58
  %bound059 = icmp ult ptr %i.ai, %6
  %bound160 = icmp ult ptr %i.as, %i.ak
  %found.conflict61 = and i1 %bound059, %bound160
  %conflict.rdx62 = or i1 %conflict.rdx, %found.conflict61
  %bound063 = icmp ult ptr %i.ai, %i.av
  %bound164 = icmp ult ptr %i.at, %i.ak
  %found.conflict65 = and i1 %bound063, %bound164
  %conflict.rdx66.a = or i1 %conflict.rdx62, %found.conflict65
  %bound067 = icmp ult ptr %i.ai, %i.aw
  %bound168 = icmp ult ptr %10, %i.ak
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx70 = or i1 %conflict.rdx66.a, %found.conflict69
  %bound071 = icmp ult ptr %i.ai, %i.ay
  %bound172 = icmp ult ptr %i.ax, %i.ak
  %found.conflict73 = and i1 %bound071, %bound172
  %conflict.rdx74 = or i1 %conflict.rdx70, %found.conflict73
  %bound075 = icmp ult ptr %i.ai, %i.az
  %bound176 = icmp ult ptr %i.c, %i.ak
  %found.conflict77 = and i1 %bound075, %bound176
  %conflict.rdx78 = or i1 %conflict.rdx74, %found.conflict77
  br i1 %conflict.rdx78, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ba = and i64 %i.f, 1                         ; 2 uses
  %n.vec = sub i64 %i.ag, %i.ba                   ; 2 uses
  %i.bb = add i64 %i.r, %n.vec
  %i.bc = load double, ptr %i.c, align 16, !tbaa !35, !alias.scope !215
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bc, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = load double, ptr %i.ab, align 8, !tbaa !35, !alias.scope !215
  %broadcast.splatinsert80 = insertelement <2 x double> poison, double %i.bd, i64 0
  %broadcast.splat81 = shufflevector <2 x double> %broadcast.splatinsert80, <2 x double> poison, <2 x i32> zeroinitializer
  %i.be = load double, ptr %i.ac, align 16, !tbaa !35, !alias.scope !215
  %broadcast.splatinsert83 = insertelement <2 x double> poison, double %i.be, i64 0
  %broadcast.splat84 = shufflevector <2 x double> %broadcast.splatinsert83, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = load double, ptr %i.ad, align 8, !tbaa !35, !alias.scope !215
  %broadcast.splatinsert86 = insertelement <2 x double> poison, double %i.bf, i64 0
  %broadcast.splat87 = shufflevector <2 x double> %broadcast.splatinsert86, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bg = load double, ptr %i.ae, align 16, !tbaa !35, !alias.scope !215
  %broadcast.splatinsert89 = insertelement <2 x double> poison, double %i.bg, i64 0
  %broadcast.splat90 = shufflevector <2 x double> %broadcast.splatinsert89, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bh = load double, ptr %i.af, align 8, !tbaa !35, !alias.scope !215
  %broadcast.splatinsert92 = insertelement <2 x double> poison, double %i.bh, i64 0
  %broadcast.splat93 = shufflevector <2 x double> %broadcast.splatinsert92, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bi = add i64 %i.r, %index                    ; 2 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bi
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.bi ; 6 uses
  %wide.load = load <2 x double>, ptr %i.bk, align 8, !tbaa !35, !alias.scope !216
  %i.bl = fmul <2 x double> %wide.load, %broadcast.splat
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.aa
  %wide.load79 = load <2 x double>, ptr %i.bm, align 8, !tbaa !35, !alias.scope !217
  %i.bn = fmul <2 x double> %wide.load79, %broadcast.splat81
  %i.bo = fadd <2 x double> %i.bl, %i.bn
  %i.bp = getelementptr inbounds i8, ptr %i.bk, i64 %.idx.i.i.i.i.i.i.i
  %wide.load82 = load <2 x double>, ptr %i.bp, align 8, !tbaa !35, !alias.scope !218
  %i.bq = fmul <2 x double> %wide.load82, %broadcast.splat84
  %i.br = fadd <2 x double> %i.bo, %i.bq
  %i.bs = getelementptr inbounds i8, ptr %i.bk, i64 %.idx11.i.i.i.i.i.i.i
  %wide.load85 = load <2 x double>, ptr %i.bs, align 8, !tbaa !35, !alias.scope !219
  %i.bt = fmul <2 x double> %wide.load85, %broadcast.splat87
  %i.bu = fadd <2 x double> %i.br, %i.bt
  %i.bv = getelementptr inbounds i8, ptr %i.bk, i64 %.idx12.i.i.i.i.i.i.i
  %wide.load88 = load <2 x double>, ptr %i.bv, align 8, !tbaa !35, !alias.scope !220
  %i.bw = fmul <2 x double> %wide.load88, %broadcast.splat90
  %i.bx = fadd <2 x double> %i.bu, %i.bw
  %i.by = getelementptr inbounds i8, ptr %i.bk, i64 %.idx13.i.i.i.i.i.i.i
  %wide.load91 = load <2 x double>, ptr %i.by, align 8, !tbaa !35, !alias.scope !221
  %i.bz = fmul <2 x double> %wide.load91, %broadcast.splat93
  %i.ca = fadd <2 x double> %i.bx, %i.bz
  store <2 x double> %i.ca, ptr %i.bj, align 8, !tbaa !35, !alias.scope !222, !noalias !223
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !208

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ba, 0
  br i1 %cmp.n, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_7ProductINS4_IdLin1ELin1ELi0ELin1ELin1EEENS4_IdLi6ELi1ELi0ELi6ELi1EEELi1EEEEENS0_9assign_opIddEELi0EEELi3ELi0EE3runERSE_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.05.i.i.ph = phi i64 [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i ], [ %i.bb, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.05.i.i = phi i64 [ %i.dg, %scalar.ph ], [ %.05.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.05.i.i
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.05.i.i ; 6 uses
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !35
  %i.cf = load double, ptr %i.c, align 16, !tbaa !35
  %i.cg = fmul double %i.ce, %i.cf
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.aa
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !35
  %i.cj = load double, ptr %i.ab, align 8, !tbaa !35
  %i.ck = fmul double %i.ci, %i.cj
  %i.cl = fadd double %i.cg, %i.ck
  %i.cm = getelementptr inbounds i8, ptr %i.cd, i64 %.idx.i.i.i.i.i.i.i
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !35
  %i.co = load double, ptr %i.ac, align 16, !tbaa !35
  %i.cp = fmul double %i.cn, %i.co
  %i.cq = fadd double %i.cl, %i.cp
  %i.cr = getelementptr inbounds i8, ptr %i.cd, i64 %.idx11.i.i.i.i.i.i.i
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !35
  %i.ct = load double, ptr %i.ad, align 8, !tbaa !35
  %i.cu = fmul double %i.cs, %i.ct
  %i.cv = fadd double %i.cq, %i.cu
  %i.cw = getelementptr inbounds i8, ptr %i.cd, i64 %.idx12.i.i.i.i.i.i.i
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !35
  %i.cy = load double, ptr %i.ae, align 16, !tbaa !35
  %i.cz = fmul double %i.cx, %i.cy
  %i.da = fadd double %i.cv, %i.cz
  %i.db = getelementptr inbounds i8, ptr %i.cd, i64 %.idx13.i.i.i.i.i.i.i
  %i.dc = load double, ptr %i.db, align 8, !tbaa !35
  %i.dd = load double, ptr %i.af, align 8, !tbaa !35
  %i.de = fmul double %i.dc, %i.dd
  %i.df = fadd double %i.da, %i.de
  store double %i.df, ptr %i.cc, align 8, !tbaa !35
  %i.dg = add nsw i64 %.05.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dg, %i.f
  br i1 %exitcond.not.i.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_7ProductINS4_IdLin1ELin1ELi0ELin1ELin1EEENS4_IdLi6ELi1ELi0ELi6ELi1EEELi1EEEEENS0_9assign_opIddEELi0EEELi3ELi0EE3runERSE_.exit, label %scalar.ph, !llvm.loop !209

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.012.i = phi i64 [ %i.ex, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.012.i
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.012.i ; 6 uses
  %i.dj = load <2 x double>, ptr %i.di, align 1, !tbaa !17
  %i.dk = load double, ptr %i.c, align 16, !tbaa !35
  %i.dl = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.dm = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dn = fmul <2 x double> %i.dj, %i.dm
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.f
  %i.dp = load <2 x double>, ptr %i.do, align 1, !tbaa !17
  %i.dq = load double, ptr %i.t, align 8, !tbaa !35
  %i.dr = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.ds = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dt = fmul <2 x double> %i.dp, %i.ds
  %i.du = fadd <2 x double> %i.dn, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.di, i64 %.idx.i.i.i.i.i.i.i.i
  %i.dw = load <2 x double>, ptr %i.dv, align 1, !tbaa !17
  %i.dx = load double, ptr %i.u, align 16, !tbaa !35
  %i.dy = insertelement <2 x double> poison, double %i.dx, i64 0
  %i.dz = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ea = fmul <2 x double> %i.dw, %i.dz
  %i.eb = fadd <2 x double> %i.du, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.di, i64 %.idx.i.i.i.i.i.i11.i
  %i.ed = load <2 x double>, ptr %i.ec, align 1, !tbaa !17
  %i.ee = load double, ptr %i.v, align 8, !tbaa !35
  %i.ef = insertelement <2 x double> poison, double %i.ee, i64 0
  %i.eg = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eh = fmul <2 x double> %i.ed, %i.eg
  %i.ei = fadd <2 x double> %i.eb, %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.di, i64 %.idx.i.i.i.i.i.i
  %i.ek = load <2 x double>, ptr %i.ej, align 1, !tbaa !17
  %i.el = load double, ptr %i.w, align 16, !tbaa !35
  %i.em = insertelement <2 x double> poison, double %i.el, i64 0
  %i.en = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eo = fmul <2 x double> %i.ek, %i.en
  %i.ep = fadd <2 x double> %i.ei, %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.di, i64 %.idx.i.i.i.i.i
  %i.er = load <2 x double>, ptr %i.eq, align 1, !tbaa !17
  %i.es = load double, ptr %i.x, align 8, !tbaa !35
  %i.et = insertelement <2 x double> poison, double %i.es, i64 0
  %i.eu = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ev = fmul <2 x double> %i.er, %i.eu
  %i.ew = fadd <2 x double> %i.ep, %i.ev
  store <2 x double> %i.ew, ptr %i.dh, align 16, !tbaa !17
  %i.ex = add nuw nsw i64 %.012.i, 2              ; 2 uses
  %i.ey = icmp slt i64 %i.ex, %i.r
  br i1 %i.ey, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !210

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_7ProductINS4_IdLin1ELin1ELi0ELin1ELin1EEENS4_IdLi6ELi1ELi0ELi6ELi1EEELi1EEEEENS0_9assign_opIddEELi0EEELi3ELi0EE3runERSE_.exit: ; preds = %scalar.ph, %middle.block, %._crit_edge.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi0EEELi7ENS_10DenseShapeES8_ddEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 5 uses
  %3 = alloca %"class.Eigen::internal::const_blas_data_mapper.343", align 8 ; 5 uses
  store ptr null, ptr %0, align 8, !tbaa !45
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !230, !nonnull !54, !align !55
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !26   ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.sink.split

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ugt i64 %i.d, 2305843009213693951
  br i1 %i.f, label %.invoke.i, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i: ; preds = %bb.c
  %i.g = shl nuw i64 %i.d, 3
  %calloc = tail call ptr @calloc(i64 1, i64 %i.g) ; 3 uses
  %i.h = icmp eq ptr %calloc, null
  br i1 %i.h, label %.invoke.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i.i

.invoke.i:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i, %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !23
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
          to label %.cont.i unwind label %bb.d

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.d:                                             ; preds = %.invoke.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !32
end_hunk_0
