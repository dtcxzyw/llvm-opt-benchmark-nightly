Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/rlof_localflow?download=true
inline.NumInlined: 1717
inline.NumDeleted: 364
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN2cv20perspectiveTransformERKNS_11_InputArrayERKNS_12_OutputArrayES2_

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !70     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !83
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN2cv6Point_IfEEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN2cv6Point_IfEEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 3                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !48
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !67
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #21
  unreachable

_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #23 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.v, i8 0, i64 %i.w, i1 false), !tbaa !48
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit
  %i.x = ptrtoaddr ptr %i.u to i64
  %i.y = add i64 %i.d, -8
  %i.z = sub i64 %i.y, %i.e                       ; 2 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 72
  %i.ac = sub i64 %i.e, %i.x
  %diff.check = icmp ugt i64 %i.ac, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader43, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.u, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.c, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ag ; 2 uses
  %next.gep40 = getelementptr i8, ptr %i.c, i64 %i.ag ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  %i.ah = getelementptr i8, ptr %next.gep40, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep40, align 4, !alias.scope !356, !noalias !353
  %wide.load41 = load <2 x i64>, ptr %i.ah, align 4, !alias.scope !356, !noalias !353
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !353, !noalias !356
  store <2 x i64> %wide.load41, ptr %i.ai, align 4, !alias.scope !353, !noalias !356
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !358

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i.preheader43

.lr.ph.i.i.i.preheader43:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.u, %.lr.ph.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader43, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader43 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader43 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  %i.ak = load i64, ptr %.0911.i.i.i, align 4, !alias.scope !356, !noalias !353
  store i64 %i.ak, ptr %.012.i.i.i, align 4, !alias.scope !353, !noalias !356
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.al, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !359

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !83
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ap) #22
  br label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37

_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !70
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %1
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !67
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ar, ptr %i.h, align 8, !tbaa !83
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv6Point_IfEEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

declare void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

declare noundef i32 @_ZNK2cv3Mat11checkVectorEiib(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZNK2cv12_OutputArray6createENS_5Size_IiEEiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24), i64, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) unnamed_addr #3

declare void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

declare void @_ZN2cv3Mat6createENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208), i64, i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #3

declare void @_ZNK2cv3Mat1tEv(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #20
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv7optflow27HorizontalCrossSegmentationD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv7optflow27HorizontalCrossSegmentationclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !187, !range !24, !noundef !25 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = shl nuw nsw i8 %i.b, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !184  ; 5 uses
  %i.g = add nsw i32 %i.f, -1
  %i.h = sdiv i32 %i.g, 2                         ; 6 uses
  %i.i = sext i32 %i.f to i64                     ; 3 uses
  %i.j = icmp slt i32 %i.f, 0
  br i1 %i.j, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #21
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %.noexc89

.noexc89:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.k = shl nuw nsw i64 %i.i, 2
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #23 ; 5 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.i ; 2 uses
  store i32 0, ptr %i.l, align 4, !tbaa !50
  %i.n = add nsw i64 %i.i, -1                     ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc89
  %i.p = getelementptr i8, ptr %i.l, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.n, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !50
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc89, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ %i.m, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.m, %.noexc89 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.0104.0 = phi ptr [ %i.l, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.l, %.noexc89 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 6 uses
  %i.q = load i32, ptr %1, align 4, !tbaa !176    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %invariant.op = shl nsw i32 %i.h, 1             ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !178  ; 2 uses
  %i.t = icmp slt i32 %i.q, %i.s
  br i1 %i.t, label %.preheader.lr.ph, label %._crit_edge128

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !183  ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = zext nneg i8 %i.d to i64
  %2 = select i1 %i.c, i64 3, i64 1
  %i.ad = sext i32 %i.h to i64                    ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0104.0, i64 %i.ad ; 2 uses
  %.not116 = icmp samesign ult i32 %i.f, 3
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ag = load i32, ptr %i.w, align 4, !tbaa !45  ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, %invariant.op
  br i1 %i.ah, label %.preheader.preheader, label %._crit_edge128

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %smax = tail call i32 @llvm.smax.i32(i32 %i.h, i32 1)
  %i.ai = add nuw nsw i32 %smax, 1
  %i.aj = sext i32 %i.q to i64
  %wide.trip.count139 = zext nneg i32 %i.ai to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge126
  %i.ak = phi i32 [ %i.s, %.preheader.preheader ], [ %i.av, %._crit_edge126 ]
  %i.al = phi i32 [ %i.ag, %.preheader.preheader ], [ %i.aw, %._crit_edge126 ] ; 2 uses
  %indvars.iv144 = phi i64 [ %i.aj, %.preheader.preheader ], [ %indvars.iv.next145, %._crit_edge126 ] ; 5 uses
  %i.am = icmp sgt i32 %i.al, %invariant.op
  br i1 %i.am, label %.lr.ph125, label %._crit_edge126

.lr.ph125:                                        ; preds = %.preheader
  %i.an = load ptr, ptr %i.x, align 8, !tbaa !188 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !99
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 128
  br label %bb.c

._crit_edge128:                                   ; preds = %._crit_edge126, %.preheader.lr.ph, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %.not.i.i.i = icmp eq ptr %.sroa.0104.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge128
  %i.as = ptrtoint ptr %.sroa.11.0 to i64
  %i.at = ptrtoint ptr %.sroa.0104.0 to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0104.0, i64 noundef %i.au) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge128, %bb.b
  ret void

._crit_edge126.loopexit:                          ; preds = %.loopexit
  %.pre = load i32, ptr %i.r, align 4, !tbaa !178
  br label %._crit_edge126

._crit_edge126:                                   ; preds = %._crit_edge126.loopexit, %.preheader
  %i.av = phi i32 [ %.pre, %._crit_edge126.loopexit ], [ %i.ak, %.preheader ] ; 2 uses
  %i.aw = phi i32 [ %i.gb, %._crit_edge126.loopexit ], [ %i.al, %.preheader ]
  %indvars.iv.next145 = add nsw i64 %indvars.iv144, 1 ; 2 uses
  %i.ax = sext i32 %i.av to i64
  %i.ay = icmp slt i64 %indvars.iv.next145, %i.ax
  br i1 %i.ay, label %.preheader, label %._crit_edge128, !llvm.loop !360

bb.c:                                             ; preds = %.lr.ph125, %.loopexit
  %indvars.iv141 = phi i64 [ %i.ad, %.lr.ph125 ], [ %indvars.iv.next142, %.loopexit ] ; 9 uses
  %indvars.iv130 = phi i32 [ 0, %.lr.ph125 ], [ %indvars.iv.next131, %.loopexit ] ; 2 uses
  %i.az = sext i32 %indvars.iv130 to i64          ; 3 uses
  %i.ba = load i32, ptr %i.ao, align 4, !tbaa !98
  %i.bb = icmp slt i32 %i.ba, 2
  %i.bc = load i64, ptr %i.ar, align 8
  %i.bd = mul i64 %i.bc, %indvars.iv144
  %.sink.idx.i = select i1 %i.bb, i64 0, i64 %i.bd
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sink.idx.i
  %i.be = getelementptr inbounds i8, ptr %.sink.i, i64 %indvars.iv141
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !41
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bh = load i32, ptr %i.y, align 4, !tbaa !98
  %i.bi = icmp slt i32 %i.bh, 2
  %i.bj = load ptr, ptr %i.z, align 8, !tbaa !99
  %i.bk = load i64, ptr %i.aa, align 8
  %i.bl = mul i64 %i.bk, %indvars.iv144
  %.sink.idx.i90 = select i1 %i.bi, i64 0, i64 %i.bl
  %.sink.i91 = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.sink.idx.i90 ; 6 uses
  %i.bm = getelementptr inbounds [3 x i8], ptr %.sink.i91, i64 %indvars.iv141 ; 3 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !361
  %i.bo = zext i8 %i.bn to i32                    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !363
  %i.br = zext i8 %i.bq to i32                    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !364
  %i.bu = zext i8 %i.bt to i32                    ; 2 uses
  %i.bv = load i8, ptr %i.a, align 4, !tbaa !187, !range !24, !noundef !25
  %i.bw = trunc nuw i8 %i.bv to i1                ; 2 uses
  %spec.select.v = select i1 %i.bw, i64 %indvars.iv141, i64 %indvars.iv144
  %spec.select112 = select i1 %i.bw, i64 %indvars.iv144, i64 %indvars.iv141
  %i.bx = load i32, ptr %i.e, align 8, !tbaa !184 ; 3 uses
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %i.bx to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.bx, 4
  br i1 %min.iters.check, label %.lr.ph.preheader158, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 4 uses
  %i.bz = add nsw i64 %n.vec, %i.az
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bo, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert153 = insertelement <4 x i32> poison, i32 %i.br, i64 0
  %broadcast.splat154 = shufflevector <4 x i32> %broadcast.splatinsert153, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert155 = insertelement <4 x i32> poison, i32 %i.bu, i64 0
  %broadcast.splat156 = shufflevector <4 x i32> %broadcast.splatinsert155, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ca = add i64 %index, %i.az                   ; 4 uses
  %i.cb = getelementptr inbounds [3 x i8], ptr %.sink.i91, i64 %i.ca ; 3 uses
  %i.cc = getelementptr [3 x i8], ptr %.sink.i91, i64 %i.ca ; 3 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 3
  %i.ce = getelementptr [3 x i8], ptr %.sink.i91, i64 %i.ca ; 3 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 6
  %i.cg = getelementptr [3 x i8], ptr %.sink.i91, i64 %i.ca ; 3 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 9
  %i.ci = load i8, ptr %i.cb, align 1, !tbaa !361
  %i.cj = load i8, ptr %i.cd, align 1, !tbaa !361
  %i.ck = load i8, ptr %i.cf, align 1, !tbaa !361
  %i.cl = load i8, ptr %i.ch, align 1, !tbaa !361
  %i.cm = insertelement <4 x i8> poison, i8 %i.ci, i64 0
  %i.cn = insertelement <4 x i8> %i.cm, i8 %i.cj, i64 1
  %i.co = insertelement <4 x i8> %i.cn, i8 %i.ck, i64 2
  %i.cp = insertelement <4 x i8> %i.co, i8 %i.cl, i64 3
  %i.cq = zext <4 x i8> %i.cp to <4 x i32>
  %i.cr = sub nsw <4 x i32> %i.cq, %broadcast.splat
  %i.cs = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.cr, i1 true)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.cu = getelementptr i8, ptr %i.cc, i64 4
  %i.cv = getelementptr i8, ptr %i.ce, i64 7
  %i.cw = getelementptr i8, ptr %i.cg, i64 10
  %i.cx = load i8, ptr %i.ct, align 1, !tbaa !363
  %i.cy = load i8, ptr %i.cu, align 1, !tbaa !363
  %i.cz = load i8, ptr %i.cv, align 1, !tbaa !363
  %i.da = load i8, ptr %i.cw, align 1, !tbaa !363
  %i.db = insertelement <4 x i8> poison, i8 %i.cx, i64 0
  %i.dc = insertelement <4 x i8> %i.db, i8 %i.cy, i64 1
  %i.dd = insertelement <4 x i8> %i.dc, i8 %i.cz, i64 2
  %i.de = insertelement <4 x i8> %i.dd, i8 %i.da, i64 3
  %i.df = zext <4 x i8> %i.de to <4 x i32>
  %i.dg = sub nsw <4 x i32> %i.df, %broadcast.splat154
  %i.dh = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.dg, i1 true)
  %i.di = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.dj = getelementptr i8, ptr %i.cc, i64 5
  %i.dk = getelementptr i8, ptr %i.ce, i64 8
  %i.dl = getelementptr i8, ptr %i.cg, i64 11
  %i.dm = load i8, ptr %i.di, align 1, !tbaa !364
  %i.dn = load i8, ptr %i.dj, align 1, !tbaa !364
  %i.do = load i8, ptr %i.dk, align 1, !tbaa !364
  %i.dp = load i8, ptr %i.dl, align 1, !tbaa !364
  %i.dq = insertelement <4 x i8> poison, i8 %i.dm, i64 0
  %i.dr = insertelement <4 x i8> %i.dq, i8 %i.dn, i64 1
  %i.ds = insertelement <4 x i8> %i.dr, i8 %i.do, i64 2
  %i.dt = insertelement <4 x i8> %i.ds, i8 %i.dp, i64 3
  %i.du = zext <4 x i8> %i.dt to <4 x i32>
  %i.dv = sub nsw <4 x i32> %i.du, %broadcast.splat156
  %i.dw = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.dv, i1 true)
  %i.dx = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.dh, <4 x i32> %i.dw)
  %i.dy = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.cs, <4 x i32> %i.dx)
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0104.0, i64 %index
  store <4 x i32> %i.dy, ptr %i.dz, align 4, !tbaa !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !365

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader158

.lr.ph.preheader158:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv132.ph = phi i64 [ %i.az, %.lr.ph.preheader ], [ %i.bz, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader158, %.lr.ph
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %.lr.ph ], [ %indvars.iv132.ph, %.lr.ph.preheader158 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader158 ] ; 2 uses
  %i.eb = getelementptr inbounds [3 x i8], ptr %.sink.i91, i64 %indvars.iv132 ; 3 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !361
  %i.ed = zext i8 %i.ec to i32
  %i.ee = sub nsw i32 %i.ed, %i.bo
  %i.ef = tail call i32 @llvm.abs.i32(i32 %i.ee, i1 true)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !363
  %i.ei = zext i8 %i.eh to i32
  %i.ej = sub nsw i32 %i.ei, %i.br
  %i.ek = tail call i32 @llvm.abs.i32(i32 %i.ej, i1 true)
  %i.el = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  %i.em = load i8, ptr %i.el, align 1, !tbaa !364
  %i.en = zext i8 %i.em to i32
  %i.eo = sub nsw i32 %i.en, %i.bu
  %i.ep = tail call i32 @llvm.abs.i32(i32 %i.eo, i1 true)
  %. = tail call i32 @llvm.umax.i32(i32 %i.ek, i32 %i.ep)
  %spec.select113 = tail call i32 @llvm.umax.i32(i32 %i.ef, i32 %.)
end_hunk_0
