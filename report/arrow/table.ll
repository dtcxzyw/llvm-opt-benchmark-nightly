inline.NumInlined: 2891
inline.NumDeleted: 1224
begin_hunk_0_@_ZN5arrow18TypedChunkLocationIiEC2Eii:bb.a
  store i32 %1, ptr %0, align 4, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIiEeqES1_(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %i.a = load i32, ptr %0, align 4, !tbaa !7
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
define weak_odr void @_ZN5arrow18TypedChunkLocationIsEC2Ess(ptr noundef nonnull align 2 dereferenceable(4) %0, i16 noundef signext %1, i16 noundef signext %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIsEC5Ess) align 2 {
bb.a:
  store i16 %1, ptr %0, align 2, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %2, ptr %i.a, align 2, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIsEeqES1_(ptr noundef nonnull align 2 dereferenceable(4) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !10
  %i.b = sext i16 %i.a to i32
  %sext = shl i32 %1, 16
  %i.c = ashr exact i32 %sext, 16
  %i.d = icmp eq i32 %i.c, %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i16, ptr %i.e, align 2
  %i.g = sext i16 %i.f to i32
  %i.h = ashr i32 %1, 16
  %i.i = icmp eq i32 %i.h, %i.g
  %i.j = select i1 %i.d, i1 %i.i, i1 false
  ret i1 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIaEC2Eaa(ptr noundef nonnull align 1 dereferenceable(2) %0, i8 noundef signext %1, i8 noundef signext %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIaEC5Eaa) align 2 {
bb.a:
  store i8 %1, ptr %0, align 1, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %2, ptr %i.a, align 1, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIaEeqES1_(ptr noundef nonnull align 1 dereferenceable(2) %0, i16 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = zext i16 %1 to i32
  %i.a = load i8, ptr %0, align 1, !tbaa !14
  %i.b = sext i8 %i.a to i32
  %sext = shl i32 %.sroa.0.0.extract.trunc, 24
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5arrow5TableC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 96) ({ [14 x ptr] }, ptr @_ZTVN5arrow5TableE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow5Table6fieldsEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.7", align 16 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_ZNK5arrow5Table11num_columnsEv.exit unwind label %bb.f ; 2 uses

_ZNK5arrow5Table11num_columnsEv.exit:             ; preds = %bb.a
  %i.d = sext i32 %i.c to i64                     ; 3 uses
  %i.e = icmp slt i32 %i.c, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK5arrow5Table11num_columnsEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #24
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %_ZNK5arrow5Table11num_columnsEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.h = load ptr, ptr %0, align 8, !tbaa !44     ; 5 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = ashr exact i64 %i.k, 4
  %i.m = icmp ult i64 %i.l, %i.d
  br i1 %i.m, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !45   ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.p, %i.j
  %i.r = shl nuw nsw i64 %i.d, 4
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #25
          to label %.noexc13 unwind label %bb.f   ; 4 uses

.noexc13:                                         ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i = icmp eq ptr %i.h, %i.o
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc13, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i ], [ %i.s, %.noexc13 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i ], [ %i.h, %.noexc13 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !51, !alias.scope !49, !noalias !46
  store ptr null, ptr %i.t, align 8, !tbaa !52, !alias.scope !49, !noalias !46
  store <2 x ptr> %i.u, ptr %.012.i.i.i.i, align 8, !tbaa !51, !alias.scope !46, !noalias !49
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !53, !alias.scope !49, !noalias !46
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.v, %i.o
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !56

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc13
  %.not.i8.i = icmp eq ptr %i.h, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.s, ptr %0, align 8, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store ptr %i.x, ptr %i.n, align 8, !tbaa !45
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.d
  store ptr %i.y, ptr %i.f, align 8, !tbaa !41
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE7reserveEm.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE7reserveEm.exit, %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.0 = phi i32 [ %i.bl, %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ 0, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE7reserveEm.exit ] ; 3 uses
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.ac = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %_ZNK5arrow5Table11num_columnsEv.exit15 unwind label %bb.g

_ZNK5arrow5Table11num_columnsEv.exit15:           ; preds = %bb.e
  %i.ad = icmp slt i32 %.0, %i.ac
  br i1 %i.ad, label %bb.h, label %bb.w

bb.f:                                             ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_M_allocateEm.exit.i, %bb.b, %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.g:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.h:                                             ; preds = %_ZNK5arrow5Table11num_columnsEv.exit15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !35, !noalias !58
  %i.ah = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i32 noundef %.0)
          to label %.noexc17 unwind label %bb.t   ; 2 uses

.noexc17:                                         ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !52, !noalias !58 ; 2 uses
  %i.ak = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !51, !noalias !58
  store <2 x ptr> %i.ak, ptr %2, align 16, !tbaa !51, !alias.scope !58
  %.not.i.i.i.i16 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i16, label %_ZNK5arrow5Table5fieldEi.exit, label %bb.i

bb.i:                                             ; preds = %.noexc17
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61, !noalias !58
  %.not.i.i.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = load i32, ptr %i.al, align 4, !tbaa !3, !noalias !58
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.al, align 4, !tbaa !3, !noalias !58
  br label %_ZNK5arrow5Table5fieldEi.exit

bb.k:                                             ; preds = %bb.i
  %i.ap = atomicrmw volatile add ptr %i.al, i32 1 acq_rel, align 4, !noalias !58 ; 0 uses
  br label %_ZNK5arrow5Table5fieldEi.exit

_ZNK5arrow5Table5fieldEi.exit:                    ; preds = %bb.k, %bb.j, %.noexc17
  %i.aq = load ptr, ptr %i.aa, align 8, !tbaa !45 ; 5 uses
  %i.ar = load ptr, ptr %i.f, align 8, !tbaa !41
  %.not.i = icmp eq ptr %i.aq, %i.ar
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNK5arrow5Table5fieldEi.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr null, ptr %i.as, align 8, !tbaa !52
  %i.at = load <2 x ptr>, ptr %2, align 16, !tbaa !51
  store ptr null, ptr %i.z, align 8, !tbaa !52
  store <2 x ptr> %i.at, ptr %i.aq, align 8, !tbaa !51
  store ptr null, ptr %2, align 16, !tbaa !53
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %i.au, ptr %i.aa, align 8, !tbaa !45
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.m:                                             ; preds = %_ZNK5arrow5Table5fieldEi.exit
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit unwind label %bb.u

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %bb.m, %bb.l
  %i.av = load ptr, ptr %i.z, align 8, !tbaa !52  ; 8 uses
  %.not.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 4 uses
  %i.ax = load atomic i64, ptr %i.aw acquire, align 8 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 4294967297
  %i.az = trunc i64 %i.ax to i32                  ; 2 uses
  br i1 %i.ay, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.aw, align 8, !tbaa !62
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i32 0, ptr %i.ba, align 4, !tbaa !64
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !33
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #27, !inline_history !65
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !33
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #27, !inline_history !65
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = add nsw i32 %i.az, -1
  store i32 %i.bi, ptr %i.aw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bj = atomicrmw volatile add ptr %i.aw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i = phi i32 [ %i.az, %bb.q ], [ %i.bj, %bb.r ]
  %i.bk = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bk, label %bb.s, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #27
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.bl = add nuw nsw i32 %.0, 1
  br label %bb.e, !llvm.loop !67

bb.t:                                             ; preds = %bb.h
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.m
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #27
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.u ], [ %i.bm, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.x

bb.w:                                             ; preds = %_ZNK5arrow5Table11num_columnsEv.exit15
  ret void

bb.x:                                             ; preds = %bb.g, %bb.v, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ae, %bb.f ], [ %.pn, %bb.v ], [ %i.af, %bb.g ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #27
  resume { ptr, i32 } %.pn.pn.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !62
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !64
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #27, !inline_history !68
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #27, !inline_history !68
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !69

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !44
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !41
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow5Table4MakeESt10shared_ptrINS_6SchemaEESt6vectorIS1_INS_12ChunkedArrayEESaIS6_EEl(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.10") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25, !noalias !70, !inline_history !75 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !62, !noalias !76
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !64, !noalias !76
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow11SimpleTableESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.a, align 8, !tbaa !33, !noalias !76
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.i = load <2 x ptr>, ptr %1, align 8, !tbaa !51, !noalias !76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !noalias !76
  %i.j = load ptr, ptr %2, align 8, !tbaa !77, !noalias !76 ; 3 uses
  %i.k = load <2 x ptr>, ptr %i.e, align 8, !tbaa !80, !noalias !76
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !81, !noalias !76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !noalias !76
  store ptr getelementptr inbounds inrange(-16, 96) ({ [14 x ptr] }, ptr @_ZTVN5arrow11SimpleTableE, i32 0, i32 0, i32 2), ptr %i.d, align 8, !tbaa !33, !noalias !76
  store ptr %i.j, ptr %i.g, align 8, !tbaa !77, !noalias !76
  store <2 x ptr> %i.k, ptr %i.h, align 8, !tbaa !80, !noalias !76
  store <2 x ptr> %i.i, ptr %i.f, align 8, !tbaa !51, !noalias !76
  %i.m = icmp slt i64 %3, 0
  br i1 %i.m, label %bb.b, label %_ZNSt12__shared_ptrIN5arrow11SimpleTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.n = icmp eq ptr %i.l, %i.j
  br i1 %i.n, label %_ZNSt12__shared_ptrIN5arrow11SimpleTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !82, !noalias !76
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !85, !noalias !76
  br label %_ZNSt12__shared_ptrIN5arrow11SimpleTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow11SimpleTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink.i.i.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.q, %bb.c ], [ %3, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sink.i.i.i.i.i.i.i, ptr %i.r, align 8, !tbaa !103, !noalias !76
  store ptr %i.d, ptr %0, align 8, !tbaa !106
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.s, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow5Table4MakeESt10shared_ptrINS_6SchemaEERKSt6vectorIS1_INS_5ArrayEESaIS6_EEl(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.10") align 8 captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %3, ptr %i.a, align 8, !tbaa !109
  %i.b = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25, !noalias !110 ; 4 uses
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow11SimpleTableESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrINS0_6SchemaEERKSt6vectorIS7_INS0_5ArrayEESaISC_EERlEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSt12__shared_ptrIN5arrow11SimpleTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow11SimpleTableESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i, !noalias !115

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow11SimpleTableESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i: ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 72) #26, !noalias !115
  resume { ptr, i32 } %i.c

_ZNSt12__shared_ptrIN5arrow11SimpleTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %0, align 8, !tbaa !106
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.e, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow5Table9MakeEmptyESt10shared_ptrINS_6SchemaEEPNS_10MemoryPoolE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr nofree noundef captures(none) %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.13", align 8    ; 12 uses
  %4 = alloca %"class.arrow::Result.34", align 8  ; 10 uses
  %5 = alloca %"class.std::shared_ptr.38", align 16 ; 4 uses
  %6 = alloca %"class.std::shared_ptr", align 16  ; 5 uses
  %7 = alloca %"class.std::vector.13", align 8    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = load ptr, ptr %1, align 8, !tbaa !35
  %i.b = tail call noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a) ; 3 uses
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = icmp slt i32 %i.b, 0
  br i1 %i.d, label %.noexc, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #24
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.a
  store i64 0, ptr %3, align 8
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EEC2EmRKS4_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.e = shl nuw nsw i64 %i.c, 4                  ; 3 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #25 ; 4 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !77
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.c
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.f, i64 %i.e
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EEC2EmRKS4_.exit.thread.i

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EEC2EmRKS4_.exit.thread.i: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i, %.lr.ph.preheader.i.i.i.i.i
  %.sink.i = phi ptr [ %i.g, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %.sink.i, ptr %i.i, align 8, !tbaa !116
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.h, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEED2Ev.exit, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EEC2EmRKS4_.exit.thread.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEED2Ev.exit ], [ 0, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EEC2EmRKS4_.exit.thread.i ] ; 4 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !35
  %i.n = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = sext i32 %i.n to i64
  %.not = icmp slt i64 %indvars.iv, %i.o
  br i1 %.not, label %bb.e, label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.q = load ptr, ptr %1, align 8, !tbaa !35
  %i.r = trunc nuw nsw i64 %indvars.iv to i32
  %i.s = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i32 noundef %i.r)
          to label %bb.f unwind label %bb.s

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !53   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !52   ; 2 uses
  %i.x = load <2 x ptr>, ptr %i.u, align 8, !tbaa !51
  store <2 x ptr> %i.x, ptr %5, align 16, !tbaa !51
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i29 = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i29, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !3
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = atomicrmw volatile add ptr %i.y, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.f, %bb.h, %bb.i
  invoke void @_ZN5arrow12ChunkedArray9MakeEmptyESt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.34") align 8 %4, ptr noundef nonnull %5, ptr noundef %2)
          to label %bb.j unwind label %bb.t

bb.j:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !52  ; 8 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ae, align 8, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !64
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !33
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #27, !inline_history !117
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !33
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #27, !inline_history !117
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i30 = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i30, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.ah, %bb.n ], [ %i.ar, %bb.o ]
  %i.as = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.as, label %bb.p, label %bb.q, !prof !66

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #27
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.l, %bb.j
  %i.at = load ptr, ptr %4, align 8, !tbaa !118
  %i.au = icmp eq ptr %i.at, null                 ; 2 uses
  br i1 %i.au, label %bb.u, label %bb.r, !prof !121
end_hunk_0
begin_hunk_1_@_ZN5arrow5Table9MakeEmptyESt10shared_ptrINS_6SchemaEEPNS_10MemoryPoolE:bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #27, !inline_history !127
  %i.bk = load ptr, ptr %i.bb, align 8, !tbaa !33
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #27, !inline_history !127
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.bn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = add nsw i32 %i.bf, -1
  store i32 %i.bo, ptr %i.bc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.bp = atomicrmw volatile add ptr %i.bc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i = phi i32 [ %i.bf, %bb.y ], [ %i.bp, %bb.z ]
  %i.bq = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bq, label %bb.aa, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #27
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.u, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.aa, %bb.r
  %i.br = load ptr, ptr %4, align 8, !tbaa !118   ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.ab, label %_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEE7DestroyEv.exit.thread.i, !prof !121

bb.ab:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bt = load ptr, ptr %i.l, align 8, !tbaa !52  ; 8 uses
  %.not.i.i.i.i.i36 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i.i36, label %_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 4 uses
  %i.bv = load atomic i64, ptr %i.bu acquire, align 8 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 4294967297
  %i.bx = trunc i64 %i.bv to i32                  ; 2 uses
  br i1 %i.bw, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.bu, align 8, !tbaa !62
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  store i32 0, ptr %i.by, align 4, !tbaa !64
  %i.bz = load ptr, ptr %i.bt, align 8, !tbaa !33
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #27, !inline_history !128
  %i.cc = load ptr, ptr %i.bt, align 8, !tbaa !33
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #27, !inline_history !128
  br label %_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEE7DestroyEv.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.cf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cf, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cg = add nsw i32 %i.bx, -1
  store i32 %i.cg, ptr %i.bu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.ch = atomicrmw volatile add ptr %i.bu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bx, %bb.af ], [ %i.ch, %bb.ag ]
  %i.ci = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ci, label %bb.ah, label %_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEE7DestroyEv.exit.i, !prof !66

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEE7DestroyEv.exit.i: ; preds = %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ad
  %.pr.i.pr = load ptr, ptr %4, align 8, !tbaa !118 ; 2 uses
  %.not.i.i37 = icmp eq ptr %.pr.i.pr, null
  br i1 %.not.i.i37, label %_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEE7DestroyEv.exit.thread.i, !prof !129

_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEE7DestroyEv.exit.i, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cj = phi ptr [ %.pr.i.pr, %_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEE7DestroyEv.exit.i ], [ %i.br, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !130, !range !140, !noundef !141
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEED2Ev.exit: ; preds = %bb.ab, %_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEE7DestroyEv.exit.thread.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.au, label %bb.b, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !llvm.loop !142

.critedge:                                        ; preds = %bb.c
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cp = load <2 x ptr>, ptr %1, align 8, !tbaa !51
  store ptr null, ptr %i.co, align 8, !tbaa !52
  store <2 x ptr> %i.cp, ptr %6, align 16, !tbaa !51
  store ptr null, ptr %1, align 8, !tbaa !35
  %i.cq = load ptr, ptr %i.h, align 8, !tbaa !81  ; 3 uses
  %i.cr = load ptr, ptr %3, align 8, !tbaa !77    ; 3 uses
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %.not.i.i.i.i38 = icmp eq ptr %i.cq, %i.cr
  br i1 %.not.i.i.i.i38, label %.noexc41.thread, label %bb.aj

.noexc41.thread:                                  ; preds = %.critedge
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr null, i64 %i.cu
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !116
  br label %.loopexit

bb.aj:                                            ; preds = %.critedge
  %i.cy = icmp ugt i64 %i.cu, 9223372036854775792
  br i1 %i.cy, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow12ChunkedArrayEEE8allocateEmPKv.exit.i.i.i.i, !prof !66

.noexc.i.i:                                       ; preds = %bb.aj
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc40 unwind label %bb.at

.noexc40:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt10shared_ptrIN5arrow12ChunkedArrayEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.aj
  %i.cz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #25
          to label %.noexc41 unwind label %bb.at  ; 4 uses

.noexc41:                                         ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow12ChunkedArrayEEE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.cz, ptr %7, align 8, !tbaa !77
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !81
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cu
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !116
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc41, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.dm, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.cz, %.noexc41 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.dl, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.cr, %.noexc41 ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !52 ; 2 uses
  %i.df = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !51
  store <2 x ptr> %i.df, ptr %.08.i.i.i.i.i, align 8, !tbaa !51
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 3 uses
  %i.dh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.dh, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !3
  %i.dj = add nsw i32 %i.di, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.dk = atomicrmw volatile add ptr %i.dg, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.am, %bb.al, %.lr.ph.i.i.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.cq
  br i1 %i.dn, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !143

.loopexit:                                        ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, %.noexc41.thread
  %i.do = phi ptr [ %i.cx, %.noexc41.thread ], [ %i.dc, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.dp = phi ptr [ %i.cv, %.noexc41.thread ], [ %i.da, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i39 = phi ptr [ null, %.noexc41.thread ], [ %i.dm, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i39, ptr %i.dp, align 8, !tbaa !81
  %i.dq = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25
          to label %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.au, !inline_history !144 ; 10 uses

_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.loopexit
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store i32 1, ptr %i.dr, align 8, !tbaa !62, !noalias !145
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  store i32 1, ptr %i.ds, align 4, !tbaa !64, !noalias !145
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow11SimpleTableESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.dq, align 8, !tbaa !33, !noalias !145
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 48
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 56
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 64
  %i.dy = load <2 x ptr>, ptr %6, align 16, !tbaa !51, !noalias !145
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, i8 0, i64 16, i1 false), !noalias !145
  %i.dz = load ptr, ptr %7, align 8, !tbaa !77, !noalias !145
  %i.ea = load ptr, ptr %i.do, align 8, !tbaa !116, !noalias !145
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false), !noalias !145
  store ptr getelementptr inbounds inrange(-16, 96) ({ [14 x ptr] }, ptr @_ZTVN5arrow11SimpleTableE, i32 0, i32 0, i32 2), ptr %i.dt, align 8, !tbaa !33, !noalias !145
  store ptr %i.dz, ptr %i.dv, align 8, !tbaa !77, !noalias !145
  store ptr %.0.lcssa.i.i.i.i.i39, ptr %i.dw, align 8, !tbaa !81, !noalias !145
  store ptr %i.ea, ptr %i.dx, align 8, !tbaa !116, !noalias !145
  store <2 x ptr> %i.dy, ptr %i.du, align 8, !tbaa !51, !noalias !145
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dq, i64 40
  store i64 0, ptr %i.eb, align 8, !tbaa !103, !noalias !145
  store ptr null, ptr %0, align 8, !tbaa !118
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dt, ptr %i.ec, align 8, !tbaa !106
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.dq, ptr %i.ed, align 8, !tbaa !52
  %i.ee = load ptr, ptr %i.cn, align 8, !tbaa !52 ; 8 uses
  %.not.i.i49 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i49, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 4 uses
  %i.eg = load atomic i64, ptr %i.ef acquire, align 8 ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 4294967297
  %i.ei = trunc i64 %i.eg to i32                  ; 2 uses
  br i1 %i.eh, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.ef, align 8, !tbaa !62
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  store i32 0, ptr %i.ej, align 4, !tbaa !64
  %i.ek = load ptr, ptr %i.ee, align 8, !tbaa !33
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #27, !inline_history !150
  %i.en = load ptr, ptr %i.ee, align 8, !tbaa !33
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #27, !inline_history !150
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ap:                                            ; preds = %bb.an
  %i.eq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i50 = icmp eq i8 %i.eq, 0
  br i1 %.not.i.i.i50, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.er = add nsw i32 %i.ei, -1
  store i32 %i.er, ptr %i.ef, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51

bb.ar:                                            ; preds = %bb.ap
  %i.es = atomicrmw volatile add ptr %i.ef, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i.i52 = phi i32 [ %i.ei, %bb.aq ], [ %i.es, %bb.ar ]
  %i.et = icmp eq i32 %.0.i.i.i.i52, 1
  br i1 %i.et, label %bb.as, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.as:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #27
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.at:                                            ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow12ChunkedArrayEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.au:                                            ; preds = %.loopexit
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #27
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.pn24 = phi { ptr, i32 } [ %i.ev, %bb.au ], [ %i.eu, %bb.at ]
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #27
  br label %bb.bd

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEED2Ev.exit, %bb.as, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51, %bb.ao, %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ew = load ptr, ptr %3, align 8, !tbaa !77    ; 3 uses
  %i.ex = load ptr, ptr %i.h, align 8, !tbaa !81  ; 2 uses
  %.not4.i.i.i53 = icmp eq ptr %i.ew, %i.ex
  br i1 %.not4.i.i.i53, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i64, label %.lr.ph.i.i.i54

.lr.ph.i.i.i54:                                   ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i60
  %.05.i.i.i55 = phi ptr [ %i.fp, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i60 ], [ %i.ew, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.05.i.i.i55, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i.i56 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i.i.i.i.i56, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i60, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i.i.i54
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 4 uses
  %i.fb = load atomic i64, ptr %i.fa acquire, align 8 ; 2 uses
  %i.fc = icmp eq i64 %i.fb, 4294967297
  %i.fd = trunc i64 %i.fb to i32                  ; 2 uses
  br i1 %i.fc, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 0, ptr %i.fa, align 8, !tbaa !62
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  store i32 0, ptr %i.fe, align 4, !tbaa !64
  %i.ff = load ptr, ptr %i.ez, align 8, !tbaa !33
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #27, !inline_history !151
  %i.fi = load ptr, ptr %i.ez, align 8, !tbaa !33
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #27, !inline_history !151
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i60

bb.ay:                                            ; preds = %bb.aw
  %i.fl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i57 = icmp eq i8 %i.fl, 0
  br i1 %.not.i.i.i.i.i.i.i.i57, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fm = add nsw i32 %i.fd, -1
  store i32 %i.fm, ptr %i.fa, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i58

bb.ba:                                            ; preds = %bb.ay
  %i.fn = atomicrmw volatile add ptr %i.fa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i58

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i58: ; preds = %bb.ba, %bb.az
  %.0.i.i.i.i.i.i.i.i.i59 = phi i32 [ %i.fd, %bb.az ], [ %i.fn, %bb.ba ]
  %i.fo = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i59, 1
  br i1 %i.fo, label %bb.bb, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i60, !prof !66

bb.bb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i58
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i60

_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i60: ; preds = %bb.bb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i58, %bb.ax, %.lr.ph.i.i.i54
  %i.fp = getelementptr inbounds nuw i8, ptr %.05.i.i.i55, i64 16 ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %i.fp, %i.ex
  br i1 %.not.i.i.i61, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i62, label %.lr.ph.i.i.i54, !llvm.loop !152

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i62: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i60
  %.pr.i63 = load ptr, ptr %3, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i64

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i64: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i62, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fq = phi ptr [ %.pr.i63, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i62 ], [ %i.ew, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i65 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i1.i65, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit66, label %bb.bc

bb.bc:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i64
  %i.fr = load ptr, ptr %i.i, align 8, !tbaa !116
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %i.fq to i64
  %i.fu = sub i64 %i.fs, %i.ft
  call void @_ZdlPvm(ptr noundef nonnull %i.fq, i64 noundef %i.fu) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit66

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit66: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i64, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.bd:                                            ; preds = %bb.d, %bb.t, %bb.s, %bb.av
  %.pn24.pn = phi { ptr, i32 } [ %.pn24, %bb.av ], [ %i.p, %bb.d ], [ %i.av, %bb.s ], [ %i.aw, %bb.t ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn24.pn
}

declare noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare void @_ZN5arrow12ChunkedArray9MakeEmptyESt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result.34") align 8, ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.43", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !118
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !118
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !66

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
end_hunk_1
begin_hunk_2_@_ZN5arrow5Table17FromRecordBatchesESt10shared_ptrINS_6SchemaEERKSt6vectorIS1_INS_11RecordBatchEESaIS6_EE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !61
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.at = load ptr, ptr %5, align 8, !tbaa !153   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !61
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.bd

bb.h:                                             ; preds = %bb.b
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.i:                                             ; preds = %bb.c
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.az, %bb.i ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i ] ; 2 uses
  %i.ba = load ptr, ptr %6, align 8, !tbaa !153   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %.body
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !61
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.h ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.bf = load ptr, ptr %5, align 8, !tbaa !153   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !61
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.be

bb.j:                                             ; preds = %.lr.ph
  %i.bk = load ptr, ptr %2, align 8, !tbaa !158   ; 2 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %indvars.iv
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !159
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !167
  %i.bp = add nsw i64 %i.bo, %.039120             ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !169

.critedge:                                        ; preds = %bb.j, %bb.a
  %.039.lcssa = phi i64 [ 0, %bb.a ], [ %i.bp, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.bq = sext i32 %i.k to i64                    ; 2 uses
  %i.br = icmp slt i32 %i.k, 0
  br i1 %i.br, label %bb.k, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.k:                                             ; preds = %.critedge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #24
          to label %.noexc56 unwind label %bb.o

.noexc56:                                         ; preds = %bb.k
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %.critedge
  store i64 0, ptr %7, align 8
  %.not.i.i.i.i = icmp eq i32 %i.k, 0             ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EEC2EmRKS4_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.bs = shl nuw nsw i64 %i.bq, 4                ; 3 uses
  %i.bt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #25
          to label %.noexc57 unwind label %bb.o   ; 5 uses

.noexc57:                                         ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.bt, ptr %7, align 8, !tbaa !77
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bq
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bt, i8 0, i64 %i.bs, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.bt, i64 %i.bs
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EEC2EmRKS4_.exit.thread.i

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EEC2EmRKS4_.exit.thread.i: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i, %.noexc57
  %i.bv = phi ptr [ %i.bt, %.noexc57 ], [ null, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ]
  %.sink.i = phi ptr [ %i.bu, %.noexc57 ], [ null, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.noexc57 ], [ null, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %.sink.i, ptr %i.bx, align 8, !tbaa !116
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bw, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %sext = shl i64 %i.g, 28                        ; 3 uses
  %i.by = ashr exact i64 %sext, 32                ; 2 uses
  %i.bz = icmp ugt i64 %i.by, 576460752303423487
  br i1 %i.bz, label %bb.l, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.l:                                             ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EEC2EmRKS4_.exit.thread.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #24
          to label %.noexc63 unwind label %bb.p

.noexc63:                                         ; preds = %bb.l
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EEC2EmRKS4_.exit.thread.i
  store i64 0, ptr %8, align 8
  %.not.i.i.i.i58 = icmp eq i64 %sext, 0
  br i1 %.not.i.i.i.i58, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i59

.lr.ph.preheader.i.i.i.i.i59:                     ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.ca = ashr exact i64 %sext, 28                ; 3 uses
  %i.cb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #25
          to label %.noexc64 unwind label %bb.p   ; 4 uses

.noexc64:                                         ; preds = %.lr.ph.preheader.i.i.i.i.i59
  store ptr %i.cb, ptr %8, align 8, !tbaa !170
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %i.by
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cb, i8 0, i64 %i.ca, i1 false)
  %scevgep.i.i.i.i.i60 = getelementptr i8, ptr %i.cb, i64 %i.ca
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i, %.noexc64
  %.sink.i61 = phi ptr [ %i.cc, %.noexc64 ], [ null, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ]
  %.0.lcssa.i.i.i.i.i62 = phi ptr [ %scevgep.i.i.i.i.i60, %.noexc64 ], [ null, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %.sink.i61, ptr %i.ce, align 8, !tbaa !171
  store ptr %.0.lcssa.i.i.i.i.i62, ptr %i.cd, align 8, !tbaa !172
  br i1 %.not.i.i.i.i, label %._crit_edge125, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i
  %i.cf = getelementptr inbounds nuw i8, ptr %9, i64 8
  %wide.trip.count141 = zext nneg i32 %i.k to i64
  %wide.trip.count136 = and i64 %i.h, 2147483647
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %indvars.iv138 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next139, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %i.cg = trunc nuw nsw i64 %indvars.iv138 to i32 ; 2 uses
  br i1 %.not119, label %.lr.ph123, label %._crit_edge

._crit_edge125.loopexit:                          ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.pre143 = load ptr, ptr %7, align 8, !tbaa !77
  %.pre144 = load ptr, ptr %i.bw, align 8, !tbaa !81
  %.pre145 = load ptr, ptr %i.bx, align 8, !tbaa !116
  br label %._crit_edge125

._crit_edge125:                                   ; preds = %._crit_edge125.loopexit, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i
  %i.ch = phi ptr [ %.pre145, %._crit_edge125.loopexit ], [ %.sink.i, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i ] ; 2 uses
  %i.ci = phi ptr [ %.pre144, %._crit_edge125.loopexit ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i ] ; 3 uses
  %i.cj = phi ptr [ %.pre143, %._crit_edge125.loopexit ], [ %i.bv, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i ] ; 4 uses
  %i.ck = load ptr, ptr %1, align 8, !tbaa !35    ; 2 uses
  store ptr %i.ck, ptr %10, align 8, !tbaa !35
  %i.cl = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !52 ; 2 uses
  store ptr null, ptr %i.cm, align 8, !tbaa !52
  store ptr %i.cn, ptr %i.cl, align 8, !tbaa !52
  store ptr null, ptr %1, align 8, !tbaa !35
  store ptr %i.cj, ptr %11, align 8, !tbaa !77
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.ci, ptr %i.co, align 8, !tbaa !81
  %i.cp = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.ch, ptr %i.cp, align 8, !tbaa !116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.cq = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25
          to label %.noexc65 unwind label %bb.ba, !inline_history !144 ; 11 uses

.noexc65:                                         ; preds = %._crit_edge125
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i32 1, ptr %i.cr, align 8, !tbaa !62, !noalias !173
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i32 1, ptr %i.cs, align 4, !tbaa !64, !noalias !173
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow11SimpleTableESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.cq, align 8, !tbaa !33, !noalias !173
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false), !noalias !173
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false), !noalias !173
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  store ptr getelementptr inbounds inrange(-16, 96) ({ [14 x ptr] }, ptr @_ZTVN5arrow11SimpleTableE, i32 0, i32 0, i32 2), ptr %i.ct, align 8, !tbaa !33, !noalias !173
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  store ptr %i.cj, ptr %i.cv, align 8, !tbaa !77, !noalias !173
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  store ptr %i.ci, ptr %i.cw, align 8, !tbaa !81, !noalias !173
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 64
  store ptr %i.ch, ptr %i.cx, align 8, !tbaa !116, !noalias !173
  store ptr %i.ck, ptr %i.cu, align 8, !tbaa !178, !noalias !173
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  store ptr %i.cn, ptr %i.cy, align 8, !tbaa !52, !noalias !173
  %i.cz = icmp slt i64 %.039.lcssa, 0
  br i1 %i.cz, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %.noexc65
  %i.da = icmp eq ptr %i.ci, %i.cj
  br i1 %i.da, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.db = load ptr, ptr %i.cj, align 8, !tbaa !82, !noalias !173
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !85, !noalias !173
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.o:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.k
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.p:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i59, %bb.l
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %.preheader
  %i.dg = load ptr, ptr %1, align 8, !tbaa !35
  %i.dh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, i32 noundef %i.cg)
          to label %bb.ae unwind label %bb.al

.lr.ph123:                                        ; preds = %.preheader, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ 0, %.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.di = load ptr, ptr %2, align 8, !tbaa !158
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %indvars.iv133
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !159 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !33
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  invoke void %i.dn(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.60") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %i.dk, i32 noundef %i.cg)
          to label %bb.q unwind label %bb.ad

bb.q:                                             ; preds = %.lr.ph123
  %i.do = load ptr, ptr %8, align 8, !tbaa !170
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %indvars.iv133 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load <2 x ptr>, ptr %9, align 16, !tbaa !51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.ds = load ptr, ptr %i.dq, align 8, !tbaa !52 ; 8 uses
  store <2 x ptr> %i.dr, ptr %i.dp, align 8, !tbaa !51
  %.not.i.i.i.i66 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i.i66, label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 4 uses
  %i.du = load atomic i64, ptr %i.dt acquire, align 8 ; 2 uses
  %i.dv = icmp eq i64 %i.du, 4294967297
  %i.dw = trunc i64 %i.du to i32                  ; 2 uses
  br i1 %i.dv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.dt, align 8, !tbaa !62
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  store i32 0, ptr %i.dx, align 4, !tbaa !64
  %i.dy = load ptr, ptr %i.ds, align 8, !tbaa !33
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #27, !inline_history !179
  %i.eb = load ptr, ptr %i.ds, align 8, !tbaa !33
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #27, !inline_history !179
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit

bb.t:                                             ; preds = %bb.r
  %i.ee = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i = icmp eq i8 %i.ee, 0
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ef = add nsw i32 %i.dw, -1
  store i32 %i.ef, ptr %i.dt, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.eg = atomicrmw volatile add ptr %i.dt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i = phi i32 [ %i.dw, %bb.u ], [ %i.eg, %bb.v ]
  %i.eh = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.eh, label %bb.w, label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit, !prof !66

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #27
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit:    ; preds = %bb.q, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.w
  %i.ei = load ptr, ptr %i.cf, align 8, !tbaa !52 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 4 uses
  %i.ek = load atomic i64, ptr %i.ej acquire, align 8 ; 2 uses
  %i.el = icmp eq i64 %i.ek, 4294967297
  %i.em = trunc i64 %i.ek to i32                  ; 2 uses
  br i1 %i.el, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.ej, align 8, !tbaa !62
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  store i32 0, ptr %i.en, align 4, !tbaa !64
  %i.eo = load ptr, ptr %i.ei, align 8, !tbaa !33
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #27, !inline_history !180
  %i.er = load ptr, ptr %i.ei, align 8, !tbaa !33
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #27, !inline_history !180
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.z:                                             ; preds = %bb.x
  %i.eu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i = icmp eq i8 %i.eu, 0
  br i1 %.not.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ev = add nsw i32 %i.em, -1
  store i32 %i.ev, ptr %i.ej, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.ew = atomicrmw volatile add ptr %i.ej, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i = phi i32 [ %i.em, %bb.aa ], [ %i.ew, %bb.ab ]
  %i.ex = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ex, label %bb.ac, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #27
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count136
  br i1 %exitcond137.not, label %._crit_edge, label %.lr.ph123, !llvm.loop !181

bb.ad:                                            ; preds = %.lr.ph123
  %i.ey = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %.body68

bb.ae:                                            ; preds = %._crit_edge
  %i.ez = load ptr, ptr %i.dh, align 8, !tbaa !53
  %i.fa = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #25
          to label %.noexc67 unwind label %bb.al  ; 6 uses

.noexc67:                                         ; preds = %bb.ae
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 56
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store i32 1, ptr %i.fc, align 8, !tbaa !62, !noalias !182
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 12
  store i32 1, ptr %i.fd, align 4, !tbaa !64, !noalias !182
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.fa, align 8, !tbaa !33, !noalias !182
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN5arrow12ChunkedArrayEJRSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEEvPT_DpOT0_(ptr noundef nonnull %i.fe, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.fb)
          to label %_ZSt11make_sharedIN5arrow12ChunkedArrayEJRSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEES3_IT_EDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !182

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %.noexc67
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef 104) #26, !noalias !182
  br label %.body68

_ZSt11make_sharedIN5arrow12ChunkedArrayEJRSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEES3_IT_EDpOT0_.exit: ; preds = %.noexc67
  %i.fg = load ptr, ptr %7, align 8, !tbaa !77
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %i.fg, i64 %indvars.iv138 ; 2 uses
  store ptr %i.fe, ptr %i.fh, align 8, !tbaa !185
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !52 ; 8 uses
  store ptr %i.fa, ptr %i.fi, align 8, !tbaa !52
  %.not.i.i.i.i70 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i.i70, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZSt11make_sharedIN5arrow12ChunkedArrayEJRSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEES3_IT_EDpOT0_.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 4 uses
  %i.fl = load atomic i64, ptr %i.fk acquire, align 8 ; 2 uses
  %i.fm = icmp eq i64 %i.fl, 4294967297
  %i.fn = trunc i64 %i.fl to i32                  ; 2 uses
  br i1 %i.fm, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.fk, align 8, !tbaa !62
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  store i32 0, ptr %i.fo, align 4, !tbaa !64
  %i.fp = load ptr, ptr %i.fj, align 8, !tbaa !33
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #27, !inline_history !127
  %i.fs = load ptr, ptr %i.fj, align 8, !tbaa !33
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #27, !inline_history !127
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ah:                                            ; preds = %bb.af
  %i.fv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i71 = icmp eq i8 %i.fv, 0
  br i1 %.not.i.i.i.i.i71, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fw = add nsw i32 %i.fn, -1
  store i32 %i.fw, ptr %i.fk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i72

bb.aj:                                            ; preds = %bb.ah
  %i.fx = atomicrmw volatile add ptr %i.fk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i72

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i72: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i73 = phi i32 [ %i.fn, %bb.ai ], [ %i.fx, %bb.aj ]
  %i.fy = icmp eq i32 %.0.i.i.i.i.i.i73, 1
  br i1 %i.fy, label %bb.ak, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i72
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #27
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i72, %bb.ag, %_ZSt11make_sharedIN5arrow12ChunkedArrayEJRSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEES3_IT_EDpOT0_.exit
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %exitcond142.not = icmp eq i64 %indvars.iv.next139, %wide.trip.count141
  br i1 %exitcond142.not, label %._crit_edge125.loopexit, label %.preheader, !llvm.loop !186

bb.al:                                            ; preds = %bb.ae, %._crit_edge
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %.body68

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc65, %bb.m, %bb.n
  %.sink.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.m ], [ %i.dd, %bb.n ], [ %.039.lcssa, %.noexc65 ]
  %i.ga = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  store i64 %.sink.i.i.i.i.i.i.i.i, ptr %i.ga, align 8, !tbaa !103, !noalias !173
  store ptr null, ptr %0, align 8, !tbaa !118
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ct, ptr %i.gb, align 8, !tbaa !106
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cq, ptr %i.gc, align 8, !tbaa !52
  %.pre146 = load ptr, ptr %8, align 8, !tbaa !170 ; 3 uses
  %.pre147 = load ptr, ptr %i.cd, align 8, !tbaa !172 ; 2 uses
  %.not4.i.i.i87 = icmp eq ptr %.pre146, %.pre147
  br i1 %.not4.i.i.i87, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i88

.lr.ph.i.i.i88:                                   ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.05.i.i.i89 = phi ptr [ %i.gu, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i ], [ %.pre146, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.05.i.i.i89, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i.i90 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i.i.i.i.i90, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i.i88
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 4 uses
  %i.gg = load atomic i64, ptr %i.gf acquire, align 8 ; 2 uses
  %i.gh = icmp eq i64 %i.gg, 4294967297
  %i.gi = trunc i64 %i.gg to i32                  ; 2 uses
  br i1 %i.gh, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.gf, align 8, !tbaa !62
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  store i32 0, ptr %i.gj, align 4, !tbaa !64
  %i.gk = load ptr, ptr %i.ge, align 8, !tbaa !33
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8
  call void %i.gm(ptr noundef nonnull align 8 dereferenceable(16) %i.ge) #27, !inline_history !187
  %i.gn = load ptr, ptr %i.ge, align 8, !tbaa !33
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.gp = load ptr, ptr %i.go, align 8
  call void %i.gp(ptr noundef nonnull align 8 dereferenceable(16) %i.ge) #27, !inline_history !187
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.gq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i91 = icmp eq i8 %i.gq, 0
  br i1 %.not.i.i.i.i.i.i.i.i91, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gr = add nsw i32 %i.gi, -1
  store i32 %i.gr, ptr %i.gf, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i92

bb.aq:                                            ; preds = %bb.ao
  %i.gs = atomicrmw volatile add ptr %i.gf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i92

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i92: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i.i.i.i.i.i93 = phi i32 [ %i.gi, %bb.ap ], [ %i.gs, %bb.aq ]
  %i.gt = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i93, 1
  br i1 %i.gt, label %bb.ar, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, !prof !66

bb.ar:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i92
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ge) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i: ; preds = %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i92, %bb.an, %.lr.ph.i.i.i88
  %i.gu = getelementptr inbounds nuw i8, ptr %.05.i.i.i89, i64 16 ; 2 uses
  %.not.i.i.i94 = icmp eq ptr %i.gu, %.pre147
  br i1 %.not.i.i.i94, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i88, !llvm.loop !188

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.pr.i95 = load ptr, ptr %8, align 8, !tbaa !170
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.gv = phi ptr [ %.pr.i95, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %.pre146, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i96 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i1.i96, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i
  %i.gw = load ptr, ptr %i.ce, align 8, !tbaa !171
  %i.gx = ptrtoint ptr %i.gw to i64
  %i.gy = ptrtoint ptr %i.gv to i64
  %i.gz = sub i64 %i.gx, %i.gy
  call void @_ZdlPvm(ptr noundef nonnull %i.gv, i64 noundef %i.gz) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.ha = load ptr, ptr %7, align 8, !tbaa !77    ; 3 uses
  %i.hb = load ptr, ptr %i.bw, align 8, !tbaa !81 ; 2 uses
  %.not4.i.i.i97 = icmp eq ptr %i.ha, %i.hb
  br i1 %.not4.i.i.i97, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i108, label %.lr.ph.i.i.i98

.lr.ph.i.i.i98:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i104
  %.05.i.i.i99 = phi ptr [ %i.ht, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i104 ], [ %i.ha, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit ] ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.05.i.i.i99, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i.i100 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i.i.i.i.i100, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i104, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i98
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8 ; 4 uses
  %i.hf = load atomic i64, ptr %i.he acquire, align 8 ; 2 uses
  %i.hg = icmp eq i64 %i.hf, 4294967297
  %i.hh = trunc i64 %i.hf to i32                  ; 2 uses
  br i1 %i.hg, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.he, align 8, !tbaa !62
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hd, i64 12
  store i32 0, ptr %i.hi, align 4, !tbaa !64
  %i.hj = load ptr, ptr %i.hd, align 8, !tbaa !33
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8
  call void %i.hl(ptr noundef nonnull align 8 dereferenceable(16) %i.hd) #27, !inline_history !151
  %i.hm = load ptr, ptr %i.hd, align 8, !tbaa !33
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %i.ho = load ptr, ptr %i.hn, align 8
  call void %i.ho(ptr noundef nonnull align 8 dereferenceable(16) %i.hd) #27, !inline_history !151
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i104

bb.av:                                            ; preds = %bb.at
  %i.hp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i101 = icmp eq i8 %i.hp, 0
  br i1 %.not.i.i.i.i.i.i.i.i101, label %bb.ax, label %bb.aw
end_hunk_2
begin_hunk_3_@_ZN5arrow5Table22FromChunkedStructArrayERKSt10shared_ptrINS_12ChunkedArrayEE:bb.a
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !52 ; 2 uses
  %i.cb = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !51
  store <2 x ptr> %i.cb, ptr %.08.i.i.i.i.i, align 8, !tbaa !51
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 3 uses
  %i.cd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !3
  %i.cf = add nsw i32 %i.ce, 1
  store i32 %i.cf, ptr %i.cc, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.cg = atomicrmw volatile add ptr %i.cc, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.p, %bb.o, %.lr.ph.i.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.bs
  br i1 %i.cj, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !211

bb.q:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.l
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.preheader, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit
  %indvars.iv = phi i64 [ 0, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.preheader ], [ %indvars.iv.next, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  store i64 0, ptr %7, align 8
  br i1 %.not.i.i.i.i43, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i44

.noexc48:                                         ; preds = %.lr.ph.split.us
  unreachable

.lr.ph.preheader.i.i.i.i.i44:                     ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #25
          to label %.noexc49 unwind label %.loopexit117 ; 5 uses

.noexc49:                                         ; preds = %.lr.ph.preheader.i.i.i.i.i44
  store ptr %i.cl, ptr %7, align 8, !tbaa !170
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.bc
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cl, i8 0, i64 %i.be, i1 false)
  %scevgep.i.i.i.i.i45 = getelementptr i8, ptr %i.cl, i64 %i.be
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i, %.noexc49
  %i.cn = phi ptr [ %i.cl, %.noexc49 ], [ null, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ]
  %.sink.i46 = phi ptr [ %i.cm, %.noexc49 ], [ null, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ]
  %.0.lcssa.i.i.i.i.i47 = phi ptr [ %scevgep.i.i.i.i.i45, %.noexc49 ], [ null, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ]
  store ptr %.sink.i46, ptr %i.bg, align 8, !tbaa !171
  store ptr %.0.lcssa.i.i.i.i.i47, ptr %i.bf, align 8, !tbaa !172
  %i.co = load ptr, ptr %i.an, align 8, !tbaa !212 ; 2 uses
  %i.cp = load ptr, ptr %i.ao, align 8, !tbaa !212 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEZNS3_5Table22FromChunkedStructArrayERKS2_INS3_12ChunkedArrayEEE3$_0ET0_T_SL_SK_T1_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i
  %i.cr = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %.lr.ph.i
  %.sroa.05.09.i = phi ptr [ %i.co, %.lr.ph.i ], [ %i.ea, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 2 uses
  %.sroa.02.08.i = phi ptr [ %i.cn, %.lr.ph.i ], [ %i.eb, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %.val1.i = load ptr, ptr %.sroa.05.09.i, align 8, !tbaa !213
  invoke void @_ZNK5arrow11StructArray5fieldEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.60") align 8 %2, ptr noundef nonnull align 8 dereferenceable(40) %.val1.i, i32 noundef %i.cr)
          to label %.noexc52 unwind label %bb.ar

.noexc52:                                         ; preds = %bb.r
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.02.08.i, i64 8
  %i.ct = load <2 x ptr>, ptr %2, align 16, !tbaa !51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.cu = load ptr, ptr %i.cs, align 8, !tbaa !52 ; 8 uses
  store <2 x ptr> %i.ct, ptr %.sroa.02.08.i, align 8, !tbaa !51
  %.not.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit.i, label %bb.s

bb.s:                                             ; preds = %.noexc52
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 4 uses
  %i.cw = load atomic i64, ptr %i.cv acquire, align 8 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 4294967297
  %i.cy = trunc i64 %i.cw to i32                  ; 2 uses
  br i1 %i.cx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.cv, align 8, !tbaa !62
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  store i32 0, ptr %i.cz, align 4, !tbaa !64
  %i.da = load ptr, ptr %i.cu, align 8, !tbaa !33
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #27, !inline_history !216
  %i.dd = load ptr, ptr %i.cu, align 8, !tbaa !33
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #27, !inline_history !216
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit.i

bb.u:                                             ; preds = %bb.s
  %i.dg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dg, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dh = add nsw i32 %i.cy, -1
  store i32 %i.dh, ptr %i.cv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.di = atomicrmw volatile add ptr %i.cv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.cy, %bb.v ], [ %i.di, %bb.w ]
  %i.dj = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dj, label %bb.x, label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit.i, !prof !66

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #27
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit.i:  ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.t, %.noexc52
  %i.dk = load ptr, ptr %i.bh, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i50 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i50, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 4 uses
  %i.dm = load atomic i64, ptr %i.dl acquire, align 8 ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 4294967297
  %i.do = trunc i64 %i.dm to i32                  ; 2 uses
  br i1 %i.dn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.dl, align 8, !tbaa !62
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  store i32 0, ptr %i.dp, align 4, !tbaa !64
  %i.dq = load ptr, ptr %i.dk, align 8, !tbaa !33
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #27, !inline_history !217
  %i.dt = load ptr, ptr %i.dk, align 8, !tbaa !33
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #27, !inline_history !217
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.dw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i51 = icmp eq i8 %i.dw, 0
  br i1 %.not.i.i.i.i51, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dx = add nsw i32 %i.do, -1
  store i32 %i.dx, ptr %i.dl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.dy = atomicrmw volatile add ptr %i.dl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i = phi i32 [ %i.do, %bb.ab ], [ %i.dy, %bb.ac ]
  %i.dz = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.dz, label %bb.ad, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !66

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #27
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.z, %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 16 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.02.08.i, i64 16
  %i.ec = icmp eq ptr %i.ea, %i.cp
  br i1 %i.ec, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEZNS3_5Table22FromChunkedStructArrayERKS2_INS3_12ChunkedArrayEEE3$_0ET0_T_SL_SK_T1_.exit", label %bb.r, !llvm.loop !218

"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEZNS3_5Table22FromChunkedStructArrayERKS2_INS3_12ChunkedArrayEEE3$_0ET0_T_SL_SK_T1_.exit": ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i
  %i.ed = load ptr, ptr %4, align 8, !tbaa !190
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !44
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %indvars.iv
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !53
  %i.ei = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #25
          to label %.noexc53 unwind label %bb.as  ; 6 uses

.noexc53:                                         ; preds = %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEZNS3_5Table22FromChunkedStructArrayERKS2_INS3_12ChunkedArrayEEE3$_0ET0_T_SL_SK_T1_.exit"
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 56
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store i32 1, ptr %i.ek, align 8, !tbaa !62, !noalias !219
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  store i32 1, ptr %i.el, align 4, !tbaa !64, !noalias !219
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.ei, align 8, !tbaa !33, !noalias !219
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN5arrow12ChunkedArrayEJSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEEvPT_DpOT0_(ptr noundef nonnull %i.em, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.ej)
          to label %_ZSt11make_sharedIN5arrow12ChunkedArrayEJSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEES3_IT_EDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !219

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %.noexc53
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef 104) #26, !noalias !219
  br label %.body54

_ZSt11make_sharedIN5arrow12ChunkedArrayEJSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEES3_IT_EDpOT0_.exit: ; preds = %.noexc53
  %i.eo = load ptr, ptr %6, align 8, !tbaa !77
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %indvars.iv ; 2 uses
  store ptr %i.em, ptr %i.ep, align 8, !tbaa !185
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !52 ; 8 uses
  store ptr %i.ei, ptr %i.eq, align 8, !tbaa !52
  %.not.i.i.i.i56 = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i.i56, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZSt11make_sharedIN5arrow12ChunkedArrayEJSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEES3_IT_EDpOT0_.exit
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 4 uses
  %i.et = load atomic i64, ptr %i.es acquire, align 8 ; 2 uses
  %i.eu = icmp eq i64 %i.et, 4294967297
  %i.ev = trunc i64 %i.et to i32                  ; 2 uses
  br i1 %i.eu, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.es, align 8, !tbaa !62
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  store i32 0, ptr %i.ew, align 4, !tbaa !64
  %i.ex = load ptr, ptr %i.er, align 8, !tbaa !33
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(16) %i.er) #27, !inline_history !127
  %i.fa = load ptr, ptr %i.er, align 8, !tbaa !33
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8
  call void %i.fc(ptr noundef nonnull align 8 dereferenceable(16) %i.er) #27, !inline_history !127
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ag:                                            ; preds = %bb.ae
  %i.fd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i57 = icmp eq i8 %i.fd, 0
  br i1 %.not.i.i.i.i.i57, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fe = add nsw i32 %i.ev, -1
  store i32 %i.fe, ptr %i.es, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.ff = atomicrmw volatile add ptr %i.es, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i.i = phi i32 [ %i.ev, %bb.ah ], [ %i.ff, %bb.ai ]
  %i.fg = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.fg, label %bb.aj, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.er) #27
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.aj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.af, %_ZSt11make_sharedIN5arrow12ChunkedArrayEJSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEES3_IT_EDpOT0_.exit
  %i.fh = load ptr, ptr %7, align 8, !tbaa !170   ; 3 uses
  %i.fi = load ptr, ptr %i.bf, align 8, !tbaa !172 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fh, %i.fi
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ga, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i ], [ %i.fh, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 4 uses
  %i.fm = load atomic i64, ptr %i.fl acquire, align 8 ; 2 uses
  %i.fn = icmp eq i64 %i.fm, 4294967297
  %i.fo = trunc i64 %i.fm to i32                  ; 2 uses
  br i1 %i.fn, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.fl, align 8, !tbaa !62
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 12
  store i32 0, ptr %i.fp, align 4, !tbaa !64
  %i.fq = load ptr, ptr %i.fk, align 8, !tbaa !33
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(16) %i.fk) #27, !inline_history !187
  %i.ft = load ptr, ptr %i.fk, align 8, !tbaa !33
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(16) %i.fk) #27, !inline_history !187
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.fw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.fw, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fx = add nsw i32 %i.fo, -1
  store i32 %i.fx, ptr %i.fl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.fy = atomicrmw volatile add ptr %i.fl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.fo, %bb.an ], [ %i.fy, %bb.ao ]
  %i.fz = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.fz, label %bb.ap, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, !prof !66

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fk) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i: ; preds = %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.al, %.lr.ph.i.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i59 = icmp eq ptr %i.ga, %i.fi
  br i1 %.not.i.i.i59, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !188

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !170
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.gb = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.fh, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gb, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i
  %i.gc = load ptr, ptr %i.bg, align 8, !tbaa !171
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = ptrtoint ptr %i.gb to i64
  %i.gf = sub i64 %i.gd, %i.ge
  call void @_ZdlPvm(ptr noundef nonnull %i.gb, i64 noundef %i.gf) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i, !llvm.loop !222

.loopexit117:                                     ; preds = %.lr.ph.preheader.i.i.i.i.i44
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

.loopexit.split-lp:                               ; preds = %.lr.ph.split.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ar:                                            ; preds = %bb.r
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.body54

bb.as:                                            ; preds = %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEZNS3_5Table22FromChunkedStructArrayERKS2_INS3_12ChunkedArrayEEE3$_0ET0_T_SL_SK_T1_.exit"
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %.body54

.body54:                                          ; preds = %bb.as, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, %bb.ar
  %.pn29 = phi { ptr, i32 } [ %i.gg, %bb.ar ], [ %i.gh, %bb.as ], [ %i.en, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #27
  br label %bb.at

bb.at:                                            ; preds = %.loopexit117, %.loopexit.split-lp, %.body54
  %.pn29.pn = phi { ptr, i32 } [ %.pn29, %.body54 ], [ %lpad.loopexit, %.loopexit117 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.bv

.loopexit:                                        ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, %.noexc42
  %.0.lcssa.i.i.i.i.i40 = phi ptr [ %i.bu, %.noexc42 ], [ %i.ci, %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i40, ptr %i.bv, align 8, !tbaa !45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow6schemaESt6vectorISt10shared_ptrINS_5FieldEESaIS3_EES1_IKNS_16KeyValueMetadataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %8, ptr noundef nonnull %9, ptr noundef nonnull %10)
          to label %bb.au unwind label %bb.bs

bb.au:                                            ; preds = %.loopexit
  %i.gi = load ptr, ptr %6, align 8, !tbaa !77    ; 4 uses
  store ptr %i.gi, ptr %11, align 8, !tbaa !77
  %i.gj = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gk = load ptr, ptr %i.az, align 8, !tbaa !81 ; 3 uses
  store ptr %i.gk, ptr %i.gj, align 8, !tbaa !81
  %i.gl = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.gm = load ptr, ptr %i.ba, align 8, !tbaa !116 ; 2 uses
  store ptr %i.gm, ptr %i.gl, align 8, !tbaa !116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.gn = load ptr, ptr %1, align 8, !tbaa !82
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 40
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !85 ; 2 uses
  %i.gq = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25
          to label %.noexc60 unwind label %bb.bt, !inline_history !144 ; 10 uses

.noexc60:                                         ; preds = %bb.au
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  store i32 1, ptr %i.gr, align 8, !tbaa !62, !noalias !223
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 12
  store i32 1, ptr %i.gs, align 4, !tbaa !64, !noalias !223
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow11SimpleTableESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.gq, align 8, !tbaa !33, !noalias !223
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 16 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 48
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gq, i64 56
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gq, i64 64
  %i.gy = load <2 x ptr>, ptr %8, align 16, !tbaa !51, !noalias !223
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, i8 0, i64 16, i1 false), !noalias !223
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false), !noalias !223
  store ptr getelementptr inbounds inrange(-16, 96) ({ [14 x ptr] }, ptr @_ZTVN5arrow11SimpleTableE, i32 0, i32 0, i32 2), ptr %i.gt, align 8, !tbaa !33, !noalias !223
  store ptr %i.gi, ptr %i.gv, align 8, !tbaa !77, !noalias !223
  store ptr %i.gk, ptr %i.gw, align 8, !tbaa !81, !noalias !223
  store ptr %i.gm, ptr %i.gx, align 8, !tbaa !116, !noalias !223
  store <2 x ptr> %i.gy, ptr %i.gu, align 8, !tbaa !51, !noalias !223
  %i.gz = icmp slt i64 %i.gp, 0
  br i1 %i.gz, label %bb.av, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.av:                                            ; preds = %.noexc60
  %i.ha = icmp eq ptr %i.gk, %i.gi
  br i1 %i.ha, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hb = load ptr, ptr %i.gi, align 8, !tbaa !82, !noalias !223
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 40
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !85, !noalias !223
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc60, %bb.av, %bb.aw
  %.sink.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.av ], [ %i.hd, %bb.aw ], [ %i.gp, %.noexc60 ]
  %i.he = getelementptr inbounds nuw i8, ptr %i.gq, i64 40
  store i64 %.sink.i.i.i.i.i.i.i.i, ptr %i.he, align 8, !tbaa !103, !noalias !223
  store ptr null, ptr %0, align 8, !tbaa !118
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gt, ptr %i.hf, align 8, !tbaa !106
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.gq, ptr %i.hg, align 8, !tbaa !52
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.pre126 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !52 ; 8 uses
  %.not.i.i79 = icmp eq ptr %.pre126, null
  br i1 %.not.i.i79, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hh = getelementptr inbounds nuw i8, ptr %.pre126, i64 8 ; 4 uses
  %i.hi = load atomic i64, ptr %i.hh acquire, align 8 ; 2 uses
  %i.hj = icmp eq i64 %i.hi, 4294967297
  %i.hk = trunc i64 %i.hi to i32                  ; 2 uses
  br i1 %i.hj, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.hh, align 8, !tbaa !62
  %i.hl = getelementptr inbounds nuw i8, ptr %.pre126, i64 12
  store i32 0, ptr %i.hl, align 4, !tbaa !64
  %i.hm = load ptr, ptr %.pre126, align 8, !tbaa !33
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8
  call void %i.ho(ptr noundef nonnull align 8 dereferenceable(16) %.pre126) #27, !inline_history !228
  %i.hp = load ptr, ptr %.pre126, align 8, !tbaa !33
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.hr = load ptr, ptr %i.hq, align 8
  call void %i.hr(ptr noundef nonnull align 8 dereferenceable(16) %.pre126) #27, !inline_history !228
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.az:                                            ; preds = %bb.ax
  %i.hs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i80 = icmp eq i8 %i.hs, 0
  br i1 %.not.i.i.i80, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ht = add nsw i32 %i.hk, -1
  store i32 %i.ht, ptr %i.hh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i81

bb.bb:                                            ; preds = %bb.az
  %i.hu = atomicrmw volatile add ptr %i.hh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i81

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i81: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i82 = phi i32 [ %i.hk, %bb.ba ], [ %i.hu, %bb.bb ]
  %i.hv = icmp eq i32 %.0.i.i.i.i82, 1
  br i1 %i.hv, label %bb.bc, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i81
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre126) #27
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i81, %bb.bc
  %i.hw = load ptr, ptr %9, align 8, !tbaa !44    ; 3 uses
  %i.hx = load ptr, ptr %i.bv, align 8, !tbaa !45 ; 2 uses
  %.not4.i.i.i83 = icmp eq ptr %i.hw, %i.hx
  br i1 %.not4.i.i.i83, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i84

.lr.ph.i.i.i84:                                   ; preds = %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i
  %.05.i.i.i85 = phi ptr [ %i.ip, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i ], [ %i.hw, %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.05.i.i.i85, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i.i86 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i.i.i.i.i86, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph.i.i.i84
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8 ; 4 uses
  %i.ib = load atomic i64, ptr %i.ia acquire, align 8 ; 2 uses
  %i.ic = icmp eq i64 %i.ib, 4294967297
  %i.id = trunc i64 %i.ib to i32                  ; 2 uses
  br i1 %i.ic, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i32 0, ptr %i.ia, align 8, !tbaa !62
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hz, i64 12
  store i32 0, ptr %i.ie, align 4, !tbaa !64
  %i.if = load ptr, ptr %i.hz, align 8, !tbaa !33
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8
  call void %i.ih(ptr noundef nonnull align 8 dereferenceable(16) %i.hz) #27, !inline_history !229
  %i.ii = load ptr, ptr %i.hz, align 8, !tbaa !33
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  %i.ik = load ptr, ptr %i.ij, align 8
  call void %i.ik(ptr noundef nonnull align 8 dereferenceable(16) %i.hz) #27, !inline_history !229
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.il = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i87 = icmp eq i8 %i.il, 0
  br i1 %.not.i.i.i.i.i.i.i.i87, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.im = add nsw i32 %i.id, -1
  store i32 %i.im, ptr %i.ia, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i88

bb.bh:                                            ; preds = %bb.bf
  %i.in = atomicrmw volatile add ptr %i.ia, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i88

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i88: ; preds = %bb.bh, %bb.bg
  %.0.i.i.i.i.i.i.i.i.i89 = phi i32 [ %i.id, %bb.bg ], [ %i.in, %bb.bh ]
  %i.io = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i89, 1
  br i1 %i.io, label %bb.bi, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i, !prof !66

bb.bi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i88
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hz) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i: ; preds = %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i88, %bb.be, %.lr.ph.i.i.i84
  %i.ip = getelementptr inbounds nuw i8, ptr %.05.i.i.i85, i64 16 ; 2 uses
  %.not.i.i.i90 = icmp eq ptr %i.ip, %i.hx
  br i1 %.not.i.i.i90, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i84, !llvm.loop !69

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i
  %.pr.i91 = load ptr, ptr %9, align 8, !tbaa !44
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.iq = phi ptr [ %.pr.i91, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.hw, %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i92 = icmp eq ptr %i.iq, null
  br i1 %.not.i.i1.i92, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i
  %i.ir = load ptr, ptr %i.bx, align 8, !tbaa !41
  %i.is = ptrtoint ptr %i.ir to i64
  %i.it = ptrtoint ptr %i.iq to i64
  %i.iu = sub i64 %i.is, %i.it
  call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef %i.iu) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i, %bb.bj
  %i.iv = load ptr, ptr %6, align 8, !tbaa !77    ; 3 uses
  %i.iw = load ptr, ptr %i.az, align 8, !tbaa !81 ; 2 uses
  %.not4.i.i.i93 = icmp eq ptr %i.iv, %i.iw
  br i1 %.not4.i.i.i93, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i104, label %.lr.ph.i.i.i94

.lr.ph.i.i.i94:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i100
  %.05.i.i.i95 = phi ptr [ %i.jo, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i100 ], [ %i.iv, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit ] ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.05.i.i.i95, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i.i96 = icmp eq ptr %i.iy, null
  br i1 %.not.i.i.i.i.i.i.i96, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i100, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i.i.i94
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8 ; 4 uses
  %i.ja = load atomic i64, ptr %i.iz acquire, align 8 ; 2 uses
  %i.jb = icmp eq i64 %i.ja, 4294967297
  %i.jc = trunc i64 %i.ja to i32                  ; 2 uses
  br i1 %i.jb, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  store i32 0, ptr %i.iz, align 8, !tbaa !62
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iy, i64 12
  store i32 0, ptr %i.jd, align 4, !tbaa !64
  %i.je = load ptr, ptr %i.iy, align 8, !tbaa !33
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %i.jg = load ptr, ptr %i.jf, align 8
  call void %i.jg(ptr noundef nonnull align 8 dereferenceable(16) %i.iy) #27, !inline_history !151
  %i.jh = load ptr, ptr %i.iy, align 8, !tbaa !33
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 24
  %i.jj = load ptr, ptr %i.ji, align 8
  call void %i.jj(ptr noundef nonnull align 8 dereferenceable(16) %i.iy) #27, !inline_history !151
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i100

bb.bm:                                            ; preds = %bb.bk
  %i.jk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i97 = icmp eq i8 %i.jk, 0
  br i1 %.not.i.i.i.i.i.i.i.i97, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jl = add nsw i32 %i.jc, -1
  store i32 %i.jl, ptr %i.iz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i98

bb.bo:                                            ; preds = %bb.bm
  %i.jm = atomicrmw volatile add ptr %i.iz, i32 -1 acq_rel, align 4
end_hunk_3
begin_hunk_4_@_ZNK5arrow5Table13RenameColumnsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE:bb.a
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %indvars.iv ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load <2 x ptr>, ptr %8, align 16, !tbaa !51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !52 ; 8 uses
  store <2 x ptr> %i.dv, ptr %i.dt, align 8, !tbaa !51
  %.not.i.i.i.i41 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i41, label %_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 4 uses
  %i.dy = load atomic i64, ptr %i.dx acquire, align 8 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 4294967297
  %i.ea = trunc i64 %i.dy to i32                  ; 2 uses
  br i1 %i.dz, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.dx, align 8, !tbaa !62
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  store i32 0, ptr %i.eb, align 4, !tbaa !64
  %i.ec = load ptr, ptr %i.dw, align 8, !tbaa !33
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(16) %i.dw) #27, !inline_history !254
  %i.ef = load ptr, ptr %i.dw, align 8, !tbaa !33
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(16) %i.dw) #27, !inline_history !254
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit

bb.aj:                                            ; preds = %bb.ah
  %i.ei = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i42 = icmp eq i8 %i.ei, 0
  br i1 %.not.i.i.i.i.i42, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ej = add nsw i32 %i.ea, -1
  store i32 %i.ej, ptr %i.dx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i43

bb.al:                                            ; preds = %bb.aj
  %i.ek = atomicrmw volatile add ptr %i.dx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i43

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i43: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i.i.i44 = phi i32 [ %i.ea, %bb.ak ], [ %i.ek, %bb.al ]
  %i.el = icmp eq i32 %.0.i.i.i.i.i.i44, 1
  br i1 %i.el, label %bb.am, label %_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit, !prof !66

bb.am:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i43
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dw) #27
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit:    ; preds = %bb.ag, %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i43, %bb.am
  %i.em = load ptr, ptr %i.be, align 8, !tbaa !52 ; 8 uses
  %.not.i.i45 = icmp eq ptr %i.em, null
  br i1 %.not.i.i45, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 4 uses
  %i.eo = load atomic i64, ptr %i.en acquire, align 8 ; 2 uses
  %i.ep = icmp eq i64 %i.eo, 4294967297
  %i.eq = trunc i64 %i.eo to i32                  ; 2 uses
  br i1 %i.ep, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.en, align 8, !tbaa !62
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  store i32 0, ptr %i.er, align 4, !tbaa !64
  %i.es = load ptr, ptr %i.em, align 8, !tbaa !33
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(16) %i.em) #27, !inline_history !65
  %i.ev = load ptr, ptr %i.em, align 8, !tbaa !33
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(16) %i.em) #27, !inline_history !65
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ap:                                            ; preds = %bb.an
  %i.ey = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i46 = icmp eq i8 %i.ey, 0
  br i1 %.not.i.i.i46, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ez = add nsw i32 %i.eq, -1
  store i32 %i.ez, ptr %i.en, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i47

bb.ar:                                            ; preds = %bb.ap
  %i.fa = atomicrmw volatile add ptr %i.en, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i47

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i47: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i.i48 = phi i32 [ %i.eq, %bb.aq ], [ %i.fa, %bb.ar ]
  %i.fb = icmp eq i32 %.0.i.i.i.i48, 1
  br i1 %i.fb, label %bb.as, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.as:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i47
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.em) #27
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit, %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i47, %bb.as
  %i.fc = load ptr, ptr %i.bd, align 8, !tbaa !52 ; 8 uses
  %.not.i.i49 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i49, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit53, label %bb.at

bb.at:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 4 uses
  %i.fe = load atomic i64, ptr %i.fd acquire, align 8 ; 2 uses
  %i.ff = icmp eq i64 %i.fe, 4294967297
  %i.fg = trunc i64 %i.fe to i32                  ; 2 uses
  br i1 %i.ff, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.fd, align 8, !tbaa !62
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 12
  store i32 0, ptr %i.fh, align 4, !tbaa !64
  %i.fi = load ptr, ptr %i.fc, align 8, !tbaa !33
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #27, !inline_history !65
  %i.fl = load ptr, ptr %i.fc, align 8, !tbaa !33
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #27, !inline_history !65
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit53

bb.av:                                            ; preds = %bb.at
  %i.fo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i50 = icmp eq i8 %i.fo, 0
  br i1 %.not.i.i.i50, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fp = add nsw i32 %i.fg, -1
  store i32 %i.fp, ptr %i.fd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51

bb.ax:                                            ; preds = %bb.av
  %i.fq = atomicrmw volatile add ptr %i.fd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51: ; preds = %bb.ax, %bb.aw
  %.0.i.i.i.i52 = phi i32 [ %i.fg, %bb.aw ], [ %i.fq, %bb.ax ]
  %i.fr = icmp eq i32 %.0.i.i.i.i52, 1
  br i1 %i.fr, label %bb.ay, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit53, !prof !66

bb.ay:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #27
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit53

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit53: ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.j, !llvm.loop !255

bb.az:                                            ; preds = %bb.p
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.ck

bb.ba:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bb:                                            ; preds = %_ZNK5arrow5Table5fieldEi.exit
  %i.fu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #27
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.pn20 = phi { ptr, i32 } [ %i.fu, %bb.bb ], [ %i.ft, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.ck

bb.bd:                                            ; preds = %bb.k
  %i.fv = load ptr, ptr %5, align 8, !tbaa !77    ; 4 uses
  store ptr %i.fv, ptr %13, align 8, !tbaa !77
  %i.fw = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.fx = load ptr, ptr %i.ar, align 8, !tbaa !81 ; 3 uses
  store ptr %i.fx, ptr %i.fw, align 8, !tbaa !81
  %i.fy = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.fz = load ptr, ptr %i.as, align 8, !tbaa !116 ; 2 uses
  store ptr %i.fz, ptr %i.fy, align 8, !tbaa !116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !103 ; 2 uses
  %i.gc = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25
          to label %.noexc54 unwind label %bb.ci, !inline_history !144 ; 10 uses

.noexc54:                                         ; preds = %bb.bd
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store i32 1, ptr %i.gd, align 8, !tbaa !62, !noalias !256
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  store i32 1, ptr %i.ge, align 4, !tbaa !64, !noalias !256
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow11SimpleTableESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.gc, align 8, !tbaa !33, !noalias !256
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 16 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 48
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gc, i64 56
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gc, i64 64
  %i.gk = load <2 x ptr>, ptr %10, align 16, !tbaa !51, !noalias !256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %10, i8 0, i64 16, i1 false), !noalias !256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false), !noalias !256
  store ptr getelementptr inbounds inrange(-16, 96) ({ [14 x ptr] }, ptr @_ZTVN5arrow11SimpleTableE, i32 0, i32 0, i32 2), ptr %i.gf, align 8, !tbaa !33, !noalias !256
  store ptr %i.fv, ptr %i.gh, align 8, !tbaa !77, !noalias !256
  store ptr %i.fx, ptr %i.gi, align 8, !tbaa !81, !noalias !256
  store ptr %i.fz, ptr %i.gj, align 8, !tbaa !116, !noalias !256
  store <2 x ptr> %i.gk, ptr %i.gg, align 8, !tbaa !51, !noalias !256
  %i.gl = icmp slt i64 %i.gb, 0
  br i1 %i.gl, label %bb.be, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.be:                                            ; preds = %.noexc54
  %i.gm = icmp eq ptr %i.fx, %i.fv
  br i1 %i.gm, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gn = load ptr, ptr %i.fv, align 8, !tbaa !82, !noalias !256
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 40
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !85, !noalias !256
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc54, %bb.be, %bb.bf
  %.sink.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.be ], [ %i.gp, %bb.bf ], [ %i.gb, %.noexc54 ]
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gc, i64 40
  store i64 %.sink.i.i.i.i.i.i.i.i, ptr %i.gq, align 8, !tbaa !103, !noalias !256
  store ptr null, ptr %0, align 8, !tbaa !118
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gf, ptr %i.gr, align 8, !tbaa !106
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.gc, ptr %i.gs, align 8, !tbaa !52
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !52 ; 8 uses
  %.not.i.i64 = icmp eq ptr %.pre, null
  br i1 %.not.i.i64, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 4 uses
  %i.gu = load atomic i64, ptr %i.gt acquire, align 8 ; 2 uses
  %i.gv = icmp eq i64 %i.gu, 4294967297
  %i.gw = trunc i64 %i.gu to i32                  ; 2 uses
  br i1 %i.gv, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.gt, align 8, !tbaa !62
  %i.gx = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  store i32 0, ptr %i.gx, align 4, !tbaa !64
  %i.gy = load ptr, ptr %.pre, align 8, !tbaa !33
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8
  call void %i.ha(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #27, !inline_history !228
  %i.hb = load ptr, ptr %.pre, align 8, !tbaa !33
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  %i.hd = load ptr, ptr %i.hc, align 8
  call void %i.hd(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #27, !inline_history !228
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bi:                                            ; preds = %bb.bg
  %i.he = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i65 = icmp eq i8 %i.he, 0
  br i1 %.not.i.i.i65, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hf = add nsw i32 %i.gw, -1
  store i32 %i.hf, ptr %i.gt, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66

bb.bk:                                            ; preds = %bb.bi
  %i.hg = atomicrmw volatile add ptr %i.gt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i67 = phi i32 [ %i.gw, %bb.bj ], [ %i.hg, %bb.bk ]
  %i.hh = icmp eq i32 %.0.i.i.i.i67, 1
  br i1 %i.hh, label %bb.bl, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #27
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66, %bb.bl
  %i.hi = load ptr, ptr %11, align 16, !tbaa !44  ; 3 uses
  %i.hj = load ptr, ptr %i.bj, align 8, !tbaa !45 ; 2 uses
  %.not4.i.i.i68 = icmp eq ptr %i.hi, %i.hj
  br i1 %.not4.i.i.i68, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i69

.lr.ph.i.i.i69:                                   ; preds = %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i
  %.05.i.i.i70 = phi ptr [ %i.ib, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i ], [ %i.hi, %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.05.i.i.i70, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i.i71 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i.i.i.i.i71, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.i.i.i69
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8 ; 4 uses
  %i.hn = load atomic i64, ptr %i.hm acquire, align 8 ; 2 uses
  %i.ho = icmp eq i64 %i.hn, 4294967297
  %i.hp = trunc i64 %i.hn to i32                  ; 2 uses
  br i1 %i.ho, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store i32 0, ptr %i.hm, align 8, !tbaa !62
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 12
  store i32 0, ptr %i.hq, align 4, !tbaa !64
  %i.hr = load ptr, ptr %i.hl, align 8, !tbaa !33
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(16) %i.hl) #27, !inline_history !229
  %i.hu = load ptr, ptr %i.hl, align 8, !tbaa !33
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hw(ptr noundef nonnull align 8 dereferenceable(16) %i.hl) #27, !inline_history !229
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i

bb.bo:                                            ; preds = %bb.bm
  %i.hx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i72 = icmp eq i8 %i.hx, 0
  br i1 %.not.i.i.i.i.i.i.i.i72, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hy = add nsw i32 %i.hp, -1
  store i32 %i.hy, ptr %i.hm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i73

bb.bq:                                            ; preds = %bb.bo
  %i.hz = atomicrmw volatile add ptr %i.hm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i73

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i73: ; preds = %bb.bq, %bb.bp
  %.0.i.i.i.i.i.i.i.i.i74 = phi i32 [ %i.hp, %bb.bp ], [ %i.hz, %bb.bq ]
  %i.ia = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i74, 1
  br i1 %i.ia, label %bb.br, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i, !prof !66

bb.br:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i73
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hl) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i: ; preds = %bb.br, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i73, %bb.bn, %.lr.ph.i.i.i69
  %i.ib = getelementptr inbounds nuw i8, ptr %.05.i.i.i70, i64 16 ; 2 uses
  %.not.i.i.i75 = icmp eq ptr %i.ib, %i.hj
  br i1 %.not.i.i.i75, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i69, !llvm.loop !69

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i
  %.pr.i76 = load ptr, ptr %11, align 16, !tbaa !44
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ic = phi ptr [ %.pr.i76, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.hi, %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i77 = icmp eq ptr %i.ic, null
  br i1 %.not.i.i1.i77, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit, label %bb.bs

bb.bs:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i
  %i.id = load ptr, ptr %i.bl, align 16, !tbaa !41
  %i.ie = ptrtoint ptr %i.id to i64
  %i.if = ptrtoint ptr %i.ic to i64
  %i.ig = sub i64 %i.ie, %i.if
  call void @_ZdlPvm(ptr noundef nonnull %i.ic, i64 noundef %i.ig) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i, %bb.bs
  %i.ih = load ptr, ptr %6, align 16, !tbaa !44   ; 3 uses
  %i.ii = load ptr, ptr %i.ba, align 8, !tbaa !45 ; 2 uses
  %.not4.i.i.i78 = icmp eq ptr %i.ih, %i.ii
  br i1 %.not4.i.i.i78, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i89, label %.lr.ph.i.i.i79

.lr.ph.i.i.i79:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i85
  %.05.i.i.i80 = phi ptr [ %i.ja, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i85 ], [ %i.ih, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit ] ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.05.i.i.i80, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i.i81 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i.i.i.i.i.i81, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i85, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph.i.i.i79
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8 ; 4 uses
  %i.im = load atomic i64, ptr %i.il acquire, align 8 ; 2 uses
  %i.in = icmp eq i64 %i.im, 4294967297
  %i.io = trunc i64 %i.im to i32                  ; 2 uses
  br i1 %i.in, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  store i32 0, ptr %i.il, align 8, !tbaa !62
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ik, i64 12
  store i32 0, ptr %i.ip, align 4, !tbaa !64
  %i.iq = load ptr, ptr %i.ik, align 8, !tbaa !33
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.is = load ptr, ptr %i.ir, align 8
  call void %i.is(ptr noundef nonnull align 8 dereferenceable(16) %i.ik) #27, !inline_history !229
  %i.it = load ptr, ptr %i.ik, align 8, !tbaa !33
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8
  call void %i.iv(ptr noundef nonnull align 8 dereferenceable(16) %i.ik) #27, !inline_history !229
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i85

bb.bv:                                            ; preds = %bb.bt
  %i.iw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i82 = icmp eq i8 %i.iw, 0
  br i1 %.not.i.i.i.i.i.i.i.i82, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ix = add nsw i32 %i.io, -1
  store i32 %i.ix, ptr %i.il, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i83

bb.bx:                                            ; preds = %bb.bv
  %i.iy = atomicrmw volatile add ptr %i.il, i32 -1 acq_rel, align 4
end_hunk_4
begin_hunk_5_@_ZNK5arrow5Table13SelectColumnsERKSt6vectorIiSaIiEE:bb.a
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #27, !inline_history !127
  %i.bp = load ptr, ptr %i.bg, align 8, !tbaa !33
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #27, !inline_history !127
  br label %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEaSEOS2_.exit

bb.q:                                             ; preds = %bb.o
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = add nsw i32 %i.bk, -1
  store i32 %i.bt, ptr %i.bh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bu = atomicrmw volatile add ptr %i.bh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i = phi i32 [ %i.bk, %bb.r ], [ %i.bu, %bb.s ]
  %i.bv = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bv, label %bb.t, label %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEaSEOS2_.exit, !prof !66

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #27
  br label %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEaSEOS2_.exit: ; preds = %bb.n, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.t
  %i.bw = load ptr, ptr %i.z, align 8, !tbaa !52  ; 8 uses
  %.not.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEaSEOS2_.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 4 uses
  %i.by = load atomic i64, ptr %i.bx acquire, align 8 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 4294967297
  %i.ca = trunc i64 %i.by to i32                  ; 2 uses
  br i1 %i.bz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.bx, align 8, !tbaa !62
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store i32 0, ptr %i.cb, align 4, !tbaa !64
  %i.cc = load ptr, ptr %i.bw, align 8, !tbaa !33
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #27, !inline_history !250
  %i.cf = load ptr, ptr %i.bw, align 8, !tbaa !33
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #27, !inline_history !250
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.ci = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i = icmp eq i8 %i.ci, 0
  br i1 %.not.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cj = add nsw i32 %i.ca, -1
  store i32 %i.cj, ptr %i.bx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.ck = atomicrmw volatile add ptr %i.bx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i = phi i32 [ %i.ca, %bb.x ], [ %i.ck, %bb.y ]
  %i.cl = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cl, label %bb.z, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #27
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEaSEOS2_.exit, %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.cm = load i32, ptr %i.a, align 4, !tbaa !3
  %i.cn = load ptr, ptr %i.y, align 8, !tbaa !35, !noalias !270
  %i.co = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32) %i.cn, i32 noundef %i.cm)
          to label %.noexc46 unwind label %bb.ak  ; 2 uses

.noexc46:                                         ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !52, !noalias !270 ; 2 uses
  %i.cr = load <2 x ptr>, ptr %i.co, align 8, !tbaa !51, !noalias !270
  %.not.i.i.i.i44 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i44, label %_ZNK5arrow5Table5fieldEi.exit, label %bb.aa

bb.aa:                                            ; preds = %.noexc46
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 3 uses
  %i.ct = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61, !noalias !270
  %.not.i.i.i.i.i45 = icmp eq i8 %i.ct, 0
  br i1 %.not.i.i.i.i.i45, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !3, !noalias !270
  %i.cv = add nsw i32 %i.cu, 1
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !3, !noalias !270
  br label %_ZNK5arrow5Table5fieldEi.exit

bb.ac:                                            ; preds = %bb.aa
  %i.cw = atomicrmw volatile add ptr %i.cs, i32 1 acq_rel, align 4, !noalias !270 ; 0 uses
  br label %_ZNK5arrow5Table5fieldEi.exit

_ZNK5arrow5Table5fieldEi.exit:                    ; preds = %bb.ac, %bb.ab, %.noexc46
  %i.cx = load ptr, ptr %5, align 8, !tbaa !44
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %indvars.iv ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !52 ; 8 uses
  store <2 x ptr> %i.cr, ptr %i.cy, align 8, !tbaa !51
  %.not.i.i.i.i47 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i47, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNK5arrow5Table5fieldEi.exit
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 4 uses
  %i.dc = load atomic i64, ptr %i.db acquire, align 8 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 4294967297
  %i.de = trunc i64 %i.dc to i32                  ; 2 uses
  br i1 %i.dd, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.db, align 8, !tbaa !62
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 0, ptr %i.df, align 4, !tbaa !64
  %i.dg = load ptr, ptr %i.da, align 8, !tbaa !33
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #27, !inline_history !254
  %i.dj = load ptr, ptr %i.da, align 8, !tbaa !33
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #27, !inline_history !254
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.af:                                            ; preds = %bb.ad
  %i.dm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i48 = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i.i.i48, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dn = add nsw i32 %i.de, -1
  store i32 %i.dn, ptr %i.db, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i49

bb.ah:                                            ; preds = %bb.af
  %i.do = atomicrmw volatile add ptr %i.db, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i49

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i49: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i.i50 = phi i32 [ %i.de, %bb.ag ], [ %i.do, %bb.ah ]
  %i.dp = icmp eq i32 %.0.i.i.i.i.i.i50, 1
  br i1 %i.dp, label %bb.ai, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i49
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #27
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i49, %bb.ae, %_ZNK5arrow5Table5fieldEi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge32, label %bb.d, !llvm.loop !273

bb.aj:                                            ; preds = %bb.m
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.al

bb.ak:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %.body, %bb.k
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.dr, %bb.ak ], [ %i.dq, %bb.aj ], [ %i.aw, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.bh

.critedge32:                                      ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !35
  %i.du = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema8metadataEv(ptr noundef nonnull align 8 dereferenceable(32) %i.dt)
          to label %bb.am unwind label %bb.aq

bb.am:                                            ; preds = %.critedge32
  %i.dv = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #25
          to label %.noexc55 unwind label %bb.aq  ; 7 uses

.noexc55:                                         ; preds = %bb.am
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i32 1, ptr %i.dw, align 8, !tbaa !62, !noalias !274
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  store i32 1, ptr %i.dx, align 4, !tbaa !64, !noalias !274
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6SchemaESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.dv, align 8, !tbaa !33, !noalias !274
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 3 uses
  invoke void @_ZSt10_ConstructIN5arrow6SchemaEJSt6vectorISt10shared_ptrINS0_5FieldEESaIS5_EERKS3_IKNS0_16KeyValueMetadataEEEEvPT_DpOT0_(ptr noundef nonnull %i.dy, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.du)
          to label %bb.an unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6SchemaESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !274

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6SchemaESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %.noexc55
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef 48) #26, !noalias !274
  br label %.body56

bb.an:                                            ; preds = %.noexc55
  %i.ea = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.dy, ptr %9, align 8, !tbaa !35
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.ea, align 8, !tbaa !52
  store ptr %i.dv, ptr %i.eb, align 8, !tbaa !52
  store ptr null, ptr %8, align 8, !tbaa !35
  %i.ec = load ptr, ptr %4, align 8, !tbaa !77    ; 4 uses
  store ptr %i.ec, ptr %10, align 8, !tbaa !77
  %i.ed = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ee = load ptr, ptr %i.v, align 8, !tbaa !81  ; 3 uses
  store ptr %i.ee, ptr %i.ed, align 8, !tbaa !81
  %i.ef = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.eg = load ptr, ptr %i.u, align 8, !tbaa !116 ; 2 uses
  store ptr %i.eg, ptr %i.ef, align 8, !tbaa !116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !103 ; 2 uses
  %i.ej = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25
          to label %.noexc58 unwind label %bb.ar, !inline_history !144 ; 11 uses

.noexc58:                                         ; preds = %bb.an
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i32 1, ptr %i.ek, align 8, !tbaa !62, !noalias !277
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  store i32 1, ptr %i.el, align 4, !tbaa !64, !noalias !277
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow11SimpleTableESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.ej, align 8, !tbaa !33, !noalias !277
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false), !noalias !277
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !277
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  store ptr getelementptr inbounds inrange(-16, 96) ({ [14 x ptr] }, ptr @_ZTVN5arrow11SimpleTableE, i32 0, i32 0, i32 2), ptr %i.em, align 8, !tbaa !33, !noalias !277
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 48
  store ptr %i.ec, ptr %i.eo, align 8, !tbaa !77, !noalias !277
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 56
  store ptr %i.ee, ptr %i.ep, align 8, !tbaa !81, !noalias !277
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ej, i64 64
  store ptr %i.eg, ptr %i.eq, align 8, !tbaa !116, !noalias !277
  store ptr %i.dy, ptr %i.en, align 8, !tbaa !178, !noalias !277
  %i.er = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  store ptr %i.dv, ptr %i.er, align 8, !tbaa !52, !noalias !277
  %i.es = icmp slt i64 %i.ei, 0
  br i1 %i.es, label %bb.ao, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit72

bb.ao:                                            ; preds = %.noexc58
  %i.et = icmp eq ptr %i.ee, %i.ec
  br i1 %i.et, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit72, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.eu = load ptr, ptr %i.ec, align 8, !tbaa !82, !noalias !277
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !85, !noalias !277
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit72

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit72: ; preds = %.noexc58, %bb.ao, %bb.ap
  %.sink.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ao ], [ %i.ew, %bb.ap ], [ %i.ei, %.noexc58 ]
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ej, i64 40
  store i64 %.sink.i.i.i.i.i.i.i.i, ptr %i.ex, align 8, !tbaa !103, !noalias !277
  store ptr null, ptr %0, align 8, !tbaa !118
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.em, ptr %i.ey, align 8, !tbaa !106
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ej, ptr %i.ez, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.as

bb.aq:                                            ; preds = %bb.am, %.critedge32
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %.body56

bb.ar:                                            ; preds = %bb.an
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #27
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #27
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #27
  br label %.body56

.body56:                                          ; preds = %bb.aq, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6SchemaESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, %bb.ar
  %.pn26 = phi { ptr, i32 } [ %i.fb, %bb.ar ], [ %i.fa, %bb.aq ], [ %i.dz, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6SchemaESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.bh

bb.as:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit72
  %i.fc = load ptr, ptr %5, align 8, !tbaa !44    ; 3 uses
  %i.fd = load ptr, ptr %i.w, align 8, !tbaa !45  ; 2 uses
  %.not4.i.i.i73 = icmp eq ptr %i.fc, %i.fd
  br i1 %.not4.i.i.i73, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i74

.lr.ph.i.i.i74:                                   ; preds = %bb.as, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i
  %.05.i.i.i75 = phi ptr [ %i.fv, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i ], [ %i.fc, %bb.as ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.05.i.i.i75, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i.i76 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i.i.i.i.i76, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i74
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8 ; 4 uses
  %i.fh = load atomic i64, ptr %i.fg acquire, align 8 ; 2 uses
  %i.fi = icmp eq i64 %i.fh, 4294967297
  %i.fj = trunc i64 %i.fh to i32                  ; 2 uses
  br i1 %i.fi, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.fg, align 8, !tbaa !62
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  store i32 0, ptr %i.fk, align 4, !tbaa !64
  %i.fl = load ptr, ptr %i.ff, align 8, !tbaa !33
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(16) %i.ff) #27, !inline_history !229
  %i.fo = load ptr, ptr %i.ff, align 8, !tbaa !33
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(16) %i.ff) #27, !inline_history !229
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i

bb.av:                                            ; preds = %bb.at
  %i.fr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i77 = icmp eq i8 %i.fr, 0
  br i1 %.not.i.i.i.i.i.i.i.i77, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fs = add nsw i32 %i.fj, -1
  store i32 %i.fs, ptr %i.fg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i78

bb.ax:                                            ; preds = %bb.av
  %i.ft = atomicrmw volatile add ptr %i.fg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i78

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i78: ; preds = %bb.ax, %bb.aw
  %.0.i.i.i.i.i.i.i.i.i79 = phi i32 [ %i.fj, %bb.aw ], [ %i.ft, %bb.ax ]
  %i.fu = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i79, 1
  br i1 %i.fu, label %bb.ay, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i, !prof !66

bb.ay:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i78
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ff) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i: ; preds = %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i78, %bb.au, %.lr.ph.i.i.i74
  %i.fv = getelementptr inbounds nuw i8, ptr %.05.i.i.i75, i64 16 ; 2 uses
  %.not.i.i.i80 = icmp eq ptr %i.fv, %i.fd
  br i1 %.not.i.i.i80, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i74, !llvm.loop !69

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i
  %.pr.i81 = load ptr, ptr %5, align 8, !tbaa !44
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.as
  %i.fw = phi ptr [ %.pr.i81, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.fc, %bb.as ] ; 3 uses
  %.not.i.i1.i82 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i1.i82, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i
  %i.fx = load ptr, ptr %i.x, align 8, !tbaa !41
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = ptrtoint ptr %i.fw to i64
  %i.ga = sub i64 %i.fy, %i.fz
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.ga) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.gb = load ptr, ptr %4, align 8, !tbaa !77    ; 3 uses
  %i.gc = load ptr, ptr %i.v, align 8, !tbaa !81  ; 2 uses
  %.not4.i.i.i83 = icmp eq ptr %i.gb, %i.gc
  br i1 %.not4.i.i.i83, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i94, label %.lr.ph.i.i.i84

.lr.ph.i.i.i84:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i90
  %.05.i.i.i85 = phi ptr [ %i.gu, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i90 ], [ %i.gb, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit ] ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.05.i.i.i85, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i.i86 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i.i.i.i.i86, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i90, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i.i.i84
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 4 uses
  %i.gg = load atomic i64, ptr %i.gf acquire, align 8 ; 2 uses
  %i.gh = icmp eq i64 %i.gg, 4294967297
  %i.gi = trunc i64 %i.gg to i32                  ; 2 uses
  br i1 %i.gh, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.gf, align 8, !tbaa !62
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  store i32 0, ptr %i.gj, align 4, !tbaa !64
  %i.gk = load ptr, ptr %i.ge, align 8, !tbaa !33
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8
  call void %i.gm(ptr noundef nonnull align 8 dereferenceable(16) %i.ge) #27, !inline_history !151
  %i.gn = load ptr, ptr %i.ge, align 8, !tbaa !33
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.gp = load ptr, ptr %i.go, align 8
  call void %i.gp(ptr noundef nonnull align 8 dereferenceable(16) %i.ge) #27, !inline_history !151
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i90

bb.bc:                                            ; preds = %bb.ba
  %i.gq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i87 = icmp eq i8 %i.gq, 0
  br i1 %.not.i.i.i.i.i.i.i.i87, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gr = add nsw i32 %i.gi, -1
  store i32 %i.gr, ptr %i.gf, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i88

bb.be:                                            ; preds = %bb.bc
  %i.gs = atomicrmw volatile add ptr %i.gf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i88

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i88: ; preds = %bb.be, %bb.bd
  %.0.i.i.i.i.i.i.i.i.i89 = phi i32 [ %i.gi, %bb.bd ], [ %i.gs, %bb.be ]
  %i.gt = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i89, 1
  br i1 %i.gt, label %bb.bf, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i90, !prof !66

bb.bf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i88
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ge) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i90

_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i90: ; preds = %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i88, %bb.bb, %.lr.ph.i.i.i84
  %i.gu = getelementptr inbounds nuw i8, ptr %.05.i.i.i85, i64 16 ; 2 uses
  %.not.i.i.i91 = icmp eq ptr %i.gu, %i.gc
  br i1 %.not.i.i.i91, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i92, label %.lr.ph.i.i.i84, !llvm.loop !152

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i92: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i90
  %.pr.i93 = load ptr, ptr %4, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i94

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i94: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i92, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit
  %i.gv = phi ptr [ %.pr.i93, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i92 ], [ %i.gb, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit ] ; 3 uses
end_hunk_5
begin_hunk_6_@_ZNK5arrow5Table8ToStringB5cxx11Ev:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.e, ptr noundef nonnull align 8 dereferenceable(5) %i.a, i64 5, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 4, ptr %i.f, align 8, !tbaa !235
  store ptr %i.a, ptr %6, align 8, !tbaa !153
  store i64 0, ptr %i.b, align 8, !tbaa !235
  store i8 0, ptr %i.a, align 8, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 48
  store <4 x i8> <i8 0, i8 1, i8 1, i8 1>, ptr %i.g, align 16, !tbaa !282
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 100, ptr %i.h, align 4, !tbaa !283
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.j, i8 0, i64 80, i1 false), !alias.scope !286
  store ptr %i.j, ptr %i.i, align 8, !tbaa !234, !alias.scope !286
  store i8 91, ptr %i.j, align 8, !tbaa !61, !alias.scope !286
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.k, align 16, !tbaa !235, !alias.scope !286
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !234, !alias.scope !286
  store i8 93, ptr %i.m, align 8, !tbaa !61, !alias.scope !286
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 96
  store i64 1, ptr %i.n, align 16, !tbaa !235, !alias.scope !286
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 120
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 136 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !234, !alias.scope !286
  store i8 44, ptr %i.p, align 8, !tbaa !61, !alias.scope !286
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 128
  store i64 1, ptr %i.q, align 16, !tbaa !235, !alias.scope !286
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 168 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.s, i8 0, i64 80, i1 false), !alias.scope !289
  store ptr %i.s, ptr %i.r, align 8, !tbaa !234, !alias.scope !289
  store i8 91, ptr %i.s, align 8, !tbaa !61, !alias.scope !289
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 160
  store i64 1, ptr %i.t, align 16, !tbaa !235, !alias.scope !289
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 184
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !234, !alias.scope !289
  store i8 93, ptr %i.v, align 8, !tbaa !61, !alias.scope !289
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 192
  store i64 1, ptr %i.w, align 16, !tbaa !235, !alias.scope !289
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 216
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 232 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !234, !alias.scope !289
  store i8 44, ptr %i.y, align 8, !tbaa !61, !alias.scope !289
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 224
  store i64 1, ptr %i.z, align 16, !tbaa !235, !alias.scope !289
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  invoke void @_ZN5arrow11PrettyPrintERKNS_5TableERKNS_18PrettyPrintOptionsEPSo(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(248) %5, ptr noundef nonnull %i.aa)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.p

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.ab = load ptr, ptr %4, align 8, !tbaa !118
  store ptr %i.ab, ptr %3, align 8, !tbaa !118
  store ptr null, ptr %4, align 8, !tbaa !118
  call void @_ZN5arrow18PrettyPrintOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %5) #27
  %i.ac = load ptr, ptr %6, align 8, !tbaa !153   ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.a
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !61
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ag = load ptr, ptr %3, align 8, !tbaa !118
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_ZN5arrow6StatusD2Ev.exit42, label %bb.b, !prof !121

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZN5arrow4util8ArrowLogC1EPKciNS0_13ArrowLogLevelE(ptr noundef nonnull align 8 dereferenceable(17) %7, ptr noundef nonnull @.str.11, i32 noundef 394, i32 noundef 3)
          to label %bb.c unwind label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA24_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(24) @.str.12)
          to label %bb.d unwind label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA19_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull align 1 dereferenceable(19) @.str.13)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA27_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 1 dereferenceable(27) @.str.14)
          to label %bb.f unwind label %bb.r

bb.f:                                             ; preds = %bb.e
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA2_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull align 1 dereferenceable(2) @.str.15)
          to label %bb.g unwind label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA11_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull align 1 dereferenceable(11) @.str.16)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA3_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 1 dereferenceable(3) @.str.17)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.j unwind label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.critedge unwind label %bb.t  ; 0 uses

.critedge:                                        ; preds = %bb.j
  %i.ap = load ptr, ptr %8, align 8, !tbaa !153   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %.critedge34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %.critedge
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !61
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #26
  br label %.critedge34

.critedge34:                                      ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %.pr = load ptr, ptr %3, align 8, !tbaa !118    ; 2 uses
  %.not.i41 = icmp eq ptr %.pr, null
  br i1 %.not.i41, label %_ZN5arrow6StatusD2Ev.exit42, label %bb.k, !prof !292

bb.k:                                             ; preds = %.critedge34
  %i.au = getelementptr inbounds nuw i8, ptr %.pr, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !130, !range !140, !noundef !141
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %_ZN5arrow6StatusD2Ev.exit42, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  br label %_ZN5arrow6StatusD2Ev.exit42

_ZN5arrow6StatusD2Ev.exit42:                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.critedge34, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !293)
  call void @llvm.experimental.noalias.scope.decl(metadata !296)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.ax, ptr %0, align 8, !tbaa !234, !alias.scope !299
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ay, align 8, !tbaa !235, !alias.scope !299
  store i8 0, ptr %i.ax, align 8, !tbaa !61, !alias.scope !299
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !300, !noalias !299 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ba, null
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !299 ; 2 uses
  %i.bd = icmp ugt ptr %i.ba, %i.bc
  %.08.i.i.i = select i1 %i.bd, ptr %i.ba, ptr %i.bc ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit42
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !304, !noalias !299 ; 2 uses
  %i.bg = ptrtoint ptr %.08.i.i.i to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.bf, i64 noundef %i.bi)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = load ptr, ptr %0, align 8, !tbaa !153, !alias.scope !299 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.ax
  br i1 %i.bm, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.n
  %i.bn = load i64, ptr %i.ax, align 8, !tbaa !61, !alias.scope !299
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #26
  br label %.body

bb.o:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit42
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bp)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.n

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.o, %bb.m
  %i.bq = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bq, ptr %2, align 8, !tbaa !33
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bs = getelementptr i8, ptr %i.bq, i64 -24
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds i8, ptr %2, i64 %i.bt
  store ptr %i.br, ptr %i.bu, align 8, !tbaa !33
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bv, ptr %i.aa, align 8, !tbaa !33
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i32 0, i32 0, i32 2), ptr %i.bw, align 8, !tbaa !33
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !153 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !61
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #26
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i32 0, i32 0, i32 2), ptr %i.bw, align 8, !tbaa !33
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cd) #27
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ce, ptr %2, align 8, !tbaa !33
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cg = getelementptr i8, ptr %i.ce, i64 -24
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds i8, ptr %2, i64 %i.ch
  store ptr %i.cf, ptr %i.ci, align 8, !tbaa !33
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.cj, align 8, !tbaa !305
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ck) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.p:                                             ; preds = %bb.a
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow18PrettyPrintOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %5) #27
  %i.cm = load ptr, ptr %6, align 8, !tbaa !153   ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.a
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.p
  %i.co = load i64, ptr %i.a, align 8, !tbaa !61
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %_ZN5arrow6StatusD2Ev.exit52

bb.q:                                             ; preds = %bb.b
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.r:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.s:                                             ; preds = %bb.i
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

bb.t:                                             ; preds = %bb.j
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = load ptr, ptr %8, align 8, !tbaa !153   ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.t
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !61
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48, %bb.s
  %.pn25 = phi { ptr, i32 } [ %i.cs, %bb.s ], [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %i.ct, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %.pn25.pn = phi { ptr, i32 } [ %.pn25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ], [ %i.cr, %bb.r ]
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %7) #27
  br label %bb.v

bb.v:                                             ; preds = %bb.q, %bb.u
  %.pn25.pn.pn = phi { ptr, i32 } [ %.pn25.pn, %bb.u ], [ %i.cq, %bb.q ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.cz = load ptr, ptr %3, align 8, !tbaa !118   ; 2 uses
  %.not.i51 = icmp eq ptr %i.cz, null
  br i1 %.not.i51, label %_ZN5arrow6StatusD2Ev.exit52, label %bb.w, !prof !121

bb.w:                                             ; preds = %bb.v
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !130, !range !140, !noundef !141
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %_ZN5arrow6StatusD2Ev.exit52, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  br label %_ZN5arrow6StatusD2Ev.exit52

_ZN5arrow6StatusD2Ev.exit52:                      ; preds = %bb.x, %bb.w, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %.pn25.pn.pn.pn = phi { ptr, i32 } [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %.pn25.pn.pn, %bb.v ], [ %.pn25.pn.pn, %bb.w ], [ %.pn25.pn.pn, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %.body

.body:                                            ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit52
  %.pn30 = phi { ptr, i32 } [ %.pn25.pn.pn.pn, %_ZN5arrow6StatusD2Ev.exit52 ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bk, %bb.n ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn30
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2 align 2

declare void @_ZN5arrow11PrettyPrintERKNS_5TableERKNS_18PrettyPrintOptionsEPSo(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(248), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !234
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.31) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #24
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !66

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #25 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !153
  store i64 %i.c, ptr %i.a, align 8, !tbaa !61
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !61
  store i8 %i.j, ptr %i.i, align 1, !tbaa !61
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !235
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !61
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow18PrettyPrintOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !153  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !tbaa !61
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !153  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !61
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
end_hunk_6
begin_hunk_7_@_ZN5arrow17ConcatenateTablesERKSt6vectorISt10shared_ptrINS_5TableEESaIS3_EENS_24ConcatenateTablesOptionsEPNS_10MemoryPoolE:bb.a
  %.pn = phi { ptr, i32 } [ %i.iz, %bb.cj ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140 ], [ %eh.lpad-body, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  %i.jg = load ptr, ptr %14, align 8, !tbaa !153  ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ji = icmp eq ptr %i.jg, %i.jh
  br i1 %i.ji, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142
  %i.jj = load i64, ptr %i.jh, align 8, !tbaa !61
  %i.jk = add i64 %i.jj, 1
  call void @_ZdlPvm(ptr noundef %i.jg, i64 noundef %i.jk) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143, %bb.ci
  %.pn.pn = phi { ptr, i32 } [ %i.iy, %bb.ci ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.cm

bb.cl:                                            ; preds = %bb.bt
  %i.jl = load i64, ptr %i.a, align 8, !tbaa !109
  %i.jm = add i64 %i.jl, 1                        ; 3 uses
  store i64 %i.jm, ptr %i.a, align 8, !tbaa !109
  %i.jn = load ptr, ptr %i.b, align 8, !tbaa !307
  %i.jo = load ptr, ptr %1, align 8, !tbaa !310   ; 2 uses
  %i.jp = ptrtoint ptr %i.jn to i64
  %i.jq = ptrtoint ptr %i.jo to i64
  %i.jr = sub i64 %i.jp, %i.jq
  %i.js = ashr exact i64 %i.jr, 4
  %.not = icmp ult i64 %i.jm, %i.js
  br i1 %.not, label %.lr.ph, label %.critedge95, !llvm.loop !349

bb.cm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, %bb.ch
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145 ], [ %i.ix, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.ew

.critedge95:                                      ; preds = %bb.cl, %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.jt = load ptr, ptr %i.gm, align 8, !tbaa !52 ; 8 uses
  %.not.i.i146 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i146, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit150, label %bb.cn

bb.cn:                                            ; preds = %.critedge95
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8 ; 4 uses
  %i.jv = load atomic i64, ptr %i.ju acquire, align 8 ; 2 uses
  %i.jw = icmp eq i64 %i.jv, 4294967297
  %i.jx = trunc i64 %i.jv to i32                  ; 2 uses
  br i1 %i.jw, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  store i32 0, ptr %i.ju, align 8, !tbaa !62
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 12
  store i32 0, ptr %i.jy, align 4, !tbaa !64
  %i.jz = load ptr, ptr %i.jt, align 8, !tbaa !33
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %i.kb = load ptr, ptr %i.ka, align 8
  tail call void %i.kb(ptr noundef nonnull align 8 dereferenceable(16) %i.jt) #27, !inline_history !150
  %i.kc = load ptr, ptr %i.jt, align 8, !tbaa !33
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 24
  %i.ke = load ptr, ptr %i.kd, align 8
  tail call void %i.ke(ptr noundef nonnull align 8 dereferenceable(16) %i.jt) #27, !inline_history !150
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit150

bb.cp:                                            ; preds = %bb.cn
  %i.kf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i147 = icmp eq i8 %i.kf, 0
  br i1 %.not.i.i.i147, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.kg = add nsw i32 %i.jx, -1
  store i32 %i.kg, ptr %i.ju, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i148

bb.cr:                                            ; preds = %bb.cp
  %i.kh = atomicrmw volatile add ptr %i.ju, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i148

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i148: ; preds = %bb.cr, %bb.cq
  %.0.i.i.i.i149 = phi i32 [ %i.jx, %bb.cq ], [ %i.kh, %bb.cr ]
  %i.ki = icmp eq i32 %.0.i.i.i.i149, 1
  br i1 %i.ki, label %bb.cs, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit150, !prof !66

bb.cs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i148
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jt) #27
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit150

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit150: ; preds = %.critedge95, %bb.co, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i148, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.ct

bb.ct:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit150, %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EED2Ev.exit
  %.2.sroa.phi = phi ptr [ %.2.sroa.gep, %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EED2Ev.exit ], [ %i.b, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit150 ]
  %.2 = phi ptr [ %6, %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EED2Ev.exit ], [ %1, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit150 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  %i.kj = load ptr, ptr %.2, align 8, !tbaa !333
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !106 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !35 ; 3 uses
  store ptr %i.km, ptr %16, align 8, !tbaa !35
  %i.kn = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !52 ; 3 uses
  store ptr %i.kp, ptr %i.kn, align 8, !tbaa !52
  %.not.i.i.i151 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i.i151, label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit153, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8 ; 3 uses
  %i.kr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i152 = icmp eq i8 %i.kr, 0
  br i1 %.not.i.i.i.i152, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ks = load i32, ptr %i.kq, align 4, !tbaa !3
  %i.kt = add nsw i32 %i.ks, 1
  store i32 %i.kt, ptr %i.kq, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit153

bb.cw:                                            ; preds = %bb.cu
  %i.ku = atomicrmw volatile add ptr %i.kq, i32 1 acq_rel, align 4 ; 0 uses
  %.pre307 = load ptr, ptr %16, align 8, !tbaa !35
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit153

_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit153: ; preds = %bb.ct, %bb.cv, %bb.cw
  %i.kv = phi ptr [ %i.km, %bb.ct ], [ %i.km, %bb.cv ], [ %.pre307, %bb.cw ] ; 2 uses
  %i.kw = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.kv)
          to label %bb.cx unwind label %bb.da     ; 4 uses

bb.cx:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit153
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  %i.kx = sext i32 %i.kw to i64                   ; 2 uses
  %i.ky = icmp slt i32 %i.kw, 0
  br i1 %i.ky, label %bb.cy, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.cy:                                            ; preds = %bb.cx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #24
          to label %.noexc155 unwind label %bb.db

.noexc155:                                        ; preds = %bb.cy
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.cx
  %.not.i.i.i.i154 = icmp eq i32 %i.kw, 0
  br i1 %.not.i.i.i.i154, label %._crit_edge296, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.kz = shl nuw nsw i64 %i.kx, 4                ; 3 uses
  %i.la = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kz) #25
          to label %.lr.ph295 unwind label %bb.db ; 4 uses

.lr.ph295:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.la, ptr %17, align 8, !tbaa !77
  %i.lb = getelementptr inbounds nuw [16 x i8], ptr %i.la, i64 %i.kx
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.la, i8 0, i64 %i.kz, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.la, i64 %i.kz
  %i.lc = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr %i.lb, ptr %i.ld, align 8, !tbaa !116
  store ptr %scevgep.i.i.i.i.i, ptr %i.lc, align 8, !tbaa !81
  %i.le = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.lf = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 5 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  %wide.trip.count = zext nneg i32 %i.kw to i64
  br label %bb.dc

._crit_edge296.loopexit:                          ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit
  %.pre309 = load ptr, ptr %16, align 8, !tbaa !35
  %.pre310 = load ptr, ptr %17, align 8, !tbaa !77
  %.pre311 = load ptr, ptr %i.lc, align 8, !tbaa !81
  %.pre312 = load ptr, ptr %i.ld, align 8, !tbaa !116
  br label %._crit_edge296

._crit_edge296:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i, %._crit_edge296.loopexit
  %i.lh = phi ptr [ %.pre312, %._crit_edge296.loopexit ], [ null, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ] ; 2 uses
  %i.li = phi ptr [ %.pre311, %._crit_edge296.loopexit ], [ null, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ] ; 3 uses
  %i.lj = phi ptr [ %.pre310, %._crit_edge296.loopexit ], [ null, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ] ; 4 uses
  %i.lk = phi ptr [ %.pre309, %._crit_edge296.loopexit ], [ %i.kv, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ] ; 2 uses
  store ptr %i.lk, ptr %20, align 8, !tbaa !35
  %i.ll = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.lm = load ptr, ptr %i.kn, align 8, !tbaa !52 ; 2 uses
  store ptr null, ptr %i.kn, align 8, !tbaa !52
  store ptr %i.lm, ptr %i.ll, align 8, !tbaa !52
  store ptr null, ptr %16, align 8, !tbaa !35
  store ptr %i.lj, ptr %21, align 8, !tbaa !77
  %i.ln = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %i.li, ptr %i.ln, align 8, !tbaa !81
  %i.lo = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %i.lh, ptr %i.lo, align 8, !tbaa !116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %i.lp = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25
          to label %.noexc157 unwind label %bb.ek, !inline_history !144 ; 11 uses

.noexc157:                                        ; preds = %._crit_edge296
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  store i32 1, ptr %i.lq, align 8, !tbaa !62, !noalias !350
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 12
  store i32 1, ptr %i.lr, align 4, !tbaa !64, !noalias !350
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow11SimpleTableESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.lp, align 8, !tbaa !33, !noalias !350
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false), !noalias !350
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false), !noalias !350
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 24
  store ptr getelementptr inbounds inrange(-16, 96) ({ [14 x ptr] }, ptr @_ZTVN5arrow11SimpleTableE, i32 0, i32 0, i32 2), ptr %i.ls, align 8, !tbaa !33, !noalias !350
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lp, i64 48
  store ptr %i.lj, ptr %i.lu, align 8, !tbaa !77, !noalias !350
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lp, i64 56
  store ptr %i.li, ptr %i.lv, align 8, !tbaa !81, !noalias !350
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lp, i64 64
  store ptr %i.lh, ptr %i.lw, align 8, !tbaa !116, !noalias !350
  store ptr %i.lk, ptr %i.lt, align 8, !tbaa !178, !noalias !350
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lp, i64 32
  store ptr %i.lm, ptr %i.lx, align 8, !tbaa !52, !noalias !350
  %i.ly = icmp eq ptr %i.li, %i.lj
  br i1 %i.ly, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit227, label %bb.cz

bb.cz:                                            ; preds = %.noexc157
  %i.lz = load ptr, ptr %i.lj, align 8, !tbaa !82, !noalias !350
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 40
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !85, !noalias !350
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit227

bb.da:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit153
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.db:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.cy
  %i.md = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.dc:                                            ; preds = %.lr.ph295, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph295 ], [ %indvars.iv.next, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.me = load ptr, ptr %.2, align 8, !tbaa !333  ; 2 uses
  %i.mf = load ptr, ptr %.2.sroa.phi, align 8, !tbaa !333 ; 2 uses
  %i.mg = icmp eq ptr %i.me, %i.mf
  %.pre318 = trunc nuw nsw i64 %indvars.iv to i32 ; 2 uses
  br i1 %i.mg, label %._crit_edge292, label %.lr.ph291

._crit_edge292:                                   ; preds = %._crit_edge288, %bb.dc
  %i.mh = load ptr, ptr %16, align 8, !tbaa !35
  %i.mi = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32) %i.mh, i32 noundef %.pre318)
          to label %bb.dv unwind label %bb.ej

.lr.ph291:                                        ; preds = %bb.dc, %._crit_edge288
  %.sroa.0257.0289 = phi ptr [ %i.ni, %._crit_edge288 ], [ %i.me, %bb.dc ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  %i.mj = load ptr, ptr %.sroa.0257.0289, align 8, !tbaa !106 ; 2 uses
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !33
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %i.mm = load ptr, ptr %i.ml, align 8
  invoke void %i.mm(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.49") align 8 %19, ptr noundef nonnull align 8 dereferenceable(32) %i.mj, i32 noundef %.pre318)
          to label %bb.dd unwind label %bb.dk

bb.dd:                                            ; preds = %.lr.ph291
  %i.mn = load ptr, ptr %19, align 8, !tbaa !82   ; 2 uses
  %i.mo = load ptr, ptr %i.le, align 8, !tbaa !52 ; 8 uses
  %.not.i.i158 = icmp eq ptr %i.mo, null
  br i1 %.not.i.i158, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 8 ; 4 uses
  %i.mq = load atomic i64, ptr %i.mp acquire, align 8 ; 2 uses
  %i.mr = icmp eq i64 %i.mq, 4294967297
  %i.ms = trunc i64 %i.mq to i32                  ; 2 uses
  br i1 %i.mr, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  store i32 0, ptr %i.mp, align 8, !tbaa !62
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mo, i64 12
  store i32 0, ptr %i.mt, align 4, !tbaa !64
  %i.mu = load ptr, ptr %i.mo, align 8, !tbaa !33
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  %i.mw = load ptr, ptr %i.mv, align 8
  call void %i.mw(ptr noundef nonnull align 8 dereferenceable(16) %i.mo) #27, !inline_history !250
  %i.mx = load ptr, ptr %i.mo, align 8, !tbaa !33
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 24
  %i.mz = load ptr, ptr %i.my, align 8
  call void %i.mz(ptr noundef nonnull align 8 dereferenceable(16) %i.mo) #27, !inline_history !250
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.dg:                                            ; preds = %bb.de
  %i.na = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i159 = icmp eq i8 %i.na, 0
  br i1 %.not.i.i.i159, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.nb = add nsw i32 %i.ms, -1
  store i32 %i.nb, ptr %i.mp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i160

bb.di:                                            ; preds = %bb.dg
  %i.nc = atomicrmw volatile add ptr %i.mp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i160

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i160: ; preds = %bb.di, %bb.dh
  %.0.i.i.i.i161 = phi i32 [ %i.ms, %bb.dh ], [ %i.nc, %bb.di ]
  %i.nd = icmp eq i32 %.0.i.i.i.i161, 1
  br i1 %i.nd, label %bb.dj, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.dj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i160
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mo) #27
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.dd, %bb.df, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i160, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  %i.ne = load ptr, ptr %i.mn, align 8, !tbaa !212 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !212 ; 2 uses
  %i.nh = icmp eq ptr %i.ne, %i.ng
  br i1 %i.nh, label %._crit_edge288, label %.lr.ph287.preheader

.lr.ph287.preheader:                              ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.pre308 = load ptr, ptr %i.lf, align 8, !tbaa !172
  br label %.lr.ph287

._crit_edge288:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backERKS3_.exit, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.0257.0289, i64 16 ; 2 uses
  %i.nj = icmp eq ptr %i.ni, %i.mf
  br i1 %i.nj, label %._crit_edge292, label %.lr.ph291

bb.dk:                                            ; preds = %.lr.ph291
  %i.nk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %.body168

.lr.ph287:                                        ; preds = %.lr.ph287.preheader, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backERKS3_.exit
  %i.nl = phi ptr [ %i.pb, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backERKS3_.exit ], [ %.pre308, %.lr.ph287.preheader ] ; 7 uses
  %.sroa.0253.0286 = phi ptr [ %i.pc, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backERKS3_.exit ], [ %i.ne, %.lr.ph287.preheader ] ; 5 uses
  %i.nm = load ptr, ptr %i.lg, align 8, !tbaa !171
  %.not.i162 = icmp eq ptr %i.nl, %i.nm
  br i1 %.not.i162, label %bb.dp, label %bb.dl

bb.dl:                                            ; preds = %.lr.ph287
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.0253.0286, i64 8
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !52 ; 2 uses
  %i.np = load <2 x ptr>, ptr %.sroa.0253.0286, align 8, !tbaa !51
  store <2 x ptr> %i.np, ptr %i.nl, align 8, !tbaa !51
  %.not.i.i.i.i.i163 = icmp eq ptr %i.no, null
  br i1 %.not.i.i.i.i.i163, label %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.nq = getelementptr inbounds nuw i8, ptr %i.no, i64 8 ; 3 uses
  %i.nr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i164 = icmp eq i8 %i.nr, 0
  br i1 %.not.i.i.i.i.i.i164, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ns = load i32, ptr %i.nq, align 4, !tbaa !3
  %i.nt = add nsw i32 %i.ns, 1
  store i32 %i.nt, ptr %i.nq, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

bb.do:                                            ; preds = %bb.dm
  %i.nu = atomicrmw volatile add ptr %i.nq, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i165 = load ptr, ptr %i.lf, align 8, !tbaa !172
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i: ; preds = %bb.do, %bb.dn, %bb.dl
  %i.nv = phi ptr [ %i.nl, %bb.dl ], [ %i.nl, %bb.dn ], [ %.pre.i165, %bb.do ]
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 16 ; 2 uses
  store ptr %i.nw, ptr %i.lf, align 8, !tbaa !172
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backERKS3_.exit

bb.dp:                                            ; preds = %.lr.ph287
  %i.nx = load ptr, ptr %18, align 8, !tbaa !170  ; 5 uses
  %i.ny = ptrtoint ptr %i.nl to i64
  %i.nz = ptrtoint ptr %i.nx to i64               ; 2 uses
  %i.oa = sub i64 %i.ny, %i.nz                    ; 3 uses
  %i.ob = icmp eq i64 %i.oa, 9223372036854775792
  br i1 %i.ob, label %bb.dq, label %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.dq:                                            ; preds = %bb.dp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #24
          to label %.noexc247 unwind label %.loopexit.split-lp

.noexc247:                                        ; preds = %bb.dq
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.dp
  %i.oc = ashr exact i64 %i.oa, 4                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.oc, i64 1)
  %i.od = add nsw i64 %.sroa.speculated.i.i, %i.oc ; 2 uses
  %i.oe = icmp ult i64 %i.od, %i.oc
  %i.of = call i64 @llvm.umin.i64(i64 %i.od, i64 576460752303423487)
  %i.og = select i1 %i.oe, i64 576460752303423487, i64 %i.of ; 3 uses
  %.not.i.i238 = icmp ne i64 %i.og, 0
  call void @llvm.assume(i1 %.not.i.i238)
  %i.oh = shl nuw nsw i64 %i.og, 4
  %i.oi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oh) #25
          to label %.noexc248 unwind label %.loopexit ; 5 uses

.noexc248:                                        ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.oa
  %i.ok = getelementptr inbounds nuw i8, ptr %.sroa.0253.0286, i64 8
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !52 ; 2 uses
  %i.om = load <2 x ptr>, ptr %.sroa.0253.0286, align 8, !tbaa !51
  store <2 x ptr> %i.om, ptr %i.oj, align 8, !tbaa !51
  %.not.i.i.i.i.i239 = icmp eq ptr %i.ol, null
  br i1 %.not.i.i.i.i.i239, label %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i241, label %bb.dr

bb.dr:                                            ; preds = %.noexc248
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 8 ; 3 uses
  %i.oo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i240 = icmp eq i8 %i.oo, 0
  br i1 %.not.i.i.i.i.i.i240, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.op = load i32, ptr %i.on, align 4, !tbaa !3
  %i.oq = add nsw i32 %i.op, 1
  store i32 %i.oq, ptr %i.on, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i241

bb.dt:                                            ; preds = %bb.dr
  %i.or = atomicrmw volatile add ptr %i.on, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i241

_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i241: ; preds = %bb.dt, %bb.ds, %.noexc248
  %.not10.i.i.i.i242 = icmp eq ptr %i.nx, %i.nl
  br i1 %.not10.i.i.i.i242, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i243

.lr.ph.i.i.i.i243:                                ; preds = %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i241, %.lr.ph.i.i.i.i243
  %.012.i.i.i.i244 = phi ptr [ %i.ov, %.lr.ph.i.i.i.i243 ], [ %i.oi, %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i241 ] ; 2 uses
  %.0911.i.i.i.i245 = phi ptr [ %i.ou, %.lr.ph.i.i.i.i243 ], [ %i.nx, %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i241 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !355)
  call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.os = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i245, i64 8
  %i.ot = load <2 x ptr>, ptr %.0911.i.i.i.i245, align 8, !tbaa !51, !alias.scope !358, !noalias !355
  store ptr null, ptr %i.os, align 8, !tbaa !52, !alias.scope !358, !noalias !355
  store <2 x ptr> %i.ot, ptr %.012.i.i.i.i244, align 8, !tbaa !51, !alias.scope !355, !noalias !358
  store ptr null, ptr %.0911.i.i.i.i245, align 8, !tbaa !213, !alias.scope !358, !noalias !355
  %i.ou = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i245, i64 16 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i244, i64 16 ; 2 uses
  %.not.i.i.i.i246 = icmp eq ptr %i.ou, %i.nl
  br i1 %.not.i.i.i.i246, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i243, !llvm.loop !360

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i: ; preds = %.lr.ph.i.i.i.i243, %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i241
  %.0.lcssa.i.i.i.i = phi ptr [ %i.oi, %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i241 ], [ %i.ov, %.lr.ph.i.i.i.i243 ]
  %i.ow = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.nx, null
  br i1 %.not.i23.i, label %.noexc166, label %bb.du

bb.du:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  %i.ox = load ptr, ptr %i.lg, align 8, !tbaa !171
  %i.oy = ptrtoint ptr %i.ox to i64
  %i.oz = sub i64 %i.oy, %i.nz
  call void @_ZdlPvm(ptr noundef nonnull %i.nx, i64 noundef %i.oz) #26
  br label %.noexc166

.noexc166:                                        ; preds = %bb.du, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  store ptr %i.oi, ptr %18, align 8, !tbaa !170
  store ptr %i.ow, ptr %i.lf, align 8, !tbaa !172
  %i.pa = getelementptr inbounds nuw [16 x i8], ptr %i.oi, i64 %i.og
  store ptr %i.pa, ptr %i.lg, align 8, !tbaa !171
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backERKS3_.exit: ; preds = %.noexc166, %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i
  %i.pb = phi ptr [ %i.ow, %.noexc166 ], [ %i.nw, %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i ]
  %i.pc = getelementptr inbounds nuw i8, ptr %.sroa.0253.0286, i64 16 ; 2 uses
  %i.pd = icmp eq ptr %i.pc, %i.ng
  br i1 %i.pd, label %._crit_edge288, label %.lr.ph287

.loopexit:                                        ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body168

.loopexit.split-lp:                               ; preds = %bb.dq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body168

bb.dv:                                            ; preds = %._crit_edge292
  %i.pe = load ptr, ptr %i.mi, align 8, !tbaa !53
  %i.pf = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #25
          to label %.noexc167 unwind label %bb.ej ; 6 uses

.noexc167:                                        ; preds = %bb.dv
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pe, i64 56
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  store i32 1, ptr %i.ph, align 8, !tbaa !62, !noalias !361
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pf, i64 12
  store i32 1, ptr %i.pi, align 4, !tbaa !64, !noalias !361
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.pf, align 8, !tbaa !33, !noalias !361
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pf, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN5arrow12ChunkedArrayEJRSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEEvPT_DpOT0_(ptr noundef nonnull %i.pj, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(16) %i.pg)
          to label %_ZSt11make_sharedIN5arrow12ChunkedArrayEJRSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEES3_IT_EDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !361

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %.noexc167
  %i.pk = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.pf, i64 noundef 104) #26, !noalias !361
  br label %.body168

_ZSt11make_sharedIN5arrow12ChunkedArrayEJRSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEES3_IT_EDpOT0_.exit: ; preds = %.noexc167
  %i.pl = load ptr, ptr %17, align 8, !tbaa !77
  %i.pm = getelementptr inbounds nuw [16 x i8], ptr %i.pl, i64 %indvars.iv ; 2 uses
  store ptr %i.pj, ptr %i.pm, align 8, !tbaa !185
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 8 ; 2 uses
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !52 ; 8 uses
  store ptr %i.pf, ptr %i.pn, align 8, !tbaa !52
  %.not.i.i.i.i170 = icmp eq ptr %i.po, null
  br i1 %.not.i.i.i.i170, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit178, label %bb.dw

bb.dw:                                            ; preds = %_ZSt11make_sharedIN5arrow12ChunkedArrayEJRSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEES3_IT_EDpOT0_.exit
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 8 ; 4 uses
  %i.pq = load atomic i64, ptr %i.pp acquire, align 8 ; 2 uses
  %i.pr = icmp eq i64 %i.pq, 4294967297
  %i.ps = trunc i64 %i.pq to i32                  ; 2 uses
  br i1 %i.pr, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  store i32 0, ptr %i.pp, align 8, !tbaa !62
  %i.pt = getelementptr inbounds nuw i8, ptr %i.po, i64 12
  store i32 0, ptr %i.pt, align 4, !tbaa !64
  %i.pu = load ptr, ptr %i.po, align 8, !tbaa !33
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 16
  %i.pw = load ptr, ptr %i.pv, align 8
  call void %i.pw(ptr noundef nonnull align 8 dereferenceable(16) %i.po) #27, !inline_history !127
  %i.px = load ptr, ptr %i.po, align 8, !tbaa !33
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 24
  %i.pz = load ptr, ptr %i.py, align 8
  call void %i.pz(ptr noundef nonnull align 8 dereferenceable(16) %i.po) #27, !inline_history !127
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit178

bb.dy:                                            ; preds = %bb.dw
  %i.qa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i171 = icmp eq i8 %i.qa, 0
  br i1 %.not.i.i.i.i.i171, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.qb = add nsw i32 %i.ps, -1
  store i32 %i.qb, ptr %i.pp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i172

bb.ea:                                            ; preds = %bb.dy
  %i.qc = atomicrmw volatile add ptr %i.pp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i172

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i172: ; preds = %bb.ea, %bb.dz
  %.0.i.i.i.i.i.i173 = phi i32 [ %i.ps, %bb.dz ], [ %i.qc, %bb.ea ]
  %i.qd = icmp eq i32 %.0.i.i.i.i.i.i173, 1
  br i1 %i.qd, label %bb.eb, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit178, !prof !66

bb.eb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i172
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.po) #27
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit178

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit178: ; preds = %bb.eb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i172, %bb.dx, %_ZSt11make_sharedIN5arrow12ChunkedArrayEJRSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEES3_IT_EDpOT0_.exit
  %i.qe = load ptr, ptr %18, align 8, !tbaa !170  ; 3 uses
  %i.qf = load ptr, ptr %i.lf, align 8, !tbaa !172 ; 2 uses
  %.not4.i.i.i179 = icmp eq ptr %i.qe, %i.qf
  br i1 %.not4.i.i.i179, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i180

.lr.ph.i.i.i180:                                  ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit178, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.05.i.i.i181 = phi ptr [ %i.qx, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i ], [ %i.qe, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit178 ] ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.05.i.i.i181, i64 8
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i.i182 = icmp eq ptr %i.qh, null
  br i1 %.not.i.i.i.i.i.i.i182, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, label %bb.ec

bb.ec:                                            ; preds = %.lr.ph.i.i.i180
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 8 ; 4 uses
  %i.qj = load atomic i64, ptr %i.qi acquire, align 8 ; 2 uses
  %i.qk = icmp eq i64 %i.qj, 4294967297
  %i.ql = trunc i64 %i.qj to i32                  ; 2 uses
  br i1 %i.qk, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  store i32 0, ptr %i.qi, align 8, !tbaa !62
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qh, i64 12
  store i32 0, ptr %i.qm, align 4, !tbaa !64
  %i.qn = load ptr, ptr %i.qh, align 8, !tbaa !33
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  %i.qp = load ptr, ptr %i.qo, align 8
  call void %i.qp(ptr noundef nonnull align 8 dereferenceable(16) %i.qh) #27, !inline_history !187
  %i.qq = load ptr, ptr %i.qh, align 8, !tbaa !33
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 24
  %i.qs = load ptr, ptr %i.qr, align 8
  call void %i.qs(ptr noundef nonnull align 8 dereferenceable(16) %i.qh) #27, !inline_history !187
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

bb.ee:                                            ; preds = %bb.ec
  %i.qt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i183 = icmp eq i8 %i.qt, 0
  br i1 %.not.i.i.i.i.i.i.i.i183, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.qu = add nsw i32 %i.ql, -1
  store i32 %i.qu, ptr %i.qi, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i184

bb.eg:                                            ; preds = %bb.ee
  %i.qv = atomicrmw volatile add ptr %i.qi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i184

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i184: ; preds = %bb.eg, %bb.ef
  %.0.i.i.i.i.i.i.i.i.i185 = phi i32 [ %i.ql, %bb.ef ], [ %i.qv, %bb.eg ]
  %i.qw = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i185, 1
  br i1 %i.qw, label %bb.eh, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, !prof !66

bb.eh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i184
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qh) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i: ; preds = %bb.eh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i184, %bb.ed, %.lr.ph.i.i.i180
  %i.qx = getelementptr inbounds nuw i8, ptr %.05.i.i.i181, i64 16 ; 2 uses
  %.not.i.i.i186 = icmp eq ptr %i.qx, %i.qf
  br i1 %.not.i.i.i186, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i180, !llvm.loop !188

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.pr.i187 = load ptr, ptr %18, align 8, !tbaa !170
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit178
  %i.qy = phi ptr [ %.pr.i187, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.qe, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit178 ] ; 3 uses
  %.not.i.i1.i188 = icmp eq ptr %i.qy, null
  br i1 %.not.i.i1.i188, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, label %bb.ei

bb.ei:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i
  %i.qz = load ptr, ptr %i.lg, align 8, !tbaa !171
  %i.ra = ptrtoint ptr %i.qz to i64
  %i.rb = ptrtoint ptr %i.qy to i64
  %i.rc = sub i64 %i.ra, %i.rb
  call void @_ZdlPvm(ptr noundef nonnull %i.qy, i64 noundef %i.rc) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge296.loopexit, label %bb.dc, !llvm.loop !364

bb.ej:                                            ; preds = %bb.dv, %._crit_edge292
  %i.rd = landingpad { ptr, i32 }
          cleanup
  br label %.body168

.body168:                                         ; preds = %.loopexit, %.loopexit.split-lp, %bb.ej, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, %bb.dk
  %.pn85.pn = phi { ptr, i32 } [ %i.nk, %bb.dk ], [ %i.pk, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ], [ %i.rd, %bb.ej ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %18) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  br label %bb.el

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit227: ; preds = %.noexc157, %bb.cz
  %.sink.i.i.i.i.i.i.i.i = phi i64 [ 0, %.noexc157 ], [ %i.mb, %bb.cz ]
  %i.re = getelementptr inbounds nuw i8, ptr %i.lp, i64 40
  store i64 %.sink.i.i.i.i.i.i.i.i, ptr %i.re, align 8, !tbaa !103, !noalias !350
  store ptr null, ptr %0, align 8, !tbaa !118
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ls, ptr %i.rf, align 8, !tbaa !106
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.lp, ptr %i.rg, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %bb.eo

bb.ek:                                            ; preds = %._crit_edge296
  %i.rh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %21) #27
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %20) #27
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %.body168
  %.pn85.pn.pn = phi { ptr, i32 } [ %.pn85.pn, %.body168 ], [ %i.rh, %bb.ek ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #27
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.db
  %.pn85.pn.pn.pn = phi { ptr, i32 } [ %.pn85.pn.pn, %bb.el ], [ %i.md, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.da
  %.pn85.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn85.pn.pn.pn, %bb.em ], [ %i.mc, %bb.da ]
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %bb.ew

bb.eo:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit139, %.critedge, %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EED2Ev.exit, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit227
  %i.ri = load ptr, ptr %6, align 8, !tbaa !310   ; 3 uses
  %i.rj = load ptr, ptr %.2.sroa.gep, align 8, !tbaa !307 ; 2 uses
  %.not4.i.i.i228 = icmp eq ptr %i.ri, %i.rj
  br i1 %.not4.i.i.i228, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5TableEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i229

.lr.ph.i.i.i229:                                  ; preds = %bb.eo, %_ZSt8_DestroyISt10shared_ptrIN5arrow5TableEEEvPT_.exit.i.i.i
  %.05.i.i.i230 = phi ptr [ %i.sb, %_ZSt8_DestroyISt10shared_ptrIN5arrow5TableEEEvPT_.exit.i.i.i ], [ %i.ri, %bb.eo ] ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %.05.i.i.i230, i64 8
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i.i231 = icmp eq ptr %i.rl, null
  br i1 %.not.i.i.i.i.i.i.i231, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5TableEEEvPT_.exit.i.i.i, label %bb.ep

bb.ep:                                            ; preds = %.lr.ph.i.i.i229
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 8 ; 4 uses
  %i.rn = load atomic i64, ptr %i.rm acquire, align 8 ; 2 uses
  %i.ro = icmp eq i64 %i.rn, 4294967297
  %i.rp = trunc i64 %i.rn to i32                  ; 2 uses
  br i1 %i.ro, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  store i32 0, ptr %i.rm, align 8, !tbaa !62
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rl, i64 12
  store i32 0, ptr %i.rq, align 4, !tbaa !64
  %i.rr = load ptr, ptr %i.rl, align 8, !tbaa !33
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 16
  %i.rt = load ptr, ptr %i.rs, align 8
  call void %i.rt(ptr noundef nonnull align 8 dereferenceable(16) %i.rl) #27, !inline_history !365
  %i.ru = load ptr, ptr %i.rl, align 8, !tbaa !33
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 24
  %i.rw = load ptr, ptr %i.rv, align 8
  call void %i.rw(ptr noundef nonnull align 8 dereferenceable(16) %i.rl) #27, !inline_history !365
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5TableEEEvPT_.exit.i.i.i

bb.er:                                            ; preds = %bb.ep
  %i.rx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i232 = icmp eq i8 %i.rx, 0
  br i1 %.not.i.i.i.i.i.i.i.i232, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.ry = add nsw i32 %i.rp, -1
  store i32 %i.ry, ptr %i.rm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i233

bb.et:                                            ; preds = %bb.er
  %i.rz = atomicrmw volatile add ptr %i.rm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i233

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i233: ; preds = %bb.et, %bb.es
  %.0.i.i.i.i.i.i.i.i.i234 = phi i32 [ %i.rp, %bb.es ], [ %i.rz, %bb.et ]
  %i.sa = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i234, 1
  br i1 %i.sa, label %bb.eu, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5TableEEEvPT_.exit.i.i.i, !prof !66

bb.eu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i233
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rl) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5TableEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5TableEEEvPT_.exit.i.i.i: ; preds = %bb.eu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i233, %bb.eq, %.lr.ph.i.i.i229
  %i.sb = getelementptr inbounds nuw i8, ptr %.05.i.i.i230, i64 16 ; 2 uses
  %.not.i.i.i235 = icmp eq ptr %i.sb, %i.rj
  br i1 %.not.i.i.i235, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5TableEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i229, !llvm.loop !366

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5TableEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5TableEEEvPT_.exit.i.i.i
  %.pr.i236 = load ptr, ptr %6, align 8, !tbaa !310
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5TableEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5TableEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5TableEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.eo
  %i.sc = phi ptr [ %.pr.i236, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5TableEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.ri, %bb.eo ] ; 3 uses
  %.not.i.i1.i237 = icmp eq ptr %i.sc, null
  br i1 %.not.i.i1.i237, label %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EED2Ev.exit, label %bb.ev

bb.ev:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5TableEES3_EvT_S5_RSaIT0_E.exit.i
  %i.sd = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !326
  %i.sf = ptrtoint ptr %i.se to i64
  %i.sg = ptrtoint ptr %i.sc to i64
  %i.sh = sub i64 %i.sf, %i.sg
  call void @_ZdlPvm(ptr noundef nonnull %i.sc, i64 noundef %i.sh) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5TableEES3_EvT_S5_RSaIT0_E.exit.i, %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.ex

bb.ew:                                            ; preds = %bb.en, %bb.cm, %bb.bo
  %.pn91.pn = phi { ptr, i32 } [ %.pn91, %bb.bo ], [ %.pn85.pn.pn.pn.pn, %bb.en ], [ %.pn.pn.pn, %bb.cm ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  resume { ptr, i32 } %.pn91.pn

bb.ex:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

declare void @_ZN5arrow12UnifySchemasERKSt6vectorISt10shared_ptrINS_6SchemaEESaIS3_EENS_5Field12MergeOptionsE(ptr dead_on_unwind writable sret(%"class.arrow::Result.96") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow20PromoteTableToSchemaERKSt10shared_ptrINS_5TableEERKS0_INS_6SchemaEEPNS_10MemoryPoolE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr noundef %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::compute::CastOptions", align 8 ; 10 uses
  %5 = alloca %"struct.arrow::TypeHolder", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN5arrow7compute11CastOptionsC1Eb(ptr noundef nonnull align 8 dereferenceable(46) %4, i1 noundef zeroext true)
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.a, align 8, !tbaa !370, !alias.scope !367
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !noalias !367
  store ptr null, ptr %i.b, align 8, !tbaa !372, !alias.scope !367
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52, !alias.scope !367 ; 8 uses
  store ptr null, ptr %i.e, align 8, !tbaa !52, !alias.scope !367
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !64
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #27, !inline_history !373
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #27, !inline_history !373
  br label %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61, !noalias !367
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #27
  br label %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit

_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.noexc
  invoke void @_ZN5arrow20PromoteTableToSchemaERKSt10shared_ptrINS_5TableEERKS0_INS_6SchemaEERKNS_7compute11CastOptionsEPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(46) %4, ptr noundef %3)
          to label %bb.h unwind label %bb.v

bb.h:                                             ; preds = %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN5arrow7compute11CastOptionsE, i32 0, i32 0, i32 2), ptr %4, align 8, !tbaa !33
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !52   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow7compute11CastOptionsD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.w, align 8, !tbaa !62
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !64
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #27, !inline_history !374
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !33
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #27, !inline_history !374
  br label %_ZN5arrow7compute11CastOptionsD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = add nsw i32 %i.z, -1
  store i32 %i.ai, ptr %i.w, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.aj = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i = phi i32 [ %i.z, %bb.l ], [ %i.aj, %bb.m ]
  %i.ak = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ak, label %bb.n, label %_ZN5arrow7compute11CastOptionsD2Ev.exit, !prof !66

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #27, !inline_history !375
  br label %_ZN5arrow7compute11CastOptionsD2Ev.exit

_ZN5arrow7compute11CastOptionsD2Ev.exit:          ; preds = %bb.h, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.n
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !52  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i, label %_ZN5arrow10TypeHolderD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN5arrow7compute11CastOptionsD2Ev.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.am, align 8, !tbaa !62
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !64
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !33
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #27, !inline_history !376
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !33
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #27, !inline_history !376
  br label %_ZN5arrow10TypeHolderD2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i6 = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i.i6, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = add nsw i32 %i.ap, -1
  store i32 %i.ay, ptr %i.am, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.az = atomicrmw volatile add ptr %i.am, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i = phi i32 [ %i.ap, %bb.r ], [ %i.az, %bb.s ]
  %i.ba = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ba, label %bb.t, label %_ZN5arrow10TypeHolderD2Ev.exit, !prof !66

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #27
  br label %_ZN5arrow10TypeHolderD2Ev.exit

_ZN5arrow10TypeHolderD2Ev.exit:                   ; preds = %_ZN5arrow7compute11CastOptionsD2Ev.exit, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void

bb.u:                                             ; preds = %bb.a
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute11CastOptionsD2Ev(ptr noundef nonnull align 8 dereferenceable(46) %4) #27
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.v ], [ %i.bb, %bb.u ]
  call void @_ZN5arrow10TypeHolderD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !118    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.thread, !prof !121

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !64
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #27, !inline_history !377
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #27, !inline_history !377
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit, !prof !66

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !118    ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.thread, !prof !129

_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !130, !range !140, !noundef !141
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #27
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !118    ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN5arrow20PromoteTableToSchemaERKSt10shared_ptrINS_5TableEERKS0_INS_6SchemaEERKNS_7compute11CastOptionsEPNS_10MemoryPoolE:bb.a

bb.cm:                                            ; preds = %bb.cl
  %i.ke = add nsw i32 %i.jv, -1
  store i32 %i.ke, ptr %i.js, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.cn:                                            ; preds = %bb.cl
  %i.kf = atomicrmw volatile add ptr %i.js, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.cn, %bb.cm
  %.0.i.i.i.i.i = phi i32 [ %i.jv, %bb.cm ], [ %i.kf, %bb.cn ]
  %i.kg = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.kg, label %bb.co, label %_ZN5arrow10TypeHolderD2Ev.exit, !prof !66

bb.co:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jr) #27
  br label %_ZN5arrow10TypeHolderD2Ev.exit

_ZN5arrow10TypeHolderD2Ev.exit:                   ; preds = %bb.ci, %bb.ck, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.co
  %i.kh = load ptr, ptr %i.ca, align 8, !tbaa !52 ; 8 uses
  %.not.i.i177 = icmp eq ptr %i.kh, null
  br i1 %.not.i.i177, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cp

bb.cp:                                            ; preds = %_ZN5arrow10TypeHolderD2Ev.exit
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8 ; 4 uses
  %i.kj = load atomic i64, ptr %i.ki acquire, align 8 ; 2 uses
  %i.kk = icmp eq i64 %i.kj, 4294967297
  %i.kl = trunc i64 %i.kj to i32                  ; 2 uses
  br i1 %i.kk, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  store i32 0, ptr %i.ki, align 8, !tbaa !62
  %i.km = getelementptr inbounds nuw i8, ptr %i.kh, i64 12
  store i32 0, ptr %i.km, align 4, !tbaa !64
  %i.kn = load ptr, ptr %i.kh, align 8, !tbaa !33
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %i.kp = load ptr, ptr %i.ko, align 8
  call void %i.kp(ptr noundef nonnull align 8 dereferenceable(16) %i.kh) #27, !inline_history !117
  %i.kq = load ptr, ptr %i.kh, align 8, !tbaa !33
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 24
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(16) %i.kh) #27, !inline_history !117
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cr:                                            ; preds = %bb.cp
  %i.kt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i178 = icmp eq i8 %i.kt, 0
  br i1 %.not.i.i.i178, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ku = add nsw i32 %i.kl, -1
  store i32 %i.ku, ptr %i.ki, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i179

bb.ct:                                            ; preds = %bb.cr
  %i.kv = atomicrmw volatile add ptr %i.ki, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i179

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i179: ; preds = %bb.ct, %bb.cs
  %.0.i.i.i.i180 = phi i32 [ %i.kl, %bb.cs ], [ %i.kv, %bb.ct ]
  %i.kw = icmp eq i32 %.0.i.i.i.i180, 1
  br i1 %i.kw, label %bb.cu, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.cu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i179
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kh) #27
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow10TypeHolderD2Ev.exit, %bb.cq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i179, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(24) %29)
          to label %_ZN5arrow5DatumD2Ev.exit unwind label %bb.cv

bb.cv:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.kx = landingpad { ptr, i32 }
          catch ptr null
  %i.ky = extractvalue { ptr, i32 } %i.kx, 0
  call void @__clang_call_terminate(ptr %i.ky) #28
  unreachable

_ZN5arrow5DatumD2Ev.exit:                         ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.kz = load ptr, ptr %i.cd, align 8, !tbaa !52 ; 8 uses
  %.not.i.i181 = icmp eq ptr %i.kz, null
  br i1 %.not.i.i181, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit185, label %bb.cw

bb.cw:                                            ; preds = %_ZN5arrow5DatumD2Ev.exit
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8 ; 4 uses
  %i.lb = load atomic i64, ptr %i.la acquire, align 8 ; 2 uses
  %i.lc = icmp eq i64 %i.lb, 4294967297
  %i.ld = trunc i64 %i.lb to i32                  ; 2 uses
  br i1 %i.lc, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  store i32 0, ptr %i.la, align 8, !tbaa !62
  %i.le = getelementptr inbounds nuw i8, ptr %i.kz, i64 12
  store i32 0, ptr %i.le, align 4, !tbaa !64
  %i.lf = load ptr, ptr %i.kz, align 8, !tbaa !33
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %i.lh = load ptr, ptr %i.lg, align 8
  call void %i.lh(ptr noundef nonnull align 8 dereferenceable(16) %i.kz) #27, !inline_history !250
  %i.li = load ptr, ptr %i.kz, align 8, !tbaa !33
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 24
  %i.lk = load ptr, ptr %i.lj, align 8
  call void %i.lk(ptr noundef nonnull align 8 dereferenceable(16) %i.kz) #27, !inline_history !250
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit185

bb.cy:                                            ; preds = %bb.cw
  %i.ll = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i182 = icmp eq i8 %i.ll, 0
  br i1 %.not.i.i.i182, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.lm = add nsw i32 %i.ld, -1
  store i32 %i.lm, ptr %i.la, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i183

bb.da:                                            ; preds = %bb.cy
  %i.ln = atomicrmw volatile add ptr %i.la, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i183

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i183: ; preds = %bb.da, %bb.cz
  %.0.i.i.i.i184 = phi i32 [ %i.ld, %bb.cz ], [ %i.ln, %bb.da ]
  %i.lo = icmp eq i32 %.0.i.i.i.i184, 1
  br i1 %i.lo, label %bb.db, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit185, !prof !66

bb.db:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i183
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kz) #27
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit185

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit185: ; preds = %_ZN5arrow5DatumD2Ev.exit, %bb.cx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i183, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #27
  %i.lp = load ptr, ptr %28, align 8, !tbaa !118
  %i.lq = icmp eq ptr %i.lp, null
  br i1 %i.lq, label %bb.dj, label %bb.dc, !prof !121

bb.dc:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit185
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %28) #27
  br label %bb.dr

bb.dd:                                            ; preds = %bb.cb
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.de:                                            ; preds = %bb.cc
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.df:                                            ; preds = %bb.cd
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.dg:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.lu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow10TypeHolderD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %31) #27
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %32) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %29) #27
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.pn100 = phi { ptr, i32 } [ %i.lu, %bb.dg ], [ %i.lt, %bb.df ]
  call void @_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %30) #27
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.de
  %.pn100.pn = phi { ptr, i32 } [ %.pn100, %bb.dh ], [ %i.ls, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #27
  br label %bb.dz

bb.dj:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit185
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !414)
  call void @llvm.experimental.noalias.scope.decl(metadata !417)
  %i.lv = load i8, ptr %i.ce, align 8, !tbaa !420, !noalias !422 ; 3 uses
  %i.lw = icmp eq i8 %i.lv, 0
  br i1 %i.lw, label %.thread287, label %bb.dk

.thread287:                                       ; preds = %bb.dj
  store i8 0, ptr %i.ci, align 8, !tbaa !420, !alias.scope !422
  br label %.loopexit

bb.dk:                                            ; preds = %bb.dj
  %i.lx = load ptr, ptr %i.cf, align 8, !tbaa !51, !noalias !422 ; 2 uses
  store ptr %i.lx, ptr %33, align 8, !tbaa !51, !alias.scope !422
  %i.ly = load ptr, ptr %i.ch, align 8, !tbaa !52, !noalias !422 ; 4 uses
  store ptr null, ptr %i.ch, align 8, !tbaa !52, !noalias !422
  store ptr %i.ly, ptr %i.cg, align 8, !tbaa !52, !alias.scope !422
  store ptr null, ptr %i.cf, align 8, !tbaa !51, !noalias !422
  store i8 %i.lv, ptr %i.ci, align 8, !tbaa !420, !alias.scope !422
  %.not.i.i.i186 = icmp eq i8 %i.lv, 3
  br i1 %.not.i.i.i186, label %_ZNK5arrow5Datum13chunked_arrayEv.exit, label %.loopexit

.loopexit:                                        ; preds = %bb.dk, %.thread287
  %i.lz = call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVSt18bad_variant_access, i32 0, i32 0, i32 2), ptr %i.lz, align 8, !tbaa !33
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  store ptr @.str.36, ptr %i.ma, align 8, !tbaa !423
  invoke void @__cxa_throw(ptr nonnull %i.lz, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %.noexc187 unwind label %.loopexit.split-lp

.noexc187:                                        ; preds = %.loopexit
  unreachable

_ZNK5arrow5Datum13chunked_arrayEv.exit:           ; preds = %bb.dk
  %i.mb = load ptr, ptr %i.cj, align 8, !tbaa !81 ; 6 uses
  %i.mc = load ptr, ptr %i.aq, align 8, !tbaa !116
  %.not.i188 = icmp eq ptr %i.mb, %i.mc
  br i1 %.not.i188, label %bb.dp, label %bb.dl

bb.dl:                                            ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit
  store ptr %i.lx, ptr %i.mb, align 8, !tbaa !82
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  store ptr %i.ly, ptr %i.md, align 8, !tbaa !52
  %.not.i.i.i.i.i = icmp eq ptr %i.ly, null
  br i1 %.not.i.i.i.i.i, label %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.me = getelementptr inbounds nuw i8, ptr %i.ly, i64 8 ; 3 uses
  %i.mf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i = icmp eq i8 %i.mf, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.mg = load i32, ptr %i.me, align 4, !tbaa !3
  %i.mh = add nsw i32 %i.mg, 1
  store i32 %i.mh, ptr %i.me, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

bb.do:                                            ; preds = %bb.dm
  %i.mi = atomicrmw volatile add ptr %i.me, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.cj, align 8, !tbaa !81
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i: ; preds = %bb.do, %bb.dn, %bb.dl
  %i.mj = phi ptr [ %i.mb, %bb.dl ], [ %i.mb, %bb.dn ], [ %.pre.i, %bb.do ]
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  store ptr %i.mk, ptr %i.cj, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backERKS3_.exit

bb.dp:                                            ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr %i.mb, ptr noundef nonnull align 8 dereferenceable(16) %33)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backERKS3_.exit unwind label %.loopexit291

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i, %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(24) %33)
          to label %_ZN5arrow5DatumD2Ev.exit190 unwind label %bb.dq

bb.dq:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backERKS3_.exit
  %i.ml = landingpad { ptr, i32 }
          catch ptr null
  %i.mm = extractvalue { ptr, i32 } %i.ml, 0
  call void @__clang_call_terminate(ptr %i.mm) #28
  unreachable

_ZN5arrow5DatumD2Ev.exit190:                      ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backERKS3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  br label %bb.dr

bb.dr:                                            ; preds = %_ZN5arrow5DatumD2Ev.exit190, %bb.dc
  %.294 = phi i32 [ 1, %bb.dc ], [ 0, %_ZN5arrow5DatumD2Ev.exit190 ]
  %i.mn = load ptr, ptr %28, align 8, !tbaa !118  ; 2 uses
  %i.mo = icmp eq ptr %i.mn, null
  br i1 %i.mo, label %bb.ds, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, !prof !121

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i unwind label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.mp = landingpad { ptr, i32 }
          catch ptr null
  %i.mq = extractvalue { ptr, i32 } %i.mp, 0
  call void @__clang_call_terminate(ptr %i.mq) #28
  unreachable

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i:    ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %.pr.i = load ptr, ptr %28, align 8, !tbaa !118 ; 2 uses
  %.not.i.i191 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i191, label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, !prof !129

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i, %bb.dr
  %i.mr = phi ptr [ %.pr.i, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i ], [ %i.mn, %bb.dr ]
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 1
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !130, !range !140, !noundef !141
  %i.mu = trunc nuw i8 %i.mt to i1
  br i1 %i.mu, label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, label %bb.du

bb.du:                                            ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %28) #27
  br label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit

_ZN5arrow6ResultINS_5DatumEED2Ev.exit:            ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  br label %bb.dv

bb.dv:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit142, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit156, %_ZN5arrow6StatusD2Ev.exit132, %_ZN5arrow6StatusD2Ev.exit135
  %.496 = phi i32 [ %spec.store.select4281, %_ZN5arrow6StatusD2Ev.exit132 ], [ 1, %_ZN5arrow6StatusD2Ev.exit135 ], [ 3, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %spec.store.select5286, %_ZN5arrow6StatusD2Ev.exit156 ], [ %.294, %_ZN5arrow6ResultINS_5DatumEED2Ev.exit ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166 ], [ 1, %_ZN5arrow6StatusD2Ev.exit142 ]
  %i.mv = load ptr, ptr %16, align 8, !tbaa !264  ; 3 uses
  %.not.i.i.i192 = icmp eq ptr %i.mv, null
  br i1 %.not.i.i.i192, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.mw = load ptr, ptr %i.cm, align 8, !tbaa !426
  %i.mx = ptrtoint ptr %i.mw to i64
  %i.my = ptrtoint ptr %i.mv to i64
  %i.mz = sub i64 %i.mx, %i.my
  call void @_ZdlPvm(ptr noundef nonnull %i.mv, i64 noundef %i.mz) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.dv, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  switch i32 %.496, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit [
    i32 0, label %bb.dx
    i32 3, label %bb.dx
  ]

bb.dx:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.0266.0295, i64 16 ; 2 uses
  %i.nb = icmp eq ptr %i.na, %i.bt
  br i1 %i.nb, label %.critedge, label %bb.v

.loopexit291:                                     ; preds = %bb.dp
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

.loopexit.split-lp:                               ; preds = %.loopexit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.dy:                                            ; preds = %.loopexit.split-lp, %.loopexit291
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit291 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %33) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  call void @_ZN5arrow6ResultINS_5DatumEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %28) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #27
  br label %bb.dz

bb.dz:                                            ; preds = %bb.di, %bb.dy, %bb.dd
  %.pn103.pn.pn = phi { ptr, i32 } [ %i.lr, %bb.dd ], [ %lpad.phi, %bb.dy ], [ %.pn100.pn, %bb.di ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  br label %bb.ea

bb.ea:                                            ; preds = %bb.as, %.body139, %bb.bi, %bb.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, %bb.dz, %.body, %bb.z
  %.pn112.pn = phi { ptr, i32 } [ %i.df, %bb.z ], [ %eh.lpad-body, %.body ], [ %.pn109, %bb.bi ], [ %i.ha, %bb.bl ], [ %.pn103.pn.pn, %bb.dz ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172 ], [ %i.fa, %bb.as ], [ %eh.lpad-body140, %.body139 ] ; 2 uses
  %i.nc = load ptr, ptr %16, align 8, !tbaa !264  ; 3 uses
  %.not.i.i.i193 = icmp eq ptr %i.nc, null
  br i1 %.not.i.i.i193, label %_ZNSt6vectorIiSaIiEED2Ev.exit194, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.nd = load ptr, ptr %i.cm, align 8, !tbaa !426
  %i.ne = ptrtoint ptr %i.nd to i64
  %i.nf = ptrtoint ptr %i.nc to i64
  %i.ng = sub i64 %i.ne, %i.nf
  call void @_ZdlPvm(ptr noundef nonnull %i.nc, i64 noundef %i.ng) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit194

_ZNSt6vectorIiSaIiEED2Ev.exit194:                 ; preds = %bb.eb, %bb.ea, %bb.y
  %.pn112.pn.pn = phi { ptr, i32 } [ %i.de, %bb.y ], [ %.pn112.pn, %bb.ea ], [ %.pn112.pn, %bb.eb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %bb.ey

.critedge:                                        ; preds = %bb.dx, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i8 0, ptr %i.a, align 1, !tbaa !282
  %i.nh = invoke { ptr, i32 } @_ZSt9__find_ifISt13_Bit_iteratorN9__gnu_cxx5__ops16_Iter_equals_valIKbEEET_S6_S6_T0_St26random_access_iterator_tag(ptr %.sroa.0270.0, i32 0, ptr %.sroa.12275.0, i32 %.sroa.16.0, ptr nonnull align 1 dereferenceable(1) %i.a)
          to label %_ZSt4findISt13_Bit_iteratorbET_S1_S1_RKT0_.exit unwind label %bb.ei ; 2 uses

_ZSt4findISt13_Bit_iteratorbET_S1_S1_RKT0_.exit:  ; preds = %.critedge
  %.fca.0.extract10 = extractvalue { ptr, i32 } %i.nh, 0 ; 2 uses
  %.fca.1.extract11 = extractvalue { ptr, i32 } %i.nh, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.ni = icmp eq ptr %.fca.0.extract10, %.sroa.12275.0
  %i.nj = icmp eq i32 %.fca.1.extract11, %.sroa.16.0
  %i.nk = select i1 %i.ni, i1 %i.nj, i1 false
  br i1 %i.nk, label %bb.ek, label %bb.ec

bb.ec:                                            ; preds = %_ZSt4findISt13_Bit_iteratorbET_S1_S1_RKT0_.exit
  %i.nl = ptrtoint ptr %.fca.0.extract10 to i64
  %i.nm = ptrtoint ptr %.sroa.0270.0 to i64
  %i.nn = sub i64 %i.nl, %i.nm
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #27
  %i.no = load ptr, ptr %12, align 8, !tbaa !35
  %.tr = trunc i64 %i.nn to i32
  %i.np = shl i32 %.tr, 3
  %i.nq = add i32 %i.np, %.fca.1.extract11
  %i.nr = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32) %i.no, i32 noundef %i.nq)
          to label %bb.ed unwind label %bb.ej

bb.ed:                                            ; preds = %bb.ec
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !53
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27, !noalias !427
  invoke void @_ZN5arrow8internal12JoinToStringIJRA29_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA34_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(29) @.str.24, ptr noundef nonnull align 8 dereferenceable(32) %i.nt, ptr noundef nonnull align 1 dereferenceable(34) @.str.25)
          to label %.noexc212 unwind label %bb.ej

.noexc212:                                        ; preds = %bb.ed
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %34, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ee unwind label %bb.ef

bb.ee:                                            ; preds = %.noexc212
  %i.nu = load ptr, ptr %5, align 8, !tbaa !153, !noalias !427 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.nw = icmp eq ptr %i.nu, %i.nv
  br i1 %i.nw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i210: ; preds = %bb.ee
  %i.nx = load i64, ptr %i.nv, align 8, !tbaa !61, !noalias !427
  %i.ny = add i64 %i.nx, 1
  call void @_ZdlPvm(ptr noundef %i.nu, i64 noundef %i.ny) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i211

bb.ef:                                            ; preds = %.noexc212
  %i.nz = landingpad { ptr, i32 }
          cleanup
  %i.oa = load ptr, ptr %5, align 8, !tbaa !153, !noalias !427 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.oc = icmp eq ptr %i.oa, %i.ob
  br i1 %i.oc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i207: ; preds = %bb.ef
  %i.od = load i64, ptr %i.ob, align 8, !tbaa !61, !noalias !427
  %i.oe = add i64 %i.od, 1
  call void @_ZdlPvm(ptr noundef %i.oa, i64 noundef %i.oe) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i208

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i208: ; preds = %bb.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i207
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !427
  br label %.body213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i211: ; preds = %bb.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i210
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !427
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %34) #27
  %i.of = load ptr, ptr %34, align 8, !tbaa !118  ; 2 uses
  %.not.i215 = icmp eq ptr %i.of, null
  br i1 %.not.i215, label %_ZN5arrow6StatusD2Ev.exit216, label %bb.eg, !prof !121

bb.eg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i211
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 1
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !130, !range !140, !noundef !141
  %i.oi = trunc nuw i8 %i.oh to i1
  br i1 %i.oi, label %_ZN5arrow6StatusD2Ev.exit216, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %34) #27
  br label %_ZN5arrow6StatusD2Ev.exit216

_ZN5arrow6StatusD2Ev.exit216:                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i211, %bb.eg, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #27
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ei:                                            ; preds = %.critedge
  %i.oj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.ey

bb.ej:                                            ; preds = %bb.ed, %bb.ec
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %.body213

.body213:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i208, %bb.ej
  %eh.lpad-body214 = phi { ptr, i32 } [ %i.ok, %bb.ej ], [ %i.nz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i208 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #27
  br label %bb.ey

bb.ek:                                            ; preds = %_ZSt4findISt13_Bit_iteratorbET_S1_S1_RKT0_.exit
  %i.ol = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !52 ; 2 uses
  %i.on = load <2 x ptr>, ptr %2, align 8, !tbaa !51
  store <2 x ptr> %i.on, ptr %35, align 16, !tbaa !51
  %.not.i.i.i217 = icmp eq ptr %i.om, null
  br i1 %.not.i.i.i217, label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit219, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 8 ; 3 uses
  %i.op = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i218 = icmp eq i8 %i.op, 0
  br i1 %.not.i.i.i.i218, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.oq = load i32, ptr %i.oo, align 4, !tbaa !3
  %i.or = add nsw i32 %i.oq, 1
  store i32 %i.or, ptr %i.oo, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit219

bb.en:                                            ; preds = %bb.el
  %i.os = atomicrmw volatile add ptr %i.oo, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit219

_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit219: ; preds = %bb.ek, %bb.em, %bb.en
  %i.ot = load ptr, ptr %14, align 8, !tbaa !77   ; 4 uses
  store ptr %i.ot, ptr %36, align 8, !tbaa !77
  %i.ou = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.ov = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !81 ; 3 uses
  store ptr %i.ow, ptr %i.ou, align 8, !tbaa !81
  %i.ox = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.oy = load ptr, ptr %i.aq, align 8, !tbaa !116 ; 2 uses
  store ptr %i.oy, ptr %i.ox, align 8, !tbaa !116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.oz = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25
          to label %.noexc220 unwind label %bb.ep, !inline_history !144 ; 10 uses

.noexc220:                                        ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit219
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  store i32 1, ptr %i.pa, align 8, !tbaa !62, !noalias !432
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oz, i64 12
  store i32 1, ptr %i.pb, align 4, !tbaa !64, !noalias !432
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow11SimpleTableESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.oz, align 8, !tbaa !33, !noalias !432
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oz, i64 16 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oz, i64 24
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oz, i64 48
  %i.pf = getelementptr inbounds nuw i8, ptr %i.oz, i64 56
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oz, i64 64
  %i.ph = load <2 x ptr>, ptr %35, align 16, !tbaa !51, !noalias !432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %35, i8 0, i64 16, i1 false), !noalias !432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %36, i8 0, i64 24, i1 false), !noalias !432
  store ptr getelementptr inbounds inrange(-16, 96) ({ [14 x ptr] }, ptr @_ZTVN5arrow11SimpleTableE, i32 0, i32 0, i32 2), ptr %i.pc, align 8, !tbaa !33, !noalias !432
  store ptr %i.ot, ptr %i.pe, align 8, !tbaa !77, !noalias !432
  store ptr %i.ow, ptr %i.pf, align 8, !tbaa !81, !noalias !432
  store ptr %i.oy, ptr %i.pg, align 8, !tbaa !116, !noalias !432
  store <2 x ptr> %i.ph, ptr %i.pd, align 8, !tbaa !51, !noalias !432
  %i.pi = icmp eq ptr %i.ow, %i.ot
  br i1 %i.pi, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit, label %bb.eo

bb.eo:                                            ; preds = %.noexc220
  %i.pj = load ptr, ptr %i.ot, align 8, !tbaa !82, !noalias !432
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 40
  %i.pl = load i64, ptr %i.pk, align 8, !tbaa !85, !noalias !432
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit: ; preds = %.noexc220, %bb.eo
  %.sink.i.i.i.i.i.i.i.i = phi i64 [ 0, %.noexc220 ], [ %i.pl, %bb.eo ]
  %i.pm = getelementptr inbounds nuw i8, ptr %i.oz, i64 40
  store i64 %.sink.i.i.i.i.i.i.i.i, ptr %i.pm, align 8, !tbaa !103, !noalias !432
  store ptr null, ptr %0, align 8, !tbaa !118
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.pc, ptr %i.pn, align 8, !tbaa !106
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.oz, ptr %i.po, align 8, !tbaa !52
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ep:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit219
  %i.pp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %36) #27
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %35) #27
  br label %bb.ey

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit216
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  %i.pq = load ptr, ptr %14, align 8, !tbaa !77   ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !81 ; 2 uses
  %.not4.i.i.i232 = icmp eq ptr %i.pq, %i.ps
  br i1 %.not4.i.i.i232, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i243, label %.lr.ph.i.i.i233

.lr.ph.i.i.i233:                                  ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i239
  %.05.i.i.i234 = phi ptr [ %i.qk, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i239 ], [ %i.pq, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %.05.i.i.i234, i64 8
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i.i235 = icmp eq ptr %i.pu, null
  br i1 %.not.i.i.i.i.i.i.i235, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i239, label %bb.eq

bb.eq:                                            ; preds = %.lr.ph.i.i.i233
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 8 ; 4 uses
  %i.pw = load atomic i64, ptr %i.pv acquire, align 8 ; 2 uses
  %i.px = icmp eq i64 %i.pw, 4294967297
  %i.py = trunc i64 %i.pw to i32                  ; 2 uses
  br i1 %i.px, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  store i32 0, ptr %i.pv, align 8, !tbaa !62
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pu, i64 12
  store i32 0, ptr %i.pz, align 4, !tbaa !64
  %i.qa = load ptr, ptr %i.pu, align 8, !tbaa !33
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 16
  %i.qc = load ptr, ptr %i.qb, align 8
  call void %i.qc(ptr noundef nonnull align 8 dereferenceable(16) %i.pu) #27, !inline_history !151
  %i.qd = load ptr, ptr %i.pu, align 8, !tbaa !33
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 24
  %i.qf = load ptr, ptr %i.qe, align 8
  call void %i.qf(ptr noundef nonnull align 8 dereferenceable(16) %i.pu) #27, !inline_history !151
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i239

bb.es:                                            ; preds = %bb.eq
  %i.qg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i236 = icmp eq i8 %i.qg, 0
  br i1 %.not.i.i.i.i.i.i.i.i236, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.qh = add nsw i32 %i.py, -1
  store i32 %i.qh, ptr %i.pv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i237

bb.eu:                                            ; preds = %bb.es
  %i.qi = atomicrmw volatile add ptr %i.pv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i237

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i237: ; preds = %bb.eu, %bb.et
  %.0.i.i.i.i.i.i.i.i.i238 = phi i32 [ %i.py, %bb.et ], [ %i.qi, %bb.eu ]
  %i.qj = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i238, 1
  br i1 %i.qj, label %bb.ev, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i239, !prof !66

bb.ev:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i237
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pu) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i239

_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i239: ; preds = %bb.ev, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i237, %bb.er, %.lr.ph.i.i.i233
  %i.qk = getelementptr inbounds nuw i8, ptr %.05.i.i.i234, i64 16 ; 2 uses
  %.not.i.i.i240 = icmp eq ptr %i.qk, %i.ps
  br i1 %.not.i.i.i240, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i241, label %.lr.ph.i.i.i233, !llvm.loop !152

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i241: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i239
  %.pr.i242 = load ptr, ptr %14, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i243

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i243: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i241, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ql = phi ptr [ %.pr.i242, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i241 ], [ %i.pq, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i244 = icmp eq ptr %i.ql, null
  br i1 %.not.i.i1.i244, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit245, label %bb.ew

bb.ew:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i243
  %i.qm = load ptr, ptr %i.aq, align 8, !tbaa !116
  %i.qn = ptrtoint ptr %i.qm to i64
  %i.qo = ptrtoint ptr %i.ql to i64
  %i.qp = sub i64 %i.qn, %i.qo
  call void @_ZdlPvm(ptr noundef nonnull %i.ql, i64 noundef %i.qp) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit245

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit245: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i243, %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  %.not.i.i246 = icmp eq ptr %.sroa.0270.0, null
  br i1 %.not.i.i246, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.ex

bb.ex:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit245
  %i.qq = ptrtoint ptr %.sroa.20277.0 to i64
  %i.qr = ptrtoint ptr %.sroa.0270.0 to i64
  %i.qs = sub i64 %i.qq, %i.qr                    ; 2 uses
  %i.qt = ashr exact i64 %i.qs, 3
  %i.qu = sub nsw i64 0, %i.qt
  %i.qv = getelementptr inbounds [8 x i8], ptr %.sroa.20277.0, i64 %i.qu
  call void @_ZdlPvm(ptr noundef %i.qv, i64 noundef %i.qs) #26
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

bb.ey:                                            ; preds = %bb.ei, %.body213, %bb.ep, %bb.u, %_ZNSt6vectorIiSaIiEED2Ev.exit194
  %.pn117.pn = phi { ptr, i32 } [ %i.cq, %bb.u ], [ %.pn112.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit194 ], [ %eh.lpad-body214, %.body213 ], [ %i.pp, %bb.ep ], [ %i.oj, %bb.ei ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.t
  %.pn117.pn.pn = phi { ptr, i32 } [ %.pn117.pn, %bb.ey ], [ %i.cp, %bb.t ] ; 2 uses
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  %.not.i.i247 = icmp eq ptr %.sroa.0270.0, null
  br i1 %.not.i.i247, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit248, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.qw = ptrtoint ptr %.sroa.20277.0 to i64
  %i.qx = ptrtoint ptr %.sroa.0270.0 to i64
  %i.qy = sub i64 %i.qw, %i.qx                    ; 2 uses
  %i.qz = ashr exact i64 %i.qy, 3
  %i.ra = sub nsw i64 0, %i.qz
  %i.rb = getelementptr inbounds [8 x i8], ptr %.sroa.20277.0, i64 %i.ra
  call void @_ZdlPvm(ptr noundef %i.rb, i64 noundef %i.qy) #26
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit248

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.ex, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit245, %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.rc = load ptr, ptr %i.e, align 8, !tbaa !52  ; 8 uses
  %.not.i.i249 = icmp eq ptr %i.rc, null
  br i1 %.not.i.i249, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit253, label %bb.fb

bb.fb:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 8 ; 4 uses
  %i.re = load atomic i64, ptr %i.rd acquire, align 8 ; 2 uses
  %i.rf = icmp eq i64 %i.re, 4294967297
  %i.rg = trunc i64 %i.re to i32                  ; 2 uses
  br i1 %i.rf, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  store i32 0, ptr %i.rd, align 8, !tbaa !62
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rc, i64 12
  store i32 0, ptr %i.rh, align 4, !tbaa !64
  %i.ri = load ptr, ptr %i.rc, align 8, !tbaa !33
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  %i.rk = load ptr, ptr %i.rj, align 8
  call void %i.rk(ptr noundef nonnull align 8 dereferenceable(16) %i.rc) #27, !inline_history !150
  %i.rl = load ptr, ptr %i.rc, align 8, !tbaa !33
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 24
  %i.rn = load ptr, ptr %i.rm, align 8
  call void %i.rn(ptr noundef nonnull align 8 dereferenceable(16) %i.rc) #27, !inline_history !150
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit253

bb.fd:                                            ; preds = %bb.fb
  %i.ro = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i250 = icmp eq i8 %i.ro, 0
  br i1 %.not.i.i.i250, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.rp = add nsw i32 %i.rg, -1
  store i32 %i.rp, ptr %i.rd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i251

bb.ff:                                            ; preds = %bb.fd
  %i.rq = atomicrmw volatile add ptr %i.rd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i251

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i251: ; preds = %bb.ff, %bb.fe
  %.0.i.i.i.i252 = phi i32 [ %i.rg, %bb.fe ], [ %i.rq, %bb.ff ]
  %i.rr = icmp eq i32 %.0.i.i.i.i252, 1
  br i1 %i.rr, label %bb.fg, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit253, !prof !66

bb.fg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i251
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rc) #27
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit253

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit253: ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.fc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i251, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  ret void

_ZNSt13_Bvector_baseISaIbEED2Ev.exit248:          ; preds = %bb.r, %bb.s, %bb.ez, %bb.fa, %bb.i, %bb.h
  %.pn122 = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.x, %bb.h ], [ %i.cn, %bb.r ], [ %i.co, %bb.s ], [ %.pn117.pn.pn, %bb.ez ], [ %.pn117.pn.pn, %bb.fa ]
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  resume { ptr, i32 } %.pn122
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute11CastOptionsD2Ev(ptr noundef nonnull align 8 dereferenceable(46) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN5arrow7compute11CastOptionsE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5arrow10TypeHolderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !64
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !376
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !376
  br label %_ZN5arrow10TypeHolderD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow10TypeHolderD2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZN5arrow10TypeHolderD2Ev.exit

_ZN5arrow10TypeHolderD2Ev.exit:                   ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow10TypeHolderD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !64
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !117
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !117
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5arrow6Schema6fieldsEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare void @_ZNK5arrow6Schema18GetAllFieldIndicesESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::vector.78") align 8, ptr noundef nonnull align 8 dereferenceable(32), i64, ptr) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN5arrow20PromoteTableToSchemaERKSt10shared_ptrINS_5TableEERKS0_INS_6SchemaEERKNS_7compute11CastOptionsEPNS_10MemoryPoolEENK3$_0clERKS0_INS_8DataTypeEE"(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Result.137", align 8 ; 13 uses
  %4 = alloca %"class.std::shared_ptr.60", align 16 ; 7 uses
  %5 = alloca %"class.std::shared_ptr.49", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !392
  %i.c = load ptr, ptr %1, align 8, !tbaa !387
  call void @_ZN5arrow15MakeArrayOfNullERKSt10shared_ptrINS_8DataTypeEElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.137") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.b, ptr noundef %i.c)
  %i.d = load ptr, ptr %3, align 8, !tbaa !118
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.b, !prof !121

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !118
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !437)
  call void @llvm.experimental.noalias.scope.decl(metadata !440)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load <2 x ptr>, ptr %i.g, align 8, !tbaa !51, !noalias !443
  store ptr null, ptr %i.i, align 8, !tbaa !52, !noalias !443
  store <2 x ptr> %i.j, ptr %4, align 16, !tbaa !51, !alias.scope !443
  store ptr null, ptr %i.g, align 8, !tbaa !213, !noalias !443
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !444, !nonnull !141, !align !445 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !446)
  %i.m = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #25
          to label %.noexc unwind label %bb.t     ; 4 uses

.noexc:                                           ; preds = %bb.d
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRSt10shared_ptrINS0_5ArrayEEEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(104) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.e unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, !noalias !446

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i: ; preds = %.noexc
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 104) #26, !noalias !446
  br label %.body

bb.e:                                             ; preds = %.noexc
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr %i.m, ptr %i.o, align 8, !tbaa !52, !alias.scope !446
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store ptr %i.p, ptr %5, align 8, !tbaa !185, !alias.scope !446
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !81   ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !116
  %.not.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.p, ptr %i.r, align 8, !tbaa !82
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !52
  store ptr null, ptr %i.o, align 8, !tbaa !52
  store ptr %i.v, ptr %i.u, align 8, !tbaa !52
  store ptr null, ptr %5, align 8, !tbaa !82
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.w, ptr %i.q, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backEOS3_.exit

bb.g:                                             ; preds = %bb.e
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr %i.r, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backEOS3_.exit unwind label %bb.u

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.f, %bb.g
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !52   ; 8 uses
  %.not.i.i14 = icmp eq ptr %i.x, null
  br i1 %.not.i.i14, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backEOS3_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
end_hunk_8
begin_hunk_9_@_ZNK5arrow5Table13CombineChunksEPNS_10MemoryPoolE:bb.a
  %i.go = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i83 = icmp eq i8 %i.go, 0
  br i1 %.not.i.i.i.i.i.i83, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gp = add nsw i32 %i.gg, -1
  store i32 %i.gp, ptr %i.gd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.gq = atomicrmw volatile add ptr %i.gd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.gg, %bb.ax ], [ %i.gq, %bb.ay ]
  %i.gr = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.gr, label %bb.az, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, !prof !66

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i: ; preds = %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.av
  %.pr.i.pr = load ptr, ptr %7, align 8, !tbaa !118 ; 2 uses
  %.not.i.i84 = icmp eq ptr %.pr.i.pr, null
  br i1 %.not.i.i84, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !129

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.gs = phi ptr [ %.pr.i.pr, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i ], [ %i.ga, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 5 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 1
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !130, !range !140, !noundef !141
  %i.gv = trunc nuw i8 %i.gu to i1
  br i1 %i.gv, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 48
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i185 = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i.i185, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 4 uses
  %i.gz = load atomic i64, ptr %i.gy acquire, align 8 ; 2 uses
  %i.ha = icmp eq i64 %i.gz, 4294967297
  %i.hb = trunc i64 %i.gz to i32                  ; 2 uses
  br i1 %i.ha, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.gy, align 8, !tbaa !62
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 12
  store i32 0, ptr %i.hc, align 4, !tbaa !64
  %i.hd = load ptr, ptr %i.gx, align 8, !tbaa !33
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(16) %i.gx) #27, !inline_history !497
  %i.hg = load ptr, ptr %i.gx, align 8, !tbaa !33
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(16) %i.gx) #27, !inline_history !497
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.hj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i186 = icmp eq i8 %i.hj, 0
  br i1 %.not.i.i.i.i.i186, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hk = add nsw i32 %i.hb, -1
  store i32 %i.hk, ptr %i.gy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i187

bb.bf:                                            ; preds = %bb.bd
  %i.hl = atomicrmw volatile add ptr %i.gy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i187

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i187: ; preds = %bb.bf, %bb.be
  %.0.i.i.i.i.i.i188 = phi i32 [ %i.hb, %bb.be ], [ %i.hl, %bb.bf ]
  %i.hm = icmp eq i32 %.0.i.i.i.i.i.i188, 1
  br i1 %i.hm, label %bb.bg, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !66

bb.bg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i187
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gx) #27
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.bg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i187, %bb.bc, %bb.ba
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !153 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gs, i64 24 ; 2 uses
  %i.hq = icmp eq ptr %i.ho, %i.hp
  br i1 %i.hq, label %_ZN5arrow6Status5StateD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.hr = load i64, ptr %i.hp, align 8, !tbaa !61
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.ho, i64 noundef %i.hs) #26
  br label %_ZN5arrow6Status5StateD2Ev.exit.i

_ZN5arrow6Status5StateD2Ev.exit.i:                ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef 56) #26
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit: ; preds = %bb.at, %_ZN5arrow6Status5StateD2Ev.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.ht = load ptr, ptr %6, align 8, !tbaa !170   ; 3 uses
  %i.hu = load ptr, ptr %i.p, align 8, !tbaa !172 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ht, %i.hu
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.im, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i ], [ %i.ht, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit ] ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i.i.i
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8 ; 4 uses
  %i.hy = load atomic i64, ptr %i.hx acquire, align 8 ; 2 uses
  %i.hz = icmp eq i64 %i.hy, 4294967297
  %i.ia = trunc i64 %i.hy to i32                  ; 2 uses
  br i1 %i.hz, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.hx, align 8, !tbaa !62
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hw, i64 12
  store i32 0, ptr %i.ib, align 4, !tbaa !64
  %i.ic = load ptr, ptr %i.hw, align 8, !tbaa !33
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ie = load ptr, ptr %i.id, align 8
  call void %i.ie(ptr noundef nonnull align 8 dereferenceable(16) %i.hw) #27, !inline_history !187
  %i.if = load ptr, ptr %i.hw, align 8, !tbaa !33
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.ih = load ptr, ptr %i.ig, align 8
  call void %i.ih(ptr noundef nonnull align 8 dereferenceable(16) %i.hw) #27, !inline_history !187
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

bb.bj:                                            ; preds = %bb.bh
  %i.ii = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ii, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ij = add nsw i32 %i.ia, -1
  store i32 %i.ij, ptr %i.hx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.ik = atomicrmw volatile add ptr %i.hx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bl, %bb.bk
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ia, %bb.bk ], [ %i.ik, %bb.bl ]
  %i.il = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.il, label %bb.bm, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, !prof !66

bb.bm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hw) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i: ; preds = %bb.bm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.bi, %.lr.ph.i.i.i
  %i.im = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i85 = icmp eq ptr %i.im, %i.hu
  br i1 %.not.i.i.i85, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !188

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.pr.i86 = load ptr, ptr %6, align 8, !tbaa !170
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit
  %i.in = phi ptr [ %.pr.i86, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.ht, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.in, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i
  %i.io = load ptr, ptr %i.q, align 8, !tbaa !171
  %i.ip = ptrtoint ptr %i.io to i64
  %i.iq = ptrtoint ptr %i.in to i64
  %i.ir = sub i64 %i.ip, %i.iq
  call void @_ZdlPvm(ptr noundef nonnull %i.in, i64 noundef %i.ir) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br i1 %i.fe, label %bb.r, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !llvm.loop !498

bb.bo:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.al, %bb.u
  %.pn63.pn = phi { ptr, i32 } [ %i.ff, %bb.al ], [ %i.cz, %bb.u ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %.body

bb.bp:                                            ; preds = %bb.r
  %i.is = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #25
          to label %.noexc87 unwind label %bb.cd  ; 6 uses

.noexc87:                                         ; preds = %bb.bp
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  store i32 1, ptr %i.it, align 8, !tbaa !62, !noalias !499
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 12
  store i32 1, ptr %i.iu, align 4, !tbaa !64, !noalias !499
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.is, align 8, !tbaa !33, !noalias !499
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN5arrow12ChunkedArrayEJSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EEEEvPT_DpOT0_(ptr noundef nonnull %i.iv, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZSt11make_sharedIN5arrow12ChunkedArrayEJSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EEEES3_IT_EDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, !noalias !499

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i: ; preds = %.noexc87
  %i.iw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.is, i64 noundef 104) #26, !noalias !499
  br label %.body

_ZSt11make_sharedIN5arrow12ChunkedArrayEJSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EEEES3_IT_EDpOT0_.exit: ; preds = %.noexc87
  %i.ix = load ptr, ptr %3, align 8, !tbaa !77
  %i.iy = getelementptr inbounds nuw [16 x i8], ptr %i.ix, i64 %indvars.iv227 ; 2 uses
  store ptr %i.iv, ptr %i.iy, align 8, !tbaa !185
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8 ; 2 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !52 ; 8 uses
  store ptr %i.is, ptr %i.iz, align 8, !tbaa !52
  %.not.i.i.i.i88 = icmp eq ptr %i.ja, null
  br i1 %.not.i.i.i.i88, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bq

bb.bq:                                            ; preds = %_ZSt11make_sharedIN5arrow12ChunkedArrayEJSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EEEES3_IT_EDpOT0_.exit
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8 ; 4 uses
  %i.jc = load atomic i64, ptr %i.jb acquire, align 8 ; 2 uses
  %i.jd = icmp eq i64 %i.jc, 4294967297
  %i.je = trunc i64 %i.jc to i32                  ; 2 uses
  br i1 %i.jd, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store i32 0, ptr %i.jb, align 8, !tbaa !62
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ja, i64 12
  store i32 0, ptr %i.jf, align 4, !tbaa !64
  %i.jg = load ptr, ptr %i.ja, align 8, !tbaa !33
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(16) %i.ja) #27, !inline_history !127
  %i.jj = load ptr, ptr %i.ja, align 8, !tbaa !33
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  %i.jl = load ptr, ptr %i.jk, align 8
  call void %i.jl(ptr noundef nonnull align 8 dereferenceable(16) %i.ja) #27, !inline_history !127
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bs:                                            ; preds = %bb.bq
  %i.jm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i89 = icmp eq i8 %i.jm, 0
  br i1 %.not.i.i.i.i.i89, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jn = add nsw i32 %i.je, -1
  store i32 %i.jn, ptr %i.jb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90

bb.bu:                                            ; preds = %bb.bs
  %i.jo = atomicrmw volatile add ptr %i.jb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90: ; preds = %bb.bu, %bb.bt
  %.0.i.i.i.i.i.i91 = phi i32 [ %i.je, %bb.bt ], [ %i.jo, %bb.bu ]
  %i.jp = icmp eq i32 %.0.i.i.i.i.i.i91, 1
  br i1 %i.jp, label %bb.bv, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.bv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ja) #27
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, %_ZSt11make_sharedIN5arrow12ChunkedArrayEJSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EEEES3_IT_EDpOT0_.exit, %bb.br, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90, %bb.bv
  %i.jq = load ptr, ptr %5, align 8, !tbaa !170   ; 3 uses
  %i.jr = load ptr, ptr %i.r, align 8, !tbaa !172 ; 2 uses
  %.not4.i.i.i96 = icmp eq ptr %i.jq, %i.jr
  br i1 %.not4.i.i.i96, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i107, label %.lr.ph.i.i.i97

.lr.ph.i.i.i97:                                   ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i103
  %.05.i.i.i98 = phi ptr [ %i.kj, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i103 ], [ %i.jq, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.05.i.i.i98, i64 8
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i.i99 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i.i.i.i.i99, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i103, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph.i.i.i97
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8 ; 4 uses
  %i.jv = load atomic i64, ptr %i.ju acquire, align 8 ; 2 uses
  %i.jw = icmp eq i64 %i.jv, 4294967297
  %i.jx = trunc i64 %i.jv to i32                  ; 2 uses
  br i1 %i.jw, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store i32 0, ptr %i.ju, align 8, !tbaa !62
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 12
  store i32 0, ptr %i.jy, align 4, !tbaa !64
  %i.jz = load ptr, ptr %i.jt, align 8, !tbaa !33
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %i.kb = load ptr, ptr %i.ka, align 8
  call void %i.kb(ptr noundef nonnull align 8 dereferenceable(16) %i.jt) #27, !inline_history !187
  %i.kc = load ptr, ptr %i.jt, align 8, !tbaa !33
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 24
  %i.ke = load ptr, ptr %i.kd, align 8
  call void %i.ke(ptr noundef nonnull align 8 dereferenceable(16) %i.jt) #27, !inline_history !187
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i103

bb.by:                                            ; preds = %bb.bw
  %i.kf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i100 = icmp eq i8 %i.kf, 0
  br i1 %.not.i.i.i.i.i.i.i.i100, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.kg = add nsw i32 %i.jx, -1
  store i32 %i.kg, ptr %i.ju, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i101

bb.ca:                                            ; preds = %bb.by
  %i.kh = atomicrmw volatile add ptr %i.ju, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i101

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i101: ; preds = %bb.ca, %bb.bz
  %.0.i.i.i.i.i.i.i.i.i102 = phi i32 [ %i.jx, %bb.bz ], [ %i.kh, %bb.ca ]
  %i.ki = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i102, 1
  br i1 %i.ki, label %bb.cb, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i103, !prof !66

bb.cb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i101
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jt) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i103

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i103: ; preds = %bb.cb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i101, %bb.bx, %.lr.ph.i.i.i97
  %i.kj = getelementptr inbounds nuw i8, ptr %.05.i.i.i98, i64 16 ; 2 uses
  %.not.i.i.i104 = icmp eq ptr %i.kj, %i.jr
  br i1 %.not.i.i.i104, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i105, label %.lr.ph.i.i.i97, !llvm.loop !188

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i105: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i103
  %.pr.i106 = load ptr, ptr %5, align 8, !tbaa !170
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i107

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i107: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i105, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.kk = phi ptr [ %.pr.i106, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i105 ], [ %i.jq, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i108 = icmp eq ptr %i.kk, null
  br i1 %.not.i.i1.i108, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit109, label %bb.cc

bb.cc:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i107
  %i.kl = load ptr, ptr %i.s, align 8, !tbaa !171
  %i.km = ptrtoint ptr %i.kl to i64
  %i.kn = ptrtoint ptr %i.kk to i64
  %i.ko = sub i64 %i.km, %i.kn
  call void @_ZdlPvm(ptr noundef nonnull %i.kk, i64 noundef %i.ko) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit109

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit109: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i107, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br i1 %.not, label %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEaSERKS2_.exitthread-pre-split, label %bb.dg

bb.cd:                                            ; preds = %bb.bp
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.cd, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, %bb.bo
  %.pn63.pn.pn = phi { ptr, i32 } [ %.pn63.pn, %bb.bo ], [ %i.kp, %bb.cd ], [ %i.iw, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.do

bb.ce:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  invoke void @_ZN5arrow11ConcatenateERKSt6vectorISt10shared_ptrINS_5ArrayEESaIS3_EEPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.137") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef %2)
          to label %bb.cf unwind label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.kq = load ptr, ptr %8, align 8, !tbaa !118
  %i.kr = icmp eq ptr %i.kq, null                 ; 2 uses
  br i1 %i.kr, label %bb.ci, label %bb.cg, !prof !121

bb.cg:                                            ; preds = %bb.cf
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #27
  br label %bb.cw

bb.ch:                                            ; preds = %bb.ce
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.ci:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !502)
  call void @llvm.experimental.noalias.scope.decl(metadata !505)
  %i.kt = load <2 x ptr>, ptr %i.m, align 8, !tbaa !51, !noalias !508
  store ptr null, ptr %i.o, align 8, !tbaa !52, !noalias !508
  store <2 x ptr> %i.kt, ptr %9, align 16, !tbaa !51, !alias.scope !508
  store ptr null, ptr %i.m, align 8, !tbaa !213, !noalias !508
  %i.ku = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #25
          to label %.noexc111 unwind label %bb.df ; 4 uses

.noexc111:                                        ; preds = %bb.ci
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRSt10shared_ptrINS0_5ArrayEEEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(104) %i.ku, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.cj unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i110, !noalias !509

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i110: ; preds = %.noexc111
  %i.kv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ku, i64 noundef 104) #26, !noalias !509
  br label %.body112

bb.cj:                                            ; preds = %.noexc111
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
end_hunk_9
begin_hunk_10_@_ZNK5arrow5Table13CombineChunksEPNS_10MemoryPoolE:bb.a

bb.cy:                                            ; preds = %bb.cx
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 8 ; 4 uses
  %i.mk = load atomic i64, ptr %i.mj acquire, align 8 ; 2 uses
  %i.ml = icmp eq i64 %i.mk, 4294967297
  %i.mm = trunc i64 %i.mk to i32                  ; 2 uses
  br i1 %i.ml, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  store i32 0, ptr %i.mj, align 8, !tbaa !62
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mi, i64 12
  store i32 0, ptr %i.mn, align 4, !tbaa !64
  %i.mo = load ptr, ptr %i.mi, align 8, !tbaa !33
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  %i.mq = load ptr, ptr %i.mp, align 8
  call void %i.mq(ptr noundef nonnull align 8 dereferenceable(16) %i.mi) #27, !inline_history !452
  %i.mr = load ptr, ptr %i.mi, align 8, !tbaa !33
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 24
  %i.mt = load ptr, ptr %i.ms, align 8
  call void %i.mt(ptr noundef nonnull align 8 dereferenceable(16) %i.mi) #27, !inline_history !452
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i134

bb.da:                                            ; preds = %bb.cy
  %i.mu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i131 = icmp eq i8 %i.mu, 0
  br i1 %.not.i.i.i.i.i.i131, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.mv = add nsw i32 %i.mm, -1
  store i32 %i.mv, ptr %i.mj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i132

bb.dc:                                            ; preds = %bb.da
  %i.mw = atomicrmw volatile add ptr %i.mj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i132

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i132: ; preds = %bb.dc, %bb.db
  %.0.i.i.i.i.i.i.i133 = phi i32 [ %i.mm, %bb.db ], [ %i.mw, %bb.dc ]
  %i.mx = icmp eq i32 %.0.i.i.i.i.i.i.i133, 1
  br i1 %i.mx, label %bb.dd, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i134, !prof !66

bb.dd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i132
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mi) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i134

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i134: ; preds = %bb.dd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i132, %bb.cz
  %.pr.i135.pr = load ptr, ptr %8, align 8, !tbaa !118 ; 2 uses
  %.not.i.i136 = icmp eq ptr %.pr.i135.pr, null
  br i1 %.not.i.i136, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit137, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i129, !prof !129

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i129: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i134, %bb.cw
  %i.my = phi ptr [ %.pr.i135.pr, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i134 ], [ %i.mg, %bb.cw ]
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 1
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !130, !range !140, !noundef !141
  %i.nb = trunc nuw i8 %i.na to i1
  br i1 %i.nb, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit137, label %bb.de

bb.de:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i129
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit137

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit137: ; preds = %bb.cx, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i134, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i129, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br i1 %i.kr, label %bb.dg, label %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEaSERKS2_.exitthread-pre-split

bb.df:                                            ; preds = %bb.ci
  %i.nc = landingpad { ptr, i32 }
          cleanup
  br label %.body112

.body112:                                         ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i110, %bb.df
  %eh.lpad-body113 = phi { ptr, i32 } [ %i.nc, %bb.df ], [ %i.kv, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i110 ]
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.do

bb.dg:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit137, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit109
  br label %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEaSERKS2_.exitthread-pre-split

_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEaSERKS2_.exitthread-pre-split: ; preds = %bb.dg, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit137, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit109, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %.459.ph = phi i32 [ 4, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ], [ 1, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit109 ], [ 0, %bb.dg ], [ 1, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit137 ]
  %.pr = load ptr, ptr %i.v, align 8, !tbaa !52
  br label %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEaSERKS2_.exit

_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEaSERKS2_.exit: ; preds = %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEaSERKS2_.exitthread-pre-split, %bb.d
  %i.nd = phi ptr [ %.pr, %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEaSERKS2_.exitthread-pre-split ], [ %i.an, %bb.d ] ; 8 uses
  %.459 = phi i32 [ %.459.ph, %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEaSERKS2_.exitthread-pre-split ], [ 4, %bb.d ]
  %.not.i.i138 = icmp eq ptr %i.nd, null
  br i1 %.not.i.i138, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142, label %bb.dh

bb.dh:                                            ; preds = %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEaSERKS2_.exit
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8 ; 4 uses
  %i.nf = load atomic i64, ptr %i.ne acquire, align 8 ; 2 uses
  %i.ng = icmp eq i64 %i.nf, 4294967297
  %i.nh = trunc i64 %i.nf to i32                  ; 2 uses
  br i1 %i.ng, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  store i32 0, ptr %i.ne, align 8, !tbaa !62
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nd, i64 12
  store i32 0, ptr %i.ni, align 4, !tbaa !64
  %i.nj = load ptr, ptr %i.nd, align 8, !tbaa !33
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %i.nl = load ptr, ptr %i.nk, align 8
  call void %i.nl(ptr noundef nonnull align 8 dereferenceable(16) %i.nd) #27, !inline_history !250
  %i.nm = load ptr, ptr %i.nd, align 8, !tbaa !33
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 24
  %i.no = load ptr, ptr %i.nn, align 8
  call void %i.no(ptr noundef nonnull align 8 dereferenceable(16) %i.nd) #27, !inline_history !250
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142

bb.dj:                                            ; preds = %bb.dh
  %i.np = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i139 = icmp eq i8 %i.np, 0
  br i1 %.not.i.i.i139, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.nq = add nsw i32 %i.nh, -1
  store i32 %i.nq, ptr %i.ne, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140

bb.dl:                                            ; preds = %bb.dj
  %i.nr = atomicrmw volatile add ptr %i.ne, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140: ; preds = %bb.dl, %bb.dk
  %.0.i.i.i.i141 = phi i32 [ %i.nh, %bb.dk ], [ %i.nr, %bb.dl ]
  %i.ns = icmp eq i32 %.0.i.i.i.i141, 1
  br i1 %i.ns, label %bb.dm, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142, !prof !66

bb.dm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nd) #27
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142: ; preds = %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEaSERKS2_.exit, %bb.di, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  switch i32 %.459, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit [
    i32 0, label %bb.dn
    i32 4, label %bb.dn
  ]

bb.dn:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next228, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !512

bb.do:                                            ; preds = %bb.ch, %.body112, %.body
  %.pn63.pn.pn.pn = phi { ptr, i32 } [ %.pn63.pn.pn, %.body ], [ %eh.lpad-body113, %.body112 ], [ %i.ks, %bb.ch ]
  call void @_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.ec

.critedge:                                        ; preds = %bb.dn, %.thread
  %i.nt = phi ptr [ %i.g, %.thread ], [ %i.l, %bb.dn ]
  %i.nu = phi ptr [ %i.f, %.thread ], [ %i.k, %bb.dn ]
  %i.nv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !52 ; 2 uses
  %i.nx = load <2 x ptr>, ptr %i.a, align 8, !tbaa !51
  store <2 x ptr> %i.nx, ptr %10, align 16, !tbaa !51
  %.not.i.i.i143 = icmp eq ptr %i.nw, null
  br i1 %.not.i.i.i143, label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit, label %bb.dp

bb.dp:                                            ; preds = %.critedge
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nw, i64 8 ; 3 uses
  %i.nz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i144 = icmp eq i8 %i.nz, 0
  br i1 %.not.i.i.i.i144, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.oa = load i32, ptr %i.ny, align 4, !tbaa !3
  %i.ob = add nsw i32 %i.oa, 1
  store i32 %i.ob, ptr %i.ny, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit

bb.dr:                                            ; preds = %bb.dp
  %i.oc = atomicrmw volatile add ptr %i.ny, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit:  ; preds = %.critedge, %bb.dq, %bb.dr
  %i.od = load ptr, ptr %3, align 8, !tbaa !77    ; 4 uses
  store ptr %i.od, ptr %11, align 8, !tbaa !77
  %i.oe = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.of = load ptr, ptr %i.nu, align 8, !tbaa !81 ; 3 uses
  store ptr %i.of, ptr %i.oe, align 8, !tbaa !81
  %i.og = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.oh = load ptr, ptr %i.nt, align 8, !tbaa !116 ; 2 uses
  store ptr %i.oh, ptr %i.og, align 8, !tbaa !116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.oj = load i64, ptr %i.oi, align 8, !tbaa !103 ; 2 uses
  %i.ok = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25
          to label %.noexc145 unwind label %bb.du, !inline_history !144 ; 10 uses

.noexc145:                                        ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  store i32 1, ptr %i.ol, align 8, !tbaa !62, !noalias !513
  %i.om = getelementptr inbounds nuw i8, ptr %i.ok, i64 12
  store i32 1, ptr %i.om, align 4, !tbaa !64, !noalias !513
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow11SimpleTableESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.ok, align 8, !tbaa !33, !noalias !513
  %i.on = getelementptr inbounds nuw i8, ptr %i.ok, i64 16 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ok, i64 24
  store ptr getelementptr inbounds inrange(-16, 96) ({ [14 x ptr] }, ptr @_ZTVN5arrow11SimpleTableE, i32 0, i32 0, i32 2), ptr %i.on, align 8, !tbaa !33, !noalias !513
  %i.op = getelementptr inbounds nuw i8, ptr %i.ok, i64 48
  store ptr %i.od, ptr %i.op, align 8, !tbaa !77, !noalias !513
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ok, i64 56
  store ptr %i.of, ptr %i.oq, align 8, !tbaa !81, !noalias !513
  %i.or = getelementptr inbounds nuw i8, ptr %i.ok, i64 64
  store ptr %i.oh, ptr %i.or, align 8, !tbaa !116, !noalias !513
  %i.os = load <2 x ptr>, ptr %10, align 16, !tbaa !51, !noalias !513
  store <2 x ptr> %i.os, ptr %i.oo, align 8, !tbaa !51, !noalias !513
  %i.ot = icmp slt i64 %i.oj, 0
  br i1 %i.ot, label %bb.ds, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i175.thread

bb.ds:                                            ; preds = %.noexc145
  %i.ou = icmp eq ptr %i.of, %i.od
  br i1 %i.ou, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i175.thread, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ov = load ptr, ptr %i.od, align 8, !tbaa !82, !noalias !513
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 40
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !85, !noalias !513
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i175.thread

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i175.thread: ; preds = %.noexc145, %bb.ds, %bb.dt
  %.sink.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ds ], [ %i.ox, %bb.dt ], [ %i.oj, %.noexc145 ]
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ok, i64 40
  store i64 %.sink.i.i.i.i.i.i.i.i, ptr %i.oy, align 8, !tbaa !103, !noalias !513
  store ptr null, ptr %0, align 8, !tbaa !118
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.on, ptr %i.oz, align 8, !tbaa !106
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ok, ptr %i.pa, align 8, !tbaa !52
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit177

bb.du:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit
  %i.pb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #27
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #27
  br label %bb.ec

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142
  %.pre = load ptr, ptr %3, align 8, !tbaa !77    ; 3 uses
  %.pre231 = load ptr, ptr %i.k, align 8, !tbaa !81 ; 2 uses
  %.not4.i.i.i164 = icmp eq ptr %.pre, %.pre231
  br i1 %.not4.i.i.i164, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i175, label %.lr.ph.i.i.i165

.lr.ph.i.i.i165:                                  ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i171
  %.05.i.i.i166 = phi ptr [ %i.pt, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i171 ], [ %.pre, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.05.i.i.i166, i64 8
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i.i167 = icmp eq ptr %i.pd, null
  br i1 %.not.i.i.i.i.i.i.i167, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i171, label %bb.dv

bb.dv:                                            ; preds = %.lr.ph.i.i.i165
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 8 ; 4 uses
  %i.pf = load atomic i64, ptr %i.pe acquire, align 8 ; 2 uses
  %i.pg = icmp eq i64 %i.pf, 4294967297
  %i.ph = trunc i64 %i.pf to i32                  ; 2 uses
  br i1 %i.pg, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  store i32 0, ptr %i.pe, align 8, !tbaa !62
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pd, i64 12
  store i32 0, ptr %i.pi, align 4, !tbaa !64
  %i.pj = load ptr, ptr %i.pd, align 8, !tbaa !33
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  %i.pl = load ptr, ptr %i.pk, align 8
  call void %i.pl(ptr noundef nonnull align 8 dereferenceable(16) %i.pd) #27, !inline_history !151
  %i.pm = load ptr, ptr %i.pd, align 8, !tbaa !33
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 24
  %i.po = load ptr, ptr %i.pn, align 8
  call void %i.po(ptr noundef nonnull align 8 dereferenceable(16) %i.pd) #27, !inline_history !151
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i171

bb.dx:                                            ; preds = %bb.dv
  %i.pp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i168 = icmp eq i8 %i.pp, 0
  br i1 %.not.i.i.i.i.i.i.i.i168, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.pq = add nsw i32 %i.ph, -1
  store i32 %i.pq, ptr %i.pe, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i169

bb.dz:                                            ; preds = %bb.dx
  %i.pr = atomicrmw volatile add ptr %i.pe, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i169

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i169: ; preds = %bb.dz, %bb.dy
  %.0.i.i.i.i.i.i.i.i.i170 = phi i32 [ %i.ph, %bb.dy ], [ %i.pr, %bb.dz ]
  %i.ps = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i170, 1
  br i1 %i.ps, label %bb.ea, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i171, !prof !66

bb.ea:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i169
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pd) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i171

_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i171: ; preds = %bb.ea, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i169, %bb.dw, %.lr.ph.i.i.i165
  %i.pt = getelementptr inbounds nuw i8, ptr %.05.i.i.i166, i64 16 ; 2 uses
  %.not.i.i.i172 = icmp eq ptr %i.pt, %.pre231
  br i1 %.not.i.i.i172, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i173, label %.lr.ph.i.i.i165, !llvm.loop !152

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i173: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i171
  %.pr.i174 = load ptr, ptr %3, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i175

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i175: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i173, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.pu = phi ptr [ %.pr.i174, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i173 ], [ %.pre, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i176 = icmp eq ptr %i.pu, null
  br i1 %.not.i.i1.i176, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit177, label %bb.eb

bb.eb:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i175
  %i.pv = load ptr, ptr %i.l, align 8, !tbaa !116
  %i.pw = ptrtoint ptr %i.pv to i64
  %i.px = ptrtoint ptr %i.pu to i64
  %i.py = sub i64 %i.pw, %i.px
  call void @_ZdlPvm(ptr noundef nonnull %i.pu, i64 noundef %i.py) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit177

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit177: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i175.thread, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i175, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.ec:                                            ; preds = %bb.o, %bb.do, %bb.du
  %.pn70 = phi { ptr, i32 } [ %i.pb, %bb.du ], [ %.pn63.pn.pn.pn, %bb.do ], [ %i.bk, %bb.o ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn70
}

declare void @_ZN5arrow11ConcatenateERKSt6vectorISt10shared_ptrINS_5ArrayEESaIS3_EEPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result.137") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !118    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread, !prof !121

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !64
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #27, !inline_history !518
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #27, !inline_history !518
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit, !prof !66

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !118    ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread, !prof !129

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !130, !range !140, !noundef !141
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

end_hunk_10
begin_hunk_11_@_ZNK5arrow5Table20CombineChunksToBatchEPNS_10MemoryPoolE:bb.a
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.i

bb.bz:                                            ; preds = %bb.bx
  %i.ia = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i77 = icmp eq i8 %i.ia, 0
  br i1 %.not.i.i.i.i.i.i77, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ib = add nsw i32 %i.hs, -1
  store i32 %i.ib, ptr %i.hp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i78

bb.cb:                                            ; preds = %bb.bz
  %i.ic = atomicrmw volatile add ptr %i.hp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i78

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i78: ; preds = %bb.cb, %bb.ca
  %.0.i.i.i.i.i.i.i79 = phi i32 [ %i.hs, %bb.ca ], [ %i.ic, %bb.cb ]
  %i.id = icmp eq i32 %.0.i.i.i.i.i.i.i79, 1
  br i1 %i.id, label %bb.cc, label %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.i, !prof !66

bb.cc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i78
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ho) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.i: ; preds = %bb.cc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i78, %bb.by, %bb.bw
  %.pr.i80 = load ptr, ptr %3, align 8, !tbaa !118 ; 2 uses
  %.not.i.i81 = icmp eq ptr %.pr.i80, null
  br i1 %.not.i.i81, label %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.thread.i, !prof !129

_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.i, %bb.bv
  %i.ie = phi ptr [ %.pr.i80, %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.i ], [ %i.hl, %bb.bv ]
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 1
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !130, !range !140, !noundef !141
  %i.ih = trunc nuw i8 %i.ig to i1
  br i1 %i.ih, label %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEED2Ev.exit, label %bb.cd

bb.cd:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_5TableEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.thread.i, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.43", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !118
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !118
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !66

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !153    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !61
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !153    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !61
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.m = load ptr, ptr %3, align 8, !tbaa !153    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !61
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #28
  unreachable
}

declare void @_ZN5arrow15MakeArrayOfNullERKSt10shared_ptrINS_8DataTypeEElPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result.137") align 8, ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN5arrow11RecordBatch4MakeESt10shared_ptrINS_6SchemaEElSt6vectorIS1_INS_5ArrayEESaIS6_EES1_INS_6Device9SyncEventEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.57") align 8, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !64
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !230
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !230
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow16TableBatchReaderC2ERKNS_5TableE(ptr noundef nonnull align 8 dereferenceable(120) initializes((0, 32)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.49", align 8 ; 6 uses
  store ptr getelementptr inbounds inrange(-16, 56) ({ [9 x ptr] }, ptr @_ZTVN5arrow16TableBatchReaderE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.b, align 8, !tbaa !535
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.f = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_ZNK5arrow5Table11num_columnsEv.exit unwind label %bb.j ; 3 uses

_ZNK5arrow5Table11num_columnsEv.exit:             ; preds = %bb.a
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp slt i32 %i.f, 0
  br i1 %i.h, label %bb.b, label %_ZNSt6vectorIPN5arrow12ChunkedArrayESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.b:                                             ; preds = %_ZNK5arrow5Table11num_columnsEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #24
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIPN5arrow12ChunkedArrayESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %_ZNK5arrow5Table11num_columnsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIPN5arrow12ChunkedArrayESaIS2_EEC2EmRKS3_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPN5arrow12ChunkedArrayESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.i = shl nuw nsw i64 %i.g, 3
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #25
          to label %.noexc21 unwind label %bb.k   ; 4 uses

.noexc21:                                         ; preds = %bb.c
  store ptr %i.j, ptr %i.c, align 8, !tbaa !536
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.k, ptr %i.l, align 8, !tbaa !540
  store ptr null, ptr %i.j, align 8, !tbaa !185
  %i.m = getelementptr i8, ptr %i.j, i64 8        ; 3 uses
  %i.n = add nsw i64 %i.g, -1                     ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZNSt12_Vector_baseIPN5arrow12ChunkedArrayESaIS2_EEC2EmRKS3_.exit.thread.i, label %_ZSt6fill_nIPPN5arrow12ChunkedArrayEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPPN5arrow12ChunkedArrayEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc21
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.n, 3   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !185
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt12_Vector_baseIPN5arrow12ChunkedArrayESaIS2_EEC2EmRKS3_.exit.thread.i

_ZNSt12_Vector_baseIPN5arrow12ChunkedArrayESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIPN5arrow12ChunkedArrayESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i, %_ZSt6fill_nIPPN5arrow12ChunkedArrayEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc21
  %.0.i.i.i.i.i = phi ptr [ %i.p, %_ZSt6fill_nIPPN5arrow12ChunkedArrayEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.m, %.noexc21 ], [ null, %_ZNSt6vectorIPN5arrow12ChunkedArrayESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.0.i.i.i.i.i, ptr %i.q, align 8, !tbaa !541
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.t = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %_ZNK5arrow5Table11num_columnsEv.exit23 unwind label %bb.l ; 3 uses

_ZNK5arrow5Table11num_columnsEv.exit23:           ; preds = %_ZNSt12_Vector_baseIPN5arrow12ChunkedArrayESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = icmp slt i32 %i.t, 0
  br i1 %i.v, label %bb.d, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.d:                                             ; preds = %_ZNK5arrow5Table11num_columnsEv.exit23
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #24
          to label %.noexc25 unwind label %bb.m

.noexc25:                                         ; preds = %bb.d
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNK5arrow5Table11num_columnsEv.exit23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %.not.i.i.i.i24 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i.i24, label %.loopexit44, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.w = shl nuw nsw i64 %i.u, 2                  ; 3 uses
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #25
          to label %.noexc26 unwind label %bb.m   ; 4 uses

.noexc26:                                         ; preds = %bb.e
  store ptr %i.x, ptr %i.r, align 8, !tbaa !264
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.u
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.y, ptr %i.z, align 8, !tbaa !426
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.x, i8 0, i64 %i.w, i1 false), !tbaa !3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.w
  br label %.loopexit44

.loopexit44:                                      ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %.noexc26
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.aa, %.noexc26 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.ab, align 8, !tbaa !261
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.ae = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %_ZNK5arrow5Table11num_columnsEv.exit28 unwind label %bb.n ; 3 uses

_ZNK5arrow5Table11num_columnsEv.exit28:           ; preds = %.loopexit44
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = icmp slt i32 %i.ae, 0
  br i1 %i.ag, label %bb.f, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

bb.f:                                             ; preds = %_ZNK5arrow5Table11num_columnsEv.exit28
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #24
          to label %.noexc34 unwind label %bb.o

.noexc34:                                         ; preds = %bb.f
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNK5arrow5Table11num_columnsEv.exit28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  %.not.i.i.i.i29 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i29, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ah = shl nuw nsw i64 %i.af, 3                ; 3 uses
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #25
          to label %.noexc35 unwind label %bb.o   ; 4 uses

.noexc35:                                         ; preds = %bb.g
  store ptr %i.ai, ptr %i.ac, align 8, !tbaa !542
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.af
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !543
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ai, i8 0, i64 %i.ah, i1 false), !tbaa !109
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ah
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i, %.noexc35
  %.0.i.i.i.i.i.i.i33 = phi ptr [ %i.al, %.noexc35 ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.0.i.i.i.i.i.i.i33, ptr %i.am, align 8, !tbaa !544
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.an, align 8, !tbaa !545
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 9223372036854775807, ptr %i.ao, align 8, !tbaa !555
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ 0, %.loopexit ] ; 4 uses
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.ar = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.aq)
          to label %_ZNK5arrow5Table11num_columnsEv.exit37 unwind label %bb.p

_ZNK5arrow5Table11num_columnsEv.exit37:           ; preds = %bb.h
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp slt i64 %indvars.iv, %i.as
  br i1 %i.at, label %bb.q, label %bb.i

bb.i:                                             ; preds = %_ZNK5arrow5Table11num_columnsEv.exit37
  ret void

bb.j:                                             ; preds = %bb.a
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN5arrow12ChunkedArrayESaIS2_EED2Ev.exit

bb.k:                                             ; preds = %bb.c, %bb.b
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN5arrow12ChunkedArrayESaIS2_EED2Ev.exit

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIPN5arrow12ChunkedArrayESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.m:                                             ; preds = %bb.e, %bb.d
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.n:                                             ; preds = %.loopexit44
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

bb.o:                                             ; preds = %bb.g, %bb.f
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

bb.p:                                             ; preds = %bb.h
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.q:                                             ; preds = %_ZNK5arrow5Table11num_columnsEv.exit37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.bb = load ptr, ptr %1, align 8, !tbaa !33
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = trunc nuw nsw i64 %indvars.iv to i32
  invoke void %i.bd(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.49") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.be)
          to label %bb.r unwind label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.bf = load ptr, ptr %2, align 8, !tbaa !82
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !536
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !185
  %i.bi = load ptr, ptr %i.ap, align 8, !tbaa !52 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 4 uses
  %i.bk = load atomic i64, ptr %i.bj acquire, align 8 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 4294967297
  %i.bm = trunc i64 %i.bk to i32                  ; 2 uses
  br i1 %i.bl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bj, align 8, !tbaa !62
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store i32 0, ptr %i.bn, align 4, !tbaa !64
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !33
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #27, !inline_history !250
  %i.br = load ptr, ptr %i.bi, align 8, !tbaa !33
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #27, !inline_history !250
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bv = add nsw i32 %i.bm, -1
  store i32 %i.bv, ptr %i.bj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bw = atomicrmw volatile add ptr %i.bj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bm, %bb.v ], [ %i.bw, %bb.w ]
  %i.bx = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bx, label %bb.x, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #27
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.r, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.h, !llvm.loop !556

bb.y:                                             ; preds = %bb.q
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.p
  %.pn = phi { ptr, i32 } [ %i.by, %bb.y ], [ %i.ba, %bb.p ] ; 2 uses
  %i.bz = load ptr, ptr %i.ac, align 8, !tbaa !542 ; 3 uses
  %.not.i.i.i38 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !543
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.bz to i64
  %i.ce = sub i64 %i.cc, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.ce) #26
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.aa, %bb.z, %bb.o, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.ay, %bb.n ], [ %i.az, %bb.o ], [ %.pn, %bb.z ], [ %.pn, %bb.aa ] ; 2 uses
  %i.cf = load ptr, ptr %i.r, align 8, !tbaa !264 ; 3 uses
  %.not.i.i.i39 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i39, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !426
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cf to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.ck) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ab, %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.m, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.l ], [ %i.ax, %bb.m ], [ %.pn.pn, %_ZNSt6vectorIlSaIlEED2Ev.exit ], [ %.pn.pn, %bb.ab ] ; 2 uses
  %i.cl = load ptr, ptr %i.c, align 8, !tbaa !536 ; 3 uses
  %.not.i.i.i40 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i40, label %_ZNSt6vectorIPN5arrow12ChunkedArrayESaIS2_EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !540
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cq) #26
  br label %_ZNSt6vectorIPN5arrow12ChunkedArrayESaIS2_EED2Ev.exit

_ZNSt6vectorIPN5arrow12ChunkedArrayESaIS2_EED2Ev.exit: ; preds = %bb.ac, %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.k, %bb.j
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.au, %bb.j ], [ %i.av, %bb.k ], [ %.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %.pn.pn.pn, %bb.ac ]
  call void @_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #27
  call void @_ZN5arrow17RecordBatchReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #27
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: nounwind
declare void @_ZN5arrow17RecordBatchReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow16TableBatchReaderC2ESt10shared_ptrINS_5TableEE(ptr noundef nonnull align 8 dereferenceable(120) initializes((0, 32)) %0, ptr nofree noundef captures(none) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.49", align 8 ; 6 uses
  store ptr getelementptr inbounds inrange(-16, 56) ({ [9 x ptr] }, ptr @_ZTVN5arrow16TableBatchReaderE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !51
  store ptr null, ptr %i.c, align 8, !tbaa !52
  store <2 x ptr> %i.d, ptr %i.a, align 8, !tbaa !51
  store ptr null, ptr %1, align 8, !tbaa !106
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !535
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.j = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_ZNK5arrow5Table11num_columnsEv.exit unwind label %bb.j ; 3 uses

_ZNK5arrow5Table11num_columnsEv.exit:             ; preds = %bb.a
  %i.k = sext i32 %i.j to i64                     ; 3 uses
  %i.l = icmp slt i32 %i.j, 0
  br i1 %i.l, label %bb.b, label %_ZNSt6vectorIPN5arrow12ChunkedArrayESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.b:                                             ; preds = %_ZNK5arrow5Table11num_columnsEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #24
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIPN5arrow12ChunkedArrayESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %_ZNK5arrow5Table11num_columnsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIPN5arrow12ChunkedArrayESaIS2_EEC2EmRKS3_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPN5arrow12ChunkedArrayESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 3
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #25
          to label %.noexc15 unwind label %bb.k   ; 4 uses

.noexc15:                                         ; preds = %bb.c
  store ptr %i.n, ptr %i.g, align 8, !tbaa !536
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.o, ptr %i.p, align 8, !tbaa !540
  store ptr null, ptr %i.n, align 8, !tbaa !185
  %i.q = getelementptr i8, ptr %i.n, i64 8        ; 3 uses
  %i.r = add nsw i64 %i.k, -1                     ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_ZNSt12_Vector_baseIPN5arrow12ChunkedArrayESaIS2_EEC2EmRKS3_.exit.thread.i, label %_ZSt6fill_nIPPN5arrow12ChunkedArrayEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPPN5arrow12ChunkedArrayEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc15
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.r, 3   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.q, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !185
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt12_Vector_baseIPN5arrow12ChunkedArrayESaIS2_EEC2EmRKS3_.exit.thread.i

_ZNSt12_Vector_baseIPN5arrow12ChunkedArrayESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIPN5arrow12ChunkedArrayESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i, %_ZSt6fill_nIPPN5arrow12ChunkedArrayEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc15
  %.0.i.i.i.i.i = phi ptr [ %i.t, %_ZSt6fill_nIPPN5arrow12ChunkedArrayEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.q, %.noexc15 ], [ null, %_ZNSt6vectorIPN5arrow12ChunkedArrayESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.0.i.i.i.i.i, ptr %i.u, align 8, !tbaa !541
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !106
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !35
  %i.z = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %_ZNK5arrow5Table11num_columnsEv.exit17 unwind label %bb.l ; 3 uses

_ZNK5arrow5Table11num_columnsEv.exit17:           ; preds = %_ZNSt12_Vector_baseIPN5arrow12ChunkedArrayESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = icmp slt i32 %i.z, 0
  br i1 %i.ab, label %bb.d, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.d:                                             ; preds = %_ZNK5arrow5Table11num_columnsEv.exit17
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #24
          to label %.noexc19 unwind label %bb.m

.noexc19:                                         ; preds = %bb.d
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNK5arrow5Table11num_columnsEv.exit17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i18 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i.i18, label %.loopexit38, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ac = shl nuw nsw i64 %i.aa, 2                ; 3 uses
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #25
          to label %.noexc20 unwind label %bb.m   ; 4 uses

.noexc20:                                         ; preds = %bb.e
  store ptr %i.ad, ptr %i.v, align 8, !tbaa !264
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.aa
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !426
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ad, i8 0, i64 %i.ac, i1 false), !tbaa !3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  br label %.loopexit38

.loopexit38:                                      ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %.noexc20
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.ag, %.noexc20 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.ah, align 8, !tbaa !261
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !106
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !35
  %i.am = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.al)
          to label %_ZNK5arrow5Table11num_columnsEv.exit22 unwind label %bb.n ; 3 uses

_ZNK5arrow5Table11num_columnsEv.exit22:           ; preds = %.loopexit38
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %i.ao = icmp slt i32 %i.am, 0
  br i1 %i.ao, label %bb.f, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

bb.f:                                             ; preds = %_ZNK5arrow5Table11num_columnsEv.exit22
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #24
          to label %.noexc28 unwind label %bb.o

.noexc28:                                         ; preds = %bb.f
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNK5arrow5Table11num_columnsEv.exit22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false)
  %.not.i.i.i.i23 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i.i23, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ap = shl nuw nsw i64 %i.an, 3                ; 3 uses
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #25
          to label %.noexc29 unwind label %bb.o   ; 4 uses

.noexc29:                                         ; preds = %bb.g
  store ptr %i.aq, ptr %i.ai, align 8, !tbaa !542
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.an
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !543
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aq, i8 0, i64 %i.ap, i1 false), !tbaa !109
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i, %.noexc29
  %.0.i.i.i.i.i.i.i27 = phi ptr [ %i.at, %.noexc29 ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.0.i.i.i.i.i.i.i27, ptr %i.au, align 8, !tbaa !544
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.av, align 8, !tbaa !545
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 9223372036854775807, ptr %i.aw, align 8, !tbaa !555
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ 0, %.loopexit ] ; 4 uses
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !106
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !35
  %i.bb = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ba)
          to label %_ZNK5arrow5Table11num_columnsEv.exit31 unwind label %bb.p

_ZNK5arrow5Table11num_columnsEv.exit31:           ; preds = %bb.h
  %i.bc = sext i32 %i.bb to i64
  %i.bd = icmp slt i64 %indvars.iv, %i.bc
  br i1 %i.bd, label %bb.q, label %bb.i

bb.i:                                             ; preds = %_ZNK5arrow5Table11num_columnsEv.exit31
  ret void

bb.j:                                             ; preds = %bb.a
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN5arrow12ChunkedArrayESaIS2_EED2Ev.exit

bb.k:                                             ; preds = %bb.c, %bb.b
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN5arrow12ChunkedArrayESaIS2_EED2Ev.exit

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIPN5arrow12ChunkedArrayESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.m:                                             ; preds = %bb.e, %bb.d
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.n:                                             ; preds = %.loopexit38
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

bb.o:                                             ; preds = %bb.g, %bb.f
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

bb.p:                                             ; preds = %bb.h
  %i.bk = landingpad { ptr, i32 }
          cleanup
end_hunk_11
begin_hunk_12_@_ZN5arrow16TableBatchReader8ReadNextEPSt10shared_ptrINS_11RecordBatchEE:bb.a
  store i32 0, ptr %i.nd, align 4, !tbaa !64
  %i.ne = load ptr, ptr %i.my, align 8, !tbaa !33
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  %i.ng = load ptr, ptr %i.nf, align 8
  call void %i.ng(ptr noundef nonnull align 8 dereferenceable(16) %i.my) #27, !inline_history !575
  %i.nh = load ptr, ptr %i.my, align 8, !tbaa !33
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 24
  %i.nj = load ptr, ptr %i.ni, align 8
  call void %i.nj(ptr noundef nonnull align 8 dereferenceable(16) %i.my) #27, !inline_history !575
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i135

bb.dh:                                            ; preds = %bb.df
  %i.nk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i132 = icmp eq i8 %i.nk, 0
  br i1 %.not.i.i.i.i.i.i.i.i132, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.nl = add nsw i32 %i.nc, -1
  store i32 %i.nl, ptr %i.mz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i133

bb.dj:                                            ; preds = %bb.dh
  %i.nm = atomicrmw volatile add ptr %i.mz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i133

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i133: ; preds = %bb.dj, %bb.di
  %.0.i.i.i.i.i.i.i.i.i134 = phi i32 [ %i.nc, %bb.di ], [ %i.nm, %bb.dj ]
  %i.nn = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i134, 1
  br i1 %i.nn, label %bb.dk, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i135, !prof !66

bb.dk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i133
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.my) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i135

_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i135: ; preds = %bb.dk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i133, %bb.dg, %.lr.ph.i.i.i129
  %i.no = getelementptr inbounds nuw i8, ptr %.05.i.i.i130, i64 16 ; 2 uses
  %.not.i.i.i136 = icmp eq ptr %i.no, %i.mw
  br i1 %.not.i.i.i136, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i137, label %.lr.ph.i.i.i129, !llvm.loop !576

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i137: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i135
  %.pr.i138 = load ptr, ptr %3, align 16, !tbaa !566
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i139

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i139: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i137, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.np = phi ptr [ %.pr.i138, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i137 ], [ %i.mv, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i140 = icmp eq ptr %i.np, null
  br i1 %.not.i.i1.i140, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit141, label %bb.dl

bb.dl:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i139
  %i.nq = load ptr, ptr %i.bz, align 16, !tbaa !567
  %i.nr = ptrtoint ptr %i.nq to i64
  %i.ns = ptrtoint ptr %i.np to i64
  %i.nt = sub i64 %i.nr, %i.ns
  call void @_ZdlPvm(ptr noundef nonnull %i.np, i64 noundef %i.nt) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit141

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit141: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i139, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.not.i.i.i142 = icmp eq ptr %.sroa.0146.0, null
  br i1 %.not.i.i.i142, label %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EED2Ev.exit, label %bb.dm

bb.dm:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit141
  %i.nu = ptrtoint ptr %.sroa.11.0 to i64
  %i.nv = ptrtoint ptr %.sroa.0146.0 to i64
  %i.nw = sub i64 %i.nu, %i.nv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0146.0, i64 noundef %i.nw) #26
  br label %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EED2Ev.exit

bb.dn:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit
  %i.nx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #27
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #27
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.do

bb.do:                                            ; preds = %bb.v, %bb.by, %bb.dn
  %.pn.pn.pn = phi { ptr, i32 } [ %i.nx, %bb.dn ], [ %.pn, %bb.by ], [ %i.dc, %bb.v ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #27
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.u, %bb.t
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.do ], [ %i.db, %bb.u ], [ %i.da, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.l
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.dp ], [ %i.az, %bb.l ]
  %.not.i.i.i143 = icmp eq ptr %.sroa.0146.0, null
  br i1 %.not.i.i.i143, label %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EED2Ev.exit144, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ny = ptrtoint ptr %.sroa.11.0 to i64
  %i.nz = ptrtoint ptr %.sroa.0146.0 to i64
  %i.oa = sub i64 %i.ny, %i.nz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0146.0, i64 noundef %i.oa) #26
  br label %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EED2Ev.exit144

_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EED2Ev.exit144: ; preds = %bb.dr, %bb.dq
  resume { ptr, i32 } %.pn.pn.pn.pn.pn

_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EED2Ev.exit:   ; preds = %bb.dm, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit141, %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

declare void @_ZNK5arrow5Array5SliceEll(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.60") align 8, ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZN5arrow11RecordBatch4MakeESt10shared_ptrINS_6SchemaEElSt6vectorIS1_INS_9ArrayDataEESaIS6_EENS_20DeviceAllocationTypeES1_INS_6Device9SyncEventEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.57") align 8, ptr noundef, i64 noundef, ptr noundef, i8 noundef signext, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !566    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !568  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !62
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !64
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #27, !inline_history !580
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #27, !inline_history !580
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !576

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !566
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !567
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow16TableBatchReaderD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 56) ({ [9 x ptr] }, ptr @_ZTVN5arrow16TableBatchReaderE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !542  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !543
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #26
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !264  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !426
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !536  ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIPN5arrow12ChunkedArrayESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !540
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #26
  br label %_ZNSt6vectorIPN5arrow12ChunkedArrayESaIS2_EED2Ev.exit

_ZNSt6vectorIPN5arrow12ChunkedArrayESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !52   ; 8 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPN5arrow12ChunkedArrayESaIS2_EED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.x, align 8, !tbaa !62
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !64
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !33
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #27, !inline_history !534
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #27, !inline_history !534
  br label %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i3 = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.aa, %bb.h ], [ %i.ak, %bb.i ]
  %i.al = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.al, label %bb.j, label %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #27
  br label %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIPN5arrow12ChunkedArrayESaIS2_EED2Ev.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  tail call void @_ZN5arrow17RecordBatchReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #27
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow16TableBatchReaderD0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow16TableBatchReaderD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow17RecordBatchReader8ReadNextEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.164") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN5arrow6Status8FromArgsIJRA30_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(30) @.str.37)
  call void @_ZN5arrow6ResultINS_23RecordBatchWithMetadataEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #27
  %i.a = load ptr, ptr %2, align 8, !tbaa !118    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.b, !prof !121

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !130, !range !140, !noundef !141
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #27
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow17RecordBatchReader5CloseEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !118, !alias.scope !581
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef signext i8 @_ZNK5arrow17RecordBatchReader11device_typeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow5TableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 96) ({ [14 x ptr] }, ptr @_ZTVN5arrow5TableE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !64
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !150
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !150
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow5TableD0Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #28
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #27 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !44     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #24
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !51
  store ptr null, ptr %i.r, align 8, !tbaa !52
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !51
  store ptr null, ptr %2, align 8, !tbaa !53
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !587)
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !51, !alias.scope !587, !noalias !584
  store ptr null, ptr %i.t, align 8, !tbaa !52, !alias.scope !587, !noalias !584
  store <2 x ptr> %i.u, ptr %.012.i.i.i, align 8, !tbaa !51, !alias.scope !584, !noalias !587
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !53, !alias.scope !587, !noalias !584
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !56

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ab, %.lr.ph.i.i.i17 ], [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.aa, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592)
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.z = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !51, !alias.scope !592, !noalias !589
  store ptr null, ptr %i.y, align 8, !tbaa !52, !alias.scope !592, !noalias !589
  store <2 x ptr> %i.z, ptr %.012.i.i.i18, align 8, !tbaa !51, !alias.scope !589, !noalias !592
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !53, !alias.scope !592, !noalias !589
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !56

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ab, %.lr.ph.i.i.i17 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !41
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !44
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !45
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !41
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #27, !inline_history !594
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
end_hunk_12
begin_hunk_13_@_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 16 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i19, label %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit21, label %.lr.ph.i.i.i16, !llvm.loop !332

_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit21: ; preds = %.lr.ph.i.i.i16, %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i20 = phi ptr [ %i.v, %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.z, %.lr.ph.i.i.i16 ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i22 = icmp eq ptr %i.c, null
  br i1 %.not.i22, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5TableEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit21
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !326
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5TableEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5TableEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit21, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !310
  store ptr %.0.lcssa.i.i.i20, ptr %i.a, align 8, !tbaa !307
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !326
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !172  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !170    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #24
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !52   ; 2 uses
  %i.t = load <2 x ptr>, ptr %2, align 8, !tbaa !51
  store <2 x ptr> %i.t, ptr %i.q, align 8, !tbaa !51
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.u, align 4, !tbaa !3
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit: ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.p, %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !617)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620)
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aa = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !51, !alias.scope !620, !noalias !617
  store ptr null, ptr %i.z, align 8, !tbaa !52, !alias.scope !620, !noalias !617
  store <2 x ptr> %i.aa, ptr %.012.i.i.i, align 8, !tbaa !51, !alias.scope !617, !noalias !620
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !213, !alias.scope !620, !noalias !617
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !360

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ], [ %i.ac, %.lr.ph.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ah, %.lr.ph.i.i.i17 ], [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.af = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !51, !alias.scope !625, !noalias !622
  store ptr null, ptr %i.ae, align 8, !tbaa !52, !alias.scope !625, !noalias !622
  store <2 x ptr> %i.af, ptr %.012.i.i.i18, align 8, !tbaa !51, !alias.scope !622, !noalias !625
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !213, !alias.scope !625, !noalias !622
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !360

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ah, %.lr.ph.i.i.i17 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !171
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !170
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !172
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !171
  ret void
}

declare void @_ZN5arrow7compute11CastOptionsC1Eb(ptr noundef nonnull align 8 dereferenceable(46), i1 noundef zeroext) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !64
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !230
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !230
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute11CastOptionsD0Ev(ptr noundef nonnull align 8 dereferenceable(46) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN5arrow7compute11CastOptionsE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow7compute11CastOptionsD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !64
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !374
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !374
  br label %_ZN5arrow7compute11CastOptionsD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow7compute11CastOptionsD2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !375
  br label %_ZN5arrow7compute11CastOptionsD2Ev.exit

_ZN5arrow7compute11CastOptionsD2Ev.exit:          ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #26
  ret void
}

declare void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !77     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #24
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !51
  store ptr null, ptr %i.r, align 8, !tbaa !52
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !51
  store ptr null, ptr %2, align 8, !tbaa !82
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !51, !alias.scope !630, !noalias !627
  store ptr null, ptr %i.t, align 8, !tbaa !52, !alias.scope !630, !noalias !627
  store <2 x ptr> %i.u, ptr %.012.i.i.i, align 8, !tbaa !51, !alias.scope !627, !noalias !630
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !82, !alias.scope !630, !noalias !627
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !386

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ab, %.lr.ph.i.i.i17 ], [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.aa, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !632)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !635)
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.z = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !51, !alias.scope !635, !noalias !632
  store ptr null, ptr %i.y, align 8, !tbaa !52, !alias.scope !635, !noalias !632
  store <2 x ptr> %i.z, ptr %.012.i.i.i18, align 8, !tbaa !51, !alias.scope !632, !noalias !635
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !82, !alias.scope !635, !noalias !632
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !386

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ab, %.lr.ph.i.i.i17 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !116
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !77
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !81
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !116
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(17) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !420
  switch i8 %i.b, label %bb.ak [
    i8 0, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit
    i8 1, label %bb.b
    i8 2, label %bb.i
    i8 3, label %bb.p
    i8 4, label %bb.w
    i8 5, label %bb.ad
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52   ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !64
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #27, !inline_history !637
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #27, !inline_history !637
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
end_hunk_13
begin_hunk_14_@_ZSt10_ConstructIN5arrow6SchemaEJSt6vectorISt10shared_ptrINS0_5FieldEESaIS5_EERKS3_IKNS0_16KeyValueMetadataEEEEvPT_DpOT0_:bb.a
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.p, align 8, !tbaa !62
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !64
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #27, !inline_history !228
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #27, !inline_history !228
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i4 = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i4, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.s, %bb.i ], [ %i.ac, %bb.j ]
  %i.ad = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ad, label %bb.k, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #27
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  %i.ae = load ptr, ptr %3, align 16, !tbaa !44   ; 3 uses
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !45  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ax, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i ], [ %i.ae, %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 4294967297
  %i.al = trunc i64 %i.aj to i32                  ; 2 uses
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ai, align 8, !tbaa !62
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 0, ptr %i.am, align 4, !tbaa !64
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !33
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #27, !inline_history !229
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !33
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #27, !inline_history !229
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = add nsw i32 %i.al, -1
  store i32 %i.au, ptr %i.ai, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.av = atomicrmw volatile add ptr %i.ai, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.al, %bb.o ], [ %i.av, %bb.p ]
  %i.aw = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.aw, label %bb.q, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i, !prof !66

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.m, %.lr.ph.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.ax, %i.af
  br i1 %.not.i.i.i5, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !69

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 16, !tbaa !44
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ay = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.ae, %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i
  %i.az = load ptr, ptr %i.c, align 16, !tbaa !41
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i, %bb.r
  ret void

bb.s:                                             ; preds = %_ZNSt10shared_ptrIKN5arrow16KeyValueMetadataEEC2ERKS3_.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #27
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #27
  resume { ptr, i32 } %i.bd
}

declare void @_ZN5arrow6SchemaC1ESt6vectorISt10shared_ptrINS_5FieldEESaIS4_EES2_IKNS_16KeyValueMetadataEE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow11SimpleTableESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow11SimpleTableESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow11SimpleTableEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #27, !inline_history !688
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow11SimpleTableESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow11SimpleTableESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow11SimpleTableESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !686  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !61
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #27
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow11SimpleTableD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 96) ({ [14 x ptr] }, ptr @_ZTVN5arrow11SimpleTableE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !64
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #27, !inline_history !151
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #27, !inline_history !151
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !152

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.w = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !116
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i, %bb.h
  store ptr getelementptr inbounds inrange(-16, 96) ({ [14 x ptr] }, ptr @_ZTVN5arrow5TableE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i1 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i1, label %_ZN5arrow5TableD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ae, align 8, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !64
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !33
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #27, !inline_history !689
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !33
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #27, !inline_history !689
  br label %_ZN5arrow5TableD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi i32 [ %i.ah, %bb.l ], [ %i.ar, %bb.m ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.as, label %bb.n, label %_ZN5arrow5TableD2Ev.exit, !prof !66

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #27, !inline_history !690
  br label %_ZN5arrow5TableD2Ev.exit

_ZN5arrow5TableD2Ev.exit:                         ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow11SimpleTableD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow11SimpleTableD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK5arrow11SimpleTable6columnEi(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.49") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = sext i32 %2 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.b ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.g = load <2 x ptr>, ptr %i.d, align 8, !tbaa !51
  store <2 x ptr> %i.g, ptr %0, align 8, !tbaa !51
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.h, align 4, !tbaa !3
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5arrow11SimpleTable7columnsEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5arrow11SimpleTable5SliceEll(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.10") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.13", align 8    ; 14 uses
  %5 = alloca %"class.std::shared_ptr.49", align 16 ; 7 uses
  %6 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %7 = alloca %"class.std::vector.13", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !81   ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !77   ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EEC2ERKS5_.exit.thread, label %bb.b

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EEC2ERKS5_.exit.thread: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr null, i64 %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 0, ptr %4, align 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !116
  store ptr null, ptr %i.h, align 8, !tbaa !81
  br label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.g, 9223372036854775792
  br i1 %i.k, label %.noexc.i.i, label %bb.c, !prof !66

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #25 ; 4 uses
  store ptr %i.l, ptr %4, align 8, !tbaa !77
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !81
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.g
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !116
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.y, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.x, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.d, %bb.c ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !52   ; 2 uses
  %i.r = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !51
  store <2 x ptr> %i.r, ptr %.08.i.i.i.i.i, align 8, !tbaa !51
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load i32, ptr %i.s, align 4, !tbaa !3
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.s, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.w = atomicrmw volatile add ptr %i.s, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e, %.lr.ph.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 3 uses
  %i.z = icmp eq ptr %i.x, %i.c
  br i1 %i.z, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !143

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EEC2ERKS5_.exit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %4, align 8, !tbaa !80    ; 2 uses
  store ptr %i.y, ptr %i.m, align 8, !tbaa !81
  %i.aa = icmp eq ptr %.pre, %i.y
  br i1 %i.aa, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EEC2ERKS5_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.l

._crit_edge.loopexit:                             ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ac = load ptr, ptr %.sroa.036.041, align 8, !tbaa !82
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !85
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EEC2ERKS5_.exit.thread, %._crit_edge.loopexit, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EEC2ERKS5_.exit
  %i.af = phi ptr [ %i.m, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EEC2ERKS5_.exit ], [ %i.m, %._crit_edge.loopexit ], [ %i.h, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EEC2ERKS5_.exit.thread ]
  %i.ag = phi ptr [ %i.o, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EEC2ERKS5_.exit ], [ %i.o, %._crit_edge.loopexit ], [ %i.j, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EEC2ERKS5_.exit.thread ]
  %.012.lcssa = phi i64 [ %3, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EEC2ERKS5_.exit ], [ %i.ae, %._crit_edge.loopexit ], [ %3, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EEC2ERKS5_.exit.thread ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !52 ; 2 uses
  %i.ak = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !51
  store <2 x ptr> %i.ak, ptr %6, align 16, !tbaa !51
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i14 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i14, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = load i32, ptr %i.al, align 4, !tbaa !3
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.al, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit

bb.i:                                             ; preds = %bb.g
  %i.ap = atomicrmw volatile add ptr %i.al, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit:  ; preds = %._crit_edge, %bb.h, %bb.i
  %i.aq = load ptr, ptr %4, align 8, !tbaa !77    ; 4 uses
  store ptr %i.aq, ptr %7, align 8, !tbaa !77
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.as = load ptr, ptr %i.af, align 8, !tbaa !81 ; 3 uses
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !81
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.au = load ptr, ptr %i.ag, align 8, !tbaa !116 ; 2 uses
  store ptr %i.au, ptr %i.at, align 8, !tbaa !116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !691)
  %i.av = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25
          to label %.noexc unwind label %bb.aa, !inline_history !144 ; 10 uses

.noexc:                                           ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i32 1, ptr %i.aw, align 8, !tbaa !62, !noalias !694
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i32 1, ptr %i.ax, align 4, !tbaa !64, !noalias !694
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow11SimpleTableESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.av, align 8, !tbaa !33, !noalias !694
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.bd = load <2 x ptr>, ptr %6, align 16, !tbaa !51, !noalias !694
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, i8 0, i64 16, i1 false), !noalias !694
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false), !noalias !694
  store ptr getelementptr inbounds inrange(-16, 96) ({ [14 x ptr] }, ptr @_ZTVN5arrow11SimpleTableE, i32 0, i32 0, i32 2), ptr %i.ay, align 8, !tbaa !33, !noalias !694
  store ptr %i.aq, ptr %i.ba, align 8, !tbaa !77, !noalias !694
  store ptr %i.as, ptr %i.bb, align 8, !tbaa !81, !noalias !694
  store ptr %i.au, ptr %i.bc, align 8, !tbaa !116, !noalias !694
  store <2 x ptr> %i.bd, ptr %i.az, align 8, !tbaa !51, !noalias !694
  %i.be = icmp slt i64 %.012.lcssa, 0
  br i1 %i.be, label %bb.j, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %.noexc
  %i.bf = icmp eq ptr %i.as, %i.aq
  br i1 %i.bf, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = load ptr, ptr %i.aq, align 8, !tbaa !82, !noalias !694
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !85, !noalias !694
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.sroa.036.041 = phi ptr [ %.pre, %.lr.ph ], [ %i.cs, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.bj = load ptr, ptr %.sroa.036.041, align 8, !tbaa !82
  invoke void @_ZNK5arrow12ChunkedArray5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.49") align 8 %5, ptr noundef nonnull align 8 dereferenceable(88) %i.bj, i64 noundef %2, i64 noundef %3)
          to label %bb.m unwind label %bb.z

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.036.041, i64 8
  %i.bl = load <2 x ptr>, ptr %5, align 16, !tbaa !51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !52 ; 8 uses
  store <2 x ptr> %i.bl, ptr %.sroa.036.041, align 8, !tbaa !51
  %.not.i.i.i.i15 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i15, label %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEaSEOS2_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 4 uses
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 4294967297
  %i.bq = trunc i64 %i.bo to i32                  ; 2 uses
  br i1 %i.bp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bn, align 8, !tbaa !62
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !64
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !33
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #27, !inline_history !127
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !33
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #27, !inline_history !127
  br label %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEaSEOS2_.exit

bb.p:                                             ; preds = %bb.n
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = add nsw i32 %i.bq, -1
  store i32 %i.bz, ptr %i.bn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.ca = atomicrmw volatile add ptr %i.bn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i = phi i32 [ %i.bq, %bb.q ], [ %i.ca, %bb.r ]
  %i.cb = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cb, label %bb.s, label %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEaSEOS2_.exit, !prof !66

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #27
  br label %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEaSEOS2_.exit: ; preds = %bb.m, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.s
  %i.cc = load ptr, ptr %i.ab, align 8, !tbaa !52 ; 8 uses
  %.not.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEaSEOS2_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 4 uses
  %i.ce = load atomic i64, ptr %i.cd acquire, align 8 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 4294967297
  %i.cg = trunc i64 %i.ce to i32                  ; 2 uses
  br i1 %i.cf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.cd, align 8, !tbaa !62
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 0, ptr %i.ch, align 4, !tbaa !64
  %i.ci = load ptr, ptr %i.cc, align 8, !tbaa !33
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #27, !inline_history !250
  %i.cl = load ptr, ptr %i.cc, align 8, !tbaa !33
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #27, !inline_history !250
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.v:                                             ; preds = %bb.t
  %i.co = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i16 = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i16, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cp = add nsw i32 %i.cg, -1
  store i32 %i.cp, ptr %i.cd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.cq = atomicrmw volatile add ptr %i.cd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i = phi i32 [ %i.cg, %bb.w ], [ %i.cq, %bb.x ]
  %i.cr = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cr, label %bb.y, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #27
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEaSEOS2_.exit, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.036.041, i64 16
  %i.ct = icmp eq ptr %.sroa.036.041, %.08.i.i.i.i.i
  br i1 %i.ct, label %._crit_edge.loopexit, label %bb.l

bb.z:                                             ; preds = %bb.l
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.ab

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.k, %bb.j, %.noexc
  %.sink.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.j ], [ %i.bi, %bb.k ], [ %.012.lcssa, %.noexc ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store i64 %.sink.i.i.i.i.i.i.i.i, ptr %i.cv, align 8, !tbaa !103, !noalias !694
  store ptr %i.ay, ptr %0, align 8, !tbaa !106, !alias.scope !691
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.cw, align 8, !tbaa !52, !alias.scope !691
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void

bb.aa:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #27
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #27
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn = phi { ptr, i32 } [ %i.cu, %bb.z ], [ %i.cx, %bb.aa ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5arrow11SimpleTable12RemoveColumnEi(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Result.96", align 8  ; 13 uses
  %4 = alloca %"class.std::shared_ptr", align 8   ; 6 uses
  %5 = alloca %"class.std::shared_ptr", align 8   ; 4 uses
  %6 = alloca %"class.std::vector.13", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  call void @_ZNK5arrow6Schema11RemoveFieldEi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.96") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef %2)
  %i.c = load ptr, ptr %3, align 8, !tbaa !118
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b, !prof !121

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35, !noalias !697 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52, !noalias !697 ; 2 uses
  store ptr null, ptr %i.h, align 8, !tbaa !52, !noalias !697
  store ptr null, ptr %i.e, align 8, !tbaa !35, !noalias !697
  store ptr %i.f, ptr %5, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !52
  store ptr %i.i, ptr %i.j, align 8, !tbaa !52
  store ptr null, ptr %4, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = sext i32 %2 to i64
  invoke void @_ZN5arrow8internal19DeleteVectorElementISt10shared_ptrINS_12ChunkedArrayEEEESt6vectorIT_SaIS6_EERKS8_m(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.13") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.l)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !103  ; 2 uses
  %i.o = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25
          to label %.noexc unwind label %bb.h, !inline_history !144 ; 10 uses

.noexc:                                           ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 1, ptr %i.p, align 8, !tbaa !62, !noalias !702
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 1, ptr %i.q, align 4, !tbaa !64, !noalias !702
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow11SimpleTableESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.o, align 8, !tbaa !33, !noalias !702
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !noalias !702
  %i.s = load ptr, ptr %6, align 8, !tbaa !77, !noalias !702 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.x = load <2 x ptr>, ptr %i.t, align 8, !tbaa !80, !noalias !702
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !81, !noalias !702
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false), !noalias !702
  store ptr getelementptr inbounds inrange(-16, 96) ({ [14 x ptr] }, ptr @_ZTVN5arrow11SimpleTableE, i32 0, i32 0, i32 2), ptr %i.r, align 8, !tbaa !33, !noalias !702
  store ptr %i.s, ptr %i.v, align 8, !tbaa !77, !noalias !702
  store <2 x ptr> %i.x, ptr %i.w, align 8, !tbaa !80, !noalias !702
  store ptr %i.f, ptr %i.u, align 8, !tbaa !178, !noalias !702
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %i.i, ptr %i.z, align 8, !tbaa !52, !noalias !702
  %i.aa = icmp slt i64 %i.n, 0
  br i1 %i.aa, label %bb.e, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit20

bb.e:                                             ; preds = %.noexc
  %i.ab = icmp eq ptr %i.y, %i.s
  br i1 %i.ab, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit20, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !82, !noalias !702
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !85, !noalias !702
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit20

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit20: ; preds = %.noexc, %bb.e, %bb.f
  %.sink.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %i.ae, %bb.f ], [ %i.n, %.noexc ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i64 %.sink.i.i.i.i.i.i.i.i, ptr %i.af, align 8, !tbaa !103, !noalias !702
  store ptr null, ptr %0, align 8, !tbaa !118
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.ag, align 8, !tbaa !106
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %i.ah, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.h ], [ %i.ai, %bb.g ]
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #27
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit20, %bb.b
  %i.ak = load ptr, ptr %3, align 8, !tbaa !118   ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.k, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i, !prof !121

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 4 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 4294967297
  %i.ar = trunc i64 %i.ap to i32                  ; 2 uses
  br i1 %i.aq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ao, align 8, !tbaa !62
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 0, ptr %i.as, align 4, !tbaa !64
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !33
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #27, !inline_history !341
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !33
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #27, !inline_history !341
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i

bb.n:                                             ; preds = %bb.l
  %i.az = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i = icmp eq i8 %i.az, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = add nsw i32 %i.ar, -1
  store i32 %i.ba, ptr %i.ao, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bb = atomicrmw volatile add ptr %i.ao, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ar, %bb.o ], [ %i.bb, %bb.p ]
  %i.bc = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bc, label %bb.q, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i, !prof !66

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m, %bb.k
  %.pr.i21 = load ptr, ptr %3, align 8, !tbaa !118 ; 2 uses
  %.not.i.i22 = icmp eq ptr %.pr.i21, null
  br i1 %.not.i.i22, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i, !prof !129

_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i, %bb.j
  %i.bd = phi ptr [ %.pr.i21, %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i ], [ %i.ak, %bb.j ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !130, !range !140, !noundef !141
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5arrow11SimpleTable9AddColumnEiSt10shared_ptrINS_5FieldEES1_INS_12ChunkedArrayEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %8 = alloca %"class.arrow::Result.96", align 8  ; 13 uses
  %9 = alloca %"class.std::shared_ptr", align 8   ; 6 uses
  %10 = alloca %"class.std::shared_ptr", align 8  ; 4 uses
  %11 = alloca %"class.std::vector.13", align 8   ; 5 uses
  %12 = alloca %"class.std::shared_ptr.49", align 16 ; 4 uses
  %i.b = load ptr, ptr %4, align 8, !tbaa !82     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !85   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !103
  %.not = icmp eq i64 %i.d, %i.f
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.d, ptr %i.a, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27, !noalias !707
  call void @_ZN5arrow8internal12JoinToStringIJRA66_KcRKlRA17_S2_lEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(66) @.str.43, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(17) @.str.44, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !707
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %6, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %5, align 8, !tbaa !153, !noalias !707 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN5arrow6Status7InvalidIJRA66_KcRKlRA17_S2_lEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !61, !noalias !707
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZN5arrow6Status7InvalidIJRA66_KcRKlRA17_S2_lEEES0_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %5, align 8, !tbaa !153, !noalias !707 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !61, !noalias !707
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i

common.resume:                                    ; preds = %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i ], [ %.pn, %bb.aj ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !707
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA66_KcRKlRA17_S2_lEEES0_DpOT_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !707
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #27
  %i.r = load ptr, ptr %6, align 8, !tbaa !118    ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.e, !prof !121

bb.e:                                             ; preds = %_ZN5arrow6Status7InvalidIJRA66_KcRKlRA17_S2_lEEES0_DpOT_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !130, !range !140, !noundef !141
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_ZN5arrow6StatusD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #27
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6Status7InvalidIJRA66_KcRKlRA17_S2_lEEES0_DpOT_.exit, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.at

bb.g:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %3, align 8, !tbaa !53
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !190
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.z = tail call noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKSt10shared_ptrIS0_Eb(ptr noundef nonnull align 8 dereferenceable(72) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i1 noundef zeroext false)
  br i1 %i.z, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @_ZN5arrow6Status8FromArgsIJRA35_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(35) @.str.45)
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #27
  %i.aa = load ptr, ptr %7, align 8, !tbaa !118   ; 2 uses
  %.not.i11 = icmp eq ptr %i.aa, null
  br i1 %.not.i11, label %_ZN5arrow6StatusD2Ev.exit12, label %bb.i, !prof !121

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !130, !range !140, !noundef !141
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_ZN5arrow6StatusD2Ev.exit12, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #27
  br label %_ZN5arrow6StatusD2Ev.exit12

_ZN5arrow6StatusD2Ev.exit12:                      ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.at

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !35
  call void @_ZNK5arrow6Schema8AddFieldEiRKSt10shared_ptrINS_5FieldEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.96") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.ag = load ptr, ptr %8, align 8, !tbaa !118
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.m, label %bb.l, !prof !121

bb.l:                                             ; preds = %bb.k
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #27
  br label %bb.ak

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !35, !noalias !712 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !52, !noalias !712 ; 2 uses
  store ptr null, ptr %i.al, align 8, !tbaa !52, !noalias !712
  store ptr null, ptr %i.ai, align 8, !tbaa !35, !noalias !712
  store ptr %i.aj, ptr %10, align 8, !tbaa !35
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr null, ptr %i.ak, align 8, !tbaa !52
  store ptr %i.am, ptr %i.an, align 8, !tbaa !52
  store ptr null, ptr %9, align 8, !tbaa !35
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = sext i32 %2 to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.as = load <2 x ptr>, ptr %4, align 8, !tbaa !51
  store ptr null, ptr %i.ar, align 8, !tbaa !52
  store <2 x ptr> %i.as, ptr %12, align 16, !tbaa !51
  store ptr null, ptr %4, align 8, !tbaa !82
  invoke void @_ZN5arrow8internal16AddVectorElementISt10shared_ptrINS_12ChunkedArrayEEEESt6vectorIT_SaIS6_EERKS8_mS6_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.13") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 noundef %i.ap, ptr noundef nonnull %12)
          to label %bb.n unwind label %bb.ah

bb.n:                                             ; preds = %bb.m
  %i.at = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25
          to label %.noexc unwind label %bb.ai, !inline_history !144 ; 10 uses

.noexc:                                           ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 1, ptr %i.au, align 8, !tbaa !62, !noalias !717
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 1, ptr %i.av, align 4, !tbaa !64, !noalias !717
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow11SimpleTableESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.at, align 8, !tbaa !33, !noalias !717
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false), !noalias !717
  %i.ax = load ptr, ptr %11, align 8, !tbaa !77, !noalias !717 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.bc = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !80, !noalias !717
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !81, !noalias !717
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false), !noalias !717
  store ptr getelementptr inbounds inrange(-16, 96) ({ [14 x ptr] }, ptr @_ZTVN5arrow11SimpleTableE, i32 0, i32 0, i32 2), ptr %i.aw, align 8, !tbaa !33, !noalias !717
  store ptr %i.ax, ptr %i.ba, align 8, !tbaa !77, !noalias !717
  store <2 x ptr> %i.bc, ptr %i.bb, align 8, !tbaa !80, !noalias !717
  store ptr %i.aj, ptr %i.az, align 8, !tbaa !178, !noalias !717
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  store ptr %i.am, ptr %i.be, align 8, !tbaa !52, !noalias !717
  %i.bf = icmp eq ptr %i.bd, %i.ax
  br i1 %i.bf, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %.noexc
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !82, !noalias !717
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !85, !noalias !717
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit: ; preds = %bb.o, %.noexc
  %.sink.i.i.i.i.i.i.i.i = phi i64 [ 0, %.noexc ], [ %i.bi, %bb.o ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store i64 %.sink.i.i.i.i.i.i.i.i, ptr %i.bj, align 8, !tbaa !103, !noalias !717
  store ptr null, ptr %0, align 8, !tbaa !118
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.bk, align 8, !tbaa !106
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.bl, align 8, !tbaa !52
  %.pre = load ptr, ptr %i.aq, align 8, !tbaa !52 ; 8 uses
  %.not.i.i14 = icmp eq ptr %.pre, null
  br i1 %.not.i.i14, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.bm, align 8, !tbaa !62
  %i.bq = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !64
  %i.br = load ptr, ptr %.pre, align 8, !tbaa !33
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #27, !inline_history !250
  %i.bu = load ptr, ptr %.pre, align 8, !tbaa !33
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #27, !inline_history !250
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i15 = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i15, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16

bb.t:                                             ; preds = %bb.r
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i17 = phi i32 [ %i.bp, %bb.s ], [ %i.bz, %bb.t ]
  %i.ca = icmp eq i32 %.0.i.i.i.i17, 1
  br i1 %i.ca, label %bb.u, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #27
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16, %bb.u
  %i.cb = load ptr, ptr %i.an, align 8, !tbaa !52 ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 4 uses
  %i.cd = load atomic i64, ptr %i.cc acquire, align 8 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 4294967297
  %i.cf = trunc i64 %i.cd to i32                  ; 2 uses
  br i1 %i.ce, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.cc, align 8, !tbaa !62
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store i32 0, ptr %i.cg, align 4, !tbaa !64
  %i.ch = load ptr, ptr %i.cb, align 8, !tbaa !33
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #27, !inline_history !150
  %i.ck = load ptr, ptr %i.cb, align 8, !tbaa !33
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #27, !inline_history !150
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.cn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i19 = icmp eq i8 %i.cn, 0
  br i1 %.not.i.i.i19, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.co = add nsw i32 %i.cf, -1
  store i32 %i.co, ptr %i.cc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20

bb.z:                                             ; preds = %bb.x
  %i.cp = atomicrmw volatile add ptr %i.cc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i21 = phi i32 [ %i.cf, %bb.y ], [ %i.cp, %bb.z ]
  %i.cq = icmp eq i32 %.0.i.i.i.i21, 1
  br i1 %i.cq, label %bb.aa, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #27
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20, %bb.aa
  %i.cr = load ptr, ptr %i.ak, align 8, !tbaa !52 ; 8 uses
  %.not.i.i22 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i22, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit26, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 4 uses
  %i.ct = load atomic i64, ptr %i.cs acquire, align 8 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 4294967297
  %i.cv = trunc i64 %i.ct to i32                  ; 2 uses
  br i1 %i.cu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.cs, align 8, !tbaa !62
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store i32 0, ptr %i.cw, align 4, !tbaa !64
  %i.cx = load ptr, ptr %i.cr, align 8, !tbaa !33
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #27, !inline_history !150
  %i.da = load ptr, ptr %i.cr, align 8, !tbaa !33
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #27, !inline_history !150
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit26

bb.ad:                                            ; preds = %bb.ab
  %i.dd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i23 = icmp eq i8 %i.dd, 0
  br i1 %.not.i.i.i23, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.de = add nsw i32 %i.cv, -1
  store i32 %i.de, ptr %i.cs, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24

bb.af:                                            ; preds = %bb.ad
  %i.df = atomicrmw volatile add ptr %i.cs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i25 = phi i32 [ %i.cv, %bb.ae ], [ %i.df, %bb.af ]
  %i.dg = icmp eq i32 %.0.i.i.i.i25, 1
  br i1 %i.dg, label %bb.ag, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit26, !prof !66

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #27
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit26

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit26: ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.ak

bb.ah:                                            ; preds = %bb.m
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %bb.n
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #27
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.di, %bb.ai ], [ %i.dh, %bb.ah ]
  call void @_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #27
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #27
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %common.resume

bb.ak:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit26, %bb.l
  %i.dj = load ptr, ptr %8, align 8, !tbaa !118   ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.al, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i, !prof !121

bb.al:                                            ; preds = %bb.ak
end_hunk_14
begin_hunk_15_@_ZNK5arrow11SimpleTable9AddColumnEiSt10shared_ptrINS_5FieldEES1_INS_12ChunkedArrayEE:bb.a

bb.aq:                                            ; preds = %bb.ao
  %i.ea = atomicrmw volatile add ptr %i.dn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.dq, %bb.ap ], [ %i.ea, %bb.aq ]
  %i.eb = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.eb, label %bb.ar, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i, !prof !66

bb.ar:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dm) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i: ; preds = %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.an, %bb.al
  %.pr.i27 = load ptr, ptr %8, align 8, !tbaa !118 ; 2 uses
  %.not.i.i28 = icmp eq ptr %.pr.i27, null
  br i1 %.not.i.i28, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i, !prof !129

_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i, %bb.ak
  %i.ec = phi ptr [ %.pr.i27, %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i ], [ %i.dj, %bb.ak ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !130, !range !140, !noundef !141
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.at

bb.at:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit12, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5arrow11SimpleTable9SetColumnEiSt10shared_ptrINS_5FieldEES1_INS_12ChunkedArrayEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %8 = alloca %"class.arrow::Result.96", align 8  ; 13 uses
  %9 = alloca %"class.std::shared_ptr", align 8   ; 6 uses
  %10 = alloca %"class.std::shared_ptr", align 8  ; 4 uses
  %11 = alloca %"class.std::vector.13", align 8   ; 5 uses
  %12 = alloca %"class.std::shared_ptr.49", align 16 ; 4 uses
  %i.b = load ptr, ptr %4, align 8, !tbaa !82     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !85   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !103
  %.not = icmp eq i64 %i.d, %i.f
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.d, ptr %i.a, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27, !noalias !722
  call void @_ZN5arrow8internal12JoinToStringIJRA66_KcRKlRA17_S2_lEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(66) @.str.43, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(17) @.str.44, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !722
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %6, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %5, align 8, !tbaa !153, !noalias !722 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN5arrow6Status7InvalidIJRA66_KcRKlRA17_S2_lEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !61, !noalias !722
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZN5arrow6Status7InvalidIJRA66_KcRKlRA17_S2_lEEES0_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %5, align 8, !tbaa !153, !noalias !722 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !61, !noalias !722
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i

common.resume:                                    ; preds = %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i ], [ %.pn, %bb.aj ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !722
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA66_KcRKlRA17_S2_lEEES0_DpOT_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !722
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #27
  %i.r = load ptr, ptr %6, align 8, !tbaa !118    ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.e, !prof !121

bb.e:                                             ; preds = %_ZN5arrow6Status7InvalidIJRA66_KcRKlRA17_S2_lEEES0_DpOT_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !130, !range !140, !noundef !141
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_ZN5arrow6StatusD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #27
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6Status7InvalidIJRA66_KcRKlRA17_S2_lEEES0_DpOT_.exit, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.at

bb.g:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %3, align 8, !tbaa !53
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !190
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.z = tail call noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKSt10shared_ptrIS0_Eb(ptr noundef nonnull align 8 dereferenceable(72) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i1 noundef zeroext false)
  br i1 %i.z, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @_ZN5arrow6Status8FromArgsIJRA35_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(35) @.str.45)
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #27
  %i.aa = load ptr, ptr %7, align 8, !tbaa !118   ; 2 uses
  %.not.i11 = icmp eq ptr %i.aa, null
  br i1 %.not.i11, label %_ZN5arrow6StatusD2Ev.exit12, label %bb.i, !prof !121

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !130, !range !140, !noundef !141
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_ZN5arrow6StatusD2Ev.exit12, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #27
  br label %_ZN5arrow6StatusD2Ev.exit12

_ZN5arrow6StatusD2Ev.exit12:                      ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.at

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !35
  call void @_ZNK5arrow6Schema8SetFieldEiRKSt10shared_ptrINS_5FieldEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.96") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.ag = load ptr, ptr %8, align 8, !tbaa !118
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.m, label %bb.l, !prof !121

bb.l:                                             ; preds = %bb.k
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #27
  br label %bb.ak

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !35, !noalias !727 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !52, !noalias !727 ; 2 uses
  store ptr null, ptr %i.al, align 8, !tbaa !52, !noalias !727
  store ptr null, ptr %i.ai, align 8, !tbaa !35, !noalias !727
  store ptr %i.aj, ptr %10, align 8, !tbaa !35
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr null, ptr %i.ak, align 8, !tbaa !52
  store ptr %i.am, ptr %i.an, align 8, !tbaa !52
  store ptr null, ptr %9, align 8, !tbaa !35
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = sext i32 %2 to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.as = load <2 x ptr>, ptr %4, align 8, !tbaa !51
  store ptr null, ptr %i.ar, align 8, !tbaa !52
  store <2 x ptr> %i.as, ptr %12, align 16, !tbaa !51
  store ptr null, ptr %4, align 8, !tbaa !82
  invoke void @_ZN5arrow8internal20ReplaceVectorElementISt10shared_ptrINS_12ChunkedArrayEEEESt6vectorIT_SaIS6_EERKS8_mS6_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.13") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 noundef %i.ap, ptr noundef nonnull %12)
          to label %bb.n unwind label %bb.ah

bb.n:                                             ; preds = %bb.m
  %i.at = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25
          to label %.noexc unwind label %bb.ai, !inline_history !144 ; 10 uses

.noexc:                                           ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 1, ptr %i.au, align 8, !tbaa !62, !noalias !732
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 1, ptr %i.av, align 4, !tbaa !64, !noalias !732
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow11SimpleTableESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.at, align 8, !tbaa !33, !noalias !732
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false), !noalias !732
  %i.ax = load ptr, ptr %11, align 8, !tbaa !77, !noalias !732 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.bc = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !80, !noalias !732
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !81, !noalias !732
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false), !noalias !732
  store ptr getelementptr inbounds inrange(-16, 96) ({ [14 x ptr] }, ptr @_ZTVN5arrow11SimpleTableE, i32 0, i32 0, i32 2), ptr %i.aw, align 8, !tbaa !33, !noalias !732
  store ptr %i.ax, ptr %i.ba, align 8, !tbaa !77, !noalias !732
  store <2 x ptr> %i.bc, ptr %i.bb, align 8, !tbaa !80, !noalias !732
  store ptr %i.aj, ptr %i.az, align 8, !tbaa !178, !noalias !732
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  store ptr %i.am, ptr %i.be, align 8, !tbaa !52, !noalias !732
  %i.bf = icmp eq ptr %i.bd, %i.ax
  br i1 %i.bf, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %.noexc
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !82, !noalias !732
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !85, !noalias !732
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit: ; preds = %bb.o, %.noexc
  %.sink.i.i.i.i.i.i.i.i = phi i64 [ 0, %.noexc ], [ %i.bi, %bb.o ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store i64 %.sink.i.i.i.i.i.i.i.i, ptr %i.bj, align 8, !tbaa !103, !noalias !732
  store ptr null, ptr %0, align 8, !tbaa !118
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.bk, align 8, !tbaa !106
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.bl, align 8, !tbaa !52
  %.pre = load ptr, ptr %i.aq, align 8, !tbaa !52 ; 8 uses
  %.not.i.i14 = icmp eq ptr %.pre, null
  br i1 %.not.i.i14, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.bm, align 8, !tbaa !62
  %i.bq = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !64
  %i.br = load ptr, ptr %.pre, align 8, !tbaa !33
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #27, !inline_history !250
  %i.bu = load ptr, ptr %.pre, align 8, !tbaa !33
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #27, !inline_history !250
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i15 = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i15, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16

bb.t:                                             ; preds = %bb.r
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i17 = phi i32 [ %i.bp, %bb.s ], [ %i.bz, %bb.t ]
  %i.ca = icmp eq i32 %.0.i.i.i.i17, 1
  br i1 %i.ca, label %bb.u, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #27
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16, %bb.u
  %i.cb = load ptr, ptr %i.an, align 8, !tbaa !52 ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 4 uses
  %i.cd = load atomic i64, ptr %i.cc acquire, align 8 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 4294967297
  %i.cf = trunc i64 %i.cd to i32                  ; 2 uses
  br i1 %i.ce, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.cc, align 8, !tbaa !62
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store i32 0, ptr %i.cg, align 4, !tbaa !64
  %i.ch = load ptr, ptr %i.cb, align 8, !tbaa !33
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #27, !inline_history !150
  %i.ck = load ptr, ptr %i.cb, align 8, !tbaa !33
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #27, !inline_history !150
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.cn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i19 = icmp eq i8 %i.cn, 0
  br i1 %.not.i.i.i19, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.co = add nsw i32 %i.cf, -1
  store i32 %i.co, ptr %i.cc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20

bb.z:                                             ; preds = %bb.x
  %i.cp = atomicrmw volatile add ptr %i.cc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i21 = phi i32 [ %i.cf, %bb.y ], [ %i.cp, %bb.z ]
  %i.cq = icmp eq i32 %.0.i.i.i.i21, 1
  br i1 %i.cq, label %bb.aa, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #27
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20, %bb.aa
  %i.cr = load ptr, ptr %i.ak, align 8, !tbaa !52 ; 8 uses
  %.not.i.i22 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i22, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit26, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 4 uses
  %i.ct = load atomic i64, ptr %i.cs acquire, align 8 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 4294967297
  %i.cv = trunc i64 %i.ct to i32                  ; 2 uses
  br i1 %i.cu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.cs, align 8, !tbaa !62
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store i32 0, ptr %i.cw, align 4, !tbaa !64
  %i.cx = load ptr, ptr %i.cr, align 8, !tbaa !33
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #27, !inline_history !150
  %i.da = load ptr, ptr %i.cr, align 8, !tbaa !33
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #27, !inline_history !150
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit26

bb.ad:                                            ; preds = %bb.ab
  %i.dd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i23 = icmp eq i8 %i.dd, 0
  br i1 %.not.i.i.i23, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.de = add nsw i32 %i.cv, -1
  store i32 %i.de, ptr %i.cs, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24

bb.af:                                            ; preds = %bb.ad
  %i.df = atomicrmw volatile add ptr %i.cs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i25 = phi i32 [ %i.cv, %bb.ae ], [ %i.df, %bb.af ]
  %i.dg = icmp eq i32 %.0.i.i.i.i25, 1
  br i1 %i.dg, label %bb.ag, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit26, !prof !66

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #27
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit26

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit26: ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.ak

bb.ah:                                            ; preds = %bb.m
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %bb.n
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #27
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.di, %bb.ai ], [ %i.dh, %bb.ah ]
  call void @_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #27
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #27
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %common.resume

bb.ak:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit26, %bb.l
  %i.dj = load ptr, ptr %8, align 8, !tbaa !118   ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.al, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i, !prof !121

bb.al:                                            ; preds = %bb.ak
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 4 uses
  %i.do = load atomic i64, ptr %i.dn acquire, align 8 ; 2 uses
  %i.dp = icmp eq i64 %i.do, 4294967297
  %i.dq = trunc i64 %i.do to i32                  ; 2 uses
  br i1 %i.dp, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.dn, align 8, !tbaa !62
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  store i32 0, ptr %i.dr, align 4, !tbaa !64
  %i.ds = load ptr, ptr %i.dm, align 8, !tbaa !33
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(16) %i.dm) #27, !inline_history !341
  %i.dv = load ptr, ptr %i.dm, align 8, !tbaa !33
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8
  call void %i.dx(ptr noundef nonnull align 8 dereferenceable(16) %i.dm) #27, !inline_history !341
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.dy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dy, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dz = add nsw i32 %i.dq, -1
  store i32 %i.dz, ptr %i.dn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.ea = atomicrmw volatile add ptr %i.dn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.dq, %bb.ap ], [ %i.ea, %bb.aq ]
  %i.eb = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.eb, label %bb.ar, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i, !prof !66

bb.ar:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dm) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i: ; preds = %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.an, %bb.al
  %.pr.i27 = load ptr, ptr %8, align 8, !tbaa !118 ; 2 uses
  %.not.i.i28 = icmp eq ptr %.pr.i27, null
  br i1 %.not.i.i28, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i, !prof !129

_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i, %bb.ak
  %i.ec = phi ptr [ %.pr.i27, %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i ], [ %i.dj, %bb.ak ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !130, !range !140, !noundef !141
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.at

bb.at:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit12, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5arrow11SimpleTable21ReplaceSchemaMetadataERKSt10shared_ptrIKNS_16KeyValueMetadataEE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.10") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %5 = alloca %"class.std::vector.13", align 8    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  call void @_ZNK5arrow6Schema12WithMetadataERKSt10shared_ptrIKNS_16KeyValueMetadataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = load <2 x ptr>, ptr %3, align 16, !tbaa !51
  store ptr null, ptr %i.c, align 8, !tbaa !52
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !51
  store ptr null, ptr %3, align 16, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !81   ; 3 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !77   ; 3 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.i, label %.noexc5.thread, label %bb.b

.noexc5.thread:                                   ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr null, i64 %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store ptr %i.m, ptr %i.n, align 8, !tbaa !116
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.o = icmp ugt i64 %i.k, 9223372036854775792
  br i1 %i.o, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow12ChunkedArrayEEE8allocateEmPKv.exit.i.i.i.i, !prof !66

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt10shared_ptrIN5arrow12ChunkedArrayEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #25
          to label %.noexc5 unwind label %bb.m    ; 4 uses

.noexc5:                                          ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow12ChunkedArrayEEE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.p, ptr %5, align 8, !tbaa !77
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !81
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.k
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !116
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc5, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ac, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %.noexc5 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.ab, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.h, %.noexc5 ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !52   ; 2 uses
  %i.v = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !51
  store <2 x ptr> %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !51
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load i32, ptr %i.w, align 4, !tbaa !3
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.w, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.aa = atomicrmw volatile add ptr %i.w, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d, %.lr.ph.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.g
  br i1 %i.ad, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !143

.loopexit:                                        ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, %.noexc5.thread
  %i.ae = phi ptr [ %i.n, %.noexc5.thread ], [ %i.s, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.af = phi ptr [ %i.l, %.noexc5.thread ], [ %i.q, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %.noexc5.thread ], [ %i.ac, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 3 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.af, align 8, !tbaa !81
  call void @llvm.experimental.noalias.scope.decl(metadata !737)
  %i.ag = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25
          to label %.noexc6 unwind label %bb.n, !inline_history !144 ; 10 uses

.noexc6:                                          ; preds = %.loopexit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i32 1, ptr %i.ah, align 8, !tbaa !62, !noalias !740
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 1, ptr %i.ai, align 4, !tbaa !64, !noalias !740
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow11SimpleTableESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.ag, align 8, !tbaa !33, !noalias !740
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.ao = load <2 x ptr>, ptr %4, align 16, !tbaa !51, !noalias !740
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false), !noalias !740
  %i.ap = load ptr, ptr %5, align 8, !tbaa !77, !noalias !740 ; 3 uses
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !116, !noalias !740
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !noalias !740
  store ptr getelementptr inbounds inrange(-16, 96) ({ [14 x ptr] }, ptr @_ZTVN5arrow11SimpleTableE, i32 0, i32 0, i32 2), ptr %i.aj, align 8, !tbaa !33, !noalias !740
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !77, !noalias !740
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.am, align 8, !tbaa !81, !noalias !740
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !116, !noalias !740
  store <2 x ptr> %i.ao, ptr %i.ak, align 8, !tbaa !51, !noalias !740
  %i.ar = icmp eq ptr %.0.lcssa.i.i.i.i.i, %i.ap
  br i1 %i.ar, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.noexc6
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !82, !noalias !740
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.au = load i64, ptr %i.at, align 8, !tbaa !85, !noalias !740
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f, %.noexc6
  %.sink.i.i.i.i.i.i.i.i = phi i64 [ 0, %.noexc6 ], [ %i.au, %bb.f ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store i64 %.sink.i.i.i.i.i.i.i.i, ptr %i.av, align 8, !tbaa !103, !noalias !740
  store ptr %i.aj, ptr %0, align 8, !tbaa !106, !alias.scope !737
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.aw, align 8, !tbaa !52, !alias.scope !737
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !52  ; 8 uses
  %.not.i.i8 = icmp eq ptr %.pre, null
  br i1 %.not.i.i8, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12, label %bb.g

bb.g:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 4 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 4294967297
  %i.ba = trunc i64 %i.ay to i32                  ; 2 uses
  br i1 %i.az, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.ax, align 8, !tbaa !62
  %i.bb = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  store i32 0, ptr %i.bb, align 4, !tbaa !64
  %i.bc = load ptr, ptr %.pre, align 8, !tbaa !33
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #27, !inline_history !150
  %i.bf = load ptr, ptr %.pre, align 8, !tbaa !33
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #27, !inline_history !150
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12

bb.i:                                             ; preds = %bb.g
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i9 = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i9, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = add nsw i32 %i.ba, -1
  store i32 %i.bj, ptr %i.ax, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10

bb.k:                                             ; preds = %bb.i
  %i.bk = atomicrmw volatile add ptr %i.ax, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i11 = phi i32 [ %i.ba, %bb.j ], [ %i.bk, %bb.k ]
  %i.bl = icmp eq i32 %.0.i.i.i.i11, 1
  br i1 %i.bl, label %bb.l, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12, !prof !66

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #27
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12: ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow12ChunkedArrayEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %.loopexit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #27
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.n ], [ %i.bm, %bb.m ]
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #27
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5arrow11SimpleTable7FlattenEPNS_10MemoryPoolE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 12 uses
  %4 = alloca %"class.std::vector.13", align 8    ; 13 uses
  %5 = alloca %"class.std::vector", align 8       ; 10 uses
  %6 = alloca %"class.std::shared_ptr.7", align 8 ; 7 uses
  %7 = alloca %"class.arrow::Result.225", align 8 ; 10 uses
  %8 = alloca %"class.std::shared_ptr.49", align 8 ; 7 uses
  %9 = alloca %"class.std::vector.13", align 8    ; 10 uses
  %10 = alloca %"class.std::shared_ptr", align 8  ; 6 uses
  %11 = alloca %"class.std::shared_ptr", align 8  ; 4 uses
  %12 = alloca %"class.std::vector.13", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit, %bb.a
  %.017 = phi i32 [ 0, %bb.a ], [ %i.hi, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit ] ; 4 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.o = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_ZNK5arrow5Table11num_columnsEv.exit unwind label %bb.c

_ZNK5arrow5Table11num_columnsEv.exit:             ; preds = %bb.b
  %.not = icmp slt i32 %.017, %i.o
  br i1 %.not, label %bb.d, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.d:                                             ; preds = %_ZNK5arrow5Table11num_columnsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !743)
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !35, !noalias !743
  %i.r = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i32 noundef %.017)
          to label %.noexc unwind label %bb.x     ; 2 uses

.noexc:                                           ; preds = %bb.d
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !53, !noalias !743 ; 3 uses
  store ptr %i.s, ptr %6, align 8, !tbaa !53, !alias.scope !743
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !52, !noalias !743 ; 3 uses
  store ptr %i.u, ptr %i.b, align 8, !tbaa !52, !alias.scope !743
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZNK5arrow5Table5fieldEi.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61, !noalias !743
  %.not.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load i32, ptr %i.v, align 4, !tbaa !3, !noalias !743
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.v, align 4, !tbaa !3, !noalias !743
  br label %_ZNK5arrow5Table5fieldEi.exit

bb.g:                                             ; preds = %bb.e
  %i.z = atomicrmw volatile add ptr %i.v, i32 1 acq_rel, align 4, !noalias !743 ; 0 uses
  %.pre = load ptr, ptr %6, align 8, !tbaa !53
  br label %_ZNK5arrow5Table5fieldEi.exit

_ZNK5arrow5Table5fieldEi.exit:                    ; preds = %bb.g, %bb.f, %.noexc
  %i.aa = phi ptr [ %.pre, %bb.g ], [ %i.s, %bb.f ], [ %i.s, %.noexc ]
  invoke void @_ZNK5arrow5Field7FlattenEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %5, ptr noundef nonnull align 8 dereferenceable(96) %i.aa)
          to label %bb.h unwind label %bb.y

bb.h:                                             ; preds = %_ZNK5arrow5Table5fieldEi.exit
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !52  ; 8 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ac, align 8, !tbaa !62
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !64
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !33
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #27, !inline_history !65
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
end_hunk_15
begin_hunk_16_@_ZNK5arrow11SimpleTable7FlattenEPNS_10MemoryPoolE:bb.a
  %i.fm = load <2 x ptr>, ptr %i.ek, align 8, !tbaa !51
  store <2 x ptr> %i.fm, ptr %i.fj, align 8, !tbaa !51
  %.not.i.i.i.i.i128 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i.i128, label %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i130, label %bb.az

bb.az:                                            ; preds = %.noexc145
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 3 uses
  %i.fo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i129 = icmp eq i8 %i.fo, 0
  br i1 %.not.i.i.i.i.i.i129, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fp = load i32, ptr %i.fn, align 4, !tbaa !3
  %i.fq = add nsw i32 %i.fp, 1
  store i32 %i.fq, ptr %i.fn, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i130

bb.bb:                                            ; preds = %bb.az
  %i.fr = atomicrmw volatile add ptr %i.fn, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i130

_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i130: ; preds = %bb.bb, %bb.ba, %.noexc145
  %.not10.i.i.i.i131 = icmp eq ptr %i.ex, %i.el
  br i1 %.not10.i.i.i.i131, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i132

.lr.ph.i.i.i.i132:                                ; preds = %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i130, %.lr.ph.i.i.i.i132
  %.012.i.i.i.i133 = phi ptr [ %i.fv, %.lr.ph.i.i.i.i132 ], [ %i.fi, %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i130 ] ; 2 uses
  %.0911.i.i.i.i134 = phi ptr [ %i.fu, %.lr.ph.i.i.i.i132 ], [ %i.ex, %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i130 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !758)
  call void @llvm.experimental.noalias.scope.decl(metadata !761)
  %i.fs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i134, i64 8
  %i.ft = load <2 x ptr>, ptr %.0911.i.i.i.i134, align 8, !tbaa !51, !alias.scope !761, !noalias !758
  store ptr null, ptr %i.fs, align 8, !tbaa !52, !alias.scope !761, !noalias !758
  store <2 x ptr> %i.ft, ptr %.012.i.i.i.i133, align 8, !tbaa !51, !alias.scope !758, !noalias !761
  store ptr null, ptr %.0911.i.i.i.i134, align 8, !tbaa !82, !alias.scope !761, !noalias !758
  %i.fu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i134, i64 16 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i133, i64 16 ; 2 uses
  %.not.i.i.i.i135 = icmp eq ptr %i.fu, %i.el
  br i1 %.not.i.i.i.i135, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i132, !llvm.loop !386

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i: ; preds = %.lr.ph.i.i.i.i132, %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i130
  %.0.lcssa.i.i.i.i136 = phi ptr [ %i.fi, %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i130 ], [ %i.fv, %.lr.ph.i.i.i.i132 ]
  %i.fw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i136, i64 16
  %.not.i23.i143 = icmp eq ptr %i.ex, null
  br i1 %.not.i23.i143, label %.noexc51, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  %i.fx = load ptr, ptr %i.k, align 8, !tbaa !116
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = sub i64 %i.fy, %i.ez
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fz) #26
  br label %.noexc51

.noexc51:                                         ; preds = %bb.bc, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  store ptr %i.fi, ptr %4, align 8, !tbaa !77
  store ptr %i.fw, ptr %i.j, align 8, !tbaa !81
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fi, i64 %i.fg
  store ptr %i.ga, ptr %i.k, align 8, !tbaa !116
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backERKS3_.exit: ; preds = %.noexc51, %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i
  %i.gb = add nuw i64 %.0167, 1                   ; 2 uses
  %i.gc = load ptr, ptr %i.e, align 8, !tbaa !81  ; 3 uses
  %i.gd = load ptr, ptr %9, align 8, !tbaa !77    ; 4 uses
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = ashr exact i64 %i.gg, 4
  %i.gi = icmp ult i64 %i.gb, %i.gh
  br i1 %i.gi, label %.lr.ph, label %._crit_edge, !llvm.loop !763

.loopexit:                                        ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit.i, %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_12ChunkedArrayEESaIS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.bm

bb.be:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit, %bb.w
  call void @_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_12ChunkedArrayEESaIS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.gj = load ptr, ptr %5, align 8, !tbaa !44    ; 3 uses
  %i.gk = load ptr, ptr %i.l, align 8, !tbaa !45  ; 2 uses
  %.not4.i.i.i52 = icmp eq ptr %i.gj, %i.gk
  br i1 %.not4.i.i.i52, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i53

.lr.ph.i.i.i53:                                   ; preds = %bb.be, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i
  %.05.i.i.i54 = phi ptr [ %i.hc, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i ], [ %i.gj, %bb.be ] ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.05.i.i.i54, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i.i55 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i.i.i.i.i.i55, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i.i.i53
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8 ; 4 uses
  %i.go = load atomic i64, ptr %i.gn acquire, align 8 ; 2 uses
  %i.gp = icmp eq i64 %i.go, 4294967297
  %i.gq = trunc i64 %i.go to i32                  ; 2 uses
  br i1 %i.gp, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %i.gn, align 8, !tbaa !62
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gm, i64 12
  store i32 0, ptr %i.gr, align 4, !tbaa !64
  %i.gs = load ptr, ptr %i.gm, align 8, !tbaa !33
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8
  call void %i.gu(ptr noundef nonnull align 8 dereferenceable(16) %i.gm) #27, !inline_history !229
  %i.gv = load ptr, ptr %i.gm, align 8, !tbaa !33
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(16) %i.gm) #27, !inline_history !229
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.gy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i56 = icmp eq i8 %i.gy, 0
  br i1 %.not.i.i.i.i.i.i.i.i56, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gz = add nsw i32 %i.gq, -1
  store i32 %i.gz, ptr %i.gn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i57

bb.bj:                                            ; preds = %bb.bh
  %i.ha = atomicrmw volatile add ptr %i.gn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i57

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i57: ; preds = %bb.bj, %bb.bi
  %.0.i.i.i.i.i.i.i.i.i58 = phi i32 [ %i.gq, %bb.bi ], [ %i.ha, %bb.bj ]
  %i.hb = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i58, 1
  br i1 %i.hb, label %bb.bk, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i, !prof !66

bb.bk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i57
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gm) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i: ; preds = %bb.bk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i57, %bb.bg, %.lr.ph.i.i.i53
  %i.hc = getelementptr inbounds nuw i8, ptr %.05.i.i.i54, i64 16 ; 2 uses
  %.not.i.i.i59 = icmp eq ptr %i.hc, %i.gk
  br i1 %.not.i.i.i59, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i53, !llvm.loop !69

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i
  %.pr.i60 = load ptr, ptr %5, align 8, !tbaa !44
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.be
  %i.hd = phi ptr [ %.pr.i60, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.gj, %bb.be ] ; 3 uses
  %.not.i.i1.i61 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i1.i61, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i
  %i.he = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = ptrtoint ptr %i.hd to i64
  %i.hh = sub i64 %i.hf, %i.hg
  call void @_ZdlPvm(ptr noundef nonnull %i.hd, i64 noundef %i.hh) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.hi = add nuw nsw i32 %.017, 1
  br i1 %i.bm, label %bb.b, label %.loopexit147, !llvm.loop !764

bb.bm:                                            ; preds = %bb.bd, %bb.ac
  %.pn32.pn = phi { ptr, i32 } [ %lpad.phi, %bb.bd ], [ %.pn30, %bb.ac ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #27
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.z
  %.pn32.pn.pn = phi { ptr, i32 } [ %.pn32.pn, %bb.bm ], [ %.pn, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.ch

.critedge:                                        ; preds = %_ZNK5arrow5Table11num_columnsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.hj = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.hk = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema8metadataEv(ptr noundef nonnull align 8 dereferenceable(32) %i.hj)
          to label %bb.bo unwind label %bb.br

bb.bo:                                            ; preds = %.critedge
  %i.hl = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #25
          to label %.noexc62 unwind label %bb.br  ; 7 uses

.noexc62:                                         ; preds = %bb.bo
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store i32 1, ptr %i.hm, align 8, !tbaa !62, !noalias !765
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 12
  store i32 1, ptr %i.hn, align 4, !tbaa !64, !noalias !765
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6SchemaESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.hl, align 8, !tbaa !33, !noalias !765
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 16 ; 3 uses
  invoke void @_ZSt10_ConstructIN5arrow6SchemaEJSt6vectorISt10shared_ptrINS0_5FieldEESaIS5_EERKS3_IKNS0_16KeyValueMetadataEEEEvPT_DpOT0_(ptr noundef nonnull %i.ho, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.hk)
          to label %bb.bp unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6SchemaESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !765

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6SchemaESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %.noexc62
  %i.hp = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef 48) #26, !noalias !765
  br label %.body

bb.bp:                                            ; preds = %.noexc62
  %i.hq = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.ho, ptr %11, align 8, !tbaa !35
  %i.hr = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.hq, align 8, !tbaa !52
  store ptr %i.hl, ptr %i.hr, align 8, !tbaa !52
  store ptr null, ptr %10, align 8, !tbaa !35
  %i.hs = load ptr, ptr %4, align 8, !tbaa !77    ; 4 uses
  store ptr %i.hs, ptr %12, align 8, !tbaa !77
  %i.ht = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.hu = load ptr, ptr %i.j, align 8, !tbaa !81  ; 3 uses
  store ptr %i.hu, ptr %i.ht, align 8, !tbaa !81
  %i.hv = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.hw = load ptr, ptr %i.k, align 8, !tbaa !116 ; 2 uses
  store ptr %i.hw, ptr %i.hv, align 8, !tbaa !116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.hx = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25
          to label %.noexc63 unwind label %bb.bs, !inline_history !144 ; 11 uses

.noexc63:                                         ; preds = %bb.bp
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store i32 1, ptr %i.hy, align 8, !tbaa !62, !noalias !768
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 12
  store i32 1, ptr %i.hz, align 4, !tbaa !64, !noalias !768
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow11SimpleTableESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.hx, align 8, !tbaa !33, !noalias !768
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false), !noalias !768
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false), !noalias !768
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  store ptr getelementptr inbounds inrange(-16, 96) ({ [14 x ptr] }, ptr @_ZTVN5arrow11SimpleTableE, i32 0, i32 0, i32 2), ptr %i.ia, align 8, !tbaa !33, !noalias !768
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 48
  store ptr %i.hs, ptr %i.ic, align 8, !tbaa !77, !noalias !768
  %i.id = getelementptr inbounds nuw i8, ptr %i.hx, i64 56
  store ptr %i.hu, ptr %i.id, align 8, !tbaa !81, !noalias !768
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hx, i64 64
  store ptr %i.hw, ptr %i.ie, align 8, !tbaa !116, !noalias !768
  store ptr %i.ho, ptr %i.ib, align 8, !tbaa !178, !noalias !768
  %i.if = getelementptr inbounds nuw i8, ptr %i.hx, i64 32
  store ptr %i.hl, ptr %i.if, align 8, !tbaa !52, !noalias !768
  %i.ig = icmp eq ptr %i.hu, %i.hs
  br i1 %i.ig, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i102.thread, label %bb.bq

bb.bq:                                            ; preds = %.noexc63
  %i.ih = load ptr, ptr %i.hs, align 8, !tbaa !82, !noalias !768
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 40
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !85, !noalias !768
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i102.thread

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i102.thread: ; preds = %.noexc63, %bb.bq
  %.sink.i.i.i.i.i.i.i.i = phi i64 [ 0, %.noexc63 ], [ %i.ij, %bb.bq ]
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hx, i64 40
  store i64 %.sink.i.i.i.i.i.i.i.i, ptr %i.ik, align 8, !tbaa !103, !noalias !768
  store ptr null, ptr %0, align 8, !tbaa !118
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ia, ptr %i.il, align 8, !tbaa !106
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.hx, ptr %i.im, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit104

bb.br:                                            ; preds = %bb.bo, %.critedge
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bs:                                            ; preds = %bb.bp
  %i.io = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #27
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #27
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #27
  br label %.body

.body:                                            ; preds = %bb.br, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6SchemaESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, %bb.bs
  %.pn37 = phi { ptr, i32 } [ %i.io, %bb.bs ], [ %i.in, %bb.br ], [ %i.hp, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6SchemaESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.ch

.loopexit147:                                     ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit
  %.pre173 = load ptr, ptr %4, align 8, !tbaa !77 ; 3 uses
  %.pre174 = load ptr, ptr %i.j, align 8, !tbaa !81 ; 2 uses
  %.not4.i.i.i91 = icmp eq ptr %.pre173, %.pre174
  br i1 %.not4.i.i.i91, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i102, label %.lr.ph.i.i.i92

.lr.ph.i.i.i92:                                   ; preds = %.loopexit147, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i98
  %.05.i.i.i93 = phi ptr [ %i.jg, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i98 ], [ %.pre173, %.loopexit147 ] ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.05.i.i.i93, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i.i94 = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i.i.i.i.i94, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i98, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph.i.i.i92
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8 ; 4 uses
  %i.is = load atomic i64, ptr %i.ir acquire, align 8 ; 2 uses
  %i.it = icmp eq i64 %i.is, 4294967297
  %i.iu = trunc i64 %i.is to i32                  ; 2 uses
  br i1 %i.it, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  store i32 0, ptr %i.ir, align 8, !tbaa !62
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iq, i64 12
  store i32 0, ptr %i.iv, align 4, !tbaa !64
  %i.iw = load ptr, ptr %i.iq, align 8, !tbaa !33
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.iy = load ptr, ptr %i.ix, align 8
  call void %i.iy(ptr noundef nonnull align 8 dereferenceable(16) %i.iq) #27, !inline_history !151
  %i.iz = load ptr, ptr %i.iq, align 8, !tbaa !33
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  %i.jb = load ptr, ptr %i.ja, align 8
  call void %i.jb(ptr noundef nonnull align 8 dereferenceable(16) %i.iq) #27, !inline_history !151
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i98

bb.bv:                                            ; preds = %bb.bt
  %i.jc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i95 = icmp eq i8 %i.jc, 0
  br i1 %.not.i.i.i.i.i.i.i.i95, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jd = add nsw i32 %i.iu, -1
  store i32 %i.jd, ptr %i.ir, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i96

bb.bx:                                            ; preds = %bb.bv
  %i.je = atomicrmw volatile add ptr %i.ir, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i96

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i96: ; preds = %bb.bx, %bb.bw
  %.0.i.i.i.i.i.i.i.i.i97 = phi i32 [ %i.iu, %bb.bw ], [ %i.je, %bb.bx ]
  %i.jf = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i97, 1
  br i1 %i.jf, label %bb.by, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i98, !prof !66

bb.by:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i96
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iq) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i98

_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i98: ; preds = %bb.by, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i96, %bb.bu, %.lr.ph.i.i.i92
  %i.jg = getelementptr inbounds nuw i8, ptr %.05.i.i.i93, i64 16 ; 2 uses
  %.not.i.i.i99 = icmp eq ptr %i.jg, %.pre174
  br i1 %.not.i.i.i99, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i100, label %.lr.ph.i.i.i92, !llvm.loop !152

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i100: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i98
  %.pr.i101 = load ptr, ptr %4, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i102

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i102: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i100, %.loopexit147
  %i.jh = phi ptr [ %.pr.i101, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i100 ], [ %.pre173, %.loopexit147 ] ; 3 uses
  %.not.i.i1.i103 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i1.i103, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit104, label %bb.bz

bb.bz:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i102
  %i.ji = load ptr, ptr %i.k, align 8, !tbaa !116
  %i.jj = ptrtoint ptr %i.ji to i64
  %i.jk = ptrtoint ptr %i.jh to i64
  %i.jl = sub i64 %i.jj, %i.jk
  call void @_ZdlPvm(ptr noundef nonnull %i.jh, i64 noundef %i.jl) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit104

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit104: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i102.thread, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i102, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.jm = load ptr, ptr %3, align 8, !tbaa !44    ; 3 uses
  %i.jn = load ptr, ptr %i.h, align 8, !tbaa !45  ; 2 uses
  %.not4.i.i.i105 = icmp eq ptr %i.jm, %i.jn
  br i1 %.not4.i.i.i105, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i116, label %.lr.ph.i.i.i106

.lr.ph.i.i.i106:                                  ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit104, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i112
  %.05.i.i.i107 = phi ptr [ %i.kf, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i112 ], [ %i.jm, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit104 ] ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.05.i.i.i107, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i.i108 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i.i.i.i.i108, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i112, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph.i.i.i106
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8 ; 4 uses
  %i.jr = load atomic i64, ptr %i.jq acquire, align 8 ; 2 uses
  %i.js = icmp eq i64 %i.jr, 4294967297
  %i.jt = trunc i64 %i.jr to i32                  ; 2 uses
  br i1 %i.js, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  store i32 0, ptr %i.jq, align 8, !tbaa !62
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jp, i64 12
  store i32 0, ptr %i.ju, align 4, !tbaa !64
  %i.jv = load ptr, ptr %i.jp, align 8, !tbaa !33
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8
  call void %i.jx(ptr noundef nonnull align 8 dereferenceable(16) %i.jp) #27, !inline_history !229
  %i.jy = load ptr, ptr %i.jp, align 8, !tbaa !33
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8
  call void %i.ka(ptr noundef nonnull align 8 dereferenceable(16) %i.jp) #27, !inline_history !229
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i112

bb.cc:                                            ; preds = %bb.ca
  %i.kb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i109 = icmp eq i8 %i.kb, 0
  br i1 %.not.i.i.i.i.i.i.i.i109, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.kc = add nsw i32 %i.jt, -1
  store i32 %i.kc, ptr %i.jq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i110

bb.ce:                                            ; preds = %bb.cc
  %i.kd = atomicrmw volatile add ptr %i.jq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i110

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i110: ; preds = %bb.ce, %bb.cd
  %.0.i.i.i.i.i.i.i.i.i111 = phi i32 [ %i.jt, %bb.cd ], [ %i.kd, %bb.ce ]
  %i.ke = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i111, 1
  br i1 %i.ke, label %bb.cf, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i112, !prof !66

bb.cf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i110
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jp) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i112

_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i112: ; preds = %bb.cf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i110, %bb.cb, %.lr.ph.i.i.i106
  %i.kf = getelementptr inbounds nuw i8, ptr %.05.i.i.i107, i64 16 ; 2 uses
  %.not.i.i.i113 = icmp eq ptr %i.kf, %i.jn
  br i1 %.not.i.i.i113, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i114, label %.lr.ph.i.i.i106, !llvm.loop !69

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i114: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i112
  %.pr.i115 = load ptr, ptr %3, align 8, !tbaa !44
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i116

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i116: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i114, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit104
  %i.kg = phi ptr [ %.pr.i115, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i114 ], [ %i.jm, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit104 ] ; 3 uses
  %.not.i.i1.i117 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i1.i117, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit118, label %bb.cg

bb.cg:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i116
  %i.kh = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.ki = ptrtoint ptr %i.kh to i64
  %i.kj = ptrtoint ptr %i.kg to i64
  %i.kk = sub i64 %i.ki, %i.kj
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef %i.kk) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit118

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit118: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i116, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.ch:                                            ; preds = %bb.c, %bb.bn, %.body
  %.pn37.pn = phi { ptr, i32 } [ %.pn37, %.body ], [ %.pn32.pn.pn, %bb.bn ], [ %i.p, %bb.c ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn37.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5arrow11SimpleTable8ValidateEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow6StatusD2Ev.exit:
  %2 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZNK5arrow11SimpleTable12ValidateMetaEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.a = load ptr, ptr %2, align 8, !tbaa !118    ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.preheader, label %bb.u

.preheader:                                       ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.e = call noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.d)
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !77
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZNK5arrow12ChunkedArray8ValidateEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(88) %i.j)
  %i.k = load ptr, ptr %3, align 8, !tbaa !118
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.46, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i32 noundef %i.m)
          to label %bb.d unwind label %bb.m       ; 2 uses

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.17, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29: ; preds = %bb.d
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow6Status7messageB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.e unwind label %bb.m       ; 2 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !153
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !235
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef %i.s, i64 noundef %i.u)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.m ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !773)
  call void @llvm.experimental.noalias.scope.decl(metadata !776)
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.w, ptr %5, align 8, !tbaa !234, !alias.scope !779
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !235, !alias.scope !779
  store i8 0, ptr %i.w, align 8, !tbaa !61, !alias.scope !779
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !300, !noalias !779 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.z, null
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !779 ; 2 uses
  %i.ac = icmp ugt ptr %i.z, %i.ab
  %.08.i.i.i = select i1 %i.ac, ptr %i.z, ptr %i.ab ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !304, !noalias !779 ; 2 uses
  %i.af = ptrtoint ptr %.08.i.i.i to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.ae, i64 noundef %i.ah)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !153, !alias.scope !779 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.w
  br i1 %i.al, label %.body, label %.body.sink.split

bb.h:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.am)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.h, %bb.f
  invoke void @_ZNK5arrow6Status11WithMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.an = load ptr, ptr %5, align 8, !tbaa !153   ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.w
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ap = load i64, ptr %i.w, align 8, !tbaa !61
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.ar = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ar, ptr %4, align 8, !tbaa !33
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.at = getelementptr i8, ptr %i.ar, i64 -24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %4, i64 %i.au
  store ptr %i.as, ptr %i.av, align 8, !tbaa !33
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.aw, ptr %i.n, align 8, !tbaa !33
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i32 0, i32 0, i32 2), ptr %i.ax, align 8, !tbaa !33
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !153 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !61
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #26
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i32 0, i32 0, i32 2), ptr %i.ax, align 8, !tbaa !33
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.be) #27
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bf, ptr %4, align 8, !tbaa !33
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bh = getelementptr i8, ptr %i.bf, i64 -24
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr %4, i64 %i.bi
  store ptr %i.bg, ptr %i.bj, align 8, !tbaa !33
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.bk, align 8, !tbaa !305
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bl) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.bm = load ptr, ptr %3, align 8, !tbaa !118   ; 2 uses
  %.not.i30 = icmp eq ptr %i.bm, null
  br i1 %.not.i30, label %bb.t, label %bb.j, !prof !121

bb.j:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !130, !range !140, !noundef !141
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.t, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  br label %bb.t

bb.l:                                             ; preds = %bb.b
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.m:                                             ; preds = %bb.e, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = load ptr, ptr %5, align 8, !tbaa !153   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.w
  br i1 %i.bu, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.n, %bb.g
  %.sink = phi ptr [ %i.ak, %bb.g ], [ %i.bt, %bb.n ]
  %.pn.ph = phi { ptr, i32 } [ %i.aj, %bb.g ], [ %i.bs, %bb.n ]
  %i.bv = load i64, ptr %i.w, align 8, !tbaa !61
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bw) #26
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.n, %bb.g
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.g ], [ %i.bs, %bb.n ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.o

bb.o:                                             ; preds = %.body, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.br, %bb.m ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #27
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.o ], [ %i.bq, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.bx = load ptr, ptr %3, align 8, !tbaa !118   ; 2 uses
  %.not.i35 = icmp eq ptr %i.bx, null
  br i1 %.not.i35, label %_ZN5arrow6StatusD2Ev.exit36, label %bb.q, !prof !121

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !130, !range !140, !noundef !141
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %_ZN5arrow6StatusD2Ev.exit36, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  br label %_ZN5arrow6StatusD2Ev.exit36

_ZN5arrow6StatusD2Ev.exit36:                      ; preds = %bb.p, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn.pn.pn

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cb = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.cc = call noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.cb)
  %i.cd = sext i32 %i.cc to i64
  %i.ce = icmp slt i64 %indvars.iv.next, %i.cd
  br i1 %i.ce, label %bb.a, label %._crit_edge, !llvm.loop !780

bb.t:                                             ; preds = %bb.k, %bb.j, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.u

._crit_edge:                                      ; preds = %bb.s, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !118, !alias.scope !781
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN5arrow6StatusD2Ev.exit, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5arrow11SimpleTable12ValidateFullEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow6StatusD2Ev.exit:
  %2 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZNK5arrow11SimpleTable12ValidateMetaEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.a = load ptr, ptr %2, align 8, !tbaa !118    ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.preheader, label %bb.u

.preheader:                                       ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.e = call noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.d)
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !77
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZNK5arrow12ChunkedArray12ValidateFullEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(88) %i.j)
  %i.k = load ptr, ptr %3, align 8, !tbaa !118
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.46, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i32 noundef %i.m)
          to label %bb.d unwind label %bb.m       ; 2 uses

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.17, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29: ; preds = %bb.d
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow6Status7messageB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.e unwind label %bb.m       ; 2 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !153
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !235
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef %i.s, i64 noundef %i.u)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.m ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !784)
  call void @llvm.experimental.noalias.scope.decl(metadata !787)
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.w, ptr %5, align 8, !tbaa !234, !alias.scope !790
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !235, !alias.scope !790
  store i8 0, ptr %i.w, align 8, !tbaa !61, !alias.scope !790
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !300, !noalias !790 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.z, null
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !790 ; 2 uses
  %i.ac = icmp ugt ptr %i.z, %i.ab
  %.08.i.i.i = select i1 %i.ac, ptr %i.z, ptr %i.ab ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !304, !noalias !790 ; 2 uses
  %i.af = ptrtoint ptr %.08.i.i.i to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.ae, i64 noundef %i.ah)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !153, !alias.scope !790 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.w
  br i1 %i.al, label %.body, label %.body.sink.split

bb.h:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.am)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.h, %bb.f
  invoke void @_ZNK5arrow6Status11WithMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.an = load ptr, ptr %5, align 8, !tbaa !153   ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.w
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ap = load i64, ptr %i.w, align 8, !tbaa !61
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.ar = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ar, ptr %4, align 8, !tbaa !33
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.at = getelementptr i8, ptr %i.ar, i64 -24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %4, i64 %i.au
  store ptr %i.as, ptr %i.av, align 8, !tbaa !33
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.aw, ptr %i.n, align 8, !tbaa !33
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i32 0, i32 0, i32 2), ptr %i.ax, align 8, !tbaa !33
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !153 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !61
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #26
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i32 0, i32 0, i32 2), ptr %i.ax, align 8, !tbaa !33
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.be) #27
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bf, ptr %4, align 8, !tbaa !33
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bh = getelementptr i8, ptr %i.bf, i64 -24
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr %4, i64 %i.bi
  store ptr %i.bg, ptr %i.bj, align 8, !tbaa !33
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.bk, align 8, !tbaa !305
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bl) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.bm = load ptr, ptr %3, align 8, !tbaa !118   ; 2 uses
  %.not.i30 = icmp eq ptr %i.bm, null
  br i1 %.not.i30, label %bb.t, label %bb.j, !prof !121

bb.j:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !130, !range !140, !noundef !141
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.t, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  br label %bb.t

bb.l:                                             ; preds = %bb.b
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.m:                                             ; preds = %bb.e, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = load ptr, ptr %5, align 8, !tbaa !153   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.w
  br i1 %i.bu, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.n, %bb.g
  %.sink = phi ptr [ %i.ak, %bb.g ], [ %i.bt, %bb.n ]
  %.pn.ph = phi { ptr, i32 } [ %i.aj, %bb.g ], [ %i.bs, %bb.n ]
  %i.bv = load i64, ptr %i.w, align 8, !tbaa !61
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bw) #26
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.n, %bb.g
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.g ], [ %i.bs, %bb.n ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.o

bb.o:                                             ; preds = %.body, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.br, %bb.m ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #27
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.o ], [ %i.bq, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.bx = load ptr, ptr %3, align 8, !tbaa !118   ; 2 uses
  %.not.i35 = icmp eq ptr %i.bx, null
  br i1 %.not.i35, label %_ZN5arrow6StatusD2Ev.exit36, label %bb.q, !prof !121

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !130, !range !140, !noundef !141
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %_ZN5arrow6StatusD2Ev.exit36, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  br label %_ZN5arrow6StatusD2Ev.exit36

_ZN5arrow6StatusD2Ev.exit36:                      ; preds = %bb.p, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn.pn.pn

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cb = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.cc = call noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.cb)
  %i.cd = sext i32 %i.cc to i64
  %i.ce = icmp slt i64 %indvars.iv.next, %i.cd
  br i1 %i.ce, label %bb.a, label %._crit_edge, !llvm.loop !791

bb.t:                                             ; preds = %bb.k, %bb.j, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.u

._crit_edge:                                      ; preds = %bb.s, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !118, !alias.scope !792
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN5arrow6StatusD2Ev.exit, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !64
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !230
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !230
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare void @_ZNK5arrow12ChunkedArray5SliceEll(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.49") align 8, ptr noundef nonnull align 8 dereferenceable(88), i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNK5arrow6Schema11RemoveFieldEi(ptr dead_on_unwind writable sret(%"class.arrow::Result.96") align 8, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal19DeleteVectorElementISt10shared_ptrINS_12ChunkedArrayEEEESt6vectorIT_SaIS6_EERKS8_m(ptr dead_on_unwind noalias writable sret(%"class.std::vector.13") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81
  %i.c = load ptr, ptr %1, align 8, !tbaa !77     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 4                   ; 2 uses
  %i.h = add nsw i64 %i.g, -1                     ; 4 uses
  %i.i = icmp ugt i64 %i.h, 576460752303423487
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #24
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.not48 = icmp eq i64 %i.h, 0
  br i1 %.not48, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.k = shl nuw nsw i64 %i.h, 4
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #25
          to label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE13_M_deallocateEPS3_m.exit.i unwind label %bb.d ; 3 uses

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_M_allocateEm.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %0, align 8, !tbaa !77
end_hunk_16
begin_hunk_17_@_ZNK5arrow11SimpleTable12ValidateMetaEv:bb.a
  %i.dr = load ptr, ptr %2, align 8, !tbaa !153, !noalias !817 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %.critedge36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i50: ; preds = %bb.u
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !61, !noalias !817
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #26
  br label %.critedge36

bb.v:                                             ; preds = %.noexc52
  %i.dw = landingpad { ptr, i32 }
          cleanup
  %i.dx = load ptr, ptr %2, align 8, !tbaa !153, !noalias !817 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i: ; preds = %bb.v
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !61, !noalias !817
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.eb) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !817
  br label %.body53

.critedge36:                                      ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.ec = load ptr, ptr %i.dg, align 8, !tbaa !52 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %.critedge36
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 4 uses
  %i.ee = load atomic i64, ptr %i.ed acquire, align 8 ; 2 uses
  %i.ef = icmp eq i64 %i.ee, 4294967297
  %i.eg = trunc i64 %i.ee to i32                  ; 2 uses
  br i1 %i.ef, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.ed, align 8, !tbaa !62
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  store i32 0, ptr %i.eh, align 4, !tbaa !64
  %i.ei = load ptr, ptr %i.ec, align 8, !tbaa !33
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(16) %i.ec) #27, !inline_history !65
  %i.el = load ptr, ptr %i.ec, align 8, !tbaa !33
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(16) %i.ec) #27, !inline_history !65
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.eo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i = icmp eq i8 %i.eo, 0
  br i1 %.not.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ep = add nsw i32 %i.eg, -1
  store i32 %i.ep, ptr %i.ed, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.eq = atomicrmw volatile add ptr %i.ed, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i = phi i32 [ %i.eg, %bb.z ], [ %i.eq, %bb.aa ]
  %i.er = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.er, label %bb.ab, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ec) #27
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.critedge36, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %.thread

bb.ac:                                            ; preds = %_ZNK5arrow5Table5fieldEi.exit
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %.body53

.body53:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i, %bb.ac
  %eh.lpad-body54 = phi { ptr, i32 } [ %i.es, %bb.ac ], [ %i.dw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.aw

bb.ad:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @_ZNK5arrow12ChunkedArray8ValidateEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(88) %i.cy)
  %i.et = load ptr, ptr %8, align 8, !tbaa !118
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %bb.av, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9)
          to label %bb.af unwind label %bb.ao

bb.af:                                            ; preds = %bb.ae
  %i.ev = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.ew = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, ptr noundef nonnull @.str.46, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ap ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.af
  %i.ex = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, i32 noundef %i.cu)
          to label %bb.ag unwind label %bb.ap     ; 2 uses

bb.ag:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ey = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ex, ptr noundef nonnull @.str.17, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57 unwind label %bb.ap ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57: ; preds = %bb.ag
  %i.ez = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow6Status7messageB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ah unwind label %bb.ap     ; 2 uses

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !153
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !235
  %i.fd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ex, ptr noundef %i.fa, i64 noundef %i.fc)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.ap ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !822)
  call void @llvm.experimental.noalias.scope.decl(metadata !825)
  %i.fe = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.fe, ptr %10, align 8, !tbaa !234, !alias.scope !828
  %i.ff = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.ff, align 8, !tbaa !235, !alias.scope !828
  store i8 0, ptr %i.fe, align 8, !tbaa !61, !alias.scope !828
  %i.fg = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !300, !noalias !828 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.fh, null
  %i.fi = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !828 ; 2 uses
  %i.fk = icmp ugt ptr %i.fh, %i.fj
  %.08.i.i.i = select i1 %i.fk, ptr %i.fh, ptr %i.fj ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i59 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i59, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !304, !noalias !828 ; 2 uses
  %i.fn = ptrtoint ptr %.08.i.i.i to i64
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef %i.fm, i64 noundef %i.fp)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.aj ; 0 uses

bb.aj:                                            ; preds = %bb.ak, %bb.ai
  %i.fr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fs = load ptr, ptr %10, align 8, !tbaa !153, !alias.scope !828 ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.fe
  br i1 %i.ft, label %.body62, label %.body62.sink.split

bb.ak:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.fu = getelementptr inbounds nuw i8, ptr %9, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.fu)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.aj

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.ak, %bb.ai
  invoke void @_ZNK5arrow6Status11WithMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.al unwind label %bb.aq

bb.al:                                            ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.fv = load ptr, ptr %10, align 8, !tbaa !153  ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.fe
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.al
  %i.fx = load i64, ptr %i.fe, align 8, !tbaa !61
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.fz = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.fz, ptr %9, align 8, !tbaa !33
  %i.ga = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.gb = getelementptr i8, ptr %i.fz, i64 -24
  %i.gc = load i64, ptr %i.gb, align 8
  %i.gd = getelementptr inbounds i8, ptr %9, i64 %i.gc
  store ptr %i.ga, ptr %i.gd, align 8, !tbaa !33
  %i.ge = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ge, ptr %i.ev, align 8, !tbaa !33
  %i.gf = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i32 0, i32 0, i32 2), ptr %i.gf, align 8, !tbaa !33
  %i.gg = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !153 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 2 uses
  %i.gj = icmp eq ptr %i.gh, %i.gi
  br i1 %i.gj, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %i.gk = load i64, ptr %i.gi, align 8, !tbaa !61
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gl) #26
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i32 0, i32 0, i32 2), ptr %i.gf, align 8, !tbaa !33
  %i.gm = getelementptr inbounds nuw i8, ptr %9, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gm) #27
  %i.gn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.gn, ptr %9, align 8, !tbaa !33
  %i.go = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.gp = getelementptr i8, ptr %i.gn, i64 -24
  %i.gq = load i64, ptr %i.gp, align 8
  %i.gr = getelementptr inbounds i8, ptr %9, i64 %i.gq
  store ptr %i.go, ptr %i.gr, align 8, !tbaa !33
  %i.gs = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.gs, align 8, !tbaa !305
  %i.gt = getelementptr inbounds nuw i8, ptr %9, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.gt) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.gu = load ptr, ptr %8, align 8, !tbaa !118   ; 2 uses
  %.not.i = icmp eq ptr %i.gu, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.am, !prof !121

bb.am:                                            ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 1
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !130, !range !140, !noundef !141
  %i.gx = trunc nuw i8 %i.gw to i1
  br i1 %i.gx, label %_ZN5arrow6StatusD2Ev.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #27
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %.thread

bb.ao:                                            ; preds = %bb.ae
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ap:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ha = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hb = load ptr, ptr %10, align 8, !tbaa !153  ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.fe
  br i1 %i.hc, label %.body62, label %.body62.sink.split

.body62.sink.split:                               ; preds = %bb.aq, %bb.aj
  %.sink = phi ptr [ %i.fs, %bb.aj ], [ %i.hb, %bb.aq ]
  %.pn28.ph = phi { ptr, i32 } [ %i.fr, %bb.aj ], [ %i.ha, %bb.aq ]
  %i.hd = load i64, ptr %i.fe, align 8, !tbaa !61
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.he) #26
  br label %.body62

.body62:                                          ; preds = %.body62.sink.split, %bb.aq, %bb.aj
  %.pn28 = phi { ptr, i32 } [ %i.fr, %bb.aj ], [ %i.ha, %bb.aq ], [ %.pn28.ph, %.body62.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.ar

bb.ar:                                            ; preds = %.body62, %bb.ap
  %.pn28.pn = phi { ptr, i32 } [ %.pn28, %.body62 ], [ %i.gz, %bb.ap ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9) #27
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ao
  %.pn28.pn.pn = phi { ptr, i32 } [ %.pn28.pn, %bb.ar ], [ %i.gy, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.hf = load ptr, ptr %8, align 8, !tbaa !118   ; 2 uses
  %.not.i70 = icmp eq ptr %i.hf, null
  br i1 %.not.i70, label %_ZN5arrow6StatusD2Ev.exit71, label %bb.at, !prof !121

bb.at:                                            ; preds = %bb.as
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 1
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !130, !range !140, !noundef !141
  %i.hi = trunc nuw i8 %i.hh to i1
  br i1 %i.hi, label %_ZN5arrow6StatusD2Ev.exit71, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #27
  br label %_ZN5arrow6StatusD2Ev.exit71

_ZN5arrow6StatusD2Ev.exit71:                      ; preds = %bb.as, %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.aw

bb.av:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.hj = add nuw nsw i32 %i.cu, 1                ; 3 uses
  store i32 %i.hj, ptr %i.b, align 4, !tbaa !3
  %i.hk = load ptr, ptr %i.m, align 8, !tbaa !35
  %i.hl = call noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.hk)
  %i.hm = icmp slt i32 %i.hj, %i.hl
  br i1 %i.hm, label %bb.p, label %._crit_edge88, !llvm.loop !829

bb.aw:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit71, %.body53
  %.pn32 = phi { ptr, i32 } [ %eh.lpad-body54, %.body53 ], [ %.pn28.pn.pn, %_ZN5arrow6StatusD2Ev.exit71 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.ax

._crit_edge88:                                    ; preds = %bb.av, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  store ptr null, ptr %0, align 8, !tbaa !118, !alias.scope !830
  br label %bb.ax

bb.ax:                                            ; preds = %.thread, %.critedge.thread, %._crit_edge88, %bb.b
  ret void
}

declare void @_ZNK5arrow12ChunkedArray8ValidateEv(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow6Status7messageB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5arrow6Status11WithMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 9 uses
  %4 = alloca %"class.std::shared_ptr.169", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = load ptr, ptr %1, align 8, !tbaa !118    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZNK5arrow6Status4codeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.a, align 8, !tbaa !833
  br label %_ZNK5arrow6Status4codeEv.exit

_ZNK5arrow6Status4codeEv.exit:                    ; preds = %bb.a, %bb.b
  %i.d = phi i8 [ %i.c, %bb.b ], [ 0, %bb.a ]
  call void @_ZN5arrow6Status8FromArgsIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, i8 noundef signext %i.d, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.e = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Status6detailEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.c unwind label %bb.p       ; 2 uses

bb.c:                                             ; preds = %_ZNK5arrow6Status4codeEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !52   ; 2 uses
  %i.i = load <2 x ptr>, ptr %i.e, align 8, !tbaa !51
  store <2 x ptr> %i.i, ptr %4, align 16, !tbaa !51
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow12StatusDetailEEC2ERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %i.j, align 4, !tbaa !3
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.j, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow12StatusDetailEEC2ERKS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.j, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow12StatusDetailEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow12StatusDetailEEC2ERKS2_.exit: ; preds = %bb.c, %bb.e, %bb.f
  invoke void @_ZNK5arrow6Status10WithDetailESt10shared_ptrINS_12StatusDetailEE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %4)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %_ZNSt10shared_ptrIN5arrow12StatusDetailEEC2ERKS2_.exit
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !52   ; 8 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.p, align 8, !tbaa !62
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !64
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #27, !inline_history !834
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #27, !inline_history !834
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i5 = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i5, label %bb.l, label %bb.k
end_hunk_17
begin_hunk_18_@_ZN5arrow6Status8FromArgsIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_NS_10StatusCodeEDpOT_:bb.a
  %i.l = load i64, ptr %i.j, align 8, !tbaa !61
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_DpOT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !153    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.r = load i64, ptr %i.p, align 8, !tbaa !61
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5arrow6Status10WithDetailESt10shared_ptrINS_12StatusDetailEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.std::shared_ptr.169", align 16 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !118    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZNK5arrow6Status4codeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.a, align 8, !tbaa !833
  br label %_ZNK5arrow6Status4codeEv.exit

_ZNK5arrow6Status4codeEv.exit:                    ; preds = %bb.a, %bb.b
  %i.d = phi i8 [ %i.c, %bb.b ], [ 0, %bb.a ]
  %i.e = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow6Status7messageB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !234
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !153  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !235  ; 8 uses
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %_ZNK5arrow6Status4codeEv.exit
  %i.k = icmp slt i64 %i.i, 0
  br i1 %i.k, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #24
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.l = add nuw i64 %i.i, 1                      ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !66

.noexc6.i:                                        ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.n = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #25 ; 2 uses
  store ptr %i.n, ptr %3, align 8, !tbaa !153
  store i64 %i.i, ptr %i.f, align 8, !tbaa !61
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %_ZNK5arrow6Status4codeEv.exit
  %i.o = phi ptr [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.f, %_ZNK5arrow6Status4codeEv.exit ] ; 3 uses
  switch i64 %i.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.p = load i8, ptr %i.g, align 1, !tbaa !61
  store i8 %i.p, ptr %i.o, align 1, !tbaa !61
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.i, ptr %i.q, align 8, !tbaa !235
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.i
  store i8 0, ptr %i.r, align 1, !tbaa !61
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load <2 x ptr>, ptr %2, align 8, !tbaa !51
  store ptr null, ptr %i.s, align 8, !tbaa !52
  store <2 x ptr> %i.t, ptr %4, align 16, !tbaa !51
  store ptr null, ptr %2, align 8, !tbaa !841
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_12StatusDetailEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.d, ptr noundef nonnull %3, ptr noundef nonnull %4)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !52   ; 8 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.w, align 8, !tbaa !62
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !64
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #27, !inline_history !834
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !33
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #27, !inline_history !834
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = add nsw i32 %i.z, -1
  store i32 %i.ai, ptr %i.w, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.aj = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.z, %bb.k ], [ %i.aj, %bb.l ]
  %i.ak = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ak, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #27
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.g, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  %i.al = load ptr, ptr %3, align 8, !tbaa !153   ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.f
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.an = load i64, ptr %i.f, align 8, !tbaa !61
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #27
  %i.aq = load ptr, ptr %3, align 8, !tbaa !153   ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.f
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.n
  %i.as = load i64, ptr %i.f, align 8, !tbaa !61
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  resume { ptr, i32 } %i.ap
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Status6detailEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare void @_ZN5arrow6StatusC1ENS_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_12StatusDetailEE(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext, ptr noundef, ptr noundef) unnamed_addr #4

declare void @_ZNK5arrow12ChunkedArray12ValidateFullEv(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow11SimpleTableESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrINS0_6SchemaEERKSt6vectorIS7_INS0_5ArrayEESaISC_EERlEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !62
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !64
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow11SimpleTableESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !51
  store ptr null, ptr %i.d, align 8, !tbaa !52
  store <2 x ptr> %i.e, ptr %4, align 16, !tbaa !51
  store ptr null, ptr %1, align 8, !tbaa !35
  %i.f = load i64, ptr %3, align 8, !tbaa !109
  invoke void @_ZN5arrow11SimpleTableC2ESt10shared_ptrINS_6SchemaEERKSt6vectorIS1_INS_5ArrayEESaIS6_EEl(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.f)
          to label %bb.b unwind label %.body

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !52   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.i, align 8, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !64
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #27, !inline_history !842
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #27, !inline_history !842
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.l, %bb.f ], [ %i.v, %bb.g ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.w, label %bb.h, label %bb.i, !prof !66

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #27
  br label %bb.i

.body:                                            ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #27
  resume { ptr, i32 } %i.x

bb.i:                                             ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow11SimpleTableC2ESt10shared_ptrINS_6SchemaEERKSt6vectorIS1_INS_5ArrayEESaIS6_EEl(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds inrange(-16, 96) ({ [14 x ptr] }, ptr @_ZTVN5arrow11SimpleTableE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !51
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !52   ; 8 uses
  store <2 x ptr> %i.d, ptr %i.a, align 8, !tbaa !51
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow6SchemaEEaSEOS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !62
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !64
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #27, !inline_history !843
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #27, !inline_history !843
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEaSEOS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZNSt10shared_ptrIN5arrow6SchemaEEaSEOS2_.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #27
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow6SchemaEEaSEOS2_.exit:   ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.u = icmp slt i64 %3, 0
  br i1 %i.u, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEaSEOS2_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !172  ; 4 uses
  %i.x = load ptr, ptr %2, align 8, !tbaa !170    ; 3 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.z, align 8, !tbaa !103
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !213
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !461
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !464
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !103
  br label %bb.l

bb.k:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEaSEOS2_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %3, ptr %i.ag, align 8, !tbaa !103
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !172
  %.pre27 = load ptr, ptr %2, align 8, !tbaa !170
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k
  %i.ah = phi ptr [ %i.w, %bb.i ], [ %i.x, %bb.j ], [ %.pre27, %bb.k ]
  %i.ai = phi ptr [ %i.w, %bb.i ], [ %i.w, %bb.j ], [ %.pre, %bb.k ]
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = ashr exact i64 %i.am, 4                 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !81 ; 3 uses
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !77  ; 2 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 4                 ; 3 uses
  %i.av = icmp ugt i64 %i.an, %i.au
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aw = sub nuw nsw i64 %i.an, %i.au
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.aw)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE6resizeEm.exit unwind label %bb.v

bb.n:                                             ; preds = %bb.l
  %i.ax = icmp ult i64 %i.an, %i.au
  br i1 %i.ax, label %bb.o, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE6resizeEm.exit

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.am ; 3 uses
  %.not.i.i = icmp eq ptr %i.ap, %i.ay
  br i1 %.not.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.o, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bq, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i.i ], [ %i.ay, %bb.o ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 4 uses
  %i.bc = load atomic i64, ptr %i.bb acquire, align 8 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 4294967297
  %i.be = trunc i64 %i.bc to i32                  ; 2 uses
  br i1 %i.bd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.bb, align 8, !tbaa !62
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 0, ptr %i.bf, align 4, !tbaa !64
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !33
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #27, !inline_history !844
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !33
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  tail call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #27, !inline_history !844
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = add nsw i32 %i.be, -1
  store i32 %i.bn, ptr %i.bb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bo = atomicrmw volatile add ptr %i.bb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.be, %bb.s ], [ %i.bo, %bb.t ]
  %i.bp = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bp, label %bb.u, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i.i, !prof !66

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i.i: ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.q, %.lr.ph.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i17 = icmp eq ptr %i.bq, %i.ap
  br i1 %.not.i.i.i.i17, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !152

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i.i
  store ptr %i.ay, ptr %i.ao, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE6resizeEm.exit

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE6resizeEm.exit: ; preds = %bb.m, %bb.n, %bb.o, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.br = load ptr, ptr %i.aj, align 8, !tbaa !172
  %i.bs = load ptr, ptr %2, align 8, !tbaa !170   ; 2 uses
  %.not = icmp eq ptr %i.br, %i.bs
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE6resizeEm.exit
  ret void

bb.v:                                             ; preds = %bb.m
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE6resizeEm.exit, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = phi ptr [ %i.cu, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.bs, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE6resizeEm.exit ]
  %.025 = phi i64 [ %i.cs, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ 0, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE6resizeEm.exit ] ; 3 uses
  %i.bv = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #25
          to label %.noexc18 unwind label %bb.ad  ; 4 uses

.noexc18:                                         ; preds = %.lr.ph
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %.025
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRKSt10shared_ptrINS0_5ArrayEEEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(104) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %i.bw)
          to label %bb.w unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, !noalias !845

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i: ; preds = %.noexc18
  %i.bx = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef 104) #26, !noalias !845
  br label %.body

bb.w:                                             ; preds = %.noexc18
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bz = load ptr, ptr %i.b, align 8, !tbaa !77
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %.025 ; 2 uses
  store ptr %i.by, ptr %i.ca, align 8, !tbaa !185
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !52 ; 8 uses
  store ptr %i.bv, ptr %i.cb, align 8, !tbaa !52
  %.not.i.i.i.i19 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i19, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 4 uses
  %i.ce = load atomic i64, ptr %i.cd acquire, align 8 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 4294967297
  %i.cg = trunc i64 %i.ce to i32                  ; 2 uses
  br i1 %i.cf, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.cd, align 8, !tbaa !62
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 0, ptr %i.ch, align 4, !tbaa !64
  %i.ci = load ptr, ptr %i.cc, align 8, !tbaa !33
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #27, !inline_history !127
  %i.cl = load ptr, ptr %i.cc, align 8, !tbaa !33
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  tail call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #27, !inline_history !127
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.z:                                             ; preds = %bb.x
  %i.co = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i20 = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i.i.i20, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cp = add nsw i32 %i.cg, -1
  store i32 %i.cp, ptr %i.cd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i21

bb.ab:                                            ; preds = %bb.z
  %i.cq = atomicrmw volatile add ptr %i.cd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i21

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i21: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i.i22 = phi i32 [ %i.cg, %bb.aa ], [ %i.cq, %bb.ab ]
  %i.cr = icmp eq i32 %.0.i.i.i.i.i.i22, 1
  br i1 %i.cr, label %bb.ac, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i21
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #27
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i21, %bb.y, %bb.w
  %i.cs = add nuw i64 %.025, 1                    ; 2 uses
  %i.ct = load ptr, ptr %i.aj, align 8, !tbaa !172
  %i.cu = load ptr, ptr %2, align 8, !tbaa !170   ; 2 uses
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = ashr exact i64 %i.cx, 4
  %i.cz = icmp ult i64 %i.cs, %i.cy
  br i1 %i.cz, label %.lr.ph, label %._crit_edge, !llvm.loop !848

bb.ad:                                            ; preds = %.lr.ph
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ad, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.v ], [ %i.da, %bb.ad ], [ %i.bx, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i ]
  tail call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #27
  tail call void @_ZN5arrow5TableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !77     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !116
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 576460752303423487         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt10shared_ptrIN5arrow12ChunkedArrayEEmS3_ET_S5_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt10shared_ptrIN5arrow12ChunkedArrayEEmS3_ET_S5_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 4                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !81
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.54) #24
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 576460752303423487) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 4
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #25 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !849)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !852)
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.y = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !51, !alias.scope !852, !noalias !849
  store ptr null, ptr %i.x, align 8, !tbaa !52, !alias.scope !852, !noalias !849
  store <2 x ptr> %i.y, ptr %.012.i.i.i, align 8, !tbaa !51, !alias.scope !849, !noalias !852
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !82, !alias.scope !852, !noalias !849
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %.not.i.i.i = icmp eq ptr %i.z, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !386

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE13_M_deallocateEPS3_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.ab = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE13_M_deallocateEPS3_m.exit37

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE13_M_deallocateEPS3_m.exit37: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !77
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !81
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !116
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt10shared_ptrIN5arrow12ChunkedArrayEEmS3_ET_S5_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE13_M_deallocateEPS3_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRKSt10shared_ptrINS0_5ArrayEEEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.60", align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !62
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !64
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.g = load <2 x ptr>, ptr %1, align 8, !tbaa !51
  store <2 x ptr> %i.g, ptr %2, align 16, !tbaa !51
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.h, align 4, !tbaa !3
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  invoke void @_ZN5arrow12ChunkedArrayC2ESt10shared_ptrINS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull %2)
          to label %bb.e unwind label %.body

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit.i
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !52   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.n, align 8, !tbaa !62
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !64
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #27, !inline_history !854
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #27, !inline_history !854
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i3.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i3.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.q, %bb.i ], [ %i.aa, %bb.j ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.k, label %bb.l, !prof !66

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #27
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #27
  resume { ptr, i32 } %i.ac

bb.l:                                             ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow12ChunkedArrayEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN5arrow12ChunkedArrayD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.a) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !686  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !61
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #27
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow12ChunkedArrayC2ESt10shared_ptrINS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.21", align 8    ; 8 uses
  %3 = alloca [1 x %"class.std::shared_ptr.60"], align 8 ; 7 uses
  %4 = alloca %"class.std::shared_ptr.38", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = load ptr, ptr %1, align 8, !tbaa !213    ; 2 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !213
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52   ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !52
  store ptr %i.d, ptr %i.b, align 8, !tbaa !52
  store ptr null, ptr %1, align 8, !tbaa !213
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.e = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25
          to label %.noexc unwind label %bb.y     ; 4 uses

.noexc:                                           ; preds = %bb.a
  store ptr %i.e, ptr %2, align 8, !tbaa !170
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !171
  store ptr %i.a, ptr %i.e, align 8, !tbaa !213
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.d, ptr %i.h, align 8, !tbaa !52
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.i, align 4, !tbaa !3
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.n, align 8, !tbaa !172
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
end_hunk_18
begin_hunk_19_@_ZN5arrow6Status8FromArgsIJRA29_KcEEES0_NS_10StatusCodeEDpOT_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !859
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA29_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !153    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !61
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA29_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !153    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !61
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !64
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !230
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !230
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA17_KcRmRA18_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(18) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(5) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !676, !nonnull !141, !align !445
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(17) %1) #27
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(17) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA17_KcRmRA18_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E4_clIS4_EEDaSK_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA17_KcRmRA18_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E4_clIS4_EEDaSK_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !676, !nonnull !141, !align !445
  %i.f = load i64, ptr %2, align 8, !tbaa !109
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.f)
          to label %_ZZN5arrow8internal12JoinToStringIJRA17_KcRmRA18_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E3_clIS5_EEDaSK_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA17_KcRmRA18_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E3_clIS5_EEDaSK_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA17_KcRmRA18_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E4_clIS4_EEDaSK_.exit
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !676, !nonnull !141, !align !445
  %i.i = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(18) %3) #27
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 1 dereferenceable(18) %3, i64 noundef %i.i)
          to label %_ZZN5arrow8internal12JoinToStringIJRA17_KcRmRA18_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E2_clIS7_EEDaSK_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA17_KcRmRA18_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E2_clIS7_EEDaSK_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA17_KcRmRA18_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E3_clIS5_EEDaSK_.exit
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !676, !nonnull !141, !align !445
  %i.l = load ptr, ptr %4, align 8, !tbaa !153
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !235
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %i.l, i64 noundef %i.n)
          to label %_ZZN5arrow8internal12JoinToStringIJRA17_KcRmRA18_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E1_clISD_EEDaSK_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA17_KcRmRA18_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E1_clISD_EEDaSK_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA17_KcRmRA18_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E2_clIS7_EEDaSK_.exit
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !676, !nonnull !141, !align !445
  %i.q = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(5) %5) #27
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 1 dereferenceable(5) %5, i64 noundef %i.q)
          to label %_ZZN5arrow8internal12JoinToStringIJRA17_KcRmRA18_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E0_clISF_EEDaSK_.exit unwind label %bb.g ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA17_KcRmRA18_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E0_clISF_EEDaSK_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA17_KcRmRA18_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E1_clISD_EEDaSK_.exit
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !676, !nonnull !141, !align !445
  %i.t = load ptr, ptr %6, align 8, !tbaa !153
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !235
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef %i.t, i64 noundef %i.v)
          to label %_ZZN5arrow8internal12JoinToStringIJRA17_KcRmRA18_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E_clISD_EEDaSK_.exit unwind label %bb.h ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA17_KcRmRA18_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E_clISD_EEDaSK_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA17_KcRmRA18_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E0_clISF_EEDaSK_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA17_KcRmRA18_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E_clISD_EEDaSK_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret void

bb.c:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA17_KcRmRA18_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E4_clIS4_EEDaSK_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA17_KcRmRA18_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E3_clIS5_EEDaSK_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA17_KcRmRA18_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E2_clIS7_EEDaSK_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA17_KcRmRA18_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E1_clISD_EEDaSK_.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA17_KcRmRA18_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E0_clISF_EEDaSK_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA17_KcRmRA18_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E_clISD_EEDaSK_.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.e, %bb.g, %bb.h, %bb.f, %bb.d, %bb.i
  %.pn18 = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %i.x, %bb.c ], [ %i.y, %bb.d ], [ %i.z, %bb.e ], [ %i.aa, %bb.f ], [ %i.ac, %bb.h ], [ %i.ab, %bb.g ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  resume { ptr, i32 } %.pn18
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRSt10shared_ptrINS0_5ArrayEEEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.60", align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !62
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !64
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.g = load <2 x ptr>, ptr %1, align 8, !tbaa !51
  store <2 x ptr> %i.g, ptr %2, align 16, !tbaa !51
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.h, align 4, !tbaa !3
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  invoke void @_ZN5arrow12ChunkedArrayC2ESt10shared_ptrINS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull %2)
          to label %bb.e unwind label %.body

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit.i
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !52   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.n, align 8, !tbaa !62
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !64
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #27, !inline_history !862
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #27, !inline_history !862
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i3.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i3.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.q, %bb.i ], [ %i.aa, %bb.j ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.k, label %bb.l, !prof !66

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #27
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #27
  resume { ptr, i32 } %i.ac

bb.l:                                             ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA67_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(67) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !676, !nonnull !141, !align !445
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(67) %1) #27
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(67) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA67_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E0_clIS4_EEDaSH_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA67_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E0_clIS4_EEDaSH_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !676, !nonnull !141, !align !445
  %i.f = load ptr, ptr %2, align 8, !tbaa !153
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !235
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.f, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA67_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E_clISC_EEDaSH_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA67_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E_clISC_EEDaSH_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA67_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E0_clIS4_EEDaSH_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA67_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E_clISC_EEDaSH_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA67_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E0_clIS4_EEDaSH_.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA67_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E_clISC_EEDaSH_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.pn6 = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA25_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA49_S2_EEESA_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(49) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !676, !nonnull !141, !align !445
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(25) %1) #27
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(25) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA25_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA49_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSJ_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA25_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA49_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSJ_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !676, !nonnull !141, !align !445
  %i.f = load ptr, ptr %2, align 8, !tbaa !153
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !235
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.f, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA25_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA49_S2_EEESA_DpOT_ENKUlOT_E0_clISC_EEDaSJ_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA25_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA49_S2_EEESA_DpOT_ENKUlOT_E0_clISC_EEDaSJ_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA25_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA49_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSJ_.exit
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !676, !nonnull !141, !align !445
  %i.k = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(49) %3) #27
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 1 dereferenceable(49) %3, i64 noundef %i.k)
          to label %_ZZN5arrow8internal12JoinToStringIJRA25_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA49_S2_EEESA_DpOT_ENKUlOT_E_clISE_EEDaSJ_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA25_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA49_S2_EEESA_DpOT_ENKUlOT_E_clISE_EEDaSJ_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA25_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA49_S2_EEESA_DpOT_ENKUlOT_E0_clISC_EEDaSJ_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA25_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA49_S2_EEESA_DpOT_ENKUlOT_E_clISE_EEDaSJ_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA25_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA49_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSJ_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA25_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA49_S2_EEESA_DpOT_ENKUlOT_E0_clISC_EEDaSJ_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA25_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA49_S2_EEESA_DpOT_ENKUlOT_E_clISE_EEDaSJ_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.m, %bb.c ], [ %i.o, %bb.e ], [ %i.n, %bb.d ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
end_hunk_19
