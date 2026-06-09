inline.NumInlined: 223
inline.NumDeleted: 140
begin_hunk_0_@_ZNK5arrow18TypedChunkLocationIaEeqES1_:bb.a
  %i.c = ashr exact i32 %sext, 24
  %i.d = icmp eq i32 %i.c, %i.b
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.2.0.extract.shift = lshr i16 %1, 8
  %.sroa.2.0.extract.trunc = zext nneg i16 %.sroa.2.0.extract.shift to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !16
  %i.g = sext i8 %i.f to i32
  %sext1 = shl nuw i32 %.sroa.2.0.extract.trunc, 24
  %i.h = ashr exact i32 %sext1, 24
  %i.i = icmp eq i32 %i.h, %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.b ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIhEC2Ehh(ptr noundef nonnull align 1 dereferenceable(2) %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIhEC5Ehh) align 2 {
bb.a:
  store i8 %1, ptr %0, align 1, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %2, ptr %i.a, align 1, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIhEeqES1_(ptr noundef nonnull align 1 dereferenceable(2) %0, i16 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !17
  %i.b = trunc i16 %1 to i8
  %i.c = icmp eq i8 %i.a, %i.b
  %.sroa.2.0.extract.shift = lshr i16 %1, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %i.f = zext i8 %i.e to i16
  %i.g = icmp eq i16 %.sroa.2.0.extract.shift, %i.f
  %i.h = select i1 %i.c, i1 %i.g, i1 false
  ret i1 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationItEC2Ett(ptr noundef nonnull align 2 dereferenceable(4) %0, i16 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationItEC5Ett) align 2 {
bb.a:
  store i16 %1, ptr %0, align 2, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %2, ptr %i.a, align 2, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationItEeqES1_(ptr noundef nonnull align 2 dereferenceable(4) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !20
  %i.b = trunc i32 %1 to i16
  %i.c = icmp eq i16 %i.a, %i.b
  %.sroa.2.0.extract.shift = lshr i32 %1, 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i16, ptr %i.d, align 2
  %i.f = zext i16 %i.e to i32
  %i.g = icmp eq i32 %.sroa.2.0.extract.shift, %i.f
  %i.h = select i1 %i.c, i1 %i.g, i1 false
  ret i1 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIjEC2Ejj(ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIjEC5Ejj) align 2 {
bb.a:
  store i32 %1, ptr %0, align 4, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIjEeqES1_(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %i.a = load i32, ptr %0, align 4, !tbaa !23
  %i.b = icmp eq i32 %i.a, %.sroa.0.0.extract.trunc
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, %.sroa.2.0.extract.trunc
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIlEC2Ell(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIlEC5Ell) align 2 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIlEeqES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !26
  %i.b = icmp eq i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, %2
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationImEC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationImEC5Emm) align 2 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationImEeqES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !30
  %i.b = icmp eq i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, %2
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5arrow13ChunkResolverC2ERKSt6vectorISt10shared_ptrINS_5ArrayEESaIS4_EE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !33     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.h = add nsw i64 %i.g, 1                      ; 4 uses
  %i.i = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.i, label %.noexc.i, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %.noexc.i
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.j, align 8, !alias.scope !38
  %.not.i.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i.i, label %.noexc6.i

_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i.i: ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !alias.scope !38
  br label %.lr.ph.i.preheader.i

.noexc6.i:                                        ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.k = shl nuw nsw i64 %i.h, 3
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #13
          to label %.noexc2 unwind label %bb.c    ; 6 uses

.noexc2:                                          ; preds = %.noexc6.i
  store ptr %i.l, ptr %0, align 8, !tbaa !41, !alias.scope !38
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !44, !alias.scope !38
  store i64 0, ptr %i.l, align 8, !tbaa !45, !noalias !38
  %i.o = getelementptr i8, ptr %i.l, i64 8        ; 3 uses
  %i.p = icmp eq ptr %i.c, %i.a
  br i1 %i.p, label %bb.b, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc2
  %.idx.i.i.i.i.i.i.i.i = ashr exact i64 %i.f, 1  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !45, !noalias !38
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i.i.i.i.i.i.i
  br label %.lr.ph.i.preheader.i

bb.b:                                             ; preds = %.noexc2
  store ptr %i.o, ptr %i.j, align 8, !tbaa !46, !alias.scope !38
  br label %.loopexit

.lr.ph.i.preheader.i:                             ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i.i
  %.ph.i = phi ptr [ %i.l, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i.i ] ; 2 uses
  %.0.i.i.i.i.i.ph.i = phi ptr [ %i.q, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i.i ]
  store ptr %.0.i.i.i.i.i.ph.i, ptr %i.j, align 8, !tbaa !46, !alias.scope !38
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.0.i = phi i64 [ %i.t, %.lr.ph.i.i ], [ 0, %.lr.ph.i.preheader.i ] ; 2 uses
  %.08.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %i.a, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.04.07.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %.ph.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %.0.val.i.i = load ptr, ptr %.08.i.i, align 8, !tbaa !47, !noalias !38
  %i.r = getelementptr i8, ptr %.0.val.i.i, i64 8
  %.0.val.val.i.i = load ptr, ptr %i.r, align 8, !tbaa !52, !noalias !38
  %i.s = getelementptr i8, ptr %.0.val.val.i.i, i64 16
  %.0.val.val.val.i.i = load i64, ptr %i.s, align 8, !tbaa !55, !noalias !38
  %i.t = add nsw i64 %.0.val.val.val.i.i, %.0.i   ; 2 uses
  store i64 %.0.i, ptr %.sroa.04.07.i.i, align 8, !tbaa !45, !noalias !38
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !76

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.b
  %i.w = phi ptr [ %i.l, %bb.b ], [ %.ph.i, %.lr.ph.i.i ]
  %.1.i = phi i64 [ 0, %bb.b ], [ %i.t, %.lr.ph.i.i ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.g
  store i64 %.1.i, ptr %i.x, align 8, !tbaa !45, !noalias !38
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.y, align 8, !tbaa !78
  ret void

bb.c:                                             ; preds = %.noexc6.i, %.noexc.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #14
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #15 ; 0 uses
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5arrow13ChunkResolverC2ENS_4util4spanIKPKNS_5ArrayEEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(28) %0, ptr nofree readonly captures(address) %1, i64 %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.a = add i64 %2, 1                            ; 4 uses
  %i.b = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.b, label %.noexc.i, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %.noexc.i
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.c, align 8, !alias.scope !80
  %.not.i.i.i.i.i = icmp eq i64 %i.a, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i.i, label %.noexc6.i

_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i.i: ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !alias.scope !80
  %.pre = shl nuw nsw i64 %2, 3
  br label %.lr.ph.i.preheader.i

.noexc6.i:                                        ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.d = shl nuw nsw i64 %i.a, 3
  %i.e = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #13
          to label %.noexc1 unwind label %bb.c    ; 6 uses

.noexc1:                                          ; preds = %.noexc6.i
  store ptr %i.e, ptr %0, align 8, !tbaa !41, !alias.scope !80
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !44, !alias.scope !80
  store i64 0, ptr %i.e, align 8, !tbaa !45, !noalias !80
  %i.h = getelementptr i8, ptr %i.e, i64 8        ; 3 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %bb.b, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc1
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %2, 3   ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.h, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !45, !noalias !80
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i.i.i.i.i.i.i.i
  br label %.lr.ph.i.preheader.i

bb.b:                                             ; preds = %.noexc1
  store ptr %i.h, ptr %i.c, align 8, !tbaa !46, !alias.scope !80
  br label %.loopexit

.lr.ph.i.preheader.i:                             ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i.i
  %.idx15.i.pre-phi = phi i64 [ %.idx.i.i.i.i.i.i.i.i, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %.pre, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i.i ]
  %.ph.i = phi ptr [ %i.e, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i.i ] ; 4 uses
  %.0.i.i.i.i.i.ph.i = phi ptr [ %i.j, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i.i ]
  store ptr %.0.i.i.i.i.i.ph.i, ptr %i.c, align 8, !tbaa !46, !alias.scope !80
  %i.k = add nsw i64 %.idx15.i.pre-phi, -8        ; 2 uses
  %i.l = lshr exact i64 %i.k, 3
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %xtraiter = and i64 %i.m, 3                     ; 3 uses
  %i.n = icmp ult i64 %i.k, 24
  br i1 %i.n, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.preheader.i.new

.lr.ph.i.preheader.i.new:                         ; preds = %.lr.ph.i.preheader.i
  %unroll_iter = and i64 %i.m, 4611686018427387900
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i.new
  %.0.i = phi i64 [ 0, %.lr.ph.i.preheader.i.new ], [ %i.af, %.lr.ph.i.i ] ; 2 uses
  %.08.i.i = phi ptr [ %1, %.lr.ph.i.preheader.i.new ], [ %i.ag, %.lr.ph.i.i ] ; 5 uses
  %.sroa.04.07.i.i = phi ptr [ %.ph.i, %.lr.ph.i.preheader.i.new ], [ %i.ah, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.i.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %.0.val.i.i = load ptr, ptr %.08.i.i, align 8, !tbaa !83, !noalias !80
  %i.o = getelementptr i8, ptr %.0.val.i.i, i64 8
  %.0.val.val.i.i = load ptr, ptr %i.o, align 8, !tbaa !52, !noalias !80
  %i.p = getelementptr i8, ptr %.0.val.val.i.i, i64 16
  %.0.val.val.val.i.i = load i64, ptr %i.p, align 8, !tbaa !55, !noalias !80
  %i.q = add nsw i64 %.0.val.val.val.i.i, %.0.i   ; 2 uses
  store i64 %.0.i, ptr %.sroa.04.07.i.i, align 8, !tbaa !45, !noalias !80
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i, i64 8
  %.0.val.i.i.1 = load ptr, ptr %i.r, align 8, !tbaa !83, !noalias !80
  %i.t = getelementptr i8, ptr %.0.val.i.i.1, i64 8
  %.0.val.val.i.i.1 = load ptr, ptr %i.t, align 8, !tbaa !52, !noalias !80
  %i.u = getelementptr i8, ptr %.0.val.val.i.i.1, i64 16
  %.0.val.val.val.i.i.1 = load i64, ptr %i.u, align 8, !tbaa !55, !noalias !80
  %i.v = add nsw i64 %.0.val.val.val.i.i.1, %i.q  ; 2 uses
  store i64 %i.q, ptr %i.s, align 8, !tbaa !45, !noalias !80
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i, i64 16
  %.0.val.i.i.2 = load ptr, ptr %i.w, align 8, !tbaa !83, !noalias !80
  %i.y = getelementptr i8, ptr %.0.val.i.i.2, i64 8
  %.0.val.val.i.i.2 = load ptr, ptr %i.y, align 8, !tbaa !52, !noalias !80
  %i.z = getelementptr i8, ptr %.0.val.val.i.i.2, i64 16
  %.0.val.val.val.i.i.2 = load i64, ptr %i.z, align 8, !tbaa !55, !noalias !80
  %i.aa = add nsw i64 %.0.val.val.val.i.i.2, %i.v ; 2 uses
  store i64 %i.v, ptr %i.x, align 8, !tbaa !45, !noalias !80
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i, i64 24
  %.0.val.i.i.3 = load ptr, ptr %i.ab, align 8, !tbaa !83, !noalias !80
  %i.ad = getelementptr i8, ptr %.0.val.i.i.3, i64 8
  %.0.val.val.i.i.3 = load ptr, ptr %i.ad, align 8, !tbaa !52, !noalias !80
  %i.ae = getelementptr i8, ptr %.0.val.val.i.i.3, i64 16
  %.0.val.val.val.i.i.3 = load i64, ptr %i.ae, align 8, !tbaa !55, !noalias !80
  %i.af = add nsw i64 %.0.val.val.val.i.i.3, %i.aa ; 3 uses
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !45, !noalias !80
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i, i64 32 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !84

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.preheader.i
  %.0.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i ], [ %i.af, %.loopexit.loopexit.unr-lcssa ]
  %.08.i.i.epil.init = phi ptr [ %1, %.lr.ph.i.preheader.i ], [ %i.ag, %.loopexit.loopexit.unr-lcssa ]
  %.sroa.04.07.i.i.epil.init = phi ptr [ %.ph.i, %.lr.ph.i.preheader.i ], [ %i.ah, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod6 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod6)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.0.i.epil = phi i64 [ %i.ak, %.lr.ph.i.i.epil ], [ %.0.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.08.i.i.epil = phi ptr [ %i.al, %.lr.ph.i.i.epil ], [ %.08.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.sroa.04.07.i.i.epil = phi ptr [ %i.am, %.lr.ph.i.i.epil ], [ %.sroa.04.07.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %.0.val.i.i.epil = load ptr, ptr %.08.i.i.epil, align 8, !tbaa !83, !noalias !80
  %i.ai = getelementptr i8, ptr %.0.val.i.i.epil, i64 8
  %.0.val.val.i.i.epil = load ptr, ptr %i.ai, align 8, !tbaa !52, !noalias !80
  %i.aj = getelementptr i8, ptr %.0.val.val.i.i.epil, i64 16
  %.0.val.val.val.i.i.epil = load i64, ptr %i.aj, align 8, !tbaa !55, !noalias !80
  %i.ak = add nsw i64 %.0.val.val.val.i.i.epil, %.0.i.epil ; 2 uses
  store i64 %.0.i.epil, ptr %.sroa.04.07.i.i.epil, align 8, !tbaa !45, !noalias !80
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.epil, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.epil, i64 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.i.i.epil, !llvm.loop !85

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.b
  %i.an = phi ptr [ %i.e, %bb.b ], [ %.ph.i, %.lr.ph.i.i.epil ], [ %.ph.i, %.loopexit.loopexit.unr-lcssa ]
  %.1.i = phi i64 [ 0, %bb.b ], [ %i.af, %.loopexit.loopexit.unr-lcssa ], [ %i.ak, %.lr.ph.i.i.epil ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %2
  store i64 %.1.i, ptr %i.ao, align 8, !tbaa !45, !noalias !80
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.ap, align 8, !tbaa !78
  ret void

bb.c:                                             ; preds = %.noexc6.i, %.noexc.i
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  tail call void @__clang_call_terminate(ptr %i.ar) #14
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5arrow13ChunkResolverC2ERKSt6vectorISt10shared_ptrINS_11RecordBatchEESaIS4_EE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !87     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !90   ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.h = add nsw i64 %i.g, 1                      ; 4 uses
  %i.i = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.i, label %.noexc.i, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %.noexc.i
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.j, align 8, !alias.scope !91
  %.not.i.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i.i, label %.noexc6.i

_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i.i: ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !alias.scope !91
  br label %.lr.ph.i.preheader.i

.noexc6.i:                                        ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.k = shl nuw nsw i64 %i.h, 3
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #13
          to label %.noexc2 unwind label %bb.c    ; 6 uses

.noexc2:                                          ; preds = %.noexc6.i
  store ptr %i.l, ptr %0, align 8, !tbaa !41, !alias.scope !91
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !44, !alias.scope !91
  store i64 0, ptr %i.l, align 8, !tbaa !45, !noalias !91
  %i.o = getelementptr i8, ptr %i.l, i64 8        ; 3 uses
  %i.p = icmp eq ptr %i.c, %i.a
  br i1 %i.p, label %bb.b, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc2
  %.idx.i.i.i.i.i.i.i.i = ashr exact i64 %i.f, 1  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !45, !noalias !91
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i.i.i.i.i.i.i
  br label %.lr.ph.i.preheader.i

bb.b:                                             ; preds = %.noexc2
  store ptr %i.o, ptr %i.j, align 8, !tbaa !46, !alias.scope !91
  br label %.loopexit

.lr.ph.i.preheader.i:                             ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i.i
  %.ph.i = phi ptr [ %i.l, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i.i ] ; 2 uses
  %.0.i.i.i.i.i.ph.i = phi ptr [ %i.q, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i.i ]
  store ptr %.0.i.i.i.i.i.ph.i, ptr %i.j, align 8, !tbaa !46, !alias.scope !91
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.0.i = phi i64 [ %i.s, %.lr.ph.i.i ], [ 0, %.lr.ph.i.preheader.i ] ; 2 uses
  %.08.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.a, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.04.07.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %.ph.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %.0.val.i.i = load ptr, ptr %.08.i.i, align 8, !tbaa !94, !noalias !91
  %i.r = getelementptr i8, ptr %.0.val.i.i, i64 24
  %.0.val.val.i.i = load i64, ptr %i.r, align 8, !tbaa !97, !noalias !91
  %i.s = add nsw i64 %.0.val.val.i.i, %.0.i       ; 2 uses
  store i64 %.0.i, ptr %.sroa.04.07.i.i, align 8, !tbaa !45, !noalias !91
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.t, %i.c
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !102

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.b
  %i.v = phi ptr [ %i.l, %bb.b ], [ %.ph.i, %.lr.ph.i.i ]
  %.1.i = phi i64 [ 0, %bb.b ], [ %i.s, %.lr.ph.i.i ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.g
  store i64 %.1.i, ptr %i.w, align 8, !tbaa !45, !noalias !91
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.x, align 8, !tbaa !78
  ret void

bb.c:                                             ; preds = %.noexc6.i, %.noexc.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #14
  unreachable
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5arrow13ChunkResolverC2EOS0_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(28) initializes((0, 28)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(28) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !103
  store <2 x ptr> %i.a, ptr %0, align 8, !tbaa !103
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44
  store ptr %i.d, ptr %i.b, align 8, !tbaa !44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load atomic i32, ptr %i.f monotonic, align 8
  store i32 %i.g, ptr %i.e, align 8, !tbaa !78
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(28) ptr @_ZN5arrow13ChunkResolveraSEOS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(28) initializes((8, 16)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(28) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !41     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !103
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !103
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44
  store ptr %i.f, ptr %i.b, align 8, !tbaa !44
  %.not.i.i.i.i.i = icmp eq ptr %i.a, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIlSaIlEEaSEOS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.i) #16
  br label %_ZNSt6vectorIlSaIlEEaSEOS1_.exit

_ZNSt6vectorIlSaIlEEaSEOS1_.exit:                 ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load atomic i32, ptr %i.k monotonic, align 8
  store atomic i32 %i.l, ptr %i.j seq_cst, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5arrow13ChunkResolverC2ERKS0_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(28) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !41     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %.noexc2, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i, !prof !104

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #12
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #13
          to label %.noexc2 unwind label %bb.g

.noexc2:                                          ; preds = %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !44
  %i.m = load ptr, ptr %1, align 8, !tbaa !103    ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.c, label %bb.d, !prof !105

bb.c:                                             ; preds = %.noexc2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.m, i64 %i.q, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc2
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.m, align 8, !tbaa !45
  store i64 %i.t, ptr %i.i, align 8, !tbaa !45
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.v, align 8, !tbaa !78
  ret void

bb.g:                                             ; preds = %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #14
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(28) ptr @_ZN5arrow13ChunkResolveraSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIlSaIlEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store atomic i32 0, ptr %i.b monotonic, align 8
  ret ptr %0

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #14
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIlSaIlEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = load ptr, ptr %1, align 8, !tbaa !41     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44
  %i.i = load ptr, ptr %0, align 8, !tbaa !41     ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i, !prof !104

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #12
  unreachable

_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #13 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 8
  br i1 %i.p, label %bb.e, label %bb.f, !prof !105

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 8
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i64, ptr %i.c, align 8, !tbaa !45
  store i64 %i.r, ptr %i.o, align 8, !tbaa !45
  br label %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit

_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #16
  br label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit

_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit: ; preds = %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.s, ptr %i.g, align 8, !tbaa !44
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !46   ; 3 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.k                       ; 5 uses
  %.not24 = icmp ult i64 %i.w, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp sgt i64 %i.f, 8
  br i1 %i.x, label %bb.k, label %bb.l, !prof !105

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.y = icmp eq i64 %i.f, 8
  br i1 %i.y, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.z = load i64, ptr %i.c, align 8, !tbaa !45
  store i64 %i.z, ptr %i.i, align 8, !tbaa !45
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.aa = icmp sgt i64 %i.w, 8
  br i1 %i.aa, label %bb.o, label %bb.p, !prof !105

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.w, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !41
  %.pre25 = load ptr, ptr %i.t, align 8, !tbaa !46 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !41
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !46
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ab = icmp eq i64 %i.w, 8
  br i1 %i.ab, label %bb.q, label %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !45
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !45
  br label %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit

_ZSt4copyIPlS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.w, %bb.p ], [ 8, %bb.q ]
  %i.ad = phi ptr [ %.pre25, %bb.o ], [ %i.u, %bb.p ], [ %i.u, %bb.q ] ; 2 uses
  %i.ae = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.pre-phi32 ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %.pre-phi34, %i.ag              ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 8
  br i1 %i.ai, label %bb.r, label %bb.s, !prof !105

bb.r:                                             ; preds = %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ad, ptr align 8 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit
  %i.aj = icmp eq i64 %i.ah, 8
  br i1 %i.aj, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ak = load i64, ptr %i.af, align 8, !tbaa !45
  store i64 %i.ak, ptr %i.ad, align 8, !tbaa !45
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !41
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !46
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow13ChunkResolver15ResolveManyImplElPKhPNS_18TypedChunkLocationIhEEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #4 align 2 {
bb.a:
  %5 = alloca %"struct.arrow::TypedChunkLocation.2", align 2 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = load ptr, ptr %0, align 8, !tbaa !41     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 3
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = add i32 %i.h, -1                         ; 2 uses
  %i.j = icmp sgt i64 %1, 0
  br i1 %i.j, label %.lr.ph.i, label %_ZN5arrow12_GLOBAL__N_117ResolveManyInlineIhEEvjPKllPKT_PNS_18TypedChunkLocationIS4_EEi.exit

.lr.ph.i:                                         ; preds = %bb.a, %_ZN5arrow12_GLOBAL__N_116ResolveOneInlineIhEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i
  %.015.i = phi i32 [ %i.ah, %_ZN5arrow12_GLOBAL__N_116ResolveOneInlineIhEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i ], [ %4, %bb.a ] ; 3 uses
  %.01314.i = phi i64 [ %i.ai, %_ZN5arrow12_GLOBAL__N_116ResolveOneInlineIhEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i ], [ 0, %bb.a ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.01314.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !106   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.m = zext i8 %i.l to i64                      ; 3 uses
  %i.n = sext i32 %.015.i to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.n ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !45   ; 3 uses
  %.not.i.i = icmp ugt i64 %i.p, %i.m
  br i1 %.not.i.i, label %.preheader, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.q = icmp eq i32 %.015.i, %i.i
  br i1 %i.q, label %_ZN5arrow12_GLOBAL__N_116ResolveOneInlineIhEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !45
  %i.t = icmp ugt i64 %i.s, %i.m
  br i1 %i.t, label %_ZN5arrow12_GLOBAL__N_116ResolveOneInlineIhEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i, label %.preheader

.preheader:                                       ; preds = %bb.c, %.lr.ph.i
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.d
  %.013.i.i.i = phi i32 [ %.114.i.i.i, %bb.d ], [ %i.h, %.preheader ] ; 2 uses
  %.0.i.i.i = phi i32 [ %.1.i.i.i, %bb.d ], [ 0, %.preheader ] ; 2 uses
  %i.u = lshr i32 %.013.i.i.i, 1                  ; 3 uses
  %i.v = add i32 %.0.i.i.i, %i.u                  ; 2 uses
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !45
  %.not.i.i.i = icmp ugt i64 %i.y, %i.m           ; 2 uses
  %i.z = sub i32 %.013.i.i.i, %i.u
  %.114.i.i.i = select i1 %.not.i.i.i, i32 %i.u, i32 %i.z ; 2 uses
  %.1.i.i.i = select i1 %.not.i.i.i, i32 %.0.i.i.i, i32 %i.v ; 3 uses
  %i.aa = icmp ugt i32 %.114.i.i.i, 1
  br i1 %i.aa, label %bb.d, label %_ZN5arrow13ChunkResolver6BisectEmPKmjj.exit.loopexit.i.i, !llvm.loop !107

_ZN5arrow13ChunkResolver6BisectEmPKmjj.exit.loopexit.i.i: ; preds = %bb.d
  %.pre.i.i = sext i32 %.1.i.i.i to i64
  %.phi.trans.insert.i.i = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.pre.i.i
  %.pre18.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !45
  br label %_ZN5arrow12_GLOBAL__N_116ResolveOneInlineIhEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i

_ZN5arrow12_GLOBAL__N_116ResolveOneInlineIhEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i: ; preds = %_ZN5arrow13ChunkResolver6BisectEmPKmjj.exit.loopexit.i.i, %bb.c, %bb.b
  %i.ab = phi i64 [ %.pre18.i.i, %_ZN5arrow13ChunkResolver6BisectEmPKmjj.exit.loopexit.i.i ], [ %i.p, %bb.b ], [ %i.p, %bb.c ]
  %.0.i.i = phi i32 [ %.1.i.i.i, %_ZN5arrow13ChunkResolver6BisectEmPKmjj.exit.loopexit.i.i ], [ %i.i, %bb.b ], [ %.015.i, %bb.c ]
  %i.ac = trunc i32 %.0.i.i to i8
  %i.ad = trunc i64 %i.ab to i8
  %i.ae = sub i8 %i.l, %i.ad
  call void @_ZN5arrow18TypedChunkLocationIhEC1Ehh(ptr noundef nonnull align 1 dereferenceable(2) %5, i8 noundef zeroext %i.ac, i8 noundef zeroext %i.ae)
  %i.af = load i16, ptr %5, align 2               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.01314.i
  store i16 %i.af, ptr %i.ag, align 1
  %.sroa.0.0.extract.trunc.mask.i = and i16 %i.af, 255
  %i.ah = zext nneg i16 %.sroa.0.0.extract.trunc.mask.i to i32
  %i.ai = add nuw nsw i64 %.01314.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ai, %1
  br i1 %exitcond.not.i, label %_ZN5arrow12_GLOBAL__N_117ResolveManyInlineIhEEvjPKllPKT_PNS_18TypedChunkLocationIS4_EEi.exit, label %.lr.ph.i, !llvm.loop !108

_ZN5arrow12_GLOBAL__N_117ResolveManyInlineIhEEvjPKllPKT_PNS_18TypedChunkLocationIS4_EEi.exit: ; preds = %_ZN5arrow12_GLOBAL__N_116ResolveOneInlineIhEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow13ChunkResolver15ResolveManyImplElPKtPNS_18TypedChunkLocationItEEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #4 align 2 {
bb.a:
  %5 = alloca %"struct.arrow::TypedChunkLocation.3", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = load ptr, ptr %0, align 8, !tbaa !41     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 3
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = add i32 %i.h, -1                         ; 2 uses
  %i.j = icmp sgt i64 %1, 0
  br i1 %i.j, label %.lr.ph.i, label %_ZN5arrow12_GLOBAL__N_117ResolveManyInlineItEEvjPKllPKT_PNS_18TypedChunkLocationIS4_EEi.exit

.lr.ph.i:                                         ; preds = %bb.a, %_ZN5arrow12_GLOBAL__N_116ResolveOneInlineItEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i
  %.015.i = phi i32 [ %i.ah, %_ZN5arrow12_GLOBAL__N_116ResolveOneInlineItEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i ], [ %4, %bb.a ] ; 3 uses
  %.01314.i = phi i64 [ %i.ai, %_ZN5arrow12_GLOBAL__N_116ResolveOneInlineItEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i ], [ 0, %bb.a ] ; 3 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.01314.i
  %i.l = load i16, ptr %i.k, align 2, !tbaa !109  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.m = zext i16 %i.l to i64                     ; 3 uses
  %i.n = sext i32 %.015.i to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.n ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !45   ; 3 uses
  %.not.i.i = icmp ugt i64 %i.p, %i.m
  br i1 %.not.i.i, label %.preheader, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.q = icmp eq i32 %.015.i, %i.i
  br i1 %i.q, label %_ZN5arrow12_GLOBAL__N_116ResolveOneInlineItEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !45
  %i.t = icmp ugt i64 %i.s, %i.m
  br i1 %i.t, label %_ZN5arrow12_GLOBAL__N_116ResolveOneInlineItEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i, label %.preheader

.preheader:                                       ; preds = %bb.c, %.lr.ph.i
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.d
  %.013.i.i.i = phi i32 [ %.114.i.i.i, %bb.d ], [ %i.h, %.preheader ] ; 2 uses
  %.0.i.i.i = phi i32 [ %.1.i.i.i, %bb.d ], [ 0, %.preheader ] ; 2 uses
  %i.u = lshr i32 %.013.i.i.i, 1                  ; 3 uses
  %i.v = add i32 %.0.i.i.i, %i.u                  ; 2 uses
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !45
  %.not.i.i.i = icmp ugt i64 %i.y, %i.m           ; 2 uses
  %i.z = sub i32 %.013.i.i.i, %i.u
  %.114.i.i.i = select i1 %.not.i.i.i, i32 %i.u, i32 %i.z ; 2 uses
  %.1.i.i.i = select i1 %.not.i.i.i, i32 %.0.i.i.i, i32 %i.v ; 3 uses
  %i.aa = icmp ugt i32 %.114.i.i.i, 1
  br i1 %i.aa, label %bb.d, label %_ZN5arrow13ChunkResolver6BisectEmPKmjj.exit.loopexit.i.i, !llvm.loop !107

_ZN5arrow13ChunkResolver6BisectEmPKmjj.exit.loopexit.i.i: ; preds = %bb.d
  %.pre.i.i = sext i32 %.1.i.i.i to i64
  %.phi.trans.insert.i.i = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.pre.i.i
  %.pre18.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !45
  br label %_ZN5arrow12_GLOBAL__N_116ResolveOneInlineItEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i

_ZN5arrow12_GLOBAL__N_116ResolveOneInlineItEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i: ; preds = %_ZN5arrow13ChunkResolver6BisectEmPKmjj.exit.loopexit.i.i, %bb.c, %bb.b
  %i.ab = phi i64 [ %.pre18.i.i, %_ZN5arrow13ChunkResolver6BisectEmPKmjj.exit.loopexit.i.i ], [ %i.p, %bb.b ], [ %i.p, %bb.c ]
  %.0.i.i = phi i32 [ %.1.i.i.i, %_ZN5arrow13ChunkResolver6BisectEmPKmjj.exit.loopexit.i.i ], [ %i.i, %bb.b ], [ %.015.i, %bb.c ]
  %i.ac = trunc i32 %.0.i.i to i16
  %i.ad = trunc i64 %i.ab to i16
  %i.ae = sub i16 %i.l, %i.ad
  call void @_ZN5arrow18TypedChunkLocationItEC1Ett(ptr noundef nonnull align 2 dereferenceable(4) %5, i16 noundef zeroext %i.ac, i16 noundef zeroext %i.ae)
  %i.af = load i32, ptr %5, align 4               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.01314.i
  store i32 %i.af, ptr %i.ag, align 2
  %i.ah = and i32 %i.af, 65535
  %i.ai = add nuw nsw i64 %.01314.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ai, %1
  br i1 %exitcond.not.i, label %_ZN5arrow12_GLOBAL__N_117ResolveManyInlineItEEvjPKllPKT_PNS_18TypedChunkLocationIS4_EEi.exit, label %.lr.ph.i, !llvm.loop !110

_ZN5arrow12_GLOBAL__N_117ResolveManyInlineItEEvjPKllPKT_PNS_18TypedChunkLocationIS4_EEi.exit: ; preds = %_ZN5arrow12_GLOBAL__N_116ResolveOneInlineItEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow13ChunkResolver15ResolveManyImplElPKjPNS_18TypedChunkLocationIjEEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #4 align 2 {
bb.a:
  %5 = alloca %"struct.arrow::TypedChunkLocation.4", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = load ptr, ptr %0, align 8, !tbaa !41     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 3
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = add i32 %i.h, -1                         ; 2 uses
  %i.j = icmp sgt i64 %1, 0
  br i1 %i.j, label %.lr.ph.i, label %_ZN5arrow12_GLOBAL__N_117ResolveManyInlineIjEEvjPKllPKT_PNS_18TypedChunkLocationIS4_EEi.exit

.lr.ph.i:                                         ; preds = %bb.a, %_ZN5arrow12_GLOBAL__N_116ResolveOneInlineIjEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i
  %.015.i = phi i32 [ %.sroa.0.0.extract.trunc.i, %_ZN5arrow12_GLOBAL__N_116ResolveOneInlineIjEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i ], [ %4, %bb.a ] ; 3 uses
  %.01314.i = phi i64 [ %i.ag, %_ZN5arrow12_GLOBAL__N_116ResolveOneInlineIjEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i ], [ 0, %bb.a ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.01314.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.m = zext i32 %i.l to i64                     ; 3 uses
  %i.n = sext i32 %.015.i to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.n ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !45   ; 3 uses
  %.not.i.i = icmp ugt i64 %i.p, %i.m
  br i1 %.not.i.i, label %.preheader, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.q = icmp eq i32 %.015.i, %i.i
  br i1 %i.q, label %_ZN5arrow12_GLOBAL__N_116ResolveOneInlineIjEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !45
  %i.t = icmp ugt i64 %i.s, %i.m
  br i1 %i.t, label %_ZN5arrow12_GLOBAL__N_116ResolveOneInlineIjEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i, label %.preheader

.preheader:                                       ; preds = %bb.c, %.lr.ph.i
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.d
  %.013.i.i.i = phi i32 [ %.114.i.i.i, %bb.d ], [ %i.h, %.preheader ] ; 2 uses
  %.0.i.i.i = phi i32 [ %.1.i.i.i, %bb.d ], [ 0, %.preheader ] ; 2 uses
  %i.u = lshr i32 %.013.i.i.i, 1                  ; 3 uses
  %i.v = add i32 %.0.i.i.i, %i.u                  ; 2 uses
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !45
  %.not.i.i.i = icmp ugt i64 %i.y, %i.m           ; 2 uses
  %i.z = sub i32 %.013.i.i.i, %i.u
  %.114.i.i.i = select i1 %.not.i.i.i, i32 %i.u, i32 %i.z ; 2 uses
  %.1.i.i.i = select i1 %.not.i.i.i, i32 %.0.i.i.i, i32 %i.v ; 3 uses
  %i.aa = icmp ugt i32 %.114.i.i.i, 1
  br i1 %i.aa, label %bb.d, label %_ZN5arrow13ChunkResolver6BisectEmPKmjj.exit.loopexit.i.i, !llvm.loop !107

_ZN5arrow13ChunkResolver6BisectEmPKmjj.exit.loopexit.i.i: ; preds = %bb.d
  %.pre.i.i = sext i32 %.1.i.i.i to i64
  %.phi.trans.insert.i.i = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.pre.i.i
  %.pre18.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !45
  br label %_ZN5arrow12_GLOBAL__N_116ResolveOneInlineIjEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i

_ZN5arrow12_GLOBAL__N_116ResolveOneInlineIjEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i: ; preds = %_ZN5arrow13ChunkResolver6BisectEmPKmjj.exit.loopexit.i.i, %bb.c, %bb.b
  %i.ab = phi i64 [ %.pre18.i.i, %_ZN5arrow13ChunkResolver6BisectEmPKmjj.exit.loopexit.i.i ], [ %i.p, %bb.b ], [ %i.p, %bb.c ]
  %.0.i.i = phi i32 [ %.1.i.i.i, %_ZN5arrow13ChunkResolver6BisectEmPKmjj.exit.loopexit.i.i ], [ %i.i, %bb.b ], [ %.015.i, %bb.c ]
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = sub i32 %i.l, %i.ac
  call void @_ZN5arrow18TypedChunkLocationIjEC1Ejj(ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef %.0.i.i, i32 noundef %i.ad)
  %i.ae = load i64, ptr %5, align 8               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.ae to i32
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.01314.i
  store i64 %i.ae, ptr %i.af, align 4
  %i.ag = add nuw nsw i64 %.01314.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %1
  br i1 %exitcond.not.i, label %_ZN5arrow12_GLOBAL__N_117ResolveManyInlineIjEEvjPKllPKT_PNS_18TypedChunkLocationIS4_EEi.exit, label %.lr.ph.i, !llvm.loop !111

_ZN5arrow12_GLOBAL__N_117ResolveManyInlineIjEEvjPKllPKT_PNS_18TypedChunkLocationIS4_EEi.exit: ; preds = %_ZN5arrow12_GLOBAL__N_116ResolveOneInlineIjEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow13ChunkResolver15ResolveManyImplElPKmPNS_18TypedChunkLocationImEEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #4 align 2 {
bb.a:
  %5 = alloca %"struct.arrow::TypedChunkLocation.6", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = load ptr, ptr %0, align 8, !tbaa !41     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 3
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = add i32 %i.h, -1
  %i.j = icmp sgt i64 %1, 0
  br i1 %i.j, label %.lr.ph.i, label %_ZN5arrow12_GLOBAL__N_117ResolveManyInlineImEEvjPKllPKT_PNS_18TypedChunkLocationIS4_EEi.exit

.lr.ph.i:                                         ; preds = %bb.a, %_ZN5arrow12_GLOBAL__N_116ResolveOneInlineImEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i
  %.015.i = phi i32 [ %i.ae, %_ZN5arrow12_GLOBAL__N_116ResolveOneInlineImEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i ], [ %4, %bb.a ] ; 2 uses
  %.01314.i = phi i64 [ %i.af, %_ZN5arrow12_GLOBAL__N_116ResolveOneInlineImEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i ], [ 0, %bb.a ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.01314.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !45   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.m = sext i32 %.015.i to i64                  ; 3 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.m ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !45   ; 3 uses
  %.not.i.i = icmp ult i64 %i.l, %i.o
  br i1 %.not.i.i, label %.preheader, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.p = icmp eq i32 %.015.i, %i.i
  br i1 %i.p, label %_ZN5arrow12_GLOBAL__N_116ResolveOneInlineImEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %i.n, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !45
  %i.s = icmp ult i64 %i.l, %i.r
  br i1 %i.s, label %_ZN5arrow12_GLOBAL__N_116ResolveOneInlineImEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i, label %.preheader

.preheader:                                       ; preds = %bb.c, %.lr.ph.i
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.d
  %.013.i.i.i = phi i32 [ %.114.i.i.i, %bb.d ], [ %i.h, %.preheader ] ; 2 uses
  %.0.i.i.i = phi i32 [ %.1.i.i.i, %bb.d ], [ 0, %.preheader ] ; 2 uses
  %i.t = lshr i32 %.013.i.i.i, 1                  ; 3 uses
  %i.u = add i32 %.0.i.i.i, %i.t                  ; 2 uses
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !45
  %.not.i.i.i = icmp ult i64 %i.l, %i.x           ; 2 uses
  %i.y = sub i32 %.013.i.i.i, %i.t
  %.114.i.i.i = select i1 %.not.i.i.i, i32 %i.t, i32 %i.y ; 2 uses
  %.1.i.i.i = select i1 %.not.i.i.i, i32 %.0.i.i.i, i32 %i.u ; 2 uses
  %i.z = icmp ugt i32 %.114.i.i.i, 1
  br i1 %i.z, label %bb.d, label %_ZN5arrow13ChunkResolver6BisectEmPKmjj.exit.loopexit.i.i, !llvm.loop !107

_ZN5arrow13ChunkResolver6BisectEmPKmjj.exit.loopexit.i.i: ; preds = %bb.d
  %.pre.i.i = sext i32 %.1.i.i.i to i64           ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.pre.i.i
  %.pre18.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !45
  br label %_ZN5arrow12_GLOBAL__N_116ResolveOneInlineImEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i

_ZN5arrow12_GLOBAL__N_116ResolveOneInlineImEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i: ; preds = %_ZN5arrow13ChunkResolver6BisectEmPKmjj.exit.loopexit.i.i, %bb.c, %bb.b
  %i.aa = phi i64 [ %.pre18.i.i, %_ZN5arrow13ChunkResolver6BisectEmPKmjj.exit.loopexit.i.i ], [ %i.o, %bb.b ], [ %i.o, %bb.c ]
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %_ZN5arrow13ChunkResolver6BisectEmPKmjj.exit.loopexit.i.i ], [ %i.m, %bb.b ], [ %i.m, %bb.c ]
  %i.ab = sub i64 %i.l, %i.aa
  call void @_ZN5arrow18TypedChunkLocationImEC1Emm(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef %.pre-phi.i.i, i64 noundef %i.ab)
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.01314.i
  %i.ad = load <2 x i64>, ptr %5, align 16
  %.fca.0.load.i.i = load i64, ptr %5, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store <2 x i64> %i.ad, ptr %i.ac, align 8, !tbaa !45
  %i.ae = trunc i64 %.fca.0.load.i.i to i32
  %i.af = add nuw nsw i64 %.01314.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.af, %1
  br i1 %exitcond.not.i, label %_ZN5arrow12_GLOBAL__N_117ResolveManyInlineImEEvjPKllPKT_PNS_18TypedChunkLocationIS4_EEi.exit, label %.lr.ph.i, !llvm.loop !112

_ZN5arrow12_GLOBAL__N_117ResolveManyInlineImEEvjPKllPKT_PNS_18TypedChunkLocationIS4_EEi.exit: ; preds = %_ZN5arrow12_GLOBAL__N_116ResolveOneInlineImEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn }
attributes #3 = { mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { noreturn }
attributes #13 = { builtin allocsize(0) }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !4, i64 0}
!8 = !{!"_ZTSN5arrow18TypedChunkLocationIiEE", !4, i64 0, !4, i64 4}
!9 = !{!8, !4, i64 4}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSN5arrow18TypedChunkLocationIsEE", !12, i64 0, !12, i64 2}
!12 = !{!"short", !5, i64 0}
!13 = !{!11, !12, i64 2}
!14 = !{!15, !5, i64 0}
!15 = !{!"_ZTSN5arrow18TypedChunkLocationIaEE", !5, i64 0, !5, i64 1}
!16 = !{!15, !5, i64 1}
!17 = !{!18, !5, i64 0}
!18 = !{!"_ZTSN5arrow18TypedChunkLocationIhEE", !5, i64 0, !5, i64 1}
!19 = !{!18, !5, i64 1}
!20 = !{!21, !12, i64 0}
!21 = !{!"_ZTSN5arrow18TypedChunkLocationItEE", !12, i64 0, !12, i64 2}
!22 = !{!21, !12, i64 2}
!23 = !{!24, !4, i64 0}
!24 = !{!"_ZTSN5arrow18TypedChunkLocationIjEE", !4, i64 0, !4, i64 4}
!25 = !{!24, !4, i64 4}
!26 = !{!27, !28, i64 0}
!27 = !{!"_ZTSN5arrow18TypedChunkLocationIlEE", !28, i64 0, !28, i64 8}
!28 = !{!"long", !5, i64 0}
!29 = !{!27, !28, i64 8}
!30 = !{!31, !28, i64 0}
!31 = !{!"_ZTSN5arrow18TypedChunkLocationImEE", !28, i64 0, !28, i64 8}
!32 = !{!31, !28, i64 8}
!33 = !{!34, !35, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!35 = !{!"p1 _ZTSSt10shared_ptrIN5arrow5ArrayEE", !36, i64 0}
!36 = !{!"any pointer", !5, i64 0}
!37 = !{!34, !35, i64 8}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZN5arrow12_GLOBAL__N_117MakeChunksOffsetsIKSt10shared_ptrINS_5ArrayEEEESt6vectorIlSaIlEENS_4util4spanIT_EE: argument 0"}
!40 = distinct !{!40, !"_ZN5arrow12_GLOBAL__N_117MakeChunksOffsetsIKSt10shared_ptrINS_5ArrayEEEESt6vectorIlSaIlEENS_4util4spanIT_EE"}
!41 = !{!42, !43, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !43, i64 0, !43, i64 8, !43, i64 16}
!43 = !{!"p1 long", !36, i64 0}
!44 = !{!42, !43, i64 16}
!45 = !{!28, !28, i64 0}
!46 = !{!42, !43, i64 8}
!47 = !{!48, !49, i64 0}
!48 = !{!"_ZTSSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EE", !49, i64 0, !50, i64 8}
!49 = !{!"p1 _ZTSN5arrow5ArrayE", !36, i64 0}
!50 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !51, i64 0}
!51 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !36, i64 0}
!52 = !{!53, !54, i64 0}
!53 = !{!"_ZTSSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EE", !54, i64 0, !50, i64 8}
!54 = !{!"p1 _ZTSN5arrow9ArrayDataE", !36, i64 0}
!55 = !{!56, !28, i64 16}
!56 = !{!"_ZTSN5arrow9ArrayDataE", !57, i64 0, !28, i64 16, !60, i64 24, !28, i64 32, !62, i64 40, !67, i64 64, !72, i64 88, !73, i64 104}
!57 = !{!"_ZTSSt10shared_ptrIN5arrow8DataTypeEE", !58, i64 0}
!58 = !{!"_ZTSSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE", !59, i64 0, !50, i64 8}
!59 = !{!"p1 _ZTSN5arrow8DataTypeE", !36, i64 0}
!60 = !{!"_ZTSSt6atomicIlE", !61, i64 0}
!61 = !{!"_ZTSSt13__atomic_baseIlE", !28, i64 0}
!62 = !{!"_ZTSSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE", !63, i64 0}
!63 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE", !64, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_Vector_implE", !65, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!66 = !{!"p1 _ZTSSt10shared_ptrIN5arrow6BufferEE", !36, i64 0}
!67 = !{!"_ZTSSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE", !68, i64 0}
!68 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE", !69, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12_Vector_implE", !70, i64 0}
!70 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!71 = !{!"p1 _ZTSSt10shared_ptrIN5arrow9ArrayDataEE", !36, i64 0}
!72 = !{!"_ZTSSt10shared_ptrIN5arrow9ArrayDataEE", !53, i64 0}
!73 = !{!"_ZTSSt10shared_ptrIN5arrow15ArrayStatisticsEE", !74, i64 0}
!74 = !{!"_ZTSSt12__shared_ptrIN5arrow15ArrayStatisticsELN9__gnu_cxx12_Lock_policyE2EE", !75, i64 0, !50, i64 8}
!75 = !{!"p1 _ZTSN5arrow15ArrayStatisticsE", !36, i64 0}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.mustprogress"}
!78 = !{!79, !4, i64 0}
!79 = !{!"_ZTSSt13__atomic_baseIiE", !4, i64 0}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZN5arrow12_GLOBAL__N_117MakeChunksOffsetsIKPKNS_5ArrayEEESt6vectorIlSaIlEENS_4util4spanIT_EE: argument 0"}
!82 = distinct !{!82, !"_ZN5arrow12_GLOBAL__N_117MakeChunksOffsetsIKPKNS_5ArrayEEESt6vectorIlSaIlEENS_4util4spanIT_EE"}
!83 = !{!49, !49, i64 0}
!84 = distinct !{!84, !77}
!85 = distinct !{!85, !86}
!86 = !{!"llvm.loop.unroll.disable"}
!87 = !{!88, !89, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EE17_Vector_impl_dataE", !89, i64 0, !89, i64 8, !89, i64 16}
!89 = !{!"p1 _ZTSSt10shared_ptrIN5arrow11RecordBatchEE", !36, i64 0}
!90 = !{!88, !89, i64 8}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZN5arrow12_GLOBAL__N_117MakeChunksOffsetsIKSt10shared_ptrINS_11RecordBatchEEEESt6vectorIlSaIlEENS_4util4spanIT_EE: argument 0"}
!93 = distinct !{!93, !"_ZN5arrow12_GLOBAL__N_117MakeChunksOffsetsIKSt10shared_ptrINS_11RecordBatchEEEESt6vectorIlSaIlEENS_4util4spanIT_EE"}
!94 = !{!95, !96, i64 0}
!95 = !{!"_ZTSSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EE", !96, i64 0, !50, i64 8}
!96 = !{!"p1 _ZTSN5arrow11RecordBatchE", !36, i64 0}
!97 = !{!98, !28, i64 24}
!98 = !{!"_ZTSN5arrow11RecordBatchE", !99, i64 8, !28, i64 24}
!99 = !{!"_ZTSSt10shared_ptrIN5arrow6SchemaEE", !100, i64 0}
!100 = !{!"_ZTSSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EE", !101, i64 0, !50, i64 8}
!101 = !{!"p1 _ZTSN5arrow6SchemaE", !36, i64 0}
!102 = distinct !{!102, !77}
!103 = !{!43, !43, i64 0}
!104 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!105 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!106 = !{!5, !5, i64 0}
!107 = distinct !{!107, !77}
!108 = distinct !{!108, !77}
!109 = !{!12, !12, i64 0}
!110 = distinct !{!110, !77}
!111 = distinct !{!111, !77}
!112 = distinct !{!112, !77}
end_hunk_0
