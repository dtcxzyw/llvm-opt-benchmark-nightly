Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_xpm2ps?download=true
inline.NumInlined: 1528
inline.NumDeleted: 598
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZNSt6vectorIfSaIfEE17_M_default_appendEm:bb.a
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !95
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !22
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !103
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.106) #27
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #31 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store float 0.000000e+00, ptr %i.y, align 4, !tbaa !22
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !22
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !95
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #28
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36: ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !81
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !103
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !95
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #16

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #18

; Function Attrs: noreturn
declare void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL12tick_spacingiPffcS_S_(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, float noundef %2, i8 noundef signext range(i8 88, 90) %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef nonnull writeonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !22
  %i.c = load float, ptr %1, align 4, !tbaa !22   ; 2 uses
  %i.d = fneg float %i.c
  %i.e = tail call float @llvm.fmuladd.f32(float %i.b, float 1.000000e+01, float %i.d) ; 2 uses
  %i.f = tail call i32 @llvm.smin.i32(i32 %0, i32 11) ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr [4 x i8], ptr %1, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -4       ; 2 uses
  %i.j = load float, ptr %i.i, align 4, !tbaa !22
  %i.k = fsub float %i.j, %i.c                    ; 2 uses
  %i.l = fcmp olt float %i.e, %i.k
  %.sroa.speculated72 = select i1 %i.l, float %i.k, float %i.e
  %i.m = tail call noundef float @logf(float noundef %.sroa.speculated72) #26
  %i.n = fpext float %i.m to double
  %i.o = fdiv double %i.n, f0x40026BB1BBB55516
  %i.p = tail call double @llvm.ceil.f64(double %i.o)
  %i.q = fadd double %i.p, -1.000000e+00
  %i.r = fptosi double %i.q to i32                ; 6 uses
  %i.s = add nsw i32 %i.r, 2                      ; 2 uses
  %i.t = icmp sgt i32 %0, 0
  %i.u = fpext float %2 to double
  br i1 %i.t, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  %i.v = add nsw i32 %i.r, -2
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %.split.us.us
  %.04386.us = phi i32 [ %i.am, %.split.us.us ], [ %i.s, %.preheader.us.preheader ] ; 3 uses
  %i.w = sitofp i32 %.04386.us to float
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.preheader.us
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %._crit_edge.us.us ], [ 0, %.preheader.us ] ; 4 uses
  %i.x = tail call noundef float @powf(float noundef 1.000000e+01, float noundef %i.w) #26
  %i.y = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL12tick_spacingiPffcS_S_.major_fact, i64 %indvars.iv102
  %i.z = load float, ptr %i.y, align 4, !tbaa !22
  %i.aa = fmul float %i.x, %i.z                   ; 2 uses
  %i.ab = fpext float %i.aa to double
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph.us.us ] ; 2 uses
  %.04576.us.us = phi i32 [ %spec.select.us.us, %bb.b ], [ 0, %.lr.ph.us.us ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !22
  %i.ae = fpext float %i.ad to double
  %i.af = tail call noundef zeroext i1 @_Z8bRmod_fddddb(double noundef %i.ae, double noundef %i.u, double noundef %i.ab, i1 noundef zeroext false)
  %i.ag = zext i1 %i.af to i32
  %spec.select.us.us = add nuw nsw i32 %.04576.us.us, %i.ag ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !258

._crit_edge.us.us:                                ; preds = %bb.b
  %i.ah = icmp sge i32 %spec.select.us.us, %i.f
  %i.ai = icmp samesign ult i32 %spec.select.us.us, 5
  %i.aj = or i1 %i.ah, %i.ai                      ; 3 uses
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1
  %i.ak = icmp samesign ult i64 %indvars.iv102, 3
  %i.al = select i1 %i.ak, i1 %i.aj, i1 false
  br i1 %i.al, label %.lr.ph.us.us, label %.split.us.us, !llvm.loop !259

.split.us.us:                                     ; preds = %._crit_edge.us.us
  %i.am = add nsw i32 %.04386.us, -1
  %i.an = icmp sgt i32 %.04386.us, %i.v
  %i.ao = select i1 %i.an, i1 %i.aj, i1 false
  br i1 %i.ao, label %.preheader.us, label %.split89.us, !llvm.loop !260

.preheader:                                       ; preds = %bb.a
  %i.ap = sitofp i32 %i.s to float
  %i.aq = tail call noundef float @powf(float noundef 1.000000e+01, float noundef %i.ap) #26 ; 0 uses
  %i.ar = add nsw i32 %i.r, 1
  %i.as = sitofp i32 %i.ar to float
  %i.at = tail call noundef float @powf(float noundef 1.000000e+01, float noundef %i.as) #26 ; 0 uses
  %i.au = sitofp i32 %i.r to float
  %i.av = tail call noundef float @powf(float noundef 1.000000e+01, float noundef %i.au) #26 ; 0 uses
  %i.aw = add nsw i32 %i.r, -1
  %i.ax = sitofp i32 %i.aw to float
  %i.ay = tail call noundef float @powf(float noundef 1.000000e+01, float noundef %i.ax) #26 ; 0 uses
  %i.az = add nsw i32 %i.r, -2
  %i.ba = sitofp i32 %i.az to float
  %i.bb = tail call noundef float @powf(float noundef 1.000000e+01, float noundef %i.ba) #26 ; 0 uses
  br label %.split89.us.thread

.split89.us:                                      ; preds = %.split.us.us
  %i.bc = and i64 %indvars.iv102, 4294967295      ; 2 uses
  br i1 %i.aj, label %.split89.us.thread, label %.split89.us._crit_edge

.split89.us._crit_edge:                           ; preds = %.split89.us
  %.pre = zext nneg i8 %3 to i32
  br label %bb.c

.split89.us.thread:                               ; preds = %.preheader, %.split89.us
  %.us-phi91110 = phi i64 [ %i.bc, %.split89.us ], [ 3, %.preheader ]
  %i.bd = load float, ptr %i.a, align 4, !tbaa !22
  %i.be = load float, ptr %1, align 4, !tbaa !22  ; 2 uses
  %i.bf = fneg float %i.be
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bd, float 1.000000e+01, float %i.bf) ; 2 uses
  %i.bh = load float, ptr %i.i, align 4, !tbaa !22
  %i.bi = fsub float %i.bh, %i.be                 ; 2 uses
  %i.bj = fcmp olt float %i.bg, %i.bi
  %.sroa.speculated58 = select i1 %i.bj, float %i.bi, float %i.bg ; 2 uses
  %i.bk = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.bl = zext nneg i8 %3 to i32                  ; 2 uses
  %i.bm = fpext float %.sroa.speculated58 to double
  %i.bn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bk, ptr noundef nonnull @.str.182, i32 noundef %i.bl, double noundef %i.bm) #29 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.split89.us._crit_edge, %.split89.us.thread
  %.us-phi91109 = phi i64 [ %i.bc, %.split89.us._crit_edge ], [ %.us-phi91110, %.split89.us.thread ]
  %.pre-phi = phi i32 [ %.pre, %.split89.us._crit_edge ], [ %i.bl, %.split89.us.thread ]
  %.2 = phi float [ %i.aa, %.split89.us._crit_edge ], [ %.sroa.speculated58, %.split89.us.thread ] ; 2 uses
  store float %.2, ptr %4, align 4, !tbaa !22
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL12tick_spacingiPffcS_S_.minor_fact, i64 %.us-phi91109
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !22
  %i.bq = fdiv float %.2, %i.bp                   ; 2 uses
  store float %i.bq, ptr %5, align 4, !tbaa !22
  %i.br = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.bs = load float, ptr %4, align 4, !tbaa !22
  %i.bt = fpext float %i.bs to double
  %i.bu = fpext float %i.bq to double
  %i.bv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.br, ptr noundef nonnull @.str.183, i32 noundef %.pre-phi, double noundef %i.bt, double noundef %i.bu) #29 ; 0 uses
  ret void
}

declare void @_Z7ps_openRKNSt10filesystem7__cxx114pathEffff(ptr dead_on_unwind writable sret(%struct.t_psdata) align 8, ptr noundef nonnull align 8 dereferenceable(40), float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @_Z12ps_linewidthP8t_psdatai(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_Z15ps_init_rgb_boxP8t_psdataff(ptr noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @_Z16ps_init_rgb_nboxP8t_psdataff(ptr noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @_Z12ps_translateP8t_psdataff(ptr noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @_Z10ps_commentP8t_psdataPKc(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z6ps_rgbP8t_psdataPK5t_rgb(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z10ps_strfontP8t_psdataPcf(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare void @_Z8ps_ctextP8t_psdataffRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef, float noundef, float noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #3

declare void @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #3

declare void @_Z9ps_movetoP8t_psdataff(ptr noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @_Z11ps_rgb_nboxP8t_psdataP5t_rgbf(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare void @_Z10ps_moverelP8t_psdataff(ptr noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL14leg_continuousP8t_psdatafffRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfPcN3gmx8ArrayRefIK9t_mappingEEi(ptr noundef nonnull %0, float noundef %1, float noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, float noundef %4, ptr noundef nonnull %5, ptr %6, ptr %7, i32 noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %7 to i64
  %i.b = ptrtoint ptr %6 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 6
  %i.e = sext i32 %8 to i64                       ; 2 uses
  %i.f = sub nsw i64 %i.d, %i.e                   ; 3 uses
  %i.g = fmul float %4, 8.000000e+00              ; 2 uses
  %i.h = fcmp olt float %2, %i.g
  %spec.select = select i1 %i.h, float %i.g, float %2
  %i.i = sitofp i64 %i.f to float                 ; 3 uses
  %i.j = fdiv float %spec.select, %i.i            ; 2 uses
  %i.k = fcmp ogt float %i.j, %4
  %.057 = select i1 %i.k, float %4, float %i.j    ; 5 uses
  %i.l = icmp eq ptr %6, %7
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.189, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL14leg_continuousP8t_psdatafffRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfPcN3gmx8ArrayRefIK9t_mappingEEiENK3$_0clEv", ptr noundef nonnull @.str.95, i32 noundef 282) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = fpext float %1 to double
  %i.n = fmul float %.057, %i.i
  %i.o = fpext float %i.n to double
  %i.p = fmul double %i.o, 5.000000e-01
  %i.q = fsub double %i.m, %i.p
  %i.r = fptrunc double %i.q to float             ; 5 uses
  %invariant.gep = getelementptr [64 x i8], ptr %6, i64 %i.e
  %i.s = icmp sgt i64 %i.f, 0
  %i.t = fadd float %4, 2.000000e+00              ; 3 uses
  br i1 %i.s, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  tail call void @_Z10ps_strfontP8t_psdataPcf(ptr noundef nonnull %0, ptr noundef nonnull %5, float noundef %4)
  tail call void @_Z6ps_rgbP8t_psdataPK5t_rgb(ptr noundef nonnull %0, ptr noundef nonnull @_ZL5black)
  %i.u = tail call float @llvm.fmuladd.f32(float %i.i, float %.057, float %i.r) ; 2 uses
  tail call void @_Z6ps_boxP8t_psdataffff(ptr noundef nonnull %0, float noundef %i.r, float noundef 2.000000e+00, float noundef %i.u, float noundef %i.t)
  %i.v = fadd float %i.t, 6.000000e+00            ; 3 uses
  %i.w = fmul float %.057, 5.000000e-01           ; 2 uses
  %i.x = fadd float %i.w, %i.r
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  tail call void @_Z8ps_ctextP8t_psdataffRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull %0, float noundef %i.x, float noundef %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i32 noundef 0)
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !88
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %bb.d

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.068 = phi i64 [ %i.af, %.lr.ph ], [ 0, %bb.c ] ; 3 uses
  %gep = getelementptr [64 x i8], ptr %invariant.gep, i64 %.068
  %i.ac = getelementptr inbounds nuw i8, ptr %gep, i64 40
  tail call void @_Z6ps_rgbP8t_psdataPK5t_rgb(ptr noundef nonnull %0, ptr noundef nonnull %i.ac)
  %i.ad = uitofp nneg i64 %.068 to float
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ad, float %.057, float %i.r)
  %i.af = add nuw nsw i64 %.068, 1                ; 3 uses
  %i.ag = uitofp nneg i64 %i.af to float
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ag, float %.057, float %i.r)
  tail call void @_Z10ps_fillboxP8t_psdataffff(ptr noundef nonnull %0, float noundef %i.ae, float noundef 2.000000e+00, float noundef %i.ah, float noundef %i.t)
  %exitcond.not = icmp eq i64 %i.af, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !261

bb.d:                                             ; preds = %._crit_edge
  tail call void @_Z8ps_ctextP8t_psdataffRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull %0, float noundef %1, float noundef %i.v, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.ai = fsub float %i.u, %i.w
  %i.aj = getelementptr i8, ptr %6, i64 %i.c
  %i.ak = getelementptr i8, ptr %i.aj, i64 -56
  tail call void @_Z8ps_ctextP8t_psdataffRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull %0, float noundef %i.ai, float noundef %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i32 noundef 0)
  ret void
}

declare void @_Z8ps_closeP8t_psdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN14WarningHandlerC2Ebi(ptr noundef nonnull align 8 dereferenceable(64) %0, i1 noundef zeroext %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.gmx::InconsistentInputError", align 8 ; 4 uses
  %4 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %5 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = zext i1 %1 to i8
  store i8 %i.a, ptr %0, align 8, !tbaa !272
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 %2, ptr %i.c, align 8, !tbaa !273
  tail call void @llvm.masked.store.v5i32.p0(<5 x i32> <i32 0, i32 0, i32 0, i32 poison, i32 -1>, ptr align 4 %i.b, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>), !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @_ZNSt10filesystem7__cxx114pathC2IA8_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 1 dereferenceable(8) @.str.179, i8 noundef zeroext 2)
  %i.e = load i32, ptr %i.c, align 8, !tbaa !273
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 24) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull @.str.180)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %bb.d unwind label %.thread15

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx22InconsistentInputErrorE, i64 16), ptr %3, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %5, align 8, !tbaa !105
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN14WarningHandlerC2Ebi, ptr %i.h, align 8, !tbaa !25
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.181, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !25
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 77, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !13
  invoke void @_ZN3gmxlsINS_22InconsistentInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InconsistentInputError") align 8 %i.g, ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr %i.g, ptr nonnull @_ZTIN3gmx22InconsistentInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #27
          to label %bb.j unwind label %bb.f

.thread:                                          ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread15:                                        ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #26
  br label %.sink.split

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #26
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
end_hunk_0
