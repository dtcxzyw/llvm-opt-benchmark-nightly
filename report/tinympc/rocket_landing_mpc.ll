Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/rocket_landing_mpc?download=true
inline.NumInlined: 2427
inline.NumDeleted: 1237
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi0EEELi0ELb0EdNS2_IdlLi1EEELb0ELi0EE3runEllRKS3_RKS4_Pdld:bb.a
  %i.gu = mul nsw i64 %i.gi, %.0183446
  %i.gv = getelementptr [8 x i8], ptr %i.gh, i64 %i.gu
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !35
  %i.gx = insertelement <2 x double> poison, double %i.gw, i64 0
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
  %3 = getelementptr i8, ptr %i.z, i64 %.idx13.i.i.i.i.i.i.i
  %i.an = getelementptr i8, ptr %3, i64 %i.aj
  %i.ao = getelementptr i8, ptr %i.z, i64 %.idx12.i.i.i.i.i.i.i
  %4 = getelementptr i8, ptr %i.ao, i64 %i.ah
  %5 = getelementptr i8, ptr %i.z, i64 %.idx12.i.i.i.i.i.i.i
  %i.ap = getelementptr i8, ptr %5, i64 %i.aj
  %i.aq = getelementptr i8, ptr %i.z, i64 %.idx11.i.i.i.i.i.i.i
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.ah
  %i.as = getelementptr i8, ptr %i.z, i64 %.idx11.i.i.i.i.i.i.i
  %i.at = getelementptr i8, ptr %i.as, i64 %i.aj
  %i.au = getelementptr i8, ptr %i.z, i64 %.idx.i.i.i.i.i.i.i
  %i.av = getelementptr i8, ptr %i.au, i64 %i.ah
  %i.aw = getelementptr i8, ptr %i.z, i64 %.idx.i.i.i.i.i.i.i
  %i.ax = getelementptr i8, ptr %i.aw, i64 %i.aj
  %6 = shl nsw i64 %i.aa, 3
  %i.ay = getelementptr i8, ptr %i.z, i64 %i.ah
  %i.az = getelementptr i8, ptr %i.ay, i64 %6
  %7 = add i64 %i.aa, %i.f
  %8 = shl i64 %7, 3
  %i.ba = getelementptr i8, ptr %i.z, i64 %8
  %i.bb = getelementptr i8, ptr %i.z, i64 %i.ah
  %i.bc = getelementptr i8, ptr %i.z, i64 %i.aj
  %i.bd = getelementptr i8, ptr %i.c, i64 48
  %bound0 = icmp ult ptr %i.ai, %i.an
  %bound1 = icmp ult ptr %i.am, %i.ak
  %found.conflict = and i1 %bound0, %bound1
  %bound056 = icmp ult ptr %i.ai, %i.ap
  %bound157 = icmp ult ptr %4, %i.ak
  %found.conflict58 = and i1 %bound056, %bound157
  %conflict.rdx = or i1 %found.conflict, %found.conflict58
  %bound059 = icmp ult ptr %i.ai, %i.at
  %bound160 = icmp ult ptr %i.ar, %i.ak
  %found.conflict61 = and i1 %bound059, %bound160
  %conflict.rdx62 = or i1 %conflict.rdx, %found.conflict61
  %bound063 = icmp ult ptr %i.ai, %i.ax
  %bound164 = icmp ult ptr %i.av, %i.ak
  %found.conflict65 = and i1 %bound063, %bound164
  %conflict.rdx66 = or i1 %conflict.rdx62, %found.conflict65
  %bound067 = icmp ult ptr %i.ai, %i.ba
  %bound168 = icmp ult ptr %i.az, %i.ak
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx70 = or i1 %conflict.rdx66, %found.conflict69
  %bound071 = icmp ult ptr %i.ai, %i.bc
  %bound172 = icmp ult ptr %i.bb, %i.ak
  %found.conflict73 = and i1 %bound071, %bound172
  %conflict.rdx74 = or i1 %conflict.rdx70, %found.conflict73
  %bound075 = icmp ult ptr %i.ai, %i.bd
  %bound176 = icmp ult ptr %i.c, %i.ak
  %found.conflict77 = and i1 %bound075, %bound176
  %conflict.rdx78 = or i1 %conflict.rdx74, %found.conflict77
  br i1 %conflict.rdx78, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.be = and i64 %i.f, 1                         ; 2 uses
  %n.vec = sub i64 %i.ag, %i.be                   ; 2 uses
  %i.bf = add i64 %i.r, %n.vec
  %i.bg = load double, ptr %i.c, align 16, !tbaa !35, !alias.scope !215
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bg, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bh = load double, ptr %i.ab, align 8, !tbaa !35, !alias.scope !215
  %broadcast.splatinsert80 = insertelement <2 x double> poison, double %i.bh, i64 0
  %broadcast.splat81 = shufflevector <2 x double> %broadcast.splatinsert80, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = load double, ptr %i.ac, align 16, !tbaa !35, !alias.scope !215
  %broadcast.splatinsert83 = insertelement <2 x double> poison, double %i.bi, i64 0
  %broadcast.splat84 = shufflevector <2 x double> %broadcast.splatinsert83, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bj = load double, ptr %i.ad, align 8, !tbaa !35, !alias.scope !215
  %broadcast.splatinsert86 = insertelement <2 x double> poison, double %i.bj, i64 0
  %broadcast.splat87 = shufflevector <2 x double> %broadcast.splatinsert86, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = load double, ptr %i.ae, align 16, !tbaa !35, !alias.scope !215
  %broadcast.splatinsert89 = insertelement <2 x double> poison, double %i.bk, i64 0
  %broadcast.splat90 = shufflevector <2 x double> %broadcast.splatinsert89, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bl = load double, ptr %i.af, align 8, !tbaa !35, !alias.scope !215
  %broadcast.splatinsert92 = insertelement <2 x double> poison, double %i.bl, i64 0
  %broadcast.splat93 = shufflevector <2 x double> %broadcast.splatinsert92, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = add i64 %i.r, %index                    ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bm
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.bm ; 6 uses
  %wide.load = load <2 x double>, ptr %i.bo, align 8, !tbaa !35, !alias.scope !216
  %i.bp = fmul <2 x double> %wide.load, %broadcast.splat
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.aa
  %wide.load79 = load <2 x double>, ptr %i.bq, align 8, !tbaa !35, !alias.scope !217
  %i.br = fmul <2 x double> %wide.load79, %broadcast.splat81
  %i.bs = fadd <2 x double> %i.bp, %i.br
  %i.bt = getelementptr inbounds i8, ptr %i.bo, i64 %.idx.i.i.i.i.i.i.i
  %wide.load82 = load <2 x double>, ptr %i.bt, align 8, !tbaa !35, !alias.scope !218
  %i.bu = fmul <2 x double> %wide.load82, %broadcast.splat84
  %i.bv = fadd <2 x double> %i.bs, %i.bu
  %i.bw = getelementptr inbounds i8, ptr %i.bo, i64 %.idx11.i.i.i.i.i.i.i
  %wide.load85 = load <2 x double>, ptr %i.bw, align 8, !tbaa !35, !alias.scope !219
  %i.bx = fmul <2 x double> %wide.load85, %broadcast.splat87
  %i.by = fadd <2 x double> %i.bv, %i.bx
  %i.bz = getelementptr inbounds i8, ptr %i.bo, i64 %.idx12.i.i.i.i.i.i.i
  %wide.load88 = load <2 x double>, ptr %i.bz, align 8, !tbaa !35, !alias.scope !220
  %i.ca = fmul <2 x double> %wide.load88, %broadcast.splat90
  %i.cb = fadd <2 x double> %i.by, %i.ca
  %i.cc = getelementptr inbounds i8, ptr %i.bo, i64 %.idx13.i.i.i.i.i.i.i
  %wide.load91 = load <2 x double>, ptr %i.cc, align 8, !tbaa !35, !alias.scope !221
  %i.cd = fmul <2 x double> %wide.load91, %broadcast.splat93
  %i.ce = fadd <2 x double> %i.cb, %i.cd
  store <2 x double> %i.ce, ptr %i.bn, align 8, !tbaa !35, !alias.scope !222, !noalias !223
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !208

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, 0
  br i1 %cmp.n, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_7ProductINS4_IdLin1ELin1ELi0ELin1ELin1EEENS4_IdLi6ELi1ELi0ELi6ELi1EEELi1EEEEENS0_9assign_opIddEELi0EEELi3ELi0EE3runERSE_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.05.i.i.ph = phi i64 [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i ], [ %i.bf, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.05.i.i = phi i64 [ %i.dk, %scalar.ph ], [ %.05.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.05.i.i
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.05.i.i ; 6 uses
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !35
  %i.cj = load double, ptr %i.c, align 16, !tbaa !35
  %i.ck = fmul double %i.ci, %i.cj
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.aa
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !35
  %i.cn = load double, ptr %i.ab, align 8, !tbaa !35
  %i.co = fmul double %i.cm, %i.cn
  %i.cp = fadd double %i.ck, %i.co
  %i.cq = getelementptr inbounds i8, ptr %i.ch, i64 %.idx.i.i.i.i.i.i.i
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !35
  %i.cs = load double, ptr %i.ac, align 16, !tbaa !35
  %i.ct = fmul double %i.cr, %i.cs
  %i.cu = fadd double %i.cp, %i.ct
  %i.cv = getelementptr inbounds i8, ptr %i.ch, i64 %.idx11.i.i.i.i.i.i.i
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !35
  %i.cx = load double, ptr %i.ad, align 8, !tbaa !35
  %i.cy = fmul double %i.cw, %i.cx
  %i.cz = fadd double %i.cu, %i.cy
  %i.da = getelementptr inbounds i8, ptr %i.ch, i64 %.idx12.i.i.i.i.i.i.i
  %i.db = load double, ptr %i.da, align 8, !tbaa !35
  %i.dc = load double, ptr %i.ae, align 16, !tbaa !35
  %i.dd = fmul double %i.db, %i.dc
  %i.de = fadd double %i.cz, %i.dd
  %i.df = getelementptr inbounds i8, ptr %i.ch, i64 %.idx13.i.i.i.i.i.i.i
  %i.dg = load double, ptr %i.df, align 8, !tbaa !35
  %i.dh = load double, ptr %i.af, align 8, !tbaa !35
  %i.di = fmul double %i.dg, %i.dh
  %i.dj = fadd double %i.de, %i.di
  store double %i.dj, ptr %i.cg, align 8, !tbaa !35
  %i.dk = add nsw i64 %.05.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dk, %i.f
  br i1 %exitcond.not.i.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_7ProductINS4_IdLin1ELin1ELi0ELin1ELin1EEENS4_IdLi6ELi1ELi0ELi6ELi1EEELi1EEEEENS0_9assign_opIddEELi0EEELi3ELi0EE3runERSE_.exit, label %scalar.ph, !llvm.loop !209

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.012.i = phi i64 [ %i.fb, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.012.i
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.012.i ; 6 uses
  %i.dn = load <2 x double>, ptr %i.dm, align 1, !tbaa !17
  %i.do = load double, ptr %i.c, align 16, !tbaa !35
  %i.dp = insertelement <2 x double> poison, double %i.do, i64 0
  %i.dq = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dr = fmul <2 x double> %i.dn, %i.dq
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.f
  %i.dt = load <2 x double>, ptr %i.ds, align 1, !tbaa !17
  %i.du = load double, ptr %i.t, align 8, !tbaa !35
  %i.dv = insertelement <2 x double> poison, double %i.du, i64 0
  %i.dw = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dx = fmul <2 x double> %i.dt, %i.dw
  %i.dy = fadd <2 x double> %i.dr, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.idx.i.i.i.i.i.i.i.i
  %i.ea = load <2 x double>, ptr %i.dz, align 1, !tbaa !17
  %i.eb = load double, ptr %i.u, align 16, !tbaa !35
  %i.ec = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x double> %i.ea, %i.ed
  %i.ef = fadd <2 x double> %i.dy, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.idx.i.i.i.i.i.i11.i
  %i.eh = load <2 x double>, ptr %i.eg, align 1, !tbaa !17
  %i.ei = load double, ptr %i.v, align 8, !tbaa !35
  %i.ej = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> zeroinitializer
  %i.el = fmul <2 x double> %i.eh, %i.ek
  %i.em = fadd <2 x double> %i.ef, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.idx.i.i.i.i.i.i
  %i.eo = load <2 x double>, ptr %i.en, align 1, !tbaa !17
  %i.ep = load double, ptr %i.w, align 16, !tbaa !35
  %i.eq = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.er = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.es = fmul <2 x double> %i.eo, %i.er
  %i.et = fadd <2 x double> %i.em, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.idx.i.i.i.i.i
  %i.ev = load <2 x double>, ptr %i.eu, align 1, !tbaa !17
  %i.ew = load double, ptr %i.x, align 8, !tbaa !35
  %i.ex = insertelement <2 x double> poison, double %i.ew, i64 0
  %i.ey = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ez = fmul <2 x double> %i.ev, %i.ey
  %i.fa = fadd <2 x double> %i.et, %i.ez
  store <2 x double> %i.fa, ptr %i.dl, align 16, !tbaa !17
  %i.fb = add nuw nsw i64 %.012.i, 2              ; 2 uses
  %i.fc = icmp slt i64 %i.fb, %i.r
  br i1 %i.fc, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !210

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
end_hunk_0
begin_hunk_1_@calloc
!23 = !{!22, !22, i64 0}
!24 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEE", !18, i64 0, !13, i64 8, !13, i64 16}
!25 = !{!24, !18, i64 0}
!26 = !{!24, !13, i64 8}
!27 = !{!24, !13, i64 16}
!28 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLi3EEE"}
!29 = !{!"_ZTSN5Eigen7MapBaseINS_3MapINS_6MatrixIdLi6ELi3ELi1ELi6ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi0EEE", !18, i64 0, !19, i64 8, !28, i64 9}
!30 = !{!29, !18, i64 0}
!31 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EEE", !18, i64 0, !13, i64 8}
!32 = !{!31, !18, i64 0}
!33 = !{!31, !13, i64 8}
!34 = !{!"double", !5, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"p1 _ZTSN5Eigen6MatrixIdLi6ELi1ELi0ELi6ELi1EEE", !9, i64 0}
!37 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLin1EEE", !13, i64 0}
!38 = !{!37, !13, i64 0}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.isvectorized", i32 1}
!41 = !{!"llvm.loop.unroll.runtime.disable"}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = !{!"p1 _ZTSN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEE", !9, i64 0}
!44 = !{!"_ZTSN5Eigen8internal30plainobjectbase_evaluator_dataIdLi0EEE", !18, i64 0}
!45 = !{!44, !18, i64 0}
!46 = !{!"p1 _ZTSN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE", !9, i64 0}
!47 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLi1EEE"}
!48 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELi0EEE", !18, i64 0, !37, i64 8, !47, i64 16}
!49 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELi1EEE", !48, i64 0}
!50 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1ELb1EEE", !49, i64 0, !46, i64 24, !37, i64 32, !37, i64 40, !13, i64 48}
!51 = !{!"_ZTSN5Eigen9BlockImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1ENS_5DenseEEE", !50, i64 0}
!52 = !{!"_ZTSN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEE", !51, i64 0}
!53 = !{!"_ZTSN5Eigen7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS2_Lin1ELi1ELb1EEELi0EEE", !46, i64 0, !52, i64 8}
!54 = !{}
!55 = !{i64 8}
!56 = !{i64 16}
!57 = !{!"_ZTSN5Eigen15DiagonalWrapperIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEE", !43, i64 0}
!58 = !{!57, !43, i64 0}
!59 = !{!"_ZTSN5Eigen8internal16blas_data_mapperIKdlLi0ELi0ELi1EEE", !18, i64 0, !13, i64 8}
!60 = !{!59, !18, i64 0}
!61 = !{!59, !13, i64 8}
!62 = !{!"_ZTSN5Eigen8internal16blas_data_mapperIKdlLi1ELi0ELi1EEE", !18, i64 0, !13, i64 8}
!63 = !{!62, !18, i64 0}
!64 = !{!62, !13, i64 8}
!65 = !{!13, !13, i64 0}
!66 = !{!"_ZTSN5Eigen8IOFormatE", !14, i64 0, !14, i64 32, !14, i64 64, !14, i64 96, !14, i64 128, !14, i64 160, !14, i64 192, !5, i64 224, !6, i64 228, !6, i64 232}
!67 = !{!66, !5, i64 224}
!68 = !{!66, !6, i64 228}
!69 = !{!66, !6, i64 232}
!70 = distinct !{!70, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLi6ELi1ELi0ELi6ELi1EEEE9replicateEll"}
!71 = distinct !{!71, !70, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLi6ELi1ELi0ELi6ELi1EEEE9replicateEll: argument 0"}
!72 = distinct !{!72, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLi6ELi1ELi0ELi6ELi1EEEE9replicateEll"}
!73 = distinct !{!73, !72, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLi6ELi1ELi0ELi6ELi1EEEE9replicateEll: argument 0"}
!74 = distinct !{!74, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!75 = distinct !{!75, !74, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!76 = distinct !{!76, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!77 = distinct !{!77, !76, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!78 = distinct !{!78, !39, !40, !41}
!79 = distinct !{!79, !39, !41, !40}
!80 = distinct !{!80, !39, !40, !41}
!81 = distinct !{!81, !39, !41, !40}
!82 = distinct !{!82, !39}
!83 = distinct !{!83, !39}
!84 = distinct !{!84, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!85 = distinct !{!85, !84, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!86 = distinct !{!86, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!87 = distinct !{!87, !86, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!88 = distinct !{!88, !39, !40, !41}
!89 = distinct !{!89, !42}
!90 = distinct !{!90, !39, !40}
!91 = distinct !{!91, !39, !40, !41}
!92 = distinct !{!92, !42}
!93 = distinct !{!93, !39, !40}
!94 = distinct !{!94, !39}
!95 = distinct !{!95, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!96 = distinct !{!96, !95, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!97 = distinct !{null, null, null, null}
!98 = distinct !{!98, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!99 = distinct !{!99, !98, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!100 = distinct !{!100, !39, !40, !41}
!101 = distinct !{!101, !42}
!102 = distinct !{!102, !39, !40}
!103 = distinct !{!103, !39, !40, !41}
!104 = distinct !{!104, !42}
!105 = distinct !{!105, !39, !40}
!106 = distinct !{!106, !39}
!107 = distinct !{!107, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!108 = distinct !{!108, !107, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!109 = distinct !{!109, !39, !40, !41}
!110 = distinct !{!110, !39, !41, !40}
!111 = distinct !{!111, !39, !40, !41}
!112 = distinct !{!112, !39, !41, !40}
!113 = distinct !{!113, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!114 = distinct !{!114, !113, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!115 = distinct !{!115, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!116 = distinct !{!116, !115, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!117 = distinct !{!117, i1 true, !"_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IdLi6ELi1ELi0ELi6ELi1EEELi0EEEKNS5_IS7_NS_5BlockIS7_Lin1ELi1ELb1EEELi0EEEEEEplINS6_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS1_INS3_IdNS2_6traitsIT_E6ScalarEEEKSF_KSK_EERKNS0_ISK_EE"}
!118 = distinct !{!118, !117, !"_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IdLi6ELi1ELi0ELi6ELi1EEELi0EEEKNS5_IS7_NS_5BlockIS7_Lin1ELi1ELb1EEELi0EEEEEEplINS6_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS1_INS3_IdNS2_6traitsIT_E6ScalarEEEKSF_KSK_EERKNS0_ISK_EE: argument 0"}
!119 = distinct !{!119, !39}
!120 = !{!36, !36, i64 0}
!121 = !{!71}
!122 = !{!73}
!123 = !{!9, !9, i64 0}
!124 = !{!"p1 int", !9, i64 0}
!125 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EEE", !124, i64 0, !13, i64 8}
!126 = !{!125, !124, i64 0}
!127 = !{!125, !13, i64 8}
!128 = !{!"_ZTS10TinySolver", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!129 = !{!128, !9, i64 8}
!130 = !{!"_ZTS12TinySettings", !34, i64 0, !34, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !34, i64 64, !34, i64 72, !6, i64 80}
!131 = !{!130, !6, i64 16}
!132 = !{!130, !34, i64 0}
!133 = !{!128, !9, i64 24}
!134 = !{!75}
!135 = !{!77}
!136 = !{!128, !9, i64 16}
!137 = !{!85}
!138 = !{!87}
!139 = !{!96}
!140 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!141 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!142 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !9, i64 0}
!143 = !{!"_ZTSNSt8ios_base6_WordsE", !9, i64 0, !13, i64 8}
!144 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !9, i64 0}
!145 = !{!"p1 _ZTSNSt6locale5_ImplE", !9, i64 0}
!146 = !{!"_ZTSSt6locale", !145, i64 0}
!147 = !{!"_ZTSSt8ios_base", !13, i64 8, !13, i64 16, !140, i64 24, !141, i64 28, !141, i64 32, !142, i64 40, !143, i64 48, !5, i64 64, !6, i64 192, !144, i64 200, !146, i64 208}
!148 = !{!"p1 _ZTSSo", !9, i64 0}
!149 = !{!"bool", !5, i64 0}
!150 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !9, i64 0}
!151 = !{!"p1 _ZTSSt5ctypeIcE", !9, i64 0}
!152 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !9, i64 0}
!153 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !9, i64 0}
!154 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !147, i64 0, !148, i64 216, !5, i64 224, !149, i64 225, !150, i64 232, !151, i64 240, !152, i64 248, !153, i64 256}
!155 = !{!154, !151, i64 240}
!156 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!157 = !{!"p1 _ZTS15__locale_struct", !9, i64 0}
!158 = !{!"p1 short", !9, i64 0}
!159 = !{!"_ZTSSt5ctypeIcE", !156, i64 0, !157, i64 16, !149, i64 24, !124, i64 32, !124, i64 40, !158, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!160 = !{!159, !5, i64 56}
!161 = !{!99}
!162 = !{!108}
!163 = !{!114}
!164 = !{!116}
!165 = !{!43, !43, i64 0}
!166 = !{!118}
!167 = !{!"_ZTSN5Eigen7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS1_IdLi6ELi1ELi0ELi6ELi1EEELi0EEE", !46, i64 0, !36, i64 8}
!168 = !{!"_ZTSN5Eigen8internal13scalar_sum_opIddEE"}
!169 = !{!"_ZTSN5Eigen13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS5_IdLi6ELi1ELi0ELi6ELi1EEELi0EEEKNS4_IS6_NS_5BlockIS6_Lin1ELi1ELb1EEELi0EEEEE", !167, i64 0, !53, i64 16, !168, i64 80}
!170 = !{!"_ZTSN5Eigen13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS0_IS3_KNS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS5_IdLi6ELi1ELi0ELi6ELi1EEELi0EEEKNS4_IS6_NS_5BlockIS6_Lin1ELi1ELb1EEELi0EEEEEKNS5_IdLin1ELi1ELi0ELin1ELi1EEEEE", !169, i64 8, !43, i64 96, !168, i64 104}
!171 = !{!170, !43, i64 96}
!172 = !{!"_ZTSN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEE", !44, i64 0}
!173 = !{!172, !18, i64 0}
!174 = distinct !{!174, !39}
!175 = distinct !{!175, !39}
!176 = !{!"_ZTSN5Eigen9ReplicateINS_6MatrixIdLi6ELi1ELi0ELi6ELi1EEELin1ELin1EEE", !36, i64 0, !37, i64 8, !37, i64 16}
!177 = !{!176, !36, i64 0}
!178 = distinct !{!178, !39}
!179 = distinct !{!179, !42}
!180 = distinct !{!180, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE3colEl"}
!181 = distinct !{!181, !180, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE3colEl: argument 0"}
!182 = distinct !{!182, !39}
!183 = distinct !{!183, !42}
!184 = !{!"_ZTSN5Eigen8internal18scalar_opposite_opIdEE"}
!185 = !{!"_ZTSN5Eigen12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEE", !46, i64 0, !184, i64 8}
!186 = !{!185, !46, i64 0}
!187 = !{!181}
!188 = distinct !{!188, !39}
!189 = distinct !{!189, !39}
!190 = distinct !{!190, !39}
!191 = distinct !{!191, !39}
!192 = distinct !{!192, !39}
!193 = distinct !{!193, !39}
!194 = distinct !{!194, !39}
!195 = distinct !{!195, !39}
!196 = distinct !{!196, !39}
!197 = distinct !{!197, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!198 = distinct !{!198, !197, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!199 = distinct !{!199, i1 false, !"LVerDomain"}
!200 = distinct !{!200, !199}
!201 = distinct !{!201, !199}
!202 = distinct !{!202, !199}
!203 = distinct !{!203, !199}
!204 = distinct !{!204, !199}
!205 = distinct !{!205, !199}
!206 = distinct !{!206, !199}
!207 = distinct !{!207, !199}
!208 = distinct !{!208, !39, !40, !41}
!209 = distinct !{!209, !39, !40}
!210 = distinct !{!210, !39}
!211 = !{!"_ZTSN5Eigen7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS1_IdLi6ELi1ELi0ELi6ELi1EEELi1EEE", !46, i64 0, !36, i64 8}
!212 = !{!211, !46, i64 0}
!213 = !{!211, !36, i64 8}
!214 = !{!198}
!215 = !{!200}
!216 = !{!201}
!217 = !{!202}
!218 = !{!203}
!219 = !{!204}
!220 = !{!205}
!221 = !{!206}
!222 = !{!207}
!223 = !{!206, !205, !204, !203, !202, !201, !200}
!224 = distinct !{!224, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!225 = distinct !{!225, !224, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!226 = distinct !{!226, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE3colEl"}
!227 = distinct !{!227, !226, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE3colEl: argument 0"}
!228 = distinct !{!228, !39}
!229 = distinct !{!229, !42}
!230 = !{!53, !46, i64 0}
!231 = !{!225}
!232 = !{!48, !18, i64 0}
!233 = !{!227}
end_hunk_1
