Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/domainpaircomm?download=true
inline.NumInlined: 855
inline.NumDeleted: 420
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEE6resizeEm:bb.a

bb.g:                                             ; preds = %bb.a
  %i.af = icmp ult i64 %1, %i.g
  br i1 %i.af, label %bb.h, label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEE17_M_default_appendEm.exit

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.ag
  br i1 %.not.i4, label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEE17_M_default_appendEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !352
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEE17_M_default_appendEm.exit

_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEE17_M_default_appendEm.exit: ; preds = %bb.i, %bb.h, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEE13_M_deallocateEPS2_m.exit42.i, %bb.c, %bb.g
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN3gmx12_GLOBAL__N_114GridColumnInfoC2ERKNS_4GridEi(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) initializes((0, 12), (16, 28), (32, 37), (40, 72)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(372) %1, i32 noundef %2) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.d = load i32, ptr %i.c, align 4, !tbaa !140  ; 3 uses
  %i.e = sdiv i32 %2, %i.d                        ; 3 uses
  %i.f = mul nsw i32 %i.e, %i.d                   ; 0 uses
  %.recomposed = srem i32 %2, %i.d                ; 2 uses
  %i.g = load float, ptr %i.b, align 4, !tbaa !123
  %i.h = sitofp i32 %i.e to float
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.j = load float, ptr %i.i, align 8, !tbaa !123
  %i.k = tail call float @llvm.fmuladd.f32(float %i.h, float %i.j, float %i.g)
  store float %i.k, ptr %0, align 8, !tbaa !353
  %i.l = load float, ptr %i.b, align 4, !tbaa !123
  %i.m = add nsw i32 %i.e, 1
  %i.n = sitofp i32 %i.m to float
  %i.o = load float, ptr %i.i, align 8, !tbaa !123
  %i.p = tail call float @llvm.fmuladd.f32(float %i.n, float %i.o, float %i.l)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.p, ptr %i.q, align 8, !tbaa !354
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.s = load float, ptr %i.r, align 8, !tbaa !123
  %i.t = sitofp i32 %.recomposed to float
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !123
  %i.w = tail call float @llvm.fmuladd.f32(float %i.t, float %i.v, float %i.s)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.w, ptr %i.x, align 4, !tbaa !355
  %i.y = load float, ptr %i.r, align 8, !tbaa !123
  %i.z = add nsw i32 %.recomposed, 1
  %i.aa = sitofp i32 %i.z to float
  %i.ab = load float, ptr %i.u, align 4, !tbaa !123
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.ab, float %i.y)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.ac, ptr %i.ad, align 4, !tbaa !356
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.af = load float, ptr %i.ae, align 4, !tbaa !123
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.af, ptr %i.ag, align 8, !tbaa !357
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !123
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.ai, ptr %i.aj, align 8, !tbaa !358
  %i.ak = load i8, ptr %1, align 8, !tbaa !188, !range !161, !noundef !162 ; 2 uses
  %i.al = xor i8 %i.ak, 1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %i.al, ptr %i.am, align 4, !tbaa !184
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !189
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !190 ; 2 uses
  %i.ar = sdiv i32 %i.ao, %i.aq                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !183
  %i.au = sext i32 %2 to i64
  %i.av = getelementptr [4 x i8], ptr %i.at, i64 %i.au ; 5 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !140
  %i.ay = load i32, ptr %i.av, align 4, !tbaa !140
  %i.az = sub nsw i32 %i.ax, %i.ay
  %i.ba = mul nsw i32 %i.az, %i.ar                ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !176
  %.not80.not = icmp eq i8 %i.ak, 0
  br i1 %.not80.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !359
  %i.bf = load i32, ptr %i.av, align 4, !tbaa !140
  %i.bg = mul i32 %i.ar, 6
  %i.bh = mul i32 %i.bg, %i.bf
  %i.bi = sext i32 %i.bh to i64
  %i.bj = mul nsw i32 %i.ba, 6
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bi ; 2 uses
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bk
  store ptr %i.bl, ptr %i.bc, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !360
  %.not = icmp sgt i32 %i.bo, %i.aq
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !361
  %i.br = load i32, ptr %i.av, align 4, !tbaa !140
  %i.bs = sext i32 %i.br to i64
  %i.bt = sext i32 %i.ba to i64
  %i.bu = getelementptr inbounds [32 x i8], ptr %i.bq, i64 %i.bs ; 2 uses
  %i.bv = getelementptr inbounds [32 x i8], ptr %i.bu, i64 %i.bt
  store ptr %i.bu, ptr %i.a, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bw = sdiv i32 %i.ba, 2                       ; 2 uses
  store i32 %i.bw, ptr %i.bb, align 8, !tbaa !176
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !362
  %i.bz = load i32, ptr %i.av, align 4, !tbaa !140
  %i.ca = sdiv i32 %i.bz, 2
  %i.cb = sext i32 %i.ca to i64
  %i.cc = sext i32 %i.bw to i64
  %i.cd = getelementptr inbounds [32 x i8], ptr %i.by, i64 %i.cb ; 2 uses
  %i.ce = getelementptr inbounds [32 x i8], ptr %i.cd, i64 %i.cc
  store ptr %i.cd, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.sink81 = phi i64 [ 48, %bb.d ], [ 48, %bb.e ], [ 64, %bb.b ]
  %.sink = phi ptr [ %i.bv, %bb.d ], [ %i.ce, %bb.e ], [ %i.bm, %bb.b ]
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink81
  store ptr %.sink, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc <2 x float> @_ZN3gmx12_GLOBAL__N_127cornerToBoundingBoxDistanceERKNS0_23DistanceCalculationInfoERKNS_11BasicVectorIfEES7_RKNS_11BoundingBoxE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(65) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %3) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !166, !range !161, !noundef !162
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.ad

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr                 ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i8, ptr %i.h, align 4, !range !161
  %.fr95.i = freeze i8 %i.i
  %i.j = trunc i8 %.fr95.i to i1
  %i.k = load i32, ptr %0, align 8, !tbaa !140
  %.not.us.i = icmp eq i32 %i.k, 0                ; 2 uses
  br i1 %i.j, label %.split.us.preheader.i, label %.split.preheader.i

.split.preheader.i:                               ; preds = %bb.b
  br i1 %.not.us.i, label %.split.1.i, label %._crit_edge.i

.split.us.preheader.i:                            ; preds = %bb.b
  br i1 %.not.us.i, label %.split.us.1.i, label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %.split.us.preheader.i
  %i.l = load float, ptr %i.f, align 4, !tbaa !123 ; 3 uses
  %i.m = fcmp ult float %i.l, 0.000000e+00
  %spec.select.idx.us.i = select i1 %i.m, i64 16, i64 0
  %spec.select.us.i = getelementptr inbounds nuw i8, ptr %3, i64 %spec.select.idx.us.i
  %i.n = load float, ptr %spec.select.us.i, align 4, !tbaa !123 ; 2 uses
  %i.o = load float, ptr %1, align 4, !tbaa !123
  %i.p = fsub float %i.n, %i.o
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float %i.l, float 0.000000e+00)
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.s = load float, ptr %i.r, align 4, !tbaa !123 ; 3 uses
  %i.t = fcmp ult float %i.s, 0.000000e+00
  %i.u = select i1 %i.t, i64 20, i64 4
  %.in55.us.1127.i = getelementptr inbounds nuw i8, ptr %3, i64 %i.u
  %i.v = load float, ptr %.in55.us.1127.i, align 4, !tbaa !123 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !123
  %i.y = fsub float %i.v, %i.x
  %i.z = tail call float @llvm.fmuladd.f32(float %i.y, float %i.s, float %i.q)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !123 ; 3 uses
  %i.ac = fcmp ult float %i.ab, 0.000000e+00
  %i.ad = select i1 %i.ac, i64 24, i64 8
  %.in55.us.2130.i = getelementptr inbounds nuw i8, ptr %3, i64 %i.ad
  %i.ae = load float, ptr %.in55.us.2130.i, align 4, !tbaa !123 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load float, ptr %i.af, align 4, !tbaa !123
  %i.ah = fsub float %i.ae, %i.ag
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ab, float %i.z) ; 3 uses
  %i.aj = fcmp ogt float %i.ai, 0.000000e+00
  br i1 %i.aj, label %bb.c, label %._crit_edge88.us.i

bb.c:                                             ; preds = %._crit_edge.us.i
  %i.ak = load i32, ptr %i.g, align 8, !tbaa !140
  %.not53.us.i = icmp eq i32 %i.ak, 0
  %4 = fmul nnan float %i.ai, %i.ai               ; 3 uses
  br i1 %.not53.us.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.vec.insert.us.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %4, i64 0
  br label %._crit_edge88.us.i

bb.e:                                             ; preds = %bb.c
  %i.al = fcmp ogt float %4, 0.000000e+00
  %.sroa.speculated59.us.i = select i1 %i.al, float %4, float 0.000000e+00
  %.sroa.0.0.vec.insert65.us.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.speculated59.us.i, i64 0
  br label %._crit_edge88.us.i

._crit_edge88.us.i:                               ; preds = %bb.e, %bb.d, %._crit_edge.us.i
  %.sroa.0.1.us.i = phi <2 x float> [ %.sroa.0.0.vec.insert65.us.i, %bb.e ], [ %.sroa.0.0.vec.insert.us.i, %bb.d ], [ zeroinitializer, %._crit_edge.us.i ] ; 5 uses
  %i.am = load float, ptr %2, align 4, !tbaa !123
  %i.an = fsub float %i.n, %i.am
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.an, float %i.l, float 0.000000e+00)
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !123
  %i.ar = fsub float %i.v, %i.aq
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.s, float %i.ao)
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load float, ptr %i.at, align 4, !tbaa !123
  %i.av = fsub float %i.ae, %i.au
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float %i.ab, float %i.as) ; 5 uses
  %i.ax = fcmp ogt float %i.aw, 0.000000e+00
  br i1 %i.ax, label %bb.f, label %.split.us.1.i

bb.f:                                             ; preds = %._crit_edge88.us.i
  %i.ay = load i32, ptr %i.g, align 8, !tbaa !140
  %.not54.us.i = icmp eq i32 %i.ay, 0
  br i1 %.not54.us.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.4.vec.extract78.us.i = extractelement <2 x float> %.sroa.0.1.us.i, i64 1
  %i.az = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.aw, float %.sroa.0.4.vec.extract78.us.i)
  %.sroa.0.4.vec.insert76.us.i = insertelement <2 x float> %.sroa.0.1.us.i, float %i.az, i64 1
  br label %.split.us.1.i

bb.h:                                             ; preds = %bb.f
  %i.ba = fmul nnan float %i.aw, %i.aw            ; 2 uses
  %.sroa.0.4.vec.extract.us.i = extractelement <2 x float> %.sroa.0.1.us.i, i64 1 ; 2 uses
  %i.bb = fcmp olt float %.sroa.0.4.vec.extract.us.i, %i.ba
  %.sroa.speculated.us.i = select i1 %i.bb, float %i.ba, float %.sroa.0.4.vec.extract.us.i
  %.sroa.0.4.vec.insert.us.i = insertelement <2 x float> %.sroa.0.1.us.i, float %.sroa.speculated.us.i, i64 1
  br label %.split.us.1.i

.split.us.1.i:                                    ; preds = %bb.h, %bb.g, %._crit_edge88.us.i, %.split.us.preheader.i
  %.sroa.0.2.us.i = phi <2 x float> [ zeroinitializer, %.split.us.preheader.i ], [ %.sroa.0.4.vec.insert.us.i, %bb.h ], [ %.sroa.0.4.vec.insert76.us.i, %bb.g ], [ %.sroa.0.1.us.i, %._crit_edge88.us.i ] ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !140
  %.not.us.1.i = icmp eq i32 %i.bd, 0
  br i1 %.not.us.1.i, label %.split.us.2.i, label %._crit_edge.us.1.i

._crit_edge.us.1.i:                               ; preds = %.split.us.1.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bf = load float, ptr %i.be, align 4, !tbaa !123 ; 3 uses
  %i.bg = fcmp ult float %i.bf, 0.000000e+00
  %i.bh = select i1 %i.bg, i64 20, i64 4
  %.in55.us.1.i = getelementptr inbounds nuw i8, ptr %3, i64 %i.bh
  %i.bi = load float, ptr %.in55.us.1.i, align 4, !tbaa !123 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !123
  %i.bl = fsub float %i.bi, %i.bk
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.bf, float 0.000000e+00)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !123 ; 3 uses
  %i.bp = fcmp ult float %i.bo, 0.000000e+00
  %i.bq = select i1 %i.bp, i64 24, i64 8
  %.in55.us.1.1.i = getelementptr inbounds nuw i8, ptr %3, i64 %i.bq
  %i.br = load float, ptr %.in55.us.1.1.i, align 4, !tbaa !123 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !123
  %i.bu = fsub float %i.br, %i.bt
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.bo, float %i.bm) ; 5 uses
  %i.bw = fcmp ogt float %i.bv, 0.000000e+00
  br i1 %i.bw, label %bb.i, label %._crit_edge88.us.1.i

bb.i:                                             ; preds = %._crit_edge.us.1.i
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !140
  %.not53.us.1.i = icmp eq i32 %i.by, 0
  br i1 %.not53.us.1.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.vec.extract.us.1.i = extractelement <2 x float> %.sroa.0.2.us.i, i64 0
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.bv, float %.sroa.0.0.vec.extract.us.1.i)
  %.sroa.0.0.vec.insert.us.1.i = insertelement <2 x float> %.sroa.0.2.us.i, float %i.bz, i64 0
  br label %._crit_edge88.us.1.i

bb.k:                                             ; preds = %bb.i
  %i.ca = fmul nnan float %i.bv, %i.bv            ; 2 uses
  %.sroa.0.0.vec.extract69.us.1.i = extractelement <2 x float> %.sroa.0.2.us.i, i64 0 ; 2 uses
  %i.cb = fcmp olt float %.sroa.0.0.vec.extract69.us.1.i, %i.ca
  %.sroa.speculated59.us.1.i = select i1 %i.cb, float %i.ca, float %.sroa.0.0.vec.extract69.us.1.i
  %.sroa.0.0.vec.insert65.us.1.i = insertelement <2 x float> %.sroa.0.2.us.i, float %.sroa.speculated59.us.1.i, i64 0
  br label %._crit_edge88.us.1.i

._crit_edge88.us.1.i:                             ; preds = %bb.k, %bb.j, %._crit_edge.us.1.i
  %.sroa.0.1.us.1.i = phi <2 x float> [ %.sroa.0.0.vec.insert65.us.1.i, %bb.k ], [ %.sroa.0.0.vec.insert.us.1.i, %bb.j ], [ %.sroa.0.2.us.i, %._crit_edge.us.1.i ] ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !123
  %i.ce = fsub float %i.bi, %i.cd
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.bf, float 0.000000e+00)
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !123
  %i.ci = fsub float %i.br, %i.ch
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.bo, float %i.cf) ; 5 uses
  %i.ck = fcmp ogt float %i.cj, 0.000000e+00
  br i1 %i.ck, label %bb.l, label %.split.us.2.i

bb.l:                                             ; preds = %._crit_edge88.us.1.i
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !140
  %.not54.us.1.i = icmp eq i32 %i.cm, 0
  br i1 %.not54.us.1.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.4.vec.extract78.us.1.i = extractelement <2 x float> %.sroa.0.1.us.1.i, i64 1
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.cj, float %.sroa.0.4.vec.extract78.us.1.i)
  %.sroa.0.4.vec.insert76.us.1.i = insertelement <2 x float> %.sroa.0.1.us.1.i, float %i.cn, i64 1
  br label %.split.us.2.i

bb.n:                                             ; preds = %bb.l
  %i.co = fmul nnan float %i.cj, %i.cj            ; 2 uses
  %.sroa.0.4.vec.extract.us.1.i = extractelement <2 x float> %.sroa.0.1.us.1.i, i64 1 ; 2 uses
  %i.cp = fcmp olt float %.sroa.0.4.vec.extract.us.1.i, %i.co
  %.sroa.speculated.us.1.i = select i1 %i.cp, float %i.co, float %.sroa.0.4.vec.extract.us.1.i
  %.sroa.0.4.vec.insert.us.1.i = insertelement <2 x float> %.sroa.0.1.us.1.i, float %.sroa.speculated.us.1.i, i64 1
  br label %.split.us.2.i

.split.us.2.i:                                    ; preds = %bb.n, %bb.m, %._crit_edge88.us.1.i, %.split.us.1.i
  %.sroa.0.2.us.1.i = phi <2 x float> [ %.sroa.0.2.us.i, %.split.us.1.i ], [ %.sroa.0.4.vec.insert.us.1.i, %bb.n ], [ %.sroa.0.4.vec.insert76.us.1.i, %bb.m ], [ %.sroa.0.1.us.1.i, %._crit_edge88.us.1.i ] ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !140
  %.not.us.2.i = icmp eq i32 %i.cr, 0
  br i1 %.not.us.2.i, label %_ZN3gmx12_GLOBAL__N_135cornerToBoundingBoxDistanceTrilinicERKNS0_23DistanceCalculationInfoERKNS_11BasicVectorIfEES7_RKNS_11BoundingBoxE.exit, label %._crit_edge.us.2.i

._crit_edge.us.2.i:                               ; preds = %.split.us.2.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !123 ; 3 uses
  %i.cu = fcmp ult float %i.ct, 0.000000e+00
  %i.cv = select i1 %i.cu, i64 24, i64 8
  %.in55.us.2.i = getelementptr inbounds nuw i8, ptr %3, i64 %i.cv
  %i.cw = load float, ptr %.in55.us.2.i, align 4, !tbaa !123 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !123
  %i.cz = fsub float %i.cw, %i.cy
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cz, float %i.ct, float 0.000000e+00) ; 5 uses
  %i.db = fcmp ogt float %i.da, 0.000000e+00
  br i1 %i.db, label %bb.o, label %._crit_edge88.us.2.i

bb.o:                                             ; preds = %._crit_edge.us.2.i
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !140
  %.not53.us.2.i = icmp eq i32 %i.dd, 0
  br i1 %.not53.us.2.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.0.0.vec.extract.us.2.i = extractelement <2 x float> %.sroa.0.2.us.1.i, i64 0
  %i.de = tail call float @llvm.fmuladd.f32(float %i.da, float %i.da, float %.sroa.0.0.vec.extract.us.2.i)
  %.sroa.0.0.vec.insert.us.2.i = insertelement <2 x float> %.sroa.0.2.us.1.i, float %i.de, i64 0
  br label %._crit_edge88.us.2.i

bb.q:                                             ; preds = %bb.o
  %i.df = fmul nnan float %i.da, %i.da            ; 2 uses
  %.sroa.0.0.vec.extract69.us.2.i = extractelement <2 x float> %.sroa.0.2.us.1.i, i64 0 ; 2 uses
  %i.dg = fcmp olt float %.sroa.0.0.vec.extract69.us.2.i, %i.df
  %.sroa.speculated59.us.2.i = select i1 %i.dg, float %i.df, float %.sroa.0.0.vec.extract69.us.2.i
  %.sroa.0.0.vec.insert65.us.2.i = insertelement <2 x float> %.sroa.0.2.us.1.i, float %.sroa.speculated59.us.2.i, i64 0
  br label %._crit_edge88.us.2.i

._crit_edge88.us.2.i:                             ; preds = %bb.q, %bb.p, %._crit_edge.us.2.i
  %.sroa.0.1.us.2.i = phi <2 x float> [ %.sroa.0.0.vec.insert65.us.2.i, %bb.q ], [ %.sroa.0.0.vec.insert.us.2.i, %bb.p ], [ %.sroa.0.2.us.1.i, %._crit_edge.us.2.i ] ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.di = load float, ptr %i.dh, align 4, !tbaa !123
  %i.dj = fsub float %i.cw, %i.di
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.ct, float 0.000000e+00) ; 5 uses
  %i.dl = fcmp ogt float %i.dk, 0.000000e+00
  br i1 %i.dl, label %bb.r, label %_ZN3gmx12_GLOBAL__N_135cornerToBoundingBoxDistanceTrilinicERKNS0_23DistanceCalculationInfoERKNS_11BasicVectorIfEES7_RKNS_11BoundingBoxE.exit

bb.r:                                             ; preds = %._crit_edge88.us.2.i
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !140
  %.not54.us.2.i = icmp eq i32 %i.dn, 0
  br i1 %.not54.us.2.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.0.4.vec.extract78.us.2.i = extractelement <2 x float> %.sroa.0.1.us.2.i, i64 1
  %i.do = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.dk, float %.sroa.0.4.vec.extract78.us.2.i)
  %.sroa.0.4.vec.insert76.us.2.i = insertelement <2 x float> %.sroa.0.1.us.2.i, float %i.do, i64 1
  br label %_ZN3gmx12_GLOBAL__N_135cornerToBoundingBoxDistanceTrilinicERKNS0_23DistanceCalculationInfoERKNS_11BasicVectorIfEES7_RKNS_11BoundingBoxE.exit

bb.t:                                             ; preds = %bb.r
  %i.dp = fmul nnan float %i.dk, %i.dk            ; 2 uses
  %.sroa.0.4.vec.extract.us.2.i = extractelement <2 x float> %.sroa.0.1.us.2.i, i64 1 ; 2 uses
  %i.dq = fcmp olt float %.sroa.0.4.vec.extract.us.2.i, %i.dp
  %.sroa.speculated.us.2.i = select i1 %i.dq, float %i.dp, float %.sroa.0.4.vec.extract.us.2.i
  %.sroa.0.4.vec.insert.us.2.i = insertelement <2 x float> %.sroa.0.1.us.2.i, float %.sroa.speculated.us.2.i, i64 1
  br label %_ZN3gmx12_GLOBAL__N_135cornerToBoundingBoxDistanceTrilinicERKNS0_23DistanceCalculationInfoERKNS_11BasicVectorIfEES7_RKNS_11BoundingBoxE.exit

._crit_edge.i:                                    ; preds = %.split.preheader.i
  %i.dr = load float, ptr %i.f, align 4, !tbaa !123 ; 2 uses
  %i.ds = fcmp ult float %i.dr, 0.000000e+00
  %spec.select.idx.i = select i1 %i.ds, i64 16, i64 0
  %spec.select.i = getelementptr inbounds nuw i8, ptr %3, i64 %spec.select.idx.i
  %i.dt = load float, ptr %spec.select.i, align 4, !tbaa !123
  %i.du = load float, ptr %1, align 4, !tbaa !123
  %i.dv = fsub float %i.dt, %i.du
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.dv, float %i.dr, float 0.000000e+00)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !123 ; 2 uses
  %i.dz = fcmp ult float %i.dy, 0.000000e+00
  %i.ea = select i1 %i.dz, i64 20, i64 4
  %.in55.1106.i = getelementptr inbounds nuw i8, ptr %3, i64 %i.ea
  %i.eb = load float, ptr %.in55.1106.i, align 4, !tbaa !123
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !123
  %i.ee = fsub float %i.eb, %i.ed
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.ee, float %i.dy, float %i.dw)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !123 ; 2 uses
  %i.ei = fcmp ult float %i.eh, 0.000000e+00
  %i.ej = select i1 %i.ei, i64 24, i64 8
  %.in55.2109.i = getelementptr inbounds nuw i8, ptr %3, i64 %i.ej
  %i.ek = load float, ptr %.in55.2109.i, align 4, !tbaa !123
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.em = load float, ptr %i.el, align 4, !tbaa !123
  %i.en = fsub float %i.ek, %i.em
  %i.eo = tail call float @llvm.fmuladd.f32(float %i.en, float %i.eh, float %i.ef) ; 3 uses
  %i.ep = fcmp ogt float %i.eo, 0.000000e+00
  br i1 %i.ep, label %bb.u, label %.split.1.i

bb.u:                                             ; preds = %._crit_edge.i
  %i.eq = load i32, ptr %i.g, align 8, !tbaa !140
  %.not53.i = icmp eq i32 %i.eq, 0
  %5 = fmul nnan float %i.eo, %i.eo               ; 3 uses
  br i1 %.not53.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %5, i64 0
  br label %.split.1.i

bb.w:                                             ; preds = %bb.u
  %i.er = fcmp ogt float %5, 0.000000e+00
  %.sroa.speculated59.i = select i1 %i.er, float %5, float 0.000000e+00
  %.sroa.0.0.vec.insert65.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.speculated59.i, i64 0
  br label %.split.1.i

.split.1.i:                                       ; preds = %bb.w, %bb.v, %._crit_edge.i, %.split.preheader.i
  %.sroa.0.2.i = phi <2 x float> [ zeroinitializer, %.split.preheader.i ], [ %.sroa.0.0.vec.insert65.i, %bb.w ], [ %.sroa.0.0.vec.insert.i, %bb.v ], [ zeroinitializer, %._crit_edge.i ] ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !140
  %.not.1.i = icmp eq i32 %i.et, 0
  br i1 %.not.1.i, label %.split.2.i, label %._crit_edge.1.i

._crit_edge.1.i:                                  ; preds = %.split.1.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !123 ; 2 uses
  %i.ew = fcmp ult float %i.ev, 0.000000e+00
  %i.ex = select i1 %i.ew, i64 20, i64 4
  %.in55.1.i = getelementptr inbounds nuw i8, ptr %3, i64 %i.ex
  %i.ey = load float, ptr %.in55.1.i, align 4, !tbaa !123
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !123
  %i.fb = fsub float %i.ey, %i.fa
  %i.fc = tail call float @llvm.fmuladd.f32(float %i.fb, float %i.ev, float 0.000000e+00)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !123 ; 2 uses
  %i.ff = fcmp ult float %i.fe, 0.000000e+00
  %i.fg = select i1 %i.ff, i64 24, i64 8
  %.in55.1.1.i = getelementptr inbounds nuw i8, ptr %3, i64 %i.fg
  %i.fh = load float, ptr %.in55.1.1.i, align 4, !tbaa !123
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !123
  %i.fk = fsub float %i.fh, %i.fj
  %i.fl = tail call float @llvm.fmuladd.f32(float %i.fk, float %i.fe, float %i.fc) ; 5 uses
  %i.fm = fcmp ogt float %i.fl, 0.000000e+00
  br i1 %i.fm, label %bb.x, label %.split.2.i

bb.x:                                             ; preds = %._crit_edge.1.i
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !140
  %.not53.1.i = icmp eq i32 %i.fo, 0
  br i1 %.not53.1.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.vec.extract.1.i = extractelement <2 x float> %.sroa.0.2.i, i64 0
  %i.fp = tail call float @llvm.fmuladd.f32(float %i.fl, float %i.fl, float %.sroa.0.0.vec.extract.1.i)
  %.sroa.0.0.vec.insert.1.i = insertelement <2 x float> %.sroa.0.2.i, float %i.fp, i64 0
  br label %.split.2.i

bb.z:                                             ; preds = %bb.x
  %i.fq = fmul nnan float %i.fl, %i.fl            ; 2 uses
  %.sroa.0.0.vec.extract69.1.i = extractelement <2 x float> %.sroa.0.2.i, i64 0 ; 2 uses
  %i.fr = fcmp olt float %.sroa.0.0.vec.extract69.1.i, %i.fq
  %.sroa.speculated59.1.i = select i1 %i.fr, float %i.fq, float %.sroa.0.0.vec.extract69.1.i
  %.sroa.0.0.vec.insert65.1.i = insertelement <2 x float> %.sroa.0.2.i, float %.sroa.speculated59.1.i, i64 0
  br label %.split.2.i

.split.2.i:                                       ; preds = %bb.z, %bb.y, %._crit_edge.1.i, %.split.1.i
  %.sroa.0.2.1.i = phi <2 x float> [ %.sroa.0.2.i, %.split.1.i ], [ %.sroa.0.0.vec.insert65.1.i, %bb.z ], [ %.sroa.0.0.vec.insert.1.i, %bb.y ], [ %.sroa.0.2.i, %._crit_edge.1.i ] ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !140
  %.not.2.i = icmp eq i32 %i.ft, 0
  br i1 %.not.2.i, label %_ZN3gmx12_GLOBAL__N_135cornerToBoundingBoxDistanceTrilinicERKNS0_23DistanceCalculationInfoERKNS_11BasicVectorIfEES7_RKNS_11BoundingBoxE.exit, label %._crit_edge.2.i

._crit_edge.2.i:                                  ; preds = %.split.2.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !123 ; 2 uses
  %i.fw = fcmp ult float %i.fv, 0.000000e+00
  %i.fx = select i1 %i.fw, i64 24, i64 8
  %.in55.2.i = getelementptr inbounds nuw i8, ptr %3, i64 %i.fx
  %i.fy = load float, ptr %.in55.2.i, align 4, !tbaa !123
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !123
  %i.gb = fsub float %i.fy, %i.ga
  %i.gc = tail call float @llvm.fmuladd.f32(float %i.gb, float %i.fv, float 0.000000e+00) ; 5 uses
  %i.gd = fcmp ogt float %i.gc, 0.000000e+00
  br i1 %i.gd, label %bb.aa, label %_ZN3gmx12_GLOBAL__N_135cornerToBoundingBoxDistanceTrilinicERKNS0_23DistanceCalculationInfoERKNS_11BasicVectorIfEES7_RKNS_11BoundingBoxE.exit

bb.aa:                                            ; preds = %._crit_edge.2.i
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !140
  %.not53.2.i = icmp eq i32 %i.gf, 0
  br i1 %.not53.2.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.0.0.vec.extract.2.i = extractelement <2 x float> %.sroa.0.2.1.i, i64 0
  %i.gg = tail call float @llvm.fmuladd.f32(float %i.gc, float %i.gc, float %.sroa.0.0.vec.extract.2.i)
  %.sroa.0.0.vec.insert.2.i = insertelement <2 x float> %.sroa.0.2.1.i, float %i.gg, i64 0
  br label %_ZN3gmx12_GLOBAL__N_135cornerToBoundingBoxDistanceTrilinicERKNS0_23DistanceCalculationInfoERKNS_11BasicVectorIfEES7_RKNS_11BoundingBoxE.exit

bb.ac:                                            ; preds = %bb.aa
  %i.gh = fmul nnan float %i.gc, %i.gc            ; 2 uses
  %.sroa.0.0.vec.extract69.2.i = extractelement <2 x float> %.sroa.0.2.1.i, i64 0 ; 2 uses
  %i.gi = fcmp olt float %.sroa.0.0.vec.extract69.2.i, %i.gh
  %.sroa.speculated59.2.i = select i1 %i.gi, float %i.gh, float %.sroa.0.0.vec.extract69.2.i
  %.sroa.0.0.vec.insert65.2.i = insertelement <2 x float> %.sroa.0.2.1.i, float %.sroa.speculated59.2.i, i64 0
  br label %_ZN3gmx12_GLOBAL__N_135cornerToBoundingBoxDistanceTrilinicERKNS0_23DistanceCalculationInfoERKNS_11BasicVectorIfEES7_RKNS_11BoundingBoxE.exit

bb.ad:                                            ; preds = %bb.a
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.gk = load i8, ptr %i.gj, align 4, !range !161
  %.fr31.i = freeze i8 %i.gk
  %i.gl = trunc i8 %.fr31.i to i1
  %i.gm = load i32, ptr %0, align 8, !tbaa !140
  %.not.us.i9 = icmp eq i32 %i.gm, 0              ; 2 uses
  br i1 %i.gl, label %.split.us.preheader.i23, label %.split.preheader.i10

.split.preheader.i10:                             ; preds = %bb.ad
  br i1 %.not.us.i9, label %.split.1.i12, label %bb.ak

.split.us.preheader.i23:                          ; preds = %bb.ad
  br i1 %.not.us.i9, label %.split.us.1.i26, label %bb.ae

bb.ae:                                            ; preds = %.split.us.preheader.i23
  %i.gn = load float, ptr %3, align 4, !tbaa !123 ; 2 uses
  %i.go = load float, ptr %1, align 4, !tbaa !123
  %i.gp = fsub float %i.gn, %i.go                 ; 3 uses
  %i.gq = fcmp ogt float %i.gp, 0.000000e+00
  %6 = fmul float %i.gp, %i.gp
  %.sroa.0.0.vec.insert.us.i24 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %6, i64 0
  %.sroa.0.1.us.i25 = select i1 %i.gq, <2 x float> %.sroa.0.0.vec.insert.us.i24, <2 x float> zeroinitializer ; 3 uses
  %i.gr = load float, ptr %2, align 4, !tbaa !123
  %i.gs = fsub float %i.gn, %i.gr                 ; 3 uses
  %i.gt = fcmp ogt float %i.gs, 0.000000e+00
  br i1 %i.gt, label %bb.af, label %.split.us.1.i26

bb.af:                                            ; preds = %bb.ae
  %.sroa.0.4.vec.extract.us.i42 = extractelement <2 x float> %.sroa.0.1.us.i25, i64 1
  %i.gu = tail call float @llvm.fmuladd.f32(float %i.gs, float %i.gs, float %.sroa.0.4.vec.extract.us.i42)
  %.sroa.0.4.vec.insert.us.i43 = insertelement <2 x float> %.sroa.0.1.us.i25, float %i.gu, i64 1
  br label %.split.us.1.i26

.split.us.1.i26:                                  ; preds = %bb.af, %bb.ae, %.split.us.preheader.i23
  %.sroa.0.2.us.i27 = phi <2 x float> [ zeroinitializer, %.split.us.preheader.i23 ], [ %.sroa.0.4.vec.insert.us.i43, %bb.af ], [ %.sroa.0.1.us.i25, %bb.ae ] ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !140
  %.not.us.1.i28 = icmp eq i32 %i.gw, 0
  br i1 %.not.us.1.i28, label %.split.us.2.i32, label %bb.ag

bb.ag:                                            ; preds = %.split.us.1.i26
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !123 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !123
  %i.hb = fsub float %i.gy, %i.ha                 ; 3 uses
  %i.hc = fcmp ogt float %i.hb, 0.000000e+00
  %.sroa.0.0.vec.extract.us.1.i29 = extractelement <2 x float> %.sroa.0.2.us.i27, i64 0
  %i.hd = tail call float @llvm.fmuladd.f32(float %i.hb, float %i.hb, float %.sroa.0.0.vec.extract.us.1.i29)
  %.sroa.0.0.vec.insert.us.1.i30 = insertelement <2 x float> %.sroa.0.2.us.i27, float %i.hd, i64 0
  %.sroa.0.1.us.1.i31 = select i1 %i.hc, <2 x float> %.sroa.0.0.vec.insert.us.1.i30, <2 x float> %.sroa.0.2.us.i27 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.hf = load float, ptr %i.he, align 4, !tbaa !123
  %i.hg = fsub float %i.gy, %i.hf                 ; 3 uses
  %i.hh = fcmp ogt float %i.hg, 0.000000e+00
  br i1 %i.hh, label %bb.ah, label %.split.us.2.i32

bb.ah:                                            ; preds = %bb.ag
  %.sroa.0.4.vec.extract.us.1.i40 = extractelement <2 x float> %.sroa.0.1.us.1.i31, i64 1
  %i.hi = tail call float @llvm.fmuladd.f32(float %i.hg, float %i.hg, float %.sroa.0.4.vec.extract.us.1.i40)
  %.sroa.0.4.vec.insert.us.1.i41 = insertelement <2 x float> %.sroa.0.1.us.1.i31, float %i.hi, i64 1
  br label %.split.us.2.i32

.split.us.2.i32:                                  ; preds = %bb.ah, %bb.ag, %.split.us.1.i26
  %.sroa.0.2.us.1.i33 = phi <2 x float> [ %.sroa.0.2.us.i27, %.split.us.1.i26 ], [ %.sroa.0.4.vec.insert.us.1.i41, %bb.ah ], [ %.sroa.0.1.us.1.i31, %bb.ag ] ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !140
  %.not.us.2.i34 = icmp eq i32 %i.hk, 0
  br i1 %.not.us.2.i34, label %_ZN3gmx12_GLOBAL__N_135cornerToBoundingBoxDistanceTrilinicERKNS0_23DistanceCalculationInfoERKNS_11BasicVectorIfEES7_RKNS_11BoundingBoxE.exit, label %bb.ai

bb.ai:                                            ; preds = %.split.us.2.i32
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !123 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !123
  %i.hp = fsub float %i.hm, %i.ho                 ; 3 uses
  %i.hq = fcmp ogt float %i.hp, 0.000000e+00
  %.sroa.0.0.vec.extract.us.2.i35 = extractelement <2 x float> %.sroa.0.2.us.1.i33, i64 0
  %i.hr = tail call float @llvm.fmuladd.f32(float %i.hp, float %i.hp, float %.sroa.0.0.vec.extract.us.2.i35)
  %.sroa.0.0.vec.insert.us.2.i36 = insertelement <2 x float> %.sroa.0.2.us.1.i33, float %i.hr, i64 0
  %.sroa.0.1.us.2.i37 = select i1 %i.hq, <2 x float> %.sroa.0.0.vec.insert.us.2.i36, <2 x float> %.sroa.0.2.us.1.i33 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !123
  %i.hu = fsub float %i.hm, %i.ht                 ; 3 uses
  %i.hv = fcmp ogt float %i.hu, 0.000000e+00
  br i1 %i.hv, label %bb.aj, label %_ZN3gmx12_GLOBAL__N_135cornerToBoundingBoxDistanceTrilinicERKNS0_23DistanceCalculationInfoERKNS_11BasicVectorIfEES7_RKNS_11BoundingBoxE.exit

bb.aj:                                            ; preds = %bb.ai
  %.sroa.0.4.vec.extract.us.2.i38 = extractelement <2 x float> %.sroa.0.1.us.2.i37, i64 1
  %i.hw = tail call float @llvm.fmuladd.f32(float %i.hu, float %i.hu, float %.sroa.0.4.vec.extract.us.2.i38)
  %.sroa.0.4.vec.insert.us.2.i39 = insertelement <2 x float> %.sroa.0.1.us.2.i37, float %i.hw, i64 1
  br label %_ZN3gmx12_GLOBAL__N_135cornerToBoundingBoxDistanceTrilinicERKNS0_23DistanceCalculationInfoERKNS_11BasicVectorIfEES7_RKNS_11BoundingBoxE.exit

bb.ak:                                            ; preds = %.split.preheader.i10
  %i.hx = load float, ptr %3, align 4, !tbaa !123
  %i.hy = load float, ptr %1, align 4, !tbaa !123
  %i.hz = fsub float %i.hx, %i.hy                 ; 3 uses
  %i.ia = fcmp ogt float %i.hz, 0.000000e+00
  %7 = fmul float %i.hz, %i.hz
  %.sroa.0.0.vec.insert.i11 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %7, i64 0
  %.sroa.0.1.i = select i1 %i.ia, <2 x float> %.sroa.0.0.vec.insert.i11, <2 x float> zeroinitializer
  br label %.split.1.i12

.split.1.i12:                                     ; preds = %bb.ak, %.split.preheader.i10
  %.sroa.0.2.i13 = phi <2 x float> [ zeroinitializer, %.split.preheader.i10 ], [ %.sroa.0.1.i, %bb.ak ] ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !140
  %.not.1.i14 = icmp eq i32 %i.ic, 0
  br i1 %.not.1.i14, label %.split.2.i17, label %bb.al

bb.al:                                            ; preds = %.split.1.i12
  %i.id = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ie = load float, ptr %i.id, align 4, !tbaa !123
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ig = load float, ptr %i.if, align 4, !tbaa !123
  %i.ih = fsub float %i.ie, %i.ig                 ; 3 uses
  %i.ii = fcmp ogt float %i.ih, 0.000000e+00
  %.sroa.0.0.vec.extract.1.i15 = extractelement <2 x float> %.sroa.0.2.i13, i64 0
  %i.ij = tail call float @llvm.fmuladd.f32(float %i.ih, float %i.ih, float %.sroa.0.0.vec.extract.1.i15)
  %.sroa.0.0.vec.insert.1.i16 = insertelement <2 x float> %.sroa.0.2.i13, float %i.ij, i64 0
  %.sroa.0.1.1.i = select i1 %i.ii, <2 x float> %.sroa.0.0.vec.insert.1.i16, <2 x float> %.sroa.0.2.i13
  br label %.split.2.i17

.split.2.i17:                                     ; preds = %bb.al, %.split.1.i12
  %.sroa.0.2.1.i18 = phi <2 x float> [ %.sroa.0.2.i13, %.split.1.i12 ], [ %.sroa.0.1.1.i, %bb.al ] ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !140
  %.not.2.i19 = icmp eq i32 %i.il, 0
  br i1 %.not.2.i19, label %_ZN3gmx12_GLOBAL__N_135cornerToBoundingBoxDistanceTrilinicERKNS0_23DistanceCalculationInfoERKNS_11BasicVectorIfEES7_RKNS_11BoundingBoxE.exit, label %bb.am

bb.am:                                            ; preds = %.split.2.i17
  %i.im = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.in = load float, ptr %i.im, align 4, !tbaa !123
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ip = load float, ptr %i.io, align 4, !tbaa !123
  %i.iq = fsub float %i.in, %i.ip                 ; 3 uses
  %i.ir = fcmp ogt float %i.iq, 0.000000e+00
  %.sroa.0.0.vec.extract.2.i20 = extractelement <2 x float> %.sroa.0.2.1.i18, i64 0
  %i.is = tail call float @llvm.fmuladd.f32(float %i.iq, float %i.iq, float %.sroa.0.0.vec.extract.2.i20)
  %.sroa.0.0.vec.insert.2.i21 = insertelement <2 x float> %.sroa.0.2.1.i18, float %i.is, i64 0
  %.sroa.0.1.2.i = select i1 %i.ir, <2 x float> %.sroa.0.0.vec.insert.2.i21, <2 x float> %.sroa.0.2.1.i18
  br label %_ZN3gmx12_GLOBAL__N_135cornerToBoundingBoxDistanceTrilinicERKNS0_23DistanceCalculationInfoERKNS_11BasicVectorIfEES7_RKNS_11BoundingBoxE.exit

_ZN3gmx12_GLOBAL__N_135cornerToBoundingBoxDistanceTrilinicERKNS0_23DistanceCalculationInfoERKNS_11BasicVectorIfEES7_RKNS_11BoundingBoxE.exit: ; preds = %bb.am, %.split.2.i17, %bb.aj, %bb.ai, %.split.us.2.i32, %bb.ac, %bb.ab, %._crit_edge.2.i, %.split.2.i, %bb.t, %bb.s, %._crit_edge88.us.2.i, %.split.us.2.i
  %.sroa.0.0 = phi <2 x float> [ %.sroa.0.2.1.i, %._crit_edge.2.i ], [ %.sroa.0.1.us.2.i, %._crit_edge88.us.2.i ], [ %.sroa.0.2.us.1.i, %.split.us.2.i ], [ %.sroa.0.4.vec.insert.us.2.i, %bb.t ], [ %.sroa.0.4.vec.insert76.us.2.i, %bb.s ], [ %.sroa.0.2.1.i, %.split.2.i ], [ %.sroa.0.0.vec.insert65.2.i, %bb.ac ], [ %.sroa.0.0.vec.insert.2.i, %bb.ab ], [ %.sroa.0.1.us.2.i37, %bb.ai ], [ %.sroa.0.2.us.1.i33, %.split.us.2.i32 ], [ %.sroa.0.4.vec.insert.us.2.i39, %bb.aj ], [ %.sroa.0.2.1.i18, %.split.2.i17 ], [ %.sroa.0.1.2.i, %bb.am ]
  ret <2 x float> %.sroa.0.0
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKiS4_EEEEvNS7_IPiS4_EET_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %.not95 = icmp eq ptr %2, %3
  br i1 %.not95, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEEEENS1_IPiS9_EEET0_T_SE_SD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 6 uses
  %i.d = sub i64 %i.b, %i.c                       ; 10 uses
  %i.e = ashr exact i64 %i.d, 2                   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !196
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !193  ; 22 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 6 uses
  %i.l = sub i64 %i.j, %i.k
  %.not = icmp ult i64 %i.l, %i.d
  br i1 %.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.k, %i.m                       ; 5 uses
  %i.o = ashr exact i64 %i.n, 2                   ; 2 uses
  %i.p = icmp ugt i64 %i.o, %i.e
  br i1 %i.p, label %iter.check189, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEEEElEvRT_T0_St26random_access_iterator_tag.exit

iter.check189:                                    ; preds = %bb.c
  %.idx = sub i64 0, %i.d
  %i.q = getelementptr inbounds i8, ptr %i.i, i64 %.idx ; 6 uses
  %i.r = add i64 %i.b, -4
  %i.s = sub i64 %i.r, %i.c                       ; 3 uses
  %i.t = lshr i64 %i.s, 2
  %i.u = add nuw nsw i64 %i.t, 1                  ; 5 uses
  %min.iters.check171 = icmp ult i64 %i.s, 28
  %diff.check173 = icmp ult i64 %i.d, 128
  %or.cond = or i1 %min.iters.check171, %diff.check173
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check174

vector.main.loop.iter.check174:                   ; preds = %iter.check189
  %min.iters.check175 = icmp ult i64 %i.s, 124
  br i1 %min.iters.check175, label %vec.epilog.ph193, label %vector.ph176

vector.ph176:                                     ; preds = %vector.main.loop.iter.check174
  %i.v = and i64 %i.u, 24
  %n.vec177 = and i64 %i.u, 9223372036854775776   ; 4 uses
  %i.w = shl i64 %n.vec177, 2                     ; 2 uses
  %i.x = getelementptr i8, ptr %i.i, i64 %i.w
  %i.y = getelementptr i8, ptr %i.q, i64 %i.w
  br label %vector.body178

vector.body178:                                   ; preds = %vector.ph176, %vector.body178
  %index179 = phi i64 [ 0, %vector.ph176 ], [ %index.next186, %vector.body178 ] ; 2 uses
  %i.z = shl i64 %index179, 2                     ; 2 uses
  %next.gep180 = getelementptr i8, ptr %i.i, i64 %i.z ; 4 uses
  %next.gep181 = getelementptr i8, ptr %i.q, i64 %i.z ; 4 uses
  %i.aa = getelementptr i8, ptr %next.gep181, i64 32
  %i.ab = getelementptr i8, ptr %next.gep181, i64 64
  %i.ac = getelementptr i8, ptr %next.gep181, i64 96
  %wide.load182 = load <8 x i32>, ptr %next.gep181, align 4, !tbaa !140
  %wide.load183 = load <8 x i32>, ptr %i.aa, align 4, !tbaa !140
  %wide.load184 = load <8 x i32>, ptr %i.ab, align 4, !tbaa !140
  %wide.load185 = load <8 x i32>, ptr %i.ac, align 4, !tbaa !140
  %i.ad = getelementptr i8, ptr %next.gep180, i64 32
  %i.ae = getelementptr i8, ptr %next.gep180, i64 64
  %i.af = getelementptr i8, ptr %next.gep180, i64 96
  store <8 x i32> %wide.load182, ptr %next.gep180, align 4, !tbaa !140
  store <8 x i32> %wide.load183, ptr %i.ad, align 4, !tbaa !140
  store <8 x i32> %wide.load184, ptr %i.ae, align 4, !tbaa !140
  store <8 x i32> %wide.load185, ptr %i.af, align 4, !tbaa !140
  %index.next186 = add nuw i64 %index179, 32      ; 2 uses
  %i.ag = icmp eq i64 %index.next186, %n.vec177
  br i1 %i.ag, label %middle.block187, label %vector.body178, !llvm.loop !363

middle.block187:                                  ; preds = %vector.body178
  %cmp.n188 = icmp eq i64 %i.u, %n.vec177
  br i1 %cmp.n188, label %_ZSt22__uninitialized_move_aIPiS0_N3gmx30DefaultInitializationAllocatorIiSaIiEEEET0_T_S6_S5_RT1_.exit, label %vec.epilog.iter.check190

vec.epilog.iter.check190:                         ; preds = %middle.block187
  %min.epilog.iters.check192 = icmp eq i64 %i.v, 0
  br i1 %min.epilog.iters.check192, label %.lr.ph.i.i.preheader, label %vec.epilog.ph193, !prof !381

vec.epilog.ph193:                                 ; preds = %vector.main.loop.iter.check174, %vec.epilog.iter.check190
  %vec.epilog.resume.val194 = phi i64 [ %n.vec177, %vec.epilog.iter.check190 ], [ 0, %vector.main.loop.iter.check174 ]
  %n.vec195 = and i64 %i.u, 9223372036854775800   ; 3 uses
  %i.ah = shl i64 %n.vec195, 2                    ; 2 uses
  %i.ai = getelementptr i8, ptr %i.i, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.q, i64 %i.ah
  br label %vec.epilog.vector.body196

vec.epilog.vector.body196:                        ; preds = %vec.epilog.vector.body196, %vec.epilog.ph193
  %index197 = phi i64 [ %vec.epilog.resume.val194, %vec.epilog.ph193 ], [ %index.next201, %vec.epilog.vector.body196 ] ; 2 uses
  %i.ak = shl i64 %index197, 2                    ; 2 uses
  %next.gep198 = getelementptr i8, ptr %i.i, i64 %i.ak
  %next.gep199 = getelementptr i8, ptr %i.q, i64 %i.ak
  %wide.load200 = load <8 x i32>, ptr %next.gep199, align 4, !tbaa !140
  store <8 x i32> %wide.load200, ptr %next.gep198, align 4, !tbaa !140
  %index.next201 = add nuw i64 %index197, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next201, %n.vec195
  br i1 %i.al, label %vec.epilog.middle.block202, label %vec.epilog.vector.body196, !llvm.loop !364

vec.epilog.middle.block202:                       ; preds = %vec.epilog.vector.body196
  %cmp.n203 = icmp eq i64 %i.u, %n.vec195
  br i1 %cmp.n203, label %_ZSt22__uninitialized_move_aIPiS0_N3gmx30DefaultInitializationAllocatorIiSaIiEEEET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check189, %vec.epilog.iter.check190, %vec.epilog.middle.block202
  %.015.i.i.ph = phi ptr [ %i.i, %iter.check189 ], [ %i.x, %vec.epilog.iter.check190 ], [ %i.ai, %vec.epilog.middle.block202 ]
  %.sroa.010.014.i.i.ph = phi ptr [ %i.q, %iter.check189 ], [ %i.y, %vec.epilog.iter.check190 ], [ %i.aj, %vec.epilog.middle.block202 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.ao, %.lr.ph.i.i ], [ %.015.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.an, %.lr.ph.i.i ], [ %.sroa.010.014.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.am = load i32, ptr %.sroa.010.014.i.i, align 4, !tbaa !140
  store i32 %i.am, ptr %.015.i.i, align 4, !tbaa !140
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.an, %i.i
  br i1 %.not.i.i, label %_ZSt22__uninitialized_move_aIPiS0_N3gmx30DefaultInitializationAllocatorIiSaIiEEEET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !365

_ZSt22__uninitialized_move_aIPiS0_N3gmx30DefaultInitializationAllocatorIiSaIiEEEET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block202, %middle.block187
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store ptr %i.ap, ptr %i.h, align 8, !tbaa !193
  %i.aq = ptrtoint ptr %i.q to i64
  %i.ar = sub i64 %i.aq, %i.m                     ; 3 uses
  %i.as = ashr exact i64 %i.ar, 2                 ; 2 uses
  %i.at = icmp sgt i64 %i.as, 1
  br i1 %i.at, label %bb.d, label %bb.e, !prof !382

bb.d:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_N3gmx30DefaultInitializationAllocatorIiSaIiEEEET0_T_S6_S5_RT1_.exit
  %i.au = sub nsw i64 0, %i.as
  %i.av = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.au
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.av, ptr align 4 %1, i64 %i.ar, i1 false)
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_N3gmx30DefaultInitializationAllocatorIiSaIiEEEET0_T_S6_S5_RT1_.exit
  %i.aw = icmp eq i64 %i.ar, 4
  br i1 %i.aw, label %bb.f, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds i8, ptr %i.i, i64 -4
end_hunk_0
