Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CGDebugInfo?download=true
inline.NumInlined: 37011
inline.NumDeleted: 15434
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4llvm23SmallVectorTemplateBaseImLb1EE9push_backEm:bb.a

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang7CodeGen11CGDebugInfo10CreateTypeEPKNS_10BitIntTypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallString.1368", align 8 ; 9 uses
  %3 = alloca %"class.llvm::raw_svector_ostream", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !601
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !602
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 32, ptr %i.c, align 8, !tbaa !603
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 2, ptr %i.d, align 8, !tbaa !1448
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 0, ptr %i.e, align 8, !tbaa !1449
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 1, ptr %i.f, align 4, !tbaa !1450
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm19raw_svector_ostreamE, i64 16), ptr %3, align 8, !tbaa !596
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %2, ptr %i.h, align 8, !tbaa !1460
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef null, i64 noundef 0, i32 noundef 0) #28
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.j = load i32, ptr %i.i, align 16
  %i.k = trunc i32 %i.j to i1                     ; 2 uses
  %i.l = select i1 %i.k, ptr @.str.66, ptr @.str.67 ; 2 uses
  %i.m = select i1 %i.k, i64 17, i64 8            ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1457
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1458 ; 2 uses
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp ugt i64 %i.m, %i.t
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull %i.l, i64 noundef %i.m) #28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.q, ptr noundef nonnull align 1 dereferenceable(8) %i.l, i64 %i.m, i1 false)
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !1458
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.m
  store ptr %i.x, ptr %i.p, align 8, !tbaa !1458
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.v, %bb.b ], [ %3, %bb.c ]
  %i.y = load i32, ptr %i.i, align 16
  %i.z = lshr i32 %i.y, 1
  %i.aa = and i32 %i.z, 16777215
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, i64 noundef %i.ab) #28 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1457
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1458 ; 2 uses
  %i.ah = icmp eq ptr %i.ae, %i.ag
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ai = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef nonnull @.str.68, i64 noundef 1) #28 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit8

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  store i8 41, ptr %i.ag, align 1
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !1458
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !1458
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit8

_ZN4llvm11raw_ostreamlsEPKc.exit8:                ; preds = %bb.d, %bb.e
  %i.al = load i32, ptr %i.i, align 16
  %i.am = trunc i32 %i.al to i1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %2, align 8, !tbaa !601
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !602
  %i.aq = load ptr, ptr %0, align 8, !tbaa !604, !nonnull !494, !align !495
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 144
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !605, !nonnull !494, !align !495
  %i.at = call { i64, i64 } @_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.as, ptr noundef nonnull %1) #28
  %i.au = extractvalue { i64, i64 } %i.at, 0
  %i.av = select i1 %i.am, i32 7, i32 5
  %i.aw = load i32, ptr %i.i, align 16
  %i.ax = lshr i32 %i.aw, 1
  %i.ay = and i32 %i.ax, 16777215
  %i.az = call noundef ptr @_ZN4llvm9DIBuilder15createBasicTypeENS_9StringRefEmjNS_6DINode7DIFlagsEjj(ptr noundef nonnull align 8 dereferenceable(384) %i.an, ptr %i.ao, i64 %i.ap, i64 noundef %i.au, i32 noundef %i.av, i32 noundef 0, i32 noundef 0, i32 noundef %i.ay) #28
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.ba = load ptr, ptr %2, align 8, !tbaa !601   ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.a
  br i1 %i.bb, label %_ZN4llvm11SmallVectorIcLj32EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit8
  call void @free(ptr noundef %i.ba) #28
  br label %_ZN4llvm11SmallVectorIcLj32EED2Ev.exit

_ZN4llvm11SmallVectorIcLj32EED2Ev.exit:           ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit8, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret ptr %i.az
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang7CodeGen11CGDebugInfo10CreateTypeEPKNS_20OverflowBehaviorTypeEPN4llvm6DIFileE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 16, !tbaa !984
  %i.b = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo15getOrCreateTypeENS_8QualTypeEPN4llvm6DIFileE(ptr noundef nonnull align 8 dereferenceable(2480) %0, i64 %.sroa.0.0.copyload.i, ptr noundef %2)
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang7CodeGen11CGDebugInfo10CreateTypeEPKNS_11ComplexTypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK5clang4Type20isComplexIntegerTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %1) #28
  %spec.select = select i1 %i.a, i32 128, i32 3
  %i.b = load ptr, ptr %0, align 8, !tbaa !604, !nonnull !494, !align !495
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !605, !nonnull !494, !align !495
  %i.e = tail call { i64, i64 } @_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.d, ptr noundef nonnull %1) #28
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = tail call noundef ptr @_ZN4llvm9DIBuilder15createBasicTypeENS_9StringRefEmjNS_6DINode7DIFlagsEjj(ptr noundef nonnull align 8 dereferenceable(384) %i.g, ptr nonnull @.str.69, i64 7, i64 noundef %i.f, i32 noundef %spec.select, i32 noundef 0, i32 noundef 0, i32 noundef 0) #28
  ret ptr %i.h
}

declare noundef zeroext i1 @_ZNK5clang4Type20isComplexIntegerTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang7CodeGen11CGDebugInfo19CreateQualifiedTypeENS_8QualTypeEPN4llvm6DIFileE(ptr noundef nonnull align 8 dereferenceable(2480) %0, i64 %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.clang::QualifierCollector", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = and i64 %1, 7                            ; 2 uses
  %i.b = and i64 %1, 8
  %.not.i = icmp eq i64 %i.b, 0
  %i.c = and i64 %1, -16
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  br i1 %.not.i, label %_ZN5clang18QualifierCollector5stripENS_8QualTypeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.e, align 8, !tbaa !983
  %i.f = or i64 %.sroa.0.0.copyload.i.i, %i.a
  %i.g = load ptr, ptr %i.d, align 16, !tbaa !1439
  br label %_ZN5clang18QualifierCollector5stripENS_8QualTypeE.exit

_ZN5clang18QualifierCollector5stripENS_8QualTypeE.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %i.f, %bb.b ], [ %i.a, %bb.a ] ; 5 uses
  %.0.i = phi ptr [ %i.g, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.i = and i64 %i.h, -4294967289
  %i.j = trunc i64 %i.h to i1
  br i1 %i.j, label %bb.h, label %bb.c

bb.c:                                             ; preds = %_ZN5clang18QualifierCollector5stripENS_8QualTypeE.exit
  %i.k = and i64 %i.h, 4
  %.not.i19 = icmp eq i64 %i.k, 0
  br i1 %.not.i19, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.l = and i64 %i.h, 2
  %.not6.i = icmp eq i64 %i.l, 0
  br i1 %.not6.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.m = lshr i64 %i.h, 32                        ; 2 uses
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = trunc nuw i64 %i.m to i32                ; 5 uses
  %i.o = lshr i32 %i.n, 6
  %i.p = and i32 %i.o, 1023
  %i.q = and i32 %i.n, 2
  %i.r = icmp ne i32 %i.q, 0
  %i.s = lshr i32 %i.n, 16
  %i.t = and i32 %i.n, 16
  %i.u = icmp ne i32 %i.t, 0
  %i.v = and i32 %i.n, 32
  %i.w = icmp ne i32 %i.v, 0
  %i.x = ptrtoint ptr %.0.i to i64
  %i.y = and i64 %i.x, -8
  %i.z = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo15getOrCreateTypeENS_8QualTypeEPN4llvm6DIFileE(ptr noundef nonnull align 8 dereferenceable(2480) %0, i64 %i.y, ptr noundef %2)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = tail call noundef ptr @_ZN4llvm9DIBuilder26createPtrAuthQualifiedTypeEPNS_6DITypeEjbjbb(ptr noundef nonnull align 8 dereferenceable(384) %i.aa, ptr noundef %i.z, i32 noundef %i.p, i1 noundef zeroext %i.r, i32 noundef %i.s, i1 noundef zeroext %i.u, i1 noundef zeroext %i.w) #28
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ac = ptrtoint ptr %.0.i to i64
  %i.ad = and i64 %i.ac, -8
  %i.ae = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo15getOrCreateTypeENS_8QualTypeEPN4llvm6DIFileE(ptr noundef nonnull align 8 dereferenceable(2480) %0, i64 %i.ad, ptr noundef %2)
  br label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.c, %_ZN5clang18QualifierCollector5stripENS_8QualTypeE.exit
  %.sink7.i = phi i64 [ -6, %bb.c ], [ -2, %_ZN5clang18QualifierCollector5stripENS_8QualTypeE.exit ], [ -8, %bb.d ]
  %.0.ph.i = phi i32 [ 53, %bb.c ], [ 38, %_ZN5clang18QualifierCollector5stripENS_8QualTypeE.exit ], [ 55, %bb.d ]
  %i.af = and i64 %.sink7.i, %i.i
  store i64 %i.af, ptr %3, align 8, !tbaa !1515
  %i.ag = load ptr, ptr %0, align 8, !tbaa !604, !nonnull !494, !align !495
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !605, !nonnull !494, !align !495
  %i.aj = call i64 @_ZNK5clang18QualifierCollector5applyERKNS_10ASTContextEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(23904) %i.ai, ptr noundef %.0.i) #28
  %i.ak = call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo15getOrCreateTypeENS_8QualTypeEPN4llvm6DIFileE(ptr noundef nonnull align 8 dereferenceable(2480) %0, i64 %i.aj, ptr noundef %2)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = call noundef ptr @_ZN4llvm9DIBuilder19createQualifiedTypeEjPNS_6DITypeE(ptr noundef nonnull align 8 dereferenceable(384) %i.al, i32 noundef %.0.ph.i, ptr noundef %i.ak) #28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.0 = phi ptr [ %i.am, %bb.h ], [ %i.ab, %bb.f ], [ %i.ae, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret ptr %.0
}

declare noundef ptr @_ZN4llvm9DIBuilder26createPtrAuthQualifiedTypeEPNS_6DITypeEjbjbb(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

declare i64 @_ZNK5clang18QualifierCollector5applyERKNS_10ASTContextEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN4llvm9DIBuilder19createQualifiedTypeEjPNS_6DITypeE(ptr noundef nonnull align 8 dereferenceable(384), i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang7CodeGen11CGDebugInfo19CreateQualifiedTypeEPKNS_17FunctionProtoTypeEPN4llvm6DIFileE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr noundef nonnull %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.clang::FunctionProtoType::ExtProtoInfo", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZNK5clang17FunctionProtoType15getExtProtoInfoEv(ptr dead_on_unwind nonnull writable sret(%"struct.clang::FunctionProtoType::ExtProtoInfo") align 8 %3, ptr noundef nonnull align 16 dereferenceable(48) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1515 ; 4 uses
  %i.c = and i64 %i.b, -4294967289
  %i.d = trunc i64 %i.b to i1
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.b, 4
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = and i64 %i.b, 2
  %.not6.i = icmp eq i64 %i.f, 0
  br i1 %.not6.i, label %_ZL16getNextQualifierRN5clang10QualifiersE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sink7.i = phi i64 [ -6, %bb.b ], [ -2, %bb.a ], [ -8, %bb.c ]
  %.0.ph.i = phi i32 [ 53, %bb.b ], [ 38, %bb.a ], [ 55, %bb.c ]
  %i.g = and i64 %.sink7.i, %i.c
  store i64 %i.g, ptr %i.a, align 8, !tbaa !1515
  %i.h = load ptr, ptr %0, align 8, !tbaa !604, !nonnull !494, !align !495
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !605, !nonnull !494, !align !495
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i = load i64, ptr %i.k, align 8, !tbaa !984
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 16
  %i.o = lshr i64 %i.n, 48
  %i.p = call i64 @_ZNK5clang10ASTContext23getFunctionTypeInternalENS_8QualTypeEN4llvm8ArrayRefIS1_EERKNS_17FunctionProtoType12ExtProtoInfoEb(ptr noundef nonnull align 8 dereferenceable(23904) %i.j, i64 %.sroa.0.0.copyload.i, ptr nonnull %i.l, i64 %i.o, ptr noundef nonnull align 8 dereferenceable(138) %3, i1 noundef zeroext false) #28
  %i.q = call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo15getOrCreateTypeENS_8QualTypeEPN4llvm6DIFileE(ptr noundef nonnull align 8 dereferenceable(2480) %0, i64 %i.p, ptr noundef %2)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = call noundef ptr @_ZN4llvm9DIBuilder19createQualifiedTypeEjPNS_6DITypeE(ptr noundef nonnull align 8 dereferenceable(384) %i.r, i32 noundef %.0.ph.i, ptr noundef %i.q) #28
  br label %_ZL16getNextQualifierRN5clang10QualifiersE.exit.thread

_ZL16getNextQualifierRN5clang10QualifiersE.exit.thread: ; preds = %bb.c, %bb.d
  %.0 = phi ptr [ %i.s, %bb.d ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK5clang17FunctionProtoType15getExtProtoInfoEv(ptr dead_on_unwind noalias writable sret(%"struct.clang::FunctionProtoType::ExtProtoInfo") align 8 %0, ptr noundef nonnull align 16 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !1515
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !1529
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !1530
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.d, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  %i.g = load i16, ptr %i.f, align 8
  %i.h = and i16 %i.g, -4096
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.j = load i64, ptr %i.i, align 16             ; 4 uses
  %i.k = lshr i64 %i.j, 34
  %i.l = trunc i64 %i.k to i16
  %i.m = and i16 %i.l, 16383
  store i16 %i.m, ptr %0, align 8, !tbaa !1531
  %i.n = and i64 %i.j, 2147483648                 ; 2 uses
  %.lobit = lshr exact i64 %i.n, 31
  %i.o = trunc nuw nsw i64 %.lobit to i16
  %i.p = or disjoint i16 %i.h, %i.o
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %_ZNK5clang17FunctionProtoType14getEllipsisLocEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = lshr i64 %i.j, 48
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load i32, ptr %i.s, align 8, !tbaa !985
  br label %_ZNK5clang17FunctionProtoType14getEllipsisLocEv.exit

_ZNK5clang17FunctionProtoType14getEllipsisLocEv.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i32 [ %i.t, %bb.b ], [ 0, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %.sroa.0.0.i, ptr %i.u, align 8, !tbaa !985
  %i.v = lshr i64 %i.j, 31
  %i.w = trunc i64 %i.v to i16
  %i.x = and i16 %i.w, 6
  %i.y = or disjoint i16 %i.x, %i.p               ; 4 uses
  store i16 %i.y, ptr %i.f, align 8
  tail call void @_ZNK5clang17FunctionProtoType20getExceptionSpecInfoEv(ptr dead_on_unwind nonnull writable sret(%"struct.clang::FunctionProtoType::ExceptionSpecInfo") align 8 %i.c, ptr noundef nonnull align 16 dereferenceable(48) %1)
  %i.z = load i64, ptr %i.i, align 16             ; 11 uses
  %i.aa = and i64 %i.z, 16777216
  %.not.i4 = icmp eq i64 %i.aa, 0
  br i1 %.not.i4, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang17FunctionProtoType14getEllipsisLocEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = lshr i64 %i.z, 48                       ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = lshr i64 %i.z, 31
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i64 %i.ae, 1
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.lobit.i.i.i.i.i.i.i.i.i.i.i
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = add i64 %i.ag, 7
  %i.ai = and i64 %i.ah, -8
  %i.aj = inttoptr i64 %i.ai to ptr               ; 4 uses
  %i.ak = and i64 %i.z, 1073741824
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = load i24, ptr %i.aj, align 8            ; 2 uses
  %i.am = lshr i24 %i.al, 10
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i24 %i.am, 1
  %i.an = zext nneg i24 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.an
  %i.aq = lshr i24 %i.al, 11
  %.lobit.i.i.i.i.i.i.i.i.i = and i24 %i.aq, 1
  %i.ar = zext nneg i24 %.lobit.i.i.i.i.i.i.i.i.i to i64
  br label %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i.i

_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.as = phi ptr [ %i.ap, %bb.d ], [ %i.aj, %bb.c ]
  %i.at = phi i64 [ %i.ar, %bb.d ], [ 0, %bb.c ]
  %i.au = and i64 %i.z, 503316480
  %i.av = icmp eq i64 %i.au, 67108864
  br i1 %i.av, label %bb.e, label %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i.i

bb.e:                                             ; preds = %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i.i
  %i.aw = load i24, ptr %i.aj, align 8
  %i.ax = and i24 %i.aw, 1023
  %i.ay = zext nneg i24 %i.ax to i64
  br label %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i.i

_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i.i: ; preds = %bb.e, %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i = phi i64 [ %i.ay, %bb.e ], [ 0, %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i.i ]
  %i.az = trunc i64 %i.z to i32
  %i.ba = lshr i32 %i.az, 25
  %i.bb = and i32 %i.ba, 15                       ; 2 uses
  %i.bc = zext nneg i32 %i.bb to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK5clang17FunctionProtoType15getExtProtoInfoEv.4164, i64 %i.bc
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.at
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %spec.select.i.i.i.i.i.i.i.i
  %.off.i.i.i.i.i.i.i = add nsw i32 %i.bb, -6
  %switch.i.i.i.i.i.i.i = icmp ult i32 %.off.i.i.i.i.i.i.i, 3
  %i.bf = zext i1 %switch.i.i.i.i.i.i.i to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bf
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %switch.ext
  %i.bi = and i64 %i.z, 536870912
  %.not.i.i.i.i.i = icmp eq i64 %i.bi, 0
  %i.bj = select i1 %.not.i.i.i.i.i, i64 0, i64 %i.ac
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bj
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = add i64 %i.bl, 7
  %i.bn = and i64 %i.bm, -8
  %i.bo = inttoptr i64 %i.bn to ptr
  %.sroa.0.0.copyload.i = load i64, ptr %i.bo, align 8, !tbaa !983
  br label %_ZNK5clang17FunctionProtoType14getMethodQualsEv.exit

bb.f:                                             ; preds = %_ZNK5clang17FunctionProtoType14getEllipsisLocEv.exit
  %i.bp = and i64 %i.z, 255
  %.not.i.i.i.i = icmp eq i64 %i.bp, 24
  br i1 %.not.i.i.i.i, label %_ZNK5clang4Type19isFunctionProtoTypeEv.exit.thread.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bq, align 8, !tbaa !984
  %i.br = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, -16
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = load ptr, ptr %i.bs, align 16, !tbaa !1439
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load i8, ptr %i.bu, align 16
  %i.bw = icmp eq i8 %i.bv, 24
  br i1 %i.bw, label %_ZNK5clang4Type19isFunctionProtoTypeEv.exit.i.i, label %_ZNK5clang17FunctionProtoType14getMethodQualsEv.exit

_ZNK5clang4Type19isFunctionProtoTypeEv.exit.i.i:  ; preds = %bb.g
  %i.bx = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(48) %1) #28
  %.not.i.i = icmp eq ptr %i.bx, null
  %.pre = load i64, ptr %i.i, align 16            ; 2 uses
  br i1 %.not.i.i, label %_ZNK5clang17FunctionProtoType14getMethodQualsEv.exit, label %_ZNK5clang4Type19isFunctionProtoTypeEv.exit.thread.i.i

_ZNK5clang4Type19isFunctionProtoTypeEv.exit.thread.i.i: ; preds = %_ZNK5clang4Type19isFunctionProtoTypeEv.exit.i.i, %bb.f
  %i.by = phi i64 [ %i.z, %bb.f ], [ %.pre, %_ZNK5clang4Type19isFunctionProtoTypeEv.exit.i.i ] ; 2 uses
  %i.bz = lshr i64 %i.by, 21
  %i.ca = and i64 %i.bz, 7
  br label %_ZNK5clang17FunctionProtoType14getMethodQualsEv.exit

_ZNK5clang17FunctionProtoType14getMethodQualsEv.exit: ; preds = %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i.i, %bb.g, %_ZNK5clang4Type19isFunctionProtoTypeEv.exit.i.i, %_ZNK5clang4Type19isFunctionProtoTypeEv.exit.thread.i.i
  %i.cb = phi i64 [ %i.z, %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i.i ], [ %i.by, %_ZNK5clang4Type19isFunctionProtoTypeEv.exit.thread.i.i ], [ %.pre, %_ZNK5clang4Type19isFunctionProtoTypeEv.exit.i.i ], [ %i.z, %bb.g ] ; 12 uses
  %.sroa.0.0.i5 = phi i64 [ %.sroa.0.0.copyload.i, %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i.i ], [ %i.ca, %_ZNK5clang4Type19isFunctionProtoTypeEv.exit.thread.i.i ], [ 0, %_ZNK5clang4Type19isFunctionProtoTypeEv.exit.i.i ], [ 0, %bb.g ]
  store i64 %.sroa.0.0.i5, ptr %i.a, align 8, !tbaa !983
  %i.cc = trunc i64 %i.cb to i32                  ; 3 uses
  %i.cd = lshr i32 %i.cc, 19
  %i.ce = and i32 %i.cd, 3
  store i32 %i.ce, ptr %i.b, align 8, !tbaa !1529
  %i.cf = and i64 %i.cb, 536870912
  %.not.i6 = icmp eq i64 %i.cf, 0                 ; 2 uses
  br i1 %.not.i6, label %_ZNK5clang17FunctionProtoType14getMethodQualsEv.exit._ZNK5clang17FunctionProtoType26getExtParameterInfosOrNullEv.exit_crit_edge, label %bb.h

_ZNK5clang17FunctionProtoType14getMethodQualsEv.exit._ZNK5clang17FunctionProtoType26getExtParameterInfosOrNullEv.exit_crit_edge: ; preds = %_ZNK5clang17FunctionProtoType14getMethodQualsEv.exit
  %.pre25 = and i64 %i.cb, 1073741824
  br label %_ZNK5clang17FunctionProtoType26getExtParameterInfosOrNullEv.exit

bb.h:                                             ; preds = %_ZNK5clang17FunctionProtoType14getMethodQualsEv.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ch = lshr i64 %i.cb, 48
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = lshr i64 %i.cb, 31
  %.lobit.i.i.i.i.i.i.i.i.i.i7 = and i64 %i.cj, 1
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.lobit.i.i.i.i.i.i.i.i.i.i7
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = add i64 %i.cl, 7
  %i.cn = and i64 %i.cm, -8
  %i.co = inttoptr i64 %i.cn to ptr               ; 4 uses
  %i.cp = and i64 %i.cb, 1073741824               ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i, label %bb.i
end_hunk_0
begin_hunk_1_@_ZN5clang7CodeGen11CGDebugInfo10CreateTypeEPKNS_11TypedefTypeEPN4llvm6DIFileE:bb.a
bb.r:                                             ; preds = %_ZN5clang7CodeGen11CGDebugInfo13getLineNumberENS_14SourceLocationE.exit
  %i.dj = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -5
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !1422
  br label %_ZNK5clang4Decl14getDeclContextEv.exit.i

_ZNK5clang4Decl14getDeclContextEv.exit.i:         ; preds = %bb.r, %bb.q
  %.0.i.i.i = phi ptr [ %i.di, %bb.q ], [ %i.dl, %bb.r ]
  %i.dm = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef %.0.i.i.i) #28, !inline_history !1427
  %.not.i37 = icmp eq ptr %i.de, null
  br i1 %.not.i37, label %bb.s, label %_ZN5clang7CodeGen11CGDebugInfo24getDeclContextDescriptorEPKNS_4DeclE.exit

bb.s:                                             ; preds = %_ZNK5clang4Decl14getDeclContextEv.exit.i
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1017
  br label %_ZN5clang7CodeGen11CGDebugInfo24getDeclContextDescriptorEPKNS_4DeclE.exit

_ZN5clang7CodeGen11CGDebugInfo24getDeclContextDescriptorEPKNS_4DeclE.exit: ; preds = %_ZNK5clang4Decl14getDeclContextEv.exit.i, %bb.s
  %i.dp = phi ptr [ %i.do, %bb.s ], [ %i.de, %_ZNK5clang4Decl14getDeclContextEv.exit.i ]
  %i.dq = call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo20getContextDescriptorEPKNS_4DeclEPN4llvm7DIScopeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr noundef %i.dm, ptr noundef %i.dp), !inline_history !1427
  %i.dr = call noundef ptr @_ZN4llvm9DIBuilder13createTypedefEPNS_6DITypeENS_9StringRefEPNS_6DIFileEjPNS_7DIScopeEjNS_6DINode7DIFlagsENS_24MDTupleTypedArrayWrapperIS8_EE(ptr noundef nonnull align 8 dereferenceable(384) %i.by, ptr noundef %i.g, ptr nonnull %.sroa.0.0.i35, i64 %.sroa.3.0.i, ptr noundef %i.ck, i32 noundef %.1.i, ptr noundef %i.dq, i32 noundef %i.an, i32 noundef %.024, i64 %.sroa.039.0) #28
  %i.ds = load ptr, ptr %4, align 8, !tbaa !597   ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.ao
  br i1 %i.dt, label %_ZN4llvm11SmallVectorIPNS_8MetadataELj4EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN5clang7CodeGen11CGDebugInfo24getDeclContextDescriptorEPKNS_4DeclE.exit
  call void @free(ptr noundef %i.ds) #28
  br label %_ZN4llvm11SmallVectorIPNS_8MetadataELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_8MetadataELj4EED2Ev.exit: ; preds = %_ZN5clang7CodeGen11CGDebugInfo24getDeclContextDescriptorEPKNS_4DeclE.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.u

bb.u:                                             ; preds = %_ZNK5clang4Decl7hasAttrINS_11NoDebugAttrEEEbv.exit, %_ZN4llvm11SmallVectorIPNS_8MetadataELj4EED2Ev.exit
  %.0 = phi ptr [ %i.dr, %_ZN4llvm11SmallVectorIPNS_8MetadataELj4EED2Ev.exit ], [ %i.g, %_ZNK5clang4Decl7hasAttrINS_11NoDebugAttrEEEbv.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang7CodeGen11CGDebugInfo28CollectBTFDeclTagAnnotationsEPKNS_4DeclERN4llvm15SmallVectorImplIPNS5_8MetadataEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2480) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 256
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %_ZNK5clang4Decl14specific_attrsINS_14BTFDeclTagAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit, label %_ZNK5clang4Decl19specific_attr_beginINS_14BTFDeclTagAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i

_ZNK5clang4Decl19specific_attr_beginINS_14BTFDeclTagAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i: ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #28
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !597  ; 2 uses
  %.pre.i = load i32, ptr %i.b, align 4
  %.pre4.i = and i32 %.pre.i, 256
  %i.g = icmp eq i32 %.pre4.i, 0
  br i1 %i.g, label %_ZNK5clang4Decl14specific_attrsINS_14BTFDeclTagAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK5clang4Decl19specific_attr_beginINS_14BTFDeclTagAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #28 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !597
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !598
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.l
  br label %_ZNK5clang4Decl14specific_attrsINS_14BTFDeclTagAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit

_ZNK5clang4Decl14specific_attrsINS_14BTFDeclTagAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit: ; preds = %bb.a, %_ZNK5clang4Decl19specific_attr_beginINS_14BTFDeclTagAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i, %bb.b
  %i.n = phi ptr [ %i.f, %bb.b ], [ %i.f, %_ZNK5clang4Decl19specific_attr_beginINS_14BTFDeclTagAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i ], [ null, %bb.a ]
  %i.o = phi ptr [ %i.m, %bb.b ], [ null, %_ZNK5clang4Decl19specific_attr_beginINS_14BTFDeclTagAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i ], [ null, %bb.a ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 12
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit, %_ZNK5clang4Decl14specific_attrsINS_14BTFDeclTagAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit
  %.sroa.013.0 = phi ptr [ %i.n, %_ZNK5clang4Decl14specific_attrsINS_14BTFDeclTagAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit ], [ %i.bm, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit ] ; 8 uses
  %i.s = icmp ult ptr %.sroa.013.0, %i.o
  br i1 %i.s, label %.lr.ph.i.i.i, label %bb.e

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %.sroa.07.1.i.i = phi ptr [ %i.x, %bb.d ], [ %.sroa.013.0, %bb.c ] ; 3 uses
  %i.t = load ptr, ptr %.sroa.07.1.i.i, align 8, !tbaa !1512
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 36
  %i.v = load i16, ptr %i.u, align 4
  %i.w = icmp eq i16 %i.v, 155
  br i1 %i.w, label %_ZN5clangneENS_22specific_attr_iteratorINS_14BTFDeclTagAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i, i64 8 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.x, %i.o
  br i1 %.not.i.i.i10, label %_ZN5clangneENS_22specific_attr_iteratorINS_14BTFDeclTagAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.thread, label %.lr.ph.i.i.i, !llvm.loop !29

bb.e:                                             ; preds = %bb.c
  %.not2.i3.i.i = icmp eq ptr %i.o, %.sroa.013.0
  br i1 %.not2.i3.i.i, label %_ZN5clangneENS_22specific_attr_iteratorINS_14BTFDeclTagAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.thread, label %.lr.ph.i4.i.i

.lr.ph.i4.i.i:                                    ; preds = %bb.e, %bb.f
  %.sroa.0.1.i.i = phi ptr [ %i.ac, %bb.f ], [ %i.o, %bb.e ] ; 3 uses
  %i.y = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !1512
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 36
  %i.aa = load i16, ptr %i.z, align 4
  %i.ab = icmp eq i16 %i.aa, 155
  br i1 %i.ab, label %_ZN5clangneENS_22specific_attr_iteratorINS_14BTFDeclTagAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i4.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 8 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.ac, %.sroa.013.0
  br i1 %.not.i5.i.i, label %_ZN5clangneENS_22specific_attr_iteratorINS_14BTFDeclTagAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.thread, label %.lr.ph.i4.i.i, !llvm.loop !29

_ZN5clangneENS_22specific_attr_iteratorINS_14BTFDeclTagAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit: ; preds = %.lr.ph.i4.i.i, %.lr.ph.i.i.i
  %.sroa.07.0.i.i = phi ptr [ %.sroa.07.1.i.i, %.lr.ph.i.i.i ], [ %.sroa.013.0, %.lr.ph.i4.i.i ]
  %.sroa.0.0.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.0.1.i.i, %.lr.ph.i4.i.i ]
  %.not = icmp eq ptr %.sroa.07.0.i.i, %.sroa.0.0.i.i
  br i1 %.not, label %_ZN5clangneENS_22specific_attr_iteratorINS_14BTFDeclTagAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.thread, label %bb.g

_ZN5clangneENS_22specific_attr_iteratorINS_14BTFDeclTagAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.thread: ; preds = %bb.e, %_ZN5clangneENS_22specific_attr_iteratorINS_14BTFDeclTagAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit, %bb.f, %bb.d
  ret void

bb.g:                                             ; preds = %_ZN5clangneENS_22specific_attr_iteratorINS_14BTFDeclTagAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit
  %i.ad = load ptr, ptr %.sroa.013.0, align 8, !tbaa !1512 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 36
  %i.af = load i16, ptr %i.ae, align 4
  %i.ag = icmp eq i16 %i.af, 155
  br i1 %i.ag, label %_ZNK5clang22specific_attr_iteratorINS_14BTFDeclTagAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.ah = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %.sroa.013.0, %bb.g ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1512 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 36
  %i.al = load i16, ptr %i.ak, align 4
  %i.am = icmp eq i16 %i.al, 155
  br i1 %i.am, label %_ZNK5clang22specific_attr_iteratorINS_14BTFDeclTagAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit, label %.lr.ph.i.i, !llvm.loop !2775

_ZNK5clang22specific_attr_iteratorINS_14BTFDeclTagAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit: ; preds = %.lr.ph.i.i, %bb.g
  %.sroa.013.1 = phi ptr [ %.sroa.013.0, %bb.g ], [ %i.ai, %.lr.ph.i.i ]
  %i.an = phi ptr [ %i.ad, %bb.g ], [ %i.aj, %.lr.ph.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.ao = load ptr, ptr %0, align 8, !tbaa !604, !nonnull !494, !align !495
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 232
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1296, !nonnull !494, !align !495
  %i.ar = call noundef ptr @_ZN4llvm8MDString3getERNS_11LLVMContextENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr nonnull @.str.82, i64 12) #28
  store ptr %i.ar, ptr %i.a, align 16, !tbaa !1506
  %i.as = load ptr, ptr %0, align 8, !tbaa !604, !nonnull !494, !align !495
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 232
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1296, !nonnull !494, !align !495
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !2777
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !2778
  %i.az = zext i32 %i.ay to i64
  %i.ba = call noundef ptr @_ZN4llvm8MDString3getERNS_11LLVMContextENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr %i.aw, i64 %i.az) #28
  store ptr %i.ba, ptr %i.p, align 8, !tbaa !1506
  %i.bb = load ptr, ptr %0, align 8, !tbaa !604, !nonnull !494, !align !495
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 232
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1296, !nonnull !494, !align !495
  %i.be = call noundef ptr @_ZN4llvm7MDTuple7getImplERNS_11LLVMContextENS_8ArrayRefIPNS_8MetadataEEENS4_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr nonnull %i.a, i64 2, i32 noundef 0, i1 noundef zeroext true) #28 ; 2 uses
  %i.bf = load i32, ptr %i.q, align 8, !tbaa !598 ; 2 uses
  %i.bg = load i32, ptr %i.r, align 4, !tbaa !599
  %.not.i = icmp ult i32 %i.bf, %i.bg
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !1309

bb.h:                                             ; preds = %_ZNK5clang22specific_attr_iteratorINS_14BTFDeclTagAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.be)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit

bb.i:                                             ; preds = %_ZNK5clang22specific_attr_iteratorINS_14BTFDeclTagAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit
  %i.bh = zext i32 %i.bf to i64
  %i.bi = load ptr, ptr %2, align 8, !tbaa !597
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh
  store ptr %i.be, ptr %i.bj, align 1
  %i.bk = load i32, ptr %i.q, align 8, !tbaa !598
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr %i.q, align 8, !tbaa !598
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.013.1, i64 8
  br label %bb.c
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang7CodeGen11CGDebugInfo10CreateTypeEPKNS_12FunctionTypeEPN4llvm6DIFileE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.clang::FunctionProtoType::ExtProtoInfo", align 8 ; 6 uses
  %4 = alloca %"struct.clang::FunctionProtoType::ExtProtoInfo", align 8 ; 4 uses
  %5 = alloca %"struct.clang::FunctionProtoType::ExtProtoInfo", align 8 ; 4 uses
  %6 = alloca %"class.llvm::SmallVector.1443", align 8 ; 25 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load i8, ptr %i.a, align 16
  %i.c = icmp ne i8 %i.b, 24
  %.not45 = icmp eq ptr %1, null
  %.not = or i1 %.not45, %i.c
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZNK5clang17FunctionProtoType15getExtProtoInfoEv(ptr dead_on_unwind nonnull writable sret(%"struct.clang::FunctionProtoType::ExtProtoInfo") align 8 %3, ptr noundef nonnull align 16 dereferenceable(48) %1), !inline_history !2779
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1515 ; 4 uses
  %7 = and i64 %i.e, -4294967290
  %i.f = trunc i64 %i.e to i1
  br i1 %i.f, label %_ZN5clang7CodeGen11CGDebugInfo19CreateQualifiedTypeEPKNS_17FunctionProtoTypeEPN4llvm6DIFileE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = and i64 %i.e, 4
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN5clang7CodeGen11CGDebugInfo19CreateQualifiedTypeEPKNS_17FunctionProtoTypeEPN4llvm6DIFileE.exit

bb.d:                                             ; preds = %bb.c
  %i.h = and i64 %i.e, 2
  %.not6.i.i = icmp eq i64 %i.h, 0
  br i1 %.not6.i.i, label %_ZN5clang7CodeGen11CGDebugInfo19CreateQualifiedTypeEPKNS_17FunctionProtoTypeEPN4llvm6DIFileE.exit.thread, label %_ZN5clang7CodeGen11CGDebugInfo19CreateQualifiedTypeEPKNS_17FunctionProtoTypeEPN4llvm6DIFileE.exit

_ZN5clang7CodeGen11CGDebugInfo19CreateQualifiedTypeEPKNS_17FunctionProtoTypeEPN4llvm6DIFileE.exit.thread: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.e

_ZN5clang7CodeGen11CGDebugInfo19CreateQualifiedTypeEPKNS_17FunctionProtoTypeEPN4llvm6DIFileE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sink7.i.i = phi i64 [ -6, %bb.c ], [ -2, %bb.b ], [ -8, %bb.d ]
  %.0.ph.i.i = phi i32 [ 53, %bb.c ], [ 38, %bb.b ], [ 55, %bb.d ]
  %i.i = and i64 %7, %.sink7.i.i
  store i64 %i.i, ptr %i.d, align 8, !tbaa !1515
  %i.j = load ptr, ptr %0, align 8, !tbaa !604, !nonnull !494, !align !495
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !605, !nonnull !494, !align !495
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.m, align 8, !tbaa !984
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = load i64, ptr %i.a, align 16
  %i.p = lshr i64 %i.o, 48
  %i.q = call i64 @_ZNK5clang10ASTContext23getFunctionTypeInternalENS_8QualTypeEN4llvm8ArrayRefIS1_EERKNS_17FunctionProtoType12ExtProtoInfoEb(ptr noundef nonnull align 8 dereferenceable(23904) %i.l, i64 %.sroa.0.0.copyload.i.i, ptr nonnull %i.n, i64 %i.p, ptr noundef nonnull align 8 dereferenceable(138) %3, i1 noundef zeroext false) #28, !inline_history !2779
  %i.r = call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo15getOrCreateTypeENS_8QualTypeEPN4llvm6DIFileE(ptr noundef nonnull align 8 dereferenceable(2480) %0, i64 %i.q, ptr noundef %2), !inline_history !2779
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = call noundef ptr @_ZN4llvm9DIBuilder19createQualifiedTypeEjPNS_6DITypeE(ptr noundef nonnull align 8 dereferenceable(384) %i.s, i32 noundef %.0.ph.i.i, ptr noundef %i.r) #28, !inline_history !2779 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %.not32 = icmp eq ptr %i.t, null
  br i1 %.not32, label %bb.e, label %bb.r

bb.e:                                             ; preds = %_ZN5clang7CodeGen11CGDebugInfo19CreateQualifiedTypeEPKNS_17FunctionProtoTypeEPN4llvm6DIFileE.exit.thread, %_ZN5clang7CodeGen11CGDebugInfo19CreateQualifiedTypeEPKNS_17FunctionProtoTypeEPN4llvm6DIFileE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.u, ptr %6, align 8, !tbaa !597
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 10 uses
  store i32 0, ptr %i.v, align 8, !tbaa !598
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 4 uses
  store i32 16, ptr %i.w, align 4, !tbaa !599
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i = load i64, ptr %i.x, align 8, !tbaa !984
  %i.y = call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo15getOrCreateTypeENS_8QualTypeEPN4llvm6DIFileE(ptr noundef nonnull align 8 dereferenceable(2480) %0, i64 %.sroa.0.0.copyload.i, ptr noundef %2) ; 2 uses
  %i.z = load i32, ptr %i.v, align 8, !tbaa !598  ; 2 uses
  %i.aa = load i32, ptr %i.w, align 4, !tbaa !599
  %.not.i = icmp ult i32 %i.z, %i.aa
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !1309

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.y)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = zext i32 %i.z to i64
  %i.ac = load ptr, ptr %6, align 8, !tbaa !597
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ab
  store ptr %i.y, ptr %i.ad, align 1
  %i.ae = load i32, ptr %i.v, align 8, !tbaa !598
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.v, align 8, !tbaa !598
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.ag, ptr %6, align 8, !tbaa !597
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  store i32 0, ptr %i.ah, align 8, !tbaa !598
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 3 uses
  store i32 16, ptr %i.ai, align 4, !tbaa !599
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i34 = load i64, ptr %i.aj, align 8, !tbaa !984
  %i.ak = call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo15getOrCreateTypeENS_8QualTypeEPN4llvm6DIFileE(ptr noundef nonnull align 8 dereferenceable(2480) %0, i64 %.sroa.0.0.copyload.i34, ptr noundef %2) ; 2 uses
  %i.al = load i32, ptr %i.ah, align 8, !tbaa !598 ; 2 uses
  %i.am = load i32, ptr %i.ai, align 4, !tbaa !599
  %.not.i35 = icmp ult i32 %i.al, %i.am
  br i1 %.not.i35, label %bb.i, label %bb.h, !prof !1309

bb.h:                                             ; preds = %.critedge
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.ak)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit36

bb.i:                                             ; preds = %.critedge
  %i.an = zext i32 %i.al to i64
  %i.ao = load ptr, ptr %6, align 8, !tbaa !597
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.an
  store ptr %i.ak, ptr %i.ap, align 1
  %i.aq = load i32, ptr %i.ah, align 8, !tbaa !598
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ah, align 8, !tbaa !598
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit36

_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit36: ; preds = %bb.i, %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = call noundef ptr @_ZN4llvm9DIBuilder26createUnspecifiedParameterEv(ptr noundef nonnull align 8 dereferenceable(384) %i.as) #28 ; 2 uses
  %i.au = load i32, ptr %i.ah, align 8, !tbaa !598 ; 2 uses
  %i.av = load i32, ptr %i.ai, align 4, !tbaa !599
  %.not.i37 = icmp ult i32 %i.au, %i.av
  br i1 %.not.i37, label %bb.k, label %bb.j, !prof !1309

bb.j:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit36
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.at)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit38

bb.k:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit36
  %i.aw = zext i32 %i.au to i64
  %i.ax = load ptr, ptr %6, align 8, !tbaa !597
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.aw
  store ptr %i.at, ptr %i.ay, align 1
  %i.az = load i32, ptr %i.ah, align 8, !tbaa !598
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ah, align 8, !tbaa !598
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit38

_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZNK5clang17FunctionProtoType15getExtProtoInfoEv(ptr dead_on_unwind nonnull writable sret(%"struct.clang::FunctionProtoType::ExtProtoInfo") align 8 %4, ptr noundef nonnull align 16 dereferenceable(48) %1)
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !1529
  %i.bd = icmp eq i32 %i.bc, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %spec.select.i = select i1 %i.bd, i32 8192, i32 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZNK5clang17FunctionProtoType15getExtProtoInfoEv(ptr dead_on_unwind nonnull writable sret(%"struct.clang::FunctionProtoType::ExtProtoInfo") align 8 %5, ptr noundef nonnull align 16 dereferenceable(48) %1)
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !1529
  %i.bg = icmp eq i32 %i.bf, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.bh = or disjoint i32 %spec.select.i, 16384
  %.1.i = select i1 %i.bg, i32 %i.bh, i32 %spec.select.i ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.bj = load i64, ptr %i.a, align 16            ; 2 uses
  %i.bk = lshr i64 %i.bj, 45
  %.idx = and i64 %i.bk, 524280                   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx
  %.not3347 = icmp samesign eq i64 %.idx, 0
  br i1 %.not3347, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit40
  %.pre = load i64, ptr %i.a, align 16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit
  %i.bm = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.bj, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit ]
  %i.bn = and i64 %i.bm, 2147483648
  %.not46 = icmp eq i64 %i.bn, 0
  br i1 %.not46, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit38, label %bb.n

.lr.ph:                                           ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit40
  %.03048 = phi ptr [ %i.bw, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit40 ], [ %i.bi, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit ] ; 2 uses
  %.sroa.02.0.copyload = load i64, ptr %.03048, align 8, !tbaa !984
  %i.bo = call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo15getOrCreateTypeENS_8QualTypeEPN4llvm6DIFileE(ptr noundef nonnull align 8 dereferenceable(2480) %0, i64 %.sroa.02.0.copyload, ptr noundef %2) ; 2 uses
  %i.bp = load i32, ptr %i.v, align 8, !tbaa !598 ; 2 uses
  %i.bq = load i32, ptr %i.w, align 4, !tbaa !599
  %.not.i39 = icmp ult i32 %i.bp, %i.bq
  br i1 %.not.i39, label %bb.m, label %bb.l, !prof !1309

bb.l:                                             ; preds = %.lr.ph
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.bo)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit40

bb.m:                                             ; preds = %.lr.ph
  %i.br = zext i32 %i.bp to i64
  %i.bs = load ptr, ptr %6, align 8, !tbaa !597
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.br
  store ptr %i.bo, ptr %i.bt, align 1
  %i.bu = load i32, ptr %i.v, align 8, !tbaa !598
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.v, align 8, !tbaa !598
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit40

_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit40: ; preds = %bb.l, %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %.03048, i64 8 ; 2 uses
  %.not33 = icmp eq ptr %i.bw, %i.bl
  br i1 %.not33, label %._crit_edge.loopexit, label %.lr.ph

bb.n:                                             ; preds = %._crit_edge
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.by = call noundef ptr @_ZN4llvm9DIBuilder26createUnspecifiedParameterEv(ptr noundef nonnull align 8 dereferenceable(384) %i.bx) #28 ; 2 uses
  %i.bz = load i32, ptr %i.v, align 8, !tbaa !598 ; 2 uses
  %i.ca = load i32, ptr %i.w, align 4, !tbaa !599
  %.not.i41 = icmp ult i32 %i.bz, %i.ca
  br i1 %.not.i41, label %bb.p, label %bb.o, !prof !1309

bb.o:                                             ; preds = %bb.n
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.by)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit38

bb.p:                                             ; preds = %bb.n
  %i.cb = zext i32 %i.bz to i64
  %i.cc = load ptr, ptr %6, align 8, !tbaa !597
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cb
  store ptr %i.by, ptr %i.cd, align 1
  %i.ce = load i32, ptr %i.v, align 8, !tbaa !598
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %i.v, align 8, !tbaa !598
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit38

_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit38: ; preds = %bb.p, %bb.o, %bb.k, %bb.j, %._crit_edge
  %.029 = phi i32 [ 0, %bb.k ], [ %.1.i, %._crit_edge ], [ 0, %bb.j ], [ %.1.i, %bb.o ], [ %.1.i, %bb.p ]
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ch = load ptr, ptr %6, align 8, !tbaa !597
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !598
  %i.ck = zext i32 %i.cj to i64
  %i.cl = call ptr @_ZN4llvm9DIBuilder20getOrCreateTypeArrayENS_8ArrayRefIPNS_8MetadataEEE(ptr noundef nonnull align 8 dereferenceable(384) %i.cg, ptr %i.ch, i64 %i.ck) #28
  %i.cm = load i64, ptr %i.a, align 16
  %i.cn = lshr i64 %i.cm, 34
  %i.co = trunc nuw nsw i64 %i.cn to i32
  %i.cp = and i32 %i.co, 63
  %switch.tableidx = add nsw i32 %i.cp, -1        ; 2 uses
  %i.cq = icmp ult i32 %switch.tableidx, 34
  br i1 %i.cq, label %switch.lookup, label %_ZL10getDwarfCCN5clang11CallingConvE.exit

switch.lookup:                                    ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit38
end_hunk_1
