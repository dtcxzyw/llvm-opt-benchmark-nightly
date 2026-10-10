Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/jxl_cms?download=true
inline.NumInlined: 2967
inline.NumDeleted: 958
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_ZN3jxl12_GLOBAL__N_110JxlCmsInitEPvmmPK15JxlColorProfileS4_f:bb.a
  br i1 %.not.i.i2.i.i.i.i, label %_ZNSt3__16vectorIPfNS_9allocatorIS1_EEED2B8nn180100Ev.exit3.i.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit.i.i.i.i
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.0181.3300, i64 88
  store ptr %i.lc, ptr %i.ld, align 8, !tbaa !84
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.0181.3300, i64 96
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !85
  %i.lg = ptrtoint ptr %i.lf to i64
  %i.lh = ptrtoint ptr %i.lc to i64
  %i.li = sub i64 %i.lg, %i.lh
  call void @_ZdlPvm(ptr noundef nonnull %i.lc, i64 noundef %i.li) #29
  br label %_ZNSt3__16vectorIPfNS_9allocatorIS1_EEED2B8nn180100Ev.exit3.i.i.i.i

_ZNSt3__16vectorIPfNS_9allocatorIS1_EEED2B8nn180100Ev.exit3.i.i.i.i: ; preds = %bb.ba, %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit.i.i.i.i
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.0181.3300, i64 56
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !86 ; 4 uses
  %.not.i.i4.i.i.i.i = icmp eq ptr %i.lk, null
  br i1 %.not.i.i4.i.i.i.i, label %_ZNKSt3__114default_deleteIN3jxl12_GLOBAL__N_16JxlCmsEEclB8nn180100EPS3_.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt3__16vectorIPfNS_9allocatorIS1_EEED2B8nn180100Ev.exit3.i.i.i.i
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.0181.3300, i64 64
  store ptr %i.lk, ptr %i.ll, align 8, !tbaa !87
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.0181.3300, i64 72
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !29
  %i.lo = ptrtoint ptr %i.ln to i64
  %i.lp = ptrtoint ptr %i.lk to i64
  %i.lq = sub i64 %i.lo, %i.lp
  call void @_ZdlPvm(ptr noundef nonnull %i.lk, i64 noundef %i.lq) #29
  br label %_ZNKSt3__114default_deleteIN3jxl12_GLOBAL__N_16JxlCmsEEclB8nn180100EPS3_.exit.i.i

_ZNKSt3__114default_deleteIN3jxl12_GLOBAL__N_16JxlCmsEEclB8nn180100EPS3_.exit.i.i: ; preds = %bb.bb, %_ZNSt3__16vectorIPfNS_9allocatorIS1_EEED2B8nn180100Ev.exit3.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0181.3300, i64 noundef 168) #29
  br label %_ZNSt3__110unique_ptrIN3jxl12_GLOBAL__N_16JxlCmsENS_14default_deleteIS3_EEED2B8nn180100Ev.exit

_ZNSt3__110unique_ptrIN3jxl12_GLOBAL__N_16JxlCmsENS_14default_deleteIS3_EEED2B8nn180100Ev.exit: ; preds = %_ZNKSt3__114default_deleteIN3jxl12_GLOBAL__N_16JxlCmsEEclB8nn180100EPS3_.exit.i.i, %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8nn180100Ev.exit147, %bb.a
  %.11 = phi ptr [ null, %bb.a ], [ %.10301, %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8nn180100Ev.exit147 ], [ %.10301, %_ZNKSt3__114default_deleteIN3jxl12_GLOBAL__N_16JxlCmsEEclB8nn180100EPS3_.exit.i.i ]
  ret ptr %.11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZN3jxl12_GLOBAL__N_115JxlCmsGetSrcBufEPvm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %1
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZN3jxl12_GLOBAL__N_115JxlCmsGetDstBufEPvm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %1
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 0, 2) i32 @_ZN3jxl12_GLOBAL__N_121DoColorSpaceTransformEPvmPKfPfm(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) #7 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3hwy15GetChosenTargetEv() #26
  %i.b = load atomic i64, ptr %i.a seq_cst, align 8
  %i.c = and i64 %i.b, 103425
  %i.d = tail call noundef range(i64 0, 17) i64 @llvm.cttz.i64(i64 range(i64 0, 103426) %i.c, i1 true)
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZN3jxl12_GLOBAL__N_141DoColorSpaceTransformHighwayDispatchTableE, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75
  %i.g = tail call i32 %i.f(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) #26
  %i.h = icmp eq i32 %i.g, 0
  %i.i = zext i1 %i.h to i32
  ret i32 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3jxl12_GLOBAL__N_113JxlCmsDestroyEPv(ptr noundef %0) #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !41
  tail call void @cmsDeleteTransform(ptr noundef %i.b) #26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorIPfNS_9allocatorIS1_EEED2B8nn180100Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.d, ptr %i.e, align 8, !tbaa !84
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !85
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.j) #29
  br label %_ZNSt3__16vectorIPfNS_9allocatorIS1_EEED2B8nn180100Ev.exit.i

_ZNSt3__16vectorIPfNS_9allocatorIS1_EEED2B8nn180100Ev.exit.i: ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !86   ; 4 uses
  %.not.i.i1.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i, label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__16vectorIPfNS_9allocatorIS1_EEED2B8nn180100Ev.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.l, ptr %i.m, align 8, !tbaa !87
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !29
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.r) #29
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit.i

_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit.i: ; preds = %bb.d, %_ZNSt3__16vectorIPfNS_9allocatorIS1_EEED2B8nn180100Ev.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !28   ; 4 uses
  %.not.i.i2.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i2.i, label %_ZNSt3__16vectorIPfNS_9allocatorIS1_EEED2B8nn180100Ev.exit3.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.t, ptr %i.u, align 8, !tbaa !84
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !85
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.t to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.z) #29
  br label %_ZNSt3__16vectorIPfNS_9allocatorIS1_EEED2B8nn180100Ev.exit3.i

_ZNSt3__16vectorIPfNS_9allocatorIS1_EEED2B8nn180100Ev.exit3.i: ; preds = %bb.e, %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !86 ; 4 uses
  %.not.i.i4.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i4.i, label %_ZN3jxl12_GLOBAL__N_16JxlCmsD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt3__16vectorIPfNS_9allocatorIS1_EEED2B8nn180100Ev.exit3.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !87
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !29
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ab to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ah) #29
  br label %_ZN3jxl12_GLOBAL__N_16JxlCmsD2Ev.exit

_ZN3jxl12_GLOBAL__N_16JxlCmsD2Ev.exit:            ; preds = %_ZNSt3__16vectorIPfNS_9allocatorIS1_EEED2B8nn180100Ev.exit3.i, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 168) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN3jxl12_GLOBAL__N_16JxlCmsD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc range(i32 0, 2) i32 @_ZN3jxl12_GLOBAL__N_112ApplyHlgOotfEPNS0_6JxlCmsEPfmb(ptr nofree noundef readonly captures(none) %0, ptr noalias nofree noundef captures(none) %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load float, ptr %i.a, align 8, !tbaa !31 ; 3 uses
  %i.c = fcmp ult float %i.b, 2.950000e+02
  %i.d = fcmp ugt float %i.b, 3.050000e+02
  %or.cond62 = or i1 %i.c, %i.d
  br i1 %or.cond62, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = fmul float %i.b, 1.000000e-03
  %i.f = tail call noundef float @log2f(float noundef %i.e) #26
  %i.g = tail call noundef float @powf(float noundef 1.111000e+00, float noundef %i.f) #26
  %i.h = fmul float %i.g, 1.200000e+00            ; 2 uses
  %i.i = fdiv float 1.000000e+00, %i.h
  %.0 = select i1 %3, float %i.h, float %i.i      ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !44
  switch i64 %i.k, label %.loopexit [
    i64 1, label %.preheader
    i64 3, label %.preheader64
  ]

.preheader64:                                     ; preds = %bb.b
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load float, ptr %i.l, align 8, !tbaa !37 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.o = load float, ptr %i.n, align 4, !tbaa !37 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load float, ptr %i.p, align 8, !tbaa !37 ; 2 uses
  %i.r = fadd float %.0, -1.000000e+00            ; 2 uses
  %i.s = fcmp olt float %.0, 1.000000e+00
  %or.cond = and i1 %3, %i.s
  br i1 %or.cond, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.e
  %.05966.us = phi i64 [ %i.aj, %bb.e ], [ 0, %.lr.ph ] ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.05966.us ; 5 uses
  %4 = load float, ptr %i.t, align 4, !tbaa !37   ; 2 uses
  %5 = getelementptr i8, ptr %i.t, i64 4          ; 3 uses
  %6 = load float, ptr %5, align 4, !tbaa !37     ; 2 uses
  %7 = fmul float %6, %i.o
  %i.u = tail call float @llvm.fmuladd.f32(float %4, float %i.m, float %7)
  %i.v = getelementptr i8, ptr %i.t, i64 8        ; 3 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !37 ; 2 uses
  %i.x = tail call float @llvm.fmuladd.f32(float %i.w, float %i.q, float %i.u)
  %i.y = tail call noundef float @powf(float noundef %i.x, float noundef %i.r) #26 ; 4 uses
  %i.z = tail call float @llvm.fabs.f32(float %i.y)
  %i.aa = fcmp ueq float %i.z, +inf
  br i1 %i.aa, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us
  %8 = fmul float %4, %i.y                        ; 4 uses
  store float %8, ptr %i.t, align 4, !tbaa !37
  %9 = fmul float %6, %i.y                        ; 4 uses
  store float %9, ptr %5, align 4, !tbaa !37
  %i.ab = fmul float %i.w, %i.y                   ; 4 uses
  store float %i.ab, ptr %i.v, align 4, !tbaa !37
  %i.ac = fcmp olt float %9, %i.ab
  %i.ad = select i1 %i.ac, float %i.ab, float %9  ; 2 uses
  %i.ae = fcmp olt float %8, %i.ad
  %i.af = select i1 %i.ae, float %i.ad, float %8  ; 2 uses
  %i.ag = fcmp ogt float %i.af, 1.000000e+00
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = fdiv float 1.000000e+00, %i.af          ; 3 uses
  %10 = fmul float %8, %i.ah
  store float %10, ptr %i.t, align 4, !tbaa !37
  %11 = fmul float %9, %i.ah
  store float %11, ptr %5, align 4, !tbaa !37
  %i.ai = fmul float %i.ab, %i.ah
  store float %i.ai, ptr %i.v, align 4, !tbaa !37
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph.split.us
  %i.aj = add i64 %.05966.us, 3                   ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %2
  br i1 %i.ak, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !1

.preheader:                                       ; preds = %bb.b
  %.not71 = icmp eq i64 %2, 0
  br i1 %.not71, label %.loopexit, label %.lr.ph68.preheader

.lr.ph68.preheader:                               ; preds = %.preheader
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.al = icmp ult i64 %2, 4
  br i1 %i.al, label %.lr.ph68.epil.preheader, label %.lr.ph68.preheader.new

.lr.ph68.preheader.new:                           ; preds = %.lr.ph68.preheader
  %unroll_iter = and i64 %2, -4
  br label %.lr.ph68

.lr.ph68:                                         ; preds = %.lr.ph68, %.lr.ph68.preheader.new
  %.05867 = phi i64 [ 0, %.lr.ph68.preheader.new ], [ %i.bb, %.lr.ph68 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph68.preheader.new ], [ %niter.next.3, %.lr.ph68 ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.05867 ; 2 uses
  %i.an = load float, ptr %i.am, align 4, !tbaa !37
  %i.ao = tail call noundef float @powf(float noundef %i.an, float noundef %.0) #26
  store float %i.ao, ptr %i.am, align 4, !tbaa !37
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.05867
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !37
  %i.as = tail call noundef float @powf(float noundef %i.ar, float noundef %.0) #26
  store float %i.as, ptr %i.aq, align 4, !tbaa !37
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.05867
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.av = load float, ptr %i.au, align 4, !tbaa !37
  %i.aw = tail call noundef float @powf(float noundef %i.av, float noundef %.0) #26
  store float %i.aw, ptr %i.au, align 4, !tbaa !37
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.05867
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 12 ; 2 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !37
  %i.ba = tail call noundef float @powf(float noundef %i.az, float noundef %.0) #26
  store float %i.ba, ptr %i.ay, align 4, !tbaa !37
  %i.bb = add nuw i64 %.05867, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph68, !llvm.loop !0

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.g
  %.05966 = phi i64 [ %i.bs, %bb.g ], [ 0, %.lr.ph ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.05966 ; 3 uses
  %i.bd = load <2 x float>, ptr %i.bc, align 4, !tbaa !37 ; 3 uses
  %i.be = extractelement <2 x float> %i.bd, i64 1
  %i.bf = fmul float %i.be, %i.o
  %i.bg = extractelement <2 x float> %i.bd, i64 0
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.m, float %i.bf)
  %i.bi = getelementptr i8, ptr %i.bc, i64 8      ; 2 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !37 ; 2 uses
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.q, float %i.bh)
  %i.bl = tail call noundef float @powf(float noundef %i.bk, float noundef %i.r) #26 ; 3 uses
  %i.bm = tail call float @llvm.fabs.f32(float %i.bl)
  %i.bn = fcmp ueq float %i.bm, +inf
  br i1 %i.bn, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split
  %i.bo = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = fmul <2 x float> %i.bd, %i.bp
  store <2 x float> %i.bq, ptr %i.bc, align 4, !tbaa !37
  %i.br = fmul float %i.bj, %i.bl
  store float %i.br, ptr %i.bi, align 4, !tbaa !37
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split
  %i.bs = add i64 %.05966, 3                      ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %2
  br i1 %i.bt, label %.lr.ph.split, label %.loopexit, !llvm.loop !1

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph68
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph68.epil.preheader

.lr.ph68.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph68.preheader
  %.05867.epil.init = phi i64 [ 0, %.lr.ph68.preheader ], [ %i.bb, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod84 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod84)
  br label %.lr.ph68.epil

.lr.ph68.epil:                                    ; preds = %.lr.ph68.epil, %.lr.ph68.epil.preheader
  %.05867.epil = phi i64 [ %i.bx, %.lr.ph68.epil ], [ %.05867.epil.init, %.lr.ph68.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph68.epil ], [ 0, %.lr.ph68.epil.preheader ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.05867.epil ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !37
  %i.bw = tail call noundef float @powf(float noundef %i.bv, float noundef %.0) #26
  store float %i.bw, ptr %i.bu, align 4, !tbaa !37
  %i.bx = add nuw i64 %.05867.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph68.epil, !llvm.loop !232

.loopexit:                                        ; preds = %bb.g, %bb.e, %.loopexit.loopexit.unr-lcssa, %.lr.ph68.epil, %.preheader64, %.preheader, %bb.b, %bb.a
  %.sroa.063.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 0, %.preheader ], [ 0, %.preheader64 ], [ 0, %bb.e ], [ 0, %.loopexit.loopexit.unr-lcssa ], [ 0, %.lr.ph68.epil ], [ 0, %bb.g ]
  ret i32 %.sroa.063.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @log2f(float noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sqrt.v8f32(<8 x float>) #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_ZN3jxl12_GLOBAL__N_113DecodeProfileEP18_cmsContext_structNS_4SpanIKhEEPNSt3__110unique_ptrIvNS0_14ProfileDeleterEEE(ptr noundef %0, ptr %1, i64 %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = trunc i64 %2 to i32
  %i.b = tail call ptr @cmsOpenProfileFromMemTHR(ptr noundef %0, ptr noundef %1, i32 noundef %i.a) #26 ; 2 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !75     ; 2 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !75
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt3__110unique_ptrIvN3jxl12_GLOBAL__N_114ProfileDeleterEE5resetB8nn180100EPv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @cmsCloseProfile(ptr noundef nonnull %i.c) #26 ; 0 uses
  %.val.pr = load ptr, ptr %3, align 8, !tbaa !75
  br label %_ZNSt3__110unique_ptrIvN3jxl12_GLOBAL__N_114ProfileDeleterEE5resetB8nn180100EPv.exit

_ZNSt3__110unique_ptrIvN3jxl12_GLOBAL__N_114ProfileDeleterEE5resetB8nn180100EPv.exit: ; preds = %bb.a, %bb.b
  %.val = phi ptr [ %i.b, %bb.a ], [ %.val.pr, %bb.b ]
  %i.e = icmp eq ptr %.val, null
  %spec.select = zext i1 %i.e to i32
  ret i32 %spec.select
}

declare i32 @cmsGetHeaderRenderingIntent(ptr noundef) local_unnamed_addr #3

declare i32 @cmsReadRawTag(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK3jxl3cms13ColorEncoding10ToExternalEv(ptr dead_on_unwind noalias writable sret(%struct.JxlColorEncoding) align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, i8 0, i64 104, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !71, !range !35, !noundef !36
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 3, ptr %0, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 2, ptr %i.d, align 8, !tbaa !88
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 2, ptr %i.e, align 8, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 2, ptr %i.f, align 4, !tbaa !89
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !76   ; 3 uses
  store i32 %i.h, ptr %0, align 8, !tbaa !54
  %i.i = load i32, ptr %1, align 8, !tbaa !68     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 %i.i, ptr %i.j, align 4, !tbaa !89
  switch i32 %i.i, label %_ZNK3jxl3cms13ColorEncoding13GetWhitePointEv.exit [
    i32 2, label %bb.d
    i32 1, label %bb.e
    i32 11, label %bb.f
    i32 10, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.l = load <2 x i32>, ptr %i.k, align 4, !tbaa !46
  %i.m = sitofp <2 x i32> %i.l to <2 x double>
  %i.n = fmul nnan <2 x double> %i.m, splat (double f0x3EB0C6F7A0B5ED8D)
end_hunk_0
