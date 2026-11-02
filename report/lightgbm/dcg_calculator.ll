Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/dcg_calculator?download=true
inline.NumInlined: 533
inline.NumDeleted: 218
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNSt6vectorIdSaIdEE17_M_default_appendEm:bb.a
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !26
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !27
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #24 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !26
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !26
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #22
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36: ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !16
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !27
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !17
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZN8LightGBM13DCGCalculator12CalMaxDCGAtKEiPKfi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN8LightGBM13DCGCalculator11label_gain_E, i64 8), align 8, !tbaa !27 ; 2 uses
  %i.b = load ptr, ptr @_ZN8LightGBM13DCGCalculator11label_gain_E, align 8, !tbaa !16 ; 2 uses
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.g, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #23
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.a, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, label %.noexc27

.noexc27:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.h = ashr exact i64 %i.e, 1                   ; 2 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #24 ; 3 uses
  %i.j = and i64 %i.h, -4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.i, i8 0, i64 %i.j, i1 false), !tbaa !21
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.f
  %i.l = ptrtoint ptr %i.k to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %.noexc27, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.l, %.noexc27 ]
  %.sroa.028.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.i, %.noexc27 ] ; 9 uses
  %i.m = icmp sgt i32 %2, 0
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.n = icmp eq i32 %2, 1
  br i1 %i.n, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod77 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod77)
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.p = load float, ptr %i.o, align 4, !tbaa !32
  %i.q = fptosi float %i.p to i32
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.sroa.028.0, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !21
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.v = load ptr, ptr @_ZN8LightGBM13DCGCalculator11label_gain_E, align 8, !tbaa !16 ; 2 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %0, i32 %2) ; 2 uses
  %i.w = icmp sgt i32 %spec.select, 0
  br i1 %i.w, label %.preheader.lr.ph, label %.critedge._crit_edge

.preheader.lr.ph:                                 ; preds = %._crit_edge
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN8LightGBM13DCGCalculator11label_gain_E, i64 8), align 8, !tbaa !27
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = lshr exact i64 %i.aa, 3
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = load ptr, ptr @_ZN8LightGBM13DCGCalculator9discount_E, align 8
  %wide.trip.count48 = zext nneg i32 %spec.select to i64
  br label %.preheader

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ag = load float, ptr %i.af, align 4, !tbaa !32
  %i.ah = fptosi float %i.ag to i32
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.028.0, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !21
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !21
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !32
  %i.ap = fptosi float %i.ao to i32
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.sroa.028.0, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !21
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !21
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !53

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge.thread
  %indvars.iv45.a = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next46.a, %.critedge.thread ] ; 2 uses
  %.02138 = phi i32 [ %i.ad, %.preheader.lr.ph ], [ %.133, %.critedge.thread ] ; 3 uses
  %.02437 = phi double [ 0.000000e+00, %.preheader.lr.ph ], [ %i.bf, %.critedge.thread ] ; 2 uses
  %i.au = icmp sgt i32 %.02138, 0
  br i1 %i.au, label %.lr.ph36, label %.critedge

.lr.ph36:                                         ; preds = %.preheader, %bb.b
  %.135 = phi i32 [ %4, %bb.b ], [ %.02138, %.preheader ] ; 4 uses
  %3 = zext nneg i32 %.135 to i64                 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.sroa.028.0, i64 %3
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !21 ; 2 uses
  %i.ax = icmp slt i32 %i.aw, 1
  br i1 %i.ax, label %bb.b, label %.critedge.thread

bb.b:                                             ; preds = %.lr.ph36
  %4 = add nsw i32 %.135, -1
  %i.ay = icmp sgt i32 %.135, 1
  br i1 %i.ay, label %.lr.ph36, label %.critedge..critedge.thread_crit_edge, !llvm.loop !54

.critedge:                                        ; preds = %.preheader
  %i.az = icmp slt i32 %.02138, 0
  br i1 %i.az, label %.critedge._crit_edge, label %.critedge..critedge.thread_crit_edge

.critedge..critedge.thread_crit_edge:             ; preds = %bb.b, %.critedge
  %.pre = load i32, ptr %.sroa.028.0, align 4, !tbaa !21
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.lr.ph36, %.critedge..critedge.thread_crit_edge
  %.pre-phi = phi i64 [ 0, %.critedge..critedge.thread_crit_edge ], [ %3, %.lr.ph36 ] ; 2 uses
  %i.ba = phi i32 [ %.pre, %.critedge..critedge.thread_crit_edge ], [ %i.aw, %.lr.ph36 ]
  %.133 = phi i32 [ 0, %.critedge..critedge.thread_crit_edge ], [ %.135, %.lr.ph36 ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv45.a
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !26
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.pre-phi
  %i.be = load double, ptr %i.bd, align 8, !tbaa !26
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.be, double %.02437) ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.028.0, i64 %.pre-phi
  %i.bh = add nsw i32 %i.ba, -1
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !21
  %indvars.iv.next46.a = add nuw nsw i64 %indvars.iv45.a, 1 ; 2 uses
  %exitcond49.not = icmp eq i64 %indvars.iv.next46.a, %wide.trip.count48
  br i1 %exitcond49.not, label %.critedge._crit_edge.thread, label %.preheader, !llvm.loop !55

.critedge._crit_edge:                             ; preds = %.critedge, %._crit_edge
  %.024.lcssa = phi double [ 0.000000e+00, %._crit_edge ], [ %.02437, %.critedge ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.028.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.critedge._crit_edge.thread

.critedge._crit_edge.thread:                      ; preds = %.critedge.thread, %.critedge._crit_edge
  %.024.lcssa57 = phi double [ %.024.lcssa, %.critedge._crit_edge ], [ %i.bf, %.critedge.thread ]
  %i.bi = ptrtoint ptr %.sroa.028.0 to i64
  %i.bj = sub i64 %.sroa.11.0, %i.bi
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.028.0, i64 noundef %i.bj) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.critedge._crit_edge, %.critedge._crit_edge.thread
  %.024.lcssa58 = phi double [ %.024.lcssa, %.critedge._crit_edge ], [ %.024.lcssa57, %.critedge._crit_edge.thread ]
  ret double %.024.lcssa58
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #14

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM13DCGCalculator9CalMaxDCGERKSt6vectorIiSaIiEEPKfiPS1_IdSaIdEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN8LightGBM13DCGCalculator11label_gain_E, i64 8), align 8, !tbaa !27 ; 2 uses
  %i.b = load ptr, ptr @_ZN8LightGBM13DCGCalculator11label_gain_E, align 8, !tbaa !16 ; 2 uses
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.g, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #23
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.a, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, label %.noexc39

.noexc39:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.h = ashr exact i64 %i.e, 1                   ; 2 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #24 ; 3 uses
  %i.j = and i64 %i.h, -4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.i, i8 0, i64 %i.j, i1 false), !tbaa !21
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.f
  %i.l = ptrtoint ptr %i.k to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %.noexc39, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.l, %.noexc39 ]
  %.sroa.040.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.i, %.noexc39 ] ; 9 uses
  %i.m = icmp sgt i32 %2, 0
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.n = icmp eq i32 %2, 1
  br i1 %i.n, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod90 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod90)
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.p = load float, ptr %i.o, align 4, !tbaa !32
  %i.q = fptosi float %i.p to i32
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.sroa.040.0, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !21
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.v = load ptr, ptr @_ZN8LightGBM13DCGCalculator11label_gain_E, align 8, !tbaa !16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !23   ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !22     ; 3 uses
  %.not = icmp eq ptr %i.x, %i.y
  br i1 %.not, label %._crit_edge63, label %.lr.ph62

.lr.ph62:                                         ; preds = %._crit_edge
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN8LightGBM13DCGCalculator11label_gain_E, i64 8), align 8, !tbaa !27
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.v to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = lshr exact i64 %i.ag, 3
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = add nsw i32 %i.ai, -1
  %i.ak = load ptr, ptr %3, align 8, !tbaa !16
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.am = load float, ptr %i.al, align 4, !tbaa !32
  %i.an = fptosi float %i.am to i32
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.sroa.040.0, i64 %i.ao ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !21
  %i.ar = add nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !21
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !32
  %i.av = fptosi float %i.au to i32
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.sroa.040.0, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !21
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !21
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !56

._crit_edge63:                                    ; preds = %.critedge._crit_edge, %._crit_edge
  %.not.i.i.i = icmp eq ptr %.sroa.040.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge63
  %i.ba = ptrtoint ptr %.sroa.040.0 to i64
  %i.bb = sub i64 %.sroa.11.0, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.040.0, i64 noundef %i.bb) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge63, %bb.b
  ret void

bb.c:                                             ; preds = %.lr.ph62, %.critedge._crit_edge
  %.03160 = phi i64 [ 0, %.lr.ph62 ], [ %i.bw, %.critedge._crit_edge ] ; 3 uses
  %.03259 = phi i32 [ %i.aj, %.lr.ph62 ], [ %.3, %.critedge._crit_edge ] ; 2 uses
  %.03358 = phi i32 [ 0, %.lr.ph62 ], [ %spec.select, %.critedge._crit_edge ] ; 2 uses
  %.03457 = phi double [ 0.000000e+00, %.lr.ph62 ], [ %.135.lcssa, %.critedge._crit_edge ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.03160
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !21
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.bd, i32 %2) ; 3 uses
  %i.be = icmp slt i32 %.03358, %spec.select
  br i1 %i.be, label %.preheader.lr.ph, label %.critedge._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.bf = load ptr, ptr @_ZN8LightGBM13DCGCalculator9discount_E, align 8
  %i.bg = sext i32 %.03358 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge.thread
  %indvars.iv66.a = phi i64 [ %i.bg, %.preheader.lr.ph ], [ %indvars.iv.next67.a, %.critedge.thread ] ; 2 uses
  %.150 = phi i32 [ %.03259, %.preheader.lr.ph ], [ %.245, %.critedge.thread ] ; 4 uses
  %.13549 = phi double [ %.03457, %.preheader.lr.ph ], [ %i.bs, %.critedge.thread ] ; 2 uses
  %i.bh = icmp sgt i32 %.150, 0
  br i1 %i.bh, label %.lr.ph48, label %.critedge

.lr.ph48:                                         ; preds = %.preheader, %bb.d
  %.247 = phi i32 [ %5, %bb.d ], [ %.150, %.preheader ] ; 4 uses
  %4 = zext nneg i32 %.247 to i64                 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.040.0, i64 %4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !21 ; 2 uses
  %i.bk = icmp slt i32 %i.bj, 1
  br i1 %i.bk, label %bb.d, label %.critedge.thread

bb.d:                                             ; preds = %.lr.ph48
  %5 = add nsw i32 %.247, -1
  %i.bl = icmp sgt i32 %.247, 1
  br i1 %i.bl, label %.lr.ph48, label %.critedge..critedge.thread_crit_edge, !llvm.loop !57

.critedge:                                        ; preds = %.preheader
  %i.bm = icmp slt i32 %.150, 0
  br i1 %i.bm, label %.critedge._crit_edge, label %.critedge..critedge.thread_crit_edge

.critedge..critedge.thread_crit_edge:             ; preds = %bb.d, %.critedge
  %.pre = load i32, ptr %.sroa.040.0, align 4, !tbaa !21
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.lr.ph48, %.critedge..critedge.thread_crit_edge
  %.pre-phi = phi i64 [ 0, %.critedge..critedge.thread_crit_edge ], [ %4, %.lr.ph48 ] ; 2 uses
  %i.bn = phi i32 [ %.pre, %.critedge..critedge.thread_crit_edge ], [ %i.bj, %.lr.ph48 ]
  %.245 = phi i32 [ 0, %.critedge..critedge.thread_crit_edge ], [ %.247, %.lr.ph48 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv66.a
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !26
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.pre-phi
  %i.br = load double, ptr %i.bq, align 8, !tbaa !26
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.br, double %.13549) ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.040.0, i64 %.pre-phi
  %i.bu = add nsw i32 %i.bn, -1
  store i32 %i.bu, ptr %i.bt, align 4, !tbaa !21
  %indvars.iv.next67.a = add nsw i64 %indvars.iv66.a, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next67.a to i32
  %exitcond69.not = icmp eq i32 %spec.select, %lftr.wideiv
  br i1 %exitcond69.not, label %.critedge._crit_edge, label %.preheader, !llvm.loop !58

.critedge._crit_edge:                             ; preds = %.critedge.thread, %.critedge, %bb.c
  %.135.lcssa = phi double [ %.03457, %bb.c ], [ %.13549, %.critedge ], [ %i.bs, %.critedge.thread ] ; 2 uses
  %.3 = phi i32 [ %.03259, %bb.c ], [ %.150, %.critedge ], [ %.245, %.critedge.thread ]
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.03160
  store double %.135.lcssa, ptr %i.bv, align 8, !tbaa !26
  %i.bw = add nuw i64 %.03160, 1                  ; 2 uses
  %exitcond70.not = icmp eq i64 %i.bw, %i.ac
  br i1 %exitcond70.not, label %._crit_edge63, label %bb.c, !llvm.loop !59
}

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM13DCGCalculator6CalDCGERKSt6vectorIiSaIiEEPKfPKdiPS1_IdSaIdEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 4 uses
  %i.b = icmp slt i32 %3, 0
  br i1 %i.b, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #23
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %3, 0
  br i1 %.not.i.i.i.i, label %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN8LightGBM13DCGCalculator6CalDCGERKS5_PKfPKdiPS3_IdSaIdEEE3$_0EvT_SJ_T0_.exit", label %.noexc41

.noexc41:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.c = shl nuw nsw i64 %i.a, 2
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #24 ; 15 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.a ; 2 uses
  store i32 0, ptr %i.d, align 4, !tbaa !21
  %i.f = getelementptr i8, ptr %i.d, i64 4        ; 3 uses
  %i.g = add nsw i64 %i.a, -1                     ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.lr.ph.preheader, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc41
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.g, 2   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.f, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i.i.i.i.i.i.i
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc41
  %.0.i.i.i.i.i.ph = phi ptr [ %i.f, %.noexc41 ], [ %i.i, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 6 uses
  %wide.trip.count = zext nneg i32 %3 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %3, 8
  br i1 %min.iters.check, label %.lr.ph.preheader89, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store <4 x i32> %vec.ind, ptr %i.j, align 4, !tbaa !21
  store <4 x i32> %step.add, ptr %i.k, align 4, !tbaa !21
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader89

.lr.ph.preheader89:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %i.m = icmp eq ptr %i.d, %.0.i.i.i.i.i.ph
  br i1 %i.m, label %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN8LightGBM13DCGCalculator6CalDCGERKS5_PKfPKdiPS3_IdSaIdEEE3$_0EvT_SJ_T0_.exit", label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.n = ptrtoint ptr %.0.i.i.i.i.i.ph to i64     ; 2 uses
  %i.o = ptrtoint ptr %i.d to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = add nsw i64 %i.q, 1
  %i.s = sdiv i64 %i.r, 2                         ; 4 uses
  %i.t = icmp sgt i64 %i.q, 0
  br i1 %i.t, label %.lr.ph.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %select.unfold.i.i.i.i
  %.010.i.i.i.i = phi i64 [ %i.y, %select.unfold.i.i.i.i ], [ %i.s, %bb.b ] ; 4 uses
  %i.u = shl nuw nsw i64 %.010.i.i.i.i, 2
  %i.v = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.u, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #27 ; 2 uses
  %.not.i.i.i.i42 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i42, label %select.unfold.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit.i.i

select.unfold.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i
  %i.w = icmp eq i64 %.010.i.i.i.i, 1
  %i.x = add nuw nsw i64 %.010.i.i.i.i, 1
  %i.y = lshr i64 %i.x, 1
  br i1 %i.w, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !61

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit.i.i: ; preds = %select.unfold.i.i.i.i, %.lr.ph.i.i.i.i, %bb.b
  %.sroa.5.0.i.i = phi i64 [ 0, %bb.b ], [ %.010.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %select.unfold.i.i.i.i ] ; 4 uses
  %.sroa.12.0.i.i = phi ptr [ null, %bb.b ], [ %i.v, %.lr.ph.i.i.i.i ], [ null, %select.unfold.i.i.i.i ] ; 7 uses
  %i.z = icmp eq i64 %i.s, %.sroa.5.0.i.i
  br i1 %i.z, label %bb.c, label %bb.d, !prof !33

bb.c:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit.i.i
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.s ; 4 uses
  tail call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZN8LightGBM13DCGCalculator6CalDCGERKS5_PKfPKdiPS3_IdSaIdEEE3$_0EEEvT_SM_T0_T1_"(ptr nonnull %i.d, ptr nonnull %i.aa, ptr noundef %.sroa.12.0.i.i, ptr %2)
  tail call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZN8LightGBM13DCGCalculator6CalDCGERKS5_PKfPKdiPS3_IdSaIdEEE3$_0EEEvT_SM_T0_T1_"(ptr nonnull %i.aa, ptr %.0.i.i.i.i.i.ph, ptr noundef %.sroa.12.0.i.i, ptr %2)
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.n, %i.ab
  %i.ad = ashr exact i64 %i.ac, 2
  %i.ae = ptrtoint ptr %2 to i64
  tail call fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIZN8LightGBM13DCGCalculator6CalDCGERKS5_PKfPKdiPS3_IdSaIdEEE3$_0EEEvT_SM_SM_T0_SN_T1_T2_"(ptr nonnull %i.d, ptr nonnull %i.aa, ptr %.0.i.i.i.i.i.ph, i64 noundef %i.s, i64 noundef %i.ad, ptr noundef %.sroa.12.0.i.i, i64 %i.ae)
  br label %bb.g

bb.d:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit.i.i
  %i.af = icmp eq ptr %.sroa.12.0.i.i, null
  br i1 %i.af, label %bb.e, label %bb.f, !prof !65

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @"_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8LightGBM13DCGCalculator6CalDCGERKS5_PKfPKdiPS3_IdSaIdEEE3$_0EEEvT_SM_T0_"(ptr nonnull %i.d, ptr %.0.i.i.i.i.i.ph, ptr %2)
          to label %bb.g unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit44

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @"_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIZN8LightGBM13DCGCalculator6CalDCGERKS5_PKfPKdiPS3_IdSaIdEEE3$_0EEEvT_SM_T0_T1_T2_"(ptr nonnull %i.d, ptr %.0.i.i.i.i.i.ph, ptr noundef nonnull %.sroa.12.0.i.i, i64 noundef %.sroa.5.0.i.i, ptr %2)
          to label %bb.g unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit44

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %i.ag = shl i64 %.sroa.5.0.i.i, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0.i.i, i64 noundef %i.ag) #25
  br label %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN8LightGBM13DCGCalculator6CalDCGERKS5_PKfPKdiPS3_IdSaIdEEE3$_0EvT_SJ_T0_.exit"

"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN8LightGBM13DCGCalculator6CalDCGERKS5_PKfPKdiPS3_IdSaIdEEE3$_0EvT_SJ_T0_.exit": ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %._crit_edge, %bb.g
  %.sroa.13.07988 = phi ptr [ %i.e, %bb.g ], [ %i.e, %._crit_edge ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.045.08187 = phi ptr [ %i.d, %bb.g ], [ %i.d, %._crit_edge ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !23 ; 2 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !22    ; 3 uses
  %.not62 = icmp eq ptr %i.ai, %i.aj
  br i1 %.not62, label %._crit_edge61, label %.lr.ph60

.lr.ph60:                                         ; preds = %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN8LightGBM13DCGCalculator6CalDCGERKS5_PKfPKdiPS3_IdSaIdEEE3$_0EvT_SJ_T0_.exit"
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 2
  %i.ao = load ptr, ptr @_ZN8LightGBM13DCGCalculator11label_gain_E, align 8 ; 3 uses
  %i.ap = load ptr, ptr @_ZN8LightGBM13DCGCalculator9discount_E, align 8 ; 3 uses
  %i.aq = load ptr, ptr %4, align 8, !tbaa !16
  br label %bb.i

.lr.ph:                                           ; preds = %.lr.ph.preheader89, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader89 ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.as = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !62

._crit_edge61:                                    ; preds = %._crit_edge56, %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN8LightGBM13DCGCalculator6CalDCGERKS5_PKfPKdiPS3_IdSaIdEEE3$_0EvT_SJ_T0_.exit"
  %.not.i.i.i = icmp eq ptr %.sroa.045.08187, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge61
  %i.at = ptrtoint ptr %.sroa.13.07988 to i64
  %i.au = ptrtoint ptr %.sroa.045.08187 to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.045.08187, i64 noundef %i.av) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge61, %bb.h
  ret void

bb.i:                                             ; preds = %.lr.ph60, %._crit_edge56
  %.03359 = phi i64 [ 0, %.lr.ph60 ], [ %i.bq, %._crit_edge56 ] ; 3 uses
  %.03458 = phi i32 [ 0, %.lr.ph60 ], [ %spec.select, %._crit_edge56 ] ; 2 uses
  %.03557 = phi double [ 0.000000e+00, %.lr.ph60 ], [ %.1.lcssa, %._crit_edge56 ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.03359
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !21
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.ax, i32 %3) ; 3 uses
  %i.ay = icmp slt i32 %.03458, %spec.select
  br i1 %i.ay, label %.lr.ph55.preheader, label %._crit_edge56

.lr.ph55.preheader:                               ; preds = %bb.i
  %i.az = sext i32 %.03458 to i64                 ; 6 uses
end_hunk_0
