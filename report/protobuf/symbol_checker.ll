inline.NumInlined: 381
inline.NumDeleted: 263
begin_hunk_0_@llvm.memcpy.p0.p0.i64
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6google8protobuf13SymbolCheckerC2EPKNS0_14FileDescriptorERKNS0_19FileDescriptorProtoE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(96) initializes((0, 1), (8, 96)) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(200) %2) unnamed_addr #3 align 2 {
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, i8 0, i64 72, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN6google8protobuf13SymbolChecker22IsEnumNamespaceMessageERKNS0_10DescriptorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !71
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.j = load i16, ptr %i.i, align 1
  %i.k = lshr i16 %i.j, 8
  %i.l = and i16 %i.k, 3                          ; 2 uses
  %i.m = icmp eq i16 %i.l, 1
  br i1 %i.m, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = add i32 %i.f, -3
  %i.o = icmp ult i32 %i.n, 2
  %i.p = icmp eq i16 %i.l, 0
  %i.q = and i1 %i.o, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load i32, ptr %i.r, align 8
  %.not12 = icmp eq i32 %i.s, 1
  %or.cond = select i1 %i.q, i1 %.not12, i1 false
  br i1 %or.cond, label %bb.d, label %bb.f

.critedge:                                        ; preds = %bb.b
  %.old = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.old13 = load i32, ptr %.old, align 8, !tbaa !72
  %.not12.old = icmp eq i32 %.old13, 1
  br i1 %.not12.old, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c, %.critedge
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !73   ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !74
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !76
  %i.z = icmp eq i32 %i.y, 536870912
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %.critedge, %bb.e, %bb.d, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ false, %.critedge ], [ false, %bb.d ], [ %i.z, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN6google8protobuf13SymbolChecker22IsEnumNamespaceMessageERKNS0_10DescriptorE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !82
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24
  %i.j = add i32 %i.i, -3
  %i.k = icmp ult i32 %i.j, 2
  br i1 %i.k, label %bb.c, label %_ZN6google8protobuf13SymbolChecker22IsEnumNamespaceMessageERKNS0_10DescriptorE.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.m = load i8, ptr %i.l, align 1
  %i.n = and i8 %i.m, 12
  %.not = icmp eq i8 %i.n, 8
  br i1 %.not, label %bb.d, label %_ZN6google8protobuf13SymbolChecker22IsEnumNamespaceMessageERKNS0_10DescriptorE.exit

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 160
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 68
  %i.t = load i32, ptr %i.s, align 4, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !71
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.e, label %_ZN6google8protobuf13SymbolChecker22IsEnumNamespaceMessageERKNS0_10DescriptorE.exit

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.x = load i16, ptr %i.w, align 1
  %i.y = lshr i16 %i.x, 8
  %i.z = and i16 %i.y, 3                          ; 2 uses
  %i.aa = icmp eq i16 %i.z, 1
  br i1 %i.aa, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = add i32 %i.t, -3
  %i.ac = icmp ult i32 %i.ab, 2
  %i.ad = icmp eq i16 %i.z, 0
  %i.ae = and i1 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.ag = load i32, ptr %i.af, align 8
  %.not12.i = icmp eq i32 %i.ag, 1
  %or.cond.i = select i1 %i.ae, i1 %.not12.i, i1 false
  br i1 %or.cond.i, label %bb.g, label %_ZN6google8protobuf13SymbolChecker22IsEnumNamespaceMessageERKNS0_10DescriptorE.exit

.critedge.i:                                      ; preds = %bb.e
  %.old.i = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %.old13.i = load i32, ptr %.old.i, align 8, !tbaa !72
  %.not12.old.i = icmp eq i32 %.old13.i, 1
  br i1 %.not12.old.i, label %bb.g, label %_ZN6google8protobuf13SymbolChecker22IsEnumNamespaceMessageERKNS0_10DescriptorE.exit

bb.g:                                             ; preds = %.critedge.i, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !73 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !74
  %i.ak = icmp eq i32 %i.aj, 1
  br i1 %i.ak, label %bb.h, label %_ZN6google8protobuf13SymbolChecker22IsEnumNamespaceMessageERKNS0_10DescriptorE.exit

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !76
  %i.an = icmp eq i32 %i.am, 536870912
  br label %_ZN6google8protobuf13SymbolChecker22IsEnumNamespaceMessageERKNS0_10DescriptorE.exit

_ZN6google8protobuf13SymbolChecker22IsEnumNamespaceMessageERKNS0_10DescriptorE.exit: ; preds = %bb.h, %bb.g, %.critedge.i, %bb.f, %bb.d, %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.f ], [ false, %.critedge.i ], [ false, %bb.g ], [ %i.an, %bb.h ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf13SymbolChecker10InitializeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.google::protobuf::internal::VisitImpl", align 8 ; 4 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !25, !range !83, !noundef !84
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !85, !nonnull !84, !align !86 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  store ptr %0, ptr %1, align 8, !tbaa !87
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !89
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i, label %.preheader38.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  br label %bb.c

.preheader38.i.i:                                 ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 68 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !90
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph41.i.i, label %"_ZN6google8protobuf8internal16VisitDescriptorsIZNS0_13SymbolChecker10InitializeEvE3$_0EEvRKNS0_14FileDescriptorERKNS0_19FileDescriptorProtoET_.exit"

.lr.ph41.i.i:                                     ; preds = %.preheader38.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.c ] ; 3 uses
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !91
  %i.r = getelementptr inbounds nuw [160 x i8], ptr %i.q, i64 %indvars.iv.i.i
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !92
  %i.t = ptrtoint ptr %i.s to i64                 ; 2 uses
  %2 = trunc nuw i64 %i.t to i1
  %i.u = add i64 %i.t, -1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i.i
  %.0.i.i.i.i.i.i.i.i = select i1 %2, ptr %i.x, ptr %i.k
  %i.y = load ptr, ptr %.0.i.i.i.i.i.i.i.i, align 8, !tbaa !95
  call fastcc void @"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_13SymbolChecker10InitializeEvE3$_0EEE5VisitIJKNS0_15DescriptorProtoEEEEvRKNS0_10DescriptorEDpRT_"(ptr noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(160) %i.r, ptr noundef nonnull align 8 dereferenceable(176) %i.y)
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.z = load i32, ptr %i.g, align 8, !tbaa !89
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i64 %indvars.iv.next.i.i, %i.aa
  br i1 %i.ab, label %bb.c, label %.preheader38.i.i, !llvm.loop !96

bb.d:                                             ; preds = %bb.d, %.lr.ph41.i.i
  %indvars.iv43.i.i = phi i64 [ 0, %.lr.ph41.i.i ], [ %indvars.iv.next44.i.i, %bb.d ] ; 3 uses
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !98
  %i.ad = getelementptr inbounds nuw [88 x i8], ptr %i.ac, i64 %indvars.iv43.i.i
  %i.ae = load ptr, ptr %i.p, align 8, !tbaa !92
  %i.af = ptrtoint ptr %i.ae to i64               ; 2 uses
  %3 = trunc nuw i64 %i.af to i1
  %i.ag = add i64 %i.af, -1
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv43.i.i
  %.0.i.i.i.i.i.i35.i.i = select i1 %3, ptr %i.aj, ptr %i.p
  %i.ak = load ptr, ptr %.0.i.i.i.i.i.i35.i.i, align 8, !tbaa !95
  tail call fastcc void @"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_13SymbolChecker10InitializeEvE3$_0EEE5VisitIJKNS0_19EnumDescriptorProtoEEEEvRKNS0_14EnumDescriptorEDpRT_"(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(88) %i.ad, ptr noundef nonnull align 8 dereferenceable(96) %i.ak)
  %indvars.iv.next44.i.i = add nuw nsw i64 %indvars.iv43.i.i, 1 ; 2 uses
  %i.al = load i32, ptr %i.l, align 4, !tbaa !90
  %i.am = sext i32 %i.al to i64
  %i.an = icmp slt i64 %indvars.iv.next44.i.i, %i.am
  br i1 %i.an, label %bb.d, label %"_ZN6google8protobuf8internal16VisitDescriptorsIZNS0_13SymbolChecker10InitializeEvE3$_0EEvRKNS0_14FileDescriptorERKNS0_19FileDescriptorProtoET_.exit", !llvm.loop !99

"_ZN6google8protobuf8internal16VisitDescriptorsIZNS0_13SymbolChecker10InitializeEvE3$_0EEvRKNS0_14FileDescriptorERKNS0_19FileDescriptorProtoET_.exit": ; preds = %bb.d, %.preheader38.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  store i8 1, ptr %0, align 8, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %"_ZN6google8protobuf8internal16VisitDescriptorsIZNS0_13SymbolChecker10InitializeEvE3$_0EEvRKNS0_14FileDescriptorERKNS0_19FileDescriptorProtoET_.exit"
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf13SymbolChecker26CheckSymbolVisibilityRulesEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.16") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.google::protobuf::internal::VisitImpl", align 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load i8, ptr %1, align 8, !tbaa !25, !range !83, !noundef !84
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN6google8protobuf13SymbolChecker10InitializeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !85, !nonnull !84, !align !86 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store ptr %1, ptr %2, align 8, !tbaa !87
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !89
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i.i, label %.preheader38.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  br label %.noexc

.preheader38.i.i.i:                               ; preds = %.noexc, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 68 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !90
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph41.i.i.i, label %"_ZN6google8protobuf8internal16VisitDescriptorsIZNS0_13SymbolChecker10InitializeEvE3$_0EEvRKNS0_14FileDescriptorERKNS0_19FileDescriptorProtoET_.exit.i"

.lr.ph41.i.i.i:                                   ; preds = %.preheader38.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  br label %.noexc24

.noexc:                                           ; preds = %.noexc, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %.noexc ] ; 3 uses
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !91
  %i.r = getelementptr inbounds nuw [160 x i8], ptr %i.q, i64 %indvars.iv.i.i.i
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !92
  %i.t = ptrtoint ptr %i.s to i64                 ; 2 uses
  %3 = trunc nuw i64 %i.t to i1
  %i.u = add i64 %i.t, -1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i.i.i
  %.0.i.i.i.i.i.i.i.i.i = select i1 %3, ptr %i.x, ptr %i.k
  %i.y = load ptr, ptr %.0.i.i.i.i.i.i.i.i.i, align 8, !tbaa !95
  call fastcc void @"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_13SymbolChecker10InitializeEvE3$_0EEE5VisitIJKNS0_15DescriptorProtoEEEEvRKNS0_10DescriptorEDpRT_"(ptr noundef nonnull readonly align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(160) %i.r, ptr noundef nonnull align 8 dereferenceable(176) %i.y)
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.z = load i32, ptr %i.g, align 8, !tbaa !89
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i64 %indvars.iv.next.i.i.i, %i.aa
  br i1 %i.ab, label %.noexc, label %.preheader38.i.i.i, !llvm.loop !96

.noexc24:                                         ; preds = %.noexc24, %.lr.ph41.i.i.i
  %indvars.iv43.i.i.i = phi i64 [ 0, %.lr.ph41.i.i.i ], [ %indvars.iv.next44.i.i.i, %.noexc24 ] ; 3 uses
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !98
  %i.ad = getelementptr inbounds nuw [88 x i8], ptr %i.ac, i64 %indvars.iv43.i.i.i
  %i.ae = load ptr, ptr %i.p, align 8, !tbaa !92
  %i.af = ptrtoint ptr %i.ae to i64               ; 2 uses
  %4 = trunc nuw i64 %i.af to i1
  %i.ag = add i64 %i.af, -1
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv43.i.i.i
  %.0.i.i.i.i.i.i35.i.i.i = select i1 %4, ptr %i.aj, ptr %i.p
  %i.ak = load ptr, ptr %.0.i.i.i.i.i.i35.i.i.i, align 8, !tbaa !95
  tail call fastcc void @"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_13SymbolChecker10InitializeEvE3$_0EEE5VisitIJKNS0_19EnumDescriptorProtoEEEEvRKNS0_14EnumDescriptorEDpRT_"(ptr nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(88) %i.ad, ptr noundef nonnull align 8 dereferenceable(96) %i.ak)
  %indvars.iv.next44.i.i.i = add nuw nsw i64 %indvars.iv43.i.i.i, 1 ; 2 uses
  %i.al = load i32, ptr %i.l, align 4, !tbaa !90
  %i.am = sext i32 %i.al to i64
  %i.an = icmp slt i64 %indvars.iv.next44.i.i.i, %i.am
  br i1 %i.an, label %.noexc24, label %"_ZN6google8protobuf8internal16VisitDescriptorsIZNS0_13SymbolChecker10InitializeEvE3$_0EEvRKNS0_14FileDescriptorERKNS0_19FileDescriptorProtoET_.exit.i", !llvm.loop !99

"_ZN6google8protobuf8internal16VisitDescriptorsIZNS0_13SymbolChecker10InitializeEvE3$_0EEvRKNS0_14FileDescriptorERKNS0_19FileDescriptorProtoET_.exit.i": ; preds = %.noexc24, %.preheader38.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  store i8 1, ptr %1, align 8, !tbaa !25
  br label %_ZN6google8protobuf13SymbolChecker10InitializeEv.exit

_ZN6google8protobuf13SymbolChecker10InitializeEv.exit: ; preds = %"_ZN6google8protobuf8internal16VisitDescriptorsIZNS0_13SymbolChecker10InitializeEvE3$_0EEvRKNS0_14FileDescriptorERKNS0_19FileDescriptorProtoET_.exit.i", %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !100 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !100 ; 2 uses
  %.not93 = icmp eq ptr %i.ap, %i.ar
  br i1 %.not93, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6google8protobuf13SymbolChecker10InitializeEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit, %_ZN6google8protobuf13SymbolChecker10InitializeEv.exit
  %i.au = phi ptr [ null, %_ZN6google8protobuf13SymbolChecker10InitializeEv.exit ], [ %i.co, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit ]
  %i.av = phi ptr [ null, %_ZN6google8protobuf13SymbolChecker10InitializeEv.exit ], [ %i.cp, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit ]
  %.lcssa90 = phi ptr [ null, %_ZN6google8protobuf13SymbolChecker10InitializeEv.exit ], [ %i.cq, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  store ptr %.lcssa90, ptr %0, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !101 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !101 ; 2 uses
  %.not7899 = icmp eq ptr %i.ax, %i.az
  br i1 %.not7899, label %._crit_edge103, label %.lr.ph102

.lr.ph102:                                        ; preds = %._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.j

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit
  %i.bc = phi ptr [ null, %.lr.ph ], [ %i.co, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit ] ; 9 uses
  %i.bd = phi ptr [ null, %.lr.ph ], [ %i.cp, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit ] ; 8 uses
  %.sroa.075.094 = phi ptr [ %i.ap, %.lr.ph ], [ %i.cr, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  %i.be = phi ptr [ null, %.lr.ph ], [ %i.cq, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit ] ; 12 uses
  %i.bf = load ptr, ptr %.sroa.075.094, align 8, !tbaa !102 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bh = load i16, ptr %i.bg, align 1
  %i.bi = and i16 %i.bh, 768
  %i.bj = icmp eq i16 %i.bi, 512
  br i1 %i.bj, label %bb.d, label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !105
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 68
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !24
  %i.bo = icmp eq i32 %i.bn, 4
  br i1 %i.bo, label %bb.e, label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit

bb.e:                                             ; preds = %bb.d
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !106 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  %.0.copyload.i.i.i = load i16, ptr %i.br, align 1
  %i.bs = zext i16 %.0.copyload.i.i.i to i64      ; 3 uses
  %i.bt = xor i64 %i.bs, -1
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.075.094, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !107 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bd, %i.bc
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %i.bs, ptr %i.bd, align 8, !tbaa !15
  %.sroa.662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.bu, ptr %.sroa.662.0..sroa_idx, align 8, !tbaa !16
  %.sroa.765.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr %i.bw, ptr %.sroa.765.0..sroa_idx, align 8, !tbaa !108
  %.sroa.868.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store i32 0, ptr %.sroa.868.0..sroa_idx, align 8, !tbaa !109
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bd, i64 32 ; 2 uses
  store ptr %i.bx, ptr %i.as, align 8, !tbaa !110
  br label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.by = ptrtoint ptr %i.bc to i64
  %i.bz = ptrtoint ptr %i.be to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 4 uses
  %i.cb = icmp eq i64 %i.ca, 9223372036854775776
  br i1 %i.cb, label %bb.h, label %_ZNKSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.be, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #12
          to label %.noexc25 unwind label %.loopexit.split-lp80

.noexc25:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.cc = ashr exact i64 %i.ca, 5                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cc, i64 1)
  %i.cd = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cc ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %i.cc
  %i.cf = tail call i64 @llvm.umin.i64(i64 %i.cd, i64 288230376151711743)
  %i.cg = select i1 %i.ce, i64 288230376151711743, i64 %i.cf ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ch = shl nuw nsw i64 %i.cg, 5
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #13
          to label %.noexc26 unwind label %.loopexit79 ; 5 uses

.noexc26:                                         ; preds = %_ZNKSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ca ; 4 uses
  store i64 %i.bs, ptr %i.cj, align 8, !tbaa !15
  %.sroa.662.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.bu, ptr %.sroa.662.0..sroa_idx63, align 8, !tbaa !16
  %.sroa.765.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store ptr %i.bw, ptr %.sroa.765.0..sroa_idx66, align 8, !tbaa !108
  %.sroa.868.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store i32 0, ptr %.sroa.868.0..sroa_idx69, align 8, !tbaa !109
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.be, %i.bc
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc26, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i ], [ %i.ci, %.noexc26 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i ], [ %i.be, %.noexc26 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !113, !alias.scope !114
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ck, %i.bc
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !118

_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc26
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ci, %.noexc26 ], [ %i.cl, %.lr.ph.i.i.i.i.i.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.ca) #14
  br label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.cm, ptr %i.as, align 8, !tbaa !110
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.ci, i64 %i.cg ; 2 uses
  store ptr %i.cn, ptr %i.at, align 8, !tbaa !119
  br label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit

.loopexit79:                                      ; preds = %_ZNKSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit81 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.be, ptr %0, align 8
  br label %bb.q

.loopexit.split-lp80:                             ; preds = %bb.h
  %lpad.loopexit.split-lp82 = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.f, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.d, %bb.c
  %i.co = phi ptr [ %i.bc, %bb.f ], [ %i.cn, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.bc, %bb.d ], [ %i.bc, %bb.c ] ; 2 uses
  %i.cp = phi ptr [ %i.bx, %bb.f ], [ %i.cm, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.bd, %bb.d ], [ %i.bd, %bb.c ] ; 2 uses
  %i.cq = phi ptr [ %i.be, %bb.f ], [ %i.ci, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.be, %bb.d ], [ %i.be, %bb.c ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.075.094, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.cr, %i.ar
  br i1 %.not, label %._crit_edge, label %bb.c

._crit_edge103:                                   ; preds = %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46, %._crit_edge
  %.lcssa96 = phi ptr [ %.lcssa90, %._crit_edge ], [ %i.eg, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46 ]
  store ptr %.lcssa96, ptr %0, align 8
  ret void

bb.j:                                             ; preds = %.lr.ph102, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46
  %i.cs = phi ptr [ %i.au, %.lr.ph102 ], [ %i.ee, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46 ] ; 9 uses
  %i.ct = phi ptr [ %i.av, %.lr.ph102 ], [ %i.ef, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46 ] ; 8 uses
  %.sroa.057.0100 = phi ptr [ %i.ax, %.lr.ph102 ], [ %i.eh, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46 ] ; 3 uses
  %i.cu = phi ptr [ %.lcssa90, %.lr.ph102 ], [ %i.eg, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46 ] ; 12 uses
  %i.cv = load ptr, ptr %.sroa.057.0100, align 8, !tbaa !120 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.cx = load i8, ptr %i.cw, align 1
  %i.cy = and i8 %i.cx, 12
  %i.cz = icmp eq i8 %i.cy, 8
  br i1 %i.cz, label %bb.k, label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46

bb.k:                                             ; preds = %bb.j
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !123
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 68
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !24
  %i.de = icmp eq i32 %i.dd, 4
  br i1 %i.de, label %bb.l, label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46

bb.l:                                             ; preds = %bb.k
  %i.df = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !106 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf13SymbolChecker26CheckSymbolVisibilityRulesEv:bb.a

bb.o:                                             ; preds = %bb.n
  store ptr %i.cu, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #12
          to label %.noexc44 unwind label %.loopexit.split-lp

.noexc44:                                         ; preds = %bb.o
  unreachable

_ZNKSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i32: ; preds = %bb.n
  %i.ds = ashr exact i64 %i.dq, 5                 ; 3 uses
  %.sroa.speculated.i.i.i.i33 = tail call i64 @llvm.umax.i64(i64 %i.ds, i64 1)
  %i.dt = add nsw i64 %.sroa.speculated.i.i.i.i33, %i.ds ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.ds
  %i.dv = tail call i64 @llvm.umin.i64(i64 %i.dt, i64 288230376151711743)
  %i.dw = select i1 %i.du, i64 288230376151711743, i64 %i.dv ; 3 uses
  %.not.i.i.i.i34 = icmp ne i64 %i.dw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i34)
  %i.dx = shl nuw nsw i64 %i.dw, 5
  %i.dy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dx) #13
          to label %.noexc45 unwind label %.loopexit ; 5 uses

.noexc45:                                         ; preds = %_ZNKSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i32
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dq ; 4 uses
  store i64 %i.di, ptr %i.dz, align 8, !tbaa !15
  %.sroa.6.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store ptr %i.dk, ptr %.sroa.6.0..sroa_idx48, align 8, !tbaa !16
  %.sroa.7.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store ptr %i.dm, ptr %.sroa.7.0..sroa_idx50, align 8, !tbaa !108
  %.sroa.8.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  store i32 1, ptr %.sroa.8.0..sroa_idx52, align 8, !tbaa !109
  %.not10.i.i.i.i.i.i35 = icmp eq ptr %i.cu, %i.cs
  br i1 %.not10.i.i.i.i.i.i35, label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i40, label %.lr.ph.i.i.i.i.i.i36

.lr.ph.i.i.i.i.i.i36:                             ; preds = %.noexc45, %.lr.ph.i.i.i.i.i.i36
  %.012.i.i.i.i.i.i37 = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i.i36 ], [ %i.dy, %.noexc45 ] ; 2 uses
  %.0911.i.i.i.i.i.i38 = phi ptr [ %i.ea, %.lr.ph.i.i.i.i.i.i36 ], [ %i.cu, %.noexc45 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i.i37, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i.i38, i64 32, i1 false), !tbaa.struct !113, !alias.scope !125
  %i.ea = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i38, i64 32 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i37, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i39 = icmp eq ptr %i.ea, %i.cs
  br i1 %.not.i.i.i.i.i.i39, label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i40, label %.lr.ph.i.i.i.i.i.i36, !llvm.loop !118

_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i40: ; preds = %.lr.ph.i.i.i.i.i.i36, %.noexc45
  %.0.lcssa.i.i.i.i.i.i41 = phi ptr [ %i.dy, %.noexc45 ], [ %i.eb, %.lr.ph.i.i.i.i.i.i36 ]
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i41, i64 32 ; 2 uses
  %.not.i23.i.i.i42 = icmp eq ptr %i.cu, null
  br i1 %.not.i23.i.i.i42, label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i43, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i40
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.dq) #14
  br label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i43

_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i43: ; preds = %bb.p, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i40
  store ptr %i.ec, ptr %i.ba, align 8, !tbaa !110
  %i.ed = getelementptr inbounds nuw [32 x i8], ptr %i.dy, i64 %i.dw ; 2 uses
  store ptr %i.ed, ptr %i.bb, align 8, !tbaa !119
  br label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i32
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.cu, ptr %0, align 8
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46: ; preds = %bb.m, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i43, %bb.k, %bb.j
  %i.ee = phi ptr [ %i.cs, %bb.m ], [ %i.ed, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i43 ], [ %i.cs, %bb.k ], [ %i.cs, %bb.j ]
  %i.ef = phi ptr [ %i.dn, %bb.m ], [ %i.ec, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i43 ], [ %i.ct, %bb.k ], [ %i.ct, %bb.j ]
  %i.eg = phi ptr [ %i.cu, %bb.m ], [ %i.dy, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i43 ], [ %i.cu, %bb.k ], [ %i.cu, %bb.j ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.057.0100, i64 16 ; 2 uses
  %.not78 = icmp eq ptr %i.eh, %i.az
  br i1 %.not78, label %._crit_edge103, label %bb.j

bb.q:                                             ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit79, %.loopexit.split-lp80
  %i.ei = phi ptr [ %i.cs, %.loopexit ], [ %i.bc, %.loopexit.split-lp80 ], [ %i.cs, %.loopexit.split-lp ], [ %i.bc, %.loopexit79 ]
  %i.ej = phi ptr [ %i.cu, %.loopexit ], [ %i.be, %.loopexit.split-lp80 ], [ %i.cu, %.loopexit.split-lp ], [ %i.be, %.loopexit79 ] ; 3 uses
  %.pn21.pn = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp82, %.loopexit.split-lp80 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit81, %.loopexit79 ]
  %.not.i.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef %i.em) #14
  br label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EED2Ev.exit

_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EED2Ev.exit: ; preds = %bb.q, %bb.r
  resume { ptr, i32 } %.pn21.pn
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN4absl12lts_2025051216strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_13SymbolChecker10InitializeEvE3$_0EEE5VisitIJKNS0_15DescriptorProtoEEEEvRKNS0_10DescriptorEDpRT_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull align 8 dereferenceable(176) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !129   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !71
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_10DescriptorENS0_15DescriptorProtoEEEDaRKT_RKT0_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !131  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !132
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %1, ptr %i.e, align 8, !tbaa !133
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !134
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.h, ptr %i.d, align 8, !tbaa !131
  br label %"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_10DescriptorENS0_15DescriptorProtoEEEDaRKT_RKT0_.exit"

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !135  ; 4 uses
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 6 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775792
  br i1 %i.m, label %bb.e, label %_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #12
  unreachable

_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.d
  %i.n = ashr exact i64 %i.l, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 576460752303423487)
  %i.r = select i1 %i.p, i64 576460752303423487, i64 %i.q ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 4
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #13 ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.l ; 3 uses
  store ptr %1, ptr %i.u, align 8, !tbaa !133
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx5.i.i, align 8, !tbaa !134
  %i.v = icmp sgt i64 %i.l, 0
  br i1 %i.v, label %bb.f, label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.i, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i

_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #14
  br label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i
  store ptr %i.t, ptr %i.a, align 8, !tbaa !135
  store ptr %i.w, ptr %i.d, align 8, !tbaa !131
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.r
  store ptr %i.x, ptr %i.f, align 8, !tbaa !132
  br label %"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_10DescriptorENS0_15DescriptorProtoEEEDaRKT_RKT0_.exit"

"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_10DescriptorENS0_15DescriptorProtoEEEDaRKT_RKT0_.exit": ; preds = %bb.a, %bb.c, %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 140 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !136
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph, label %.preheader55

.lr.ph:                                           ; preds = %"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_10DescriptorENS0_15DescriptorProtoEEEDaRKT_RKT0_.exit"
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  br label %bb.h

.preheader55:                                     ; preds = %bb.h, %"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_10DescriptorENS0_15DescriptorProtoEEEDaRKT_RKT0_.exit"
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !137
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph58, label %.preheader52

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !138
  %i.ah = getelementptr inbounds nuw [88 x i8], ptr %i.ag, i64 %indvars.iv
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !92
  %i.aj = ptrtoint ptr %i.ai to i64               ; 2 uses
  %3 = trunc nuw i64 %i.aj to i1
  %i.ak = add i64 %i.aj, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv
  %.0.i.i.i.i.i.i = select i1 %3, ptr %i.an, ptr %i.ac
  %i.ao = load ptr, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !95
  %.val49 = load ptr, ptr %0, align 8, !tbaa !129
  tail call fastcc void @"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_13SymbolChecker10InitializeEvE3$_0EEE5VisitIJKNS0_19EnumDescriptorProtoEEEEvRKNS0_14EnumDescriptorEDpRT_"(ptr %.val49, ptr noundef nonnull align 8 dereferenceable(88) %i.ah, ptr noundef nonnull align 8 dereferenceable(96) %i.ao)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ap = load i32, ptr %i.y, align 4, !tbaa !136
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next, %i.aq
  br i1 %i.ar, label %bb.h, label %.preheader55, !llvm.loop !139

.lr.ph58:                                         ; preds = %.preheader55
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  br label %bb.i

.preheader52:                                     ; preds = %bb.i, %.preheader55
  ret void

bb.i:                                             ; preds = %.lr.ph58, %bb.i
  %indvars.iv60 = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next61, %bb.i ] ; 3 uses
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !140
  %i.av = getelementptr inbounds nuw [160 x i8], ptr %i.au, i64 %indvars.iv60
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !92
  %i.ax = ptrtoint ptr %i.aw to i64               ; 2 uses
  %4 = trunc nuw i64 %i.ax to i1
  %i.ay = add i64 %i.ax, -1
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv60
  %.0.i.i.i.i.i.i50 = select i1 %4, ptr %i.bb, ptr %i.at
  %i.bc = load ptr, ptr %.0.i.i.i.i.i.i50, align 8, !tbaa !95
  tail call fastcc void @"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_13SymbolChecker10InitializeEvE3$_0EEE5VisitIJKNS0_15DescriptorProtoEEEEvRKNS0_10DescriptorEDpRT_"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.av, ptr noundef nonnull align 8 dereferenceable(176) %i.bc)
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %i.bd = load i32, ptr %i.ad, align 8, !tbaa !137
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp slt i64 %indvars.iv.next61, %i.be
  br i1 %i.bf, label %bb.i, label %.preheader52, !llvm.loop !141
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_13SymbolChecker10InitializeEvE3$_0EEE5VisitIJKNS0_19EnumDescriptorProtoEEEEvRKNS0_14EnumDescriptorEDpRT_"(ptr nofree captures(none) %.0.val, ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 7 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_14EnumDescriptorENS0_19EnumDescriptorProtoEEEDaRKT_RKT0_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !82
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  %i.h = load i32, ptr %i.g, align 4, !tbaa !24
  %i.i = add i32 %i.h, -3
  %i.j = icmp ult i32 %i.i, 2
  br i1 %i.j, label %bb.c, label %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.l = load i8, ptr %i.k, align 1
  %i.m = and i8 %i.l, 12
  %.not.i.i.i = icmp eq i8 %i.m, 8
  br i1 %.not.i.i.i, label %bb.d, label %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.thread.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 160
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 68
  %i.s = load i32, ptr %i.r, align 4, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !71
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.thread.i.i

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.w = load i16, ptr %i.v, align 1
  %i.x = lshr i16 %i.w, 8
  %i.y = and i16 %i.x, 3                          ; 2 uses
  %i.z = icmp eq i16 %i.y, 1
  br i1 %i.z, label %.critedge.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = add i32 %i.s, -3
  %i.ab = icmp ult i32 %i.aa, 2
  %i.ac = icmp eq i16 %i.y, 0
  %i.ad = and i1 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.af = load i32, ptr %i.ae, align 8
  %.not12.i.i.i.i = icmp eq i32 %i.af, 1
  %or.cond.i.i.i.i = select i1 %i.ad, i1 %.not12.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.g, label %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.thread.i.i

.critedge.i.i.i.i:                                ; preds = %bb.e
  %.old.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %.old13.i.i.i.i = load i32, ptr %.old.i.i.i.i, align 8, !tbaa !72
  %.not12.old.i.i.i.i = icmp eq i32 %.old13.i.i.i.i, 1
  br i1 %.not12.old.i.i.i.i, label %bb.g, label %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.thread.i.i

bb.g:                                             ; preds = %.critedge.i.i.i.i, %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !73 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !74
  %i.aj = icmp eq i32 %i.ai, 1
  br i1 %i.aj, label %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.i.i, label %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.thread.i.i

_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.i.i: ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !76
  %i.am = icmp eq i32 %i.al, 536870912
  br i1 %i.am, label %bb.h, label %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.thread.i.i

bb.h:                                             ; preds = %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.0.val, i64 72 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.val, i64 80 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !142 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.val, i64 88 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !143
  %.not.i.i8.i.i = icmp eq ptr %i.ap, %i.ar
  br i1 %.not.i.i8.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %0, ptr %i.ap, align 8, !tbaa !144
  %.sroa.522.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %1, ptr %.sroa.522.0..sroa_idx.i.i, align 8, !tbaa !145
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !142
  br label %"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_14EnumDescriptorENS0_19EnumDescriptorProtoEEEDaRKT_RKT0_.exit"

bb.j:                                             ; preds = %bb.h
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !146 ; 4 uses
  %i.au = ptrtoint ptr %i.ap to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 6 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775792
  br i1 %i.ax, label %bb.k, label %_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #12
  unreachable

_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ay = ashr exact i64 %i.aw, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.az = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.ay ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = tail call i64 @llvm.umin.i64(i64 %i.az, i64 576460752303423487)
  %i.bc = select i1 %i.ba, i64 576460752303423487, i64 %i.bb ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.bc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.bd = shl nuw nsw i64 %i.bc, 4
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #13 ; 4 uses
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %i.aw ; 3 uses
  store ptr %0, ptr %i.bf, align 8, !tbaa !144
  %.sroa.522.0..sroa_idx23.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %1, ptr %.sroa.522.0..sroa_idx23.i.i, align 8, !tbaa !145
  %i.bg = icmp sgt i64 %i.aw, 0
  br i1 %i.bg, label %bb.l, label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.be, ptr align 8 %i.at, i64 %i.aw, i1 false)
  br label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i

_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.aw) #14
  br label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i: ; preds = %bb.m, %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i
  store ptr %i.be, ptr %i.an, align 8, !tbaa !146
  store ptr %i.bh, ptr %i.ao, align 8, !tbaa !142
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.bc
  store ptr %i.bi, ptr %i.aq, align 8, !tbaa !143
  br label %"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_14EnumDescriptorENS0_19EnumDescriptorProtoEEEDaRKT_RKT0_.exit"

_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.thread.i.i: ; preds = %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.i.i, %bb.g, %.critedge.i.i.i.i, %bb.f, %bb.d, %bb.c, %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.val, i64 56 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !142 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.val, i64 64 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !143
  %.not.i.i9.i.i = icmp eq ptr %i.bl, %i.bn
  br i1 %.not.i.i9.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.thread.i.i
  store ptr %0, ptr %i.bl, align 8, !tbaa !144
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !145
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store ptr %i.bo, ptr %i.bk, align 8, !tbaa !142
  br label %"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_14EnumDescriptorENS0_19EnumDescriptorProtoEEEDaRKT_RKT0_.exit"

bb.o:                                             ; preds = %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.thread.i.i
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !146 ; 4 uses
  %i.bq = ptrtoint ptr %i.bl to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br                    ; 6 uses
  %i.bt = icmp eq i64 %i.bs, 9223372036854775792
  br i1 %i.bt, label %bb.p, label %_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i10.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #12
  unreachable

_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i10.i.i: ; preds = %bb.o
  %i.bu = ashr exact i64 %i.bs, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i11.i.i = tail call i64 @llvm.umax.i64(i64 %i.bu, i64 1)
  %i.bv = add nsw i64 %.sroa.speculated.i.i.i.i11.i.i, %i.bu ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bu
  %i.bx = tail call i64 @llvm.umin.i64(i64 %i.bv, i64 576460752303423487)
  %i.by = select i1 %i.bw, i64 576460752303423487, i64 %i.bx ; 3 uses
  %.not.i.i.i.i12.i.i = icmp ne i64 %i.by, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i12.i.i)
  %i.bz = shl nuw nsw i64 %i.by, 4
  %i.ca = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #13 ; 4 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bs ; 3 uses
  store ptr %0, ptr %i.cb, align 8, !tbaa !144
  %.sroa.5.0..sroa_idx18.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %1, ptr %.sroa.5.0..sroa_idx18.i.i, align 8, !tbaa !145
  %i.cc = icmp sgt i64 %i.bs, 0
  br i1 %i.cc, label %bb.q, label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i13.i.i

bb.q:                                             ; preds = %_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i10.i.i
end_hunk_1
