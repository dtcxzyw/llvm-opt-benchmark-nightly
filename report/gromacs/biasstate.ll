Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/biasstate?download=true
inline.NumInlined: 2110
inline.NumDeleted: 971
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZNSt6vectorIdN3gmx9AllocatorIdNS0_23AlignedAllocationPolicyEEEE17_M_default_appendEm:bb.a
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIdN3gmx9AllocatorIdNS0_23AlignedAllocationPolicyEEEE13_M_deallocateEPdm.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIdN3gmx9AllocatorIdNS0_23AlignedAllocationPolicyEEEE11_S_relocateEPdS5_S5_RS3_.exit
  tail call void @_ZN3gmx23AlignedAllocationPolicy4freeEPv(ptr noundef nonnull %i.c)
  br label %_ZNSt12_Vector_baseIdN3gmx9AllocatorIdNS0_23AlignedAllocationPolicyEEEE13_M_deallocateEPdm.exit

_ZNSt12_Vector_baseIdN3gmx9AllocatorIdNS0_23AlignedAllocationPolicyEEEE13_M_deallocateEPdm.exit: ; preds = %_ZNSt6vectorIdN3gmx9AllocatorIdNS0_23AlignedAllocationPolicyEEEE11_S_relocateEPdS5_S5_RS3_.exit, %bb.f
  store ptr %i.u, ptr %0, align 8, !tbaa !167
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.az, ptr %i.a, align 8, !tbaa !166
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ba, ptr %i.h, align 8, !tbaa !353
  br label %bb.g

bb.g:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmN3gmx9AllocatorIdNS1_23AlignedAllocationPolicyEEEET_S5_T0_RT1_.exit, %_ZNSt12_Vector_baseIdN3gmx9AllocatorIdNS0_23AlignedAllocationPolicyEEEE13_M_deallocateEPdm.exit, %bb.a
  ret void
}

declare noundef ptr @_ZN3gmx23AlignedAllocationPolicy6mallocEm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

declare void @_ZN3gmx23AlignedAllocationPolicy4freeEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x double> @llvm.x86.avx512.max.pd.512(<8 x double>, <8 x double>, i32 immarg) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x double> @llvm.x86.avx512.rcp14.pd.512(<8 x double>, <8 x double>, i8) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x double> @llvm.fma.v8f64(<8 x double>, <8 x double>, <8 x double>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx512.mask.cvtpd2dq.512(<8 x double>, <8 x i32>, i8, i32 immarg) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x double> @llvm.x86.avx512.mask.rndscale.pd.512(<8 x double>, i32 immarg, <8 x double>, i8, i32 immarg) #21

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK3gmx9BiasState17calcConvolvedBiasENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridERA4_Kd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #2 align 2 {
bb.a:
  %5 = alloca %"class.gmx::ArrayRef.38", align 8  ; 2 uses
  %i.a = tail call noundef i32 @_ZNK3gmx8BiasGrid12nearestIndexEPKd(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull %4) ; 3 uses
  %i.b = sext i32 %i.a to i64
  %i.c = load ptr, ptr %3, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw [72 x i8], ptr %i.c, i64 %i.b ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38   ; 2 uses
  %.not27 = icmp eq ptr %i.f, %i.h
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = ptrtoint ptr %2 to i64
  %i.j = ptrtoint ptr %1 to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %.1, %bb.d ] ; 2 uses
  %i.n = fcmp ogt double %.0.lcssa, 0.000000e+00
  %i.o = tail call double @llvm.log.f64(double %.0.lcssa)
  %i.p = select i1 %i.n, double %i.o, double f0xC7EFFFFFE0000000
  ret double %i.p

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.029 = phi double [ 0.000000e+00, %.lr.ph ], [ %.1, %bb.d ] ; 2 uses
  %.sroa.022.028 = phi ptr [ %i.f, %.lr.ph ], [ %i.z, %bb.d ] ; 2 uses
  %i.q = load i32, ptr %.sroa.022.028, align 4, !tbaa !39 ; 3 uses
  %i.r = tail call noundef zeroext i1 @_ZN3gmx25pointsHaveDifferentLambdaERKNS_8BiasGridEii(ptr noundef nonnull align 8 dereferenceable(48) %3, i32 noundef %i.a, i32 noundef %i.q)
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !17   ; 2 uses
  %i.t = sext i32 %i.q to i64
  %i.u = getelementptr inbounds nuw [96 x i8], ptr %i.s, i64 %i.t
  %i.v = load double, ptr %i.u, align 8, !tbaa !144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.w = tail call fastcc noundef double @_ZN3gmx12_GLOBAL__N_124biasedLogWeightFromPointENS_8ArrayRefIKNS_9DimParamsEEENS1_IKNS_10PointStateEEERKNS_8BiasGridEidPKdNS1_ISB_EEi(ptr %1, ptr %i.l, ptr %i.s, ptr noundef nonnull align 8 dereferenceable(48) %3, i32 noundef %i.q, double noundef %i.v, ptr noundef %4, ptr noundef nonnull byval(%"class.gmx::ArrayRef.38") align 8 %5, i32 noundef %i.a)
  %i.x = tail call double @exp(double noundef %i.w) #32
  %i.y = fadd double %.029, %i.x
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi double [ %i.y, %bb.c ], [ %.029, %bb.b ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.022.028, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.z, %i.h
  br i1 %.not, label %._crit_edge, label %bb.b
}

declare noundef i32 @_ZNK3gmx8BiasGrid12nearestIndexEPKd(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3gmx9BiasState24sampleProbabilityWeightsERKNS_8BiasGridENS_8ArrayRefIKdEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(248) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr nofree readonly captures(none) %2, ptr nofree readnone captures(none) %3) local_unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !132
  %i.c = sext i32 %i.b to i64
  %i.d = load ptr, ptr %1, align 8, !tbaa !32     ; 5 uses
  %i.e = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %i.c ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !122  ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !123  ; 9 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 2                   ; 3 uses
  %.not = icmp eq ptr %i.h, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17   ; 5 uses
  %xtraiter = and i64 %i.m, 3                     ; 3 uses
  %i.p = icmp ult i64 %i.m, 4
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.m, -4
  br label %bb.d

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.02538.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.dy, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod70 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod70)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.02538.epil = phi i64 [ %.02538.epil.init, %.epil.preheader ], [ %i.z, %bb.b ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.02538.epil
  %i.r = load i32, ptr %i.q, align 4, !tbaa !39
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [96 x i8], ptr %i.o, i64 %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %2, i64 %.02538.epil
  %i.v = load double, ptr %i.u, align 8, !tbaa !42
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !161
  %i.y = fadd double %i.v, %i.x
  store double %i.y, ptr %i.w, align 8, !tbaa !161
  %i.z = add nuw i64 %.02538.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !356

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !126
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !127 ; 8 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = sdiv exact i64 %i.ag, 48                ; 4 uses
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph42, label %._crit_edge43

.lr.ph42:                                         ; preds = %._crit_edge
  %i.ak = getelementptr i8, ptr %i.i, i64 %i.l
  %i.al = getelementptr i8, ptr %i.ak, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !39
  %i.an = load i32, ptr %i.i, align 4, !tbaa !39
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 5 uses
  %i.ar = sext i32 %i.am to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 7 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %wide.trip.count = and i64 %i.ah, 2147483647    ; 7 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 28
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph42
  %i.aw = add nsw i64 %wide.trip.count, -1
  %scevgep = getelementptr i8, ptr %i.ad, i64 36  ; 2 uses
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.aw, i64 48) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.ax = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.ay = icmp ult ptr %i.ax, %scevgep
  %i.az = or i1 %i.ay, %mul.overflow
  br i1 %i.az, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ba = shl nuw nsw i64 %wide.trip.count, 2     ; 3 uses
  %i.bb = getelementptr i8, ptr %0, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 176    ; 3 uses
  %i.bd = mul nuw nsw i64 %i.ar, 72
  %i.be = getelementptr i8, ptr %i.d, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 %i.ba
  %i.bg = getelementptr i8, ptr %i.bf, i64 32
  %i.bh = mul nuw nsw i64 %i.ao, 72
  %i.bi = getelementptr i8, ptr %i.d, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 %i.ba
  %i.bk = getelementptr i8, ptr %i.bj, i64 32
  %i.bl = getelementptr i8, ptr %i.ad, i64 36
  %i.bm = mul nuw nsw i64 %wide.trip.count, 48
  %i.bn = getelementptr i8, ptr %i.ad, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 -8
  %bound0 = icmp ult ptr %i.au, %i.bg
  %bound1 = icmp ult ptr %i.at, %i.bc
  %found.conflict = and i1 %bound0, %bound1
  %bound059 = icmp ult ptr %i.au, %i.bk
  %bound160 = icmp ult ptr %i.aq, %i.bc
  %found.conflict61 = and i1 %bound059, %bound160
  %conflict.rdx = or i1 %found.conflict, %found.conflict61
  %bound062 = icmp ult ptr %i.au, %i.bo
  %bound163 = icmp ult ptr %i.bl, %i.bc
  %found.conflict64 = and i1 %bound062, %bound163
  %conflict.rdx65 = or i1 %conflict.rdx, %found.conflict64
  br i1 %conflict.rdx65, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 2147483644              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %index
  %wide.load = load <4 x i32>, ptr %i.bp, align 4, !tbaa !39, !alias.scope !364 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %index
  %wide.load66 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !39, !alias.scope !365 ; 2 uses
  %i.br = icmp sgt <4 x i32> %wide.load, %wide.load66
  %wide.gep = getelementptr inbounds nuw [48 x i8], ptr %i.ad, <4 x i64> %vec.ind
  %wide.gep67 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 36
  %wide.masked.gather = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %wide.gep67, <4 x i1> %i.br, <4 x i32> zeroinitializer), !tbaa !155, !alias.scope !366
  %predphi = add nsw <4 x i32> %wide.load66, %wide.masked.gather
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index ; 2 uses
  %wide.load68 = load <4 x i32>, ptr %i.bs, align 8, !tbaa !39, !alias.scope !367, !noalias !368
  %i.bt = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> %wide.load68)
  store <4 x i32> %i.bt, ptr %i.bs, align 8, !tbaa !39, !alias.scope !367, !noalias !368
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %index ; 2 uses
  %wide.load69 = load <4 x i32>, ptr %i.bu, align 8, !tbaa !39, !alias.scope !367, !noalias !368
  %i.bv = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load69, <4 x i32> %predphi)
  store <4 x i32> %i.bv, ptr %i.bu, align 8, !tbaa !39, !alias.scope !367, !noalias !368
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !362

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %._crit_edge43, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph42, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph42 ], [ %n.vec, %middle.block ] ; 8 uses
  %.neg = or disjoint i64 %indvars.iv.ph, 1
  %xtraiter71 = and i64 %i.ah, 1
  %lcmp.mod72.not = icmp eq i64 %xtraiter71, 0
  br i1 %lcmp.mod72.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.ph
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !39 ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.ph
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !39 ; 3 uses
  %i.cb = icmp sgt i32 %i.by, %i.ca
  br i1 %i.cb, label %bb.c, label %scalar.ph.prol.loopexit.unr-lcssa

bb.c:                                             ; preds = %scalar.ph.prol
  %i.cc = getelementptr inbounds nuw [48 x i8], ptr %i.ad, i64 %indvars.iv.ph
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 36
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !155
  %i.cf = add nsw i32 %i.ce, %i.ca
  br label %scalar.ph.prol.loopexit.unr-lcssa

scalar.ph.prol.loopexit.unr-lcssa:                ; preds = %bb.c, %scalar.ph.prol
  %.036.prol = phi i32 [ %i.cf, %bb.c ], [ %i.ca, %scalar.ph.prol ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.ph ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !39
  %.sroa.speculated32.prol = tail call i32 @llvm.smin.i32(i32 %i.by, i32 %i.ch)
  store i32 %.sroa.speculated32.prol, ptr %i.cg, align 8, !tbaa !39
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.ph ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !39
  %.sroa.speculated.prol = tail call i32 @llvm.smax.i32(i32 %i.cj, i32 %.036.prol)
  store i32 %.sroa.speculated.prol, ptr %i.ci, align 8, !tbaa !39
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol.loopexit.unr-lcssa ]
  %i.ck = icmp eq i64 %wide.trip.count, %.neg
  br i1 %i.ck, label %._crit_edge43, label %scalar.ph

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %.02538 = phi i64 [ 0, %.lr.ph.new ], [ %i.dy, %bb.d ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.d ]
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.02538
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !39
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [96 x i8], ptr %i.o, i64 %i.cn
  %i.cp = getelementptr inbounds [8 x i8], ptr %2, i64 %.02538
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !42
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 32 ; 2 uses
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !161
  %i.ct = fadd double %i.cq, %i.cs
  store double %i.ct, ptr %i.cr, align 8, !tbaa !161
  %i.cu = or disjoint i64 %.02538, 1              ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !39
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [96 x i8], ptr %i.o, i64 %i.cx
  %i.cz = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cu
  %i.da = load double, ptr %i.cz, align 8, !tbaa !42
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 32 ; 2 uses
  %i.dc = load double, ptr %i.db, align 8, !tbaa !161
  %i.dd = fadd double %i.da, %i.dc
  store double %i.dd, ptr %i.db, align 8, !tbaa !161
  %i.de = or disjoint i64 %.02538, 2              ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !39
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [96 x i8], ptr %i.o, i64 %i.dh
  %i.dj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.de
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !42
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 32 ; 2 uses
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !161
  %i.dn = fadd double %i.dk, %i.dm
  store double %i.dn, ptr %i.dl, align 8, !tbaa !161
  %i.do = or disjoint i64 %.02538, 3              ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !39
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [96 x i8], ptr %i.o, i64 %i.dr
  %i.dt = getelementptr inbounds [8 x i8], ptr %2, i64 %i.do
  %i.du = load double, ptr %i.dt, align 8, !tbaa !42
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 32 ; 2 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !161
  %i.dx = fadd double %i.du, %i.dw
  store double %i.dx, ptr %i.dv, align 8, !tbaa !161
  %i.dy = add nuw i64 %.02538, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !3

._crit_edge43:                                    ; preds = %scalar.ph.prol.loopexit, %bb.g, %middle.block, %._crit_edge
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.g ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !39 ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !39 ; 3 uses
  %i.ed = icmp sgt i32 %i.ea, %i.ec
  br i1 %i.ed, label %bb.e, label %scalar.ph.1

bb.e:                                             ; preds = %scalar.ph
  %i.ee = getelementptr inbounds nuw [48 x i8], ptr %i.ad, i64 %indvars.iv
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 36
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !155
  %i.eh = add nsw i32 %i.eg, %i.ec
  br label %scalar.ph.1

scalar.ph.1:                                      ; preds = %bb.e, %scalar.ph
  %.036 = phi i32 [ %i.eh, %bb.e ], [ %i.ec, %scalar.ph ]
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !39
  %.sroa.speculated32 = tail call i32 @llvm.smin.i32(i32 %i.ea, i32 %i.ej)
  store i32 %.sroa.speculated32, ptr %i.ei, align 4, !tbaa !39
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !39
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.el, i32 %.036)
  store i32 %.sroa.speculated, ptr %i.ek, align 4, !tbaa !39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next
  %i.en = load i32, ptr %i.em, align 4, !tbaa !39 ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.next
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !39 ; 3 uses
  %i.eq = icmp sgt i32 %i.en, %i.ep
  br i1 %i.eq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %scalar.ph.1
  %i.er = getelementptr inbounds nuw [48 x i8], ptr %i.ad, i64 %indvars.iv.next
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 36
  %i.et = load i32, ptr %i.es, align 4, !tbaa !155
  %i.eu = add nsw i32 %i.et, %i.ep
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %scalar.ph.1
  %.036.1 = phi i32 [ %i.eu, %bb.f ], [ %i.ep, %scalar.ph.1 ]
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.next ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !39
  %.sroa.speculated32.1 = tail call i32 @llvm.smin.i32(i32 %i.en, i32 %i.ew)
  store i32 %.sroa.speculated32.1, ptr %i.ev, align 4, !tbaa !39
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.next ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !39
  %.sroa.speculated.1 = tail call i32 @llvm.smax.i32(i32 %i.ey, i32 %.036.1)
  store i32 %.sroa.speculated.1, ptr %i.ex, align 4, !tbaa !39
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond45.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond45.not.1, label %._crit_edge43, label %scalar.ph, !llvm.loop !363
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx9BiasState17sampleCoordAndPmfERKSt6vectorINS_9DimParamsESaIS2_EERKNS_8BiasGridENS_8ArrayRefIKdEEd(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr nofree readonly captures(none) %3, ptr nofree readnone captures(none) %4, double noundef %5) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !132  ; 4 uses
  %i.d = tail call i64 @_ZNK3gmx8BiasGrid15lambdaAxisIndexEv(ptr noundef nonnull align 8 dereferenceable(48) %2) ; 2 uses
  %i.e = and i64 %i.d, 4294967296
  %.not = icmp eq i64 %i.e, 0
end_hunk_0
begin_hunk_1_@_ZN3gmx9BiasState17sampleCoordAndPmfERKSt6vectorINS_9DimParamsESaIS2_EERKNS_8BiasGridENS_8ArrayRefIKdEEd:bb.a
bb.i:                                             ; preds = %bb.h
  br i1 %i.cy, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.cz = sext i32 %i.cx to i64                   ; 3 uses
  %i.da = load ptr, ptr %2, align 8, !tbaa !32
  %i.db = getelementptr inbounds nuw [72 x i8], ptr %i.da, i64 %i.cz
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.cp
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !42 ; 2 uses
  %i.de = icmp eq i32 %i.cx, %i.c                 ; 2 uses
  br i1 %i.de, label %bb.k, label %_ZNKRSt8optionalIiE5valueEv.exit43

_ZNKRSt8optionalIiE5valueEv.exit43:               ; preds = %bb.j
  store double %i.dd, ptr %i.cq, align 8, !tbaa !42
  %i.df = load ptr, ptr %1, align 8, !tbaa !385   ; 3 uses
  %i.dg = load ptr, ptr %i.cr, align 8, !tbaa !386
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.df to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dj
  %i.dl = invoke noundef double @_ZNK3gmx9BiasState17calcConvolvedBiasENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridERA4_Kd(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr %i.df, ptr %i.dk, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %_ZNKRSt8optionalIiE5valueEv.exit43, %bb.j
  %.038 = phi double [ %5, %bb.j ], [ %i.dl, %_ZNKRSt8optionalIiE5valueEv.exit43 ]
  %i.dm = fptoui double %i.dd to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.055.0, i64 %i.dm
  %i.do = load double, ptr %i.dn, align 8, !tbaa !42 ; 2 uses
  %i.dp = fcmp olt double %i.do, f0x0010000000000000
  %.sroa.speculated = select i1 %i.dp, double f0x0010000000000000, double %i.do
  %i.dq = call double @log(double noundef %.sroa.speculated) #32
  %i.dr = fsub double %.038, %i.dq                ; 2 uses
  br i1 %i.de, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ds = invoke noundef zeroext i1 @_ZNK3gmx8BiasGrid6coversEPKd(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull %0)
          to label %bb.m unwind label %.thread

bb.m:                                             ; preds = %bb.l
  br i1 %i.ds, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dt = load ptr, ptr %i.cs, align 8, !tbaa !17
  %i.du = getelementptr inbounds nuw [96 x i8], ptr %i.dt, i64 %i.cz
  invoke void @_ZN3gmx10PointState9samplePmfEd(ptr noundef nonnull align 8 dereferenceable(96) %i.du, double noundef %i.dr)
          to label %bb.p unwind label %.thread

.thread:                                          ; preds = %bb.l, %bb.n, %bb.o
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.r

bb.o:                                             ; preds = %bb.m, %bb.k
  %i.dw = load ptr, ptr %i.cs, align 8, !tbaa !17
  %i.dx = getelementptr inbounds nuw [96 x i8], ptr %i.dw, i64 %i.cz
  invoke void @_ZN3gmx10PointState18updatePmfUnvisitedEd(ptr noundef nonnull align 8 dereferenceable(96) %i.dx, double noundef %i.dr)
          to label %bb.p unwind label %.thread

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.i
  %i.dy = add nuw i64 %.03971, 1                  ; 2 uses
  %i.dz = load ptr, ptr %i.k, align 8, !tbaa !122
  %i.ea = load ptr, ptr %i.i, align 8, !tbaa !123 ; 2 uses
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = ashr exact i64 %i.ed, 2
  %i.ef = icmp ult i64 %i.dy, %i.ee
  br i1 %i.ef, label %bb.h, label %._crit_edge, !llvm.loop !373

bb.q:                                             ; preds = %_ZNKRSt8optionalIiE5valueEv.exit43, %bb.h
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %.not.i.i.i44 = icmp eq ptr %.sroa.055.0, null
  br i1 %.not.i.i.i44, label %_ZNSt6vectorIdSaIdEED2Ev.exit45, label %bb.r

bb.r:                                             ; preds = %.thread, %bb.q
  %.pn.pn69 = phi { ptr, i32 } [ %i.dv, %.thread ], [ %i.eg, %bb.q ]
  %i.eh = ptrtoint ptr %.sroa.055.0 to i64
  %i.ei = sub i64 %.sroa.9.0, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.055.0, i64 noundef %i.ei) #31
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit45

_ZNSt6vectorIdSaIdEED2Ev.exit45:                  ; preds = %bb.q, %bb.r
  %.pn.pn70 = phi { ptr, i32 } [ %i.eg, %bb.q ], [ %.pn.pn69, %bb.r ]
  resume { ptr, i32 } %.pn.pn70

bb.s:                                             ; preds = %bb.a
  %i.ej = tail call noundef zeroext i1 @_ZNK3gmx8BiasGrid6coversEPKd(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull %0)
  br i1 %i.ej, label %bb.t, label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.t:                                             ; preds = %bb.s
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.el = sext i32 %i.c to i64
  %i.em = load ptr, ptr %i.ek, align 8, !tbaa !17
  %i.en = getelementptr inbounds nuw [96 x i8], ptr %i.em, i64 %i.el
  tail call void @_ZN3gmx10PointState9samplePmfEd(ptr noundef nonnull align 8 dereferenceable(96) %i.en, double noundef %5)
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.g, %._crit_edge, %bb.s, %bb.t
  %i.eo = load i32, ptr %i.b, align 8, !tbaa !132
  %i.ep = sext i32 %i.eo to i64
  %i.eq = load ptr, ptr %2, align 8, !tbaa !32    ; 5 uses
  %i.er = getelementptr inbounds nuw [72 x i8], ptr %i.eq, i64 %i.ep ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 48
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 56
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !122 ; 2 uses
  %i.ev = load ptr, ptr %i.es, align 8, !tbaa !123 ; 9 uses
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = sub i64 %i.ew, %i.ex                    ; 2 uses
  %i.ez = ashr exact i64 %i.ey, 2                 ; 3 uses
  %.not.i46 = icmp eq ptr %i.eu, %i.ev
  br i1 %.not.i46, label %._crit_edge.i, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !17 ; 5 uses
  %xtraiter104 = and i64 %i.ez, 3                 ; 3 uses
  %i.fc = icmp ult i64 %i.ez, 4
  br i1 %i.fc, label %.epil.preheader103, label %.lr.ph.i47.new

.lr.ph.i47.new:                                   ; preds = %.lr.ph.i47
  %unroll_iter108 = and i64 %i.ez, -4
  br label %bb.w

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.w
  %lcmp.mod106.not = icmp eq i64 %xtraiter104, 0
  br i1 %lcmp.mod106.not, label %._crit_edge.i, label %.epil.preheader103

.epil.preheader103:                               ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i47
  %.02538.i.epil.init = phi i64 [ 0, %.lr.ph.i47 ], [ %i.jl, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod107 = icmp ne i64 %xtraiter104, 0
  call void @llvm.assume(i1 %lcmp.mod107)
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.epil.preheader103
  %.02538.i.epil = phi i64 [ %.02538.i.epil.init, %.epil.preheader103 ], [ %i.fm, %bb.u ] ; 3 uses
  %epil.iter105 = phi i64 [ 0, %.epil.preheader103 ], [ %epil.iter105.next, %bb.u ]
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.02538.i.epil
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !39
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [96 x i8], ptr %i.fb, i64 %i.ff
  %i.fh = getelementptr inbounds [8 x i8], ptr %3, i64 %.02538.i.epil
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !42
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 32 ; 2 uses
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !161
  %i.fl = fadd double %i.fi, %i.fk
  store double %i.fl, ptr %i.fj, align 8, !tbaa !161
  %i.fm = add nuw i64 %.02538.i.epil, 1
  %epil.iter105.next = add i64 %epil.iter105, 1   ; 2 uses
  %epil.iter105.cmp.not = icmp eq i64 %epil.iter105.next, %xtraiter104
  br i1 %epil.iter105.cmp.not, label %._crit_edge.i, label %bb.u, !llvm.loop !374

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.u, %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !126
  %i.fq = load ptr, ptr %i.fn, align 8, !tbaa !127 ; 8 uses
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = sub i64 %i.fr, %i.fs
  %i.fu = sdiv exact i64 %i.ft, 48                ; 4 uses
  %i.fv = trunc i64 %i.fu to i32
  %i.fw = icmp sgt i32 %i.fv, 0
  br i1 %i.fw, label %.lr.ph42.i, label %_ZN3gmx9BiasState24sampleProbabilityWeightsERKNS_8BiasGridENS_8ArrayRefIKdEE.exit

.lr.ph42.i:                                       ; preds = %._crit_edge.i
  %i.fx = getelementptr i8, ptr %i.ev, i64 %i.ey
  %i.fy = getelementptr i8, ptr %i.fx, i64 -4
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !39
  %i.ga = load i32, ptr %i.ev, align 4, !tbaa !39
  %i.gb = sext i32 %i.ga to i64                   ; 2 uses
  %i.gc = getelementptr inbounds nuw [72 x i8], ptr %i.eq, i64 %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 32 ; 5 uses
  %i.ge = sext i32 %i.fz to i64                   ; 2 uses
  %i.gf = getelementptr inbounds nuw [72 x i8], ptr %i.eq, i64 %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 32 ; 5 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 7 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %wide.trip.count.i = and i64 %i.fu, 2147483647  ; 7 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 28
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph42.i
  %i.gj = add nsw i64 %wide.trip.count.i, -1
  %scevgep = getelementptr i8, ptr %i.fq, i64 36  ; 2 uses
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.gj, i64 48) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.gk = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.gl = icmp ult ptr %i.gk, %scevgep
  %i.gm = or i1 %i.gl, %mul.overflow
  br i1 %i.gm, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.gn = shl nuw nsw i64 %wide.trip.count.i, 2   ; 3 uses
  %i.go = getelementptr i8, ptr %0, i64 %i.gn
  %i.gp = getelementptr i8, ptr %i.go, i64 176    ; 3 uses
  %i.gq = mul nuw nsw i64 %i.ge, 72
  %i.gr = getelementptr i8, ptr %i.eq, i64 %i.gq
  %i.gs = getelementptr i8, ptr %i.gr, i64 %i.gn
  %i.gt = getelementptr i8, ptr %i.gs, i64 32
  %i.gu = mul nuw nsw i64 %i.gb, 72
  %i.gv = getelementptr i8, ptr %i.eq, i64 %i.gu
  %i.gw = getelementptr i8, ptr %i.gv, i64 %i.gn
  %i.gx = getelementptr i8, ptr %i.gw, i64 32
  %i.gy = getelementptr i8, ptr %i.fq, i64 36
  %i.gz = mul nuw nsw i64 %wide.trip.count.i, 48
  %i.ha = getelementptr i8, ptr %i.fq, i64 %i.gz
  %i.hb = getelementptr i8, ptr %i.ha, i64 -8
  %bound0 = icmp ult ptr %i.gh, %i.gt
  %bound1 = icmp ult ptr %i.gg, %i.gp
  %found.conflict = and i1 %bound0, %bound1
  %bound091 = icmp ult ptr %i.gh, %i.gx
  %bound192 = icmp ult ptr %i.gd, %i.gp
  %found.conflict93 = and i1 %bound091, %bound192
  %conflict.rdx = or i1 %found.conflict, %found.conflict93
  %bound094 = icmp ult ptr %i.gh, %i.hb
  %bound195 = icmp ult ptr %i.gy, %i.gp
  %found.conflict96 = and i1 %bound094, %bound195
  %conflict.rdx97 = or i1 %conflict.rdx, %found.conflict96
  br i1 %conflict.rdx97, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fu, 2147483644              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %index
  %wide.load = load <4 x i32>, ptr %i.hc, align 4, !tbaa !39, !alias.scope !387 ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %index
  %wide.load98 = load <4 x i32>, ptr %i.hd, align 4, !tbaa !39, !alias.scope !388 ; 2 uses
  %i.he = icmp sgt <4 x i32> %wide.load, %wide.load98
  %wide.gep = getelementptr inbounds nuw [48 x i8], ptr %i.fq, <4 x i64> %vec.ind
  %wide.gep99 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 36
  %wide.masked.gather = call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %wide.gep99, <4 x i1> %i.he, <4 x i32> zeroinitializer), !tbaa !155, !alias.scope !389
  %predphi = add nsw <4 x i32> %wide.load98, %wide.masked.gather
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %index ; 2 uses
  %wide.load100 = load <4 x i32>, ptr %i.hf, align 8, !tbaa !39, !alias.scope !390, !noalias !391
  %i.hg = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> %wide.load100)
  store <4 x i32> %i.hg, ptr %i.hf, align 8, !tbaa !39, !alias.scope !390, !noalias !391
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %index ; 2 uses
  %wide.load101 = load <4 x i32>, ptr %i.hh, align 8, !tbaa !39, !alias.scope !390, !noalias !391
  %i.hi = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load101, <4 x i32> %predphi)
  store <4 x i32> %i.hi, ptr %i.hh, align 8, !tbaa !39, !alias.scope !390, !noalias !391
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.hj = icmp eq i64 %index.next, %n.vec
  br i1 %i.hj, label %middle.block, label %vector.body, !llvm.loop !380

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  br i1 %cmp.n, label %_ZN3gmx9BiasState24sampleProbabilityWeightsERKNS_8BiasGridENS_8ArrayRefIKdEE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph42.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph42.i ], [ %n.vec, %middle.block ] ; 8 uses
  %.neg = or disjoint i64 %indvars.iv.i.ph, 1
  %xtraiter110 = and i64 %i.fu, 1
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv.i.ph
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !39 ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.i.ph
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !39 ; 3 uses
  %i.ho = icmp sgt i32 %i.hl, %i.hn
  br i1 %i.ho, label %bb.v, label %scalar.ph.prol.loopexit.unr-lcssa

bb.v:                                             ; preds = %scalar.ph.prol
  %i.hp = getelementptr inbounds nuw [48 x i8], ptr %i.fq, i64 %indvars.iv.i.ph
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 36
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !155
  %i.hs = add nsw i32 %i.hr, %i.hn
  br label %scalar.ph.prol.loopexit.unr-lcssa

scalar.ph.prol.loopexit.unr-lcssa:                ; preds = %bb.v, %scalar.ph.prol
  %.036.i.prol = phi i32 [ %i.hs, %bb.v ], [ %i.hn, %scalar.ph.prol ]
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv.i.ph ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !39
  %.sroa.speculated32.i.prol = call i32 @llvm.smin.i32(i32 %i.hl, i32 %i.hu)
  store i32 %.sroa.speculated32.i.prol, ptr %i.ht, align 8, !tbaa !39
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv.i.ph ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !39
  %.sroa.speculated.i.prol = call i32 @llvm.smax.i32(i32 %i.hw, i32 %.036.i.prol)
  store i32 %.sroa.speculated.i.prol, ptr %i.hv, align 8, !tbaa !39
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol.loopexit.unr-lcssa ]
  %i.hx = icmp eq i64 %wide.trip.count.i, %.neg
  br i1 %i.hx, label %_ZN3gmx9BiasState24sampleProbabilityWeightsERKNS_8BiasGridENS_8ArrayRefIKdEE.exit, label %scalar.ph

bb.w:                                             ; preds = %bb.w, %.lr.ph.i47.new
  %.02538.i = phi i64 [ 0, %.lr.ph.i47.new ], [ %i.jl, %bb.w ] ; 6 uses
  %niter109 = phi i64 [ 0, %.lr.ph.i47.new ], [ %niter109.next.3, %bb.w ]
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.02538.i
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !39
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [96 x i8], ptr %i.fb, i64 %i.ia
  %i.ic = getelementptr inbounds [8 x i8], ptr %3, i64 %.02538.i
  %i.id = load double, ptr %i.ic, align 8, !tbaa !42
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 32 ; 2 uses
  %i.if = load double, ptr %i.ie, align 8, !tbaa !161
  %i.ig = fadd double %i.id, %i.if
  store double %i.ig, ptr %i.ie, align 8, !tbaa !161
  %i.ih = or disjoint i64 %.02538.i, 1            ; 2 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.ih
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !39
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw [96 x i8], ptr %i.fb, i64 %i.ik
  %i.im = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ih
  %i.in = load double, ptr %i.im, align 8, !tbaa !42
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 32 ; 2 uses
  %i.ip = load double, ptr %i.io, align 8, !tbaa !161
  %i.iq = fadd double %i.in, %i.ip
  store double %i.iq, ptr %i.io, align 8, !tbaa !161
  %i.ir = or disjoint i64 %.02538.i, 2            ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 4, !tbaa !39
  %i.iu = sext i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw [96 x i8], ptr %i.fb, i64 %i.iu
  %i.iw = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ir
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !42
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 32 ; 2 uses
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !161
  %i.ja = fadd double %i.ix, %i.iz
  store double %i.ja, ptr %i.iy, align 8, !tbaa !161
  %i.jb = or disjoint i64 %.02538.i, 3            ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.jb
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !39
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds nuw [96 x i8], ptr %i.fb, i64 %i.je
  %i.jg = getelementptr inbounds [8 x i8], ptr %3, i64 %i.jb
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !42
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 32 ; 2 uses
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !161
  %i.jk = fadd double %i.jh, %i.jj
  store double %i.jk, ptr %i.ji, align 8, !tbaa !161
  %i.jl = add nuw i64 %.02538.i, 4                ; 2 uses
  %niter109.next.3 = add i64 %niter109, 4         ; 2 uses
  %niter109.ncmp.3 = icmp eq i64 %niter109.next.3, %unroll_iter108
  br i1 %niter109.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.w, !llvm.loop !3

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %bb.z
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %bb.z ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv.i
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !39 ; 2 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.i
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !39 ; 3 uses
  %i.jq = icmp sgt i32 %i.jn, %i.jp
  br i1 %i.jq, label %bb.x, label %scalar.ph.1

bb.x:                                             ; preds = %scalar.ph
  %i.jr = getelementptr inbounds nuw [48 x i8], ptr %i.fq, i64 %indvars.iv.i
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 36
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !155
  %i.ju = add nsw i32 %i.jt, %i.jp
  br label %scalar.ph.1

scalar.ph.1:                                      ; preds = %bb.x, %scalar.ph
  %.036.i = phi i32 [ %i.ju, %bb.x ], [ %i.jp, %scalar.ph ]
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv.i ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !39
  %.sroa.speculated32.i = call i32 @llvm.smin.i32(i32 %i.jn, i32 %i.jw)
  store i32 %.sroa.speculated32.i, ptr %i.jv, align 4, !tbaa !39
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv.i ; 2 uses
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !39
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.jy, i32 %.036.i)
  store i32 %.sroa.speculated.i, ptr %i.jx, align 4, !tbaa !39
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 5 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv.next.i
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !39 ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.next.i
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !39 ; 3 uses
  %i.kd = icmp sgt i32 %i.ka, %i.kc
  br i1 %i.kd, label %bb.y, label %bb.z

bb.y:                                             ; preds = %scalar.ph.1
  %i.ke = getelementptr inbounds nuw [48 x i8], ptr %i.fq, i64 %indvars.iv.next.i
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 36
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !155
  %i.kh = add nsw i32 %i.kg, %i.kc
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %scalar.ph.1
  %.036.i.1 = phi i32 [ %i.kh, %bb.y ], [ %i.kc, %scalar.ph.1 ]
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv.next.i ; 2 uses
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !39
  %.sroa.speculated32.i.1 = call i32 @llvm.smin.i32(i32 %i.ka, i32 %i.kj)
  store i32 %.sroa.speculated32.i.1, ptr %i.ki, align 4, !tbaa !39
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv.next.i ; 2 uses
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !39
  %.sroa.speculated.i.1 = call i32 @llvm.smax.i32(i32 %i.kl, i32 %.036.i.1)
  store i32 %.sroa.speculated.i.1, ptr %i.kk, align 4, !tbaa !39
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond45.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond45.not.i.1, label %_ZN3gmx9BiasState24sampleProbabilityWeightsERKNS_8BiasGridENS_8ArrayRefIKdEE.exit, label %scalar.ph, !llvm.loop !381

_ZN3gmx9BiasState24sampleProbabilityWeightsERKNS_8BiasGridENS_8ArrayRefIKdEE.exit: ; preds = %scalar.ph.prol.loopexit, %bb.z, %middle.block, %._crit_edge.i
  ret void
}

declare i64 @_ZNK3gmx8BiasGrid15lambdaAxisIndexEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN3gmx21pointsAlongLambdaAxisERKNS_8BiasGridEii(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK3gmx8BiasGrid6coversEPKd(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #3

declare void @_ZN3gmx10PointState9samplePmfEd(ptr noundef nonnull align 8 dereferenceable(96), double noundef) local_unnamed_addr #3

declare void @_ZN3gmx10PointState18updatePmfUnvisitedEd(ptr noundef nonnull align 8 dereferenceable(96), double noundef) local_unnamed_addr #3
end_hunk_1
begin_hunk_2_@llvm.smax.v4i32
!168 = !{!"p1 _ZTSN3gmx20AwhPointStateHistoryE", !13, i64 0}
!169 = !{!"_ZTSNSt12_Vector_baseIN3gmx20AwhPointStateHistoryESaIS1_EE17_Vector_impl_dataE", !168, i64 0, !168, i64 8, !168, i64 16}
!170 = !{!169, !168, i64 8}
!171 = !{!169, !168, i64 0}
!172 = !{!"_ZTSN3gmx19AwhBiasStateHistoryE", !10, i64 0, !10, i64 4, !10, i64 8, !86, i64 12, !86, i64 13, !18, i64 16, !18, i64 24, !18, i64 32, !19, i64 40}
!173 = !{!"_ZTSN3gmx20AwhPointStateHistoryE", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !19, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88}
!174 = !{!173, !18, i64 16}
!175 = !{!173, !18, i64 24}
!176 = !{!173, !19, i64 56}
!177 = !{!173, !18, i64 32}
!178 = !{!172, !10, i64 4}
!179 = !{!172, !10, i64 8}
!180 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !13, i64 0}
!181 = !{!180, !180, i64 0}
!182 = !{!79, !78, i64 16}
!183 = distinct !{!183, i1 false, !"LVerDomain"}
!184 = distinct !{!184, !183}
!185 = distinct !{!185, !183}
!186 = distinct !{!186, !25, !26, !27}
!187 = distinct !{!187, !28}
!188 = distinct !{!188, !25, !26}
!189 = !{!184}
!190 = !{!185}
!191 = distinct !{!191, i1 false, !"LVerDomain"}
!192 = distinct !{!192, !191}
!193 = distinct !{!193, !191}
!194 = distinct !{!194, !25, !26, !27}
!195 = distinct !{!195, !28}
!196 = distinct !{!196, !25, !26}
!197 = distinct !{!197, !25}
!198 = !{!192}
!199 = !{!193}
!200 = distinct !{!200, !25}
!201 = !{!"_ZTSN3gmx9DimParams12FepDimParamsE", !18, i64 0, !10, i64 8}
!202 = !{!201, !18, i64 0}
!203 = distinct !{!203, !25}
!204 = !{!"p1 _ZTSNSt15__exception_ptr13exception_ptrE", !13, i64 0}
!205 = !{!"_ZTSNSt12_Vector_baseINSt15__exception_ptr13exception_ptrESaIS1_EE17_Vector_impl_dataE", !204, i64 0, !204, i64 8, !204, i64 16}
!206 = !{!205, !204, i64 0}
!207 = !{!205, !204, i64 8}
!208 = !{!"_ZTSNSt15__exception_ptr13exception_ptrE", !13, i64 0}
!209 = !{!208, !13, i64 0}
!210 = !{!205, !204, i64 16}
!211 = distinct !{null}
!212 = distinct !{!212, !25}
!213 = distinct !{!213, !25}
!214 = distinct !{!214, !26, !27}
!215 = distinct !{!215, !26, !27}
!216 = distinct !{!216, !27, !26}
!217 = !{!87, !18, i64 64}
!218 = !{!87, !18, i64 48}
!219 = distinct !{!219, !25}
!220 = distinct !{!220, !25}
!221 = distinct !{!221, !25}
!222 = distinct !{!222, !25}
!223 = distinct !{!223, !25}
!224 = distinct !{!224, !25}
!225 = !{!"p1 _ZTSN3gmx17CorrelationTensorE", !13, i64 0}
!226 = !{!225, !225, i64 0}
!227 = !{!"p1 _ZTSN3gmx20CorrelationBlockDataE", !13, i64 0}
!228 = !{!"_ZTSNSt12_Vector_baseIN3gmx20CorrelationBlockDataESaIS1_EE17_Vector_impl_dataE", !227, i64 0, !227, i64 8, !227, i64 16}
!229 = !{!228, !227, i64 0}
!230 = !{!"_ZTSNSt12_Vector_baseIN3gmx17CorrelationTensorESaIS1_EE17_Vector_impl_dataE", !225, i64 0, !225, i64 8, !225, i64 16}
!231 = !{!230, !225, i64 0}
!232 = !{!"_ZTSN3gmx15CorrelationGrid18BlockLengthMeasureE", !9, i64 0}
!233 = !{!"_ZTSNSt12_Vector_baseIN3gmx17CorrelationTensorESaIS1_EE12_Vector_implE", !230, i64 0}
!234 = !{!"_ZTSSt12_Vector_baseIN3gmx17CorrelationTensorESaIS1_EE", !233, i64 0}
!235 = !{!"_ZTSSt6vectorIN3gmx17CorrelationTensorESaIS1_EE", !234, i64 0}
!236 = !{!"_ZTSN3gmx15CorrelationGridE", !18, i64 0, !232, i64 8, !235, i64 16}
!237 = !{!236, !18, i64 0}
!238 = distinct !{!238, !25}
!239 = distinct !{!239, !25}
!240 = distinct !{!240, i1 true, !"_ZN3gmx12_GLOBAL__N_120gridPointValueStringB5cxx11ERKNS_8BiasGridEi"}
!241 = distinct !{!241, !240, !"_ZN3gmx12_GLOBAL__N_120gridPointValueStringB5cxx11ERKNS_8BiasGridEi: argument 0"}
!242 = distinct !{!242, !25}
!243 = distinct !{!243, !25}
!244 = !{!241}
!245 = distinct !{!245, !25}
!246 = !{!44, !18, i64 0}
!247 = distinct !{!247, i1 false, !"LVerDomain"}
!248 = distinct !{!248, !247}
!249 = distinct !{!249, !247}
!250 = distinct !{!250, !25, !26, !27}
!251 = distinct !{!251, !25, !26, !27}
!252 = distinct !{!252, !28}
!253 = distinct !{!253, !25, !26}
!254 = distinct !{!254, !25}
!255 = !{!248}
!256 = !{!249}
!257 = distinct !{!257, i1 false, !"LVerDomain"}
!258 = distinct !{!258, !257}
!259 = distinct !{!259, !257}
!260 = distinct !{!260, !25, !26, !27}
!261 = distinct !{!261, !25, !26, !27}
!262 = distinct !{!262, !28}
!263 = distinct !{!263, !25, !26}
!264 = !{!258}
!265 = !{!259}
!266 = distinct !{null, null, null}
!267 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 8, !10, i64 12}
!268 = !{!267, !10, i64 8}
!269 = !{!267, !10, i64 12}
!270 = distinct !{!270, i1 false, !"LVerDomain"}
!271 = distinct !{!271, !270}
!272 = distinct !{!272, !270}
!273 = distinct !{!273, !25, !26, !27}
!274 = distinct !{!274, !28}
!275 = distinct !{!275, !25, !26}
!276 = !{!271}
!277 = !{!272}
!278 = distinct !{!278, !25}
!279 = distinct !{!279, !25}
!280 = distinct !{!280, !25}
!281 = distinct !{!281, !25}
!282 = distinct !{!282, !25, !26, !27}
!283 = distinct !{!283, !25, !26, !27}
!284 = distinct !{!284, !25, !26, !27}
!285 = distinct !{!285, !25, !26, !27}
!286 = distinct !{!286, !25, !27, !26}
!287 = distinct !{!287, !25}
!288 = distinct !{!288, !25, !27, !26}
!289 = distinct !{!289, !25, !26, !27}
!290 = distinct !{!290, !25, !26, !27}
!291 = distinct !{!291, !25, !26, !27}
!292 = distinct !{!292, !25, !26, !27}
!293 = distinct !{!293, !25, !27, !26}
!294 = distinct !{!294, !25, !27, !26}
!295 = distinct !{!295, !25}
!296 = distinct !{!296, !25}
!297 = distinct !{!297, !25}
!298 = distinct !{!298, !25}
!299 = !{!128, !18, i64 24}
!300 = !{!"branch_weights", i32 4, i32 28}
!301 = distinct !{!301, !25}
!302 = distinct !{!302, !25}
!303 = distinct !{!303, !25}
!304 = distinct !{!304, !25}
!305 = distinct !{!305, !25, !26, !27}
!306 = distinct !{!306, !25, !26, !27}
!307 = distinct !{!307, !25, !27, !26}
!308 = distinct !{!308, !25, !26, !27}
!309 = distinct !{!309, !25, !26, !27}
!310 = distinct !{!310, !25, !27, !26}
!311 = distinct !{!311, !25, !26, !27}
!312 = distinct !{!312, !25, !26, !27}
!313 = distinct !{!313, !25, !27, !26}
!314 = distinct !{!314, !25, !26, !27}
!315 = distinct !{!315, !25, !26, !27}
!316 = distinct !{!316, !25, !27, !26}
!317 = distinct !{!317, !25, !26, !27}
!318 = distinct !{!318, !25, !27, !26}
!319 = distinct !{!319, !25}
!320 = distinct !{!320, i1 false, !"LVerDomain"}
!321 = distinct !{!321, !320}
!322 = distinct !{!322, !320}
!323 = distinct !{!323, !25, !26, !27}
!324 = distinct !{!324, !28}
!325 = distinct !{!325, !25, !26}
!326 = distinct !{!326, !25}
!327 = distinct !{!327, !25}
!328 = distinct !{!328, !25}
!329 = distinct !{!329, !25}
!330 = distinct !{!330, !25}
!331 = !{!321}
!332 = !{!322}
!333 = !{!20, !18, i64 72}
!334 = !{!87, !19, i64 24}
!335 = !{!87, !19, i64 32}
!336 = !{!87, !86, i64 136}
!337 = distinct !{!337, !25, !26, !27}
!338 = distinct !{!338, !25, !26, !27}
!339 = distinct !{!339, !25, !27, !26}
!340 = distinct !{!340, !25}
!341 = distinct !{!341, !25}
!342 = distinct !{!342, !25}
!343 = distinct !{!343, !26, !27}
!344 = distinct !{!344, !26, !27}
!345 = distinct !{!345, !27, !26}
!346 = !{!124, !124, i64 0}
!347 = distinct !{!347, i1 true, !"_ZSt19__relocate_object_aIddN3gmx9AllocatorIdNS0_23AlignedAllocationPolicyEEEEvPT_PT0_RT1_"}
!348 = distinct !{!348, !347, !"_ZSt19__relocate_object_aIddN3gmx9AllocatorIdNS0_23AlignedAllocationPolicyEEEEvPT_PT0_RT1_: argument 0"}
!349 = distinct !{!349, !347, !"_ZSt19__relocate_object_aIddN3gmx9AllocatorIdNS0_23AlignedAllocationPolicyEEEEvPT_PT0_RT1_: argument 1"}
!350 = distinct !{!350, !25, !26, !27}
!351 = distinct !{!351, !25, !26, !27}
!352 = distinct !{!352, !25, !26}
!353 = !{!165, !78, i64 16}
!354 = !{!348}
!355 = !{!349}
!356 = distinct !{!356, !28}
!357 = distinct !{!357, i1 false, !"LVerDomain"}
!358 = distinct !{!358, !357}
!359 = distinct !{!359, !357}
!360 = distinct !{!360, !357}
!361 = distinct !{!361, !357}
!362 = distinct !{!362, !25, !26, !27}
!363 = distinct !{!363, !25, !26}
!364 = !{!358}
!365 = !{!359}
!366 = !{!360}
!367 = !{!361}
!368 = !{!359, !358, !360}
!369 = distinct !{!369, i1 true, !"_ZN3gmx12_GLOBAL__N_137calculateFELambdaMarginalDistributionERKNS_8BiasGridENS_8ArrayRefIKiEENS4_IKdEE"}
!370 = distinct !{!370, !369, !"_ZN3gmx12_GLOBAL__N_137calculateFELambdaMarginalDistributionERKNS_8BiasGridENS_8ArrayRefIKiEENS4_IKdEE: argument 0"}
!371 = distinct !{!371, !25}
!372 = distinct !{!372, !28}
!373 = distinct !{!373, !25}
!374 = distinct !{!374, !28}
!375 = distinct !{!375, i1 false, !"LVerDomain"}
!376 = distinct !{!376, !375}
!377 = distinct !{!377, !375}
!378 = distinct !{!378, !375}
!379 = distinct !{!379, !375}
!380 = distinct !{!380, !25, !26, !27}
!381 = distinct !{!381, !25, !26}
!382 = !{!370}
!383 = !{!"p1 _ZTSN3gmx9DimParamsE", !13, i64 0}
!384 = !{!"_ZTSNSt12_Vector_baseIN3gmx9DimParamsESaIS1_EE17_Vector_impl_dataE", !383, i64 0, !383, i64 8, !383, i64 16}
!385 = !{!384, !383, i64 0}
!386 = !{!384, !383, i64 8}
!387 = !{!376}
!388 = !{!377}
!389 = !{!378}
!390 = !{!379}
!391 = !{!377, !376, !378}
!392 = distinct !{!392, !25}
!393 = !{!169, !168, i64 16}
!394 = !{i64 0, i64 8, !42, i64 8, i64 8, !42, i64 16, i64 8, !42, i64 24, i64 8, !42, i64 32, i64 8, !42, i64 40, i64 8, !42, i64 48, i64 8, !42, i64 56, i64 8, !73, i64 64, i64 8, !42, i64 72, i64 8, !42, i64 80, i64 8, !42, i64 88, i64 8, !42}
!395 = distinct !{!395, !25}
!396 = !{!172, !10, i64 0}
!397 = distinct !{!397, i1 false, !"LVerDomain"}
!398 = distinct !{!398, !397}
!399 = distinct !{!399, !397}
!400 = distinct !{!400, !25, !26, !27}
!401 = distinct !{!401, !25, !26, !27}
!402 = distinct !{!402, !28}
!403 = distinct !{!403, !25}
!404 = distinct !{!404, !25, !26}
!405 = !{!398}
!406 = !{!399}
!407 = !{!"p1 _ZTS10tmpi_comm_", !13, i64 0}
!408 = !{!"p1 _ZTSN3gmx7MpiComm19HierarchicalReducerE", !13, i64 0}
!409 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx7MpiComm19HierarchicalReducerELb0EE", !408, i64 0}
!410 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EEE", !409, i64 0}
!411 = !{!"_ZTSSt5tupleIJPN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EEE", !410, i64 0}
!412 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EE", !411, i64 0}
!413 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_ELb1ELb1EE", !412, i64 0}
!414 = !{!"_ZTSSt10unique_ptrIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EE", !413, i64 0}
!415 = !{!"_ZTSN3gmx7MpiCommE", !407, i64 0, !10, i64 8, !10, i64 12, !414, i64 16}
!416 = !{!415, !407, i64 0}
!417 = distinct !{!417, !25, !26, !27}
!418 = distinct !{!418, !25, !26, !27}
!419 = distinct !{!419, !25, !27, !26}
!420 = distinct !{!420, i1 true, !"_ZNK3gmx13MultiDimArrayISt6vectorIdSaIdEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEE11asConstViewEv"}
!421 = distinct !{!421, !420, !"_ZNK3gmx13MultiDimArrayISt6vectorIdSaIdEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEE11asConstViewEv: argument 0"}
!422 = distinct !{!422, !25}
!423 = distinct !{!423, !25}
!424 = distinct !{!424, !25, !26, !27}
!425 = distinct !{!425, !25, !26, !27}
!426 = distinct !{!426, !25, !27, !26}
!427 = distinct !{!427, !25}
!428 = distinct !{!428, !25}
!429 = distinct !{!429, !25, !26, !27}
!430 = distinct !{!430, !25, !26, !27}
!431 = distinct !{!431, !25, !27, !26}
!432 = distinct !{!432, !26, !27}
!433 = distinct !{!433, !26, !27}
!434 = distinct !{!434, !28}
!435 = distinct !{!435, !27, !26}
!436 = !{!"p1 _ZTSN3gmx12AwhDimParamsE", !13, i64 0}
!437 = !{!"_ZTSNSt12_Vector_baseIN3gmx12AwhDimParamsESaIS1_EE17_Vector_impl_dataE", !436, i64 0, !436, i64 8, !436, i64 16}
!438 = !{!"_ZTSNSt12_Vector_baseIN3gmx12AwhDimParamsESaIS1_EE12_Vector_implE", !437, i64 0}
!439 = !{!"_ZTSSt12_Vector_baseIN3gmx12AwhDimParamsESaIS1_EE", !438, i64 0}
!440 = !{!"_ZTSSt6vectorIN3gmx12AwhDimParamsESaIS1_EE", !439, i64 0}
!441 = !{!"_ZTSN3gmx22AwhHistogramGrowthTypeE", !9, i64 0}
!442 = !{!"_ZTSN3gmx13AwhBiasParamsE", !440, i64 0, !85, i64 24, !18, i64 32, !18, i64 40, !441, i64 48, !18, i64 56, !86, i64 64, !86, i64 65, !18, i64 72, !18, i64 80, !10, i64 88, !86, i64 92, !18, i64 96}
!443 = !{!442, !86, i64 64}
!444 = !{!421}
!445 = !{!"_ZTSNSt8__detail9__variant15_Copy_ctor_baseILb1EJN3gmx9DimParams13PullDimParamsENS3_12FepDimParamsEEEE", !40, i64 0}
!446 = !{!"_ZTSNSt8__detail9__variant15_Move_ctor_baseILb1EJN3gmx9DimParams13PullDimParamsENS3_12FepDimParamsEEEE", !445, i64 0}
!447 = !{!"_ZTSNSt8__detail9__variant17_Copy_assign_baseILb0EJN3gmx9DimParams13PullDimParamsENS3_12FepDimParamsEEEE", !446, i64 0}
!448 = !{!"_ZTSNSt8__detail9__variant17_Move_assign_baseILb0EJN3gmx9DimParams13PullDimParamsENS3_12FepDimParamsEEEE", !447, i64 0}
!449 = !{!"_ZTSNSt8__detail9__variant13_Variant_baseIJN3gmx9DimParams13PullDimParamsENS3_12FepDimParamsEEEE", !448, i64 0}
!450 = !{!"_ZTSSt7variantIJN3gmx9DimParams13PullDimParamsENS1_12FepDimParamsEEE", !449, i64 0}
!451 = !{!"_ZTSN3gmx9DimParamsE", !450, i64 0, !18, i64 32}
!452 = !{!451, !18, i64 32}
!453 = distinct !{!453, !28}
!454 = distinct !{!454, !25}
!455 = distinct !{!455, i1 false, !"LVerDomain"}
!456 = distinct !{!456, !455}
!457 = distinct !{!457, !455}
!458 = distinct !{!458, !25, !26, !27}
!459 = distinct !{!459, !28}
!460 = distinct !{!460, !25, !26}
!461 = !{!15, !14, i64 16}
!462 = !{!76, !75, i64 8}
!463 = !{!76, !75, i64 16}
!464 = !{!456}
!465 = !{!457}
!466 = distinct !{!466, !25}
!467 = distinct !{!467, !25}
end_hunk_2
