inline.NumInlined: 3305
inline.NumDeleted: 1182
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNK6AstSel8lsbConstEv:bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.i)
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.35)
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr noundef nonnull align 8 dereferenceable(112) %i.k) #28
  unreachable

_ZN7AstNode2asI8AstConst11AstNodeExprEEPT_PT0_.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.m = tail call noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.l)
  ret i32 %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK12AstNodeDType5widthEv(ptr noundef nonnull align 8 dereferenceable(162) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load i32, ptr %i.a, align 8, !tbaa !622
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode2asI8AstConst11AstNodeExprEEPT_PT0_(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !254
  %.not6 = icmp eq i16 %.sroa.0.0.copyload.i.i, 121
  br i1 %.not6, label %.critedge, label %bb.c, !prof !161

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.6, i32 noundef 1063) ; 0 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.43)
  %.sroa.0.0.copyload.i.i5 = load i16, ptr %i.a, align 8, !tbaa !254
  %i.e = zext i16 %.sroa.0.0.copyload.i.i5 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !296
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.g)
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.35)
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.i) #28
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK8AstConst6toSIntEv(ptr noundef nonnull align 8 dereferenceable(208) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = tail call noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode15unsafePrivateAsI8AstConst11AstNodeExprEEPT_PT0_(ptr noundef %0) #4 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZNK8AstConst3numEv(ptr noundef nonnull align 8 dereferenceable(208) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  ret ptr %i.a
}

declare noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56)) #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS2_15checkMixedUsageES5_bEUlRKS6_SF_E_EEEvT_SI_T0_(ptr %0, ptr %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sdiv exact i64 %i.d, 24
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 3 uses
  %i.h = icmp sgt i64 %i.d, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 5 uses
  %i.i = mul nuw nsw i64 %.010.i.i, 24            ; 3 uses
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #30 ; 8 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %bb.c

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit, label %.lr.ph.i.i, !llvm.loop !781

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !728
  %.not18.i.i.i = icmp eq i64 %.010.i.i, 1
  br i1 %.not18.i.i.i, label %_ZSt29__uninitialized_construct_bufIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.c
  %.01317.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.o = add nsw i64 %i.i, -48                    ; 2 uses
  %i.p = udiv i64 %i.o, 24
  %i.q = add nuw nsw i64 %i.p, 1
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.preheader.i, %.lr.ph.i.i.i.prol
  %.01320.i.i.i.prol = phi ptr [ %.013.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %.01317.i.i.i, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %.019.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.preheader.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.01320.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %.019.i.i.i.prol, i64 24, i1 false), !tbaa.struct !728
  %i.r = getelementptr inbounds nuw i8, ptr %.019.i.i.i.prol, i64 24 ; 3 uses
  %.013.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.prol, i64 24 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !782

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.preheader.i
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader.i ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.01320.i.i.i.unr = phi ptr [ %.01317.i.i.i, %.lr.ph.i.i.preheader.i ], [ %.013.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.019.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.preheader.i ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %i.s = icmp ult i64 %i.o, 72
  br i1 %i.s, label %_ZSt29__uninitialized_construct_bufIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.01320.i.i.i = phi ptr [ %.013.i.i.i.3, %.lr.ph.i.i.i ], [ %.01320.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %.019.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %.019.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.01320.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.019.i.i.i, i64 24, i1 false), !tbaa.struct !728
  %i.t = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 24
  %.013.i.i.i = getelementptr inbounds nuw i8, ptr %.01320.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.013.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !tbaa.struct !728
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 48
  %.013.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.013.i.i.i.1, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !tbaa.struct !728
  %i.v = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 72
  %.013.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.013.i.i.i.2, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !tbaa.struct !728
  %i.w = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 96 ; 2 uses
  %.013.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.3 = icmp eq ptr %.013.i.i.i.3, %i.n
  br i1 %.not.i.i.i.3, label %_ZSt29__uninitialized_construct_bufIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !784

_ZSt29__uninitialized_construct_bufIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi ptr [ %i.j, %bb.c ], [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.w, %.lr.ph.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %.0.lcssa.i.i.i, i64 20, i1 false), !tbaa.struct !728
  br label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit: ; preds = %select.unfold.i.i, %bb.b, %_ZSt29__uninitialized_construct_bufIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i
  %.sroa.12.0 = phi ptr [ null, %bb.b ], [ %i.j, %_ZSt29__uninitialized_construct_bufIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i ], [ null, %select.unfold.i.i ] ; 5 uses
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %_ZSt29__uninitialized_construct_bufIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i ], [ 0, %select.unfold.i.i ] ; 4 uses
  %i.x = icmp eq i64 %i.g, %.sroa.5.0
  br i1 %i.x, label %bb.d, label %bb.f, !prof !161

bb.d:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit
  %i.y = getelementptr inbounds [24 x i8], ptr %0, i64 %i.g
  invoke void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS2_15checkMixedUsageES5_bEUlRKS6_SF_E_EEEvT_SI_SI_T0_T1_(ptr %0, ptr %i.y, ptr %1, ptr noundef %.sroa.12.0)
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = mul i64 %.sroa.5.0, 24
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.aa) #24
  resume { ptr, i32 } %i.z

bb.f:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit
  %i.ab = icmp eq ptr %.sroa.12.0, null
  br i1 %i.ab, label %bb.g, label %bb.h, !prof !9

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS2_15checkMixedUsageES5_bEUlRKS6_SF_E_EEEvT_SI_T0_(ptr %0, ptr %1)
          to label %bb.i unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  invoke void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS2_15checkMixedUsageES5_bEUlRKS6_SF_E_EEEvT_SI_T0_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull %.sroa.12.0, i64 noundef %.sroa.5.0)
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d
  %i.ac = mul i64 %.sroa.5.0, 24
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.ac) #24
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS2_15checkMixedUsageES5_bEUlRKS6_SF_E_EEEvT_SI_SI_T0_T1_(ptr %0, ptr %1, ptr %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %4 = sdiv exact i64 %i.c, 24                    ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %3, i64 %i.c
  tail call void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_15checkMixedUsageES5_bEUlRKS6_SF_E_EEEvT_SI_T0_T1_(ptr %0, ptr %1, i64 noundef 7)
  %i.e = icmp sgt i64 %i.c, 168
  br i1 %i.e, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS2_15checkMixedUsageES5_bEUlRKS6_SF_E_EEEvT_SI_T0_T1_.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.022.i = phi i64 [ %i.g, %.lr.ph.i ], [ 7, %bb.a ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS2_15checkMixedUsageES5_bEUlRKS6_SF_E_EEEvT_SI_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %3, i64 noundef %.022.i)
  %i.f = shl nuw nsw i64 %.022.i, 1
  tail call void @_ZSt17__merge_sort_loopIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZNS0_15checkMixedUsageES3_bEUlRKS4_SF_E_EEEvT_SI_T0_T1_T2_(ptr noundef %3, ptr noundef nonnull %i.d, ptr %0, i64 noundef %i.f)
  %i.g = shl nsw i64 %.022.i, 2                   ; 2 uses
  %i.h = icmp slt i64 %i.g, %4
  br i1 %i.h, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS2_15checkMixedUsageES5_bEUlRKS6_SF_E_EEEvT_SI_T0_T1_.exit, !llvm.loop !785

_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS2_15checkMixedUsageES5_bEUlRKS6_SF_E_EEEvT_SI_T0_T1_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.i = ptrtoint ptr %2 to i64
  %i.j = sub i64 %i.i, %i.a                       ; 3 uses
  %5 = sdiv exact i64 %i.j, 24                    ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %3, i64 %i.j
  tail call void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_15checkMixedUsageES5_bEUlRKS6_SF_E_EEEvT_SI_T0_T1_(ptr %1, ptr %2, i64 noundef 7)
  %i.l = icmp sgt i64 %i.j, 168
  br i1 %i.l, label %.lr.ph.i15, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS2_15checkMixedUsageES5_bEUlRKS6_SF_E_EEEvT_SI_T0_T1_.exit17

.lr.ph.i15:                                       ; preds = %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS2_15checkMixedUsageES5_bEUlRKS6_SF_E_EEEvT_SI_T0_T1_.exit, %.lr.ph.i15
  %.022.i16 = phi i64 [ %i.n, %.lr.ph.i15 ], [ 7, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS2_15checkMixedUsageES5_bEUlRKS6_SF_E_EEEvT_SI_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS2_15checkMixedUsageES5_bEUlRKS6_SF_E_EEEvT_SI_T0_T1_T2_(ptr %1, ptr %2, ptr noundef %3, i64 noundef %.022.i16)
  %i.m = shl nuw nsw i64 %.022.i16, 1
  tail call void @_ZSt17__merge_sort_loopIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZNS0_15checkMixedUsageES3_bEUlRKS4_SF_E_EEEvT_SI_T0_T1_T2_(ptr noundef %3, ptr noundef nonnull %i.k, ptr %1, i64 noundef %i.m)
  %i.n = shl nsw i64 %.022.i16, 2                 ; 2 uses
  %i.o = icmp slt i64 %i.n, %5
  br i1 %i.o, label %.lr.ph.i15, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS2_15checkMixedUsageES5_bEUlRKS6_SF_E_EEEvT_SI_T0_T1_.exit17, !llvm.loop !785

_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS2_15checkMixedUsageES5_bEUlRKS6_SF_E_EEEvT_SI_T0_T1_.exit17: ; preds = %.lr.ph.i15, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS2_15checkMixedUsageES5_bEUlRKS6_SF_E_EEEvT_SI_T0_T1_.exit
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS2_15checkMixedUsageES5_bEUlRKS6_SF_E_EEEvT_SI_SI_T0_SJ_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %4, i64 noundef %5, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS2_15checkMixedUsageES5_bEUlRKS6_SF_E_EEEvT_SI_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.03.i.i = alloca <{ ptr, i8, [3 x i8] }>, align 8 ; 4 uses
  %2 = alloca %struct.Ref, align 8                ; 4 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp slt i64 %i.c, 360
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %0, %1
  br i1 %i.e, label %common.ret28, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %.sroa.0.016.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not17.i = icmp eq ptr %.sroa.0.016.i, %1
  br i1 %.not17.i, label %common.ret28, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %.lr.ph.i
  %.sroa.0.019.i = phi ptr [ %.sroa.0.016.i, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.i ] ; 7 uses
  %.pn18.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.019.i, %bb.i ] ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 36
  %i.i = load i32, ptr %i.h, align 4, !tbaa !726  ; 7 uses
  %i.j = load i32, ptr %i.f, align 4, !tbaa !726  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.i, %i.j
  %i.k = icmp slt i32 %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 40
  %i.m = load i32, ptr %i.l, align 8              ; 4 uses
  %i.n = load i32, ptr %i.g, align 8
  %i.o = icmp slt i32 %i.m, %i.n
  %.0.i.i.i = select i1 %.not.i.i.i, i1 %i.o, i1 %i.k
  br i1 %.0.i.i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.019.i, i64 24, i1 false), !tbaa.struct !728
  %i.p = ptrtoint ptr %.sroa.0.019.i to i64
  %i.q = sub i64 %i.p, %i.b                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 24
  br i1 %i.r, label %bb.e, label %bb.f, !prof !161

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 48
  %.neg23.i = udiv exact i64 %i.q, 24
  %.neg23.neg.i = sub nsw i64 0, %.neg23.i
  %i.t = getelementptr inbounds [24 x i8], ptr %i.s, i64 %.neg23.neg.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.q, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.u = icmp eq i64 %i.q, 24
  br i1 %i.u, label %bb.g, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.v, ptr noundef nonnull align 8 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !728
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !728
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0.019.i, i64 12, i1 false), !tbaa.struct !728
  %i.w = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !726  ; 2 uses
  %.not.i.i11.i.i = icmp eq i32 %i.i, %i.x
  %i.y = icmp slt i32 %i.i, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 16
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = icmp slt i32 %i.m, %i.aa
  %.0.i.i12.i.i = select i1 %.not.i.i11.i.i, i1 %i.ab, i1 %i.y
  br i1 %.0.i.i12.i.i, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS2_15checkMixedUsageES5_bEUlRKS6_SF_E_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i.i
  %.sroa.08.013.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.019.i, %bb.h ] ; 4 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.08.013.i.i, i64 -24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.08.013.i.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0.0.i.i, i64 20, i1 false), !tbaa.struct !728
  %i.ac = getelementptr inbounds i8, ptr %.sroa.08.013.i.i, i64 -36
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !726 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.i, %i.ad
  %i.ae = icmp slt i32 %i.i, %i.ad
  %i.af = getelementptr inbounds i8, ptr %.sroa.08.013.i.i, i64 -32
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = icmp slt i32 %i.m, %i.ag
  %.0.i.i.i.i = select i1 %.not.i.i.i.i, i1 %i.ah, i1 %i.ae
  br i1 %.0.i.i.i.i, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS2_15checkMixedUsageES5_bEUlRKS6_SF_E_EEEvT_T0_.exit.i, !llvm.loop !786

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS2_15checkMixedUsageES5_bEUlRKS6_SF_E_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.h
  %.sroa.08.0.lcssa.i.i = phi ptr [ %.sroa.0.019.i, %bb.h ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.08.0.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i, i64 12, i1 false), !tbaa.struct !728
  %.sroa.4.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i, i64 12
  store i32 %i.i, ptr %.sroa.4.0..sroa_idx4.i.i, align 4, !tbaa !19
  %.sroa.5.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i, i64 16
  store i32 %i.m, ptr %.sroa.5.0..sroa_idx6.i.i, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i)
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS2_15checkMixedUsageES5_bEUlRKS6_SF_E_EEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %1
  br i1 %.not.i, label %common.ret28, label %bb.c, !llvm.loop !787

common.ret28:                                     ; preds = %.preheader.i, %bb.b, %bb.i, %bb.j
  ret void

bb.j:                                             ; preds = %bb.a
  %i.ai = udiv exact i64 %i.c, 24
  %i.aj = lshr i64 %i.ai, 1                       ; 2 uses
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.aj ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS2_15checkMixedUsageES5_bEUlRKS6_SF_E_EEEvT_SI_T0_(ptr %0, ptr %i.ak)
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS2_15checkMixedUsageES5_bEUlRKS6_SF_E_EEEvT_SI_T0_(ptr %i.ak, ptr %1)
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.a, %i.al
  %i.an = sdiv exact i64 %i.am, 24
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_15checkMixedUsageES5_bEUlRKS6_SF_E_EEEvT_SI_SI_T0_SJ_T1_(ptr %0, ptr %i.ak, ptr %1, i64 noundef %i.aj, i64 noundef %i.an)
  br label %common.ret28
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS2_15checkMixedUsageES5_bEUlRKS6_SF_E_EEEvT_SI_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 24
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 3 uses
  %i.g = getelementptr inbounds [24 x i8], ptr %0, i64 %i.f ; 5 uses
  %i.h = icmp sgt i64 %i.f, %3
  br i1 %i.h, label %bb.b, label %common.ret

common.ret33:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS2_15checkMixedUsageES5_bEUlRKS6_SF_E_EEEvT_SI_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS2_15checkMixedUsageES5_bEUlRKS6_SF_E_EEEvT_SI_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3)
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = sdiv exact i64 %i.j, 24
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS2_15checkMixedUsageES5_bEUlRKS6_SF_E_EEEvT_SI_SI_T0_SJ_T1_SJ_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3)
  br label %common.ret33

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS2_15checkMixedUsageES5_bEUlRKS6_SF_E_EEEvT_SI_SI_T0_T1_(ptr %0, ptr %i.g, ptr %1, ptr noundef %2)
  br label %common.ret33
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS2_15checkMixedUsageES5_bEUlRKS6_SF_E_EEEvT_SI_SI_T0_SJ_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = icmp sgt i64 %i.c, 24
  br i1 %i.d, label %bb.c, label %bb.d, !prof !161

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %0, i64 %i.c, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit

bb.d:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %i.c, 24
  br i1 %i.e, label %bb.e, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %5, ptr noundef nonnull align 8 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !728
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.f = getelementptr inbounds i8, ptr %5, i64 %i.c ; 2 uses
  %.not22.i = icmp eq ptr %1, %0
  br i1 %.not22.i, label %_ZSt21__move_merge_adaptiveIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEESB_NS6_5__ops15_Iter_comp_iterIZNS0_15checkMixedUsageES3_bEUlRKS4_SF_E_EEEvT_SI_T0_SJ_T1_T2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit, %bb.i
  %.025.i = phi ptr [ %.1.i, %bb.i ], [ %5, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit ] ; 8 uses
  %.sroa.0.024.i = phi ptr [ %i.s, %bb.i ], [ %0, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit ] ; 5 uses
  %.sroa.016.023.i = phi ptr [ %.sroa.016.1.i, %bb.i ], [ %1, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN14DelayedVisitor15checkMixedUsageEPK11AstVarScopebE3RefSt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit ] ; 6 uses
  %.not19.i = icmp eq ptr %.sroa.016.023.i, %2
  br i1 %.not19.i, label %.critedge.i, label %bb.f
end_hunk_0
