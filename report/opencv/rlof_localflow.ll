Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/rlof_localflow?download=true
inline.NumInlined: 1717
inline.NumDeleted: 364
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_Z11quickselectIfET_RKN2cv3MatEi:bb.a
  %i.wr = getelementptr inbounds i8, ptr %i.s, i64 %i.wq
  br label %_ZN2cv3Mat2atIfEERT_i.exit139

bb.bp:                                            ; preds = %bb.bn
  br i1 %i.x, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %sext217 = shl i64 %.us-phi247, 32
  %i.ws = ashr exact i64 %sext217, 32
  %i.wt = mul i64 %i.u, %i.ws
  %i.wu = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.wt
  br label %_ZN2cv3Mat2atIfEERT_i.exit139

bb.br:                                            ; preds = %bb.bp
  %i.wv = sdiv i32 %.us-phi248, %i.d              ; 2 uses
  %i.ww = mul nsw i32 %i.wv, %i.d                 ; 0 uses
  %.recomposed573 = srem i32 %.us-phi248, %i.d
  %i.wx = sext i32 %i.wv to i64
  %i.wy = mul i64 %i.u, %i.wx
  %i.wz = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.wy
  %i.xa = sext i32 %.recomposed573 to i64
  %i.xb = getelementptr inbounds [4 x i8], ptr %i.wz, i64 %i.xa
  br label %_ZN2cv3Mat2atIfEERT_i.exit139

_ZN2cv3Mat2atIfEERT_i.exit139:                    ; preds = %.thread458, %bb.bo, %bb.bq, %bb.br
  %.us-phi405436467 = phi i64 [ %i.qz, %.thread458 ], [ %.us-phi405, %bb.bo ], [ %.us-phi405, %bb.bq ], [ %.us-phi405, %bb.br ]
  %.us-phi246438465 = phi i64 [ %.149.us, %.thread458 ], [ %.us-phi246, %bb.bo ], [ %.us-phi246, %bb.bq ], [ %.us-phi246, %bb.br ]
  %.us-phi247439463 = phi i64 [ %i.sf, %.thread458 ], [ %.us-phi247, %bb.bo ], [ %.us-phi247, %bb.bq ], [ %.us-phi247, %bb.br ] ; 2 uses
  %i.xc = phi i32 [ %i.qx, %.thread458 ], [ %i.wm, %bb.bo ], [ 1, %bb.bq ], [ %i.w, %bb.br ]
  %i.xd = phi i64 [ %i.qv, %.thread458 ], [ %i.qv, %bb.bo ], [ %i.u, %bb.bq ], [ %i.u, %bb.br ]
  %i.xe = phi ptr [ %i.qw, %.thread458 ], [ %i.s, %bb.bo ], [ %i.s, %bb.bq ], [ %i.s, %bb.br ]
  %.0.i138 = phi ptr [ %i.wi, %.thread458 ], [ %i.wr, %bb.bo ], [ %i.wu, %bb.bq ], [ %i.xb, %bb.br ]
  store float %i.qn, ptr %.0.i138, align 4, !tbaa !48
  %.not60 = icmp ult i64 %.us-phi247439463, %i.v
  %i.xf = add i64 %.us-phi246438465, -2
  %spec.select = select i1 %.not60, i64 %.050271, i64 %i.xf ; 3 uses
  %.not61 = icmp ugt i64 %.us-phi247439463, %i.v
  %.1 = select i1 %.not61, i64 %.0281, i64 %.us-phi405436467 ; 3 uses
  %i.xg = add i64 %.1, 1                          ; 3 uses
  %.not = icmp ugt i64 %spec.select, %i.xg
  br i1 %.not, label %bb.v, label %._crit_edge, !llvm.loop !351
}

declare void @_ZN2cv14findHomographyERKNS_11_InputArrayES2_idRKNS_12_OutputArrayEid(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef) local_unnamed_addr #3

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @_ZN2cv20perspectiveTransformERKNS_11_InputArrayERKNS_12_OutputArrayES2_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !65     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !71
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
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !64
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
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #23 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.v, i8 0, i64 %i.w, i1 false), !tbaa !48
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  %i.x = load i64, ptr %.0911.i.i.i, align 4, !tbaa !48, !alias.scope !356, !noalias !355
  store i64 %i.x, ptr %.012.i.i.i, align 4, !tbaa !48, !alias.scope !355, !noalias !356
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !71
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ac) #22
  br label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37

_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !65
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %1
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !71
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
  %i.b = load i8, ptr %i.a, align 4, !tbaa !108, !range !25, !noundef !26 ; 2 uses
  %2 = trunc nuw i8 %i.b to i1
  %i.c = shl nuw nsw i8 %i.b, 1
  %3 = select i1 %2, i64 3, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !105  ; 5 uses
  %i.f = add nsw i32 %i.e, -1
  %i.g = sdiv i32 %i.f, 2                         ; 6 uses
  %i.h = sext i32 %i.e to i64                     ; 3 uses
  %i.i = icmp slt i32 %i.e, 0
  br i1 %i.i, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #21
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %.noexc89

.noexc89:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = shl nuw nsw i64 %i.h, 2
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #23 ; 5 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.h ; 2 uses
  store i32 0, ptr %i.k, align 4, !tbaa !46
  %i.m = add nsw i64 %i.h, -1                     ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc89
  %i.o = getelementptr i8, ptr %i.k, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.m, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.o, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !46
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc89, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ %i.l, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.l, %.noexc89 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.0104.0 = phi ptr [ %i.k, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.k, %.noexc89 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 6 uses
  %i.p = load i32, ptr %1, align 4, !tbaa !100    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %invariant.op = shl nsw i32 %i.g, 1             ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !101  ; 2 uses
  %i.s = icmp slt i32 %i.p, %i.r
  br i1 %i.s, label %.preheader.lr.ph, label %._crit_edge128

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !104  ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = zext nneg i8 %i.c to i64
  %i.ac = sext i32 %i.g to i64                    ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0104.0, i64 %i.ac ; 2 uses
  %.not116 = icmp samesign ult i32 %i.e, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.af = load i32, ptr %i.v, align 4, !tbaa !43  ; 2 uses
  %i.ag = icmp sgt i32 %i.af, %invariant.op
  br i1 %i.ag, label %.preheader.preheader, label %._crit_edge128

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %smax = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %i.ah = add nuw nsw i32 %smax, 1
  %i.ai = sext i32 %i.p to i64
  %wide.trip.count139 = zext nneg i32 %i.ah to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge126
  %i.aj = phi i32 [ %i.r, %.preheader.preheader ], [ %i.au, %._crit_edge126 ]
  %i.ak = phi i32 [ %i.af, %.preheader.preheader ], [ %i.av, %._crit_edge126 ] ; 2 uses
  %indvars.iv144 = phi i64 [ %i.ai, %.preheader.preheader ], [ %indvars.iv.next145, %._crit_edge126 ] ; 5 uses
  %i.al = icmp sgt i32 %i.ak, %invariant.op
  br i1 %i.al, label %.lr.ph125, label %._crit_edge126

.lr.ph125:                                        ; preds = %.preheader
  %i.am = load ptr, ptr %i.w, align 8, !tbaa !109 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !79
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 128
  br label %bb.c

._crit_edge128:                                   ; preds = %._crit_edge126, %.preheader.lr.ph, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %.not.i.i.i = icmp eq ptr %.sroa.0104.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge128
  %i.ar = ptrtoint ptr %.sroa.11.0 to i64
  %i.as = ptrtoint ptr %.sroa.0104.0 to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0104.0, i64 noundef %i.at) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge128, %bb.b
  ret void

._crit_edge126.loopexit:                          ; preds = %.loopexit
  %.pre = load i32, ptr %i.q, align 4, !tbaa !101
  br label %._crit_edge126

._crit_edge126:                                   ; preds = %._crit_edge126.loopexit, %.preheader
  %i.au = phi i32 [ %.pre, %._crit_edge126.loopexit ], [ %i.aj, %.preheader ] ; 2 uses
  %i.av = phi i32 [ %i.fz, %._crit_edge126.loopexit ], [ %i.ak, %.preheader ]
  %indvars.iv.next145 = add nsw i64 %indvars.iv144, 1 ; 2 uses
  %i.aw = sext i32 %i.au to i64
  %i.ax = icmp slt i64 %indvars.iv.next145, %i.aw
  br i1 %i.ax, label %.preheader, label %._crit_edge128, !llvm.loop !357

bb.c:                                             ; preds = %.lr.ph125, %.loopexit
  %indvars.iv141 = phi i64 [ %i.ac, %.lr.ph125 ], [ %indvars.iv.next142, %.loopexit ] ; 9 uses
  %indvars.iv130 = phi i32 [ 0, %.lr.ph125 ], [ %indvars.iv.next131, %.loopexit ] ; 2 uses
  %i.ay = sext i32 %indvars.iv130 to i64          ; 3 uses
  %i.az = load i32, ptr %i.an, align 4, !tbaa !72
  %i.ba = icmp slt i32 %i.az, 2
  %i.bb = load i64, ptr %i.aq, align 8
  %i.bc = mul i64 %i.bb, %indvars.iv144
  %.sink.idx.i = select i1 %i.ba, i64 0, i64 %i.bc
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sink.idx.i
  %i.bd = getelementptr inbounds i8, ptr %.sink.i, i64 %indvars.iv141
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !39
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bg = load i32, ptr %i.x, align 4, !tbaa !72
  %i.bh = icmp slt i32 %i.bg, 2
  %i.bi = load ptr, ptr %i.y, align 8, !tbaa !79
  %i.bj = load i64, ptr %i.z, align 8
  %i.bk = mul i64 %i.bj, %indvars.iv144
  %.sink.idx.i90 = select i1 %i.bh, i64 0, i64 %i.bk
  %.sink.i91 = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sink.idx.i90 ; 6 uses
  %i.bl = getelementptr inbounds [3 x i8], ptr %.sink.i91, i64 %indvars.iv141 ; 3 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !363
  %i.bn = zext i8 %i.bm to i32                    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !364
  %i.bq = zext i8 %i.bp to i32                    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !365
  %i.bt = zext i8 %i.bs to i32                    ; 2 uses
  %i.bu = load i8, ptr %i.a, align 4, !tbaa !108, !range !25, !noundef !26
  %i.bv = trunc nuw i8 %i.bu to i1                ; 2 uses
  %spec.select.v = select i1 %i.bv, i64 %indvars.iv141, i64 %indvars.iv144
  %spec.select112 = select i1 %i.bv, i64 %indvars.iv144, i64 %indvars.iv141
  %i.bw = load i32, ptr %i.d, align 8, !tbaa !105 ; 3 uses
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %i.bw to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.bw, 4
  br i1 %min.iters.check, label %.lr.ph.preheader158, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 4 uses
  %i.by = add nsw i64 %n.vec, %i.ay
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bn, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert153 = insertelement <4 x i32> poison, i32 %i.bq, i64 0
  %broadcast.splat154 = shufflevector <4 x i32> %broadcast.splatinsert153, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert155 = insertelement <4 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat156 = shufflevector <4 x i32> %broadcast.splatinsert155, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bz = add nuw i64 %index, %i.ay               ; 4 uses
  %i.ca = getelementptr inbounds [3 x i8], ptr %.sink.i91, i64 %i.bz ; 3 uses
  %i.cb = getelementptr [3 x i8], ptr %.sink.i91, i64 %i.bz ; 3 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 3
  %i.cd = getelementptr [3 x i8], ptr %.sink.i91, i64 %i.bz ; 3 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 6
  %i.cf = getelementptr [3 x i8], ptr %.sink.i91, i64 %i.bz ; 3 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 9
  %i.ch = load i8, ptr %i.ca, align 1, !tbaa !363
  %i.ci = load i8, ptr %i.cc, align 1, !tbaa !363
  %i.cj = load i8, ptr %i.ce, align 1, !tbaa !363
  %i.ck = load i8, ptr %i.cg, align 1, !tbaa !363
  %i.cl = insertelement <4 x i8> poison, i8 %i.ch, i64 0
  %i.cm = insertelement <4 x i8> %i.cl, i8 %i.ci, i64 1
  %i.cn = insertelement <4 x i8> %i.cm, i8 %i.cj, i64 2
  %i.co = insertelement <4 x i8> %i.cn, i8 %i.ck, i64 3
  %i.cp = zext <4 x i8> %i.co to <4 x i32>
  %i.cq = sub nsw <4 x i32> %i.cp, %broadcast.splat
  %i.cr = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.cq, i1 true)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.ct = getelementptr i8, ptr %i.cb, i64 4
  %i.cu = getelementptr i8, ptr %i.cd, i64 7
  %i.cv = getelementptr i8, ptr %i.cf, i64 10
  %i.cw = load i8, ptr %i.cs, align 1, !tbaa !364
  %i.cx = load i8, ptr %i.ct, align 1, !tbaa !364
  %i.cy = load i8, ptr %i.cu, align 1, !tbaa !364
  %i.cz = load i8, ptr %i.cv, align 1, !tbaa !364
  %i.da = insertelement <4 x i8> poison, i8 %i.cw, i64 0
  %i.db = insertelement <4 x i8> %i.da, i8 %i.cx, i64 1
  %i.dc = insertelement <4 x i8> %i.db, i8 %i.cy, i64 2
  %i.dd = insertelement <4 x i8> %i.dc, i8 %i.cz, i64 3
  %i.de = zext <4 x i8> %i.dd to <4 x i32>
  %i.df = sub nsw <4 x i32> %i.de, %broadcast.splat154
  %i.dg = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.df, i1 true)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.di = getelementptr i8, ptr %i.cb, i64 5
  %i.dj = getelementptr i8, ptr %i.cd, i64 8
  %i.dk = getelementptr i8, ptr %i.cf, i64 11
  %i.dl = load i8, ptr %i.dh, align 1, !tbaa !365
  %i.dm = load i8, ptr %i.di, align 1, !tbaa !365
  %i.dn = load i8, ptr %i.dj, align 1, !tbaa !365
  %i.do = load i8, ptr %i.dk, align 1, !tbaa !365
  %i.dp = insertelement <4 x i8> poison, i8 %i.dl, i64 0
  %i.dq = insertelement <4 x i8> %i.dp, i8 %i.dm, i64 1
  %i.dr = insertelement <4 x i8> %i.dq, i8 %i.dn, i64 2
  %i.ds = insertelement <4 x i8> %i.dr, i8 %i.do, i64 3
  %i.dt = zext <4 x i8> %i.ds to <4 x i32>
  %i.du = sub nsw <4 x i32> %i.dt, %broadcast.splat156
  %i.dv = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.du, i1 true)
  %i.dw = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.dg, <4 x i32> %i.dv)
  %i.dx = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.cr, <4 x i32> %i.dw)
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0104.0, i64 %index
  store <4 x i32> %i.dx, ptr %i.dy, align 4, !tbaa !46
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !358

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader158

.lr.ph.preheader158:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv132.ph = phi i64 [ %i.ay, %.lr.ph.preheader ], [ %i.by, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader158, %.lr.ph
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %.lr.ph ], [ %indvars.iv132.ph, %.lr.ph.preheader158 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader158 ] ; 2 uses
  %i.ea = getelementptr inbounds [3 x i8], ptr %.sink.i91, i64 %indvars.iv132 ; 3 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !363
  %i.ec = zext i8 %i.eb to i32
  %i.ed = sub nsw i32 %i.ec, %i.bn
  %i.ee = tail call i32 @llvm.abs.i32(i32 %i.ed, i1 true)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !364
  %i.eh = zext i8 %i.eg to i32
  %i.ei = sub nsw i32 %i.eh, %i.bq
  %i.ej = tail call i32 @llvm.abs.i32(i32 %i.ei, i1 true)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !365
  %i.em = zext i8 %i.el to i32
  %i.en = sub nsw i32 %i.em, %i.bt
  %i.eo = tail call i32 @llvm.abs.i32(i32 %i.en, i1 true)
  %. = tail call i32 @llvm.umax.i32(i32 %i.ej, i32 %i.eo)
  %spec.select113 = tail call i32 @llvm.umax.i32(i32 %i.ee, i32 %.)
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0104.0, i64 %indvars.iv
  store i32 %spec.select113, ptr %i.ep, align 4, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !359

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.d
  %i.eq = load ptr, ptr %i.aa, align 8, !tbaa !106 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !72
  %i.et = icmp slt i32 %i.es, 2
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !79
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 128
  %i.ex = load i64, ptr %i.ew, align 8
  %sext = shl i64 %spec.select.v, 32
  %i.ey = ashr exact i64 %sext, 32
  %i.ez = mul i64 %i.ex, %i.ey
  %.sink.idx.i92 = select i1 %i.et, i64 0, i64 %i.ez
  %.sink.i93 = getelementptr inbounds nuw i8, ptr %i.ev, i64 %.sink.idx.i92
  %.sroa.0.0.insert.ext = shl i64 %spec.select112, 32
  %i.fa = ashr exact i64 %.sroa.0.0.insert.ext, 28
  %i.fb = getelementptr inbounds i8, ptr %.sink.i93, i64 %i.fa ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.ab ; 2 uses
  %i.fd = trunc i64 %indvars.iv141 to i32
  %i.fe = sub i32 %i.fd, %i.g
  store i32 %i.fe, ptr %i.fc, align 4, !tbaa !46
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %3 ; 2 uses
  %i.ff = trunc i64 %indvars.iv141 to i32
  %i.fg = add i32 %i.g, %i.ff
  store i32 %i.fg, ptr %4, align 4, !tbaa !46
  br i1 %.not116, label %.loopexit, label %.lr.ph122

.lr.ph122:                                        ; preds = %._crit_edge
  %i.fh = trunc i64 %indvars.iv141 to i32
  %i.fi = add i32 %i.fh, -1
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph122, %.thread
  %indvars.iv137 = phi i64 [ 1, %.lr.ph122 ], [ %indvars.iv.next138, %.thread ] ; 5 uses
  %.067118 = phi i1 [ false, %.lr.ph122 ], [ %.1111, %.thread ]
  %.068117 = phi i8 [ 0, %.lr.ph122 ], [ %.169, %.thread ]
  %i.fj = trunc nuw i8 %.068117 to i1
  br i1 %i.fj, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fk = sub nsw i64 0, %indvars.iv137
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !46
  %i.fn = load i32, ptr %i.ae, align 8, !tbaa !107
  %i.fo = icmp sgt i32 %i.fm, %i.fn
  br i1 %i.fo, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fp = sub nsw i64 %indvars.iv141, %indvars.iv137
  %i.fq = trunc nsw i64 %i.fp to i32
  store i32 %i.fq, ptr %i.fc, align 4, !tbaa !46
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.169 = phi i8 [ 1, %bb.e ], [ 1, %bb.g ], [ 0, %bb.f ] ; 2 uses
  br i1 %.067118, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fr = getelementptr [4 x i8], ptr %i.ad, i64 %indvars.iv137
  %i.fs = getelementptr i8, ptr %i.fr, i64 -4
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !46
  %i.fu = load i32, ptr %i.ae, align 8, !tbaa !107
  %i.fv = icmp sgt i32 %i.ft, %i.fu
  br i1 %i.fv, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.fw = trunc nuw nsw i64 %indvars.iv137 to i32
  %i.fx = add i32 %i.fi, %i.fw
  store i32 %i.fx, ptr %4, align 4, !tbaa !46
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.fy = trunc nuw i8 %.169 to i1
  br i1 %i.fy, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.i, %bb.k
  %.1111 = phi i1 [ true, %bb.k ], [ false, %bb.i ]
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %exitcond140.not = icmp eq i64 %indvars.iv.next138, %wide.trip.count139
  br i1 %exitcond140.not, label %.loopexit, label %bb.e, !llvm.loop !360

.loopexit:                                        ; preds = %bb.k, %.thread, %._crit_edge, %bb.c
  %indvars.iv.next142 = add nsw i64 %indvars.iv141, 1 ; 2 uses
  %i.fz = load i32, ptr %i.v, align 4, !tbaa !43  ; 2 uses
  %i.ga = sub nsw i32 %i.fz, %i.g
  %i.gb = sext i32 %i.ga to i64
  %i.gc = icmp slt i64 %indvars.iv.next142, %i.gb
  %indvars.iv.next131 = add nuw i32 %indvars.iv130, 1
  br i1 %i.gc, label %bb.c, label %._crit_edge126.loopexit, !llvm.loop !361
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv7optflow3plk6radial14TrackerInvokerD0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv7optflow3plk6radial14TrackerInvokerclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Size_", align 8         ; 8 uses
  %3 = alloca %"class.cv::Point_.8", align 8      ; 7 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %6 = alloca %"class.cv::AutoBuffer", align 8    ; 10 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %9 = alloca %"class.cv::Point_", align 8        ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %11 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %12 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %i.c = alloca double, align 8                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store <2 x float> zeroinitializer, ptr %3, align 8, !tbaa !48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !113  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !115  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !114  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !116
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !121  ; 2 uses
  %.sroa.4.0.insert.ext = zext i32 %i.n to i64    ; 2 uses
  %.sroa.4.0.insert.shift = shl nuw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.0750.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.4.0.insert.ext
  store i64 %.sroa.0750.0.insert.insert, ptr %2, align 8, !tbaa !46
  %i.o = add i32 %i.n, 15
  %i.p = and i32 %i.o, -16                        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef %i.p, i32 noundef %i.p, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !90
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 -1056833530, ptr %5, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.a, ptr %i.r, align 8, !tbaa !33
  store i64 4294967297, ptr %i.q, align 8, !tbaa !46
  %i.s = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.t = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.c unwind label %bb.h       ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.u = load i32, ptr %i.f, align 8, !tbaa !34
  %i.v = lshr i32 %i.u, 5
  %i.w = and i32 %i.v, 127
  %i.x = add nuw nsw i32 %i.w, 1                  ; 6 uses
  %i.y = shl nuw nsw i32 %i.x, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.z = mul nsw i32 %i.p, %i.p
  %i.aa = mul i32 %i.x, %i.z                      ; 2 uses
  %i.ab = mul i32 %i.aa, 3                        ; 2 uses
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.ad, ptr %6, align 8, !tbaa !82
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.not.i.i = icmp samesign ugt i32 %i.ab, 520
  store i64 %i.ac, ptr %i.ae, align 8, !tbaa !83
  br i1 %.not.i.i, label %bb.d, label %_ZN2cv10AutoBufferIsLm520EEC2Em.exit

bb.d:                                             ; preds = %bb.c
  %i.af = shl nuw nsw i64 %i.ac, 1
  %i.ag = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.af) #23
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %bb.d
  store ptr %i.ag, ptr %6, align 8, !tbaa !82
  br label %_ZN2cv10AutoBufferIsLm520EEC2Em.exit

_ZN2cv10AutoBufferIsLm520EEC2Em.exit:             ; preds = %.noexc, %bb.c
  %i.ah = phi ptr [ %i.ag, %.noexc ], [ %i.ad, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %.sroa.8744.0.insert.ext745 = zext i32 %i.p to i64
  %.sroa.0739.0.insert.insert743 = mul nuw i64 %.sroa.8744.0.insert.ext745, 4294967297 ; 2 uses
  %i.ai = shl nuw nsw i32 %i.x, 5
  %i.aj = add nsw i32 %i.ai, -29
  invoke void @_ZN2cv3MatC1ENS_5Size_IiEEiPvm(ptr noundef nonnull align 8 dereferenceable(208) %7, i64 %.sroa.0739.0.insert.insert743, i32 noundef %i.aj, ptr noundef nonnull %i.ah, i64 noundef 0)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %_ZN2cv10AutoBufferIsLm520EEC2Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.ak = add nsw i32 %i.y, -29
  %i.al = load ptr, ptr %6, align 8, !tbaa !82
  %i.am = zext nneg i32 %i.aa to i64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.am
  invoke void @_ZN2cv3MatC1ENS_5Size_IiEEiPvm(ptr noundef nonnull align 8 dereferenceable(208) %8, i64 %.sroa.0739.0.insert.insert743, i32 noundef %i.ak, ptr noundef %i.an, i64 noundef 0)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ao = load i32, ptr %1, align 4, !tbaa !100   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !101
  %i.ar = icmp slt i32 %i.ao, %i.aq
  br i1 %i.ar, label %.lr.ph961, label %._crit_edge

.lr.ph961:                                        ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 128 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cb = zext nneg i32 %i.x to i64               ; 2 uses
  %i.cc = sext i32 %i.ao to i64
  br label %bb.l

._crit_edge:                                      ; preds = %.thread, %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.cd = load ptr, ptr %6, align 8, !tbaa !82    ; 3 uses
  %.not.i.i616 = icmp eq ptr %i.cd, %i.ad
  %i.ce = icmp eq ptr %i.cd, null
  %or.cond.i = or i1 %.not.i.i616, %i.ce
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIsLm520EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  call void @_ZdaPv(ptr noundef nonnull %i.cd) #22
  br label %_ZN2cv10AutoBufferIsLm520EED2Ev.exit

_ZN2cv10AutoBufferIsLm520EED2Ev.exit:             ; preds = %._crit_edge, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #20
end_hunk_0
