Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TargetLowering?download=true
inline.NumInlined: 10476
inline.NumDeleted: 2372
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4llvm18TargetLoweringBaseD2Ev
; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm14TargetLoweringD2Ev(ptr noundef nonnull align 8 dead_on_return(518435) dereferenceable(518435) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4llvm18TargetLoweringBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(518435) dereferenceable(518435) %0) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm14TargetLoweringD0Ev(ptr noundef nonnull align 8 dereferenceable(518435) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4llvm14TargetLoweringD1Ev(ptr noundef nonnull align 8 dead_on_return(518435) dereferenceable(518435) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 518440) #29
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK4llvm14TargetLowering17getTargetNodeNameEj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1) unnamed_addr #4 align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm14TargetLowering21isPositionIndependentEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518435) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10, !nonnull !41, !align !42
  %i.c = tail call noundef zeroext i1 @_ZNK4llvm13TargetMachine21isPositionIndependentEv(ptr noundef nonnull align 8 dereferenceable(1728) %i.b) #28
  ret i1 %i.c
}

declare noundef zeroext i1 @_ZNK4llvm13TargetMachine21isPositionIndependentEv(ptr noundef nonnull align 8 dereferenceable(1728)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm14TargetLowering20isInTailCallPositionERNS_12SelectionDAGEPNS_6SDNodeERNS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(920) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::Attribute", align 8   ; 4 uses
  %5 = alloca %"class.llvm::AttrBuilder", align 8 ; 16 uses
  %6 = alloca %"class.llvm::AttributeList", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !140, !nonnull !41, !align !42 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.d = tail call ptr @_ZNK4llvm8Function14getFnAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(140) %i.c, ptr nonnull @.str, i64 18) #28
  store ptr %i.d, ptr %4, align 8
  %i.e = call noundef zeroext i1 @_ZNK4llvm9Attribute14getValueAsBoolEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %i.e, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.f = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %.sroa.0.0.copyload.i = load ptr, ptr %i.g, align 8, !tbaa !239
  store ptr %.sroa.0.0.copyload.i, ptr %6, align 8
  %i.h = call ptr @_ZNK4llvm13AttributeList11getRetAttrsEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #28
  call void @_ZN4llvm11AttrBuilderC1ERNS_11LLVMContextENS_12AttributeSetE(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr %i.h) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.i = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder15removeAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %5, i32 noundef 91) #28 ; 0 uses
  %i.j = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder15removeAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %5, i32 noundef 97) #28 ; 0 uses
  %i.k = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder15removeAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %5, i32 noundef 98) #28 ; 0 uses
  %i.l = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder15removeAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %5, i32 noundef 23) #28 ; 0 uses
  %i.m = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder15removeAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %5, i32 noundef 47) #28 ; 0 uses
  %i.n = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder15removeAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %5, i32 noundef 44) #28 ; 0 uses
  %i.o = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder15removeAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %5, i32 noundef 104) #28 ; 0 uses
  %i.p = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder15removeAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %5, i32 noundef 100) #28 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !241
  %.not.i.i.not = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.s = call noundef zeroext i1 @_ZNK4llvm11AttrBuilder8containsENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %5, i32 noundef 84) #28
  br i1 %i.s, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = call noundef zeroext i1 @_ZNK4llvm11AttrBuilder8containsENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %5, i32 noundef 58) #28
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %0, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2376
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(12) %3) #28
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.e
  %.0 = phi i1 [ %i.x, %bb.e ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !242  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN4llvm11AttrBuilderD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %i.z) #28
  br label %_ZN4llvm11AttrBuilderD2Ev.exit

_ZN4llvm11AttrBuilderD2Ev.exit:                   ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN4llvm11AttrBuilderD2Ev.exit
  %.1 = phi i1 [ %.0, %_ZN4llvm11AttrBuilderD2Ev.exit ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

declare ptr @_ZNK4llvm8Function14getFnAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(140), ptr, i64) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4llvm9Attribute14getValueAsBoolEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #1

declare ptr @_ZNK4llvm13AttributeList11getRetAttrsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN4llvm11AttrBuilderC1ERNS_11LLVMContextENS_12AttributeSetE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(8), ptr) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

declare noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder15removeAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4llvm11AttrBuilder8containsENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm14TargetLowering20parametersInCSRMatchERKNS_19MachineRegisterInfoEPKjRKNS_15SmallVectorImplINS_11CCValAssignEEERKNS6_INS_7SDValueEEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(520) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !241  ; 2 uses
  %.not37 = icmp eq i32 %i.b, 0
  br i1 %.not37, label %.thread34, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = zext i32 %i.b to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.thread ] ; 3 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !242
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i8, ptr %i.f, align 8, !tbaa !243
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %_ZNK4llvm11CCValAssign9getLocRegEv.exit, label %.thread

_ZNK4llvm11CCValAssign9getLocRegEv.exit:          ; preds = %.lr.ph
  %.sroa.0.0.copyload.i = load i32, ptr %i.e, align 8, !tbaa !245 ; 3 uses
  %i.i = lshr i32 %.sroa.0.0.copyload.i, 5
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !245
  %i.m = and i32 %.sroa.0.0.copyload.i, 31
  %i.n = shl nuw i32 1, %i.m
  %i.o = and i32 %i.n, %i.l
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm11CCValAssign9getLocRegEv.exit
  %i.p = load ptr, ptr %4, align 8, !tbaa !242
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv
  %.sroa.024.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !246 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.024.0.copyload, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !247  ; 2 uses
  %i.t = icmp eq i32 %i.s, 4
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.024.0.copyload, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !248
  %.sroa.024.0.copyload28 = load ptr, ptr %i.v, align 8, !tbaa !246 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.024.0.copyload28, i64 24
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !247
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = phi i32 [ %.pre, %bb.c ], [ %i.s, %bb.b ]
  %.sroa.024.0 = phi ptr [ %.sroa.024.0.copyload28, %bb.c ], [ %.sroa.024.0.copyload, %bb.b ]
  %.not22 = icmp eq i32 %i.w, 52
  br i1 %.not22, label %bb.e, label %.thread34

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.024.0, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !248
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !249
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.ab, align 8, !tbaa !245
  %i.ac = tail call i32 @_ZNK4llvm19MachineRegisterInfo16getLiveInPhysRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %1, i32 %.sroa.0.0.copyload.i23) #28
  %.not36 = icmp eq i32 %i.ac, %.sroa.0.0.copyload.i
  br i1 %.not36, label %.thread, label %.thread34

.thread:                                          ; preds = %.lr.ph, %_ZNK4llvm11CCValAssign9getLocRegEv.exit, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %.not, label %.thread34, label %.lr.ph, !llvm.loop !250

.thread34:                                        ; preds = %.thread, %bb.d, %bb.e, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.e ], [ false, %bb.d ], [ true, %.thread ]
  ret i1 %.not.lcssa
}

declare i32 @_ZNK4llvm19MachineRegisterInfo16getLiveInPhysRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520), i32) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18TargetLoweringBase12ArgListEntry13setAttributesEPKNS_8CallBaseEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) initializes((42, 44), (48, 56)) %0, ptr noundef nonnull %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::AttributeList", align 8 ; 4 uses
  %4 = alloca %"class.llvm::AttributeList", align 8 ; 4 uses
  %5 = alloca %"class.llvm::AttributeList", align 8 ; 4 uses
  %6 = alloca %"class.llvm::AttributeList", align 8 ; 4 uses
  %i.a = tail call noundef zeroext i1 @_ZNK4llvm8CallBase12paramHasAttrEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %2, i32 noundef 58) #28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 30 uses
  %i.c = zext i1 %i.a to i16
  %i.d = load i16, ptr %i.b, align 8
  %i.e = and i16 %i.d, -2
  %i.f = or disjoint i16 %i.e, %i.c
  store i16 %i.f, ptr %i.b, align 8
  %i.g = tail call noundef zeroext i1 @_ZNK4llvm8CallBase12paramHasAttrEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %2, i32 noundef 84) #28
  %i.h = load i16, ptr %i.b, align 8
  %i.i = select i1 %i.g, i16 2, i16 0
  %i.j = and i16 %i.h, -3
  %i.k = or disjoint i16 %i.j, %i.i
  store i16 %i.k, ptr %i.b, align 8
  %i.l = tail call noundef zeroext i1 @_ZNK4llvm8CallBase12paramHasAttrEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %2, i32 noundef 30) #28
  %i.m = load i16, ptr %i.b, align 8
  %i.n = select i1 %i.l, i16 4, i16 0
  %i.o = and i16 %i.m, -5
  %i.p = or disjoint i16 %i.o, %i.n
  store i16 %i.p, ptr %i.b, align 8
  %i.q = tail call noundef zeroext i1 @_ZNK4llvm8CallBase12paramHasAttrEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %2, i32 noundef 16) #28
  %i.r = load i16, ptr %i.b, align 8
  %i.s = select i1 %i.q, i16 8, i16 0
  %i.t = and i16 %i.r, -9
  %i.u = or disjoint i16 %i.t, %i.s
  store i16 %i.u, ptr %i.b, align 8
  %i.v = tail call noundef zeroext i1 @_ZNK4llvm8CallBase12paramHasAttrEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %2, i32 noundef 90) #28
  %i.w = load i16, ptr %i.b, align 8
  %i.x = select i1 %i.v, i16 16, i16 0
  %i.y = and i16 %i.w, -17
  %i.z = or disjoint i16 %i.y, %i.x
  store i16 %i.z, ptr %i.b, align 8
  %i.aa = tail call noundef zeroext i1 @_ZNK4llvm8CallBase12paramHasAttrEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %2, i32 noundef 22) #28
  %i.ab = load i16, ptr %i.b, align 8
  %i.ac = select i1 %i.aa, i16 32, i16 0
  %i.ad = and i16 %i.ab, -33
  %i.ae = or disjoint i16 %i.ad, %i.ac
  store i16 %i.ae, ptr %i.b, align 8
  %i.af = tail call noundef zeroext i1 @_ZNK4llvm8CallBase12paramHasAttrEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %2, i32 noundef 86) #28
  %i.ag = load i16, ptr %i.b, align 8
  %i.ah = select i1 %i.af, i16 64, i16 0
  %i.ai = and i16 %i.ag, -65
  %i.aj = or disjoint i16 %i.ai, %i.ah
  store i16 %i.aj, ptr %i.b, align 8
  %i.ak = tail call noundef zeroext i1 @_ZNK4llvm8CallBase12paramHasAttrEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %2, i32 noundef 89) #28
  %i.al = load i16, ptr %i.b, align 8
  %i.am = select i1 %i.ak, i16 512, i16 0
  %i.an = and i16 %i.al, -513
  %i.ao = or disjoint i16 %i.an, %i.am
  store i16 %i.ao, ptr %i.b, align 8
  %i.ap = tail call noundef zeroext i1 @_ZNK4llvm8CallBase12paramHasAttrEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %2, i32 noundef 88) #28
  %i.aq = load i16, ptr %i.b, align 8
  %i.ar = select i1 %i.ap, i16 256, i16 0
  %i.as = and i16 %i.aq, -257
  %i.at = or disjoint i16 %i.as, %i.ar
  store i16 %i.at, ptr %i.b, align 8
  %i.au = tail call noundef zeroext i1 @_ZNK4llvm8CallBase12paramHasAttrEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %2, i32 noundef 56) #28
  %i.av = load i16, ptr %i.b, align 8
  %i.aw = select i1 %i.au, i16 1024, i16 0
  %i.ax = and i16 %i.av, -1025
  %i.ay = or disjoint i16 %i.ax, %i.aw
  store i16 %i.ay, ptr %i.b, align 8
  %i.az = tail call noundef zeroext i1 @_ZNK4llvm8CallBase12paramHasAttrEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %2, i32 noundef 80) #28
  %i.ba = load i16, ptr %i.b, align 8
  %i.bb = select i1 %i.az, i16 2048, i16 0
  %i.bc = and i16 %i.ba, -2049
  %i.bd = or disjoint i16 %i.bc, %i.bb
  store i16 %i.bd, ptr %i.b, align 8
  %i.be = tail call noundef zeroext i1 @_ZNK4llvm8CallBase12paramHasAttrEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %2, i32 noundef 78) #28
  %i.bf = load i16, ptr %i.b, align 8
  %i.bg = select i1 %i.be, i16 4096, i16 0
  %i.bh = and i16 %i.bf, -4097
  %i.bi = or disjoint i16 %i.bh, %i.bg
  store i16 %i.bi, ptr %i.b, align 8
  %i.bj = tail call noundef zeroext i1 @_ZNK4llvm8CallBase12paramHasAttrEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %2, i32 noundef 79) #28
  %i.bk = load i16, ptr %i.b, align 8
  %i.bl = select i1 %i.bj, i16 8192, i16 0
  %i.bm = and i16 %i.bk, -8193
  %i.bn = or disjoint i16 %i.bm, %i.bl
  store i16 %i.bn, ptr %i.b, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 6 uses
  %i.bp = tail call i16 @_ZNK4llvm13AttributeList22getParamStackAlignmentEj(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, i32 noundef %2) #28
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 2 uses
  store i16 %i.bp, ptr %i.bq, align 2
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  store ptr null, ptr %i.br, align 8, !tbaa !252
  %i.bs = load i16, ptr %i.b, align 8
  %i.bt = and i16 %i.bs, 64
  %.not = icmp eq i16 %i.bt, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bu = tail call noundef ptr @_ZNK4llvm13AttributeList17getParamByValTypeEj(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, i32 noundef %2) #28 ; 2 uses
  %.not.not.i = icmp eq ptr %i.bu, null
  br i1 %.not.not.i, label %bb.c, label %_ZNK4llvm8CallBase17getParamByValTypeEj.exit

bb.c:                                             ; preds = %bb.b
  %i.bv = getelementptr inbounds i8, ptr %1, i64 -32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !261 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i, label %_ZNK4llvm8CallBase17getParamByValTypeEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !266
  %i.by = icmp eq i8 %i.bx, 14
  br i1 %i.by, label %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i, label %_ZNK4llvm8CallBase17getParamByValTypeEj.exit

_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i: ; preds = %bb.d
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !268
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !273
  %i.cd = icmp eq ptr %i.ca, %i.cc
  br i1 %i.cd, label %bb.e, label %_ZNK4llvm8CallBase17getParamByValTypeEj.exit

bb.e:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 128
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ce, align 8, !tbaa !239
  store ptr %.sroa.0.0.copyload.i.i, ptr %6, align 8
  %i.cf = call noundef ptr @_ZNK4llvm13AttributeList17getParamByValTypeEj(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %_ZNK4llvm8CallBase17getParamByValTypeEj.exit

_ZNK4llvm8CallBase17getParamByValTypeEj.exit:     ; preds = %bb.b, %bb.c, %bb.d, %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i, %bb.e
  %.2.i = phi ptr [ %i.bu, %bb.b ], [ %i.cf, %bb.e ], [ null, %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i ], [ null, %bb.c ], [ null, %bb.d ]
  store ptr %.2.i, ptr %i.br, align 8, !tbaa !252
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 43
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !287, !range !288, !noundef !41
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm8CallBase17getParamByValTypeEj.exit
  %i.cj = call i16 @_ZNK4llvm13AttributeList17getParamAlignmentEj(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, i32 noundef %2) #28
  store i16 %i.cj, ptr %i.bq, align 2
  br label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm8CallBase17getParamByValTypeEj.exit, %bb.f, %bb.a
  %i.ck = load i16, ptr %i.b, align 8             ; 2 uses
  %i.cl = and i16 %i.ck, 512
  %.not39 = icmp eq i16 %i.cl, 0
  br i1 %.not39, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cm = call noundef ptr @_ZNK4llvm13AttributeList24getParamPreallocatedTypeEj(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, i32 noundef %2) #28 ; 2 uses
  %.not.not.i42 = icmp eq ptr %i.cm, null
  br i1 %.not.not.i42, label %bb.i, label %_ZNK4llvm8CallBase24getParamPreallocatedTypeEj.exit

bb.i:                                             ; preds = %bb.h
  %i.cn = getelementptr inbounds i8, ptr %1, i64 -32
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !261 ; 4 uses
  %.not.i.i.i.i44 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i44, label %_ZNK4llvm8CallBase24getParamPreallocatedTypeEj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cp = load i8, ptr %i.co, align 8, !tbaa !266
  %i.cq = icmp eq i8 %i.cp, 14
  br i1 %i.cq, label %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i45, label %_ZNK4llvm8CallBase24getParamPreallocatedTypeEj.exit

_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i45: ; preds = %bb.j
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !268
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !273
  %i.cv = icmp eq ptr %i.cs, %i.cu
  br i1 %i.cv, label %bb.k, label %_ZNK4llvm8CallBase24getParamPreallocatedTypeEj.exit

bb.k:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i45
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 128
  %.sroa.0.0.copyload.i.i46 = load ptr, ptr %i.cw, align 8, !tbaa !239
  store ptr %.sroa.0.0.copyload.i.i46, ptr %5, align 8
  %i.cx = call noundef ptr @_ZNK4llvm13AttributeList24getParamPreallocatedTypeEj(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZNK4llvm8CallBase24getParamPreallocatedTypeEj.exit

_ZNK4llvm8CallBase24getParamPreallocatedTypeEj.exit: ; preds = %bb.h, %bb.i, %bb.j, %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i45, %bb.k
  %.2.i43 = phi ptr [ %i.cm, %bb.h ], [ %i.cx, %bb.k ], [ null, %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i45 ], [ null, %bb.i ], [ null, %bb.j ]
  store ptr %.2.i43, ptr %i.br, align 8, !tbaa !252
  %.pre = load i16, ptr %i.b, align 8
  br label %bb.l

bb.l:                                             ; preds = %_ZNK4llvm8CallBase24getParamPreallocatedTypeEj.exit, %bb.g
end_hunk_0
begin_hunk_1_@_ZNK4llvm14TargetLowering13SimplifySetCCENS_3EVTENS_7SDValueES2_NS_3ISD8CondCodeEbRNS0_15DAGCombinerInfoERKNS_5SDLocE:bb.a
  %i.aqs = icmp eq i32 %i.aqr, 0
  br i1 %i.aqs, label %.critedge2378, label %.critedge2376.thread

.critedge2378:                                    ; preds = %bb.ht, %bb.hu
  %.sroa.01287.0.copyload = load i16, ptr %60, align 8, !tbaa !343
  %.sroa.21289.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !341
  %i.aqt = getelementptr inbounds nuw i8, ptr %.pre3655, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %112, i8 0, i64 16, i1 false)
  %i.aqu = call { ptr, i32 } @_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %i.g, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.01287.0.copyload, ptr %.sroa.21289.0.copyload, ptr %.sroa.01284.0.copyload.pre, i32 %.sroa.21285.0.copyload.pre, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.aqt, i32 noundef %i.apz, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %112, i1 noundef zeroext false, i32 0) ; 2 uses
  %.fca.0.extract1280 = extractvalue { ptr, i32 } %i.aqu, 0
  %.fca.1.extract1281 = extractvalue { ptr, i32 } %i.aqu, 1
  br label %.critedge2359

.critedge2376.thread:                             ; preds = %bb.hf, %bb.he, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit, %bb.hg, %bb.hi, %bb.hu, %bb.hs, %.critedge2376
  %i.aqv = load ptr, ptr %61, align 8, !tbaa !249 ; 3 uses
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqv, i64 24
  %i.aqx = load i32, ptr %i.aqw, align 8, !tbaa !247
  switch i32 %i.aqx, label %bb.ig [
    i32 195, label %.critedge2376.thread._crit_edge
    i32 193, label %bb.hv
  ]

.critedge2376.thread._crit_edge:                  ; preds = %.critedge2376.thread
  %.phi.trans.insert3658 = getelementptr inbounds nuw i8, ptr %i.aqv, i64 40
  %.pre3659 = load ptr, ptr %.phi.trans.insert3658, align 8, !tbaa !248 ; 2 uses
  %.phi.trans.insert3660 = getelementptr inbounds nuw i8, ptr %.pre3659, i64 40
  %.sroa.01277.0.copyload.pre = load ptr, ptr %.phi.trans.insert3660, align 8, !tbaa !246
  %.sroa.21278.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre3659, i64 48
  %.sroa.21278.0.copyload.pre = load i32, ptr %.sroa.21278.0..sroa_idx.phi.trans.insert, align 8, !tbaa !245
  br label %bb.hx

bb.hv:                                            ; preds = %.critedge2376.thread
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqv, i64 40
  %i.aqz = load ptr, ptr %i.aqy, align 8, !tbaa !248 ; 3 uses
  %i.ara = load ptr, ptr %i.aqz, align 8, !tbaa !249 ; 2 uses
  %i.arb = getelementptr inbounds nuw i8, ptr %i.ara, i64 24
  %i.arc = load i32, ptr %i.arb, align 8, !tbaa !247
  %i.ard = icmp eq i32 %i.arc, 195
  br i1 %i.ard, label %bb.hw, label %bb.ig

bb.hw:                                            ; preds = %bb.hv
  %i.are = getelementptr inbounds nuw i8, ptr %i.aqz, i64 40
  %i.arf = getelementptr inbounds nuw i8, ptr %i.ara, i64 40
  %i.arg = load ptr, ptr %i.arf, align 8, !tbaa !248 ; 2 uses
  %i.arh = getelementptr inbounds nuw i8, ptr %i.arg, i64 40
  %i.ari = load ptr, ptr %i.are, align 8, !tbaa !249 ; 2 uses
  %i.arj = load ptr, ptr %i.arh, align 8, !tbaa !249
  %i.ark = icmp eq ptr %i.ari, %i.arj
  %i.arl = getelementptr inbounds nuw i8, ptr %i.aqz, i64 48
  %i.arm = load i32, ptr %i.arl, align 8          ; 2 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arg, i64 48
  %i.aro = load i32, ptr %i.arn, align 8
  %i.arp = icmp eq i32 %i.arm, %i.aro
  %i.arq = select i1 %i.ark, i1 %i.arp, i1 false
  br i1 %i.arq, label %bb.hx, label %bb.ig

bb.hx:                                            ; preds = %.critedge2376.thread._crit_edge, %bb.hw
  %.sroa.21278.0.copyload = phi i32 [ %.sroa.21278.0.copyload.pre, %.critedge2376.thread._crit_edge ], [ %i.arm, %bb.hw ]
  %.sroa.01277.0.copyload = phi ptr [ %.sroa.01277.0.copyload.pre, %.critedge2376.thread._crit_edge ], [ %i.ari, %bb.hw ]
  %i.arr = call noundef zeroext i1 @_ZN4llvm13isOneConstantENS_7SDValueE(ptr %.sroa.01277.0.copyload, i32 %.sroa.21278.0.copyload) #28
  br i1 %i.arr, label %bb.hy, label %bb.ig

bb.hy:                                            ; preds = %bb.hx
  %i.ars = call { i64, i8 } @_ZNK4llvm7SDValue18getValueSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(12) %61) ; 2 uses
  %.fca.1.extract1272 = extractvalue { i64, i8 } %i.ars, 1
  %i.art = trunc nuw i8 %.fca.1.extract1272 to i1
  br i1 %i.art, label %bb.hz, label %_ZNK4llvm8TypeSizecvmEv.exit2730

bb.hz:                                            ; preds = %bb.hy
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.23) #30
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit2730:                 ; preds = %bb.hy
  %.fca.0.extract1271 = extractvalue { i64, i8 } %i.ars, 0
  %i.aru = trunc i64 %.fca.0.extract1271 to i32   ; 2 uses
  %.sroa.01268.0.copyload = load ptr, ptr %61, align 8, !tbaa !246
  %.sroa.21269.0.copyload = load i32, ptr %i.e, align 8, !tbaa !245
  call void @llvm.lifetime.start.p0(ptr nonnull %113) #28
  %i.arv = add i32 %i.aru, -1
  call void @_ZN4llvm5APInt14getHighBitsSetEjj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %113, i32 noundef %i.aru, i32 noundef %i.arv)
  %i.arw = call noundef zeroext i1 @_ZNK4llvm12SelectionDAG17MaskedValueIsZeroENS_7SDValueERKNS_5APIntEj(ptr noundef nonnull align 8 dereferenceable(920) %i.g, ptr %.sroa.01268.0.copyload, i32 %.sroa.21269.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %113, i32 noundef 0) #28
  %i.arx = getelementptr inbounds nuw i8, ptr %113, i64 8
  %i.ary = load i32, ptr %i.arx, align 8, !tbaa !423
  %i.arz = icmp ugt i32 %i.ary, 64
  br i1 %i.arz, label %bb.ia, label %_ZN4llvm5APIntD2Ev.exit2731

bb.ia:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit2730
  %i.asa = load ptr, ptr %113, align 8, !tbaa !368 ; 2 uses
  %i.asb = icmp eq ptr %i.asa, null
  br i1 %i.asb, label %_ZN4llvm5APIntD2Ev.exit2731, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  call void @_ZdaPv(ptr noundef nonnull %i.asa) #29
  br label %_ZN4llvm5APIntD2Ev.exit2731

_ZN4llvm5APIntD2Ev.exit2731:                      ; preds = %_ZNK4llvm8TypeSizecvmEv.exit2730, %bb.ia, %bb.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #28
  br i1 %i.arw, label %bb.ic, label %.critedge2382

bb.ic:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit2731
  %i.asc = load ptr, ptr %61, align 8, !tbaa !249 ; 4 uses
  %i.asd = getelementptr inbounds nuw i8, ptr %i.asc, i64 24
  %i.ase = load i32, ptr %i.asd, align 8, !tbaa !247
  %i.asf = icmp eq i32 %i.ase, 195
  br i1 %i.asf, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  %i.asg = getelementptr inbounds nuw i8, ptr %i.asc, i64 40
  %i.ash = load ptr, ptr %i.asg, align 8, !tbaa !248 ; 2 uses
  %.sroa.03297.0.copyload = load ptr, ptr %i.ash, align 8, !tbaa !246
  %.sroa.63298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ash, i64 8
  %.sroa.63298.0.copyload = load i32, ptr %.sroa.63298.0..sroa_idx, align 8, !tbaa !245
  br label %bb.if

bb.ie:                                            ; preds = %bb.ic
  %i.asi = load i32, ptr %i.e, align 8, !tbaa !296
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asc, i64 48
  %i.ask = load ptr, ptr %i.asj, align 8, !tbaa !342
  %i.asl = zext i32 %i.asi to i64
  %i.asm = getelementptr inbounds nuw [16 x i8], ptr %i.ask, i64 %i.asl ; 2 uses
  %.sroa.0.0.copyload.i.i2732 = load i16, ptr %i.asm, align 8, !tbaa !343
  %.sroa.21.0..sroa_idx.i.i2733 = getelementptr inbounds nuw i8, ptr %i.asm, i64 8
  %.sroa.21.0.copyload.i.i2734 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i2733, align 8, !tbaa !341
  %i.asn = getelementptr inbounds nuw i8, ptr %i.asc, i64 40
  %i.aso = load ptr, ptr %i.asn, align 8, !tbaa !248 ; 2 uses
  %i.asp = load ptr, ptr %i.aso, align 8, !tbaa !249
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asp, i64 40
  %i.asr = load ptr, ptr %i.asq, align 8, !tbaa !248
  %i.ass = getelementptr inbounds nuw i8, ptr %i.aso, i64 40
  %i.ast = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.g, i32 noundef 193, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.0.0.copyload.i.i2732, ptr %.sroa.21.0.copyload.i.i2734, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.asr, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ass) #28 ; 2 uses
  %.fca.0.extract1259 = extractvalue { ptr, i32 } %i.ast, 0
  %.fca.1.extract1260 = extractvalue { ptr, i32 } %i.ast, 1
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.id
  %.sroa.03297.0 = phi ptr [ %.sroa.03297.0.copyload, %bb.id ], [ %.fca.0.extract1259, %bb.ie ]
  %.sroa.63298.0 = phi i32 [ %.sroa.63298.0.copyload, %bb.id ], [ %.fca.1.extract1260, %bb.ie ]
  %.sroa.01256.0.copyload = load i16, ptr %60, align 8, !tbaa !343
  %.sroa.21258.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !341
  %i.asu = load i32, ptr %i.a, align 4, !tbaa !395
  %i.asv = icmp eq i32 %i.asu, 17
  %i.asw = select i1 %i.asv, i32 22, i32 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %114, i8 0, i64 16, i1 false)
  %i.asx = call { ptr, i32 } @_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %i.g, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.01256.0.copyload, ptr %.sroa.21258.0.copyload, ptr %.sroa.03297.0, i32 %.sroa.63298.0, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, i32 noundef %i.asw, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %114, i1 noundef zeroext false, i32 0) ; 2 uses
  %.fca.0.extract1249 = extractvalue { ptr, i32 } %i.asx, 0
  %.fca.1.extract1250 = extractvalue { ptr, i32 } %i.asx, 1
  br label %.critedge2359

bb.ig:                                            ; preds = %.critedge2376.thread, %bb.hx, %bb.hw, %bb.hv
  %i.asy = load ptr, ptr %i.ry, align 8, !tbaa !425 ; 2 uses
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asy, i64 24 ; 2 uses
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asy, i64 32
  %i.atb = load i32, ptr %i.ata, align 8, !tbaa !423 ; 2 uses
  %i.atc = icmp ult i32 %i.atb, 65
  br i1 %i.atc, label %.split3504, label %_ZNK4llvm14ConstantSDNode5isOneEv.exit2738

.split3504:                                       ; preds = %bb.ig
  %i.atd = load i64, ptr %i.asz, align 8, !tbaa !368
  %i.ate = icmp eq i64 %i.atd, 1
  br i1 %i.ate, label %bb.ih, label %.critedge2382

_ZNK4llvm14ConstantSDNode5isOneEv.exit2738:       ; preds = %bb.ig
  %i.atf = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.asz) #32
  %i.atg = add i32 %i.atb, -1
  %i.ath = icmp eq i32 %i.atf, %i.atg
  br i1 %i.ath, label %bb.ih, label %.critedge2382

bb.ih:                                            ; preds = %.split3504, %_ZNK4llvm14ConstantSDNode5isOneEv.exit2738
  %.sroa.03271.0.copyload = load ptr, ptr %61, align 8, !tbaa !246 ; 3 uses
  %.sroa.27.0.copyload = load i32, ptr %i.e, align 8, !tbaa !245
  %i.ati = getelementptr inbounds nuw i8, ptr %.sroa.03271.0.copyload, i64 24
  %i.atj = load i32, ptr %i.ati, align 8, !tbaa !247 ; 2 uses
  %i.atk = icmp eq i32 %i.atj, 230
  br i1 %i.atk, label %bb.ii, label %bb.ij

bb.ii:                                            ; preds = %bb.ih
  %i.atl = getelementptr inbounds nuw i8, ptr %.sroa.03271.0.copyload, i64 40
  %i.atm = load ptr, ptr %i.atl, align 8, !tbaa !248 ; 2 uses
  %.sroa.03271.0.copyload3289 = load ptr, ptr %i.atm, align 8, !tbaa !246 ; 2 uses
  %.sroa.27.0..sroa_idx3290 = getelementptr inbounds nuw i8, ptr %i.atm, i64 8
  %.sroa.27.0.copyload3291 = load i32, ptr %.sroa.27.0..sroa_idx3290, align 8, !tbaa !245
  %.phi.trans.insert3663 = getelementptr inbounds nuw i8, ptr %.sroa.03271.0.copyload3289, i64 24
  %.pre3664 = load i32, ptr %.phi.trans.insert3663, align 8, !tbaa !247
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.ih
  %i.atn = phi i32 [ %.pre3664, %bb.ii ], [ %i.atj, %bb.ih ] ; 2 uses
  %.sroa.27.0 = phi i32 [ %.sroa.27.0.copyload3291, %bb.ii ], [ %.sroa.27.0.copyload, %bb.ih ] ; 5 uses
  %.sroa.03271.0 = phi ptr [ %.sroa.03271.0.copyload3289, %bb.ii ], [ %.sroa.03271.0.copyload, %bb.ih ] ; 9 uses
  %i.ato = getelementptr inbounds nuw i8, ptr %.sroa.03271.0, i64 24 ; 2 uses
  %i.atp = icmp eq i32 %i.atn, 195
  br i1 %i.atp, label %bb.ik, label %thread-pre-split3505

bb.ik:                                            ; preds = %bb.ij
  %i.atq = getelementptr inbounds nuw i8, ptr %.sroa.03271.0, i64 40
  %i.atr = load ptr, ptr %i.atq, align 8, !tbaa !248 ; 4 uses
  %i.ats = load ptr, ptr %i.atr, align 8, !tbaa !249 ; 3 uses
  %i.att = getelementptr inbounds nuw i8, ptr %i.ats, i64 24
  %i.atu = load i32, ptr %i.att, align 8, !tbaa !247
  %i.atv = icmp eq i32 %i.atu, 222
  br i1 %i.atv, label %bb.il, label %.critedge78.a

bb.il:                                            ; preds = %bb.ik
  %i.atw = getelementptr inbounds nuw i8, ptr %i.atr, i64 40
  %i.atx = load ptr, ptr %i.atw, align 8, !tbaa !249 ; 3 uses
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atx, i64 24
  %i.atz = load i32, ptr %i.aty, align 8, !tbaa !247
  %i.aua = icmp eq i32 %i.atz, 222
  br i1 %i.aua, label %bb.im, label %.critedge78.a

bb.im:                                            ; preds = %bb.il
  %.sroa.63269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atr, i64 8
  %.sroa.63269.0.copyload = load i32, ptr %.sroa.63269.0..sroa_idx, align 8, !tbaa !245
  %.sroa.63266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atr, i64 48
  %i.aub = load i64, ptr %.sroa.63266.0..sroa_idx, align 8
  %i.auc = getelementptr inbounds nuw i8, ptr %.sroa.03271.0, i64 48
  %i.aud = load ptr, ptr %i.auc, align 8, !tbaa !342
  %i.aue = zext i32 %.sroa.27.0 to i64
  %i.auf = getelementptr inbounds nuw [16 x i8], ptr %i.aud, i64 %i.aue ; 2 uses
  %.sroa.0.0.copyload.i.i2739 = load i16, ptr %i.auf, align 8, !tbaa !343
  %.sroa.21.0..sroa_idx.i.i2740 = getelementptr inbounds nuw i8, ptr %i.auf, i64 8
  %.sroa.21.0.copyload.i.i2741 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i2740, align 8, !tbaa !341
  %.not.i.i2744 = icmp eq i16 %.sroa.0.0.copyload.i.i2739, 2
  %i.aug = icmp eq ptr %.sroa.21.0.copyload.i.i2741, null
  %.not4.i2745 = select i1 %.not.i.i2744, i1 %i.aug, i1 false
  br i1 %.not4.i2745, label %.critedge2384, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.auh = getelementptr inbounds nuw i8, ptr %i.ats, i64 40
  %i.aui = load ptr, ptr %i.auh, align 8, !tbaa !248 ; 2 uses
  %i.auj = load ptr, ptr %i.aui, align 8, !tbaa !249
  %i.auk = getelementptr inbounds nuw i8, ptr %i.aui, i64 8
  %i.aul = load i32, ptr %i.auk, align 8, !tbaa !296
  %i.aum = getelementptr inbounds nuw i8, ptr %i.auj, i64 48
  %i.aun = load ptr, ptr %i.aum, align 8, !tbaa !342
  %i.auo = zext i32 %i.aul to i64
  %i.aup = getelementptr inbounds nuw [16 x i8], ptr %i.aun, i64 %i.auo ; 2 uses
  %.sroa.0.0.copyload.i.i2746 = load i16, ptr %i.aup, align 8, !tbaa !343
  %.sroa.21.0..sroa_idx.i.i2747 = getelementptr inbounds nuw i8, ptr %i.aup, i64 8
  %.sroa.21.0.copyload.i.i2748 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i2747, align 8, !tbaa !341
  %i.auq = call noundef i32 @_ZNK4llvm18TargetLoweringBase18getBooleanContentsENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(518435) %0, i16 %.sroa.0.0.copyload.i.i2746, ptr %.sroa.21.0.copyload.i.i2748)
  %i.aur = icmp eq i32 %i.auq, 1
  br i1 %i.aur, label %bb.io, label %.critedge78.a

bb.io:                                            ; preds = %bb.in
  %i.aus = getelementptr inbounds nuw i8, ptr %i.atx, i64 40
  %i.aut = load ptr, ptr %i.aus, align 8, !tbaa !248 ; 2 uses
  %i.auu = load ptr, ptr %i.aut, align 8, !tbaa !249
  %i.auv = getelementptr inbounds nuw i8, ptr %i.aut, i64 8
  %i.auw = load i32, ptr %i.auv, align 8, !tbaa !296
  %i.aux = getelementptr inbounds nuw i8, ptr %i.auu, i64 48
  %i.auy = load ptr, ptr %i.aux, align 8, !tbaa !342
  %i.auz = zext i32 %i.auw to i64
  %i.ava = getelementptr inbounds nuw [16 x i8], ptr %i.auy, i64 %i.auz ; 2 uses
  %.sroa.0.0.copyload.i.i2751 = load i16, ptr %i.ava, align 8, !tbaa !343
  %.sroa.21.0..sroa_idx.i.i2752 = getelementptr inbounds nuw i8, ptr %i.ava, i64 8
  %.sroa.21.0.copyload.i.i2753 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i2752, align 8, !tbaa !341
  %i.avb = call noundef i32 @_ZNK4llvm18TargetLoweringBase18getBooleanContentsENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(518435) %0, i16 %.sroa.0.0.copyload.i.i2751, ptr %.sroa.21.0.copyload.i.i2753)
  %i.avc = icmp eq i32 %i.avb, 1
  br i1 %i.avc, label %.critedge2384, label %.critedge78.a

.critedge2384:                                    ; preds = %bb.im, %bb.io
  %i.avd = load i32, ptr %i.a, align 4, !tbaa !395
  %i.ave = icmp eq i32 %i.avd, 17
  %i.avf = select i1 %i.ave, i32 22, i32 17       ; 2 uses
  store i32 %i.avf, ptr %i.a, align 4, !tbaa !395
  %.sroa.01242.0.copyload = load i16, ptr %60, align 8, !tbaa !343
  %.sroa.21244.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !341
  store ptr %i.atx, ptr %115, align 8, !tbaa !246
  %.sroa.63266.0..sroa_idx3267 = getelementptr inbounds nuw i8, ptr %115, i64 8
  store i64 %i.aub, ptr %.sroa.63266.0..sroa_idx3267, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %116, i8 0, i64 16, i1 false)
  %i.avg = call { ptr, i32 } @_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %i.g, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.01242.0.copyload, ptr %.sroa.21244.0.copyload, ptr nonnull %i.ats, i32 %.sroa.63269.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %115, i32 noundef %i.avf, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %116, i1 noundef zeroext false, i32 0) ; 2 uses
  %.fca.0.extract1235 = extractvalue { ptr, i32 } %i.avg, 0
  %.fca.1.extract1236 = extractvalue { ptr, i32 } %i.avg, 1
  br label %.critedge2359

.critedge78.a:                                    ; preds = %bb.ik, %bb.il, %bb.in, %bb.io
  %.pr3506.pre = load i32, ptr %i.ato, align 8, !tbaa !247
  br label %thread-pre-split3505

thread-pre-split3505:                             ; preds = %.critedge78.a, %bb.ij
  %i.avh = phi i32 [ %.pr3506.pre, %.critedge78.a ], [ %i.atn, %bb.ij ] ; 2 uses
  %i.avi = icmp eq i32 %i.avh, 193
  br i1 %i.avi, label %bb.ip, label %bb.iv

bb.ip:                                            ; preds = %thread-pre-split3505
  %i.avj = getelementptr inbounds nuw i8, ptr %.sroa.03271.0, i64 40 ; 3 uses
  %i.avk = load ptr, ptr %i.avj, align 8, !tbaa !248 ; 2 uses
  %i.avl = getelementptr inbounds nuw i8, ptr %i.avk, i64 40
  %.sroa.01232.0.copyload = load ptr, ptr %i.avl, align 8, !tbaa !246
  %.sroa.21233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.avk, i64 48
  %.sroa.21233.0.copyload = load i32, ptr %.sroa.21233.0..sroa_idx, align 8, !tbaa !245
  %i.avm = call noundef zeroext i1 @_ZN4llvm13isOneConstantENS_7SDValueE(ptr %.sroa.01232.0.copyload, i32 %.sroa.21233.0.copyload) #28
  br i1 %i.avm, label %bb.iq, label %._crit_edge3666

._crit_edge3666:                                  ; preds = %bb.ip
  %.pre3667 = load i32, ptr %i.ato, align 8, !tbaa !247
  br label %bb.iv

bb.iq:                                            ; preds = %bb.ip
  call void @llvm.lifetime.start.p0(ptr nonnull %117) #28
  %i.avn = getelementptr inbounds nuw i8, ptr %.sroa.03271.0, i64 48 ; 2 uses
  %i.avo = load ptr, ptr %i.avn, align 8, !tbaa !342
  %i.avp = zext i32 %.sroa.27.0 to i64            ; 2 uses
  %i.avq = getelementptr inbounds nuw [16 x i8], ptr %i.avo, i64 %i.avp ; 2 uses
  %.sroa.0.0.copyload.i.i2756 = load i16, ptr %i.avq, align 8, !tbaa !343
  %.sroa.21.0..sroa_idx.i.i2757 = getelementptr inbounds nuw i8, ptr %i.avq, i64 8
  %.sroa.21.0.copyload.i.i2758 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i2757, align 8, !tbaa !341
  store i16 %.sroa.0.0.copyload.i.i2756, ptr %117, align 8
  %i.avr = getelementptr inbounds nuw i8, ptr %117, i64 8
  store ptr %.sroa.21.0.copyload.i.i2758, ptr %i.avr, align 8
  %.sroa.01229.0.copyload = load i16, ptr %60, align 8, !tbaa !343
  %.sroa.21231.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !341
  %i.avs = call noundef zeroext i1 @_ZNK4llvm3EVT6bitsGTES0_(ptr noundef nonnull align 8 dereferenceable(16) %117, i16 %.sroa.01229.0.copyload, ptr %.sroa.21231.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %117) #28
  br i1 %i.avs, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %bb.iq
  %.sroa.01223.0.copyload = load i16, ptr %60, align 8, !tbaa !343 ; 2 uses
  %.sroa.21225.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !341 ; 2 uses
  %i.avt = load ptr, ptr %i.avj, align 8, !tbaa !248
  %i.avu = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.g, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.01223.0.copyload, ptr %.sroa.21225.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.avt) #28 ; 2 uses
  %.fca.0.extract1216 = extractvalue { ptr, i32 } %i.avu, 0
  %.fca.1.extract1217 = extractvalue { ptr, i32 } %i.avu, 1
  store ptr %.fca.0.extract1216, ptr %118, align 8
  %.sroa.21219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %118, i64 8
  store i32 %.fca.1.extract1217, ptr %.sroa.21219.0..sroa_idx, align 8
  %.sroa.01213.0.copyload = load i16, ptr %60, align 8, !tbaa !343
  %.sroa.21215.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !341
  %i.avv = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.g, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.01213.0.copyload, ptr %.sroa.21215.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract1209 = extractvalue { ptr, i32 } %i.avv, 0
  %.fca.1.extract1210 = extractvalue { ptr, i32 } %i.avv, 1
  store ptr %.fca.0.extract1209, ptr %119, align 8
  %.sroa.21212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %119, i64 8
  store i32 %.fca.1.extract1210, ptr %.sroa.21212.0..sroa_idx, align 8
  %i.avw = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.g, i32 noundef 193, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.01223.0.copyload, ptr %.sroa.21225.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %118, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %119) #28 ; 2 uses
  %.fca.0.extract1205 = extractvalue { ptr, i32 } %i.avw, 0
  %.fca.1.extract1206 = extractvalue { ptr, i32 } %i.avw, 1
  br label %bb.iu

bb.is:                                            ; preds = %bb.iq
  call void @llvm.lifetime.start.p0(ptr nonnull %120) #28
  %i.avx = load ptr, ptr %i.avn, align 8, !tbaa !342
  %i.avy = getelementptr inbounds nuw [16 x i8], ptr %i.avx, i64 %i.avp ; 2 uses
  %.sroa.0.0.copyload.i.i2761 = load i16, ptr %i.avy, align 8, !tbaa !343
  %.sroa.21.0..sroa_idx.i.i2762 = getelementptr inbounds nuw i8, ptr %i.avy, i64 8
  %.sroa.21.0.copyload.i.i2763 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i2762, align 8, !tbaa !341
  store i16 %.sroa.0.0.copyload.i.i2761, ptr %120, align 8
  %i.avz = getelementptr inbounds nuw i8, ptr %120, i64 8
  store ptr %.sroa.21.0.copyload.i.i2763, ptr %i.avz, align 8
  %.sroa.01202.0.copyload = load i16, ptr %60, align 8, !tbaa !343
  %.sroa.21204.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !341
  %i.awa = call noundef zeroext i1 @_ZNK4llvm3EVT6bitsLTES0_(ptr noundef nonnull align 8 dereferenceable(16) %120, i16 %.sroa.01202.0.copyload, ptr %.sroa.21204.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #28
  br i1 %i.awa, label %bb.it, label %bb.iu

bb.it:                                            ; preds = %bb.is
  %.sroa.01196.0.copyload = load i16, ptr %60, align 8, !tbaa !343 ; 2 uses
  %.sroa.21198.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !341 ; 2 uses
  %i.awb = load ptr, ptr %i.avj, align 8, !tbaa !248
  %i.awc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.g, i32 noundef 229, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.01196.0.copyload, ptr %.sroa.21198.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.awb) #28 ; 2 uses
  %.fca.0.extract1189 = extractvalue { ptr, i32 } %i.awc, 0
  %.fca.1.extract1190 = extractvalue { ptr, i32 } %i.awc, 1
  store ptr %.fca.0.extract1189, ptr %121, align 8
  %.sroa.21192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %121, i64 8
  store i32 %.fca.1.extract1190, ptr %.sroa.21192.0..sroa_idx, align 8
  %.sroa.01186.0.copyload = load i16, ptr %60, align 8, !tbaa !343
  %.sroa.21188.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !341
  %i.awd = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.g, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.01186.0.copyload, ptr %.sroa.21188.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract1182 = extractvalue { ptr, i32 } %i.awd, 0
  %.fca.1.extract1183 = extractvalue { ptr, i32 } %i.awd, 1
  store ptr %.fca.0.extract1182, ptr %122, align 8
  %.sroa.21185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %122, i64 8
  store i32 %.fca.1.extract1183, ptr %.sroa.21185.0..sroa_idx, align 8
  %i.awe = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.g, i32 noundef 193, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.01196.0.copyload, ptr %.sroa.21198.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %121, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %122) #28 ; 2 uses
  %.fca.0.extract1178 = extractvalue { ptr, i32 } %i.awe, 0
  %.fca.1.extract1179 = extractvalue { ptr, i32 } %i.awe, 1
  br label %bb.iu

bb.iu:                                            ; preds = %bb.is, %bb.it, %bb.ir
  %.sroa.27.1 = phi i32 [ %.fca.1.extract1206, %bb.ir ], [ %.fca.1.extract1179, %bb.it ], [ %.sroa.27.0, %bb.is ] ; 2 uses
  %.sroa.03271.1 = phi ptr [ %.fca.0.extract1205, %bb.ir ], [ %.fca.0.extract1178, %bb.it ], [ %.sroa.03271.0, %bb.is ] ; 2 uses
  %.sroa.01175.0.copyload = load i16, ptr %60, align 8, !tbaa !343
  %.sroa.21177.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !341
  %i.awf = getelementptr inbounds nuw i8, ptr %.sroa.03271.1, i64 48
  %i.awg = load ptr, ptr %i.awf, align 8, !tbaa !342
  %i.awh = zext i32 %.sroa.27.1 to i64
  %i.awi = getelementptr inbounds nuw [16 x i8], ptr %i.awg, i64 %i.awh ; 2 uses
  %.sroa.0.0.copyload.i.i2766 = load i16, ptr %i.awi, align 8, !tbaa !343
  %.sroa.21.0..sroa_idx.i.i2767 = getelementptr inbounds nuw i8, ptr %i.awi, i64 8
  %.sroa.21.0.copyload.i.i2768 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i2767, align 8, !tbaa !341
  %i.awj = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.g, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.0.0.copyload.i.i2766, ptr %.sroa.21.0.copyload.i.i2768, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract1166 = extractvalue { ptr, i32 } %i.awj, 0
  %.fca.1.extract1167 = extractvalue { ptr, i32 } %i.awj, 1
  store ptr %.fca.0.extract1166, ptr %123, align 8
  %.sroa.21169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %123, i64 8
  store i32 %.fca.1.extract1167, ptr %.sroa.21169.0..sroa_idx, align 8
  %i.awk = load i32, ptr %i.a, align 4, !tbaa !395
  %i.awl = icmp eq i32 %i.awk, 17
  %i.awm = select i1 %i.awl, i32 22, i32 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %124, i8 0, i64 16, i1 false)
  %i.awn = call { ptr, i32 } @_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %i.g, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.01175.0.copyload, ptr %.sroa.21177.0.copyload, ptr %.sroa.03271.1, i32 %.sroa.27.1, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %123, i32 noundef %i.awm, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %124, i1 noundef zeroext false, i32 0) ; 2 uses
  %.fca.0.extract1162 = extractvalue { ptr, i32 } %i.awn, 0
  %.fca.1.extract1163 = extractvalue { ptr, i32 } %i.awn, 1
  br label %.critedge2359

bb.iv:                                            ; preds = %._crit_edge3666, %thread-pre-split3505
  %i.awo = phi i32 [ %.pre3667, %._crit_edge3666 ], [ %i.avh, %thread-pre-split3505 ]
  %i.awp = icmp eq i32 %i.awo, 4
  br i1 %i.awp, label %bb.iw, label %.critedge2382

bb.iw:                                            ; preds = %bb.iv
  %i.awq = getelementptr inbounds nuw i8, ptr %.sroa.03271.0, i64 40
  %i.awr = load ptr, ptr %i.awq, align 8, !tbaa !248
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awr, i64 40
  %i.awt = load ptr, ptr %i.aws, align 8, !tbaa !249 ; 2 uses
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awt, i64 88
  %.sroa.0.0.copyload.i2771 = load i16, ptr %i.awu, align 8, !tbaa !343
  %.sroa.21.0..sroa_idx.i2772 = getelementptr inbounds nuw i8, ptr %i.awt, i64 96
  %.sroa.21.0.copyload.i2773 = load ptr, ptr %.sroa.21.0..sroa_idx.i2772, align 8, !tbaa !341
  %.not.i.i2776 = icmp eq i16 %.sroa.0.0.copyload.i2771, 2
  %i.awv = icmp eq ptr %.sroa.21.0.copyload.i2773, null
  %.not4.i2777 = select i1 %.not.i.i2776, i1 %i.awv, i1 false
  br i1 %.not4.i2777, label %bb.ix, label %.critedge2382

bb.ix:                                            ; preds = %bb.iw
  %.sroa.01159.0.copyload = load i16, ptr %60, align 8, !tbaa !343
  %.sroa.21161.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !341
  %i.aww = getelementptr inbounds nuw i8, ptr %.sroa.03271.0, i64 48
  %i.awx = load ptr, ptr %i.aww, align 8, !tbaa !342
  %i.awy = zext i32 %.sroa.27.0 to i64
  %i.awz = getelementptr inbounds nuw [16 x i8], ptr %i.awx, i64 %i.awy ; 2 uses
  %.sroa.0.0.copyload.i.i2778 = load i16, ptr %i.awz, align 8, !tbaa !343
  %.sroa.21.0..sroa_idx.i.i2779 = getelementptr inbounds nuw i8, ptr %i.awz, i64 8
  %.sroa.21.0.copyload.i.i2780 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i2779, align 8, !tbaa !341
  %i.axa = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.g, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.0.0.copyload.i.i2778, ptr %.sroa.21.0.copyload.i.i2780, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract1150 = extractvalue { ptr, i32 } %i.axa, 0
  %.fca.1.extract1151 = extractvalue { ptr, i32 } %i.axa, 1
  store ptr %.fca.0.extract1150, ptr %125, align 8
  %.sroa.21153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %125, i64 8
  store i32 %.fca.1.extract1151, ptr %.sroa.21153.0..sroa_idx, align 8
  %i.axb = load i32, ptr %i.a, align 4, !tbaa !395
  %i.axc = icmp eq i32 %i.axb, 17
  %i.axd = select i1 %i.axc, i32 22, i32 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %126, i8 0, i64 16, i1 false)
  %i.axe = call { ptr, i32 } @_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %i.g, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.01159.0.copyload, ptr %.sroa.21161.0.copyload, ptr nonnull %.sroa.03271.0, i32 %.sroa.27.0, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %125, i32 noundef %i.axd, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %126, i1 noundef zeroext false, i32 0) ; 2 uses
  %.fca.0.extract1146 = extractvalue { ptr, i32 } %i.axe, 0
  %.fca.1.extract1147 = extractvalue { ptr, i32 } %i.axe, 1
  br label %.critedge2359

.critedge2382:                                    ; preds = %bb.fs, %bb.fz, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i, %bb.iw, %bb.iv, %.split3504, %.split3500, %bb.gb, %bb.ga, %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit, %_ZN4llvm5APIntD2Ev.exit2731, %bb.hc, %thread-pre-split, %_ZNK4llvm14ConstantSDNode5isOneEv.exit2738, %_ZNK4llvm14ConstantSDNode5isOneEv.exit
  %i.axf = load ptr, ptr %61, align 8, !tbaa !249 ; 2 uses
  %i.axg = getelementptr inbounds nuw i8, ptr %i.axf, i64 24
  %i.axh = load i32, ptr %i.axg, align 8, !tbaa !247
  %i.axi = icmp eq i32 %i.axh, 65
  br i1 %i.axi, label %bb.iy, label %thread-pre-split3507

bb.iy:                                            ; preds = %.critedge2382
  %i.axj = load ptr, ptr %i.ry, align 8, !tbaa !425
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axj, i64 1
  %i.axl = load i8, ptr %i.axk, align 1
  %i.axm = icmp slt i8 %i.axl, 0
  br i1 %i.axm, label %bb.iz, label %thread-pre-split3507

bb.iz:                                            ; preds = %bb.iy
  %i.axn = load i32, ptr %i.a, align 4, !tbaa !395 ; 2 uses
  switch i32 %i.axn, label %bb.jh [
    i32 22, label %bb.ja
    i32 17, label %bb.ja
  ]

bb.ja:                                            ; preds = %bb.iz, %bb.iz
  call void @llvm.lifetime.start.p0(ptr nonnull %127) #28
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axf, i64 40
  %i.axp = load ptr, ptr %i.axo, align 8, !tbaa !248 ; 2 uses
  %.sroa.01143.0.copyload = load ptr, ptr %i.axp, align 8, !tbaa !246
  %.sroa.21144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.axp, i64 8
  %.sroa.21144.0.copyload = load i32, ptr %.sroa.21144.0..sroa_idx, align 8, !tbaa !245
  call void @_ZNK4llvm12SelectionDAG16computeKnownBitsENS_7SDValueEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %127, ptr noundef nonnull align 8 dereferenceable(920) %i.g, ptr %.sroa.01143.0.copyload, i32 %.sroa.21144.0.copyload, i32 noundef 0) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %128) #28
  %i.axq = load ptr, ptr %61, align 8, !tbaa !249
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axq, i64 40
  %i.axs = load ptr, ptr %i.axr, align 8, !tbaa !248 ; 2 uses
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axs, i64 40
  %.sroa.01140.0.copyload = load ptr, ptr %i.axt, align 8, !tbaa !246
  %.sroa.21141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.axs, i64 48
  %.sroa.21141.0.copyload = load i32, ptr %.sroa.21141.0..sroa_idx, align 8, !tbaa !245
  call void @_ZNK4llvm12SelectionDAG16computeKnownBitsENS_7SDValueEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %128, ptr noundef nonnull align 8 dereferenceable(920) %i.g, ptr %.sroa.01140.0.copyload, i32 %.sroa.21141.0.copyload, i32 noundef 0) #28
  %i.axu = getelementptr inbounds nuw i8, ptr %127, i64 8
  %i.axv = load i32, ptr %i.axu, align 8, !tbaa !423 ; 2 uses
  %i.axw = icmp ult i32 %i.axv, 65
  br i1 %i.axw, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %bb.ja
  %i.axx = load i64, ptr %127, align 8, !tbaa !368
  %i.axy = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.axx)
  %i.axz = trunc nuw nsw i64 %i.axy to i32
  br label %_ZNK4llvm9KnownBits18countMaxPopulationEv.exit

bb.jc:                                            ; preds = %bb.ja
  %i.aya = call noundef i32 @_ZNK4llvm5APInt23countPopulationSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(32) %127) #32
  br label %_ZNK4llvm9KnownBits18countMaxPopulationEv.exit

_ZNK4llvm9KnownBits18countMaxPopulationEv.exit:   ; preds = %bb.jb, %bb.jc
  %.0.i.i2783 = phi i32 [ %i.axz, %bb.jb ], [ %i.aya, %bb.jc ]
  %i.ayb = sub i32 %i.axv, %.0.i.i2783
  %i.ayc = icmp eq i32 %i.ayb, 1
  br i1 %i.ayc, label %bb.jd, label %bb.jg

bb.jd:                                            ; preds = %_ZNK4llvm9KnownBits18countMaxPopulationEv.exit
  %i.ayd = getelementptr inbounds nuw i8, ptr %128, i64 16 ; 2 uses
  %i.aye = getelementptr inbounds nuw i8, ptr %128, i64 24
  %i.ayf = load i32, ptr %i.aye, align 8, !tbaa !423
  %i.ayg = icmp ult i32 %i.ayf, 65
  br i1 %i.ayg, label %bb.je, label %bb.jf

bb.je:                                            ; preds = %bb.jd
  %i.ayh = load i64, ptr %i.ayd, align 8, !tbaa !368
  %i.ayi = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ayh)
  %i.ayj = trunc nuw nsw i64 %i.ayi to i32
  br label %_ZNK4llvm9KnownBits18countMinPopulationEv.exit

bb.jf:                                            ; preds = %bb.jd
  %i.ayk = call noundef i32 @_ZNK4llvm5APInt23countPopulationSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.ayd) #32
  br label %_ZNK4llvm9KnownBits18countMinPopulationEv.exit

_ZNK4llvm9KnownBits18countMinPopulationEv.exit:   ; preds = %bb.je, %bb.jf
  %.0.i.i2784 = phi i32 [ %i.ayj, %bb.je ], [ %i.ayk, %bb.jf ]
  %i.ayl = icmp ugt i32 %.0.i.i2784, 1
  br i1 %i.ayl, label %.critedge2388, label %bb.jg

.critedge2388:                                    ; preds = %_ZNK4llvm9KnownBits18countMinPopulationEv.exit
  %.sroa.01137.0.copyload = load i16, ptr %60, align 8, !tbaa !343
  %.sroa.21139.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !341
  %i.aym = load ptr, ptr %61, align 8, !tbaa !249
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.aym, i64 40
  %i.ayo = load ptr, ptr %i.ayn, align 8, !tbaa !248 ; 2 uses
  %.sroa.01134.0.copyload = load ptr, ptr %i.ayo, align 8, !tbaa !246
  %.sroa.21135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ayo, i64 8
  %.sroa.21135.0.copyload = load i32, ptr %.sroa.21135.0..sroa_idx, align 8, !tbaa !245
  %i.ayp = load i32, ptr %i.a, align 4, !tbaa !395
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %129, i8 0, i64 16, i1 false)
  %i.ayq = call { ptr, i32 } @_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %i.g, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.01137.0.copyload, ptr %.sroa.21139.0.copyload, ptr %.sroa.01134.0.copyload, i32 %.sroa.21135.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, i32 noundef %i.ayp, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %129, i1 noundef zeroext false, i32 0) ; 2 uses
  %.fca.0.extract1130 = extractvalue { ptr, i32 } %i.ayq, 0
  %.fca.1.extract1131 = extractvalue { ptr, i32 } %i.ayq, 1
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %128) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %128) #28
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %127) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #28
  br label %.critedge2359

bb.jg:                                            ; preds = %_ZNK4llvm9KnownBits18countMaxPopulationEv.exit, %_ZNK4llvm9KnownBits18countMinPopulationEv.exit
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %128) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %128) #28
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %127) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #28
  br label %thread-pre-split3507

thread-pre-split3507:                             ; preds = %.critedge2382, %bb.iy, %bb.jg
  %.pr3508 = load i32, ptr %i.a, align 4, !tbaa !395
  br label %bb.jh

bb.jh:                                            ; preds = %thread-pre-split3507, %bb.iz
  %i.ayr = phi i32 [ %.pr3508, %thread-pre-split3507 ], [ %i.axn, %bb.iz ]
  switch i32 %i.ayr, label %bb.jn [
    i32 22, label %bb.ji
    i32 17, label %bb.ji
  ]

bb.ji:                                            ; preds = %bb.jh, %bb.jh
  %i.ays = load ptr, ptr %61, align 8, !tbaa !249 ; 2 uses
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ays, i64 24
  %i.ayu = load i32, ptr %i.ayt, align 8, !tbaa !247
  %i.ayv = icmp eq i32 %i.ayu, 199
  br i1 %i.ayv, label %bb.jj, label %bb.jn

bb.jj:                                            ; preds = %bb.ji
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ays, i64 40
  %i.ayx = load ptr, ptr %i.ayw, align 8, !tbaa !248
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayx, i64 40
  %i.ayz = load ptr, ptr %i.ayy, align 8, !tbaa !249 ; 2 uses
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayz, i64 24
  %i.azb = load i32, ptr %i.aza, align 8, !tbaa !247
  switch i32 %i.azb, label %bb.jn [
    i32 37, label %bb.jk
    i32 12, label %bb.jk
  ]

bb.jk:                                            ; preds = %bb.jj, %bb.jj
  %i.azc = getelementptr inbounds nuw i8, ptr %i.ayz, i64 88
  %i.azd = load ptr, ptr %i.azc, align 8, !tbaa !425
  %i.aze = getelementptr inbounds nuw i8, ptr %i.azd, i64 24
  %i.azf = call noundef i64 @_ZNK4llvm3EVT19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %62)
  %i.azg = add i64 %i.azf, -1
  %i.azh = call noundef zeroext i1 @_ZNK4llvm5APInteqEm(ptr noundef nonnull align 8 dereferenceable(12) %i.aze, i64 noundef %i.azg)
  br i1 %i.azh, label %bb.jl, label %bb.jn

bb.jl:                                            ; preds = %bb.jk
  %i.azi = call noundef zeroext i1 @_ZNK4llvm14ConstantSDNode9isAllOnesEv(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.01896.0.copyload)
  br i1 %i.azi, label %bb.jm, label %bb.jn

bb.jm:                                            ; preds = %bb.jl
  %.sroa.01127.0.copyload = load i16, ptr %60, align 8, !tbaa !343
  %.sroa.21129.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !341
  %i.azj = load ptr, ptr %61, align 8, !tbaa !249
  %i.azk = getelementptr inbounds nuw i8, ptr %i.azj, i64 40
  %i.azl = load ptr, ptr %i.azk, align 8, !tbaa !248 ; 2 uses
  %.sroa.01124.0.copyload = load ptr, ptr %i.azl, align 8, !tbaa !246
  %.sroa.21125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.azl, i64 8
  %.sroa.21125.0.copyload = load i32, ptr %.sroa.21125.0..sroa_idx, align 8, !tbaa !245
  %.sroa.01121.0.copyload = load i16, ptr %62, align 8, !tbaa !343
  %.sroa.21123.0.copyload = load ptr, ptr %i.o, align 8, !tbaa !341
  %i.azm = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.g, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.01121.0.copyload, ptr %.sroa.21123.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract1117 = extractvalue { ptr, i32 } %i.azm, 0
  %.fca.1.extract1118 = extractvalue { ptr, i32 } %i.azm, 1
  store ptr %.fca.0.extract1117, ptr %130, align 8
  %.sroa.21120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %130, i64 8
  store i32 %.fca.1.extract1118, ptr %.sroa.21120.0..sroa_idx, align 8
  %i.azn = load i32, ptr %i.a, align 4, !tbaa !395
  %i.azo = icmp eq i32 %i.azn, 17
  %i.azp = select i1 %i.azo, i32 20, i32 19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %131, i8 0, i64 16, i1 false)
  %i.azq = call { ptr, i32 } @_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %i.g, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.01127.0.copyload, ptr %.sroa.21129.0.copyload, ptr %.sroa.01124.0.copyload, i32 %.sroa.21125.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %130, i32 noundef %i.azp, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %131, i1 noundef zeroext false, i32 0) ; 2 uses
  %.fca.0.extract1113 = extractvalue { ptr, i32 } %i.azq, 0
  %.fca.1.extract1114 = extractvalue { ptr, i32 } %i.azq, 1
  br label %.critedge2359

bb.jn:                                            ; preds = %bb.jj, %bb.jh, %bb.jl, %bb.jk, %bb.ji
  %i.azr = load ptr, ptr %61, align 8, !tbaa !249 ; 6 uses
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azr, i64 24
  %i.azt = load i32, ptr %i.azs, align 8, !tbaa !247
  %i.azu = icmp eq i32 %i.azt, 230
  br i1 %i.azu, label %bb.jo, label %.critedge2374

bb.jo:                                            ; preds = %bb.jn
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azr, i64 28
  %.sroa.0.0.copyload.i2786 = load i32, ptr %i.azv, align 4, !tbaa !245 ; 2 uses
  %i.azw = trunc i32 %.sroa.0.0.copyload.i2786 to i1
  br i1 %i.azw, label %bb.jp, label %bb.jq

bb.jp:                                            ; preds = %bb.jo
  %i.azx = load i32, ptr %i.a, align 4, !tbaa !395
  %i.azy = add i32 %i.azx, -18
  %spec.select.i2787 = icmp ult i32 %i.azy, 4
  br i1 %spec.select.i2787, label %bb.jq, label %bb.js

bb.jq:                                            ; preds = %bb.jp, %bb.jo
  %i.azz = and i32 %.sroa.0.0.copyload.i2786, 2
  %.not3612 = icmp eq i32 %i.azz, 0
  br i1 %.not3612, label %.critedge2374, label %bb.jr

end_hunk_1
begin_hunk_2_@_ZNK4llvm14TargetLowering15buildUREMEqFoldENS_3EVTENS_7SDValueES2_NS_3ISD8CondCodeERNS0_15DAGCombinerInfoERKNS_5SDLocE:bb.a
  %i.f = zext i32 %i.e to i64
  %.idx = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %.pre24, i64 %.idx
  %.not22 = icmp eq i32 %i.e, 0
  br i1 %.not22, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.023 = phi ptr [ %i.i, %.lr.ph ], [ %.pre24, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %.023, align 8, !tbaa !246
  call void @_ZN4llvm14TargetLowering15DAGCombinerInfo13AddToWorklistEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef %i.h) #28
  %i.i = getelementptr inbounds nuw i8, ptr %.023, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.i, %i.g
  br i1 %.not, label %.loopexit.loopexit, label %.lr.ph

.loopexit.loopexit:                               ; preds = %.lr.ph
  %.pre = load ptr, ptr %9, align 8, !tbaa !242
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b, %bb.a
  %i.j = phi ptr [ %.pre24, %bb.a ], [ %.pre24, %bb.b ], [ %.pre, %.loopexit.loopexit ] ; 2 uses
  %.sroa.5.0 = phi i32 [ 0, %bb.a ], [ %.fca.1.extract, %bb.b ], [ %.fca.1.extract, %.loopexit.loopexit ]
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZN4llvm11SmallVectorIPNS_6SDNodeELj5EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  call void @free(ptr noundef %i.j) #28
  br label %_ZN4llvm11SmallVectorIPNS_6SDNodeELj5EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_6SDNodeELj5EED2Ev.exit: ; preds = %.loopexit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %.fca.1.insert = insertvalue { ptr, i32 } %i.d, i32 %.sroa.5.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm14TargetLowering15buildSREMEqFoldENS_3EVTENS_7SDValueES2_NS_3ISD8CondCodeERNS0_15DAGCombinerInfoERKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(518435) %0, i16 %1, ptr %2, ptr nofree readonly captures(none) %3, i32 %4, ptr nofree noundef readonly byval(%"class.llvm::SDValue") align 8 captures(none) %5, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(12) %8) local_unnamed_addr #0 align 2 {
bb.a:
  %9 = alloca %"class.llvm::SmallVector.600", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.a, ptr %9, align 8, !tbaa !242
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !241
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 7, ptr %i.c, align 4, !tbaa !337
  %i.d = call { ptr, i32 } @_ZNK4llvm14TargetLowering17prepareSREMEqFoldENS_3EVTENS_7SDValueES2_NS_3ISD8CondCodeERNS0_15DAGCombinerInfoERKNS_5SDLocERNS_15SmallVectorImplIPNS_6SDNodeEEE(ptr noundef nonnull align 8 dereferenceable(518435) %0, i16 %1, ptr %2, ptr %3, i32 %4, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(16) %9) ; 3 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.d, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.d, 1 ; 2 uses
  %.not21 = icmp eq ptr %.fca.0.extract, null
  %.pre24 = load ptr, ptr %9, align 8, !tbaa !242 ; 4 uses
  br i1 %.not21, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.b, align 8, !tbaa !241  ; 2 uses
  %i.f = zext i32 %i.e to i64
  %.idx = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %.pre24, i64 %.idx
  %.not22 = icmp eq i32 %i.e, 0
  br i1 %.not22, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.023 = phi ptr [ %i.i, %.lr.ph ], [ %.pre24, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %.023, align 8, !tbaa !246
  call void @_ZN4llvm14TargetLowering15DAGCombinerInfo13AddToWorklistEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef %i.h) #28
  %i.i = getelementptr inbounds nuw i8, ptr %.023, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.i, %i.g
  br i1 %.not, label %.loopexit.loopexit, label %.lr.ph

.loopexit.loopexit:                               ; preds = %.lr.ph
  %.pre = load ptr, ptr %9, align 8, !tbaa !242
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b, %bb.a
  %i.j = phi ptr [ %.pre24, %bb.a ], [ %.pre24, %bb.b ], [ %.pre, %.loopexit.loopexit ] ; 2 uses
  %.sroa.5.0 = phi i32 [ 0, %bb.a ], [ %.fca.1.extract, %bb.b ], [ %.fca.1.extract, %.loopexit.loopexit ]
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZN4llvm11SmallVectorIPNS_6SDNodeELj7EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  call void @free(ptr noundef %i.j) #28
  br label %_ZN4llvm11SmallVectorIPNS_6SDNodeELj7EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_6SDNodeELj7EED2Ev.exit: ; preds = %.loopexit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %.fca.1.insert = insertvalue { ptr, i32 } %i.d, i32 %.sroa.5.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare noundef zeroext i1 @_ZN4llvm17isZeroOrZeroSplatENS_7SDValueEb(ptr, i32, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm14TargetLowering14isGAPlusOffsetEPNS_6SDNodeERPKNS_11GlobalValueERl(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2160
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { ptr, i32 } %i.c(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %1, i32 0) #28
  %.fca.0.extract = extractvalue { ptr, i32 } %i.d, 0 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !247
  switch i32 %i.f, label %.critedge38 [
    i32 14, label %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_6SDNodeEEEDcPT0_.exit
    i32 39, label %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_6SDNodeEEEDcPT0_.exit
    i32 15, label %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_6SDNodeEEEDcPT0_.exit
    i32 40, label %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_6SDNodeEEEDcPT0_.exit
    i32 420, label %bb.b
    i32 59, label %bb.b
  ]

_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_6SDNodeEEEDcPT0_.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !420
  store ptr %i.h, ptr %2, align 8, !tbaa !732
  %i.i = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 96
  %i.j = load i64, ptr %i.i, align 8, !tbaa !733
  br label %.critedge38.sink.split

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !248  ; 2 uses
  %.sroa.050.0.copyload = load ptr, ptr %i.l, align 8, !tbaa !246 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %i.m, align 8, !tbaa !246 ; 3 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2168
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef %.sroa.050.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  br i1 %i.q, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !247
  switch i32 %i.s, label %.critedge38 [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.c, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !425  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !423  ; 3 uses
  %i.y = icmp ult i32 %i.x, 65
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.z = load i64, ptr %i.v, align 8, !tbaa !368
  %i.aa = icmp eq i32 %i.x, 0
  %i.ab = sub nuw nsw i32 64, %i.x
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = shl i64 %i.z, %i.ac
  %i.ae = ashr exact i64 %i.ad, %i.ac
  %.0.i.i.i.i = select i1 %i.aa, i64 0, i64 %i.ae
  br label %.critedge38.sink.split

bb.e:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.af = load ptr, ptr %i.v, align 8, !tbaa !368
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !294
  br label %.critedge38.sink.split

bb.f:                                             ; preds = %bb.b
  %i.ah = load ptr, ptr %0, align 8, !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2168
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  br i1 %i.ak, label %bb.g, label %.critedge38

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.050.0.copyload, i64 24
  %i.am = load i32, ptr %i.al, align 8, !tbaa !247
  switch i32 %i.am, label %.critedge38 [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit45
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit45
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit45: ; preds = %bb.g, %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.050.0.copyload, i64 88
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !425 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !423 ; 3 uses
  %i.as = icmp ult i32 %i.ar, 65
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit45
  %i.at = load i64, ptr %i.ap, align 8, !tbaa !368
  %i.au = icmp eq i32 %i.ar, 0
  %i.av = sub nuw nsw i32 64, %i.ar
  %i.aw = zext nneg i32 %i.av to i64              ; 2 uses
  %i.ax = shl i64 %i.at, %i.aw
  %i.ay = ashr exact i64 %i.ax, %i.aw
  %.0.i.i.i.i47 = select i1 %i.au, i64 0, i64 %i.ay
  br label %.critedge38.sink.split

bb.i:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit45
  %i.az = load ptr, ptr %i.ap, align 8, !tbaa !368
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !294
  br label %.critedge38.sink.split

.critedge38.sink.split:                           ; preds = %bb.i, %bb.h, %bb.e, %bb.d, %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_6SDNodeEEEDcPT0_.exit
  %.sink63 = phi i64 [ %i.j, %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_6SDNodeEEEDcPT0_.exit ], [ %i.ag, %bb.e ], [ %.0.i.i.i.i, %bb.d ], [ %.0.i.i.i.i47, %bb.h ], [ %i.ba, %bb.i ]
  %i.bb = load i64, ptr %3, align 8, !tbaa !294
  %i.bc = add nsw i64 %i.bb, %.sink63
  store i64 %i.bc, ptr %3, align 8, !tbaa !294
  br label %.critedge38

.critedge38:                                      ; preds = %.critedge38.sink.split, %bb.a, %bb.g, %bb.c, %bb.f
  %.5 = phi i1 [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.a ], [ false, %bb.c ], [ true, %.critedge38.sink.split ]
  ret i1 %.5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i32 } @_ZNK4llvm14TargetLowering17PerformDAGCombineEPNS_6SDNodeERNS0_15DAGCombinerInfoE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2) unnamed_addr #4 align 2 {
bb.a:
  ret { ptr, i32 } zeroinitializer
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 7) i32 @_ZNK4llvm14TargetLowering17getConstraintTypeENS_9StringRefE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(none) %1, i64 %2) unnamed_addr #13 align 2 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  switch i32 %i.a, label %bb.c [
    i32 1, label %bb.b
    i32 0, label %.thread
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !368
  %switch.tableidx = add i8 %i.b, -60             ; 2 uses
  %i.c = icmp ult i8 %switch.tableidx, 56
  br i1 %i.c, label %switch.lookup, label %.thread

bb.c:                                             ; preds = %bb.a
  %i.d = load i8, ptr %1, align 1, !tbaa !368
  %i.e = icmp eq i8 %i.d, 123
  br i1 %i.e, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.f = add i64 %2, 4294967295
  %i.g = and i64 %i.f, 4294967295
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !368
  %i.j = icmp eq i8 %i.i, 125
  br i1 %i.j, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.k = icmp eq i32 %i.a, 8
  br i1 %i.k, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.m = load i32, ptr %i.l, align 1
  %i.n = xor i32 %i.m, 1869440365
  %i.o = getelementptr i8, ptr %i.l, i64 4
  %i.p = load i16, ptr %i.o, align 1
  %i.q = zext i16 %i.p to i32
  %i.r = xor i32 %i.q, 31090
  %i.s = or i32 %i.n, %i.r
  %i.t = icmp ne i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit, %bb.e
  br label %.thread

switch.lookup:                                    ; preds = %bb.b
  %i.w = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm14TargetLowering17getConstraintTypeENS_9StringRefE, i64 %i.w
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %.thread

.thread:                                          ; preds = %bb.b, %switch.lookup, %bb.a, %bb.c, %bb.d, %_ZN4llvmeqENS_9StringRefES0_.exit, %_ZN4llvmeqENS_9StringRefES0_.exit.thread
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit.thread ], [ 2, %_ZN4llvmeqENS_9StringRefES0_.exit ], [ 6, %bb.d ], [ 6, %bb.b ], [ 6, %bb.a ], [ 6, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef ptr @_ZNK4llvm14TargetLowering16LowerXConstraintENS_3EVTE(ptr nofree nonnull readnone align 8 captures(none) %0, i16 %1, ptr %2) unnamed_addr #12 align 2 {
bb.a:
  %3 = alloca %"struct.llvm::EVT", align 8        ; 4 uses
  store i16 %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.a, align 8
  %.not.i = icmp eq i16 %1, 0
  br i1 %.not.i, label %_ZNK4llvm3EVT9isIntegerEv.exit, label %.split

.split:                                           ; preds = %bb.a
  %i.b = add i16 %1, -2
  %or.cond.i.i = icmp ult i16 %i.b, 10
  %i.c = add i16 %1, -19
  %or.cond3.i.i = icmp ult i16 %i.c, 86
  %or.cond4.i.i = or i1 %or.cond.i.i, %or.cond3.i.i
  %i.d = add i16 %1, -163
  %spec.select.i.i = icmp ult i16 %i.d, 32
  %i.e = or i1 %spec.select.i.i, %or.cond4.i.i
  br i1 %i.e, label %bb.d, label %bb.b

_ZNK4llvm3EVT9isIntegerEv.exit:                   ; preds = %bb.a
  %i.f = call noundef zeroext i1 @_ZNK4llvm3EVT17isExtendedIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #32
  br i1 %i.f, label %bb.d, label %bb.c

bb.b:                                             ; preds = %.split
  %i.g = add i16 %1, -12
  %or.cond.i.i2 = icmp ult i16 %i.g, 7
  %i.h = add i16 %1, -105
  %or.cond3.i.i3 = icmp ult i16 %i.h, 58
  %or.cond4.i.i4 = or i1 %or.cond.i.i2, %or.cond3.i.i3
  %i.i = add i16 %1, -195
  %spec.select.i.i5 = icmp ult i16 %i.i, 21
  %i.j = or i1 %spec.select.i.i5, %or.cond4.i.i4
  br label %_ZNK4llvm3EVT15isFloatingPointEv.exit

bb.c:                                             ; preds = %_ZNK4llvm3EVT9isIntegerEv.exit
  %i.k = call noundef zeroext i1 @_ZNK4llvm3EVT23isExtendedFloatingPointEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #32
  br label %_ZNK4llvm3EVT15isFloatingPointEv.exit

_ZNK4llvm3EVT15isFloatingPointEv.exit:            ; preds = %bb.b, %bb.c
  %i.l = phi i1 [ %i.j, %bb.b ], [ %i.k, %bb.c ]
  %.str.5. = select i1 %i.l, ptr @.str.5, ptr null
  br label %bb.d

bb.d:                                             ; preds = %.split, %_ZNK4llvm3EVT15isFloatingPointEv.exit, %_ZNK4llvm3EVT9isIntegerEv.exit
  %.0 = phi ptr [ @.str.4, %_ZNK4llvm3EVT9isIntegerEv.exit ], [ %.str.5., %_ZNK4llvm3EVT15isFloatingPointEv.exit ], [ @.str.4, %.split ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i32 } @_ZNK4llvm14TargetLowering27LowerAsmOutputForConstraintERNS_7SDValueES2_RKNS_5SDLocERKNS0_14AsmOperandInfoERNS_12SelectionDAGE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr nofree nonnull readnone align 8 captures(none) %4, ptr nofree nonnull readnone align 8 captures(none) %5) unnamed_addr #4 align 2 {
bb.a:
  ret { ptr, i32 } zeroinitializer
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm14TargetLowering28LowerAsmOperandForConstraintENS_7SDValueENS_9StringRefERSt6vectorIS1_SaIS1_EERNS_12SelectionDAGE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518435) %0, ptr %1, i32 %2, ptr nofree readonly captures(none) %3, i64 %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(920) %6) unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %8 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %i.a = icmp ugt i64 %4, 1
  br i1 %i.a, label %.critedge76, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %3, align 1, !tbaa !368     ; 3 uses
  switch i8 %i.b, label %.critedge76 [
    i8 88, label %bb.c
    i8 105, label %bb.c
    i8 110, label %bb.c
    i8 115, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %cond = icmp eq i8 %i.b, 115
  %.not = icmp eq i8 %i.b, 110
  br label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit119, %bb.c
  %.sroa.0145.0 = phi ptr [ %1, %bb.c ], [ %.sroa.0145.1, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit119 ] ; 16 uses
  %.sroa.15.0 = phi i32 [ %2, %bb.c ], [ %.sroa.15.1, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit119 ] ; 2 uses
  %.059 = phi i64 [ 0, %bb.c ], [ %i.fz, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit119 ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0145.0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !247  ; 4 uses
  switch i32 %i.d, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.d, %bb.d
  br i1 %cond, label %bb.m, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0145.0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !425  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !423  ; 4 uses
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.0.i.i = load i32, ptr %.0.in.i.i, align 4, !tbaa !403
  %i.j = icmp eq i32 %.0.i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  br i1 %i.j, label %bb.g, label %.critedge.thread

bb.g:                                             ; preds = %bb.f
  %.0.i.i.i77 = load i64, ptr %i.k, align 8, !tbaa !368
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

.critedge:                                        ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.m = icmp ult i32 %i.h, 65
  br i1 %i.m, label %.critedge.thread, label %bb.h

.critedge.thread:                                 ; preds = %bb.f, %.critedge
  %i.n = phi ptr [ %i.l, %.critedge ], [ %i.k, %bb.f ]
  %i.o = load i64, ptr %i.n, align 8, !tbaa !368
  %i.p = icmp eq i32 %i.h, 0
  %i.q = sub nuw nsw i32 64, %i.h
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  %i.s = shl i64 %i.o, %i.r
  %i.t = ashr exact i64 %i.s, %i.r
  %.0.i.i.i.i = select i1 %i.p, i64 0, i64 %i.t
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

bb.h:                                             ; preds = %.critedge
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !368
  %i.v = load i64, ptr %i.u, align 8, !tbaa !294
end_hunk_2
begin_hunk_3_@_ZNK4llvm14TargetLowering16expandFP_TO_UINTEPNS_6SDNodeERNS_7SDValueES4_RNS_12SelectionDAGE:bb.a
  %i.cp = insertvalue { i16, ptr } poison, i16 %i.co, 0
  %i.cq = insertvalue { i16, ptr } %i.cp, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i368

bb.p:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i373
  %i.cr = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %30) #28
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i368

bb.q:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i373, %.split.i.i364
  %.sroa.31.0.copyload.i.i367 = load ptr, ptr %i.r, align 8, !tbaa !341
  %i.cs = insertvalue { i16, ptr } poison, i16 %i.ci, 0
  %i.ct = insertvalue { i16, ptr } %i.cs, ptr %.sroa.31.0.copyload.i.i367, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i368

_ZNK4llvm3EVT13getScalarTypeEv.exit.i368:         ; preds = %bb.q, %bb.p, %bb.o
  %.fca.1.insert.merged.i.i369 = phi { i16, ptr } [ %i.ct, %bb.q ], [ %i.cq, %bb.o ], [ %i.cr, %bb.p ] ; 2 uses
  %i.cu = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i369, 0 ; 3 uses
  store i16 %i.cu, ptr %26, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.cw = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i369, 1
  store ptr %i.cw, ptr %i.cv, align 8
  %.not.i.i370 = icmp eq i16 %i.cu, 0
  br i1 %.not.i.i370, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i368
  %i.cx = zext i16 %i.cu to i64
  %i.cy = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 -16
  %.sroa.0.0.copyload.i.i.i371 = load i64, ptr %i.cz, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit374

bb.s:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i368
  %i.da = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %26) #32
  %i.db = extractvalue { i64, i8 } %i.da, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit374

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit374:     ; preds = %bb.r, %bb.s
  %.pn.i.i372 = phi i64 [ %.sroa.0.0.copyload.i.i.i371, %bb.r ], [ %i.db, %bb.s ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  %i.dc = trunc i64 %.pn.i.i372 to i32            ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 3 uses
  store i32 %i.dc, ptr %i.dd, align 8, !tbaa !423, !alias.scope !1101
  %i.de = icmp ult i32 %i.dc, 65
  br i1 %i.de, label %_ZN4llvm5APIntC2Ejmbb.exit.thread.i.i, label %_ZN4llvm5APIntC2Ejmbb.exit.i.i

_ZN4llvm5APIntC2Ejmbb.exit.thread.i.i:            ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit374
  %i.df = add nuw nsw i64 %.pn.i.i372, 63
  %i.dg = and i64 %i.df, 63
  %i.dh = shl nuw i64 1, %i.dg
  br label %bb.t

_ZN4llvm5APIntC2Ejmbb.exit.i.i:                   ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit374
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %33, i64 noundef 0, i1 noundef zeroext false) #28
  %.pr.i.i = load i32, ptr %i.dd, align 8, !tbaa !423, !alias.scope !1101
  %i.di = add i32 %i.dc, -1                       ; 2 uses
  %i.dj = and i32 %i.di, 63
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = shl nuw i64 1, %i.dk                    ; 2 uses
  %i.dm = icmp ult i32 %.pr.i.i, 65
  br i1 %i.dm, label %_ZN4llvm5APIntC2Ejmbb.exit._crit_edge.i.i, label %bb.u

_ZN4llvm5APIntC2Ejmbb.exit._crit_edge.i.i:        ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i.i
  %.pre.i.i = load i64, ptr %33, align 8, !tbaa !368, !alias.scope !1101
  %i.dn = or i64 %.pre.i.i, %i.dl
  br label %bb.t

bb.t:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit._crit_edge.i.i, %_ZN4llvm5APIntC2Ejmbb.exit.thread.i.i
  %i.do = phi i64 [ %i.dh, %_ZN4llvm5APIntC2Ejmbb.exit.thread.i.i ], [ %i.dn, %_ZN4llvm5APIntC2Ejmbb.exit._crit_edge.i.i ]
  store i64 %i.do, ptr %33, align 8, !tbaa !368, !alias.scope !1101
  br label %_ZN4llvm5APInt11getSignMaskEj.exit

bb.u:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i.i
  %i.dp = load ptr, ptr %33, align 8, !tbaa !368, !alias.scope !1101
  %i.dq = lshr i32 %i.di, 6
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dr ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !294
  %i.du = or i64 %i.dt, %i.dl
  store i64 %i.du, ptr %i.ds, align 8, !tbaa !294
  br label %_ZN4llvm5APInt11getSignMaskEj.exit

_ZN4llvm5APInt11getSignMaskEj.exit:               ; preds = %bb.t, %bb.u
  %i.dv = load ptr, ptr %31, align 8, !tbaa !368
  %.not.i375 = icmp eq ptr %i.dv, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i375, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN4llvm5APInt11getSignMaskEj.exit
  %i.dw = call noundef i32 @_ZN4llvm6detail9IEEEFloat16convertFromAPIntERKNS_5APIntEbNS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 8 dereferenceable(12) %33, i1 noundef zeroext false, i8 noundef signext 1) #28
  br label %_ZN4llvm7APFloat16convertFromAPIntERKNS_5APIntEbNS_12RoundingModeE.exit

bb.w:                                             ; preds = %_ZN4llvm5APInt11getSignMaskEj.exit
  %i.dx = call noundef i32 @_ZN4llvm6detail13DoubleAPFloat16convertFromAPIntERKNS_5APIntEbNS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 8 dereferenceable(12) %33, i1 noundef zeroext false, i8 noundef signext 1) #28
  br label %_ZN4llvm7APFloat16convertFromAPIntERKNS_5APIntEbNS_12RoundingModeE.exit

_ZN4llvm7APFloat16convertFromAPIntERKNS_5APIntEbNS_12RoundingModeE.exit: ; preds = %bb.v, %bb.w
  %.0.i376 = phi i32 [ %i.dw, %bb.v ], [ %i.dx, %bb.w ]
  %i.dy = and i32 %.0.i376, 4
  %.not = icmp eq i32 %i.dy, 0
  %i.dz = call noundef zeroext i1 @_ZN4llvm6SDNode16isStrictFPOpcodeEv(ptr noundef nonnull align 8 dereferenceable(88) %1) ; 2 uses
  br i1 %.not, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm7APFloat16convertFromAPIntERKNS_5APIntEbNS_12RoundingModeE.exit
  br i1 %i.dz, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 8 dereferenceable(16) %30, i64 16, i1 false), !tbaa.struct !379
  %i.ea = getelementptr inbounds nuw i8, ptr %34, i64 16
  store i16 1, ptr %i.ea, align 8, !tbaa !407
  %i.eb = getelementptr inbounds nuw i8, ptr %34, i64 24
  store ptr null, ptr %i.eb, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #28
  %i.ec = load ptr, ptr %i.g, align 8, !tbaa !248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %36, ptr noundef nonnull align 8 dereferenceable(12) %i.ec, i64 12, i1 false), !tbaa.struct !397
  %i.ed = getelementptr inbounds nuw i8, ptr %36, i64 16
  store ptr %.sroa.0471.0.copyload, ptr %i.ed, align 8, !tbaa !246
  %.sroa.12.0..sroa_idx486 = getelementptr inbounds nuw i8, ptr %36, i64 24
  store i32 %.sroa.12.0.copyload, ptr %.sroa.12.0..sroa_idx486, align 8, !tbaa !245
  store ptr %36, ptr %35, align 8, !tbaa !340
  %i.ee = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 2, ptr %i.ee, align 8, !tbaa !289
  %i.ef = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8ArrayRefINS_3EVTEEENS4_INS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 146, ptr noundef nonnull align 8 dereferenceable(12) %28, ptr nonnull %34, i64 2, ptr noundef nonnull byval(%"class.llvm::ArrayRef.315") align 8 %35) #28 ; 2 uses
  %.fca.0.extract273 = extractvalue { ptr, i32 } %i.ef, 0 ; 2 uses
  %.fca.1.extract274 = extractvalue { ptr, i32 } %i.ef, 1
  store ptr %.fca.0.extract273, ptr %2, align 8, !tbaa !246
  %.sroa.4282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.fca.1.extract274, ptr %.sroa.4282.0..sroa_idx, align 8, !tbaa !245
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  store ptr %.fca.0.extract273, ptr %3, align 8, !tbaa !246
  br label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit388.thread.sink.split

bb.z:                                             ; preds = %bb.x
  %.sroa.0260.0.copyload = load i16, ptr %30, align 8, !tbaa !343
  %.sroa.2262.0.copyload = load ptr, ptr %i.r, align 8, !tbaa !341
  store ptr %.sroa.0471.0.copyload, ptr %37, align 8, !tbaa !246
  %.sroa.12.0..sroa_idx478 = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i32 %.sroa.12.0.copyload, ptr %.sroa.12.0..sroa_idx478, align 8, !tbaa !245
  %.sroa.15.0..sroa_idx490 = getelementptr inbounds nuw i8, ptr %37, i64 12
  store i32 %.sroa.15.0.copyload, ptr %.sroa.15.0..sroa_idx490, align 4
  %i.eg = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 240, ptr noundef nonnull align 8 dereferenceable(12) %28, i16 %.sroa.0260.0.copyload, ptr %.sroa.2262.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %37) #28 ; 2 uses
  %.fca.0.extract256 = extractvalue { ptr, i32 } %i.eg, 0
  %.fca.1.extract257 = extractvalue { ptr, i32 } %i.eg, 1
  store ptr %.fca.0.extract256, ptr %2, align 8, !tbaa !246
  br label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit388.thread.sink.split

bb.aa:                                            ; preds = %_ZN4llvm7APFloat16convertFromAPIntERKNS_5APIntEbNS_12RoundingModeE.exit
  %.sroa.0253.0.copyload = load i16, ptr %29, align 8, !tbaa !343 ; 4 uses
  %.sroa.2255.0.copyload = load ptr, ptr %i.o, align 8, !tbaa !341 ; 2 uses
  %.not.i.i.i.i381 = icmp eq i16 %.sroa.0253.0.copyload, 1
  %i.eh = icmp eq ptr %.sroa.2255.0.copyload, null
  %.not4.i.i.i382 = select i1 %.not.i.i.i.i381, i1 %i.eh, i1 false
  br i1 %.not4.i.i.i382, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit388, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not.i16.i383 = icmp eq i16 %.sroa.0253.0.copyload, 0
  br i1 %.not.i16.i383, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit388.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i384

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i384: ; preds = %bb.ab
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ej = zext i16 %.sroa.0253.0.copyload to i64  ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.ej
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !372
  %.not.i385 = icmp eq ptr %i.el, null
  br i1 %.not.i385, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit388.thread, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit388

_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit388: ; preds = %bb.aa, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i384
  %.pre-phi = phi i64 [ %i.ej, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i384 ], [ 1, %bb.aa ]
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 6184
  %i.en = select i1 %i.dz, i64 105, i64 100
  %i.eo = getelementptr inbounds nuw [537 x i8], ptr %i.em, i64 %.pre-phi
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.en
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !380
  %i.er = and i8 %i.eq, -5
  %spec.select.i387 = icmp eq i8 %i.er, 0
  br i1 %spec.select.i387, label %bb.ac, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit388.thread

bb.ac:                                            ; preds = %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit388
  %i.es = call { ptr, i32 } @_ZN4llvm12SelectionDAG13getConstantFPERKNS_7APFloatERKNS_5SDLocENS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %4, ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 8 dereferenceable(12) %28, i16 %.sroa.0253.0.copyload, ptr %.sroa.2255.0.copyload, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract229 = extractvalue { ptr, i32 } %i.es, 0 ; 4 uses
  %.fca.1.extract230 = extractvalue { ptr, i32 } %i.es, 1 ; 4 uses
  %i.et = call noundef zeroext i1 @_ZN4llvm6SDNode16isStrictFPOpcodeEv(ptr noundef nonnull align 8 dereferenceable(88) %1)
  br i1 %i.et, label %bb.ad, label %_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE.exit403

bb.ad:                                            ; preds = %bb.ac
  %i.eu = load ptr, ptr %i.g, align 8, !tbaa !248 ; 2 uses
  %.sroa.0504.0.copyload = load ptr, ptr %i.eu, align 8, !tbaa !246 ; 2 uses
  %.sroa.2505.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ev = load i64, ptr %.sroa.2505.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  store ptr %.fca.0.extract229, ptr %25, align 8
  %.sroa.2464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i32 %.fca.1.extract230, ptr %.sroa.2464.0..sroa_idx, align 8
  %.not.i389 = icmp eq ptr %.sroa.0504.0.copyload, null
  br i1 %.not.i389, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  store i16 %i.ab, ptr %20, align 8, !tbaa !343
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %i.ac, ptr %.sroa.434.0..sroa_idx.i, align 8, !tbaa !341
  %i.ew = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i16 1, ptr %i.ew, align 8, !tbaa !407
  %i.ex = getelementptr inbounds nuw i8, ptr %20, i64 24
  store ptr null, ptr %i.ex, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  store ptr %.sroa.0504.0.copyload, ptr %22, align 8, !tbaa !246
  %.sroa.5502.0..sroa_idx503 = getelementptr inbounds nuw i8, ptr %22, i64 8
  %.sroa.5502.0.extract.trunc = trunc i64 %i.ev to i32
  store i32 %.sroa.5502.0.extract.trunc, ptr %.sroa.5502.0..sroa_idx503, align 8, !tbaa !245
  %i.ey = getelementptr inbounds nuw i8, ptr %22, i64 16
  store ptr %.sroa.0471.0.copyload, ptr %i.ey, align 8, !tbaa !246
  %.sroa.3.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %22, i64 24
  store i32 %.sroa.12.0.copyload, ptr %.sroa.3.0..sroa_idx30.i, align 8, !tbaa !245
  %i.ez = getelementptr inbounds nuw i8, ptr %22, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ez, ptr noundef nonnull align 8 dereferenceable(12) %25, i64 12, i1 false), !tbaa.struct !397
  %i.fa = getelementptr inbounds nuw i8, ptr %22, i64 48
  %i.fb = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getCondCodeENS_3ISD8CondCodeE(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 20) #28 ; 2 uses
  %.fca.0.extract14.i = extractvalue { ptr, i32 } %i.fb, 0
  %.fca.1.extract15.i = extractvalue { ptr, i32 } %i.fb, 1
  store ptr %.fca.0.extract14.i, ptr %i.fa, align 8
  %.sroa.217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 56
  store i32 %.fca.1.extract15.i, ptr %.sroa.217.0..sroa_idx.i, align 8
  store ptr %22, ptr %21, align 8, !tbaa !340
  %i.fc = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 4, ptr %i.fc, align 8, !tbaa !289
  %i.fd = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8ArrayRefINS_3EVTEEENS4_INS_7SDValueEEENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 153, ptr noundef nonnull align 8 dereferenceable(12) %28, ptr nonnull %20, i64 2, ptr noundef nonnull byval(%"class.llvm::ArrayRef.315") align 8 %21, i32 0) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br label %_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE.exit

bb.af:                                            ; preds = %bb.ad
  store ptr %.sroa.0471.0.copyload, ptr %23, align 8, !tbaa !246
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i32 %.sroa.12.0.copyload, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !245
  %i.fe = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getCondCodeENS_3ISD8CondCodeE(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 20) #28 ; 2 uses
  %.fca.0.extract2.i = extractvalue { ptr, i32 } %i.fe, 0
  %.fca.1.extract3.i = extractvalue { ptr, i32 } %i.fe, 1
  store ptr %.fca.0.extract2.i, ptr %24, align 8
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i32 %.fca.1.extract3.i, ptr %.sroa.25.0..sroa_idx.i, align 8
  %i.ff = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 222, ptr noundef nonnull align 8 dereferenceable(12) %28, i16 %i.ab, ptr %i.ac, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %23, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %25, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %24, i32 0) #28
  br label %_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE.exit

_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE.exit: ; preds = %bb.ae, %bb.af
  %.pn.i = phi { ptr, i32 } [ %i.fd, %bb.ae ], [ %i.ff, %bb.af ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  %.fca.0.extract209 = extractvalue { ptr, i32 } %.pn.i, 0 ; 2 uses
  store ptr %.fca.0.extract209, ptr %3, align 8, !tbaa !246
  %.sroa.4214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 1, ptr %.sroa.4214.0..sroa_idx, align 8, !tbaa !245
  br label %bb.ag

_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE.exit403: ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  store ptr %.fca.0.extract229, ptr %19, align 8
  %.sroa.2460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %.fca.1.extract230, ptr %.sroa.2460.0..sroa_idx, align 8
  store ptr %.sroa.0471.0.copyload, ptr %17, align 8, !tbaa !246
  %.sroa.3.0..sroa_idx.i399 = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %.sroa.12.0.copyload, ptr %.sroa.3.0..sroa_idx.i399, align 8, !tbaa !245
  %i.fg = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getCondCodeENS_3ISD8CondCodeE(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 20) #28 ; 2 uses
  %.fca.0.extract2.i400 = extractvalue { ptr, i32 } %i.fg, 0
  %.fca.1.extract3.i401 = extractvalue { ptr, i32 } %i.fg, 1
  store ptr %.fca.0.extract2.i400, ptr %18, align 8
  %.sroa.25.0..sroa_idx.i402 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %.fca.1.extract3.i401, ptr %.sroa.25.0..sroa_idx.i402, align 8
  %i.fh = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 222, ptr noundef nonnull align 8 dereferenceable(12) %28, i16 %i.ab, ptr %i.ac, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %19, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18, i32 0) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  %.pre = extractvalue { ptr, i32 } %i.fh, 0
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE.exit403, %_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE.exit
  %.sroa.0466.0.pre-phi = phi ptr [ %.pre, %_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE.exit403 ], [ %.fca.0.extract209, %_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE.exit ] ; 4 uses
  %.pn.i.pn = phi { ptr, i32 } [ %i.fh, %_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE.exit403 ], [ %.pn.i, %_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE.exit ]
  %.sroa.11.0 = extractvalue { ptr, i32 } %.pn.i.pn, 1 ; 4 uses
  %i.fi = call noundef zeroext i1 @_ZN4llvm6SDNode16isStrictFPOpcodeEv(ptr noundef nonnull align 8 dereferenceable(88) %1)
  br i1 %i.fi, label %.critedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.sroa.0193.0.copyload = load i16, ptr %29, align 8, !tbaa !343
  %.sroa.2195.0.copyload = load ptr, ptr %i.o, align 8, !tbaa !341
  %.sroa.0190.0.copyload = load i16, ptr %30, align 8, !tbaa !343
  %.sroa.2192.0.copyload = load ptr, ptr %i.r, align 8, !tbaa !341
  %i.fj = load ptr, ptr %0, align 8, !tbaa !8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 1280
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = call noundef zeroext i1 %i.fl(ptr noundef nonnull align 8 dereferenceable(518435) %0, i16 %.sroa.0193.0.copyload, ptr %.sroa.2195.0.copyload, i16 %.sroa.0190.0.copyload, ptr %.sroa.2192.0.copyload, i1 noundef zeroext false) #28
  br i1 %i.fm, label %.critedge, label %bb.ap

.critedge:                                        ; preds = %bb.ag, %bb.ah
  %.sroa.0181.0.copyload = load i16, ptr %29, align 8, !tbaa !343 ; 2 uses
  %.sroa.2183.0.copyload = load ptr, ptr %i.o, align 8, !tbaa !341 ; 2 uses
  %i.fn = call { ptr, i32 } @_ZN4llvm12SelectionDAG13getConstantFPEdRKNS_5SDLocENS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %4, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(12) %28, i16 %.sroa.0181.0.copyload, ptr %.sroa.2183.0.copyload, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract171 = extractvalue { ptr, i32 } %i.fn, 0
  %.fca.1.extract172 = extractvalue { ptr, i32 } %i.fn, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store ptr %.fca.0.extract229, ptr %15, align 8
  %.sroa.2450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %.fca.1.extract230, ptr %.sroa.2450.0..sroa_idx, align 8
  store ptr %.fca.0.extract171, ptr %16, align 8
  %.sroa.2453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %.fca.1.extract172, ptr %.sroa.2453.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0466.0.pre-phi, i64 48
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !342
  %i.fq = zext i32 %.sroa.11.0 to i64
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %i.fp, i64 %i.fq ; 2 uses
  %.sroa.0.0.copyload.i.i.i404 = load i16, ptr %i.fr, align 8, !tbaa !343 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !341
  store i16 %.sroa.0.0.copyload.i.i.i404, ptr %13, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i, ptr %i.fs, align 8
  %.not.i.i405 = icmp eq i16 %.sroa.0.0.copyload.i.i.i404, 0
  br i1 %.not.i.i405, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.critedge
  %i.ft = add i16 %.sroa.0.0.copyload.i.i.i404, -19
  %spec.select.i.i.i = icmp ult i16 %i.ft, 197
  br label %_ZN4llvm12SelectionDAG9getSelectERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE.exit

bb.aj:                                            ; preds = %.critedge
  %i.fu = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #32
  br label %_ZN4llvm12SelectionDAG9getSelectERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE.exit

_ZN4llvm12SelectionDAG9getSelectERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE.exit: ; preds = %bb.ai, %bb.aj
  %i.fv = phi i1 [ %spec.select.i.i.i, %bb.ai ], [ %i.fu, %bb.aj ]
  %i.fw = select i1 %i.fv, i32 220, i32 219
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  store ptr %.sroa.0466.0.pre-phi, ptr %14, align 8, !tbaa !246
  %.sroa.3.0..sroa_idx.i406 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.sroa.11.0, ptr %.sroa.3.0..sroa_idx.i406, align 8, !tbaa !245
  %i.fx = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef %i.fw, ptr noundef nonnull align 8 dereferenceable(12) %28, i16 %.sroa.0181.0.copyload, ptr %.sroa.2183.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15, i32 0) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %.fca.0.extract167 = extractvalue { ptr, i32 } %i.fx, 0 ; 2 uses
  %.fca.1.extract168 = extractvalue { ptr, i32 } %i.fx, 1 ; 2 uses
  %i.fy = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getBoolExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTES5_(ptr noundef nonnull align 8 dereferenceable(920) %4, ptr nonnull %.sroa.0466.0.pre-phi, i32 %.sroa.11.0, ptr noundef nonnull align 8 dereferenceable(12) %28, i16 %i.ak, ptr %i.al, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %30) #28 ; 2 uses
  %.fca.0.extract154 = extractvalue { ptr, i32 } %i.fy, 0 ; 2 uses
  %.fca.1.extract155 = extractvalue { ptr, i32 } %i.fy, 1 ; 2 uses
  %.sroa.0148.0.copyload = load i16, ptr %30, align 8, !tbaa !343 ; 2 uses
  %.sroa.2150.0.copyload = load ptr, ptr %i.r, align 8, !tbaa !341 ; 2 uses
  %i.fz = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %4, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %28, i16 %.sroa.0148.0.copyload, ptr %.sroa.2150.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract138 = extractvalue { ptr, i32 } %i.fz, 0
  %.fca.1.extract139 = extractvalue { ptr, i32 } %i.fz, 1
  %.sroa.0135.0.copyload = load i16, ptr %30, align 8, !tbaa !343
  %.sroa.2137.0.copyload = load ptr, ptr %i.r, align 8, !tbaa !341
  %i.ga = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantERKNS_5APIntERKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %4, ptr noundef nonnull align 8 dereferenceable(12) %33, ptr noundef nonnull align 8 dereferenceable(12) %28, i16 %.sroa.0135.0.copyload, ptr %.sroa.2137.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract131 = extractvalue { ptr, i32 } %i.ga, 0
  %.fca.1.extract132 = extractvalue { ptr, i32 } %i.ga, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %.fca.0.extract131, ptr %11, align 8
  %.sroa.2443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract132, ptr %.sroa.2443.0..sroa_idx, align 8
  store ptr %.fca.0.extract138, ptr %12, align 8
  %.sroa.2446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.fca.1.extract139, ptr %.sroa.2446.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.gb = getelementptr inbounds nuw i8, ptr %.fca.0.extract154, i64 48
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !342
  %i.gd = zext i32 %.fca.1.extract155 to i64
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %i.gc, i64 %i.gd ; 2 uses
  %.sroa.0.0.copyload.i.i.i407 = load i16, ptr %i.ge, align 8, !tbaa !343 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i.i408 = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %.sroa.21.0.copyload.i.i.i409 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i408, align 8, !tbaa !341
  store i16 %.sroa.0.0.copyload.i.i.i407, ptr %9, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i409, ptr %i.gf, align 8
  %.not.i.i410 = icmp eq i16 %.sroa.0.0.copyload.i.i.i407, 0
  br i1 %.not.i.i410, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvm12SelectionDAG9getSelectERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE.exit
  %i.gg = add i16 %.sroa.0.0.copyload.i.i.i407, -19
  %spec.select.i.i.i411 = icmp ult i16 %i.gg, 197
  br label %_ZN4llvm12SelectionDAG9getSelectERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE.exit413

bb.al:                                            ; preds = %_ZN4llvm12SelectionDAG9getSelectERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE.exit
  %i.gh = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #32
  br label %_ZN4llvm12SelectionDAG9getSelectERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE.exit413

_ZN4llvm12SelectionDAG9getSelectERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE.exit413: ; preds = %bb.ak, %bb.al
  %i.gi = phi i1 [ %spec.select.i.i.i411, %bb.ak ], [ %i.gh, %bb.al ]
  %i.gj = select i1 %i.gi, i32 220, i32 219
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  store ptr %.fca.0.extract154, ptr %10, align 8, !tbaa !246
  %.sroa.3.0..sroa_idx.i412 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract155, ptr %.sroa.3.0..sroa_idx.i412, align 8, !tbaa !245
  %i.gk = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef %i.gj, ptr noundef nonnull align 8 dereferenceable(12) %28, i16 %.sroa.0148.0.copyload, ptr %.sroa.2150.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11, i32 0) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %.fca.0.extract127 = extractvalue { ptr, i32 } %i.gk, 0
  %.fca.1.extract128 = extractvalue { ptr, i32 } %i.gk, 1
  %i.gl = call noundef zeroext i1 @_ZN4llvm6SDNode16isStrictFPOpcodeEv(ptr noundef nonnull align 8 dereferenceable(88) %1)
  br i1 %i.gl, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZN4llvm12SelectionDAG9getSelectERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE.exit413
end_hunk_3
