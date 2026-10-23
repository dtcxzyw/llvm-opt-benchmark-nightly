Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/surfacearea?download=true
inline.NumInlined: 537
inline.NumDeleted: 195
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN3gmx21SurfaceAreaCalculator11setDotCountEi:bb.a
  %i.csc = sub i64 %i.csa, %i.csb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.crw, i64 noundef %i.csc) #18
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.bv, %_ZL9make_unspii.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #7

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @asinf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx21SurfaceAreaCalculator8setRadiiERKNS_8ArrayRefIKfEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %.sroa.01.0.copyload.i = load ptr, ptr %1, align 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8 ; 3 uses
  %i.d = icmp eq ptr %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i, i64 4 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.e, %.sroa.0.0.copyload.i
  br i1 %.not10.i.i, label %_ZSt11max_elementIN3gmx12ArrayRefIterIKfEEET_S4_S4_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %.pre.i.i = load float, ptr %.sroa.01.0.copyload.i, align 4, !tbaa !18
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %i.f = phi float [ %i.k, %.lr.ph.i.i ], [ %.pre.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.g = phi ptr [ %i.j, %.lr.ph.i.i ], [ %i.e, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.07.011.i.i = phi ptr [ %spec.select.i.i, %.lr.ph.i.i ], [ %.sroa.01.0.copyload.i, %.lr.ph.preheader.i.i ]
  %i.h = load float, ptr %i.g, align 4, !tbaa !18 ; 2 uses
  %i.i = fcmp olt float %i.f, %i.h                ; 2 uses
  %spec.select.i.i = select i1 %i.i, ptr %i.g, ptr %.sroa.07.011.i.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %.sroa.0.0.copyload.i
  %i.k = select i1 %i.i, float %i.h, float %i.f
  br i1 %.not.i.i, label %_ZSt11max_elementIN3gmx12ArrayRefIterIKfEEET_S4_S4_.exit, label %.lr.ph.i.i, !llvm.loop !83

_ZSt11max_elementIN3gmx12ArrayRefIterIKfEEET_S4_S4_.exit: ; preds = %.lr.ph.i.i, %bb.b
  %.sroa.07.2.i.i = phi ptr [ %.sroa.01.0.copyload.i, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.l = load float, ptr %.sroa.07.2.i.i, align 4, !tbaa !18
  %i.m = load ptr, ptr %0, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = fmul float %i.l, 2.000000e+00
  tail call void @_ZN3gmx20AnalysisNeighborhood9setCutoffEf(ptr noundef nonnull align 8 dereferenceable(8) %i.n, float noundef %i.o)
  br label %bb.c

bb.c:                                             ; preds = %_ZSt11max_elementIN3gmx12ArrayRefIterIKfEEET_S4_S4_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

declare void @_ZN3gmx20AnalysisNeighborhood9setCutoffEf(ptr noundef nonnull align 8 dereferenceable(8), float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3gmx21SurfaceAreaCalculator18setCalculateVolumeEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i1 noundef zeroext %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !36
  %i.d = and i32 %i.c, -3
  %masksel = select i1 %1, i32 2, i32 0
  %.sink = or disjoint i32 %i.d, %masksel
  store i32 %.sink, ptr %i.b, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3gmx21SurfaceAreaCalculator20setCalculateAtomAreaEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i1 noundef zeroext %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !36
  %i.d = and i32 %i.c, -5
  %masksel = select i1 %1, i32 4, i32 0
  %.sink = or disjoint i32 %i.d, %masksel
  store i32 %.sink, ptr %i.b, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3gmx21SurfaceAreaCalculator23setCalculateSurfaceDotsEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i1 noundef zeroext %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !36
  %i.d = and i32 %i.c, -2
  %masksel = zext i1 %1 to i32
  %.sink = or disjoint i32 %i.d, %masksel
  store i32 %.sink, ptr %i.b, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK3gmx21SurfaceAreaCalculator9calculateEPA3_KfPK5t_pbciPiiPfS8_PS8_S9_S7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr nofree noundef writeonly captures(address_is_null) %8, ptr nofree noundef writeonly captures(address_is_null) %9, ptr nofree noundef writeonly captures(address_is_null) %10) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %"class.gmx::AnalysisNeighborhoodPositions", align 8 ; 9 uses
  %12 = alloca %"class.gmx::AnalysisNeighborhoodSearch", align 8 ; 7 uses
  %13 = alloca %"class.gmx::AnalysisNeighborhoodPairSearch", align 8 ; 7 uses
  %14 = alloca %"class.gmx::AnalysisNeighborhoodPositions", align 8 ; 8 uses
  %15 = alloca %"class.gmx::AnalysisNeighborhoodPair", align 4 ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !15     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !36
  %i.d = or i32 %i.c, %5                          ; 2 uses
  store float 0.000000e+00, ptr %6, align 4, !tbaa !18
  %i.e = icmp eq ptr %7, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.d, -3
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store float 0.000000e+00, ptr %7, align 4, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.d, %bb.c ]  ; 2 uses
  %i.g = icmp eq ptr %8, null                     ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = and i32 %.0, -5
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store ptr null, ptr %8, align 8, !tbaa !102
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi i32 [ %i.h, %bb.e ], [ %.0, %bb.f ]   ; 2 uses
  %i.i = icmp eq ptr %9, null                     ; 2 uses
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = and i32 %.1, -2
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store ptr null, ptr %9, align 8, !tbaa !102
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.2 = phi i32 [ %i.j, %bb.h ], [ %.1, %bb.i ]   ; 2 uses
  %i.k = icmp eq ptr %10, null                    ; 2 uses
  br i1 %i.k, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.l = and i32 %.2, -2
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store i32 0, ptr %10, align 4, !tbaa !19
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.3 = phi i32 [ %i.l, %bb.k ], [ %.2, %bb.l ]   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !12   ; 15 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = udiv i64 %i.t, 3                         ; 2 uses
  %i.v = trunc i64 %i.u to i32                    ; 12 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.x = sitofp i32 %i.v to float
  %i.y = fpext float %i.x to double
  %i.z = fdiv double f0x402921FB54442D18, %i.y
  %i.aa = fptrunc double %i.z to float            ; 2 uses
  %i.ab = load ptr, ptr @debug, align 8, !tbaa !104 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = fpext float %i.aa to double
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.7, i32 noundef %i.v, double noundef %i.ac) #19 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ae = icmp eq i32 %3, 0
  br i1 %i.ae, label %_ZL12nsc_dclm_pbcPA3_KfRKN3gmx8ArrayRefIS_EEiPS_iiPfPS8_S8_S9_PiSA_PNS2_20AnalysisNeighborhoodEPK5t_pbc.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = and i32 %.3, 2
  %.not202.i = icmp eq i32 %i.af, 0               ; 2 uses
  %i.ag = and i32 %.3, 1
  %.not203.i = icmp eq i32 %i.ag, 0               ; 3 uses
  br i1 %.not203.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = mul i32 %3, 3
  %i.ai = mul i32 %i.ah, %i.v
  %i.aj = sdiv i32 %i.ai, 10                      ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef 742, i64 noundef range(i64 -2147483648, 2147483648) %i.ak, i64 noundef 4)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0250.i = phi ptr [ null, %bb.p ], [ %i.al, %bb.q ] ; 2 uses
  %.0192.i = phi i32 [ 0, %bb.p ], [ %i.aj, %bb.q ]
  %i.am = and i32 %.3, 4
  %.not204.i = icmp eq i32 %i.am, 0               ; 3 uses
  br i1 %.not204.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = sext i32 %3 to i64
  %i.ao = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef 747, i64 noundef range(i64 -2147483648, 2147483648) %i.an, i64 noundef 4)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0255.i = phi ptr [ null, %bb.r ], [ %i.ao, %bb.s ] ; 2 uses
  %i.ap = icmp sgt i32 %3, 0                      ; 2 uses
  br i1 %i.ap, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.t
  %wide.trip.count.i = zext nneg i32 %3 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.aq = icmp ult i32 %3, 4
  br i1 %i.aq, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %.0191275.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader.i ], [ %i.dl, %._crit_edge.i.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader.i ], [ %i.do, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod138 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod138)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.0191275.i.epil = phi float [ %.0191275.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.ax, %.lr.ph.i.epil ]
  %i.ar = phi <2 x float> [ %.epil.init, %.lr.ph.i.epil.preheader ], [ %i.ba, %.lr.ph.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i.epil
  %i.at = load i32, ptr %i.as, align 4, !tbaa !19
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [12 x i8], ptr %1, i64 %i.au ; 2 uses
  %i.aw = load float, ptr %i.av, align 4, !tbaa !18
  %i.ax = fadd float %.0191275.i.epil, %i.aw      ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.az = load <2 x float>, ptr %i.ay, align 4, !tbaa !18
  %i.ba = fadd <2 x float> %i.ar, %i.az           ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !84

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.t
  %.0191.lcssa.i = phi float [ 0.000000e+00, %bb.t ], [ %i.dl, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.ax, %.lr.ph.i.epil ]
  %i.bb = phi <2 x float> [ zeroinitializer, %bb.t ], [ %i.do, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.ba, %.lr.ph.i.epil ]
  %i.bc = sitofp i32 %3 to float                  ; 2 uses
  %i.bd = fdiv float %.0191.lcssa.i, %i.bc
  %i.be = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = fdiv <2 x float> %i.bb, %i.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 -1, ptr %i.bh, align 4, !tbaa !107
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %1, ptr %i.bi, align 8, !tbaa !108
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 0, ptr %i.bj, align 8
  %i.bk = sext i32 %3 to i64
  %.not.i.i = icmp eq ptr %4, null
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bk
  %spec.select.i.i = select i1 %.not.i.i, ptr null, ptr %i.bl
  %i.bm = ptrtoint ptr %spec.select.i.i to i64
  %i.bn = ptrtoint ptr %4 to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = lshr exact i64 %i.bo, 2
  %i.bq = trunc i64 %i.bp to i32
  store i32 %i.bq, ptr %11, align 8, !tbaa !109
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %4, ptr %i.br, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @_ZN3gmx20AnalysisNeighborhood10initSearchEPK5t_pbcRKNS_29AnalysisNeighborhoodPositionsE(ptr dead_on_unwind nonnull writable sret(%"class.gmx::AnalysisNeighborhoodSearch") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %11)
  %sext = shl i64 %i.u, 32                        ; 2 uses
  %i.bs = ashr exact i64 %sext, 32                ; 2 uses
  %i.bt = icmp slt i32 %i.v, 0
  br i1 %i.bt, label %bb.u, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.u:                                             ; preds = %._crit_edge.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #20
          to label %.noexc.i unwind label %bb.w

.noexc.i:                                         ; preds = %bb.u
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %._crit_edge.i
  %.not.i.i.i.i.i = icmp eq i32 %i.v, 0           ; 4 uses
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.bu = lshr exact i64 %sext, 30
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #17
          to label %.noexc218.i unwind label %bb.w ; 5 uses

.noexc218.i:                                      ; preds = %bb.v
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bs ; 2 uses
  store i32 0, ptr %i.bv, align 4, !tbaa !19
  %i.bx = getelementptr i8, ptr %i.bv, i64 4      ; 3 uses
  %i.by = add nsw i64 %i.bs, -1                   ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc218.i
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.by, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.bx, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !19
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.idx.i.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.0191275.i = phi float [ 0.000000e+00, %.lr.ph.preheader.i.new ], [ %i.dl, %.lr.ph.i ]
  %i.cb = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader.i.new ], [ %i.do, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !19
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [12 x i8], ptr %1, i64 %i.ce ; 2 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !18
  %i.ch = fadd float %.0191275.i, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.cj = load <2 x float>, ptr %i.ci, align 4, !tbaa !18
  %i.ck = fadd <2 x float> %i.cb, %i.cj
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !19
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [12 x i8], ptr %1, i64 %i.co ; 2 uses
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !18
  %i.cr = fadd float %i.ch, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.ct = load <2 x float>, ptr %i.cs, align 4, !tbaa !18
  %i.cu = fadd <2 x float> %i.ck, %i.ct
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !19
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [12 x i8], ptr %1, i64 %i.cy ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !18
  %i.db = fadd float %i.cr, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.dd = load <2 x float>, ptr %i.dc, align 4, !tbaa !18
  %i.de = fadd <2 x float> %i.cu, %i.dd
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !19
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [12 x i8], ptr %1, i64 %i.di ; 2 uses
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !18
  %i.dl = fadd float %i.db, %i.dk                 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dn = load <2 x float>, ptr %i.dm, align 4, !tbaa !18
  %i.do = fadd <2 x float> %i.de, %i.dn           ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !85

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i:             ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc218.i, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.15.0.i = phi ptr [ %i.bw, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.bw, %.noexc218.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 2 uses
  %.sroa.0236.0.i = phi ptr [ %i.bv, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.bv, %.noexc218.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 26 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.ca, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.bx, %.noexc218.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 3 uses
  br i1 %i.ap, label %.lr.ph314.i, label %._crit_edge315.i

.lr.ph314.i:                                      ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i
  %.sroa.0236.0.i104 = ptrtoaddr ptr %.sroa.0236.0.i to i64
  %.0.i.i.i.i.i.i103 = ptrtoaddr ptr %.0.i.i.i.i.i.i to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.dq = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %15, i64 4
  %.not5.i.i.i.i.i = icmp eq ptr %.sroa.0236.0.i, %.0.i.i.i.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %15, i64 12
  %i.dv = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %15, i64 20
  %i.dx = mul nuw nsw i32 %i.v, 3
  %i.dy = getelementptr inbounds nuw i8, ptr %13, i64 8
  %16 = call i32 @llvm.umax.i32(i32 %i.v, i32 1)
  %wide.trip.count349.i = zext nneg i32 %3 to i64
  %wide.trip.count332.i = zext nneg i32 %16 to i64 ; 13 uses
  %brmerge.i = or i1 %.not203.i, %.not.i.i.i.i.i
  %i.dz = shl nuw nsw i64 %wide.trip.count332.i, 2
  %scevgep.a = getelementptr i8, ptr %.sroa.0236.0.i, i64 %i.dz
  %i.ea = mul nuw nsw i64 %wide.trip.count332.i, 12
  %scevgep56.a = getelementptr i8, ptr %i.n, i64 %i.ea
  %i.eb = add i64 %.0.i.i.i.i.i.i103, -4
  %i.ec = sub i64 %i.eb, %.sroa.0236.0.i104       ; 3 uses
  %i.ed = lshr i64 %i.ec, 2
  %17 = add nuw nsw i64 %i.ed, 1                  ; 5 uses
  %i.ee = add nsw i64 %wide.trip.count332.i, -1
  %min.iters.check105 = icmp ult i64 %i.ec, 28
  %min.iters.check107 = icmp ult i64 %i.ec, 124
  %i.ef = and i64 %17, 24
  %n.vec109 = and i64 %17, 9223372036854775776    ; 4 uses
  %i.eg = shl i64 %n.vec109, 2
  %i.eh = getelementptr i8, ptr %.sroa.0236.0.i, i64 %i.eg
  %cmp.n114 = icmp eq i64 %17, %n.vec109
  %min.epilog.iters.check120 = icmp eq i64 %i.ef, 0
  %n.vec122 = and i64 %17, 9223372036854775800    ; 3 uses
  %i.ei = shl i64 %n.vec122, 2
  %i.ej = getelementptr i8, ptr %.sroa.0236.0.i, i64 %i.ei
  %cmp.n128 = icmp eq i64 %17, %n.vec122
  %min.iters.check.a = icmp ult i32 %i.v, 8
  %bound0 = icmp ult ptr %.sroa.0236.0.i, %scevgep56.a
  %bound1 = icmp ult ptr %i.n, %scevgep.a
  %found.conflict = and i1 %bound0, %bound1
  %min.iters.check57 = icmp ult i32 %i.v, 16
  %i.ek = and i64 %wide.trip.count332.i, 8
  %n.vec = and i64 %wide.trip.count332.i, 2147483632 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count332.i
  %min.epilog.iters.check.not.not = icmp eq i64 %i.ek, 0
  %n.vec77 = and i64 %wide.trip.count332.i, 2147483640 ; 3 uses
  %cmp.n101 = icmp eq i64 %n.vec77, %wide.trip.count332.i
  %xtraiter139 = and i64 %wide.trip.count332.i, 1
  %lcmp.mod140.not = icmp eq i64 %xtraiter139, 0
  %xtraiter141 = and i64 %wide.trip.count332.i, 3 ; 3 uses
  %i.el = icmp ult i32 %i.v, 4
  %unroll_iter149 = and i64 %wide.trip.count332.i, 2147483644
  %lcmp.mod145.not = icmp eq i64 %xtraiter141, 0
  %lcmp.mod148 = icmp ne i64 %xtraiter141, 0
  br label %bb.x

._crit_edge315.loopexit.i:                        ; preds = %_ZN3gmx30AnalysisNeighborhoodPairSearchD2Ev.exit.i
  %i.em = fpext float %.2182.i to double
  %i.en = fmul double %i.em, f0x402921FB54442D18
  br label %._crit_edge315.i

._crit_edge315.i:                                 ; preds = %._crit_edge315.loopexit.i, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i
  %.1251.lcssa.i = phi ptr [ %.0250.i, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i ], [ %.5254.i, %._crit_edge315.loopexit.i ]
  %.1184.lcssa.i = phi i32 [ 0, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i ], [ %.4187.i, %._crit_edge315.loopexit.i ]
  %.1181.lcssa.i = phi double [ 0.000000e+00, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i ], [ %i.en, %._crit_edge315.loopexit.i ]
  %.0179.lcssa.i = phi float [ 0.000000e+00, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i ], [ %i.je, %._crit_edge315.loopexit.i ] ; 2 uses
  br i1 %.not202.i, label %bb.bg, label %bb.bf

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit232.i

bb.x:                                             ; preds = %_ZN3gmx30AnalysisNeighborhoodPairSearchD2Ev.exit.i, %.lr.ph314.i
  %indvars.iv346.i = phi i64 [ 0, %.lr.ph314.i ], [ %indvars.iv.next347.i, %_ZN3gmx30AnalysisNeighborhoodPairSearchD2Ev.exit.i ] ; 3 uses
  %.0179312.i = phi float [ 0.000000e+00, %.lr.ph314.i ], [ %i.je, %_ZN3gmx30AnalysisNeighborhoodPairSearchD2Ev.exit.i ]
  %.1181311.i = phi float [ 0.000000e+00, %.lr.ph314.i ], [ %.2182.i, %_ZN3gmx30AnalysisNeighborhoodPairSearchD2Ev.exit.i ] ; 2 uses
  %.1184310.i = phi i32 [ 0, %.lr.ph314.i ], [ %.4187.i, %_ZN3gmx30AnalysisNeighborhoodPairSearchD2Ev.exit.i ] ; 2 uses
  %.1193309.i = phi i32 [ %.0192.i, %.lr.ph314.i ], [ %.5.i, %_ZN3gmx30AnalysisNeighborhoodPairSearchD2Ev.exit.i ] ; 2 uses
  %.1251308.i = phi ptr [ %.0250.i, %.lr.ph314.i ], [ %.5254.i, %_ZN3gmx30AnalysisNeighborhoodPairSearchD2Ev.exit.i ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv346.i
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !19 ; 2 uses
  %i.er = sext i32 %i.eq to i64                   ; 2 uses
  %i.es = load i64, ptr %i.m, align 8
  %i.et = inttoptr i64 %i.es to ptr
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.et, i64 %i.er
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !18 ; 8 uses
  %i.ew = fmul float %i.ev, %i.ev                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %i.ex = getelementptr inbounds [12 x i8], ptr %1, i64 %i.er ; 3 uses
  store i32 1, ptr %14, align 8, !tbaa !109
  store i32 -1, ptr %i.dp, align 4, !tbaa !107
  store ptr %i.ex, ptr %i.dq, align 8, !tbaa !108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, i8 0, i64 16, i1 false)
  invoke void @_ZNK3gmx26AnalysisNeighborhoodSearch15startPairSearchERKNS_29AnalysisNeighborhoodPositionsE(ptr dead_on_unwind nonnull writable sret(%"class.gmx::AnalysisNeighborhoodPairSearch") align 8 %13, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  store i32 -1, ptr %15, align 4, !tbaa !112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ds, i8 0, i64 20, i1 false)
  br i1 %.not5.i.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i, label %iter.check117

iter.check117:                                    ; preds = %bb.y
  br i1 %min.iters.check105, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check106

vector.main.loop.iter.check106:                   ; preds = %iter.check117
  br i1 %min.iters.check107, label %vec.epilog.ph121, label %vector.body110

vector.body110:                                   ; preds = %vector.main.loop.iter.check106, %vector.body110
  %index111 = phi i64 [ %index.next112, %vector.body110 ], [ 0, %vector.main.loop.iter.check106 ] ; 2 uses
  %i.ey = shl i64 %index111, 2
  %next.gep = getelementptr i8, ptr %.sroa.0236.0.i, i64 %i.ey ; 4 uses
  %i.ez = getelementptr i8, ptr %next.gep, i64 32
  %i.fa = getelementptr i8, ptr %next.gep, i64 64
  %i.fb = getelementptr i8, ptr %next.gep, i64 96
  store <8 x i32> splat (i32 1), ptr %next.gep, align 4, !tbaa !19
  store <8 x i32> splat (i32 1), ptr %i.ez, align 4, !tbaa !19
  store <8 x i32> splat (i32 1), ptr %i.fa, align 4, !tbaa !19
  store <8 x i32> splat (i32 1), ptr %i.fb, align 4, !tbaa !19
  %index.next112 = add nuw i64 %index111, 32      ; 2 uses
  %i.fc = icmp eq i64 %index.next112, %n.vec109
  br i1 %i.fc, label %middle.block113, label %vector.body110, !llvm.loop !86

middle.block113:                                  ; preds = %vector.body110
  br i1 %cmp.n114, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i, label %vec.epilog.iter.check119

vec.epilog.iter.check119:                         ; preds = %middle.block113
  br i1 %min.epilog.iters.check120, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph121, !prof !115

vec.epilog.ph121:                                 ; preds = %vector.main.loop.iter.check106, %vec.epilog.iter.check119
  %vec.epilog.resume.val115 = phi i64 [ %n.vec109, %vec.epilog.iter.check119 ], [ 0, %vector.main.loop.iter.check106 ]
  br label %vec.epilog.vector.body123

vec.epilog.vector.body123:                        ; preds = %vec.epilog.vector.body123, %vec.epilog.ph121
  %index124 = phi i64 [ %vec.epilog.resume.val115, %vec.epilog.ph121 ], [ %index.next126, %vec.epilog.vector.body123 ] ; 2 uses
  %i.fd = shl i64 %index124, 2
  %next.gep125 = getelementptr i8, ptr %.sroa.0236.0.i, i64 %i.fd
  store <8 x i32> splat (i32 1), ptr %next.gep125, align 4, !tbaa !19
  %index.next126 = add nuw i64 %index124, 8       ; 2 uses
  %i.fe = icmp eq i64 %index.next126, %n.vec122
  br i1 %i.fe, label %vec.epilog.middle.block127, label %vec.epilog.vector.body123, !llvm.loop !87

vec.epilog.middle.block127:                       ; preds = %vec.epilog.vector.body123
  br i1 %cmp.n128, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check117, %vec.epilog.iter.check119, %vec.epilog.middle.block127
  %.06.i.i.i.i.i.ph = phi ptr [ %.sroa.0236.0.i, %iter.check117 ], [ %i.eh, %vec.epilog.iter.check119 ], [ %i.ej, %vec.epilog.middle.block127 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.ff, %.lr.ph.i.i.i.i.i ], [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  store i32 1, ptr %.06.i.i.i.i.i, align 4, !tbaa !19
  %i.ff = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i219.i = icmp eq ptr %i.ff, %.0.i.i.i.i.i.i
  br i1 %.not.i.i.i.i219.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !88

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block113, %vec.epilog.middle.block127, %bb.y
  br i1 %.not.i.i.i.i.i, label %.critedge.i, label %.lr.ph287.i

.lr.ph287.i:                                      ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i
  %i.fg = fmul float %i.ev, 2.000000e+00
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.i, %.lr.ph287.i
  %.0167286.i = phi i32 [ %i.v, %.lr.ph287.i ], [ %.3.i, %.loopexit.i ] ; 6 uses
  %i.fh = invoke noundef zeroext i1 @_ZN3gmx30AnalysisNeighborhoodPairSearch12findNextPairEPNS_24AnalysisNeighborhoodPairE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %15)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.z
  br i1 %i.fh, label %bb.ab, label %.critedge.loopexit.i

bb.ab:                                            ; preds = %bb.aa
  %i.fi = load i32, ptr %15, align 4, !tbaa !112
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %4, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !19 ; 2 uses
  %i.fm = sext i32 %i.fl to i64
  %i.fn = load i64, ptr %i.m, align 8
  %i.fo = inttoptr i64 %i.fn to ptr
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.fo, i64 %i.fm
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !18 ; 3 uses
  %i.fr = load float, ptr %i.dt, align 4, !tbaa !116 ; 2 uses
  %i.fs = icmp eq i32 %i.eq, %i.fl
  br i1 %i.fs, label %.loopexit.i, label %bb.ac, !llvm.loop !89

bb.ac:                                            ; preds = %bb.ab
  %i.ft = fadd float %i.ev, %i.fq                 ; 2 uses
  %i.fu = fmul float %i.ft, %i.ft
  %i.fv = fcmp ogt float %i.fr, %i.fu
  br i1 %i.fv, label %.loopexit.i, label %iter.check, !llvm.loop !89

bb.ad:                                            ; preds = %bb.x
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.be

iter.check:                                       ; preds = %bb.ac
  %i.fx = fadd float %i.ew, %i.fr
  %i.fy = fneg float %i.fq
  %i.fz = call float @llvm.fmuladd.f32(float %i.fy, float %i.fq, float %i.fx)
  %i.ga = fdiv float %i.fz, %i.fg                 ; 5 uses
  %i.gb = load float, ptr %i.du, align 4          ; 5 uses
  %i.gc = load float, ptr %i.dv, align 4          ; 5 uses
  %i.gd = load float, ptr %i.dw, align 4          ; 5 uses
  %brmerge.a = select i1 %min.iters.check.a, i1 true, i1 %found.conflict
  br i1 %brmerge.a, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check57, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ge = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.0167286.i, i64 0
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ga, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert58 = insertelement <8 x float> poison, float %i.gb, i64 0
  %broadcast.splat59 = shufflevector <8 x float> %broadcast.splatinsert58, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert60 = insertelement <8 x float> poison, float %i.gc, i64 0
  %broadcast.splat61 = shufflevector <8 x float> %broadcast.splatinsert60, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert62 = insertelement <8 x float> poison, float %i.gd, i64 0
  %broadcast.splat63 = shufflevector <8 x float> %broadcast.splatinsert62, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <8 x i32> [ %i.ge, %vector.ph ], [ %predphi, %vector.body ]
  %vec.phi64 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %predphi76, %vector.body ]
  %i.gf = getelementptr [4 x i8], ptr %.sroa.0236.0.i, i64 %index ; 3 uses
  %i.gg = getelementptr i8, ptr %i.gf, i64 32     ; 2 uses
  %wide.load = load <8 x i32>, ptr %i.gf, align 4, !tbaa !19, !alias.scope !117, !noalias !118
  %wide.load65 = load <8 x i32>, ptr %i.gg, align 4, !tbaa !19, !alias.scope !117, !noalias !118
  %i.gh = icmp ne <8 x i32> %wide.load, zeroinitializer ; 4 uses
  %i.gi = icmp ne <8 x i32> %wide.load65, zeroinitializer ; 4 uses
  %i.gj = mul nuw nsw <8 x i64> %vec.ind, splat (i64 12)
  %i.gk = mul nuw <8 x i64> %vec.ind, splat (i64 12)
  %i.gl = add nuw <8 x i64> %i.gk, splat (i64 96)
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.n, <8 x i64> %i.gj ; 3 uses
  %wide.gep66 = getelementptr inbounds nuw i8, ptr %i.n, <8 x i64> %i.gl ; 3 uses
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> %i.gh, <8 x float> poison), !tbaa !18, !alias.scope !118
  %wide.masked.gather67 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep66, <8 x i1> %i.gi, <8 x float> poison), !tbaa !18, !alias.scope !118
  %wide.gep68 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.gep69 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep66, i64 4
  %wide.masked.gather70 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep68, <8 x i1> %i.gh, <8 x float> poison), !tbaa !18, !alias.scope !118
  %wide.masked.gather71 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep69, <8 x i1> %i.gi, <8 x float> poison), !tbaa !18, !alias.scope !118
  %i.gm = fmul <8 x float> %broadcast.splat61, %wide.masked.gather70
  %i.gn = fmul <8 x float> %broadcast.splat61, %wide.masked.gather71
  %i.go = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather, <8 x float> %broadcast.splat59, <8 x float> %i.gm)
  %i.gp = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather67, <8 x float> %broadcast.splat59, <8 x float> %i.gn)
  %wide.gep72 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %wide.gep73 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep66, i64 8
  %wide.masked.gather74 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep72, <8 x i1> %i.gh, <8 x float> poison), !tbaa !18, !alias.scope !118
  %wide.masked.gather75 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep73, <8 x i1> %i.gi, <8 x float> poison), !tbaa !18, !alias.scope !118
  %i.gq = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather74, <8 x float> %broadcast.splat63, <8 x float> %i.go)
  %i.gr = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather75, <8 x float> %broadcast.splat63, <8 x float> %i.gp)
  %i.gs = fcmp ogt <8 x float> %i.gq, %broadcast.splat
  %i.gt = fcmp ogt <8 x float> %i.gr, %broadcast.splat
  %i.gu = select <8 x i1> %i.gh, <8 x i1> %i.gs, <8 x i1> zeroinitializer ; 2 uses
  %i.gv = select <8 x i1> %i.gi, <8 x i1> %i.gt, <8 x i1> zeroinitializer ; 2 uses
  call void @llvm.masked.store.v8i32.p0(<8 x i32> zeroinitializer, ptr align 4 %i.gf, <8 x i1> %i.gu), !tbaa !19, !alias.scope !117, !noalias !118
  call void @llvm.masked.store.v8i32.p0(<8 x i32> zeroinitializer, ptr align 4 %i.gg, <8 x i1> %i.gv), !tbaa !19, !alias.scope !117, !noalias !118
  %i.gw = sext <8 x i1> %i.gu to <8 x i32>
  %predphi = add <8 x i32> %vec.phi, %i.gw        ; 2 uses
  %i.gx = sext <8 x i1> %i.gv to <8 x i32>
  %predphi76 = add <8 x i32> %vec.phi64, %i.gx    ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 16)
  %i.gy = icmp eq i64 %index.next, %n.vec
  br i1 %i.gy, label %middle.block, label %vector.body, !llvm.loop !93

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %predphi76, %predphi
  %i.gz = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !119

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %bc.merge.rdx = phi i32 [ %i.gz, %vec.epilog.iter.check ], [ %.0167286.i, %vector.main.loop.iter.check ]
  %i.ha = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  %broadcast.splatinsert78 = insertelement <8 x float> poison, float %i.ga, i64 0
  %broadcast.splat79 = shufflevector <8 x float> %broadcast.splatinsert78, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert80 = insertelement <8 x float> poison, float %i.gb, i64 0
  %broadcast.splat81 = shufflevector <8 x float> %broadcast.splatinsert80, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert82 = insertelement <8 x float> poison, float %i.gc, i64 0
  %broadcast.splat83 = shufflevector <8 x float> %broadcast.splatinsert82, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert84 = insertelement <8 x float> poison, float %i.gd, i64 0
  %broadcast.splat85 = shufflevector <8 x float> %broadcast.splatinsert84, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert86 = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat87 = shufflevector <8 x i64> %broadcast.splatinsert86, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i64> %broadcast.splat87, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index88 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next99, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind89 = phi <8 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next100, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi90 = phi <8 x i32> [ %i.ha, %vec.epilog.ph ], [ %predphi98, %vec.epilog.vector.body ]
  %i.hb = getelementptr [4 x i8], ptr %.sroa.0236.0.i, i64 %index88 ; 2 uses
  %wide.load91 = load <8 x i32>, ptr %i.hb, align 4, !tbaa !19, !alias.scope !117, !noalias !118
  %i.hc = icmp ne <8 x i32> %wide.load91, zeroinitializer ; 4 uses
  %i.hd = mul nuw nsw <8 x i64> %vec.ind89, splat (i64 12)
  %wide.gep92 = getelementptr inbounds nuw i8, ptr %i.n, <8 x i64> %i.hd ; 3 uses
  %wide.masked.gather93 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep92, <8 x i1> %i.hc, <8 x float> poison), !tbaa !18, !alias.scope !118
  %wide.gep94 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep92, i64 4
  %wide.masked.gather95 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep94, <8 x i1> %i.hc, <8 x float> poison), !tbaa !18, !alias.scope !118
  %i.he = fmul <8 x float> %broadcast.splat83, %wide.masked.gather95
  %i.hf = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather93, <8 x float> %broadcast.splat81, <8 x float> %i.he)
  %wide.gep96 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep92, i64 8
  %wide.masked.gather97 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep96, <8 x i1> %i.hc, <8 x float> poison), !tbaa !18, !alias.scope !118
  %i.hg = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather97, <8 x float> %broadcast.splat85, <8 x float> %i.hf)
  %i.hh = fcmp ogt <8 x float> %i.hg, %broadcast.splat79
  %i.hi = select <8 x i1> %i.hc, <8 x i1> %i.hh, <8 x i1> zeroinitializer ; 2 uses
  call void @llvm.masked.store.v8i32.p0(<8 x i32> zeroinitializer, ptr align 4 %i.hb, <8 x i1> %i.hi), !tbaa !19, !alias.scope !117, !noalias !118
  %i.hj = sext <8 x i1> %i.hi to <8 x i32>
  %predphi98 = add <8 x i32> %vec.phi90, %i.hj    ; 2 uses
  %index.next99 = add nuw i64 %index88, 8         ; 2 uses
  %vec.ind.next100 = add nuw nsw <8 x i64> %vec.ind89, splat (i64 8)
  %i.hk = icmp eq i64 %index.next99, %n.vec77
  br i1 %i.hk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !94

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.hl = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %predphi98) ; 2 uses
  br i1 %cmp.n101, label %.loopexit.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv329.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec77, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 5 uses
  %.1168281.i.ph = phi i32 [ %.0167286.i, %iter.check ], [ %i.hl, %vec.epilog.middle.block ], [ %i.gz, %vec.epilog.iter.check ] ; 4 uses
  br i1 %lcmp.mod140.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0236.0.i, i64 %indvars.iv329.i.ph ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !19
  %.not217.i.prol = icmp eq i32 %i.hn, 0
  br i1 %.not217.i.prol, label %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa, label %bb.ae

bb.ae:                                            ; preds = %vec.epilog.scalar.ph.prol
  %.idx.i.prol = mul nuw nsw i64 %indvars.iv329.i.ph, 12
  %i.ho = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i.prol ; 3 uses
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !18
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !18
  %i.hs = fmul float %i.gc, %i.hr
  %i.ht = call float @llvm.fmuladd.f32(float %i.hp, float %i.gb, float %i.hs)
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !18
  %i.hw = call noundef float @llvm.fmuladd.f32(float %i.hv, float %i.gd, float %i.ht)
  %i.hx = fcmp ogt float %i.hw, %i.ga
  br i1 %i.hx, label %bb.af, label %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa

bb.af:                                            ; preds = %bb.ae
  %i.hy = add nsw i32 %.1168281.i.ph, -1
  store i32 0, ptr %i.hm, align 4, !tbaa !19
  br label %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa

vec.epilog.scalar.ph.prol.loopexit.unr-lcssa:     ; preds = %bb.af, %bb.ae, %vec.epilog.scalar.ph.prol
  %.2.i.prol = phi i32 [ %i.hy, %bb.af ], [ %.1168281.i.ph, %bb.ae ], [ %.1168281.i.ph, %vec.epilog.scalar.ph.prol ] ; 2 uses
  %indvars.iv.next330.i.prol = or disjoint i64 %indvars.iv329.i.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa, %vec.epilog.scalar.ph.preheader
  %.2.i.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %.2.i.prol, %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa ]
  %indvars.iv329.i.unr = phi i64 [ %indvars.iv329.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next330.i.prol, %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa ]
  %.1168281.i.unr = phi i32 [ %.1168281.i.ph, %vec.epilog.scalar.ph.preheader ], [ %.2.i.prol, %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa ]
  %i.hz = icmp eq i64 %i.ee, %indvars.iv329.i.ph
  br i1 %i.hz, label %.loopexit.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %bb.ak
  %indvars.iv329.i = phi i64 [ %indvars.iv.next330.i.1, %bb.ak ], [ %indvars.iv329.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %.1168281.i = phi i32 [ %.2.i.1, %bb.ak ], [ %.1168281.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0236.0.i, i64 %indvars.iv329.i ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !19
  %.not217.i = icmp eq i32 %i.ib, 0
  br i1 %.not217.i, label %vec.epilog.scalar.ph.1, label %bb.ag

bb.ag:                                            ; preds = %vec.epilog.scalar.ph
  %.idx.i = mul nuw nsw i64 %indvars.iv329.i, 12
  %i.ic = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i ; 3 uses
  %i.id = load float, ptr %i.ic, align 4, !tbaa !18
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 4
  %i.if = load float, ptr %i.ie, align 4, !tbaa !18
  %i.ig = fmul float %i.gc, %i.if
  %i.ih = call float @llvm.fmuladd.f32(float %i.id, float %i.gb, float %i.ig)
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !18
  %i.ik = call noundef float @llvm.fmuladd.f32(float %i.ij, float %i.gd, float %i.ih)
  %i.il = fcmp ogt float %i.ik, %i.ga
  br i1 %i.il, label %bb.ah, label %vec.epilog.scalar.ph.1

bb.ah:                                            ; preds = %bb.ag
  %i.im = add nsw i32 %.1168281.i, -1
  store i32 0, ptr %i.ia, align 4, !tbaa !19
  br label %vec.epilog.scalar.ph.1

vec.epilog.scalar.ph.1:                           ; preds = %bb.ah, %bb.ag, %vec.epilog.scalar.ph
  %.2.i = phi i32 [ %i.im, %bb.ah ], [ %.1168281.i, %bb.ag ], [ %.1168281.i, %vec.epilog.scalar.ph ] ; 3 uses
  %indvars.iv.next330.i = add nuw nsw i64 %indvars.iv329.i, 1 ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0236.0.i, i64 %indvars.iv.next330.i ; 2 uses
  %i.io = load i32, ptr %i.in, align 4, !tbaa !19
  %.not217.i.1 = icmp eq i32 %i.io, 0
  br i1 %.not217.i.1, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %vec.epilog.scalar.ph.1
  %.idx.i.1 = mul nuw nsw i64 %indvars.iv.next330.i, 12
  %i.ip = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i.1 ; 3 uses
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !18
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  %i.is = load float, ptr %i.ir, align 4, !tbaa !18
  %i.it = fmul float %i.gc, %i.is
  %i.iu = call float @llvm.fmuladd.f32(float %i.iq, float %i.gb, float %i.it)
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !18
  %i.ix = call noundef float @llvm.fmuladd.f32(float %i.iw, float %i.gd, float %i.iu)
  %i.iy = fcmp ogt float %i.ix, %i.ga
  br i1 %i.iy, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.iz = add nsw i32 %.2.i, -1
  store i32 0, ptr %i.in, align 4, !tbaa !19
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %vec.epilog.scalar.ph.1
  %.2.i.1 = phi i32 [ %i.iz, %bb.aj ], [ %.2.i, %bb.ai ], [ %.2.i, %vec.epilog.scalar.ph.1 ] ; 2 uses
  %indvars.iv.next330.i.1 = add nuw nsw i64 %indvars.iv329.i, 2 ; 2 uses
  %exitcond333.not.i.1 = icmp eq i64 %indvars.iv.next330.i.1, %wide.trip.count332.i
  br i1 %exitcond333.not.i.1, label %.loopexit.i, label %vec.epilog.scalar.ph, !llvm.loop !95

.loopexit.i:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %bb.ak, %middle.block, %vec.epilog.middle.block, %bb.ac, %bb.ab
  %.3.i = phi i32 [ %.0167286.i, %bb.ab ], [ %.0167286.i, %bb.ac ], [ %i.hl, %vec.epilog.middle.block ], [ %i.gz, %middle.block ], [ %.2.i.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %.2.i.1, %bb.ak ] ; 3 uses
  %i.ja = icmp sgt i32 %.3.i, 0
  br i1 %i.ja, label %bb.z, label %.critedge.loopexit.i

.critedge.loopexit.i:                             ; preds = %.loopexit.i, %bb.aa
  %.0167.lcssa.ph.i = phi i32 [ %.0167286.i, %bb.aa ], [ %.3.i, %.loopexit.i ]
  %i.jb = sitofp i32 %.0167.lcssa.ph.i to float
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i
  %.0167.lcssa.i = phi float [ 0.000000e+00, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i ], [ %i.jb, %.critedge.loopexit.i ] ; 2 uses
  %i.jc = fmul float %i.ew, %i.aa
  %i.jd = fmul float %i.jc, %.0167.lcssa.i        ; 2 uses
  %i.je = fadd float %.0179312.i, %i.jd           ; 2 uses
  br i1 %.not204.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.critedge.i
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %.0255.i, i64 %indvars.iv346.i
  store float %i.jd, ptr %i.jf, align 4, !tbaa !18
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.critedge.i
  %i.jg = load float, ptr %i.ex, align 4, !tbaa !18 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.ji = load <2 x float>, ptr %i.jh, align 4, !tbaa !18 ; 3 uses
  br i1 %brmerge.i, label %.loopexit257.i, label %.lr.ph295.i.preheader

.lr.ph295.i.preheader:                            ; preds = %bb.am
  %i.jj = extractelement <2 x float> %i.ji, i64 0
  %i.jk = extractelement <2 x float> %i.ji, i64 1
  br label %.lr.ph295.i

.lr.ph295.i:                                      ; preds = %.lr.ph295.i.preheader, %bb.ap
  %indvars.iv334.i = phi i64 [ %indvars.iv.next335.i, %bb.ap ], [ 0, %.lr.ph295.i.preheader ] ; 3 uses
  %.2185293.i = phi i32 [ %.3186.i, %bb.ap ], [ %.1184310.i, %.lr.ph295.i.preheader ] ; 2 uses
  %.2194292.i = phi i32 [ %.4196.i, %bb.ap ], [ %.1193309.i, %.lr.ph295.i.preheader ] ; 4 uses
  %.2252291.i = phi ptr [ %.4.i, %bb.ap ], [ %.1251308.i, %.lr.ph295.i.preheader ] ; 3 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0236.0.i, i64 %indvars.iv334.i
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !19
  %.not210.i = icmp eq i32 %i.jm, 0
  br i1 %.not210.i, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %.lr.ph295.i
  %i.jn = add nsw i32 %.2185293.i, 1              ; 2 uses
  %i.jo = mul nsw i32 %i.jn, 3                    ; 2 uses
  %i.jp = add nsw i32 %i.jo, 1
  %.not211.i = icmp sgt i32 %.2194292.i, %i.jp
  br i1 %.not211.i, label %_ZL15gmx_srenew_implIfEvPKcS1_iRPT_m.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.jq = add nsw i32 %.2194292.i, %i.dx          ; 2 uses
  %i.jr = sext i32 %i.jq to i64
  %i.js = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef 836, ptr noundef %.2252291.i, i64 noundef range(i64 -2147483648, 2147483648) %i.jr, i64 noundef 4)
          to label %_ZL15gmx_srenew_implIfEvPKcS1_iRPT_m.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ao, %bb.z
  %lpad.loopexit.split-lp131 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @_ZN3gmx30AnalysisNeighborhoodPairSearchD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #19
  br label %bb.be

_ZL15gmx_srenew_implIfEvPKcS1_iRPT_m.exit.i:      ; preds = %bb.ao, %bb.an
  %.3253.i = phi ptr [ %.2252291.i, %bb.an ], [ %i.js, %bb.ao ] ; 2 uses
  %.3195.i = phi i32 [ %.2194292.i, %bb.an ], [ %i.jq, %bb.ao ]
  %.idx361.i = mul nuw nsw i64 %indvars.iv334.i, 12
  %i.jt = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx361.i ; 3 uses
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !18
  %i.jv = call float @llvm.fmuladd.f32(float %i.ev, float %i.ju, float %i.jg)
  %i.jw = sext i32 %i.jo to i64
  %i.jx = getelementptr [4 x i8], ptr %.3253.i, i64 %i.jw ; 3 uses
  %i.jy = getelementptr i8, ptr %i.jx, i64 -12
  store float %i.jv, ptr %i.jy, align 4, !tbaa !18
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jt, i64 4
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !18
  %i.kb = call float @llvm.fmuladd.f32(float %i.ev, float %i.ka, float %i.jj)
  %i.kc = getelementptr i8, ptr %i.jx, i64 -8
  store float %i.kb, ptr %i.kc, align 4, !tbaa !18
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !18
  %i.kf = call float @llvm.fmuladd.f32(float %i.ev, float %i.ke, float %i.jk)
  %i.kg = getelementptr i8, ptr %i.jx, i64 -4
  store float %i.kf, ptr %i.kg, align 4, !tbaa !18
  br label %bb.ap

bb.ap:                                            ; preds = %_ZL15gmx_srenew_implIfEvPKcS1_iRPT_m.exit.i, %.lr.ph295.i
  %.4.i = phi ptr [ %.2252291.i, %.lr.ph295.i ], [ %.3253.i, %_ZL15gmx_srenew_implIfEvPKcS1_iRPT_m.exit.i ] ; 2 uses
  %.4196.i = phi i32 [ %.2194292.i, %.lr.ph295.i ], [ %.3195.i, %_ZL15gmx_srenew_implIfEvPKcS1_iRPT_m.exit.i ] ; 2 uses
  %.3186.i = phi i32 [ %.2185293.i, %.lr.ph295.i ], [ %i.jn, %_ZL15gmx_srenew_implIfEvPKcS1_iRPT_m.exit.i ] ; 2 uses
  %indvars.iv.next335.i = add nuw nsw i64 %indvars.iv334.i, 1 ; 2 uses
  %exitcond339.not.i = icmp eq i64 %indvars.iv.next335.i, %wide.trip.count332.i
  br i1 %exitcond339.not.i, label %.loopexit257.i, label %.lr.ph295.i, !llvm.loop !96

.loopexit257.i:                                   ; preds = %bb.ap, %bb.am
  %.5254.i = phi ptr [ %.1251308.i, %bb.am ], [ %.4.i, %bb.ap ] ; 2 uses
  %.5.i = phi i32 [ %.1193309.i, %bb.am ], [ %.4196.i, %bb.ap ]
  %.4187.i = phi i32 [ %.1184310.i, %bb.am ], [ %.3186.i, %bb.ap ] ; 2 uses
  br i1 %.not202.i, label %bb.ax, label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit257.i
  br i1 %.not.i.i.i.i.i, label %._crit_edge304.i, label %.lr.ph303.i.preheader

.lr.ph303.i.preheader:                            ; preds = %.preheader.i
  br i1 %i.el, label %.lr.ph303.i.epil.preheader, label %.lr.ph303.i

._crit_edge304.i.loopexit.unr-lcssa:              ; preds = %bb.aw
  br i1 %lcmp.mod145.not, label %._crit_edge304.i, label %.lr.ph303.i.epil.preheader

.lr.ph303.i.epil.preheader:                       ; preds = %._crit_edge304.i.loopexit.unr-lcssa, %.lr.ph303.i.preheader
  %indvars.iv340.i.epil.init = phi i64 [ 0, %.lr.ph303.i.preheader ], [ %indvars.iv.next341.i.3, %._crit_edge304.i.loopexit.unr-lcssa ]
  %.0163299.i.epil.init = phi float [ 0.000000e+00, %.lr.ph303.i.preheader ], [ %.1164.i.3, %._crit_edge304.i.loopexit.unr-lcssa ]
  %.epil.init144 = phi <2 x float> [ zeroinitializer, %.lr.ph303.i.preheader ], [ %i.ml, %._crit_edge304.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod148)
  br label %.lr.ph303.i.epil

.lr.ph303.i.epil:                                 ; preds = %bb.ar, %.lr.ph303.i.epil.preheader
  %indvars.iv340.i.epil = phi i64 [ %indvars.iv.next341.i.epil, %bb.ar ], [ %indvars.iv340.i.epil.init, %.lr.ph303.i.epil.preheader ] ; 3 uses
  %.0163299.i.epil = phi float [ %.1164.i.epil, %bb.ar ], [ %.0163299.i.epil.init, %.lr.ph303.i.epil.preheader ] ; 2 uses
  %i.kh = phi <2 x float> [ %i.kq, %bb.ar ], [ %.epil.init144, %.lr.ph303.i.epil.preheader ] ; 2 uses
  %epil.iter142 = phi i64 [ %epil.iter142.next, %bb.ar ], [ 0, %.lr.ph303.i.epil.preheader ]
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0236.0.i, i64 %indvars.iv340.i.epil
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !19
  %.not209.i.epil = icmp eq i32 %i.kj, 0
  br i1 %.not209.i.epil, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph303.i.epil
  %.idx362.i.epil = mul nuw nsw i64 %indvars.iv340.i.epil, 12
  %i.kk = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx362.i.epil ; 2 uses
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !18
  %i.km = fadd float %.0163299.i.epil, %i.kl
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.ko = load <2 x float>, ptr %i.kn, align 4, !tbaa !18
  %i.kp = fadd <2 x float> %i.kh, %i.ko
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.lr.ph303.i.epil
  %.1164.i.epil = phi float [ %i.km, %bb.aq ], [ %.0163299.i.epil, %.lr.ph303.i.epil ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK3gmx21SurfaceAreaCalculator9calculateEPA3_KfPK5t_pbciPiiPfS8_PS8_S9_S7_:bb.a
bb.bz:                                            ; preds = %bb.by
  %i.oh = ptrtoint ptr %.sroa.15.0.i to i64
  %i.oi = ptrtoint ptr %.sroa.0236.0.i to i64
  %i.oj = sub i64 %i.oh, %i.oi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0236.0.i, i64 noundef %i.oj) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit232.i

_ZNSt6vectorIiSaIiEED2Ev.exit232.i:               ; preds = %bb.bz, %bb.by, %bb.w
  %.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.eo, %bb.w ], [ %.pn.pn.pn.pn.i, %bb.by ], [ %.pn.pn.pn.pn.i, %bb.bz ]
  call void @_ZN3gmx26AnalysisNeighborhoodSearchD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.i

_ZL12nsc_dclm_pbcPA3_KfRKN3gmx8ArrayRefIS_EEiPS_iiPfPS8_S8_S9_PiSA_PNS2_20AnalysisNeighborhoodEPK5t_pbc.exit: ; preds = %bb.o, %_ZN3gmx26AnalysisNeighborhoodSearchD2Ev.exit.i
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #11

declare void @_ZN3gmx20AnalysisNeighborhood10initSearchEPK5t_pbcRKNS_29AnalysisNeighborhoodPositionsE(ptr dead_on_unwind writable sret(%"class.gmx::AnalysisNeighborhoodSearch") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare void @_ZNK3gmx26AnalysisNeighborhoodSearch15startPairSearchERKNS_29AnalysisNeighborhoodPositionsE(ptr dead_on_unwind writable sret(%"class.gmx::AnalysisNeighborhoodPairSearch") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN3gmx30AnalysisNeighborhoodPairSearch12findNextPairEPNS_24AnalysisNeighborhoodPairE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx30AnalysisNeighborhoodPairSearchD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !42
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !120
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !120
  br label %_ZNSt12__shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !19
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !46

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19
  br label %_ZNSt12__shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx26AnalysisNeighborhoodSearchD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !42
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !121
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !121
  br label %_ZNSt12__shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !19
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !46

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19
  br label %_ZNSt12__shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

declare noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

declare noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !122
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !19   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !19
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !122
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.floor.v2f64(<2 x double>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8i32.p0(<8 x i32>, ptr captures(none), <8 x i1>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { builtin nounwind }
attributes #19 = { nounwind }
attributes #20 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 float", !9, i64 0}
!11 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!12 = !{!11, !10, i64 0}
!13 = !{!11, !10, i64 16}
!14 = !{!"p1 _ZTSN3gmx21SurfaceAreaCalculator4ImplE", !9, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"float", !5, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!6, !6, i64 0}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = !{!11, !10, i64 8}
!22 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !11, i64 0}
!23 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !22, i64 0}
!24 = !{!"_ZTSSt6vectorIfSaIfEE", !23, i64 0}
!25 = !{!"_ZTSN3gmx12ArrayRefIterIKfEE", !10, i64 0}
!26 = !{!"_ZTSN3gmx8ArrayRefIKfEE", !25, i64 0, !25, i64 8}
!27 = !{!"p1 _ZTSN3gmx20AnalysisNeighborhood4ImplE", !9, i64 0}
!28 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx20AnalysisNeighborhood4ImplELb0EE", !27, i64 0}
!29 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx20AnalysisNeighborhood4ImplESt14default_deleteIS2_EEE", !28, i64 0}
!30 = !{!"_ZTSSt5tupleIJPN3gmx20AnalysisNeighborhood4ImplESt14default_deleteIS2_EEE", !29, i64 0}
!31 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx20AnalysisNeighborhood4ImplESt14default_deleteIS2_EE", !30, i64 0}
!32 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx20AnalysisNeighborhood4ImplESt14default_deleteIS2_ELb1ELb1EE", !31, i64 0}
!33 = !{!"_ZTSSt10unique_ptrIN3gmx20AnalysisNeighborhood4ImplESt14default_deleteIS2_EE", !32, i64 0}
!34 = !{!"_ZTSN3gmx20AnalysisNeighborhoodE", !33, i64 0}
!35 = !{!"_ZTSN3gmx21SurfaceAreaCalculator4ImplE", !24, i64 0, !26, i64 24, !6, i64 40, !34, i64 48}
!36 = !{!35, !6, i64 40}
!37 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 0}
!38 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !37, i64 0}
!39 = !{!38, !37, i64 0}
!40 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !6, i64 8, !6, i64 12}
!41 = !{!40, !6, i64 8}
!42 = !{!40, !6, i64 12}
!43 = !{!"vtable pointer", !4, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!5, !5, i64 0}
!46 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!47 = distinct !{!47, !16}
!48 = distinct !{!48, !16}
!49 = distinct !{!49, i1 true, !"_ZL9make_unspii"}
!50 = distinct !{!50, !49, !"_ZL9make_unspii: argument 0"}
!51 = distinct !{!51, i1 true, !"_ZL11ico_dot_arci"}
!52 = distinct !{!52, !51, !"_ZL11ico_dot_arci: argument 0"}
!53 = distinct !{!53, !16}
!54 = distinct !{!54, !16}
!55 = distinct !{!55, !16}
!56 = distinct !{!56, !16}
!57 = distinct !{!57, !16}
!58 = distinct !{!58, !16}
!59 = distinct !{!59, !16}
!60 = distinct !{!60, !16}
!61 = distinct !{!61, i1 true, !"_ZL11ico_dot_dodi"}
!62 = distinct !{!62, !61, !"_ZL11ico_dot_dodi: argument 0"}
!63 = distinct !{!63, !16}
!64 = distinct !{!64, !16}
!65 = distinct !{!65, !16}
!66 = distinct !{!66, !16}
!67 = distinct !{!67, !16}
!68 = distinct !{!68, !16}
!69 = distinct !{!69, !16}
!70 = distinct !{!70, !16}
!71 = distinct !{!71, !16}
!72 = distinct !{!72, !16}
!73 = distinct !{!73, !16}
!74 = distinct !{!74, !16}
!75 = distinct !{!75, !20}
!76 = distinct !{!76, !16}
!77 = distinct !{!77, !16}
!78 = distinct !{!78, !16}
!79 = distinct !{!79, !16}
!80 = !{!52, !50}
!81 = !{!50}
!82 = !{!62, !50}
!83 = distinct !{!83, !16}
!84 = distinct !{!84, !20}
!85 = distinct !{!85, !16}
!86 = distinct !{!86, !16, !113, !114}
!87 = distinct !{!87, !16, !113, !114}
!88 = distinct !{!88, !16, !114, !113}
!89 = distinct !{!89, !16}
!90 = distinct !{!90, i1 false, !"LVerDomain"}
!91 = distinct !{!91, !90}
!92 = distinct !{!92, !90}
!93 = distinct !{!93, !16, !113, !114}
!94 = distinct !{!94, !16, !113, !114}
!95 = distinct !{!95, !16, !113}
!96 = distinct !{!96, !16}
!97 = distinct !{!97, !20}
!98 = distinct !{!98, !16}
!99 = distinct !{null, ptr @_ZN3gmx30AnalysisNeighborhoodPairSearchD2Ev, null, null, null}
!100 = distinct !{!100, !16}
!101 = distinct !{null, ptr @_ZN3gmx26AnalysisNeighborhoodSearchD2Ev, null, null, null}
!102 = !{!10, !10, i64 0}
!103 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!104 = !{!103, !103, i64 0}
!105 = !{!"p1 int", !9, i64 0}
!106 = !{!"_ZTSN3gmx29AnalysisNeighborhoodPositionsE", !6, i64 0, !6, i64 4, !10, i64 8, !105, i64 16, !105, i64 24}
!107 = !{!106, !6, i64 4}
!108 = !{!106, !10, i64 8}
!109 = !{!106, !6, i64 0}
!110 = !{!106, !105, i64 24}
!111 = !{!"_ZTSN3gmx24AnalysisNeighborhoodPairE", !6, i64 0, !6, i64 4, !17, i64 8, !5, i64 12}
!112 = !{!111, !6, i64 0}
!113 = !{!"llvm.loop.isvectorized", i32 1}
!114 = !{!"llvm.loop.unroll.runtime.disable"}
!115 = !{!"branch_weights", i32 8, i32 24}
!116 = !{!111, !17, i64 8}
!117 = !{!91}
!118 = !{!92}
!119 = !{!"branch_weights", i32 8, i32 8}
!120 = distinct !{null, null, null}
!121 = distinct !{null, null, null}
!122 = distinct !{null}
end_hunk_1
