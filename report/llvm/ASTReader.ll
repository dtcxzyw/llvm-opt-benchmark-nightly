Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ASTReader?download=true
inline.NumInlined: 33820
inline.NumDeleted: 13736
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 67
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZN5clang13TypeLocReader16VisitPipeTypeLocENS_11PipeTypeLocE
define dso_local void @_ZN5clang13TypeLocReader16VisitPipeTypeLocENS_11PipeTypeLocE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree readnone captures(none) %1, ptr nofree writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2176, !nonnull !177, !align !178 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2167
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2168 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !952  ; 2 uses
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !952
  %i.j = zext i32 %i.h to i64
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !872
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load i64, ptr %i.l, align 8, !tbaa !167  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 912
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1047
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK5clang9ASTReader19ReadModuleOffsetMapERNS_13serialization10ModuleFileE(ptr noundef nonnull align 8 dereferenceable(16376) %i.c, ptr noundef nonnull align 8 dereferenceable(3832) %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.extract.shift.i.i.i.i = lshr i64 %i.m, 32 ; 2 uses
  %i.q = icmp eq i64 %.sroa.4.0.extract.shift.i.i.i.i, 0
  br i1 %i.q, label %_ZN5clang13TypeLocReader18readSourceLocationEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 3688
  %i.s = add nuw nsw i64 %.sroa.4.0.extract.shift.i.i.i.i, 4294967295
  %i.t = and i64 %i.s, 4294967295
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !872
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !887
  br label %_ZN5clang13TypeLocReader18readSourceLocationEv.exit

_ZN5clang13TypeLocReader18readSourceLocationEv.exit: ; preds = %bb.c, %bb.d
  %i.x = phi ptr [ %i.w, %bb.d ], [ %i.e, %bb.c ]
  %i.y = trunc i64 %i.m to i32                    ; 3 uses
  %i.z = tail call i32 @llvm.fshl.i32(i32 %i.y, i32 %i.y, i32 31)
  %i.aa = icmp eq i32 %i.y, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 1712
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = add i32 %i.z, -2
  %i.ae = add i32 %i.ad, %i.ac
  %.sroa.0.0.i.i.i.i.i = select i1 %i.aa, i32 0, i32 %i.ae
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %2, align 4, !tbaa !952
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang13TypeLocReader18VisitBitIntTypeLocENS_13BitIntTypeLocE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree readnone captures(none) %1, ptr nofree writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2176, !nonnull !177, !align !178 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2167
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2168 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !952  ; 2 uses
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !952
  %i.j = zext i32 %i.h to i64
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !872
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load i64, ptr %i.l, align 8, !tbaa !167  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 912
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1047
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK5clang9ASTReader19ReadModuleOffsetMapERNS_13serialization10ModuleFileE(ptr noundef nonnull align 8 dereferenceable(16376) %i.c, ptr noundef nonnull align 8 dereferenceable(3832) %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.extract.shift.i.i.i.i = lshr i64 %i.m, 32 ; 2 uses
  %i.q = icmp eq i64 %.sroa.4.0.extract.shift.i.i.i.i, 0
  br i1 %i.q, label %_ZN5clang13TypeLocReader18readSourceLocationEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 3688
  %i.s = add nuw nsw i64 %.sroa.4.0.extract.shift.i.i.i.i, 4294967295
  %i.t = and i64 %i.s, 4294967295
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !872
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !887
  br label %_ZN5clang13TypeLocReader18readSourceLocationEv.exit

_ZN5clang13TypeLocReader18readSourceLocationEv.exit: ; preds = %bb.c, %bb.d
  %i.x = phi ptr [ %i.w, %bb.d ], [ %i.e, %bb.c ]
  %i.y = trunc i64 %i.m to i32                    ; 3 uses
  %i.z = tail call i32 @llvm.fshl.i32(i32 %i.y, i32 %i.y, i32 31)
  %i.aa = icmp eq i32 %i.y, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 1712
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = add i32 %i.z, -2
  %i.ae = add i32 %i.ad, %i.ac
  %.sroa.0.0.i.i.i.i.i = select i1 %i.aa, i32 0, i32 %i.ae
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %2, align 4, !tbaa !952
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang13TypeLocReader27VisitDependentBitIntTypeLocENS_22DependentBitIntTypeLocE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree readnone captures(none) %1, ptr nofree writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2176, !nonnull !177, !align !178 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2167
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2168 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !952  ; 2 uses
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !952
  %i.j = zext i32 %i.h to i64
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !872
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load i64, ptr %i.l, align 8, !tbaa !167  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 912
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1047
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK5clang9ASTReader19ReadModuleOffsetMapERNS_13serialization10ModuleFileE(ptr noundef nonnull align 8 dereferenceable(16376) %i.c, ptr noundef nonnull align 8 dereferenceable(3832) %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.extract.shift.i.i.i.i = lshr i64 %i.m, 32 ; 2 uses
  %i.q = icmp eq i64 %.sroa.4.0.extract.shift.i.i.i.i, 0
  br i1 %i.q, label %_ZN5clang13TypeLocReader18readSourceLocationEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 3688
  %i.s = add nuw nsw i64 %.sroa.4.0.extract.shift.i.i.i.i, 4294967295
  %i.t = and i64 %i.s, 4294967295
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !872
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !887
  br label %_ZN5clang13TypeLocReader18readSourceLocationEv.exit

_ZN5clang13TypeLocReader18readSourceLocationEv.exit: ; preds = %bb.c, %bb.d
  %i.x = phi ptr [ %i.w, %bb.d ], [ %i.e, %bb.c ]
  %i.y = trunc i64 %i.m to i32                    ; 3 uses
  %i.z = tail call i32 @llvm.fshl.i32(i32 %i.y, i32 %i.y, i32 31)
  %i.aa = icmp eq i32 %i.y, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 1712
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = add i32 %i.z, -2
  %i.ae = add i32 %i.ad, %i.ac
  %.sroa.0.0.i.i.i.i.i = select i1 %i.aa, i32 0, i32 %i.ae
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %2, align 4, !tbaa !952
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN5clang13TypeLocReader27VisitPredefinedSugarTypeLocENS_22PredefinedSugarTypeLocE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #7 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang15ASTRecordReader11readTypeLocENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.clang::TypeLocReader", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %0, ptr %3, align 8, !tbaa !2171
  %.not.i2 = icmp eq ptr %1, null
  br i1 %.not.i2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.04 = phi ptr [ %i.b, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.sroa.5.03 = phi ptr [ %i.c, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  call void @_ZN5clang14TypeLocVisitorINS_13TypeLocReaderEvE5VisitENS_7TypeLocE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr nonnull %.sroa.0.04, ptr %.sroa.5.03)
  %i.a = call { ptr, ptr } @_ZN5clang7TypeLoc18getNextTypeLocImplES0_(ptr nonnull %.sroa.0.04, ptr %.sroa.5.03) #36 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %._crit_edge, label %.lr.ph, !llvm.loop !39

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang14TypeLocVisitorINS_13TypeLocReaderEvE5VisitENS_7TypeLocE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = and i64 %i.a, 15
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit:       ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !2040
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i8, ptr %i.d, align 16
  switch i8 %i.e, label %bb.bb [
    i8 60, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread
    i8 0, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread
    i8 1, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread
    i8 2, label %bb.b
    i8 3, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread
    i8 4, label %bb.c
    i8 5, label %bb.d
    i8 6, label %bb.e
    i8 7, label %bb.f
    i8 8, label %bb.g
    i8 9, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread
    i8 10, label %bb.h
    i8 11, label %bb.i
    i8 12, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread
    i8 13, label %bb.j
    i8 14, label %bb.k
    i8 15, label %bb.l
    i8 16, label %bb.m
    i8 17, label %bb.n
    i8 18, label %bb.o
    i8 19, label %bb.p
    i8 20, label %bb.q
    i8 21, label %bb.r
    i8 22, label %bb.s
    i8 23, label %bb.t
    i8 24, label %bb.u
    i8 25, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread
    i8 26, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread
    i8 27, label %bb.v
    i8 28, label %bb.w
    i8 29, label %bb.x
    i8 30, label %bb.y
    i8 31, label %bb.z
    i8 32, label %bb.aa
    i8 33, label %bb.ab
    i8 34, label %bb.ac
    i8 35, label %bb.ad
    i8 36, label %bb.ae
    i8 37, label %bb.af
    i8 38, label %bb.ag
    i8 39, label %bb.ah
    i8 40, label %bb.ai
    i8 41, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread
    i8 42, label %bb.aj
    i8 43, label %bb.ak
    i8 44, label %bb.al
    i8 45, label %bb.am
    i8 46, label %bb.an
    i8 47, label %bb.ao
    i8 48, label %bb.ap
    i8 49, label %bb.aq
    i8 50, label %bb.ar
    i8 51, label %bb.as
    i8 52, label %bb.at
    i8 53, label %bb.au
    i8 54, label %bb.av
    i8 55, label %bb.aw
    i8 56, label %bb.ax
    i8 57, label %bb.ay
    i8 58, label %bb.az
    i8 59, label %bb.ba
  ]

bb.b:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang13TypeLocReader17VisitArrayTypeLocENS_12ArrayTypeLocE(ptr noundef nonnull readonly align 8 dereferenceable(8) %0, ptr nonnull readnone poison, ptr %2)
  br label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

bb.c:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang13TypeLocReader17VisitArrayTypeLocENS_12ArrayTypeLocE(ptr noundef nonnull readonly align 8 dereferenceable(8) %0, ptr nonnull readnone poison, ptr %2)
  br label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

bb.d:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang13TypeLocReader17VisitArrayTypeLocENS_12ArrayTypeLocE(ptr noundef nonnull readonly align 8 dereferenceable(8) %0, ptr nonnull readnone poison, ptr %2)
  br label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

bb.e:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang13TypeLocReader17VisitArrayTypeLocENS_12ArrayTypeLocE(ptr noundef nonnull readonly align 8 dereferenceable(8) %0, ptr nonnull readnone poison, ptr %2)
  br label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

bb.f:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang13TypeLocReader18VisitAtomicTypeLocENS_13AtomicTypeLocE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull poison, ptr %2)
  br label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

bb.g:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.f = load ptr, ptr %0, align 8, !tbaa !2176, !nonnull !177, !align !178
  %i.g = tail call noundef ptr @_ZN5clang15ASTRecordReader8readAttrEv(ptr noundef nonnull align 8 dereferenceable(560) %i.f) #36
  store ptr %i.g, ptr %2, align 8, !tbaa !2187
  br label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

bb.h:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang13TypeLocReader18VisitBitIntTypeLocENS_13BitIntTypeLocE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull poison, ptr %2)
  br label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

bb.i:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang13TypeLocReader24VisitBlockPointerTypeLocENS_19BlockPointerTypeLocE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull poison, ptr %2)
  br label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

bb.j:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang13TypeLocReader19VisitBuiltinTypeLocENS_14BuiltinTypeLocE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull %1, ptr %2)
  br label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

bb.k:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang13TypeLocReader19VisitComplexTypeLocENS_14ComplexTypeLocE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull poison, ptr %2)
  br label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

bb.l:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang13TypeLocReader20VisitDecltypeTypeLocENS_15DecltypeTypeLocE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull poison, ptr %2)
  br label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

bb.m:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang13TypeLocReader16VisitAutoTypeLocENS_11AutoTypeLocE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull poison, ptr %2)
  br label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

bb.n:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang13TypeLocReader41VisitDeducedTemplateSpecializationTypeLocENS_36DeducedTemplateSpecializationTypeLocE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull poison, ptr %2)
  br label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

bb.o:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang13TypeLocReader33VisitDependentAddressSpaceTypeLocENS_28DependentAddressSpaceTypeLocE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull poison, ptr %2)
  br label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

bb.p:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang13TypeLocReader27VisitDependentBitIntTypeLocENS_22DependentBitIntTypeLocE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull poison, ptr %2)
  br label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

bb.q:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang13TypeLocReader25VisitDependentNameTypeLocENS_20DependentNameTypeLocE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull poison, ptr %2)
  br label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

bb.r:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang13TypeLocReader35VisitDependentSizedExtVectorTypeLocENS_30DependentSizedExtVectorTypeLocE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull poison, ptr %2)
  br label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

bb.s:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang13TypeLocReader27VisitDependentVectorTypeLocENS_22DependentVectorTypeLocE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull poison, ptr %2)
  br label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

bb.t:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang13TypeLocReader20VisitFunctionTypeLocENS_15FunctionTypeLocE(ptr noundef nonnull readonly align 8 dereferenceable(8) %0, ptr nonnull readonly %1, ptr %2)
  br label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

bb.u:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang13TypeLocReader20VisitFunctionTypeLocENS_15FunctionTypeLocE(ptr noundef nonnull readonly align 8 dereferenceable(8) %0, ptr nonnull readonly %1, ptr %2)
  br label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

bb.v:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang13TypeLocReader26VisitMacroQualifiedTypeLocENS_21MacroQualifiedTypeLocE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull poison, ptr %2)
  br label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

bb.w:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang13TypeLocReader26VisitConstantMatrixTypeLocENS_21ConstantMatrixTypeLocE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull poison, ptr %2)
  br label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

bb.x:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang13TypeLocReader32VisitDependentSizedMatrixTypeLocENS_27DependentSizedMatrixTypeLocE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull poison, ptr %2)
  br label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

bb.y:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang13TypeLocReader25VisitMemberPointerTypeLocENS_20MemberPointerTypeLocE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull poison, ptr %2)
  br label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

bb.z:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang13TypeLocReader29VisitObjCObjectPointerTypeLocENS_24ObjCObjectPointerTypeLocE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull poison, ptr %2)
  br label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

bb.aa:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang13TypeLocReader22VisitObjCObjectTypeLocENS_17ObjCObjectTypeLocE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull %1, ptr %2)
  br label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

bb.ab:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang13TypeLocReader25VisitObjCInterfaceTypeLocENS_20ObjCInterfaceTypeLocE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull poison, ptr %2)
  br label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

bb.ac:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang13TypeLocReader25VisitObjCTypeParamTypeLocENS_20ObjCTypeParamTypeLocE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull %1, ptr %2)
  br label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

bb.ad:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang13TypeLocReader28VisitOverflowBehaviorTypeLocENS_23OverflowBehaviorTypeLocE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull poison, ptr %2)
  br label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

bb.ae:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang13TypeLocReader25VisitPackExpansionTypeLocENS_20PackExpansionTypeLocE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull poison, ptr %2)
  br label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

bb.af:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang13TypeLocReader24VisitPackIndexingTypeLocENS_19PackIndexingTypeLocE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull poison, ptr %2)
  br label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

bb.ag:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang13TypeLocReader17VisitParenTypeLocENS_12ParenTypeLocE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull poison, ptr %2)
  br label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

bb.ah:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang13TypeLocReader16VisitPipeTypeLocENS_11PipeTypeLocE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull poison, ptr %2)
  br label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

end_hunk_0
